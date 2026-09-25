// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/Feast.js:1
// source line 7, bytecode pc 41
(xs.Models.FeastItem = (xs.Models.FeastItem || function() {
    // source line 9, bytecode pc 11
    (this.name = "xs.Models.FeastItem");
    // source line 11, bytecode pc 33
    (this.log = xs.Debug.emptyFunc);
    // source line 12, bytecode pc 55
    (this.dump = xs.Debug.emptyFunc);
    // source line 14, bytecode pc 67
    (this.loadJson = function(json) {
    // source line 16, bytecode pc 22
    this.dump("loadJson", json);
    // source line 29, bytecode pc 37
    (this.m_time_offset = json.offset);
    // source line 30, bytecode pc 74
    (this.m_time_length = xs.Utils.parseIntSafe(json.length));
    // source line 31, bytecode pc 89
    (this.m_time_flag = json.can_receive);
    // source line 35, bytecode pc 117
    (this.m_time_begin = new Date().getTime());
    // source line 37, bytecode pc 125
    (this.m_bEatAble = false);
});
    // source line 41, bytecode pc 79
    (this.isIgnore = function() {
    var _ret;
    // source line 42, bytecode pc 11
    (_ret = (this.m_time_flag === false));
    // source line 44, bytecode pc 34
    this.log("是不是还有吃到的可能性？", _ret);
    // source line 46, bytecode pc 38
    return _ret;
});
    // source line 49, bytecode pc 91
    (this.isEatAble = function() {
    var _ret;
    if (this.isIgnore()) {
        // source line 55, bytecode pc 25
        (_ret = false);
        // source line 56, bytecode pc 44
        this.log("吃到的可能已经没有了");
    }
    if ((_ret !== false)) {
        // source line 61, bytecode pc 64
        (_ret = this.m_bEatAble);
        // source line 62, bytecode pc 87
        this.log(("吃到的可能还有，现在可以吃吗？" + _ret));
    }
    // source line 65, bytecode pc 91
    return _ret;
});
    // source line 69, bytecode pc 103
    (this.schedule_update = function() {
    var _time_now, _offset, _begin, _end;
    if (this.isIgnore()) {
        // source line 73, bytecode pc 18
        return void 0;
    }
    // source line 76, bytecode pc 43
    (_time_now = new Date().getTime());
    // source line 78, bytecode pc 61
    (_offset = ((_time_now - this.m_time_begin) / 1000));
    // source line 80, bytecode pc 71
    (_begin = this.m_time_offset);
    // source line 81, bytecode pc 88
    (_end = (this.m_time_offset + this.m_time_length));
    if (((_offset > _begin) && (_offset < _end))) {
        // source line 94, bytecode pc 132
        this.log("吃鸡活动开始了");
        // source line 95, bytecode pc 140
        (this.m_bEatAble = true);
    } else {
        // source line 100, bytecode pc 184
        this.log((("吃鸡活动还有：" + ((this.m_time_offset - _offset) / 60)) + "分钟后开始"));
        // source line 101, bytecode pc 192
        (this.m_bEatAble = false);
    }
});
}));
// source line 191, bytecode pc 155
(xs.Models.Feast = cc.Class.extend({
    name: "xs.Models.Feast",
    init: function() {
    // source line 115, bytecode pc 11
    (this.m_feasts = []);
},
    loadJson: function(json) {
    var i;
    // source line 137, bytecode pc 4
    (i = 0);
    while ((i < json.length)) {
        if (!this.m_feasts[i]) {
            // source line 140, bytecode pc 57
            (this.m_feasts[i] = new xs.Models.FeastItem());
        }
        // source line 143, bytecode pc 87
        this.m_feasts[i].loadJson(json[i]);
        // source line 137, bytecode pc 101
        (i = (+i + 1));
    }
    // source line 153, bytecode pc 135
    (this.m_num = json.length);
    // source line 156, bytecode pc 148
    this.schedule_update_all();
},
    isFeastOpen: function() {
    // source line 162, bytecode pc 13
    return (this.m_feasts.length >= 1);
},
    isEatAble: function() {
    var _ret, i;
    if (!this.isFeastOpen()) {
        // source line 170, bytecode pc 19
        return false;
    }
    // source line 173, bytecode pc 24
    (_ret = false);
    // source line 174, bytecode pc 29
    (i = 0);
    while ((i < this.m_feasts.length)) {
        if (this.m_feasts[i].isEatAble()) {
            // source line 176, bytecode pc 66
            (_ret = true);
            break;
        }
        // source line 174, bytecode pc 85
        (i = (+i + 1));
    }
    // source line 180, bytecode pc 111
    return _ret;
},
    getNum: function() {
    // source line 187, bytecode pc 11
    return this.m_feasts.length;
},
    schedule_update_all: function() {
    var i;
    // source line 192, bytecode pc 4
    (i = 0);
    while ((i < this.m_num)) {
        // source line 193, bytecode pc 32
        this.m_feasts[i].schedule_update();
        // source line 192, bytecode pc 46
        (i = (+i + 1));
    }
}
}));
// source line 198, bytecode pc 181
(xs.Models.Feast.create = function() {
    var _ret;
    // source line 199, bytecode pc 23
    (_ret = new xs.Models.Feast());
    // source line 200, bytecode pc 38
    _ret.init();
    // source line 201, bytecode pc 42
    return _ret;
});
// source line 310, bytecode pc 395
(xs.Models.Tiger = cc.Class.extend({
    name: "xs.Models.Tiger",
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    init: function() {
},
    loadJson: function(json, params) {
    var m_isTime;
    // source line 220, bytecode pc 4
    (m_isTime = true);
    if (params) {
        // source line 222, bytecode pc 24
        (m_isTime = params.isTime);
    }
    // source line 227, bytecode pc 39
    (this.m_instanceId = json.instance_id);
    if (m_isTime) {
        // source line 229, bytecode pc 91
        (this.m_timeLeft = (xs.Utils.parseIntSafe(json.left_time) || 0));
    }
    // source line 233, bytecode pc 113
    (this.m_needGold = (json.need_gold || 0));
    // source line 234, bytecode pc 135
    (this.m_leftChance = (json.left_chance || 0));
    // source line 235, bytecode pc 150
    (this.m_canReceive = json.can_receive);
    if (json.activity_day) {
        // source line 237, bytecode pc 178
        (this.m_activityDay = json.activity_day);
    }
    // source line 243, bytecode pc 206
    (this.m_time_begin = new Date().getTime());
    // source line 244, bytecode pc 214
    (this.m_bEatAble = true);
    // source line 250, bytecode pc 227
    this.schedule_update_all();
},
    activityDay: function() {
    // source line 255, bytecode pc 17
    return (this.m_activityDay || "0");
},
    isAble: function() {
    // source line 263, bytecode pc 12
    return this.isOpen();
},
    isOpen: function() {
    // source line 268, bytecode pc 22
    return ((this.m_leftChance > 0) && (this.m_timeLeft > 0));
},
    instanceId: function() {
    // source line 272, bytecode pc 6
    return this.m_instanceId;
},
    needGold: function() {
    // source line 276, bytecode pc 6
    return this.m_needGold;
},
    leftChance: function() {
    // source line 280, bytecode pc 6
    return this.m_leftChance;
},
    getIsDraw: function() {
    var isChance;
    // source line 292, bytecode pc 82
    (isChance = ((this.m_needGold < xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerYuanBao()) && (this.m_leftChance > 0)));
    // source line 294, bytecode pc 98
    return (isChance ? 1 : 0);
},
    presentTime: function() {
    var _time_now, _offset;
    // source line 298, bytecode pc 24
    (_time_now = new Date().getTime());
    // source line 300, bytecode pc 42
    (_offset = ((_time_now - this.m_time_begin) / 1000));
    // source line 303, bytecode pc 59
    (this.m_timeLeft = (this.m_timeLeft - _offset));
    if ((this.m_timeLeft > 0)) {
        // source line 305, bytecode pc 79
        return this.m_timeLeft;
    }
    // source line 307, bytecode pc 81
    return 0;
},
    schedule_update_all: function() {
}
}));
// source line 316, bytecode pc 421
(xs.Models.Tiger.create = function() {
    var _ret;
    // source line 317, bytecode pc 23
    (_ret = new xs.Models.Tiger());
    // source line 318, bytecode pc 38
    _ret.init();
    // source line 319, bytecode pc 42
    return _ret;
});
// source line 392, bytecode pc 605
(xs.Models.Exchange = cc.Class.extend({
    name: "xs.Models.Exchange",
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    init: function() {
},
    loadJson: function(json, params) {
    if (json) {
        // source line 335, bytecode pc 16
        (json = json[0]);
        if (json) {
            // source line 339, bytecode pc 62
            (this.m_instanceId = (json.instance_id ? json.instance_id : ""));
            // source line 340, bytecode pc 100
            (this.m_exchange_id = (json.exchange_id ? json.exchange_id : ""));
            // source line 341, bytecode pc 138
            (this.m_instance_bg = (json.instance_bg ? json.instance_bg : ""));
            // source line 342, bytecode pc 176
            (this.m_instance_interval = (json.instance_interval ? json.instance_interval : ""));
            // source line 343, bytecode pc 214
            (this.m_instance_countdown = (json.instance_countdown ? json.instance_countdown : ""));
            // source line 344, bytecode pc 252
            (this.m_reward_list = (json.reward_list ? json.reward_list : ""));
        }
    }
    // source line 349, bytecode pc 280
    (this.m_time_begin = new Date().getTime());
    // source line 351, bytecode pc 293
    this.schedule_update_all();
},
    getInstanceId: function() {
    // source line 355, bytecode pc 6
    return this.m_instanceId;
},
    getInstanceBg: function() {
    // source line 359, bytecode pc 6
    return this.m_instance_bg;
},
    getRewardList: function() {
    // source line 362, bytecode pc 6
    return this.m_reward_list;
},
    isStartTime: function() {
    if (this.m_instance_interval) {
        // source line 367, bytecode pc 24
        return (this.m_instance_countdown <= this.m_instance_interval);
    }
    // source line 370, bytecode pc 26
    return false;
},
    getContinueTime: function() {
    // source line 375, bytecode pc 6
    return this.m_instance_interval;
},
    getPresentTime: function() {
    var _time_now, m_time, _offset;
    // source line 379, bytecode pc 24
    (_time_now = new Date().getTime());
    // source line 380, bytecode pc 34
    (m_time = this.m_instance_countdown);
    // source line 382, bytecode pc 52
    (_offset = ((_time_now - this.m_time_begin) / 1000));
    // source line 384, bytecode pc 80
    (m_time = (m_time - Math.round(_offset)));
    if ((m_time > 0)) {
        // source line 387, bytecode pc 94
        return m_time;
    }
    // source line 389, bytecode pc 96
    return 0;
},
    schedule_update_all: function() {
}
}));
// source line 398, bytecode pc 631
(xs.Models.Exchange.create = function() {
    var _ret;
    // source line 399, bytecode pc 23
    (_ret = new xs.Models.Exchange());
    // source line 400, bytecode pc 38
    _ret.init();
    // source line 401, bytecode pc 42
    return _ret;
});
// source line 496, bytecode pc 835
(xs.Models.Wishin = cc.Class.extend({
    name: "xs.Models.Wishin",
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    init: function() {
},
    loadJson: function(json, params) {
    var i;
    // source line 419, bytecode pc 7
    (this.m_isPlay = false);
    // source line 421, bytecode pc 29
    (this.m_isPlay = (json.can_play || false));
    // source line 422, bytecode pc 55
    (this.m_generalList = (json.wish_list || []));
    // source line 423, bytecode pc 77
    (this.m_isFree = (json.wish_free || false));
    // source line 424, bytecode pc 89
    (this.m_generaMode = []);
    // source line 425, bytecode pc 101
    (this.m_generaGoalMode = []);
    // source line 426, bytecode pc 113
    (this.m_generaSayMode = []);
    // source line 427, bytecode pc 125
    (this.m_isEnableList = []);
    // source line 429, bytecode pc 130
    (i = 0);
    while ((i < this.m_generalList.length)) {
        // source line 430, bytecode pc 197
        this.m_generaMode.push(xs.Models.General.createWithBase(this.m_generalList[i].general_id));
        // source line 429, bytecode pc 211
        (i = (+i + 1));
    }
    // source line 433, bytecode pc 238
    (i = 0);
    while ((i < this.m_generalList.length)) {
        // source line 434, bytecode pc 305
        this.m_generaGoalMode.push(xs.Models.GeneralSoul.createWithBase(this.m_generalList[i].wish_general_id));
        // source line 433, bytecode pc 319
        (i = (+i + 1));
    }
    // source line 437, bytecode pc 346
    (i = 0);
    while ((i < this.m_generalList.length)) {
        // source line 438, bytecode pc 386
        this.m_generaSayMode.push(this.m_generalList[i].wish_desc);
        // source line 437, bytecode pc 400
        (i = (+i + 1));
    }
    // source line 441, bytecode pc 427
    (i = 0);
    while ((i < this.m_generalList.length)) {
        // source line 442, bytecode pc 467
        this.m_isEnableList.push(this.m_generalList[i].wish_enable);
        // source line 441, bytecode pc 481
        (i = (+i + 1));
    }
},
    getIsFree: function() {
    // source line 459, bytecode pc 6
    return this.m_isFree;
},
    getGeneras: function() {
    // source line 463, bytecode pc 6
    return this.m_generaMode;
},
    getGeneraGoals: function() {
    // source line 467, bytecode pc 6
    return this.m_generaGoalMode;
},
    getGeneraSays: function() {
    // source line 471, bytecode pc 6
    return this.m_generaSayMode;
},
    getEnables: function() {
    // source line 475, bytecode pc 6
    return this.m_isEnableList;
},
    isAble: function() {
    // source line 483, bytecode pc 12
    return this.isOpen();
},
    isPlay: function() {
    // source line 487, bytecode pc 6
    return this.m_isPlay;
},
    isOpen: function() {
    // source line 492, bytecode pc 1
    return true;
},
    schedule_update_all: function() {
}
}));
// source line 502, bytecode pc 861
(xs.Models.Wishin.create = function() {
    var _ret;
    // source line 503, bytecode pc 23
    (_ret = new xs.Models.Wishin());
    // source line 504, bytecode pc 38
    _ret.init();
    // source line 505, bytecode pc 42
    return _ret;
});
// source line 551, bytecode pc 1025
(xs.Models.EvolutionChest = cc.Class.extend({
    name: "xs.Models.EvolutionChest",
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    init: function() {
},
    loadJson: function(json, params) {
    // source line 523, bytecode pc 7
    (this.m_result = false);
    // source line 525, bytecode pc 29
    (this.m_result = (json.result || false));
    // source line 526, bytecode pc 55
    (this.m_chest_list = (json.chest_list || []));
    // source line 527, bytecode pc 77
    (this.m_free_times = (json.free_times || 0));
    // source line 528, bytecode pc 99
    (this.m_refresh_times = (json.refresh_times || 0));
    // source line 529, bytecode pc 121
    (this.m_open_times = (json.open_times || 0));
    // source line 530, bytecode pc 143
    (this.m_free_refresh_times = (json.free_refresh_times || 0));
    // source line 531, bytecode pc 169
    (this.m_cost = (json.cost || []));
},
    getResult: function() {
    // source line 536, bytecode pc 6
    return this.m_result;
},
    getChestList: function() {
    // source line 540, bytecode pc 6
    return this.m_chest_list;
},
    getFreeTimes: function() {
    // source line 544, bytecode pc 6
    return this.m_free_times;
},
    getRefreshTiems: function() {
    // source line 548, bytecode pc 6
    return this.m_refresh_times;
},
    getOpenTimes: function() {
    // source line 552, bytecode pc 6
    return this.m_open_times;
}
}));
// source line 557, bytecode pc 1051
(xs.Models.EvolutionChest.create = function() {
    var _ret;
    // source line 558, bytecode pc 23
    (_ret = new xs.Models.EvolutionChest());
    // source line 559, bytecode pc 38
    _ret.init();
    // source line 560, bytecode pc 42
    return _ret;
});
// source line 564, bytecode pc 1093
(xs.Models.CopyFestivalInfo = (xs.Models.CopyFestivalInfo || function() {
    // source line 565, bytecode pc 11
    (this.name = "xs.Models.CopyFestivalInfo");
    // source line 567, bytecode pc 33
    (this.log = xs.Debug.emptyFunc);
    // source line 568, bytecode pc 55
    (this.dump = xs.Debug.emptyFunc);
    // source line 570, bytecode pc 67
    (this.loadJson = function(json) {
    // source line 572, bytecode pc 22
    this.dump("loadJson", json);
    // source line 574, bytecode pc 37
    (this.m_user_id = json.user_id);
    // source line 575, bytecode pc 52
    (this.m_free_times = json.free_times);
    // source line 576, bytecode pc 67
    (this.m_extra_times = json.extra_times);
    // source line 577, bytecode pc 82
    (this.m_refresh_date = json.refresh_date);
});
}));
// source line 583, bytecode pc 1135
(xs.Models.CopyBossInfo = (xs.Models.CopyBossInfo || function() {
    // source line 584, bytecode pc 11
    (this.name = "xs.Models.CopyBossInfo");
    // source line 586, bytecode pc 33
    (this.log = xs.Debug.emptyFunc);
    // source line 587, bytecode pc 55
    (this.dump = xs.Debug.emptyFunc);
    // source line 589, bytecode pc 67
    (this.loadJson = function(json) {
    // source line 591, bytecode pc 22
    this.dump("loadJson", json);
    // source line 593, bytecode pc 37
    (this.m_boss_id = json.boss_id);
    // source line 594, bytecode pc 52
    (this.m_boss_name = json.boss_name);
    // source line 595, bytecode pc 67
    (this.m_boss_weapon_effect = json.boss_weapon_effect);
    // source line 596, bytecode pc 82
    (this.m_boss_card = json.boss_card);
    // source line 597, bytecode pc 97
    (this.m_boss_sex = json.boss_sex);
    // source line 598, bytecode pc 112
    (this.m_boss_hp = json.boss_hp);
    // source line 599, bytecode pc 127
    (this.m_boss_hp_step = json.boss_hp_step);
    // source line 600, bytecode pc 142
    (this.m_boss_attack = json.boss_attack);
    // source line 601, bytecode pc 157
    (this.m_boss_attack_step = json.boss_attack_step);
    // source line 602, bytecode pc 172
    (this.m_boss_defense = json.boss_defense);
    // source line 603, bytecode pc 187
    (this.m_boss_defense_step = json.boss_defense_step);
    // source line 604, bytecode pc 202
    (this.m_boss_wisdom = json.boss_wisdom);
    // source line 607, bytecode pc 217
    (this.m_boss_wisdom_step = json.boss_wisdom_step);
    // source line 608, bytecode pc 232
    (this.m_boss_general_exp = json.boss_general_exp);
    // source line 609, bytecode pc 247
    (this.m_boss_coin = json.boss_coin);
    // source line 611, bytecode pc 262
    (this.m_boss_power = json.boss_power);
    // source line 612, bytecode pc 277
    (this.m_skill_list = json.skill_list);
    // source line 613, bytecode pc 292
    (this.m_is_boss = json.is_boss);
});
}));
// source line 619, bytecode pc 1177
(xs.Models.CopyAwardInfo = (xs.Models.CopyAwardInfo || function() {
    // source line 620, bytecode pc 11
    (this.name = "xs.Models.CopyAwardInfo");
    // source line 622, bytecode pc 33
    (this.log = xs.Debug.emptyFunc);
    // source line 623, bytecode pc 55
    (this.dump = xs.Debug.emptyFunc);
    // source line 625, bytecode pc 67
    (this.loadJson = function(json) {
    // source line 627, bytecode pc 22
    this.dump("loadJson", json);
    // source line 629, bytecode pc 37
    (this.m_conf_id = json.conf_id);
    // source line 630, bytecode pc 52
    (this.m_boss_id = json.boss_id);
    // source line 631, bytecode pc 67
    (this.m_round_award = json.round_award);
    // source line 632, bytecode pc 82
    (this.m_kill_award = json.kill_award);
    // source line 633, bytecode pc 97
    (this.m_first_kill_award = json.first_kill_award);
    // source line 634, bytecode pc 112
    (this.m_server_award = json.server_award);
});
}));
// source line 706, bytecode pc 1341
(xs.Models.Copy = cc.Class.extend({
    name: "xs.Models.Copy",
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    init: function() {
},
    loadJson: function(json, params) {
    // source line 652, bytecode pc 26
    xs.dump("mjson", json);
    // source line 656, bytecode pc 34
    (this.m_result = false);
    // source line 658, bytecode pc 56
    (this.m_result = (json.result || false));
    // source line 682, bytecode pc 76
    (this.m_festival_info = json.festival.festival_info);
    // source line 683, bytecode pc 96
    (this.m_boss_info = json.festival.boss_info);
    // source line 684, bytecode pc 116
    (this.m_award_info = json.festival.award_info);
    // source line 686, bytecode pc 136
    (this.m_kill_info = json.festival.kill_info);
},
    getResult: function() {
    // source line 691, bytecode pc 6
    return this.m_result;
},
    getFestivalInfo: function() {
    // source line 695, bytecode pc 6
    return this.m_festival_info;
},
    getBossInfo: function() {
    // source line 699, bytecode pc 6
    return this.m_boss_info;
},
    getAwardInfo: function() {
    // source line 703, bytecode pc 6
    return this.m_award_info;
},
    getKillInfo: function() {
    // source line 707, bytecode pc 6
    return this.m_kill_info;
}
}));
// source line 712, bytecode pc 1367
(xs.Models.Copy.create = function() {
    var _ret;
    // source line 713, bytecode pc 23
    (_ret = new xs.Models.Copy());
    // source line 714, bytecode pc 38
    _ret.init();
    // source line 715, bytecode pc 42
    return _ret;
});
// source line 770, bytecode pc 1551
(xs.Models.Beauty = cc.Class.extend({
    name: "xs.Models.Beauty",
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    init: function() {
},
    loadJson: function(json, params) {
    // source line 730, bytecode pc 26
    xs.dump("Beauty", json);
    // source line 734, bytecode pc 34
    (this.m_result = false);
    // source line 736, bytecode pc 56
    (this.m_result = (json.result || false));
    // source line 738, bytecode pc 71
    (this.m_beauty = json.beauty);
    // source line 739, bytecode pc 91
    (this.m_beauty_info = json.beauty.beauty_info);
    // source line 740, bytecode pc 111
    (this.m_beauty_record = json.beauty.beauty_record);
    // source line 741, bytecode pc 131
    (this.m_user_beauty_info = json.beauty.user_beauty_info);
    // source line 742, bytecode pc 151
    (this.m_talent_info = json.beauty.talent_info);
    // source line 743, bytecode pc 166
    (this.m_cmn = json.cmn);
},
    getResult: function() {
    // source line 748, bytecode pc 6
    return this.m_result;
},
    getBeauty: function() {
    // source line 752, bytecode pc 6
    return this.m_beauty;
},
    getCmn: function() {
    // source line 756, bytecode pc 6
    return this.m_cmn;
},
    getBeautyInfo: function() {
    // source line 760, bytecode pc 6
    return this.m_beauty_info;
},
    getBeautyRecord: function() {
    // source line 764, bytecode pc 6
    return this.m_beauty_record;
},
    getUserBeautyInfo: function() {
    // source line 767, bytecode pc 6
    return this.m_user_beauty_info;
},
    getTalentInfo: function() {
    // source line 771, bytecode pc 6
    return this.m_talent_info;
}
}));
// source line 776, bytecode pc 1577
(xs.Models.Beauty.create = function() {
    var _ret;
    // source line 777, bytecode pc 23
    (_ret = new xs.Models.Beauty());
    // source line 778, bytecode pc 38
    _ret.init();
    // source line 779, bytecode pc 42
    return _ret;
});
