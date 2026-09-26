//! 账号与会话：注册、登录、会话校验和登录失败节流。
//!
//! 这一层只回答一个问题：这个请求是谁发的。按账号 + 区服隔离的教程进度和玩家
//! 状态分别在 `tutorial.rs` 与 `player.rs`，本模块不碰。
//!
//! 密码用 Argon2id + 随机盐存哈希；会话令牌是 32 字节随机数，库里只存它的
//! SHA-256，原文只在登录响应里出现一次。

use crate::db::now;
use argon2::{Argon2, PasswordHash, PasswordHasher, PasswordVerifier, password_hash::SaltString};
use rand::{RngCore, rngs::OsRng};
use rusqlite::{Connection, OptionalExtension, params};
use sha2::{Digest, Sha256};

/// 连续失败多少次后锁定。
const MAX_FAILURES: i64 = 5;
/// 锁定时长（秒）。
const LOCK_SECONDS: i64 = 300;

/// 校验账号密码的格式，在哈希之前先挡掉明显非法的输入。
///
/// 限制字符集是为了避免用户名里出现分隔符——教程主体标识用 `account:{id}` 形式
/// 拼接，用户名本身不入库到那个位置，但保持狭窄更安全。
fn valid_credentials(username: &str, password: &str) -> bool {
    (3..=32).contains(&username.len())
        && username
            .bytes()
            .all(|c| c.is_ascii_alphanumeric() || c == b'_')
        && (8..=128).contains(&password.len())
}

/// 注册一个本地账号。
///
/// 返回的错误文案会原样展示给玩家，所以用中文短句。用户名唯一性交给数据库约束，
/// 不先查后插——那样在并发下有竞态。
///
/// 这是本重建工程新增的账号体系，与原运营方的边锋账号无关。
pub fn register(db: &mut Connection, username: &str, password: &str) -> Result<(), &'static str> {
    if !valid_credentials(username, password) {
        return Err("账号须为3-32位字母、数字或下划线；密码须为8-128位");
    }
    let salt = SaltString::generate(&mut OsRng);
    let hash = Argon2::default()
        .hash_password(password.as_bytes(), &salt)
        .map_err(|_| "无法创建账号")?
        .to_string();
    match db.execute(
        "INSERT INTO accounts(username,password_hash,created_at) VALUES(?1,?2,?3)",
        params![username, hash, now()],
    ) {
        Ok(_) => Ok(()),
        Err(rusqlite::Error::SqliteFailure(err, _))
            if err.code == rusqlite::ErrorCode::ConstraintViolation =>
        {
            Err("账号已存在")
        }
        Err(_) => Err("无法创建账号"),
    }
}

/// 校验密码并签发一个新会话，返回令牌原文。
///
/// 三处刻意的行为：
/// - 账号不存在与密码错误返回**同一句**文案，不泄露账号是否存在；
/// - 锁定期间直接拒绝，不做密码校验，避免用计时差探测账号；
/// - 锁定到期后计数从 1 重新开始（`locked_until != 0` 分支），而不是接着累加。
///
/// 会话插入与计数清零在同一个事务里，避免"清空了失败次数但没签出会话"的中间态。
pub fn login(
    db: &mut Connection,
    username: &str,
    password: &str,
    ttl: u64,
) -> Result<String, &'static str> {
    let record: Option<(i64, String, i64, i64)> = db
        .query_row(
            "SELECT id,password_hash,failed_attempts,locked_until FROM accounts WHERE username=?1",
            [username],
            |row| Ok((row.get(0)?, row.get(1)?, row.get(2)?, row.get(3)?)),
        )
        .optional()
        .map_err(|_| "登录失败")?;
    let Some((id, hash, failures, locked_until)) = record else {
        // 不暴露账号是否存在。
        return Err("账号或密码错误");
    };
    if now() < locked_until {
        return Err("尝试次数过多，请稍后重试");
    }
    let valid = PasswordHash::new(&hash)
        .ok()
        .and_then(|parsed| {
            Argon2::default()
                .verify_password(password.as_bytes(), &parsed)
                .ok()
        })
        .is_some();
    if !valid {
        let attempts = if locked_until != 0 { 1 } else { failures + 1 };
        db.execute(
            "UPDATE accounts SET failed_attempts=?1, locked_until=?2 WHERE id=?3",
            params![
                if attempts >= MAX_FAILURES {
                    0
                } else {
                    attempts
                },
                if attempts >= MAX_FAILURES {
                    now() + LOCK_SECONDS
                } else {
                    0
                },
                id
            ],
        )
        .map_err(|_| "登录失败")?;
        return Err("账号或密码错误");
    }
    let tx = db.transaction().map_err(|_| "登录失败")?;
    tx.execute(
        "UPDATE accounts SET failed_attempts=0, locked_until=0 WHERE id=?1",
        [id],
    )
    .map_err(|_| "登录失败")?;
    let mut secret = [0_u8; 32];
    OsRng.fill_bytes(&mut secret);
    let token = secret
        .iter()
        .map(|byte| format!("{byte:02x}"))
        .collect::<String>();
    let digest = Sha256::digest(token.as_bytes());
    tx.execute(
        "INSERT INTO sessions(token_hash,account_id,expires_at) VALUES(?1,?2,?3)",
        params![digest.as_slice(), id, now() + ttl as i64],
    )
    .map_err(|_| "登录失败")?;
    tx.commit().map_err(|_| "登录失败")?;
    Ok(token)
}

