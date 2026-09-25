# 协议参考：跨服天梯（ladderWar.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **12** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`ladderWar.buyFtimes`](#ladderWarbuyFtimes) | `?do=ladderWar.buyFtimes` | `requestInterBuyFightTimes` | 1 |
| [`ladderWar.buyReward`](#ladderWarbuyReward) | `?do=ladderWar.buyReward` | `requestBuyReward` | 0 |
| [`ladderWar.entry`](#ladderWarentry) | `/index.php?do=ladderWar.entry` | `requestInterServiceMainInfor` | 2 |
| [`ladderWar.exchange`](#ladderWarexchange) | `?do=ladderWar.exchange` | `requestInterPointsExchange` | 1 |
| [`ladderWar.fight`](#ladderWarfight) | `?do=ladderWar.fight` | `requestInterServiceFight` | 1 |
| [`ladderWar.getOverview`](#ladderWargetOverview) | `/index.php?do=ladderWar.getOverview` | `requestInterOtherPlayerData` | 1 |
| [`ladderWar.goodsList`](#ladderWargoodsList) | `?do=ladderWar.goodsList` | `requestInterPointsExchangeList` | 1 |
| [`ladderWar.hangReward`](#ladderWarhangReward) | `?do=ladderWar.hangReward` | `requestHangReward` | 1 |
| [`ladderWar.match`](#ladderWarmatch) | `?do=ladderWar.match` | `requestInterGetMatchs` | 1 |
| [`ladderWar.rewardList`](#ladderWarrewardList) | `?do=ladderWar.rewardList` | `requestGetRewardList` | 1 |
| [`ladderWar.worship`](#ladderWarworship) | `?do=ladderWar.worship` | `requestWorship` | 1 |
| [`ladderWar.worshipEntry`](#ladderWarworshipEntry) | `?do=ladderWar.worshipEntry` | `requestWorshipEntry` | 1 |

### ladderWar.buyFtimes

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=ladderWar.buyFtimes` | `ReconstructedJS/src_jsc/Cfg/Url.js:172` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:172` |
| 客户端封装 | `xs.Tools.Net.requestInterBuyFightTimes` [`ReconstructedJS/src_jsc/Tools/Net.js:1935`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/InterService/PromptFrameDialog.js:128` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:172` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/InterService/PromptFrameDialog.js:128` | `sureBtnClick` | `user_id` | `inline` |

### ladderWar.buyReward

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=ladderWar.buyReward` | `ReconstructedJS/src_jsc/Cfg/Url.js:177` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:177` |
| 客户端封装 | `xs.Tools.Net.requestBuyReward` [`ReconstructedJS/src_jsc/Tools/Net.js:1975`] | |

**请求字段**：没有调用点，无法从调用方确定。

**响应字段**：没有调用点，无法从调用方确定。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:177` | `Cfg.Url` |

**调用点**：该动作没有独立的请求封装，URL 在代码里就地拼接；调用点即上面的字面量位置。

### ladderWar.entry

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=ladderWar.entry` | `ReconstructedJS/src_jsc/Cfg/Url.js:169` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:169` |
| 客户端封装 | `xs.Tools.Net.requestInterServiceMainInfor` [`ReconstructedJS/src_jsc/Tools/Net.js:1991`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/InterService/InterServiceRegistrationView.js:300` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `return_info` | `Views/InterService/InterServiceRegistrationView.js:300` |
| `return_info.status` | `Tools/Scene.js:52` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:169` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/InterService/InterServiceRegistrationView.js:300` | `RequestNetforInfor` | `user_id` | `inline` |
| `Tools/Scene.js:52` | `gotoLadderWar` | `user_id` | `inline` |

### ladderWar.exchange

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=ladderWar.exchange` | `ReconstructedJS/src_jsc/Cfg/Url.js:171` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:171` |
| 客户端封装 | `xs.Tools.Net.requestInterPointsExchange` [`ReconstructedJS/src_jsc/Tools/Net.js:1999`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/InterService/PointsExchangeView.js:334` |
| `pk_id` | `Views/InterService/PointsExchangeView.js:334` |
| `forcepush` | `Views/InterService/PointsExchangeView.js:334` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:171` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/InterService/PointsExchangeView.js:334` | `onBtnCallBack` | `user_id`, `pk_id`, `forcepush` | `inline` |

### ladderWar.fight

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=ladderWar.fight` | `ReconstructedJS/src_jsc/Cfg/Url.js:179` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:179` |
| 客户端封装 | `xs.Tools.Net.requestInterServiceFight` [`ReconstructedJS/src_jsc/Tools/Net.js:2007`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/InterService/InterServiceFightView.js:413` |
| `player_id` | `Views/InterService/InterServiceFightView.js:413` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:179` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/InterService/InterServiceFightView.js:413` | `funcFinish` | `user_id`, `player_id` | `inline` |

### ladderWar.getOverview

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=ladderWar.getOverview` | `ReconstructedJS/src_jsc/Cfg/Url.js:124` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:124` |
| 客户端封装 | `xs.Tools.Net.requestInterOtherPlayerData` [`ReconstructedJS/src_jsc/Tools/Net.js:1364`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `player_id` | `Tools/Net.js:183` |
| `user_id` | `Tools/Net.js:183` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `info` | `Tools/Net.js:183` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:124` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Tools/Net.js:183` | `displayInterOtherTeamInfo` | `player_id`, `user_id` | `_cb (local function literal)` |

### ladderWar.goodsList

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=ladderWar.goodsList` | `ReconstructedJS/src_jsc/Cfg/Url.js:170` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:170` |
| 客户端封装 | `xs.Tools.Net.requestInterPointsExchangeList` [`ReconstructedJS/src_jsc/Tools/Net.js:2015`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/InterService/PointsExchangeView.js:105` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:170` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/InterService/PointsExchangeView.js:105` | `requestGetGoodsList` | `user_id` | `inline` |

### ladderWar.hangReward

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=ladderWar.hangReward` | `ReconstructedJS/src_jsc/Cfg/Url.js:178` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:178` |
| 客户端封装 | `xs.Tools.Net.requestHangReward` [`ReconstructedJS/src_jsc/Tools/Net.js:1983`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/InterService/InterServiceRewardDialog.js:88` |
| `pk_ids` | `Views/InterService/InterServiceRewardDialog.js:88` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:178` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/InterService/InterServiceRewardDialog.js:88` | `requestHangReward` | `user_id`, `pk_ids` | `inline` |

### ladderWar.match

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=ladderWar.match` | `ReconstructedJS/src_jsc/Cfg/Url.js:173` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:173` |
| 客户端封装 | `xs.Tools.Net.requestInterGetMatchs` [`ReconstructedJS/src_jsc/Tools/Net.js:1943`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/InterService/InterServiceFightView.js:234` |
| `is_main` | `Views/InterService/InterServiceFightView.js:234` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `return_info` | `Views/InterService/InterServiceFightView.js:234` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:173` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/InterService/InterServiceFightView.js:234` | `requestPlayersInfor` | `user_id`, `is_main` | `inline` |

### ladderWar.rewardList

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=ladderWar.rewardList` | `ReconstructedJS/src_jsc/Cfg/Url.js:176` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:176` |
| 客户端封装 | `xs.Tools.Net.requestGetRewardList` [`ReconstructedJS/src_jsc/Tools/Net.js:1967`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/InterService/InterServiceWorshipView.js:246` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `return_info.reward_list` | `Views/InterService/InterServiceWorshipView.js:246` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:176` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/InterService/InterServiceWorshipView.js:246` | `onm_btnWorshipClicked_hangReward` | `user_id` | `inline` |

### ladderWar.worship

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=ladderWar.worship` | `ReconstructedJS/src_jsc/Cfg/Url.js:175` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:175` |
| 客户端封装 | `xs.Tools.Net.requestWorship` [`ReconstructedJS/src_jsc/Tools/Net.js:1959`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/InterService/InterServiceWorshipView.js:223` |
| `player_id` | `Views/InterService/InterServiceWorshipView.js:223` |
| `forcepush` | `Views/InterService/InterServiceWorshipView.js:223` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:175` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/InterService/InterServiceWorshipView.js:223` | `onm_btnWorshipClicked_worship` | `user_id`, `player_id`, `forcepush` | `inline` |

### ladderWar.worshipEntry

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=ladderWar.worshipEntry` | `ReconstructedJS/src_jsc/Cfg/Url.js:174` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:174` |
| 客户端封装 | `xs.Tools.Net.requestWorshipEntry` [`ReconstructedJS/src_jsc/Tools/Net.js:1951`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/InterService/InterServiceRegistrationView.js:467` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:174` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/InterService/InterServiceRegistrationView.js:467` | `worshipCallback` | `user_id` | `inline` |
