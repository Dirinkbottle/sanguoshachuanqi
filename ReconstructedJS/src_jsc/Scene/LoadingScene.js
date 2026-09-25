// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/LoadingScene.js:1
// source line 43, bytecode pc 145
(xs.Scene.LoadingScene = cc.Scene.extend({
    obj: null,
    model: { param: {} },
    view: { dst: null },
    control: { step0: 0 },
    ctor: function() {
    // source line 26, bytecode pc 12
    this._super();
    // source line 27, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(inputParam) {
    // source line 31, bytecode pc 14
    (this.model.param = inputParam);
},
    onEnter: function() {
    // source line 35, bytecode pc 12
    this._super();
    // source line 38, bytecode pc 39
    xs.Views.Mgr.displayLoadingLayer();
    // source line 40, bytecode pc 52
    this.scheduleUpdate();
},
    update: function(fDelta) {
    var _funcName;
    // source line 45, bytecode pc 34
    xs.log("this.control.step0", this.control.step0);
    if ((this.control.step0 === 0)) {
        // source line 52, bytecode pc 124
        (this.view.dst = xs.Scene.Mgr.createSceneByName(this.model.param.dstName, this.model.param.dstParam));
        // source line 54, bytecode pc 147
        this.view.dst.retain();
        // source line 56, bytecode pc 182
        xs.log("this.view.dst", this.view.dst);
    }
    if ((this.control.step0 < this.model.param.loadFuncs.length)) {
        // source line 61, bytecode pc 252
        (_funcName = this.model.param.loadFuncs[this.control.step0]);
        // source line 63, bytecode pc 279
        xs.log("_funcName", _funcName);
        // source line 64, bytecode pc 318
        this.view.dst[_funcName].apply(this.view.dst);
        // source line 66, bytecode pc 350
        this.control.step0++;
    } else {
        if ((this.control.step0 === this.model.param.loadFuncs.length)) {
            // source line 73, bytecode pc 420
            xs.Views.Mgr.dismissLoadingLayer();
            // source line 74, bytecode pc 433
            (this.control.step0 = 0);
            // source line 75, bytecode pc 446
            this.unscheduleUpdate();
            // source line 77, bytecode pc 490
            xs.Scene.Mgr.private.changeScene(this.view.dst);
            // source line 78, bytecode pc 513
            this.view.dst.release();
        } else {
            // source line 81, bytecode pc 549
            xs.assert(false, this.control.step0);
        }
    }
}
}));
// source line 87, bytecode pc 171
(xs.Scene.LoadingScene.create = function(obj) {
    var _ret;
    // source line 89, bytecode pc 23
    (_ret = new xs.Scene.LoadingScene());
    // source line 90, bytecode pc 42
    _ret.init(obj);
    // source line 91, bytecode pc 46
    return _ret;
});
// source line 109, bytecode pc 268
xs.Scene.Mgr.registerScene("LoadingScene", { "class": xs.Scene.LoadingScene, preLoad: {}, audio: {}, type: xs.Constant_SceneType_Cmn });
