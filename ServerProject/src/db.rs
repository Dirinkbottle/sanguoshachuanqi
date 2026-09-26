//! 持久层的唯一入口：打开 SQLite 并建好全部表。
//!
//! 账号、会话、教程进度和玩家实体共用同一个数据库文件，schema **只在这里创建**。
//! 其它模块一律不再自己建表，否则会出现"某个连接看到的表结构不一样"这类只在
//! 并发下暴露的问题。
//!
//! 全部玩家数据表的主键都是 `(principal, server_id, ...)`，这样同一账号在不同
//! 区服的进度天然互相隔离，不需要在业务层再做一次判断。

use rusqlite::{Connection, OptionalExtension, params};
use std::{
    path::Path,
    time::{SystemTime, UNIX_EPOCH},
};

/// 账号、会话与教程里程碑。
const SCHEMA_ACCOUNTS: &str = "
    CREATE TABLE IF NOT EXISTS accounts (
        id INTEGER PRIMARY KEY, username TEXT NOT NULL UNIQUE,
        password_hash TEXT NOT NULL, created_at INTEGER NOT NULL,
        failed_attempts INTEGER NOT NULL DEFAULT 0, locked_until INTEGER NOT NULL DEFAULT 0
    );
    CREATE TABLE IF NOT EXISTS sessions (
        token_hash BLOB PRIMARY KEY, account_id INTEGER NOT NULL REFERENCES accounts(id),
        expires_at INTEGER NOT NULL
    );
    CREATE INDEX IF NOT EXISTS sessions_expiry ON sessions(expires_at);
    CREATE TABLE IF NOT EXISTS tutorial_progress (
        principal TEXT NOT NULL,
        server_id TEXT NOT NULL,
        freshman_step TEXT NOT NULL DEFAULT '0',
        step_rank INTEGER NOT NULL DEFAULT 0,
        updated_at INTEGER NOT NULL,
        PRIMARY KEY(principal, server_id)
    );
    CREATE INDEX IF NOT EXISTS tutorial_progress_server
        ON tutorial_progress(server_id);
";

/// 玩家实体状态。
///
/// `player_counters` 是每玩家一个的主键计数器；其余表存玩家拥有的实体。
/// 静态配置 ID 不是玩家实体主键，同一个模板可以被玩家多次获得。
const SCHEMA_PLAYER: &str = "
    CREATE TABLE IF NOT EXISTS player_counters (
        principal TEXT NOT NULL,
        server_id TEXT NOT NULL,
        next_pk INTEGER NOT NULL,
        PRIMARY KEY (principal, server_id)
    );
    CREATE TABLE IF NOT EXISTS player_generals (
        principal TEXT NOT NULL,
        server_id TEXT NOT NULL,
        pk_id TEXT NOT NULL,
        general_id TEXT NOT NULL,
        general_level INTEGER NOT NULL DEFAULT 1,
        evolution_image_status INTEGER NOT NULL DEFAULT 0,
        PRIMARY KEY (principal, server_id, pk_id)
    );
    CREATE TABLE IF NOT EXISTS player_items (
        principal TEXT NOT NULL,
        server_id TEXT NOT NULL,
        pk_id TEXT NOT NULL,
        item_id TEXT NOT NULL,
        num INTEGER NOT NULL,
        PRIMARY KEY (principal, server_id, item_id)
    );
    CREATE TABLE IF NOT EXISTS player_equipment (
        principal TEXT NOT NULL,
        server_id TEXT NOT NULL,
        pk_id TEXT NOT NULL,
        equipment_id TEXT NOT NULL,
        general_pk_id TEXT NOT NULL DEFAULT '',
        PRIMARY KEY (principal, server_id, pk_id)
    );
    CREATE TABLE IF NOT EXISTS player_team (
        principal TEXT NOT NULL,
        server_id TEXT NOT NULL,
        team_id TEXT NOT NULL,
        position TEXT NOT NULL,
        general_pk_id TEXT NOT NULL,
        PRIMARY KEY (principal, server_id, team_id, position)
    );
    CREATE TABLE IF NOT EXISTS player_dungeons (
        principal TEXT NOT NULL,
        server_id TEXT NOT NULL,
        dungeon_id TEXT NOT NULL,
        clears INTEGER NOT NULL DEFAULT 0,
        PRIMARY KEY (principal, server_id, dungeon_id)
    );
