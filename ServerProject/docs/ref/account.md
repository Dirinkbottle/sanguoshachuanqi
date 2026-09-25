# 协议参考：账号服（account.*）

选服、公告、账号绑定、实名、推送注册

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **5** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`account.bindWithBf`](#accountbindWithBf) | `/index.php?do=account.bindWithBf` | `requestBindingBFAccount` | 1 |
| [`account.bindWithEasysdk`](#accountbindWithEasysdk) | `/index.php?do=account.bindWithEasysdk` | `requestBindingEasyAccount` | 1 |
| [`account.bindWithFacebook`](#accountbindWithFacebook) | `/index.php?do=account.bindWithFacebook` | `requestBindingFBAccount` | 1 |
| [`account.chgAccountInfo`](#accountchgAccountInfo) | `/index.php?do=account.chgAccountInfo` | `requestRecordPhoneNum` | 1 |
| [`account.index`](#accountindex) | `/index.php?do=account.index` | `requestGetServerList` | 12 |

### account.bindWithBf

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=account.bindWithBf` | `ReconstructedJS/src_jsc/Cfg/Url.js:135` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:135` |
| 客户端封装 | `xs.Tools.Net.requestBindingBFAccount` [`ReconstructedJS/src_jsc/Tools/Net.js:1432`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `uid` | `Views/Dialog/BindingDialog.js:318` |
| `sessionId` | `Views/Dialog/BindingDialog.js:318` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:135` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/BindingDialog.js:318` | `onBfSdkLoginSucess` | `uid`, `sessionId` | `inline` |

### account.bindWithEasysdk

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=account.bindWithEasysdk` | `ReconstructedJS/src_jsc/Cfg/Url.js:137` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:137` |
| 客户端封装 | `xs.Tools.Net.requestBindingEasyAccount` [`ReconstructedJS/src_jsc/Tools/Net.js:1448`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `uid` | `Scene/Setting/SettingScene.js:259` |
| `easy_uid` | `Scene/Setting/SettingScene.js:259` |
| `session_id` | `Scene/Setting/SettingScene.js:259` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:137` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Setting/SettingScene.js:259` | `getEasySessionIdforBinding` | `uid`, `easy_uid`, `session_id` | `inline` |

### account.bindWithFacebook

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=account.bindWithFacebook` | `ReconstructedJS/src_jsc/Cfg/Url.js:136` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:136` |
| 客户端封装 | `xs.Tools.Net.requestBindingFBAccount` [`ReconstructedJS/src_jsc/Tools/Net.js:1440`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `uid` | `Scene/Setting/SettingScene.js:233` |
| `sessionId` | `Scene/Setting/SettingScene.js:233` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:136` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Setting/SettingScene.js:233` | `getNewSessionId` | `uid`, `sessionId` | `inline` |

### account.chgAccountInfo

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=account.chgAccountInfo` | `ReconstructedJS/src_jsc/Cfg/Url.js:138` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:138` |
| 客户端封装 | `xs.Tools.Net.requestRecordPhoneNum` [`ReconstructedJS/src_jsc/Tools/Net.js:1464`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `uid` | `Views/Dialog/BindingTelDialog.js:131` |
| `mobile_num` | `Views/Dialog/BindingTelDialog.js:131` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:138` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/BindingTelDialog.js:131` | `init` | `uid`, `mobile_num` | `inline` |

### account.index

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=account.index` | `ReconstructedJS/src_jsc/Cfg/Url.js:120` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:120` |
| 客户端封装 | `xs.Tools.Net.requestGetServerList` [`ReconstructedJS/src_jsc/Tools/Net.js:1284`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `uid` | `Scene/Login/LoginScene_AnySdk.js:440` |
| `logintype` | `Scene/Login/LoginScene_AnySdk.js:440` |
| `app_indentify` | `Scene/Login/LoginScene_AnySdk.js:440` |
| `extra` | `Scene/Login/LoginScene_AnySdk.js:440` |
| `sessionId` | `Scene/Login/LoginScene_AnySdk.js:701` |
| `session` | `Scene/Login/LoginScene_EasyGuestSdk.js:391` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `account_info.account_uid` | `Scene/Login/LoginScene_AnySdk.js:440` |
| `server_params` | `Scene/Login/LoginScene_AnySdk.js:440` |
| `token` | `Scene/Login/LoginScene_AnySdk.js:440` |
| `server_list` | `Scene/Login/LoginScene_AnySdk.js:440` |
| `server_logined_list` | `Scene/Login/LoginScene_AnySdk.js:440` |
| `server_list.length` | `Scene/Login/LoginScene_AnySdk.js:440` |
| `user_auth` | `Scene/Login/LoginScene_BfSdk.js:573` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:120` | `Cfg.Url` |

**调用点**（12）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Login/LoginScene_AnySdk.js:440` | `onAnySdkLoginSucess` | `uid`, `logintype`, `app_indentify`, `extra` | `this.onResponse_GetServerList` |
| `Scene/Login/LoginScene_AnySdk.js:685` | `onVisitorBtnClick` | `uid`, `logintype`, `app_indentify`, `extra` | `this.onResponse_GetServerList_Visitor` |
| `Scene/Login/LoginScene_AnySdk.js:701` | `onBfSdkLoginSucess` | `uid`, `logintype`, `app_indentify`, `extra`, `sessionId` | `this.onResponse_GetServerList` |
| `Scene/Login/LoginScene_BfSdk.js:573` | `onVisitorBtnClick` | `uid`, `logintype`, `app_indentify`, `extra` | `this.onResponse_GetServerList_Visitor` |
| `Scene/Login/LoginScene_BfSdk.js:598` | `checkGetOpenUDID` | `uid`, `logintype`, `app_indentify`, `extra` | `this.onResponse_GetServerList_Visitor` |
| `Scene/Login/LoginScene_BfSdk.js:619` | `onBfSdkLoginSucess` | `uid`, `logintype`, `app_indentify`, `extra`, `sessionId` | `this.onResponse_GetServerList` |
| `Scene/Login/LoginScene_EasyGuestSdk.js:190` | `_onVisitorBtnClick` | `uid`, `logintype`, `app_indentify`, `extra` | `this.onResp_GetServerList` |
| `Scene/Login/LoginScene_EasyGuestSdk.js:391` | `onEasySdkLoginSuccess` | `uid`, `logintype`, `app_indentify`, `session` | `this.onResp_GetServerList` |
| `Scene/Login/LoginScene_EasySdk.js:292` | `onEasySdkLoginSuccess` | `uid`, `logintype`, `app_indentify`, `session` | `this.onResp_GetServerList` |
| `Scene/Login/LoginScene_ThirdGuestSdk.js:385` | `onVisitorBtnClick` | `uid`, `logintype`, `app_indentify`, `extra` | `this.onResponse_GetServerList_Visitor` |
| `Scene/Login/LoginScene_ThirdGuestSdk.js:493` | `onThirdSdkLoginSucess` | `uid`, `logintype`, `app_indentify`, `extra` | `this.onResponse_GetServerList` |
| `Scene/Login/LoginScene_ThirdSdk.js:416` | `onThirdSdkLoginSucess` | `uid`, `logintype`, `app_indentify`, `extra` | `this.onResponse_GetServerList` |
