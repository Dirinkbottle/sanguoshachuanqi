# 协议参考：实名认证（idcard.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **3** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`idcard.getCode`](#idcardgetCode) | `/?do=idcard.getCode` | `requestAuthenticationCode` | 1 |
| [`idcard.save`](#idcardsave) | `/index.php?do=idcard.save` | `requestAutonymApprove` | 1 |
| [`idcard.saveMobile`](#idcardsaveMobile) | `/?do=idcard.saveMobile` | `requestSaveMoblieTel` | 1 |

### idcard.getCode

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=idcard.getCode` | `ReconstructedJS/src_jsc/Cfg/Url.js:247` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:247` |
| 客户端封装 | `xs.Tools.Net.requestAuthenticationCode` [`ReconstructedJS/src_jsc/Tools/Net.js:2517`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Dialog/VerificationTelDialog.js:114` |
| `mobile` | `Views/Dialog/VerificationTelDialog.js:114` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:247` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/VerificationTelDialog.js:114` | `init` | `user_id`, `mobile` | `inline` |

### idcard.save

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=idcard.save` | `ReconstructedJS/src_jsc/Cfg/Url.js:246` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:246` |
| 客户端封装 | `xs.Tools.Net.requestAutonymApprove` [`ReconstructedJS/src_jsc/Tools/Net.js:2509`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Dialog/IdCardBindingDialog.js:171` |
| `user_name` | `Views/Dialog/IdCardBindingDialog.js:171` |
| `idcard` | `Views/Dialog/IdCardBindingDialog.js:171` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:246` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/IdCardBindingDialog.js:171` | `onBindingBtnClick` | `user_id`, `user_name`, `idcard` | `inline` |

### idcard.saveMobile

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=idcard.saveMobile` | `ReconstructedJS/src_jsc/Cfg/Url.js:248` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:248` |
| 客户端封装 | `xs.Tools.Net.requestSaveMoblieTel` [`ReconstructedJS/src_jsc/Tools/Net.js:2525`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Dialog/VerificationTelDialog.js:136` |
| `mobile` | `Views/Dialog/VerificationTelDialog.js:136` |
| `mobile_code` | `Views/Dialog/VerificationTelDialog.js:136` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Dialog/VerificationTelDialog.js:136` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:248` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/VerificationTelDialog.js:136` | `init` | `user_id`, `mobile`, `mobile_code` | `inline` |
