# 协议参考：美人（beauty.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **6** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`beauty.addBeautyExperience`](#beautyaddBeautyExperience) | `/?do=beauty.addBeautyExperience` | `requestBeautyAddExp` | 1 |
| [`beauty.beautyCruise`](#beautybeautyCruise) | `/?do=beauty.beautyCruise` | `requestBeautySatrt` | 1 |
| [`beauty.beautyCruiseOver`](#beautybeautyCruiseOver) | `/?do=beauty.beautyCruiseOver` | `requestBeautyEnd` | 2 |
| [`beauty.beautyExchange`](#beautybeautyExchange) | `/?do=beauty.beautyExchange` | `requestBeautyExchange` | 1 |
| [`beauty.getBeautyExchangeList`](#beautygetBeautyExchangeList) | `/?do=beauty.getBeautyExchangeList` | `requestBeautyExchangeList` | 1 |
| [`beauty.init`](#beautyinit) | `/?do=beauty.init` | `requestBeautyInit` | 1 |

### beauty.addBeautyExperience

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=beauty.addBeautyExperience` | `ReconstructedJS/src_jsc/Cfg/Url.js:258` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:258` |
| 客户端封装 | `xs.Tools.Net.requestBeautyAddExp` [`ReconstructedJS/src_jsc/Tools/Net.js:2621`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_item_id` | `Scene/Beauty/BeautyScene.js:1082` |
| `item_num` | `Scene/Beauty/BeautyScene.js:1084` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Scene/Beauty/BeautyScene.js:1086` |
| `add_list.addExperience` | `Scene/Beauty/BeautyScene.js:1086` |
| `add_list.attack` | `Scene/Beauty/BeautyScene.js:1086` |
| `add_list.defense` | `Scene/Beauty/BeautyScene.js:1086` |
| `add_list.hp` | `Scene/Beauty/BeautyScene.js:1086` |
| `add_list.wisdom` | `Scene/Beauty/BeautyScene.js:1086` |
| `add_list.talentLevel` | `Scene/Beauty/BeautyScene.js:1086` |
| `add_list.curMaxLevle` | `Scene/Beauty/BeautyScene.js:1086` |
| `add_list.isUplevel` | `Scene/Beauty/BeautyScene.js:1086` |
| `error_code` | `Scene/Beauty/BeautyScene.js:1086` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:258` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Beauty/BeautyScene.js:1086` | `requestBeautyAddExp` | `user_item_id`, `item_num` | `this.requestBeautyAddExpCallback` |

### beauty.beautyCruise

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=beauty.beautyCruise` | `ReconstructedJS/src_jsc/Cfg/Url.js:256` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:256` |
| 客户端封装 | `xs.Tools.Net.requestBeautySatrt` [`ReconstructedJS/src_jsc/Tools/Net.js:2605`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `beauty_id` | `Scene/Beauty/BeautyScene.js:862` |
| `talent_level` | `Scene/Beauty/BeautyScene.js:864` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Scene/Beauty/BeautyScene.js:866` |
| `beauty_info.end_time` | `Scene/Beauty/BeautyScene.js:866` |
| `error_code` | `Scene/Beauty/BeautyScene.js:866` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:256` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Beauty/BeautyScene.js:866` | `requestBeautySatrt` | `beauty_id`, `talent_level` | `this.requestBeautySatrtCallback` |

### beauty.beautyCruiseOver

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=beauty.beautyCruiseOver` | `ReconstructedJS/src_jsc/Cfg/Url.js:257` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:257` |
| 客户端封装 | `xs.Tools.Net.requestBeautyEnd` [`ReconstructedJS/src_jsc/Tools/Net.js:2613`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `Constant_Beauty_Over_Normal` | `Scene/Beauty/BeautyScene.js:978` |
| `type` | `Scene/Beauty/BeautyScene.js:980` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Scene/Beauty/BeautyScene.js:985` |
| `beauty_cruise_info` | `Scene/Beauty/BeautyScene.js:985` |
| `error_code` | `Scene/Beauty/BeautyScene.js:985` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:257` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Beauty/BeautyScene.js:985` | `requestBeautyEnd` | `Constant_Beauty_Over_Normal`, `type` | `this.requestBeautyEndCallback` |
| `Scene/Beauty/BeautyScene.js:1013` | `rightCB` | `Constant_Beauty_Over_Normal`, `type` | `this.requestBeautyEndCallback` |

### beauty.beautyExchange

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=beauty.beautyExchange` | `ReconstructedJS/src_jsc/Cfg/Url.js:260` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:260` |
| 客户端封装 | `xs.Tools.Net.requestBeautyExchange` [`ReconstructedJS/src_jsc/Tools/Net.js:2637`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Dialog/BeautyShopDialog.js:393` |
| `pk_id` | `Views/Dialog/BeautyShopDialog.js:393` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Dialog/BeautyShopDialog.js:393` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:260` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/BeautyShopDialog.js:393` | `rightCB` | `user_id`, `pk_id` | `inline` |

### beauty.getBeautyExchangeList

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=beauty.getBeautyExchangeList` | `ReconstructedJS/src_jsc/Cfg/Url.js:259` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:259` |
| 客户端封装 | `xs.Tools.Net.requestBeautyExchangeList` [`ReconstructedJS/src_jsc/Tools/Net.js:2629`] | |

**请求字段**：该封装无显式字段（调用点：不发送 data）。实际仍会带上公共字段。

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Dialog/BeautyShopDialog.js:443` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:259` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/BeautyShopDialog.js:443` | `showWithSurrenderInfo` | 不发送 data | `inline` |

### beauty.init

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=beauty.init` | `ReconstructedJS/src_jsc/Cfg/Url.js:255` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:255` |
| 客户端封装 | `xs.Tools.Net.requestBeautyInit` [`ReconstructedJS/src_jsc/Tools/Net.js:2597`] | |
| 响应交给的模型 | `mBeautyData.loadJson` | |

**请求字段**：该封装无显式字段（调用点：不发送 data）。实际仍会带上公共字段。

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

> 响应整体（或部分）交给 `mBeautyData.loadJson` 解析，其字段表见 [data-model.md](../data-model.md)。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:255` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Tools/Scene.js:248` | `gotoBeautyScene` | 不发送 data | `inline` |
