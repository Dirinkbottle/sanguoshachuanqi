# 06 · 战斗协议

证据：**字节码**。客户端把战斗响应的解析集中在 `Models/Fight/FightInfo.js`，
入口是 `Models/FightInfo.create(jsonObj)`（`Models/Fight/FightInfo.js:41` 的 `loadJson`）。

逐步的新手战斗与首个副本流程见 [../GAME_PROTOCOL.md](../GAME_PROTOCOL.md)。
本页给出**全部战斗入口**与完整的字段清单。

## 6.1 战斗入口全景

静态提取能证明「响应交给 `FightInfo` 解析」的动作：

| 动作 | 路径 | 调用点证据 | 交给的模型 |
|---|---|---|---|
| `dungeon.fight` | `/?do=dungeon.fight` | `Views/Dialog/DungeonDetail.js:321` | `FightInfo.create` + `GameData.Map.update` |
| `festival.goFight` | `/?do=festival.goFight` | `Scene/Copy/CopyScene.js:229` 等 6 处 | `FightInfo.create` |
| `ladder.fight` | `/index.php?do=ladder.fight` | 见 [ref/ladder.md](ref/ladder.md) | `FightInfo.create` |
| `relationship.fight` | `?do=relationship.fight` | 见 [ref/relationship.md](ref/relationship.md) | `FightInfo.create` |
| `unionWar.getFightingDetails` | `?do=unionWar.getFightingDetails` | 见 [ref/unionWar.md](ref/unionWar.md) | `FightInfo.create` |
| `warlord.warlord` | `/index.php?do=warlord.warlord` | 见 [ref/warlord.md](ref/warlord.md) | `FightInfo.create` |
| `dungeon.multiKill` / `dungeon.multiKillSpecial` | `/?do=...` | 见 [ref/dungeon.md](ref/dungeon.md) | `MulitiFightInfo.create` |
| `unionWar.getFightingProcess` | `?do=unionWar.getFightingProcess` | 见 [ref/unionWar.md](ref/unionWar.md) | `UnionWarFightingProcess.createWithJson` |

这些是「响应里带战斗过程/结果」的动作。此外还有若干**只取战前信息**的动作
（`dungeon.fightBefore`、`tower.towerFightBefore`、`ladderWar.match` 等），
它们在静态遍历中没有可解析的调用点或只更新 `cmn`，见 [endpoint-index.md](endpoint-index.md)。

## 6.2 `FightInfo` 的消费契约

`loadJson`（`Models/Fight/FightInfo.js:41-55`）只做两件事：

```js
if (jsonObj.fight_info)  { this.fightProcess = jsonObj.fight_info; }
if (jsonObj.fight_result) { this.initFightResultInfo(jsonObj.fight_result); }
else                     { this.m_isShowFightResult = false; }
```

所以战斗响应有两个**互相独立**的部分：

- `fight_info`：用于播放的过程数据（客户端只保存引用，由战斗场景展开）；
- `fight_result`：权威结算，缺省时客户端明确标记"不显示结算"。

### `fight_result` 字段（全部有证据）

来自 `initFightResultInfo`（`Models/Fight/FightInfo.js:60` 起）：

| 字段 | 客户端读取 | 证据 |
|---|---|---|
| `success` | 胜负，直接布尔 | `FightInfo.js:69` |
| `fight_type` | 战斗类型 | `FightInfo.js` |
| `player_info` | 玩家侧信息 | `FightInfo.js:65` |
| `fight_calculate_info.star_level` | 星级（`parseInt`，缺省 0） | `FightInfo.js:67` |
| `fight_calculate_info.rounds` | 回合数 | `FightInfo.js` |
| `fight_calculate_info.residue_team_num` | 剩余人数 | `FightInfo.js` |
| `fight_calculate_info.residue_team_percent` | 剩余比例 | `FightInfo.js` |
| `fight_calculate_info.up_rank` | 升/降段 | `FightInfo.js` |
| `fight_calculate_info.extra_integration` | 额外积分 | `FightInfo.js` |
| `fight_calculate_info.max_total_integration` | 积分上限 | `FightInfo.js` |
| `fight_calculate_info.point_progress` | 积分进度 | `FightInfo.js` |
| `fight_calculate_info.total_integration` | 总积分 | `FightInfo.js` |
| `drop_info.user_exp` | 玩家经验 | `FightInfo.js` |
| `drop_info.general_exp` | 武将经验 | `FightInfo.js` |
| `drop_info.user_coin` | 金币 | `FightInfo.js` |
| `drop_info.fortune` | 财运 | `FightInfo.js` |
| `drop_info.rank_salary` | 段位俸禄 | `FightInfo.js` |
| `drop_info.reward_honor` | 荣誉 | `FightInfo.js` |
| `drop_info.point` | 积分 | `FightInfo.js` |
| `add_list` | 奖励条目数组 | `FightInfo.js` |
| `show_general_info` | 上阵武将经验/等级变化 | `FightInfo.js` |
| `fight_info.init` / `fight_info.rounds` | 播放用初始化与动作流 | 战斗场景 |

完整逐字段证据（含行号）见 [data-model.md](data-model.md#xsmodelsfightinfo)。

`CI% 里逐字段核对：`python3 -c "import json;d=json.load(open('ServerProject/docs/protocol-inventory.json'));print(d['models']['FightInfo']['payload_field_evidence'])"`

## 6.3 一个结构性事实

在这份协议里，**客户端从不根据战斗过程推导胜负、星级或掉落**：

- 胜负来自 `fight_result.success`（`FightInfo.js:69`）；
- 星级来自 `fight_calculate_info.star_level`（`FightInfo.js:67`）；
- 掉落来自 `add_list` 与 `drop_info`；
- 播放用的动作流只在 `fight_info` 里，客户端把动作中的 `hpCur%/`hpMax` 写回临时模型用于显示。

所以服务端**必须**给出可播放的动作序列，同时**独立**给出结算。
两者不一致时客户端不会报错——这是兼容实现需要注意的语义风险，
也是为什么 [90-blackbox.md](90-blackbox.md) 把伤害/概率算法列为不可恢复。

## 6.4 战斗相关的其它数据

- 地图与关卡节点：`Profile/GameData/Map.js` 读 `map_info.chapter_list` 与 `map_info.chapter_details`；
  章节与关卡模型 `Models/Chapter.js`、`Models/Dungeon.js`、`Models/TreasureBox.js` 的字段表见 [data-model.md](data-model.md)。
- 固定脚本教程战斗 `Cfg/Fight/NewPlayerFight.js` **不发请求**，见 [../GAME_PROTOCOL.md](../GAME_PROTOCOL.md#内置新手战斗)。

## 6.5 逐端点参考

[ref/dungeon.md](ref/dungeon.md)、[ref/festival.md](ref/festival.md)、[ref/tower.md](ref/tower.md)、
[ref/ladder.md](ref/ladder.md)、[ref/ladderWar.md](ref/ladderWar.md)、
[ref/worldWar.md](ref/worldWar.md)、[ref/unionWar.md](ref/unionWar.md)、
[ref/warlord.md](ref/warlord.md)、[ref/godness.md](ref/godness.md)、[ref/hulao.md](ref/hulao.md)。

## 6.6 不可恢复

敌方组队、AI、伤害与触发公式、动作流生成、掉落概率、星级评价、体力扣减、
次数限制、奖励幂等、防作弊——**没有原服样本，也没有客户端算法**。见 [90-blackbox.md](90-blackbox.md)。
