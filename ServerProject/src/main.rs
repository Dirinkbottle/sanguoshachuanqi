//! 三国杀传奇重建服务端。
//!
//! 分层结构：
//!
//! | 层 | 模块 | 职责 |
//! |---|---|---|
//! | 配置 | [config] | 监听地址、数据库路径、服务区列表、教程发放设计值 |
//! | 持久 | [db] | 打开 SQLite 并建好全部表（唯一建表入口） |
//! | 持久 | [accounts] | 账号、会话与登录失败节流 |
//! | 持久 | [tutorial] | 新手教程里程碑，按账号 + 区服单调前进 |
//! | 持久 | [player] | 玩家实体：武将 / 道具 / 装备 / 编队 / 关卡 |
//! | 协议 | [protocol] | 把数据摆成客户端能直接消费的形状 |
//! | 传输 | [api] | 路由、认证、业务分发 |
//! | 观测 | [logging] | 请求/响应日志（强制脱敏） |
//!
//! 启动顺序是固定的：先读配置并校验，再建库建表，最后才绑定端口。

#![recursion_limit = "256"]

mod accounts;
mod api;
mod config;
mod db;
mod logging;
mod player;
mod protocol;
mod tutorial;

use std::path::Path;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let config_path = std::env::args()
        .nth(1)
        .unwrap_or_else(|| "config.toml".to_string());
    let config = config::Config::load(Path::new(&config_path))?;
    let zones = config::load_zones(&config.servers)?;

    prepare_data_dir(&config.database)?;
    let db = db::open(&config.database)?;
    drop(db);
    restrict_database_permissions(&config.database)?;

    let address = config.listen.parse::<std::net::SocketAddr>()?;
    let listener = tokio::net::TcpListener::bind(address).await?;
    println!(
        "Serving {} zones on {address}; guests enabled: {}",
        zones.len(),
        config.guest_enabled
    );
    axum::serve(listener, api::router(api::AppState { config, zones })).await?;
    Ok(())
}

/// 建好数据库所在目录，并在本次创建时收紧权限。
///
/// 目录首次创建时设成 0700：库里存着账号哈希和会话，不应该对同机其他用户可读。
fn prepare_data_dir(database: &Path) -> std::io::Result<()> {
    let Some(parent) = database.parent() else {
        return Ok(());
    };
    let created = !parent.exists();
    std::fs::create_dir_all(parent)?;
    #[cfg(unix)]
    if created {
        use std::os::unix::fs::PermissionsExt;
        std::fs::set_permissions(parent, std::fs::Permissions::from_mode(0o700))?;
    }
    Ok(())
}

/// 把数据库文件收紧到 0600。
#[cfg(unix)]
fn restrict_database_permissions(database: &Path) -> std::io::Result<()> {
    use std::os::unix::fs::PermissionsExt;
    std::fs::set_permissions(database, std::fs::Permissions::from_mode(0o600))
}

/// 非 Unix 平台没有 POSIX 权限位，这里不做任何事。
#[cfg(not(unix))]
fn restrict_database_permissions(_database: &Path) -> std::io::Result<()> {
    Ok(())
}
