//! 从 `gameconfig/` 加载服务端直接消费的静态游戏数据。
//!
//! 数据来源与权威性边界见 `ServerProject/gameconfig/README.md`；本模块只读
//! `gameconfig/` 下的三个文件，不内置任何数值。**配置缺失或损坏时启动直接失败**
//! （`GameData::load` 返回 Err，`main` 传播后退出），不做任何回退。
//!
//! 文件说明：
//! - `chapter_battle_layouts.json`：全章节布局（背景/敌人/路径/奖励）。
//! - `dungeon_enemies.json`：每关敌将映射（`dungeon_npcs`，用于关卡头像）。
//! - `wine_pool.json`：对酒奖池（离线服 classes.dex 的 `x0.f1032g` 表）。

use serde_json::Value;
use std::collections::HashMap;
use std::path::Path;

/// 一个章节的完整布局（对应 chapter_battle_layouts.json 的 chapters.<id>）。
#[derive(Clone, Debug)]
pub struct Chapter {
    pub id: String,
    pub bg_image: String,
    #[allow(dead_code)] // extracted layout metadata retained for protocol extensions
    pub start: Vec<i64>,
    pub path: String,
    #[allow(dead_code)] // rewards are supplied by the layout but not by this endpoint
    pub rewards: Vec<String>,
    /// 隐藏奖励箱（精英章节）；原始格式同 rewards，但可能带额外方向字符。
    pub hidden_rewards: Vec<String>,
    pub nodes: Vec<Node>,
}

/// 章节里的一个节点（关卡）。
#[derive(Clone, Debug)]
pub struct Node {
    #[allow(dead_code)] // boss/dungeon is preserved; legacy map payload uses "dungeon" for both
    pub kind: String,
    pub enemies: Vec<String>,
    pub drops: Vec<Value>,
    pub has_drops: bool,
    pub hidden: bool,
    #[allow(dead_code)] // source value is a derived placeholder, not the local reward design
    pub coin: i64,
    pub suggest_level: i64,
    pub power: Option<i64>,
    pub times: Option<i64>,
    pub grade: Option<i64>,
    pub reset_price: Option<i64>,
}

impl Chapter {
    /// 第 index 个关卡的 id（离线服表达：`章节 + 三位序号`，如 501001）。
    pub fn dungeon_id(&self, index: usize) -> Option<String> {
        (index < self.nodes.len()).then(|| format!("{}{:03}", self.id, index + 1))
    }
}

/// 从 `chapter_battle_layouts.json` 的节点字典反序列化。
#[derive(serde::Deserialize)]
struct RawNode {
    #[serde(rename = "type")]
    kind: String,
    #[serde(default)]
    enemies: Vec<String>,
    #[serde(default)]
    drops: Vec<Value>,
    #[serde(default)]
    hidden: bool,
    #[serde(default)]
    coin: Option<i64>,
    #[serde(default)]
    suggest_level: Option<i64>,
    #[serde(default)]
    power: Option<i64>,
    #[serde(default)]
    times: Option<i64>,
    #[serde(default)]
    grade: Option<i64>,
    #[serde(default)]
    reset_price: Option<i64>,
}

#[derive(serde::Deserialize)]
struct RawChapter {
    #[serde(default)]
    bg_image: String,
    #[serde(default)]
    start: Vec<i64>,
    #[serde(default)]
    path: String,
    #[serde(default)]
    rewards: Vec<String>,
    #[serde(default)]
    hidden_rewards: Vec<String>,
    #[serde(default)]
    nodes: Vec<RawNode>,
}

/// 离线服解出的静态游戏数据（进程启动时加载一次，之后只读共享）。
#[derive(Clone, Debug, Default)]
pub struct GameData {
    chapters: HashMap<String, Chapter>,
    /// dungeon_enemies.json -> dungeon_npcs: 关卡id -> 敌将列表
    dungeon_npcs: HashMap<String, Vec<String>>,
    /// 对酒奖池中 type=6 的武将 id，顺序即表序（去重）。
    wine_general_ids: Vec<String>,
    general_grades: HashMap<String, i64>,
    item_ids: std::collections::HashSet<String>,
    user_levels: Vec<Value>,
    dungeon_plots: HashMap<String, (String, String)>,
    plot_dialogs: HashMap<String, Vec<Value>>,
}

