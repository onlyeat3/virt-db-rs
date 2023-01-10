extern crate slab;

use std::collections::HashMap;
use std::fmt::{Display, Formatter};
use std::io;
use std::time::SystemTime;

use log::{debug, error, info, trace};
use metrics::histogram;
use mysql_async::{Conn, Error, QueryResult, Row, TextProtocol};
use mysql_async::prelude::Queryable;
use opensrv_mysql::{
    AsyncMysqlShim, Column, ColumnFlags, ErrorKind, InitWriter, ParamParser, QueryResultWriter,
    StatementMetaWriter,
};
use redis::{AsyncCommands, RedisError, RedisResult};
use redis::aio::Connection;
use slab::Slab;
use sqlparser::ast::{SetExpr, Statement};
use sqlparser::dialect::MySqlDialect;
use sqlparser::parser::{Parser, ParserError};
use sqlparser::tokenizer::{Token, Tokenizer};
use tokio::io::AsyncWrite;

use crate::meta;
use crate::meta::CacheConfigEntity;

pub fn is_pattern_match(pattern: &str, sql2: &str, dialect: &MySqlDialect) -> bool {
    let tokens1: Vec<Token> = Tokenizer::new(dialect, pattern)
        .tokenize()
        .unwrap_or_default();
    let tokens2: Vec<Token> = Tokenizer::new(dialect, sql2).tokenize().unwrap_or_default();

    let tokens1: Vec<Token> = tokens1
        .into_iter()
        .filter(|t| {
            return match t {
                Token::EOF => false,
                Token::Whitespace(_) => false,
                _ => true,
            };
        })
        .collect();
    let tokens2: Vec<Token> = tokens2
        .into_iter()
        .filter(|t| {
            return match t {
                Token::EOF => false,
                Token::Whitespace(_) => false,
                _ => true,
            };
        })
        .collect();
    // println!("tokens1:{:?}\ntokens2:{:?}\ntokens1.len:{:?},tokens2.len:{:?}",tokens1,tokens2,tokens1.len(),tokens2.len());
    if tokens1.len() != tokens2.len() {
        return false;
    }

    for index in 0..tokens1.len() {
        let a = &tokens1[index];
        let b = &tokens2[index];
        // println!("a:{:?},b:{:?}",a,b);
        let skip = match a {
            Token::Placeholder(_) => true,
            _ => false,
        };
        if skip {
            continue;
        }
        if a != b {
            return false;
        }
    }
    return true;
}

//
// async fn handle_mysql_result<'a>(
//     query_result_result: &'a Result<&'a QueryResult<TextProtocol>, &'a mysql_async::Error>,
// ) -> Result<MySQLResult, mysql_async::Error> {
//     return match query_result_result {
//         Ok(mut query_result) => {
//             trace!("columns:{:?}", query_result.columns());
//             let cols: Vec<Column> = query_result
//                 .columns()
//                 .iter()
//                 .map(|c_arc| {
//                     let c = c_arc.to_vec().get(0).unwrap().clone();
//                     let t = c.column_type();
//                     Column {
//                         table: String::from(c.schema_str().to_owned()),
//                         column: String::from(c.name_str().to_owned()),
//                         coltype: t,
//                         colflags: c.flags(),
//                     }
//                 })
//                 .collect();
//             let rows_result = query_result.collect::<Row>().await;
//             match rows_result {
//                 Ok(rows) => {
//                     let mysql_result = MySQLResult { cols, rows };
//                     Ok(mysql_result)
//                 }
//                 Err(err) => {
//                     error!("get mysql err:{:?}", err);
//                     Err(err)
//                 }
//             }
//             // let rows: Vec<Row> = query_result.flatten().collect();
//
//         }
//         Err(err) => {
//             error!("get mysql err:{:?}", err);
//             err
//         }
//     }
// }

// this is where the proxy server implementation starts

struct Prepared {
    stmt: mysql_async::Statement,
    params: Vec<Column>,
    sql: String,
}

#[derive(Debug)]
pub struct MySQLResult {
    // #[serde(serialize_with = "column_vec_ser")]
    // #[serde(deserialize_with = "column_vec_deser")]
    pub cols: Vec<Column>,
    pub rows: Vec<Row>,
}

