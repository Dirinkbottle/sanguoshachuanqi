// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/MagicalEqu.js:1
// source line 291, bytecode pc 358
(xs.Models.MagicalEqu = xs.Models.Base.extend({
    name: "xs.Models.MagicalEqu",
    CfgDataType: xs.Constant_CfgDataType_MagicalEqu,
    ResType: xs.Constant_ResType_Equ,
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    init: function() {
    var caches;
    if (!this._super()) {
        // source line 22, bytecode pc 19
        return false;
    }
    // source line 25, bytecode pc 27
    (this.magical_id = 0);
    // source line 27, bytecode pc 35
    (this.general_id = 0);
    // source line 29, bytecode pc 47
    (this.normal_point_list = []);
    // source line 31, bytecode pc 55
    (this.normal_step = 0);
    // source line 33, bytecode pc 63
    (this.normal_sub_step = 0);
    // source line 35, bytecode pc 75
    (this.elite_point_list = []);
    // source line 37, bytecode pc 83
    (this.elite_step = 0);
    // source line 38, bytecode pc 91
    (this.elite_sub_step = 0);
    // source line 41, bytecode pc 99
    (this.magical_name = null);
    // source line 42, bytecode pc 107
    (this.magical_desc = null);
    // source line 45, bytecode pc 115
    (this.equ_id = 0);
    // source line 48, bytecode pc 127
    (this.open_rules = []);
    // source line 51, bytecode pc 144
    (this.status = xs.Constant_MagicalEqu_Status_Lock);
    // source line 55, bytecode pc 171
    (caches = [ "normal_point_list", "elite_point_list" ]);
    // source line 58, bytecode pc 188
    this.registerCaches(caches);
    // source line 60, bytecode pc 190
    return true;
},
    loadJson: function(json) {
    // source line 66, bytecode pc 16
    this._super(json);
    // source line 68, bytecode pc 31
    (this.magical_id = json.magic_id);
    // source line 69, bytecode pc 46
    (this.general_id = json.general_id);
    // source line 70, bytecode pc 61
    (this.normal_step = json.magic_level);
    // source line 71, bytecode pc 76
    (this.normal_sub_step = json.magic_sub_level);
    // source line 72, bytecode pc 84
    (this.elite_sub_step = 1);
    // source line 73, bytecode pc 99
    (this.elite_step = json.magic_vip_level);
    // source line 77, bytecode pc 114
    (this.status = json.is_open);
    // source line 79, bytecode pc 129
    (this.magical_name = json.magic_name);
    // source line 80, bytecode pc 144
    (this.magical_desc = json.magic_desc);
    // source line 82, bytecode pc 159
    (this.equ_id = json.resource_id);
    // source line 83, bytecode pc 174
    (this.open_rules = json.open_condition);
    // source line 84, bytecode pc 214
    (this.EquipmentModel = xs.Models.Equipment.createWithBase(this.equ_id));
},
    getMagicalName: function() {
    // source line 88, bytecode pc 6
    return this.magical_name;
},
    getMagicalDesc: function() {
    // source line 91, bytecode pc 6
    return this.magical_desc;
},
    getOpenRules: function() {
    // source line 94, bytecode pc 6
    return this.open_rules;
},
    getStatus: function() {
    // source line 99, bytecode pc 6
    return this.status;
},
    getGeneralId: function() {
    // source line 104, bytecode pc 6
    return this.general_id;
},
    getNormalStep: function() {
    // source line 109, bytecode pc 35
    return (xs.Utils.parseIntSafe(this.normal_step) || 0);
},
    getNormalSubStep: function() {
    // source line 114, bytecode pc 35
    return (xs.Utils.parseIntSafe(this.normal_sub_step) || 0);
},
    getMagicalId: function() {
    // source line 118, bytecode pc 13
    return (this.magical_id || 0);
},
    getNormalList: function() {
    var _list, i, _point_obj;
    if (xs.Utils.isEmpty(this.normal_point_list)) {
        // source line 123, bytecode pc 41
        (_list = []);
        // source line 124, bytecode pc 46
        (i = 0);
        while ((i < 100)) {
            // source line 129, bytecode pc 155
            (_point_obj = xs.Models.MagicalEquPoint.createWithJson({
    is_normal: true,
    step: Math.ceil(((i + 1) / 10)),
    sub_step: ((i % 10) + 1),
    magical_id: this.getMagicalId()
}));
            if ((i < (((this.getNormalStep() - 1) * 10) + this.getNormalSubStep()))) {
                // source line 134, bytecode pc 211
                _point_obj.setLight(true);
            }
            // source line 136, bytecode pc 222
            (_list[i] = _point_obj);
            // source line 124, bytecode pc 236
            (i = (+i + 1));
        }
        // source line 139, bytecode pc 259
        (this.normal_point_list = _list);
    }
    // source line 142, bytecode pc 266
    return this.normal_point_list;
},
    getNormalPoint: function(step, sub_step) {
    var _list, i;
    // source line 146, bytecode pc 15
    (_list = this.getNormalList());
    // source line 147, bytecode pc 33
    (i = ((((step - 1) * 10) + sub_step) - 1));
    // source line 148, bytecode pc 41
    return _list[i];
},
    getEliteStep: function() {
    // source line 153, bytecode pc 35
    return (xs.Utils.parseIntSafe(this.elite_step) || 0);
},
    getEliteSubStep: function() {
    // source line 157, bytecode pc 35
    return (xs.Utils.parseIntSafe(this.elite_sub_step) || 1);
},
    getEliteList: function() {
    var _elite_list, i, _point_obj;
    if (xs.Utils.isEmpty(this.elite_point_list)) {
        // source line 162, bytecode pc 41
        (_elite_list = []);
        // source line 163, bytecode pc 46
        (i = 0);
        while ((i < 10)) {
            // source line 168, bytecode pc 128
            (_point_obj = xs.Models.MagicalEquPoint.createWithJson({ is_normal: false, step: (i + 1), sub_step: 1, magical_id: this.getMagicalId() }));
            if ((i < this.getEliteStep())) {
                // source line 171, bytecode pc 166
                _point_obj.setLight(true);
            }
            // source line 174, bytecode pc 177
            (_elite_list[i] = _point_obj);
            // source line 163, bytecode pc 191
            (i = (+i + 1));
        }
        // source line 177, bytecode pc 214
        (this.elite_point_list = _elite_list);
    }
    // source line 180, bytecode pc 221
    return this.elite_point_list;
},
    getElitePoint: function(step, sub_step) {
    var _list, i;
    // source line 184, bytecode pc 15
    (_list = this.getEliteList());
    // source line 185, bytecode pc 27
    (i = ((step - 1) * 10));
    // source line 186, bytecode pc 35
    return _list[i];
},
    createPartView: function(partName) {
    // source line 193, bytecode pc 21
    return this.EquipmentModel.createPartView(partName);
},
    getEquipmentType: function() {
    // source line 196, bytecode pc 17
    return this.EquipmentModel.getEffectType();
},
    createCard_Detail: function(viewCfg) {
    // source line 201, bytecode pc 21
    return this.EquipmentModel.createCard_Detail(viewCfg);
},
    getRelationEquObj: function() {
    // source line 206, bytecode pc 6
    return this.EquipmentModel;
},
    getPointEffectValAllByType: function(effect_type) {
    var _effect_val, normal_list, elite_list, i, _point_obj;
    // source line 212, bytecode pc 3
    switch (effect_type) {
        case xs.Constant_MagicalEquPoint_Type_Atk:
        case xs.Constant_MagicalEquPoint_Type_Def:
        case xs.Constant_MagicalEquPoint_Type_Hp:
        case xs.Constant_MagicalEquPoint_Type_Int:
        case xs.Constant_MagicalEquPoint_Type_General_Talent_Point:
        break;
        default:
        // source line 220, bytecode pc 111
        xs.error("不支持这种类型的数值获取");
        break;
    }
    // source line 224, bytecode pc 121
    (_effect_val = 0);
    if ((xs.Constant_MagicalEqu_Status_Lock == this.getStatus())) {
        // source line 227, bytecode pc 153
        return _effect_val;
    }
    // source line 230, bytecode pc 169
    (normal_list = this.getNormalList());
    // source line 231, bytecode pc 185
    (elite_list = this.getEliteList());
    // source line 233, bytecode pc 207
    (normal_list = normal_list.concat(elite_list));
    // source line 235, bytecode pc 212
    (i = 0);
    while ((i < normal_list.length)) {
        // source line 236, bytecode pc 229
        (_point_obj = normal_list[i]);
        if (((_point_obj.getEffectType() == effect_type) && _point_obj.isLight())) {
            // source line 238, bytecode pc 309
            (_effect_val = (_effect_val + Number(_point_obj.getEffectVal())));
        }
        // source line 235, bytecode pc 323
        (i = (+i + 1));
    }
    // source line 242, bytecode pc 346
    return _effect_val;
},
    getPointEffectFate: function() {
    var _fate_arr, normal_list, elite_list, i, _point_obj, _effectVal, _fate_replace;
    // source line 268, bytecode pc 14
    (_fate_replace = function(_fate_arr) {
    var flag, temp;
    // source line 270, bytecode pc 4
    (flag = false);
    for (var x in _fate_arr) {
        if (!((_fate_arr[_fate_arr[x]] != null))) continue;
        // source line 275, bytecode pc 54
        (flag = true);
        // source line 276, bytecode pc 67
        (temp = _fate_arr[x]);
        // source line 277, bytecode pc 84
        (_fate_arr[x] = _fate_arr[temp]);
        // source line 278, bytecode pc 92
        delete temp[_fate_arr];
    }
    if (flag) {
        // source line 283, bytecode pc 127
        _fate_replace(_fate_arr);
    }
});
    if ((xs.Constant_MagicalEqu_Status_Lock == this.getStatus())) {
        // source line 248, bytecode pc 44
        return null;
    }
    // source line 251, bytecode pc 53
    (_fate_arr = []);
    // source line 252, bytecode pc 69
    (normal_list = this.getNormalList());
    // source line 253, bytecode pc 85
    (elite_list = this.getEliteList());
    // source line 255, bytecode pc 107
    (normal_list = normal_list.concat(elite_list));
    // source line 257, bytecode pc 112
    (i = 1);
    while ((i <= (normal_list.length - 1))) {
        // source line 258, bytecode pc 129
        (_point_obj = normal_list[i]);
        if (((_point_obj.getEffectType() == xs.Constant_MagicalEquPoint_Type_General_Fate) && _point_obj.isLight())) {
            // source line 261, bytecode pc 197
            (_effectVal = _point_obj.getEffectVal());
            // source line 262, bytecode pc 212
            (_fate_arr[_effectVal[0]] = _effectVal[1]);
        }
        // source line 257, bytecode pc 226
        (i = (+i + 1));
    }
    // source line 286, bytecode pc 266
    _fate_replace(_fate_arr);
    // source line 288, bytecode pc 270
    return _fate_arr;
},
    getSortGrade: function() {
    // source line 292, bytecode pc 17
    return this.EquipmentModel.getSortGrade();
}
}));
// source line 297, bytecode pc 384
(xs.Models.MagicalEqu.createWithBase = function(id) {
    // source line 298, bytecode pc 22
    xs.warn("xs.Models.MagicalEqu.createWithBase is error");
    // source line 299, bytecode pc 24
    return null;
});
// source line 303, bytecode pc 410
(xs.Models.MagicalEqu.createWithJson = function(json) {
    var card;
    // source line 304, bytecode pc 23
    (card = new xs.Models.MagicalEqu());
    if ((card && card.init())) {
        // source line 306, bytecode pc 70
        card.loadJson(json);
        // source line 307, bytecode pc 74
        return card;
    }
    // source line 309, bytecode pc 97
    xs.warn("xs.Models.MagicalEqu.createWithJson");
    // source line 310, bytecode pc 99
    return null;
});
