# 协议参考：天梯（ladder.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **3** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`ladder.fight`](#ladderfight) | `/index.php?do=ladder.fight` | `requestLadderFight` | 1 |
| [`ladder.init`](#ladderinit) | `/index.php?do=ladder.init` | `requestLadderData` | 1 |
| [`ladder.repeatedlyFight`](#ladderrepeatedlyFight) | `/index.php?do=ladder.repeatedlyFight` | `requestLadderTenFight` | 1 |

### ladder.fight

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=ladder.fight` | `ReconstructedJS/src_jsc/Cfg/Url.js:94` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:94` |
| 客户端封装 | `xs.Tools.Net.requestLadderFight`（注入 `forcepush=true`） [`ReconstructedJS/src_jsc/Tools/Net.js:1080`] | |
| 响应交给的模型 | `xs.Models.FightInfo.create` | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `forcepush` | `ReconstructedJS/src_jsc/Tools/Net.js:1080 (wrapper-literal = true)` |
| `player_id` | `Scene/Ladder/LadderCardShow.js:321` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

> 响应整体（或部分）交给 `xs.Models.FightInfo.create` 解析，其字段表见 [data-model.md](../data-model.md)。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:94` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Ladder/LadderCardShow.js:343` | `fightBtnClick` | `player_id` | `inline` |

### ladder.init

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=ladder.init` | `ReconstructedJS/src_jsc/Cfg/Url.js:93` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:93` |
| 客户端封装 | `xs.Tools.Net.requestLadderData` [`ReconstructedJS/src_jsc/Tools/Net.js:1072`] | |
| 响应交给的模型 | `GameData.LadderInfo.update` | |

**请求字段**：该封装无显式字段（调用点：显式发送空对象 {}）。实际仍会带上公共字段。

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

> 响应整体（或部分）交给 `GameData.LadderInfo.update` 解析，其字段表见 [data-model.md](../data-model.md)。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:93` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Ladder/LadderView.js:135` | `reloadLadderInfo` | 显式发送空对象 {} | `inline` |

### ladder.repeatedlyFight

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=ladder.repeatedlyFight` | `ReconstructedJS/src_jsc/Cfg/Url.js:95` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:95` |
| 客户端封装 | `xs.Tools.Net.requestLadderTenFight` [`ReconstructedJS/src_jsc/Tools/Net.js:1090`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Scene/Ladder/LadderCardShow.js:276` |
| `player_id` | `Scene/Ladder/LadderCardShow.js:276` |
| `player_type` | `Scene/Ladder/LadderCardShow.js:276` |
| `ladder_rank` | `Scene/Ladder/LadderCardShow.js:276` |
| `ignoreRandEvent` | `Scene/Ladder/LadderCardShow.js:276` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `fight_result` | `Scene/Ladder/LadderCardShow.js:276` |
| `fight_result.drop_info` | `Scene/Ladder/LadderCardShow.js:276` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:95` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Ladder/LadderCardShow.js:276` | `tenFightCallBack` | `user_id`, `player_id`, `player_type`, `ladder_rank`, `ignoreRandEvent` | `inline` |
