use actix_web::{get, Responder};

#[get("/")]
pub async fn index() -> impl Responder {
    "Are You OK?"
}
