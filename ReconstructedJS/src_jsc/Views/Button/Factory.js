// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Button/Factory.js:1
// source line 11, bytecode pc 81
(xs.Libs.Views.Button.Factory.extend = (xs.Libs.Views.Button.Factory.extend || cc.Class.extend));
// source line 86, bytecode pc 235
(xs.Views.Button.Factory = (xs.Views.Button.Factory || {
    Audio: {
        _call: function(funcName, params) {
    var _ret;
    // source line 25, bytecode pc 73
    (_ret = xs.Libs.Views.Button.Factory[funcName].apply(xs.Libs.Views.Button.Factory, params));
    // source line 32, bytecode pc 77
    return _ret;
},
        _add_cb: function(ret, btnId) {
    var _cfg;
    // source line 37, bytecode pc 43
    (_cfg = xs.Libs.Views.Button.Factory.getCfg(btnId));
    // source line 38, bytecode pc 120
    ret.addOnClickCallBack(xs.Tools.Audio.effect_btnOnClickCallFunc.bind({ audioId: _cfg.audioId, name: "111" }));
},
        create: function(btnId) {
    var _ret, arguments;
    // source line 41, bytecode pc 4
    (arguments = arguments);
    // source line 42, bytecode pc 30
    (_ret = this._call("create", arguments));
    // source line 43, bytecode pc 51
    this._add_cb(_ret, btnId);
    // source line 45, bytecode pc 55
    return _ret;
},
        createWithString: function(btnId, string) {
    var _ret, arguments;
    // source line 49, bytecode pc 4
    (arguments = arguments);
    // source line 51, bytecode pc 30
    (_ret = this._call("createWithString", arguments));
    // source line 52, bytecode pc 51
    this._add_cb(_ret, btnId);
    // source line 54, bytecode pc 55
    return _ret;
},
        createWithStringId: function(btnId) {
    var _ret, arguments;
    // source line 57, bytecode pc 4
    (arguments = arguments);
    // source line 58, bytecode pc 30
    (_ret = this._call("createWithStringId", arguments));
    // source line 59, bytecode pc 51
    this._add_cb(_ret, btnId);
    // source line 61, bytecode pc 55
    return _ret;
},
        createByStyleId: function(styleId, string, typeAudio) {
    var _ret, _typeAudio, arguments;
    // source line 64, bytecode pc 4
    (arguments = arguments);
    // source line 65, bytecode pc 30
    (_ret = this._call("createByStyleId", arguments));
    // source line 67, bytecode pc 37
    (_typeAudio = typeAudio);
    if (((typeAudio === null) || (typeAudio === undefined))) {
        // source line 70, bytecode pc 69
        (_typeAudio = typeAudio);
    }
    // source line 73, bytecode pc 141
    _ret.addOnClickCallBack(xs.Tools.Audio.effect_btnOnClickCallFunc.bind({ audioId: _typeAudio, name: "2222" }));
    // source line 75, bytecode pc 145
    return _ret;
},
        createInvisibleWithParent: function() {
    var arguments;
    // source line 78, bytecode pc 4
    (arguments = arguments);
    // source line 79, bytecode pc 27
    return this._call("createInvisibleWithParent", arguments);
},
        createInvisibleWithChild: function() {
    var arguments;
    // source line 82, bytecode pc 4
    (arguments = arguments);
    // source line 83, bytecode pc 27
    return this._call("createInvisibleWithChild", arguments);
},
        createInvisible: function(size) {
    var arguments;
    // source line 86, bytecode pc 4
    (arguments = arguments);
    // source line 87, bytecode pc 27
    return this._call("createInvisible", arguments);
}
    }
}));
