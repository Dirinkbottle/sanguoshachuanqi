// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/GameData/LadderInfo.js:1
// source line 35, bytecode pc 148
(xs.Profile.GameData.LadderInfo = xs.Profile.GameData.Base.extend({
    name: "xs.Profile.GameData.LadderInfo",
    dump: xs.Debug.emptyFunc,
    init: function(param) {
    // source line 12, bytecode pc 16
    this._super(param);
    // source line 13, bytecode pc 18
    return true;
},
    update: function(jsonObj) {
    // source line 17, bytecode pc 36
    (this.ladderInfo = xs.Models.LadderModel.create(jsonObj));
    // source line 18, bytecode pc 38
    return true;
},
    getLadderInfo: function() {
    // source line 22, bytecode pc 6
    return this.ladderInfo;
},
    setLastFightData: function(targetPlayerData) {
    // source line 27, bytecode pc 9
    (this.lastFightData = targetPlayerData);
},
    getLastFightData: function() {
    // source line 32, bytecode pc 6
    return this.lastFightData;
},
    clearLastFightData: function() {
    // source line 36, bytecode pc 7
    (this.lastFightData = null);
}
}));
// source line 41, bytecode pc 179
(xs.Profile.GameData.LadderInfo.create = function(param) {
    var _str, _cls_name, obj;
    // source line 42, bytecode pc 11
    (_str = param.play_id);
    // source line 43, bytecode pc 35
    (_cls_name = xs.Profile.GameData.LadderInfo);
    // source line 44, bytecode pc 85
    (xs.Utils.isSet(_cls_name._instance) || (_cls_name._instance = []));
    if (_cls_name._instance[_str]) {
        // source line 47, bytecode pc 115
        return _cls_name._instance[_str];
    }
    // source line 50, bytecode pc 127
    (obj = new _cls_name());
    if ((obj && obj.init(param))) {
        // source line 52, bytecode pc 175
        (_cls_name._instance[_str] = obj);
        // source line 53, bytecode pc 179
        return obj;
    }
    // source line 55, bytecode pc 202
    xs.error("xs.Profile.GameData.LadderInfo.create failed");
    // source line 56, bytecode pc 204
    return null;
});
