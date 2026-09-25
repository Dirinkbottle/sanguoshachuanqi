// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/UnionWarBattleFightInfo.js:1
// source line 280, bytecode pc 359
(xs.Models.UnionWarBattleFightInfo = xs.Models.Base.extend({
    name: "xs.Models.UnionWarBattleFightInfo",
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
    // source line 23, bytecode pc 44
    (this.battleId = null);
    // source line 24, bytecode pc 52
    (this.fight = null);
    // source line 25, bytecode pc 61
    (this.fight_winner = -1);
    // source line 27, bytecode pc 69
    (this.process = null);
    // source line 28, bytecode pc 77
    (this.isUserPlayed = false);
    // source line 29, bytecode pc 85
    (this.isUserPlayingDetailProcess = false);
    // source line 31, bytecode pc 93
    (this.team1 = null);
    // source line 32, bytecode pc 101
    (this.team2 = null);
    // source line 34, bytecode pc 103
    return true;
},
    loadJson: function(jsonData, battleId) {
    // source line 40, bytecode pc 9
    (this.battleId = battleId);
    if (jsonData) {
        // source line 43, bytecode pc 32
        (this.fight = jsonData.fight);
        // source line 44, bytecode pc 47
        (this.fight_winner = jsonData.fight_winner);
    }
    // source line 47, bytecode pc 60
    this.clearCache();
    // source line 48, bytecode pc 62
    return true;
},
    setProcess: function(process) {
    // source line 53, bytecode pc 9
    (this.process = process);
},
    getProcess: function() {
    // source line 57, bytecode pc 6
    return this.process;
},
    getBattleId: function() {
    // source line 61, bytecode pc 6
    return this.battleId;
},
    getUnionWarId: function() {
    // source line 66, bytecode pc 23
    return this.getProcess().getUnionWarId();
},
    getBattleRounds: function() {
    // source line 70, bytecode pc 23
    return this.getProcess().getBattleRounds();
},
    getTag: function() {
    // source line 74, bytecode pc 23
    return this.getProcess().getTag();
},
    getUnions: function() {
    // source line 79, bytecode pc 23
    return this.getProcess().getUnions();
},
    getUnionIdWithTeamNo: function(teamNo) {
    // source line 83, bytecode pc 27
    return this.getProcess().getUnionIdWithTeamNo(teamNo);
},
    getUnionNameWithTeamNo: function(teamNo) {
    // source line 87, bytecode pc 27
    return this.getProcess().getUnionNameWithTeamNo(teamNo);
},
    getEncounterWeekType: function() {
    // source line 91, bytecode pc 23
    return this.getProcess().getEncounterWeekType();
},
    getEncounterServerType: function() {
    // source line 95, bytecode pc 23
    return this.getProcess().getEncounterServerType();
},
    setIsUserPlayed: function(b_isPlayed) {
    // source line 100, bytecode pc 9
    (this.isUserPlayed = b_isPlayed);
},
    getIsUserPlayed: function() {
    // source line 104, bytecode pc 6
    return this.isUserPlayed;
},
    setIsUserPlayingDetailProcess: function(b_isPlaying) {
    // source line 109, bytecode pc 9
    (this.isUserPlayingDetailProcess = b_isPlaying);
},
    getIsUserPlayingDetailProcess: function() {
    // source line 112, bytecode pc 6
    return this.isUserPlayingDetailProcess;
},
    getTeams: function() {
    var team1, team2, lastUserId1, lastUserId2, pos1, pos2, killNums, _killNum, _bIsFighted, _bIsDeath, i, user1, user2;
    if (((this.team1 == null) || (this.team2 == null))) {
        // source line 118, bytecode pc 35
        (team1 = []);
        // source line 118, bytecode pc 44
        (team2 = []);
        // source line 119, bytecode pc 53
        (lastUserId1 = "");
        // source line 119, bytecode pc 62
        (lastUserId2 = "");
        // source line 120, bytecode pc 67
        (pos1 = 1);
        // source line 120, bytecode pc 72
        (pos2 = 1);
        // source line 123, bytecode pc 88
        (killNums = this.getKillNums());
        // source line 126, bytecode pc 105
        (i = 0);
        while ((i < this.fight.length)) {
            // source line 127, bytecode pc 176
            (user1 = this.getProcess().getUserAll()[xs.Utils.parseStringSafe(this.fight[i].from)]);
            // source line 128, bytecode pc 241
            (user2 = this.getProcess().getUserAll()[xs.Utils.parseStringSafe(this.fight[i].to)]);
            if ((user1 && (user1.getPlayerId() != lastUserId1))) {
                // source line 131, bytecode pc 292
                team1.push(user1);
                // source line 132, bytecode pc 314
                user1.setBattleId(this.battleId);
                // source line 133, bytecode pc 339
                (pos1 = (+pos1 + 1));
                // source line 133, bytecode pc 344
                user1.setBattlePos(+pos1);
                // source line 135, bytecode pc 395
                (_killNum = (xs.Utils.parseIntSafe(killNums[user1.getPlayerId()]) || 0));
                // source line 136, bytecode pc 414
                user1.setKillNum(_killNum);
                // source line 138, bytecode pc 445
                (_bIsFighted = this.isPlayerFighted(user1.getPlayerId()));
                // source line 139, bytecode pc 464
                user1.setIsFighted(_bIsFighted);
                // source line 141, bytecode pc 495
                (_bIsDeath = this.isPlayerDead(user1.getPlayerId()));
                // source line 142, bytecode pc 514
                user1.setIsDeath(_bIsDeath);
                // source line 144, bytecode pc 538
                (lastUserId1 = ("" + user1.getPlayerId()));
            }
            if ((user2 && (user2.getPlayerId() != lastUserId2))) {
                // source line 148, bytecode pc 589
                team2.push(user2);
                // source line 149, bytecode pc 611
                user2.setBattleId(this.battleId);
                // source line 150, bytecode pc 636
                (pos2 = (+pos2 + 1));
                // source line 150, bytecode pc 641
                user2.setBattlePos(+pos2);
                // source line 152, bytecode pc 692
                (_killNum = (xs.Utils.parseIntSafe(killNums[user2.getPlayerId()]) || 0));
                // source line 153, bytecode pc 711
                user2.setKillNum(_killNum);
                // source line 155, bytecode pc 742
                (_bIsFighted = this.isPlayerFighted(user2.getPlayerId()));
                // source line 156, bytecode pc 761
                user2.setIsFighted(_bIsFighted);
                // source line 158, bytecode pc 792
                (_bIsDeath = this.isPlayerDead(user2.getPlayerId()));
                // source line 159, bytecode pc 811
                user2.setIsDeath(_bIsDeath);
                // source line 161, bytecode pc 835
                (lastUserId2 = ("" + user2.getPlayerId()));
            }
            // source line 126, bytecode pc 849
            (i = (+i + 1));
        }
        // source line 166, bytecode pc 881
        (this.team1 = team1);
        // source line 167, bytecode pc 891
        (this.team2 = team2);
    }
    // source line 174, bytecode pc 917
    return [ this.team1, this.team2 ];
},
    getTeam1: function() {
    // source line 178, bytecode pc 14
    return this.getTeams()[0];
},
    getTeam2: function() {
    // source line 181, bytecode pc 14
    return this.getTeams()[1];
},
    getKillNums: function() {
    var killNums, i, info, from, to, winner;
    // source line 186, bytecode pc 9
    (killNums = {});
    // source line 187, bytecode pc 14
    (i = 0);
    while ((i < this.fight.length)) {
        // source line 188, bytecode pc 34
        (info = this.fight[i]);
        // source line 189, bytecode pc 46
        (from = info.from);
        // source line 190, bytecode pc 58
        (to = info.to);
        // source line 191, bytecode pc 70
        (winner = info.winner);
        if ((winner == 0)) {
            if ((killNums[from] != null)) {
                // source line 195, bytecode pc 111
                (killNums[from] = (killNums[from] + 1));
            } else {
                // source line 198, bytecode pc 125
                (killNums[from] = 1);
            }
        } else {
            if ((winner == 1)) {
                if ((killNums[to] != null)) {
                    // source line 203, bytecode pc 171
                    (killNums[to] = (killNums[to] + 1));
                } else {
                    // source line 206, bytecode pc 185
                    (killNums[to] = 1);
                }
            }
        }
        // source line 187, bytecode pc 199
        (i = (+i + 1));
    }
    // source line 210, bytecode pc 248
    xs.dump("killNums", killNums);
    // source line 211, bytecode pc 252
    return killNums;
},
    isPlayerFighted: function(playerId) {
    var i, info, from, to, winner;
    // source line 216, bytecode pc 4
    (i = 0);
    while ((i < this.fight.length)) {
        // source line 217, bytecode pc 24
        (info = this.fight[i]);
        // source line 218, bytecode pc 36
        (from = info.from);
        // source line 219, bytecode pc 48
        (to = info.to);
        // source line 220, bytecode pc 60
        (winner = info.winner);
        if (((from == playerId) || (to == playerId))) {
            if (((winner == 0) || (winner == 1))) {
                // source line 224, bytecode pc 108
                return true;
            }
        }
        // source line 216, bytecode pc 122
        (i = (+i + 1));
    }
    // source line 228, bytecode pc 146
    return false;
},
    isPlayerDead: function(playerId) {
    var i, info, from, to, winner;
    // source line 233, bytecode pc 4
    (i = 0);
    while ((i < this.fight.length)) {
        // source line 234, bytecode pc 24
        (info = this.fight[i]);
        // source line 235, bytecode pc 36
        (from = info.from);
        // source line 236, bytecode pc 48
        (to = info.to);
        // source line 237, bytecode pc 60
        (winner = info.winner);
        if ((((from == playerId) && (winner == 1)) || ((to == playerId) && (winner == 0)))) {
            // source line 241, bytecode pc 109
            return true;
        }
        // source line 233, bytecode pc 123
        (i = (+i + 1));
    }
    // source line 244, bytecode pc 147
    return false;
},
    isFightOver: function(step) {
    var isOver;
    // source line 249, bytecode pc 18
    (isOver = (step >= this.fight.length));
    if (((this.getTeams()[0].length == 0) || (this.getTeams()[1].length == 0))) {
        // source line 251, bytecode pc 76
        (isOver = true);
    }
    // source line 253, bytecode pc 80
    return isOver;
},
    getWinnerUnionIdx: function() {
    // source line 258, bytecode pc 28
    return xs.Utils.parseIntSafe(this.fight_winner);
},
    getWinnerUnionName: function() {
    // source line 262, bytecode pc 43
    return this.getUnionNameWithTeamNo((xs.Utils.parseIntSafe(this.fight_winner) + 1));
},
    getFight: function() {
    // source line 267, bytecode pc 6
    return this.fight;
},
    getWinner: function(step) {
    if (((step === null) || ((step === undefined) || (step >= this.fight.length)))) {
        // source line 273, bytecode pc 96
        xs.warn("getWinnerPlayerId 错误!", ((("step = " + step) + ",this.fight.length = ") + this.fight.length));
        // source line 274, bytecode pc 98
        return 0;
    }
    // source line 276, bytecode pc 136
    return xs.Utils.parseIntSafe(this.fight[step].winner);
},
    getPlayerVsList: function(playerId) {
    var arrVsList, i, info, from, to, winner, user1, user2;
    // source line 281, bytecode pc 8
    (arrVsList = []);
    // source line 282, bytecode pc 13
    (i = 0);
    while ((i < this.fight.length)) {
        // source line 283, bytecode pc 33
        (info = this.fight[i]);
        // source line 284, bytecode pc 45
        (from = info.from);
        // source line 285, bytecode pc 57
        (to = info.to);
        // source line 286, bytecode pc 69
        (winner = info.winner);
        if (((from == playerId) || (to == playerId))) {
            // source line 289, bytecode pc 159
            (user1 = this.getProcess().getUserAll()[xs.Utils.parseStringSafe(this.fight[i].from)]);
            // source line 290, bytecode pc 224
            (user2 = this.getProcess().getUserAll()[xs.Utils.parseStringSafe(this.fight[i].to)]);
            // source line 295, bytecode pc 270
            arrVsList.push({ player1: user1, player2: user2, winner: winner });
        }
        // source line 282, bytecode pc 284
        (i = (+i + 1));
    }
    // source line 301, bytecode pc 310
    return arrVsList;
}
}));
// source line 306, bytecode pc 385
(xs.Models.UnionWarBattleFightInfo.createWithJson = function(data, battleId) {
    var battleFightInfo;
    // source line 308, bytecode pc 23
    (battleFightInfo = new xs.Models.UnionWarBattleFightInfo());
    if ((battleFightInfo && battleFightInfo.init())) {
        // source line 311, bytecode pc 74
        battleFightInfo.loadJson(data, battleId);
        // source line 312, bytecode pc 78
        return battleFightInfo;
    }
    // source line 314, bytecode pc 103
    xs.assert(false, "xs.Models.UnionWarBattleFightInfo.createWithJson failed");
    // source line 315, bytecode pc 105
    return null;
});
