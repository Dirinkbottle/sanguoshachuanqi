// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/NewPlayer/NewPlayerScene.js:1
// source line 129, bytecode pc 129
(xs.Scene.NewPlayerLayer = (xs.Scene.NewPlayerLayer || xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 19, bytecode pc 12
    this._super();
    // source line 20, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(params) {
    var hideDialogSprite, _btnSkip, _arm;
    // source line 24, bytecode pc 24
    this.log("xs.Scene.NewPlayerLayer-init", "begin");
    if (!this._super()) {
        // source line 27, bytecode pc 44
        return false;
    }
    // source line 31, bytecode pc 86
    (hideDialogSprite = xs.Factorys.Sprite.create("Cmn03_skip_story", "Cmn03"));
    // source line 32, bytecode pc 120
    (_btnSkip = xs.Views.Btn.createInvisibleWithChild(hideDialogSprite));
    // source line 33, bytecode pc 146
    _btnSkip.setAnchorPoint(xs.ap_rt);
    // source line 34, bytecode pc 227
    xs.Utils.Node.attachNodes(this, _btnSkip, { sc: true, base: "rt", offset: { x: -10, y: -10 } });
    // source line 35, bytecode pc 244
    _btnSkip.setZOrder(1);
    // source line 36, bytecode pc 265
    _btnSkip.setTouchPriority(-9999);
    // source line 37, bytecode pc 282
    _btnSkip.setZoomOnTouchDown(false);
    // source line 45, bytecode pc 316
    _btnSkip.setOnClickCallBack(function() {
    // source line 40, bytecode pc 32
    xs.Tools.Scene.gotoNewPlayerFight(function() {
    // source line 41, bytecode pc 41
    xs.Guide.GuideMgr.endStepBySequence([ "00302" ]);
});
    // source line 44, bytecode pc 65
    xs.Guide.GuideMgr.setGuideStep("00302");
}.bind(this));
    // source line 47, bytecode pc 357
    (_arm = xs.Views.Armature.AutoAudioArmature.create("Arm_NewPlay"));
    // source line 48, bytecode pc 413
    xs.Utils.Node.attachNodes(this, _arm, { sc: true, base: "c" });
    // source line 49, bytecode pc 423
    (this.m_arm = _arm);
    // source line 51, bytecode pc 431
    (this.m_idx = 1);
    // source line 53, bytecode pc 444
    this._resume();
    if (params) {
        // source line 56, bytecode pc 467
        (this.funcNext = params.funcNext);
    }
    // source line 60, bytecode pc 492
    this.log("xs.Scene.NewPlayerLayer-init", "end");
    // source line 63, bytecode pc 494
    return true;
},
    layerTouched: function() {
    // source line 67, bytecode pc 12
    this._resume();
},
    _doStoryRound: function() {
    var _idx;
    try {
        // source line 72, bytecode pc 30
        (_idx = this.m_idx++);
        if ((_idx > 11)) {
            // source line 75, bytecode pc 43
            return false;
        }
        // source line 84, bytecode pc 153
        this.runAction(xs.Utils.Action.combineSequence([
    this._createRoundAction(_idx),
    cc.CallFunc.create(function() {
    // source line 83, bytecode pc 7
    (this.m_pause = true);
}.bind(this))
]));
    } catch (e) {
        // source line 91, bytecode pc 189
        xs.warnException(e);
        // source line 92, bytecode pc 191
        return false;
    }
    // source line 94, bytecode pc 206
    return true;
},
    _createRoundAction: function(idx) {
    // source line 108, bytecode pc 30
    xs.Tools.Statistic.event_forNewPlayerScene(idx);
    if ((idx === 11)) {
        // source line 118, bytecode pc 139
        return xs.Utils.Action.combineSequence([ this.m_arm.createPlayAction(("ani_play" + idx), null), cc.CallFunc.create(this.funcNext) ]);
    } else {
        // source line 124, bytecode pc 174
        return this.m_arm.createPlayAction(("ani_play" + idx), null);
    }
},
    _resume: function() {
    if (this._doStoryRound()) {
    }
}
})));
// source line 139, bytecode pc 155
(xs.Scene.NewPlayerLayer.create = function(params) {
    var layer;
    // source line 141, bytecode pc 23
    (layer = new xs.Scene.NewPlayerLayer());
    if ((layer && layer.init(params))) {
        // source line 143, bytecode pc 59
        return layer;
    }
    // source line 145, bytecode pc 82
    xs.warn("xs.Scene.GeneralSelectLayer.create error!");
    // source line 146, bytecode pc 84
    return null;
});
// source line 156, bytecode pc 219
(xs.Scene.NewPlayerScene = cc.Scene.extend({
    ctor: function() {
    // source line 153, bytecode pc 12
    this._super();
    // source line 154, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(params) {
    var layer;
    // source line 157, bytecode pc 28
    xs.log("2222", "222");
    if (!this._super()) {
        // source line 159, bytecode pc 48
        return false;
    }
    // source line 161, bytecode pc 82
    (layer = xs.Scene.NewPlayerLayer.create(params));
    // source line 162, bytecode pc 115
    xs.Utils.Node.attachNodes(this, layer);
    // source line 163, bytecode pc 117
    return true;
}
}));
// source line 167, bytecode pc 245
(xs.Scene.NewPlayerScene.create = function(params) {
    var scene;
    // source line 169, bytecode pc 28
    xs.log("111", "111");
    // source line 170, bytecode pc 52
    (scene = new xs.Scene.NewPlayerScene());
    if ((scene && scene.init(params))) {
        // source line 172, bytecode pc 88
        return scene;
    }
    // source line 174, bytecode pc 90
    return null;
});
// source line 183, bytecode pc 387
xs.Scene.Mgr.registerScene("NewPlayerScene", {
    "class": xs.Scene.NewPlayerScene,
    type: xs.Constant_SceneType_None,
    area: [ "NewPlayerScene0", "NewPlayerScene1", "NewPlayerScene2", "NewPlayerScene3" ],
    audio: { bgId: "Audio_BG_NewPlayer" }
});
