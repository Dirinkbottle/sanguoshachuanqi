// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/TeamGeneral.js:1
// source line 74, bytecode pc 98
(xs.Models.TeamGeneral = xs.Models.Base.extend({
    init: function() {
    // source line 24, bytecode pc 7
    (this.general_pk_id = null);
    // source line 25, bytecode pc 15
    (this.general_position = null);
    // source line 27, bytecode pc 23
    (this.hp = 0);
    // source line 28, bytecode pc 31
    (this.atk = 0);
    // source line 29, bytecode pc 39
    (this.def = 0);
    // source line 30, bytecode pc 47
    (this.int = 0);
    // source line 31, bytecode pc 55
    (this.fighting = 0);
    // source line 33, bytecode pc 57
    return true;
},
    loadJson: function(json) {
    // source line 37, bytecode pc 14
    (this.general_pk_id = json.pk_id);
    // source line 38, bytecode pc 51
    (this.general_position = xs.Utils.parseIntSafe(json.position));
    // source line 47, bytecode pc 73
    (this.hp = (json.general_hp || 0));
    // source line 48, bytecode pc 101
    (this.hp = parseInt(this.hp));
    // source line 49, bytecode pc 123
    (this.atk = (json.general_attack || 0));
    // source line 50, bytecode pc 151
    (this.atk = parseInt(this.atk));
    // source line 51, bytecode pc 173
    (this.def = (json.general_defense || 0));
    // source line 52, bytecode pc 201
    (this.def = parseInt(this.def));
    // source line 53, bytecode pc 223
    (this.int = (json.general_wisdom || 0));
    // source line 54, bytecode pc 251
    (this.int = parseInt(this.int));
    // source line 55, bytecode pc 273
    (this.fighting = (json.general_fighting || 0));
    // source line 56, bytecode pc 301
    (this.fighting = parseInt(this.fighting));
},
    getGeneralPkId: function() {
    // source line 65, bytecode pc 6
    return this.general_pk_id;
},
    getGeneralPos: function() {
    // source line 70, bytecode pc 6
    return this.general_position;
},
    getIdxInTeam: function() {
    // source line 75, bytecode pc 8
    return (this.general_position - 1);
}
}));
// source line 90, bytecode pc 124
(xs.Models.TeamGeneral.createWithJson = function(json) {
    var team;
    // source line 91, bytecode pc 23
    (team = new xs.Models.TeamGeneral());
    if ((team && team.init())) {
        // source line 93, bytecode pc 70
        team.loadJson(json);
        // source line 94, bytecode pc 74
        return team;
    }
    // source line 96, bytecode pc 76
    return null;
});
// source line 99, bytecode pc 150
(xs.Models.TeamGeneral.createWithBase = function() {
    var team;
    // source line 100, bytecode pc 23
    (team = new xs.Models.TeamGeneral());
    if ((team && team.init())) {
        // source line 102, bytecode pc 55
        return team;
    }
    // source line 104, bytecode pc 57
    return null;
});
