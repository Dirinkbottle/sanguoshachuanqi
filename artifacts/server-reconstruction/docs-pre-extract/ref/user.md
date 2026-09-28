# 协议参考：玩家与会话（user.*）

登录、改名、签名、编队选择、推送拉取

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **9** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`user.chgGeneralskin`](#userchgGeneralskin) | `?do=user.chgGeneralskin` | `requestChangeGeneralSkin` | 1 |
| [`user.chgNickname`](#userchgNickname) | `/index.php?do=user.chgNickname` | `requestSaveUserNewName` | 2 |
| [`user.chgSign`](#userchgSign) | `/index.php?do=user.chgSign` | `requestSaveUserSign` | 1 |
| [`user.chooseTeam`](#userchooseTeam) | `/index.php?do=user.chooseTeam` | `requestGeneralSelect` | 1 |
| [`user.getPushData`](#usergetPushData) | `/?do=user.getPushData` | `requestPushDataInfo` | 10 |
| [`user.leaveMsg`](#userleaveMsg) | `/index.php?do=user.leaveMsg` | `requestSendFeedBack` | 2 |
| [`user.login`](#userlogin) | `/?do=user.login` | `requestLogin` | 6 |
| [`user.save`](#usersave) | `/index.php?do=user.save` | `requestGeTuiSave` | 2 |
| [`user.testLogin`](#usertestLogin) | `/?do=user.testLogin` | `requestTestLogin` | 0 |

### user.chgGeneralskin

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=user.chgGeneralskin` | `ReconstructedJS/src_jsc/Cfg/Url.js:236` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:236` |
| 客户端封装 | `xs.Tools.Net.requestChangeGeneralSkin` [`ReconstructedJS/src_jsc/Tools/Net.js:2429`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Dialog/PlayerInfoDialog.js:221` |
| `general_skin` | `Views/Dialog/PlayerInfoDialog.js:221` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:236` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/PlayerInfoDialog.js:221` | `_requestChangeGeneralSkin` | `user_id`, `general_skin` | `inline` |

### user.chgNickname

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=user.chgNickname` | `ReconstructedJS/src_jsc/Cfg/Url.js:103` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:103` |
| 客户端封装 | `xs.Tools.Net.requestSaveUserNewName` [`ReconstructedJS/src_jsc/Tools/Net.js:1156`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `nickname` | `Views/ChangeName.js:97` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `user_info` | `Views/ChangeName.js:99` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:103` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/ChangeName.js:99` | `editBoxReturn` | `nickname` | `this.requestCallback` |
| `Views/Dialog/SpecificDialog.js:904` | `createPlayerChangeNameDialog` | `nickname` | `tmpfunc (local function literal)` |

### user.chgSign

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=user.chgSign` | `ReconstructedJS/src_jsc/Cfg/Url.js:102` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:102` |
| 客户端封装 | `xs.Tools.Net.requestSaveUserSign` [`ReconstructedJS/src_jsc/Tools/Net.js:1148`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `sign` | `Views/Dialog/SpecificDialog.js:696` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:102` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/SpecificDialog.js:717` | `createEditSignatureDialog` | `sign` | `tmpfunc (local function literal)` |

### user.chooseTeam

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=user.chooseTeam` | `ReconstructedJS/src_jsc/Cfg/Url.js:126` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:126` |
| 客户端封装 | `xs.Tools.Net.requestGeneralSelect` [`ReconstructedJS/src_jsc/Tools/Net.js:1348`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `selectSuccessCallback` | `Scene/GeneralSelect/GeneralSelectScene.js:215` |
| `general_id` | `Scene/GeneralSelect/GeneralSelectScene.js:217` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:126` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/GeneralSelect/GeneralSelectScene.js:219` | `confirmCallback` | `selectSuccessCallback`, `general_id` | `this.selectSuccessCallback` |

### user.getPushData

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=user.getPushData` | `ReconstructedJS/src_jsc/Cfg/Url.js:64` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:64` |
| 客户端封装 | `xs.Tools.Net.requestPushDataInfo` [`ReconstructedJS/src_jsc/Tools/Net.js:678`] | |

**请求字段**：该封装无显式字段（调用点：封装本身没有请求参数）。实际仍会带上公共字段。

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:64` | `Cfg.Url` |

**调用点**（10）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/ActivitiesShow6Icon.js:67` | `requestAndUpdataEvent` | 封装本身没有请求参数 | `inline` |
| `Views/ActivitiesShow6Icon.js:218` | `btnClickCallBack` | 封装本身没有请求参数 | `inline` |
| `Views/ActivitiesShow6Icon.js:240` | `btnClickCallBack` | 封装本身没有请求参数 | `inline` |
| `Scene/SubMenu/PartyMenuScene.js:86` | `requestAndUpdataMenus` | 封装本身没有请求参数 | `inline` |
| `Scene/SubMenu/PartyMenuScene.js:397` | `MPMV_MenuTouchedInIndex` | 封装本身没有请求参数 | `inline` |
| `Scene/SubMenu/PartyMenuScene.js:430` | `MPMV_MenuTouchedInIndex` | 封装本身没有请求参数 | `inline` |
| `Scene/SubMenu/PartyMenuScene.js:453` | `MPMV_MenuTouchedInIndex` | 封装本身没有请求参数 | `inline` |
| `Scene/SubMenu/PartyMenuScene.js:475` | `MPMV_MenuTouchedInIndex` | 封装本身没有请求参数 | `inline` |
| `Scene/SubMenu/PartyMenuScene.js:497` | `MPMV_MenuTouchedInIndex` | 封装本身没有请求参数 | `inline` |
| `Scene/SubMenu/PartyMenuScene.js:519` | `MPMV_MenuTouchedInIndex` | 封装本身没有请求参数 | `inline` |

### user.leaveMsg

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=user.leaveMsg` | `ReconstructedJS/src_jsc/Cfg/Url.js:112` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:112` |
| 客户端封装 | `xs.Tools.Net.requestSendFeedBack` [`ReconstructedJS/src_jsc/Tools/Net.js:1220`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `message` | `Views/FeedBack.js:51` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:112` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/FeedBack.js:51` | `onBtnClick` | `message` | `this.onResponse` |
| `Views/Dialog/SendMessageDialog.js:111` | `onSendBtnClick` | `message` | `this.onResponse` |

### user.login

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=user.login` | `ReconstructedJS/src_jsc/Cfg/Url.js:20` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:20` |
| 客户端封装 | `xs.Tools.Net.requestLogin`（注入 `server_id=xs.Profile.GameData.Player.g_serverId`） [`ReconstructedJS/src_jsc/Tools/Net.js:338`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `server_id` | `ReconstructedJS/src_jsc/Tools/Net.js:338 (wrapper-injected = xs.Profile.GameData.Player.g_serverId)` |
| `account_uid` | `Scene/Login/LoginScene_AnySdk.js:318` |
| `app_indentify` | `Scene/Login/LoginScene_AnySdk.js:318` |
| `forcepush` | `Scene/Login/LoginScene_AnySdk.js:318` |
| `server_params` | `Scene/Login/LoginScene_AnySdk.js:318` |
| `token` | `Scene/Login/LoginScene_AnySdk.js:318` |
| `cfg_version` | `Scene/Login/LoginScene_AnySdk.js:318` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `isAdult` | `Profile/GameData/Mgr.js (via init_Login)` |
| `isMobile` | `Profile/GameData/Mgr.js (via init_Login)` |
| `isShowBanShu` | `Profile/GameData/Mgr.js (via init_Login)` |
| `is_use_keywords` | `Profile/GameData/Mgr.js (via init_Login)` |
| `map_info` | `Profile/GameData/Mgr.js (via init_Login)` |
| `wine_info` | `Profile/GameData/Mgr.js (via init_Login)` |
| `user_auth` | `Profile/GameData/Mgr.js (via init_Login)` |
| `isShowAmt` | `Profile/GameData/Mgr.js (via init_Login)` |
| `isShowCDKey` | `Profile/GameData/Mgr.js (via init_Login)` |
| `server_open` | `Profile/GameData/Mgr.js (via init_Login)` |
| `isShowGem` | `Profile/GameData/Mgr.js (via init_Login)` |
| `isShowMagic` | `Profile/GameData/Mgr.js (via init_Login)` |
| `maxTeamNum` | `Profile/GameData/Mgr.js (via init_Login)` |
| `isShowUnionWar` | `Profile/GameData/Mgr.js (via init_Login)` |
| `festivalType` | `Profile/GameData/Mgr.js (via init_Login)` |
| `rechargeRate` | `Profile/GameData/Mgr.js (via init_Login)` |
| `customerServiceShowConf` | `Profile/GameData/Mgr.js (via init_Login)` |
| `EasyAppKeyBase64` | `Scene/Login/LoginScene_EasyGuestSdk.js:231` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:20` | `Cfg.Url` |

**调用点**（6）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Login/LoginScene_AnySdk.js:318` | `onStartLogin` | `account_uid`, `app_indentify`, `forcepush`, `server_params`, `token`, `cfg_version` | `this._onGetPlayerInfoSuccess` |
| `Scene/Login/LoginScene_BfSdk.js:239` | `onStartLogin` | `account_uid`, `app_indentify`, `forcepush`, `server_params`, `token`, `cfg_version` | `this._onGetPlayerInfoSuccess` |
| `Scene/Login/LoginScene_EasyGuestSdk.js:231` | `onClick_start_get_role` | `app_indentify`, `forcepush`, `server_params`, `cfg_version`, `account_uid`, `token` | `this.onResp_getPlayerInfoSuccess` |
| `Scene/Login/LoginScene_EasySdk.js:181` | `onClick_start_get_role` | `app_indentify`, `forcepush`, `server_params`, `cfg_version`, `account_uid`, `token` | `this.onResp_getPlayerInfoSuccess` |
| `Scene/Login/LoginScene_ThirdGuestSdk.js:241` | `onStartLogin` | `account_uid`, `app_indentify`, `forcepush`, `server_params`, `token`, `cfg_version` | `this._onGetPlayerInfoSuccess` |
| `Scene/Login/LoginScene_ThirdSdk.js:264` | `onStartLogin` | `account_uid`, `app_indentify`, `forcepush`, `server_params`, `token`, `cfg_version` | `this._onGetPlayerInfoSuccess` |

### user.save

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=user.save` | `ReconstructedJS/src_jsc/Cfg/Url.js:140` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:140` |
| 客户端封装 | `xs.Tools.Net.requestGeTuiSave` [`ReconstructedJS/src_jsc/Tools/Net.js:1687`] | |

**请求字段**：该封装无显式字段（调用点：无请求参数）。实际仍会带上公共字段。

**响应字段**：该封装没有回调参数，客户端不消费响应体（纯副作用请求）。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:140` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Profile/GameData/Mgr.js:137` | `init_Login` | 无请求参数 | `该封装没有回调参数` |
| `Scene/Login/LoginScene_EasyGuestSdk.js:272` | `onResp_getPlayerInfoSuccess` | 无请求参数 | `该封装没有回调参数` |

### user.testLogin

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=user.testLogin` | `ReconstructedJS/src_jsc/Cfg/Url.js:21` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:21` |
| 客户端封装 | `xs.Tools.Net.requestTestLogin` [`ReconstructedJS/src_jsc/Tools/Net.js:347`] | |

**请求字段**：没有调用点，无法从调用方确定。

**响应字段**：没有调用点，无法从调用方确定。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:21` | `Cfg.Url` |

**调用点**：该动作没有独立的请求封装，URL 在代码里就地拼接；调用点即上面的字面量位置。
