# 协议参考：本服天梯战（ladderWarLocal.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **12** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`ladderWarLocal.buyFtimes`](#ladderWarLocalbuyFtimes) | `?do=ladderWarLocal.buyFtimes` | `requestLocalInterBuyFightTimes` | 1 |
| [`ladderWarLocal.buyReward`](#ladderWarLocalbuyReward) | `?do=ladderWarLocal.buyReward` | `requestLocalBuyReward` | 0 |
| [`ladderWarLocal.entry`](#ladderWarLocalentry) | `/index.php?do=ladderWarLocal.entry` | `requestLocalInterServiceMainInfor` | 2 |
| [`ladderWarLocal.exchange`](#ladderWarLocalexchange) | `?do=ladderWarLocal.exchange` | `requestLocalInterPointsExchange` | 1 |
| [`ladderWarLocal.fight`](#ladderWarLocalfight) | `?do=ladderWarLocal.fight` | `requestLocalInterServiceFight` | 1 |
| [`ladderWarLocal.getOverview`](#ladderWarLocalgetOverview) | `/index.php?do=ladderWarLocal.getOverview` | `requestLocalInterOtherPlayerData` | 1 |
| [`ladderWarLocal.goodsList`](#ladderWarLocalgoodsList) | `?do=ladderWarLocal.goodsList` | `requestLocalInterPointsExchangeList` | 1 |
| [`ladderWarLocal.hangReward`](#ladderWarLocalhangReward) | `?do=ladderWarLocal.hangReward` | `requestLocalHangReward` | 1 |
| [`ladderWarLocal.match`](#ladderWarLocalmatch) | `?do=ladderWarLocal.match` | `requestLocalInterGetMatchs` | 1 |
| [`ladderWarLocal.rewardList`](#ladderWarLocalrewardList) | `?do=ladderWarLocal.rewardList` | `requestLocalGetRewardList` | 1 |
| [`ladderWarLocal.worship`](#ladderWarLocalworship) | `?do=ladderWarLocal.worship` | `requestLocalWorship` | 1 |
| [`ladderWarLocal.worshipEntry`](#ladderWarLocalworshipEntry) | `?do=ladderWarLocal.worshipEntry` | `requestLocalWorshipEntry` | 1 |

### ladderWarLocal.buyFtimes

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=ladderWarLocal.buyFtimes` | `ReconstructedJS/src_jsc/Cfg/Url.js:183` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:183` |
| 客户端封装 | `xs.Tools.Net.requestLocalInterBuyFightTimes` [`ReconstructedJS/src_jsc/Tools/Net.js:2023`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/InterService/PromptFrameDialog.js:122` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:183` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/InterService/PromptFrameDialog.js:122` | `sureBtnClick` | `user_id` | `inline` |

### ladderWarLocal.buyReward

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=ladderWarLocal.buyReward` | `ReconstructedJS/src_jsc/Cfg/Url.js:188` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:188` |
| 客户端封装 | `xs.Tools.Net.requestLocalBuyReward` [`ReconstructedJS/src_jsc/Tools/Net.js:2063`] | |

**请求字段**：没有调用点，无法从调用方确定。

**响应字段**：没有调用点，无法从调用方确定。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:188` | `Cfg.Url` |

**调用点**：该动作没有独立的请求封装，URL 在代码里就地拼接；调用点即上面的字面量位置。

### ladderWarLocal.entry

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=ladderWarLocal.entry` | `ReconstructedJS/src_jsc/Cfg/Url.js:180` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:180` |
| 客户端封装 | `xs.Tools.Net.requestLocalInterServiceMainInfor` [`ReconstructedJS/src_jsc/Tools/Net.js:2079`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/InterService/InterServiceRegistrationView.js:290` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `return_info` | `Views/InterService/InterServiceRegistrationView.js:290` |
| `return_info.status` | `Tools/Scene.js:75` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:180` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/InterService/InterServiceRegistrationView.js:290` | `RequestNetforInfor` | `user_id` | `inline` |
| `Tools/Scene.js:75` | `gotoSmallLadderWar` | `user_id` | `inline` |

### ladderWarLocal.exchange

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=ladderWarLocal.exchange` | `ReconstructedJS/src_jsc/Cfg/Url.js:182` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:182` |
| 客户端封装 | `xs.Tools.Net.requestLocalInterPointsExchange` [`ReconstructedJS/src_jsc/Tools/Net.js:2087`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/InterService/PointsExchangeView.js:323` |
| `pk_id` | `Views/InterService/PointsExchangeView.js:323` |
| `forcepush` | `Views/InterService/PointsExchangeView.js:323` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:182` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/InterService/PointsExchangeView.js:323` | `onBtnCallBack` | `user_id`, `pk_id`, `forcepush` | `inline` |

### ladderWarLocal.fight

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=ladderWarLocal.fight` | `ReconstructedJS/src_jsc/Cfg/Url.js:190` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:190` |
| 客户端封装 | `xs.Tools.Net.requestLocalInterServiceFight` [`ReconstructedJS/src_jsc/Tools/Net.js:2095`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/InterService/InterServiceFightView.js:403` |
| `player_id` | `Views/InterService/InterServiceFightView.js:403` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:190` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/InterService/InterServiceFightView.js:403` | `funcFinish` | `user_id`, `player_id` | `inline` |

### ladderWarLocal.getOverview

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=ladderWarLocal.getOverview` | `ReconstructedJS/src_jsc/Cfg/Url.js:125` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:125` |
| 客户端封装 | `xs.Tools.Net.requestLocalInterOtherPlayerData` [`ReconstructedJS/src_jsc/Tools/Net.js:1372`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `player_id` | `Tools/Net.js:216` |
| `user_id` | `Tools/Net.js:216` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `info` | `Tools/Net.js:216` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:125` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Tools/Net.js:216` | `displayLocalInterOtherTeamInfo` | `player_id`, `user_id` | `_cb (local function literal)` |

### ladderWarLocal.goodsList

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=ladderWarLocal.goodsList` | `ReconstructedJS/src_jsc/Cfg/Url.js:181` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:181` |
| 客户端封装 | `xs.Tools.Net.requestLocalInterPointsExchangeList` [`ReconstructedJS/src_jsc/Tools/Net.js:2103`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/InterService/PointsExchangeView.js:98` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:181` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/InterService/PointsExchangeView.js:98` | `requestGetGoodsList` | `user_id` | `inline` |

### ladderWarLocal.hangReward

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=ladderWarLocal.hangReward` | `ReconstructedJS/src_jsc/Cfg/Url.js:189` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:189` |
| 客户端封装 | `xs.Tools.Net.requestLocalHangReward` [`ReconstructedJS/src_jsc/Tools/Net.js:2071`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/InterService/InterServiceRewardDialog.js:76` |
| `pk_ids` | `Views/InterService/InterServiceRewardDialog.js:76` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:189` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/InterService/InterServiceRewardDialog.js:76` | `requestHangReward` | `user_id`, `pk_ids` | `inline` |

### ladderWarLocal.match

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=ladderWarLocal.match` | `ReconstructedJS/src_jsc/Cfg/Url.js:184` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:184` |
| 客户端封装 | `xs.Tools.Net.requestLocalInterGetMatchs` [`ReconstructedJS/src_jsc/Tools/Net.js:2031`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/InterService/InterServiceFightView.js:223` |
| `is_main` | `Views/InterService/InterServiceFightView.js:223` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `return_info` | `Views/InterService/InterServiceFightView.js:223` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:184` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/InterService/InterServiceFightView.js:223` | `requestPlayersInfor` | `user_id`, `is_main` | `inline` |

### ladderWarLocal.rewardList

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=ladderWarLocal.rewardList` | `ReconstructedJS/src_jsc/Cfg/Url.js:187` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:187` |
| 客户端封装 | `xs.Tools.Net.requestLocalGetRewardList` [`ReconstructedJS/src_jsc/Tools/Net.js:2055`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/InterService/InterServiceWorshipView.js:239` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `return_info.reward_list` | `Views/InterService/InterServiceWorshipView.js:239` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:187` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/InterService/InterServiceWorshipView.js:239` | `onm_btnWorshipClicked_hangReward` | `user_id` | `inline` |

### ladderWarLocal.worship

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=ladderWarLocal.worship` | `ReconstructedJS/src_jsc/Cfg/Url.js:186` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:186` |
| 客户端封装 | `xs.Tools.Net.requestLocalWorship` [`ReconstructedJS/src_jsc/Tools/Net.js:2047`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/InterService/InterServiceWorshipView.js:212` |
| `player_id` | `Views/InterService/InterServiceWorshipView.js:212` |
| `forcepush` | `Views/InterService/InterServiceWorshipView.js:212` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:186` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/InterService/InterServiceWorshipView.js:212` | `onm_btnWorshipClicked_worship` | `user_id`, `player_id`, `forcepush` | `inline` |

### ladderWarLocal.worshipEntry

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=ladderWarLocal.worshipEntry` | `ReconstructedJS/src_jsc/Cfg/Url.js:185` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:185` |
| 客户端封装 | `xs.Tools.Net.requestLocalWorshipEntry` [`ReconstructedJS/src_jsc/Tools/Net.js:2039`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/InterService/InterServiceRegistrationView.js:460` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:185` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/InterService/InterServiceRegistrationView.js:460` | `worshipCallback` | `user_id` | `inline` |
