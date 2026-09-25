// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/Fight/FightInfo.js:1
// source line 280, bytecode pc 393
(xs.Models.FightInfo = cc.Class.extend({
    name: "xs.Models.FightInfo",
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    init: function() {
    // source line 16, bytecode pc 7
    (this.starLevel = 0);
    // source line 18, bytecode pc 15
    (this.bSuccess = true);
    // source line 20, bytecode pc 23
    (this.rounds = 0);
    // source line 22, bytecode pc 31
    (this.remainderGeneralNum = 0);
    // source line 23, bytecode pc 39
    (this.remainderGeneralPer = 0);
    // source line 25, bytecode pc 47
    (this.ladderUpTo = 0);
    // source line 28, bytecode pc 59
    (this.dropItems = []);
    // source line 31, bytecode pc 67
    (this.userExp = 0);
    // source line 33, bytecode pc 75
    (this.generalExp = 0);
    // source line 35, bytecode pc 83
    (this.coin = 0);
    // source line 38, bytecode pc 91
    (this.extra_integration = 0);
    // source line 40, bytecode pc 108
    (this.fightType = xs.Constant_FightType_Dungeon);
    // source line 42, bytecode pc 120
    (this.show_general_info = []);
    // source line 45, bytecode pc 128
    (this.m_isShowFightResult = true);
    // source line 47, bytecode pc 130
    return true;
},
    loadJson: function(jsonObj) {
    if (jsonObj.fight_info) {
        // source line 53, bytecode pc 27
        (this.fightProcess = jsonObj.fight_info);
    }
    if (jsonObj.fight_result) {
        // source line 58, bytecode pc 48
        (this.m_isShowFightResult = true);
        // source line 60, bytecode pc 70
        this.initFightResultInfo(jsonObj.fight_result);
    } else {
        // source line 63, bytecode pc 83
        (this.m_isShowFightResult = false);
    }
},
    isShowFightResult: function() {
    // source line 69, bytecode pc 6
    return this.m_isShowFightResult;
},
    initFightResultInfo: function(fightResult) {
    var type, i, dropItem, needPush, j;
    // source line 74, bytecode pc 22
    this.dump("initFightResultInfo111", fightResult);
    // source line 77, bytecode pc 37
    (this.fightPlayer = fightResult.player_info);
    // source line 80, bytecode pc 96
    (this.starLevel = parseInt((fightResult.fight_calculate_info.star_level ? fightResult.fight_calculate_info.star_level : 0)));
    // source line 82, bytecode pc 111
    (this.bSuccess = fightResult.success);
    // source line 84, bytecode pc 146
    (this.rounds = parseInt(fightResult.fight_calculate_info.rounds));
    // source line 86, bytecode pc 166
    (this.remainderGeneralNum = fightResult.fight_calculate_info.residue_team_num);
    // source line 87, bytecode pc 186
    (this.remainderGeneralPer = fightResult.fight_calculate_info.residue_team_percent);
    // source line 89, bytecode pc 212
    (this.show_general_info = (fightResult.show_general_info || []));
    if (fightResult.fight_calculate_info.up_rank) {
        // source line 92, bytecode pc 250
        (this.ladderUpTo = fightResult.fight_calculate_info.up_rank);
    }
    if (fightResult.add_list) {
        // source line 98, bytecode pc 272
        (type = []);
        // source line 99, bytecode pc 277
        (i = 0);
        while ((i < fightResult.add_list.length)) {
            // source line 100, bytecode pc 299
            (dropItem = fightResult.add_list[i]);
            // source line 101, bytecode pc 304
            (needPush = true);
            // source line 102, bytecode pc 309
            (j = 0);
            while ((j < this.dropItems.length)) {
                if (((this.dropItems[j].id == fightResult.add_list[i].id) && (parseInt(type[j]) == parseInt(fightResult.add_list[i].type)))) {
                    // source line 106, bytecode pc 484
                    (this.dropItems[j].num = (parseInt(this.dropItems[j].num) + parseInt(dropItem.num)));
                    // source line 107, bytecode pc 489
                    (needPush = false);
                }
                // source line 102, bytecode pc 503
                (j = (+j + 1));
            }
            if (needPush) {
                // source line 112, bytecode pc 635
                this.dropItems.push(xs.Tools.Model.createModelWithBase(parseInt(dropItem.type), dropItem.id, parseInt(dropItem.num)));
                // source line 113, bytecode pc 659
                type.push(dropItem.type);
            }
            // source line 99, bytecode pc 673
            (i = (+i + 1));
        }
    }
    // source line 121, bytecode pc 741
    (this.userExp = (fightResult.drop_info.user_exp ? fightResult.drop_info.user_exp : 0));
    // source line 123, bytecode pc 785
    (this.generalExp = (fightResult.drop_info.general_exp ? fightResult.drop_info.general_exp : 0));
    // source line 125, bytecode pc 829
    (this.coin = (fightResult.drop_info.user_coin ? fightResult.drop_info.user_coin : 0));
    // source line 127, bytecode pc 873
    (this.fortune = (fightResult.drop_info.fortune ? fightResult.drop_info.fortune : 0));
    // source line 129, bytecode pc 917
    (this.salary = (fightResult.drop_info.rank_salary ? fightResult.drop_info.rank_salary : 0));
    // source line 131, bytecode pc 961
    (this.honor = (fightResult.drop_info.reward_honor ? fightResult.drop_info.reward_honor : 0));
    // source line 133, bytecode pc 1005
    (this.point = (fightResult.drop_info.point ? fightResult.drop_info.point : 0));
    // source line 135, bytecode pc 1049
    (this.extra_integration = (fightResult.fight_calculate_info.extra_integration ? fightResult.fight_calculate_info.extra_integration : 0));
    // source line 139, bytecode pc 1093
    (this.maxIntegration = (fightResult.fight_calculate_info.max_total_integration ? fightResult.fight_calculate_info.max_total_integration : 0));
    // source line 141, bytecode pc 1137
    (this.totalProgress = (fightResult.fight_calculate_info.point_progress ? fightResult.fight_calculate_info.point_progress : 0));
    // source line 143, bytecode pc 1181
    (this.totalIntegration = (fightResult.fight_calculate_info.total_integration ? fightResult.fight_calculate_info.total_integration : 0));
    // source line 147, bytecode pc 1196
    (this.fightType = fightResult.fight_type);
},
    getGeneralExpAndLevelChangeInfo: function() {
    // source line 152, bytecode pc 6
    return this.show_general_info;
},
    getGeneralExpChangeByIdx: function(idx) {
    if ((idx >= this.show_general_info.length)) {
        // source line 159, bytecode pc 21
        return 0;
    }
    // source line 163, bytecode pc 37
    return this.show_general_info[idx].exp;
},
    getGeneralLevelChangeByIdx: function(idx) {
    if ((idx >= this.show_general_info.length)) {
        // source line 168, bytecode pc 21
        return 0;
    }
    // source line 171, bytecode pc 75
    return xs.Utils.parseIntSafe((this.show_general_info[idx].level_now - this.show_general_info[idx].level_before));
},
    getGeneralLevelNowByIdx: function(idx) {
    if ((idx >= this.show_general_info.length)) {
        // source line 177, bytecode pc 21
        return 1;
    }
    // source line 179, bytecode pc 59
    return xs.Utils.parseIntSafe(this.show_general_info[idx].level_now);
},
    isGeneralLevelup: function(idx) {
    if ((idx >= this.show_general_info.length)) {
        // source line 188, bytecode pc 21
        return false;
    }
    // source line 191, bytecode pc 53
    return (this.show_general_info[idx].level_now !== this.show_general_info[idx].level_before);
},
    getFightProcess: function() {
    // source line 196, bytecode pc 6
    return this.fightProcess;
},
    setFightProcess: function(fightInfo) {
    // source line 200, bytecode pc 9
    return (this.fightProcess = fightInfo);
},
    getStarLevel: function() {
    // source line 205, bytecode pc 6
    return this.starLevel;
},
    isSuccess: function() {
    // source line 210, bytecode pc 6
    return this.bSuccess;
},
    getRounds: function() {
    // source line 215, bytecode pc 6
    return this.rounds;
},
    getRemainderGeneralPer: function() {
    // source line 220, bytecode pc 6
    return this.remainderGeneralPer;
},
    getUserExp: function() {
    // source line 224, bytecode pc 6
    return this.userExp;
},
    getFortune: function() {
    // source line 228, bytecode pc 6
    return this.fortune;
},
    getGeneralExp: function() {
    // source line 231, bytecode pc 6
    return this.generalExp;
},
    getDropCoin: function() {
    // source line 235, bytecode pc 6
    return this.coin;
},
    getDropItems: function() {
    // source line 239, bytecode pc 6
    return this.dropItems;
},
    getFightType: function() {
    // source line 243, bytecode pc 6
    return this.fightType;
},
    getLadderUpTo: function() {
    // source line 247, bytecode pc 6
    return this.ladderUpTo;
},
    getSalary: function() {
    // source line 251, bytecode pc 6
    return this.salary;
},
    getPoint: function() {
    // source line 254, bytecode pc 6
    return this.point;
},
    getHonor: function() {
    // source line 258, bytecode pc 6
    return this.honor;
},
    getMaxIntegration: function() {
    // source line 263, bytecode pc 6
    return this.maxIntegration;
},
    getTotalProgress: function() {
    // source line 268, bytecode pc 6
    return this.totalProgress;
},
    getTotalIntegration: function() {
    // source line 273, bytecode pc 6
    return this.totalIntegration;
},
    getFightPlayer: function() {
    // source line 276, bytecode pc 6
    return this.fightPlayer;
},
    getIntegration: function() {
    // source line 281, bytecode pc 6
    return this.extra_integration;
}
}));
// source line 285, bytecode pc 419
(xs.Models.FightInfo.create = function(jsonObj) {
    var ret;
    // source line 286, bytecode pc 23
    (ret = new xs.Models.FightInfo());
    if ((ret && ret.init())) {
        // source line 288, bytecode pc 70
        ret.loadJson(jsonObj);
        // source line 289, bytecode pc 74
        return ret;
    }
    // source line 291, bytecode pc 76
    return null;
});
// source line 309, bytecode pc 493
(xs.Models.MulitiFightInfo = cc.Class.extend({
    name: "xs.Models.MulitiFightInfo",
    init: function(jsonObj) {
    var i;
    // source line 301, bytecode pc 11
    (this.fightInfos = []);
    // source line 302, bytecode pc 16
    (i = 0);
    while ((i < jsonObj.fight_result_all.length)) {
        // source line 303, bytecode pc 80
        this.fightInfos.push(xs.Models.FightInfo.create(jsonObj.fight_result_all[i]));
        // source line 302, bytecode pc 94
        (i = (+i + 1));
    }
    // source line 306, bytecode pc 120
    return true;
},
    getFightInfos: function() {
    // source line 310, bytecode pc 6
    return this.fightInfos;
}
}));
// source line 314, bytecode pc 519
(xs.Models.MulitiFightInfo.create = function(jsonObj) {
    var ret;
    // source line 315, bytecode pc 23
    (ret = new xs.Models.MulitiFightInfo());
    if ((ret && ret.init(jsonObj))) {
        // source line 317, bytecode pc 59
        return ret;
    }
    // source line 319, bytecode pc 61
    return null;
});
