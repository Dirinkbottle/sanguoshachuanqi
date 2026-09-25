// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/WorshipEntry.js:1
// source line 53, bytecode pc 128
(xs.Models.WorshipEntry = xs.Models.Base.extend({
    name: "xs.Models.WorshipEntry",
    init: function() {
    // source line 11, bytecode pc 12
    this._super();
    // source line 13, bytecode pc 20
    (this.rank_list = null);
    // source line 14, bytecode pc 28
    (this.award_list = null);
    // source line 15, bytecode pc 36
    (this.is_inlist = false);
    // source line 16, bytecode pc 44
    (this.status = 0);
    // source line 18, bytecode pc 46
    return true;
},
    loadJson: function(jsonData) {
    var i;
    // source line 23, bytecode pc 14
    (this.rank_list = jsonData.rank_list);
    // source line 24, bytecode pc 29
    (this.award_list = jsonData.award_list);
    // source line 25, bytecode pc 44
    (this.is_inlist = jsonData.is_inlist);
    // source line 26, bytecode pc 59
    (this.status = jsonData.status);
    // source line 29, bytecode pc 64
    (i = 0);
    while ((i < this.rank_list.length)) {
        // source line 30, bytecode pc 91
        (this.rank_list[i].server_rank = (i + 1));
        // source line 29, bytecode pc 106
        i++;
    }
    // source line 33, bytecode pc 140
    this.clearCache();
    // source line 34, bytecode pc 142
    return true;
},
    getRankList: function() {
    // source line 38, bytecode pc 6
    return this.rank_list;
},
    getAwardList: function() {
    // source line 42, bytecode pc 6
    return this.award_list;
},
    isInlist: function() {
    // source line 46, bytecode pc 6
    return this.is_inlist;
},
    getStatus: function() {
    // source line 50, bytecode pc 6
    return this.status;
},
    setStatus: function(newStatus) {
    // source line 54, bytecode pc 9
    (this.status = newStatus);
}
}));
// source line 60, bytecode pc 154
(xs.Models.WorshipEntry.createWithJson = function(data) {
    var worshipEntry;
    // source line 62, bytecode pc 23
    (worshipEntry = new xs.Models.WorshipEntry());
    if ((worshipEntry && worshipEntry.init())) {
        // source line 65, bytecode pc 70
        worshipEntry.loadJson(data);
        // source line 66, bytecode pc 74
        return worshipEntry;
    }
    // source line 68, bytecode pc 99
    xs.assert(false, "xs.Models.WorshipEntry.createWithJson failed");
    // source line 69, bytecode pc 101
    return null;
});
