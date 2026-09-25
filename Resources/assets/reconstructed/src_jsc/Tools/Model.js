// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Tools/Model.js:1
// source line 112, bytecode pc 102
(xs.Tools.Model = (xs.Tools.Model || {
    name: "xs.tools.Model",
    dump: xs.Debug.emptyFunc,
    createModel: function(obj) {
    // source line 16, bytecode pc 61
    return this.createModelWithBase(xs.Utils.parseIntSafe(obj.type), obj.id, obj.num);
},
    createModelWithBase: function(obj_type, id, num, lv) {
    var _lv, _res_obj, arguments;
    // source line 24, bytecode pc 4
    (arguments = arguments);
    // source line 25, bytecode pc 18
    (num = (num || 1));
    // source line 26, bytecode pc 32
    (_lv = (lv || 1));
    // source line 27, bytecode pc 42
    (_res_obj = {});
    // source line 31, bytecode pc 46
    switch (obj_type) {
        case xs.Constant_AddType_General:
        // source line 34, bytecode pc 280
        (_res_obj = xs.Models.General.createWithBase(id));
        // source line 35, bytecode pc 299
        _res_obj.setNum(num);
        // source line 36, bytecode pc 318
        _res_obj.setLevel(_lv);
        break;
        case xs.Constant_AddType_Equipment:
        // source line 40, bytecode pc 357
        (_res_obj = xs.Models.Equipment.createWithBase(id));
        // source line 41, bytecode pc 376
        _res_obj.setNum(num);
        // source line 42, bytecode pc 395
        _res_obj.setLevel(_lv);
        break;
        case xs.Constant_AddType_Skill:
        // source line 46, bytecode pc 434
        (_res_obj = xs.Models.Skill.createWithBase(id));
        // source line 47, bytecode pc 453
        _res_obj.setNum(num);
        // source line 48, bytecode pc 472
        _res_obj.setLevel(_lv);
        break;
        case xs.Constant_AddType_Item:
        // source line 52, bytecode pc 511
        (_res_obj = xs.Models.Item.createWithBase(id));
        // source line 53, bytecode pc 530
        _res_obj.addItemNum(num);
        // source line 54, bytecode pc 549
        _res_obj.setNum(num);
        break;
        case xs.Constant_AddType_GeneralSoul:
        // source line 58, bytecode pc 588
        (_res_obj = xs.Models.GeneralSoul.createWithBase(id));
        // source line 59, bytecode pc 607
        _res_obj.setNum(num);
        break;
        case xs.Constant_AddType_EquipmentPiece:
        // source line 63, bytecode pc 646
        (_res_obj = xs.Models.EquipmentPiece.createWithBase(id));
        // source line 64, bytecode pc 665
        _res_obj.setNum(num);
        break;
        case xs.Constant_AddType_SkillPiece:
        // source line 68, bytecode pc 704
        (_res_obj = xs.Models.SkillPiece.createWithBase(id));
        // source line 69, bytecode pc 723
        _res_obj.setNum(num);
        break;
        case xs.Constant_AddType_General_Obj:
        // source line 73, bytecode pc 773
        (_res_obj = xs.gd_mgr.getInstance().Generals.getByPkId(id));
        // source line 74, bytecode pc 792
        _res_obj.setNum(num);
        break;
        case xs.Constant_AddType_Equipment_Obj:
        // source line 78, bytecode pc 842
        (_res_obj = xs.gd_mgr.getInstance().Equipments.getByPkId(id));
        // source line 79, bytecode pc 861
        _res_obj.setNum(num);
        break;
        case xs.Constant_AddType_Skill_Obj:
        // source line 82, bytecode pc 911
        (_res_obj = xs.gd_mgr.getInstance().Skills.getByPkId(id));
        // source line 83, bytecode pc 930
        _res_obj.setNum(num);
        break;
        case xs.Constant_AddType_Gems:
        // source line 87, bytecode pc 969
        (_res_obj = xs.Models.Gems.createWithBase(id));
        break;
        case xs.Constant_AddType_Goddess:
        // source line 92, bytecode pc 1008
        (_res_obj = xs.Models.Goddess.createWithBase(id));
        // source line 93, bytecode pc 1027
        _res_obj.setNum(num);
        break;
        case xs.Constant_AddType_GoddessSurface:
        // source line 97, bytecode pc 1066
        (_res_obj = xs.Models.Goddess.createWithBaseSurface(id));
        // source line 98, bytecode pc 1085
        _res_obj.setNum(num);
        break;
        default:
        // source line 102, bytecode pc 1113
        this.error("the obj_type is not allow to create ", arguments);
        break;
    }
    // source line 106, bytecode pc 1141
    this.dump("createModelWithBase", _res_obj);
    // source line 107, bytecode pc 1145
    return _res_obj;
},
    getRandomName: function() {
    var _first_name_cfg, _first_name_num, _first_name, _second_name_cfg, _second_name_num, _second_name;
    // source line 114, bytecode pc 46
    (_first_name_cfg = xs.Tools.CfgData.readRecordByTypeAndKey(xs.Constant_CfgDataType_Random_Name, "first_name"));
    // source line 115, bytecode pc 74
    this.assert(_first_name_cfg.length, "the config first name is error");
    // source line 116, bytecode pc 118
    (_first_name_num = parseInt((Math.random() * _first_name_cfg.length)));
    // source line 117, bytecode pc 141
    this.log(("first" + _first_name_num));
    // source line 118, bytecode pc 152
    (_first_name = _first_name_cfg[_first_name_num]);
    // source line 120, bytecode pc 199
    (_second_name_cfg = xs.Tools.CfgData.readRecordByTypeAndKey(xs.Constant_CfgDataType_Random_Name, "second_name"));
    // source line 121, bytecode pc 227
    this.assert(_second_name_cfg.length, "the config first name is error");
    // source line 122, bytecode pc 271
    (_second_name_num = parseInt((Math.random() * _second_name_cfg.length)));
    // source line 123, bytecode pc 294
    this.log(("second" + _second_name_num));
    // source line 124, bytecode pc 305
    (_second_name = _second_name_cfg[_second_name_num]);
    // source line 126, bytecode pc 367
    return (xs.Tools.Ml.createString(_first_name) + xs.Tools.Ml.createString(_second_name));
}
}));
