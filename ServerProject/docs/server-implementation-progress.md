# 服务端实现进度

更新日期：2026-09-26

本页记录当前可运行的本地服务端范围。协议档案来自 APK 静态恢复，没有原运营服成功回包；这里实现的数值规则都属于本地重建设计，不代表原版规则。

## 覆盖范围

自动矩阵 [implementation-matrix.csv](implementation-matrix.csv) 覆盖 244 个 `do=` 动作和 6 个独立路由/传输项目。当前有 12 个协议动作处于本地实现切片，217 个玩法动作尚未实现，15 个渠道、实名和支付动作明确标为 `DISABLED_BY_DESIGN`。独立项目另有 4 个本地接口/路由已实现、1 个配置下载未实现；WebSocket / push 传输仍待审计。矩阵每行保留客户端调用证据、请求和响应字段、处理状态、测试及下一步。

## 已实现的玩家流程

| 阶段 | 当前行为 | 主要持久状态 |
|---|---|---|
| 本地账号与选服 | 注册、登录、退出登录；`account.index` 返回可选区服；新账号使用 Argon2id 哈希；会话以随机令牌签发并仅保存哈希。 | `accounts`、`sessions` |
| 首次登录与主城 | `user.login` 返回客户端所需的 `cmn` 模型、教程步骤、地图、招募状态和红点结构；支持设备使用的 `/game/{server_id}/index.php` 路径。 | `player_profiles`、`tutorial_progress` 及玩家实体表 |
| 教程前半 | 支持选初始武将、改名，并按 10000 到 80000 的服务端里程碑单调记录教程进度。 | `player_generals`、`player_team`、`player_profiles`、`tutorial_progress` |
| 地图与前两关 | 返回地图状态；实现两个本地设计关卡、解锁、体力消耗、奖励、经验、可播放战斗动作流和权威结算。 | `player_dungeons`、`player_profiles`、`player_generals`、`fight_records`、`resource_ledger` |
| 招募与编队 | 金酒免费抽每 1800 秒恢复一次，后续单抽消耗金币；招募结果成为独立玩家武将实体，可被放入队伍。 | `wine_state`、`player_generals`、`player_counters`、`player_team` |
| 礼包与装备 | 使用教程礼包后持久化消耗与奖励；校验武将、装备归属并保存穿戴关系。 | `player_items`、`player_equipment`、`resource_ledger` |

`user.getPushData`、`map.getUserMap` 是只读查询；陌生玩法动作返回明确失败，不用空成功推进客户端教程。支付、实名和第三方渠道动作返回 `feature_disabled`，不会创建订单、认证记录或伪造发货。

## 本地设计规则

原服务器不可用，客户端资料无法证明抽卡池、掉落、伤害或经济数值。新手关卡、招募价格与次数、奖励、战斗动画数值均集中在 `config.toml` 的 `[tutorial]`，并标记为本地设计；战斗记录保存对应的 `fight_rule_version`。起始体力/气力默认设置为客户端等级 1 配置的上限 150/12，但原服新号实际余额未知。教程初始武将列表逐项对照 `sgs_global_conf.js`，章节回退 ID `500001` 对照 `Tools/CfgData.js`，招募武将、礼包、装备与敌将 ID 对照随包武将/物品/装备表。

客户端 `Models/Player.js` 的 `getPlayerCurTiLi()` 返回 `user_power`，`getPlayerCurQiLi()` 返回 `user_energy`；`Models/Dungeon.js` 的 `dungeon_power` 是关卡体力消耗。因此副本现从 `user_power` 扣体力并持久化，`user_energy` 保持独立。此前按队伍人数合成的体力值已移除，schema v4 增加独立 `player_profiles.user_power` 列。

## 数据完整性

- 写操作使用 SQLite `IMMEDIATE` 事务，将业务状态、教程里程碑和成功响应去重记录一起提交；失败回滚。
- 对 24 小时窗口内完全相同的动作和 JSON 请求，重放已提交的响应，避免传输重试重复扣费或发奖。
- 玩家状态由账号主体与服务区共同隔离；静态模板 ID 与玩家实体 `pk_id` 分开，同一武将模板允许拥有多个实体。
- Schema 迁移为 1 到 5 版，细节见 [server-data-model.md](server-data-model.md)。迁移保留已有实体行和资料。

## 验证状态

当前本地验证：

- `cargo fmt --check`
- `cargo clippy --all-targets --locked -- -D warnings`
- `cargo test --locked`：27 项通过
- `python3 tools/check_protocol_docs.py`
- `python3 tools/build_server_implementation_matrix.py --check`

ADB 设备曾可见，但本轮硬编码修复后尚未通过真实客户端发起请求，状态为 **NOT DEVICE VERIFIED**。当前完整游戏覆盖仍未完成，不能将阶段 1–6 的可玩切片理解为 244 个动作已齐备。

## 日志

仓库配置默认 `[log] level = "full"`，会原样记录完整请求参数、请求体和响应体，不做字段脱敏或截断。`summary` 只写状态摘要，`off` 关闭请求日志。
