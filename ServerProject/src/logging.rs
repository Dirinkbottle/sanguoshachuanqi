//! 请求/响应日志。
//!
//! 客户端的全部业务参数都放在查询串里（`?do=动作&data=JSON`），响应是 JSON，
//! 所以中间件只做三件事：解析查询串、缓冲响应体读出 `result`、按级别打印。
//!
//! **脱敏是强制的**：`/auth/register` 与 `/auth/login` 的请求体里有明文密码，
//! `account.index` 带会话令牌，游戏请求带 `token` / `user_auth`。
//! 这些键在打印前一律替换成 `***`，`full` 级别也不例外。

use crate::api::Shared;
use crate::config::LogLevel;
use axum::{
    body::Body,
    extract::{Request, State},
    http::Response,
    middleware::Next,
};
use http_body_util::BodyExt;
use serde_json::Value;
use std::{
    collections::HashMap,
    sync::atomic::{AtomicU64, Ordering},
    time::{Instant, SystemTime, UNIX_EPOCH},
};

/// 口令字段。`show_credentials` 为真时这几个键**不脱敏**。
const PASSWORD_KEYS: &[&str] = &["password", "passwd", "pwd"];

/// 打印前必须替换成 `***` 的键（比较时忽略大小写）。
///
/// 覆盖三类：口令、会话凭据、可识别到人的信息。宁可多脱一点，
/// 也不要把能直接拿去登录的东西写进日志文件。
const SENSITIVE_KEYS: &[&str] = &[
    "password",
    "passwd",
    "pwd",
    "token",
    "user_auth",
    "session",
    "sessionid",
    "session_id",
    "sessionkey",
    "receipt_data",
    "idcard",
    "mobile",
    "mobile_num",
    "easy_uid",
];

/// 给每个请求编号，方便把请求行和响应行对上。
static REQUEST_ID: AtomicU64 = AtomicU64::new(1);

/// 递归把敏感键的值替换掉。
///
/// 会走进嵌套对象和数组，所以 `extra.sessionId` 这种嵌套位置也盖得到。
/// `show_credentials` 只放行 `PASSWORD_KEYS`；会话令牌始终是 `***`。
pub fn redact_with(value: &mut Value, show_credentials: bool) {
    match value {
        Value::Object(map) => {
            for (key, item) in map.iter_mut() {
                let lowered = key.to_ascii_lowercase();
                if SENSITIVE_KEYS.contains(&lowered.as_str()) {
                    if show_credentials && PASSWORD_KEYS.contains(&lowered.as_str()) {
                        continue;
                    }
                    *item = Value::String("***".to_string());
                } else {
                    redact_with(item, show_credentials);
                }
            }
        }
        Value::Array(items) => {
            for item in items.iter_mut() {
                redact_with(item, show_credentials);
            }
        }
        _ => {}
    }
}

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

/// 把 JSON 压成一行并截断，避免一条日志刷满屏幕。
fn compact(value: &Value, limit: usize) -> String {
    let text = value.to_string();
    if text.chars().count() <= limit {
        return text;
    }
    let head: String = text.chars().take(limit).collect();
    format!("{head}…<截断>")
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
    let level = state.config.log.level;
    if level == LogLevel::Off {
        return next.run(request).await;
    }

    let id = REQUEST_ID.fetch_add(1, Ordering::Relaxed);
    let started = Instant::now();
    let method = request.method().clone();
    let uri = request.uri().clone();

    // 业务参数在查询串里：do=动作&data=<JSON>。
    let query: HashMap<String, String> = uri
        .query()
        .map(|raw| {
            url_decode_pairs(raw)
        })
        .unwrap_or_default();
    let action = query.get("do").cloned().unwrap_or_default();
    let request_data = query.get("data").and_then(|raw| {
        serde_json::from_str::<Value>(raw).ok()
    });

    // 请求体只有 /auth/* 用得到，里面是明文口令，脱敏之后再考虑打印。
    let (parts, body) = request.into_parts();
    let body_bytes = body
        .collect()
        .await
        .map(|collected| collected.to_bytes())
        .unwrap_or_default();
    let request_body = serde_json::from_slice::<Value>(&body_bytes).ok();
    let request = Request::from_parts(parts, Body::from(body_bytes));

    // 开关打开时，账号服的请求体在任何级别都打出来——那正是这个开关的用途。
    let auth_route = uri.path().starts_with("/auth/");
    let show_credentials = state.config.log.show_credentials;
    if level == LogLevel::Full || (show_credentials && auth_route) {
        let mut detail = String::new();
        if let Some(mut data) = request_data.clone() {
            redact_with(&mut data, show_credentials);
            detail.push_str(&format!("\n    data {}", compact(&data, 2000)));
        }
        if let Some(mut body) = request_body.clone() {
            redact_with(&mut body, show_credentials);
            detail.push_str(&format!("\n    body {}", compact(&body, 2000)));
        }
        // 只打路径，绝不打原始查询串：data= 里含会话令牌，打出来就把
        // 下面那行脱敏整个绕过了。参数走 data 那行（已脱敏）。
        println!(
            "[{}] #{id} --> {method} {}{}{}",
            format_utc(now_millis()),
            uri.path(),
            match action.is_empty() {
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
    if level == LogLevel::Full
        && let Some(mut value) = parsed
    {
        redact_with(&mut value, show_credentials);
        line.push_str(&format!("\n    resp {}", compact(&value, 2000)));
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
    use serde_json::json;

    /// 口令与会话凭据必须被替换，嵌套位置也要盖到。
    #[test]
    fn redaction_masks_credentials_everywhere() {
        let mut value = json!({
            "account_uid": "1",
            "token": "deadbeef",
            "password": "hunter2",
            "extra": {"sessionId": "cafe", "keep": "ok"},
            "list": [{"user_auth": "x"}, {"pwd": "y"}]
        });
        redact_with(&mut value, false);
        assert_eq!(value["account_uid"], "1");
        assert_eq!(value["token"], "***");
        assert_eq!(value["password"], "***");
        assert_eq!(value["extra"]["sessionId"], "***");
        assert_eq!(value["extra"]["keep"], "ok");
        assert_eq!(value["list"][0]["user_auth"], "***");
        assert_eq!(value["list"][1]["pwd"], "***");
    }

    /// 打开开关只放行口令；会话令牌仍然必须脱敏。
    #[test]
    fn credential_switch_only_exempts_passwords() {
        let mut value = json!({
            "username": "alice",
            "password": "hunter2",
            "token": "deadbeef",
            "extra": {"sessionId": "cafe", "pwd": "s3cret"}
        });
        redact_with(&mut value, true);
        assert_eq!(value["username"], "alice");
        assert_eq!(value["password"], "hunter2");
        assert_eq!(value["extra"]["pwd"], "s3cret");
        // 会话凭据不受开关影响。
        assert_eq!(value["token"], "***");
        assert_eq!(value["extra"]["sessionId"], "***");
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