impl GameData {
    /// 从 `gameconfig/` 目录加载。任一必需文件缺失或解析失败都返回 Err。
    pub fn load(dir: &Path) -> Result<Self, String> {
        let layout_file = dir.join("chapter_battle_layouts.json");
        let enemies_file = dir.join("dungeon_enemies.json");
        let wine_pool_file = dir.join("wine_pool.json");

        let chapters = Self::load_chapters(&layout_file)?;
        let dungeon_npcs = Self::load_dungeon_npcs(&enemies_file)?;
        let wine_general_ids = Self::load_wine_pool(&wine_pool_file)?;
        let generals_file = dir.join("generals.json");
        let items_file = dir.join("items.json");
        let levels_file = dir.join("user_levels.json");
        let generals: Vec<Value> = serde_json::from_slice(
            &std::fs::read(&generals_file)
                .map_err(|e| format!("读取 {} 失败: {e}", generals_file.display()))?,
        )
        .map_err(|e| format!("解析 {} 失败: {e}", generals_file.display()))?;
        let items: Vec<Value> = serde_json::from_slice(
            &std::fs::read(&items_file)
                .map_err(|e| format!("读取 {} 失败: {e}", items_file.display()))?,
        )
        .map_err(|e| format!("解析 {} 失败: {e}", items_file.display()))?;
        let user_levels: Vec<Value> = serde_json::from_slice(
            &std::fs::read(&levels_file)
                .map_err(|e| format!("读取 {} 失败: {e}", levels_file.display()))?,
        )
        .map_err(|e| format!("解析 {} 失败: {e}", levels_file.display()))?;
        let plots_file = dir.join("plots.json");
        let dialogs_file = dir.join("dialogs.json");
        let plots: Vec<Value> = serde_json::from_slice(
            &std::fs::read(&plots_file)
                .map_err(|e| format!("读取 {} 失败: {e}", plots_file.display()))?,
        )
        .map_err(|e| format!("解析 {} 失败: {e}", plots_file.display()))?;
        let dialogs: Vec<Value> = serde_json::from_slice(
            &std::fs::read(&dialogs_file)
                .map_err(|e| format!("读取 {} 失败: {e}", dialogs_file.display()))?,
        )
        .map_err(|e| format!("解析 {} 失败: {e}", dialogs_file.display()))?;
        let mut dungeon_plots = HashMap::new();
        for plot in plots {
            let before = plot
                .get("before_dialog_id")
                .and_then(Value::as_str)
                .unwrap_or("");
            let after = plot
                .get("after_dialog_id")
                .and_then(Value::as_str)
                .unwrap_or("");
            let id = if !before.is_empty() { before } else { after };
            if id.len() >= 6 {
                dungeon_plots.insert(
                    id[..id.len() - 2].to_owned(),
                    (before.to_owned(), after.to_owned()),
                );
            }
        }
        let mut plot_dialogs: HashMap<String, Vec<Value>> = HashMap::new();
        for dialog in dialogs {
            if let Some(id) = dialog.get("dialog_id").and_then(Value::as_str) {
                plot_dialogs
                    .entry(id.to_owned())
                    .or_default()
                    .push(dialog.clone());
            }
        }
        let general_grades = generals
            .iter()
            .filter_map(|entry| {
                Some((
                    entry.get("id")?.as_str()?.to_owned(),
                    entry.get("grade")?.as_str()?.parse::<i64>().ok()?,
                ))
            })
            .collect();
        let item_ids = items
            .iter()
            .filter_map(|entry| entry.get("id")?.as_str().map(str::to_owned))
            .collect();

        if chapters.is_empty() {
            return Err(format!("{} 里没有任何章节", layout_file.display()));
        }
        if wine_general_ids.is_empty() {
            return Err(format!("{} 里没有抽到任何武将", wine_pool_file.display()));
        }

        Ok(Self {
            chapters,
            dungeon_npcs,
            wine_general_ids,
            general_grades,
            item_ids,
            user_levels,
            dungeon_plots,
            plot_dialogs,
        })
    }

