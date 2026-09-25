// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/PartyEvent.js:1
// source line 146, bytecode pc 238
(xs.Models.PartyEventBase = xs.Models.Base.extend({
    name: "PartyEventBase",
    dump: xs.Debug.emptyFunc,
    log: xs.Debug.emptyFunc,
    init: function() {
    // source line 17, bytecode pc 12
    this._super();
    // source line 19, bytecode pc 20
    (this.m_activity_type = 0);
    // source line 20, bytecode pc 28
    (this.m_can_receive = false);
    // source line 21, bytecode pc 36
    (this.m_instance_id = null);
    // source line 22, bytecode pc 48
    (this.m_reward_list = []);
    // source line 24, bytecode pc 50
    return true;
},
    loadJson: function(data) {
    // source line 31, bytecode pc 36
    (this.m_activity_type = xs.Utils.parseIntSafe(data.activity_type));
    // source line 32, bytecode pc 51
    (this.m_can_receive = data.can_receive);
    // source line 33, bytecode pc 66
    (this.m_reward_list = data.reward_list);
    // source line 34, bytecode pc 81
    (this.m_instance_id = data.instance_id);
    // source line 35, bytecode pc 107
    (this.instance_bg = (data.instance_bg || ""));
    // source line 36, bytecode pc 129
    (this.instance_countdown = (data.instance_countdown || 0));
    // source line 37, bytecode pc 151
    (this.instance_interval = (data.instance_interval || 0));
    // source line 38, bytecode pc 173
    (this.instance_addConsume = (data.gold_cost || 0));
    // source line 39, bytecode pc 195
    (this.recharge = (data.recharge || 0));
    // source line 40, bytecode pc 217
    (this.m_home_sort = (data.home_sort || 0));
    if (((this.m_activity_type == xs.Constant_PartyType_PresentYuanbao) || ((this.m_activity_type == xs.Constant_PartyType_Advertisement_noTime) || (this.m_activity_type == xs.Constant_PartyType_Advertisement_haveTime)))) {
        // source line 48, bytecode pc 293
        (this.m_can_receive = false);
    }
},
    getPartyEventType: function() {
    // source line 57, bytecode pc 6
    return this.m_activity_type;
},
    getPartyEventOrder: function() {
    // source line 61, bytecode pc 21
    return parseInt(this.m_home_sort);
},
    isReceiveAble: function() {
    // source line 68, bytecode pc 6
    return this.m_can_receive;
},
    isSameInstance: function(instance_id) {
    if ((this.m_instance_id === instance_id)) {
        // source line 73, bytecode pc 16
        return true;
    }
    // source line 75, bytecode pc 18
    return false;
},
    getBg: function() {
    // source line 79, bytecode pc 17
    return (this.instance_bg || "");
},
    getRecharge: function() {
    // source line 84, bytecode pc 6
    return this.recharge;
},
    getInstanceId: function() {
    // source line 88, bytecode pc 6
    return this.m_instance_id;
},
    getRewordsNumOfReceived: function() {
    var _count, i, _tmp;
    // source line 93, bytecode pc 4
    (_count = 0);
    // source line 94, bytecode pc 9
    (i = 0);
    while ((i < this.m_reward_list.length)) {
        // source line 95, bytecode pc 29
        (_tmp = this.m_reward_list[i]);
        if ((_tmp.status.is_received === true)) {
            // source line 97, bytecode pc 63
            (_count = (+_count + 1));
        }
        // source line 94, bytecode pc 78
        (i = (+i + 1));
    }
    // source line 101, bytecode pc 104
    return _count;
},
    getRewordsNum: function() {
    // source line 105, bytecode pc 11
    return this.m_reward_list.length;
},
    getRewordByIdx: function(idx) {
    // source line 109, bytecode pc 10
    return this.m_reward_list[idx];
},
    isNextRewardIdx: function(idx) {
    if ((this.m_activity_type == 125)) {
        if ((Number(this.m_reward_list[idx].status.condition) >= 6)) {
            // source line 117, bytecode pc 79
            return (this.m_reward_list[idx].status.is_received === false);
        } else {
            // source line 121, bytecode pc 86
            return false;
        }
    }
    if ((idx === 0)) {
        // source line 127, bytecode pc 119
        return (this.m_reward_list[idx].status.is_received === false);
    } else {
        // source line 143, bytecode pc 177
        return ((this.m_reward_list[(idx - 1)].status.is_received === true) && (this.m_reward_list[idx].status.is_received === false));
    }
},
    isNextRewardIdxByBundle: function(idx) {
    if ((idx === 0)) {
        // source line 150, bytecode pc 32
        return (this.m_reward_list[idx].status.is_received === false);
    } else {
        // source line 166, bytecode pc 90
        return ((this.m_reward_list[(idx - 1)].status.is_received === true) && (this.m_reward_list[idx].status.is_received === false));
    }
}
}));
// source line 173, bytecode pc 264
(xs.Models.PartyEventBase.createWithJson = function(data) {
    var item;
    // source line 174, bytecode pc 23
    (item = new xs.Models.PartyEventBase());
    if ((item && item.init())) {
        // source line 176, bytecode pc 70
        item.loadJson(data);
        // source line 177, bytecode pc 74
        return item;
    }
    // source line 179, bytecode pc 76
    return null;
});