pub struct MySQL {
    _mysql_url: String,
    _redis_url: String,
    _mysql_connection: HashMap<String, Conn>,
    _redis_conn: HashMap<String, Connection>,
    // NOTE: not *actually* static, but tied to our connection's lifetime.
    prepared: Slab<Prepared>,
    dialect: MySqlDialect,
}

impl MySQL {
    pub fn new(mysql_url: &str, redis_url: String) -> Self {
        MySQL {
            _mysql_url: mysql_url.to_string(),
            _redis_url: redis_url.to_string(),
            _mysql_connection: HashMap::new(),
            _redis_conn: HashMap::new(),
            prepared: Slab::new(),
            dialect: MySqlDialect {},
        }
    }

    pub async fn get_mysql_connection<'a>(&'a mut self) -> Result<&'a mut Conn, Error> {
        let cache_key = String::from("mysql_connection");
        if self._mysql_connection.contains_key(&*cache_key) {
            let v = self._mysql_connection.get_mut(&*cache_key).unwrap();
            return Ok(v);
        }
        let v = Conn::from_url(self._mysql_url.to_string()).await?;
        let v_result = self._mysql_connection.entry(cache_key).or_insert_with(|| v);
        Ok(v_result)
    }

    pub async fn get_redis_connection<'a>(
        &'a mut self,
    ) -> Result<&'a mut Connection, redis::RedisError> {
        let cache_key = String::from("redis_connection");
        if self._redis_conn.contains_key(&*cache_key) {
            let v = self._redis_conn.get_mut(&*cache_key).unwrap();
            return Ok(v);
        }

        let client = redis::Client::open(self._redis_url.to_string())?;
        let v = client.get_async_connection().await?;
        let v_result = self._redis_conn.entry(cache_key).or_insert_with(|| v);
        Ok(v_result)
    }
}

#[derive(Debug)]
pub enum VirtDBMySQLError {
    MySQL_ASYNC(mysql_async::Error),
    Io(io::Error),
    RedisError(redis::RedisError),
    Other(anyhow::Error)
}

impl VirtDBMySQLError{

    pub async fn handle_or_to_result<'a,W: AsyncWrite + Send + Unpin>(self, results: QueryResultWriter<'a, W>) -> Result<(), VirtDBMySQLError> {
        match self {
            VirtDBMySQLError::MySQL_ASYNC(err) => {
                match err{
                    Error::Driver(err) => {
                        Err(VirtDBMySQLError::Other(anyhow::Error::new(err)))
                    }
                    Error::Io(err) => {
                        Err(VirtDBMySQLError::Other(anyhow::Error::new(err)))
                    }
                    Error::Other(err) => {
                        results
                            .error(ErrorKind::ER_YES, err.to_string().as_bytes())
                            .await?;
                        Ok(())
                    }
                    Error::Server(err) => {
                        results
                            .error(ErrorKind::ER_YES, err.to_string().as_bytes())
                            .await?;
                        Ok(())
                    }
                    Error::Url(err) => {
                        Err(VirtDBMySQLError::Other(anyhow::Error::new(err)))
                    }
                }
            }
            VirtDBMySQLError::Io(err) => {
                Err(VirtDBMySQLError::Io(err))
            }
            VirtDBMySQLError::RedisError(err) => {
                results
                    .error(ErrorKind::ER_YES, err.to_string().as_bytes())
                    .await?;
                Ok(())
            }
            VirtDBMySQLError::Other(err)=>{
                results
                    .error(ErrorKind::ER_YES, err.to_string().as_bytes())
                    .await?;
                Ok(())
            }
        }
    }
}

impl From<io::Error> for VirtDBMySQLError {
    fn from(e: io::Error) -> Self {
        VirtDBMySQLError::Io(e)
    }
}

impl From<mysql_async::Error> for VirtDBMySQLError {
    fn from(e: Error) -> Self {
        VirtDBMySQLError::MySQL_ASYNC(e)
    }
}

impl From<redis::RedisError> for VirtDBMySQLError {
    fn from(e: RedisError) -> Self {
        VirtDBMySQLError::RedisError(e)
    }
}

impl VirtDBMySQLError {
    pub fn to_string(self) -> String {
        return match self {
            VirtDBMySQLError::MySQL_ASYNC(mysql_async_err) => mysql_async_err.to_string(),
            VirtDBMySQLError::Io(err) => err.to_string(),
            VirtDBMySQLError::RedisError(err) => err.to_string(),
            VirtDBMySQLError::Other(err) => err.to_string(),
        };
    }
}

