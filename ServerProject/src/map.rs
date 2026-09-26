//! 离线服 `h5.o/h5.h`, `w1.x0/w1.p0` 的章节映射。
//! 章节布局是唯一的数据源；地图 ID 只是客户端使用的显示别名。

use std::collections::HashMap;

use serde_json::{Value, json};

use crate::gamedata::{Chapter, GameData, Node};

pub type Clears = HashMap<String, i64>;

pub fn client_map_id(chapter: &Chapter) -> String {
    if let Some(suffix) = chapter.id.strip_prefix("105") {
        format!("105000{suffix}")
    } else {
        let number = chapter.id.parse::<i64>().unwrap_or(501) - 500;
        format!("500{number:03}")
    }
}

/// First uncleared dungeon across every ordinary chapter. This is the
/// current map focus after reconnect; it is never derived from tutorial IDs.
pub fn progress(game_data: &GameData, clears: &Clears) -> (String, String) {
    let chapters = game_data.normal_chapters();
    for chapter in &chapters {
        for index in 0..chapter.nodes.len() {
            let id = chapter.dungeon_id(index).unwrap();
            if clears.get(&id).copied().unwrap_or(0) == 0 {
                return (client_map_id(chapter), id);
            }
        }
    }
    let last = chapters
        .last()
        .expect("gameconfig must contain a normal chapter");
    (
        client_map_id(last),
        last.dungeon_id(last.nodes.len() - 1).unwrap(),
    )
}

fn chapter_name(chapter: &Chapter) -> String {
    if let Some(suffix) = chapter.id.strip_prefix("105") {
        format!("105000{suffix}01")
    } else {
        let number = chapter.id.parse::<i64>().unwrap_or(501) - 500;
        format!("5000{number:02}01")
    }
}

pub fn build(
    game_data: &GameData,
    clears: &Clears,
    requested_map_id: Option<&str>,
    user_level: i64,
) -> Value {
    let requested = requested_map_id.and_then(|id| game_data.chapter_from_map_id(id));
    let elite = requested.is_some_and(|chapter| chapter.id.starts_with("105"));
    let chapters = if elite {
        game_data.elite_chapters()
    } else {
        game_data.normal_chapters()
    };
    let unlocked_count = chapters
        .iter()
        .take_while(|chapter| {
            chapter.nodes.last().is_some_and(|_| {
                chapter
                    .dungeon_id(chapter.nodes.len() - 1)
                    .is_some_and(|id| clears.get(&id).copied().unwrap_or(0) > 0)
            })
        })
        .count()
        .saturating_add(1);
    let progress_map = progress(game_data, clears).0;
    let selected = requested
        .filter(|chapter| chapter.id.starts_with("105") == elite)
        .or_else(|| {
            game_data
                .chapter_from_map_id(&progress_map)
                .filter(|_| !elite)
        })
        .unwrap_or(chapters[0]);
    let selected_index = chapters
        .iter()
        .position(|chapter| chapter.id == selected.id)
        .unwrap_or(0);
    let chapter_list: Vec<Value> = chapters
        .iter()
        .enumerate()
        .map(|(index, chapter)| {
            json!({
                "map_id": client_map_id(chapter),
                "map_name": chapter_name(chapter),
                "map_type": if elite { "2" } else { "1" },
                "map_bgimage": chapter.bg_image,
                "can_show": true,
                "can_in": index < unlocked_count
            })
        })
        .collect();
    let detail = chapter_detail(
        selected,
        game_data,
        clears,
        user_level,
        selected_index < unlocked_count,
    );
    json!({"chapter_list": chapter_list, "chapter_details": [detail]})
}

