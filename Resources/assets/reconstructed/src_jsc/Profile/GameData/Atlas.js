// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/GameData/Atlas.js:1
// source line 115, bytecode pc 268
(xs.Profile.GameData.Atlas = xs.Profile.GameData.Base.extend({
    name: "xs.Profile.GameData.Atlas",
    nameType: xs.Constant_GameData_Atlas,
    modelName: xs.Models.Atlas,
    dump: xs.Debug.emptyFunc,
    sortBy: xs.Constant_SortType_Altas_Default,
    init: function(param) {
    // source line 22, bytecode pc 16
    this._super(param);
    // source line 23, bytecode pc 65
    this.dataRef.getNotifyCenter().addObserver(this, this.clearCache, xs.Constant_Notify_ModelChange_Atlas_SortChange);
    // source line 24, bytecode pc 67
    return true;
},
    getGeneralStatusById: function(id) {
    // source line 31, bytecode pc 10
    return xs.Constant_GeneralStatus_Have;
},
    getGeneral: function(grade) {
    if (grade) {
        // source line 36, bytecode pc 48
        return this.getByGrade(grade, this.getByType(xs.Constant_ObjType_General));
    } else {
        // source line 38, bytecode pc 77
        return this.getByType(xs.Constant_ObjType_General);
    }
},
    getGoddess: function() {
    // source line 43, bytecode pc 23
    return this.getByType(xs.Constant_ObjType_Goddess);
},
    getNumOfOwnGeneral: function() {
    // source line 48, bytecode pc 25
    return this._getOwnNum(this.getGeneral());
},
    getEquipment: function() {
    // source line 53, bytecode pc 23
    return this.getByType(xs.Constant_ObjType_Equipment);
},
    getOwnEquipment: function() {
    // source line 57, bytecode pc 25
    return this._getOwnNum(this.getEquipment());
},
    getSkill: function() {
    // source line 62, bytecode pc 23
    return this.getByType(xs.Constant_ObjType_Skill);
},
    getOwnSkill: function() {
    // source line 66, bytecode pc 25
    return this._getOwnNum(this.getSkill());
},
    getByType: function(type) {
    var _res_atlas, _arr_atlas_all, i;
    // source line 71, bytecode pc 8
    (_res_atlas = []);
    // source line 72, bytecode pc 24
    (_arr_atlas_all = this.getAll());
    // source line 75, bytecode pc 29
    (i = 0);
    while ((i < _arr_atlas_all.length)) {
        if ((type == _arr_atlas_all[i].getType())) {
            // source line 77, bytecode pc 85
            _res_atlas.push(_arr_atlas_all[i]);
        }
        // source line 75, bytecode pc 100
        i++;
    }
    // source line 81, bytecode pc 122
    return _res_atlas;
},
    getByGrade: function(grade, list) {
    var _res_atlas, _arr_atlas_all, i;
    // source line 86, bytecode pc 8
    (_res_atlas = []);
    // source line 88, bytecode pc 15
    (_arr_atlas_all = list);
    // source line 91, bytecode pc 20
    (i = 0);
    while ((i < _arr_atlas_all.length)) {
        if ((grade == _arr_atlas_all[i].getGeneralGrade())) {
            // source line 93, bytecode pc 76
            _res_atlas.push(_arr_atlas_all[i]);
        }
        // source line 91, bytecode pc 91
        i++;
    }
    // source line 97, bytecode pc 113
    return _res_atlas;
},
    _getOwnNum: function(arr_atlas) {
    var _own_num, i;
    // source line 103, bytecode pc 4
    (_own_num = 0);
    // source line 104, bytecode pc 9
    (i = 0);
    while ((i < arr_atlas.length)) {
        if ((arr_atlas[i].getAtlasStatus() != 0)) {
            // source line 106, bytecode pc 55
            _own_num++;
        }
        // source line 104, bytecode pc 70
        i++;
    }
    // source line 110, bytecode pc 115
    this.dump("_own_num", _own_num, arr_atlas);
    // source line 111, bytecode pc 119
    return _own_num;
},
    getById: function() {
    // source line 116, bytecode pc 20
    this.assert(false, "the function is error!!!!");
}
}));
// source line 122, bytecode pc 299
(xs.Profile.GameData.Atlas.create = function(param) {
    var _str, _cls_name, obj;
    // source line 123, bytecode pc 11
    (_str = param.play_id);
    // source line 124, bytecode pc 35
    (_cls_name = xs.Profile.GameData.Atlas);
    // source line 125, bytecode pc 85
    (xs.Utils.isSet(_cls_name._instance) || (_cls_name._instance = []));
    if (_cls_name._instance[_str]) {
        // source line 128, bytecode pc 115
        return _cls_name._instance[_str];
    }
    // source line 131, bytecode pc 127
    (obj = new _cls_name());
    if ((obj && obj.init(param))) {
        // source line 133, bytecode pc 175
        (_cls_name._instance[_str] = obj);
        // source line 134, bytecode pc 179
        return obj;
    }
    // source line 136, bytecode pc 202
    xs.error("xs.Profile.GameData.Atlas.create failed");
    // source line 137, bytecode pc 204
    return null;
});
