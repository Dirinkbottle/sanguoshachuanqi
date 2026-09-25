// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/PlantTreeDlg.js:1
// source line 6, bytecode pc 21
(xs.Views.Dialog.MysteryStoreYuanbao = 0);
// source line 7, bytecode pc 43
(xs.Views.Dialog.MysteryStoreHunYun = 1);
// source line 8, bytecode pc 66
(xs.Views.Dialog.MysteryStoreLingShi = 2);
// source line 121, bytecode pc 453
(xs.Views.Dialog.PlantTreeDlgCell = cc.TableViewCell.extend({
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
        { name: "m_convertBtn", tag: 5, type: "btn", id: "Btn_PlantTree_Receive", offset: cc.p(0, 0) }
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
    var labelPos;
    if (!this._super()) {
        // source line 26, bytecode pc 19
        return false;
    }
    // source line 29, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 30, bytecode pc 35
    (this.iconPos = null);
    // source line 31, bytecode pc 43
    (this.m_convertBtn = null);
    // source line 32, bytecode pc 51
    (this.m_priceStr = null);
    // source line 33, bytecode pc 59
    (this.m_nameLab = null);
    // source line 34, bytecode pc 67
    (this.convertType = 0);
    // source line 35, bytecode pc 75
    (this.m_pk_id = 0);
    // source line 36, bytecode pc 83
    (this.m_itemData = null);
    // source line 41, bytecode pc 134
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.MysteryStoreCell, this));
    // source line 42, bytecode pc 170
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 43, bytecode pc 210
    this.m_ccbNode.setPosition(cc.p(45, 0));
    // source line 46, bytecode pc 253
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg, this);
    // source line 48, bytecode pc 290
    (this.iconPos = this.m_ccbNode.getChildByTag(1).getPosition());
    // source line 50, bytecode pc 328
    this.m_convertBtn.setOnClickCallBack(this.convertClickCallBack.bind(this));
    // source line 53, bytecode pc 349
    (labelPos = this.m_convertBtn.getPosition());
    // source line 68, bytecode pc 394
    (this.m_lingshi = xs.Factorys.Sprite.create("SecretShop_icon_yulu", "SecretShop"));
    // source line 69, bytecode pc 436
    this.m_lingshi.setPosition(cc.p(151, 19));
    // source line 70, bytecode pc 477
    xs.Utils.Node.attachNodes(this.m_ccbNode, this.m_lingshi);
    // source line 74, bytecode pc 506
    this.m_nameLab.setAnchorPoint(xs.ap_lc);
    // source line 75, bytecode pc 535
    this.m_priceStr.setAnchorPoint(xs.ap_lc);
    // source line 79, bytecode pc 537
    return true;
},
    convertClickCallBack: function() {
    // source line 83, bytecode pc 24
    this.par.convertCallBack(this.m_itemData);
},
    setBaseTouchPriority: function(priority) {
    // source line 88, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 89, bytecode pc 34
    this.m_convertBtn.setTouchPriority(this.m_baseTouchPriority);
    if (this.head) {
        if (this.head.setTouchPriority) {
            // source line 93, bytecode pc 88
            this.head.setTouchPriority((this.m_baseTouchPriority - 1));
        }
    }
},
    setListener: function(listener) {
    // source line 100, bytecode pc 9
    (this.m_listener = listener);
},
    onEnter: function() {
    var parent, touchPriority;
    // source line 104, bytecode pc 12
    this._super();
    // source line 106, bytecode pc 28
    (parent = this.getParent());
    while (parent) {
        if ((parent instanceof cc.TableView)) {
            // source line 109, bytecode pc 63
            (this.m_parentView = parent);
            // source line 110, bytecode pc 81
            (touchPriority = parent.getTouchPriority());
            // source line 111, bytecode pc 98
            this.setBaseTouchPriority(touchPriority);
            break;
        }
        // source line 114, bytecode pc 121
        (parent = parent.getParent());
    }
},
    onExit: function() {
    // source line 118, bytecode pc 12
    this._super();
},
    update: function(pren, params) {
    var num, price, residue, mNameStrId, mNameStr, head, btn;
    if (this.head) {
        // source line 123, bytecode pc 28
        this.head.removeFromParent();
    }
    // source line 127, bytecode pc 38
    (this.par = pren);
    // source line 128, bytecode pc 48
    (this.m_itemData = params);
    // source line 130, bytecode pc 67
    (num = (params.item_num || 0));
    // source line 131, bytecode pc 130
    (price = (((params.price <= params.discount_price) && (params.discount_price != 0)) ? params.discount_price : params.price));
    // source line 132, bytecode pc 151
    (residue = (params.exchange_num - params.exchanged_num));
    // source line 133, bytecode pc 163
    (mNameStrId = params.item_name);
    // source line 134, bytecode pc 168
    (mNameStr = null);
    if (xs.Utils.isSet(mNameStrId)) {
        // source line 136, bytecode pc 232
        (mNameStr = xs.Tools.String.createString(mNameStrId));
    }
    // source line 139, bytecode pc 247
    (this.m_id = params.item_id);
    // source line 141, bytecode pc 269
    (this.convertType = (params.currency_type || 0));
    // source line 142, bytecode pc 295
    (this.m_pk_id = (params.pk_id || ""));
    if ((residue <= 0)) {
        // source line 149, bytecode pc 325
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
}
}));
// source line 194, bytecode pc 484
(xs.Views.Dialog.PlantTreeDlgCell.create = function() {
    var cell;
    // source line 195, bytecode pc 28
    (cell = new xs.Views.Dialog.PlantTreeDlgCell());
    if ((cell && cell.init())) {
        // source line 197, bytecode pc 60
        return cell;
    }
    // source line 200, bytecode pc 62
    return null;
});
// source line 460, bytecode pc 838
(xs.Views.Dialog.PlantTreeDlg = xs.Views.HungerLayer.extend({
    name: "xs.Views.Dialog.PlantTreeDlg",
    cfg: {
        btnClose: { priority: -10 },
        btnUpdate: { priority: -10 },
        ccbCfg: [
            { tag: 1, type: "ls", name: "dialogTitle", id: "LS_huodong_title", stringId: "PlantTreeDlg_title" },
            { tag: 2, type: "btn", name: "btnClose", id: "Btn_Close" }
        ]
    },
    init: function(param, parent) {
    var m_kunYu;
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
    // source line 235, bytecode pc 127
    (this.SumSpiritStoneNum = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_CopyYuLu));
    // source line 236, bytecode pc 157
    xs.log("---- 积分数量 this.SumSpiritStoneNum = ", this.SumSpiritStoneNum);
    // source line 238, bytecode pc 208
    (this.ccbNode = cc.BuilderReader.load(xs.Cfg.CCBI.PlantTreeDlgCCB, this));
    // source line 239, bytecode pc 251
    this.ccbNode.setContentSize(cc.size(932, 614));
    // source line 240, bytecode pc 298
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 241, bytecode pc 351
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c" });
    // source line 242, bytecode pc 399
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 254, bytecode pc 441
    (m_kunYu = xs.Factorys.Sprite.create("SecretShop_icon_yulu", "SecretShop"));
    // source line 255, bytecode pc 523
    xs.Utils.Node.attachNodes(this.ccbNode, m_kunYu, { desc: "lt", offset: cc.p(55, -95) });
    // source line 256, bytecode pc 541
    m_kunYu.setZOrder(10);
    // source line 258, bytecode pc 580
    (this.labelCurrencySumNum = xs.Factorys.Label.createByStyleId("LS_fightUI1"));
    // source line 259, bytecode pc 619
    this.labelCurrencySumNum.setAnchorPoint(cc.p(0, 0));
    // source line 260, bytecode pc 644
    this.labelCurrencySumNum.setString(this.SumSpiritStoneNum);
    // source line 261, bytecode pc 729
    xs.Utils.Node.attachNodes(this.ccbNode, this.labelCurrencySumNum, { desc: "lt", offset: cc.p(83, -110) });
    // source line 262, bytecode pc 750
    this.labelCurrencySumNum.setZOrder(10);
    // source line 263, bytecode pc 781
    (this.m_defaultSize = cc.size(565, 440));
    // source line 265, bytecode pc 818
    (this.m_tableView = cc.TableView.create(this, this.m_defaultSize));
    // source line 266, bytecode pc 847
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 267, bytecode pc 889
    this.m_tableView.setPosition(cc.p(340, 91));
    // source line 268, bytecode pc 909
    this.m_tableView.setDelegate(this);
    // source line 271, bytecode pc 938
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 272, bytecode pc 963
    this.ccbNode.addChild(this.m_tableView);
    // source line 282, bytecode pc 1012
    this.btnClose.setOnClickCallBack(this.closeCilcked.bind({ self: this }));
    // source line 284, bytecode pc 1031
    this.updateInfo(param, true);
    // source line 286, bytecode pc 1033
    return true;
},
    getTreeLevel: function() {
    var level;
    // source line 290, bytecode pc 69
    (this.SumSpiritStoneNum = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_CopyYuLu));
    // source line 291, bytecode pc 74
    (level = 1);
    if ((this.SumSpiritStoneNum < 1500)) {
        // source line 293, bytecode pc 94
        (level = 1);
    } else {
        if (((this.SumSpiritStoneNum > 1499) && (this.SumSpiritStoneNum < 15000))) {
            // source line 296, bytecode pc 136
            (level = 2);
        } else {
            if (((this.SumSpiritStoneNum > 14999) && (this.SumSpiritStoneNum < 100000))) {
                // source line 299, bytecode pc 179
                (level = 3);
            } else {
                if ((this.SumSpiritStoneNum > 99999)) {
                    // source line 302, bytecode pc 206
                    (level = 4);
                }
            }
        }
    }
    // source line 304, bytecode pc 210
    return level;
},
    closeCilcked: function() {
    var self, parent;
    // source line 308, bytecode pc 9
    (self = this.self);
    // source line 309, bytecode pc 21
    (parent = self.parent);
    // source line 310, bytecode pc 48
    xs.Views.Mgr.hideDialog();
    // source line 311, bytecode pc 63
    parent.updateSpiritStoneNum();
},
    updateInfo: function(resData, isInit) {
    var treeArr, left_sprite;
    // source line 317, bytecode pc 25
    (this.iconDataList = (resData.item_list || []));
    // source line 318, bytecode pc 44
    (this.plantLevel = this.getTreeLevel());
    // source line 319, bytecode pc 114
    (this.SumSpiritStoneNum = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_CopyYuLu));
    // source line 322, bytecode pc 168
    (treeArr = [
    "SecretShop_Tree0",
    "SecretShop_Tree1",
    "SecretShop_Tree2",
    "SecretShop_Tree3",
    "SecretShop_Tree4"
]);
    // source line 323, bytecode pc 215
    (left_sprite = xs.Factorys.Sprite.create(treeArr[this.plantLevel], "SecretShop"));
    // source line 324, bytecode pc 251
    xs.Utils.replaceNode(this.ccbNode, 10, left_sprite);
    // source line 326, bytecode pc 268
    this.updateDialog(isInit);
},
    refreshIconList: function() {
    // source line 333, bytecode pc 17
    this.m_tableView.reloadData();
},
    updateDialog: function(isInit) {
    // source line 340, bytecode pc 30
    this.labelCurrencySumNum.setString((this.SumSpiritStoneNum + ""));
    if (isInit) {
        // source line 345, bytecode pc 56
        this.m_tableView.reloadData();
    } else {
        // source line 347, bytecode pc 74
        this.refreshIconList();
    }
},
    onEnter: function() {
    // source line 353, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 357, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 361, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 362, bytecode pc 51
    this.btnClose.setTouchPriority((this.m_baseTouchPriority + this.cfg.btnClose.priority));
    // source line 363, bytecode pc 78
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority - 1));
},
    convertCallBack: function(itemData) {
    var itemName, itemPrice;
    if (xs.Utils.isEmpty(itemData)) {
        // source line 369, bytecode pc 31
        return void 0;
    }
    // source line 372, bytecode pc 70
    (itemName = xs.Tools.String.createString(itemData.item_name));
    // source line 373, bytecode pc 133
    (itemPrice = (((itemData.price <= itemData.discount_price) && (itemData.discount_price != 0)) ? itemData.discount_price : itemData.price));
    if ((itemPrice > this.SumSpiritStoneNum)) {
        // source line 376, bytecode pc 181
        xs.Views.Mgr.showToastByStringId("YuLuPrompt");
        // source line 377, bytecode pc 183
        return void 0;
    }
    // source line 379, bytecode pc 246
    (promptStr = xs.Tools.String.createStringWithArgsArray("JiFenConfirmStr", [ itemPrice, itemName ]));
    // source line 402, bytecode pc 364
    xs.Tools.Net.requestYuLuConvert({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    pk_id: itemData.pk_id
}, function(resData) {
    var info, add_list;
    if (resData.result) {
        // source line 388, bytecode pc 19
        (info = resData);
        if (info) {
            // source line 391, bytecode pc 39
            (add_list = info.add_list);
            // source line 392, bytecode pc 56
            this.updateInfo(info);
            // source line 393, bytecode pc 126
            (this.SumSpiritStoneNum = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_CopyYuLu));
            if (add_list) {
                // source line 395, bytecode pc 171
                xs.Views.Mgr.showDialogByName("GetPropsDialog", add_list);
            }
        }
    }
}, this);
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 443, bytecode pc 23
    return cc.size(560, 115);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 448, bytecode pc 17
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 451, bytecode pc 61
        (cell = xs.Views.Dialog.PlantTreeDlgCell.create());
    }
    // source line 454, bytecode pc 89
    cell.update(this, this.iconDataList[idx]);
    // source line 457, bytecode pc 93
    return cell;
},
    numberOfCellsInTableView: function(table) {
    // source line 462, bytecode pc 11
    return this.iconDataList.length;
}
}));
// source line 468, bytecode pc 869
(xs.Views.Dialog.PlantTreeDlg.showWithSurrenderInfo = function(parent) {
    // source line 473, bytecode pc 102
    xs.Tools.Net.requestYuLuInfo({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(resData) {
    var info;
    if (resData.result) {
        // source line 475, bytecode pc 19
        (info = resData);
        if (info) {
            // source line 480, bytecode pc 74
            xs.Views.Mgr.showDialogByName("PlantTreeDlg", info, parent);
        } else {
            // source line 484, bytecode pc 139
            xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_51"));
        }
    }
});
});
// source line 494, bytecode pc 900
(xs.Views.Dialog.PlantTreeDlg.create = function(param, parent) {
    var ret;
    // source line 495, bytecode pc 28
    (ret = new xs.Views.Dialog.PlantTreeDlg());
    if ((ret && ret.init(param, parent))) {
        // source line 497, bytecode pc 68
        return ret;
    }
    // source line 499, bytecode pc 70
    return null;
});
// source line 505, bytecode pc 990
xs.Views.Mgr.registerDialog("PlantTreeDlg", {
    "class": xs.Views.Dialog.PlantTreeDlg,
    styleType: xs.Constant_DlgStyleType_Large,
    area: "SecretShop"
});