fn chapter_detail(
    chapter: &Chapter,
    game_data: &GameData,
    clears: &Clears,
    user_level: i64,
    chapter_unlocked: bool,
) -> Value {
    let layout = path_layout(&chapter.start, &chapter.path, chapter.nodes.len());
    let mut dungeons = Vec::with_capacity(chapter.nodes.len() + chapter.rewards.len());
    let mut added_roads: HashMap<usize, Vec<String>> = HashMap::new();
    let mut boxes = Vec::new();
    let hidden_indices: Vec<usize> = chapter
        .nodes
        .iter()
        .enumerate()
        .filter_map(|(index, node)| node.hidden.then_some(index + 1))
        .collect();
    for (reward_index, reward) in chapter
        .rewards
        .iter()
        .chain(&chapter.hidden_rewards)
        .enumerate()
    {
        let hidden = reward_index >= chapter.rewards.len();
        let Some((parsed_index, direction)) = parse_reward(reward) else {
            continue;
        };
        // `w1.p0`: hidden_rewards use the hidden dungeon order, while the
        // ordinary reward string itself contains its anchor node number.
        let anchor_index = if hidden {
            let hidden_index = reward_index - chapter.rewards.len();
            let Some(index) = hidden_indices.get(hidden_index) else {
                continue;
            };
            *index
        } else {
            parsed_index
        };
        let Some((anchor_pos, _)) = layout.get(anchor_index - 1) else {
            continue;
        };
        let box_pos = match direction {
            'U' => anchor_pos - 1,
            'D' => anchor_pos + 1,
            'L' => anchor_pos - 4,
            'R' => anchor_pos + 4,
            _ => continue,
        };
        if matches!(direction, 'D' | 'R') {
            added_roads
                .entry(anchor_index - 1)
                .or_default()
                .push(if direction == 'D' { "2" } else { "4" }.to_string());
        }
        let box_id = format!(
            "{}{:03}",
            chapter.id,
            chapter.nodes.len() + reward_index + 1
        );
        let star_need = if hidden {
            1
        } else {
            (anchor_index.min(chapter.nodes.len()) * 3) as i64
        };
        let has_star: i64 = (0..anchor_index.min(chapter.nodes.len()))
            .map(|index| {
                let id = chapter.dungeon_id(index).unwrap();
                if clears.get(&id).copied().unwrap_or(0) > 0 {
                    3
                } else {
                    0
                }
            })
            .sum();
        boxes.push(json!({
            "type": "box", "node_type": "TreasureBox", "id": box_id,
            "box_id": box_id, "position": box_pos,
            "dungeon_position": box_pos, "name": format!("{box_id}01"),
            "open_need_star": star_need, "has_star": has_star,
            "can_open": if has_star >= star_need { 2 } else { 1 },
            "is_claimed": false, "claimed": false,
            // `h5.k(i10)` serializes a single direction as ["1"]/["3"].
            // TreasureBox.createView iterates `.direction.length`; a number
            // silently draws no road from the reward box to its anchor.
            "direction": match direction { 'U' => vec!["1"], 'L' => vec!["3"], _ => vec![] },
            "dungeon_direction": match direction { 'U' => 1, 'L' => 3, _ => 0 },
            "item_id": box_id, "id_item": box_id,
            "item_num": 0, "num": 0,
            "reward_item_id": "", "reward_num": 0,
            "can_show": true, "can_in": chapter_unlocked
        }));
    }
    for (index, node) in chapter.nodes.iter().enumerate() {
        let id = chapter.dungeon_id(index).unwrap();
        let count = clears.get(&id).copied().unwrap_or(0);
        let can_in = chapter_unlocked
            && (index == 0 || {
                let previous = chapter.dungeon_id(index - 1).unwrap();
                clears.get(&previous).copied().unwrap_or(0) > 0
            });
        let first_card = game_data.dungeon_card(&id, &node.enemies);
        let grade = dungeon_grade(node, game_data, &first_card);
        let elite = chapter.id.starts_with("105");
        let chapter_number = if elite {
            chapter.id[3..].parse::<i64>().unwrap_or(1)
        } else {
            chapter.id.parse::<i64>().unwrap_or(501) - 500
        };
        let cost = dungeon_power(chapter, node);
        let coin = node.coin;
        let user_exp = dungeon_user_exp(game_data, user_level, cost);
        let mut directions = layout[index].1.clone();
        directions.extend(added_roads.remove(&index).unwrap_or_default());
        let unlocked_id: Vec<String> = chapter.dungeon_id(index + 1).into_iter().collect();
        dungeons.push(json!({
            "type": "dungeon", "dungeon_id": id,
            "dungeon_position": layout[index].0,
            "dungeon_name": format!("{id}01"),
            "dungeon_card": first_card,
            "dungeon_grade": grade,
            "dungeon_suggest_level": node.suggest_level,
            "dungeon_power": cost,
            "dungeon_user_exp": user_exp,
            "dungeon_general_exp": general_exp(chapter, index, node),
            "dungeon_coin": coin,
            "dungeon_times": node.times.unwrap_or(99).min(if elite { 99 } else { 50 }),
            "user_dungeon_times": count,
            "num_item_price": node.reset_price.unwrap_or(chapter_number + 10),
            "can_show": true, "can_in": can_in,
            "star_level": if count > 0 { 3 } else { 0 },
            "direction": directions,
            "dungeon_direction": 0,
            "is_newest": can_in && count == 0,
            "unlocked_id": unlocked_id,
            "elite_buy_times": 0,
            "dungeon_drop": dungeon_drops(node, &id, grade, index)
        }));
    }
    dungeons.extend(boxes);
    dungeons.sort_by_key(|entry| entry["dungeon_position"].as_i64().unwrap_or(i64::MAX));
    json!({
        "map_id": client_map_id(chapter), "map_name": chapter_name(chapter),
        "map_bgimage": chapter.bg_image, "chapter_bg": chapter.bg_image,
        "can_in": chapter_unlocked, "dungeon_info": dungeons
    })
}

