//! 玩家实体状态：武将、道具、装备、编队和关卡进度。
//!
//! 客户端从 cmn 重建它的模型，所以这里存的是服务端权威状态，每个读函数都直接
//! 返回可以放进 cmn 的 JSON 片段。实体主键按玩家独立分配，取值刻意避开随包配置
//! 的六位数字 ID，避免两者被混淆。

use crate::config::Tutorial;
use rusqlite::{Connection, OptionalExtension, params};
use serde_json::{Value, json};

/// First entity key handed out to a player.
///
/// Player entity keys and static configuration ids share the same string space
/// in the client, so reconstructions start well above the six digit ids used by
/// the shipped plan tables. Nothing but uniqueness is required: the recovered
/// client treats `pk_id` as opaque and only ever compares it or looks it up.
const FIRST_PK: i64 = 900_000_000;
/// The recovered gold wine has a 30-minute free-draw cooldown.
const GOLD_WINE_COOLDOWN_SECONDS: i64 = 1800;

/// A complete per-player game state snapshot, already shaped as cmn payload.
pub struct Snapshot {
    pub generals: Vec<Value>,
    pub items: Vec<Value>,
    pub equipment: Vec<Value>,
    pub team: Vec<Value>,
    pub user_info: Value,
    pub wine_gold_free_times: i64,
    pub wine_gold_free_end_time: i64,
    pub wine_first_time_consume_gold: i64,
}

/// Durable account-by-zone player fields used by login and the tutorial UI.
#[derive(Clone)]
pub struct Profile {
    pub nickname: String,
    pub level: i64,
    pub experience: i64,
    pub coin: i64,
    pub gold: i64,
    pub power: i64,
    pub energy: i64,
}

/// Create a first-login profile or read the existing account-by-zone record.
fn read_profile(
    db: &Connection,
    principal: &str,
    server_id: &str,
    tutorial: &Tutorial,
) -> rusqlite::Result<Profile> {
    db.execute(
        "INSERT OR IGNORE INTO player_profiles(
             principal, server_id, user_coin, user_gold, user_power, user_energy
         ) VALUES (?1, ?2, ?3, ?4, ?5, ?6)",
        params![
            principal,
            server_id,
            tutorial.starting_coin,
            tutorial.starting_gold,
            tutorial.starting_power,
            tutorial.starting_energy
        ],
    )?;
    db.query_row(
        "SELECT nickname, user_level, user_experience, user_coin, user_gold, user_power, user_energy
         FROM player_profiles WHERE principal = ?1 AND server_id = ?2",
        params![principal, server_id],
        |row| {
            Ok(Profile {
                nickname: row.get(0)?,
                level: row.get(1)?,
                experience: row.get(2)?,
                coin: row.get(3)?,
                gold: row.get(4)?,
                power: row.get(5)?,
                energy: row.get(6)?,
            })
        },
    )
}

/// Persist a nickname chosen in `Views/ChangeName.js` and return the updated user.
pub fn set_nickname(
    db: &Connection,
    principal: &str,
    server_id: &str,
    nickname: &str,
    tutorial: &Tutorial,
) -> rusqlite::Result<Value> {
    read_profile(db, principal, server_id, tutorial)?;
    db.execute(
        "UPDATE player_profiles SET nickname = ?1 WHERE principal = ?2 AND server_id = ?3",
        params![nickname, principal, server_id],
    )?;
    profile_info(db, principal, server_id, tutorial)
}

