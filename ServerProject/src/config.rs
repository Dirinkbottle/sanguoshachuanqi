use serde::Deserialize;
use std::path::{Path, PathBuf};

#[derive(Clone, Deserialize)]
pub struct Config {
    pub listen: String,
    pub public_host: String,
    pub database: PathBuf,
    pub servers: PathBuf,
    pub guest_enabled: bool,
    pub session_ttl_seconds: u64,
    #[serde(default)]
    pub tutorial: Tutorial,
    #[serde(default)]
    pub log: LogConfig,
}

/// 请求/响应日志的详细程度。
#[derive(Clone, Copy, Deserialize, PartialEq, Eq, Debug)]
#[serde(rename_all = "lowercase")]
pub enum LogLevel {
    /// 不打任何请求日志。
    Off,
    /// 每个请求一行：时间、方法、路径、动作、状态码、result、耗时。
    Summary,
    /// 额外打出脱敏后的请求 data 与响应体（截断）。
    Full,
}

/// 日志配置。
#[derive(Clone, Deserialize)]
pub struct LogConfig {
    pub level: LogLevel,
    /// 是否把 `password` 字段原文写进日志（`username` 本来就不脱敏）。
    ///
    /// 打开后 `/auth/register` 与 `/auth/login` 的请求体在任何级别都会打印，
    /// 否则只有 `full` 级别才看得到。**这是本机调试用的开关**：日志一旦被复制、
    /// 上传或贴到别处，这些口令就等于泄漏。`token` / `user_auth` 不受它影响，
    /// 始终脱敏——那是运行中会话的凭据，和一次性调试口令不是一回事。
    #[serde(default)]
    pub show_credentials: bool,
}

impl Default for LogConfig {
    fn default() -> Self {
        // 本地重建服务默认打摘要：出问题时第一眼就能看到客户端在打哪些接口。
        Self {
            level: LogLevel::Summary,
            show_credentials: false,
        }
    }
}

/// What the reconstructed first-time-player path hands out.
///
/// These are **reconstruction design choices, not recovered original rules**.
/// The closed original service's drop tables, recruit pools and starter grants
/// are not observable from the client, so this section only names the concrete
/// entities the recovered tutorial has to be able to hold. Every id must exist
/// in the shipped plan tables; `tests::tutorial_ids_exist_in_shipped_config`
/// checks that against `ReconstructedJS/data_cn_jsc/plan/`.
#[derive(Clone, Deserialize)]
pub struct Tutorial {
    /// General granted by the first gold recruit (step 40000).
    /// Shipped table: `sgs_generals.js`.
    pub recruit_general_id: String,
    /// Gift opened by step 70000. Shipped table: `sgs_item.js`, `item_type = "1"`.
    pub gift_item_id: String,
    /// Equipment granted by the tutorial dungeon so step 80000 has something to
    /// equip. Shipped table: `sgs_equipments.js`.
    pub equipment_id: String,
    /// Coin added to the player by the gift, shown through `add_list`.
    pub gift_coin: i64,
}

impl Default for Tutorial {
    fn default() -> Self {
        Self {
            recruit_general_id: "100000".to_string(),
            gift_item_id: "410001".to_string(),
            equipment_id: "200000".to_string(),
            gift_coin: 1000,
        }
    }
}

fn valid_id(value: &str) -> bool {
    !value.is_empty() && value.bytes().all(|byte| byte.is_ascii_digit())
}

impl Config {
    pub fn load(path: &Path) -> Result<Self, Box<dyn std::error::Error>> {
        let text = std::fs::read_to_string(path)?;
        let mut config: Self = toml::from_str(&text)?;
        if config.session_ttl_seconds == 0
            || config.public_host.contains('/')
            || config.public_host.contains("://")
        {
            return Err("invalid session TTL or public_host".into());
        }
        for (name, value) in [
            ("tutorial.recruit_general_id", &config.tutorial.recruit_general_id),
            ("tutorial.gift_item_id", &config.tutorial.gift_item_id),
            ("tutorial.equipment_id", &config.tutorial.equipment_id),
        ] {
            if !valid_id(value) {
                return Err(format!("{name} must be a numeric configuration id").into());
            }
        }
        if config.tutorial.gift_coin < 0 {
            return Err("tutorial.gift_coin must not be negative".into());
        }
        let root = path.parent().unwrap_or(Path::new("."));
        if config.database.is_relative() {
            config.database = root.join(config.database);
        }
        if config.servers.is_relative() {
            config.servers = root.join(config.servers);
        }
        Ok(config)
    }
}

impl Tutorial {
    /// Static configuration record ids the tutorial grants, for validation.
    #[cfg(test)]
    pub fn granted_ids(&self) -> [(&'static str, &str); 3] {
        [
            ("general", self.recruit_general_id.as_str()),
            ("item", self.gift_item_id.as_str()),
            ("equipment", self.equipment_id.as_str()),
        ]
    }
}

/// 一个可选服务区，来自 `servers.json`。
///
/// `server_status` 只允许 "1".."4"：客户端按这四个字符串决定服务区标签
/// （满 / 新 / 爆满 / 维护），其它取值会让它显示不出状态。
#[derive(Clone, serde::Deserialize)]
pub struct Zone {
    pub server_id: String,
    pub server_title: String,
    pub server_status: String,
}

/// 读取服务区列表并校验。
///
/// 这里拒绝空列表、重复 ID 和非法状态，是为了让配置错误在启动时就暴露，
/// 而不是等客户端拿到一个点不进去的服务区。
pub fn load_zones(path: &std::path::Path) -> Result<Vec<Zone>, Box<dyn std::error::Error>> {
    let zones: Vec<Zone> = serde_json::from_str(&std::fs::read_to_string(path)?)?;
    let mut ids = std::collections::HashSet::new();
    if zones.is_empty()
        || zones.iter().any(|z| {
            z.server_id.is_empty()
                || z.server_title.is_empty()
                || !["1", "2", "3", "4"].contains(&z.server_status.as_str())
                || !ids.insert(&z.server_id)
        })
    {
        return Err("zones require distinct IDs, names and statuses 1..4".into());
    }
    Ok(zones)
}
