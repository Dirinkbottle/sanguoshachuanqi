//! HTTP 传输层：路由表、共享状态和响应编码。
//!
//! account 处理账号服端点，game 处理游戏服端点，business 处理首个可玩纵向链及
//! 地图/红点查询；tests 把路由当真实客户端来打。

pub mod account;
pub mod business;
pub mod game;
#[cfg(test)]
mod tests;

use crate::{
    api::account::{account_api, login, logout, register},
    api::game::game_api,
    config::{Config, Zone},
    protocol,
};
use axum::{
    Router,
    extract::DefaultBodyLimit,
    http::{StatusCode, header},
    middleware,
    response::{IntoResponse, Response},
    routing::{get, post},
};
use serde_json::Value;
use std::sync::Arc;

/// 全部 handler 共享的只读状态。
///
/// 配置和服务区在启动时读定，运行期不再变，所以放在 Arc 里直接共享；
/// 数据库是每个请求各开一个短连接（见 db::open），不在这里持有。
#[derive(Clone)]
pub struct AppState {
    pub config: Config,
    pub zones: Vec<Zone>,
    /// gameconfig/ 的静态数据（章节布局 / 敌将映射 / 对酒奖池）。
    /// 启动时由 main 装好，运行期只读；缺数据启动就失败，没有回退。
    pub game_data: std::sync::Arc<crate::gamedata::GameData>,
}

/// 组装路由表。
///
/// 账号服的三个路径要分别注册：更新检查走 /sanguosha_anysdk_2.2.6/，而公告与取服
/// 走 /public/sanguosha_account/，两者都在 Cfg/Url.js 的 ServerAddrsMap 里。
/// 游戏服同时接受设备真实使用的 `/game/{server_id}/index.php` 与早期本地工具
/// 使用的短路径；尾斜杠也保留兼容。
pub fn router(state: AppState) -> Router {
    let shared = Arc::new(state);
    Router::new()
        .route("/sanguosha_anysdk_2.2.6/index.php", get(account_api))
        .route("/public/sanguosha_account/index.php", get(account_api))
        .route("/game/{server_id}", get(game_api))
        .route("/game/{server_id}/", get(game_api))
        .route("/game/{server_id}/index.php", get(game_api))
        .route("/auth/register", post(register))
        .route("/auth/login", post(login))
        .route("/auth/logout", post(logout))
        .layer(DefaultBodyLimit::max(32 * 1024))
        // 日志装在最外层：未匹配路由和非法 JSON 也要留下痕迹。
        .layer(middleware::from_fn_with_state(
            shared.clone(),
            crate::logging::log_requests,
        ))
        .with_state(shared)
}

/// handler 的共享状态句柄。
pub type Shared = Arc<AppState>;
/// 失败响应的统一类型：状态码 + 已编码的 JSON 体。
pub type ApiError = (StatusCode, AsciiJson);

/// 把 JSON 序列化成纯 ASCII 的响应体。
///
/// 设备上这版原生 XMLHttpRequest 会把原始 UTF-8 字节按 Latin-1 交给 JS，
/// 非 ASCII 字符直接发出去会变成乱码。所以这里把所有非 ASCII 字符转成
/// \uXXXX 转义——JSON 解析后仍是同样的字符串，但线上字节全是 ASCII。
pub struct AsciiJson(pub Value);

impl IntoResponse for AsciiJson {
    fn into_response(self) -> Response {
        // The v22 native XMLHttpRequest exposes raw UTF-8 bytes as Latin-1
        // on this device. Escape non-ASCII characters in the JSON wire format.
        let raw = self.0.to_string();
        let mut encoded = String::with_capacity(raw.len());
        for character in raw.chars() {
            if character.is_ascii() {
                encoded.push(character);
            } else {
                for unit in character.encode_utf16(&mut [0; 2]).iter() {
                    use std::fmt::Write;
                    write!(encoded, "\\u{unit:04x}").expect("write to String");
                }
            }
        }
        (
            [
                (header::CONTENT_TYPE, "application/json; charset=utf-8"),
                (header::CACHE_CONTROL, "no-store"),
            ],
            encoded,
        )
            .into_response()
    }
}

/// 请求体不是合法 JSON 对象时的响应。
///
/// 这类错误说明客户端或抓包工具构造有误，不是业务拒绝，所以用 HTTP 400 而不是
/// 200 + result:false。
pub fn bad_request() -> ApiError {
    (
        StatusCode::BAD_REQUEST,
        AsciiJson(protocol::error("invalid_data", "Invalid JSON request")),
    )
}

/// 服务端自身出错（数据库不可用、阻塞任务 panic）时的响应。
///
/// 与业务失败区分开：业务失败是 200 + result:false，这里是 5xx。
pub fn internal_error() -> ApiError {
    (
        StatusCode::INTERNAL_SERVER_ERROR,
        AsciiJson(protocol::error("internal_error", "服务器内部错误")),
    )
}
