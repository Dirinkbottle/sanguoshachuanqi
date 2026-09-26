//! 请求/响应日志。
//!
//! 客户端的全部业务参数都放在查询串里（`?do=动作&data=JSON`），响应是 JSON，
//! 所以中间件只做三件事：解析查询串、缓冲响应体读出 `result`、按级别打印。
//!
//! `full` 级别记录请求参数、请求体和响应体；`summary` 只记录状态摘要，
//! `off` 不记录请求或响应内容。

use crate::api::Shared;
use crate::config::LogLevel;
use axum::{
    body::{Body, to_bytes},
    extract::{Request, State},
    http::{Response, StatusCode},
    middleware::Next,
    response::IntoResponse,
};
use http_body_util::BodyExt;
use serde_json::Value;
use std::{
    collections::HashMap,
    sync::atomic::{AtomicU64, Ordering},
    time::{Instant, SystemTime, UNIX_EPOCH},
};

/// 给每个请求编号，方便把请求行和响应行对上。
static REQUEST_ID: AtomicU64 = AtomicU64::new(1);
const MAX_LOGGED_BODY_BYTES: usize = 32 * 1024;
const MAX_REQUEST_URI_BYTES: usize = 32 * 1024;

/// 把 Unix 毫秒格式化成 `YYYY-MM-DDTHH:MM:SS.mmmZ`（UTC）。
///
/// 自己算是为了不引入日期库：日志只需要一个能和 logcat 对上的人类可读时间。
pub fn format_utc(millis: i64) -> String {
    let secs = millis.div_euclid(1000);
    let ms = millis.rem_euclid(1000);
    let days = secs.div_euclid(86_400);
    let tod = secs.rem_euclid(86_400);
    let (hour, minute, second) = (tod / 3600, (tod % 3600) / 60, tod % 60);
    // Howard Hinnant 的 civil_from_days。
    let z = days + 719_468;
    let era = if z >= 0 { z } else { z - 146_096 } / 146_097;
    let doe = z - era * 146_097;
    let yoe = (doe - doe / 1460 + doe / 36_524 - doe / 146_096) / 365;
    let mut year = yoe + era * 400;
    let doy = doe - (365 * yoe + yoe / 4 - yoe / 100);
    let mp = (5 * doy + 2) / 153;
    let day = doy - (153 * mp + 2) / 5 + 1;
    let month = if mp < 10 { mp + 3 } else { mp - 9 };
    if month <= 2 {
        year += 1;
    }
    format!("{year:04}-{month:02}-{day:02}T{hour:02}:{minute:02}:{second:02}.{ms:03}Z")
}

fn now_millis() -> i64 {
    SystemTime::now()
        .duration_since(UNIX_EPOCH)
        .map(|d| d.as_millis() as i64)
        .unwrap_or(0)
}

/// 将完整响应体原样写入日志。
fn full_response_line(id: u64, action: &str, status: u16, bytes: &[u8]) -> String {
    let detail = String::from_utf8_lossy(bytes);
    format!(
        "[{}] #{id} <== response status={status} do={}\n{detail}",
        format_utc(now_millis()),
        if action.is_empty() { "-" } else { action }
    )
}

