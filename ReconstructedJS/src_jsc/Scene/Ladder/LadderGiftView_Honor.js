// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Ladder/LadderGiftView_Honor.js:1
// source line 6, bytecode pc 0
var LadderGiftView_RfreshTime;
// source line 6, bytecode pc 18
(LadderGiftView_RfreshTime = 3600);
// source line 295, bytecode pc 424
(xs.Views.GiftListView_Honor = cc.Layer.extend({
    ctor: function() {
    // source line 11, bytecode pc 12
    this._super();
    // source line 12, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    // source line 16, bytecode pc 29
    (this.viewCellSize = cc.size(850, 120));
    // source line 17, bytecode pc 37
    (this.m_honorNumLabel = null);
    // source line 18, bytecode pc 45
    (this.m_hintLabel = null);
    // source line 19, bytecode pc 53
    (this.m_canExchangeList = null);
    // source line 22, bytecode pc 89
    (this.headBarNode = xs.ccb_reader.load("ccb3/beta_1_duihuanrongyudi.ccbi", this));
    // source line 23, bytecode pc 131
    this.headBarNode.setContentSize(cc.size(554, 36));
    // source line 24, bytecode pc 170
    this.headBarNode.setAnchorPoint(cc.p(0, 1));
    // source line 25, bytecode pc 229
    xs.Utils.Node.attachNodes(this, this.headBarNode, { desc: "lt", sc: true });
    // source line 26, bytecode pc 282
    xs.Utils.UI.replaceCcbByCfg(this.headBarNode, this.cfg.headBar.cfg, this);
    // source line 30, bytecode pc 339
    (this.giftTableView = cc.TableView.create(this, xs.Views.TablePage.getTableViewSize()));
    // source line 31, bytecode pc 359
    this.giftTableView.setDelegate(this);
    // source line 32, bytecode pc 388
    this.giftTableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 33, bytecode pc 417
    this.giftTableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 38, bytecode pc 507
    xs.Utils.Node.attachNodes(this, this.giftTableView, { desc: "lb", offset: xs.Views.TablePage.getTableViewOffset(), sc: true });
    // source line 44, bytecode pc 546
    (this.m_getAllButton = xs.Views.Btn.createByStyleId("BS_Btn1"));
    // source line 45, bytecode pc 585
    this.m_getAllButton.setAnchorPoint(cc.p(1, 1));
    // source line 46, bytecode pc 636
    this.m_getAllButton.setString(xs.Tools.String.createString("GetAllAwards"));
    // source line 47, bytecode pc 663
    this.m_getAllButton.addCallBackForEvent(this, this.getAllCallback);
    // source line 53, bytecode pc 769
    xs.Utils.Node.attachNodes(this, this.m_getAllButton, { desc: "rt", sc: true, offset: { x: (-xs.Views.MainMenuView.Width - 20), y: -50 } });
    // source line 59, bytecode pc 816
    xs.Utils.Notify.addObserver(this, this.updateHonor, xs.Constant_Notify_ModelChange_UserInfo);
    // source line 61, bytecode pc 818
    return true;
},
    getAllCallback: function() {
    var honor, awardList, getDataNum, canExchangeNum, getData, i;
    // source line 64, bytecode pc 19
    this.m_getAllButton.setEnabled(false);
    // source line 65, bytecode pc 81
    (honor = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getUserHonor());
    // source line 66, bytecode pc 96
    (awardList = []);
    // source line 67, bytecode pc 107
    (getDataNum = 0);
    // source line 68, bytecode pc 118
    (canExchangeNum = 0);
    // source line 69, bytecode pc 127
    (getData = function(data) {
    var j, i, param;
    // source line 70, bytecode pc 32
    (getDataNum = (+getDataNum + 1));
    // source line 73, bytecode pc 38
    (j = 0);
    // source line 74, bytecode pc 43
    (i = 0);
    while ((i < awardList.length)) {
        if (((data.add_list[0].type == awardList[i].type) && (data.add_list[0].id == awardList[i].id))) {
            // source line 76, bytecode pc 236
            (awardList[i].num = (xs.Utils.parseIntSafe(awardList[i].num) + xs.Utils.parseIntSafe(data.add_list[0].num)).toString());
            break;
        }
        // source line 79, bytecode pc 255
        (j = (+j + 1));
        // source line 74, bytecode pc 270
        (i = (+i + 1));
    }
    if ((j == awardList.length)) {
        // source line 82, bytecode pc 350
        awardList.push(data.add_list[0]);
    }
    if ((getDataNum == canExchangeNum)) {
        // source line 87, bytecode pc 384
        (param = {});
        // source line 88, bytecode pc 402
        (param.adds = awardList);
        // source line 89, bytecode pc 443
        (param.title = xs.Tools.String.createString("comm_propAdd"));
        // source line 90, bytecode pc 480
        xs.Views.Mgr.showDialogByName("UseItemSuccessDialog", param);
        // source line 92, bytecode pc 536
        xs.Tools.Net.requestGoodsList({ is_gift: 0, belongs_shop: 5 }, this.onGetListResponse, this);
        // source line 93, bytecode pc 556
        this.m_getAllButton.setEnabled(true);
    }
});
    // source line 97, bytecode pc 132
    (i = 0);
    while ((i < this.exchangeListData.length)) {
        if (this.exchangeListData[i].can_exchange) {
            if ((honor >= this.exchangeListData[i].discount_price)) {
                // source line 101, bytecode pc 215
                (canExchangeNum = (+canExchangeNum + 1));
                // source line 109, bytecode pc 308
                xs.Tools.Net.requestGiftAndOpen({
    item_advanced_id: this.exchangeListData[i].pk_id,
    discount_price: this.exchangeListData[i].discount_price,
    item_num: 1,
    forcepush: true
}, getData, this);
            }
        }
        // source line 97, bytecode pc 322
        (i = (+i + 1));
    }
    if ((canExchangeNum == 0)) {
        // source line 116, bytecode pc 420
        xs.Views.Mgr.showToast(xs.Tools.String.createString("NoAwardsCanGet"));
        // source line 117, bytecode pc 440
        this.m_getAllButton.setEnabled(true);
    }
},
    onEnter: function() {
    // source line 121, bytecode pc 12
    this._super();
    // source line 123, bytecode pc 25
    this.requestGetGoodsList();
    // source line 125, bytecode pc 38
    this.updateHonor();
},
    onExit: function() {
    // source line 130, bytecode pc 12
    this._super();
    // source line 132, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_UserInfo);
},
    requestGetGoodsList: function() {
    // source line 138, bytecode pc 55
    xs.Tools.Net.requestGoodsList({ is_gift: 0, belongs_shop: 5 }, this.onGetListResponse, this);
},
    updateHonor: function() {
    var honor;
    // source line 143, bytecode pc 61
    (honor = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getUserHonor());
    // source line 144, bytecode pc 83
    this.m_honorNumLabel.setString(honor);
    // source line 146, bytecode pc 180
    this.m_hintLabel.setPosition(cc.p(((this.m_honorNumLabel.getPositionX() + this.m_honorNumLabel.getContentSize().width) + 12), this.m_honorNumLabel.getPositionY()));
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 150, bytecode pc 17
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 152, bytecode pc 67
        (cell = xs.Views.GiftListView_HonorCell.create(this.exchangeListData[idx]));
        // source line 153, bytecode pc 89
        cell.setBaseTouchPriority(this.m_baseTouchPriority);
        // source line 154, bytecode pc 106
        cell.setListener(this);
    } else {
        // source line 156, bytecode pc 137
        cell.updateInfo(this.exchangeListData[idx]);
    }
    // source line 158, bytecode pc 141
    return cell;
},
    numberOfCellsInTableView: function(table) {
    if ((this.exchangeListData !== undefined)) {
        // source line 163, bytecode pc 28
        return this.exchangeListData.length;
    }
    // source line 165, bytecode pc 30
    return 0;
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 169, bytecode pc 6
    return this.viewCellSize;
},
    tableCellTouched: function(table, cell) {
},
    onExchangeBtn: function(idx) {
    var pkid, discountPrice, currencyType, itemNum;
    // source line 178, bytecode pc 24
    (pkid = this.exchangeListData[idx].pk_id);
    // source line 179, bytecode pc 49
    (discountPrice = this.exchangeListData[idx].discount_price);
    // source line 180, bytecode pc 74
    (currencyType = this.exchangeListData[idx].currency_type);
    // source line 181, bytecode pc 85
    (itemNum = 1);
    // source line 204, bytecode pc 189
    xs.Tools.Net.requestBuyGood({
    item_advanced_id: pkid,
    discount_price: discountPrice,
    item_num: itemNum,
    currency_type: currencyType,
    forcepush: true
}, function(jsonObj) {
    var addNum;
    // source line 191, bytecode pc 18
    (addNum = jsonObj.add_list[0].num);
    // source line 198, bytecode pc 122
    xs.Views.Mgr.showDialogByName("ExchangeGanodermaDialog", {
    item_advanced_id: pkid,
    discount_price: discountPrice,
    item_num: itemNum,
    addNum: addNum,
    currency_type: currencyType
});
    // source line 201, bytecode pc 139
    this.onGetListResponse(jsonObj);
}, this);
},
    onGetGiftBtn: function(idx) {
    var pkid, discountPrice, itemNum;
    // source line 210, bytecode pc 18
    (pkid = this.exchangeListData[idx].pk_id);
    // source line 211, bytecode pc 37
    (discountPrice = this.exchangeListData[idx].discount_price);
    // source line 212, bytecode pc 42
    (itemNum = 1);
    if ((this.exchangeListData[idx].can_exchange == false)) {
        // source line 215, bytecode pc 124
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_97"));
    } else {
        if ((this.exchangeListData[idx].is_purchased === 0)) {
            // source line 218, bytecode pc 211
            xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_98"));
        } else {
            // source line 228, bytecode pc 289
            xs.Tools.Net.requestGiftAndOpen({ item_advanced_id: pkid, discount_price: discountPrice, item_num: itemNum, forcepush: true }, this.onBuyRespose, this);
        }
    }
},
    onBuyRespose: function(jsonObj) {
    // source line 235, bytecode pc 8
    (this.m_baseTouchPriority = -1);
    // source line 236, bytecode pc 50
    xs.Tools.Net.getInstance().UseItemSuccess(jsonObj);
    // source line 237, bytecode pc 63
    this.reFresh();
},
    onGetListResponse: function(jsonObj) {
    // source line 242, bytecode pc 14
    (this.exchangeListData = jsonObj.item_list);
    // source line 243, bytecode pc 27
    this.refreshTableViewWithOldPos();
    // source line 246, bytecode pc 75
    xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
},
    reFresh: function() {
    // source line 251, bytecode pc 12
    this.updateHonor();
    // source line 254, bytecode pc 68
    xs.Tools.Net.requestGoodsList({ is_gift: 0, belongs_shop: 5 }, this.onGetListResponse, this);
},
    refreshTableViewWithOldPos: function() {
    if (!this.oldContentOffset) {
        // source line 260, bytecode pc 29
        this.giftTableView.reloadData();
        // source line 261, bytecode pc 53
        (this.oldContentOffset = this.giftTableView.getContentOffset());
    } else {
        // source line 263, bytecode pc 82
        (this.oldContentOffset = this.giftTableView.getContentOffset());
        // source line 264, bytecode pc 100
        this.giftTableView.reloadData();
        // source line 265, bytecode pc 125
        this.giftTableView.setContentOffset(this.oldContentOffset);
    }
    if ((this.oldContentOffset.y < this.giftTableView.minContainerOffset().y)) {
        // source line 269, bytecode pc 182
        this.giftTableView.reloadData();
    }
},
    setListener: function(listener) {
    // source line 274, bytecode pc 9
    (this.m_listener = listener);
},
    setBaseTouchPriority: function(priority) {
    // source line 278, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 279, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 280, bytecode pc 71
    this.giftTableView.setTouchPriority((this.m_baseTouchPriority + this.cfg.tableView.priority));
    // source line 281, bytecode pc 113
    this.m_getAllButton.setTouchPriority((this.m_baseTouchPriority + this.cfg.tableView.priority));
},
    cfg: {
        headBar: {
            cfg: [
                { tag: 10, type: "ls", name: "m_honorNumLabel", id: "LS_liebiaoInf2" },
                { tag: 2, type: "ls", name: "m_hintLabel", id: "LS_qiangduo_Inf", stringId: "auto_name_99" }
            ]
        },
        tableView: { priority: -1 },
        refreshBtn: { priority: -1 }
    }
}));
// source line 301, bytecode pc 450
(xs.Views.GiftListView_Honor.create = function() {
    var ret;
    // source line 302, bytecode pc 23
    (ret = new xs.Views.GiftListView_Honor());
    if ((ret && ret.init())) {
        // source line 304, bytecode pc 55
        return ret;
    }
    // source line 306, bytecode pc 57
    return null;
});
// source line 435, bytecode pc 826
(xs.Views.GiftListView_HonorCell = cc.TableViewCell.extend({
    draw: function(ctx) {
    // source line 312, bytecode pc 16
    this._super(ctx);
},
    init: function(data) {
    // source line 316, bytecode pc 9
    (this.data = data);
    // source line 318, bytecode pc 45
    (this.ccbNode = xs.ccb_reader.load("ccb3/beta_1_wupingxinxikuang_lingzhi.ccbi", this));
    // source line 319, bytecode pc 104
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "lb", sc: false });
    // source line 321, bytecode pc 112
    (this.m_itemName = null);
    // source line 322, bytecode pc 120
    (this.m_itemDesc = null);
    // source line 323, bytecode pc 128
    (this.m_itemPrice = null);
    // source line 324, bytecode pc 136
    (this.m_itemPriceStr = null);
    // source line 326, bytecode pc 184
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 328, bytecode pc 235
    this.m_itemPriceStr.setString(xs.Tools.String.createString("honor_2"));
    // source line 332, bytecode pc 320
    (this.newBtn = xs.Utils.replaceButton(this.ccbNode, this.cfg.btn.tag, xs.Views.Btn.create("Btn_ExchangeForCell")));
    // source line 333, bytecode pc 340
    this.newBtn.setSwallowTouch(false);
    // source line 334, bytecode pc 360
    this.newBtn.setEventOnDisable(true);
    // source line 335, bytecode pc 398
    this.newBtn.setOnClickCallBack(this.onBtnCallBack.bind(this));
    // source line 337, bytecode pc 411
    this.updateInfo();
    // source line 340, bytecode pc 413
    return true;
},
    onEnter: function() {
    // source line 344, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 348, bytecode pc 12
    this._super();
},
    updateInfo: function(data) {
    var itemModel, newIcon, numSpriteName, numSprite;
    if (data) {
        // source line 353, bytecode pc 17
        (this.data = data);
    }
    // source line 356, bytecode pc 59
    (itemModel = xs.Models.Item.createWithBase(this.data.item_id));
    // source line 357, bytecode pc 80
    (this.itemType = itemModel.getItemType());
    // source line 358, bytecode pc 113
    this.m_itemName.setString(itemModel.getNameString());
    // source line 359, bytecode pc 146
    this.m_itemDesc.setString(itemModel.getDescString());
    // source line 360, bytecode pc 176
    this.m_itemPrice.setString(this.data.discount_price);
    // source line 362, bytecode pc 273
    this.m_itemPrice.setPosition(cc.p(((this.m_itemPriceStr.getPositionX() + this.m_itemPriceStr.getContentSize().width) + 10), this.m_itemPriceStr.getPositionY()));
    if ((this.data.can_exchange === false)) {
        // source line 365, bytecode pc 342
        this.newBtn.setString(xs.Tools.String.createString("auto_name_100"));
        // source line 366, bytecode pc 362
        this.newBtn.setEnabled(false);
    } else {
        // source line 368, bytecode pc 418
        this.newBtn.setString(xs.Tools.String.createString("auto_name_101"));
        if ((xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getUserHonor() >= this.data.discount_price)) {
            // source line 371, bytecode pc 513
            this.newBtn.setEnabled(true);
        } else {
            // source line 374, bytecode pc 538
            this.newBtn.setEnabled(false);
        }
    }
    // source line 380, bytecode pc 556
    (newIcon = itemModel.createIcon_Grade());
    // source line 381, bytecode pc 606
    xs.Utils.replaceIcon(this.ccbNode, this.cfg.itemIcon.tag, newIcon);
    // source line 386, bytecode pc 615
    (numSpriteName = "");
    // source line 387, bytecode pc 627
    switch (this.data.show_num) {
        case "5":
        // source line 389, bytecode pc 671
        (numSpriteName = "lingzhiNum_5");
        break;
        case "50":
        // source line 392, bytecode pc 685
        (numSpriteName = "lingzhiNum_50");
        break;
        case "500":
        // source line 395, bytecode pc 699
        (numSpriteName = "lingzhiNum_500");
        break;
        default:
        break;
    }
    if ((numSpriteName !== "")) {
        // source line 399, bytecode pc 758
        (numSprite = xs.Factorys.Sprite.create(numSpriteName, "TiantixitongScene01"));
        // source line 400, bytecode pc 779
        numSprite.setScale(0.8);
        // source line 401, bytecode pc 817
        numSprite.setPosition(cc.p(45, -40));
        // source line 402, bytecode pc 853
        numSprite.setAnchorPoint(cc.p(1, 0));
        // source line 403, bytecode pc 872
        newIcon.addChild(numSprite);
    }
},
    setListener: function(listener) {
    // source line 409, bytecode pc 9
    (this.m_listener = listener);
},
    onBtnCallBack: function() {
    if ((this.itemType === xs.Models.ItemType_Gift)) {
        // source line 414, bytecode pc 57
        this.m_listener.onGetGiftBtn(this.getIdx());
    } else {
        // source line 416, bytecode pc 93
        this.m_listener.onExchangeBtn(this.getIdx());
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 422, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 423, bytecode pc 51
    this.newBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.btn.priority));
},
    cfg: {
        btn: { tag: 13, priority: -1 },
        itemIcon: { tag: 14 },
        ccbCfg: [
            { tag: 10, type: "ls", name: "m_itemName", id: "LS_wujiangInf1" },
            { tag: 11, type: "ls", name: "m_itemDesc", id: "LS_liebiaoInf" },
            { tag: 15, type: "ls", name: "m_itemPriceStr", id: "LS_liebiaoInf" },
            { tag: 12, type: "ls", name: "m_itemPrice", id: "LS_liebiaoInf2" }
        ]
    }
}));
// source line 443, bytecode pc 852
(xs.Views.GiftListView_HonorCell.create = function(data) {
    var ret;
    // source line 444, bytecode pc 23
    (ret = new xs.Views.GiftListView_HonorCell());
    if ((ret && ret.init(data))) {
        // source line 446, bytecode pc 59
        return ret;
    }
    // source line 448, bytecode pc 61
    return null;
});
