// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/MysteryStoreDialog.js:1
// source line 5, bytecode pc 21
(xs.Views.Dialog.MysteryStoreYuanbao = 0);
// source line 6, bytecode pc 43
(xs.Views.Dialog.MysteryStoreHunYun = 1);
// source line 135, bytecode pc 431
(xs.Views.Dialog.MysteryStoreDialogCell = cc.TableViewCell.extend({
    ccbCfg: [
        {
            name: "m_nameLab",
            tag: 2,
            type: "ls",
            id: "LS_wujiangInf1",
            string: "222",
            offset: cc.p(-40, 0)
        },
        { name: "m_priceStr", tag: 4, type: "ls", id: "LS_mainUI4", string: "1111", offset: cc.p(-10, 0) },
        { name: "m_convertBtn", tag: 5, type: "btn", id: "Btn_MysteryStore_convert", offset: cc.p(0, 10) }
    ],
    draw: function(ctx) {
    // source line 16, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 19, bytecode pc 12
    this._super();
    // source line 20, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function() {
    var labelPos;
    if (!this._super()) {
        // source line 24, bytecode pc 19
        return false;
    }
    // source line 27, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 28, bytecode pc 35
    (this.iconPos = null);
    // source line 29, bytecode pc 43
    (this.m_convertBtn = null);
    // source line 30, bytecode pc 51
    (this.m_priceStr = null);
    // source line 31, bytecode pc 59
    (this.m_nameLab = null);
    // source line 32, bytecode pc 67
    (this.labelResidueNum = null);
    // source line 33, bytecode pc 75
    (this.isHot = false);
    // source line 34, bytecode pc 83
    (this.convertType = 0);
    // source line 35, bytecode pc 91
    (this.m_pk_id = 0);
    // source line 36, bytecode pc 99
    (this.m_itemData = null);
    // source line 39, bytecode pc 150
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.MysteryStoreCell, this));
    // source line 40, bytecode pc 186
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 41, bytecode pc 226
    this.m_ccbNode.setPosition(cc.p(45, 0));
    // source line 44, bytecode pc 269
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg, this);
    // source line 46, bytecode pc 306
    (this.iconPos = this.m_ccbNode.getChildByTag(1).getPosition());
    // source line 49, bytecode pc 344
    this.m_convertBtn.setOnClickCallBack(this.convertClickCallBack.bind(this));
    // source line 52, bytecode pc 365
    (labelPos = this.m_convertBtn.getPosition());
    // source line 53, bytecode pc 404
    (this.labelResidueNum = xs.Factorys.Label.createByStyleId("LS_mainUI4"));
    // source line 54, bytecode pc 451
    this.labelResidueNum.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 55, bytecode pc 502
    this.labelResidueNum.setString(xs.Tools.Ml.createString("MysteryStoreDialog_convertNum"));
    // source line 56, bytecode pc 558
    this.labelResidueNum.setPosition(cc.p(labelPos.x, (labelPos.y - 45)));
    // source line 57, bytecode pc 599
    xs.Utils.Node.attachNodes(this.m_ccbNode, this.labelResidueNum);
    // source line 59, bytecode pc 644
    (this.m_hotSp = xs.Factorys.Sprite.create("Cmn02_iconHot", "Cmn02"));
    // source line 62, bytecode pc 684
    this.m_hotSp.setPosition(cc.p(0, 100));
    // source line 63, bytecode pc 712
    this.m_ccbNode.addChild(this.m_hotSp, 3);
    // source line 64, bytecode pc 732
    this.m_hotSp.setVisible(false);
    // source line 66, bytecode pc 777
    (this.m_hunYu = xs.Factorys.Sprite.create("SecretShop_icon_hunyu", "SecretShop"));
    // source line 67, bytecode pc 819
    this.m_hunYu.setPosition(cc.p(151, 19));
    // source line 68, bytecode pc 860
    xs.Utils.Node.attachNodes(this.m_ccbNode, this.m_hunYu);
    // source line 69, bytecode pc 880
    this.m_hunYu.setVisible(false);
    // source line 71, bytecode pc 925
    (this.m_yuanbao = xs.Factorys.Sprite.create("icon_yuanBao", "Cmn01"));
    // source line 72, bytecode pc 967
    this.m_yuanbao.setPosition(cc.p(151, 19));
    // source line 73, bytecode pc 1008
    xs.Utils.Node.attachNodes(this.m_ccbNode, this.m_yuanbao);
    // source line 74, bytecode pc 1028
    this.m_yuanbao.setVisible(false);
    // source line 77, bytecode pc 1057
    this.m_nameLab.setAnchorPoint(xs.ap_lc);
    // source line 79, bytecode pc 1086
    this.m_priceStr.setAnchorPoint(xs.ap_lc);
    // source line 83, bytecode pc 1088
    return true;
},
    convertClickCallBack: function() {
    var mMaiDianKey, mFirstBuy;
    // source line 87, bytecode pc 22
    xs.log_hsq("convertClickCallBack");
    // source line 88, bytecode pc 38
    (mMaiDianKey = ("MysteryStoreBuy_" + this.m_id));
    // source line 89, bytecode pc 69
    xs.Tools.Statistic.event(mMaiDianKey);
    if (this.par.updateFirstBuy) {
        // source line 92, bytecode pc 98
        (this.par.updateFirstBuy = false);
        // source line 93, bytecode pc 114
        (mFirstBuy = ("MysteryStoreFirstBuy_" + this.m_id));
        // source line 94, bytecode pc 145
        xs.Tools.Statistic.event(mFirstBuy);
    }
    // source line 96, bytecode pc 170
    this.par.convertCallBack(this.m_itemData);
},
    setBaseTouchPriority: function(priority) {
    // source line 101, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 102, bytecode pc 34
    this.m_convertBtn.setTouchPriority(this.m_baseTouchPriority);
    if (this.head) {
        if (this.head.setTouchPriority) {
            // source line 106, bytecode pc 88
            this.head.setTouchPriority((this.m_baseTouchPriority - 1));
        }
    }
},
    setListener: function(listener) {
    // source line 113, bytecode pc 9
    (this.m_listener = listener);
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 117, bytecode pc 12
    this._super();
    // source line 119, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 122, bytecode pc 63
            (this.m_parentView = parent);
            // source line 123, bytecode pc 81
            (touchPriority = parent.getTouchPriority());
            // source line 125, bytecode pc 98
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 128, bytecode pc 121
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 132, bytecode pc 12
    this._super();
},
    update: function(pren, params) {
    var num, price, residue, mNameStrId, mNameStr, head, btn;
    if (this.head) {
        // source line 137, bytecode pc 28
        this.head.removeFromParent();
    }
    // source line 140, bytecode pc 38
    (this.par = pren);
    // source line 142, bytecode pc 48
    (this.m_itemData = params);
    // source line 144, bytecode pc 67
    (num = (params.item_num || 0));
    // source line 145, bytecode pc 130
    (price = (((params.price <= params.discount_price) && (params.discount_price != 0)) ? params.discount_price : params.price));
    // source line 146, bytecode pc 151
    (residue = (params.exchange_num - params.exchanged_num));
    // source line 147, bytecode pc 163
    (mNameStrId = params.item_name);
    // source line 148, bytecode pc 168
    (mNameStr = null);
    if (xs.Utils.isSet(mNameStrId)) {
        // source line 150, bytecode pc 232
        (mNameStr = xs.Tools.String.createString(mNameStrId));
    }
    // source line 153, bytecode pc 247
    (this.m_id = params.item_id);
    // source line 154, bytecode pc 262
    (this.isHot = params.is_hot);
    // source line 155, bytecode pc 284
    (this.convertType = (params.currency_type || 0));
    // source line 156, bytecode pc 310
    (this.m_pk_id = (params.pk_id || ""));
    if ((residue <= 0)) {
        // source line 160, bytecode pc 340
        this.m_convertBtn.setEnabled(false);
    } else {
        // source line 162, bytecode pc 365
        this.m_convertBtn.setEnabled(true);
    }
    if ((this.convertType == xs.Views.Dialog.MysteryStoreHunYun)) {
        // source line 166, bytecode pc 417
        this.m_hunYu.setVisible(true);
        // source line 167, bytecode pc 437
        this.m_yuanbao.setVisible(false);
    } else {
        // source line 170, bytecode pc 462
        this.m_hunYu.setVisible(false);
        // source line 171, bytecode pc 482
        this.m_yuanbao.setVisible(true);
    }
    if (this.isHot) {
        // source line 176, bytecode pc 513
        this.m_hotSp.setVisible(true);
    } else {
        // source line 178, bytecode pc 538
        this.m_hotSp.setVisible(false);
    }
    // source line 185, bytecode pc 578
    (this.iconMode = xs.Models.Item.createWithBase(this.m_id));
    // source line 188, bytecode pc 614
    (head = this.iconMode.createIcon_Grade({ num: num }));
    // source line 190, bytecode pc 648
    (btn = xs.Views.Btn.createInvisibleWithChild(head));
    // source line 191, bytecode pc 670
    btn.setPosition(this.iconPos);
    // source line 194, bytecode pc 704
    btn.setOnClickCallBack(function() {
    // source line 193, bytecode pc 39
    xs.Views.Mgr.showDialogByName("priviewGiftPackDialog", this.m_id);
}.bind(this));
    // source line 195, bytecode pc 721
    btn.setSwallowTouch(false);
    // source line 196, bytecode pc 738
    btn.setZoomOnTouchDown(false);
    // source line 198, bytecode pc 776
    xs.Utils.Node.attachNodes(this.m_ccbNode, btn);
    // source line 200, bytecode pc 786
    (this.head = btn);
    if ((this.iconMode.getItemType() !== xs.Models.ItemType_Gift)) {
        // source line 204, bytecode pc 844
        this.head.setEnabled(false);
    }
    // source line 207, bytecode pc 896
    this.m_nameLab.setString((mNameStr ? mNameStr : this.iconMode.getNameString()));
    // source line 208, bytecode pc 918
    this.m_priceStr.setString(price);
    // source line 210, bytecode pc 982
    this.labelResidueNum.setString(xs.Tools.Ml.createStringWithArgsArray("MysteryStoreDialog_convertNum", [ residue ]));
}
}));
// source line 219, bytecode pc 462
(xs.Views.Dialog.MysteryStoreDialogCell.create = function() {
    var cell;
    // source line 220, bytecode pc 28
    (cell = new xs.Views.Dialog.MysteryStoreDialogCell());
    if ((cell && cell.init())) {
        // source line 222, bytecode pc 60
        return cell;
    }
    // source line 225, bytecode pc 62
    return null;
});
// source line 509, bytecode pc 948
(xs.Views.Dialog.MysteryStoreDialog = xs.Views.HungerLayer.extend({
    name: "MysteryStoreDialog",
    clickType: { previous: 1, next: 2 },
    cfg: {
        btnClose: { priority: -10 },
        btnUpdate: { priority: -10 },
        ccbCfg: [
            {
                tag: 1,
                type: "ls",
                name: "dialogTitle",
                id: "LS_huodong_title",
                stringId: "MysteryStoreDialog_title"
            },
            { tag: 2, type: "btn", name: "btnClose", id: "Btn_Close" },
            { tag: 4, type: "ls", name: "residueNumStr", id: "LS_fightUI1", offset: { x: 0, y: -5 } },
            { tag: 3, type: "btn", name: "btnUpdate", id: "Btn_MysteryStore_update" }
        ]
    },
    init: function(params) {
    var m_kunYu;
    if (!this._super()) {
        // source line 251, bytecode pc 19
        return false;
    }
    // source line 254, bytecode pc 27
    (this.btnClose = null);
    // source line 255, bytecode pc 35
    (this.residueNumStr = null);
    // source line 256, bytecode pc 43
    (this.btnUpdate = null);
    // source line 258, bytecode pc 51
    (this.labelCurrencySumNum = null);
    // source line 260, bytecode pc 59
    (this.freeUpdateNum = 0);
    // source line 261, bytecode pc 67
    (this.updateNumSum = 0);
    // source line 262, bytecode pc 75
    (this.updateYuanBao = 0);
    // source line 263, bytecode pc 83
    (this.currencySumNum = 0);
    // source line 264, bytecode pc 95
    (this.iconDataList = []);
    // source line 265, bytecode pc 122
    xs.log_hsq("iconDataList", params);
    // source line 266, bytecode pc 130
    (this.updateFirstBuy = false);
    // source line 268, bytecode pc 195
    (this.SumYuanbaoNum = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerYuanBao());
    // source line 271, bytecode pc 246
    (this.ccbNode = cc.BuilderReader.load(xs.Cfg.CCBI.MysteryStore, this));
    // source line 272, bytecode pc 289
    this.ccbNode.setContentSize(cc.size(932, 614));
    // source line 273, bytecode pc 336
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 274, bytecode pc 389
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c" });
    // source line 275, bytecode pc 437
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 282, bytecode pc 479
    (m_kunYu = xs.Factorys.Sprite.create("SecretShop_icon_hunyu", "SecretShop"));
    // source line 284, bytecode pc 561
    xs.Utils.Node.attachNodes(this.ccbNode, m_kunYu, { desc: "lt", offset: cc.p(55, -90) });
    // source line 287, bytecode pc 600
    (this.labelCurrencySumNum = xs.Factorys.Label.createByStyleId("LS_fightUI1"));
    // source line 288, bytecode pc 639
    this.labelCurrencySumNum.setAnchorPoint(cc.p(0, 0));
    // source line 289, bytecode pc 663
    this.labelCurrencySumNum.setString("1111");
    // source line 290, bytecode pc 748
    xs.Utils.Node.attachNodes(this.ccbNode, this.labelCurrencySumNum, { desc: "lt", offset: cc.p(83, -110) });
    // source line 292, bytecode pc 779
    (this.m_defaultSize = cc.size(565, 440));
    // source line 294, bytecode pc 816
    (this.m_tableView = cc.TableView.create(this, this.m_defaultSize));
    // source line 295, bytecode pc 845
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 296, bytecode pc 887
    this.m_tableView.setPosition(cc.p(340, 91));
    // source line 297, bytecode pc 907
    this.m_tableView.setDelegate(this);
    // source line 301, bytecode pc 936
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 302, bytecode pc 961
    this.ccbNode.addChild(this.m_tableView);
    // source line 306, bytecode pc 985
    this.btnClose.setOnClickCallBack(function() {
    // source line 307, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 311, bytecode pc 1023
    this.btnUpdate.setOnClickCallBack(this.updateCallBack.bind(this));
    // source line 313, bytecode pc 1042
    this.updateInfo(params, true);
    // source line 315, bytecode pc 1044
    return true;
},
    updateInfo: function(resData, isInit) {
    // source line 320, bytecode pc 21
    (this.freeUpdateNum = (resData.free_times || 0));
    // source line 321, bytecode pc 43
    (this.updateNumSum = (resData.refresh_times || 0));
    // source line 322, bytecode pc 65
    (this.updateYuanBao = (resData.refresh_cost || 0));
    // source line 323, bytecode pc 135
    (this.currencySumNum = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_HunShi));
    // source line 324, bytecode pc 161
    (this.iconDataList = (resData.item_list || []));
    // source line 327, bytecode pc 178
    this.updateDialog(isInit);
},
    refreshIconList: function() {
    // source line 334, bytecode pc 17
    this.m_tableView.reloadData();
},
    updateDialog: function(isInit) {
    if ((this.freeUpdateNum <= 0)) {
        // source line 342, bytecode pc 63
        this.residueNumStr.setString(xs.Tools.Ml.createString("MysteryStoreDialog_resetNum"));
    } else {
        // source line 344, bytecode pc 135
        this.residueNumStr.setString(xs.Tools.String.createStringWithArgsArray("MysteryStoreDialog_toTodayNum", [ this.freeUpdateNum ]));
    }
    // source line 347, bytecode pc 166
    this.labelCurrencySumNum.setString((this.currencySumNum + ""));
    if (isInit) {
        // source line 351, bytecode pc 192
        this.m_tableView.reloadData();
    } else {
        // source line 353, bytecode pc 210
        this.refreshIconList();
    }
},
    updateCallBack: function() {
    var dialog;
    if ((this.freeUpdateNum > 0)) {
        // source line 367, bytecode pc 25
        this._updateCallBack();
    } else {
        // source line 380, bytecode pc 213
        (dialog = xs.Views.Mgr.showDialogByName("common", {
    title: "",
    content: "",
    leftText: xs.Tools.String.createString("auto_name_146"),
    rightText: xs.Tools.String.createString("auto_name_465"),
    leftCB: function() {
    // source line 375, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    // source line 378, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 379, bytecode pc 39
    this._updateCallBack();
}.bind(this)
}));
        // source line 382, bytecode pc 231
        (dialog = dialog.getRealDialog());
        // source line 384, bytecode pc 305
        dialog.setContentText(xs.Tools.String.createStringWithArgsArray("MysteryStoreDialog_updateCon", [ this.updateYuanBao, this.updateNumSum ]));
        // source line 385, bytecode pc 353
        dialog.setTitleByString(xs.Tools.String.createString("MysteryStoreDialog_updateTil"));
    }
},
    _updateCallBack: function() {
    // source line 393, bytecode pc 22
    xs.log_hsq("_updateCallBack....");
    // source line 412, bytecode pc 127
    xs.Tools.Net.requestMysteryStoreUpdate({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(resData) {
    var info;
    if (resData.result) {
        // source line 400, bytecode pc 24
        (info = resData.return_info);
        if (info) {
            // source line 402, bytecode pc 92
            xs.Views.Mgr.showToast(xs.Tools.String.createString("MysteryStoreDialog_updateOk"));
            // source line 403, bytecode pc 100
            (this.updateFirstBuy = true);
            // source line 404, bytecode pc 133
            xs.Tools.Statistic.event("MysteryStoreUpdate");
            // source line 405, bytecode pc 150
            this.updateInfo(info);
        } else {
            // source line 408, bytecode pc 215
            xs.Views.Mgr.showToast(xs.Tools.String.createString("MysteryStoreDialog_updateFail"));
        }
    }
}, this);
},
    convertCallBack: function(itemData) {
    var promptStr, itemName, itemPrice;
    // source line 418, bytecode pc 22
    xs.log_hsq("convertCallBack....");
    if (xs.Utils.isEmpty(itemData)) {
        // source line 420, bytecode pc 60
        return void 0;
    }
    // source line 422, bytecode pc 65
    (promptStr = null);
    // source line 423, bytecode pc 110
    (itemName = xs.Tools.String.createString(itemData.item_name));
    // source line 424, bytecode pc 203
    (itemPrice = (((itemData.price <= itemData.discount_price) && (itemData.discount_price != 0)) ? itemData.discount_price : itemData.price));
    if ((itemData.currency_type == xs.Views.Dialog.MysteryStoreYuanbao)) {
        if ((itemPrice > this.SumYuanbaoNum)) {
            // source line 427, bytecode pc 291
            xs.Views.Mgr.showToastByStringId("MysteryStorePrompt_5");
            // source line 428, bytecode pc 293
            return void 0;
        }
        // source line 430, bytecode pc 349
        (promptStr = xs.Tools.String.createStringWithArgsArray("MysteryStorePrompt_2", [ itemPrice, itemName ]));
    } else {
        if ((itemData.currency_type == xs.Views.Dialog.MysteryStoreHunYun)) {
            if ((itemPrice > this.currencySumNum)) {
                // source line 433, bytecode pc 442
                xs.Views.Mgr.showToastByStringId("MysteryStorePrompt_4");
                // source line 434, bytecode pc 444
                return void 0;
            }
            // source line 436, bytecode pc 500
            (promptStr = xs.Tools.String.createStringWithArgsArray("MysteryStorePrompt_3", [ itemPrice, itemName ]));
        }
    }
    // source line 475, bytecode pc 678
    xs.Views.Mgr.showDialogByName("NewCommon", {
    title: "MysteryStorePrompt_1",
    content: promptStr,
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("auto_name_76"),
    leftCB: function() {
    // source line 445, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    // source line 448, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 473, bytecode pc 150
    xs.Tools.Net.requestMysteryStoreConvert({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    pk_id: itemData.pk_id
}, function(resData) {
    var info, add_list;
    if (resData.result) {
        // source line 456, bytecode pc 24
        (info = resData.return_info);
        if (info) {
            // source line 459, bytecode pc 44
            (add_list = info.add_list);
            // source line 460, bytecode pc 61
            this.updateInfo(info);
            if (add_list) {
                // source line 463, bytecode pc 106
                xs.Views.Mgr.showDialogByName("GetPropsDialog", add_list);
            }
        }
        // source line 467, bytecode pc 133
        xs.log_hsq("info", info);
        // source line 468, bytecode pc 160
        xs.log_hsq("add_list", add_list);
    }
}, this);
}.bind(this)
});
},
    onEnterTransitionDidFinish: function() {
    // source line 479, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 483, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 484, bytecode pc 51
    this.btnClose.setTouchPriority((this.m_baseTouchPriority + this.cfg.btnClose.priority));
    // source line 485, bytecode pc 93
    this.btnUpdate.setTouchPriority((this.m_baseTouchPriority + this.cfg.btnClose.priority));
    // source line 486, bytecode pc 120
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority - 1));
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 491, bytecode pc 23
    return cc.size(560, 115);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 497, bytecode pc 17
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 500, bytecode pc 61
        (cell = xs.Views.Dialog.MysteryStoreDialogCell.create());
    }
    // source line 503, bytecode pc 89
    cell.update(this, this.iconDataList[idx]);
    // source line 506, bytecode pc 93
    return cell;
},
    numberOfCellsInTableView: function(table) {
    // source line 511, bytecode pc 11
    return this.iconDataList.length;
}
}));
// source line 516, bytecode pc 979
(xs.Views.Dialog.MysteryStoreDialog.showWithSurrenderInfo = function() {
    // source line 522, bytecode pc 102
    xs.Tools.Net.requestMysteryStoreInfo({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(resData) {
    var info;
    if (resData.result) {
        // source line 525, bytecode pc 24
        (info = resData.return_info);
        if (info) {
            // source line 529, bytecode pc 69
            xs.Views.Mgr.showDialogByName("MysteryStoreDialog", info);
        } else {
            // source line 533, bytecode pc 134
            xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_51"));
        }
    }
});
});
// source line 543, bytecode pc 1010
(xs.Views.Dialog.MysteryStoreDialog.create = function(params) {
    var ret;
    // source line 544, bytecode pc 28
    (ret = new xs.Views.Dialog.MysteryStoreDialog());
    if ((ret && ret.init(params))) {
        // source line 546, bytecode pc 64
        return ret;
    }
    // source line 548, bytecode pc 66
    return null;
});
// source line 554, bytecode pc 1100
xs.Views.Mgr.registerDialog("MysteryStoreDialog", {
    "class": xs.Views.Dialog.MysteryStoreDialog,
    styleType: xs.Constant_DlgStyleType_Large,
    area: "SecretShop"
});