/// Build the full client Player model used by login, rename, and economy deltas.
pub fn profile_info(
    db: &Connection,
    principal: &str,
    server_id: &str,
    tutorial: &Tutorial,
) -> rusqlite::Result<Value> {
    let profile = read_profile(db, principal, server_id, tutorial)?;
    let account_uid = principal
        .strip_prefix("account:")
        .or_else(|| principal.strip_prefix("guest:"))
        .unwrap_or_default();
    let general_count: i64 = db.query_row(
        "SELECT COUNT(*) FROM player_generals WHERE principal = ?1 AND server_id = ?2",
        params![principal, server_id],
        |row| row.get(0),
    )?;
    // first_choose_general / first_wine_general 存的是**武将的 pk_id**，不是序号也不是
    // 布尔值。客户端 Player.getFirstChooseGeneral() 拿它做
    //   Generals.isThisPkIdExists(pk_id) -> Generals.getByPkId(pk_id)
    // 查不到就返回 null，于是 Tools/String.js 里 $GirlName 的整段替换被跳过
    // （界面上直接显示字面量 "$GirlName"），选将的立绘也会取错。
    // 这两个字段原先被硬编码成 "1"，而真实 pk_id 形如 "900000002"，永远查不到。
    let first_general_pk_id: Option<String> = db
        .query_row(
            "SELECT pk_id FROM player_generals WHERE principal = ?1 AND server_id = ?2
             ORDER BY rowid LIMIT 1",
            params![principal, server_id],
            |row| row.get(0),
        )
        .optional()?;
    let second_general_pk_id: Option<String> = db
        .query_row(
            "SELECT pk_id FROM player_generals WHERE principal = ?1 AND server_id = ?2
             ORDER BY rowid LIMIT 1 OFFSET 1",
            params![principal, server_id],
            |row| row.get(0),
        )
        .optional()?;
    let freshman_step: Option<String> = db
        .query_row(
            "SELECT freshman_step FROM tutorial_progress WHERE principal = ?1 AND server_id = ?2",
            params![principal, server_id],
            |row| row.get(0),
        )
        .optional()?;
    Ok(json!({
        "user_id": format!("{account_uid}-{server_id}"),
        "account_uid": account_uid,
        "user_nickname": profile.nickname,
        "user_level": profile.level,
        "user_charge_count": 0,
        "user_vip_level": 0,
        "user_experience": profile.experience,
        "user_coin": profile.coin,
        "user_gold": profile.gold,
        "user_sign": "",
        "item_count": {},
        "user_power": profile.power,
        "user_power_date": 0,
        "user_energy": profile.energy,
        "user_energy_date": 0,
        "gold_soul": 0,
        "sliver_soul": 0,
        "user_last_login_time": 0,
        "user_ability": 0,
        "user_map_step": crate::protocol::NEWBIE_MAP_ID,
        "user_position_step": tutorial.first_dungeon_id(),
        "user_elite_map_step": "",
        "user_elite_position_step": "",
        "dungeon_cold_time": 0,
        "cd_item_price": 0,
        "base_cold_time": 0,
        "to_danger_time": 0,
        "current_charge_gold": 0,
        "count_charge_gold": 0,
        "freshman_step": freshman_step.unwrap_or_else(|| "0".to_string()),
        "first_choose_general": first_general_pk_id.unwrap_or_default(),
        // 保留原有的"至少两个武将才算有酒将"判据，但换成真实 pk_id。
        "first_wine_general": if general_count > 1 {
            second_general_pk_id.unwrap_or_default()
        } else {
            String::new()
        },
        "triple_speed": false,
        "triple_speed_vip_level": 0,
        "ladder_rank_salary": 0,
        "user_honor": 0,
        "ladder_challenging_num": 0,
        "union_id": 0,
        "union_name": "",
        "user_role": 0,
        "user_donate": 0,
        "donate_state": false,
        "donate_num": 0,
        "union_war_sign_up": false
    }))
}

#[derive(Debug)]
pub enum ResourceChangeError {
    Insufficient,
    Database,
    InvalidResource,
}