impl MySQL {
    pub async fn execute_query<'a>(
        &'a mut self,
        sql: &str,
    ) -> Result<MySQLResult, VirtDBMySQLError> {
        debug!("sql:{}", sql);
        let redis_key = format!("cache:{:?}", sql);
        let cache_config_entity_list = meta::get_cache_config_entity_list();

        let mysql_dialect = MySqlDialect {};
        let mut cache_config_entity_option: Option<&CacheConfigEntity> = None;
        for entity in cache_config_entity_list {
            if is_pattern_match(
                &*entity.sql_template.to_uppercase().trim(),
                sql.to_uppercase().trim(),
                &mysql_dialect,
            ) {
                cache_config_entity_option = Some(entity);
                break;
            }
        }
        if cache_config_entity_option.is_some() {
            let redis_conn = self.get_redis_connection().await?;
            let cached_value_result: Result<String, RedisError> =
                redis_conn.get(redis_key.clone()).await;
            if let Ok(redis_v) = cached_value_result {
                let mysql_result: MySQLResult = serde_json::from_str(&*redis_v).unwrap();
                trace!("decoded_v:{:?}", mysql_result);
                return Ok(mysql_result);
            }
        }

        // let query_result_result: Result<QueryResult<TextProtocol>, Error> =
        //     self.connection.query_iter(String::from(sql)).await;
        let mysql_conn = self.get_mysql_connection().await?;
        let mut query_result: QueryResult<TextProtocol> =
            mysql_conn.query_iter(String::from(sql)).await?;
        trace!("v:{:?}", query_result);
        // let mysql_result_opt = handle_mysql_result(query_result_result).await;
        trace!("columns:{:?}", query_result.columns());
        let mut cols: Vec<Column> = vec![];
        for arc_col in query_result.columns() {
            cols = arc_col
                .iter()
                .map(|c| {
                    let t = c.column_type();
                    let rc = Column {
                        table: String::from(c.schema_str().to_owned()),
                        column: String::from(c.name_str().to_owned()),
                        coltype: t,
                        colflags: c.flags(),
                    };
                    return rc;
                })
                .collect();
        }

        let rows = query_result.collect::<Row>().await?;
        let mysql_result = MySQLResult { cols, rows };

        if let Some(cache_config_entity) = cache_config_entity_option {
            let json_v = serde_json::to_string(&mysql_result).unwrap_or_default();
            trace!("json_v:{}", json_v);
            let rv: RedisResult<Vec<Vec<u8>>> = self
                .get_redis_connection()
                .await?
                .set_ex(
                    redis_key.clone(),
                    json_v.as_str(),
                    cache_config_entity.duration as usize,
                )
                .await;
            trace!("redis set. key:{:?},result:{:?}", redis_key, rv);
        }
        Ok(mysql_result)
    }
}

#[async_trait::async_trait]
impl<W: AsyncWrite + Send + Unpin> AsyncMysqlShim<W> for MySQL {
    type Error = VirtDBMySQLError;

    fn version(&self) -> &str {
        "virt-db 1.0.0-alpha"
    }

