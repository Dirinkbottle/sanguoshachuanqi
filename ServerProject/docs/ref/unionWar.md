# 协议参考：公会战（unionWar.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **6** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`unionWar.getBattleFormation`](#unionWargetBattleFormation) | `?do=unionWar.getBattleFormation` | `requestGetBattleFormation` | 1 |
| [`unionWar.getFightingDetails`](#unionWargetFightingDetails) | `?do=unionWar.getFightingDetails` | `requestFightingDetails` | 1 |
| [`unionWar.getFightingProcess`](#unionWargetFightingProcess) | `?do=unionWar.getFightingProcess` | `requestGetUnionWarFightingProcess` | 1 |
| [`unionWar.getFightingResult`](#unionWargetFightingResult) | `?do=unionWar.getFightingResult` | `requestGetEncounterInfo` | 1 |
| [`unionWar.setBattleFormation`](#unionWarsetBattleFormation) | `?do=unionWar.setBattleFormation` | `requestSetBattleFormation` | 1 |
| [`unionWar.signUp`](#unionWarsignUp) | `?do=unionWar.signUp` | `requestUnionCombatSignUp` | 1 |

### unionWar.getBattleFormation

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=unionWar.getBattleFormation` | `ReconstructedJS/src_jsc/Cfg/Url.js:154` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:154` |
| 客户端封装 | `xs.Tools.Net.requestGetBattleFormation` [`ReconstructedJS/src_jsc/Tools/Net.js:1807`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Union/UnionCombatMainLayer.js:300` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:154` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Union/UnionCombatMainLayer.js:300` | `onBtnApplyAndEmbattleClicked` | `user_id` | `inline` |

### unionWar.getFightingDetails

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=unionWar.getFightingDetails` | `ReconstructedJS/src_jsc/Cfg/Url.js:159` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:159` |
| 客户端封装 | `xs.Tools.Net.requestFightingDetails` [`ReconstructedJS/src_jsc/Tools/Net.js:1855`] | |
| 响应交给的模型 | `xs.Models.FightInfo.create` | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Dialog/UnionWarBattleResultDialog.js:135` |
| `union_war_id` | `Views/Dialog/UnionWarBattleResultDialog.js:135` |
| `battle_rounds` | `Views/Dialog/UnionWarBattleResultDialog.js:135` |
| `tag` | `Views/Dialog/UnionWarBattleResultDialog.js:135` |
| `from` | `Views/Dialog/UnionWarBattleResultDialog.js:135` |
| `to` | `Views/Dialog/UnionWarBattleResultDialog.js:135` |
| `battle_id` | `Views/Dialog/UnionWarBattleResultDialog.js:135` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

> 响应整体（或部分）交给 `xs.Models.FightInfo.create` 解析，其字段表见 [data-model.md](../data-model.md)。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:159` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/UnionWarBattleResultDialog.js:135` | `onReviewBtnClicked` | `user_id`, `union_war_id`, `battle_rounds`, `tag`, `from`, `to`, `battle_id` | `inline` |

### unionWar.getFightingProcess

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=unionWar.getFightingProcess` | `ReconstructedJS/src_jsc/Cfg/Url.js:157` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:157` |
| 客户端封装 | `xs.Tools.Net.requestGetUnionWarFightingProcess` [`ReconstructedJS/src_jsc/Tools/Net.js:1831`] | |
| 响应交给的模型 | `xs.Models.UnionWarFightingProcess.createWithJson` | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `union_war_id` | `Views/Dialog/UnionEncounterMapDialog.js:863` |
| `battle_rounds` | `Views/Dialog/UnionEncounterMapDialog.js:863` |
| `tag` | `Views/Dialog/UnionEncounterMapDialog.js:863` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

> 响应整体（或部分）交给 `xs.Models.UnionWarFightingProcess.createWithJson` 解析，其字段表见 [data-model.md](../data-model.md)。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:157` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/UnionEncounterMapDialog.js:863` | `_setUnionElement` | `union_war_id`, `battle_rounds`, `tag` | `inline` |

### unionWar.getFightingResult

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=unionWar.getFightingResult` | `ReconstructedJS/src_jsc/Cfg/Url.js:155` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:155` |
| 客户端封装 | `xs.Tools.Net.requestGetEncounterInfo` [`ReconstructedJS/src_jsc/Tools/Net.js:1815`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Union/UnionCombatMainLayer.js:260` |
| `type` | `Views/Union/UnionCombatMainLayer.js:260` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Union/UnionCombatMainLayer.js:260` |
| `union_war_id` | `Models/UnionWar.js (via setUnionWarId)` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:155` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Union/UnionCombatMainLayer.js:260` | `onBtnCurrentEncounterClicked` | `user_id`, `type` | `inline` |

### unionWar.setBattleFormation

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=unionWar.setBattleFormation` | `ReconstructedJS/src_jsc/Cfg/Url.js:156` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:156` |
| 客户端封装 | `xs.Tools.Net.requestSetBattleFormation` [`ReconstructedJS/src_jsc/Tools/Net.js:1823`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Scene/UnionWar/UnionWarChangeFormationScene.js:247` |
| `chg_formation` | `Scene/UnionWar/UnionWarChangeFormationScene.js:247` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:156` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/UnionWar/UnionWarChangeFormationScene.js:247` | `requestSetBattleFormation` | `user_id`, `chg_formation` | `inline` |

### unionWar.signUp

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=unionWar.signUp` | `ReconstructedJS/src_jsc/Cfg/Url.js:141` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:141` |
| 客户端封装 | `xs.Tools.Net.requestUnionCombatSignUp` [`ReconstructedJS/src_jsc/Tools/Net.js:1719`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Union/UnionCombatMainLayer.js:330` |
| `fight_point` | `Views/Union/UnionCombatMainLayer.js:330` |
| `forcepush` | `Views/Union/UnionCombatMainLayer.js:330` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Union/UnionCombatMainLayer.js:330` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:141` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Union/UnionCombatMainLayer.js:330` | `applyClick` | `user_id`, `fight_point`, `forcepush` | `inline` |
