// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Union/UnionBaseLayer.js:1
// source line 30, bytecode pc 108
(xs.Views.Union.UnionBaseLayer = cc.Layer.extend({
    name: "xs.Libs.Views.BaseLayer",
    ctor: function() {
    // source line 9, bytecode pc 12
    this._super();
    // source line 10, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    if (!this._super()) {
        // source line 15, bytecode pc 19
        return false;
    }
    // source line 18, bytecode pc 27
    (this.isNeedRefresh = false);
    // source line 19, bytecode pc 29
    return true;
},
    setIsNeedRefresh: function(isNeedRefresh) {
    // source line 23, bytecode pc 9
    (this.isNeedRefresh = isNeedRefresh);
},
    getIsNeedRefresh: function() {
    // source line 27, bytecode pc 6
    return this.isNeedRefresh;
},
    refreshFromMenuClick: function() {
    // source line 31, bytecode pc 22
    xs.log("refreshFromMenuClick in baseLayer");
    if (this.isNeedRefresh) {
        // source line 33, bytecode pc 41
        (this.isNeedRefresh = false);
    }
}
}));
