// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Core/Tools/String.js:1
// source line 25, bytecode pc 56
(xs.Core.Tools.String = {
    name: "xs.Core.Tools.String",
    _getCfg: function(key) {
    var _cfg;
    // source line 13, bytecode pc 8
    (_cfg = "");
    if ((xsc.Tools.ProductSys.getArea() == xsc.Const_Area_TW)) {
        // source line 15, bytecode pc 68
        (_cfg = xsc.CoreString_tw[key]);
    } else {
        // source line 17, bytecode pc 91
        (_cfg = xsc.CoreString[key]);
    }
    // source line 22, bytecode pc 95
    return _cfg;
},
    createString: function(key, langage) {
    var _cfg;
    // source line 27, bytecode pc 19
    (_cfg = this._getCfg(key));
    if (((_cfg === undefined) || (_cfg === null))) {
        // source line 30, bytecode pc 50
        return "";
    }
    // source line 33, bytecode pc 59
    return _cfg.format;
}
});
