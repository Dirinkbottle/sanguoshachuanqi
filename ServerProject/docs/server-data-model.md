# 服务端数据模型

本页说明 `ServerProject/src/db.rs` 中当前 SQLite schema 与业务事务边界。它是本地重建服务的数据模型，不是原厂服务器数据库的复原。

## 身份与服务区隔离

所有玩家状态以 `(principal, server_id)` 为作用域。注册账号的主体形如 `account:<id>`；启用游客模式时为 `guest:<uid>`。同一个主体在不同服务区拥有独立资料、教程、武将、道具、装备、队伍和关卡状态。玩家实体 `pk_id` 由每主体、每区服的 `player_counters` 分配；静态配置 ID（如 `general_id`）只标识模板，因此同一模板可以产生多个玩家实体。

## 表

| 表 | 主键 / 关键索引 | 用途 |
|---|---|---|
| `accounts` | `id`；`username` 唯一 | 本地账号、密码哈希、创建时间及登录失败锁定计数。 |
| `sessions` | `token_hash`；`expires_at` 索引 | 账号会话；数据库只存令牌哈希，并引用 `accounts.id`。 |
| `schema_migrations` | `version` | 已应用迁移及应用时间。 |
| `tutorial_progress` | `(principal, server_id)`；按 `server_id` 索引 | 新手里程碑、单调排序值及更新时间。 |
| `player_counters` | `(principal, server_id)` | 发放唯一玩家实体 ID 的下一个计数值。 |
| `player_profiles` | `(principal, server_id)` | 昵称、玩家等级与经验、铜钱、金币、体力（`user_power`）和气力（`user_energy`）。 |
| `player_generals` | `(principal, server_id, pk_id)`；模板索引 | 武将模板 ID、等级、形象状态和经验。 |
| `player_items` | `(principal, server_id, item_id)` | 按静态道具模板堆叠的拥有数量，并保留玩家道具 ID。 |
| `player_equipment` | `(principal, server_id, pk_id)`；模板索引 | 装备实体及当前穿戴武将实体 ID。 |
| `player_team` | `(principal, server_id, team_id, position)` | 队伍位置到武将实体的映射。 |
| `player_dungeons` | `(principal, server_id, dungeon_id)` | 每关成功次数。 |
| `request_dedup` | `(principal, server_id, action, fingerprint)`；创建时间索引 | 成功响应 JSON 和时间，用于重试幂等。指纹由动作及规范化 JSON 计算。 |
| `resource_ledger` | `entry_id`；玩家和时间索引 | 铜钱、金币、体力、气力等资源变更流水，记录差额、来源与时间。 |
| `fight_records` | `fight_id`；玩家时间、玩家关卡索引 | 每场战斗的胜负、星级、回合数、本地规则版本与结算 JSON。 |
| `wine_state` | `(principal, server_id)` | 金酒免费次数、冷却截止秒数及首次抽取标志。 |

## 迁移

`db::open` 先确保基础账号和玩家实体表，再在事务中逐版应用迁移。重复打开数据库不会重复应用已记录的迁移。

| 版本 | 变更 |
|---|---|
| 1 | 删除旧的“每个静态模板只能拥有一件”唯一索引（保留实体行）；增加按模板查询索引、`player_profiles`、`request_dedup` 与 `resource_ledger`。 |
| 2 | 为武将增加经验字段；增加 `fight_records` 和玩家/关卡查询索引。 |
| 3 | 增加按主体和服务区隔离的 `wine_state`。 |
| 4 | 为玩家资料增加独立持久化的 `user_power`（体力），与已有 `user_energy`（气力）分开。若版本标记存在但列缺失，迁移会补列并保留现有资料。 |
| 5 | 为 `wine_state` 增加金酒冷却截止秒数和首次抽取标志。旧记录保留已用免费次数；历史冷却时间无法恢复。 |

当前 schema 版本是 5。遇到更高版本会报不支持，避免以旧程序继续写入新结构。

## 事务与幂等

玩家写请求使用 SQLite `BEGIN IMMEDIATE`。请求通过认证后，服务端按动作与 JSON 计算 SHA-256 指纹；若 24 小时内已有相同成功响应，则原样返回缓存结果。否则，业务状态变化、资源流水、教程里程碑和响应去重行在一个事务里提交。任一步失败都会回滚，失败响应不写入去重表。旧客户端没有独立幂等键；不带变化字段（通常为 `time`）的完全相同请求在窗口期内视作一次重试。

`user.login` 在只读快照之外单独维护服务端教程步骤；`map.getUserMap` 和 `user.getPushData` 是不创建写事务的只读查询。账号注册、认证、会话撤销由 `accounts` 模块维护。

## SQLite 连接设置

每个请求打开短连接，启用 WAL 与外键检查，并设置 5 秒 busy timeout。迁移、资源流水和战斗记录通过同一数据库文件持久化。数据库文件默认是 `ServerProject/data/accounts.sqlite3`，实际位置由 `config.toml` 决定。
