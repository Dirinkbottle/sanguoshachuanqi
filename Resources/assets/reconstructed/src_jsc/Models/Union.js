// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/Union.js:1
// source line 179, bytecode pc 249
(xs.Models.Union = xs.Models.Base.extend({
    name: "xs.Models.Union",
    Cfg: {},
    init: function() {
    var caches;
    // source line 21, bytecode pc 12
    this._super();
    // source line 23, bytecode pc 20
    (this.union_id = 0);
    // source line 24, bytecode pc 32
    (this.union_name = "");
    // source line 25, bytecode pc 40
    (this.union_level = 0);
    // source line 26, bytecode pc 52
    (this.leader_nickname = "");
    // source line 27, bytecode pc 60
    (this.level_union_exp = 0);
    // source line 28, bytecode pc 68
    (this.level_up_exp = 0);
    // source line 29, bytecode pc 76
    (this.union_fightPoint = 0);
    // source line 30, bytecode pc 84
    (this.rank = 0);
    // source line 31, bytecode pc 92
    (this.user_num = 0);
    // source line 32, bytecode pc 100
    (this.user_limit = 0);
    // source line 33, bytecode pc 112
    (this.notice = "");
    // source line 34, bytecode pc 124
    (this.union_sign = "");
    // source line 36, bytecode pc 136
    (this.union_log = []);
    // source line 37, bytecode pc 148
    (this.donnation_log = []);
    // source line 41, bytecode pc 192
    (this._notifyCenter[xs.Constant_Notify_ModelChange_UnionInfo] = xs.Utils.Notify.create());
    // source line 44, bytecode pc 210
    (caches = [ "cacheUnionUpgradeCfg" ]);
    // source line 47, bytecode pc 227
    this.registerCaches(caches);
},
    loadJson: function(data) {
    var unionInfo;
    if (data.union_info) {
        // source line 53, bytecode pc 24
        (unionInfo = data.union_info);
        // source line 54, bytecode pc 61
        (this.union_id = xs.Utils.parseIntSafe(unionInfo.union_id));
        // source line 55, bytecode pc 98
        (this.union_name = xs.Utils.parseStringSafe(unionInfo.union_name));
        // source line 56, bytecode pc 135
        (this.union_level = xs.Utils.parseIntSafe(unionInfo.union_level));
        // source line 57, bytecode pc 172
        (this.leader_nickname = xs.Utils.parseStringSafe(unionInfo.leader_nickname));
        // source line 58, bytecode pc 209
        (this.level_union_exp = xs.Utils.parseIntSafe(unionInfo.level_union_exp));
        // source line 59, bytecode pc 246
        (this.level_up_exp = xs.Utils.parseIntSafe(unionInfo.level_up_exp));
        // source line 60, bytecode pc 283
        (this.rank = xs.Utils.parseIntSafe(unionInfo.rank));
        // source line 61, bytecode pc 320
        (this.user_num = xs.Utils.parseIntSafe(unionInfo.user_num));
        // source line 62, bytecode pc 357
        (this.user_limit = xs.Utils.parseIntSafe(unionInfo.user_limit));
        // source line 63, bytecode pc 394
        (this.notice = xs.Utils.parseStringSafe(unionInfo.notice));
        // source line 64, bytecode pc 431
        (this.union_sign = xs.Utils.parseStringSafe(unionInfo.union_sign));
        // source line 65, bytecode pc 468
        (this.union_fightPoint = xs.Utils.parseIntSafe(unionInfo.union_fightPoint));
    }
    if (data.union_log) {
        // source line 70, bytecode pc 496
        (this.union_log = data.union_log);
    }
    // source line 73, bytecode pc 509
    this.clearCache();
    // source line 74, bytecode pc 511
    return true;
},
    safeUpdate: function(data) {
    var unionInfo;
    if (data.union_info) {
        // source line 79, bytecode pc 24
        (unionInfo = data.union_info);
        // source line 80, bytecode pc 73
        (this.union_id = xs.Utils.parseIntSafe((unionInfo.union_id || this.union_id)));
        // source line 81, bytecode pc 122
        (this.union_name = xs.Utils.parseStringSafe((unionInfo.union_name || this.union_name)));
        // source line 82, bytecode pc 171
        (this.union_level = xs.Utils.parseIntSafe((unionInfo.union_level || this.union_level)));
        // source line 83, bytecode pc 220
        (this.leader_nickname = xs.Utils.parseStringSafe((unionInfo.leader_nickname || this.leader_nickname)));
        // source line 84, bytecode pc 269
        (this.level_union_exp = xs.Utils.parseIntSafe((unionInfo.level_union_exp || this.level_union_exp)));
        // source line 85, bytecode pc 318
        (this.level_up_exp = xs.Utils.parseIntSafe((unionInfo.level_up_exp || this.level_up_exp)));
        // source line 86, bytecode pc 367
        (this.rank = xs.Utils.parseIntSafe((unionInfo.rank || this.rank)));
        // source line 87, bytecode pc 416
        (this.user_num = xs.Utils.parseIntSafe((unionInfo.user_num || this.user_num)));
        // source line 88, bytecode pc 465
        (this.user_limit = xs.Utils.parseIntSafe((unionInfo.user_limit || this.user_limit)));
        // source line 89, bytecode pc 514
        (this.notice = xs.Utils.parseStringSafe((unionInfo.notice || this.notice)));
        // source line 90, bytecode pc 563
        (this.union_sign = xs.Utils.parseStringSafe((unionInfo.union_sign || this.union_sign)));
        // source line 91, bytecode pc 612
        (this.union_fightPoint = xs.Utils.parseIntSafe((unionInfo.union_fightPoint || this.union_fightPoint)));
    }
    if (data.union_log) {
        // source line 95, bytecode pc 640
        (this.union_log = data.union_log);
    }
},
    clearUnionInfo: function() {
    // source line 102, bytecode pc 7
    (this.union_id = 0);
    // source line 103, bytecode pc 19
    (this.union_name = "");
    // source line 104, bytecode pc 27
    (this.union_level = 0);
    // source line 105, bytecode pc 39
    (this.leader_nickname = "");
    // source line 106, bytecode pc 47
    (this.level_union_exp = 0);
    // source line 107, bytecode pc 55
    (this.level_up_exp = 0);
    // source line 108, bytecode pc 63
    (this.union_fightPoint = 0);
    // source line 109, bytecode pc 71
    (this.rank = 0);
    // source line 110, bytecode pc 79
    (this.user_num = 0);
    // source line 111, bytecode pc 87
    (this.user_limit = 0);
    // source line 112, bytecode pc 99
    (this.notice = "");
    // source line 113, bytecode pc 111
    (this.union_sign = "");
},
    getUnionId: function() {
    // source line 118, bytecode pc 6
    return this.union_id;
},
    getUnionName: function() {
    // source line 122, bytecode pc 6
    return this.union_name;
},
    getUnionLevel: function() {
    // source line 127, bytecode pc 6
    return this.union_level;
},
    getLeaderNickname: function() {
    // source line 132, bytecode pc 58
    return ((this.leader_nickname.length > 8) ? (this.leader_nickname.substring(0, 7) + "...") : this.leader_nickname);
},
    getUnionExp: function() {
    // source line 137, bytecode pc 6
    return this.level_union_exp;
},
    getUnionLevelUpExp: function() {
    // source line 142, bytecode pc 6
    return this.level_up_exp;
},
    getUnionFightPoint: function() {
    // source line 147, bytecode pc 6
    return this.union_fightPoint;
},
    getUnionRank: function() {
    // source line 152, bytecode pc 6
    return this.rank;
},
    chgMemberNum: function(chgNum) {
    // source line 157, bytecode pc 16
    (this.user_num = (this.user_num + chgNum));
},
    getUserNum: function() {
    // source line 161, bytecode pc 6
    return this.user_num;
},
    getUserLimit: function() {
    // source line 165, bytecode pc 6
    return this.user_limit;
},
    getUnionSign: function() {
    // source line 170, bytecode pc 6
    return this.union_sign;
},
    getNotice: function() {
    // source line 175, bytecode pc 6
    return this.notice;
},
    getUnionLog: function() {
    // source line 180, bytecode pc 6
    return this.union_log;
}
}));
// source line 184, bytecode pc 271
(xs.Models.Union.s_instance = null);
// source line 186, bytecode pc 297
(xs.Models.Union.create = function() {
    var union;
    // source line 187, bytecode pc 23
    (union = new xs.Models.Union());
    if (!union.init()) {
        // source line 189, bytecode pc 45
        return null;
    }
    // source line 192, bytecode pc 49
    return union;
});
// source line 195, bytecode pc 323
(xs.Models.Union.getInstance = function() {
    // source line 196, bytecode pc 18
    this.error("xs.Models.Union.getInstance will be delete");
    if (!xs.Models.Union.s_instance) {
        // source line 198, bytecode pc 85
        (xs.Models.Union.s_instance = new xs.Models.Union());
        // source line 199, bytecode pc 117
        xs.Models.Union.s_instance.init();
    }
    // source line 201, bytecode pc 138
    return xs.Models.Union.s_instance;
});
// source line 204, bytecode pc 349
(xs.Models.Union.purgeInstance = function() {
    if (xs.Models.Union.s_instance) {
        // source line 206, bytecode pc 46
        (xs.Models.Union.s_instance = null);
    }
});
