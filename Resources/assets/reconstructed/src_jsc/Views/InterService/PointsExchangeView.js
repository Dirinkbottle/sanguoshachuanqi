// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/InterService/PointsExchangeView.js:1
// source line 169, bytecode pc 383
(xs.Views.PointsExchangeView = cc.Layer.extend({
    name: "xs.Views.PointsExchangeView",
    ctor: function() {
    // source line 8, bytecode pc 12
    this._super();
    // source line 9, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(data) {
    // source line 13, bytecode pc 7
    (this.m_honorNumLabel = null);
    // source line 14, bytecode pc 15
    (this.m_hintLabel = null);
    // source line 15, bytecode pc 23
    (this.m_pointsTodayLabel = null);
    // source line 16, bytecode pc 31
    (this.m_data = null);
    // source line 17, bytecode pc 39
    (this.m_tableView = null);
    // source line 18, bytecode pc 47
    (this.m_daily_point = null);
    // source line 20, bytecode pc 57
    (this.m_local = data);
    // source line 23, bytecode pc 93
    (this.headBarNode = xs.ccb_reader.load("ccb3/beta_1_duihuanrongyudi.ccbi", this));
    // source line 24, bytecode pc 135
    this.headBarNode.setContentSize(cc.size(554, 36));
    // source line 25, bytecode pc 174
    this.headBarNode.setAnchorPoint(cc.p(0, 1));
    // source line 26, bytecode pc 233
    xs.Utils.Node.attachNodes(this, this.headBarNode, { desc: "lt", sc: true });
    // source line 27, bytecode pc 286
    xs.Utils.UI.replaceCcbByCfg(this.headBarNode, this.cfg.headBar.cfg, this);
    // source line 30, bytecode pc 310
    this.m_pointsTodayLabel.setScale(0.85);
    // source line 32, bytecode pc 367
    (this.m_tableView = cc.TableView.create(this, xs.Views.TablePage.getTableViewSize()));
    // source line 33, bytecode pc 387
    this.m_tableView.setDelegate(this);
    // source line 34, bytecode pc 416
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 35, bytecode pc 445
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 40, bytecode pc 535
    xs.Utils.Node.attachNodes(this, this.m_tableView, { desc: "lb", offset: xs.Views.TablePage.getTableViewOffset(), sc: true });
    // source line 42, bytecode pc 553
    this.m_tableView.reloadData();
    // source line 44, bytecode pc 577
    this.m_honorNumLabel.setString("0");
    // source line 46, bytecode pc 579
    return true;
},
    onEnter: function() {
    // source line 50, bytecode pc 12
    this._super();
    // source line 52, bytecode pc 25
    this.requestGetGoodsList();
    // source line 53, bytecode pc 72
    xs.Utils.Notify.addObserver(this, this.requestGetGoodsList, xs.Constant_Notify_Event_InterPointsExchangeRefresh);
},
    onExit: function() {
    // source line 57, bytecode pc 12
    this._super();
    // source line 58, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_InterPointsExchangeRefresh);
},
    setBaseTouchPriority: function(priority) {
    // source line 62, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 63, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 64, bytecode pc 71
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority + this.cfg.tableView.priority));
},
    requestGetGoodsList: function() {
    var successFunction;
    // source line 81, bytecode pc 27
    (successFunction = function(data) {
    if ((data.return_info && data.return_info.goods_list)) {
        // source line 71, bytecode pc 51
        (this.m_data = data.return_info.goods_list);
        // source line 73, bytecode pc 71
        (this.m_daily_point = data.return_info.daily_point);
        // source line 74, bytecode pc 98
        this.updatePoints(data.return_info.daily_point);
        // source line 75, bytecode pc 111
        this.refreshTableViewWithOldPos();
        // source line 78, bytecode pc 159
        xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
    }
}.bind(this));
    if (this.m_local) {
        // source line 93, bytecode pc 149
        xs.Tools.Net.requestLocalInterPointsExchangeList({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(data) {
    // source line 88, bytecode pc 18
    successFunction(data);
}, function(data) {
}, this);
    } else {
        // source line 105, bytecode pc 265
        xs.Tools.Net.requestInterPointsExchangeList({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(data) {
    // source line 100, bytecode pc 18
    successFunction(data);
}, function(data) {
}, this);
    }
},
    updatePoints: function(points) {
    // source line 111, bytecode pc 21
    this.m_honorNumLabel.setString(points);
    // source line 113, bytecode pc 118
    this.m_hintLabel.setPosition(cc.p(((this.m_honorNumLabel.getPositionX() + this.m_honorNumLabel.getContentSize().width) + 12), this.m_honorNumLabel.getPositionY()));
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 117, bytecode pc 17
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 121, bytecode pc 85
        (cell = xs.Views.PointsExchangeTableCell.create({ point: this.m_daily_point, local: this.m_local }));
        // source line 123, bytecode pc 107
        cell.setBaseTouchPriority(this.m_baseTouchPriority);
    }
    // source line 126, bytecode pc 133
    cell.updateInfo(this.m_data[idx]);
    // source line 128, bytecode pc 137
    return cell;
},
    numberOfCellsInTableView: function(table) {
    if (this.m_data) {
        // source line 133, bytecode pc 22
        return this.m_data.length;
    }
    // source line 136, bytecode pc 24
    return 0;
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 140, bytecode pc 23
    return cc.size(850, 120);
},
    tableCellTouched: function(table, cell) {
},
    refreshTableViewWithOldPos: function() {
    if (!this.oldContentOffset) {
        // source line 148, bytecode pc 29
        this.m_tableView.reloadData();
        // source line 149, bytecode pc 53
        (this.oldContentOffset = this.m_tableView.getContentOffset());
    } else {
        // source line 151, bytecode pc 82
        (this.oldContentOffset = this.m_tableView.getContentOffset());
        // source line 152, bytecode pc 100
        this.m_tableView.reloadData();
        // source line 153, bytecode pc 125
        this.m_tableView.setContentOffset(this.oldContentOffset);
    }
    if ((this.oldContentOffset.y < this.m_tableView.minContainerOffset().y)) {
        // source line 157, bytecode pc 182
        this.m_tableView.reloadData();
    }
},
    cfg: {
        headBar: {
            cfg: [
                { tag: 10, type: "ls", name: "m_honorNumLabel", id: "LS_liebiaoInf2" },
                {
                    tag: 2,
                    type: "ls",
                    name: "m_hintLabel",
                    id: "LS_qiangduo_Inf",
                    stringId: "interService_pointsInfor"
                },
                {
                    tag: 1,
                    type: "ls",
                    name: "m_pointsTodayLabel",
                    id: "LS_qiangduo_Inf",
                    stringId: "interService_pointsToday"
                }
            ]
        },
        tableView: { priority: -1 }
    }
}));
// source line 175, bytecode pc 409
(xs.Views.PointsExchangeView.create = function(data) {
    var ret;
    // source line 176, bytecode pc 23
    (ret = new xs.Views.PointsExchangeView());
    if ((ret && ret.init(data))) {
        // source line 178, bytecode pc 59
        return ret;
    }
    // source line 180, bytecode pc 61
    return null;
});
// source line 324, bytecode pc 832
(xs.Views.PointsExchangeTableCell = cc.TableViewCell.extend({
    draw: function(ctx) {
    // source line 186, bytecode pc 16
    this._super(ctx);
},
    init: function(data) {
    // source line 190, bytecode pc 7
    (this.m_itemName = null);
    // source line 191, bytecode pc 15
    (this.m_itemDesc = null);
    // source line 192, bytecode pc 23
    (this.m_itemPrice = null);
    // source line 193, bytecode pc 31
    (this.m_itemPriceStr = null);
    // source line 194, bytecode pc 39
    (this.m_exchangeButton = null);
    // source line 195, bytecode pc 47
    (this.m_data = null);
    // source line 196, bytecode pc 55
    (this.m_canClickButton = true);
    // source line 198, bytecode pc 81
    (this.m_daily_point = (data.point || "0"));
    // source line 199, bytecode pc 96
    (this.m_local = data.local);
    // source line 201, bytecode pc 132
    (this.ccbNode = xs.ccb_reader.load("ccb3/beta_1_wupingxinxikuang_lingzhi.ccbi", this));
    // source line 202, bytecode pc 191
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "lb", sc: false });
    // source line 203, bytecode pc 239
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 206, bytecode pc 290
    this.m_itemPriceStr.setString(xs.Tools.String.createString("interService_pointsEx"));
    // source line 210, bytecode pc 328
    (this.m_goodsIcon = xs.Utils.getChildByTag(this.ccbNode, 14));
    // source line 213, bytecode pc 348
    this.m_exchangeButton.setSwallowTouch(false);
    // source line 214, bytecode pc 368
    this.m_exchangeButton.setZoomOnTouchDown(true);
    // source line 215, bytecode pc 406
    this.m_exchangeButton.setOnClickCallBack(this.onBtnCallBack.bind(this));
    // source line 217, bytecode pc 408
    return true;
},
    onEnter: function() {
    // source line 221, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 225, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 228, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 229, bytecode pc 51
    this.m_exchangeButton.setTouchPriority((this.m_baseTouchPriority + this.cfg.btn.priority));
},
    updateInfo: function(data) {
    var iconSprite;
    // source line 234, bytecode pc 9
    (this.m_data = data);
    // source line 236, bytecode pc 63
    this.m_itemName.setString(xs.Tools.String.createString(data.goods_name));
    // source line 237, bytecode pc 117
    this.m_itemDesc.setString(xs.Tools.String.createString(data.goods_desc));
    // source line 238, bytecode pc 144
    this.m_itemPrice.setString(data.point);
    // source line 240, bytecode pc 241
    this.m_itemPrice.setPosition(cc.p(((this.m_itemPriceStr.getPositionX() + this.m_itemPriceStr.getContentSize().width) + 10), this.m_itemPriceStr.getPositionY()));
    // source line 243, bytecode pc 304
    (this.obj_item = xs.Profile.GameData.Mgr.getInstance().Items.createWithBase(data.item_id));
    // source line 244, bytecode pc 325
    (iconSprite = this.obj_item.createIcon_Grade());
    // source line 245, bytecode pc 365
    xs.Utils.Node.replaceChildSafe(this, this.m_goodsIcon, iconSprite);
    // source line 246, bytecode pc 375
    (this.m_goodsIcon = iconSprite);
    // source line 248, bytecode pc 390
    (this.m_canClickButton = data.can_exchange);
    if (this.m_canClickButton) {
        // source line 251, bytecode pc 421
        this.m_exchangeButton.setEnabled(true);
        // source line 252, bytecode pc 472
        this.m_exchangeButton.setString(xs.Tools.String.createString("union_shopExchangeButton"));
    } else {
        if ((Number(this.m_daily_point) >= Number(data.point))) {
            // source line 255, bytecode pc 547
            this.m_exchangeButton.setEnabled(false);
            // source line 256, bytecode pc 598
            this.m_exchangeButton.setString(xs.Tools.String.createString("interService_exchanged"));
            // source line 257, bytecode pc 618
            this.m_exchangeButton.setEventOnDisable(false);
        } else {
            // source line 259, bytecode pc 643
            this.m_exchangeButton.setEnabled(false);
            // source line 260, bytecode pc 694
            this.m_exchangeButton.setString(xs.Tools.String.createString("union_shopExchangeButton"));
            // source line 261, bytecode pc 714
            this.m_exchangeButton.setEventOnDisable(true);
        }
    }
},
    onBtnCallBack: function() {
    var successFunction;
    if (this.m_canClickButton) {
        // source line 276, bytecode pc 38
        (successFunction = function(data) {
    var param;
    // source line 270, bytecode pc 9
    (param = {});
    // source line 271, bytecode pc 31
    (param.adds = data.return_info.add_list);
    // source line 272, bytecode pc 72
    (param.title = xs.Tools.String.createString("comm_propAdd"));
    // source line 273, bytecode pc 109
    xs.Views.Mgr.showDialogByName("UseItemSuccessDialog", param);
    // source line 275, bytecode pc 147
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_InterPointsExchangeRefresh);
}.bind(this));
        if (this.m_local) {
            // source line 289, bytecode pc 182
            xs.Tools.Net.requestLocalInterPointsExchange({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    pk_id: this.m_data.pk_id,
    forcepush: true
}, function(data) {
    // source line 285, bytecode pc 18
    successFunction(data);
}, function(data) {
}, this);
        } else {
            // source line 304, bytecode pc 320
            xs.Tools.Net.requestInterPointsExchange({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    pk_id: this.m_data.pk_id,
    forcepush: true
}, function(data) {
    // source line 300, bytecode pc 18
    successFunction(data);
}, function(data) {
}, this);
        }
    } else {
        // source line 309, bytecode pc 385
        xs.Views.Mgr.showToast(xs.Tools.String.createString("interService_lessPoints"));
    }
},
    cfg: {
        btn: { tag: 13, priority: -1 },
        itemIcon: { tag: 14 },
        ccbCfg: [
            { tag: 10, type: "ls", name: "m_itemName", id: "LS_wujiangInf1" },
            { tag: 11, type: "ls", name: "m_itemDesc", id: "LS_liebiaoInf" },
            { tag: 15, type: "ls", name: "m_itemPriceStr", id: "LS_liebiaoInf" },
            { tag: 12, type: "ls", name: "m_itemPrice", id: "LS_liebiaoInf2" },
            {
                tag: 13,
                type: "btn",
                name: "m_exchangeButton",
                id: "Btn_btn3",
                stringId: "union_shopExchangeButton"
            }
        ]
    }
}));
// source line 329, bytecode pc 858
(xs.Views.PointsExchangeTableCell.create = function(data) {
    var ret;
    // source line 330, bytecode pc 23
    (ret = new xs.Views.PointsExchangeTableCell());
    if ((ret && ret.init(data))) {
        // source line 332, bytecode pc 59
        return ret;
    }
    // source line 334, bytecode pc 61
    return null;
});
