// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/Dialog.js:1
// source line 8, bytecode pc 26
(xs.Views.Dialog.NetLogicErr = {});
// source line 9, bytecode pc 57
(xs.Views.Dialog.NetLogicErr.create = function(params) {
    var mErrE_1014, leftStr, leftFun, ret;
    // source line 13, bytecode pc 35
    (mErrE_1014 = xs.Tools.String.createString("e_1014"));
    // source line 15, bytecode pc 71
    (leftStr = xs.Tools.String.createString("auto_name_339"));
    // source line 16, bytecode pc 80
    (leftFun = function() {
    // source line 17, bytecode pc 32
    xs.Views.Mgr.hideDialogByName("NetLogicErr");
    // source line 18, bytecode pc 59
    xs.Views.Mgr.reqLastUrl();
});
    if ((params.strContent.indexOf(mErrE_1014) >= 0)) {
        // source line 21, bytecode pc 146
        (leftStr = xs.Tools.String.createString("auto_name_76"));
        // source line 22, bytecode pc 155
        (leftFun = function() {
    // source line 23, bytecode pc 32
    xs.Views.Mgr.hideDialogByName("NetLogicErr");
});
    }
    // source line 27, bytecode pc 184
    (ret = new xs.Views.Dialog.TwoButtonDialog());
    // source line 28, bytecode pc 199
    ret.init();
    // source line 37, bytecode pc 273
    ret.showDialog("", "", leftStr, xs.Tools.String.createString("auto_name_146"), leftFun, function() {
    // source line 38, bytecode pc 32
    xs.Views.Mgr.hideDialogByName("NetLogicErr");
});
    // source line 42, bytecode pc 308
    ret.getTitleText().setString(params.strTitle);
    // source line 43, bytecode pc 332
    ret.setContentText(params.strContent);
    if (!xs.Guide.GuideMgr.getIsOver()) {
        // source line 47, bytecode pc 392
        ret.getRightButton().setEnabled(false);
    }
    // source line 50, bytecode pc 396
    return ret;
});
// source line 56, bytecode pc 182
xs.Views.Mgr.registerDialog("NetLogicErr", {
    "class": xs.Views.Dialog.NetLogicErr,
    dlgType: xs.Cfg.Scene.CommonScene.NetConnectErr,
    styleType: xs.Constant_DlgStyleType_Small,
    viewType: xs.Constant_ViewType_Dlg
});
// source line 61, bytecode pc 209
(xs.Views.Dialog.NetConnectErr = {});
// source line 62, bytecode pc 240
(xs.Views.Dialog.NetConnectErr.create = function() {
    var ret;
    // source line 67, bytecode pc 134
    (ret = xs.Views.Dialog.createOneButtonDialog(xs.Tools.String.createString("auto_name_391"), xs.Tools.String.createString("auto_name_392"), xs.Tools.String.createString("auto_name_339"), function() {
    // source line 68, bytecode pc 32
    xs.Views.Mgr.hideDialogByName("NetConnectErr");
    // source line 69, bytecode pc 59
    xs.Views.Mgr.reqLastUrl();
}));
    // source line 72, bytecode pc 193
    ret.getContentText().setString(xs.Tools.String.createString("auto_name_392"));
    // source line 73, bytecode pc 252
    ret.getTitleText().setString(xs.Tools.String.createString("auto_name_391"));
    // source line 74, bytecode pc 256
    return ret;
});
// source line 80, bytecode pc 365
xs.Views.Mgr.registerDialog("NetConnectErr", {
    "class": xs.Views.Dialog.NetConnectErr,
    dlgType: xs.Cfg.Scene.CommonScene.NetConnectErr,
    styleType: xs.Constant_DlgStyleType_Small,
    viewType: xs.Constant_ViewType_Dlg
});
// source line 139, bytecode pc 507
(xs.Views.Dialog.createExchangeGanodermaDialog = xs.Views.HungerLayer.extend({
    init: function(getNum) {
    var numLabel;
    if (!this._super()) {
        // source line 88, bytecode pc 19
        return false;
    }
    // source line 91, bytecode pc 53
    this.setAnchorPoint(cc.p(0, 0));
    if (!this.ccbNode) {
        // source line 93, bytecode pc 101
        (this.ccbNode = xs.ccb_reader.load("ccb3/beta_1_duihuantanchuang.ccbi", this));
        // source line 94, bytecode pc 144
        this.ccbNode.setContentSize(cc.size(441, 303));
        // source line 95, bytecode pc 191
        this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
        // source line 98, bytecode pc 250
        xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", sc: true });
    }
    // source line 102, bytecode pc 283
    (numLabel = this.ccbNode.getChildByTag(this.cfg.number_tag));
    // source line 103, bytecode pc 302
    numLabel.setString(getNum);
    if (!this.leftBtn) {
        // source line 108, bytecode pc 432
        (this.leftBtn = xs.Utils.replaceButton(this.ccbNode, this.cfg.leftBtn.tag, xs.Views.Btn.createWithString("Btn_Default", xs.Tools.String.createString("btnStr_goPractice"))));
        // source line 109, bytecode pc 456
        this.leftBtn.setOnClickCallBack(function() {
    // source line 110, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("AgaScene");
});
    }
    if (!this.rightBtn) {
        // source line 116, bytecode pc 586
        (this.rightBtn = xs.Utils.replaceButton(this.ccbNode, this.cfg.rightBtn.tag, xs.Views.Btn.createWithString("Btn_Default", xs.Tools.String.createString("btnStr_continueConvert"))));
        // source line 119, bytecode pc 623
        this.rightBtn.setOnClickCallBack(function() {
    // source line 118, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this));
    }
    // source line 122, bytecode pc 625
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 126, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 127, bytecode pc 51
    this.leftBtn.setTouchPriority((this.cfg.leftBtn.priority + this.m_baseTouchPriority));
    // source line 128, bytecode pc 93
    this.rightBtn.setTouchPriority((this.cfg.rightBtn.priority + this.m_baseTouchPriority));
},
    cfg: { number_tag: 10, leftBtn: { tag: 11, priority: -1 }, rightBtn: { tag: 12, priority: -1 } }
}));
// source line 193, bytecode pc 733
(xs.Views.Dialog.ExchangeGanodermaDialog = xs.SpecificDialog.base.extend({
    init: function(params) {
    var ccbNode;
    if (!this._super(params)) {
        // source line 147, bytecode pc 29
        return false;
    }
    // source line 149, bytecode pc 62
    (ccbNode = xs.ccb_reader.load("ccb3/beta_1_duihuantanchuang.ccbi", this));
    // source line 150, bytecode pc 106
    ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 152, bytecode pc 114
    (this.m_tip = null);
    // source line 153, bytecode pc 122
    (this.m_num = null);
    // source line 154, bytecode pc 130
    (this.m_ganodorma = null);
    // source line 156, bytecode pc 175
    xs.Utils.UI.replaceCcbByCfg(ccbNode, this.cfg.ccbCfg, this);
    // source line 158, bytecode pc 226
    this.m_tip.setString(xs.Tools.String.createString("exchangeTip"));
    // source line 159, bytecode pc 259
    this.m_num.setString(params.addNum);
    // source line 160, bytecode pc 310
    this.m_ganodorma.setString(xs.Tools.String.createString("ganodorma"));
    // source line 166, bytecode pc 377
    (this._dialog = xs.Views.Dialog.createTwoButtonDialogWithContentNode("1070610051", ccbNode, "Btn_GoDevelop", "Btn_ContinueExchange", function() {
    // source line 164, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("AgaScene");
}, function() {
    // source line 170, bytecode pc 44
    xs.Tools.Net.requestBuyGood(params, function(jsonObj) {
    // source line 169, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_393"));
}, this);
}));
    // source line 172, bytecode pc 390
    this.addCloseButton();
    // source line 174, bytecode pc 426
    xs.Utils.Node.attachNodes(this, this._dialog);
    // source line 175, bytecode pc 428
    return true;
},
    cfg: {
        ccbCfg: [
            { tag: 10, type: "ls", name: "m_tip", id: "LS_popUI2" },
            { tag: 11, type: "ls", name: "m_num", id: "LS_popUI2" },
            { tag: 12, type: "ls", name: "m_ganodorma", id: "LS_popUI2" }
        ]
    }
}));
// source line 200, bytecode pc 813
xs.Views.Mgr.registerDialog("ExchangeGanodermaDialog", { "class": xs.Views.Dialog.ExchangeGanodermaDialog, styleType: xs.Constant_DlgStyleType_Small });
// source line 206, bytecode pc 872
(xs.SpecificDialog.ChallengeNotEnough = xs.SpecificDialog.base.extend({
    init: function(params) {
    var param;
    if (!this._super(params)) {
        // source line 208, bytecode pc 23
        return false;
    }
    // source line 210, bytecode pc 42
    (param = (params || {}));
    // source line 211, bytecode pc 74
    (this._dialog = xs.SpecificDialog.createChallengeNotEnough(param));
    // source line 212, bytecode pc 110
    xs.Utils.Node.attachNodes(this, this._dialog);
    // source line 213, bytecode pc 112
    return true;
}
}));
// source line 316, bytecode pc 986
(xs.Views.Dialog.multiBuyDialog = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 220, bytecode pc 12
    this._super();
    // source line 221, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(good) {
    if (!this._super()) {
        // source line 226, bytecode pc 19
        return false;
    }
    // source line 229, bytecode pc 29
    (this.good = good);
    // source line 230, bytecode pc 37
    (this.buyNum = 1);
    // source line 233, bytecode pc 45
    (this.minNum = 1);
    // source line 234, bytecode pc 66
    (this.maxNum = good.getCanBuyNum());
    // source line 236, bytecode pc 121
    (this.bgLayer = cc.LayerColor.create(cc.c4b(0, 0, 0, 150)));
    // source line 239, bytecode pc 180
    xs.Utils.Node.attachNodes(this, this.bgLayer, { desc: "lb", sc: true });
    // source line 242, bytecode pc 216
    (this.ccbNode = xs.ccb_reader.load("ccb3/alpha_19_daojugoumaitanchuang.ccbi", this));
    // source line 243, bytecode pc 259
    this.ccbNode.setContentSize(cc.size(524, 304));
    // source line 247, bytecode pc 318
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", sc: true });
    // source line 250, bytecode pc 345
    (this.numLab = this.ccbNode.getChildByTag(20));
    // source line 251, bytecode pc 370
    this.numLab.setString(this.buyNum);
    // source line 254, bytecode pc 442
    (this.add1Btn = xs.Utils.replaceButton(this.ccbNode, 14, xs.Views.Button.ChangeNumBtn.create(1)));
    // source line 255, bytecode pc 469
    this.add1Btn.addCallBackForEvent(this, this.onChgNum);
    // source line 258, bytecode pc 542
    (this.decrease1Btn = xs.Utils.replaceButton(this.ccbNode, 13, xs.Views.Button.ChangeNumBtn.create(2)));
    // source line 259, bytecode pc 569
    this.decrease1Btn.addCallBackForEvent(this, this.onChgNum);
    // source line 262, bytecode pc 642
    (this.add10Btn = xs.Utils.replaceButton(this.ccbNode, 15, xs.Views.Button.ChangeNumBtn.create(3)));
    // source line 263, bytecode pc 669
    this.add10Btn.addCallBackForEvent(this, this.onChgNum);
    // source line 266, bytecode pc 742
    (this.decrease10Btn = xs.Utils.replaceButton(this.ccbNode, 12, xs.Views.Button.ChangeNumBtn.create(4)));
    // source line 267, bytecode pc 769
    this.decrease10Btn.addCallBackForEvent(this, this.onChgNum);
    // source line 269, bytecode pc 846
    (this.leftBtn = xs.Utils.replaceButton(this.ccbNode, 16, "Default", xs.Tools.String.createString("auto_name_282")));
    // source line 270, bytecode pc 873
    this.leftBtn.addCallBackForEvent(this, this.onClick);
    // source line 272, bytecode pc 950
    (this.rightBtn = xs.Utils.replaceButton(this.ccbNode, 17, "Default", xs.Tools.String.createString("auto_name_394")));
    // source line 273, bytecode pc 977
    this.rightBtn.addCallBackForEvent(this, this.onClick);
    // source line 275, bytecode pc 979
    return true;
},
    setListener: function(listener) {
    // source line 279, bytecode pc 9
    (this.m_listener = listener);
},
    onClick: function(sender) {
    if ((sender === this.leftBtn)) {
        // source line 284, bytecode pc 27
        this.removeFromParent();
    } else {
        if ((sender === this.rightBtn)) {
            // source line 286, bytecode pc 79
            this.m_listener.confirmBuy(this.good, this.buyNum);
            // source line 287, bytecode pc 92
            this.removeFromParent();
        }
    }
},
    onChgNum: function(sender) {
    // source line 293, bytecode pc 3
    switch (sender) {
        case this.add1Btn:
        if ((this.buyNum < this.maxNum)) {
            // source line 296, bytecode pc 85
            (this.buyNum = (this.buyNum + 1));
        }
        break;
        case this.decrease1Btn:
        if ((this.buyNum > this.minNum)) {
            // source line 301, bytecode pc 123
            (this.buyNum = (this.buyNum - 1));
        }
        break;
        case this.add10Btn:
        // source line 305, bytecode pc 182
        (((this.buyNum + 10) < this.maxNum) ? (this.buyNum = (this.buyNum + 10)) : (this.buyNum = this.maxNum));
        break;
        case this.decrease10Btn:
        // source line 309, bytecode pc 241
        (((this.buyNum - 10) > this.minNum) ? (this.buyNum = (this.buyNum - 10)) : (this.buyNum = this.minNum));
        break;
        default:
        break;
    }
    // source line 313, bytecode pc 271
    this.numLab.setString(this.buyNum);
},
    setBaseTouchPriority: function(priority) {
    // source line 317, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 318, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 320, bytecode pc 56
    this.add1Btn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 321, bytecode pc 83
    this.decrease1Btn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 322, bytecode pc 110
    this.add10Btn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 323, bytecode pc 137
    this.decrease10Btn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 325, bytecode pc 164
    this.leftBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 326, bytecode pc 191
    this.rightBtn.setTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 330, bytecode pc 1017
(xs.Views.Dialog.multiBuyDialog.create = function(good) {
    var ret;
    // source line 331, bytecode pc 28
    (ret = new xs.Views.Dialog.multiBuyDialog());
    if ((ret && ret.init(good))) {
        // source line 333, bytecode pc 64
        return ret;
    }
    // source line 335, bytecode pc 66
    return null;
});
// source line 368, bytecode pc 1121
(xs.Views.Dialog._BaseAddListDialog = xs.Views.HungerLayer.extend({
    name: "_BaseAddListDialog",
    init: function(adds, title, btn_txt) {
    var _title, _btn_txt, showList, node;
    // source line 345, bytecode pc 12
    this._super();
    // source line 346, bytecode pc 20
    (this.m_baseTouchPriority = 0);
    // source line 347, bytecode pc 28
    (this.m_buySuccessPopLayer = null);
    // source line 348, bytecode pc 73
    (_title = (title || xs.Tools.String.createString("auto_name_395")));
    // source line 349, bytecode pc 118
    (_btn_txt = (btn_txt || xs.Tools.String.createString("auto_name_76")));
    // source line 351, bytecode pc 152
    (showList = xs.Models.AddShowList.create(adds));
    // source line 352, bytecode pc 170
    (node = showList.createItemShowList());
    // source line 353, bytecode pc 219
    (this.m_buySuccessPopLayer = xs.Views.MessagePopView.create(xs.Views.MessagePopViewType_One));
    // source line 354, bytecode pc 241
    this.m_buySuccessPopLayer.setTitle(_title);
    // source line 355, bytecode pc 263
    this.m_buySuccessPopLayer.setContentNode(node);
    // source line 356, bytecode pc 283
    this.m_buySuccessPopLayer.setListener(this);
    // source line 357, bytecode pc 305
    this.m_buySuccessPopLayer.setCenterBtnTxt(_btn_txt);
    // source line 358, bytecode pc 369
    xs.Utils.Node.attachNodes(this, this.m_buySuccessPopLayer, null, xs.Cfg.Scene.CommonScene.Dialog);
},
    setBaseTouchPriority: function(priority) {
    // source line 361, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 362, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 363, bytecode pc 56
    this.m_buySuccessPopLayer.setBaseTouchPriority((this.m_baseTouchPriority - 1));
},
    centerBtnCallback: function() {
    // source line 366, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    setTitleString: function(str) {
    // source line 369, bytecode pc 21
    this.m_buySuccessPopLayer.setTitle(str);
}
}));
// source line 375, bytecode pc 1190
(xs.Views.Dialog.BuyGoodsSuccessDialog = xs.Views.Dialog._BaseAddListDialog.extend({
    init: function(adds) {
    var _title, _btn_txt;
    // source line 376, bytecode pc 35
    (_title = xs.Tools.String.createString("auto_name_395"));
    // source line 377, bytecode pc 71
    (_btn_txt = xs.Tools.String.createString("auto_name_76"));
    // source line 378, bytecode pc 96
    this._super(adds, _title, _btn_txt);
}
}));
// source line 383, bytecode pc 1270
xs.Views.Mgr.registerDialog("BuyGoodsSuccessDialog", { "class": xs.Views.Dialog.BuyGoodsSuccessDialog, styleType: xs.Constant_DlgStyleType_Large });
// source line 392, bytecode pc 1339
(xs.Views.Dialog.UseItemSuccessDialog = xs.Views.Dialog._BaseAddListDialog.extend({
    init: function(param) {
    var _btn_txt;
    // source line 393, bytecode pc 26
    xs.log_hsq("paramparam", param);
    // source line 394, bytecode pc 62
    (_btn_txt = xs.Tools.String.createString("auto_name_76"));
    // source line 395, bytecode pc 97
    this._super(param.adds, param.title, _btn_txt);
}
}));
// source line 400, bytecode pc 1419
xs.Views.Mgr.registerDialog("UseItemSuccessDialog", { "class": xs.Views.Dialog.UseItemSuccessDialog, styleType: xs.Constant_DlgStyleType_Large });
// source line 411, bytecode pc 1538
(xs.Views.Dialog.priviewGiftPackDialog = xs.Views.Dialog._BaseAddListDialog.extend({
    name: "priviewGiftPackDialog",
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    init: function(item_id) {
    var _title, _btn_txt, _obj_item, adds;
    // source line 412, bytecode pc 35
    (_title = xs.Tools.String.createString("auto_name_396"));
    // source line 413, bytecode pc 71
    (_btn_txt = xs.Tools.String.createString("auto_name_76"));
    // source line 415, bytecode pc 126
    (_obj_item = xs.Profile.GameData.Mgr.getInstance().Items.createWithBase(item_id));
    // source line 417, bytecode pc 176
    this.assert((_obj_item.getItemType() === xs.Models.ItemType_Gift), "the item is not a gift pack!!");
    // source line 419, bytecode pc 194
    (adds = _obj_item.getGiftPack());
    // source line 421, bytecode pc 217
    this.dump("adds", adds);
    // source line 423, bytecode pc 242
    this._super(adds, _title, _btn_txt);
}
}));
// source line 428, bytecode pc 1618
xs.Views.Mgr.registerDialog("priviewGiftPackDialog", { "class": xs.Views.Dialog.priviewGiftPackDialog, styleType: xs.Constant_DlgStyleType_Large });
// source line 455, bytecode pc 1697
(xs.Views.Dialog.priviewTreasureBoxDialog = xs.Views.Dialog._BaseAddListDialog.extend({
    init: function(params) {
    var _title, _btn_txt, _obj_item, adds;
    // source line 434, bytecode pc 14
    (this.treasureBox = params.dungeon);
    // source line 435, bytecode pc 29
    (this.callBack = params.callBack);
    // source line 437, bytecode pc 50
    (_title = this.treasureBox.getTreasureName());
    if ((this.treasureBox.getBoxStatus() === xs.TreasureBox_Status_Open)) {
        // source line 439, bytecode pc 119
        (_btn_txt = xs.Tools.String.createString("auto_name_101"));
    } else {
        // source line 441, bytecode pc 160
        (_btn_txt = xs.Tools.String.createString("auto_name_76"));
    }
    // source line 444, bytecode pc 229
    (_obj_item = xs.Profile.GameData.Mgr.getInstance().Items.createWithBase(this.treasureBox.getItemId()));
    // source line 446, bytecode pc 279
    this.assert((_obj_item.getItemType() === xs.Models.ItemType_Gift), "the item is not a gift pack!!");
    // source line 448, bytecode pc 297
    (adds = _obj_item.getGiftPack());
    // source line 450, bytecode pc 322
    this._super(adds, _title, _btn_txt);
    // source line 452, bytecode pc 324
    return true;
},
    centerBtnCallback: function() {
    if ((this.treasureBox.getBoxStatus() === xs.TreasureBox_Status_Open)) {
        // source line 468, bytecode pc 96
        xs.Tools.Net.requireOpenTreasureBox({ box_id: this.treasureBox.getId() }, function(jsonObj) {
    // source line 462, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_397"));
    // source line 464, bytecode pc 88
    this.treasureBox.setBoxStatus(xs.TreasureBox_Status_Getted);
    // source line 465, bytecode pc 101
    this.callBack();
    // source line 467, bytecode pc 143
    xs.Guide.GuideMgr.endStepBySequence([ "90103" ]);
}, this);
    }
    // source line 471, bytecode pc 123
    xs.Views.Mgr.hideDialog();
}
}));
// source line 475, bytecode pc 1728
(xs.Views.Dialog.priviewTreasureBoxDialog.create = function(params) {
    var ret;
    // source line 476, bytecode pc 28
    (ret = new xs.Views.Dialog.priviewTreasureBoxDialog());
    if ((ret && ret.init(params))) {
        // source line 478, bytecode pc 64
        return ret;
    }
    // source line 480, bytecode pc 66
    return null;
});
// source line 485, bytecode pc 1808
xs.Views.Mgr.registerDialog("priviewTreasureBoxDialog", { "class": xs.Views.Dialog.priviewTreasureBoxDialog, styleType: xs.Constant_DlgStyleType_Large });
// source line 490, bytecode pc 1877
(xs.Views.Dialog.ShowAddListDialog = xs.Views.Dialog._BaseAddListDialog.extend({
    init: function(adds) {
    var _title, _btn_txt;
    // source line 491, bytecode pc 35
    (_title = xs.Tools.String.createString("auto_name_398"));
    // source line 492, bytecode pc 71
    (_btn_txt = xs.Tools.String.createString("auto_name_76"));
    // source line 493, bytecode pc 96
    this._super(adds, _title, _btn_txt);
}
}));
// source line 501, bytecode pc 1957
xs.Views.Mgr.registerDialog("ShowAddListDialog", { "class": xs.Views.Dialog.ShowAddListDialog, styleType: xs.Constant_DlgStyleType_Large });
// source line 506, bytecode pc 2026
(xs.Views.Dialog.GetPropsDialog = xs.Views.Dialog._BaseAddListDialog.extend({
    init: function(adds) {
    var _title, _btn_txt;
    // source line 507, bytecode pc 35
    (_title = xs.Tools.String.createString("comm_propAdd"));
    // source line 508, bytecode pc 71
    (_btn_txt = xs.Tools.String.createString("auto_name_76"));
    // source line 509, bytecode pc 96
    this._super(adds, _title, _btn_txt);
}
}));
// source line 515, bytecode pc 2106
xs.Views.Mgr.registerDialog("GetPropsDialog", { "class": xs.Views.Dialog.GetPropsDialog, styleType: xs.Constant_DlgStyleType_Large });
// source line 563, bytecode pc 2220
(xs.Views.Dialog.ShowWorshipItemDialog = xs.Views.HungerLayer.extend({
    init: function() {
    var arguments;
    // source line 523, bytecode pc 4
    (arguments = arguments);
    if (!this._super()) {
        // source line 525, bytecode pc 24
        return false;
    }
    // source line 527, bytecode pc 32
    (this.m_baseTouchPriority = 0);
    // source line 528, bytecode pc 40
    (this.m_winePopNode = null);
    // source line 529, bytecode pc 48
    (this.m_winePopLayer = null);
    // source line 530, bytecode pc 56
    (this.m_listener = null);
    // source line 532, bytecode pc 93
    (this.m_winePopNode = xs.Views.WorshipWinePopNode.create(arguments));
    // source line 533, bytecode pc 113
    this.m_winePopNode.setListener(this);
    // source line 535, bytecode pc 162
    (this.m_winePopLayer = xs.Views.MessagePopView.create(xs.Views.MessagePopViewType_One));
    // source line 536, bytecode pc 213
    this.m_winePopLayer.setTitle(xs.Tools.String.createString("auto_name_399"));
    // source line 537, bytecode pc 238
    this.m_winePopLayer.setContentNode(this.m_winePopNode);
    // source line 538, bytecode pc 289
    this.m_winePopLayer.setCenterBtnTxt(xs.Tools.String.createString("auto_name_319"));
    // source line 539, bytecode pc 309
    this.m_winePopLayer.setListener(this);
    // source line 540, bytecode pc 373
    xs.Utils.Node.attachNodes(this, this.m_winePopLayer, null, xs.Cfg.Scene.CommonScene.Dialog);
    // source line 542, bytecode pc 375
    return true;
},
    setListener: function(listener) {
    // source line 545, bytecode pc 9
    (this.m_listener = listener);
},
    setBaseTouchPriority: function(priority) {
    // source line 548, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 549, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 550, bytecode pc 54
    this.m_winePopLayer.setBaseTouchPriority(this.m_baseTouchPriority);
},
    centerBtnCallback: function() {
    // source line 554, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    WorshipWinePopNode_useWine: function(item) {
    // source line 558, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    if (this.m_listener) {
        // source line 560, bytecode pc 59
        this.m_listener.ShowWorshipItemDialog_useWine(item);
    }
},
    WorshipWinePopNode_buyWine: function(good) {
    if (this.m_listener) {
        // source line 565, bytecode pc 32
        this.m_listener.ShowWorshipItemDialog_buyWine(good);
    }
}
}));
// source line 577, bytecode pc 2285
xs.Views.Mgr.registerDialog("ShowWorshipItemDialog", { "class": xs.Views.Dialog.ShowWorshipItemDialog });
