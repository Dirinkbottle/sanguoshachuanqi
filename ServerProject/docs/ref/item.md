# 协议参考：道具与商店（item.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **8** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`item.buy`](#itembuy) | `/index.php?do=item.buy` | `requestBuyGood` | 5 |
| [`item.buyPlusUse`](#itembuyPlusUse) | `/index.php?do=item.buyPlusUse` | `requestGiftAndOpen` | 3 |
| [`item.deleteItem`](#itemdeleteItem) | `/index.php?do=item.deleteItem` | `requestDeleteItem` | 2 |
| [`item.getList`](#itemgetList) | `/index.php?do=item.getList` | `requestGoodsList` | 6 |
| [`item.getQuickList`](#itemgetQuickList) | `/index.php?do=item.getQuickList` | `requestLimitGoodsList` | 2 |
| [`item.quickBuy`](#itemquickBuy) | `/index.php?do=item.quickBuy` | `requestQuickBuy` | 6 |
| [`item.resolveItem`](#itemresolveItem) | `/index.php?do=item.resolveItem` | `requestResolveItem` | 1 |
| [`item.use`](#itemuse) | `/index.php?do=item.use` | `requestUseItem` | 6 |

### item.buy

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=item.buy` | `ReconstructedJS/src_jsc/Cfg/Url.js:52` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:52` |
| 客户端封装 | `xs.Tools.Net.requestBuyGood`（注入 `ladder_push=true`, `vipstore_push=true`, `forcepush=param.forcepush`） [`ReconstructedJS/src_jsc/Tools/Net.js:815`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `ladder_push` | `ReconstructedJS/src_jsc/Tools/Net.js:815 (wrapper-literal = true)` |
| `vipstore_push` | `ReconstructedJS/src_jsc/Tools/Net.js:815 (wrapper-literal = true)` |
| `forcepush` | `ReconstructedJS/src_jsc/Tools/Net.js:815 (wrapper-injected = param.forcepush)` |
| `item_advanced_id` | `Views/Table/Cell/AvoidWarTableViewCell.js:103` |
| `discount_price` | `Views/Table/Cell/AvoidWarTableViewCell.js:105` |
| `item_num` | `Views/Table/Cell/AvoidWarTableViewCell.js:107` |
| `currency_type` | `Views/Table/Cell/AvoidWarTableViewCell.js:109` |
| `addNum` | `Scene/Ladder/LadderGiftView.js:161` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `add_list` | `Scene/Ladder/LadderGiftView.js:150` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:52` | `Cfg.Url` |

**调用点**（5）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Table/Cell/AvoidWarTableViewCell.js:111` | `buyItemCallback` | `item_advanced_id`, `discount_price`, `item_num`, `currency_type` | `inline` |
| `Views/Dialog/Dialog.js:191` | `init` | `item_advanced_id`, `discount_price`, `item_num`, `addNum`, `currency_type` | `inline` |
| `Scene/Ladder/LadderGiftView.js:150` | `onExchangeBtn` | `item_advanced_id`, `discount_price`, `item_num`, `currency_type`, `forcepush` | `inline` |
| `Scene/Ladder/LadderGiftView_Honor.js:207` | `onExchangeBtn` | `item_advanced_id`, `discount_price`, `item_num`, `currency_type`, `forcepush` | `inline` |
| `Tools/Net.js:42` | `BuyGood` | `item_advanced_id`, `discount_price`, `item_num`, `currency_type`, `forcepush` | `this.BuyGoodSuccessCallback` |

### item.buyPlusUse

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=item.buyPlusUse` | `ReconstructedJS/src_jsc/Cfg/Url.js:57` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:57` |
| 客户端封装 | `xs.Tools.Net.requestGiftAndOpen`（注入 `ladder_push=true`, `forcepush=param.forcepush`） [`ReconstructedJS/src_jsc/Tools/Net.js:890`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `ladder_push` | `ReconstructedJS/src_jsc/Tools/Net.js:890 (wrapper-literal = true)` |
| `forcepush` | `ReconstructedJS/src_jsc/Tools/Net.js:890 (wrapper-injected = param.forcepush)` |
| `item_advanced_id` | `Scene/Ladder/LadderGiftView.js:185` |
| `discount_price` | `Scene/Ladder/LadderGiftView.js:185` |
| `item_num` | `Scene/Ladder/LadderGiftView.js:185` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `add_list` | `Tools/Net.js (via UseItemSuccess)` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:57` | `Cfg.Url` |

**调用点**（3）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Ladder/LadderGiftView.js:185` | `onGetGiftBtn` | `item_advanced_id`, `discount_price`, `item_num`, `forcepush` | `this.onBuyRespose` |
| `Scene/Ladder/LadderGiftView_Honor.js:119` | `getAllCallback` | `item_advanced_id`, `discount_price`, `item_num`, `forcepush` | `getData (local function literal)` |
| `Scene/Ladder/LadderGiftView_Honor.js:246` | `onGetGiftBtn` | `item_advanced_id`, `discount_price`, `item_num`, `forcepush` | `this.onBuyRespose` |

### item.deleteItem

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=item.deleteItem` | `ReconstructedJS/src_jsc/Cfg/Url.js:55` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:55` |
| 客户端封装 | `xs.Tools.Net.requestDeleteItem` [`ReconstructedJS/src_jsc/Tools/Net.js:874`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Scene/Bag/BagScene.js:900` |
| `item_id` | `Scene/Bag/BagScene.js:900` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:55` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Bag/BagScene.js:900` | `rightCB` | `user_id`, `item_id` | `inline` |
| `Scene/Bag/BagScene.js:928` | `rightCB` | `user_id`, `item_id` | `inline` |

### item.getList

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=item.getList` | `ReconstructedJS/src_jsc/Cfg/Url.js:50` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:50` |
| 客户端封装 | `xs.Tools.Net.requestGoodsList` [`ReconstructedJS/src_jsc/Tools/Net.js:799`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `refreshStoreSuccessCallback` | `Views/StoreItemView.js:77` |
| `is_gift` | `Views/StoreItemView.js:79` |
| `belongs_shop` | `Views/StoreItemView.js:81` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `item_list` | `Views/StoreItemView.js:83` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:50` | `Cfg.Url` |

**调用点**（6）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/StoreItemView.js:83` | `refreshStore` | `refreshStoreSuccessCallback`, `is_gift`, `belongs_shop` | `this.refreshStoreSuccessCallback` |
| `Scene/Ladder/LadderGiftView.js:48` | `init` | `is_gift`, `belongs_shop` | `this.onGetListResponse` |
| `Scene/Ladder/LadderGiftView.js:202` | `reFresh` | `is_gift`, `belongs_shop` | `this.onGetListResponse` |
| `Scene/Ladder/LadderGiftView_Honor.js:106` | `getAllCallback` | `is_gift`, `belongs_shop` | `this.onGetListResponse` |
| `Scene/Ladder/LadderGiftView_Honor.js:153` | `requestGetGoodsList` | `is_gift`, `belongs_shop` | `this.onGetListResponse` |
| `Scene/Ladder/LadderGiftView_Honor.js:270` | `reFresh` | `is_gift`, `belongs_shop` | `this.onGetListResponse` |

### item.getQuickList

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=item.getQuickList` | `ReconstructedJS/src_jsc/Cfg/Url.js:51` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:51` |
| 客户端封装 | `xs.Tools.Net.requestLimitGoodsList` [`ReconstructedJS/src_jsc/Tools/Net.js:807`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `requestLimitGoodsListSuccessCallback` | `Views/WorshipWinePopNode.js:295` |
| `item_id` | `Views/WorshipWinePopNode.js:297` |
| `refreshData` | `Views/Table/AvoidWarTableView.js:47` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `item_list` | `Views/WorshipWinePopNode.js:299` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:51` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/WorshipWinePopNode.js:299` | `initDataSource` | `requestLimitGoodsListSuccessCallback`, `item_id` | `this.requestLimitGoodsListSuccessCallback` |
| `Views/Table/AvoidWarTableView.js:51` | `reGetData` | `refreshData`, `requestLimitGoodsListSuccessCallback`, `item_id` | `this.requestLimitGoodsListSuccessCallback` |

### item.quickBuy

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=item.quickBuy` | `ReconstructedJS/src_jsc/Cfg/Url.js:121` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:121` |
| 客户端封装 | `xs.Tools.Net.requestQuickBuy`（注入 `forcepush=true`） [`ReconstructedJS/src_jsc/Tools/Net.js:1320`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `forcepush` | `ReconstructedJS/src_jsc/Tools/Net.js:1320 (wrapper-literal = true)` |
| `item_id` | `Views/Dialog/SpecificDialog.js:263` |
| `item_num` | `Views/Dialog/SpecificDialog.js:263` |
| `currency_type` | `Views/Dialog/SpecificDialog.js:263` |
| `disCountPrice` | `Views/Dialog/SpecificDialog.js:263` |
| `extra_param` | `Views/Dialog/SpecificDialog.js:496` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `add_list` | `Views/Dialog/SpecificDialog.js:263` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:121` | `Cfg.Url` |

**调用点**（6）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/SpecificDialog.js:263` | `init` | `item_id`, `item_num`, `currency_type`, `disCountPrice` | `inline` |
| `Views/Dialog/SpecificDialog.js:310` | `init` | `item_id`, `item_num`, `currency_type`, `disCountPrice` | `inline` |
| `Views/Dialog/SpecificDialog.js:378` | `init` | `item_id`, `item_num`, `currency_type`, `disCountPrice` | `inline` |
| `Views/Dialog/SpecificDialog.js:443` | `init` | `item_id`, `item_num`, `currency_type`, `disCountPrice` | `inline` |
| `Views/Dialog/SpecificDialog.js:496` | `init` | `item_id`, `item_num`, `currency_type`, `disCountPrice`, `extra_param` | `inline` |
| `Views/Dialog/SpecificDialog.js:633` | `createChallengeNotEnough` | `item_id`, `item_num`, `extra_param`, `currency_type`, `disCountPrice` | `inline` |

### item.resolveItem

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=item.resolveItem` | `ReconstructedJS/src_jsc/Cfg/Url.js:54` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:54` |
| 客户端封装 | `xs.Tools.Net.requestResolveItem`（注入 `forcepush=true`） [`ReconstructedJS/src_jsc/Tools/Net.js:864`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `forcepush` | `ReconstructedJS/src_jsc/Tools/Net.js:864 (wrapper-literal = true)` |
| `user_item_id` | `Scene/Bag/BagScene.js:258` |
| `item_num` | `Scene/Bag/BagScene.js:260` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `add_list` | `Tools/Net.js (via UseItemSuccess)` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:54` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Bag/BagScene.js:265` | `confirmSelect` | `user_item_id`, `item_num` | `this.useItemSuccessCallback` |

### item.use

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=item.use` | `ReconstructedJS/src_jsc/Cfg/Url.js:53` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:53` |
| 客户端封装 | `xs.Tools.Net.requestUseItem`（注入 `forcepush=true`） [`ReconstructedJS/src_jsc/Tools/Net.js:854`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `forcepush` | `ReconstructedJS/src_jsc/Tools/Net.js:854 (wrapper-literal = true)` |
| `user_item_id` | `Views/Table/Cell/AvoidWarTableViewCell.js:121` |
| `item_num` | `Views/Table/Cell/AvoidWarTableViewCell.js:123` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `add_list` | `Views/Dialog/SpecificDialog.js:359` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:53` | `Cfg.Url` |

**调用点**（6）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Table/Cell/AvoidWarTableViewCell.js:125` | `useItemCallback` | `user_item_id`, `item_num` | `inline` |
| `Views/Dialog/SpecificDialog.js:359` | `init` | `user_item_id`, `item_num` | `inline` |
| `Views/Dialog/SpecificDialog.js:424` | `init` | `user_item_id`, `item_num` | `inline` |
| `Scene/Bag/BagScene.js:272` | `confirmSelect` | `user_item_id`, `item_num` | `this.useItemSuccessCallback` |
| `Scene/Bag/BagScene.js:417` | `BagItemCell_centerBtnCallback` | `user_item_id`, `item_num` | `inline` |
| `Scene/Bag/BagScene.js:872` | `rightCB` | `user_item_id`, `item_num` | `this.useItemSuccessCallback` |
