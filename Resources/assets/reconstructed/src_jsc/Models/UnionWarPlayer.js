// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/UnionWarPlayer.js:1
// source line 147, bytecode pc 289
(xs.Models.UnionWarPlayer = xs.Models.Base.extend({
    name: "xs.Models.UnionWarPlayer",
    Cfg: {},
    init: function() {
    // source line 16, bytecode pc 12
    this._super();
    // source line 18, bytecode pc 20
    (this.player_id = null);
    // source line 19, bytecode pc 28
    (this.player_name = null);
    // source line 20, bytecode pc 36
    (this.show_pk_id = null);
    // source line 21, bytecode pc 44
    (this.fight_point = 0);
    // source line 22, bytecode pc 52
    (this.battle_id = 0);
    // source line 23, bytecode pc 60
    (this.battle_pos = 0);
    // source line 25, bytecode pc 68
    (this.kill_num = 0);
    // source line 26, bytecode pc 76
    (this.isFighted = false);
    // source line 27, bytecode pc 84
    (this.isDeath = false);
    // source line 29, bytecode pc 92
    (this.general = null);
    // source line 30, bytecode pc 94
    return true;
},
    loadJson: function(jsonData) {
    // source line 36, bytecode pc 36
    (this.player_id = xs.Utils.parseStringSafe(jsonData.user_id));
    // source line 37, bytecode pc 84
    (this.player_name = (xs.Utils.parseStringSafe(jsonData.user_nickname) || ""));
    // source line 38, bytecode pc 132
    (this.show_pk_id = (xs.Utils.parseStringSafe(jsonData.general_id) || ""));
    // source line 39, bytecode pc 169
    (this.fight_point = xs.Utils.parseIntSafe(jsonData.fight_point));
    // source line 40, bytecode pc 206
    (this.battle_id = xs.Utils.parseIntSafe(jsonData.battle_id));
    // source line 41, bytecode pc 243
    (this.battle_pos = xs.Utils.parseIntSafe(jsonData.pos));
    // source line 45, bytecode pc 256
    this.clearCache();
    // source line 46, bytecode pc 258
    return true;
},
    createHeadIcon: function(isFlipX) {
    var general, _icon;
    // source line 52, bytecode pc 47
    (general = xs.Tools.Model.createModelWithBase(xs.Constant_ObjType_General, this.show_pk_id));
    // source line 53, bytecode pc 82
    (_icon = xs.Views.Icon.IconStyleA.create());
    // source line 54, bytecode pc 101
    _icon.reloadData(general);
    if (isFlipX) {
        // source line 56, bytecode pc 128
        _icon.setBgViewFlipX(isFlipX);
    }
    // source line 58, bytecode pc 152
    _icon.reloadData_TeamIdx((this.battle_pos - 1));
    // source line 59, bytecode pc 156
    return _icon;
},
    createCard_Detail: function(viewCfg) {
    var general, _ret;
    // source line 64, bytecode pc 47
    (general = xs.Tools.Model.createModelWithBase(xs.Constant_ObjType_General, this.show_pk_id));
    // source line 73, bytecode pc 93
    (_ret = xs.Views.Card.General.create({}, viewCfg));
    // source line 75, bytecode pc 112
    _ret.reloadData(general);
    // source line 77, bytecode pc 116
    return _ret;
},
    createPartView: function(partName) {
    var general;
    // source line 81, bytecode pc 47
    (general = xs.Tools.Model.createModelWithBase(xs.Constant_ObjType_General, this.show_pk_id));
    // source line 82, bytecode pc 82
    return xs.Tools.Card.createPartView_General(general, partName);
},
    setNewBattleIdAndPos: function(newBattleId, newBattlePos) {
    // source line 87, bytecode pc 9
    (this.battle_id = newBattleId);
    // source line 88, bytecode pc 19
    (this.battle_pos = newBattlePos);
},
    getPlayerId: function() {
    // source line 92, bytecode pc 6
    return this.player_id;
},
    getPkId: function() {
    // source line 97, bytecode pc 12
    return this.getShowPkId();
},
    getId: function() {
    // source line 101, bytecode pc 12
    return this.getPlayerId();
},
    getShowPkId: function() {
    // source line 105, bytecode pc 6
    return this.show_pk_id;
},
    getPlayerName: function() {
    // source line 109, bytecode pc 58
    return ((this.player_name.length > 8) ? (this.player_name.substring(0, 7) + "...") : this.player_name);
},
    getFightPoint: function() {
    // source line 113, bytecode pc 6
    return this.fight_point;
},
    setBattleId: function(newBattleId) {
    // source line 117, bytecode pc 9
    (this.battle_id = newBattleId);
},
    getBattleId: function() {
    // source line 120, bytecode pc 6
    return this.battle_id;
},
    setBattlePos: function(newBattlePos) {
    // source line 124, bytecode pc 9
    (this.battle_pos = newBattlePos);
},
    getBattlePos: function() {
    // source line 127, bytecode pc 6
    return this.battle_pos;
},
    setKillNum: function(killNum) {
    // source line 131, bytecode pc 9
    (this.kill_num = killNum);
},
    getKillNum: function() {
    // source line 134, bytecode pc 6
    return this.kill_num;
},
    setIsFighted: function(bIsFighted) {
    // source line 138, bytecode pc 9
    (this.isFighted = bIsFighted);
},
    getIsFighted: function() {
    // source line 141, bytecode pc 6
    return this.isFighted;
},
    setIsDeath: function(bIsDeath) {
    // source line 145, bytecode pc 9
    (this.isDeath = bIsDeath);
},
    getIsDeath: function() {
    // source line 148, bytecode pc 6
    return this.isDeath;
}
}));
// source line 153, bytecode pc 315
(xs.Models.UnionWarPlayer.createWithJson = function(data) {
    var UnionWarPlayer;
    // source line 155, bytecode pc 23
    (UnionWarPlayer = new xs.Models.UnionWarPlayer());
    if ((UnionWarPlayer && UnionWarPlayer.init())) {
        // source line 158, bytecode pc 70
        UnionWarPlayer.loadJson(data);
        // source line 159, bytecode pc 74
        return UnionWarPlayer;
    }
    // source line 161, bytecode pc 99
    xs.assert(false, "xs.Models.UnionWarPlayer.createWithJson failed");
    // source line 162, bytecode pc 101
    return null;
});
