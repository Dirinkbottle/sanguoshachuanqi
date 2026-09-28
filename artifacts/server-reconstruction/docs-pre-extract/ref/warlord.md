# 协议参考：战神（warlord.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **6** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`warlord.warlord`](#warlordwarlord) | `/index.php?do=warlord.warlord` | `requestChaosFight` | 1 |
| [`warlord.warlordBatchExchangeSkill`](#warlordwarlordBatchExchangeSkill) | `/index.php?do=warlord.warlordBatchExchangeSkill` | `requestOneStepSkillCompose` | 1 |
| [`warlord.warlordExchangeSkill`](#warlordwarlordExchangeSkill) | `/index.php?do=warlord.warlordExchangeSkill` | `requestWarLordExchange` | 1 |
| [`warlord.warlordInfo`](#warlordwarlordInfo) | `/index.php?do=warlord.warlordInfo` | `requestChaosInfo` | 2 |
| [`warlord.warlordPieceInfo`](#warlordwarlordPieceInfo) | `/index.php?do=warlord.warlordPieceInfo` | `requestChaosSkillPiece` | 3 |
| [`warlord.warlordSkillList`](#warlordwarlordSkillList) | `/index.php?do=warlord.warlordSkillList` | `requestWarLordSkillList` | 0 |

### warlord.warlord

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=warlord.warlord` | `ReconstructedJS/src_jsc/Cfg/Url.js:98` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:98` |
| 客户端封装 | `xs.Tools.Net.requestChaosFight`（注入 `forcepush=true`） [`ReconstructedJS/src_jsc/Tools/Net.js:1114`] | |
| 响应交给的模型 | `xs.Models.FightInfo.create` | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `forcepush` | `ReconstructedJS/src_jsc/Tools/Net.js:1114 (wrapper-literal = true)` |
| `other_id` | `Views/Table/Cell/ChaosTableViewCell.js:146` |
| `type` | `Views/Table/Cell/ChaosTableViewCell.js:146` |
| `skill_id` | `Views/Table/Cell/ChaosTableViewCell.js:146` |
| `ignoreRandEvent` | `Views/Table/Cell/ChaosTableViewCell.js:146` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

> 响应整体（或部分）交给 `xs.Models.FightInfo.create` 解析，其字段表见 [data-model.md](../data-model.md)。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:98` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Table/Cell/ChaosTableViewCell.js:146` | `gotoFight` | `other_id`, `type`, `skill_id`, `ignoreRandEvent` | `inline` |

### warlord.warlordBatchExchangeSkill

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=warlord.warlordBatchExchangeSkill` | `ReconstructedJS/src_jsc/Cfg/Url.js:101` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:101` |
| 客户端封装 | `xs.Tools.Net.requestOneStepSkillCompose` [`ReconstructedJS/src_jsc/Tools/Net.js:1140`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Scene/Chaos/ChaosHomeView.js:60` |
| `skill_ids` | `Scene/Chaos/ChaosHomeView.js:60` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `return_info` | `Scene/Chaos/ChaosHomeView.js:60` |
| `return_info.add_list` | `Scene/Chaos/ChaosHomeView.js:60` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:101` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Chaos/ChaosHomeView.js:60` | `OneStepComposeCallBack` | `user_id`, `skill_ids` | `inline` |

### warlord.warlordExchangeSkill

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=warlord.warlordExchangeSkill` | `ReconstructedJS/src_jsc/Cfg/Url.js:100` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:100` |
| 客户端封装 | `xs.Tools.Net.requestWarLordExchange` [`ReconstructedJS/src_jsc/Tools/Net.js:1132`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `skill_id` | `Scene/Chaos/ChaosHomeView.js:291` |
| `ignoreRandEvent` | `Scene/Chaos/ChaosHomeView.js:291` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:100` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Chaos/ChaosHomeView.js:291` | `updateSkillPiece` | `skill_id`, `ignoreRandEvent` | `inline` |

### warlord.warlordInfo

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=warlord.warlordInfo` | `ReconstructedJS/src_jsc/Cfg/Url.js:97` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:97` |
| 客户端封装 | `xs.Tools.Net.requestChaosInfo` [`ReconstructedJS/src_jsc/Tools/Net.js:1106`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `skill_id` | `Scene/Chaos/ChaosFight.js:92` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `return_info.warlord_info` | `Scene/Chaos/ChaosFight.js:92` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:97` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Chaos/ChaosFight.js:92` | `init` | `skill_id` | `this.onResponse` |
| `Scene/Chaos/ChaosFight.js:162` | `checkPieceNumIsEnough` | `skill_id` | `this.onResponse` |

### warlord.warlordPieceInfo

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=warlord.warlordPieceInfo` | `ReconstructedJS/src_jsc/Cfg/Url.js:96` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:96` |
| 客户端封装 | `xs.Tools.Net.requestChaosSkillPiece` [`ReconstructedJS/src_jsc/Tools/Net.js:1098`] | |

**请求字段**：该封装无显式字段（调用点：显式发送空对象 {}）。实际仍会带上公共字段。

**响应字段**

| 字段 | 证据 |
|---|---|
| `return_info.piece_info` | `Scene/Chaos/ChaosHomeView.js:76` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:96` | `Cfg.Url` |

**调用点**（3）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Chaos/ChaosHomeView.js:76` | `OneStepComposeCallBack` | 显式发送空对象 {} | `this.updateView` |
| `Scene/Chaos/ChaosHomeView.js:89` | `onEnterTransitionDidFinish` | 显式发送空对象 {} | `this.updateView` |
| `Scene/Chaos/ChaosHomeView.js:301` | `updateSkillPiece` | 显式发送空对象 {} | `this.updateView` |

### warlord.warlordSkillList

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=warlord.warlordSkillList` | `ReconstructedJS/src_jsc/Cfg/Url.js:99` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:99` |
| 客户端封装 | `xs.Tools.Net.requestWarLordSkillList` [`ReconstructedJS/src_jsc/Tools/Net.js:1124`] | |

**请求字段**：没有调用点，无法从调用方确定。

**响应字段**：没有调用点，无法从调用方确定。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:99` | `Cfg.Url` |

**调用点**：该动作没有独立的请求封装，URL 在代码里就地拼接；调用点即上面的字面量位置。
