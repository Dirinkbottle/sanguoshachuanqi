// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/UnionMember.js:1
// source line 145, bytecode pc 249
(xs.Models.UnionMember = xs.Models.Base.extend({
    name: "xs.Models.UnionMember",
    Cfg: {},
    init: function() {
    // source line 14, bytecode pc 12
    this._super();
    // source line 16, bytecode pc 24
    (this.user_id = "");
    // source line 17, bytecode pc 32
    (this.unionLevel = 0);
    // source line 18, bytecode pc 40
    (this.vipLevel = 0);
    // source line 19, bytecode pc 48
    (this.fightPoint = 0);
    // source line 20, bytecode pc 56
    (this.ladderRank = 0);
    // source line 21, bytecode pc 64
    (this.donationState = 0);
    // source line 23, bytecode pc 66
    return true;
},
    loadJson: function(userInfo) {
    // source line 28, bytecode pc 25
    (this.user_id = (userInfo.user_id || ""));
    // source line 29, bytecode pc 48
    (this.user_role = (userInfo.user_role || 3));
    // source line 30, bytecode pc 70
    (this.vipLevel = (userInfo.user_vip_level || 0));
    // source line 31, bytecode pc 94
    (this.fightPoint = (userInfo.fightPoint || 999));
    // source line 32, bytecode pc 118
    (this.ladderRank = (userInfo.ladder_rank || 999));
    // source line 33, bytecode pc 140
    (this.donationState = (userInfo.donationState || false));
    // source line 34, bytecode pc 193
    (this.name = (userInfo.user_nickname || xs.Tools.String.createString("auto_name_36")));
    // source line 35, bytecode pc 215
    (this.playerLevel = (userInfo.user_level || 1));
    // source line 36, bytecode pc 237
    (this.user_donate = (userInfo.user_donate || 0));
    // source line 37, bytecode pc 259
    (this.user_last_login_time = (userInfo.user_last_login_time || 1));
    // source line 38, bytecode pc 281
    (this.today_donate_num = (userInfo.today_donate_num || 0));
    // source line 39, bytecode pc 303
    (this.today_donate_type = (userInfo.today_donate_type || 1));
    // source line 40, bytecode pc 325
    (this.unionWarApply = (userInfo.union_war_sign_up || false));
    // source line 41, bytecode pc 347
    (this.active = (userInfo.active || 0));
    // source line 42, bytecode pc 369
    (this.uw_join_times = (userInfo.uw_join_times || 0));
    // source line 43, bytecode pc 382
    this.clearCache();
    // source line 44, bytecode pc 384
    return true;
},
    _getServerTime: function() {
    var myDate, mTime, offTime;
    // source line 50, bytecode pc 13
    (myDate = new Date());
    // source line 51, bytecode pc 35
    (mTime = (myDate.getTime() / 1000));
    // source line 54, bytecode pc 53
    (offTime = (mTime - xs.sinfo_local_time));
    // source line 56, bytecode pc 68
    return (xs.sinfo_server_time + offTime);
},
    getLogonTimeTypeToString: function() {
    var leaveTime, m_time;
    // source line 62, bytecode pc 22
    (leaveTime = (this._getServerTime() - this.user_last_login_time));
    if ((leaveTime < 3600)) {
        // source line 68, bytecode pc 67
        return xs.Tools.String.createString("auto_name_37");
    } else {
        if ((leaveTime < 86400)) {
            // source line 71, bytecode pc 118
            return xs.Tools.String.createString("auto_name_38");
        } else {
            if ((leaveTime < 604800)) {
                // source line 74, bytecode pc 165
                (m_time = parseInt(((leaveTime / 3600) / 24)));
                // source line 75, bytecode pc 235
                return ((xs.Tools.String.createString("auto_name_39") + m_time) + xs.Tools.String.createString("auto_name_40"));
            }
        }
    }
    // source line 79, bytecode pc 268
    return xs.Tools.String.createString("auto_name_41");
},
    getUserRole: function() {
    // source line 83, bytecode pc 6
    return this.user_role;
},
    getPlayerApply: function() {
    // source line 87, bytecode pc 6
    return this.unionWarApply;
},
    getUserRoleToString: function() {
    if ((this.user_role == 1)) {
        // source line 92, bytecode pc 45
        return xs.Tools.String.createString("auto_name_42");
    } else {
        if ((this.user_role == 2)) {
            // source line 95, bytecode pc 97
            return xs.Tools.String.createString("auto_name_43");
        }
    }
    // source line 98, bytecode pc 130
    return xs.Tools.String.createString("auto_name_44");
},
    getUserDonate: function() {
    // source line 102, bytecode pc 6
    return this.user_donate;
},
    getTodayDonateNum: function() {
    // source line 106, bytecode pc 6
    return this.today_donate_num;
},
    getTodayDonateType: function() {
    // source line 110, bytecode pc 6
    return this.today_donate_type;
},
    getTodayDonateTypeToString: function() {
    // source line 114, bytecode pc 29
    xs.log("ttt::", this.today_donate_type);
    if ((this.today_donate_type == 2)) {
        // source line 117, bytecode pc 76
        return xs.Tools.String.createString("auto_name_27");
    }
    // source line 120, bytecode pc 109
    return xs.Tools.String.createString("auto_name_45");
},
    getPlayerName: function() {
    // source line 124, bytecode pc 58
    return ((this.name.length > 8) ? (this.name.substring(0, 7) + "...") : this.name);
},
    getPlayerLevel: function() {
    // source line 128, bytecode pc 6
    return this.playerLevel;
},
    getVipLevel: function() {
    // source line 132, bytecode pc 6
    return this.vipLevel;
},
    getLadderRank: function() {
    // source line 136, bytecode pc 6
    return this.ladderRank;
},
    getUserId: function() {
    // source line 140, bytecode pc 6
    return this.user_id;
},
    getActive: function() {
    // source line 143, bytecode pc 6
    return this.active;
},
    getUnionJoinTimes: function() {
    // source line 146, bytecode pc 6
    return this.uw_join_times;
}
}));
// source line 151, bytecode pc 275
(xs.Models.UnionMember.createWithJson = function(data) {
    var unionMember;
    // source line 153, bytecode pc 23
    (unionMember = new xs.Models.UnionMember());
    if ((unionMember && unionMember.init())) {
        // source line 156, bytecode pc 70
        unionMember.loadJson(data);
        // source line 157, bytecode pc 74
        return unionMember;
    }
    // source line 159, bytecode pc 99
    xs.assert(false, "xs.Models.UnionMember.createWithJson failed");
    // source line 160, bytecode pc 101
    return null;
});
