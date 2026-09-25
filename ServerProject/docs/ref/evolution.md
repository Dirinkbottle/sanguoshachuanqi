# 协议参考：武将进化（evolution.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **3** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`evolution.active`](#evolutionactive) | `?do=evolution.active` | `requestEvolutionActive` | 1 |
| [`evolution.changeFate`](#evolutionchangeFate) | `/index.php?do=evolution.changeFate` | `requestEvolutionChangeYuanFen` | 1 |
| [`evolution.open`](#evolutionopen) | `/index.php?do=evolution.open` | `requestEvolutionOpen` | 1 |

### evolution.active

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=evolution.active` | `ReconstructedJS/src_jsc/Cfg/Url.js:253` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:253` |
| 客户端封装 | `xs.Tools.Net.requestEvolutionActive` [`ReconstructedJS/src_jsc/Tools/Net.js:2565`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Awake/AwakeLayer.js:557` |
| `evolution_id` | `Views/Awake/AwakeLayer.js:557` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Awake/AwakeLayer.js:557` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:253` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Awake/AwakeLayer.js:557` | `ActivateCallback` | `user_id`, `evolution_id` | `inline` |

### evolution.changeFate

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=evolution.changeFate` | `ReconstructedJS/src_jsc/Cfg/Url.js:83` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:83` |
| 客户端封装 | `xs.Tools.Net.requestEvolutionChangeYuanFen` [`ReconstructedJS/src_jsc/Tools/Net.js:926`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `evolution_id` | `Views/Dialog/AwakeChangeYuanFenDialog.js:62` |
| `fate_ids` | `Views/Dialog/AwakeChangeYuanFenDialog.js:62` |
| `ignoreRandEvent` | `Views/Dialog/AwakeChangeYuanFenDialog.js:62` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:83` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/AwakeChangeYuanFenDialog.js:62` | `loadCCBI` | `evolution_id`, `fate_ids`, `ignoreRandEvent` | `inline` |

### evolution.open

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=evolution.open` | `ReconstructedJS/src_jsc/Cfg/Url.js:82` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:82` |
| 客户端封装 | `xs.Tools.Net.requestEvolutionOpen` [`ReconstructedJS/src_jsc/Tools/Net.js:918`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `evolution_id` | `Scene/Aga/AgaScene.js:972` |
| `ignoreRandEvent` | `Scene/Aga/AgaScene.js:972` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:82` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Aga/AgaScene.js:972` | `sendEvolutionReq` | `evolution_id`, `ignoreRandEvent` | `inline` |
