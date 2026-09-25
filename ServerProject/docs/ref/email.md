# 协议参考：邮件（email.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **3** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`email.accept`](#emailaccept) | `/index.php?do=email.accept` | `requestMailAttach` | 2 |
| [`email.getList`](#emailgetList) | `/index.php?do=email.getList` | `requestMail` | 2 |
| [`email.send`](#emailsend) | `/index.php?do=email.send` | `requestSendMessage` | 1 |

### email.accept

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=email.accept` | `ReconstructedJS/src_jsc/Cfg/Url.js:107` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:107` |
| 客户端封装 | `xs.Tools.Net.requestMailAttach`（注入 `forcepush=true`, `email_push=true`） [`ReconstructedJS/src_jsc/Tools/Net.js:1176`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `forcepush` | `ReconstructedJS/src_jsc/Tools/Net.js:1176 (wrapper-literal = true)` |
| `email_push` | `ReconstructedJS/src_jsc/Tools/Net.js:1176 (wrapper-literal = true)` |
| `email_id` | `Views/Table/Cell/MailTableViewCell.js:142` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `add_list` | `Tools/Net.js (via UseItemSuccess)` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:107` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Table/Cell/MailTableViewCell.js:142` | `updateCcbForGift` | `email_id` | `inline` |
| `Scene/Mail/MailView.js:54` | `onBtnClick` | `email_id` | `this.onGetMailAttchCb` |

### email.getList

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=email.getList` | `ReconstructedJS/src_jsc/Cfg/Url.js:104` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:104` |
| 客户端封装 | `xs.Tools.Net.requestMail`（注入 `forcepush=true`, `email_push=true`） [`ReconstructedJS/src_jsc/Tools/Net.js:1164`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `forcepush` | `ReconstructedJS/src_jsc/Tools/Net.js:1164 (wrapper-literal = true)` |
| `email_push` | `ReconstructedJS/src_jsc/Tools/Net.js:1164 (wrapper-literal = true)` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `email_list` | `Models/Mail.js:91` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:104` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Models/Mail.js:91` | `queryMailList` | `forcepush` | `this.onResponse` |
| `Scene/Mail/MailSystemScene.js:77` | `updateData` | `forcepush` | `this.onResponse` |

### email.send

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=email.send` | `ReconstructedJS/src_jsc/Cfg/Url.js:113` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:113` |
| 客户端封装 | `xs.Tools.Net.requestSendMessage` [`ReconstructedJS/src_jsc/Tools/Net.js:1276`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `send_to` | `Views/Dialog/SendMessageDialog.js:121` |
| `title` | `Views/Dialog/SendMessageDialog.js:121` |
| `content` | `Views/Dialog/SendMessageDialog.js:121` |
| `send_type` | `Views/Dialog/SendMessageDialog.js:121` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:113` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/SendMessageDialog.js:121` | `onSendBtnClick` | `send_to`, `title`, `content`, `send_type` | `this.onResponse` |
