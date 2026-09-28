# 协议参考：魂石商店（spiritStoneGoods.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **2** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`spiritStoneGoods.buy`](#spiritStoneGoodsbuy) | `/?do=spiritStoneGoods.buy` | `requestSpiritStoneConvert` | 1 |
| [`spiritStoneGoods.getList`](#spiritStoneGoodsgetList) | `/?do=spiritStoneGoods.getList` | `requestSpiritStoneInfo` | 1 |

### spiritStoneGoods.buy

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=spiritStoneGoods.buy` | `ReconstructedJS/src_jsc/Cfg/Url.js:234` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:234` |
| 客户端封装 | `xs.Tools.Net.requestSpiritStoneConvert` [`ReconstructedJS/src_jsc/Tools/Net.js:2413`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Dialog/SpiritStoneDialog.js:367` |
| `pk_id` | `Views/Dialog/SpiritStoneDialog.js:367` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Dialog/SpiritStoneDialog.js:367` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:234` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/SpiritStoneDialog.js:367` | `rightCB` | `user_id`, `pk_id` | `inline` |

### spiritStoneGoods.getList

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=spiritStoneGoods.getList` | `ReconstructedJS/src_jsc/Cfg/Url.js:233` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:233` |
| 客户端封装 | `xs.Tools.Net.requestSpiritStoneInfo` [`ReconstructedJS/src_jsc/Tools/Net.js:2405`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Dialog/SpiritStoneDialog.js:417` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Dialog/SpiritStoneDialog.js:417` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:233` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/SpiritStoneDialog.js:417` | `showWithSurrenderInfo` | `user_id` | `inline` |
