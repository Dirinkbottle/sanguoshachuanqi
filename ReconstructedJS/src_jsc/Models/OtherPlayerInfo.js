// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/OtherPlayerInfo.js:1
// source line 137, bytecode pc 243
(xs.Models.OtherPlayerInfo = cc.Class.extend({
    name: "xs.Models.OtherPlayerInfo",
    init: function(json) {
    // source line 12, bytecode pc 7
    (this.ladderRank = 1);
    // source line 13, bytecode pc 19
    (this.playerId = "1");
    // source line 14, bytecode pc 27
    (this.playerType = 1);
    // source line 15, bytecode pc 35
    (this.playerLevel = 1);
    // source line 16, bytecode pc 99
    (this.nickname = (xs.release ? "" : xs.Tools.String.createString("auto_name_22")));
    // source line 17, bytecode pc 107
    (this.playerVipLevel = 1);
    // source line 18, bytecode pc 171
    (this.rankName = (xs.release ? "" : xs.Tools.String.createString("auto_name_23")));
    // source line 19, bytecode pc 179
    (this.beAttackEnable = false);
    // source line 20, bytecode pc 187
    (this.m_bIsEnemy = 1);
    // source line 21, bytecode pc 224
    (this.generalId = (xs.release ? "" : "generalId"));
    // source line 22, bytecode pc 232
    (this.fightSalary = 1);
    // source line 23, bytecode pc 240
    (this.bIsTop = false);
    // source line 24, bytecode pc 248
    (this.chaosProbability = 0);
    if (json) {
        // source line 27, bytecode pc 290
        (this.ladderRank = (json.ladder_rank ? json.ladder_rank : 1));
        // source line 28, bytecode pc 305
        (this.playerId = json.player_id);
        // source line 29, bytecode pc 320
        (this.playerType = json.player_type);
        // source line 30, bytecode pc 335
        (this.playerLevel = json.player_level);
        // source line 31, bytecode pc 350
        (this.nickname = json.nickname);
        // source line 32, bytecode pc 365
        (this.playerVipLevel = json.user_vip_level);
        // source line 33, bytecode pc 380
        (this.rankName = json.rank_name);
        // source line 34, bytecode pc 409
        (this.beAttackEnable = ((json.to_attack === 1) ? true : false));
        // source line 35, bytecode pc 439
        (this.m_bIsEnemy = parseInt(json.is_enemy));
        // source line 36, bytecode pc 454
        (this.generalId = json.general_id);
        // source line 37, bytecode pc 469
        (this.fightSalary = json.fight_salary);
        // source line 38, bytecode pc 533
        (this.chaosProbability = (parseInt(json.prob_type) ? parseInt(json.prob_type) : 0));
    }
    if ((this.playerId === xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId())) {
        // source line 43, bytecode pc 611
        (this.bIsSelf = true);
    } else {
        // source line 45, bytecode pc 624
        (this.bIsSelf = false);
    }
    // source line 49, bytecode pc 626
    return true;
},
    getLadderRank: function() {
    // source line 54, bytecode pc 28
    return xs.Utils.parseIntSafe(this.ladderRank);
},
    getPlayerId: function() {
    // source line 59, bytecode pc 6
    return this.playerId;
},
    getPlayerType: function() {
    // source line 64, bytecode pc 28
    return xs.Utils.parseIntSafe(this.playerType);
},
    getLevel: function() {
    // source line 69, bytecode pc 6
    return this.playerLevel;
},
    getPlayerNick: function() {
    // source line 74, bytecode pc 58
    return ((this.nickname.length > 8) ? (this.nickname.substring(0, 7) + "...") : this.nickname);
},
    getPlayerVipLevel: function() {
    // source line 79, bytecode pc 6
    return this.playerVipLevel;
},
    getRankName: function() {
    // source line 84, bytecode pc 6
    return this.rankName;
},
    isEnemy: function() {
    // source line 89, bytecode pc 20
    return ((this.m_bIsEnemy === 1) ? true : false);
},
    getGeneralId: function() {
    // source line 94, bytecode pc 6
    return this.generalId;
},
    getGeneralModel: function() {
    // source line 98, bytecode pc 39
    return xs.Models.General.createWithBase(this.getGeneralId());
},
    getFightSalary: function() {
    // source line 103, bytecode pc 6
    return this.fightSalary;
},
    setIsTop: function(bIsTop) {
    // source line 107, bytecode pc 9
    (this.bIsTop = bIsTop);
},
    isSelf: function() {
    // source line 111, bytecode pc 6
    return this.bIsSelf;
},
    isTop: function() {
    // source line 115, bytecode pc 6
    return this.bIsTop;
},
    isCanChallenge: function() {
    // source line 120, bytecode pc 6
    return this.beAttackEnable;
},
    getProbability: function() {
    // source line 124, bytecode pc 6
    return this.chaosProbability;
},
    createCardView: function() {
    var _ret;
    // source line 130, bytecode pc 34
    (_ret = xs.Views.Card.OtherPlayer.create());
    // source line 131, bytecode pc 51
    _ret.reloadData_Ladder(this);
    // source line 133, bytecode pc 55
    return _ret;
},
    createCardView_Chart: function() {
    var _ret;
    // source line 138, bytecode pc 34
    (_ret = xs.Views.Card.OtherPlayer.create());
    // source line 139, bytecode pc 51
    _ret.reloadData_Chart(this);
    // source line 141, bytecode pc 55
    return _ret;
}
}));
// source line 146, bytecode pc 269
(xs.Models.OtherPlayerInfo.create = function(json) {
    var ret;
    // source line 147, bytecode pc 23
    (ret = new xs.Models.OtherPlayerInfo());
    if ((ret && ret.init(json))) {
        // source line 149, bytecode pc 59
        return ret;
    }
    // source line 151, bytecode pc 61
    return null;
});
