# 协议参考：任务（task.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **3** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`task.getList`](#taskgetList) | `?do=task.getList` | `requestTaskGetList` | 1 |
| [`task.multiRecieve`](#taskmultiRecieve) | `?do=task.multiRecieve` | `requestTaskMultiRecieve` | 1 |
| [`task.recieve`](#taskrecieve) | `?do=task.recieve` | `requestTaskRecieve` | 1 |

### task.getList

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=task.getList` | `ReconstructedJS/src_jsc/Cfg/Url.js:149` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:149` |
| 客户端封装 | `xs.Tools.Net.requestTaskGetList` [`ReconstructedJS/src_jsc/Tools/Net.js:1767`] | |
| 响应交给的模型 | `xs.Models.Task.createWithData` | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `forcepush` | `Views/Dialog/DailyTaskDialog.js:84` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `list.length` | `Views/Dialog/DailyTaskDialog.js:84` |
| `list` | `Views/Dialog/DailyTaskDialog.js:84` |

> 响应整体（或部分）交给 `xs.Models.Task.createWithData` 解析，其字段表见 [data-model.md](../data-model.md)。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:149` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/DailyTaskDialog.js:84` | `onEnter` | `forcepush` | `this.taskGetListCallBack` |

### task.multiRecieve

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=task.multiRecieve` | `ReconstructedJS/src_jsc/Cfg/Url.js:150` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:150` |
| 客户端封装 | `xs.Tools.Net.requestTaskMultiRecieve` [`ReconstructedJS/src_jsc/Tools/Net.js:1775`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Dialog/DailyTaskDialog.js:58` |
| `forcepush` | `Views/Dialog/DailyTaskDialog.js:58` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `task_list` | `Views/Dialog/DailyTaskDialog.js:58` |
| `result` | `Views/Dialog/DailyTaskDialog.js:58` |
| `list` | `Views/Dialog/DailyTaskDialog.js:58` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:150` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/DailyTaskDialog.js:58` | `getAllAwardButtonTouch` | `user_id`, `forcepush` | `inline` |

### task.recieve

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=task.recieve` | `ReconstructedJS/src_jsc/Cfg/Url.js:151` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:151` |
| 客户端封装 | `xs.Tools.Net.requestTaskRecieve` [`ReconstructedJS/src_jsc/Tools/Net.js:1783`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Table/Cell/TaskCell.js:241` |
| `task_pk_id` | `Views/Table/Cell/TaskCell.js:241` |
| `forcepush` | `Views/Table/Cell/TaskCell.js:241` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Table/Cell/TaskCell.js:241` |
| `list` | `Views/Table/Cell/TaskCell.js:241` |
| `task_list` | `Views/Table/Cell/TaskCell.js:241` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:151` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Table/Cell/TaskCell.js:241` | `requestTaskRecieve` | `user_id`, `task_pk_id`, `forcepush` | `inline` |
