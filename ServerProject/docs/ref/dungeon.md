# 协议参考：副本战斗（dungeon.*）

普通副本、多杀、宝箱

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **6** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`dungeon.fight`](#dungeonfight) | `/?do=dungeon.fight` | `requireFight` | 2 |
| [`dungeon.fightBefore`](#dungeonfightBefore) | `/?do=dungeon.fightBefore` | `requireFightBefore` | 0 |
| [`dungeon.multiKill`](#dungeonmultiKill) | `/?do=dungeon.multiKill` | `requireMultiKill` | 4 |
| [`dungeon.multiKillSpecial`](#dungeonmultiKillSpecial) | `?do=dungeon.multiKillSpecial` | `requireMultiKillSpecial` | 1 |
| [`dungeon.multiKillSpecialInfo`](#dungeonmultiKillSpecialInfo) | `?do=dungeon.multiKillSpecialInfo` | `requireMultiKillSpecialInfo` | 1 |
| [`dungeon.openBox`](#dungeonopenBox) | `?do=dungeon.openBox` | `requireOpenTreasureBox` | 1 |

### dungeon.fight

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=dungeon.fight` | `ReconstructedJS/src_jsc/Cfg/Url.js:33` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:33` |
| 客户端封装 | `xs.Tools.Net.requireFight`（注入 `forcepush=true`） [`ReconstructedJS/src_jsc/Tools/Net.js:448`] | |
| 响应交给的模型 | `xs.Models.FightInfo.create`, `GameData.Map.update` | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `forcepush` | `ReconstructedJS/src_jsc/Tools/Net.js:448 (wrapper-literal = true)` |
| `dungeon_id` | `Views/Dialog/DungeonDetail.js:321` |
| `check_troop` | `Views/Dialog/DungeonDetail.js:321` |
| `ignoreRandEvent` | `Views/Dialog/DungeonDetail.js:321` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `map_info` | `Views/Dialog/DungeonDetail.js:321` |

> 响应整体（或部分）交给 `xs.Models.FightInfo.create`, `GameData.Map.update` 解析，其字段表见 [data-model.md](../data-model.md)。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:33` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/DungeonDetail.js:321` | `rightCB` | `dungeon_id`, `check_troop`, `ignoreRandEvent` | `inline` |
| `Views/Dialog/DungeonDetailB.js:213` | `singleFight` | `dungeon_id`, `check_troop`, `ignoreRandEvent` | `inline` |

### dungeon.fightBefore

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=dungeon.fightBefore` | `ReconstructedJS/src_jsc/Cfg/Url.js:32` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:32` |
| 客户端封装 | `xs.Tools.Net.requireFightBefore` [`ReconstructedJS/src_jsc/Tools/Net.js:440`] | |

**请求字段**：没有调用点，无法从调用方确定。

**响应字段**：没有调用点，无法从调用方确定。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:32` | `Cfg.Url` |

**调用点**：该动作没有独立的请求封装，URL 在代码里就地拼接；调用点即上面的字面量位置。

### dungeon.multiKill

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=dungeon.multiKill` | `ReconstructedJS/src_jsc/Cfg/Url.js:37` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:37` |
| 客户端封装 | `xs.Tools.Net.requireMultiKill`（注入 `forcepush=true`） [`ReconstructedJS/src_jsc/Tools/Net.js:482`] | |
| 响应交给的模型 | `xs.Models.MulitiFightInfo.create`, `GameData.Map.update` | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `forcepush` | `ReconstructedJS/src_jsc/Tools/Net.js:482 (wrapper-literal = true)` |
| `dungeon_id` | `Views/Dialog/DungeonDetail.js:153` |
| `ignoreRandEvent` | `Views/Dialog/DungeonDetail.js:153` |
| `clear_cd` | `Views/Dialog/DungeonDetail.js:399` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `map_info` | `Views/Dialog/DungeonDetail.js:153` |

> 响应整体（或部分）交给 `xs.Models.MulitiFightInfo.create`, `GameData.Map.update` 解析，其字段表见 [data-model.md](../data-model.md)。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:37` | `Cfg.Url` |

**调用点**（4）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/DungeonDetail.js:153` | `rightCB` | `dungeon_id`, `ignoreRandEvent` | `inline` |
| `Views/Dialog/DungeonDetail.js:399` | `rightCB` | `dungeon_id`, `clear_cd`, `ignoreRandEvent` | `inline` |
| `Views/Dialog/DungeonDetailB.js:132` | `init` | `dungeon_id`, `ignoreRandEvent` | `inline` |
| `Views/Dialog/DungeonDetailB.js:306` | `rightCB` | `dungeon_id`, `clear_cd`, `ignoreRandEvent` | `inline` |

### dungeon.multiKillSpecial

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=dungeon.multiKillSpecial` | `ReconstructedJS/src_jsc/Cfg/Url.js:40` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:40` |
| 客户端封装 | `xs.Tools.Net.requireMultiKillSpecial` [`ReconstructedJS/src_jsc/Tools/Net.js:500`] | |
| 响应交给的模型 | `xs.Models.MulitiFightInfo.create`, `GameData.Map.update` | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Dialog/AutoMultiKillSelectDialog.js:499` |
| `dungeon_id` | `Views/Dialog/AutoMultiKillSelectDialog.js:499` |
| `fight_num` | `Views/Dialog/AutoMultiKillSelectDialog.js:499` |
| `eat_baoZi` | `Views/Dialog/AutoMultiKillSelectDialog.js:499` |
| `ignoreRandEvent` | `Views/Dialog/AutoMultiKillSelectDialog.js:499` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `map_info` | `Views/Dialog/AutoMultiKillSelectDialog.js:499` |

> 响应整体（或部分）交给 `xs.Models.MulitiFightInfo.create`, `GameData.Map.update` 解析，其字段表见 [data-model.md](../data-model.md)。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:40` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/AutoMultiKillSelectDialog.js:499` | `onClick` | `user_id`, `dungeon_id`, `fight_num`, `eat_baoZi`, `ignoreRandEvent` | `inline` |

### dungeon.multiKillSpecialInfo

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=dungeon.multiKillSpecialInfo` | `ReconstructedJS/src_jsc/Cfg/Url.js:39` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:39` |
| 客户端封装 | `xs.Tools.Net.requireMultiKillSpecialInfo` [`ReconstructedJS/src_jsc/Tools/Net.js:492`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Dialog/AutoMultiKillSelectDialog.js:199` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `return_info` | `Views/Dialog/AutoMultiKillSelectDialog.js:199` |
| `return_info.power_price` | `Views/Dialog/AutoMultiKillSelectDialog.js:199` |
| `return_info.ordinary_price` | `Views/Dialog/AutoMultiKillSelectDialog.js:199` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:39` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/AutoMultiKillSelectDialog.js:199` | `requestBaoZiPriceData` | `user_id` | `inline` |

### dungeon.openBox

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=dungeon.openBox` | `ReconstructedJS/src_jsc/Cfg/Url.js:38` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:38` |
| 客户端封装 | `xs.Tools.Net.requireOpenTreasureBox` [`ReconstructedJS/src_jsc/Tools/Net.js:508`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `box_id` | `Views/Dialog/Dialog.js:481` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:38` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/Dialog.js:481` | `centerBtnCallback` | `box_id` | `inline` |