";

/// 打开数据库并保证 schema 就绪。
///
/// 每个请求都会开一个短连接（见 api 层的 `spawn_blocking` 用法），所以这个函数
/// 会被频繁调用；`CREATE TABLE IF NOT EXISTS` 在这种情况下是幂等的，代价可以接受。
/// `busy_timeout` 是必要的：WAL 下仍然可能撞上写锁，没有超时会直接返回错误。
pub fn open(path: &Path) -> rusqlite::Result<Connection> {
    let mut db = Connection::open(path)?;
    db.busy_timeout(std::time::Duration::from_secs(5))?;
    db.execute_batch("PRAGMA journal_mode=WAL; PRAGMA foreign_keys=ON;")?;
    db.execute_batch(SCHEMA_ACCOUNTS)?;
    db.execute_batch(SCHEMA_PLAYER)?;
    migrate(&mut db)?;
    Ok(db)
}

/// 当前的 Unix 秒时间戳。
///
/// 账号锁定、会话过期和里程碑更新时间都用它。系统时钟异常时回落到 0，
/// 宁可让会话立刻过期，也不要写进一个荒谬的未来时间。
pub fn now() -> i64 {
    SystemTime::now()
        .duration_since(UNIX_EPOCH)
        .unwrap_or_default()
        .as_secs() as i64
}

