# 协议参考：充值下单（product.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **4** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`product.checkOrder`](#productcheckOrder) | `/index.php?do=product.checkOrder` | `requestOrderStatus` | 2 |
| [`product.createOrder`](#productcreateOrder) | `/index.php?do=product.createOrder` | `requestCreateOrder` | 1 |
| [`product.getList`](#productgetList) | `/index.php?do=product.getList` | `requestChargeItemList` | 1 |
| [`product.notify`](#productnotify) | `/index.php?do=product.notify` | `postPaySucessNotify` | 0 |

### product.checkOrder

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=product.checkOrder` | `ReconstructedJS/src_jsc/Cfg/Url.js:131` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:131` |
| 客户端封装 | `xs.Tools.Net.requestOrderStatus`（注入 `email_push=true`） [`ReconstructedJS/src_jsc/Tools/Net.js:1412`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `email_push` | `ReconstructedJS/src_jsc/Tools/Net.js:1412 (wrapper-literal = true)` |
| `order_ids` | `Views/Dialog/CheckOrderDialog.js:131` |
| `forcepush` | `Views/Dialog/CheckOrderDialog.js:131` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `order_list` | `Views/Dialog/CheckOrderDialog.js:131` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:131` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/CheckOrderDialog.js:131` | `onResponse_Notify` | `order_ids`, `forcepush` | `this.onResponse_Status` |
| `Views/Dialog/CheckOrderDialog.js:180` | `onResponse_Status_Err` | `order_ids` | `this.onResponse_Status` |

### product.createOrder

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=product.createOrder` | `ReconstructedJS/src_jsc/Cfg/Url.js:128` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:128` |
| 客户端封装 | `xs.Tools.Net.requestCreateOrder` [`ReconstructedJS/src_jsc/Tools/Net.js:1388`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `product_id` | `Views/Table/ChargeItemTableView.js:161` |
| `s_type` | `Views/Table/ChargeItemTableView.js:164` |
| `special_channel` | `Views/Table/ChargeItemTableView.js:166` |
| `order_type` | `Views/Table/ChargeItemTableView.js:189` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `return_info.order_id` | `Views/Table/ChargeItemTableView.js:195` |
| `return_info.user_id` | `Views/Table/ChargeItemTableView.js:195` |
| `return_info.product_price` | `Views/Table/ChargeItemTableView.js:195` |
| `return_info.ext` | `Views/Table/ChargeItemTableView.js:195` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:128` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Table/ChargeItemTableView.js:195` | `rightCB` | `product_id`, `s_type`, `special_channel`, `order_type` | `this.onResponse_CreateOrder` |

### product.getList

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=product.getList` | `ReconstructedJS/src_jsc/Cfg/Url.js:127` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:127` |
| 客户端封装 | `xs.Tools.Net.requestChargeItemList` [`ReconstructedJS/src_jsc/Tools/Net.js:1380`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `special_channel` | `Views/Table/ChargeItemTableView.js:39` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `product_list` | `Views/Table/ChargeItemTableView.js:68` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:127` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Table/ChargeItemTableView.js:68` | `getProductList` | `special_channel` | `this.onResponse` |

### product.notify

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=product.notify` | `ReconstructedJS/src_jsc/Cfg/Url.js:129` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:129` |
| 客户端封装 | `xs.Tools.Net.postPaySucessNotify` [`ReconstructedJS/src_jsc/Tools/Net.js:1396`] | |

**请求字段**：没有调用点，无法从调用方确定。

**响应字段**：没有调用点，无法从调用方确定。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:129` | `Cfg.Url` |

**调用点**：该动作没有独立的请求封装，URL 在代码里就地拼接；调用点即上面的字面量位置。