/// Change a wallet/profile value and write an audit row in the same transaction.
pub fn change_resource(
    db: &Connection,
    principal: &str,
    server_id: &str,
    resource: &str,
    delta: i64,
    source: &str,
    tutorial: &Tutorial,
) -> Result<Value, ResourceChangeError> {
    let column = match resource {
        "user_coin" => "user_coin",
        "user_gold" => "user_gold",
        "user_power" => "user_power",
        "user_energy" => "user_energy",
        "user_experience" => "user_experience",
        _ => return Err(ResourceChangeError::InvalidResource),
    };
    read_profile(db, principal, server_id, tutorial).map_err(|_| ResourceChangeError::Database)?;
    if delta != 0 {
        let changed = db
            .execute(
                &format!(
                    "UPDATE player_profiles SET {column} = {column} + ?1
                     WHERE principal = ?2 AND server_id = ?3 AND {column} + ?1 >= 0"
                ),
                params![delta, principal, server_id],
            )
            .map_err(|_| ResourceChangeError::Database)?;
        if changed != 1 {
            return Err(ResourceChangeError::Insufficient);
        }
        db.execute(
            "INSERT INTO resource_ledger(principal, server_id, resource, delta, source, created_at)
             VALUES (?1, ?2, ?3, ?4, ?5, ?6)",
            params![
                principal,
                server_id,
                resource,
                delta,
                source,
                crate::db::now()
            ],
        )
        .map_err(|_| ResourceChangeError::Database)?;
    }
    profile_info(db, principal, server_id, tutorial).map_err(|_| ResourceChangeError::Database)
}

/// Allocate the next entity key for one player in one zone.
///
/// Entity keys are per player, not global, so the same number can appear in two
/// accounts without any interaction between them. The counter row is created on
/// first use and only ever moves forward.
fn allocate_pk(db: &Connection, principal: &str, server_id: &str) -> rusqlite::Result<i64> {
    db.execute(
        "INSERT INTO player_counters(principal, server_id, next_pk) VALUES (?1, ?2, ?3)
         ON CONFLICT(principal, server_id) DO UPDATE SET next_pk = next_pk + 1",
        params![principal, server_id, FIRST_PK],
    )?;
    db.query_row(
        "SELECT next_pk FROM player_counters WHERE principal = ?1 AND server_id = ?2",
        params![principal, server_id],
        |row| row.get(0),
    )
}

fn general_entry(
    pk_id: &str,
    general_id: &str,
    level: i64,
    experience: i64,
    evolution: i64,
) -> Value {
    json!({
        "pk_id": pk_id,
        "id": general_id,
        "general_level": level,
        "general_experience": experience,
        "evolution_image_status": evolution,
        // The recovered General model reads these through parseIntSafe, so an
        // omitted field is equivalent to zero. They are sent explicitly so the
        // wire shape stays stable for a reader comparing responses.
        "ganoderma_num": 0,
        "talent_point": 0,
        "attr_hp": 0,
        "attr_attack": 0,
        "attr_defense": 0,
        "attr_wisdom": 0,
        "base_hp": 0,
        "base_attack": 0,
        "base_defense": 0,
        "base_wisdom": 0,
        "ls_type": 0,
        "ls_value": 0,
        "insight_level": 0,
        "major_pk_id": "",
        "position": 0,
        // 必须下发：General.loadJson 无条件执行
        //   this.culture_info = xs.Models.CultureMedicine.create(json.culture_info);
        // 而 CultureMedicine.init 只在 jsonObj === "" 时提前返回——传 undefined
        // 会在读 jsonObj.item_name 时抛 TypeError，整个响应处理中断，
        // 客户端表现为"选将无反应"（日志里是 CultureMedicine.js 的报错行）。
        // 空对象两个字段都是 undefined，走 isEmpty = true 分支，安全。
        "culture_info": {},
        // loadJson 直接赋值、不过 parseIntSafe，缺了会是 undefined。
        "general_naturalskill_id": ""
    })
}

fn item_entry(pk_id: &str, item_id: &str, num: i64) -> Value {
    json!({"pk_id": pk_id, "id": item_id, "num": num, "effect_time": 0, "tag_id": 0})
}

