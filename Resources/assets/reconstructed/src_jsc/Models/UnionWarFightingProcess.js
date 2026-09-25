// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/UnionWarFightingProcess.js:1
// source line 104, bytecode pc 209
(xs.Models.UnionWarFightingProcess = xs.Models.Base.extend({
    name: "xs.Models.UnionWarFightingProcess",
    Cfg: {},
    init: function() {
    // source line 17, bytecode pc 12
    this._super();
    // source line 19, bytecode pc 20
    (this.union_war_id = 0);
    // source line 20, bytecode pc 28
    (this.battle_rounds = 0);
    // source line 21, bytecode pc 36
    (this.tag = 0);
    // source line 22, bytecode pc 48
    (this.unions = []);
    // source line 23, bytecode pc 65
    (this.encounterWeekType = xs.Constant_UnionWar_Time_ThisEncounter);
    // source line 25, bytecode pc 78
    (this.battleFightInfoDict = {});
    // source line 26, bytecode pc 90
    (this.unions = []);
    // source line 27, bytecode pc 103
    (this.userAll = {});
    // source line 28, bytecode pc 105
    return true;
},
    loadJson: function(jsonData) {
    var key, user, _battleInfoAll, battleFightInfo;
    // source line 36, bytecode pc 12
    (this.userAll = {});
    for (var key in jsonData.user_all) {
        if (!(jsonData.user_all.hasOwnProperty(key))) continue;
        // source line 38, bytecode pc 104
        (user = xs.Models.UnionWarPlayer.createWithJson(jsonData.user_all[key]));
        // source line 39, bytecode pc 118
        (this.userAll[key] = user);
    }
    // source line 43, bytecode pc 188
    (_battleInfoAll = xs.Profile.GameData.Mgr.getInstance().UnionWar.getUnionWar().getBattleInfoAll());
    for (var key in _battleInfoAll) {
        if (!(_battleInfoAll.hasOwnProperty(key))) continue;
        // source line 45, bytecode pc 274
        (battleFightInfo = xs.Models.UnionWarBattleFightInfo.createWithJson(jsonData.info[key], key));
        // source line 46, bytecode pc 291
        battleFightInfo.setProcess(this);
        // source line 47, bytecode pc 305
        (this.battleFightInfoDict[key] = battleFightInfo);
    }
    // source line 50, bytecode pc 326
    this.clearCache();
    // source line 51, bytecode pc 328
    return true;
},
    setOtherInfos: function(union_war_id, battle_rounds, tag, fightUnions, encounterWeekType, encounterServerType) {
    // source line 56, bytecode pc 9
    (this.union_war_id = union_war_id);
    // source line 57, bytecode pc 19
    (this.battle_rounds = battle_rounds);
    // source line 58, bytecode pc 29
    (this.tag = tag);
    // source line 59, bytecode pc 39
    (this.unions = fightUnions);
    // source line 60, bytecode pc 49
    (this.encounterWeekType = encounterWeekType);
    // source line 61, bytecode pc 59
    (this.encounterServerType = encounterServerType);
},
    getUnionWarId: function() {
    // source line 66, bytecode pc 6
    return this.union_war_id;
},
    getBattleRounds: function() {
    // source line 70, bytecode pc 6
    return this.battle_rounds;
},
    getTag: function() {
    // source line 74, bytecode pc 6
    return this.tag;
},
    getUnionIdWithTeamNo: function(teamNo) {
    // source line 78, bytecode pc 17
    return this.unions[(teamNo - 1)].unionId;
},
    getUnionNameWithTeamNo: function(teamNo) {
    // source line 81, bytecode pc 17
    return this.unions[(teamNo - 1)].unionName;
},
    getUnions: function() {
    // source line 84, bytecode pc 6
    return this.unions;
},
    getUserAll: function() {
    // source line 88, bytecode pc 6
    return this.userAll;
},
    setEncounterWeekType: function(encounterWeekType) {
    // source line 92, bytecode pc 9
    (this.encounterWeekType = encounterWeekType);
},
    getEncounterWeekType: function() {
    // source line 96, bytecode pc 6
    return this.encounterWeekType;
},
    getEncounterServerType: function() {
    // source line 100, bytecode pc 6
    return this.encounterServerType;
},
    getBattleFightInfoWithBattleId: function(battleId) {
    var battleFightInfo;
    // source line 105, bytecode pc 35
    (battleFightInfo = this.battleFightInfoDict[xs.Utils.parseStringSafe(battleId)]);
    // source line 108, bytecode pc 39
    return battleFightInfo;
}
}));
// source line 112, bytecode pc 235
(xs.Models.UnionWarFightingProcess.createWithJson = function(data) {
    var fightingProcess;
    // source line 114, bytecode pc 23
    (fightingProcess = new xs.Models.UnionWarFightingProcess());
    if ((fightingProcess && fightingProcess.init())) {
        // source line 117, bytecode pc 70
        fightingProcess.loadJson(data);
        // source line 118, bytecode pc 74
        return fightingProcess;
    }
    // source line 120, bytecode pc 99
    xs.assert(false, "xs.Models.UnionWarFightingProcess.createWithJson failed");
    // source line 121, bytecode pc 101
    return null;
});
