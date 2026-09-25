// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/UnionWarBattleInfo.js:1
// source line 65, bytecode pc 149
(xs.Models.UnionWarBattleInfo = xs.Models.Base.extend({
    name: "xs.Models.UnionWarBattleInfo",
    Cfg: {},
    init: function() {
    // source line 15, bytecode pc 12
    this._super();
    // source line 17, bytecode pc 20
    (this.battle_id = 0);
    // source line 18, bytecode pc 28
    (this.battle_title = null);
    // source line 19, bytecode pc 36
    (this.battle_desc = null);
    // source line 20, bytecode pc 44
    (this.battle_integral = 0);
    // source line 21, bytecode pc 52
    (this.battle_number = 0);
    // source line 22, bytecode pc 60
    (this.battle_sort = 0);
    // source line 24, bytecode pc 62
    return true;
},
    loadConfig: function(battleId) {
    var _dataObj;
    // source line 31, bytecode pc 66
    (_dataObj = xs.Tools.CfgData.readRecordByTypeAndKey(xs.Constant_CfgDataType_UnionWar_Battle, xs.Utils.parseStringSafe(battleId)));
    // source line 34, bytecode pc 103
    (this.battle_id = xs.Utils.parseIntSafe(_dataObj.battle_id));
    // source line 35, bytecode pc 140
    (this.battle_title = xs.Utils.parseStringSafe(_dataObj.battle_title));
    // source line 36, bytecode pc 177
    (this.battle_desc = xs.Utils.parseStringSafe(_dataObj.battle_desc));
    // source line 37, bytecode pc 214
    (this.battle_integral = xs.Utils.parseIntSafe(_dataObj.battle_integral));
    // source line 38, bytecode pc 251
    (this.battle_number = xs.Utils.parseIntSafe(_dataObj.battle_number));
    // source line 39, bytecode pc 288
    (this.battle_sort = xs.Utils.parseIntSafe(_dataObj.battle_sort));
    // source line 41, bytecode pc 301
    this.clearCache();
    // source line 42, bytecode pc 303
    return true;
},
    getBattleId: function() {
    // source line 46, bytecode pc 6
    return this.battle_id;
},
    getBattleTitle: function() {
    // source line 50, bytecode pc 6
    return this.battle_title;
},
    getBattleDesc: function() {
    // source line 54, bytecode pc 6
    return this.battle_desc;
},
    getBattleIntegral: function() {
    // source line 58, bytecode pc 6
    return this.battle_integral;
},
    getBattleMaxMemberNum: function() {
    // source line 62, bytecode pc 6
    return this.battle_number;
},
    getBattleSort: function() {
    // source line 66, bytecode pc 6
    return this.battle_sort;
}
}));
// source line 70, bytecode pc 175
(xs.Models.UnionWarBattleInfo.createWithBattleId = function(battleId) {
    var battleInfo;
    // source line 72, bytecode pc 23
    (battleInfo = new xs.Models.UnionWarBattleInfo());
    if ((battleInfo && battleInfo.init())) {
        // source line 75, bytecode pc 70
        battleInfo.loadConfig(battleId);
        // source line 76, bytecode pc 74
        return battleInfo;
    }
    // source line 78, bytecode pc 99
    xs.assert(false, "xs.Models.UnionWarBattleInfo.createWithJson failed");
    // source line 79, bytecode pc 101
    return null;
});