fn equipment_entry(
    pk_id: &str,
    equipment_id: &str,
    general_pk_id: &str,
    refine_level: i64,
) -> Value {
    json!({
        "pk_id": pk_id,
        "id": equipment_id,
        "general_pk_id": general_pk_id,
        "refine_level": refine_level,
        "refine_exp": 0,
        "bore_list": []
    })
}

pub fn owns_general(db: &Connection, principal: &str, server_id: &str, pk_id: &str) -> bool {
    db.query_row(
        "SELECT 1 FROM player_generals WHERE principal = ?1 AND server_id = ?2 AND pk_id = ?3",
        params![principal, server_id, pk_id],
        |_| Ok(()),
    )
    .optional()
    .ok()
    .flatten()
    .is_some()
}

/// Grant one general instance by static configuration id.
///
/// Duplicate instances are valid player entities (for example, a repeated
/// recruit can award the same template). Network retries are handled by the
/// enclosing request transaction, which replays its cached response.
pub fn grant_general(
    db: &Connection,
    principal: &str,
    server_id: &str,
    general_id: &str,
) -> rusqlite::Result<(Value, bool)> {
    let pk_id = allocate_pk(db, principal, server_id)?.to_string();
    db.execute(
        "INSERT INTO player_generals(principal, server_id, pk_id, general_id)
         VALUES (?1, ?2, ?3, ?4)",
        params![principal, server_id, pk_id, general_id],
    )?;
    Ok((general_entry(&pk_id, general_id, 1, 0, 0), true))
}

/// Add the local dungeon reward to every general in team 1 and return the
/// authoritative map delta plus the fight-result display rows.
pub fn award_team_general_experience(
    db: &Connection,
    principal: &str,
    server_id: &str,
    amount: i64,
) -> rusqlite::Result<(Vec<Value>, Vec<Value>)> {
    let mut statement = db.prepare(
        "SELECT g.pk_id, g.general_id, g.general_level, g.general_experience,
                g.evolution_image_status
         FROM player_team t
         JOIN player_generals g
           ON g.principal = t.principal AND g.server_id = t.server_id
          AND g.pk_id = t.general_pk_id
         WHERE t.principal = ?1 AND t.server_id = ?2 AND t.team_id = '1'
         ORDER BY CAST(t.position AS INTEGER), t.position",
    )?;
    let rows = statement.query_map(params![principal, server_id], |row| {
        Ok((
            row.get::<_, String>(0)?,
            row.get::<_, String>(1)?,
            row.get::<_, i64>(2)?,
            row.get::<_, i64>(3)?,
            row.get::<_, i64>(4)?,
        ))
    })?;
    let members = rows.collect::<rusqlite::Result<Vec<_>>>()?;
    drop(statement);

    let mut updates = Vec::with_capacity(members.len());
    let mut shown = Vec::with_capacity(members.len());
    for (pk_id, general_id, level, experience, evolution) in members {
        let new_experience = experience + amount;
        db.execute(
            "UPDATE player_generals SET general_experience = ?1
             WHERE principal = ?2 AND server_id = ?3 AND pk_id = ?4",
            params![new_experience, principal, server_id, pk_id],
        )?;
        updates.push(general_entry(
            &pk_id,
            &general_id,
            level,
            new_experience,
            evolution,
        ));
        shown.push(json!({
            "user_general_id": pk_id,
            "pk_id": pk_id,
            "exp": amount,
            "level_before": level,
            "level_now": level
        }));
    }
    Ok((updates, shown))
}

