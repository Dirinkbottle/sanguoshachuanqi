# 协议参考：神秘商店（mystery.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **3** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`mystery.buy`](#mysterybuy) | `/?do=mystery.buy` | `requestMysteryStoreConvert` | 1 |
| [`mystery.info`](#mysteryinfo) | `/?do=mystery.info` | `requestMysteryStoreInfo` | 1 |
| [`mystery.refresh`](#mysteryrefresh) | `/?do=mystery.refresh` | `requestMysteryStoreUpdate` | 1 |

### mystery.buy

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=mystery.buy` | `ReconstructedJS/src_jsc/Cfg/Url.js:228` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:228` |
| 客户端封装 | `xs.Tools.Net.requestMysteryStoreConvert` [`ReconstructedJS/src_jsc/Tools/Net.js:2365`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Dialog/MysteryStoreDialog.js:513` |
| `pk_id` | `Views/Dialog/MysteryStoreDialog.js:513` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Dialog/MysteryStoreDialog.js:513` |
| `return_info` | `Views/Dialog/MysteryStoreDialog.js:513` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:228` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/MysteryStoreDialog.js:513` | `rightCB` | `user_id`, `pk_id` | `inline` |

### mystery.info

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=mystery.info` | `ReconstructedJS/src_jsc/Cfg/Url.js:226` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:226` |
| 客户端封装 | `xs.Tools.Net.requestMysteryStoreInfo` [`ReconstructedJS/src_jsc/Tools/Net.js:2349`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Dialog/MysteryStoreDialog.js:579` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Dialog/MysteryStoreDialog.js:579` |
| `return_info` | `Views/Dialog/MysteryStoreDialog.js:579` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:226` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/MysteryStoreDialog.js:579` | `showWithSurrenderInfo` | `user_id` | `inline` |

### mystery.refresh

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=mystery.refresh` | `ReconstructedJS/src_jsc/Cfg/Url.js:227` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:227` |
| 客户端封装 | `xs.Tools.Net.requestMysteryStoreUpdate` [`ReconstructedJS/src_jsc/Tools/Net.js:2357`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Dialog/MysteryStoreDialog.js:443` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Dialog/MysteryStoreDialog.js:443` |
| `return_info` | `Views/Dialog/MysteryStoreDialog.js:443` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:227` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/MysteryStoreDialog.js:443` | `_updateCallBack` | `user_id` | `inline` |
