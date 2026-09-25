// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/Party.js:1
// source line 73, bytecode pc 178
(xs.Models.Party = xs.Models.Base.extend({
    name: "xs.Models.Party",
    dump: xs.Debug.emptyFunc,
    log: xs.Debug.emptyFunc,
    init: function() {
    // source line 16, bytecode pc 12
    this._super();
    // source line 22, bytecode pc 24
    (this.m_arrParty = []);
    // source line 24, bytecode pc 26
    return true;
},
    loadJson: function(arrayParty) {
    var i, _tmpPartyEvent;
    if (arrayParty) {
        // source line 33, bytecode pc 19
        (this.m_arrParty = []);
        // source line 34, bytecode pc 24
        (i = 0);
        while ((i < arrayParty.length)) {
            // source line 35, bytecode pc 68
            (_tmpPartyEvent = xs.Models.PartyEventBase.createWithJson(arrayParty[i]));
            // source line 36, bytecode pc 82
            (this.m_arrParty[i] = _tmpPartyEvent);
            if (_tmpPartyEvent.isReceiveAble()) {
            }
            // source line 34, bytecode pc 115
            (i = (+i + 1));
        }
    }
    // source line 43, bytecode pc 162
    (this.m_time_begin = new Date().getTime());
},
    getPartyEventNum: function() {
    // source line 49, bytecode pc 11
    return this.m_arrParty.length;
},
    getPartyEventByIdx: function(idx) {
    // source line 53, bytecode pc 10
    return this.m_arrParty[idx];
},
    removePartyByIdx: function(idx) {
    // source line 57, bytecode pc 23
    this.m_arrParty.splice(idx, 1);
},
    isStartTime: function(idx) {
    if (this.m_arrParty[idx].instance_interval) {
        // source line 62, bytecode pc 51
        return (this.m_arrParty[idx].instance_countdown <= this.m_arrParty[idx].instance_interval);
    }
    // source line 65, bytecode pc 53
    return false;
},
    getContinueTime: function(idx) {
    // source line 70, bytecode pc 15
    return this.m_arrParty[idx].instance_interval;
},
    adPresentTime: function(idx) {
    var _time_now, m_time, _offset;
    // source line 74, bytecode pc 24
    (_time_now = new Date().getTime());
    // source line 77, bytecode pc 43
    (m_time = this.m_arrParty[idx].instance_countdown);
    // source line 79, bytecode pc 61
    (_offset = ((_time_now - this.m_time_begin) / 1000));
    // source line 81, bytecode pc 88
    xs.dump("offsetTime", _offset);
    // source line 82, bytecode pc 115
    xs.dump("mTime", m_time);
    // source line 83, bytecode pc 143
    (m_time = (m_time - Math.round(_offset)));
    // source line 84, bytecode pc 170
    xs.dump("mTime", m_time);
    if ((m_time > 0)) {
        // source line 86, bytecode pc 184
        return m_time;
    }
    // source line 88, bytecode pc 186
    return 0;
}
}));
// source line 93, bytecode pc 204
(xs.Models.Party.create = function() {
    var item;
    // source line 94, bytecode pc 23
    (item = new xs.Models.Party());
    if ((item && item.init())) {
        // source line 96, bytecode pc 55
        return item;
    }
    // source line 98, bytecode pc 57
    return null;
});
// source line 102, bytecode pc 230
(xs.Models.Party.createWithJson = function(data) {
    var item;
    // source line 103, bytecode pc 23
    (item = new xs.Models.Party());
    if ((item && item.init())) {
        // source line 105, bytecode pc 70
        item.loadJson(data);
        // source line 106, bytecode pc 74
        return item;
    }
    // source line 108, bytecode pc 76
    return null;
});
