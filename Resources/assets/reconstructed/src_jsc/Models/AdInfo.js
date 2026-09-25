// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/AdInfo.js:1
// source line 55, bytecode pc 119
(xs.Models.AdInfo = (xs.Models.AdInfo || xs.Models.Base.extend({
    name: "xs.Models.AdInfo",
    init: function() {
    // source line 19, bytecode pc 12
    this._super();
    // source line 21, bytecode pc 24
    (this.m_activitiesShowList = []);
},
    update: function(json) {
    var _flagChg;
    // source line 34, bytecode pc 4
    (_flagChg = false);
    if (json.ad_list) {
        // source line 37, bytecode pc 32
        (this.m_activitiesShowList = json.ad_list);
        // source line 39, bytecode pc 37
        (_flagChg = true);
    }
    if (json.tips_list) {
        // source line 43, bytecode pc 65
        (this.tips_list = json.tips_list);
        // source line 45, bytecode pc 70
        (_flagChg = true);
    }
},
    getActivitiesShowList: function() {
    // source line 52, bytecode pc 6
    return this.m_activitiesShowList;
},
    gettips_list: function() {
    // source line 56, bytecode pc 6
    return this.tips_list;
}
})));
// source line 60, bytecode pc 145
(xs.Models.AdInfo.create = function() {
    var _ret;
    // source line 61, bytecode pc 23
    (_ret = new xs.Models.AdInfo());
    // source line 62, bytecode pc 38
    _ret.init();
    // source line 64, bytecode pc 42
    return _ret;
});
