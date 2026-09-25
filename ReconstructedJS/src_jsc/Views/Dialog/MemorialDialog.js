// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/MemorialDialog.js:1
// source line 7, bytecode pc 21
(xs.Views.Dialog.MysteryStoreYuanbao = 0);
// source line 8, bytecode pc 43
(xs.Views.Dialog.MysteryStoreHunYun = 1);
// source line 9, bytecode pc 66
(xs.Views.Dialog.MysteryStoreLingShi = 2);
// source line 122, bytecode pc 454
(xs.Views.Dialog.JiFenDuiHuanDialogCell = cc.TableViewCell.extend({
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
    // source line 19, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 22, bytecode pc 12
    this._super();
    // source line 23, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function() {
    var labelPos;
    if (!this._super()) {
        // source line 27, bytecode pc 19
        return false;
    }
    // source line 30, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 31, bytecode pc 35
    (this.iconPos = null);
    // source line 32, bytecode pc 43
    (this.m_convertBtn = null);
    // source line 33, bytecode pc 51
    (this.m_priceStr = null);
    // source line 34, bytecode pc 59
    (this.m_nameLab = null);
    // source line 35, bytecode pc 67
    (this.convertType = 0);
    // source line 36, bytecode pc 75
    (this.m_pk_id = 0);
    // source line 37, bytecode pc 83
    (this.m_itemData = null);
    // source line 39, bytecode pc 91
    (this.labelResidueNum = null);
    // source line 42, bytecode pc 142
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.MysteryStoreCell, this));
    // source line 43, bytecode pc 178
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 44, bytecode pc 218
    this.m_ccbNode.setPosition(cc.p(45, 0));
    // source line 47, bytecode pc 261
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg, this);
    // source line 49, bytecode pc 298
    (this.iconPos = this.m_ccbNode.getChildByTag(1).getPosition());
    // source line 51, bytecode pc 336
    this.m_convertBtn.setOnClickCallBack(this.convertClickCallBack.bind(this));
    // source line 54, bytecode pc 357
    (labelPos = this.m_convertBtn.getPosition());
    // source line 55, bytecode pc 396
    (this.labelResidueNum = xs.Factorys.Label.createByStyleId("LS_mainUI4"));
    // source line 56, bytecode pc 443
    this.labelResidueNum.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 57, bytecode pc 494
    this.labelResidueNum.setString(xs.Tools.Ml.createString("MysteryStoreDialog_convertNum"));
    // source line 58, bytecode pc 550
    this.labelResidueNum.setPosition(cc.p(labelPos.x, (labelPos.y - 45)));
    // source line 59, bytecode pc 591
    xs.Utils.Node.attachNodes(this.m_ccbNode, this.labelResidueNum);
    // source line 69, bytecode pc 636
    (this.m_lingshi = xs.Factorys.Sprite.create("SecretShop_icon_jifen", "SecretShop"));
    // source line 70, bytecode pc 678
    this.m_lingshi.setPosition(cc.p(151, 19));
    // source line 71, bytecode pc 719
    xs.Utils.Node.attachNodes(this.m_ccbNode, this.m_lingshi);
    // source line 75, bytecode pc 748
    this.m_nameLab.setAnchorPoint(xs.ap_lc);
    // source line 76, bytecode pc 777
    this.m_priceStr.setAnchorPoint(xs.ap_lc);
    // source line 80, bytecode pc 779
    return true;
},
    convertClickCallBack: function() {
    // source line 84, bytecode pc 24
    this.par.convertCallBack(this.m_itemData);
},
    setBaseTouchPriority: function(priority) {
    // source line 89, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 90, bytecode pc 34
    this.m_convertBtn.setTouchPriority(this.m_baseTouchPriority);
    if (this.head) {
        if (this.head.setTouchPriority) {
            // source line 94, bytecode pc 88
            this.head.setTouchPriority((this.m_baseTouchPriority - 1));
        }
    }
},
    setListener: function(listener) {
    // source line 101, bytecode pc 9
    (this.m_listener = listener);
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 105, bytecode pc 12
    this._super();
    // source line 107, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 110, bytecode pc 63
            (this.m_parentView = parent);
            // source line 111, bytecode pc 81
            (touchPriority = parent.getTouchPriority());
            // source line 112, bytecode pc 98
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 115, bytecode pc 121
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 119, bytecode pc 12
    this._super();
},
    update: function(pren, params) {
    var num, price, residue, mNameStrId, mNameStr, head, btn;
    if (this.head) {
        // source line 124, bytecode pc 28
        this.head.removeFromParent();
    }
    // source line 128, bytecode pc 38
    (this.par = pren);
    // source line 129, bytecode pc 48
    (this.m_itemData = params);
    // source line 131, bytecode pc 67
    (num = (params.item_num || 0));
    // source line 132, bytecode pc 130
    (price = (((params.price <= params.discount_price) && (params.discount_price != 0)) ? params.discount_price : params.price));
    // source line 133, bytecode pc 151
    (residue = (params.exchange_num - params.exchanged_num));
    // source line 134, bytecode pc 163
    (mNameStrId = params.item_name);
    // source line 135, bytecode pc 168
    (mNameStr = null);
    if (xs.Utils.isSet(mNameStrId)) {
        // source line 137, bytecode pc 232
        (mNameStr = xs.Tools.String.createString(mNameStrId));
    }
    // source line 140, bytecode pc 247
    (this.m_id = params.item_id);
    // source line 142, bytecode pc 269
    (this.convertType = (params.currency_type || 0));
    // source line 143, bytecode pc 295
    (this.m_pk_id = (params.pk_id || ""));
    if ((residue <= 0)) {
        // source line 150, bytecode pc 325
        this.m_convertBtn.setEnabled(false);
    } else {
        // source line 152, bytecode pc 350
        this.m_convertBtn.setEnabled(true);
    }
    // source line 159, bytecode pc 390
    (this.iconMode = xs.Models.Item.createWithBase(this.m_id));
    // source line 161, bytecode pc 426
    (head = this.iconMode.createIcon_Grade({ num: num }));
    // source line 163, bytecode pc 460
    (btn = xs.Views.Btn.createInvisibleWithChild(head));
    // source line 164, bytecode pc 482
    btn.setPosition(this.iconPos);
    // source line 167, bytecode pc 516
    btn.setOnClickCallBack(function() {
    // source line 166, bytecode pc 39
    xs.Views.Mgr.showDialogByName("priviewGiftPackDialog", this.m_id);
}.bind(this));
    // source line 168, bytecode pc 533
    btn.setSwallowTouch(false);
    // source line 169, bytecode pc 550
    btn.setZoomOnTouchDown(false);
    // source line 171, bytecode pc 588
    xs.Utils.Node.attachNodes(this.m_ccbNode, btn);
    // source line 173, bytecode pc 598
    (this.head = btn);
    if ((this.iconMode.getItemType() !== xs.Models.ItemType_Gift)) {
        // source line 177, bytecode pc 656
        this.head.setEnabled(false);
    }
    // source line 180, bytecode pc 708
    this.m_nameLab.setString((mNameStr ? mNameStr : this.iconMode.getNameString()));
    // source line 181, bytecode pc 730
    this.m_priceStr.setString(price);
    // source line 183, bytecode pc 794
    this.labelResidueNum.setString(xs.Tools.Ml.createStringWithArgsArray("MysteryStoreDialog_convertNum", [ residue ]));
}
}));
// source line 194, bytecode pc 485
(xs.Views.Dialog.JiFenDuiHuanDialogCell.create = function() {
    var cell;
    // source line 195, bytecode pc 28
    (cell = new xs.Views.Dialog.JiFenDuiHuanDialogCell());
    if ((cell && cell.init())) {
        // source line 197, bytecode pc 60
        return cell;
    }
    // source line 200, bytecode pc 62
    return null;
});
// source line 406, bytecode pc 947
(xs.Views.Dialog.MemorialDialog = xs.Views.HungerLayer.extend({
    name: "xs.Views.Dialog.MemorialDialog",
    cfg: {
        btnClose: { priority: -10 },
        btnUpdate: { priority: -10 },
        ccbCfg: [
            {
                tag: 1,
                type: "ls",
                name: "dialogTitle",
                id: "LS_huodong_title",
                stringId: "JiFenDuiHuanDialog_title"
            },
            { tag: 2, type: "btn", name: "btnClose", id: "Btn_Close" },
            { tag: 4, type: "ls", name: "residueNumStr", id: "LS_fightUI1", offset: { x: 0, y: -5 } },
            { tag: 3, type: "btn", name: "btnUpdate", id: "Btn_MysteryStore_update" }
        ]
    },
    init: function(param, parent) {
    var left_sprite, node, m_kunYu;
    if (!this._super()) {
        // source line 224, bytecode pc 19
        return false;
    }
    // source line 227, bytecode pc 29
    (this.parent = parent);
    // source line 229, bytecode pc 41
    (this.iconDataList = []);
    // source line 231, bytecode pc 49
    (this.btnClose = null);
    // source line 232, bytecode pc 57
    (this.btnUpdate = null);
    // source line 234, bytecode pc 127
    (this.SumSpiritStoneNum = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_CopyMemorial));
    // source line 235, bytecode pc 157
    xs.log("---- 积分数量 this.SumSpiritStoneNum = ", this.SumSpiritStoneNum);
    // source line 237, bytecode pc 208
    (this.ccbNode = cc.BuilderReader.load(xs.Cfg.CCBI.MysteryStore, this));
    // source line 238, bytecode pc 251
    this.ccbNode.setContentSize(cc.size(932, 614));
    // source line 239, bytecode pc 298
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 240, bytecode pc 351
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c" });
    // source line 241, bytecode pc 399
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 243, bytecode pc 441
    (left_sprite = xs.Factorys.Sprite.create("juexbaoxiang_left", "SecretShop"));
    // source line 244, bytecode pc 477
    xs.Utils.replaceNode(this.ccbNode, 10, left_sprite);
    // source line 247, bytecode pc 497
    this.btnUpdate.setVisible(false);
    // source line 248, bytecode pc 521
    (node = this.ccbNode.getChildByTag(11));
    // source line 249, bytecode pc 538
    node.setVisible(false);
    // source line 252, bytecode pc 580
    (m_kunYu = xs.Factorys.Sprite.create("SecretShop_icon_jifen", "SecretShop"));
    // source line 253, bytecode pc 662
    xs.Utils.Node.attachNodes(this.ccbNode, m_kunYu, { desc: "lt", offset: cc.p(55, -90) });
    // source line 255, bytecode pc 701
    (this.labelCurrencySumNum = xs.Factorys.Label.createByStyleId("LS_fightUI1"));
    // source line 256, bytecode pc 740
    this.labelCurrencySumNum.setAnchorPoint(cc.p(0, 0));
    // source line 257, bytecode pc 765
    this.labelCurrencySumNum.setString(this.SumSpiritStoneNum);
    // source line 258, bytecode pc 850
    xs.Utils.Node.attachNodes(this.ccbNode, this.labelCurrencySumNum, { desc: "lt", offset: cc.p(83, -110) });
    // source line 260, bytecode pc 881
    (this.m_defaultSize = cc.size(565, 440));
    // source line 262, bytecode pc 918
    (this.m_tableView = cc.TableView.create(this, this.m_defaultSize));
    // source line 263, bytecode pc 947
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 264, bytecode pc 989
    this.m_tableView.setPosition(cc.p(340, 91));
    // source line 265, bytecode pc 1009
    this.m_tableView.setDelegate(this);
    // source line 268, bytecode pc 1038
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 269, bytecode pc 1063
    this.ccbNode.addChild(this.m_tableView);
    // source line 279, bytecode pc 1112
    this.btnClose.setOnClickCallBack(this.closeCilcked.bind({ self: this }));
    // source line 281, bytecode pc 1131
    this.updateInfo(param, true);
    // source line 283, bytecode pc 1133
    return true;
},
    closeCilcked: function() {
    var self, parent;
    // source line 287, bytecode pc 9
    (self = this.self);
    // source line 288, bytecode pc 21
    (parent = self.parent);
    // source line 289, bytecode pc 48
    xs.Views.Mgr.hideDialog();
    // source line 290, bytecode pc 63
    parent.updateSpiritStoneNum();
},
    updateInfo: function(resData, isInit) {
    // source line 296, bytecode pc 25
    (this.iconDataList = (resData.item_list || []));
    // source line 297, bytecode pc 95
    (this.SumSpiritStoneNum = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_CopyMemorial));
    // source line 298, bytecode pc 112
    this.updateDialog(isInit);
},
    refreshIconList: function() {
    // source line 305, bytecode pc 17
    this.m_tableView.reloadData();
},
    updateDialog: function(isInit) {
    // source line 312, bytecode pc 30
    this.labelCurrencySumNum.setString((this.SumSpiritStoneNum + ""));
    if (isInit) {
        // source line 315, bytecode pc 56
        this.m_tableView.reloadData();
    } else {
        // source line 317, bytecode pc 74
        this.refreshIconList();
    }
},
    onEnter: function() {
    // source line 323, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 327, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 331, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 332, bytecode pc 51
    this.btnClose.setTouchPriority((this.m_baseTouchPriority + this.cfg.btnClose.priority));
    // source line 333, bytecode pc 78
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority - 1));
},
    convertCallBack: function(itemData) {
    var promptStr, itemName, itemPrice;
    if (xs.Utils.isEmpty(itemData)) {
        // source line 339, bytecode pc 37
        return void 0;
    }
    // source line 341, bytecode pc 42
    (promptStr = null);
    // source line 342, bytecode pc 87
    (itemName = xs.Tools.String.createString(itemData.item_name));
    // source line 343, bytecode pc 180
    (itemPrice = (((itemData.price <= itemData.discount_price) && (itemData.discount_price != 0)) ? itemData.discount_price : itemData.price));
    if ((itemPrice > this.SumSpiritStoneNum)) {
        // source line 346, bytecode pc 228
        xs.Views.Mgr.showToastByStringId("JiFenPrompt");
        // source line 347, bytecode pc 230
        return void 0;
    }
    // source line 349, bytecode pc 286
    (promptStr = xs.Tools.String.createStringWithArgsArray("JiFenConfirmStr", [ itemPrice, itemName ]));
    // source line 385, bytecode pc 464
    xs.Views.Mgr.showDialogByName("NewCommon", {
    title: "MysteryStorePrompt_1",
    content: promptStr,
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("auto_name_76"),
    leftCB: function() {
    // source line 358, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    // source line 361, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 383, bytecode pc 150
    xs.Tools.Net.requestJiFenDuiHuanConvert({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    pk_id: itemData.pk_id
}, function(resData) {
    var info, add_list;
    if (resData.result) {
        // source line 369, bytecode pc 19
        (info = resData);
        if (info) {
            // source line 372, bytecode pc 39
            (add_list = info.add_list);
            // source line 373, bytecode pc 56
            this.updateInfo(info);
            // source line 374, bytecode pc 126
            (this.SumSpiritStoneNum = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_CopyMemorial));
            if (add_list) {
                // source line 376, bytecode pc 171
                xs.Views.Mgr.showDialogByName("GetPropsDialog", add_list);
            }
        }
    }
}, this);
}.bind(this)
});
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 389, bytecode pc 23
    return cc.size(560, 115);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 394, bytecode pc 17
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 397, bytecode pc 61
        (cell = xs.Views.Dialog.JiFenDuiHuanDialogCell.create());
    }
    // source line 400, bytecode pc 89
    cell.update(this, this.iconDataList[idx]);
    // source line 403, bytecode pc 93
    return cell;
},
    numberOfCellsInTableView: function(table) {
    // source line 408, bytecode pc 11
    return this.iconDataList.length;
}
}));
// source line 414, bytecode pc 978
(xs.Views.Dialog.MemorialDialog.showWithSurrenderInfo = function(parent) {
    // source line 419, bytecode pc 102
    xs.Tools.Net.requestJiFenDuiHuanInfo({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(resData) {
    var info;
    if (resData.result) {
        // source line 421, bytecode pc 19
        (info = resData);
        if (info) {
            // source line 426, bytecode pc 74
            xs.Views.Mgr.showDialogByName("MemorialDialog", info, parent);
        } else {
            // source line 430, bytecode pc 139
            xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_51"));
        }
    }
});
});
// source line 440, bytecode pc 1009
(xs.Views.Dialog.MemorialDialog.create = function(param, parent) {
    var ret;
    // source line 441, bytecode pc 28
    (ret = new xs.Views.Dialog.MemorialDialog());
    if ((ret && ret.init(param, parent))) {
        // source line 443, bytecode pc 68
        return ret;
    }
    // source line 445, bytecode pc 70
    return null;
});
// source line 451, bytecode pc 1099
xs.Views.Mgr.registerDialog("MemorialDialog", {
    "class": xs.Views.Dialog.MemorialDialog,
    styleType: xs.Constant_DlgStyleType_Large,
    area: "SecretShop"
});
