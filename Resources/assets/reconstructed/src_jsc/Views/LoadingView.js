// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/LoadingView.js:1
// source line 128, bytecode pc 128
(xs.Views.LoadingView = xs.Views.HungerLayer.extend({
    name: "xs.Views.LoadingView",
    ctor: function() {
    // source line 15, bytecode pc 12
    this._super();
    // source line 16, bytecode pc 47
    cc.associateWithNative(this, xs.Views.HungerLayer);
},
    init: function() {
    var visibleSize, visibleOrigin;
    if (!this._super()) {
        // source line 20, bytecode pc 19
        return false;
    }
    // source line 23, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 25, bytecode pc 42
    this.setIsEatEvent(true);
    // source line 27, bytecode pc 67
    (visibleSize = xs.director.getVisibleSize());
    // source line 28, bytecode pc 92
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 30, bytecode pc 121
    xs.Tools.UI.addTransparentBg(this);
    // source line 32, bytecode pc 165
    (this.m_loadArm = xs.Views.Armature.AutoAudioArmature.create("Arm_Loading"));
    // source line 33, bytecode pc 251
    xs.Utils.Node.attachNodes(this, this.m_loadArm, { desc: "rb", sc: true, offset: { x: -222, y: 0 } });
    // source line 35, bytecode pc 271
    this.m_loadArm.setVisible(false);
    // source line 39, bytecode pc 273
    return true;
},
    onEnter: function() {
    // source line 44, bytecode pc 12
    this._super();
},
    play: function() {
    // source line 50, bytecode pc 23
    this.m_loadArm.playAniById("loading");
},
    playLoadingStartActions: function() {
    var beginAct, loadAct, actions;
    // source line 56, bytecode pc 26
    (beginAct = this.m_loadArm.createPlayAction("begin"));
    // source line 57, bytecode pc 72
    (loadAct = this.m_loadArm.createPlayAction("loading", { speed: 1, loop: true }));
    // source line 59, bytecode pc 92
    this.m_loadArm.setVisible(false);
    // source line 71, bytecode pc 142
    (actions = xs.Utils.Action.combineSequence([ beginAct, loadAct ]));
    // source line 74, bytecode pc 184
    xs.Scene.Mgr.getRunningScene().runAction(actions);
},
    dismissSelf: function() {
    var endAct, actions;
    try {
        // source line 85, bytecode pc 46
        (endAct = this.m_loadArm.createPlayAction("end", { speed: 1, loop: false }));
        // source line 114, bytecode pc 133
        (actions = xs.Utils.Action.combineSequence([
    endAct,
    cc.CallFunc.create(function() {
    var scene, loadingLayer;
    // source line 100, bytecode pc 29
    (scene = xs.Scene.Mgr.getRunningScene());
    if ((scene === null)) {
        // source line 102, bytecode pc 62
        xs.warn("dismissSelf scene is null!");
        // source line 103, bytecode pc 64
        return void 0;
    }
    // source line 105, bytecode pc 113
    (loadingLayer = scene.getChildByTag(xs.Cfg.Scene.CommonScene.Loading.tag));
    if (loadingLayer) {
        // source line 108, bytecode pc 138
        loadingLayer.setVisible(false);
    }
}.bind(this))
]));
        // source line 120, bytecode pc 175
        xs.Scene.Mgr.getRunningScene().runAction(actions);
    } catch (e) {
        // source line 123, bytecode pc 211
        xs.warnException(e);
        /* TODO_BYTECODE pc=212 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 129, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 130, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
}
}));
// source line 134, bytecode pc 154
(xs.Views.LoadingView.create = function() {
    var layer;
    // source line 135, bytecode pc 23
    (layer = new xs.Views.LoadingView());
    if ((layer && layer.init())) {
        // source line 137, bytecode pc 55
        return layer;
    }
    // source line 139, bytecode pc 57
    return null;
});