/// Apply numbered, transactional migrations after the base tables exist.
///
/// Version 1 removes the old one-template-per-player indexes, adds durable
/// player profiles, and records successful mutation responses for retry-safe
/// replay. Version 2 adds per-general experience and a local-rule fight audit.
/// Version 3 stores the local gold-recruit allowance by player and zone.
/// Version 4 persists `user_power` separately from `user_energy`; the client
/// uses these for stamina and energy respectively. Version 5 tracks the local
/// gold-wine cooldown and whether the first gold draw was consumed.
/// Existing rows keep their current primary keys and zone ownership.
pub fn migrate(db: &mut Connection) -> rusqlite::Result<()> {
    db.execute_batch(
        "CREATE TABLE IF NOT EXISTS schema_migrations (
            version INTEGER PRIMARY KEY,
            applied_at INTEGER NOT NULL
        );",
    )?;
    let mut version: i64 = db.query_row(
        "SELECT COALESCE(MAX(version), 0) FROM schema_migrations",
        [],
        |row| row.get(0),
    )?;
    if version < 1 {
        let tx = db.transaction()?;
        tx.execute_batch(
            "DROP INDEX IF EXISTS player_generals_unique;
             DROP INDEX IF EXISTS player_equipment_unique;
             CREATE INDEX IF NOT EXISTS player_generals_by_config
                 ON player_generals(principal, server_id, general_id);
             CREATE INDEX IF NOT EXISTS player_equipment_by_config
                 ON player_equipment(principal, server_id, equipment_id);
             CREATE TABLE IF NOT EXISTS player_profiles (
                 principal TEXT NOT NULL,
                 server_id TEXT NOT NULL,
                 nickname TEXT NOT NULL DEFAULT '主公',
                 user_level INTEGER NOT NULL DEFAULT 1,
                 user_experience INTEGER NOT NULL DEFAULT 0,
                 user_coin INTEGER NOT NULL DEFAULT 1000,
                 user_gold INTEGER NOT NULL DEFAULT 100,
                 user_energy INTEGER NOT NULL DEFAULT 20,
                 PRIMARY KEY(principal, server_id)
             );
             CREATE TABLE IF NOT EXISTS request_dedup (
                 principal TEXT NOT NULL,
                 server_id TEXT NOT NULL,
                 action TEXT NOT NULL,
                 fingerprint TEXT NOT NULL,
                 response_json TEXT NOT NULL,
                 created_at INTEGER NOT NULL,
                 PRIMARY KEY(principal, server_id, action, fingerprint)
             );
             CREATE INDEX IF NOT EXISTS request_dedup_created
                 ON request_dedup(created_at);
             CREATE TABLE IF NOT EXISTS resource_ledger (
                 entry_id INTEGER PRIMARY KEY AUTOINCREMENT,
                 principal TEXT NOT NULL,
                 server_id TEXT NOT NULL,
                 resource TEXT NOT NULL,
                 delta INTEGER NOT NULL,
                 source TEXT NOT NULL,
                 created_at INTEGER NOT NULL
             );
             CREATE INDEX IF NOT EXISTS resource_ledger_player_time
                 ON resource_ledger(principal, server_id, created_at);",
        )?;
        tx.execute(
            "INSERT INTO schema_migrations(version, applied_at) VALUES (?1, ?2)",
            params![1, now()],
        )?;
        tx.commit()?;
        version = 1;
    }
    if version < 2 {
        let tx = db.transaction()?;
        let has_general_experience: i64 = tx.query_row(
            "SELECT EXISTS (
                SELECT 1 FROM pragma_table_info('player_generals')
                WHERE name = 'general_experience'
             )",
            [],
            |row| row.get(0),
        )?;
        if has_general_experience == 0 {
            tx.execute_batch(
                "ALTER TABLE player_generals ADD COLUMN general_experience
                 INTEGER NOT NULL DEFAULT 0;",
            )?;
        }
        tx.execute_batch(
            "CREATE TABLE IF NOT EXISTS fight_records (
                 fight_id INTEGER PRIMARY KEY AUTOINCREMENT,
                 principal TEXT NOT NULL,
                 server_id TEXT NOT NULL,
                 dungeon_id TEXT NOT NULL,
                 success INTEGER NOT NULL,
                 star_level INTEGER NOT NULL,
                 rounds INTEGER NOT NULL,
                 rule_version TEXT NOT NULL,
                 result_json TEXT NOT NULL,
                 created_at INTEGER NOT NULL
             );
             CREATE INDEX IF NOT EXISTS fight_records_player_time
                 ON fight_records(principal, server_id, created_at);
             CREATE INDEX IF NOT EXISTS fight_records_player_dungeon
                 ON fight_records(principal, server_id, dungeon_id);",
        )?;
        tx.execute(
            "INSERT INTO schema_migrations(version, applied_at) VALUES (?1, ?2)",
            params![2, now()],
        )?;
        tx.commit()?;
        version = 2;
    }
    if version < 3 {
        let tx = db.transaction()?;
        tx.execute_batch(
            "CREATE TABLE IF NOT EXISTS wine_state (
                 principal TEXT NOT NULL,
                 server_id TEXT NOT NULL,
                 gold_free_used INTEGER NOT NULL DEFAULT 0,
                 PRIMARY KEY(principal, server_id)
             );",
        )?;
        tx.execute(
            "INSERT INTO schema_migrations(version, applied_at) VALUES (?1, ?2)",
            params![3, now()],
        )?;
        tx.commit()?;
        version = 3;
    }
    if version < 4 {
        let tx = db.transaction()?;
        tx.execute_batch(
            "CREATE TABLE IF NOT EXISTS player_profiles (
                 principal TEXT NOT NULL,
                 server_id TEXT NOT NULL,
                 nickname TEXT NOT NULL DEFAULT '主公',
                 user_level INTEGER NOT NULL DEFAULT 1,
                 user_experience INTEGER NOT NULL DEFAULT 0,
                 user_coin INTEGER NOT NULL DEFAULT 1000,
                 user_gold INTEGER NOT NULL DEFAULT 100,
                 user_energy INTEGER NOT NULL DEFAULT 20,
                 PRIMARY KEY(principal, server_id)
             );",
        )?;
        let has_user_power: i64 = tx.query_row(
            "SELECT EXISTS (
                SELECT 1 FROM pragma_table_info('player_profiles')
                WHERE name = 'user_power'
             )",
            [],
            |row| row.get(0),
        )?;
        if has_user_power == 0 {
            tx.execute_batch(
                "ALTER TABLE player_profiles ADD COLUMN user_power
                 INTEGER NOT NULL DEFAULT 150;",
            )?;
        }
        tx.execute(
            "INSERT INTO schema_migrations(version, applied_at) VALUES (?1, ?2)",
            params![4, now()],
        )?;
        tx.commit()?;
        version = 4;
    }
    if version < 5 {
        let tx = db.transaction()?;
        tx.execute_batch(
            "CREATE TABLE IF NOT EXISTS wine_state (
                 principal TEXT NOT NULL,
                 server_id TEXT NOT NULL,
                 gold_free_used INTEGER NOT NULL DEFAULT 0,
                 PRIMARY KEY(principal, server_id)
             );",
        )?;
        for (column, definition) in [
            ("gold_free_cooldown_until", "INTEGER NOT NULL DEFAULT 0"),
            ("gold_first_consumed", "INTEGER NOT NULL DEFAULT 0"),
        ] {
            let exists: i64 = tx.query_row(
                "SELECT EXISTS (
                    SELECT 1 FROM pragma_table_info('wine_state') WHERE name = ?1
                 )",
                [column],
                |row| row.get(0),
            )?;
            if exists == 0 {
                tx.execute_batch(&format!(
                    "ALTER TABLE wine_state ADD COLUMN {column} {definition};"
                ))?;
            }
        }
        // Existing free draws had no timestamp. Preserve their consumed state
        // and first-draw flag; they remain spent until manually reset.
        tx.execute(
            "UPDATE wine_state SET gold_first_consumed = 1 WHERE gold_free_used > 0",
            [],
        )?;
        tx.execute(
            "INSERT INTO schema_migrations(version, applied_at) VALUES (?1, ?2)",
            params![5, now()],
        )?;
        tx.commit()?;
        version = 5;
    }
    if version < 6 {
        let tx = db.transaction()?;
        // Older reconstructed builds used 50000101/02 as dungeon IDs. The
        // original offline service uses these only as chapter aliases and
        // persists the actual dungeon IDs 501001/02. Merge before deleting so
        // existing players keep their clears and tutorial progress.
        for (old_id, new_id) in [("50000101", "501001"), ("50000102", "501002")] {
            tx.execute(
                "INSERT INTO player_dungeons(principal, server_id, dungeon_id, clears)
                 SELECT principal, server_id, ?2, clears FROM player_dungeons WHERE dungeon_id = ?1
                 ON CONFLICT(principal, server_id, dungeon_id)
                 DO UPDATE SET clears = clears + excluded.clears",
                params![old_id, new_id],
            )?;
            tx.execute(
                "DELETE FROM player_dungeons WHERE dungeon_id = ?1",
                [old_id],
            )?;
            tx.execute(
                "UPDATE fight_records SET dungeon_id = ?2 WHERE dungeon_id = ?1",
                params![old_id, new_id],
            )?;
        }
        tx.execute(
            "INSERT INTO schema_migrations(version, applied_at) VALUES (?1, ?2)",
            params![6, now()],
        )?;
        tx.commit()?;
        version = 6;
    }
    if version != 6 {
        return Err(rusqlite::Error::InvalidParameterName(format!(
            "unsupported database schema version {version}"
        )));
    }
    Ok(())
}

