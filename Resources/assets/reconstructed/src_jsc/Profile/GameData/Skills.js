// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/GameData/Skills.js:1
// source line 220, bytecode pc 298
(xs.Profile.GameData.Skills = xs.Profile.GameData.Base.extend({
    name: "xs.Profile.GameData.Skills",
    nameType: xs.Constant_GameData_Skill,
    modelName: xs.Models.Skill,
    dump: xs.Debug.emptyFunc,
    sortBy: xs.Constant_SortType_Skill_Default,
    init: function(param) {
    // source line 23, bytecode pc 16
    this._super(param);
    // source line 24, bytecode pc 65
    this.dataRef.getNotifyCenter().addObserver(this, this.clearCache, xs.Constant_Notify_ModelChange_Skill_SortChange);
    // source line 25, bytecode pc 67
    return true;
},
    getSkillByGeneralPkId: function(general_pk_id) {
    var _rs_obj, _arr_skill_all, i;
    // source line 31, bytecode pc 8
    (_rs_obj = []);
    // source line 32, bytecode pc 34
    (_arr_skill_all = this._getWithIndex("getGeneralPkId", general_pk_id));
    // source line 33, bytecode pc 39
    (i = 0);
    while ((i < _arr_skill_all.length)) {
        if ((_arr_skill_all[i].getGeneralPkId() == general_pk_id)) {
            // source line 36, bytecode pc 95
            _rs_obj.push(_arr_skill_all[i]);
        }
        // source line 33, bytecode pc 109
        (i = (+i + 1));
    }
    // source line 41, bytecode pc 132
    return _rs_obj;
},
    getNaturalSkillByGeneralPkId: function(general_pk_id) {
    var _rs_obj;
    // source line 47, bytecode pc 21
    (_rs_obj = this.getSkillByGeneralPkIdAndPos(general_pk_id, 1));
    // source line 49, bytecode pc 25
    return _rs_obj;
},
    getSkillByGeneralPkIdAndPos: function(general_pk_id, skill_pos) {
    var _rs_obj, _arr_skill_all, i;
    // source line 54, bytecode pc 4
    (_rs_obj = null);
    // source line 55, bytecode pc 30
    (_arr_skill_all = this._getWithIndex("getGeneralPkId", general_pk_id));
    // source line 57, bytecode pc 35
    (i = 0);
    while ((i < _arr_skill_all.length)) {
        if (((_arr_skill_all[i].getGeneralPkId() == general_pk_id) && (_arr_skill_all[i].getSkillPos() == skill_pos))) {
            // source line 60, bytecode pc 107
            (_rs_obj = _arr_skill_all[i]);
            break;
        }
        // source line 57, bytecode pc 126
        (i = (+i + 1));
    }
    // source line 65, bytecode pc 149
    return _rs_obj;
},
    getNaturalSkill: function() {
    var _rs_obj, _arr_skill_all, i;
    // source line 71, bytecode pc 8
    (_rs_obj = []);
    // source line 72, bytecode pc 24
    (_arr_skill_all = this.getAllWithDefaultSort());
    // source line 73, bytecode pc 29
    (i = 0);
    while ((i < _arr_skill_all.length)) {
        if ((_arr_skill_all[i].isInborn() === true)) {
            // source line 77, bytecode pc 83
            _rs_obj.push(_arr_skill_all[i]);
        }
        // source line 73, bytecode pc 97
        (i = (+i + 1));
    }
    // source line 81, bytecode pc 120
    return _rs_obj;
},
    isGeneralPkIdEquipedSkillId: function(general_pk_id, skill_id) {
    var _skills, i, _arr_Lieutenant, j;
    // source line 86, bytecode pc 19
    (_skills = this.getSkillByGeneralPkId(general_pk_id));
    // source line 87, bytecode pc 24
    (i = 0);
    while ((i < _skills.length)) {
        if ((skill_id === _skills[i].getId())) {
            // source line 89, bytecode pc 59
            return true;
        }
        // source line 87, bytecode pc 72
        (i = (+i + 1));
    }
    // source line 94, bytecode pc 126
    (_arr_Lieutenant = this._initInstance().Generals.getLieutenantByPkId(general_pk_id));
    // source line 95, bytecode pc 131
    (j = 0);
    while ((j < _arr_Lieutenant.length)) {
        if ((skill_id === this._initInstance().Generals.getNaturalSkill(_arr_Lieutenant[j]).getId())) {
            // source line 97, bytecode pc 195
            return true;
        }
        // source line 95, bytecode pc 209
        (j = (+j + 1));
    }
    // source line 100, bytecode pc 230
    return false;
},
    getListWithoutNaturalSkillAndPkId: function() {
    var _arr_pk_id, a, _rs_obj, _arr_skill_all, i, arguments;
    // source line 104, bytecode pc 4
    (arguments = arguments);
    // source line 105, bytecode pc 26
    xs.Debug.testBegin();
    // source line 106, bytecode pc 35
    (_arr_pk_id = []);
    // source line 107, bytecode pc 40
    (a = 0);
    while ((a < arguments.length)) {
        // source line 108, bytecode pc 69
        _arr_pk_id.push(arguments[a]);
        // source line 107, bytecode pc 83
        (a = (+a + 1));
    }
    // source line 111, bytecode pc 111
    (_rs_obj = []);
    // source line 112, bytecode pc 127
    (_arr_skill_all = this.getAllWithDefaultSort());
    // source line 114, bytecode pc 132
    (i = 0);
    while ((i < _arr_skill_all.length)) {
        if (((_arr_skill_all[i].isInborn() === false) && ((_arr_pk_id.inArray(_arr_skill_all[i].getPkId()) === false) && (_arr_skill_all[i].getCanFit() === true)))) {
            // source line 120, bytecode pc 253
            _rs_obj.push(_arr_skill_all[i]);
        }
        // source line 114, bytecode pc 267
        (i = (+i + 1));
    }
    // source line 124, bytecode pc 314
    xs.Debug.testEnd("getListWithoutNaturalSkillAndPkId");
    // source line 127, bytecode pc 318
    return _rs_obj;
},
    isTeamSkillMax: function() {
    var _arr_skill_all, i, generalPkid;
    // source line 132, bytecode pc 15
    (_arr_skill_all = this.getAllSkillIsWorn());
    // source line 133, bytecode pc 20
    (i = 0);
    while ((i < _arr_skill_all.length)) {
        // source line 135, bytecode pc 48
        (generalPkid = _arr_skill_all[i].getGeneralPkId());
        if (generalPkid) {
        }
        // source line 133, bytecode pc 70
        (i = (+i + 1));
    }
},
    getAllSkillIsWorn: function() {
    var _rs_obj, _arr_skill_all, i;
    // source line 148, bytecode pc 8
    (_rs_obj = []);
    // source line 149, bytecode pc 24
    (_arr_skill_all = this.getAllWithDefaultSort());
    // source line 151, bytecode pc 29
    (i = 0);
    while ((i < _arr_skill_all.length)) {
        if (_arr_skill_all[i].getGeneralPkId()) {
            // source line 154, bytecode pc 81
            _rs_obj.push(_arr_skill_all[i]);
        }
        // source line 151, bytecode pc 95
        (i = (+i + 1));
    }
    // source line 157, bytecode pc 118
    return _rs_obj;
},
    _updateNotice: function() {
    // source line 162, bytecode pc 22
    xs.log_hsq("_updateNotice Skill");
    // source line 163, bytecode pc 62
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Skill_Change, this);
},
    isHaveSkillCanBeEaten: function() {
    var _bool, _arr_skill_all, i;
    // source line 168, bytecode pc 4
    (_bool = false);
    // source line 169, bytecode pc 20
    (_arr_skill_all = this.getAllWithDefaultSort());
    // source line 170, bytecode pc 25
    (i = 0);
    while ((i < _arr_skill_all.length)) {
        if (!_arr_skill_all[i].getGeneralPkId()) {
            // source line 173, bytecode pc 60
            (_bool = true);
            // source line 174, bytecode pc 64
            return _bool;
        }
        // source line 170, bytecode pc 78
        (i = (+i + 1));
    }
    // source line 177, bytecode pc 101
    return _bool;
},
    getAllSkillIsNotWorn: function(pk_id) {
    var _rs_obj, _arr_skill_all, i;
    // source line 182, bytecode pc 8
    (_rs_obj = []);
    // source line 183, bytecode pc 24
    (_arr_skill_all = this.getAllWithDefaultSort());
    // source line 185, bytecode pc 29
    (i = 0);
    while ((i < _arr_skill_all.length)) {
        if ((!_arr_skill_all[i].getGeneralPkId() && (_arr_skill_all[i].getPkId() != pk_id))) {
            // source line 188, bytecode pc 110
            _rs_obj.push(_arr_skill_all[i]);
        }
        // source line 185, bytecode pc 124
        (i = (+i + 1));
    }
    // source line 191, bytecode pc 147
    return _rs_obj;
},
    getAllSkillCanBeEaten: function(pk_id) {
    var _rs_obj;
    // source line 197, bytecode pc 19
    (_rs_obj = this.getAllSkillIsNotWorn(pk_id));
    // source line 198, bytecode pc 23
    return _rs_obj;
},
    getHasFateGeneral: function(skill_id) {
    // source line 203, bytecode pc 32
    return this._initInstance().Fate.getSkillFateByTypeAndId(skill_id);
},
    getGeneral: function(obj_skill_model) {
    var general_pk_id;
    // source line 210, bytecode pc 17
    (general_pk_id = obj_skill_model.getGeneralPkId());
    if (!xs.Utils.isEmpty(general_pk_id)) {
        // source line 212, bytecode pc 81
        return this._initInstance().Generals.getByPkId(general_pk_id);
    }
    // source line 215, bytecode pc 83
    return null;
},
    haveEquipEnabledSkill: function(skillTypes) {
    var skills, i, _v, j;
    // source line 221, bytecode pc 15
    (skills = this.getAllSkillIsNotWorn());
    if ((skills.length > 0)) {
        // source line 223, bytecode pc 35
        (i = 0);
        while ((i < skills.length)) {
            // source line 224, bytecode pc 46
            (_v = true);
            // source line 225, bytecode pc 51
            (j = 0);
            while ((j < skillTypes.length)) {
                if (((skills[i].getSkillType() === skillTypes[j]) || (skills[i].getCanFit() === false))) {
                    // source line 228, bytecode pc 119
                    (_v = false);
                    break;
                }
                // source line 225, bytecode pc 138
                (j = (+j + 1));
            }
            if (_v) {
                // source line 233, bytecode pc 169
                return _v;
            }
            // source line 223, bytecode pc 183
            (i = (+i + 1));
        }
        // source line 236, bytecode pc 204
        return false;
    }
    // source line 238, bytecode pc 206
    return false;
}
}));
// source line 246, bytecode pc 329
(xs.Profile.GameData.Skills.create = function(param) {
    var _str, _cls_name, obj;
    // source line 247, bytecode pc 11
    (_str = param.play_id);
    // source line 248, bytecode pc 35
    (_cls_name = xs.Profile.GameData.Skills);
    // source line 249, bytecode pc 85
    (xs.Utils.isSet(_cls_name._instance) || (_cls_name._instance = []));
    if (_cls_name._instance[_str]) {
        // source line 252, bytecode pc 115
        return _cls_name._instance[_str];
    }
    // source line 255, bytecode pc 127
    (obj = new _cls_name());
    if ((obj && obj.init(param))) {
        // source line 257, bytecode pc 175
        (_cls_name._instance[_str] = obj);
        // source line 258, bytecode pc 179
        return obj;
    }
    // source line 260, bytecode pc 202
    xs.error("xs.Profile.GameData.Skills.create failed");
    // source line 261, bytecode pc 204
    return null;
});