    /// 读取章节布局文件，转成内存里的 Chapter 表。
    fn load_chapters(path: &Path) -> Result<HashMap<String, Chapter>, String> {
        let raw = std::fs::read_to_string(path)
            .map_err(|e| format!("读取 {} 失败: {e}", path.display()))?;
        let json: Value =
            serde_json::from_str(&raw).map_err(|e| format!("解析 {} 失败: {e}", path.display()))?;
        let raw_chapters = json
            .get("chapters")
            .and_then(Value::as_object)
            .ok_or_else(|| format!("{} 缺少 chapters 对象", path.display()))?;
        let mut chapters = HashMap::new();
        for (id, value) in raw_chapters {
            let raw: RawChapter = serde_json::from_value(value.clone())
                .map_err(|e| format!("章节 {id} 结构异常: {e}"))?;
            let raw_nodes = value.get("nodes").and_then(Value::as_array);
            let nodes = raw
                .nodes
                .into_iter()
                .enumerate()
                .map(|(index, n)| Node {
                    kind: n.kind,
                    enemies: n.enemies,
                    drops: n.drops,
                    has_drops: raw_nodes
                        .and_then(|nodes| nodes.get(index))
                        .is_some_and(|node| node.get("drops").is_some()),
                    hidden: n.hidden,
                    coin: n.coin.unwrap_or(0),
                    suggest_level: n.suggest_level.unwrap_or(1),
                    power: n.power,
                    times: n.times,
                    grade: n.grade,
                    reset_price: n.reset_price,
                })
                .collect();
            chapters.insert(
                id.clone(),
                Chapter {
                    id: id.clone(),
                    bg_image: raw.bg_image,
                    start: raw.start,
                    path: raw.path,
                    rewards: raw.rewards,
                    hidden_rewards: raw.hidden_rewards,
                    nodes,
                },
            );
        }
        Ok(chapters)
    }

    /// 读取敌将映射文件（dungeon_npcs）。文件缺失时按空表处理：
    /// 这不是启动失败条件，`dungeon_card` 会回退到节点敌人的第一个。
    fn load_dungeon_npcs(path: &Path) -> Result<HashMap<String, Vec<String>>, String> {
        let mut out = HashMap::new();
        let raw = std::fs::read_to_string(path)
            .map_err(|e| format!("读取 {} 失败: {e}", path.display()))?;
        let json: Value =
            serde_json::from_str(&raw).map_err(|e| format!("解析 {} 失败: {e}", path.display()))?;
        let Some(npcs) = json.get("dungeon_npcs").and_then(Value::as_object) else {
            return Err(format!("{} 缺少 dungeon_npcs 对象", path.display()));
        };
        for (id, list) in npcs {
            let ids: Vec<String> = list
                .as_array()
                .map(|arr| {
                    arr.iter()
                        .map(|v| v.as_str().unwrap_or("").to_string())
                        .collect()
                })
                .unwrap_or_default();
            out.insert(id.clone(), ids);
        }
        Ok(out)
    }

    /// 读取对酒表中用于武将展示的条目。
    ///
    /// `x0.f1032g` 行格式为 `[池条目id, 奖励类型, 奖励id, ...]`。只有 type=6
    /// 的奖励 id 是客户端 `sgs_generals` 中的武将；type=7/8 属于其他奖励，不能
    /// 作为 `show_general_list.general_id` 下发。
    fn load_wine_pool(path: &Path) -> Result<Vec<String>, String> {
        let raw = std::fs::read_to_string(path)
            .map_err(|e| format!("读取 {} 失败: {e}", path.display()))?;
        let json: Value =
            serde_json::from_str(&raw).map_err(|e| format!("解析 {} 失败: {e}", path.display()))?;
        let rows = json
            .get("value")
            .and_then(Value::as_array)
            .ok_or_else(|| format!("{} 缺少 value 数组", path.display()))?;
        let mut ids = Vec::new();
        let mut seen = std::collections::HashSet::new();
        for row in rows {
            let Some(parts) = row.as_array() else {
                continue;
            };
            if parts.len() < 3 || parts[1].as_i64() != Some(6) {
                continue;
            }
            let Some(pid) = parts[2].as_str() else {
                continue;
            };
            if seen.insert(pid.to_string()) {
                ids.push(pid.to_string());
            }
        }
        Ok(ids)
    }

