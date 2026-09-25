// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/TmpInfo/UsrUpgrade.js:1
// source line 49, bytecode pc 188
(xs.Models.TmpInfo.UsrUpgrade = cc.Class.extend({
    name: "xs.Models.TmpInfo.UsrUpgrade",
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    init: function() {
    // source line 11, bytecode pc 7
    (this._level = 0);
    // source line 12, bytecode pc 15
    (this._goldNum = 0);
    // source line 13, bytecode pc 23
    (this._soldNum = 0);
    // source line 14, bytecode pc 31
    (this._teamNum = 0);
    // source line 15, bytecode pc 33
    return true;
},
    loadJson: function(data) {
    // source line 19, bytecode pc 14
    (this._level = data.level);
    // source line 20, bytecode pc 34
    (this._goldNum = data.add_list.gold);
    // source line 21, bytecode pc 54
    (this._soldNum = data.add_list.coin);
    // source line 22, bytecode pc 74
    (this._teamNum = data.add_list.team_num);
},
    getLevel: function() {
    // source line 26, bytecode pc 6
    return this._level;
},
    getGoldNum: function() {
    // source line 30, bytecode pc 45
    return (xs.Utils.isEmpty(this._goldNum) ? 0 : this._goldNum);
},
    getSoldNum: function() {
    // source line 33, bytecode pc 45
    return (xs.Utils.isEmpty(this._soldNum) ? 0 : this._soldNum);
},
    getString1: function() {
    var s;
    // source line 38, bytecode pc 35
    (s = xs.Factorys.String.create("1070910006"));
    // source line 39, bytecode pc 39
    return s;
},
    getString2: function() {
    var s;
    // source line 42, bytecode pc 35
    (s = xs.Factorys.String.create("1070910007"));
    // source line 43, bytecode pc 39
    return s;
},
    getString3: function() {
    var s;
    // source line 46, bytecode pc 35
    (s = xs.Factorys.String.create("1070910008"));
    // source line 47, bytecode pc 39
    return s;
},
    getString4: function() {
    var team_num, s;
    if (!xs.Utils.isEmpty(this._teamNum)) {
        // source line 51, bytecode pc 84
        (team_num = xs.Profile.GameData.Mgr.getInstance().Team.getCurTeamMaxLength());
        // source line 52, bytecode pc 133
        (s = xs.Tools.Ml.createStringWithArgsArray("1070910009", [ team_num ]));
    } else {
        // source line 54, bytecode pc 174
        (s = xs.Tools.String.createString("auto_name_49"));
    }
    // source line 58, bytecode pc 178
    return s;
}
}));
// source line 62, bytecode pc 219
(xs.Models.TmpInfo.UsrUpgrade.createWithJson = function(data) {
    var _ret;
    // source line 63, bytecode pc 28
    (_ret = new xs.Models.TmpInfo.UsrUpgrade());
    if ((_ret && _ret.init())) {
        // source line 65, bytecode pc 75
        _ret.loadJson(data);
        // source line 67, bytecode pc 79
        return _ret;
    }
    // source line 69, bytecode pc 81
    return null;
});
