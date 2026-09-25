# 协议参考：脉轮（pulse.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **3** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`pulse.getList`](#pulsegetList) | `?do=pulse.getList` | `requestMeridiansMainInfo` | 1 |
| [`pulse.practicePulse`](#pulsepracticePulse) | `?do=pulse.practicePulse` | `requestPracticeMeridians` | 1 |
| [`pulse.pulseCollect`](#pulsepulseCollect) | `?do=pulse.pulseCollect` | `requestCollectMeridians` | 1 |

### pulse.getList

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=pulse.getList` | `ReconstructedJS/src_jsc/Cfg/Url.js:241` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:241` |
| 客户端封装 | `xs.Tools.Net.requestMeridiansMainInfo` [`ReconstructedJS/src_jsc/Tools/Net.js:2469`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Meridians/PracticeMeridiansMainView.js:364` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:241` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Meridians/PracticeMeridiansMainView.js:364` | `onEnterTransitionDidFinish` | `user_id` | `inline` |

### pulse.practicePulse

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=pulse.practicePulse` | `ReconstructedJS/src_jsc/Cfg/Url.js:242` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:242` |
| 客户端封装 | `xs.Tools.Net.requestPracticeMeridians` [`ReconstructedJS/src_jsc/Tools/Net.js:2477`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Meridians/PracticeMeridiansMainView.js:212` |
| `pulse_count` | `Views/Meridians/PracticeMeridiansMainView.js:212` |
| `pulse_num` | `Views/Meridians/PracticeMeridiansMainView.js:212` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `pulse_multiple` | `Views/Meridians/PracticeMeridiansMainView.js:212` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:242` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Meridians/PracticeMeridiansMainView.js:212` | `_requestGoToMeridiansCall` | `user_id`, `pulse_count`, `pulse_num` | `inline` |

### pulse.pulseCollect

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=pulse.pulseCollect` | `ReconstructedJS/src_jsc/Cfg/Url.js:243` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:243` |
| 客户端封装 | `xs.Tools.Net.requestCollectMeridians` [`ReconstructedJS/src_jsc/Tools/Net.js:2485`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Meridians/PracticeMeridiansMainView.js:267` |
| `pulse_count` | `Views/Meridians/PracticeMeridiansMainView.js:267` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:243` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Meridians/PracticeMeridiansMainView.js:267` | `_requestCollectMeridians` | `user_id`, `pulse_count` | `inline` |