    /// 按章节 id 取布局。
    pub fn chapter(&self, id: &str) -> Option<&Chapter> {
        self.chapters.get(id)
    }

    /// 原服 `h5.H0/Z0`：对外地图 ID 与布局章节 ID 双向对应。
    pub fn chapter_from_map_id(&self, map_id: &str) -> Option<&Chapter> {
        if let Some(chapter) = self.chapter(map_id) {
            return Some(chapter);
        }
        if let Some(suffix) = map_id.strip_prefix("500") {
            if suffix.len() == 3 {
                let index = suffix.parse::<usize>().ok()?;
                return self.chapter(&(500 + index).to_string());
            }
        }
        if let Some(suffix) = map_id.strip_prefix("105000") {
            if suffix.len() == 2 {
                return self.chapter(&format!("105{suffix}"));
            }
        }
        None
    }

    /// 普通章节按原服顺序列出，供完整 chapter_list 与进度计算使用。
    pub fn normal_chapters(&self) -> Vec<&Chapter> {
        let mut chapters: Vec<&Chapter> = self
            .chapters
            .values()
            .filter(|chapter| chapter.id.len() == 3 && chapter.id.starts_with('5'))
            .collect();
        chapters.sort_by_key(|chapter| chapter.id.parse::<usize>().unwrap_or(usize::MAX));
        chapters
    }

    pub fn elite_chapters(&self) -> Vec<&Chapter> {
        let mut chapters: Vec<&Chapter> = self
            .chapters
            .values()
            .filter(|chapter| chapter.id.len() == 5 && chapter.id.starts_with("105"))
            .collect();
        chapters.sort_by_key(|chapter| chapter.id.parse::<usize>().unwrap_or(usize::MAX));
        chapters
    }

    pub fn general_grade(&self, general_id: &str) -> i64 {
        self.general_grades.get(general_id).copied().unwrap_or(4)
    }

    pub fn has_item(&self, item_id: &str) -> bool {
        self.item_ids.contains(item_id)
    }

    /// `w1.J1/t0` plus `handler.x.b/d`: story attached to a dungeon fight.
    pub fn plot_dialog(&self, dungeon_id: &str) -> Option<Value> {
        let (before, after) = self.dungeon_plots.get(dungeon_id)?;
        Some(serde_json::json!({
            "dungeon_id": dungeon_id,
            "before_dialog_id": if before.is_empty() { Value::Null } else { Value::String(before.clone()) },
            "after_dialog_id": if after.is_empty() { Value::Null } else { Value::String(after.clone()) },
            "before": self.plot_dialogs.get(before).cloned().unwrap_or_default(),
            "after": self.plot_dialogs.get(after).cloned().unwrap_or_default()
        }))
    }

    pub fn plot_count(&self) -> usize {
        self.dungeon_plots.len()
    }

    /// 原服 `w1.y0(level)` 所用的玩家等级表。
    pub fn ladder_user_exp(&self, user_level: i64) -> i64 {
        let index = user_level.max(1) as usize - 1;
        self.user_levels
            .get(index)
            .and_then(|entry| entry.get("ladder_fight_user_exp"))
            .and_then(Value::as_str)
            .and_then(|value| value.parse::<f64>().ok())
            .map(|value| value.round() as i64)
            .unwrap_or(0)
    }

    /// 副本 ID 使用布局章节前缀和三位序号，例如 501001。
    pub fn dungeon(&self, dungeon_id: &str) -> Option<(&Chapter, usize, &Node)> {
        if !dungeon_id.bytes().all(|byte| byte.is_ascii_digit()) {
            return None;
        }
        let chapter_len = if dungeon_id.starts_with("105") { 5 } else { 3 };
        if dungeon_id.len() != chapter_len + 3 {
            return None;
        }
        let chapter = self.chapter(&dungeon_id[..chapter_len])?;
        let index = dungeon_id[chapter_len..]
            .parse::<usize>()
            .ok()?
            .checked_sub(1)?;
        Some((chapter, index, chapter.nodes.get(index)?))
    }

    /// 章节总数（启动日志用，让数据规模一眼可见）。
    pub fn chapter_count(&self) -> usize {
        self.chapters.len()
    }

