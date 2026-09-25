# 协议参考：许愿（wish.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **2** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`wish.get`](#wishget) | `/index.php?do=wish.get` | `requestWishingStart` | 1 |
| [`wish.info`](#wishinfo) | `/index.php?do=wish.info` | `requestWishingContent` | 1 |

### wish.get

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=wish.get` | `ReconstructedJS/src_jsc/Cfg/Url.js:68` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:68` |
| 客户端封装 | `xs.Tools.Net.requestWishingStart`（注入 `activity_push=true`, `forcepush=true`） [`ReconstructedJS/src_jsc/Tools/Net.js:769`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `activity_push` | `ReconstructedJS/src_jsc/Tools/Net.js:769 (wrapper-literal = true)` |
| `forcepush` | `ReconstructedJS/src_jsc/Tools/Net.js:769 (wrapper-literal = true)` |
| `user_id` | `Scene/Party/WishingScene.js:433` |
| `general_id` | `Scene/Party/WishingScene.js:433` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `return_info.wish_free` | `Scene/Party/WishingScene.js:433` |
| `return_info.item_index` | `Scene/Party/WishingScene.js:433` |
| `return_info.item_list` | `Scene/Party/WishingScene.js:433` |
| `return_info.add_list` | `Scene/Party/WishingScene.js:433` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:68` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Party/WishingScene.js:433` | `startWishing` | `user_id`, `general_id`, `forcepush` | `inline` |

### wish.info

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=wish.info` | `ReconstructedJS/src_jsc/Cfg/Url.js:67` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:67` |
| 客户端封装 | `xs.Tools.Net.requestWishingContent` [`ReconstructedJS/src_jsc/Tools/Net.js:761`] | |
| 响应交给的模型 | `mWishin.loadJson` | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Tools/Scene.js:323` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `return_info` | `Tools/Scene.js:323` |
| `return_info.wish_list` | `Tools/Scene.js:323` |

> 响应整体（或部分）交给 `mWishin.loadJson` 解析，其字段表见 [data-model.md](../data-model.md)。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:67` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Tools/Scene.js:323` | `gotoWishingScene` | `user_id` | `inline` |
