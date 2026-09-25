// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/LadderModel.js:1
// source line 102, bytecode pc 193
(xs.Models.LadderModel = cc.Class.extend({
    name: "xs.Models.LadderModel",
    init: function(jsonObj) {
    var ladderInfo;
    // source line 10, bytecode pc 11
    (ladderInfo = jsonObj.ladder_info);
    // source line 12, bytecode pc 26
    (this.ladderRank = ladderInfo.ladder_rank);
    // source line 13, bytecode pc 41
    (this.rankName = ladderInfo.rank_name);
    // source line 14, bytecode pc 56
    (this.curRankSalary = ladderInfo.cur_rank_salary);
    // source line 15, bytecode pc 71
    (this.nextRankSalary = ladderInfo.next_rank_salary);
    // source line 16, bytecode pc 86
    (this.totalRankSalary = ladderInfo.ladder_rank_salary);
    // source line 17, bytecode pc 101
    (this.totalChallengeNum = ladderInfo.total_challenge_num);
    // source line 18, bytecode pc 116
    (this.challengeNum = ladderInfo.challenging_num);
    // source line 20, bytecode pc 128
    (this.ladderTeam = []);
    // source line 21, bytecode pc 140
    (this.ladderTop = []);
    // source line 23, bytecode pc 162
    this.initLadderTeam(ladderInfo.ladder_team);
    // source line 25, bytecode pc 164
    return true;
},
    initLadderTeam: function(ladder_team) {
    var i, otherPlayer;
    // source line 30, bytecode pc 4
    (i = 0);
    while ((i < ladder_team.length)) {
        // source line 31, bytecode pc 48
        (otherPlayer = xs.Models.OtherPlayerInfo.create(ladder_team[i]));
        if ((i < 10)) {
            // source line 33, bytecode pc 76
            otherPlayer.setIsTop(true);
        }
        // source line 35, bytecode pc 98
        this.ladderTeam.push(otherPlayer);
        // source line 30, bytecode pc 112
        (i = (+i + 1));
    }
    // source line 37, bytecode pc 160
    (this.ladderTop = this.ladderTeam.slice(0, 10));
    // source line 38, bytecode pc 178
    this.ladderTeam.reverse();
},
    getLadderTeam: function() {
    // source line 42, bytecode pc 6
    return this.ladderTeam;
},
    getLadderTop: function() {
    // source line 46, bytecode pc 6
    return this.ladderTop;
},
    getLadderRank: function() {
    // source line 51, bytecode pc 6
    return this.ladderRank;
},
    getRankName: function() {
    // source line 56, bytecode pc 6
    return this.rankName;
},
    getCurRankSalary: function() {
    // source line 61, bytecode pc 6
    return this.curRankSalary;
},
    getNextRankSalary: function() {
    // source line 66, bytecode pc 6
    return this.nextRankSalary;
},
    getTotalRankSalary: function() {
    // source line 71, bytecode pc 6
    return this.totalRankSalary;
},
    getTotalChallengeNum: function() {
    // source line 76, bytecode pc 6
    return this.totalChallengeNum;
},
    getChallengeNum: function() {
    // source line 81, bytecode pc 6
    return this.challengeNum;
},
    getSelfIdx: function() {
    var i;
    // source line 86, bytecode pc 4
    (i = 0);
    while ((i < this.ladderTeam.length)) {
        if (this.ladderTeam[i].isSelf()) {
            // source line 88, bytecode pc 40
            return i;
        }
        // source line 86, bytecode pc 54
        (i = (+i + 1));
    }
},
    getFocusIdx: function() {
    if ((this.getSelfIdx() === (this.ladderTeam.length - 1))) {
        // source line 96, bytecode pc 43
        return this.getSelfIdx();
    }
    // source line 98, bytecode pc 58
    return (this.getSelfIdx() + 1);
},
    isInTop10: function() {
    // source line 103, bytecode pc 21
    return ((this.ladderRank <= 10) ? true : false);
}
}));
// source line 107, bytecode pc 219
(xs.Models.LadderModel.create = function(jsonObj) {
    var ret;
    // source line 108, bytecode pc 23
    (ret = new xs.Models.LadderModel());
    if ((ret && ret.init(jsonObj))) {
        // source line 110, bytecode pc 59
        return ret;
    }
    // source line 112, bytecode pc 61
    return null;
});
