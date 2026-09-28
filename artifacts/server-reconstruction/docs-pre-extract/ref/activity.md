# 协议参考：运营活动（activity.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **4** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`activity.exchange`](#activityexchange) | `/index.php?do=activity.exchange` | `requestPartyDouble` | 1 |
| [`activity.gamble`](#activitygamble) | `/index.php?do=activity.gamble` | `requestPartySlotMachines` | 1 |
| [`activity.receive`](#activityreceive) | `/index.php?do=activity.receive` | `requestPartyReceive` | 5 |
| [`activity.receivePower`](#activityreceivePower) | `/index.php?do=activity.receivePower` | `requestPartyReceivePower` | 1 |

### activity.exchange

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=activity.exchange` | `ReconstructedJS/src_jsc/Cfg/Url.js:25` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:25` |
| 客户端封装 | `xs.Tools.Net.requestPartyDouble` [`ReconstructedJS/src_jsc/Tools/Net.js:400`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Dialog/MultiItemExchangeDialog.js:116` |
| `instance_id` | `Views/Dialog/MultiItemExchangeDialog.js:116` |
| `exchange_id` | `Views/Dialog/MultiItemExchangeDialog.js:116` |
| `num` | `Views/Dialog/MultiItemExchangeDialog.js:116` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `activity_exchange` | `Views/Dialog/MultiItemExchangeDialog.js:116` |
| `add_list` | `Views/Dialog/MultiItemExchangeDialog.js:116` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:25` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/MultiItemExchangeDialog.js:116` | `onClick` | `user_id`, `instance_id`, `exchange_id`, `num` | `inline` |

### activity.gamble

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=activity.gamble` | `ReconstructedJS/src_jsc/Cfg/Url.js:24` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:24` |
| 客户端封装 | `xs.Tools.Net.requestPartySlotMachines`（注入 `activity_push=true`, `forcepush=true`） [`ReconstructedJS/src_jsc/Tools/Net.js:388`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `activity_push` | `ReconstructedJS/src_jsc/Tools/Net.js:388 (wrapper-literal = true)` |
| `forcepush` | `ReconstructedJS/src_jsc/Tools/Net.js:388 (wrapper-literal = true)` |
| `user_id` | `Views/Dialog/SlotMachinesActivities.js:351` |
| `instance_id` | `Views/Dialog/SlotMachinesActivities.js:351` |
| `forcePush` | `Views/Dialog/SlotMachinesActivities.js:351` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `gamble` | `Views/Dialog/SlotMachinesActivities.js:351` |
| `add_list.num` | `Views/Dialog/SlotMachinesActivities.js:351` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:24` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/SlotMachinesActivities.js:351` | `onStartBtn` | `user_id`, `instance_id`, `forcePush` | `inline` |

### activity.receive

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=activity.receive` | `ReconstructedJS/src_jsc/Cfg/Url.js:22` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:22` |
| 客户端封装 | `xs.Tools.Net.requestPartyReceive` [`ReconstructedJS/src_jsc/Tools/Net.js:368`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `instance_id` | `Scene/Party/MonthLegendDialog.js:96` |
| `extra_param` | `Scene/Party/MonthLegendDialog.js:96` |
| `cooperator` | `Scene/Party/MonthLegendDialog.js:96` |
| `cooperator_server_id` | `Scene/Party/MonthLegendDialog.js:96` |
| `forcepush` | `Scene/Party/MonthLegendDialog.js:96` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `activity_list` | `Scene/Party/PartyDialog.js:235` |
| `add_list` | `Tools/Net.js (via UseItemSuccess)` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:22` | `Cfg.Url` |

**调用点**（5）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Party/MonthLegendDialog.js:96` | `onBtnAwardCallBack` | `instance_id`, `extra_param`, `cooperator`, `cooperator_server_id`, `forcepush` | `inline` |
| `Scene/Party/PartyDialog.js:235` | `onBtnConfirmClickCallBack` | `instance_id`, `forcepush` | `inline` |
| `Scene/Party/PartyDialog.js:1334` | `onBtnAwardCallBack` | `instance_id`, `extra_param`, `cooperator`, `cooperator_server_id`, `forcepush` | `inline` |
| `Scene/Party/PartyDialogExt.js:263` | `onBtnConfirmClickCallBack` | `instance_id`, `forcepush` | `inline` |
| `Scene/Party/PartyDialogExt.js:1029` | `onBtnAwardCallBack` | `instance_id`, `extra_param`, `cooperator`, `cooperator_server_id`, `forcepush` | `inline` |

### activity.receivePower

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=activity.receivePower` | `ReconstructedJS/src_jsc/Cfg/Url.js:23` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:23` |
| 客户端封装 | `xs.Tools.Net.requestPartyReceivePower`（注入 `activity_push=true`, `forcepush=true`） [`ReconstructedJS/src_jsc/Tools/Net.js:376`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `activity_push` | `ReconstructedJS/src_jsc/Tools/Net.js:376 (wrapper-literal = true)` |
| `forcepush` | `ReconstructedJS/src_jsc/Tools/Net.js:376 (wrapper-literal = true)` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `timing_power` | `Scene/Party/PartyDialog.js:1693` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:23` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Party/PartyDialog.js:1693` | `init` | `forcepush` | `inline` |