/// `handler.x.B`: hidden elite nodes cost three power regardless of default.
pub fn dungeon_power(chapter: &Chapter, node: &Node) -> i64 {
    let elite = chapter.id.starts_with("105");
    if elite && node.hidden {
        3
    } else {
        node.power
            .filter(|power| *power > 0)
            .unwrap_or(if elite { 10 } else { 5 })
    }
}

/// `handler.x.C`: player experience is based on the player's current level.
pub fn dungeon_user_exp(game_data: &GameData, user_level: i64, power: i64) -> i64 {
    ((game_data.ladder_user_exp(user_level) as f64 * power as f64) / 5.0).round() as i64
}

fn parse_reward(value: &str) -> Option<(usize, char)> {
    let digits = value.chars().take_while(|ch| ch.is_ascii_digit()).count();
    let index = value[..digits].parse::<usize>().ok()?;
    let direction = value.chars().last()?.to_ascii_uppercase();
    (index > 0 && matches!(direction, 'U' | 'D' | 'L' | 'R')).then_some((index, direction))
}

/// `h5.l`: a node with an explicit `drops` field uses that list (even when
/// empty); a node with no such field gets the original server's default items.
fn dungeon_drops(node: &Node, dungeon_id: &str, grade: i64, index: usize) -> Vec<Value> {
    if node.has_drops {
        return node.drops.clone();
    }
    let mut drops = vec![json!({"type": 5, "id": "600032", "num": grade.max(1)})];
    let special = dungeon_id.ends_with("000");
    if special && grade >= 2 {
        drops.push(json!({"type": 5, "id": "600023", "num": grade * 100}));
    }
    if (index + 1) % 3 == 0 || special {
        drops.push(json!({"type": 5, "id": "600001", "num": grade * 2}));
    }
    drops
}

fn dungeon_grade(node: &Node, game_data: &GameData, card: &str) -> i64 {
    if node.kind == "boss" {
        return 1;
    }
    if let Some(grade) = node.grade {
        return grade;
    }
    match game_data.general_grade(card) {
        ..=1 => 2,
        2 => 3,
        _ => 4,
    }
}

