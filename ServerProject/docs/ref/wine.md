# 协议参考：酒馆招募（wine.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **3** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`wine.wine`](#winewine) | `/index.php?do=wine.wine` | `requireToast` | 4 |
| [`wine.wineGeneralInfo`](#winewineGeneralInfo) | `?do=wine.wineGeneralInfo` | `requestGeneralPreviewList` | 1 |
| [`wine.wineInfo`](#winewineInfo) | `/index.php?do=wine.wineInfo` | `requireToastTimes` | 0 |

### wine.wine

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=wine.wine` | `ReconstructedJS/src_jsc/Cfg/Url.js:47` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:47` |
| 客户端封装 | `xs.Tools.Net.requireToast`（注入 `forcepush=true`） [`ReconstructedJS/src_jsc/Tools/Net.js:564`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `forcepush` | `ReconstructedJS/src_jsc/Tools/Net.js:564 (wrapper-literal = true)` |
| `type` | `Scene/Store/ToastView.js:144` |
| `ignoreRandEvent` | `Scene/Store/ToastView.js:144` |
| `user_item_id` | `Scene/Store/ToastView.js:144` |
| `is_multi` | `Scene/Store/ToastView.js:178` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `user_wine_info` | `Scene/Store/ToastView.js (via this.onToastResult)` |
| `reward_info` | `Scene/Store/ToastView.js (via this.onToastResult)` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:47` | `Cfg.Url` |

**调用点**（4）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Store/ToastView.js:150` | `onToast_gold_single` | `type`, `ignoreRandEvent`, `user_item_id` | `this.onToastResult_gold` |
| `Scene/Store/ToastView.js:184` | `onToast_gold_ten` | `type`, `ignoreRandEvent`, `is_multi`, `user_item_id` | `this.onToastResult_tenGold` |
| `Scene/Store/ToastView.js:229` | `onToast_silver` | `type`, `ignoreRandEvent`, `user_item_id` | `this.onToastResult_silver` |
| `Scene/Store/ToastView.js:266` | `onToast_copper` | `type`, `ignoreRandEvent`, `user_item_id` | `this.onToastResult_copper` |

### wine.wineGeneralInfo

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=wine.wineGeneralInfo` | `ReconstructedJS/src_jsc/Cfg/Url.js:254` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:254` |
| 客户端封装 | `xs.Tools.Net.requestGeneralPreviewList` [`ReconstructedJS/src_jsc/Tools/Net.js:2589`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `getGradeList` | `Views/Dialog/GeneralPreviewDialog.js:129` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Dialog/GeneralPreviewDialog.js:131` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:254` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/GeneralPreviewDialog.js:131` | `requestService` | `getGradeList` | `this.requestCallback` |

### wine.wineInfo

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=wine.wineInfo` | `ReconstructedJS/src_jsc/Cfg/Url.js:46` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:46` |
| 客户端封装 | `xs.Tools.Net.requireToastTimes` [`ReconstructedJS/src_jsc/Tools/Net.js:556`] | |

**请求字段**：没有调用点，无法从调用方确定。

**响应字段**：没有调用点，无法从调用方确定。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:46` | `Cfg.Url` |

**调用点**：该动作没有独立的请求封装，URL 在代码里就地拼接；调用点即上面的字面量位置。
