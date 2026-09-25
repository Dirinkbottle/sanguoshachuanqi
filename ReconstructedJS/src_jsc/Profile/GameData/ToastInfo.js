// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/GameData/ToastInfo.js:1
// source line 26, bytecode pc 118
(xs.Profile.GameData.ToastInfo = xs.Profile.GameData.Base.extend({
    name: "xs.Profile.GameData.ToastInfo",
    dump: xs.Debug.emptyFunc,
    init: function(param) {
    // source line 12, bytecode pc 16
    this._super(param);
    // source line 13, bytecode pc 18
    return true;
},
    update: function(json_data) {
    var wine_info;
    // source line 17, bytecode pc 6
    (wine_info = json_data);
    if (!this.toastInfo) {
        // source line 20, bytecode pc 55
        (this.toastInfo = xs.Models.Toast.create(wine_info));
    } else {
        // source line 22, bytecode pc 82
        this.toastInfo.update(wine_info);
    }
},
    getToastInfo: function() {
    if (this.toastInfo) {
        // source line 28, bytecode pc 17
        return this.toastInfo;
    }
    // source line 30, bytecode pc 19
    return null;
}
}));
// source line 34, bytecode pc 149
(xs.Profile.GameData.ToastInfo.create = function(param) {
    var _str, _cls_name, obj;
    // source line 35, bytecode pc 11
    (_str = param.play_id);
    // source line 36, bytecode pc 35
    (_cls_name = xs.Profile.GameData.ToastInfo);
    // source line 37, bytecode pc 85
    (xs.Utils.isSet(_cls_name._instance) || (_cls_name._instance = []));
    if (_cls_name._instance[_str]) {
        // source line 40, bytecode pc 115
        return _cls_name._instance[_str];
    }
    // source line 43, bytecode pc 127
    (obj = new _cls_name());
    if ((obj && obj.init(param))) {
        // source line 45, bytecode pc 175
        (_cls_name._instance[_str] = obj);
        // source line 46, bytecode pc 179
        return obj;
    }
    // source line 48, bytecode pc 202
    xs.error("xs.Profile.GameData.ToastInfo.create failed");
    // source line 49, bytecode pc 204
    return null;
});
