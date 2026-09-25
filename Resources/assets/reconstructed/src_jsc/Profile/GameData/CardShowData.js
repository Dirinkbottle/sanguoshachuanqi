// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/GameData/CardShowData.js:1
// source line 59, bytecode pc 108
(xs.Profile.GameData.CardShowData = xs.Profile.GameData.Base.extend({
    init: function(param) {
    // source line 11, bytecode pc 16
    this._super(param);
    // source line 12, bytecode pc 18
    return true;
},
    getGeneralShowData: function(isInTeam) {
    var generals, generalShowData, i;
    if (isInTeam) {
        // source line 18, bytecode pc 39
        (generals = this._initInstance().Generals.getAllWithDefaultSort());
    } else {
        // source line 21, bytecode pc 76
        (generals = this._initInstance().Generals.getGeneralNotInTeamAndNotInLieutenantAndNotBuddy());
    }
    // source line 24, bytecode pc 91
    generals.reverse();
    // source line 25, bytecode pc 100
    (generalShowData = []);
    // source line 26, bytecode pc 105
    (i = 0);
    while ((i < generals.length)) {
        // source line 27, bytecode pc 161
        generalShowData.push(xs.Models.ShowData.create(generals[i]));
        // source line 26, bytecode pc 176
        i++;
    }
    // source line 30, bytecode pc 198
    return generalShowData;
},
    getSoulShowData: function() {
    var generalSouls, soulShowData, i;
    // source line 35, bytecode pc 31
    (generalSouls = this._initInstance().GeneralSouls.getAllClone());
    // source line 37, bytecode pc 84
    generalSouls.sort(xs.Tools.Sort.by(xs.Constant_SortType_GeneralSoul_Default_Reverse));
    // source line 39, bytecode pc 93
    (soulShowData = []);
    // source line 40, bytecode pc 98
    (i = 0);
    while ((i < generalSouls.length)) {
        // source line 41, bytecode pc 154
        soulShowData.push(xs.Models.ShowData.create(generalSouls[i]));
        // source line 40, bytecode pc 169
        i++;
    }
    // source line 44, bytecode pc 191
    return soulShowData;
},
    getEquipShowData: function() {
    var equipMents, equipShowData, i;
    // source line 49, bytecode pc 31
    (equipMents = this._initInstance().Equipments.getAllWithDefaultSort());
    // source line 51, bytecode pc 40
    (equipShowData = []);
    // source line 52, bytecode pc 45
    (i = 0);
    while ((i < equipMents.length)) {
        // source line 53, bytecode pc 101
        equipShowData.push(xs.Models.ShowData.create(equipMents[i]));
        // source line 52, bytecode pc 116
        i++;
    }
    // source line 56, bytecode pc 138
    return equipShowData;
},
    getRefineStoneShowData: function() {
    var refineStones, refineStoneShowData, i;
    // source line 60, bytecode pc 31
    (refineStones = this._initInstance().Items.getRefineStones());
    // source line 62, bytecode pc 40
    (refineStoneShowData = []);
    // source line 63, bytecode pc 45
    (i = 0);
    while ((i < refineStones.length)) {
        // source line 64, bytecode pc 101
        refineStoneShowData.push(xs.Models.ShowData.create(refineStones[i]));
        // source line 63, bytecode pc 116
        i++;
    }
    // source line 67, bytecode pc 138
    return refineStoneShowData;
}
}));
// source line 73, bytecode pc 139
(xs.Profile.GameData.CardShowData.create = function(param) {
    var _str, _cls_name, obj;
    // source line 74, bytecode pc 11
    (_str = param.play_id);
    // source line 75, bytecode pc 35
    (_cls_name = xs.Profile.GameData.CardShowData);
    // source line 76, bytecode pc 85
    (xs.Utils.isSet(_cls_name._instance) || (_cls_name._instance = []));
    if (_cls_name._instance[_str]) {
        // source line 79, bytecode pc 115
        return _cls_name._instance[_str];
    }
    // source line 82, bytecode pc 127
    (obj = new _cls_name());
    if ((obj && obj.init(param))) {
        // source line 84, bytecode pc 175
        (_cls_name._instance[_str] = obj);
        // source line 85, bytecode pc 179
        return obj;
    }
    // source line 87, bytecode pc 202
    xs.error("xs.Profile.GameData.CardShowData.create failed");
    // source line 88, bytecode pc 204
    return null;
});
