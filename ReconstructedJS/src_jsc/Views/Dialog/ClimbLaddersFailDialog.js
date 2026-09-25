// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/ClimbLaddersFailDialog.js:1
// source line 57, bytecode pc 322
(xs.Views.Dialog.ClimbLaddersFailDialog = xs.Views.HungerLayer.extend({
    name: "ClimbLaddersFailDialog",
    cfg: {
        ccbCfg: [
            { tag: 2, type: "btn", name: "m_btnClose", id: "Btn_Close" },
            { tag: 3, type: "btn", name: "m_btnConfrm", id: "Btn_Confirm_2" },
            { tag: 21, type: "ls", name: "m_totalProgress", id: "LS_danyao", string: "0" },
            { tag: 22, type: "ls", name: "m_extra_integration", id: "LS_danyao", string: "0" }
        ]
    },
    init: function(fightInfo) {
    if (!this._super()) {
        // source line 21, bytecode pc 19
        return false;
    }
    // source line 24, bytecode pc 29
    (this.fightInfo = fightInfo);
    // source line 25, bytecode pc 37
    (this.m_btnClose = null);
    // source line 26, bytecode pc 45
    (this.m_btnConfrm = null);
    // source line 27, bytecode pc 53
    (this.m_totalProgress = null);
    // source line 28, bytecode pc 61
    (this.m_extra_integration = null);
    // source line 30, bytecode pc 97
    (this.ccbNode = xs.ccb_reader.load("ccb3/quickFightResult_climbLadders_fail.ccbi", this));
    // source line 31, bytecode pc 140
    this.ccbNode.setContentSize(cc.size(557, 380));
    // source line 32, bytecode pc 187
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 33, bytecode pc 246
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", sc: true });
    // source line 35, bytecode pc 294
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 39, bytecode pc 336
    this.m_totalProgress.setString((" " + this.fightInfo.getTotalProgress()));
    // source line 40, bytecode pc 403
    this.m_extra_integration.setString((" " + xs.Scene.StartBattleScene.Model.getInstance().getTotalIntegration()));
    // source line 43, bytecode pc 441
    this.m_btnClose.setOnClickCallBack(this.onCloseClick.bind(this));
    // source line 46, bytecode pc 479
    this.m_btnConfrm.setOnClickCallBack(this.onCloseClick.bind(this));
    // source line 48, bytecode pc 481
    return true;
},
    onCloseClick: function() {
    // source line 53, bytecode pc 37
    xs.Utils.Notify.postNotification(xs.Constant_Notify_QuickClimbLandderEnd);
    // source line 54, bytecode pc 64
    xs.Views.Mgr.hideDialog();
},
    setBaseTouchPriority: function(priority) {
    // source line 58, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 59, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 60, bytecode pc 56
    this.m_btnClose.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 61, bytecode pc 83
    this.m_btnConfrm.setTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 66, bytecode pc 353
(xs.Views.Dialog.ClimbLaddersFailDialog.create = function(fightInfo) {
    var ret;
    // source line 67, bytecode pc 28
    (ret = new xs.Views.Dialog.ClimbLaddersFailDialog());
    if ((ret && ret.init(fightInfo))) {
        // source line 69, bytecode pc 64
        return ret;
    }
    // source line 71, bytecode pc 66
    return null;
});
// source line 76, bytecode pc 433
xs.Views.Mgr.registerDialog("ClimbLaddersFailDialog", { "class": xs.Views.Dialog.ClimbLaddersFailDialog, styleType: xs.Constant_DlgStyleType_Large });
