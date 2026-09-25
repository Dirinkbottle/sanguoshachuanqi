// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/SpiritStoneDialog.js:1
// source line 7, bytecode pc 21
(xs.Views.Dialog.MysteryStoreYuanbao = 0);
// source line 8, bytecode pc 43
(xs.Views.Dialog.MysteryStoreHunYun = 1);
// source line 9, bytecode pc 66
(xs.Views.Dialog.MysteryStoreLingShi = 2);
// source line 115, bytecode pc 453
(xs.Views.Dialog.SpiritStoneDialogCell = cc.TableViewCell.extend({
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
        { name: "m_convertBtn", tag: 5, type: "btn", id: "Btn_MysteryStore_convert", offset: cc.p(0, 0) }
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
    // source line 40, bytecode pc 134
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.MysteryStoreCell, this));
    // source line 41, bytecode pc 170
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 42, bytecode pc 210
    this.m_ccbNode.setPosition(cc.p(45, 0));
    // source line 45, bytecode pc 253
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg, this);
    // source line 47, bytecode pc 290
    (this.iconPos = this.m_ccbNode.getChildByTag(1).getPosition());
    // source line 49, bytecode pc 328
    this.m_convertBtn.setOnClickCallBack(this.convertClickCallBack.bind(this));
    // source line 62, bytecode pc 373
    (this.m_lingshi = xs.Factorys.Sprite.create("SecretShop_icon_lshi", "SecretShop"));
    // source line 63, bytecode pc 415
    this.m_lingshi.setPosition(cc.p(151, 19));
    // source line 64, bytecode pc 456
    xs.Utils.Node.attachNodes(this.m_ccbNode, this.m_lingshi);
    // source line 68, bytecode pc 485
    this.m_nameLab.setAnchorPoint(xs.ap_lc);
    // source line 69, bytecode pc 514
    this.m_priceStr.setAnchorPoint(xs.ap_lc);
    // source line 73, bytecode pc 516
    return true;
},
    convertClickCallBack: function() {
    // source line 77, bytecode pc 24
    this.par.convertCallBack(this.m_itemData);
},
    setBaseTouchPriority: function(priority) {
    // source line 82, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 83, bytecode pc 34
    this.m_convertBtn.setTouchPriority(this.m_baseTouchPriority);
    if (this.head) {
        if (this.head.setTouchPriority) {
            // source line 87, bytecode pc 88
            this.head.setTouchPriority((this.m_baseTouchPriority - 1));
        }
    }
},
    setListener: function(listener) {
    // source line 94, bytecode pc 9
    (this.m_listener = listener);
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 98, bytecode pc 12
    this._super();
    // source line 100, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 103, bytecode pc 63
            (this.m_parentView = parent);
            // source line 104, bytecode pc 81
            (touchPriority = parent.getTouchPriority());
            // source line 105, bytecode pc 98
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 108, bytecode pc 121
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 112, bytecode pc 12
    this._super();
},
    update: function(pren, params) {
    var num, price, mNameStrId, mNameStr, head, btn;
    if (this.head) {
        // source line 117, bytecode pc 28
        this.head.removeFromParent();
    }
    // source line 121, bytecode pc 38
    (this.par = pren);
    // source line 122, bytecode pc 48
    (this.m_itemData = params);
    // source line 124, bytecode pc 67
    (num = (params.item_num || 0));
    // source line 125, bytecode pc 130
    (price = (((params.price <= params.discount_price) && (params.discount_price != 0)) ? params.discount_price : params.price));
    // source line 126, bytecode pc 142
    (mNameStrId = params.item_name);
    // source line 127, bytecode pc 147
    (mNameStr = null);
    if (xs.Utils.isSet(mNameStrId)) {
        // source line 129, bytecode pc 211
        (mNameStr = xs.Tools.String.createString(mNameStrId));
    }
    // source line 132, bytecode pc 226
    (this.m_id = params.item_id);
    // source line 134, bytecode pc 248
    (this.convertType = (params.currency_type || 0));
    // source line 135, bytecode pc 274
    (this.m_pk_id = (params.pk_id || ""));
    // source line 148, bytecode pc 314
    (this.iconMode = xs.Models.Item.createWithBase(this.m_id));
    // source line 150, bytecode pc 350
    (head = this.iconMode.createIcon_Grade({ num: num }));
    // source line 152, bytecode pc 384
    (btn = xs.Views.Btn.createInvisibleWithChild(head));
    // source line 153, bytecode pc 406
    btn.setPosition(this.iconPos);
    // source line 156, bytecode pc 440
    btn.setOnClickCallBack(function() {
    // source line 155, bytecode pc 39
    xs.Views.Mgr.showDialogByName("priviewGiftPackDialog", this.m_id);
}.bind(this));
    // source line 157, bytecode pc 457
    btn.setSwallowTouch(false);
    // source line 158, bytecode pc 474
    btn.setZoomOnTouchDown(false);
    // source line 160, bytecode pc 512
    xs.Utils.Node.attachNodes(this.m_ccbNode, btn);
    // source line 162, bytecode pc 522
    (this.head = btn);
    if ((this.iconMode.getItemType() !== xs.Models.ItemType_Gift)) {
        // source line 166, bytecode pc 580
        this.head.setEnabled(false);
    }
    // source line 169, bytecode pc 632
    this.m_nameLab.setString((mNameStr ? mNameStr : this.iconMode.getNameString()));
    // source line 170, bytecode pc 654
    this.m_priceStr.setString(price);
}
}));
// source line 180, bytecode pc 484
(xs.Views.Dialog.SpiritStoneDialogCell.create = function() {
    var cell;
    // source line 181, bytecode pc 28
    (cell = new xs.Views.Dialog.SpiritStoneDialogCell());
    if ((cell && cell.init())) {
        // source line 183, bytecode pc 60
        return cell;
    }
    // source line 186, bytecode pc 62
    return null;
});
// source line 392, bytecode pc 946
(xs.Views.Dialog.SpiritStoneDialog = xs.Views.HungerLayer.extend({
    name: "xs.Views.Dialog.SpiritStoneDialog",
    cfg: {
        btnClose: { priority: -10 },
        btnUpdate: { priority: -10 },
        ccbCfg: [
            {
                tag: 1,
                type: "ls",
                name: "dialogTitle",
                id: "LS_huodong_title",
                stringId: "SpiritStoneDialog_title"
            },
            { tag: 2, type: "btn", name: "btnClose", id: "Btn_Close" },
            { tag: 4, type: "ls", name: "residueNumStr", id: "LS_fightUI1", offset: { x: 0, y: -5 } },
            { tag: 3, type: "btn", name: "btnUpdate", id: "Btn_MysteryStore_update" }
        ]
    },
    init: function(param, parent) {
    var left_sprite, node, m_kunYu;
    if (!this._super()) {
        // source line 210, bytecode pc 19
        return false;
    }
    // source line 213, bytecode pc 29
    (this.parent = parent);
    // source line 215, bytecode pc 41
    (this.iconDataList = []);
    // source line 217, bytecode pc 49
    (this.btnClose = null);
    // source line 218, bytecode pc 57
    (this.btnUpdate = null);
    // source line 220, bytecode pc 127
    (this.SumSpiritStoneNum = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_EvolutionStone));
    // source line 222, bytecode pc 178
    (this.ccbNode = cc.BuilderReader.load(xs.Cfg.CCBI.MysteryStore, this));
    // source line 223, bytecode pc 221
    this.ccbNode.setContentSize(cc.size(932, 614));
    // source line 224, bytecode pc 268
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 225, bytecode pc 321
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c" });
    // source line 226, bytecode pc 369
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 228, bytecode pc 411
    (left_sprite = xs.Factorys.Sprite.create("juexbaoxiang_left", "SecretShop"));
    // source line 229, bytecode pc 447
    xs.Utils.replaceNode(this.ccbNode, 10, left_sprite);
    // source line 232, bytecode pc 467
    this.btnUpdate.setVisible(false);
    // source line 233, bytecode pc 491
    (node = this.ccbNode.getChildByTag(11));
    // source line 234, bytecode pc 508
    node.setVisible(false);
    // source line 237, bytecode pc 550
    (m_kunYu = xs.Factorys.Sprite.create("SecretShop_icon_lshi", "SecretShop"));
    // source line 238, bytecode pc 632
    xs.Utils.Node.attachNodes(this.ccbNode, m_kunYu, { desc: "lt", offset: cc.p(55, -90) });
    // source line 240, bytecode pc 671
    (this.labelCurrencySumNum = xs.Factorys.Label.createByStyleId("LS_fightUI1"));
    // source line 241, bytecode pc 710
    this.labelCurrencySumNum.setAnchorPoint(cc.p(0, 0));
    // source line 242, bytecode pc 735
    this.labelCurrencySumNum.setString(this.SumSpiritStoneNum);
    // source line 243, bytecode pc 820
    xs.Utils.Node.attachNodes(this.ccbNode, this.labelCurrencySumNum, { desc: "lt", offset: cc.p(83, -110) });
    // source line 245, bytecode pc 851
    (this.m_defaultSize = cc.size(565, 440));
    // source line 247, bytecode pc 888
    (this.m_tableView = cc.TableView.create(this, this.m_defaultSize));
    // source line 248, bytecode pc 917
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 249, bytecode pc 959
    this.m_tableView.setPosition(cc.p(340, 91));
    // source line 250, bytecode pc 979
    this.m_tableView.setDelegate(this);
    // source line 253, bytecode pc 1008
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 254, bytecode pc 1033
    this.ccbNode.addChild(this.m_tableView);
    // source line 264, bytecode pc 1082
    this.btnClose.setOnClickCallBack(this.closeCilcked.bind({ self: this }));
    // source line 266, bytecode pc 1101
    this.updateInfo(param, true);
    // source line 268, bytecode pc 1103
    return true;
},
    closeCilcked: function() {
    var self, parent;
    // source line 272, bytecode pc 9
    (self = this.self);
    // source line 273, bytecode pc 21
    (parent = self.parent);
    // source line 274, bytecode pc 48
    xs.Views.Mgr.hideDialog();
    // source line 275, bytecode pc 63
    parent.updateSpiritStoneNum();
},
    updateInfo: function(resData, isInit) {
    // source line 281, bytecode pc 25
    (this.iconDataList = (resData.list || []));
    // source line 282, bytecode pc 95
    (this.SumSpiritStoneNum = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_EvolutionStone));
    // source line 283, bytecode pc 112
    this.updateDialog(isInit);
},
    refreshIconList: function() {
    // source line 290, bytecode pc 17
    this.m_tableView.reloadData();
},
    updateDialog: function(isInit) {
    // source line 297, bytecode pc 30
    this.labelCurrencySumNum.setString((this.SumSpiritStoneNum + ""));
    if (isInit) {
        // source line 300, bytecode pc 56
        this.m_tableView.reloadData();
    } else {
        // source line 302, bytecode pc 74
        this.refreshIconList();
    }
},
    onEnter: function() {
    // source line 308, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 312, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 316, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 317, bytecode pc 51
    this.btnClose.setTouchPriority((this.m_baseTouchPriority + this.cfg.btnClose.priority));
    // source line 318, bytecode pc 78
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority - 1));
},
    convertCallBack: function(itemData) {
    var promptStr, itemName, itemPrice;
    if (xs.Utils.isEmpty(itemData)) {
        // source line 324, bytecode pc 37
        return void 0;
    }
    // source line 326, bytecode pc 42
    (promptStr = null);
    // source line 327, bytecode pc 87
    (itemName = xs.Tools.String.createString(itemData.item_name));
    // source line 328, bytecode pc 180
    (itemPrice = (((itemData.price <= itemData.discount_price) && (itemData.discount_price != 0)) ? itemData.discount_price : itemData.price));
    if ((itemPrice > this.SumSpiritStoneNum)) {
        // source line 331, bytecode pc 228
        xs.Views.Mgr.showToastByStringId("SpiritStonePrompt");
        // source line 332, bytecode pc 230
        return void 0;
    }
    // source line 334, bytecode pc 286
    (promptStr = xs.Tools.String.createStringWithArgsArray("SpiritStoneConfirmStr", [ itemPrice, itemName ]));
    // source line 371, bytecode pc 464
    xs.Views.Mgr.showDialogByName("NewCommon", {
    title: "MysteryStorePrompt_1",
    content: promptStr,
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("auto_name_76"),
    leftCB: function() {
    // source line 343, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    // source line 346, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 369, bytecode pc 150
    xs.Tools.Net.requestSpiritStoneConvert({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    pk_id: itemData.pk_id
}, function(resData) {
    var info, add_list;
    if (resData.result) {
        // source line 354, bytecode pc 19
        (info = resData);
        if (info) {
            // source line 357, bytecode pc 39
            (add_list = info.add_list);
            // source line 358, bytecode pc 109
            (this.SumSpiritStoneNum = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_EvolutionStone));
            // source line 359, bytecode pc 124
            this.updateDialog(true);
            if (add_list) {
                // source line 362, bytecode pc 169
                xs.Views.Mgr.showDialogByName("GetPropsDialog", add_list);
            }
        }
    }
}, this);
}.bind(this)
});
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 375, bytecode pc 23
    return cc.size(560, 115);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 380, bytecode pc 17
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 383, bytecode pc 61
        (cell = xs.Views.Dialog.SpiritStoneDialogCell.create());
    }
    // source line 386, bytecode pc 89
    cell.update(this, this.iconDataList[idx]);
    // source line 389, bytecode pc 93
    return cell;
},
    numberOfCellsInTableView: function(table) {
    // source line 394, bytecode pc 11
    return this.iconDataList.length;
}
}));
// source line 400, bytecode pc 977
(xs.Views.Dialog.SpiritStoneDialog.showWithSurrenderInfo = function(parent) {
    // source line 405, bytecode pc 102
    xs.Tools.Net.requestSpiritStoneInfo({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(resData) {
    var info;
    if (resData.result) {
        // source line 407, bytecode pc 19
        (info = resData);
        if (info) {
            // source line 412, bytecode pc 74
            xs.Views.Mgr.showDialogByName("SpiritStoneDialog", info, parent);
        } else {
            // source line 416, bytecode pc 139
            xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_51"));
        }
    }
});
});
// source line 426, bytecode pc 1008
(xs.Views.Dialog.SpiritStoneDialog.create = function(param, parent) {
    var ret;
    // source line 427, bytecode pc 28
    (ret = new xs.Views.Dialog.SpiritStoneDialog());
    if ((ret && ret.init(param, parent))) {
        // source line 429, bytecode pc 68
        return ret;
    }
    // source line 431, bytecode pc 70
    return null;
});
// source line 437, bytecode pc 1098
xs.Views.Mgr.registerDialog("SpiritStoneDialog", {
    "class": xs.Views.Dialog.SpiritStoneDialog,
    styleType: xs.Constant_DlgStyleType_Large,
    area: "SecretShop"
});
