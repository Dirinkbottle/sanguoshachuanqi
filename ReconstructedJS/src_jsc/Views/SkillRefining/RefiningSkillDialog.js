// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/SkillRefining/RefiningSkillDialog.js:1
// source line 63, bytecode pc 98
(xs.Views.RefiningSkillDialog = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 7, bytecode pc 12
    this._super();
    // source line 8, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    if (!this._super()) {
        // source line 13, bytecode pc 19
        return false;
    }
    // source line 16, bytecode pc 50
    (this.m_defaultSize = cc.size(870, 606));
    // source line 18, bytecode pc 109
    (this.m_bg = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.popView_bg02.frameName));
    // source line 19, bytecode pc 138
    this.m_bg.setAnchorPoint(xs.ap_c);
    // source line 20, bytecode pc 163
    this.m_bg.setContentSize(this.m_defaultSize);
    // source line 22, bytecode pc 222
    (this.m_bgCon = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.popView_contentBg02.frameName));
    // source line 23, bytecode pc 251
    this.m_bgCon.setAnchorPoint(xs.ap_c);
    // source line 24, bytecode pc 308
    this.m_bgCon.setContentSize(cc.size(845, (this.m_defaultSize.height * 0.85)));
    // source line 26, bytecode pc 367
    xs.Utils.Node.attachNodes(this, this.m_bg, { desc: "c", sc: true });
    // source line 27, bytecode pc 453
    xs.Utils.Node.attachNodes(this.m_bg, this.m_bgCon, { desc: "c", offset: { x: -0, y: -30 } });
    // source line 29, bytecode pc 498
    (this.m_headLabel = xs.Factorys.Label.createByStyleIdWithStringId("LS_huodong_title", "SelectSkill"));
    // source line 31, bytecode pc 580
    xs.Utils.Node.attachNodes(this.m_bg, this.m_headLabel, { desc: "ct", offset: { x: 0, y: -30 } });
    // source line 33, bytecode pc 619
    (this.m_closeBtn = xs.Views.Btn.createByStyleId("BS_Close"));
    // source line 34, bytecode pc 702
    xs.Utils.Node.attachNodes(this.m_bg, this.m_closeBtn, { desc: "rt", offset: { x: -40, y: -38 } });
    // source line 37, bytecode pc 739
    this.m_closeBtn.setOnClickCallBack(function() {
    // source line 36, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this));
    // source line 41, bytecode pc 777
    (this.m_RefiningSkillTableView = xs.Views.Table.RefiningSkillTableView.create());
    // source line 46, bytecode pc 866
    xs.Utils.Node.attachNodes(this.m_bg, this.m_RefiningSkillTableView, { desc: "lb", sc: true, offset: { x: 15, y: 35 } });
    // source line 49, bytecode pc 886
    this.m_RefiningSkillTableView.setVisible(true);
    // source line 50, bytecode pc 906
    this.m_RefiningSkillTableView.setKeepOldOffsetFlag(true);
    // source line 55, bytecode pc 908
    return true;
},
    onEnter: function() {
    // source line 58, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 61, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 64, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 65, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 66, bytecode pc 56
    this.m_RefiningSkillTableView.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 67, bytecode pc 83
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 70, bytecode pc 124
(xs.Views.RefiningSkillDialog.create = function() {
    var retObj;
    // source line 71, bytecode pc 23
    (retObj = new xs.Views.RefiningSkillDialog());
    if ((retObj && retObj.init())) {
        // source line 73, bytecode pc 55
        return retObj;
    }
    // source line 75, bytecode pc 57
    return null;
});
// source line 80, bytecode pc 199
xs.Views.Mgr.registerDialog("RefiningSkillDialog", { "class": xs.Views.RefiningSkillDialog, styleType: xs.Constant_DlgStyleType_Large });
