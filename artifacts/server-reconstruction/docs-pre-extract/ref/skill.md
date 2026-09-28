# 协议参考：技能（skill.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **3** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`skill.melt`](#skillmelt) | `/index.php?do=skill.melt` | `requireSkillMelt` | 2 |
| [`skill.multiMelt`](#skillmultiMelt) | `/index.php?do=skill.multiMelt` | `requireSkillMultMelt` | 2 |
| [`skill.upgradeskillLevel`](#skillupgradeskillLevel) | `/index.php?do=skill.upgradeskillLevel` | `requestSkillUpdate` | 1 |

### skill.melt

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=skill.melt` | `ReconstructedJS/src_jsc/Cfg/Url.js:61` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:61` |
| 客户端封装 | `xs.Tools.Net.requireSkillMelt` [`ReconstructedJS/src_jsc/Tools/Net.js:622`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Table/Cell/SkillMeltTableCell.js:173` |
| `sids` | `Views/Table/Cell/SkillMeltTableCell.js:173` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `add_list` | `Views/Table/Cell/SkillMeltTableCell.js:173` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:61` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Table/Cell/SkillMeltTableCell.js:173` | `_sell` | `user_id`, `sids` | `this._sellEx` |
| `Views/Table/Cell/SkillMeltTableCell.js:195` | `_sell` | `user_id`, `sids` | `this._sellEx` |

### skill.multiMelt

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=skill.multiMelt` | `ReconstructedJS/src_jsc/Cfg/Url.js:62` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:62` |
| 客户端封装 | `xs.Tools.Net.requireSkillMultMelt` [`ReconstructedJS/src_jsc/Tools/Net.js:630`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Scene/Skill/SkillScene.js:147` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `add_list` | `Scene/Skill/SkillScene.js:147` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:62` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Skill/SkillScene.js:147` | `rightCB` | `user_id` | `inline` |
| `Scene/Main/MainMenuScene.js:497` | `btnCallback` | `user_id` | `inline` |

### skill.upgradeskillLevel

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=skill.upgradeskillLevel` | `ReconstructedJS/src_jsc/Cfg/Url.js:60` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:60` |
| 客户端封装 | `xs.Tools.Net.requestSkillUpdate`（注入 `forcepush=true`） [`ReconstructedJS/src_jsc/Tools/Net.js:612`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `forcepush` | `ReconstructedJS/src_jsc/Tools/Net.js:612 (wrapper-literal = true)` |
| `user_skill_id` | `Views/Dialog/SkillUpDialog.js:391` |
| `consume_user_skill_ids` | `Views/Dialog/SkillUpDialog.js:393` |
| `consume_user_item_ids` | `Views/Dialog/SkillUpDialog.js:395` |
| `consume_user_item_num` | `Views/Dialog/SkillUpDialog.js:397` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:60` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/SkillUpDialog.js:403` | `_yes` | `user_skill_id`, `consume_user_skill_ids`, `consume_user_item_ids`, `consume_user_item_num` | `inline` |