/// `handler.x.h`: per dungeon general experience. The normal chapter formula
/// comes directly from the decompiled method and its three constant arrays.
pub fn general_exp(chapter: &Chapter, index: usize, node: &Node) -> i64 {
    let elite = chapter.id.starts_with("105");
    let chapter_num = if elite {
        chapter.id[3..].parse::<i64>().unwrap_or(1)
    } else {
        chapter.id.parse::<i64>().unwrap_or(501) - 500
    };
    let chapter_num = chapter_num.clamp(1, 54);
    if elite {
        const BASE: [i64; 13] = [
            126, 180, 225, 282, 323, 487, 653, 778, 952, 1027, 1114, 1222, 1383,
        ];
        const STEP: [i64; 13] = [11, 17, 22, 28, 31, 47, 63, 75, 91, 98, 107, 117, 132];
        let (base, step) = if chapter_num <= 13 {
            (
                BASE[(chapter_num - 1) as usize],
                STEP[(chapter_num - 1) as usize],
            )
        } else if chapter_num <= 23 {
            let t = (chapter_num - 13) as f64 / 11.0;
            (
                (1383.0 * 22.86840202458424_f64.powf(t)).round() as i64,
                (132.0 * 25.492424242424242_f64.powf(t)).round() as i64,
            )
        } else if chapter_num <= 37 {
            let t = chapter_num - 24;
            (
                ((31627 * (13 - t) + 51972 * t + 6) / 13),
                ((3365 * (13 - t) + 5471 * t + 6) / 13),
            )
        } else {
            let factor = 1.25_f64.powi((chapter_num - 37) as i32);
            (
                (51972.0 * factor).round() as i64,
                (5471.0 * factor).round() as i64,
            )
        };
        let regular_count = if chapter_num <= 4 {
            4
        } else if chapter_num <= 14 {
            5
        } else if chapter_num <= 23 {
            6
        } else {
            7
        };
        return if index < regular_count {
            base + index as i64 * step
        } else {
            (base as f64 * if chapter_num <= 23 { 0.568 } else { 0.649 }).ceil() as i64
        };
    }
    const SCALE: [i64; 54] = [
        80, 115, 144, 181, 213, 321, 431, 513, 627, 677, 734, 806, 912, 1064, 1296, 1572, 1869,
        2366, 2884, 3464, 3936, 4754, 5694, 7154, 8861, 9590, 10828, 12178, 13116, 14942, 15969,
        17827, 20002, 21757, 24577, 27801, 30442, 34479, 39023, 42843, 48382, 54528, 59655, 66978,
        73676, 81043, 89148, 98062, 107869, 113262, 118925, 124871, 131115, 137671,
    ];
    let base = if chapter_num <= 24 {
        1598.51 * 1.14_f64.powi((chapter_num - 20) as i32)
    } else if chapter_num <= 39 {
        1598.51 * 1.205_f64.powi((chapter_num - 20) as i32)
    } else {
        1598.51 * 1.205_f64.powi(19) * 1.15_f64.powi((chapter_num - 39) as i32)
    };
    let boss_tier = if node.kind == "boss" && index + 1 == chapter.nodes.len() {
        if chapter_num <= 24 { 6 } else { 7 }
    } else if node.kind == "boss" {
        chapter.nodes[..=index]
            .iter()
            .filter(|entry| entry.kind == "boss")
            .count()
    } else {
        0
    };
    let factors = [1.342, 1.476, 1.61, 1.744, 1.878, 2.012, 2.146];
    let point = if boss_tier > 0 {
        base * factors[boss_tier.min(if chapter_num <= 24 { 6 } else { 7 }) - 1]
    } else {
        base + index as f64
    };
    let denominator = (base * if chapter_num <= 24 { 2.012 } else { 2.146 })
        .round()
        .max(1.0);
    let numerator = point.round() as i64 * SCALE[(chapter_num - 1) as usize];
    (numerator + denominator as i64 / 2) / denominator as i64
}