/// Add items to the player's stack for one configuration id.
pub fn grant_item(
    db: &Connection,
    principal: &str,
    server_id: &str,
    item_id: &str,
    num: i64,
) -> rusqlite::Result<(Value, bool)> {
    let existing: Option<(String, i64)> = db
        .query_row(
            "SELECT pk_id, num FROM player_items
             WHERE principal = ?1 AND server_id = ?2 AND item_id = ?3",
            params![principal, server_id, item_id],
            |row| Ok((row.get(0)?, row.get(1)?)),
        )
        .optional()?;
    match existing {
        Some((pk_id, held)) => {
            db.execute(
                "UPDATE player_items SET num = num + ?1
                 WHERE principal = ?2 AND server_id = ?3 AND item_id = ?4",
                params![num, principal, server_id, item_id],
            )?;
            Ok((item_entry(&pk_id, item_id, held + num), false))
        }
        None => {
            let pk_id = allocate_pk(db, principal, server_id)?.to_string();
            db.execute(
                "INSERT INTO player_items(principal, server_id, pk_id, item_id, num)
                 VALUES (?1, ?2, ?3, ?4, ?5)",
                params![principal, server_id, pk_id, item_id, num],
            )?;
            Ok((item_entry(&pk_id, item_id, num), true))
        }
    }
}

/// Take items out of a stack. Returns the updated entry, or None when the stack
/// is exhausted and the row was removed (which the client needs as a del_list).
pub fn consume_item(
    db: &Connection,
    principal: &str,
    server_id: &str,
    item_id: &str,
    num: i64,
) -> rusqlite::Result<Option<Value>> {
    let existing: Option<(String, i64)> = db
        .query_row(
            "SELECT pk_id, num FROM player_items
             WHERE principal = ?1 AND server_id = ?2 AND item_id = ?3",
            params![principal, server_id, item_id],
            |row| Ok((row.get(0)?, row.get(1)?)),
        )
        .optional()?;
    let Some((pk_id, held)) = existing else {
        return Ok(None);
    };
    let left = held - num;
    if left > 0 {
        db.execute(
            "UPDATE player_items SET num = ?1
             WHERE principal = ?2 AND server_id = ?3 AND item_id = ?4",
            params![left, principal, server_id, item_id],
        )?;
        Ok(Some(item_entry(&pk_id, item_id, left)))
    } else {
        db.execute(
            "DELETE FROM player_items WHERE principal = ?1 AND server_id = ?2 AND item_id = ?3",
            params![principal, server_id, item_id],
        )?;
        Ok(None)
    }
}

pub fn item_config_for_pk(
    db: &Connection,
    principal: &str,
    server_id: &str,
    pk_id: &str,
) -> Option<(String, i64)> {
    db.query_row(
        "SELECT item_id, num FROM player_items
         WHERE principal = ?1 AND server_id = ?2 AND pk_id = ?3",
        params![principal, server_id, pk_id],
        |row| Ok((row.get(0)?, row.get(1)?)),
    )
    .optional()
    .ok()
    .flatten()
}

pub fn grant_equipment(
    db: &Connection,
    principal: &str,
    server_id: &str,
    equipment_id: &str,
) -> rusqlite::Result<(Value, bool)> {
    let pk_id = allocate_pk(db, principal, server_id)?.to_string();
    db.execute(
        "INSERT INTO player_equipment(principal, server_id, pk_id, equipment_id)
         VALUES (?1, ?2, ?3, ?4)",
        params![principal, server_id, pk_id, equipment_id],
    )?;
    Ok((equipment_entry(&pk_id, equipment_id, "", 1), true))
}

/// Move an owned equipment onto an owned general.
///
/// Returns the updated equipment entry, or None when either side is not owned
/// by this player in this zone. Refusing silently is deliberate: the caller
/// turns it into a normal protocol error instead of writing a dangling owner.
pub fn equip(
    db: &Connection,
    principal: &str,
    server_id: &str,
    general_pk_id: &str,
    equipment_pk_id: &str,
) -> rusqlite::Result<Option<Value>> {
    if !owns_general(db, principal, server_id, general_pk_id) {
        return Ok(None);
    }
    let existing: Option<(String, String)> = db
        .query_row(
            "SELECT equipment_id, general_pk_id FROM player_equipment
             WHERE principal = ?1 AND server_id = ?2 AND pk_id = ?3",
            params![principal, server_id, equipment_pk_id],
            |row| Ok((row.get(0)?, row.get(1)?)),
        )
        .optional()?;
    let Some((equipment_id, _)) = existing else {
        return Ok(None);
    };
    db.execute(
        "UPDATE player_equipment SET general_pk_id = ?1
         WHERE principal = ?2 AND server_id = ?3 AND pk_id = ?4",
        params![general_pk_id, principal, server_id, equipment_pk_id],
    )?;
    Ok(Some(equipment_entry(
        equipment_pk_id,
        &equipment_id,
        general_pk_id,
        1,
    )))
}

