//! 新手教程里程碑：客户端唯一会上报的服务端同步点。
//!
//! 恢复出的客户端只在当前引导步骤恰好等于八个里程碑之一时，才在该次业务请求上
//! 附加 `step` 字段（ReconstructedJS/src_jsc/Tools/Net.js:320-333）。服务端能看到
//! 的教程进度因此只有这八个取样点，其余步骤完全是客户端本地行为。
//!
//! 这一层同时负责"主体标识"的命名：注册账号用 `account:{id}`，游客用
//! `guest:{uid}`。用字符串而不是外键，是为了让同一套持久化同时支持两种身份。
//!
//! 进度按 (主体, 区服) 隔离并单调前进：客户端会重试也会乱序，旧请求不能把进度推回去。

use crate::db::now;
use rusqlite::{Connection, OptionalExtension, params};
use serde_json::Value;

/// 客户端会上报的全部里程碑，顺序即教程先后。
///
/// 这个列表必须与客户端 `Tools/Net.js` 里的 `stepArray` 逐字一致：
/// 多一个会导致合法请求被判非法，少一个会静默丢失进度。
pub const MILESTONE_STEPS: [&str; 8] = [
    "10000", "20000", "30000", "40000", "50000", "60000", "70000", "80000",
];

/// 解析请求里携带的 `step`，返回 (规范字符串, 序号)。
///
/// 字符串与数字都接受：旧版 JavaScript 的请求构造器可能把调用方给的值序列化成
/// 两种形式之一。落库和回给客户端的始终是字符串。
///
/// 序号从 1 开始，用来做单调比较——直接比字符串是不可靠的（"80000" < "90000" 成立，
/// 但将来加两位数前缀就会失效）。不在列表里的值返回 Err，调用方转成 `invalid_step`，
/// 并且**不写库**。
pub fn parse_milestone(value: Option<&Value>) -> Result<Option<(String, i64)>, &'static str> {
    let Some(value) = value else {
        return Ok(None);
    };
    let raw = match value {
        Value::String(value) => value.clone(),
        Value::Number(value) => value.to_string(),
        _ => return Err("step must be a string or number"),
    };
    let raw = raw.trim();
    let Some((rank, canonical)) = MILESTONE_STEPS
        .iter()
        .enumerate()
        .find(|(_, step)| **step == raw)
    else {
        return Err("unsupported tutorial step");
    };
    Ok(Some(((*canonical).to_string(), (rank + 1) as i64)))
}

/// 注册账号的主体标识。
pub fn account_principal(account_id: i64) -> String {
    format!("account:{account_id}")
}

/// 游客的主体标识，用账号服下发的本地 UID。
pub fn guest_principal(account_uid: &str) -> String {
    format!("guest:{account_uid}")
}

/// 读取某玩家在某区服已到达的里程碑，没有记录时返回 "0"。
///
/// "0" 是客户端能理解的"还没开始"——`GuideMgr.setServerStep` 拿到它之后
/// 会从本地步骤继续，而不是判定教程已结束。
pub fn tutorial_step(
    db: &Connection,
    principal: &str,
    server_id: &str,
) -> rusqlite::Result<String> {
    db.query_row(
        "SELECT freshman_step FROM tutorial_progress
         WHERE principal=?1 AND server_id=?2",
        params![principal, server_id],
        |row| row.get(0),
    )
    .optional()
    .map(|step| step.unwrap_or_else(|| "0".to_string()))
}

/// 原子地推进里程碑，返回推进后的实际值。
///
/// 幂等与单调都交给 SQL 的冲突谓词：`WHERE excluded.step_rank > ...` 让
/// 相同进度成为空操作、旧请求永远无法回退进度。并发的两个请求只会有一个真正写入。
/// 调用方必须先用 `parse_milestone` 校验，本函数不做合法性判断。
pub fn record_tutorial_step(
    db: &Connection,
    principal: &str,
    server_id: &str,
    step: &str,
    step_rank: i64,
) -> rusqlite::Result<String> {
    db.execute(
        "INSERT INTO tutorial_progress
             (principal, server_id, freshman_step, step_rank, updated_at)
         VALUES (?1, ?2, ?3, ?4, ?5)
         ON CONFLICT(principal, server_id) DO UPDATE SET
             freshman_step=excluded.freshman_step,
             step_rank=excluded.step_rank,
             updated_at=excluded.updated_at
         WHERE excluded.step_rank > tutorial_progress.step_rank",
        params![principal, server_id, step, step_rank, now()],
    )?;
    tutorial_step(db, principal, server_id)
}

#[cfg(test)]
mod tests {
    use super::*;
    use serde_json::json;

    /// 只有八个里程碑被接受，其它值一律报错。
    #[test]
    fn only_known_milestones_are_accepted() {
        assert_eq!(
            parse_milestone(Some(&json!("10000"))).unwrap(),
            Some(("10000".to_string(), 1))
        );
        assert_eq!(
            parse_milestone(Some(&json!(80000))).unwrap(),
            Some(("80000".to_string(), 8))
        );
        assert!(parse_milestone(Some(&json!("00101"))).is_err());
        assert!(parse_milestone(Some(&json!(true))).is_err());
        assert_eq!(parse_milestone(None).unwrap(), None);
    }

    /// 进度单调前进、按区服隔离，并且能挺过重启。
    #[test]
    fn progress_is_monotonic_and_scoped_to_a_zone() {
        let directory = tempfile::tempdir().unwrap();
        let path = directory.path().join("accounts.sqlite3");
        let db = crate::db::open(&path).unwrap();
        assert_eq!(tutorial_step(&db, "account:7", "1001").unwrap(), "0");
        assert_eq!(
            record_tutorial_step(&db, "account:7", "1001", "30000", 3).unwrap(),
            "30000"
        );
        // 迟到的旧请求不能把进度推回去。
        assert_eq!(
            record_tutorial_step(&db, "account:7", "1001", "10000", 1).unwrap(),
            "30000"
        );
        // 重复请求是空操作。
        assert_eq!(
            record_tutorial_step(&db, "account:7", "1001", "30000", 3).unwrap(),
            "30000"
        );
        assert_eq!(
            record_tutorial_step(&db, "account:7", "1001", "80000", 8).unwrap(),
            "80000"
        );
        // 另一个区服从零开始。
        assert_eq!(tutorial_step(&db, "account:7", "1002").unwrap(), "0");
        drop(db);
        let db = crate::db::open(&path).unwrap();
        assert_eq!(tutorial_step(&db, "account:7", "1001").unwrap(), "80000");
    }
}
