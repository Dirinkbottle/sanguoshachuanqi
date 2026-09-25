# 协议参考：虎牢关（hulao.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **4** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`hulao.fight`](#hulaofight) | `?do=hulao.fight` | `requestHuLaoBattleGoToFight` | 1 |
| [`hulao.index`](#hulaoindex) | `?do=hulao.index` | `requestHulaoMain` | 5 |
| [`hulao.lineup`](#hulaolineup) | `?do=hulao.lineup` | `requestHuLaoBattleLineUp` | 2 |
| [`hulao.recieve`](#hulaorecieve) | `?do=hulao.recieve` | `requestHulaoRecieve` | 1 |

### hulao.fight

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=hulao.fight` | `ReconstructedJS/src_jsc/Cfg/Url.js:225` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:225` |
| 客户端封装 | `xs.Tools.Net.requestHuLaoBattleGoToFight`（注入 `forcePush=true`） [`ReconstructedJS/src_jsc/Tools/Net.js:2339`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `forcePush` | `ReconstructedJS/src_jsc/Tools/Net.js:2339 (wrapper-literal = true)` |
| `user_id` | `Views/HulaoBattle/GarrisonLayoutDialog.js:793` |
| `stage` | `Views/HulaoBattle/GarrisonLayoutDialog.js:793` |
| `mode` | `Views/HulaoBattle/GarrisonLayoutDialog.js:793` |
| `general_list` | `Views/HulaoBattle/GarrisonLayoutDialog.js:793` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `return_info` | `Views/HulaoBattle/GarrisonLayoutDialog.js:793` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:225` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/HulaoBattle/GarrisonLayoutDialog.js:793` | `GoToFightCallBack` | `user_id`, `stage`, `mode`, `general_list` | `inline` |

### hulao.index

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=hulao.index` | `ReconstructedJS/src_jsc/Cfg/Url.js:222` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:222` |
| 客户端封装 | `xs.Tools.Net.requestHulaoMain` [`ReconstructedJS/src_jsc/Tools/Net.js:2315`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/HulaoBattle/GarrisonLayoutDialog.js:861` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `return_info` | `Views/HulaoBattle/GarrisonLayoutDialog.js:861` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:222` | `Cfg.Url` |

**调用点**（5）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/HulaoBattle/GarrisonLayoutDialog.js:861` | `funcFinish` | `user_id` | `inline` |
| `Views/HulaoBattle/GarrisonLayoutDialog.js:908` | `funcFinish` | `user_id` | `inline` |
| `Views/HulaoBattle/GarrisonLayoutDialog.js:948` | `funcFinish` | `user_id` | `inline` |
| `Views/HulaoBattle/HulaoBattleMainView.js:179` | `getHulaoBattleReward` | `user_id` | `inline` |
| `Tools/Scene.js:116` | `gotoWorldBoss` | `user_id` | `inline` |

### hulao.lineup

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=hulao.lineup` | `ReconstructedJS/src_jsc/Cfg/Url.js:224` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:224` |
| 客户端封装 | `xs.Tools.Net.requestHuLaoBattleLineUp` [`ReconstructedJS/src_jsc/Tools/Net.js:2331`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/HulaoBattle/HulaoBattleMainView.js:100` |
| `stage` | `Views/HulaoBattle/HulaoBattleMainView.js:100` |
| `mode` | `Views/HulaoBattle/HulaoBattleMainView.js:100` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `return_info` | `Views/HulaoBattle/HulaoBattleMainView.js:100` |
| `return_info.left_info` | `Views/HulaoBattle/HulaoBattleMainView.js:100` |
| `return_info.left_info.general_list` | `Views/HulaoBattle/HulaoBattleMainView.js:100` |
| `return_info.left_info.total_fortune` | `Views/HulaoBattle/HulaoBattleMainView.js:100` |
| `return_info.left_info.consume_fortune` | `Views/HulaoBattle/HulaoBattleMainView.js:100` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:224` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/HulaoBattle/HulaoBattleMainView.js:100` | `goToGarrisonLayoutDialog` | `user_id`, `stage`, `mode` | `inline` |
| `Views/HulaoBattle/HulaoBattleSelectDifficulty.js:96` | `setDifficultyRequest` | `user_id`, `stage`, `mode` | `inline` |

### hulao.recieve

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=hulao.recieve` | `ReconstructedJS/src_jsc/Cfg/Url.js:223` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:223` |
| 客户端封装 | `xs.Tools.Net.requestHulaoRecieve` [`ReconstructedJS/src_jsc/Tools/Net.js:2323`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/HulaoBattle/HulaoBattleMainView.js:171` |
| `stage` | `Views/HulaoBattle/HulaoBattleMainView.js:171` |
| `mode` | `Views/HulaoBattle/HulaoBattleMainView.js:171` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `add_list` | `Views/HulaoBattle/HulaoBattleMainView.js:171` |
| `return_info` | `Views/HulaoBattle/HulaoBattleMainView.js:171` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:223` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/HulaoBattle/HulaoBattleMainView.js:171` | `getHulaoBattleReward` | `user_id`, `stage`, `mode` | `inline` |