    /// 某关卡的展示武将（关卡头像 dungeon_card）。
    ///
    /// 离线服 `h5.f0` 先读布局的 enemies：第 1—49 章优先第二位，
    /// 第 50—54 章优先第一位。布局没有可用值才查 dungeon_npcs。
    /// 之前把 `dungeon_npcs` 放在第一优先级，令 501003 错显为 121011；
    /// 原始布局第二位其实是 143016。
    pub fn dungeon_card(&self, dungeon_id: &str, fallback_enemies: &[String]) -> String {
        let chapter_number = if dungeon_id.starts_with("105") {
            dungeon_id
                .get(3..5)
                .and_then(|value| value.parse::<i64>().ok())
                .unwrap_or(1)
        } else {
            dungeon_id
                .get(0..3)
                .and_then(|value| value.parse::<i64>().ok())
                .unwrap_or(501)
                - 500
        };
        if !fallback_enemies.is_empty() {
            let preferred = if chapter_number >= 50 { 0 } else { 1 };
            if let Some(id) = fallback_enemies
                .get(preferred)
                .filter(|id| !id.trim().is_empty())
            {
                return id.clone();
            }
            if let Some(id) = fallback_enemies.first().filter(|id| !id.trim().is_empty()) {
                return id.clone();
            }
        }
        if let Some(ids) = self.dungeon_npcs.get(dungeon_id) {
            if let Some(first) = ids.first() {
                if !first.is_empty() {
                    return first.clone();
                }
            }
        }
        format!("1640{:02}", ((chapter_number.max(1) - 1) % 60) + 1)
    }

    /// 对酒展示卡池（show_general_list 的 general_id 列表）。
    pub fn wine_general_ids(&self) -> &[String] {
        &self.wine_general_ids
    }
}

/// 指向 `gameconfig/` 的便捷路径（供 `main` 与测试使用）。
#[cfg(test)]
pub fn default_dir() -> std::path::PathBuf {
    std::path::PathBuf::from(env!("CARGO_MANIFEST_DIR")).join("gameconfig")
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn loads_chapter_501_and_wine_pool() {
        let gd = GameData::load(&default_dir()).expect("load gameconfig");
        let ch = gd.chapter("501").expect("chapter 501");
        assert_eq!(ch.bg_image, "920001");
        assert_eq!(ch.nodes.len(), 6);
        assert_eq!(ch.nodes[0].enemies[0], "164051");
        assert_eq!(ch.nodes[5].kind, "boss");
        assert_eq!(gd.dungeon_card("501001", &ch.nodes[0].enemies), "164051");
        assert!(
            !gd.wine_general_ids().is_empty(),
            "wine pool must be non-empty"
        );
        assert_eq!(gd.wine_general_ids().len(), 63);
        assert!(gd.wine_general_ids().iter().any(|id| id == "181001"));
        assert!(!gd.wine_general_ids().iter().any(|id| id == "231004"));
        assert!(!gd.wine_general_ids().iter().any(|id| id == "351024"));
    }

    #[test]
    fn missing_config_is_an_error_not_a_fallback() {
        let empty_dir = std::env::temp_dir().join("sgscq-gamedata-missing");
        let result = GameData::load(&empty_dir);
        assert!(result.is_err(), "load must fail fast when config is absent");
    }

    #[test]
    fn all_offline_story_entries_point_to_real_dungeons_and_dialogs() {
        let data = GameData::load(&default_dir()).unwrap();
        assert_eq!(data.plot_count(), 343);
        for id in data.dungeon_plots.keys() {
            assert!(data.dungeon(id).is_some(), "plot {id} has no dungeon");
            let plot = data.plot_dialog(id).unwrap();
            if let Some(before) = plot["before_dialog_id"].as_str() {
                assert!(!plot["before"].as_array().unwrap().is_empty(), "{before}");
            }
            if let Some(after) = plot["after_dialog_id"].as_str() {
                assert!(!plot["after"].as_array().unwrap().is_empty(), "{after}");
            }
        }
        let chapter_one_third = data.plot_dialog("501003").unwrap();
        assert_eq!(chapter_one_third["before_dialog_id"], "50100301");
        assert_eq!(chapter_one_third["after_dialog_id"], "50100302");
    }
}
