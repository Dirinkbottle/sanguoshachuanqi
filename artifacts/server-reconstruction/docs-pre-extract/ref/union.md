# 协议参考：公会（union.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **17** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`union.allotDepot`](#unionallotDepot) | `?do=union.allotDepot` | `requestAllotDepot` | 1 |
| [`union.apply`](#unionapply) | `/index.php?do=union.apply` | `requestApply` | 1 |
| [`union.applyList`](#unionapplyList) | `/index.php?do=union.applyList` | `requestApplyList` | 1 |
| [`union.chgNotice`](#unionchgNotice) | `/?do=union.chgNotice` | `requestChgUnionNotice` | 1 |
| [`union.chgSign`](#unionchgSign) | `/?do=union.chgSign` | `requestChgUnionSign` | 1 |
| [`union.create`](#unioncreate) | `/?do=union.create` | `requestCreateUnion` | 1 |
| [`union.donate`](#uniondonate) | `/?do=union.donate` | `requestDonate` | 1 |
| [`union.donateInfo`](#uniondonateInfo) | `/?do=union.donateInfo` | `requestGetDonateInfo` | 1 |
| [`union.exchangeGoods`](#unionexchangeGoods) | `/index.php?do=union.exchangeGoods` | `requestUnionShopExchangeGoods` | 1 |
| [`union.getDepotList`](#uniongetDepotList) | `/index.php?do=union.getDepotList` | `requestUnionDepotList` | 1 |
| [`union.getGoodsList`](#uniongetGoodsList) | `/index.php?do=union.getGoodsList` | `requestUnionShopList` | 1 |
| [`union.getUnionActiveList`](#uniongetUnionActiveList) | `?do=union.getUnionActiveList` | `requestGetUnionActvieList` | 1 |
| [`union.info`](#unioninfo) | `/?do=union.info` | `requestGetUnionInfo` | 6 |
| [`union.manage`](#unionmanage) | `/index.php?do=union.manage` | `requestApplyOperation` | 2 |
| [`union.quite`](#unionquite) | `/?do=union.quite` | `requestExitUnion` | 1 |
| [`union.rankList`](#unionrankList) | `/index.php?do=union.rankList` | `requestUnionRankList` | 1 |
| [`union.userList`](#unionuserList) | `/index.php?do=union.userList` | `requestUnionUserList` | 2 |

### union.allotDepot

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=union.allotDepot` | `ReconstructedJS/src_jsc/Cfg/Url.js:161` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:161` |
| 客户端封装 | `xs.Tools.Net.requestAllotDepot` [`ReconstructedJS/src_jsc/Tools/Net.js:1863`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Dialog/UnionDepotNumChooseDialog.js:150` |
| `member_id` | `Views/Dialog/UnionDepotNumChooseDialog.js:150` |
| `pk_id` | `Views/Dialog/UnionDepotNumChooseDialog.js:150` |
| `num` | `Views/Dialog/UnionDepotNumChooseDialog.js:150` |
| `forcepush` | `Views/Dialog/UnionDepotNumChooseDialog.js:150` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `return_info.log_content` | `Views/Dialog/UnionDepotNumChooseDialog.js:150` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:161` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/UnionDepotNumChooseDialog.js:150` | `onClick` | `user_id`, `member_id`, `pk_id`, `num`, `forcepush` | `inline` |

### union.apply

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=union.apply` | `ReconstructedJS/src_jsc/Cfg/Url.js:76` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:76` |
| 客户端封装 | `xs.Tools.Net.requestApply` [`ReconstructedJS/src_jsc/Tools/Net.js:753`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `union_id` | `Views/Union/UnionSearch.js:209` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:76` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Union/UnionSearch.js:209` | `requestApply` | `union_id` | `inline` |

### union.applyList

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=union.applyList` | `ReconstructedJS/src_jsc/Cfg/Url.js:73` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:73` |
| 客户端封装 | `xs.Tools.Net.requestApplyList` [`ReconstructedJS/src_jsc/Tools/Net.js:737`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Union/UnionMembershipLayer.js:239` |
| `union_id` | `Views/Union/UnionMembershipLayer.js:239` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `return_info` | `Views/Union/UnionMembershipLayer.js:239` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:73` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Union/UnionMembershipLayer.js:239` | `_readPlayerList` | `user_id`, `union_id` | `inline` |

### union.chgNotice

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=union.chgNotice` | `ReconstructedJS/src_jsc/Cfg/Url.js:143` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:143` |
| 客户端封装 | `xs.Tools.Net.requestChgUnionNotice` [`ReconstructedJS/src_jsc/Tools/Net.js:1735`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `union_id` | `Views/Dialog/UnionChgNoticeSignDialog.js:129` |
| `user_id` | `Views/Dialog/UnionChgNoticeSignDialog.js:129` |
| `notice` | `Views/Dialog/UnionChgNoticeSignDialog.js:129` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Dialog/UnionChgNoticeSignDialog.js:129` |
| `return_info.log_content` | `Views/Dialog/UnionChgNoticeSignDialog.js:129` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:143` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/UnionChgNoticeSignDialog.js:129` | `onBtnConfirmClick` | `union_id`, `user_id`, `notice` | `inline` |

### union.chgSign

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=union.chgSign` | `ReconstructedJS/src_jsc/Cfg/Url.js:144` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:144` |
| 客户端封装 | `xs.Tools.Net.requestChgUnionSign` [`ReconstructedJS/src_jsc/Tools/Net.js:1727`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `union_id` | `Views/Dialog/UnionChgNoticeSignDialog.js:150` |
| `user_id` | `Views/Dialog/UnionChgNoticeSignDialog.js:150` |
| `union_sign` | `Views/Dialog/UnionChgNoticeSignDialog.js:150` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Dialog/UnionChgNoticeSignDialog.js:150` |
| `return_info.log_content` | `Views/Dialog/UnionChgNoticeSignDialog.js:150` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:144` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/UnionChgNoticeSignDialog.js:150` | `onBtnConfirmClick` | `union_id`, `user_id`, `union_sign` | `inline` |

### union.create

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=union.create` | `ReconstructedJS/src_jsc/Cfg/Url.js:146` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:146` |
| 客户端封装 | `xs.Tools.Net.requestCreateUnion` [`ReconstructedJS/src_jsc/Tools/Net.js:1456`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `union_name` | `Views/Union/UnionCreate.js:208` |
| `union_sign` | `Views/Union/UnionCreate.js:208` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Union/UnionCreate.js:208` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:146` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Union/UnionCreate.js:208` | `requestCreateUnion` | `union_name`, `union_sign` | `this.responseBack` |

### union.donate

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=union.donate` | `ReconstructedJS/src_jsc/Cfg/Url.js:148` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:148` |
| 客户端封装 | `xs.Tools.Net.requestDonate` [`ReconstructedJS/src_jsc/Tools/Net.js:1759`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Union/UnionDonationLayer.js:310` |
| `union_id` | `Views/Union/UnionDonationLayer.js:310` |
| `data_id` | `Views/Union/UnionDonationLayer.js:310` |
| `forcepush` | `Views/Union/UnionDonationLayer.js:310` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Union/UnionDonationLayer.js:310` |
| `return_info` | `Views/Union/UnionDonationLayer.js:310` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:148` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Union/UnionDonationLayer.js:310` | `requestDonate` | `user_id`, `union_id`, `data_id`, `forcepush` | `inline` |

### union.donateInfo

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=union.donateInfo` | `ReconstructedJS/src_jsc/Cfg/Url.js:147` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:147` |
| 客户端封装 | `xs.Tools.Net.requestGetDonateInfo` [`ReconstructedJS/src_jsc/Tools/Net.js:1751`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Union/UnionDonationLayer.js:201` |
| `union_id` | `Views/Union/UnionDonationLayer.js:201` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `union_info` | `Views/Union/UnionDonationLayer.js:201` |
| `donate_records` | `Views/Union/UnionDonationLayer.js:201` |
| `result` | `Views/Union/UnionDonationLayer.js:201` |
| `return_info` | `Views/Union/UnionDonationLayer.js:201` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:147` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Union/UnionDonationLayer.js:201` | `requestGetDonateInfo` | `user_id`, `union_id` | `inline` |

### union.exchangeGoods

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=union.exchangeGoods` | `ReconstructedJS/src_jsc/Cfg/Url.js:72` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:72` |
| 客户端封装 | `xs.Tools.Net.requestUnionShopExchangeGoods` [`ReconstructedJS/src_jsc/Tools/Net.js:713`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Union/UnionShopLayer.js:163` |
| `pk_id` | `Views/Union/UnionShopLayer.js:163` |
| `forcepush` | `Views/Union/UnionShopLayer.js:163` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `return_info.add_list` | `Views/Union/UnionShopLayer.js:163` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:72` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Union/UnionShopLayer.js:163` | `UnionShopBtnClick` | `user_id`, `pk_id`, `forcepush` | `inline` |

### union.getDepotList

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=union.getDepotList` | `ReconstructedJS/src_jsc/Cfg/Url.js:70` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:70` |
| 客户端封装 | `xs.Tools.Net.requestUnionDepotList` [`ReconstructedJS/src_jsc/Tools/Net.js:729`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Union/UnionDepotLayer.js:254` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `depot_list` | `Views/Union/UnionDepotLayer.js:254` |
| `length` | `Views/Union/UnionDepotLayer.js:254` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:70` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Union/UnionDepotLayer.js:254` | `_readUnionDepotList` | `user_id` | `inline` |

### union.getGoodsList

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=union.getGoodsList` | `ReconstructedJS/src_jsc/Cfg/Url.js:71` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:71` |
| 客户端封装 | `xs.Tools.Net.requestUnionShopList` [`ReconstructedJS/src_jsc/Tools/Net.js:705`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Union/UnionShopLayer.js:290` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `return_info.user_donate` | `Views/Union/UnionShopLayer.js:290` |
| `return_info.goods_list` | `Views/Union/UnionShopLayer.js:290` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:71` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Union/UnionShopLayer.js:290` | `_readUnionList` | `user_id` | `inline` |

### union.getUnionActiveList

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=union.getUnionActiveList` | `ReconstructedJS/src_jsc/Cfg/Url.js:158` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:158` |
| 客户端封装 | `xs.Tools.Net.requestGetUnionActvieList` [`ReconstructedJS/src_jsc/Tools/Net.js:1839`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Dialog/UnionActiveDialog.js:230` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `list` | `Views/Dialog/UnionActiveDialog.js:230` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:158` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/UnionActiveDialog.js:230` | `_readUnionList` | `user_id` | `inline` |

### union.info

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=union.info` | `ReconstructedJS/src_jsc/Cfg/Url.js:142` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:142` |
| 客户端封装 | `xs.Tools.Net.requestGetUnionInfo` [`ReconstructedJS/src_jsc/Tools/Net.js:1711`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Union/UnionDepotLayer.js:235` |
| `union_name` | `Views/Union/UnionSearch.js:229` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/MainMenuBtnView.js:215` |
| `return_info.has_joined` | `Views/MainMenuBtnView.js:215` |
| `return_info` | `Views/MainMenuBtnView.js:215` |
| `return_info.user_role` | `Views/Union/UnionDepotLayer.js:235` |
| `return_info.union_list` | `Views/Union/UnionSearch.js (via this.searchBack)` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:142` | `Cfg.Url` |

**调用点**（6）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/MainMenuBtnView.js:215` | `unionBtnClick` | 显式发送空对象 {} | `this.responseUnionBack` |
| `Views/Union/UnionDepotLayer.js:235` | `init` | `user_id` | `inline` |
| `Views/Union/UnionInfoLayer.js:170` | `requestGetUnioninfo` | `user_id` | `inline` |
| `Views/Union/UnionSearch.js:199` | `requestGetUnionInfo` | 显式发送空对象 {} | `inline` |
| `Views/Union/UnionSearch.js:229` | `requestSearch` | `union_name` | `inline` |
| `Views/Dialog/UsrUpgradeNew.js:215` | `buttonFunction` | 显式发送空对象 {} | `inline` |

### union.manage

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=union.manage` | `ReconstructedJS/src_jsc/Cfg/Url.js:75` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:75` |
| 客户端封装 | `xs.Tools.Net.requestApplyOperation` [`ReconstructedJS/src_jsc/Tools/Net.js:745`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Union/UnionMemberLayer.js:365` |
| `union_id` | `Views/Union/UnionMemberLayer.js:365` |
| `target_id` | `Views/Union/UnionMemberLayer.js:365` |
| `type` | `Views/Union/UnionMemberLayer.js:365` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Union/UnionMemberLayer.js:365` |
| `return_info.log_content` | `Views/Union/UnionMemberLayer.js:365` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:75` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Union/UnionMemberLayer.js:365` | `onBtnMenberCallBack` | `user_id`, `union_id`, `target_id`, `type` | `inline` |
| `Views/Union/UnionMembershipLayer.js:76` | `onTouchCallBack` | `user_id`, `union_id`, `target_id`, `type` | `inline` |

### union.quite

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/?do=union.quite` | `ReconstructedJS/src_jsc/Cfg/Url.js:145` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:145` |
| 客户端封装 | `xs.Tools.Net.requestExitUnion` [`ReconstructedJS/src_jsc/Tools/Net.js:1743`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `union_id` | `Views/Union/UnionInfoLayer.js:303` |
| `user_id` | `Views/Union/UnionInfoLayer.js:303` |
| `forcepush` | `Views/Union/UnionInfoLayer.js:303` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Union/UnionInfoLayer.js:303` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:145` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Union/UnionInfoLayer.js:303` | `rightCB` | `union_id`, `user_id`, `forcepush` | `inline` |

### union.rankList

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=union.rankList` | `ReconstructedJS/src_jsc/Cfg/Url.js:69` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:69` |
| 客户端封装 | `xs.Tools.Net.requestUnionRankList` [`ReconstructedJS/src_jsc/Tools/Net.js:697`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Union/UnionRankingLayer.js:292` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `return_info` | `Views/Union/UnionRankingLayer.js:292` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:69` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Union/UnionRankingLayer.js:292` | `_readUnionList` | `user_id` | `inline` |

### union.userList

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=union.userList` | `ReconstructedJS/src_jsc/Cfg/Url.js:74` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:74` |
| 客户端封装 | `xs.Tools.Net.requestUnionUserList` [`ReconstructedJS/src_jsc/Tools/Net.js:721`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `union_id` | `Views/Union/UnionMemberLayer.js:455` |
| `user_id` | `Views/Union/UnionMemberLayer.js:455` |
| `forcepush` | `Views/Dialog/UnionDepotMemberDialog.js:254` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `result` | `Views/Union/UnionMemberLayer.js:455` |
| `return_info.user_list` | `Views/Union/UnionMemberLayer.js:455` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:74` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Union/UnionMemberLayer.js:455` | `_readPlayerList` | `union_id`, `user_id` | `inline` |
| `Views/Dialog/UnionDepotMemberDialog.js:254` | `_readMemberList` | `union_id`, `user_id`, `forcepush` | `inline` |
