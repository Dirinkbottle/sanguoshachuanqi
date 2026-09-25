// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Party/RechargeAwardDialog.js:1
// source line 94, bytecode pc 243
(xs.Scene.Party.RechargeAwardDialog = xs.Views.HungerLayer.extend({
    name: "RechargeAwardDialog",
    CCB_Cfg: [
        { tag: 1, type: "ls", name: "m_labelTitle", id: "LS_huodong_title", stringId: "auto_name_179" },
        { tag: 2, type: "bs", name: "m_btnExit", id: "BS_Close" },
        { tag: 4, name: "m_spriteBg" }
    ],
    init: function(params) {
    var m_bg;
    if (!this._super()) {
        // source line 29, bytecode pc 19
        return false;
    }
    // source line 31, bytecode pc 27
    (this.m_labelTitle = null);
    // source line 32, bytecode pc 35
    (this.m_btnExit = null);
    // source line 33, bytecode pc 43
    (this.m_spriteBg = null);
    // source line 36, bytecode pc 94
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.Party_advertisement, this));
    // source line 38, bytecode pc 180
    xs.Utils.Node.attachNodes(this, this._ccbNode, { desc: "c", offset: cc.p(-466, -306) });
    // source line 40, bytecode pc 223
    xs.Utils.UI.replaceCcbByCfg(this._ccbNode, this.CCB_Cfg, this);
    // source line 42, bytecode pc 228
    (m_bg = null);
    if ((params == xs.Constant_PartyType_MonthCard)) {
        // source line 44, bytecode pc 283
        (m_bg = xs.Factorys.Sprite.createWithFileName("big_picture/HuodongScene02_ad_yuekabg.png"));
        // source line 45, bytecode pc 334
        this.m_labelTitle.setString(xs.Tools.String.createString("auto_name_179"));
        // source line 46, bytecode pc 374
        m_bg.setPosition(cc.p(465, 297));
    } else {
        if ((params == xs.Constant_PartyType_RechargeDouble)) {
            // source line 50, bytecode pc 434
            (m_bg = xs.Factorys.Sprite.createWithFileName("big_picture/HuodongScene02_ad_fanshuangbeibg.png"));
            // source line 52, bytecode pc 485
            this.m_labelTitle.setString(xs.Tools.String.createString("auto_name_183"));
            if ((xs.rechargeRate == 4)) {
                // source line 54, bytecode pc 539
                (m_bg = xs.Factorys.Sprite.createWithFileName("big_picture/HuodongScene02_ad_fansibeibg.png"));
                // source line 55, bytecode pc 590
                this.m_labelTitle.setString(xs.Tools.String.createString("auto_name_firstRecharge4"));
            }
            // source line 57, bytecode pc 630
            m_bg.setPosition(cc.p(465, 287));
        }
    }
    // source line 62, bytecode pc 652
    this._ccbNode.addChild(m_bg);
    // source line 64, bytecode pc 691
    (this.m_confirmBtn = xs.Views.Btn.create("Btn_getReward"));
    // source line 65, bytecode pc 716
    this._ccbNode.addChild(this.m_confirmBtn);
    // source line 66, bytecode pc 758
    this.m_confirmBtn.setPosition(cc.p(725, 110));
    // source line 71, bytecode pc 782
    this.m_btnExit.setOnClickCallBack(function() {
    // source line 72, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 76, bytecode pc 806
    this.m_confirmBtn.setOnClickCallBack(function() {
    // source line 77, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 78, bytecode pc 59
    xs.Views.Mgr.showDialogByName("ChargeDialog");
});
    // source line 81, bytecode pc 808
    return true;
},
    onEnter: function() {
    // source line 85, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 89, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 90, bytecode pc 36
    this.m_btnExit.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 91, bytecode pc 63
    this.m_confirmBtn.setTouchPriority((this.m_baseTouchPriority - 1));
},
    onExit: function() {
    // source line 95, bytecode pc 12
    this._super();
}
}));
// source line 99, bytecode pc 274
(xs.Scene.Party.RechargeAwardDialog.create = function(params) {
    var ret;
    // source line 100, bytecode pc 28
    (ret = new xs.Scene.Party.RechargeAwardDialog());
    if ((ret && ret.init(params))) {
        // source line 102, bytecode pc 64
        return ret;
    }
    // source line 104, bytecode pc 66
    return null;
});
// source line 109, bytecode pc 354
xs.Views.Mgr.registerDialog("RechargeAwardDialog", { "class": xs.Scene.Party.RechargeAwardDialog, styleType: xs.Constant_DlgStyleType_Large });
