// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/DecisiveBattle/SupportPointsExchangeView.js:1
// source line 151, bytecode pc 403
(xs.Views.SupportPointsExchangeView = cc.Layer.extend({
    name: "xs.Views.SupportPointsExchangeView",
    ctor: function() {
    // source line 7, bytecode pc 12
    this._super();
    // source line 8, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(data) {
    if (!this._super()) {
        // source line 12, bytecode pc 19
        return false;
    }
    // source line 14, bytecode pc 27
    (this.m_honorNumLabel = null);
    // source line 15, bytecode pc 35
    (this.m_hintLabel = null);
    // source line 16, bytecode pc 43
    (this.m_pointsTodayLabel = null);
    // source line 17, bytecode pc 51
    (this.m_data = null);
    // source line 18, bytecode pc 59
    (this.m_tableView = null);
    // source line 19, bytecode pc 67
    (this.m_daily_point = null);
    // source line 21, bytecode pc 77
    (this.m_local = data);
    // source line 24, bytecode pc 113
    (this.headBarNode = xs.ccb_reader.load("ccb3/beta_1_duihuanrongyudi.ccbi", this));
    // source line 25, bytecode pc 155
    this.headBarNode.setContentSize(cc.size(554, 36));
    // source line 26, bytecode pc 194
    this.headBarNode.setAnchorPoint(cc.p(0, 1));
    // source line 27, bytecode pc 253
    xs.Utils.Node.attachNodes(this, this.headBarNode, { desc: "lt", sc: true });
    // source line 28, bytecode pc 306
    xs.Utils.UI.replaceCcbByCfg(this.headBarNode, this.cfg.headBar.cfg, this);
    // source line 32, bytecode pc 330
    this.m_pointsTodayLabel.setScale(0.85);
    // source line 34, bytecode pc 387
    (this.m_tableView = cc.TableView.create(this, xs.Views.TablePage.getTableViewSize()));
    // source line 35, bytecode pc 407
    this.m_tableView.setDelegate(this);
    // source line 36, bytecode pc 436
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 37, bytecode pc 465
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 42, bytecode pc 555
    xs.Utils.Node.attachNodes(this, this.m_tableView, { desc: "lb", offset: xs.Views.TablePage.getTableViewOffset(), sc: true });
    // source line 44, bytecode pc 573
    this.m_tableView.reloadData();
    // source line 46, bytecode pc 597
    this.m_honorNumLabel.setString("0");
    // source line 48, bytecode pc 599
    return true;
},
    onEnter: function() {
    // source line 52, bytecode pc 12
    this._super();
    // source line 54, bytecode pc 25
    this.requestGetGoodsList();
    // source line 55, bytecode pc 72
    xs.Utils.Notify.addObserver(this, this.requestGetGoodsList, xs.Constant_Notify_Event_DecisiveBattleExchangedRefresh);
},
    onExit: function() {
    // source line 59, bytecode pc 12
    this._super();
    // source line 60, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_DecisiveBattleExchangedRefresh);
},
    setBaseTouchPriority: function(priority) {
    // source line 63, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 64, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 65, bytecode pc 71
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority + this.cfg.tableView.priority));
},
    requestGetGoodsList: function() {
    // source line 84, bytecode pc 111
    xs.Tools.Net.requestDecisivePointsExchangeList({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, this.m_local, function(data) {
    if (data.goods_list) {
        // source line 76, bytecode pc 27
        (this.m_data = data.goods_list);
        // source line 78, bytecode pc 42
        (this.m_daily_point = data.point);
        // source line 79, bytecode pc 64
        this.updatePoints(data.point);
        // source line 80, bytecode pc 77
        this.refreshTableViewWithOldPos();
        // source line 81, bytecode pc 95
        this.m_tableView.reloadData();
    }
}, this);
},
    updatePoints: function(points) {
    // source line 90, bytecode pc 43
    this.m_honorNumLabel.setString((points.toString() || ""));
    // source line 91, bytecode pc 105
    this.m_hintLabel.setPositionX(((this.m_honorNumLabel.getPositionX() + this.m_honorNumLabel.getContentSize().width) + 12));
},
    scrollViewDidScroll: function(view) {
},
    scrollViewDidZoom: function(view) {
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 99, bytecode pc 17
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 104, bytecode pc 85
        (cell = xs.Views.SupportPointsExchangeCell.create({ point: this.m_daily_point, local: this.m_local }));
    }
    // source line 108, bytecode pc 111
    cell.updateInfo(this.m_data[idx]);
    // source line 110, bytecode pc 115
    return cell;
},
    numberOfCellsInTableView: function(table) {
    if (this.m_data) {
        // source line 115, bytecode pc 22
        return this.m_data.length;
    }
    // source line 118, bytecode pc 24
    return 0;
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 122, bytecode pc 23
    return cc.size(850, 120);
},
    tableCellTouched: function(table, cell) {
},
    refreshTableViewWithOldPos: function() {
    if (!this.oldContentOffset) {
        // source line 130, bytecode pc 29
        this.m_tableView.reloadData();
        // source line 131, bytecode pc 53
        (this.oldContentOffset = this.m_tableView.getContentOffset());
    } else {
        // source line 133, bytecode pc 82
        (this.oldContentOffset = this.m_tableView.getContentOffset());
        // source line 134, bytecode pc 100
        this.m_tableView.reloadData();
        // source line 135, bytecode pc 125
        this.m_tableView.setContentOffset(this.oldContentOffset);
    }
    if ((this.oldContentOffset.y < this.m_tableView.minContainerOffset().y)) {
        // source line 139, bytecode pc 182
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
                    stringId: "DecisiveBattle_ExchangeIntro"
                },
                {
                    tag: 1,
                    type: "ls",
                    name: "m_pointsTodayLabel",
                    id: "LS_qiangduo_Inf",
                    stringId: "DecisiveBattle_supportPoints"
                }
            ]
        },
        tableView: { priority: -1 }
    }
}));
// source line 156, bytecode pc 429
(xs.Views.SupportPointsExchangeView.create = function(data) {
    var ret;
    // source line 157, bytecode pc 23
    (ret = new xs.Views.SupportPointsExchangeView());
    if ((ret && ret.init(data))) {
        // source line 159, bytecode pc 59
        return ret;
    }
    // source line 161, bytecode pc 61
    return null;
});
// source line 299, bytecode pc 852
(xs.Views.SupportPointsExchangeCell = cc.TableViewCell.extend({
    draw: function(ctx) {
    // source line 167, bytecode pc 16
    this._super(ctx);
},
    init: function(data) {
    // source line 171, bytecode pc 7
    (this.m_itemName = null);
    // source line 172, bytecode pc 15
    (this.m_itemDesc = null);
    // source line 173, bytecode pc 23
    (this.m_itemPrice = null);
    // source line 174, bytecode pc 31
    (this.m_itemPriceStr = null);
    // source line 175, bytecode pc 39
    (this.m_exchangeButton = null);
    // source line 176, bytecode pc 47
    (this.m_data = null);
    // source line 177, bytecode pc 55
    (this.m_canClickButton = true);
    // source line 179, bytecode pc 81
    (this.m_daily_point = (data.point || "0"));
    // source line 180, bytecode pc 96
    (this.m_local = data.local);
    // source line 182, bytecode pc 132
    (this.ccbNode = xs.ccb_reader.load("ccb3/beta_1_wupingxinxikuang_lingzhi.ccbi", this));
    // source line 183, bytecode pc 191
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "lb", sc: false });
    // source line 184, bytecode pc 239
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 187, bytecode pc 290
    this.m_itemPriceStr.setString(xs.Tools.String.createString("interService_pointsEx"));
    // source line 191, bytecode pc 328
    (this.m_goodsIcon = xs.Utils.getChildByTag(this.ccbNode, 14));
    // source line 194, bytecode pc 348
    this.m_exchangeButton.setSwallowTouch(false);
    // source line 195, bytecode pc 368
    this.m_exchangeButton.setZoomOnTouchDown(true);
    // source line 196, bytecode pc 406
    this.m_exchangeButton.setOnClickCallBack(this.onBtnCallBack.bind(this));
    // source line 198, bytecode pc 408
    return true;
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 202, bytecode pc 12
    this._super();
    // source line 203, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 206, bytecode pc 63
            (this.m_parentView = parent);
            // source line 207, bytecode pc 81
            (touchPriority = parent.getTouchPriority());
            // source line 208, bytecode pc 98
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 211, bytecode pc 121
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 216, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 219, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 220, bytecode pc 51
    this.m_exchangeButton.setTouchPriority((this.m_baseTouchPriority + this.cfg.btn.priority));
},
    updateInfo: function(data) {
    var iconSprite;
    // source line 225, bytecode pc 9
    (this.m_data = data);
    // source line 227, bytecode pc 63
    this.m_itemName.setString(xs.Tools.String.createString(data.name));
    // source line 228, bytecode pc 117
    this.m_itemDesc.setString(xs.Tools.String.createString(data.desc));
    // source line 229, bytecode pc 144
    this.m_itemPrice.setString(data.point);
    // source line 231, bytecode pc 241
    this.m_itemPrice.setPosition(cc.p(((this.m_itemPriceStr.getPositionX() + this.m_itemPriceStr.getContentSize().width) + 10), this.m_itemPriceStr.getPositionY()));
    // source line 234, bytecode pc 304
    (this.obj_item = xs.Profile.GameData.Mgr.getInstance().Items.createWithBase(data.item_id));
    // source line 235, bytecode pc 325
    (iconSprite = this.obj_item.createIcon_Grade());
    // source line 236, bytecode pc 365
    xs.Utils.Node.replaceChildSafe(this, this.m_goodsIcon, iconSprite);
    // source line 237, bytecode pc 375
    (this.m_goodsIcon = iconSprite);
    // source line 239, bytecode pc 390
    (this.m_canClickButton = data.can_exchange);
    if (this.m_canClickButton) {
        // source line 242, bytecode pc 421
        this.m_exchangeButton.setEnabled(true);
        // source line 243, bytecode pc 472
        this.m_exchangeButton.setString(xs.Tools.String.createString("union_shopExchangeButton"));
    } else {
        if ((Number(this.m_daily_point) >= Number(data.point))) {
            // source line 246, bytecode pc 547
            this.m_exchangeButton.setEnabled(false);
            // source line 247, bytecode pc 598
            this.m_exchangeButton.setString(xs.Tools.String.createString("interService_exchanged"));
            // source line 248, bytecode pc 618
            this.m_exchangeButton.setEventOnDisable(false);
        } else {
            // source line 250, bytecode pc 643
            this.m_exchangeButton.setEnabled(false);
            // source line 251, bytecode pc 694
            this.m_exchangeButton.setString(xs.Tools.String.createString("union_shopExchangeButton"));
            // source line 252, bytecode pc 714
            this.m_exchangeButton.setEventOnDisable(true);
        }
    }
},
    onBtnCallBack: function() {
    if (this.m_canClickButton) {
        // source line 281, bytecode pc 144
        xs.Tools.Net.requestDecisivePointsExchange({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    pk_id: this.m_data.pk_id
}, this.m_local, function(data) {
    var param;
    if (data.add_list) {
        // source line 269, bytecode pc 22
        (param = {});
        // source line 270, bytecode pc 39
        (param.adds = data.add_list);
        // source line 271, bytecode pc 80
        (param.title = xs.Tools.String.createString("comm_propAdd"));
        // source line 272, bytecode pc 117
        xs.Views.Mgr.showDialogByName("UseItemSuccessDialog", param);
        // source line 274, bytecode pc 165
        xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
        // source line 276, bytecode pc 203
        xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_DecisiveBattleExchangedRefresh);
    }
}, function(data) {
}, this);
    } else {
        // source line 284, bytecode pc 209
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
// source line 304, bytecode pc 878
(xs.Views.SupportPointsExchangeCell.create = function(data) {
    var ret;
    // source line 305, bytecode pc 23
    (ret = new xs.Views.SupportPointsExchangeCell());
    if ((ret && ret.init(data))) {
        // source line 307, bytecode pc 59
        return ret;
    }
    // source line 309, bytecode pc 61
    return null;
});
