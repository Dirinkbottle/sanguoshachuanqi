//! 玩家实体状态：武将、道具、装备、编队和关卡进度。
//!
//! 客户端从 cmn 重建它的模型，所以这里存的是服务端权威状态，每个读函数都直接
//! 返回可以放进 cmn 的 JSON 片段。实体主键按玩家独立分配，取值刻意避开随包配置
//! 的六位数字 ID，避免两者被混淆。

use rusqlite::{Connection, OptionalExtension, params};
use serde_json::{Value, json};

/// First entity key handed out to a player.
///
/// Player entity keys and static configuration ids share the same string space
/// in the client, so reconstructions start well above the six digit ids used by
/// the shipped plan tables. Nothing but uniqueness is required: the recovered
/// client treats `pk_id` as opaque and only ever compares it or looks it up.
const FIRST_PK: i64 = 900_000_000;

/// A complete per-player game state snapshot, already shaped as cmn payload.
pub struct Snapshot {
    pub generals: Vec<Value>,
    pub items: Vec<Value>,
    pub equipment: Vec<Value>,
    pub team: Vec<Value>,
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

fn general_entry(pk_id: &str, general_id: &str, level: i64, evolution: i64) -> Value {
    json!({
        "pk_id": pk_id,
        "id": general_id,
        "general_level": level,
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
        "position": 0
    })
}

fn item_entry(pk_id: &str, item_id: &str, num: i64) -> Value {
    json!({"pk_id": pk_id, "id": item_id, "num": num, "effect_time": 0, "tag_id": 0})
}

fn equipment_entry(pk_id: &str, equipment_id: &str, general_pk_id: &str, refine_level: i64) -> Value {
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

pub fn general_pk_for_config(
    db: &Connection,
    principal: &str,
    server_id: &str,
    general_id: &str,
) -> Option<String> {
    db.query_row(
        "SELECT pk_id FROM player_generals
         WHERE principal = ?1 AND server_id = ?2 AND general_id = ?3",
        params![principal, server_id, general_id],
        |row| row.get(0),
    )
    .optional()
    .ok()
    .flatten()
}

/// Grant a general by static configuration id, or return the existing entity.
///
/// Idempotent on purpose: a client retry of the same request, or a second call
/// after a reconnect, must not create a duplicate general. The returned flag
/// says whether the entity was created, which is what a cmn delta has to know.
pub fn grant_general(
    db: &Connection,
    principal: &str,
    server_id: &str,
    general_id: &str,
) -> rusqlite::Result<(Value, bool)> {
    if let Some(pk_id) = general_pk_for_config(db, principal, server_id, general_id) {
        let entry = db.query_row(
            "SELECT general_level, evolution_image_status FROM player_generals
             WHERE principal = ?1 AND server_id = ?2 AND pk_id = ?3",
            params![principal, server_id, pk_id],
            |row| Ok((row.get::<_, i64>(0)?, row.get::<_, i64>(1)?)),
        )?;
        return Ok((general_entry(&pk_id, general_id, entry.0, entry.1), false));
    }
    let pk_id = allocate_pk(db, principal, server_id)?.to_string();
    db.execute(
        "INSERT INTO player_generals(principal, server_id, pk_id, general_id)
         VALUES (?1, ?2, ?3, ?4)",
        params![principal, server_id, pk_id, general_id],
    )?;
    Ok((general_entry(&pk_id, general_id, 1, 0), true))
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
    let existing: Option<String> = db
        .query_row(
            "SELECT pk_id FROM player_equipment
             WHERE principal = ?1 AND server_id = ?2 AND equipment_id = ?3",
            params![principal, server_id, equipment_id],
            |row| row.get(0),
        )
        .optional()?;
    if let Some(pk_id) = existing {
        let general_pk_id: String = db.query_row(
            "SELECT general_pk_id FROM player_equipment
             WHERE principal = ?1 AND server_id = ?2 AND pk_id = ?3",
            params![principal, server_id, pk_id],
            |row| row.get(0),
        )?;
        return Ok((
            equipment_entry(&pk_id, equipment_id, &general_pk_id, 1),
            false,
        ));
    }
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

pub fn dungeon_clears(
    db: &Connection,
    principal: &str,
    server_id: &str,
    dungeon_id: &str,
) -> i64 {
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
pub fn snapshot(db: &Connection, principal: &str, server_id: &str) -> rusqlite::Result<Snapshot> {
    let generals = collect(
        db,
        "SELECT pk_id, general_id, general_level, evolution_image_status FROM player_generals
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

    Ok(Snapshot {
        generals,
        items,
        equipment,
        team,
    })
}