/// 请求/响应日志中间件。
///
/// 装在最外层，所以未匹配路由（404）和非法 JSON（400）也会被记录——这两类
/// 恰恰是排查客户端路径问题时会先遇到的。
pub async fn log_requests(
    State(state): State<Shared>,
    request: Request,
    next: Next,
) -> Response<Body> {
    if request.uri().to_string().len() > MAX_REQUEST_URI_BYTES {
        return (
            StatusCode::URI_TOO_LONG,
            crate::api::AsciiJson(crate::protocol::error("request_too_large", "请求地址过长")),
        )
            .into_response();
    }

    let level = state.config.log.level;
    if level == LogLevel::Off {
        return next.run(request).await;
    }

    let id = REQUEST_ID.fetch_add(1, Ordering::Relaxed);
    let started = Instant::now();
    let method = request.method().clone();
    let uri = request.uri().clone();

    // 业务参数在查询串里：do=动作&data=<JSON>。
    let query: HashMap<String, String> = uri.query().map(url_decode_pairs).unwrap_or_default();
    let action = query.get("do").cloned().unwrap_or_default();
    let request_data = query.get("data").cloned();

    // 摘要日志不读取或缓冲请求体。完整日志只收有限大小，供日志与请求重放。
    let (parts, body) = request.into_parts();
    let (body, request_body) = if level == LogLevel::Full {
        let body_bytes = match to_bytes(body, MAX_LOGGED_BODY_BYTES).await {
            Ok(bytes) => bytes,
            Err(_) => {
                return (
                    StatusCode::PAYLOAD_TOO_LARGE,
                    crate::api::AsciiJson(crate::protocol::error(
                        "request_too_large",
                        "请求内容过长",
                    )),
                )
                    .into_response();
            }
        };
        let logged_body = String::from_utf8_lossy(&body_bytes).into_owned();
        (Body::from(body_bytes), Some(logged_body))
    } else {
        (body, None)
    };
    let request = Request::from_parts(parts, body);

    let auth_route = uri.path().starts_with("/auth/");
    if level == LogLevel::Full {
        let mut detail = String::new();
        if let Some(data) = request_data.as_deref() {
            detail.push_str(&format!("\n    data {data}"));
        }
        if let Some(body) = request_body.as_deref() {
            detail.push_str(&format!("\n    body {body}"));
        }
        println!(
            "[{}] #{id} --> {method} {}{}{}",
            format_utc(now_millis()),
            uri.path(),
            match action.is_empty() || auth_route {
                true => String::new(),
                false => format!(" do={action}"),
            },
            detail
        );
    }

    let response = next.run(request).await;
    let (parts, body) = response.into_parts();
    let bytes = body
        .collect()
        .await
        .map(|collected| collected.to_bytes())
        .unwrap_or_default();
    let parsed = serde_json::from_slice::<Value>(&bytes).ok();
    if level == LogLevel::Full {
        println!(
            "{}",
            full_response_line(id, &action, parts.status.as_u16(), &bytes)
        );
    }

    let status = parts.status.as_u16();
    let result = parsed
        .as_ref()
        .and_then(|value| value.get("result"))
        .and_then(Value::as_bool);
    let error_code = parsed
        .as_ref()
        .and_then(|value| value.get("error_code"))
        .and_then(Value::as_str);
    let message = parsed
        .as_ref()
        .and_then(|value| value.get("msg"))
        .and_then(Value::as_str);

    let mut line = format!(
        "[{}] #{id} <-- {status} {} do={} {}ms",
        format_utc(now_millis()),
        match result {
            Some(true) => "result=true",
            Some(false) => "result=false",
            None => "result=非JSON",
        },
        match action.is_empty() {
            true => "-",
            false => action.as_str(),
        },
        started.elapsed().as_millis(),
    );
    if let Some(code) = error_code {
        line.push_str(&format!(" error_code={code}"));
    }
    if let Some(message) = message {
        line.push_str(&format!(" msg={message}"));
    }
    println!("{line}");

    Response::from_parts(parts, Body::from(bytes))
}

/// 解析 `a=1&b=2`，并对百分号转义解码。
///
/// 这里手写而不用 `serde_urlencoded`，是因为它只作为开发依赖存在；
/// 日志不值得为它把依赖带进正式构建。
fn url_decode_pairs(raw: &str) -> HashMap<String, String> {
    let mut out = HashMap::new();
    for pair in raw.split('&') {
        let Some((key, value)) = pair.split_once('=') else {
            continue;
        };
        out.insert(percent_decode(key), percent_decode(value));
    }
    out
}

fn percent_decode(input: &str) -> String {
    let bytes = input.as_bytes();
    let mut out: Vec<u8> = Vec::with_capacity(bytes.len());
    let mut i = 0;
    while i < bytes.len() {
        match bytes[i] {
            b'+' => {
                out.push(b' ');
                i += 1;
            }
            b'%' if i + 2 < bytes.len() => {
                let hex = std::str::from_utf8(&bytes[i + 1..i + 3]).unwrap_or("");
                match u8::from_str_radix(hex, 16) {
                    Ok(byte) => {
                        out.push(byte);
                        i += 3;
                    }
                    Err(_) => {
                        out.push(bytes[i]);
                        i += 1;
                    }
                }
            }
            byte => {
                out.push(byte);
                i += 1;
            }
        }
    }
    String::from_utf8_lossy(&out).into_owned()
}

#[cfg(test)]
mod tests {
    use super::*;

    /// `full` 响应详情原样记录，不截断。
    #[test]
    fn full_response_details_are_raw_and_complete() {
        let body =
            br#"{"result":true,"user_auth":"tok-123","cmn":{"user_info":{"user_id":"7-1001"}}}"#;
        let line = full_response_line(7, "user.login", 200, body);
        assert!(line.contains("tok-123"));
        assert!(line.contains("7-1001"));
        assert!(line.contains("do=user.login"));
        assert!(line.contains("status=200"));

        let large = serde_json::json!({"payload":"x".repeat(4000)});
        let line = full_response_line(8, "user.login", 200, large.to_string().as_bytes());
        assert!(line.len() > 4000);
        assert!(line.ends_with('}'));
        let line = full_response_line(9, "", 404, b"not found");
        assert!(line.contains("not found"));
    }

    /// 时间格式化要能对上已知时刻。
    #[test]
    fn utc_formatting_matches_known_instants() {
        assert_eq!(format_utc(0), "1970-01-01T00:00:00.000Z");
        // 2024-02-29T12:34:56.789Z（闰日）
        assert_eq!(format_utc(1_709_210_096_789), "2024-02-29T12:34:56.789Z");
    }

    /// 查询串解码要处理客户端用的百分号转义。
    #[test]
    fn query_decoding_handles_percent_escapes() {
        let pairs = url_decode_pairs("do=user.login&data=%7B%22a%22%3A1%7D");
        assert_eq!(pairs.get("do").map(String::as_str), Some("user.login"));
        assert_eq!(pairs.get("data").map(String::as_str), Some("{\"a\":1}"));
    }
}