pub fn set_team_slot(
    db: &Connection,
    principal: &str,
    server_id: &str,
    team_id: &str,
    position: &str,
    general_pk_id: &str,
) -> rusqlite::Result<()> {
    db.execute(
        "INSERT INTO player_team(principal, server_id, team_id, position, general_pk_id)
         VALUES (?1, ?2, ?3, ?4, ?5)
         ON CONFLICT(principal, server_id, team_id, position)
         DO UPDATE SET general_pk_id = excluded.general_pk_id",
        params![principal, server_id, team_id, position, general_pk_id],
    )?;
    Ok(())
}

pub fn dungeon_clears(db: &Connection, principal: &str, server_id: &str, dungeon_id: &str) -> i64 {
    db.query_row(
        "SELECT clears FROM player_dungeons
         WHERE principal = ?1 AND server_id = ?2 AND dungeon_id = ?3",
        params![principal, server_id, dungeon_id],
        |row| row.get(0),
    )
    .optional()
    .ok()
    .flatten()
    .unwrap_or(0)
}

/// One query supplies the complete chapter map, including reward box stars.
pub fn all_dungeon_clears(
    db: &Connection,
    principal: &str,
    server_id: &str,
) -> rusqlite::Result<std::collections::HashMap<String, i64>> {
    let mut statement = db.prepare(
        "SELECT dungeon_id, clears FROM player_dungeons
         WHERE principal = ?1 AND server_id = ?2",
    )?;
    let rows = statement.query_map(params![principal, server_id], |row| {
        Ok((row.get::<_, String>(0)?, row.get::<_, i64>(1)?))
    })?;
    rows.collect()
}

/// Record one clear and report whether this was the first one.
pub fn record_dungeon_clear(
    db: &Connection,
    principal: &str,
    server_id: &str,
    dungeon_id: &str,
) -> rusqlite::Result<bool> {
    let first = dungeon_clears(db, principal, server_id, dungeon_id) == 0;
    db.execute(
        "INSERT INTO player_dungeons(principal, server_id, dungeon_id, clears)
         VALUES (?1, ?2, ?3, 1)
         ON CONFLICT(principal, server_id, dungeon_id) DO UPDATE SET clears = clears + 1",
        params![principal, server_id, dungeon_id],
    )?;
    Ok(first)
}

/// Persist the exact authoritative result and configured local rule version.
pub fn record_fight(
    db: &Connection,
    principal: &str,
    server_id: &str,
    dungeon_id: &str,
    result: &Value,
    rule_version: &str,
) -> rusqlite::Result<()> {
    let calculate = &result["fight_calculate_info"];
    db.execute(
        "INSERT INTO fight_records(
             principal, server_id, dungeon_id, success, star_level, rounds,
             rule_version, result_json, created_at
         ) VALUES (?1, ?2, ?3, ?4, ?5, ?6, ?7, ?8, ?9)",
        params![
            principal,
            server_id,
            dungeon_id,
            result["success"].as_bool().unwrap_or(false),
            calculate["star_level"].as_i64().unwrap_or(0),
            calculate["rounds"].as_i64().unwrap_or(0),
            rule_version,
            result.to_string(),
            crate::db::now()
        ],
    )?;
    Ok(())
}

