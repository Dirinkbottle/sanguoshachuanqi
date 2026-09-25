// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/DecisiveBattle/DecisiveBattlePreviewScene.js:1
// source line 28, bytecode pc 93
(xs.Scene.DecisiveBattlePreviewScene = cc.Scene.extend({
    name: "xs.Scene.DecisiveBattlePreviewScene",
    ctor: function() {
    // source line 7, bytecode pc 12
    this._super();
    // source line 8, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(data) {
    var layer;
    if (!this._super()) {
        // source line 12, bytecode pc 19
        return false;
    }
    // source line 16, bytecode pc 59
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_InterServiceFight);
    // source line 19, bytecode pc 93
    (layer = xs.Views.DecisiveBattlePreviewView.create(data));
    // source line 20, bytecode pc 111
    layer.setBaseTouchPriority(-1);
    // source line 21, bytecode pc 167
    xs.Utils.Node.attachNodes(this, layer, { desc: "lb", sc: true });
    // source line 23, bytecode pc 169
    return true;
},
    onEnter: function() {
    // source line 26, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 29, bytecode pc 12
    this._super();
}
}));
// source line 32, bytecode pc 119
(xs.Scene.DecisiveBattlePreviewScene.create = function(data) {
    var sc;
    // source line 34, bytecode pc 23
    (sc = new xs.Scene.DecisiveBattlePreviewScene());
    if ((sc && sc.init(data))) {
        // source line 36, bytecode pc 59
        return sc;
    }
    // source line 38, bytecode pc 84
    xs.assert(false, "xs.Scene.DecisiveBattlePreviewScene.create error!");
    // source line 39, bytecode pc 86
    return null;
});
// source line 44, bytecode pc 194
xs.Scene.Mgr.registerScene("DecisiveBattlePreviewScene", { "class": xs.Scene.DecisiveBattlePreviewScene, type: xs.Constant_SceneType_Challenge });
