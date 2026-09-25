// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/Fate.js:1
// source line 9, bytecode pc 16
(xs.Models.Fate_Type_General = 1);
// source line 10, bytecode pc 34
(xs.Models.Fate_Type_Skill = 4);
// source line 11, bytecode pc 52
(xs.Models.Fate_Type_Equipment = 3);
// source line 12, bytecode pc 70
(xs.Models.Fate_Type_MTip = 2);
// source line 14, bytecode pc 87
(xs.Models.Fate_Limit_Step = 1);
// source line 15, bytecode pc 105
(xs.Models.Fate_Limit_All = 2);
// source line 194, bytecode pc 320
(xs.Models.Fate = xs.Models.BaseCfg.extend({
    name: "Fate",
    names: { id: "fate_id", name: "fate_name", desc: "fate_desc" },
    CfgDataType: xs.Constant_CfgDataType_Fate,
    init: function() {
    var caches;
    // source line 34, bytecode pc 12
    this._super();
    // source line 36, bytecode pc 20
    (this.fate_object = 0);
    // source line 39, bytecode pc 38
    (caches = [ "typeDataRef" ]);
    // source line 42, bytecode pc 55
    this.registerCaches(caches);
    // source line 44, bytecode pc 57
    return true;
},
    getLimit: function() {
    // source line 49, bytecode pc 39
    return xs.Utils.parseIntSafe(this.getBaseDataRef().fate_limit);
},
    getType: function() {
    // source line 55, bytecode pc 39
    return xs.Utils.parseIntSafe(this.getBaseDataRef().fate_type);
},
    getAdditionType: function() {
    // source line 60, bytecode pc 39
    return xs.Utils.parseIntSafe(this.getBaseDataRef().fate_addition_type);
},
    getStringFromAdditionType: function() {
    // source line 63, bytecode pc 12
    switch (this.getAdditionType()) {
        case xs.Constant_AttrType_Atk:
        // source line 66, bytecode pc 110
        return xs.Tools.String.createString("filter_attack");
        case xs.Constant_AttrType_Def:
        // source line 68, bytecode pc 143
        return xs.Tools.String.createString("auto_name_15");
        case xs.Constant_AttrType_Hp:
        // source line 70, bytecode pc 176
        return xs.Tools.String.createString("auto_name_16");
        case xs.Constant_AttrType_Int:
        // source line 72, bytecode pc 209
        return xs.Tools.String.createString("auto_name_17");
        default:
        // source line 74, bytecode pc 215
        return "error";
    }
},
    getTypeFromFateObject: function() {
    var _equipData;
    // source line 78, bytecode pc 101
    xs.log(((((("getNameStringFromFateType is " + this.getBaseDataRef().fate_object) + ",") + this.getType()) + ",") + typeof(xs.parseString(this.getBaseDataRef().fate_object))));
    // source line 79, bytecode pc 114
    switch (this.getType()) {
        case xs.Models.Fate_Type_General:
        case xs.Models.Fate_Type_Equipment:
        case xs.Models.Fate_Type_MTip:
        // source line 84, bytecode pc 244
        (_equipData = xs.Models.Equipment.createWithBase(xs.parseString(this.getBaseDataRef().fate_object)));
        // source line 85, bytecode pc 259
        return _equipData.getEquipStyleToString();
        default:
        // source line 87, bytecode pc 265
        return "error";
    }
},
    getNameStringFromFateType: function() {
    var _equipData, _skillData;
    // source line 92, bytecode pc 12
    switch (this.getType()) {
        case xs.Models.Fate_Type_General:
        case xs.Models.Fate_Type_Equipment:
        case xs.Models.Fate_Type_MTip:
        // source line 97, bytecode pc 162
        (_equipData = xs.Models.Equipment.createWithBase(xs.parseString(this.getBaseDataRef().fate_object)));
        // source line 98, bytecode pc 177
        return _equipData.getNameString();
        case xs.Models.Fate_Type_Skill:
        // source line 100, bytecode pc 242
        (_skillData = xs.Models.Skill.createWithBase(xs.parseString(this.getBaseDataRef().fate_object)));
        // source line 101, bytecode pc 257
        return _skillData.getNameString();
        default:
        // source line 103, bytecode pc 263
        return "error";
    }
},
    isConnectWithId: function(id) {
    var _fate_ids, i;
    // source line 111, bytecode pc 31
    (_fate_ids = (this.getBaseDataRef().fate_object || []));
    // source line 113, bytecode pc 36
    (i = 0);
    while ((i < _fate_ids.length)) {
        if ((id === _fate_ids[i])) {
            // source line 115, bytecode pc 60
            return true;
        }
        // source line 113, bytecode pc 73
        (i = (+i + 1));
    }
    // source line 119, bytecode pc 93
    return false;
},
    getDescString: function() {
    var _result, _names, i, _generalData, _args, _addType;
    // source line 122, bytecode pc 8
    (_result = "");
    // source line 123, bytecode pc 44
    xs.log(("Fate getDescString is " + this.getType()));
    // source line 124, bytecode pc 57
    switch (this.getType()) {
        case 1:
        if ((this.getLimit() == 2)) {
            // source line 130, bytecode pc 114
            (_names = "");
            // source line 131, bytecode pc 119
            (i = 0);
            while ((i < this.getBaseDataRef().fate_object.length)) {
                // source line 133, bytecode pc 170
                xs.log("getDescString is ", this.getBaseDataRef().fate_object[i]);
                // source line 134, bytecode pc 222
                (_generalData = xs.Models.General.createWithBase(this.getBaseDataRef().fate_object[i]));
                // source line 135, bytecode pc 244
                (_names = (_names + _generalData.getNameString()));
                if ((i != (this.getBaseDataRef().fate_object.length - 1))) {
                    // source line 138, bytecode pc 290
                    (_names = (_names + ","));
                }
                // source line 131, bytecode pc 303
                (i = (+i + 1));
            }
            // source line 141, bytecode pc 344
            (_args = []);
            // source line 142, bytecode pc 363
            _args.push(_names);
            // source line 143, bytecode pc 391
            _args.push(this.getStringFromAdditionType());
            // source line 144, bytecode pc 424
            _args.push(this.getBaseDataRef().fate_effect);
            // source line 145, bytecode pc 475
            (_result = xs.Tools.String.createString("fate_general_getDescString_1").convWithArgs(_args));
        } else {
            // source line 149, bytecode pc 496
            (_addType = this.getStringFromAdditionType());
            // source line 150, bytecode pc 505
            (_args = []);
            // source line 151, bytecode pc 524
            _args.push(_addType);
            // source line 152, bytecode pc 557
            _args.push(this.getBaseDataRef().fate_effect_step);
            // source line 153, bytecode pc 608
            (_result = xs.Tools.String.createString("fate_general_getDescString_2").convWithArgs(_args));
        }
        break;
        case 2:
        case 3:
        if ((this.getLimit() == 2)) {
            // source line 161, bytecode pc 642
            (_args = []);
            // source line 162, bytecode pc 670
            _args.push(this.getTypeFromFateObject());
            // source line 163, bytecode pc 698
            _args.push(this.getNameStringFromFateType());
            // source line 164, bytecode pc 726
            _args.push(this.getStringFromAdditionType());
            // source line 165, bytecode pc 759
            _args.push(this.getBaseDataRef().fate_effect);
            // source line 167, bytecode pc 810
            (_result = xs.Tools.String.createString("fate_equip_getDescString_1").convWithArgs(_args));
        } else {
            // source line 172, bytecode pc 824
            (_args = []);
            // source line 173, bytecode pc 852
            _args.push(this.getStringFromAdditionType());
            // source line 174, bytecode pc 885
            _args.push(this.getBaseDataRef().fate_effect);
            // source line 175, bytecode pc 918
            _args.push(this.getBaseDataRef().fate_effect_step);
            // source line 177, bytecode pc 969
            (_result = xs.Tools.String.createString("fate_equip_getDescString_2").convWithArgs(_args));
        }
        break;
        case 4:
        // source line 182, bytecode pc 983
        (_args = []);
        // source line 183, bytecode pc 1031
        _args.push(xs.Tools.String.createString("skill"));
        // source line 184, bytecode pc 1059
        _args.push(this.getNameStringFromFateType());
        // source line 185, bytecode pc 1087
        _args.push(this.getStringFromAdditionType());
        // source line 186, bytecode pc 1120
        _args.push(this.getBaseDataRef().fate_effect);
        // source line 188, bytecode pc 1171
        (_result = xs.Tools.String.createString("fate_skill_getDescString_1").convWithArgs(_args));
        break;
        default:
        break;
    }
    // source line 191, bytecode pc 1180
    return _result;
},
    getFateObject: function() {
    var _fate_ids;
    // source line 195, bytecode pc 31
    (_fate_ids = (this.getBaseDataRef().fate_object || []));
    // source line 196, bytecode pc 35
    return _fate_ids;
}
}));
// source line 201, bytecode pc 346
(xs.Models.Fate.createWithBase = function(id) {
    var fate;
    // source line 202, bytecode pc 23
    (fate = new xs.Models.Fate());
    if ((fate && fate.init())) {
        // source line 204, bytecode pc 70
        fate.readBaseData(id);
        // source line 205, bytecode pc 74
        return fate;
    }
    // source line 207, bytecode pc 76
    return null;
});