/// Current gold-wine allowance, remaining cooldown seconds, and first-draw flag.
pub fn wine_gold_state(
    db: &Connection,
    principal: &str,
    server_id: &str,
    configured_free_draws: i64,
) -> rusqlite::Result<(i64, i64, i64)> {
    db.execute(
        "INSERT OR IGNORE INTO wine_state(principal, server_id) VALUES (?1, ?2)",
        params![principal, server_id],
    )?;
    let (mut used, mut cooldown_until, first_consumed): (i64, i64, i64) = db.query_row(
        "SELECT gold_free_used, gold_free_cooldown_until, gold_first_consumed
         FROM wine_state WHERE principal = ?1 AND server_id = ?2",
        params![principal, server_id],
        |row| Ok((row.get(0)?, row.get(1)?, row.get(2)?)),
    )?;
    let now = crate::db::now();
    if used > 0 && cooldown_until > 0 && cooldown_until <= now {
        db.execute(
            "UPDATE wine_state SET gold_free_used = 0, gold_free_cooldown_until = 0
             WHERE principal = ?1 AND server_id = ?2",
            params![principal, server_id],
        )?;
        used = 0;
        cooldown_until = 0;
    }
    let remaining = (configured_free_draws - used).max(0);
    let cooldown_left = if remaining == 0 && cooldown_until > now {
        cooldown_until - now
    } else {
        0
    };
    Ok((remaining, cooldown_left, first_consumed))
}

/// Consume an available free gold recruit and start its cooldown. The caller
/// owns the surrounding write transaction, so the timer and draw commit together.
pub fn consume_free_gold_wine(
    db: &Connection,
    principal: &str,
    server_id: &str,
    configured_free_draws: i64,
) -> rusqlite::Result<bool> {
    db.execute(
        "INSERT OR IGNORE INTO wine_state(principal, server_id) VALUES (?1, ?2)",
        params![principal, server_id],
    )?;
    let _ = wine_gold_state(db, principal, server_id, configured_free_draws)?;
    let now = crate::db::now();
    Ok(db.execute(
        "UPDATE wine_state SET gold_free_used = gold_free_used + 1,
             gold_free_cooldown_until = ?4 + ?5, gold_first_consumed = 1
         WHERE principal = ?1 AND server_id = ?2 AND gold_free_used < ?3",
        params![
            principal,
            server_id,
            configured_free_draws,
            now,
            GOLD_WINE_COOLDOWN_SECONDS
        ],
    )? == 1)
}

/// Record the first gold draw even when the player pays instead of using a free
/// allowance. The surrounding request transaction owns this write.
pub fn mark_gold_first_consumed(
    db: &Connection,
    principal: &str,
    server_id: &str,
) -> rusqlite::Result<()> {
    db.execute(
        "INSERT OR IGNORE INTO wine_state(principal, server_id) VALUES (?1, ?2)",
        params![principal, server_id],
    )?;
    db.execute(
        "UPDATE wine_state SET gold_first_consumed = 1
         WHERE principal = ?1 AND server_id = ?2",
        params![principal, server_id],
    )?;
    Ok(())
}

/// Read a list of rows as JSON scalars, preserving column order.
fn collect(
    db: &Connection,
    sql: &str,
    principal: &str,
    server_id: &str,
) -> rusqlite::Result<Vec<Vec<Value>>> {
    let mut statement = db.prepare(sql)?;
    let rows = statement.query_map(params![principal, server_id], |row| {
        Ok((0..row.as_ref().column_count())
            .map(|index| match row.get_ref(index) {
                Ok(rusqlite::types::ValueRef::Integer(value)) => Value::from(value),
                Ok(rusqlite::types::ValueRef::Real(value)) => Value::from(value),
                Ok(rusqlite::types::ValueRef::Text(text)) => {
                    Value::from(String::from_utf8_lossy(text).into_owned())
                }
                _ => Value::Null,
            })
            .collect::<Vec<Value>>())
    })?;
    Ok(rows.filter_map(Result::ok).collect())
}

