// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/BuddyGeneral.js:1
// source line 34, bytecode pc 98
(xs.Models.BuddyGeneral = xs.Models.Base.extend({
    init: function() {
    // source line 12, bytecode pc 7
    (this.general_pk_id = null);
    // source line 13, bytecode pc 15
    (this.general_position = null);
    // source line 15, bytecode pc 17
    return true;
},
    loadJson: function(json) {
    // source line 19, bytecode pc 14
    (this.general_pk_id = json.pk_id);
    // source line 20, bytecode pc 51
    (this.general_position = xs.Utils.parseIntSafe(json.position));
},
    getGeneralPkId: function() {
    // source line 25, bytecode pc 6
    return this.general_pk_id;
},
    getGeneralPos: function() {
    // source line 30, bytecode pc 6
    return this.general_position;
},
    getIdxInTeam: function() {
    // source line 35, bytecode pc 8
    return (this.general_position - 1);
}
}));
// source line 40, bytecode pc 124
(xs.Models.BuddyGeneral.createWithJson = function(json) {
    var team;
    // source line 41, bytecode pc 23
    (team = new xs.Models.BuddyGeneral());
    if ((team && team.init())) {
        // source line 43, bytecode pc 70
        team.loadJson(json);
        // source line 44, bytecode pc 74
        return team;
    }
    // source line 46, bytecode pc 76
    return null;
});
// source line 49, bytecode pc 150
(xs.Models.BuddyGeneral.createWithBase = function() {
    var team;
    // source line 50, bytecode pc 23
    (team = new xs.Models.BuddyGeneral());
    if ((team && team.init())) {
        // source line 52, bytecode pc 55
        return team;
    }
    // source line 54, bytecode pc 57
    return null;
});
