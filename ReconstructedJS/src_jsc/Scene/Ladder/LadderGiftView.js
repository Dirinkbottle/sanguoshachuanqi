// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Ladder/LadderGiftView.js:1
// source line 6, bytecode pc 0
var LadderGiftView_RfreshTime;
// source line 6, bytecode pc 18
(LadderGiftView_RfreshTime = 3600);
// source line 244, bytecode pc 511
(xs.Views.GiftListView = cc.Layer.extend({
    ctor: function() {
    // source line 11, bytecode pc 12
    this._super();
    // source line 12, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    // source line 16, bytecode pc 29
    (this.viewCellSize = cc.size(850, 120));
    // source line 19, bytecode pc 65
    (this.headBarNode = xs.ccb_reader.load("ccb3/beta_1_duihuanfengludi.ccbi", this));
    // source line 20, bytecode pc 107
    this.headBarNode.setContentSize(cc.size(554, 36));
    // source line 21, bytecode pc 146
    this.headBarNode.setAnchorPoint(cc.p(0, 1));
    // source line 22, bytecode pc 205
    xs.Utils.Node.attachNodes(this, this.headBarNode, { desc: "lt", sc: true });
    // source line 23, bytecode pc 258
    xs.Utils.UI.replaceCcbByCfg(this.headBarNode, this.cfg.headBar.cfg, this);
    // source line 26, bytecode pc 297
    (this.m_refreshBtn = xs.Views.Btn.create("Btn_RefreshSalary"));
    // source line 27, bytecode pc 336
    this.m_refreshBtn.setAnchorPoint(cc.p(1, 1));
    // source line 31, bytecode pc 444
    xs.Utils.Node.attachNodes(this, this.m_refreshBtn, { desc: "rt", offset: cc.p((-xs.Views.MainMenuView.Width - 10), -30), sc: true });
    // source line 33, bytecode pc 471
    this.m_refreshBtn.addCallBackForEvent(this, this.onRefreshBtn);
    // source line 35, bytecode pc 528
    (this.giftTableView = cc.TableView.create(this, xs.Views.TablePage.getTableViewSize()));
    // source line 36, bytecode pc 548
    this.giftTableView.setDelegate(this);
    // source line 37, bytecode pc 577
    this.giftTableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 38, bytecode pc 606
    this.giftTableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 43, bytecode pc 696
    xs.Utils.Node.attachNodes(this, this.giftTableView, { desc: "lb", offset: xs.Views.TablePage.getTableViewOffset(), sc: true });
    // source line 48, bytecode pc 752
    xs.Tools.Net.requestGoodsList({ is_gift: 0, belongs_shop: 4 }, this.onGetListResponse, this);
    // source line 50, bytecode pc 799
    xs.Utils.Notify.addObserver(this, this.updateSalary, xs.Constant_Notify_ModelChange_UserInfo);
    // source line 52, bytecode pc 801
    return true;
},
    onEnter: function() {
    // source line 56, bytecode pc 12
    this._super();
    // source line 58, bytecode pc 34
    this.schedule(this.onCountDown, 1);
    // source line 60, bytecode pc 47
    this.updateSalary();
},
    onExit: function() {
    // source line 64, bytecode pc 12
    this._super();
    // source line 66, bytecode pc 32
    this.unschedule(this.onCountDown);
    // source line 67, bytecode pc 72
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_UserInfo);
},
    onRefreshBtn: function() {
    // source line 72, bytecode pc 12
    this.reFresh();
},
    onCountDown: function() {
    var hours, minute, seconds;
    if ((LadderGiftView_RfreshTime <= 0)) {
        // source line 77, bytecode pc 24
        this.onRefreshBtn();
        // source line 78, bytecode pc 38
        (LadderGiftView_RfreshTime = 3600);
    }
    // source line 81, bytecode pc 57
    (LadderGiftView_RfreshTime = (LadderGiftView_RfreshTime.LadderGiftView_RfreshTime - 1));
    // source line 82, bytecode pc 87
    (hours = Math.floor((LadderGiftView_RfreshTime / 3600)));
    // source line 83, bytecode pc 120
    (minute = Math.floor(((LadderGiftView_RfreshTime % 3600) / 60)));
    // source line 84, bytecode pc 136
    (seconds = ((LadderGiftView_RfreshTime % 3600) % 60));
    // source line 86, bytecode pc 161
    this.updateCountDown(hours, minute, seconds);
},
    updateCountDown: function(hour, minute, second) {
    var refreshTime;
    // source line 91, bytecode pc 37
    (refreshTime = this.headBarNode.getChildByTag(this.cfg.headBar.refreshTime_tag));
    // source line 92, bytecode pc 76
    refreshTime.setString(((((hour + ":") + minute) + ":") + second));
},
    updateSalary: function() {
    var salary;
    // source line 97, bytecode pc 61
    (salary = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getLadderRankSalary());
    // source line 98, bytecode pc 111
    xs.Utils.setCcbLabel(this.headBarNode, this.cfg.headBar.salary_tag, salary);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 102, bytecode pc 17
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 104, bytecode pc 67
        (cell = xs.Views.GiftListViewCell.create(this.exchangeListData[idx]));
        // source line 105, bytecode pc 89
        cell.setBaseTouchPriority(this.m_baseTouchPriority);
        // source line 106, bytecode pc 106
        cell.setListener(this);
    } else {
        // source line 108, bytecode pc 137
        cell.updateInfo(this.exchangeListData[idx]);
    }
    // source line 110, bytecode pc 141
    return cell;
},
    numberOfCellsInTableView: function(table) {
    if ((this.exchangeListData !== undefined)) {
        // source line 115, bytecode pc 28
        return this.exchangeListData.length;
    }
    // source line 117, bytecode pc 30
    return 0;
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 121, bytecode pc 6
    return this.viewCellSize;
},
    tableCellTouched: function(table, cell) {
},
    onExchangeBtn: function(idx) {
    var pkid, discountPrice, currencyType, itemNum;
    // source line 130, bytecode pc 24
    (pkid = this.exchangeListData[idx].pk_id);
    // source line 131, bytecode pc 49
    (discountPrice = this.exchangeListData[idx].discount_price);
    // source line 132, bytecode pc 74
    (currencyType = this.exchangeListData[idx].currency_type);
    // source line 133, bytecode pc 85
    (itemNum = 1);
    // source line 155, bytecode pc 189
    xs.Tools.Net.requestBuyGood({
    item_advanced_id: pkid,
    discount_price: discountPrice,
    item_num: itemNum,
    currency_type: currencyType,
    forcepush: true
}, function(jsonObj) {
    var addNum;
    // source line 143, bytecode pc 18
    (addNum = jsonObj.add_list[0].num);
    // source line 150, bytecode pc 122
    xs.Views.Mgr.showDialogByName("ExchangeGanodermaDialog", {
    item_advanced_id: pkid,
    discount_price: discountPrice,
    item_num: itemNum,
    addNum: addNum,
    currency_type: currencyType
});
    // source line 153, bytecode pc 139
    this.onGetListResponse(jsonObj);
}, this);
},
    onGetGiftBtn: function(idx) {
    var pkid, discountPrice, itemNum;
    // source line 160, bytecode pc 18
    (pkid = this.exchangeListData[idx].pk_id);
    // source line 161, bytecode pc 37
    (discountPrice = this.exchangeListData[idx].discount_price);
    // source line 162, bytecode pc 42
    (itemNum = 1);
    if ((this.exchangeListData[idx].is_purchased === 0)) {
        // source line 165, bytecode pc 124
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_94"));
    } else {
        // source line 173, bytecode pc 202
        xs.Tools.Net.requestGiftAndOpen({ item_advanced_id: pkid, discount_price: discountPrice, item_num: itemNum, forcepush: true }, this.onBuyRespose, this);
    }
},
    onBuyRespose: function(jsonObj) {
    // source line 179, bytecode pc 8
    (this.m_baseTouchPriority = -1);
    // source line 180, bytecode pc 50
    xs.Tools.Net.getInstance().UseItemSuccess(jsonObj);
    // source line 181, bytecode pc 63
    this.reFresh();
},
    reFresh: function() {
    if (this.m_listener) {
        // source line 187, bytecode pc 28
        this.m_listener.updateSalaryShow();
    }
    // source line 191, bytecode pc 84
    xs.Tools.Net.requestGoodsList({ is_gift: 0, belongs_shop: 4 }, this.onGetListResponse, this);
},
    onGetListResponse: function(jsonObj) {
    // source line 195, bytecode pc 14
    (this.exchangeListData = jsonObj.item_list);
    // source line 196, bytecode pc 27
    this.refreshTableViewWithOldPos();
    // source line 199, bytecode pc 75
    xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
},
    refreshTableViewWithOldPos: function() {
    if (!this.oldContentOffset) {
        // source line 205, bytecode pc 29
        this.giftTableView.reloadData();
        // source line 206, bytecode pc 53
        (this.oldContentOffset = this.giftTableView.getContentOffset());
    } else {
        // source line 208, bytecode pc 82
        (this.oldContentOffset = this.giftTableView.getContentOffset());
        // source line 209, bytecode pc 100
        this.giftTableView.reloadData();
        // source line 210, bytecode pc 125
        this.giftTableView.setContentOffset(this.oldContentOffset);
    }
    if ((this.oldContentOffset.y < this.giftTableView.minContainerOffset().y)) {
        // source line 214, bytecode pc 182
        this.giftTableView.reloadData();
    }
},
    setListener: function(listener) {
    // source line 219, bytecode pc 9
    (this.m_listener = listener);
},
    setBaseTouchPriority: function(priority) {
    // source line 223, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 224, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 225, bytecode pc 71
    this.giftTableView.setTouchPriority((this.m_baseTouchPriority + this.cfg.tableView.priority));
    // source line 226, bytecode pc 113
    this.m_refreshBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.refreshBtn.priority));
},
    cfg: {
        headBar: {
            salary_tag: 10,
            refreshTime_tag: 11,
            cfg: [
                { tag: 1, type: "ls", id: "LS_qiangduo_Inf", stringId: "auto_name_95" },
                { tag: 2, type: "ls", id: "LS_qiangduo_Inf", stringId: "auto_name_96" },
                { tag: 10, type: "ls", id: "LS_liebiaoInf2" },
                { tag: 11, type: "ls", id: "LS_liebiaoInf2" }
            ]
        },
        tableView: { priority: -1 },
        refreshBtn: { priority: -1 }
    }
}));
// source line 250, bytecode pc 537
(xs.Views.GiftListView.create = function() {
    var ret;
    // source line 251, bytecode pc 23
    (ret = new xs.Views.GiftListView());
    if ((ret && ret.init())) {
        // source line 253, bytecode pc 55
        return ret;
    }
    // source line 255, bytecode pc 57
    return null;
});
// source line 366, bytecode pc 893
(xs.Views.GiftListViewCell = cc.TableViewCell.extend({
    draw: function(ctx) {
    // source line 261, bytecode pc 16
    this._super(ctx);
},
    init: function(data) {
    // source line 265, bytecode pc 35
    (this.ccbNode = xs.ccb_reader.load("ccb3/beta_1_wupingxinxikuang_lingzhi.ccbi", this));
    // source line 266, bytecode pc 94
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "lb", sc: false });
    // source line 268, bytecode pc 102
    (this.m_itemName = null);
    // source line 269, bytecode pc 110
    (this.m_itemDesc = null);
    // source line 270, bytecode pc 118
    (this.m_itemPrice = null);
    // source line 271, bytecode pc 126
    (this.m_itemPriceStr = null);
    // source line 273, bytecode pc 174
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 275, bytecode pc 225
    this.m_itemPriceStr.setString(xs.Tools.String.createString("salary_2"));
    // source line 279, bytecode pc 310
    (this.newBtn = xs.Utils.replaceButton(this.ccbNode, this.cfg.btn.tag, xs.Views.Btn.create("Btn_ExchangeForCell")));
    // source line 280, bytecode pc 330
    this.newBtn.setSwallowTouch(false);
    // source line 281, bytecode pc 350
    this.newBtn.setEventOnDisable(true);
    // source line 282, bytecode pc 388
    this.newBtn.setOnClickCallBack(this.onBtnCallBack.bind(this));
    // source line 284, bytecode pc 405
    this.updateInfo(data);
    // source line 286, bytecode pc 407
    return true;
},
    updateInfo: function(data) {
    var itemModel, newIcon, numSpriteName, numSprite;
    // source line 290, bytecode pc 38
    (itemModel = xs.Models.Item.createWithBase(data.item_id));
    // source line 291, bytecode pc 59
    (this.itemType = itemModel.getItemType());
    // source line 293, bytecode pc 92
    this.m_itemName.setString(itemModel.getNameString());
    // source line 294, bytecode pc 125
    this.m_itemDesc.setString(itemModel.getDescString());
    // source line 295, bytecode pc 152
    this.m_itemPrice.setString(data.item_price);
    if ((this.itemType === xs.Models.ItemType_Gift)) {
        // source line 298, bytecode pc 230
        this.newBtn.setString(xs.Tools.String.createString("1070610052"));
    } else {
        // source line 300, bytecode pc 286
        this.newBtn.setString(xs.Tools.String.createString("1070610051"));
    }
    if ((data.is_purchased === 0)) {
        // source line 305, bytecode pc 321
        this.newBtn.setEnabled(false);
    } else {
        // source line 307, bytecode pc 346
        this.newBtn.setEnabled(true);
    }
    // source line 311, bytecode pc 364
    (newIcon = itemModel.createIcon_Grade());
    // source line 312, bytecode pc 414
    xs.Utils.replaceIcon(this.ccbNode, this.cfg.itemIcon.tag, newIcon);
    if ((this.itemType === xs.Models.ItemType_LianDan)) {
        // source line 316, bytecode pc 450
        (numSpriteName = "");
        // source line 317, bytecode pc 459
        switch (data.show_num) {
            case "5":
            // source line 319, bytecode pc 503
            (numSpriteName = "lingzhiNum_5");
            break;
            case "50":
            // source line 322, bytecode pc 517
            (numSpriteName = "lingzhiNum_50");
            break;
            case "500":
            // source line 325, bytecode pc 531
            (numSpriteName = "lingzhiNum_500");
            break;
            default:
            break;
        }
        if ((numSpriteName !== "")) {
            // source line 329, bytecode pc 590
            (numSprite = xs.Factorys.Sprite.create(numSpriteName, "TiantixitongScene01"));
            // source line 330, bytecode pc 611
            numSprite.setScale(0.8);
            // source line 331, bytecode pc 649
            numSprite.setPosition(cc.p(45, -40));
            // source line 332, bytecode pc 685
            numSprite.setAnchorPoint(cc.p(1, 0));
            // source line 333, bytecode pc 704
            newIcon.addChild(numSprite);
        }
    }
},
    setListener: function(listener) {
    // source line 340, bytecode pc 9
    (this.m_listener = listener);
},
    onBtnCallBack: function() {
    if ((this.itemType === xs.Models.ItemType_Gift)) {
        // source line 345, bytecode pc 57
        this.m_listener.onGetGiftBtn(this.getIdx());
    } else {
        // source line 347, bytecode pc 93
        this.m_listener.onExchangeBtn(this.getIdx());
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 353, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 354, bytecode pc 51
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
// source line 374, bytecode pc 919
(xs.Views.GiftListViewCell.create = function(data) {
    var ret;
    // source line 375, bytecode pc 23
    (ret = new xs.Views.GiftListViewCell());
    if ((ret && ret.init(data))) {
        // source line 377, bytecode pc 59
        return ret;
    }
    // source line 379, bytecode pc 61
    return null;
});
