// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/ActivitiesShow.js:1
// source line 104, bytecode pc 143
(xs.Views.ActivitiesShow = cc.Node.extend({
    name: "xs.Views.ActivitiesShow",
    ctor: function() {
    // source line 13, bytecode pc 12
    this._super();
    // source line 14, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    _getCurSpriteName: function() {
    // source line 19, bytecode pc 5
    return "MainMenuScene01_ad";
},
    _getCurSpriteName_idx: function() {
    // source line 22, bytecode pc 13
    return this.ads[this.m_idx];
},
    init: function(params) {
    if (!this._super()) {
        // source line 32, bytecode pc 19
        return false;
    }
    // source line 34, bytecode pc 27
    (this.bgSp = null);
    // source line 35, bytecode pc 35
    (this.bgBtn = null);
    // source line 36, bytecode pc 43
    (this.mFloat = 0);
    // source line 37, bytecode pc 51
    (this.isAction = true);
    // source line 39, bytecode pc 59
    (this.m_idx = 0);
    // source line 40, bytecode pc 80
    (this.ads = [ "A001" ]);
    // source line 41, bytecode pc 115
    (this.ads = (params.ads || [ "A001" ]));
    // source line 42, bytecode pc 164
    (this.ads = xs.Profile.GameData.AdInfo.getInstance().getActivitiesShowList());
    if (!this.ads[0]) {
        // source line 44, bytecode pc 199
        (this.ads = [ "A001" ]);
        // source line 45, bytecode pc 207
        (this.isAction = false);
    }
    // source line 50, bytecode pc 274
    (this.bgSp = xs.Factorys.Sprite.create(this._getCurSpriteName(), "MainMenuScene01", [ "01" ]));
    // source line 53, bytecode pc 314
    xs.Utils.Node.attachNodes(this, this.bgSp, null, null);
    // source line 55, bytecode pc 354
    (this.bgBtn = xs.Views.Btn.createInvisibleWithParent(this.bgSp));
    // source line 56, bytecode pc 381
    this.bgBtn.addCallBackForEvent(this, this.btnCallBack);
    // source line 58, bytecode pc 383
    return true;
},
    btnCallBack: function() {
    // source line 62, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 63, bytecode pc 59
    xs.Scene.Mgr.changeSceneByName("PartyMenuScene");
},
    onEnterTransitionDidFinish: function() {
    // source line 68, bytecode pc 12
    this._super();
    if (this.isAction) {
        // source line 70, bytecode pc 36
        this.scheduleUpdate();
    }
},
    onExitTransitionDidStart: function() {
    // source line 76, bytecode pc 12
    this._super();
    // source line 77, bytecode pc 25
    this.unscheduleUpdate();
},
    update: function(dt) {
    var spriteFrame;
    // source line 87, bytecode pc 16
    (this.mFloat = (this.mFloat + dt));
    if ((this.mFloat > 5)) {
        // source line 89, bytecode pc 38
        (this.mFloat = 0);
        // source line 91, bytecode pc 53
        (this.m_idx = (this.m_idx + 1));
        if ((this.m_idx >= this.ads.length)) {
            // source line 94, bytecode pc 84
            (this.m_idx = 0);
        }
        // source line 98, bytecode pc 148
        (spriteFrame = xs.Factorys.Sprite.getSpriteFrame(this._getCurSpriteName(), "MainMenuScene01", [ "01" ]));
        // source line 100, bytecode pc 170
        this.bgSp.setDisplayFrame(spriteFrame);
    }
},
    getSize: function() {
    // source line 105, bytecode pc 17
    return this.bgSp.getContentSize();
}
}));
// source line 109, bytecode pc 169
(xs.Views.ActivitiesShow.create = function(params) {
    var ret;
    // source line 110, bytecode pc 23
    (ret = new xs.Views.ActivitiesShow());
    if ((ret && ret.init(params))) {
        // source line 112, bytecode pc 59
        return ret;
    }
    // source line 115, bytecode pc 84
    xs.assert(false, "xs.Views.ActivitiesShow.create err");
    // source line 116, bytecode pc 86
    return null;
});