/// Client grid has four rows per column; `w1.x0` walks the path before each node.
pub fn path_layout(start: &[i64], path: &str, node_count: usize) -> Vec<(i64, Vec<String>)> {
    let mut column = start[0];
    let mut row = start[1];
    let steps: Vec<char> = path.chars().collect();
    let mut result = Vec::with_capacity(node_count);
    for index in 0..node_count {
        let mut directions = Vec::new();
        if let Some(previous) = index.checked_sub(1).and_then(|i| steps.get(i)) {
            match previous {
                'U' => directions.push("1".to_string()),
                'L' => directions.push("3".to_string()),
                _ => {}
            }
        }
        if let Some(next) = steps.get(index) {
            match next {
                'D' => directions.push("2".to_string()),
                'R' => directions.push("4".to_string()),
                _ => {}
            }
        }
        result.push(((column - 1) * 4 + row, directions));
        if let Some(step) = steps.get(index) {
            match step {
                'U' => row -= 1,
                'D' => row += 1,
                'L' => column -= 1,
                'R' => column += 1,
                _ => {}
            }
        }
    }
    result
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn every_chapter_and_reward_box_comes_from_extracted_layout() {
        let data = GameData::load(&crate::gamedata::default_dir()).unwrap();
        let chapters = data
            .normal_chapters()
            .into_iter()
            .chain(data.elite_chapters());
        let mut chapter_count = 0;
        let mut box_count = 0;
        for chapter in chapters {
            chapter_count += 1;
            let map = build(&data, &Clears::new(), Some(&client_map_id(chapter)), 1);
            let nodes = map["chapter_details"][0]["dungeon_info"]
                .as_array()
                .unwrap();
            assert_eq!(
                nodes.len(),
                chapter.nodes.len() + chapter.rewards.len() + chapter.hidden_rewards.len(),
                "{}",
                chapter.id
            );
            for box_node in nodes.iter().filter(|node| node["type"] == "box") {
                box_count += 1;
                assert!(
                    data.has_item(box_node["item_id"].as_str().unwrap()),
                    "{}",
                    box_node
                );
            }
        }
        assert_eq!(chapter_count, 108);
        assert_eq!(box_count, 267);
    }

    #[test]
    fn first_chapter_matches_offline_grid_and_box() {
        let data = GameData::load(&crate::gamedata::default_dir()).unwrap();
        let map = build(&data, &Clears::new(), None, 1);
        assert_eq!(map["chapter_list"].as_array().unwrap().len(), 54);
        let nodes = map["chapter_details"][0]["dungeon_info"]
            .as_array()
            .unwrap();
        assert_eq!(
            nodes
                .iter()
                .filter(|node| node["type"] == "dungeon")
                .map(|node| node["dungeon_position"].as_i64().unwrap())
                .collect::<Vec<_>>(),
            vec![2, 6, 10, 14, 15, 19]
        );
        let chest = nodes.iter().find(|node| node["type"] == "box").unwrap();
        assert_eq!(chest["box_id"], "501007");
        assert_eq!(chest["position"], 18);
        assert_eq!(chest["open_need_star"], 18);
        assert_eq!(chest["direction"], json!(["1"]));
        let third = nodes
            .iter()
            .find(|node| node["dungeon_id"] == "501003")
            .unwrap();
        assert_eq!(third["dungeon_card"], "143016");
    }

    #[test]
    fn all_reward_boxes_have_the_road_on_the_side_that_draws_it() {
        let data = GameData::load(&crate::gamedata::default_dir()).unwrap();
        for chapter in data
            .normal_chapters()
            .into_iter()
            .chain(data.elite_chapters())
        {
            let map = build(&data, &Clears::new(), Some(&client_map_id(chapter)), 1);
            let nodes = map["chapter_details"][0]["dungeon_info"]
                .as_array()
                .unwrap();
            let boxes: Vec<&Value> = nodes.iter().filter(|node| node["type"] == "box").collect();
            for (index, reward) in chapter
                .rewards
                .iter()
                .chain(&chapter.hidden_rewards)
                .enumerate()
            {
                let (_, direction) = parse_reward(reward).unwrap();
                let box_node = boxes
                    .iter()
                    .find(|node| {
                        node["box_id"]
                            == format!("{}{:03}", chapter.id, chapter.nodes.len() + index + 1)
                    })
                    .unwrap();
                if matches!(direction, 'U' | 'L') {
                    assert_eq!(
                        box_node["direction"],
                        json!([if direction == 'U' { "1" } else { "3" }]),
                        "{} {reward}",
                        chapter.id
                    );
                } else {
                    assert_eq!(box_node["direction"], json!([]), "{} {reward}", chapter.id);
                }
            }
        }
    }
}
