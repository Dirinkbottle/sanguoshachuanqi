# 协议参考：公告与兑换码（menu.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **2** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`menu.notice`](#menunotice) | `/index.php?do=menu.notice` | `requestAnnouncementRead` | 1 |
| [`menu.userCdkey`](#menuuserCdkey) | `/index.php?do=menu.userCdkey` | `requestExchangeCDKey` | 1 |

### menu.notice

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=menu.notice` | `ReconstructedJS/src_jsc/Cfg/Url.js:65` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:65` |
| 客户端封装 | `xs.Tools.Net.requestAnnouncementRead` [`ReconstructedJS/src_jsc/Tools/Net.js:689`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `product_line` | `Views/Dialog/AnnouncementDialog.js:313` |
| `channel_id` | `Views/Dialog/AnnouncementDialog.js:313` |
| `type` | `Views/Dialog/AnnouncementDialog.js:313` |
| `server_id` | `Views/Dialog/AnnouncementDialog.js:313` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `notice` | `Views/Dialog/AnnouncementDialog.js:313` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:65` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/AnnouncementDialog.js:313` | `readDataFromServer` | `product_line`, `channel_id`, `type`, `server_id` | `inline` |

### menu.userCdkey

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=menu.userCdkey` | `ReconstructedJS/src_jsc/Cfg/Url.js:110` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:110` |
| 客户端封装 | `xs.Tools.Net.requestExchangeCDKey` [`ReconstructedJS/src_jsc/Tools/Net.js:1188`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `cdkey_string` | `Views/Dialog/ExchangeCDKey.js:73` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `add_list` | `Tools/Net.js (via UseItemSuccess)` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:110` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/ExchangeCDKey.js:73` | `onExchange` | `cdkey_string` | `this.onResponse` |
