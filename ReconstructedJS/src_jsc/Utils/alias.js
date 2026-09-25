// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Utils/alias.js:1
// source line 9, bytecode pc 47
(xs.director = (xs.director || cc.Director.getInstance()));
// source line 10, bytecode pc 95
(xs.eglview = (xs.eglview || cc.EGLView.getInstance()));
// source line 13, bytecode pc 132
(xs.unuse_this = (xs.unuse_this || xs.director));
// source line 16, bytecode pc 189
(xs.Utils.makeOriginal = (xs.Utils.makeOriginal || xs.Utils.Node.makeOriginal));
// source line 17, bytecode pc 246
(xs.Utils.makeDebugPoint = (xs.Utils.makeDebugPoint || xs.Utils.Node.makeDebugPoint));
// source line 20, bytecode pc 288
(xs.parseInt = (xs.parseInt || xs.Utils.parseIntSafe));
// source line 21, bytecode pc 330
(xs.parseFloat = (xs.parseFloat || xs.Utils.parseFloatSafe));
// source line 22, bytecode pc 372
(xs.parseString = (xs.parseString || xs.Utils.parseStringSafe));
// source line 23, bytecode pc 414
(xs.floor = (xs.floor || xs.Utils.floorSafe));
// source line 24, bytecode pc 456
(xs.round = (xs.round || xs.Utils.roundSafe));
// source line 25, bytecode pc 498
(xs.ceil = (xs.ceil || xs.Utils.ceilSafe));
// source line 28, bytecode pc 547
(xs.Class = cc.Class.extend({
    init: function() {
    // source line 29, bytecode pc 1
    return true;
}
}));
