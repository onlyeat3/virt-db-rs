use std::error::Error;
use std::io;

use crate::mysql_protocol::{MySQL, VirtDBMySQLError};
use log::{debug, error, info, trace};
use mysql_async::{Conn, OptsBuilder};
use opensrv_mysql::*;
use tokio::net::TcpListener;


pub async fn start() -> Result<(), Box<dyn std::error::Error>> {
    let listener = TcpListener::bind("127.0.0.1:3307").await?;
    loop{
        let (stream, _) = listener.accept().await?;
        tokio::spawn(async move {
            //TODO pool
            let url = "mysql://root:root@127.0.0.1:3306";
            let real_mysql_conn = Conn::from_url(url).await.unwrap();
            let client = redis::Client::open("redis://127.0.0.1/").unwrap();
            let redis_conn = client.get_async_connection().await.unwrap();

            let r = AsyncMysqlIntermediary::run_on(MySQL::new( real_mysql_conn,redis_conn), stream).await;
            info!("mysql end result:{:?}",r);
        });
    }
}
