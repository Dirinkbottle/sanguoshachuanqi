# 协议参考：支付渠道（pay.*）

内联拼接的交易接口

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **1** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`pay.createTrade`](#paycreateTrade) | `(内联拼接，不含固定前缀)` | `—` | 0 |

### pay.createTrade

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `(内联拼接，不含固定前缀)` | `Views/Table/ChargeItemTableView.js:229` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `Views/Table/ChargeItemTableView.js:229` |
| 客户端封装 | 无独立封装 | — |

**请求字段**：没有调用点，无法从调用方确定。

**响应字段**：没有调用点，无法从调用方确定。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Views/Table/ChargeItemTableView.js:229` | `onResponse_CreateOrder` |

**调用点**：该动作没有独立的请求封装，URL 在代码里就地拼接；调用点即上面的字面量位置。
