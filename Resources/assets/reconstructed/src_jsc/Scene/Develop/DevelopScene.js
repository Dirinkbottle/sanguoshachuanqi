// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Develop/DevelopScene.js:1
// source line 36, bytecode pc 73
(xs.Scene.DevelopScene_Layer = cc.Layer.extend({
    ctor: function() {
    // source line 8, bytecode pc 12
    this._super();
    // source line 9, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(generalInfo) {
    var playerInfo;
    // source line 13, bytecode pc 42
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    // source line 14, bytecode pc 61
    this.setContentSize(visibleSize);
    // source line 17, bytecode pc 101
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_Develop);
    // source line 20, bytecode pc 131
    (playerInfo = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 21, bytecode pc 167
    playerInfo.setAnchorPoint(cc.p(0, 1));
    // source line 22, bytecode pc 223
    xs.Utils.Node.attachNodes(this, playerInfo, { desc: "lt", sc: true });
    // source line 26, bytecode pc 319
    (this.pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), (visibleSize.height - 50))));
    // source line 27, bytecode pc 356
    (this.alchemyView = xs.Views.AlchemyView.create(generalInfo));
    // source line 28, bytecode pc 414
    this.pageView.addPage(xs.Tools.String.createString("alchemy"), this.alchemyView);
    // source line 29, bytecode pc 473
    xs.Utils.Node.attachNodes(this, this.pageView, { desc: "lb", sc: true });
    // source line 32, bytecode pc 510
    (this.sideMenu = xs.Tools.UI.addShortcutBoard(this, true));
    // source line 34, bytecode pc 512
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 37, bytecode pc 12
    this._super();
    // source line 39, bytecode pc 54
    xs.Guide.GuideMgr.endStepBySequence([ "140105" ]);
}
}));
// source line 44, bytecode pc 99
(xs.Scene.DevelopScene_Layer.create = function(generalInfo) {
    var ret;
    // source line 45, bytecode pc 23
    (ret = new xs.Scene.DevelopScene_Layer());
    if ((ret && ret.init(generalInfo))) {
        // source line 47, bytecode pc 59
        return ret;
    }
    // source line 49, bytecode pc 61
    return null;
});
// source line 60, bytecode pc 163
(xs.Scene.DevelopScene = cc.Scene.extend({
    ctor: function() {
    // source line 56, bytecode pc 12
    this._super();
    // source line 57, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(generalInfo) {
    var layer;
    // source line 61, bytecode pc 33
    (layer = xs.Scene.DevelopScene_Layer.create(generalInfo));
    // source line 62, bytecode pc 50
    this.addChild(layer);
    // source line 64, bytecode pc 52
    return true;
}
}));
// source line 68, bytecode pc 189
(xs.Scene.DevelopScene.create = function(generalInfo) {
    var ret;
    // source line 69, bytecode pc 23
    (ret = new xs.Scene.DevelopScene());
    if ((ret && ret.init(generalInfo))) {
        // source line 71, bytecode pc 59
        return ret;
    }
    // source line 73, bytecode pc 61
    return null;
});
// source line 84, bytecode pc 304
xs.Scene.Mgr.registerScene("DevelopScene", {
    "class": xs.Scene.DevelopScene,
    area: [ "LianDanScene01" ],
    type: xs.Constant_SceneType_General,
    audio: { bgId: "Audio_BG_Develop" }
});
