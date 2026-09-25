// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/GameData/Player.js:1
// source line 22, bytecode pc 98
(xs.Profile.GameData.Player = xs.Profile.GameData.Base.extend({
    name: "xs.Profile.GameData.Player",
    init: function(param) {
    // source line 12, bytecode pc 16
    this._super(param);
    // source line 13, bytecode pc 18
    return true;
},
    getPlayer: function() {
    var _ret;
    // source line 18, bytecode pc 31
    (_ret = this.dataRef.getDataByNameType(xs.Constant_GameData_Player));
    // source line 19, bytecode pc 35
    return _ret;
},
    getPlayerOnlineTime: function() {
    var _data;
    // source line 23, bytecode pc 35
    (_data = xs.Utils.LocalStore.getItem("anti-addiction"));
    if ((_data == "")) {
        // source line 25, bytecode pc 51
        return 0;
    } else {
        // source line 27, bytecode pc 65
        return _data.onlineTime;
    }
}
}));
// source line 34, bytecode pc 125
(xs.Profile.GameData.Player.g_serverId = 0);
// source line 35, bytecode pc 156
(xs.Profile.GameData.Player.g_serverURL = "");
// source line 37, bytecode pc 187
(xs.Profile.GameData.Player.create = function(param) {
    var _str, _cls_name, obj;
    // source line 38, bytecode pc 11
    (_str = param.play_id);
    // source line 39, bytecode pc 35
    (_cls_name = xs.Profile.GameData.Player);
    // source line 40, bytecode pc 85
    (xs.Utils.isSet(_cls_name._instance) || (_cls_name._instance = []));
    if (_cls_name._instance[_str]) {
        // source line 43, bytecode pc 115
        return _cls_name._instance[_str];
    }
    // source line 46, bytecode pc 127
    (obj = new _cls_name());
    if ((obj && obj.init(param))) {
        // source line 48, bytecode pc 175
        (_cls_name._instance[_str] = obj);
        // source line 49, bytecode pc 179
        return obj;
    }
    // source line 51, bytecode pc 202
    xs.error("xs.Profile.GameData.Player.create failed");
    // source line 52, bytecode pc 204
    return null;
});
