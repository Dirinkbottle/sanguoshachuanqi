# 协议参考：爬塔（tower.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **7** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`tower.towerBeStronger`](#towertowerBeStronger) | `/index.php?do=tower.towerBeStronger` | `requestClimbLadderProperty` | 3 |
| [`tower.towerExchange`](#towertowerExchange) | `/index.php?do=tower.towerExchange` | `requestArtifactStoreyExchangeEquipment` | 0 |
| [`tower.towerExchangeList`](#towertowerExchangeList) | `/index.php?do=tower.towerExchangeList` | `requestArtifactStoreyExchangeList` | 1 |
| [`tower.towerFight`](#towertowerFight) | `/index.php?do=tower.towerFight` | `requestClimbLadderStartFight` | 1 |
| [`tower.towerFightBefore`](#towertowerFightBefore) | `/index.php?do=tower.towerFightBefore` | `requestClimbLadderStartFightOrSelectInfo` | 0 |
| [`tower.towerFightPass`](#towertowerFightPass) | `/index.php?do=tower.towerFightPass` | `requestClimbLadderStartFightPass` | 1 |
| [`tower.towerInfo`](#towertowerInfo) | `/index.php?do=tower.towerInfo` | `requestClimbLadderStartInfo` | 3 |

### tower.towerBeStronger

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=tower.towerBeStronger` | `ReconstructedJS/src_jsc/Cfg/Url.js:91` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:91` |
| 客户端封装 | `xs.Tools.Net.requestClimbLadderProperty` [`ReconstructedJS/src_jsc/Tools/Net.js:1026`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `id` | `Scene/Climb/StartBattleScene.js:949` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `is_expired` | `Scene/Climb/StartBattleScene.js:951` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:91` | `Cfg.Url` |

**调用点**（3）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Climb/StartBattleScene.js:951` | `exchangeBtnCallback1` | `id` | `this.serverBackData` |
| `Scene/Climb/StartBattleScene.js:970` | `exchangeBtnCallback2` | `id` | `this.serverBackData` |
| `Scene/Climb/StartBattleScene.js:989` | `exchangeBtnCallback3` | `id` | `this.serverBackData` |

### tower.towerExchange

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=tower.towerExchange` | `ReconstructedJS/src_jsc/Cfg/Url.js:88` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:88` |
| 客户端封装 | `xs.Tools.Net.requestArtifactStoreyExchangeEquipment` [`ReconstructedJS/src_jsc/Tools/Net.js:1064`] | |

**请求字段**：没有调用点，无法从调用方确定。

**响应字段**：没有调用点，无法从调用方确定。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:88` | `Cfg.Url` |

**调用点**：该动作没有独立的请求封装，URL 在代码里就地拼接；调用点即上面的字面量位置。

### tower.towerExchangeList

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=tower.towerExchangeList` | `ReconstructedJS/src_jsc/Cfg/Url.js:87` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:87` |
| 客户端封装 | `xs.Tools.Net.requestArtifactStoreyExchangeList` [`ReconstructedJS/src_jsc/Tools/Net.js:1056`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `requestExchangeListSuccessCallback` | `Views/ClimbLadderArtifactStorey.js:86` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `return_info.equipment_info` | `Views/ClimbLadderArtifactStorey.js:88` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:87` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/ClimbLadderArtifactStorey.js:88` | `requestExchangeList` | `requestExchangeListSuccessCallback` | `this.requestExchangeListSuccessCallback` |

### tower.towerFight

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=tower.towerFight` | `ReconstructedJS/src_jsc/Cfg/Url.js:90` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:90` |
| 客户端封装 | `xs.Tools.Net.requestClimbLadderStartFight`（注入 `forcepush=true`） [`ReconstructedJS/src_jsc/Tools/Net.js:984`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `forcepush` | `ReconstructedJS/src_jsc/Tools/Net.js:984 (wrapper-literal = true)` |
| `_setRankType` | `Scene/Climb/StartBattleScene.js:336` |
| `other_id` | `Scene/Climb/StartBattleScene.js:338` |
| `ignoreRandEvent` | `Scene/Climb/StartBattleScene.js:340` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `is_expired` | `Scene/Climb/StartBattleScene.js:344` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:90` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Climb/StartBattleScene.js:344` | `requestForFight` | `_setRankType`, `other_id`, `ignoreRandEvent`, `forcepush` | `this.serverBackData` |

### tower.towerFightBefore

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=tower.towerFightBefore` | `ReconstructedJS/src_jsc/Cfg/Url.js:89` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:89` |
| 客户端封装 | `xs.Tools.Net.requestClimbLadderStartFightOrSelectInfo` [`ReconstructedJS/src_jsc/Tools/Net.js:976`] | |

**请求字段**：没有调用点，无法从调用方确定。

**响应字段**：没有调用点，无法从调用方确定。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:89` | `Cfg.Url` |

**调用点**：该动作没有独立的请求封装，URL 在代码里就地拼接；调用点即上面的字面量位置。

### tower.towerFightPass

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=tower.towerFightPass` | `ReconstructedJS/src_jsc/Cfg/Url.js:92` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:92` |
| 客户端封装 | `xs.Tools.Net.requestClimbLadderStartFightPass` [`ReconstructedJS/src_jsc/Tools/Net.js:1018`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/ClimbLadderPFKGView.js:590` |
| `forcepush` | `Views/ClimbLadderPFKGView.js:590` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `return_info.add_list` | `Views/ClimbLadderPFKGView.js:590` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:92` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/ClimbLadderPFKGView.js:590` | `rightCB` | `user_id`, `forcepush` | `inline` |

### tower.towerInfo

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=tower.towerInfo` | `ReconstructedJS/src_jsc/Cfg/Url.js:86` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:86` |
| 客户端封装 | `xs.Tools.Net.requestClimbLadderStartInfo`（注入 `forcePush=true`） [`ReconstructedJS/src_jsc/Tools/Net.js:942`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `forcePush` | `ReconstructedJS/src_jsc/Tools/Net.js:942 (wrapper-literal = true)` |
| `requestStartInfoSuccessCallback` | `Views/ClimbLadderPFKGView.js:179` |
| `user_is_go_xiuluo` | `Views/ClimbLadderPFKGView.js:474` |
| `requestCallback` | `Scene/Climb/ClimbLadderScene.js:65` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:86` | `Cfg.Url` |

**调用点**（3）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/ClimbLadderPFKGView.js:181` | `requestStartInfo` | `requestStartInfoSuccessCallback` | `this.requestStartInfoSuccessCallback` |
| `Views/ClimbLadderPFKGView.js:476` | `goToXiuLuoCallback` | `user_is_go_xiuluo` | `inline` |
| `Scene/Climb/ClimbLadderScene.js:67` | `requestService` | `requestCallback` | `this.requestCallback` |
