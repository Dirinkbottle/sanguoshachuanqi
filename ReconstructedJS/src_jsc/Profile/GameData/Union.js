// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/GameData/Union.js:1
// source line 21, bytecode pc 88
(xs.Profile.GameData.Union = xs.Profile.GameData.Base.extend({
    name: "xs.Profile.GameData.Union",
    init: function(param) {
    // source line 16, bytecode pc 16
    this._super(param);
    // source line 17, bytecode pc 18
    return true;
},
    getUnion: function() {
    var _ret;
    // source line 22, bytecode pc 31
    (_ret = this.dataRef.getDataByNameType(xs.Constant_GameData_Union));
    // source line 23, bytecode pc 35
    return _ret;
}
}));
// source line 29, bytecode pc 119
(xs.Profile.GameData.Union.create = function(param) {
    var _str, _cls_name, obj;
    // source line 30, bytecode pc 11
    (_str = param.play_id);
    // source line 31, bytecode pc 35
    (_cls_name = xs.Profile.GameData.Union);
    // source line 32, bytecode pc 85
    (xs.Utils.isSet(_cls_name._instance) || (_cls_name._instance = []));
    if (_cls_name._instance[_str]) {
        // source line 35, bytecode pc 115
        return _cls_name._instance[_str];
    }
    // source line 38, bytecode pc 127
    (obj = new _cls_name());
    if ((obj && obj.init(param))) {
        // source line 40, bytecode pc 175
        (_cls_name._instance[_str] = obj);
        // source line 41, bytecode pc 179
        return obj;
    }
    // source line 43, bytecode pc 202
    xs.error("xs.Profile.GameData.Union.create failed");
    // source line 44, bytecode pc 204
    return null;
});
