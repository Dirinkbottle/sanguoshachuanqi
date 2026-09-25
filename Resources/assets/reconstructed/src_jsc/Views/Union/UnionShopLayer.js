// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Union/UnionShopLayer.js:1
// source line 143, bytecode pc 496
(xs.Views.Union.UnionShopTableViewCell = cc.TableViewCell.extend({
    ccbCfg: [
        { tag: 1, type: "ls", name: "m_RewardLabel", id: "LS_wujiangInf1" },
        { tag: 2, type: "ls", name: "m_RewardDescLabel", id: "LS_wujiangInf2" },
        { tag: 3, type: "ls", name: "m_ContributionNumDescLabel", id: "LS_wujiangInf2" },
        { tag: 4, type: "ls", name: "m_ContributionNumLabel", id: "LS_wujiangInf1" },
        { tag: 5, type: "ls", name: "m_ExchangeNumDescLabel", id: "LS_wujiangInf2" },
        { tag: 6, type: "ls", name: "m_ExchangeNumLabel", id: "LS_wujiangInf1" },
        { tag: 7, type: "btn", name: "m_UnionShopBtn", id: "Btn_btn3" }
    ],
    draw: function(ctx) {
    // source line 18, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 21, bytecode pc 12
    this._super();
    // source line 22, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function() {
    if (!this._super()) {
        // source line 26, bytecode pc 19
        return false;
    }
    // source line 29, bytecode pc 27
    (this.m_exchangedNum = null);
    // source line 30, bytecode pc 35
    (this.m_exchangeNum = null);
    // source line 31, bytecode pc 43
    (this.m_CanExchangeClick = null);
    // source line 32, bytecode pc 51
    (this.m_data = null);
    // source line 33, bytecode pc 59
    (this.m_RewardLabel = null);
    // source line 34, bytecode pc 67
    (this.m_RewardDescLabel = null);
    // source line 35, bytecode pc 75
    (this.m_ContributionNumDescLabel = null);
    // source line 36, bytecode pc 83
    (this.m_ContributionNumLabel = null);
    // source line 37, bytecode pc 91
    (this.m_ExchangeNumDescLabel = null);
    // source line 38, bytecode pc 99
    (this.m_ExchangeNumLabel = null);
    // source line 39, bytecode pc 107
    (this.m_UnionShopBtn = null);
    // source line 40, bytecode pc 115
    (this.m_UnionShopIcon = null);
    // source line 44, bytecode pc 151
    (this.ccbNode = xs.ccb_reader.load("ccb3/unionShopTableViewCell.ccbi", this));
    // source line 45, bytecode pc 190
    this.ccbNode.setAnchorPoint(cc.p(0, 0));
    // source line 46, bytecode pc 226
    xs.Utils.Node.attachNodes(this, this.ccbNode);
    // source line 47, bytecode pc 269
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbCfg, this);
    // source line 51, bytecode pc 320
    this.m_ContributionNumDescLabel.setString(xs.Tools.String.createString("union_ExchangeContribution"));
    // source line 54, bytecode pc 371
    this.m_ExchangeNumDescLabel.setString(xs.Tools.String.createString("union_shopCanExchangeNum"));
    // source line 57, bytecode pc 409
    (this.m_UnionShopIcon = xs.Utils.getChildByTag(this.ccbNode, 9));
    // source line 59, bytecode pc 460
    this.m_UnionShopBtn.setString(xs.Tools.String.createString("union_shopExchangeButton"));
    // source line 60, bytecode pc 480
    this.m_UnionShopBtn.setSwallowTouch(false);
    // source line 61, bytecode pc 500
    this.m_UnionShopBtn.setZoomOnTouchDown(true);
    // source line 62, bytecode pc 538
    this.m_UnionShopBtn.setOnClickCallBack(this.UnionShopBtnClick.bind(this));
    // source line 65, bytecode pc 540
    return true;
},
    onTouchCallBackToReject: function() {
},
    onTouchCallBackToAgree: function() {
},
    setBaseTouchPriority: function(priority) {
    // source line 77, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 78, bytecode pc 34
    this.m_UnionShopBtn.setTouchPriority(this.m_baseTouchPriority);
},
    setListener: function(listener) {
    // source line 82, bytecode pc 9
    (this.m_listener = listener);
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 86, bytecode pc 12
    this._super();
    // source line 88, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 91, bytecode pc 63
            (this.m_parentView = parent);
            // source line 92, bytecode pc 81
            (touchPriority = parent.getTouchPriority());
            // source line 93, bytecode pc 98
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 96, bytecode pc 121
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 100, bytecode pc 12
    this._super();
},
    update: function(par, num) {
    var m_canExchangedNum, iconId, iconSprite, mItem;
    // source line 104, bytecode pc 9
    (this.par = par);
    // source line 105, bytecode pc 19
    (this.num = num);
    // source line 108, bytecode pc 41
    (this.m_data = this.par.m_unionList[num]);
    // source line 111, bytecode pc 86
    (m_canExchangedNum = (this.par.m_unionList[num].exchange_num - this.par.m_unionList[num].exchanged_num));
    // source line 114, bytecode pc 136
    this.m_ContributionNumLabel.setString((this.par.m_unionList[num].donate || "5"));
    // source line 116, bytecode pc 163
    (this.m_exchangedNum = this.par.m_unionList[num].exchanged_num);
    // source line 117, bytecode pc 190
    (this.m_exchangeNum = this.par.m_unionList[num].exchange_num);
    // source line 119, bytecode pc 239
    this.m_ExchangeNumLabel.setString(((m_canExchangedNum + "/") + this.par.m_unionList[num].exchange_num));
    // source line 121, bytecode pc 263
    (iconId = this.par.m_unionList[num].item_id);
    // source line 122, bytecode pc 321
    (this.obj_item = xs.Profile.GameData.Mgr.getInstance().Items.createWithBase(iconId));
    // source line 123, bytecode pc 342
    (iconSprite = this.obj_item.createIcon_Grade());
    // source line 124, bytecode pc 382
    xs.Utils.Node.replaceChildSafe(this, this.m_UnionShopIcon, iconSprite);
    // source line 125, bytecode pc 392
    (this.m_UnionShopIcon = iconSprite);
    // source line 127, bytecode pc 426
    (mItem = xs.Models.Item.createWithBase(iconId));
    // source line 130, bytecode pc 470
    this.m_RewardLabel.setString((mItem.getNameString() || ""));
    // source line 132, bytecode pc 514
    this.m_RewardDescLabel.setString((mItem.getDescString() || ""));
    // source line 135, bytecode pc 541
    (this.m_CanExchangeClick = this.par.m_unionList[num].can_exchange);
    if (!this.par.m_unionList[num].can_exchange) {
        // source line 138, bytecode pc 587
        this.m_UnionShopBtn.setEnabled(false);
        // source line 139, bytecode pc 607
        this.m_UnionShopBtn.setEventOnDisable(true);
    }
},
    UnionShopBtnClick: function() {
    if (this.m_CanExchangeClick) {
        // source line 168, bytecode pc 143
        xs.Tools.Net.requestUnionShopExchangeGoods({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    pk_id: this.m_data.pk_id,
    forcepush: true
}, function(data) {
    var param;
    // source line 155, bytecode pc 47
    xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
    // source line 157, bytecode pc 85
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Union_hit);
    // source line 159, bytecode pc 95
    (param = {});
    // source line 160, bytecode pc 117
    (param.adds = data.return_info.add_list);
    // source line 161, bytecode pc 158
    (param.title = xs.Tools.String.createString("comm_propAdd"));
    // source line 162, bytecode pc 195
    xs.Views.Mgr.showDialogByName("UseItemSuccessDialog", param);
    // source line 164, bytecode pc 233
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_UnionShopRefresh);
}, function(data) {
}, this);
    } else {
        if ((this.m_exchangedNum != this.m_exchangeNum)) {
            // source line 174, bytecode pc 226
            xs.Views.Mgr.showToast(xs.Tools.String.createString("union_shop_LessContribution"));
        } else {
            // source line 177, bytecode pc 291
            xs.Views.Mgr.showToast(xs.Tools.String.createString("union_shop_Exchanged"));
        }
    }
}
}));
// source line 184, bytecode pc 527
(xs.Views.Union.UnionShopTableViewCell.create = function() {
    var cell;
    // source line 185, bytecode pc 28
    (cell = new xs.Views.Union.UnionShopTableViewCell());
    if ((cell && cell.init())) {
        // source line 187, bytecode pc 60
        return cell;
    }
    // source line 189, bytecode pc 62
    return null;
});
// source line 311, bytecode pc 851
(xs.Views.Union.UnionShopLayer = xs.Views.Union.UnionBaseLayer.extend({
    ctor: function() {
    // source line 199, bytecode pc 12
    this._super();
    // source line 200, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    cfg: {
        ccbCfg: [
            { tag: 3, type: "ls", name: "lblContributionResidue", id: "LS_jinengInf1" },
            { tag: 4, type: "ls", name: "lblContributionResidueNumber", id: "LS_Lv", string: "0" }
        ]
    },
    init: function() {
    if (!this._super()) {
        // source line 212, bytecode pc 19
        return false;
    }
    // source line 215, bytecode pc 31
    (this.m_unionList = []);
    // source line 216, bytecode pc 39
    (this.lblContributionResidue = null);
    // source line 217, bytecode pc 47
    (this.lblContributionResidueNumber = null);
    // source line 218, bytecode pc 55
    (this.isNeedRefresh = true);
    // source line 219, bytecode pc 63
    (this.m_tableView = null);
    // source line 222, bytecode pc 99
    (this.ccbNode = cc.BuilderReader.load("ccb3/UnionShopLayer.ccbi", this));
    // source line 223, bytecode pc 142
    this.ccbNode.setContentSize(cc.size(889, 421));
    // source line 224, bytecode pc 181
    this.ccbNode.setAnchorPoint(cc.p(0, 0));
    // source line 225, bytecode pc 258
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "lb", offset: { x: -8, y: 0 } });
    // source line 226, bytecode pc 306
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 230, bytecode pc 357
    this.lblContributionResidue.setString(xs.Tools.String.createString("union_ContributionResidue"));
    // source line 233, bytecode pc 412
    (this.m_tableView = cc.TableView.create(this, cc.size(889, 378)));
    // source line 234, bytecode pc 441
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 235, bytecode pc 481
    this.m_tableView.setPosition(cc.p(-4, 0));
    // source line 236, bytecode pc 501
    this.m_tableView.setDelegate(this);
    // source line 237, bytecode pc 530
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 238, bytecode pc 550
    this.addChild(this.m_tableView);
    // source line 239, bytecode pc 568
    this.m_tableView.reloadData();
    // source line 241, bytecode pc 570
    return true;
},
    refreshUserInfor: function() {
    // source line 245, bytecode pc 12
    this._readUnionList();
},
    refreshFromMenuClick: function() {
    if (this.isNeedRefresh) {
        // source line 249, bytecode pc 23
        this._readUnionList();
    }
},
    onEnterTransitionDidFinish: function() {
    // source line 253, bytecode pc 12
    this._super();
    // source line 254, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.refreshUserInfor, xs.Constant_Notify_Event_UnionShopRefresh);
},
    onExitTransitionDidStart: function() {
    // source line 259, bytecode pc 39
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_UnionShopRefresh);
    // source line 260, bytecode pc 52
    this._super();
},
    _readUnionList: function() {
    // source line 278, bytecode pc 117
    xs.Tools.Net.requestUnionShopList({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(data) {
    var mList;
    // source line 268, bytecode pc 31
    this.lblContributionResidueNumber.setString(data.return_info.user_donate);
    // source line 269, bytecode pc 48
    (mList = data.return_info.goods_list);
    // source line 270, bytecode pc 58
    (this.m_unionList = mList);
    if ((0 == this.m_unionList.length)) {
    }
    // source line 275, bytecode pc 94
    this.m_tableView.reloadData();
}.bind(this), this);
},
    scrollViewDidScroll: function(view) {
},
    scrollViewDidZoom: function(view) {
},
    tableCellTouched: function(table, cell) {
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 292, bytecode pc 23
    return cc.size(889, 118);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 297, bytecode pc 17
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 299, bytecode pc 61
        (cell = xs.Views.Union.UnionShopTableViewCell.create());
    }
    // source line 302, bytecode pc 82
    cell.update(this, idx);
    // source line 304, bytecode pc 86
    return cell;
},
    numberOfCellsInTableView: function(table) {
    // source line 308, bytecode pc 11
    return this.m_unionList.length;
},
    setBaseTouchPriority: function(priority) {
    // source line 312, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 313, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 314, bytecode pc 56
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 319, bytecode pc 882
(xs.Views.Union.UnionShopLayer.create = function(param) {
    var layer;
    // source line 320, bytecode pc 28
    (layer = new xs.Views.Union.UnionShopLayer());
    if ((layer && layer.init(param))) {
        // source line 322, bytecode pc 64
        return layer;
    }
    // source line 324, bytecode pc 66
    return null;
});
