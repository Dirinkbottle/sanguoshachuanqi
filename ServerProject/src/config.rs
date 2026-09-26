use serde::Deserialize;
use std::path::{Path, PathBuf};

/// 未在 config.toml 里写 `game_data` 时用的默认目录。
fn default_game_data() -> PathBuf {
    PathBuf::from("gameconfig")
}

#[derive(Clone, Deserialize)]
pub struct Config {
    pub listen: String,
    pub public_host: String,
    pub database: PathBuf,
    pub servers: PathBuf,
    pub guest_enabled: bool,
    pub session_ttl_seconds: u64,
    /// `gameconfig/` 的位置：`map_info` / `wine_info` 的唯一数据来源，
    /// 目录或文件缺失时服务直接启动失败，不提供本地回退。
    #[serde(default = "default_game_data")]
    pub game_data: PathBuf,
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
    /// 额外原样打出请求 data、请求体和完整响应体，不脱敏、不截断。
    Full,
}

/// 日志配置。
#[derive(Clone, Deserialize)]
pub struct LogConfig {
    pub level: LogLevel,
}

impl Default for LogConfig {
    fn default() -> Self {
        // 本地重建服务默认记录完整请求与响应，便于核对客户端协议。
        Self {
            level: LogLevel::Full,
        }
    }
}

/// Local design rules used by the implemented first-time-player slice.
///
/// The original service's account balances, map payload, recruit pools, drop
/// tables, and combat balance are not recoverable from the client. Keep those
/// local choices together here instead of scattering guessed numbers in code.
#[derive(Clone, Deserialize, Debug, PartialEq, Eq)]
#[serde(default)]
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
    /// Local starting balances for fields absent from the original server.
    pub starting_coin: i64,
    pub starting_gold: i64,
    pub starting_power: i64,
    pub starting_energy: i64,
    /// Local map records. The chapter id 500001 is a separate client constant.
    pub first_dungeon_id: String,
    pub first_dungeon_name: String,
    pub first_enemy_general_id: String,
    pub second_dungeon_id: String,
    pub second_dungeon_name: String,
    pub second_enemy_general_id: String,
    pub chapter_name: String,
    /// Local presentation fields for the server supplied map entries.
    pub dungeon_card_id: String,
    pub dungeon_grade: i64,
    pub dungeon_suggest_level: i64,
    pub dungeon_item_price: i64,
    pub dungeon_times: i64,
    /// Economy and reward values used by the playable tutorial slice.
    pub dungeon_power_cost: i64,
    pub dungeon_coin_reward: i64,
    pub dungeon_user_exp_reward: i64,
    pub dungeon_general_exp_reward: i64,
    pub gold_free_draws: i64,
    pub gold_single_price: i64,
    pub silver_free_draws: i64,
    pub silver_single_price: i64,
    pub copper_free_draws: i64,
    pub copper_single_price: i64,
    pub recruit_multi_count: i64,
    pub gold_multi_price: i64,
    /// Local initial guarantee phase used by the wine response. The original
    /// player phase is not stored by this reconstruction yet.
    pub gold_guarantee_phase: i64,
    /// Local animation values, independent of authoritative settlement.
    pub fight_player_hp: i64,
    pub fight_enemy_hp: i64,
    pub fight_player_team_points: i64,
    pub fight_enemy_team_points: i64,
    pub fight_star_level: i64,
    pub fight_rule_version: String,
}

