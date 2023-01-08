use actix_cors::Cors;
use actix_settings::{ApplySettings as _, BasicSettings};
use actix_web::{App, get, http, HttpServer, post, Responder, web};
use actix_web::http::header;
use actix_web::middleware::{Compress, Condition, Logger};
use env_logger::Env;
use log::info;
use serde::{de, Deserialize};
use crate::config::app_config::ApplicationSettings;

mod controller;
mod model;
mod utils;
mod config;


#[actix_web::main] // or #[tokio::main]
async fn main() -> std::io::Result<()> {
    std::env::set_var("RUST_LOG", "info");
    env_logger::init_from_env(Env::default().default_filter_or("info"));
    let settings: BasicSettings<ApplicationSettings> = config::app_config::load_config();

    let http_server = HttpServer::new({
        let settings = settings.clone();
        move || {
            App::new()
                .wrap(Logger::default())
                .wrap(Logger::new("%a %{User-Agent}i"))

                .wrap(Condition::new(
                    settings.actix.enable_compression,
                    Compress::default(),
                ))
                .app_data(web::Data::new(settings.clone()))

                .wrap(Cors::default()
                    .allowed_origin("http://localhost:8848")
                    // .allow_any_origin()
                    .allow_any_method()
                    .allow_any_header()
                    .supports_credentials()
                    .max_age(3600)
                )
                .service(controller::index_controller::index)
                .service(controller::user_controller::login)
                .service(controller::user_controller::get_user_info)
        }
    })
        .apply_settings(&settings)
        .run();
    info!("Server Start at http://127.0.0.1:{}", settings.actix.hosts[0].port);
    http_server.await
}