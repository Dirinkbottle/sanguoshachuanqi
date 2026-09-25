// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/GameData/Generals.js:1
// source line 845, bytecode pc 548
(xs.Profile.GameData.Generals = xs.Profile.GameData.Base.extend({
    name: "xs.Profile.GameData.Generals",
    nameType: xs.Constant_GameData_General,
    modelName: xs.Models.General,
    sortBy: xs.Constant_SortType_General_Default,
    dump: xs.Debug.emptyFunc,
    init: function(param) {
    // source line 21, bytecode pc 16
    this._super(param);
    // source line 22, bytecode pc 65
    this.dataRef.getNotifyCenter().addObserver(this, this.clearCache, xs.Constant_Notify_ModelChange_General_SortChange);
    // source line 26, bytecode pc 112
    xs.Utils.Notify.addObserver(this, this._clearCache, xs.Constant_Notify_Generals_Change);
    // source line 27, bytecode pc 159
    xs.Utils.Notify.addObserver(this, this._clearCache, xs.Constant_Notify_Skill_Change);
    // source line 28, bytecode pc 206
    xs.Utils.Notify.addObserver(this, this._clearCache, xs.Constant_Notify_Buddy_Change);
    // source line 29, bytecode pc 253
    xs.Utils.Notify.addObserver(this, this._clearCache, xs.Constant_Notify_Equipmen_Change);
    // source line 30, bytecode pc 300
    xs.Utils.Notify.addObserver(this, this._clearCache, xs.Constant_Notify_Team_Change);
    // source line 31, bytecode pc 347
    xs.Utils.Notify.addObserver(this, this._clearCache, xs.Constant_Notify_EagicalEqus_Change);
    // source line 32, bytecode pc 394
    xs.Utils.Notify.addObserver(this, this._clearCache, xs.Constant_Notify_Goddess_Change);
    // source line 33, bytecode pc 441
    xs.Utils.Notify.addObserver(this, this._clearCache, xs.Constant_Notify_Evolution_Change);
    // source line 34, bytecode pc 443
    return true;
},
    getLieutenantByPkId: function(pk_id) {
    var _rs_obj, _arr_general_all, i;
    // source line 40, bytecode pc 8
    (_rs_obj = []);
    // source line 41, bytecode pc 24
    (_arr_general_all = this.getAllWithDefaultSort());
    // source line 42, bytecode pc 29
    (i = 0);
    while ((i < _arr_general_all.length)) {
        if ((_arr_general_all[i].getMajorPkId() == pk_id)) {
            // source line 44, bytecode pc 85
            _rs_obj.push(_arr_general_all[i]);
        }
        // source line 42, bytecode pc 99
        (i = (+i + 1));
    }
    // source line 48, bytecode pc 122
    return _rs_obj;
},
    getLieutenantByPkIdAndPos: function(pk_id, pos) {
    var _arr_general_all, i;
    // source line 53, bytecode pc 25
    (_arr_general_all = this._getWithIndex("getMajorPkId", pk_id));
    // source line 54, bytecode pc 30
    (i = 0);
    while ((i < _arr_general_all.length)) {
        if (((_arr_general_all[i].getMajorPkId() == pk_id) && (_arr_general_all[i].getLieutenantPosition() == pos))) {
            // source line 57, bytecode pc 99
            return _arr_general_all[i];
        }
        // source line 54, bytecode pc 113
        (i = (+i + 1));
    }
    // source line 60, bytecode pc 134
    return null;
},
    getGeneralModelByPkid: function(pkid) {
    var _obj_general_all, i;
    // source line 64, bytecode pc 15
    (_obj_general_all = this.getAllWithDefaultSort());
    // source line 65, bytecode pc 20
    (i = 0);
    while ((i < _obj_general_all.length)) {
        if ((_obj_general_all[i].getPkId() == pkid)) {
            // source line 67, bytecode pc 61
            return _obj_general_all[i];
        }
        // source line 65, bytecode pc 75
        (i = (+i + 1));
    }
    // source line 70, bytecode pc 96
    return null;
},
    getGeneralInAll: function() {
    var _obj_general_all, _rs_obj, i;
    // source line 74, bytecode pc 15
    (_obj_general_all = this.getAllWithDefaultSort());
    // source line 75, bytecode pc 24
    (_rs_obj = []);
    // source line 77, bytecode pc 29
    (i = 0);
    while ((i < _obj_general_all.length)) {
        // source line 78, bytecode pc 58
        _rs_obj.push(_obj_general_all[i]);
        // source line 77, bytecode pc 72
        (i = (+i + 1));
    }
    // source line 80, bytecode pc 95
    return _rs_obj;
},
    getGeneralNotInTeam: function() {
    var _obj_general_all, _rs_obj, i, _key_pk_id, _is_in_team;
    // source line 86, bytecode pc 15
    (_obj_general_all = this.getAllWithDefaultSort());
    // source line 87, bytecode pc 24
    (_rs_obj = []);
    // source line 89, bytecode pc 29
    (i = 0);
    while ((i < _obj_general_all.length)) {
        // source line 90, bytecode pc 57
        (_key_pk_id = _obj_general_all[i].getPkId());
        // source line 91, bytecode pc 93
        (_is_in_team = this._initInstance().Team.isInTeam(_key_pk_id));
        if (_is_in_team) {
        } else {
            // source line 95, bytecode pc 129
            _rs_obj.push(_obj_general_all[i]);
        }
        // source line 89, bytecode pc 143
        (i = (+i + 1));
    }
    // source line 97, bytecode pc 166
    return _rs_obj;
},
    getGeneralNotInTeamAndNotInLieutenant: function() {
    var _obj_general_all, _rs_obj, _key_pk_id;
    // source line 102, bytecode pc 15
    (_obj_general_all = this.getGeneralNotInTeam());
    // source line 103, bytecode pc 24
    (_rs_obj = []);
    for (var _key_pk_id in _obj_general_all) {
        if (!(_obj_general_all.hasOwnProperty(_key_pk_id))) continue;
        if ((_obj_general_all[_key_pk_id].isLieutenant() === true)) {
        } else {
            // source line 109, bytecode pc 116
            _rs_obj.push(_obj_general_all[_key_pk_id]);
        }
    }
    // source line 111, bytecode pc 128
    return _rs_obj;
},
    getGeneralNotInTeamAndNotInLieutenantAndNotBuddy: function() {
    var _obj_general_all, _rs_obj, i, _key_pk_id, isLieutenant, _is_in_team, _isBuddy;
    // source line 116, bytecode pc 15
    (_obj_general_all = this.getAllWithDefaultSort());
    // source line 117, bytecode pc 24
    (_rs_obj = []);
    // source line 119, bytecode pc 29
    (i = 0);
    while ((i < _obj_general_all.length)) {
        // source line 120, bytecode pc 57
        (_key_pk_id = _obj_general_all[i].getPkId());
        // source line 121, bytecode pc 79
        (isLieutenant = _obj_general_all[i].isLieutenant());
        // source line 122, bytecode pc 115
        (_is_in_team = this._initInstance().Team.isInTeam(_key_pk_id));
        // source line 123, bytecode pc 151
        (_isBuddy = this._initInstance().Buddy.isBuddyByGeneralPkId(_key_pk_id));
        if ((_is_in_team || (isLieutenant || _isBuddy))) {
        } else {
            // source line 127, bytecode pc 205
            _rs_obj.push(_obj_general_all[i]);
        }
        // source line 119, bytecode pc 219
        (i = (+i + 1));
    }
    // source line 129, bytecode pc 242
    return _rs_obj;
},
    getListNotInTeamAndPkId: function() {
    var _arr_pk_id, a, _rs_obj, arguments;
    // source line 135, bytecode pc 4
    (arguments = arguments);
    // source line 136, bytecode pc 13
    (_arr_pk_id = []);
    // source line 137, bytecode pc 18
    (a = 0);
    while ((a < arguments.length)) {
        // source line 138, bytecode pc 47
        _arr_pk_id.push(arguments[a]);
        // source line 137, bytecode pc 61
        (a = (+a + 1));
    }
    // source line 141, bytecode pc 89
    (_rs_obj = []);
    // source line 142, bytecode pc 109
    (_rs_obj = this._getListNotInTeamAndPkId(_arr_pk_id));
    // source line 144, bytecode pc 113
    return _rs_obj;
},
    getListNotInTeamAndPkIdAndLevelGtOne: function() {
    var _arr_pk_id, a, _rs_obj, _rs_obj_2, i, arguments;
    // source line 147, bytecode pc 4
    (arguments = arguments);
    // source line 148, bytecode pc 13
    (_arr_pk_id = []);
    // source line 149, bytecode pc 18
    (a = 0);
    while ((a < arguments.length)) {
        // source line 150, bytecode pc 47
        _arr_pk_id.push(arguments[a]);
        // source line 149, bytecode pc 61
        (a = (+a + 1));
    }
    // source line 153, bytecode pc 100
    (_rs_obj = this._getListNotInTeamAndPkId(_arr_pk_id));
    // source line 155, bytecode pc 109
    (_rs_obj_2 = []);
    // source line 156, bytecode pc 114
    (i = 0);
    while ((i < _rs_obj.length)) {
        if ((_rs_obj[i].getLevel() > 1)) {
            // source line 158, bytecode pc 168
            _rs_obj_2.push(_rs_obj[i]);
        }
        // source line 156, bytecode pc 182
        (i = (+i + 1));
    }
    // source line 163, bytecode pc 205
    return _rs_obj_2;
},
    getListNotInTeamAndNotInLieutenantAndPkId: function() {
    var _arr_pk_id, a, _rs_obj, arguments;
    // source line 167, bytecode pc 4
    (arguments = arguments);
    // source line 168, bytecode pc 13
    (_arr_pk_id = []);
    // source line 169, bytecode pc 18
    (a = 0);
    while ((a < arguments.length)) {
        // source line 170, bytecode pc 47
        _arr_pk_id.push(arguments[a]);
        // source line 169, bytecode pc 61
        (a = (+a + 1));
    }
    // source line 173, bytecode pc 89
    (_rs_obj = []);
    // source line 174, bytecode pc 109
    (_rs_obj = this._getListNotInTeamAndNotInLieutenantAndPkId(_arr_pk_id));
    // source line 176, bytecode pc 113
    return _rs_obj;
},
    getListNotInTeamAndNotInLieutenantAndPkIdAndLevelGtOne: function() {
    var _arr_pk_id, a, _rs_obj, _rs_obj_2, i, arguments;
    // source line 180, bytecode pc 4
    (arguments = arguments);
    // source line 181, bytecode pc 13
    (_arr_pk_id = []);
    // source line 182, bytecode pc 18
    (a = 0);
    while ((a < arguments.length)) {
        // source line 183, bytecode pc 47
        _arr_pk_id.push(arguments[a]);
        // source line 182, bytecode pc 61
        (a = (+a + 1));
    }
    // source line 186, bytecode pc 100
    (_rs_obj = this._getListNotInTeamAndNotInLieutenantAndPkId(_arr_pk_id));
    // source line 188, bytecode pc 109
    (_rs_obj_2 = []);
    // source line 189, bytecode pc 114
    (i = 0);
    while ((i < _rs_obj.length)) {
        if ((_rs_obj[i].getLevel() > 1)) {
            // source line 191, bytecode pc 168
            _rs_obj_2.push(_rs_obj[i]);
        }
        // source line 189, bytecode pc 182
        (i = (+i + 1));
    }
    // source line 197, bytecode pc 205
    return _rs_obj_2;
},
    _getListNotInTeamAndPkId: function(arr_pk_id) {
    var _rs_obj, _arr_general_all, i;
    // source line 202, bytecode pc 8
    (_rs_obj = []);
    // source line 203, bytecode pc 24
    (_arr_general_all = this.getGeneralNotInTeam());
    // source line 204, bytecode pc 29
    (i = 0);
    while ((i < _arr_general_all.length)) {
        if ((arr_pk_id.inArray(_arr_general_all[i].getPkId()) === false)) {
            // source line 206, bytecode pc 98
            _rs_obj.push(_arr_general_all[i]);
        }
        // source line 204, bytecode pc 112
        (i = (+i + 1));
    }
    // source line 209, bytecode pc 135
    return _rs_obj;
},
    _getListNotInTeamAndNotInLieutenantAndPkId: function(arr_pk_id) {
    var _rs_obj, _arr_general_all, i;
    // source line 214, bytecode pc 8
    (_rs_obj = []);
    // source line 215, bytecode pc 24
    (_arr_general_all = this.getGeneralNotInTeamAndNotInLieutenant());
    // source line 216, bytecode pc 29
    (i = 0);
    while ((i < _arr_general_all.length)) {
        if ((arr_pk_id.inArray(_arr_general_all[i].getPkId()) === false)) {
            // source line 218, bytecode pc 98
            _rs_obj.push(_arr_general_all[i]);
        }
        // source line 216, bytecode pc 112
        (i = (+i + 1));
    }
    // source line 221, bytecode pc 135
    return _rs_obj;
},
    getByIdAndAutoCreate: function(id) {
    var _rs;
    // source line 227, bytecode pc 19
    (_rs = this.getById(id));
    if (!xs.Utils.isEmpty(_rs)) {
        // source line 229, bytecode pc 56
        return _rs[0];
    }
    // source line 232, bytecode pc 101
    (_rs = xs.Tools.Model.createModelWithBase(xs.Constant_ObjType_General, id));
    // source line 233, bytecode pc 105
    return _rs;
},
    getNaturalSkill: function(obj_general_model) {
    if (!xs.Utils.isEmpty(obj_general_model.getNaturalSkillPkId())) {
        // source line 241, bytecode pc 91
        (this.cacheNaturalSkill = this._initInstance().Skills.getByPkId(obj_general_model.getNaturalSkillPkId()));
    } else {
        // source line 243, bytecode pc 146
        (this.cacheNaturalSkill = this._initInstance().Skills.createWithBase(obj_general_model.getNaturalSkillId()));
    }
    // source line 246, bytecode pc 153
    return this.cacheNaturalSkill;
},
    getAllSkills: function(obj_general_model) {
    var _general_skill;
    // source line 251, bytecode pc 46
    (_general_skill = this._initInstance().Skills.getSkillByGeneralPkId(obj_general_model.getPkId()));
    // source line 252, bytecode pc 50
    return _general_skill;
},
    getLieutenantSkills: function(obj_general_model) {
    var _lieutenant_generals, _lieutenant_skill, i;
    // source line 257, bytecode pc 30
    (_lieutenant_generals = this.getLieutenantByPkId(obj_general_model.getPkId()));
    // source line 258, bytecode pc 39
    (_lieutenant_skill = []);
    // source line 260, bytecode pc 44
    (i = 0);
    while ((i < _lieutenant_generals.length)) {
        // source line 261, bytecode pc 86
        _lieutenant_skill.push(this.getNaturalSkill(_lieutenant_generals[i]));
        // source line 260, bytecode pc 100
        (i = (+i + 1));
    }
    // source line 263, bytecode pc 123
    return _lieutenant_skill;
},
    getAllSkillsAndLieutenantSkills: function(obj_general_model) {
    var _skillModels, _lieutenant_skill_models;
    // source line 268, bytecode pc 19
    (_skillModels = this.getAllSkills(obj_general_model));
    // source line 269, bytecode pc 39
    (_lieutenant_skill_models = this.getLieutenantSkills(obj_general_model));
    // source line 270, bytecode pc 61
    (_skillModels = _skillModels.concat(_lieutenant_skill_models));
    // source line 271, bytecode pc 65
    return _skillModels;
},
    isThisSkillCanBeSet: function(obj_general_model, skill_pk_id, pos) {
    var _skill_obj, _arr_skill_all, _arr_skill, j, z;
    // source line 277, bytecode pc 22
    (pos = (pos || xs.Constant_Skill_Pos_Second));
    if ((pos != xs.Constant_Skill_Pos_Second)) {
        // source line 279, bytecode pc 60
        this.error("the natural skill can not be changed");
    }
    // source line 282, bytecode pc 96
    (_skill_obj = this._initInstance().Skills.getByPkId(skill_pk_id));
    if ((_skill_obj.getSkillPos() == xs.Constant_Skill_Pos_First)) {
        // source line 284, bytecode pc 145
        this.log("the param skill is a natural skill");
        // source line 285, bytecode pc 147
        return false;
    }
    // source line 289, bytecode pc 167
    (_arr_skill_all = this.getLieutenantSkills(obj_general_model));
    // source line 290, bytecode pc 187
    (_arr_skill = this.getAllSkills(obj_general_model));
    // source line 291, bytecode pc 192
    (j = 0);
    while ((j < _arr_skill.length)) {
        if ((_arr_skill[j].getSkillPos() == pos)) {
            // source line 293, bytecode pc 254
            this.log((("remove the pos:" + pos) + "skill"));
        } else {
            // source line 296, bytecode pc 282
            _arr_skill_all.push(_arr_skill[j]);
        }
        // source line 291, bytecode pc 296
        (j = (+j + 1));
    }
    // source line 300, bytecode pc 320
    (z = 0);
    while ((z < _arr_skill_all.length)) {
        if ((_skill_obj.getSkillType() == _arr_skill_all[z].getSkillType())) {
            // source line 302, bytecode pc 398
            this.log(("the param skill has the same type" + _skill_obj.getSkillType()));
            // source line 303, bytecode pc 400
            return false;
        }
        // source line 300, bytecode pc 414
        (z = (+z + 1));
    }
    // source line 308, bytecode pc 435
    return true;
},
    isThisLieutenantCanBeSet: function(obj_general_model, general_pk_id, pos) {
    var _general_obj, _arr_skill_all, _arr_lieutenant, i, z;
    if ((general_pk_id == obj_general_model.getPkId())) {
        // source line 315, bytecode pc 45
        this.warn(("the same general pk id" + general_pk_id));
        // source line 316, bytecode pc 47
        return false;
    }
    // source line 319, bytecode pc 67
    (_general_obj = this.getByPkId(general_pk_id));
    if (this._initInstance().Team.isInTeam(general_pk_id)) {
        // source line 322, bytecode pc 127
        this.warn(("the general is in team" + general_pk_id));
        // source line 323, bytecode pc 129
        return false;
    }
    if ((_general_obj.getMajorPkId() == obj_general_model.getPkId())) {
        if ((_general_obj.getLieutenantPosition() == pos)) {
            // source line 329, bytecode pc 205
            this.log("not change!!!");
            // source line 330, bytecode pc 207
            return false;
        }
        // source line 332, bytecode pc 226
        this.log("the skill is a skill in the general!!");
        // source line 333, bytecode pc 228
        return true;
    }
    // source line 337, bytecode pc 248
    (_arr_skill_all = this.getAllSkills(obj_general_model));
    // source line 338, bytecode pc 279
    (_arr_lieutenant = this.getLieutenantByPkId(obj_general_model.getPkId()));
    // source line 339, bytecode pc 284
    (i = 0);
    while ((i < _arr_lieutenant.length)) {
        if ((_arr_lieutenant[i].getLieutenantPosition() == pos)) {
            // source line 341, bytecode pc 346
            this.log((("remove the pos:" + pos) + "lieutenant"));
        } else {
            // source line 344, bytecode pc 387
            _arr_skill_all.push(this.getNaturalSkill(_arr_lieutenant[i]));
        }
        // source line 339, bytecode pc 401
        (i = (+i + 1));
    }
    // source line 347, bytecode pc 425
    (z = 0);
    while ((z < _arr_skill_all.length)) {
        if ((this.getNaturalSkill(_general_obj).getSkillType() == _arr_skill_all[z].getSkillType())) {
            // source line 350, bytecode pc 484
            return false;
        }
        // source line 347, bytecode pc 498
        (z = (+z + 1));
    }
    // source line 354, bytecode pc 519
    return true;
},
    isSurrender: function(obj_general_model) {
    var _obj;
    // source line 359, bytecode pc 46
    (_obj = this._initInstance().Atlas.getByPkId(obj_general_model.getId()));
    if (_obj) {
        if ((_obj.getAtlasStatus() == xs.Constant_GeneralStatus_Surrender)) {
            // source line 363, bytecode pc 86
            return true;
        }
        // source line 365, bytecode pc 88
        return false;
    } else {
        // source line 369, bytecode pc 127
        this.warn(("the atlas obj is null:" + obj_general_model.getId()));
        // source line 370, bytecode pc 129
        return false;
    }
},
    _clearCache: function() {
    if (this._cache_in_func.getAttr) {
        // source line 377, bytecode pc 28
        (this._cache_in_func.getAttr = null);
    }
},
    _updateNotice: function() {
    // source line 383, bytecode pc 39
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Generals_Change, this);
},
    _clearCacheById: function(funcName, keys) {
    var _root, i, _key, arguments;
    // source line 388, bytecode pc 10
    (arguments = arguments);
    // source line 389, bytecode pc 43
    xs.log_hsq("_clearCacheById", funcName);
    // source line 391, bytecode pc 69
    (_root = this._cache_in_func[funcName]);
    // source line 393, bytecode pc 80
    (i = 0);
    while ((keys && (i < keys.length))) {
        // source line 394, bytecode pc 115
        (_key = keys[i]);
        // source line 395, bytecode pc 144
        (_root = _root[_key]);
        if ((_root === undefined)) {
            // source line 402, bytecode pc 166
            return false;
        } else {
            if ((i === (keys.length - 1))) {
                // source line 404, bytecode pc 208
                delete _root;
                // source line 405, bytecode pc 210
                return true;
            }
        }
        // source line 393, bytecode pc 243
        (i = (+i + 1));
    }
    // source line 408, bytecode pc 291
    return false;
},
    getAttr: function(obj_general_model, attrType) {
    var _cache_key_0, _cache_key_1, _fight_point, _Atk, _Def, _Hp, _Int, _obj_magicalEqu, _obj_meridianTopModel, valueModel, lieutenantArray, i, magicalEqu, _arr_general_skill_all, _naked, _ret, _is_inTeam, _skill, _equ, _fate, _goddessFate, _goddess, _formula, _lieutenant, arguments;
    // source line 417, bytecode pc 4
    (arguments = arguments);
    // source line 418, bytecode pc 22
    (_cache_key_0 = obj_general_model.getPkId());
    // source line 419, bytecode pc 29
    (_cache_key_1 = attrType);
    if (this._isCacheHint("getAttr", [ _cache_key_0, _cache_key_1 ])) {
        // source line 422, bytecode pc 111
        return this._getCacheData("getAttr", [ _cache_key_0, _cache_key_1 ]);
    }
    if ((attrType === xs.Constant_AttrType_FightPoint)) {
        // source line 427, bytecode pc 135
        (_fight_point = 0);
        // source line 431, bytecode pc 140
        (_Atk = 0);
        // source line 432, bytecode pc 145
        (_Def = 0);
        // source line 433, bytecode pc 150
        (_Hp = 0);
        // source line 434, bytecode pc 155
        (_Int = 0);
        // source line 437, bytecode pc 221
        (_obj_magicalEqu = xs.Profile.GameData.Mgr.getInstance().MagicalEqus.getByGeneralId(obj_general_model.getId()));
        if (_obj_magicalEqu) {
            // source line 439, bytecode pc 258
            (_Atk = _obj_magicalEqu.getPointEffectValAllByType(xs.Constant_AttrType_Atk));
            // source line 440, bytecode pc 287
            (_Def = _obj_magicalEqu.getPointEffectValAllByType(xs.Constant_AttrType_Def));
            // source line 441, bytecode pc 316
            (_Hp = _obj_magicalEqu.getPointEffectValAllByType(xs.Constant_AttrType_Hp));
            // source line 442, bytecode pc 345
            (_Int = _obj_magicalEqu.getPointEffectValAllByType(xs.Constant_AttrType_Int));
        }
        // source line 444, bytecode pc 411
        (_obj_meridianTopModel = xs.Profile.GameData.Mgr.getInstance().MeridianTops.getByGeneralPkId(obj_general_model.getPkId()));
        if (_obj_meridianTopModel) {
            // source line 446, bytecode pc 437
            (valueModel = _obj_meridianTopModel.getMeridianAndMeridianPointBuffValAll());
            // source line 447, bytecode pc 453
            (_Atk = (_Atk + valueModel.gong));
            // source line 448, bytecode pc 469
            (_Def = (_Def + valueModel.fang));
            // source line 449, bytecode pc 485
            (_Hp = (_Hp + valueModel.xue));
            // source line 450, bytecode pc 501
            (_Int = (_Int + valueModel.zhi));
        }
        // source line 453, bytecode pc 567
        (lieutenantArray = xs.Profile.GameData.Mgr.getInstance().Generals.getLieutenantByPkId(obj_general_model.getPkId()));
        // source line 454, bytecode pc 572
        (i = 0);
        while ((i < lieutenantArray.length)) {
            // source line 455, bytecode pc 648
            (magicalEqu = xs.Profile.GameData.Mgr.getInstance().MagicalEqus.getByGeneralId(lieutenantArray[i].getId()));
            if (magicalEqu) {
                // source line 457, bytecode pc 689
                (_Atk = (_Atk + magicalEqu.getPointEffectValAllByType(xs.Constant_AttrType_Atk)));
                // source line 458, bytecode pc 722
                (_Def = (_Def + magicalEqu.getPointEffectValAllByType(xs.Constant_AttrType_Def)));
                // source line 459, bytecode pc 755
                (_Hp = (_Hp + magicalEqu.getPointEffectValAllByType(xs.Constant_AttrType_Hp)));
                // source line 460, bytecode pc 788
                (_Int = (_Int + magicalEqu.getPointEffectValAllByType(xs.Constant_AttrType_Int)));
            }
            // source line 454, bytecode pc 802
            (i = (+i + 1));
        }
        // source line 468, bytecode pc 983
        (_fight_point = (_fight_point + xs.Tools.Card.calculateAttrType_FightPoint((this.getAttr(obj_general_model, xs.Constant_AttrType_Atk) + _Atk), (this.getAttr(obj_general_model, xs.Constant_AttrType_Def) + _Def), (this.getAttr(obj_general_model, xs.Constant_AttrType_Hp) + _Hp), (this.getAttr(obj_general_model, xs.Constant_AttrType_Int) + _Int))));
        // source line 474, bytecode pc 1003
        (_arr_general_skill_all = this.getAllSkillsAndLieutenantSkills(obj_general_model));
        // source line 475, bytecode pc 1008
        (i = 0);
        while ((i < _arr_general_skill_all.length)) {
            // source line 476, bytecode pc 1051
            (_fight_point = (_fight_point + _arr_general_skill_all[i].getAttrNaked(xs.Constant_AttrType_FightPoint)));
            // source line 475, bytecode pc 1065
            (i = (+i + 1));
        }
        // source line 479, bytecode pc 1110
        return xs.Utils.parseIntSafe(_fight_point);
    }
    // source line 482, bytecode pc 1141
    this.assert((arguments.length === 2), "err12312");
    // source line 485, bytecode pc 1163
    (_naked = obj_general_model.getAttrNaked(attrType));
    // source line 487, bytecode pc 1168
    (_ret = 0);
    // source line 489, bytecode pc 1215
    (_is_inTeam = this._initInstance().Team.isInTeam(obj_general_model.getPkId()));
    if (_is_inTeam) {
        // source line 493, bytecode pc 1247
        (_skill = this._getAttrOffsetBySkill(obj_general_model, attrType));
        // source line 494, bytecode pc 1271
        (_equ = this._getAttrOffsetByEqu(obj_general_model, attrType));
        // source line 496, bytecode pc 1295
        (_fate = this._getAttrOffsetByFate(obj_general_model, attrType));
        // source line 498, bytecode pc 1319
        (_goddessFate = this._getAttrOffsetByGoddessFate(obj_general_model, attrType));
        // source line 500, bytecode pc 1343
        (_goddess = this._getAttrOffsetByGoddess(obj_general_model, attrType));
        // source line 502, bytecode pc 1367
        (_formula = this._getAttrOffsetByFormula(obj_general_model, attrType));
        // source line 504, bytecode pc 1391
        (_lieutenant = this._getAttrOffsetByLieutenantAttrPlus(obj_general_model, attrType));
        // source line 506, bytecode pc 1426
        (_ret = (((((((_naked + _skill) + _equ) + _fate) + _formula) + _lieutenant) + _goddessFate) + _goddess));
    } else {
        // source line 511, bytecode pc 1438
        (_ret = _naked);
    }
    // source line 514, bytecode pc 1467
    (_ret = xs.Utils.floorSafe(_ret));
    // source line 515, bytecode pc 1521
    this._setCacheData("getAttr", [ obj_general_model.getPkId(), attrType ], _ret);
    // source line 516, bytecode pc 1525
    return _ret;
},
    _getAttrOffsetBySkill: function(obj_general_model, attrType) {
    var _ret, _generalsInTeam, i, _generalModel, _generalsInBuddy, _generalBuddyModel;
    // source line 522, bytecode pc 4
    (_ret = 0);
    // source line 525, bytecode pc 8
    switch (attrType) {
        case xs.Constant_AttrType_FightPoint:
        // source line 527, bytecode pc 56
        (_ret = (_ret + this._getFightPointOffsetBySkill(obj_general_model, attrType)));
        break;
        default:
        // source line 532, bytecode pc 93
        (_generalsInTeam = this._initInstance().Team.getGeneralsInTeam());
        // source line 533, bytecode pc 98
        (i = 0);
        break;
    }
    do {
        // source line 535, bytecode pc 115
        (_generalModel = _generalsInTeam[i]);
        // source line 537, bytecode pc 147
        (_ret = (_ret + this._getEffectToGeneral(_generalModel, obj_general_model, attrType)));
        // source line 533, bytecode pc 161
        (i = (+i + 1));
    } while ((i < _generalsInTeam.length));
    // source line 541, bytecode pc 212
    (_generalsInBuddy = this._initInstance().Buddy.getGeneralsInBuddy());
    // source line 542, bytecode pc 217
    (i = 0);
    while ((i < _generalsInBuddy.length)) {
        // source line 544, bytecode pc 234
        (_generalBuddyModel = _generalsInBuddy[i]);
        // source line 546, bytecode pc 266
        (_ret = (_ret + this._getEffectToGeneral(_generalBuddyModel, obj_general_model, attrType)));
        // source line 542, bytecode pc 280
        (i = (+i + 1));
    }
    // source line 552, bytecode pc 308
    return _ret;
    /* TODO_BYTECODE pc=end reason=unconsumed_operand_stack */
},
    _getFightPointOffsetBySkill: function(obj_general_model, attrType) {
    var _ret, _skills, i, _skill;
    if ((xs.Constant_AttrType_FightPoint != attrType)) {
        // source line 559, bytecode pc 20
        return 0;
    }
    // source line 561, bytecode pc 25
    (_ret = 0);
    // source line 562, bytecode pc 45
    (_skills = this.getAllSkillsAndLieutenantSkills(obj_general_model));
    // source line 564, bytecode pc 50
    (i = 0);
    while ((i < _skills.length)) {
        // source line 566, bytecode pc 67
        (_skill = _skills[i]);
        // source line 568, bytecode pc 93
        (_ret = (_ret + _skill.getAttrOffsetByAttrType(attrType)));
        // source line 564, bytecode pc 106
        (i = (+i + 1));
    }
    // source line 571, bytecode pc 128
    return _ret;
},
    _getAttrOffsetByEqu: function(obj_general_model, attrType) {
    var _ret, _equs, i, _equ, _equAttr;
    // source line 577, bytecode pc 4
    (_ret = 0);
    // source line 578, bytecode pc 51
    (_equs = this._initInstance().Equipments.getEquimentByGeneralPkId(obj_general_model.getPkId()));
    // source line 580, bytecode pc 56
    (i = 0);
    while ((i < _equs.length)) {
        // source line 582, bytecode pc 73
        (_equ = _equs[i]);
        // source line 583, bytecode pc 95
        (_equAttr = _equ.getAttrWithGems(attrType));
        // source line 584, bytecode pc 106
        (_ret = (_ret + _equAttr));
        // source line 580, bytecode pc 119
        (i = (+i + 1));
    }
    // source line 587, bytecode pc 141
    return _ret;
},
    _getAttrOffsetByFate: function(obj_general_model, attrType) {
    var _base, _fates, _ret, i, _fate, _add_per;
    // source line 610, bytecode pc 21
    (_base = obj_general_model.getAttrNaked(attrType));
    // source line 612, bytecode pc 39
    (_fates = obj_general_model.getFates());
    // source line 614, bytecode pc 44
    (_ret = 0);
    // source line 616, bytecode pc 49
    (i = 0);
    while ((i < _fates.length)) {
        // source line 618, bytecode pc 66
        (_fate = _fates[i]);
        // source line 619, bytecode pc 110
        (_add_per = this._initInstance().Fate.getAttrPer(_fate, attrType, obj_general_model));
        // source line 620, bytecode pc 125
        (_ret = (_ret + (_base * _add_per)));
        // source line 616, bytecode pc 138
        (i = (+i + 1));
    }
    // source line 623, bytecode pc 160
    return _ret;
},
    _getAttrOffsetByGoddessFate: function(obj_general_model, attrType) {
    var _base_Atk, _base_Def, _base_Hp, _base_Int, _base, _goddessID, _fates, _ret, i, _fate, _add_per;
    // source line 630, bytecode pc 28
    (_base_Atk = obj_general_model.getAttrNaked(xs.Constant_AttrType_Atk));
    // source line 631, bytecode pc 57
    (_base_Def = obj_general_model.getAttrNaked(xs.Constant_AttrType_Def));
    // source line 632, bytecode pc 86
    (_base_Hp = obj_general_model.getAttrNaked(xs.Constant_AttrType_Hp));
    // source line 633, bytecode pc 115
    (_base_Int = obj_general_model.getAttrNaked(xs.Constant_AttrType_Int));
    // source line 635, bytecode pc 134
    (_base = (((_base_Atk + _base_Def) + _base_Hp) + _base_Int));
    // source line 637, bytecode pc 166
    (_goddessID = this._initInstance().Goddess.getFateGoddess());
    if (!_goddessID) {
        // source line 640, bytecode pc 177
        return 0;
    }
    // source line 643, bytecode pc 222
    (_fates = xs.Models.Goddess.createWithBase(_goddessID).getFates());
    // source line 645, bytecode pc 227
    (_ret = 0);
    // source line 647, bytecode pc 232
    (i = 0);
    while ((i < _fates.length)) {
        // source line 649, bytecode pc 249
        (_fate = _fates[i]);
        // source line 650, bytecode pc 293
        (_add_per = this._initInstance().GoddessFate.getAttrPer(_fate, attrType, obj_general_model));
        // source line 651, bytecode pc 308
        (_ret = (_ret + (_base * _add_per)));
        // source line 647, bytecode pc 321
        (i = (+i + 1));
    }
    // source line 655, bytecode pc 343
    return _ret;
},
    _getAttrOffsetByGoddess: function(obj_general_model, attrType) {
    var _base, _goddessID, _buffList, _ret, i, _buffType, _buff;
    // source line 662, bytecode pc 21
    (_base = obj_general_model.getAttrNaked(attrType));
    // source line 664, bytecode pc 53
    (_goddessID = this._initInstance().Goddess.getFateGoddess());
    if (!_goddessID) {
        // source line 667, bytecode pc 64
        return 0;
    }
    // source line 670, bytecode pc 109
    (_buffList = xs.Models.Goddess.createWithBase(_goddessID).getBuffList());
    // source line 672, bytecode pc 114
    (_ret = 0);
    // source line 673, bytecode pc 119
    (i = 0);
    while ((i < _buffList.length)) {
        // source line 674, bytecode pc 160
        (_buffType = xs.Utils.parseIntSafe(_buffList[i][0]));
        // source line 675, bytecode pc 195
        (_buff = xs.Utils.parseIntSafe(_buffList[i][1]));
        if ((_buffType == attrType)) {
            // source line 677, bytecode pc 225
            return (_ret = (_ret + ((_base * _buff) / 100)));
        }
        // source line 673, bytecode pc 238
        (i = (+i + 1));
    }
    // source line 681, bytecode pc 260
    return _ret;
},
    _getAttrOffsetByLieutenantAttrPlus: function(obj_general_model, attrType) {
    var _base, _lieutenant;
    // source line 688, bytecode pc 21
    (_base = obj_general_model.getAttrNaked(attrType));
    // source line 690, bytecode pc 45
    (_lieutenant = this._getLieutenantAttrPlus(obj_general_model, attrType));
    // source line 694, bytecode pc 56
    return (_base * (_lieutenant / 100));
},
    _getAttrOffsetByFormula: function(obj_general_model, attrType) {
    var attr_val;
    // source line 701, bytecode pc 3
    switch (attrType) {
        case xs.Constant_AttrType_FightPoint:
        case xs.Constant_AttrType_Miss:
        case xs.Constant_AttrType_Aim:
        case xs.Constant_AttrType_Cri:
        case xs.Constant_AttrType_Tou:
        // source line 707, bytecode pc 85
        return 0;
        break;
        default:
        break;
    }
    // source line 712, bytecode pc 142
    (attr_val = this._initInstance().Combat.getCombatByType(attrType).getExtraBuff());
    // source line 713, bytecode pc 146
    return attr_val;
},
    _getEffectToGeneral: function(generalModelA, generalModelB, attrType) {
    var _skillModels, _lieutenant_skill_models, _countOffset, i, _skillModel, _offset;
    // source line 725, bytecode pc 115
    this.assert((this._initInstance().Team.isInTeam(generalModelA.getPkId()) || this._initInstance().Buddy.isInBuddy(generalModelA.getPkId())), "not in team,invoke _getEffectToGeneral ", generalModelA);
    if (this._initInstance().Team.isInTeam(generalModelB.getPkId())) {
        // source line 730, bytecode pc 183
        (_skillModels = this.getAllSkills(generalModelA));
        // source line 733, bytecode pc 203
        (_lieutenant_skill_models = this.getLieutenantSkills(generalModelA));
        // source line 735, bytecode pc 225
        (_skillModels = _skillModels.concat(_lieutenant_skill_models));
        // source line 737, bytecode pc 230
        (_countOffset = 0);
        // source line 738, bytecode pc 235
        (i = 0);
        while ((i < _skillModels.length)) {
            // source line 741, bytecode pc 252
            (_skillModel = _skillModels[i]);
            // source line 743, bytecode pc 282
            (_offset = _skillModel.getAttrOffsetByAttrType(attrType, generalModelB, generalModelA));
            // source line 747, bytecode pc 293
            (_countOffset = (_countOffset + _offset));
            // source line 738, bytecode pc 307
            (i = (+i + 1));
        }
        // source line 750, bytecode pc 330
        return _countOffset;
    } else {
        // source line 754, bytecode pc 337
        return 0;
    }
},
    _getLieutenantAttrPlus: function(obj_general_model, attrType) {
    var lieutenantGenerals, attrPlus, i, attrTypes, effects;
    // source line 761, bytecode pc 30
    (lieutenantGenerals = this.getLieutenantByPkId(obj_general_model.getPkId()));
    // source line 762, bytecode pc 35
    (attrPlus = 0);
    // source line 763, bytecode pc 40
    (i = 0);
    while ((i < lieutenantGenerals.length)) {
        if (lieutenantGenerals[i].havaLieutenantAttrPlus()) {
            // source line 765, bytecode pc 91
            (attrTypes = lieutenantGenerals[i].getLieutenantAttrPlusTypes());
            // source line 766, bytecode pc 115
            (effects = lieutenantGenerals[i].getLieutenantAttrPlusEffects(true));
            if ((attrType == attrTypes.firstAttrType)) {
                // source line 768, bytecode pc 165
                (attrPlus = (attrPlus + xs.parseFloat(effects.firstAttr)));
            }
        }
        // source line 763, bytecode pc 179
        (i = (+i + 1));
    }
    // source line 774, bytecode pc 202
    return attrPlus;
},
    getReferenceSoul: function(obj_general_model) {
    var souls;
    // source line 779, bytecode pc 46
    (souls = this._initInstance().GeneralSouls.getById(obj_general_model.getId()));
    if ((souls.length >= 1)) {
        // source line 781, bytecode pc 67
        return souls[0];
    }
    // source line 783, bytecode pc 69
    return null;
},
    haveEquipEnabledLieutenant: function(skillTypes) {
    var generals_notAtTeam, i, _v, j, naturalSkill;
    // source line 789, bytecode pc 50
    (generals_notAtTeam = xs.Profile.GameData.Mgr.getInstance().Generals.getGeneralNotInTeamAndNotInLieutenant());
    // source line 791, bytecode pc 55
    (i = 0);
    while ((i < generals_notAtTeam.length)) {
        // source line 792, bytecode pc 66
        (_v = true);
        // source line 793, bytecode pc 71
        (j = 0);
        while ((j < skillTypes.length)) {
            // source line 796, bytecode pc 147
            (naturalSkill = xs.Profile.GameData.Mgr.getInstance().Skills.getNaturalSkillByGeneralPkId(generals_notAtTeam[i].getPkId()));
            // source line 799, bytecode pc 182
            xs.assert(naturalSkill, "naturalSkill is null", generals_notAtTeam[i]);
            if ((naturalSkill.getSkillType() === skillTypes[j])) {
                // source line 802, bytecode pc 214
                (_v = false);
                break;
            }
            // source line 793, bytecode pc 233
            (j = (+j + 1));
        }
        if ((_v === true)) {
            // source line 807, bytecode pc 264
            return true;
        }
        // source line 791, bytecode pc 278
        (i = (+i + 1));
    }
    // source line 810, bytecode pc 299
    return false;
},
    getAll_canBreach: function() {
    var _array_all, _ret, i, _tmp;
    // source line 818, bytecode pc 15
    (_array_all = this.getAll());
    // source line 819, bytecode pc 24
    (_ret = []);
    // source line 821, bytecode pc 29
    (i = 0);
    while ((i < _array_all.length)) {
        // source line 822, bytecode pc 46
        (_tmp = _array_all[i]);
        if (_tmp.checkAbleToBreach()) {
            // source line 825, bytecode pc 84
            _ret.push(_tmp);
        }
        // source line 821, bytecode pc 98
        (i = (+i + 1));
    }
    // source line 828, bytecode pc 121
    return _ret;
},
    isHaveCanBreachGeneral: function() {
    var _bool, _array_all, i, _tmp;
    // source line 832, bytecode pc 4
    (_bool = false);
    // source line 833, bytecode pc 20
    (_array_all = this.getAll());
    // source line 834, bytecode pc 25
    (i = 0);
    while ((i < _array_all.length)) {
        // source line 835, bytecode pc 42
        (_tmp = _array_all[i]);
        if (_tmp.checkAbleToBreach()) {
            // source line 837, bytecode pc 66
            (_bool = true);
            // source line 838, bytecode pc 70
            return _bool;
        }
        // source line 834, bytecode pc 84
        (i = (+i + 1));
    }
    // source line 841, bytecode pc 107
    return _bool;
},
    getGeneralModelByGeneralId: function(id) {
    var _obj_general_all, i;
    // source line 846, bytecode pc 15
    (_obj_general_all = this.getAllWithDefaultSort());
    // source line 847, bytecode pc 20
    (i = 0);
    while ((i < _obj_general_all.length)) {
        if ((_obj_general_all[i].getId() == id)) {
            // source line 849, bytecode pc 61
            return _obj_general_all[i];
        }
        // source line 847, bytecode pc 75
        (i = (+i + 1));
    }
    // source line 852, bytecode pc 96
    return null;
}
}));
// source line 857, bytecode pc 579
(xs.Profile.GameData.Generals.create = function(param) {
    var _str, _cls_name, obj;
    // source line 859, bytecode pc 11
    (_str = param.play_id);
    // source line 860, bytecode pc 35
    (_cls_name = xs.Profile.GameData.Generals);
    // source line 861, bytecode pc 85
    (xs.Utils.isSet(_cls_name._instance) || (_cls_name._instance = []));
    if (_cls_name._instance[_str]) {
        // source line 864, bytecode pc 115
        return _cls_name._instance[_str];
    }
    // source line 867, bytecode pc 127
    (obj = new _cls_name());
    if ((obj && obj.init(param))) {
        // source line 869, bytecode pc 175
        (_cls_name._instance[_str] = obj);
        // source line 870, bytecode pc 179
        return obj;
    }
    // source line 873, bytecode pc 202
    xs.error("xs.Profile.GameData.Generals.create failed");
    // source line 874, bytecode pc 204
    return null;
});