/// 用会话令牌换账号 ID，过期或格式不对都返回 None。
///
/// 长度与前缀检查放在哈希之前，让伪造的令牌不消耗一次 SHA-256。
/// 过期判断交给 SQL（`expires_at > now`），不依赖调用方先查时间。
pub fn account_for_session(db: &Connection, token: &str) -> Option<i64> {
    if token.len() != 64 || !token.bytes().all(|byte| byte.is_ascii_hexdigit()) {
        return None;
    }
    let digest = Sha256::digest(token.as_bytes());
    db.query_row(
        "SELECT account_id FROM sessions WHERE token_hash=?1 AND expires_at>?2",
        params![digest.as_slice(), now()],
        |row| row.get(0),
    )
    .optional()
    .ok()
    .flatten()
}

/// Revoke one raw session token. Only its digest is compared with stored data.
pub fn logout(db: &Connection, token: &str) -> rusqlite::Result<bool> {
    if token.len() != 64 || !token.bytes().all(|byte| byte.is_ascii_hexdigit()) {
        return Ok(false);
    }
    let digest = Sha256::digest(token.as_bytes());
    Ok(db.execute(
        "DELETE FROM sessions WHERE token_hash = ?1",
        [digest.as_slice()],
    )? == 1)
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::db::open;

    /// 账号、密码哈希和会话都要能挺过一次进程重启。
    #[test]
    fn registered_password_and_session_survive_reopening_database() {
        let directory = tempfile::tempdir().unwrap();
        let path = directory.path().join("accounts.sqlite3");
        let mut db = open(&path).unwrap();
        register(&mut db, "user_123", "passphrase-123").unwrap();
        assert!(register(&mut db, "user_123", "passphrase-123").is_err());
        assert!(login(&mut db, "user_123", "wrong-password", 3600).is_err());
        let token = login(&mut db, "user_123", "passphrase-123", 3600).unwrap();
        drop(db);
        let db = open(&path).unwrap();
        assert!(account_for_session(&db, &token).is_some());
        assert!(account_for_session(&db, "invalid").is_none());
    }

    #[test]
    fn expired_and_revoked_sessions_stop_authenticating() {
        let directory = tempfile::tempdir().unwrap();
        let path = directory.path().join("accounts.sqlite3");
        let mut db = open(&path).unwrap();
        register(&mut db, "user_456", "passphrase-456").unwrap();
        let expired = login(&mut db, "user_456", "passphrase-456", 0).unwrap();
        assert!(account_for_session(&db, &expired).is_none());
        let token = login(&mut db, "user_456", "passphrase-456", 3600).unwrap();
        assert!(account_for_session(&db, &token).is_some());
        assert!(logout(&db, &token).unwrap());
        assert!(account_for_session(&db, &token).is_none());
        assert!(!logout(&db, &token).unwrap());
    }
}
