//! 持久层的唯一入口：打开 SQLite 并建好全部表。
//!
//! 账号、会话、教程进度和玩家实体共用同一个数据库文件，schema **只在这里创建**。
//! 其它模块一律不再自己建表，否则会出现"某个连接看到的表结构不一样"这类只在
//! 并发下暴露的问题。
//!
//! 全部玩家数据表的主键都是 `(principal, server_id, ...)`，这样同一账号在不同
//! 区服的进度天然互相隔离，不需要在业务层再做一次判断。

use rusqlite::Connection;
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
/// `player_counters` 是每玩家一个的主键计数器；其余五张表存实体本身。
/// `player_generals` 与 `player_equipment` 上的唯一索引把"按静态配置 ID
/// 去重"这件事交给数据库，这样重试和并发请求都不会造出重复实体。
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
    CREATE UNIQUE INDEX IF NOT EXISTS player_generals_unique
        ON player_generals(principal, server_id, general_id);
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
    CREATE UNIQUE INDEX IF NOT EXISTS player_equipment_unique
        ON player_equipment(principal, server_id, equipment_id);
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
    let db = Connection::open(path)?;
    db.busy_timeout(std::time::Duration::from_secs(5))?;
    db.execute_batch("PRAGMA journal_mode=WAL; PRAGMA foreign_keys=ON;")?;
    db.execute_batch(SCHEMA_ACCOUNTS)?;
    db.execute_batch(SCHEMA_PLAYER)?;
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

/// 保留给未来的迁移步骤。
///
/// 目前 schema 全部由 `open` 的 `CREATE TABLE IF NOT EXISTS` 建立，
/// 不需要单独的迁移动作；列变更时在这里补 `ALTER TABLE`。
#[allow(dead_code)]
pub fn migrate(db: &Connection) -> rusqlite::Result<()> {
    db.execute_batch(SCHEMA_PLAYER)
}
