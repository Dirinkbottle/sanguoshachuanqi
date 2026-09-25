// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/TeamIconButton_Buddy.js:1
// source line 22, bytecode pc 68
(xs.Views.TeamIconButton_Buddy = xs.Views.TeamIconButton.extend({
    init: function(playerId, playerData) {
    if (!this._super(playerId, playerData)) {
        // source line 10, bytecode pc 27
        return false;
    }
    // source line 13, bytecode pc 72
    (this.m_lockIconExt = xs.Factorys.Sprite.create("Cmn01_needZhaoLing", "Cmn01"));
    // source line 14, bytecode pc 113
    this.m_lockIconExt.setPosition(cc.p(50, 80));
    // source line 15, bytecode pc 134
    this.m_lockIconExt.setZOrder(3);
    // source line 16, bytecode pc 170
    xs.Utils.Node.attachNodes(this, this.m_lockIconExt);
    // source line 18, bytecode pc 206
    xs.Utils.Node.fastSetVisible(this.m_lockIcon, false);
    // source line 20, bytecode pc 208
    return true;
},
    updateView: function() {
    var pIconFrameName, _obj;
    // source line 24, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this.m_placeIcon);
    // source line 25, bytecode pc 41
    (this.m_placeIcon = null);
    // source line 27, bytecode pc 50
    (pIconFrameName = "icon_kongTouxiang");
    // source line 29, bytecode pc 93
    (this.m_placeIcon = xs.Factorys.Sprite.create(pIconFrameName, "Cmn01"));
    // source line 30, bytecode pc 134
    this.m_placeIcon.setPosition(cc.p(50, 80));
    // source line 31, bytecode pc 170
    xs.Utils.Node.attachNodes(this, this.m_placeIcon);
    // source line 33, bytecode pc 204
    xs.Utils.Node.safeRemoveChild(this.m_icon);
    // source line 34, bytecode pc 212
    (this.m_icon = null);
    if (this.b_isLocked) {
        // source line 37, bytecode pc 259
        xs.Utils.Node.fastSetVisible(this.m_lockIconExt, true);
    } else {
        // source line 39, bytecode pc 300
        xs.Utils.Node.fastSetVisible(this.m_lockIconExt, false);
    }
    if (this.m_data) {
        // source line 53, bytecode pc 357
        (_obj = { grade: true, lv: false, name: true, breach_lv: true, skill_type_lieutenant: true });
        // source line 56, bytecode pc 399
        (this.m_icon = xs.Views.Icon.IconStyleA.create(_obj));
        // source line 57, bytecode pc 424
        this.m_icon.reloadData(this.m_data);
        // source line 58, bytecode pc 460
        this.m_icon.setPosition(this.m_innerBtn.getPosition());
        // source line 59, bytecode pc 500
        xs.Utils.Node.attachNodes(this, this.m_icon, null, null);
    }
    if (this.b_equipEnabled) {
        if (!this.m_equipEnabledIcon) {
            // source line 66, bytecode pc 568
            (this.m_equipEnabledIcon = xs.Factorys.Sprite.create("icon_lt_joinEnabled", "Cmn02"));
            // source line 67, bytecode pc 607
            this.m_equipEnabledIcon.setAnchorPoint(cc.p(0, 1));
            // source line 68, bytecode pc 628
            this.m_equipEnabledIcon.setZOrder(10);
            // source line 70, bytecode pc 707
            xs.Utils.Node.attachNodes(this, this.m_equipEnabledIcon, { desc: "lt", offset: cc.p(0, 2) });
            // source line 73, bytecode pc 752
            (this.m_equipEnabledIconBtm = xs.Factorys.Sprite.create("icon_lt_equipEnabled_btm", "Cmn02"));
            // source line 74, bytecode pc 773
            this.m_equipEnabledIconBtm.setZOrder(-1);
            // source line 75, bytecode pc 793
            this.m_equipEnabledIconBtm.setOpacity(0);
            // source line 77, bytecode pc 872
            xs.Utils.Node.attachNodes(this, this.m_equipEnabledIconBtm, { desc: "c", offset: cc.p(0, 15) });
        }
        // source line 80, bytecode pc 890
        this.m_equipEnabledIconBtm.stopAllActions();
        // source line 81, bytecode pc 910
        this.m_equipEnabledIconBtm.setOpacity(0);
        // source line 85, bytecode pc 1020
        this.m_equipEnabledIconBtm.runAction(cc.RepeatForever.create(cc.Sequence.create(cc.FadeIn.create(1), cc.FadeOut.create(1))));
    } else {
        if (this.m_equipEnabledIcon) {
            // source line 90, bytecode pc 1054
            this.m_equipEnabledIcon.removeFromParent();
            // source line 91, bytecode pc 1062
            (this.m_equipEnabledIcon = null);
        }
        if (this.m_equipEnabledIconBtm) {
            // source line 94, bytecode pc 1091
            this.m_equipEnabledIconBtm.removeFromParent();
            // source line 95, bytecode pc 1099
            (this.m_equipEnabledIconBtm = null);
        }
    }
}
}));
// source line 101, bytecode pc 94
(xs.Views.TeamIconButton_Buddy.create = function(playerId, playerData) {
    var btn;
    // source line 102, bytecode pc 23
    (btn = new xs.Views.TeamIconButton_Buddy());
    if ((btn && btn.init(playerId, playerData))) {
        // source line 104, bytecode pc 63
        return btn;
    }
    // source line 106, bytecode pc 86
    xs.warn("xs.Views.TeamIconButton_Buddy.create error!");
    // source line 107, bytecode pc 88
    return null;
});
