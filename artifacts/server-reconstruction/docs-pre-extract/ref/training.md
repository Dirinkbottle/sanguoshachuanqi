# 协议参考：武将修炼（training.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **3** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`training.multiTraining`](#trainingmultiTraining) | `/index.php?do=training.multiTraining` | `requestGeneralOneStepTrainingThankYou` | 2 |
| [`training.training`](#trainingtraining) | `/index.php?do=training.training` | `requestGeneralTrainingThankYou` | 2 |
| [`training.trainingInfo`](#trainingtrainingInfo) | `/index.php?do=training.trainingInfo` | `requestGeneralTrainingInfo` | 1 |

### training.multiTraining

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=training.multiTraining` | `ReconstructedJS/src_jsc/Cfg/Url.js:79` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:79` |
| 客户端封装 | `xs.Tools.Net.requestGeneralOneStepTrainingThankYou`（注入 `activity_push=true`, `forcepush=true`） [`ReconstructedJS/src_jsc/Tools/Net.js:658`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `activity_push` | `ReconstructedJS/src_jsc/Tools/Net.js:658 (wrapper-literal = true)` |
| `forcepush` | `ReconstructedJS/src_jsc/Tools/Net.js:658 (wrapper-literal = true)` |
| `user_id` | `Scene/Training/GeneralTraningScene.js:583` |
| `general_leader_id` | `Scene/Training/GeneralTraningScene.js:583` |
| `double` | `Scene/Training/GeneralTraningScene.js:583` |
| `team_id` | `Scene/Training/GeneralTraningScene.js:583` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Scene/Training/GeneralTraningScene.js:583` |
| `is_double` | `Scene/Training/GeneralTraningScene.js:583` |
| `info` | `Scene/Training/GeneralTraningScene.js:583` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:79` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Training/GeneralTraningScene.js:583` | `oneStepTyCallBack` | `user_id`, `general_leader_id`, `double`, `team_id` | `inline` |
| `Scene/Training/GeneralTraningScene.js:634` | `oneStepDoubleTyCallBack` | `user_id`, `general_leader_id`, `double`, `team_id` | `inline` |

### training.training

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=training.training` | `ReconstructedJS/src_jsc/Cfg/Url.js:78` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:78` |
| 客户端封装 | `xs.Tools.Net.requestGeneralTrainingThankYou`（注入 `activity_push=true`, `forcepush=true`） [`ReconstructedJS/src_jsc/Tools/Net.js:646`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `activity_push` | `ReconstructedJS/src_jsc/Tools/Net.js:646 (wrapper-literal = true)` |
| `forcepush` | `ReconstructedJS/src_jsc/Tools/Net.js:646 (wrapper-literal = true)` |
| `doubleTankYouCallback` | `Scene/Training/GeneralTraningScene.js:896` |
| `user_training_id` | `Scene/Training/GeneralTraningScene.js:898` |
| `double` | `Scene/Training/GeneralTraningScene.js:900` |
| `team_id` | `Scene/Training/GeneralTraningScene.js:902` |
| `thankYouSuccessCallback` | `Scene/Training/GeneralTraningScene.js:921` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `is_double` | `Scene/Training/GeneralTraningScene.js:904` |
| `info` | `Scene/Training/GeneralTraningScene.js:904` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:78` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Training/GeneralTraningScene.js:904` | `thankYouCallback` | `doubleTankYouCallback`, `user_training_id`, `double`, `team_id` | `this.thankYouSuccessCallback` |
| `Scene/Training/GeneralTraningScene.js:931` | `doubleTankYouCallback` | `thankYouSuccessCallback`, `user_training_id`, `double`, `team_id` | `this.thankYouSuccessCallback` |

### training.trainingInfo

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=training.trainingInfo` | `ReconstructedJS/src_jsc/Cfg/Url.js:77` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:77` |
| 客户端封装 | `xs.Tools.Net.requestGeneralTrainingInfo` [`ReconstructedJS/src_jsc/Tools/Net.js:638`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `refreshGeneralTrainingInfoSuccess` | `Scene/Training/GeneralTraningScene.js:781` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `training_info` | `Scene/Training/GeneralTraningScene.js:783` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:77` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Training/GeneralTraningScene.js:783` | `refreshGeneralTrainingInfo` | `refreshGeneralTrainingInfoSuccess` | `this.refreshGeneralTrainingInfoSuccess` |
