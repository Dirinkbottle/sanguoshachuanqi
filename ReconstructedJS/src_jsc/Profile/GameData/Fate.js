// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/GameData/Fate.js:1
// source line 279, bytecode pc 249
(xs.Profile.GameData.Fate = xs.Profile.GameData.Base.extend({
    fateInfo: {},
    name: "xs.Profile.GameData.Fate",
    dump: xs.Debug.emptyFunc,
    init: function(param) {
    // source line 19, bytecode pc 16
    this._super(param);
    // source line 21, bytecode pc 63
    xs.Utils.Notify.addObserver(this, this._clearFateByTypeAndId, xs.Constant_Notify_Generals_Change);
    // source line 22, bytecode pc 110
    xs.Utils.Notify.addObserver(this, this._clearFateByTypeAndId, xs.Constant_Notify_Team_Change);
    // source line 23, bytecode pc 157
    xs.Utils.Notify.addObserver(this, this._clearFateByTypeAndId, xs.Constant_Notify_Buddy_Change);
    // source line 24, bytecode pc 204
    xs.Utils.Notify.addObserver(this, this._clearFateByTypeAndId, xs.Constant_Notify_Equipmen_Change);
    // source line 25, bytecode pc 251
    xs.Utils.Notify.addObserver(this, this._clearFateByTypeAndId, xs.Constant_Notify_Skill_Change);
    // source line 26, bytecode pc 253
    return true;
},
    getEquipmentFateByTypeAndId: function(equipment_id) {
    // source line 31, bytecode pc 32
    return this._getFateByTypeAndId(xs.Models.Fate_Type_Equipment, equipment_id);
},
    getSkillFateByTypeAndId: function(skill_id) {
    // source line 36, bytecode pc 32
    return this._getFateByTypeAndId(xs.Models.Fate_Type_Skill, skill_id);
},
    _clearFateByTypeAndId: function() {
    // source line 41, bytecode pc 22
    xs.log_hsq("_clearFateByTypeAndId");
    if (this._cache_in_func._getFateByTypeAndId) {
        // source line 43, bytecode pc 51
        (this._cache_in_func._getFateByTypeAndId = null);
    }
    // source line 45, bytecode pc 64
    this._clearLightedInGeneral();
},
    _clearLightedInGeneral: function() {
    // source line 50, bytecode pc 22
    xs.log_hsq("_clearLightedInGeneral");
    if (this._cache_in_func.isLightedInGeneral) {
        // source line 53, bytecode pc 51
        (this._cache_in_func.isLightedInGeneral = null);
    }
},
    _getFateByTypeAndId: function(fate_type, skill_id) {
    var _cache_key_0, _cache_key_1, _rs, _cfg_fate_all, fate_id, _obj, _arr_general, i, _obj_general;
    // source line 60, bytecode pc 6
    (_cache_key_0 = fate_type);
    // source line 61, bytecode pc 13
    (_cache_key_1 = skill_id);
    if (this._isCacheHint("_getFateByTypeAndId", [ _cache_key_0, _cache_key_1 ])) {
        // source line 63, bytecode pc 95
        return this._getCacheData("_getFateByTypeAndId", [ _cache_key_0, _cache_key_1 ]);
    }
    // source line 66, bytecode pc 104
    (_rs = []);
    // source line 67, bytecode pc 145
    (_cfg_fate_all = xs.Tools.CfgData.readRecordByType(xs.Constant_CfgDataType_Fate));
    for (var fate_id in _cfg_fate_all) {
        if (!(_cfg_fate_all.hasOwnProperty(fate_id))) continue;
        // source line 71, bytecode pc 204
        (_obj = this.getById(fate_id));
        if (!(((_obj.getType() == fate_type) && _obj.getFateObject().inArray(skill_id)))) continue;
        // source line 75, bytecode pc 282
        (_arr_general = this._getFateBelongsGeneralId(fate_id));
        // source line 77, bytecode pc 319
        this.dump(((("_arr_general_fate_type" + fate_type) + "_fate_id") + fate_id), _arr_general);
        // source line 80, bytecode pc 324
        (i = 0);
        while ((i < _arr_general.length)) {
            // source line 81, bytecode pc 370
            (_obj_general = this._initInstance().Generals.getByIdAndAutoCreate(_arr_general[i]));
            // source line 82, bytecode pc 389
            _rs.push(_obj_general);
            // source line 80, bytecode pc 404
            i++;
        }
    }
    // source line 86, bytecode pc 473
    this._setCacheData("_getFateByTypeAndId", [ _cache_key_0, _cache_key_1 ], _rs);
    // source line 87, bytecode pc 477
    return _rs;
},
    getById: function(id) {
    // source line 92, bytecode pc 22
    this.assert(id, "gamedata/Fate.js getById error");
    if ((this.fateInfo[id] === undefined)) {
        // source line 94, bytecode pc 84
        (this.fateInfo[id] = xs.Models.Fate.createWithBase(id));
    }
    // source line 97, bytecode pc 95
    return this.fateInfo[id];
},
    _getFateBelongsGeneralId: function(fate_id) {
    var _cfg_general_all, _arr_general_id, general_id;
    // source line 102, bytecode pc 40
    (_cfg_general_all = xs.Tools.CfgData.readRecordByType(xs.Constant_CfgDataType_General));
    // source line 103, bytecode pc 49
    (_arr_general_id = []);
    for (var general_id in _cfg_general_all) {
        if (!(_cfg_general_all.hasOwnProperty(general_id))) continue;
        if (!(_cfg_general_all[general_id].general_fate_id.inArray(fate_id))) continue;
        // source line 106, bytecode pc 139
        _arr_general_id.push(general_id);
    }
    // source line 110, bytecode pc 151
    return _arr_general_id;
},
    getAttrPer: function(fateModel, type, generalModel) {
    if ((type === fateModel.getAdditionType())) {
        // source line 117, bytecode pc 43
        return this.getEffectPer(fateModel, generalModel);
    } else {
        // source line 120, bytecode pc 50
        return 0;
    }
},
    getEffectPer: function(fateModel, generalModel) {
    var count, _fate_ids, _base, _step;
    // source line 127, bytecode pc 23
    (count = this._countStepNum(fateModel, generalModel));
    // source line 129, bytecode pc 57
    (_fate_ids = (fateModel.getBaseDataRef().fate_object || []));
    // source line 131, bytecode pc 72
    switch (fateModel.getLimit()) {
        case xs.Models.Fate_Limit_Step:
        if ((count > 0)) {
            // source line 135, bytecode pc 172
            (_base = xs.Utils.parseFloatSafe(fateModel.getBaseDataRef().fate_effect));
            // source line 136, bytecode pc 217
            (_step = xs.Utils.parseFloatSafe(fateModel.getBaseDataRef().fate_effect_step));
            // source line 137, bytecode pc 237
            (this._effectValue = (_base + ((count - 1) * _step)));
            // source line 138, bytecode pc 247
            return (this._effectValue / 100);
        } else {
            // source line 140, bytecode pc 254
            return 0;
        }
        break;
        case xs.Models.Fate_Limit_All:
        if ((count === _fate_ids.length)) {
            // source line 147, bytecode pc 321
            (_base = xs.Utils.parseFloatSafe(fateModel.getBaseDataRef().fate_effect));
            // source line 148, bytecode pc 328
            return (_base / 100);
        } else {
            // source line 150, bytecode pc 335
            return 0;
        }
        break;
        default:
        // source line 156, bytecode pc 342
        return 0;
        break;
    }
},
    _countStepNum: function(fateModel, generalModel) {
    var count, _fate_ids, i;
    // source line 165, bytecode pc 4
    (count = 0);
    if ((!this._initInstance().Team.isInTeam(generalModel.getPkId()) && !generalModel.isLieutenant())) {
        // source line 171, bytecode pc 76
        return 0;
    }
    // source line 175, bytecode pc 110
    (_fate_ids = (fateModel.getBaseDataRef().fate_object || []));
    // source line 177, bytecode pc 125
    switch (fateModel.getType()) {
        case xs.Models.Fate_Type_General:
        // source line 180, bytecode pc 215
        (i = 0);
        while ((i < _fate_ids.length)) {
            if (this._initInstance().Team.isInTeamOrInLieutenant_GeneralId(_fate_ids[i])) {
                // source line 183, bytecode pc 271
                (count = (count + 1));
            }
            // source line 180, bytecode pc 284
            (i = (+i + 1));
        }
        break;
        case xs.Models.Fate_Type_Skill:
        // source line 190, bytecode pc 312
        (i = 0);
        while ((i < _fate_ids.length)) {
            if (this._initInstance().Skills.isGeneralPkIdEquipedSkillId(generalModel.getPkId(), _fate_ids[i])) {
                // source line 192, bytecode pc 383
                (count = (count + 1));
            }
            // source line 190, bytecode pc 396
            (i = (+i + 1));
        }
        break;
        case xs.Models.Fate_Type_Equipment:
        // source line 199, bytecode pc 424
        (i = 0);
        while ((i < _fate_ids.length)) {
            if (this._initInstance().Equipments.isGeneralPkIdEquipedEquipmentId(generalModel.getPkId(), _fate_ids[i])) {
                // source line 201, bytecode pc 495
                (count = (count + 1));
            }
            // source line 199, bytecode pc 508
            (i = (+i + 1));
        }
        break;
        case xs.Models.Fate_Type_MTip:
        // source line 208, bytecode pc 590
        xs.warn("Fate_Type_MTip", (("not support yet,Fate_Type_MTip" + fateModel.getId()) + fateModel.getType()));
        break;
        default:
        // source line 213, bytecode pc 629
        this.error("fate this.getType()", fateModel.getType());
        // source line 214, bytecode pc 631
        return 0;
        break;
    }
    // source line 219, bytecode pc 640
    return count;
},
    isLightedInGeneral: function(fateModel, generalModel) {
    var _cache_key_0, _cache_key_1, count, _fate_ids, _ret;
    // source line 227, bytecode pc 17
    (_cache_key_0 = fateModel.getId());
    // source line 228, bytecode pc 35
    (_cache_key_1 = generalModel.getPkId());
    if (this._isCacheHint("isLightedInGeneral", [ _cache_key_0, _cache_key_1 ])) {
        // source line 231, bytecode pc 117
        return this._getCacheData("isLightedInGeneral", [ _cache_key_0, _cache_key_1 ]);
    }
    // source line 234, bytecode pc 141
    (count = this._countStepNum(fateModel, generalModel));
    // source line 236, bytecode pc 175
    (_fate_ids = (fateModel.getBaseDataRef().fate_object || []));
    // source line 238, bytecode pc 180
    (_ret = false);
    // source line 239, bytecode pc 195
    switch (fateModel.getLimit()) {
        case xs.Models.Fate_Limit_Step:
        if ((count > 0)) {
            // source line 243, bytecode pc 255
            (_ret = true);
        }
        break;
        case xs.Models.Fate_Limit_All:
        if ((count === _fate_ids.length)) {
            // source line 250, bytecode pc 282
            (_ret = true);
        }
        break;
        default:
        break;
    }
    // source line 262, bytecode pc 357
    this._setCacheData("isLightedInGeneral", [ fateModel.getId(), generalModel.getPkId() ], _ret);
    // source line 264, bytecode pc 361
    return _ret;
},
    isHasFateWithEquId: function(generalModel, equModel) {
    // source line 270, bytecode pc 29
    return generalModel.isFateConnectWithEquipmentId(equModel.getId());
},
    isHasFateWithSkillId: function(generalModel, skillModel) {
    // source line 275, bytecode pc 29
    return generalModel.isFateConnectWithSkillId(skillModel.getId());
},
    isHasFateWithGeneralId: function(generalModel, generalModelOther) {
    // source line 280, bytecode pc 29
    return generalModel.isFateConnectWithGeneralId(generalModelOther.getId());
}
}));
// source line 287, bytecode pc 280
(xs.Profile.GameData.Fate.create = function(param) {
    var _str, _cls_name, obj;
    // source line 288, bytecode pc 11
    (_str = param.play_id);
    // source line 289, bytecode pc 35
    (_cls_name = xs.Profile.GameData.Fate);
    // source line 290, bytecode pc 85
    (xs.Utils.isSet(_cls_name._instance) || (_cls_name._instance = []));
    if (_cls_name._instance[_str]) {
        // source line 293, bytecode pc 115
        return _cls_name._instance[_str];
    }
    // source line 296, bytecode pc 127
    (obj = new _cls_name());
    if ((obj && obj.init(param))) {
        // source line 298, bytecode pc 175
        (_cls_name._instance[_str] = obj);
        // source line 299, bytecode pc 179
        return obj;
    }
    // source line 301, bytecode pc 202
    xs.error("xs.Profile.GameData.Equipments.create failed");
    // source line 302, bytecode pc 204
    return null;
});
