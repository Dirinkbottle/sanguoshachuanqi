# 协议参考：聊天（chat.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **2** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`chat.getMessage`](#chatgetMessage) | `/index.php?do=chat.getMessage` | `—` | 1 |
| [`chat.send`](#chatsend) | `/index.php?do=chat.send` | `—` | 1 |

### chat.getMessage

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=chat.getMessage` | `ReconstructedJS/src_jsc/Cfg/Url.js:133` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:133` |
| 客户端封装 | 无独立封装 | — |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Models/ChatMessageManager.js:49` |
| `limit` | `Models/ChatMessageManager.js:49` |
| `token` | `Models/ChatMessageManager.js:49` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `chat_msg` | `Models/ChatMessageManager.js:49` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:133` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Models/ChatMessageManager.js:49` | `requestNewMsgFromServer` | `user_id`, `limit`, `token` | `inline` |

### chat.send

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=chat.send` | `ReconstructedJS/src_jsc/Cfg/Url.js:134` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:134` |
| 客户端封装 | 无独立封装 | — |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/ChatContentLayer.js:204` |
| `channel` | `Views/ChatContentLayer.js:204` |
| `message` | `Views/ChatContentLayer.js:204` |
| `send_to` | `Views/ChatContentLayer.js:204` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `chat_msg` | `Views/ChatContentLayer.js:204` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:134` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/ChatContentLayer.js:204` | `init` | `user_id`, `channel`, `message`, `send_to` | `inline` |