/// Full state snapshot used by `user.login`.
///
/// The client rebuilds its models from cmn, so login sends the same shapes that
/// the per-action deltas send, just with every entity included.
pub fn snapshot(
    db: &Connection,
    principal: &str,
    server_id: &str,
    tutorial: &Tutorial,
) -> rusqlite::Result<Snapshot> {
    let generals = collect(
        db,
        "SELECT pk_id, general_id, general_level, general_experience, evolution_image_status FROM player_generals
         WHERE principal = ?1 AND server_id = ?2 ORDER BY pk_id",
        principal,
        server_id,
    )?
    .into_iter()
    .map(|row| {
        general_entry(
            row[0].as_str().unwrap_or_default(),
            row[1].as_str().unwrap_or_default(),
            row[2].as_i64().unwrap_or(1),
            row[3].as_i64().unwrap_or(0),
            row[4].as_i64().unwrap_or(0),
        )
    })
    .collect();

    let items = collect(
        db,
        "SELECT pk_id, item_id, num FROM player_items
         WHERE principal = ?1 AND server_id = ?2 ORDER BY pk_id",
        principal,
        server_id,
    )?
    .into_iter()
    .map(|row| {
        item_entry(
            row[0].as_str().unwrap_or_default(),
            row[1].as_str().unwrap_or_default(),
            row[2].as_i64().unwrap_or(0),
        )
    })
    .collect();

    let equipment = collect(
        db,
        "SELECT pk_id, equipment_id, general_pk_id FROM player_equipment
         WHERE principal = ?1 AND server_id = ?2 ORDER BY pk_id",
        principal,
        server_id,
    )?
    .into_iter()
    .map(|row| {
        equipment_entry(
            row[0].as_str().unwrap_or_default(),
            row[1].as_str().unwrap_or_default(),
            row[2].as_str().unwrap_or_default(),
            1,
        )
    })
    .collect();

    let team = collect(
        db,
        "SELECT general_pk_id, position FROM player_team
         WHERE principal = ?1 AND server_id = ?2 ORDER BY position",
        principal,
        server_id,
    )?
    .into_iter()
    .map(|row| {
        json!({
            "pk_id": row[0].as_str().unwrap_or_default(),
            "position": row[1].as_str().unwrap_or_default()
        })
    })
    .collect();

    let user_info = profile_info(db, principal, server_id, tutorial)?;
    let (wine_gold_free_times, wine_gold_free_end_time, wine_first_time_consume_gold) =
        wine_gold_state(db, principal, server_id, tutorial.gold_free_draws)?;
    Ok(Snapshot {
        generals,
        items,
        equipment,
        team,
        user_info,
        wine_gold_free_times,
        wine_gold_free_end_time,
        wine_first_time_consume_gold,
    })
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn gold_wine_cooldown_expires_and_keeps_first_draw_marker() {
        let db = crate::db::open(std::path::Path::new(":memory:")).unwrap();
        let state = wine_gold_state(&db, "account:1", "1001", 1).unwrap();
        assert_eq!(state, (1, 0, 0));

        assert!(consume_free_gold_wine(&db, "account:1", "1001", 1).unwrap());
        let (free_times, cooldown, first_consumed) =
            wine_gold_state(&db, "account:1", "1001", 1).unwrap();
        assert_eq!(free_times, 0);
        assert!((1..=GOLD_WINE_COOLDOWN_SECONDS).contains(&cooldown));
        assert_eq!(first_consumed, 1);

        db.execute(
            "UPDATE wine_state SET gold_free_cooldown_until = ?3
             WHERE principal = ?1 AND server_id = ?2",
            params!["account:1", "1001", crate::db::now() - 1],
        )
        .unwrap();
        let state = wine_gold_state(&db, "account:1", "1001", 1).unwrap();
        assert_eq!(state, (1, 0, 1));
    }
}
