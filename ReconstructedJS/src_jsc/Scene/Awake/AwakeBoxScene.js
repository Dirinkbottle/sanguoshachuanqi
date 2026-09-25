// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Awake/AwakeBoxScene.js:1
// source line 88, bytecode pc 83
(xs.Scene.AwakeBoxScene = cc.Scene.extend({
    ctor: function() {
    // source line 11, bytecode pc 12
    this._super();
    // source line 12, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(params) {
    var visibleSize;
    // source line 17, bytecode pc 9
    (this.params = params);
    // source line 20, bytecode pc 45
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    // source line 22, bytecode pc 85
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_AwakeBox);
    // source line 25, bytecode pc 118
    (this.playerInfo = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 26, bytecode pc 157
    this.playerInfo.setAnchorPoint(cc.p(0, 1));
    // source line 27, bytecode pc 216
    xs.Utils.Node.attachNodes(this, this.playerInfo, { desc: "lt", sc: true });
    // source line 30, bytecode pc 256
    this.playerInfo.setEffectMap(xs.Constant_NodeEffectEvent_Disappear, xs.Constant_NodeEffectType_MoveOut);
    // source line 35, bytecode pc 348
    (this.pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), (visibleSize.height - 50))));
    // source line 38, bytecode pc 388
    this.pageView.setEffectMap(xs.Constant_NodeEffectEvent_Disappear, xs.Constant_NodeEffectType_Hide);
    // source line 43, bytecode pc 468
    this.pageView.addPageWhitConstruct(xs.Factorys.String.create("AwakeBoxPageTitle"), xs.Views.AwakeBoxView, { listener: this });
    // source line 46, bytecode pc 527
    xs.Utils.Node.attachNodes(this, this.pageView, { desc: "lb", sc: true });
    // source line 50, bytecode pc 564
    (this.sideMenu = xs.Tools.UI.addShortcutBoard(this, true));
    // source line 53, bytecode pc 604
    this.sideMenu.setEffectMap(xs.Constant_NodeEffectEvent_Disappear, xs.Constant_NodeEffectType_MoveOut);
    // source line 56, bytecode pc 606
    return true;
},
    showOpenBoxResult: function(type, param) {
    var data;
    if ((type == 1)) {
        // source line 62, bytecode pc 46
        (this.boxResultView = xs.Views.AwakeBoxResultView.create(param));
    } else {
        // source line 64, bytecode pc 88
        (this.boxResultView = xs.Views.AwakeBoxResultView_Ten.create(param));
    }
    // source line 68, bytecode pc 108
    this.boxResultView.setListener(this);
    // source line 69, bytecode pc 126
    this.boxResultView.retain();
    // source line 73, bytecode pc 136
    (data = {});
    // source line 74, bytecode pc 169
    (data.rect = cc.rect(0, 0, 0, 0));
    // source line 75, bytecode pc 179
    (data.delay = 0);
    // source line 76, bytecode pc 189
    (data.isClickHand = false);
    // source line 77, bytecode pc 222
    xs.Views.Mgr.showHollowOutLayer(data, this);
    // source line 84, bytecode pc 265
    this.runEffectAction(xs.Constant_NodeEffectEvent_Disappear, function() {
    // source line 81, bytecode pc 28
    xs.Views.Mgr.hideHollowOutLayer(this);
    // source line 82, bytecode pc 48
    this.addChild(this.boxResultView);
    // source line 83, bytecode pc 66
    this.boxResultView.release();
}.bind(this));
},
    backFromOpenBoxResult: function() {
    var data, _modelMap;
    // source line 90, bytecode pc 9
    (data = {});
    // source line 91, bytecode pc 42
    (data.rect = cc.rect(0, 0, 0, 0));
    // source line 92, bytecode pc 52
    (data.delay = 0);
    // source line 93, bytecode pc 62
    (data.isClickHand = false);
    // source line 94, bytecode pc 95
    xs.Views.Mgr.showHollowOutLayer(data, this);
    // source line 98, bytecode pc 138
    this.runEffectAction(xs.Constant_NodeEffectEvent_Revert, function() {
    // source line 97, bytecode pc 28
    xs.Views.Mgr.hideHollowOutLayer(this);
}.bind(this));
    // source line 101, bytecode pc 174
    (_modelMap = xs.Scene.Mgr.loadStatusAndClear("Toast_RandEvent"));
    if (_modelMap) {
        // source line 103, bytecode pc 219
        xs.Views.Mgr.showDialogByName("RandEvent", _modelMap);
    }
}
}));
// source line 115, bytecode pc 109
(xs.Scene.AwakeBoxScene.create = function(params) {
    var ret;
    // source line 116, bytecode pc 23
    (ret = new xs.Scene.AwakeBoxScene());
    if ((ret && ret.init(params))) {
        // source line 118, bytecode pc 82
        xs.Views.Mgr.dismissLoadingLayer();
        // source line 119, bytecode pc 86
        return ret;
    }
    // source line 122, bytecode pc 88
    return null;
});
// source line 130, bytecode pc 221
xs.Scene.Mgr.registerScene("AwakeBoxScene", {
    "class": xs.Scene.AwakeBoxScene,
    area: [ "DuiJiuScene01", "SellTag", "SecretShop" ],
    type: xs.Constant_SceneType_Cmn
});