/// Return a previously committed response while it is within the retry window.
pub fn cached_response(
    db: &Connection,
    principal: &str,
    server_id: &str,
    action: &str,
    fingerprint: &str,
) -> rusqlite::Result<Option<serde_json::Value>> {
    const RETRY_WINDOW_SECONDS: i64 = 24 * 60 * 60;
    let body: Option<String> = db
        .query_row(
            "SELECT response_json FROM request_dedup
             WHERE principal = ?1 AND server_id = ?2 AND action = ?3 AND fingerprint = ?4
               AND created_at >= ?5",
            params![
                principal,
                server_id,
                action,
                fingerprint,
                now() - RETRY_WINDOW_SECONDS
            ],
            |row| row.get(0),
        )
        .optional()?;
    Ok(body.and_then(|value| serde_json::from_str(&value).ok()))
}

/// Store the exact successful response inside the caller's business transaction.
pub fn store_response(
    db: &Connection,
    principal: &str,
    server_id: &str,
    action: &str,
    fingerprint: &str,
    response: &serde_json::Value,
) -> rusqlite::Result<()> {
    const RETRY_WINDOW_SECONDS: i64 = 24 * 60 * 60;
    let now = now();
    db.execute(
        "DELETE FROM request_dedup WHERE created_at < ?1",
        params![now - RETRY_WINDOW_SECONDS],
    )?;
    db.execute(
        "INSERT INTO request_dedup
             (principal, server_id, action, fingerprint, response_json, created_at)
         VALUES (?1, ?2, ?3, ?4, ?5, ?6)
         ON CONFLICT(principal, server_id, action, fingerprint)
         DO UPDATE SET response_json = excluded.response_json, created_at = excluded.created_at",
        params![
            principal,
            server_id,
            action,
            fingerprint,
            response.to_string(),
            now
        ],
    )?;
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn schema_migration_keeps_existing_rows_and_allows_duplicate_templates() {
        let temp = tempfile::tempdir().unwrap();
        let path = temp.path().join("migration.sqlite3");
        let legacy = Connection::open(&path).unwrap();
        legacy
            .execute_batch(
                "CREATE TABLE player_generals (
                     principal TEXT NOT NULL, server_id TEXT NOT NULL, pk_id TEXT NOT NULL,
                     general_id TEXT NOT NULL, general_level INTEGER NOT NULL DEFAULT 1,
                     evolution_image_status INTEGER NOT NULL DEFAULT 0,
                     PRIMARY KEY(principal, server_id, pk_id)
                 );
                 CREATE UNIQUE INDEX player_generals_unique
                     ON player_generals(principal, server_id, general_id);
                 CREATE TABLE player_equipment (
                     principal TEXT NOT NULL, server_id TEXT NOT NULL, pk_id TEXT NOT NULL,
                     equipment_id TEXT NOT NULL, general_pk_id TEXT NOT NULL DEFAULT '',
                     PRIMARY KEY(principal, server_id, pk_id)
                 );
                 CREATE UNIQUE INDEX player_equipment_unique
                     ON player_equipment(principal, server_id, equipment_id);
                 INSERT INTO player_generals(principal, server_id, pk_id, general_id)
                     VALUES ('account:1', '1001', '900000000', '121018');",
            )
            .unwrap();
        drop(legacy);
        let db = open(&path).unwrap();
        db.execute(
            "INSERT INTO player_generals(principal, server_id, pk_id, general_id)
             VALUES ('account:1', '1001', '900000001', '121018')",
            [],
        )
        .unwrap();
        let count: i64 = db
            .query_row(
                "SELECT COUNT(*) FROM player_generals
                 WHERE principal = 'account:1' AND server_id = '1001' AND general_id = '121018'",
                [],
                |row| row.get(0),
            )
            .unwrap();
        assert_eq!(count, 2);
        let preserved: i64 = db
            .query_row(
                "SELECT COUNT(*) FROM player_generals WHERE pk_id = '900000000'",
                [],
                |row| row.get(0),
            )
            .unwrap();
        assert_eq!(preserved, 1);
    }

    #[test]
    fn migration_repairs_a_partial_version_marker_without_losing_rows() {
        let temp = tempfile::tempdir().unwrap();
        let path = temp.path().join("partial-migration.sqlite3");
        let partial = Connection::open(&path).unwrap();
        partial
            .execute_batch(
                "CREATE TABLE schema_migrations (version INTEGER PRIMARY KEY, applied_at INTEGER NOT NULL);
                 INSERT INTO schema_migrations(version, applied_at) VALUES (1, 10);
                 CREATE TABLE player_profiles (
                     principal TEXT NOT NULL, server_id TEXT NOT NULL,
                     nickname TEXT NOT NULL DEFAULT '主公',
                     user_level INTEGER NOT NULL DEFAULT 1,
                     user_experience INTEGER NOT NULL DEFAULT 0,
                     user_coin INTEGER NOT NULL DEFAULT 1000,
                     user_gold INTEGER NOT NULL DEFAULT 100,
                     user_energy INTEGER NOT NULL DEFAULT 20,
                     PRIMARY KEY(principal, server_id)
                 );
                 INSERT INTO player_profiles(principal, server_id, user_coin, user_energy)
                     VALUES ('account:1', '1001', 123, 8);
                 CREATE TABLE player_generals (
                     principal TEXT NOT NULL, server_id TEXT NOT NULL, pk_id TEXT NOT NULL,
                     general_id TEXT NOT NULL, general_level INTEGER NOT NULL DEFAULT 1,
                     evolution_image_status INTEGER NOT NULL DEFAULT 0,
                     general_experience INTEGER NOT NULL DEFAULT 0,
                     PRIMARY KEY(principal, server_id, pk_id)
                 );
                 INSERT INTO player_generals(principal, server_id, pk_id, general_id)
                     VALUES ('account:1', '1001', '900000001', '121018');
                 CREATE TABLE fight_records (
                     fight_id INTEGER PRIMARY KEY AUTOINCREMENT,
                     principal TEXT NOT NULL, server_id TEXT NOT NULL,
                     dungeon_id TEXT NOT NULL, success INTEGER NOT NULL,
                     star_level INTEGER NOT NULL, rounds INTEGER NOT NULL,
                     rule_version TEXT NOT NULL, result_json TEXT NOT NULL,
                     created_at INTEGER NOT NULL
                 );
                 CREATE TABLE wine_state (
                     principal TEXT NOT NULL, server_id TEXT NOT NULL,
                     gold_free_used INTEGER NOT NULL DEFAULT 0,
                     PRIMARY KEY(principal, server_id)
                 );",
            )
            .unwrap();
        drop(partial);

        let db = open(&path).unwrap();
        let version: i64 = db
            .query_row("SELECT MAX(version) FROM schema_migrations", [], |row| {
                row.get(0)
            })
            .unwrap();
        let preserved: i64 = db
            .query_row(
                "SELECT COUNT(*) FROM player_generals
                 WHERE pk_id = '900000001' AND general_id = '121018'",
                [],
                |row| row.get(0),
            )
            .unwrap();
        let profile: (i64, i64, i64) = db
            .query_row(
                "SELECT user_coin, user_energy, user_power FROM player_profiles
                 WHERE principal = 'account:1' AND server_id = '1001'",
                [],
                |row| Ok((row.get(0)?, row.get(1)?, row.get(2)?)),
            )
            .unwrap();
        assert_eq!(version, 6);
        assert_eq!(preserved, 1);
        assert_eq!(profile, (123, 8, 150));
        for column in ["gold_free_cooldown_until", "gold_first_consumed"] {
            let exists: i64 = db
                .query_row(
                    "SELECT EXISTS (
                        SELECT 1 FROM pragma_table_info('wine_state') WHERE name = ?1
                     )",
                    [column],
                    |row| row.get(0),
                )
                .unwrap();
            assert_eq!(exists, 1, "wine_state.{column} should be migrated");
        }
    }
}
