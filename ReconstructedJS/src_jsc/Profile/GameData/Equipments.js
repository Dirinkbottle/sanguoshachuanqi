// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/GameData/Equipments.js:1
// source line 303, bytecode pc 458
(xs.Profile.GameData.Equipments = xs.Profile.GameData.Base.extend({
    name: "xs.Profile.GameData.Equipments",
    nameType: xs.Constant_GameData_Equ,
    modelName: xs.Models.Equipment,
    dump: xs.Debug.emptyFunc,
    log: xs.Debug.emptyFunc,
    sortBy: xs.Constant_SortType_Equipment_Default,
    init: function(param) {
    // source line 23, bytecode pc 16
    this._super(param);
    // source line 24, bytecode pc 65
    this.dataRef.getNotifyCenter().addObserver(this, this.clearCache, xs.Constant_Notify_ModelChange_Equ_SortChange);
    // source line 25, bytecode pc 67
    return true;
},
    getWeaponByGeneralPkId: function(pk_id) {
    // source line 30, bytecode pc 27
    return this._getEquipmentGeneralPkIdAndPos(pk_id, xs.Constant_Equ_PosType_Weapon);
},
    getArmorByGeneralPkId: function(pk_id) {
    // source line 35, bytecode pc 27
    return this._getEquipmentGeneralPkIdAndPos(pk_id, xs.Constant_Equ_PosType_Armor);
},
    getMountByGeneralPkId: function(pk_id) {
    // source line 40, bytecode pc 27
    return this._getEquipmentGeneralPkIdAndPos(pk_id, xs.Constant_Equ_PosType_Mount);
},
    getKitByGeneralPkId: function(pk_id) {
    // source line 45, bytecode pc 27
    return this._getEquipmentGeneralPkIdAndPos(pk_id, xs.Constant_Equ_PosType_Kit);
},
    _updateNotice: function() {
    // source line 50, bytecode pc 39
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Equipmen_Change, this);
},
    _getEquipmentGeneralPkIdAndPos: function(pk_id, pos) {
    var _rs_obj, _arr_obj_equ, i;
    // source line 56, bytecode pc 4
    (_rs_obj = null);
    // source line 57, bytecode pc 24
    (_arr_obj_equ = this.getEquimentByGeneralPkId(pk_id));
    // source line 58, bytecode pc 29
    (i = 0);
    while ((i < _arr_obj_equ.length)) {
        if ((_arr_obj_equ[i].getPosType() == pos)) {
            // source line 61, bytecode pc 73
            (_rs_obj = _arr_obj_equ[i]);
            break;
        }
        // source line 58, bytecode pc 93
        i++;
    }
    // source line 66, bytecode pc 115
    return _rs_obj;
},
    getEquimentByGeneralPkId: function(general_pk_id) {
    var _rs_obj, _arr_equipment_all, i;
    // source line 71, bytecode pc 22
    this.assert(general_pk_id, "the getEquimentByGeneralPkId general_pk_id is error");
    // source line 72, bytecode pc 31
    (_rs_obj = []);
    // source line 74, bytecode pc 57
    (_arr_equipment_all = this._getWithIndex("getGeneralPkId", general_pk_id));
    // source line 75, bytecode pc 62
    (i = 0);
    while ((i < _arr_equipment_all.length)) {
        if ((_arr_equipment_all[i].getGeneralPkId() == general_pk_id)) {
            // source line 78, bytecode pc 118
            _rs_obj.push(_arr_equipment_all[i]);
        }
        // source line 75, bytecode pc 133
        i++;
    }
    // source line 82, bytecode pc 155
    return _rs_obj;
},
    isGeneralPkIdEquipedEquipmentId: function(general_pk_id, equ_id) {
    var _equs, i;
    // source line 87, bytecode pc 19
    (_equs = this.getEquimentByGeneralPkId(general_pk_id));
    // source line 88, bytecode pc 24
    (i = 0);
    while ((i < _equs.length)) {
        if ((equ_id === _equs[i].getId())) {
            // source line 90, bytecode pc 59
            return true;
        }
        // source line 88, bytecode pc 72
        (i = (+i + 1));
    }
    // source line 93, bytecode pc 92
    return false;
},
    getWeapon: function() {
    // source line 98, bytecode pc 23
    return this._getEquipmentByPos(xs.Constant_Equ_PosType_Weapon);
},
    getArmor: function() {
    // source line 103, bytecode pc 23
    return this._getEquipmentByPos(xs.Constant_Equ_PosType_Armor);
},
    getMount: function() {
    // source line 108, bytecode pc 23
    return this._getEquipmentByPos(xs.Constant_Equ_PosType_Mount);
},
    getKit: function() {
    // source line 113, bytecode pc 23
    return this._getEquipmentByPos(xs.Constant_Equ_PosType_Kit);
},
    _getEquipmentByPos: function(pos) {
    var _rs_obj, _arr_equipment_all, i;
    // source line 117, bytecode pc 8
    (_rs_obj = []);
    // source line 118, bytecode pc 24
    (_arr_equipment_all = this.getAllWithDefaultSort());
    // source line 119, bytecode pc 29
    (i = 0);
    while ((i < _arr_equipment_all.length)) {
        if ((_arr_equipment_all[i].getPosType() == pos)) {
            // source line 121, bytecode pc 85
            _rs_obj.push(_arr_equipment_all[i]);
        }
        // source line 119, bytecode pc 100
        i++;
    }
    // source line 125, bytecode pc 122
    return _rs_obj;
},
    getWeaponListWithoutPkId: function() {
    var _arr_pk_id, a, arguments;
    // source line 130, bytecode pc 4
    (arguments = arguments);
    // source line 131, bytecode pc 13
    (_arr_pk_id = []);
    // source line 132, bytecode pc 18
    (a = 0);
    while ((a < arguments.length)) {
        // source line 133, bytecode pc 47
        _arr_pk_id.push(arguments[a]);
        // source line 132, bytecode pc 62
        a++;
    }
    // source line 135, bytecode pc 108
    return this.getListWithoutPkId(xs.Constant_Equ_PosType_Weapon, _arr_pk_id);
},
    getArmorListWithoutPkId: function() {
    var _arr_pk_id, a, arguments;
    // source line 139, bytecode pc 4
    (arguments = arguments);
    // source line 140, bytecode pc 13
    (_arr_pk_id = []);
    // source line 141, bytecode pc 18
    (a = 0);
    while ((a < arguments.length)) {
        // source line 142, bytecode pc 47
        _arr_pk_id.push(arguments[a]);
        // source line 141, bytecode pc 62
        a++;
    }
    // source line 145, bytecode pc 108
    return this.getListWithoutPkId(xs.Constant_Equ_PosType_Armor, _arr_pk_id);
},
    getMountListWithoutPkId: function() {
    var _arr_pk_id, a, arguments;
    // source line 149, bytecode pc 4
    (arguments = arguments);
    // source line 150, bytecode pc 13
    (_arr_pk_id = []);
    // source line 151, bytecode pc 18
    (a = 0);
    while ((a < arguments.length)) {
        // source line 152, bytecode pc 47
        _arr_pk_id.push(arguments[a]);
        // source line 151, bytecode pc 62
        a++;
    }
    // source line 154, bytecode pc 108
    return this.getListWithoutPkId(xs.Constant_Equ_PosType_Mount, _arr_pk_id);
},
    getKitListWithoutPkId: function() {
    var _arr_pk_id, a, arguments;
    // source line 158, bytecode pc 4
    (arguments = arguments);
    // source line 159, bytecode pc 13
    (_arr_pk_id = []);
    // source line 160, bytecode pc 18
    (a = 0);
    while ((a < arguments.length)) {
        // source line 161, bytecode pc 47
        _arr_pk_id.push(arguments[a]);
        // source line 160, bytecode pc 62
        a++;
    }
    // source line 163, bytecode pc 108
    return this.getListWithoutPkId(xs.Constant_Equ_PosType_Kit, _arr_pk_id);
},
    getListWithoutPkId: function(pos, arr_pk_id) {
    var _arr_pk_id, _rs_obj, _arr_equipment_all, i;
    // source line 169, bytecode pc 6
    (_arr_pk_id = arr_pk_id);
    // source line 171, bytecode pc 15
    (_rs_obj = []);
    // source line 172, bytecode pc 31
    (_arr_equipment_all = this.getAllWithDefaultSort());
    // source line 173, bytecode pc 36
    (i = 0);
    while ((i < _arr_equipment_all.length)) {
        if (((_arr_equipment_all[i].getPosType() == pos) && (_arr_pk_id.inArray(_arr_equipment_all[i].getPkId()) === false))) {
            // source line 175, bytecode pc 133
            _rs_obj.push(_arr_equipment_all[i]);
        }
        // source line 173, bytecode pc 148
        i++;
    }
    // source line 180, bytecode pc 170
    return _rs_obj;
},
    getAllCanBeSold: function() {
    var _rs_obj, _arr_equipment_all, i;
    // source line 185, bytecode pc 8
    (_rs_obj = []);
    // source line 186, bytecode pc 24
    (_arr_equipment_all = this.getAllWithDefaultSort());
    // source line 187, bytecode pc 29
    (i = 0);
    while ((i < _arr_equipment_all.length)) {
        if (_arr_equipment_all[i].isCanBeSold()) {
            // source line 190, bytecode pc 81
            _rs_obj.push(_arr_equipment_all[i]);
        }
        // source line 187, bytecode pc 96
        i++;
    }
    // source line 193, bytecode pc 118
    return _rs_obj;
},
    getEquipmentUpgradeTotalLevel: function() {
    // source line 199, bytecode pc 50
    return this._initInstance().Player.getPlayer().getPlayerUpgradeCfg().getEquipmentUpgradeTotalLevel();
},
    getHasFateGeneral: function(equipment_id) {
    // source line 205, bytecode pc 32
    return this._initInstance().Fate.getEquipmentFateByTypeAndId(equipment_id);
},
    getGeneral: function(obj_equipment_model) {
    var general_pk_id;
    // source line 212, bytecode pc 17
    (general_pk_id = obj_equipment_model.getGeneralPkId());
    if (!xs.Utils.isEmpty(general_pk_id)) {
        // source line 214, bytecode pc 81
        return this._initInstance().Generals.getByPkId(general_pk_id);
    }
    // source line 217, bytecode pc 83
    return null;
},
    isHaveEquipmentCanBeEaten: function() {
    var _bool, _arr_all, i;
    // source line 221, bytecode pc 4
    (_bool = false);
    // source line 222, bytecode pc 20
    (_arr_all = this.getAll());
    // source line 223, bytecode pc 25
    (i = 0);
    while ((i < _arr_all.length)) {
        if (!_arr_all[i].isEquipped()) {
            // source line 226, bytecode pc 60
            (_bool = true);
            // source line 227, bytecode pc 64
            return _bool;
        }
        // source line 223, bytecode pc 79
        i++;
    }
    // source line 230, bytecode pc 101
    return _bool;
},
    getEquipEnabledEps: function(pos) {
    var equipMents, equipMents_new, i;
    // source line 234, bytecode pc 19
    (equipMents = this._getEquipmentByPos(pos));
    // source line 235, bytecode pc 33
    (equipMents_new = new Array());
    // source line 236, bytecode pc 38
    (i = 0);
    while ((i < equipMents.length)) {
        if (!equipMents[i].isEquipped()) {
            // source line 238, bytecode pc 91
            equipMents_new.push(equipMents[i]);
        }
        // source line 236, bytecode pc 106
        i++;
    }
    // source line 241, bytecode pc 128
    return equipMents_new;
},
    getEpsDateForPkId: function(pkId) {
    var allEps, mEpsIdx, mEpsMode;
    // source line 245, bytecode pc 15
    (allEps = this.getAll());
    for (var mEpsIdx in allEps) {
        // source line 247, bytecode pc 42
        (mEpsMode = allEps[mEpsIdx]);
        if (!(((typeof(mEpsMode) != "function") && (mEpsMode.getPkId() == pkId)))) continue;
        // source line 251, bytecode pc 85
        return mEpsMode;
    }
    // source line 256, bytecode pc 97
    return null;
},
    getGradeGodEps: function() {
    var gradeGodEps, allEps, mEpsIdx, mEpsMode;
    // source line 261, bytecode pc 13
    (gradeGodEps = new Array());
    // source line 262, bytecode pc 29
    (allEps = this.getAll());
    for (var mEpsIdx in allEps) {
        // source line 264, bytecode pc 56
        (mEpsMode = allEps[mEpsIdx]);
        if (!(((typeof(mEpsMode) != "function") && (mEpsMode.getGrade() == xs.Constant_Grade_God)))) continue;
        // source line 266, bytecode pc 121
        gradeGodEps.push(mEpsMode);
    }
    // source line 272, bytecode pc 133
    return gradeGodEps;
},
    getGradeGodEpsWithoutHole: function() {
    var gradeGodEps, allEps, mEpsIdx, mEpsMode;
    // source line 279, bytecode pc 13
    (gradeGodEps = new Array());
    // source line 280, bytecode pc 29
    (allEps = this.getAll());
    for (var mEpsIdx in allEps) {
        // source line 282, bytecode pc 56
        (mEpsMode = allEps[mEpsIdx]);
        if (!(((typeof(mEpsMode) != "function") && ((mEpsMode.getGrade() == xs.Constant_Grade_God) && xs.Utils.isEmpty(mEpsMode.getBoreList()))))) continue;
        // source line 284, bytecode pc 163
        gradeGodEps.push(mEpsMode);
    }
    // source line 288, bytecode pc 175
    return gradeGodEps;
},
    getGradeGodEpsWithoutPkId: function() {
    var _arr_pk_id, a, arguments;
    // source line 293, bytecode pc 4
    (arguments = arguments);
    // source line 294, bytecode pc 13
    (_arr_pk_id = []);
    // source line 295, bytecode pc 18
    (a = 0);
    while ((a < arguments.length)) {
        // source line 296, bytecode pc 47
        _arr_pk_id.push(arguments[a]);
        // source line 295, bytecode pc 62
        a++;
    }
    // source line 298, bytecode pc 97
    return this.getGodEpsWithoutPkId(_arr_pk_id);
},
    getGodEpsWithoutPkId: function(arr_pk_id) {
    var _arr_pk_id, _rs_obj, _arr_equipment_all, i;
    // source line 304, bytecode pc 6
    (_arr_pk_id = arr_pk_id);
    // source line 306, bytecode pc 15
    (_rs_obj = []);
    // source line 307, bytecode pc 31
    (_arr_equipment_all = this.getGradeGodEps());
    // source line 308, bytecode pc 36
    (i = 0);
    while ((i < _arr_equipment_all.length)) {
        if ((_arr_pk_id.inArray(_arr_equipment_all[i].getPkId()) === false)) {
            // source line 310, bytecode pc 105
            _rs_obj.push(_arr_equipment_all[i]);
        }
        // source line 308, bytecode pc 120
        i++;
    }
    // source line 315, bytecode pc 142
    return _rs_obj;
}
}));
// source line 321, bytecode pc 489
(xs.Profile.GameData.Equipments.create = function(param) {
    var _str, _cls_name, obj;
    // source line 322, bytecode pc 11
    (_str = param.play_id);
    // source line 324, bytecode pc 35
    (_cls_name = xs.Profile.GameData.Equipments);
    // source line 325, bytecode pc 85
    (xs.Utils.isSet(_cls_name._instance) || (_cls_name._instance = []));
    if (_cls_name._instance[_str]) {
        // source line 328, bytecode pc 115
        return _cls_name._instance[_str];
    }
    // source line 331, bytecode pc 127
    (obj = new _cls_name());
    if ((obj && obj.init(param))) {
        // source line 333, bytecode pc 175
        (_cls_name._instance[_str] = obj);
        // source line 334, bytecode pc 179
        return obj;
    }
    // source line 336, bytecode pc 202
    xs.error("xs.Profile.GameData.Equipments.create failed");
    // source line 337, bytecode pc 204
    return null;
});