impl Default for Tutorial {
    fn default() -> Self {
        Self {
            recruit_general_id: "100000".to_string(),
            gift_item_id: "410001".to_string(),
            equipment_id: "200000".to_string(),
            gift_coin: 1000,
            starting_coin: 1000,
            starting_gold: 100,
            // Level 1 `sgs_user_level_conf` capacities from the shipped client.
            starting_power: 150,
            starting_energy: 12,
            first_dungeon_id: "501001".to_string(),
            first_dungeon_name: "50100101".to_string(),
            first_enemy_general_id: "111007".to_string(),
            second_dungeon_id: "501002".to_string(),
            second_dungeon_name: "50100201".to_string(),
            second_enemy_general_id: "121006".to_string(),
            chapter_name: "50000101".to_string(),
            dungeon_card_id: "111007".to_string(),
            dungeon_grade: 1,
            dungeon_suggest_level: 1,
            dungeon_item_price: 0,
            dungeon_times: 100,
            dungeon_power_cost: 5,
            dungeon_coin_reward: 100,
            dungeon_user_exp_reward: 10,
            dungeon_general_exp_reward: 10,
            gold_free_draws: 1,
            gold_single_price: 50,
            silver_free_draws: 1,
            silver_single_price: 1000,
            copper_free_draws: 1,
            copper_single_price: 100,
            recruit_multi_count: 10,
            gold_multi_price: 450,
            gold_guarantee_phase: 1,
            fight_player_hp: 20_000,
            fight_enemy_hp: 10_000,
            fight_player_team_points: 30,
            fight_enemy_team_points: 20,
            fight_star_level: 1,
            fight_rule_version: "tutorial-dungeon-v1".to_string(),
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
            (
                "tutorial.recruit_general_id",
                &config.tutorial.recruit_general_id,
            ),
            ("tutorial.gift_item_id", &config.tutorial.gift_item_id),
            ("tutorial.equipment_id", &config.tutorial.equipment_id),
            (
                "tutorial.first_dungeon_id",
                &config.tutorial.first_dungeon_id,
            ),
            (
                "tutorial.first_enemy_general_id",
                &config.tutorial.first_enemy_general_id,
            ),
            (
                "tutorial.second_dungeon_id",
                &config.tutorial.second_dungeon_id,
            ),
            (
                "tutorial.second_enemy_general_id",
                &config.tutorial.second_enemy_general_id,
            ),
            ("tutorial.dungeon_card_id", &config.tutorial.dungeon_card_id),
        ] {
            if !valid_id(value) {
                return Err(format!("{name} must be a numeric configuration id").into());
            }
        }
        if config.tutorial.gift_coin < 0
            || config.tutorial.starting_coin < 0
            || config.tutorial.starting_gold < 0
            || config.tutorial.starting_power < 0
            || config.tutorial.starting_energy < 0
            || config.tutorial.dungeon_power_cost <= 0
            || config.tutorial.dungeon_coin_reward < 0
            || config.tutorial.dungeon_user_exp_reward < 0
            || config.tutorial.dungeon_general_exp_reward < 0
            || !(0..=1).contains(&config.tutorial.gold_free_draws)
            || config.tutorial.gold_single_price < 0
            || !(0..=1).contains(&config.tutorial.silver_free_draws)
            || config.tutorial.silver_single_price < 0
            || !(0..=1).contains(&config.tutorial.copper_free_draws)
            || config.tutorial.copper_single_price < 0
            || config.tutorial.recruit_multi_count <= 0
            || config.tutorial.gold_multi_price < 0
            || config.tutorial.gold_guarantee_phase < 0
            || config.tutorial.dungeon_grade <= 0
            || config.tutorial.dungeon_suggest_level <= 0
            || config.tutorial.dungeon_item_price < 0
            || config.tutorial.dungeon_times <= 0
            || config.tutorial.fight_player_hp <= 0
            || config.tutorial.fight_enemy_hp <= 0
            || config.tutorial.fight_player_team_points < 0
            || config.tutorial.fight_enemy_team_points < 0
            || !(1..=3).contains(&config.tutorial.fight_star_level)
            || config.tutorial.first_dungeon_id == config.tutorial.second_dungeon_id
            || config.tutorial.first_dungeon_name.trim().is_empty()
            || config.tutorial.second_dungeon_name.trim().is_empty()
            || config.tutorial.chapter_name.trim().is_empty()
            || config.tutorial.fight_rule_version.trim().is_empty()
        {
            return Err("tutorial gameplay values are out of range".into());
        }
        let root = path.parent().unwrap_or(Path::new("."));
        if config.database.is_relative() {
            config.database = root.join(config.database);
        }
        if config.servers.is_relative() {
            config.servers = root.join(config.servers);
        }
        if config.game_data.is_relative() {
            config.game_data = root.join(config.game_data);
        }
        Ok(config)
    }
}

impl Tutorial {
    /// Tutorial map entries served to the client, in progression order.
    pub fn dungeons(&self) -> [(&str, &str, &str); 2] {
        [
            (
                self.first_dungeon_id.as_str(),
                self.first_dungeon_name.as_str(),
                self.first_enemy_general_id.as_str(),
            ),
            (
                self.second_dungeon_id.as_str(),
                self.second_dungeon_name.as_str(),
                self.second_enemy_general_id.as_str(),
            ),
        ]
    }

    /// First configured tutorial dungeon used as the current position at login.
    pub fn first_dungeon_id(&self) -> &str {
        &self.first_dungeon_id
    }

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

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn checked_in_tutorial_values_match_safe_fallbacks() {
        let configured: Config = toml::from_str(include_str!("../config.toml")).unwrap();
        assert_eq!(configured.tutorial, Tutorial::default());
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
