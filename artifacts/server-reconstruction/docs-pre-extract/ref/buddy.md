# 协议参考：副将（buddy.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **2** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`buddy.activatePosition`](#buddyactivatePosition) | `?do=buddy.activatePosition` | `requestActivateBuddyPosition` | 1 |
| [`buddy.setBuddy`](#buddysetBuddy) | `?do=buddy.setBuddy` | `requestSetBuddy` | 1 |

### buddy.activatePosition

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=buddy.activatePosition` | `ReconstructedJS/src_jsc/Cfg/Url.js:152` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:152` |
| 客户端封装 | `xs.Tools.Net.requestActivateBuddyPosition` [`ReconstructedJS/src_jsc/Tools/Net.js:1791`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Scene/Buddy/BuddyView.js:343` |
| `position` | `Scene/Buddy/BuddyView.js:343` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:152` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Buddy/BuddyView.js:343` | `requestActivateBuddyPosition` | `user_id`, `position` | `inline` |

### buddy.setBuddy

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=buddy.setBuddy` | `ReconstructedJS/src_jsc/Cfg/Url.js:153` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:153` |
| 客户端封装 | `xs.Tools.Net.requestSetBuddy` [`ReconstructedJS/src_jsc/Tools/Net.js:1799`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Scene/Buddy/BuddyView.js:378` |
| `user_general_id` | `Scene/Buddy/BuddyView.js:378` |
| `position` | `Scene/Buddy/BuddyView.js:378` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:153` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Buddy/BuddyView.js:378` | `requestSetBuddy` | `user_id`, `user_general_id`, `position` | `inline` |
