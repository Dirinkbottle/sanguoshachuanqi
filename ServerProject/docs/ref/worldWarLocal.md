# 协议参考：本服决战（worldWarLocal.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **11** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`worldWarLocal.exchange`](#worldWarLocalexchange) | `?do=worldWarLocal.exchange` | `requestDecisivePointsExchange` | 1 |
| [`worldWarLocal.getFightDetail`](#worldWarLocalgetFightDetail) | `?do=worldWarLocal.getFightDetail` | `requestDecisiveViewingFight` | 1 |
| [`worldWarLocal.getOverview`](#worldWarLocalgetOverview) | `?do=worldWarLocal.getOverview` | `requestDecisiveOtherPlayerData` | 2 |
| [`worldWarLocal.getPlayerList`](#worldWarLocalgetPlayerList) | `?do=worldWarLocal.getPlayerList` | `DecisiveGetPlayerList` | 4 |
| [`worldWarLocal.goodsList`](#worldWarLocalgoodsList) | `?do=worldWarLocal.goodsList` | `requestDecisivePointsExchangeList` | 1 |
| [`worldWarLocal.index`](#worldWarLocalindex) | `?do=worldWarLocal.index` | `requestDecisiveBattleMainInfor` | 3 |
| [`worldWarLocal.outline`](#worldWarLocaloutline) | `?do=worldWarLocal.outline` | `requestDecisiveTop128` | 1 |
| [`worldWarLocal.signUp`](#worldWarLocalsignUp) | `?do=worldWarLocal.signUp` | `requestDecisiveBattleRefreshTeam` | 1 |
| [`worldWarLocal.supportList`](#worldWarLocalsupportList) | `?do=worldWarLocal.supportList` | `requestDecisiveBattleSupportRecord` | 2 |
| [`worldWarLocal.supportPlayer`](#worldWarLocalsupportPlayer) | `?do=worldWarLocal.supportPlayer` | `DecisiveSupportPlayer` | 1 |
| [`worldWarLocal.supportRank`](#worldWarLocalsupportRank) | `?do=worldWarLocal.supportRank` | `requestDecisiveBattleSupportRank` | 1 |

### worldWarLocal.exchange

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=worldWarLocal.exchange` | `ReconstructedJS/src_jsc/Cfg/Url.js:211` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:211` |
| 客户端封装 | `xs.Tools.Net.requestDecisivePointsExchange` [`ReconstructedJS/src_jsc/Tools/Net.js:2200`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/DecisiveBattle/SupportPointsExchangeView.js:313` |
| `pk_id` | `Views/DecisiveBattle/SupportPointsExchangeView.js:313` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `add_list` | `Views/DecisiveBattle/SupportPointsExchangeView.js:313` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:211` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/DecisiveBattle/SupportPointsExchangeView.js:313` | `onBtnCallBack` | `user_id`, `pk_id` | `inline` |

### worldWarLocal.getFightDetail

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=worldWarLocal.getFightDetail` | `ReconstructedJS/src_jsc/Cfg/Url.js:217` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:217` |
| 客户端封装 | `xs.Tools.Net.requestDecisiveViewingFight` [`ReconstructedJS/src_jsc/Tools/Net.js:2278`] | |
| 响应交给的模型 | `xs.Models.FightInfo.create` | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `round` | `Views/DecisiveBattle/OneRoundPlayerListDialog.js:187` |
| `session` | `Views/DecisiveBattle/OneRoundPlayerListDialog.js:187` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `detail` | `Views/DecisiveBattle/OneRoundPlayerListDialog.js:187` |

> 响应整体（或部分）交给 `xs.Models.FightInfo.create` 解析，其字段表见 [data-model.md](../data-model.md)。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:217` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/DecisiveBattle/OneRoundPlayerListDialog.js:187` | `onReviewBtnClicked` | `round`, `session` | `inline` |

### worldWarLocal.getOverview

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=worldWarLocal.getOverview` | `ReconstructedJS/src_jsc/Cfg/Url.js:212` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:212` |
| 客户端封装 | `xs.Tools.Net.requestDecisiveOtherPlayerData` [`ReconstructedJS/src_jsc/Tools/Net.js:2213`]<br>`xs.Tools.Net.DecisiveGetOverview` [`ReconstructedJS/src_jsc/Tools/Net.js:2239`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `player_id` | `Tools/Net.js:235` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `info` | `Tools/Net.js:235` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:212` | `Cfg.Url` |
| `Cfg/Url.js:214` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Tools/Net.js:235` | `displayDecisiveOtherTeamInfo` | `player_id` | `_cb (local function literal)` |
| `Views/Dialog/DecisiveSupportDialog.js:152` | `_btnShowCallBack` | `player_id` | `inline` |

### worldWarLocal.getPlayerList

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=worldWarLocal.getPlayerList` | `ReconstructedJS/src_jsc/Cfg/Url.js:213` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:213` |
| 客户端封装 | `xs.Tools.Net.DecisiveGetPlayerList` [`ReconstructedJS/src_jsc/Tools/Net.js:2226`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/DecisiveBattle/DecisiveBattlePreviewView.js:411` |
| `round` | `Views/DecisiveBattle/DecisiveBattlePreviewView.js:411` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/DecisiveBattle/DecisiveBattlePreviewView.js:411` |
| `player_list` | `Views/DecisiveBattle/DecisiveBattlePreviewView.js:426` |
| `player_list.length` | `Views/DecisiveBattle/DecisiveBattlePreviewView.js:505` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:213` | `Cfg.Url` |

**调用点**（4）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/DecisiveBattle/DecisiveBattlePreviewView.js:411` | `goToSupportDialog` | `user_id`, `round` | `inline` |
| `Views/DecisiveBattle/DecisiveBattlePreviewView.js:426` | `goToPlayerWillFightDialog` | `user_id`, `round` | `inline` |
| `Views/DecisiveBattle/DecisiveBattlePreviewView.js:445` | `goToPlayerFightingDialog` | `user_id`, `round` | `inline` |
| `Views/DecisiveBattle/DecisiveBattlePreviewView.js:505` | `goToPlayerFightedDialog` | `user_id`, `round` | `inline` |

### worldWarLocal.goodsList

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=worldWarLocal.goodsList` | `ReconstructedJS/src_jsc/Cfg/Url.js:210` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:210` |
| 客户端封装 | `xs.Tools.Net.requestDecisivePointsExchangeList` [`ReconstructedJS/src_jsc/Tools/Net.js:2187`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/DecisiveBattle/SupportPointsExchangeView.js:85` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `goods_list` | `Views/DecisiveBattle/SupportPointsExchangeView.js:85` |
| `point` | `Views/DecisiveBattle/SupportPointsExchangeView.js:85` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:210` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/DecisiveBattle/SupportPointsExchangeView.js:85` | `requestGetGoodsList` | `user_id` | `inline` |

### worldWarLocal.index

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=worldWarLocal.index` | `ReconstructedJS/src_jsc/Cfg/Url.js:207` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:207` |
| 客户端封装 | `xs.Tools.Net.requestDecisiveBattleMainInfor` [`ReconstructedJS/src_jsc/Tools/Net.js:2135`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/DecisiveBattle/DecisiveBattleMainView.js:266` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `time` | `Views/DecisiveBattle/DecisiveBattleMainView.js:266` |
| `info` | `Views/DecisiveBattle/DecisiveBattleMainView.js:266` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:207` | `Cfg.Url` |

**调用点**（3）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/DecisiveBattle/DecisiveBattleMainView.js:266` | `requestMianViewData` | `user_id` | `inline` |
| `Tools/Scene.js:97` | `gotoSmallDecisiveBattle` | `user_id` | `inline` |
| `Tools/Scene.js:128` | `gotoDecisiveBattle` | `user_id` | `inline` |

### worldWarLocal.outline

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=worldWarLocal.outline` | `ReconstructedJS/src_jsc/Cfg/Url.js:216` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:216` |
| 客户端封装 | `xs.Tools.Net.requestDecisiveTop128` [`ReconstructedJS/src_jsc/Tools/Net.js:2265`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/DecisiveBattle/DecisiveBattleMainView.js:489` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/DecisiveBattle/DecisiveBattleMainView.js:489` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:216` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/DecisiveBattle/DecisiveBattleMainView.js:489` | `watchGameCallBack` | `user_id` | `inline` |

### worldWarLocal.signUp

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=worldWarLocal.signUp` | `ReconstructedJS/src_jsc/Cfg/Url.js:218` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:218` |
| 客户端封装 | `xs.Tools.Net.requestDecisiveBattleRefreshTeam` [`ReconstructedJS/src_jsc/Tools/Net.js:2161`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/DecisiveBattle/DecisiveBattleMainView.js:458` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:218` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/DecisiveBattle/DecisiveBattleMainView.js:458` | `rightCB` | `user_id` | `inline` |

### worldWarLocal.supportList

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=worldWarLocal.supportList` | `ReconstructedJS/src_jsc/Cfg/Url.js:209` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:209` |
| 客户端封装 | `xs.Tools.Net.requestDecisiveBattleSupportRecord` [`ReconstructedJS/src_jsc/Tools/Net.js:2174`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/DecisiveBattle/DecisiveBattleMainView.js:480` |
| `type` | `Views/DecisiveBattle/DecisiveBattleMainView.js:480` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `support_list` | `Views/DecisiveBattle/DecisiveBattleMainView.js:480` |
| `point.toString` | `Views/DecisiveBattle/SupportRecordView.js:95` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:209` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/DecisiveBattle/DecisiveBattleMainView.js:480` | `supportAwardCallBack` | `user_id`, `type` | `inline` |
| `Views/DecisiveBattle/SupportRecordView.js:95` | `switchRequestDataForNet` | `user_id`, `type` | `inline` |

### worldWarLocal.supportPlayer

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=worldWarLocal.supportPlayer` | `ReconstructedJS/src_jsc/Cfg/Url.js:215` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:215` |
| 客户端封装 | `xs.Tools.Net.DecisiveSupportPlayer` [`ReconstructedJS/src_jsc/Tools/Net.js:2252`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Dialog/DecisiveSupportDialog.js:169` |
| `player_id` | `Views/Dialog/DecisiveSupportDialog.js:169` |
| `round` | `Views/Dialog/DecisiveSupportDialog.js:169` |
| `session` | `Views/Dialog/DecisiveSupportDialog.js:169` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Dialog/DecisiveSupportDialog.js:169` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:215` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/DecisiveSupportDialog.js:169` | `_btnSupportCallBack` | `user_id`, `player_id`, `round`, `session` | `inline` |

### worldWarLocal.supportRank

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=worldWarLocal.supportRank` | `ReconstructedJS/src_jsc/Cfg/Url.js:208` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:208` |
| 客户端封装 | `xs.Tools.Net.requestDecisiveBattleSupportRank` [`ReconstructedJS/src_jsc/Tools/Net.js:2148`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/DecisiveBattle/DecisiveBattleMainView.js:470` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `support_rank` | `Views/DecisiveBattle/DecisiveBattleMainView.js:470` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:208` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/DecisiveBattle/DecisiveBattleMainView.js:470` | `rankCallback` | `user_id` | `inline` |
