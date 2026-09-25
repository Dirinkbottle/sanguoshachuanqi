// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/FirstChargeDialog.js:1
// source line 77, bytecode pc 427
(xs.Views.Dialog.FirstChargeDialog = xs.Views.HungerLayer.extend({
    name: "FirstChargeDialog",
    init: function(params) {
    var giftId, _obj_item, adds, i, add;
    if (!this._super()) {
        // source line 11, bytecode pc 19
        return false;
    }
    // source line 14, bytecode pc 55
    (this.ccbNode = cc.BuilderReader.load("ccb3/0_9_1_FirstChargeDialog.ccbi", this));
    // source line 15, bytecode pc 98
    this.ccbNode.setContentSize(cc.size(932, 619));
    // source line 16, bytecode pc 145
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 17, bytecode pc 204
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", sc: true });
    // source line 19, bytecode pc 252
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    if ((params && params.fromGoldNotEnough)) {
        // source line 21, bytecode pc 325
        this.m_title.setString(xs.Tools.String.createString("auto_name_237"));
    }
    // source line 26, bytecode pc 349
    this.m_closeBtn.setOnClickCallBack(function() {
    // source line 27, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 31, bytecode pc 373
    this.m_confirmBtn.setOnClickCallBack(function() {
    // source line 32, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 33, bytecode pc 59
    xs.Views.Mgr.showDialogByName("ChargeDialog");
});
    // source line 37, bytecode pc 409
    (giftId = xs.Tools.CfgData.getGlobalConf("First_Recharge_Reward"));
    // source line 38, bytecode pc 470
    (_obj_item = xs.Profile.GameData.Mgr.getInstance().Items.createWithBase((giftId + "")));
    // source line 39, bytecode pc 488
    (adds = _obj_item.getGiftPack());
    // source line 40, bytecode pc 493
    (i = 0);
    while ((i < 4)) {
        if ((i < adds.length)) {
            // source line 42, bytecode pc 554
            (add = xs.Factorys.Add.createWithJson(adds[i]));
            // source line 43, bytecode pc 619
            xs.Utils.replaceNode(this.ccbNode, this.cfg.giftIcon[i].tag, add.createIcon_NumAndName());
        } else {
            // source line 45, bytecode pc 676
            this.ccbNode.getChildByTag(this.cfg.giftIcon[i].tag).setVisible(false);
        }
        // source line 40, bytecode pc 691
        i++;
    }
    // source line 49, bytecode pc 754
    this.m_extraStr.setStringByKeys([ "firstChargeDlg_extraStr_1", "firstChargeDlg_extraStr_2", "firstChargeDlg_extraStr_3" ]);
    // source line 51, bytecode pc 756
    return true;
},
    onEnter: function() {
    // source line 55, bytecode pc 12
    this._super();
    // source line 56, bytecode pc 47
    xs.Factorys.Sprite.load("Chongzhi", true);
},
    setBaseTouchPriority: function(priority) {
    // source line 60, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 61, bytecode pc 36
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 62, bytecode pc 63
    this.m_confirmBtn.setTouchPriority((this.m_baseTouchPriority - 1));
},
    onExit: function() {
    // source line 66, bytecode pc 12
    this._super();
    // source line 67, bytecode pc 47
    xs.Factorys.Sprite.unload("Chongzhi", true);
},
    cfg: {
        giftIcon: [ { tag: 11 }, { tag: 12 }, { tag: 13 }, { tag: 14 } ],
        ccbCfg: [
            { tag: 10, type: "ls", name: "m_title", id: "LS_huodong_title", stringId: "firstChargeDlg_title" },
            {
                tag: 15,
                type: "ls_ext",
                name: "m_extraStr",
                ids: [ "LS_cardWujiangName", "LS_popUI5", "LS_cardWujiangName" ]
            },
            { tag: 17, type: "bs", name: "m_closeBtn", id: "BS_Close" },
            { tag: 16, type: "btn", name: "m_confirmBtn", id: "Btn_getReward" }
        ]
    }
}));
// source line 83, bytecode pc 458
(xs.Views.Dialog.FirstChargeDialog.create = function(params) {
    var ret;
    // source line 84, bytecode pc 28
    (ret = new xs.Views.Dialog.FirstChargeDialog());
    if ((ret && ret.init(params))) {
        // source line 86, bytecode pc 64
        return ret;
    }
    // source line 88, bytecode pc 66
    return null;
});
// source line 93, bytecode pc 538
xs.Views.Mgr.registerDialog("FirstChargeDialog", { "class": xs.Views.Dialog.FirstChargeDialog, styleType: xs.Constant_DlgStyleType_Large });
