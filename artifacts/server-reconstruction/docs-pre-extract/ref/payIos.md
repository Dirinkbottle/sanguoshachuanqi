# 协议参考：iOS 支付（payIos.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **1** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`payIos.iosCharge`](#payIosiosCharge) | `/index.php?do=payIos.iosCharge` | `requestCheckTransactionReceipt` | 2 |

### payIos.iosCharge

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=payIos.iosCharge` | `ReconstructedJS/src_jsc/Cfg/Url.js:130` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:130` |
| 客户端封装 | `xs.Tools.Net.requestCheckTransactionReceipt` [`ReconstructedJS/src_jsc/Tools/Net.js:1404`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Dialog/CheckOrderDialog.js:78` |
| `pay_type` | `Views/Dialog/CheckOrderDialog.js:78` |
| `receipt_data` | `Views/Dialog/CheckOrderDialog.js:78` |
| `special_channel` | `Views/Dialog/CheckOrderDialog.js:82` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `chargeInfo.flag` | `Views/Dialog/CheckOrderDialog.js:78` |
| `chargeInfo` | `Views/Dialog/CheckOrderDialog.js:78` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:130` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/CheckOrderDialog.js:78` | `requestCheckTransactionReceipt_Google` | `user_id`, `pay_type`, `receipt_data` | `this.onResponse_CheckTransactionReceipt` |
| `Views/Dialog/CheckOrderDialog.js:82` | `requestCheckTransactionReceipt` | `user_id`, `pay_type`, `receipt_data`, `special_channel` | `this.onResponse_CheckTransactionReceipt` |
