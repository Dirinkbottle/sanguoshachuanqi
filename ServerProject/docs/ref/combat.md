# 协议参考：阵法（combat.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **2** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`combat.getUserCombatList`](#combatgetUserCombatList) | `/index.php?do=combat.getUserCombatList` | `requestFormulaInfo` | 0 |
| [`combat.upgradeCombatLevel`](#combatupgradeCombatLevel) | `/index.php?do=combat.upgradeCombatLevel` | `requestCombatUpgrade` | 1 |

### combat.getUserCombatList

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=combat.getUserCombatList` | `ReconstructedJS/src_jsc/Cfg/Url.js:63` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:63` |
| 客户端封装 | `xs.Tools.Net.requestFormulaInfo` [`ReconstructedJS/src_jsc/Tools/Net.js:670`] | |

**请求字段**：没有调用点，无法从调用方确定。

**响应字段**：没有调用点，无法从调用方确定。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:63` | `Cfg.Url` |

**调用点**：该动作没有独立的请求封装，URL 在代码里就地拼接；调用点即上面的字面量位置。

### combat.upgradeCombatLevel

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=combat.upgradeCombatLevel` | `ReconstructedJS/src_jsc/Cfg/Url.js:66` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:66` |
| 客户端封装 | `xs.Tools.Net.requestCombatUpgrade`（注入 `forcepush=true`） [`ReconstructedJS/src_jsc/Tools/Net.js:781`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `forcepush` | `ReconstructedJS/src_jsc/Tools/Net.js:781 (wrapper-literal = true)` |
| `combat_id` | `Scene/Combat/CombatUpgradeScene.js:426` |
| `gids` | `Scene/Combat/CombatUpgradeScene.js:426` |
| `sids` | `Scene/Combat/CombatUpgradeScene.js:426` |
| `num` | `Scene/Combat/CombatUpgradeScene.js:426` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:66` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Combat/CombatUpgradeScene.js:426` | `confirmUpgrade` | `combat_id`, `gids`, `sids`, `num` | `inline` |
