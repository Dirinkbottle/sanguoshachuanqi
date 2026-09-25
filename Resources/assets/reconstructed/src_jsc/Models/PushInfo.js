// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/PushInfo.js:1
// source line 396, bytecode pc 389
(xs.Models.PushInfo = (xs.Models.PushInfo || xs.Models.Base.extend({
    name: "xs.Models.PushInfo",
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    init: function() {
    // source line 18, bytecode pc 12
    this._super();
    // source line 42, bytecode pc 20
    (this.m_climb = null);
    // source line 43, bytecode pc 28
    (this.m_training = null);
    // source line 44, bytecode pc 36
    (this.m_vipstore = null);
    // source line 45, bytecode pc 44
    (this.m_award = null);
    // source line 46, bytecode pc 52
    (this.wishingNum = 0);
    // source line 47, bytecode pc 60
    (this.m_worship = null);
    // source line 49, bytecode pc 68
    (this.gem_discount = null);
    // source line 51, bytecode pc 76
    (this.m_world_war = null);
    // source line 53, bytecode pc 84
    (this.m_ladderWar = null);
    // source line 54, bytecode pc 92
    (this.m_unionWarSignup = null);
    // source line 57, bytecode pc 125
    (this.m_party = xs.Models.Party.create());
    // source line 58, bytecode pc 158
    (this.m_feasts = xs.Models.Feast.create());
    // source line 60, bytecode pc 191
    (this.m_tiger = xs.Models.Tiger.create());
    // source line 61, bytecode pc 224
    (this.m_wishin = xs.Models.Wishin.create());
    // source line 62, bytecode pc 257
    (this.m_evolutionChest = xs.Models.EvolutionChest.create());
    // source line 63, bytecode pc 290
    (this.m_copy = xs.Models.Copy.create());
    // source line 64, bytecode pc 323
    (this.m_beauty = xs.Models.Beauty.create());
    // source line 66, bytecode pc 356
    (this.m_party_exchange = xs.Models.Exchange.create());
    // source line 76, bytecode pc 421
    xs.director.getScheduler().scheduleCallbackForTarget(this, function() {
    // source line 73, bytecode pc 12
    this.schedule_update_all();
}.bind(this.m_feasts), 60, -1);
},
    update: function(json) {
    var _flagChg;
    // source line 89, bytecode pc 4
    (_flagChg = false);
    if (json.climb) {
        // source line 92, bytecode pc 32
        (this.m_climb = json.climb);
        // source line 93, bytecode pc 37
        (_flagChg = true);
    }
    if (json.training) {
        // source line 96, bytecode pc 65
        (this.m_training = json.training);
        // source line 97, bytecode pc 70
        (_flagChg = true);
    }
    if (json.vipstore) {
        // source line 100, bytecode pc 98
        (this.m_vipstore = json.vipstore);
        // source line 101, bytecode pc 103
        (_flagChg = true);
    }
    if (json.party) {
        // source line 105, bytecode pc 143
        this.m_party.loadJson(json.party);
        // source line 106, bytecode pc 148
        (_flagChg = true);
    }
    if (json.activity_exchange) {
        // source line 110, bytecode pc 188
        this.m_party_exchange.loadJson(json.activity_exchange);
    }
    if (json.timing_power) {
        // source line 114, bytecode pc 228
        this.m_feasts.loadJson(json.timing_power);
        // source line 115, bytecode pc 233
        (_flagChg = true);
    }
    if (json.gamble) {
        // source line 119, bytecode pc 273
        this.m_tiger.loadJson(json.gamble);
    }
    if (json.ladderstore) {
        // source line 123, bytecode pc 301
        (this.ladderstore = json.ladderstore);
    }
    if (json.honorstore) {
        // source line 127, bytecode pc 329
        (this.honorstore = json.honorstore);
    }
    if (json.system_email) {
        // source line 131, bytecode pc 357
        (this.system_email = json.system_email);
        // source line 132, bytecode pc 362
        (_flagChg = true);
    }
    if (json.friend_email) {
        // source line 136, bytecode pc 390
        (this.friend_email = json.friend_email);
        // source line 137, bytecode pc 395
        (_flagChg = true);
    }
    if (json.gift_email) {
        // source line 141, bytecode pc 423
        (this.gift_email = json.gift_email);
        // source line 142, bytecode pc 428
        (_flagChg = true);
    }
    if (json.event_email) {
        // source line 146, bytecode pc 456
        (this.event_email = json.event_email);
        // source line 147, bytecode pc 461
        (_flagChg = true);
    }
    if (json.pay_email) {
        // source line 151, bytecode pc 489
        (this.pay_email = json.pay_email);
        // source line 152, bytecode pc 494
        (_flagChg = true);
    }
    if (json.wishing) {
        // source line 155, bytecode pc 527
        (this.wishingNum = json.wishing.num);
        // source line 156, bytecode pc 532
        (_flagChg = true);
    }
    if (json.union_donate) {
        // source line 159, bytecode pc 560
        (this.union_donate = json.union_donate);
        // source line 160, bytecode pc 565
        (_flagChg = true);
    }
    if (json.task) {
        // source line 163, bytecode pc 593
        (this.task = json.task);
    }
    if (json.depot_num) {
        // source line 166, bytecode pc 621
        (this.depot_num = json.depot_num);
        // source line 167, bytecode pc 656
        xs.log("get depot", this.depot_num.num);
    }
    if (json.union_goods) {
        // source line 170, bytecode pc 684
        (this.union_goods = json.union_goods);
        // source line 171, bytecode pc 689
        (_flagChg = true);
    }
    if (json.worship) {
        // source line 174, bytecode pc 717
        (this.m_worship = json.worship);
    }
    if (json.gem_discount) {
        // source line 178, bytecode pc 745
        (this.gem_discount = json.gem_discount);
    }
    if (json.world_war) {
        // source line 181, bytecode pc 773
        (this.m_world_war = json.world_war);
    }
    if (json.ladder_war) {
        // source line 185, bytecode pc 801
        (this.m_ladderWar = json.ladder_war);
    }
    if (json.union_war_signup) {
        // source line 188, bytecode pc 829
        (this.m_unionWarSignup = json.union_war_signup);
    }
    if (json.worship_local) {
        // source line 192, bytecode pc 857
        (this.m_worship_local = json.worship_local);
    }
    if (json.ladder_war_local) {
        // source line 195, bytecode pc 885
        (this.m_ladderWar_local = json.ladder_war_local);
    }
    if (json.world_war_local) {
        // source line 198, bytecode pc 913
        (this.m_world_war_local = json.world_war_local);
    }
},
    getEvolutionChestInfo: function() {
    // source line 203, bytecode pc 6
    return this.m_evolutionChest;
},
    getCopyInfo: function() {
    // source line 207, bytecode pc 6
    return this.m_copy;
},
    getBeautyData: function() {
    // source line 211, bytecode pc 6
    return this.m_beauty;
},
    getPartyInfo: function() {
    // source line 215, bytecode pc 25
    this.assert(this.m_party, "this.m_party is null");
    // source line 216, bytecode pc 32
    return this.m_party;
},
    getPartyExchangeInfo: function() {
    // source line 220, bytecode pc 25
    this.assert(this.m_party_exchange, "this.m_party_exchange is null");
    // source line 221, bytecode pc 32
    return this.m_party_exchange;
},
    getFeastInfo: function() {
    // source line 225, bytecode pc 6
    return this.m_feasts;
},
    getTigerInfo: function() {
    // source line 229, bytecode pc 6
    return this.m_tiger;
},
    getWishinInfo: function() {
    // source line 233, bytecode pc 6
    return this.m_wishin;
},
    getIsWishin: function() {
    var winshinNum;
    // source line 237, bytecode pc 31
    (winshinNum = xs.Utils.parseIntSafe(this.wishingNum));
    // source line 238, bytecode pc 49
    return ((winshinNum > 0) ? true : false);
},
    getClimbTimes: function() {
    // source line 242, bytecode pc 33
    return xs.Utils.parseIntSafe(this.m_climb.num);
},
    getLadderWarNum: function() {
    var m_worshipNum;
    // source line 246, bytecode pc 4
    (m_worshipNum = 0);
    if (this.m_worship) {
        // source line 248, bytecode pc 30
        (m_worshipNum = this.m_worship.num);
    }
    // source line 250, bytecode pc 56
    return xs.Utils.parseIntSafe(m_worshipNum);
},
    getLadderWarExchangeNum: function() {
    var exchangeNum;
    // source line 253, bytecode pc 4
    (exchangeNum = 0);
    if (this.m_ladderWar) {
        // source line 255, bytecode pc 30
        (exchangeNum = this.m_ladderWar.num);
    }
    // source line 257, bytecode pc 56
    return xs.Utils.parseIntSafe(exchangeNum);
},
    getLocalLadderWarNum: function() {
    var m_worshipNum;
    // source line 260, bytecode pc 4
    (m_worshipNum = 0);
    if (this.m_worship_local) {
        // source line 262, bytecode pc 30
        (m_worshipNum = this.m_worship_local.num);
    }
    // source line 264, bytecode pc 56
    return xs.Utils.parseIntSafe(m_worshipNum);
},
    getLocalLadderWarExchangeNum: function() {
    var exchangeNum;
    // source line 267, bytecode pc 4
    (exchangeNum = 0);
    if (this.m_ladderWar_local) {
        // source line 269, bytecode pc 30
        (exchangeNum = this.m_ladderWar_local.num);
    }
    // source line 271, bytecode pc 56
    return xs.Utils.parseIntSafe(exchangeNum);
},
    getDecisiveBattleNum: function() {
    var m_worldWarNum;
    // source line 275, bytecode pc 4
    (m_worldWarNum = 0);
    if (this.m_world_war) {
        // source line 277, bytecode pc 30
        (m_worldWarNum = this.m_world_war.num);
    }
    // source line 279, bytecode pc 56
    return xs.Utils.parseIntSafe(m_worldWarNum);
},
    getLocalDecisiveBattleNum: function() {
    var m_worldWarNum;
    // source line 283, bytecode pc 4
    (m_worldWarNum = 0);
    if (this.m_world_war_local) {
        // source line 285, bytecode pc 30
        (m_worldWarNum = this.m_world_war_local.num);
    }
    // source line 287, bytecode pc 56
    return xs.Utils.parseIntSafe(m_worldWarNum);
},
    getTrainNum: function() {
    // source line 290, bytecode pc 33
    return xs.Utils.parseIntSafe(this.m_training.num);
},
    getGiftCanBuyNum: function() {
    // source line 294, bytecode pc 33
    return xs.Utils.parseIntSafe(this.m_vipstore.num);
},
    getLadderExchangeNum_Salary: function() {
    // source line 298, bytecode pc 33
    return xs.Utils.parseIntSafe(this.ladderstore.num);
},
    getLadderExchangeNum_Honor: function() {
    if (this.honorstore) {
        // source line 303, bytecode pc 44
        return xs.Utils.parseIntSafe(this.honorstore.num);
    }
    // source line 305, bytecode pc 46
    return 0;
},
    getTaskNum: function() {
    if (this.task) {
        // source line 311, bytecode pc 44
        return xs.Utils.parseIntSafe(this.task.num);
    }
    // source line 313, bytecode pc 46
    return 0;
},
    getNewUnionHitNum: function(unionType) {
    var mailNum;
    // source line 318, bytecode pc 8
    (mailNum = "");
    // source line 319, bytecode pc 12
    switch (unionType) {
        case xs.Constant_HintType_Union_Donate:
        if (!this.union_donate) {
            // source line 322, bytecode pc 91
            return 0;
        }
        // source line 324, bytecode pc 106
        (mailNum = this.union_donate.num);
        break;
        case xs.Constant_HintType_Union_Shop:
        if (!this.union_goods) {
            // source line 328, bytecode pc 125
            return 0;
        }
        // source line 330, bytecode pc 140
        (mailNum = this.union_goods.num);
        break;
        case xs.Constant_HintType_Union_Depot:
        if (!this.depot_num) {
            // source line 334, bytecode pc 159
            return 0;
        }
        // source line 336, bytecode pc 174
        (mailNum = this.depot_num.num);
        break;
        case xs.Constant_HintType_UnionWar_signup:
        if (!this.m_unionWarSignup) {
            // source line 340, bytecode pc 193
            return 0;
        }
        // source line 342, bytecode pc 208
        (mailNum = this.m_unionWarSignup.num);
        break;
        default:
        break;
    }
    // source line 345, bytecode pc 239
    return xs.Utils.parseIntSafe(mailNum);
},
    getNewMailNum: function(mailType) {
    var mailNum;
    // source line 351, bytecode pc 8
    (mailNum = "");
    // source line 352, bytecode pc 12
    switch (mailType) {
        case xs.Constant_HintType_Mail_System:
        if (!this.system_email) {
            // source line 355, bytecode pc 106
            return 0;
        }
        // source line 357, bytecode pc 121
        (mailNum = this.system_email.num);
        break;
        case xs.Constant_HintType_Mail_Friend:
        if (!this.friend_email) {
            // source line 361, bytecode pc 140
            return 0;
        }
        // source line 363, bytecode pc 155
        (mailNum = this.friend_email.num);
        break;
        case xs.Constant_HintType_Mail_Award:
        if (!this.gift_email) {
            // source line 367, bytecode pc 174
            return 0;
        }
        // source line 369, bytecode pc 189
        (mailNum = this.gift_email.num);
        break;
        case xs.Constant_HintType_Mail_Report:
        if (!this.event_email) {
            // source line 373, bytecode pc 208
            return 0;
        }
        // source line 375, bytecode pc 223
        (mailNum = this.event_email.num);
        break;
        case xs.Constant_HintType_Mail_Charge:
        if (!this.pay_email) {
            // source line 379, bytecode pc 242
            return 0;
        }
        // source line 381, bytecode pc 257
        (mailNum = this.pay_email.num);
        break;
        default:
        break;
    }
    // source line 384, bytecode pc 288
    return xs.Utils.parseIntSafe(mailNum);
},
    addMailHit: function() {
    if (this.gift_email) {
        // source line 389, bytecode pc 30
        (this.gift_email.num = (this.gift_email.num + 1));
    } else {
        // source line 391, bytecode pc 48
        (this.gift_email.num = 1);
    }
},
    getGemDiscount: function() {
    // source line 397, bytecode pc 6
    return this.gem_discount;
}
})));
// source line 401, bytecode pc 415
(xs.Models.PushInfo.create = function() {
    var _ret;
    // source line 402, bytecode pc 23
    (_ret = new xs.Models.PushInfo());
    // source line 403, bytecode pc 38
    _ret.init();
    // source line 405, bytecode pc 42
    return _ret;
});
