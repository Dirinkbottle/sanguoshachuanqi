# 协议参考：经脉（meridian.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **2** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`meridian.light`](#meridianlight) | `?do=meridian.light` | `requestLightMeridian` | 1 |
| [`meridian.multiLight`](#meridianmultiLight) | `?do=meridian.multiLight` | `requestMultiLightMeridian` | 1 |

### meridian.light

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=meridian.light` | `ReconstructedJS/src_jsc/Cfg/Url.js:244` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:244` |
| 客户端封装 | `xs.Tools.Net.requestLightMeridian` [`ReconstructedJS/src_jsc/Tools/Net.js:2493`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Meridians/MeridiansMainView.js:577` |
| `user_general_id` | `Views/Meridians/MeridiansMainView.js:577` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:244` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Meridians/MeridiansMainView.js:577` | `touchMeridiansCallBack` | `user_id`, `user_general_id` | `inline` |

### meridian.multiLight

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=meridian.multiLight` | `ReconstructedJS/src_jsc/Cfg/Url.js:245` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:245` |
| 客户端封装 | `xs.Tools.Net.requestMultiLightMeridian` [`ReconstructedJS/src_jsc/Tools/Net.js:2501`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Meridians/MeridiansMainView.js:545` |
| `user_general_id` | `Views/Meridians/MeridiansMainView.js:545` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:245` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Meridians/MeridiansMainView.js:545` | `touchAllMeridiansCallBack` | `user_id`, `user_general_id` | `inline` |