    async fn on_prepare<'a>(
        &'a mut self,
        query: &'a str,
        info: StatementMetaWriter<'a, W>,
    ) -> Result<(), Self::Error> {
        let startTime = SystemTime::now();
        let r = match self.get_mysql_connection().await?.prep(query).await {
            Ok(stmt) => {
                use std::mem;
                let params: Vec<_> = stmt
                    .params()
                    .into_iter()
                    .map(|t| {
                        let rt = t.column_type();
                        Column {
                            table: String::from(t.schema_str()),
                            column: String::from(t.name_str().to_owned()),
                            coltype: rt,
                            colflags: ColumnFlags::empty(),
                        }
                    })
                    .collect();
                let columns: Vec<_> = stmt
                    .columns()
                    .into_iter()
                    .map(|c| Column {
                        table: String::from(c.schema_str().to_owned()),
                        column: String::from(c.name_str().to_owned()),
                        coltype: c.column_type(),
                        colflags: ColumnFlags::empty(),
                    })
                    .collect();

                // keep track of the parameter types so we can decode the values provided by the
                // client when they later execute this statement.
                let stmt = Prepared {
                    stmt,
                    params,
                    sql: String::from(query.clone()),
                };

                // the statement is tied to the connection, which as far as the compiler is aware
                // we only know lives for as long as the `&mut self` given to this function.
                // however, *we* know that the connection will live at least as long as the
                // prepared statement we insert into `self.prepared` (because there is no way to
                // get the prepared statements out!).
                let stmt = unsafe { mem::transmute(stmt) };

                let id = self.prepared.insert(stmt);
                let stmt = &self.prepared[id];
                info.reply(id as u32, &stmt.params, &columns).await?;
                Ok(())
            }

            Err(e) => Err(e.into()),
        };
        let duration = SystemTime::now()
            .duration_since(startTime)
            .unwrap()
            .as_millis();
        histogram!("sql_duration", duration as f64, "sql" => String::from(query.clone()));

        return r;
    }

    async fn on_execute<'a>(
        &'a mut self,
        id: u32,
        params: ParamParser<'a>,
        results: QueryResultWriter<'a, W>,
    ) -> Result<(), Self::Error> {
        // let start_time = SystemTime::now();
        // let r = match self.prepared.get_mut(id as usize) {
        //     None => results.error(ErrorKind::ER_NO, b"no such prepared statement").await?,
        //     Some(&mut Prepared { ref mut stmt, ref mut params, ref mut sql }) => {
        //         // let args = params.into_iter()
        //         //     .map(|p|{
        //         //         p.coltype
        //         //     })
        //         //     .collect();
        //         // let r = self.connection.exec(stmt, params).await;
        //         // let types = params.into_iter()
        //         //     .map(|f| {
        //         //         f.coltype
        //         //     })
        //         //     .collect();
        //         // results.completed(OkResponse::default()).await?;
        //         let err_result = results.error(ErrorKind::ER_NO, b"no such prepared statement").await?;
        //
        //         let duration = SystemTime::now().duration_since(start_time).unwrap().as_millis();
        //         histogram!("sql_duration", duration as f64, "sql" => String::from(sql.clone()));
        //         return err_result;
        //     }
        // }.await;
        let r = results.error(ErrorKind::ER_NO, b"Not Support").await?;
        return Ok(r);
    }

    async fn on_close(&mut self, id: u32) {
        debug!("connection {} closed", id);
        self.prepared.remove(id as usize);
    }

    async fn on_query<'a>(
        &'a mut self,
        sql: &'a str,
        results: QueryResultWriter<'a, W>,
    ) -> Result<(), Self::Error> {
        let start_time = SystemTime::now();
        let mysql_result_wrapper = self.execute_query(sql).await;
        return match mysql_result_wrapper {
            Ok(mysql_result) => {
                let mut writer = results.start(&mysql_result.cols).await?;
                for row in mysql_result.rows {
                    trace!("row:{:?}", row);
                    for col in &mysql_result.cols {
                        trace!("col:{:?}", col);
                        let column_value = &row[col.column.as_ref()];
                        trace!("blob column_value:{:?}", column_value);
                        writer.write_col(column_value)?;
                    }
                    writer.end_row().await?;
                }

                let duration = SystemTime::now()
                    .duration_since(start_time)
                    .unwrap()
                    .as_millis();
                histogram!("sql_duration", duration as f64, "sql" => String::from(sql.clone()));
                Ok(writer.finish().await?)
            }
            Err(mut e) => {
                return e.handle_or_to_result(results).await;
            }
        };
    }

    async fn on_init<'a>(
        &'a mut self,
        schema: &'a str,
        writer: InitWriter<'a, W>,
    ) -> Result<(), Self::Error> {
        debug!("schema:{}", schema);
        // self.connection.select_db(schema);
        let command_select_db_string = format!("use `{schema}`");
        let command_select_db_str = command_select_db_string.as_str();
        let r: Result<Vec<(u32, String)>, mysql_async::Error> = self
            .get_mysql_connection()
            .await?
            .query(command_select_db_str)
            .await;
        return match r {
            Ok(_) => Ok(writer.ok().await?),
            Err(e) => {
                writer
                    .error(ErrorKind::ER_YES, e.to_string().as_bytes())
                    .await?;
                Ok(())
            }
        };
    }
}

impl Drop for MySQL {
    fn drop(&mut self) {
        // drop all the prepared statements *first*.
        self.prepared.clear();
        // *then* we can drop the connection (implicitly done).
    }
}
