// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Factorys/Add.js:1
// source line 10, bytecode pc 31
(xs.Factorys.Add = {
    createWithJson: function(json) {
    var add;
    // source line 11, bytecode pc 4
    (add = null);
    // source line 13, bytecode pc 28
    switch (parseInt(json.type)) {
        case xs.Constant_AddType_Item:
        // source line 15, bytecode pc 273
        (add = xs.Models.AddItem.create());
        // source line 16, bytecode pc 292
        add.loadJson(json);
        break;
        case xs.Constant_AddType_PlayerAttr:
        // source line 20, bytecode pc 327
        (add = xs.Models.AddPlayerInfo.create());
        // source line 21, bytecode pc 346
        add.loadJson(json);
        break;
        case xs.Constant_AddType_Equipment_Obj:
        case xs.Constant_AddType_Equipment:
        // source line 26, bytecode pc 381
        (add = xs.Models.AddEquipment.create());
        // source line 27, bytecode pc 400
        add.loadJson(json);
        break;
        case xs.Constant_AddType_EquipmentPiece:
        // source line 31, bytecode pc 435
        (add = xs.Models.AddEquipmentPiece.create());
        // source line 32, bytecode pc 454
        add.loadJson(json);
        break;
        case xs.Constant_AddType_Skill_Obj:
        case xs.Constant_AddType_Skill:
        // source line 37, bytecode pc 489
        (add = xs.Models.AddSkill.create());
        // source line 38, bytecode pc 508
        add.loadJson(json);
        break;
        case xs.Constant_AddType_General_Obj:
        case xs.Constant_AddType_General:
        // source line 43, bytecode pc 543
        (add = xs.Models.AddGeneral.create());
        // source line 44, bytecode pc 562
        add.loadJson(json);
        break;
        case xs.Constant_AddType_GeneralSoul:
        // source line 48, bytecode pc 597
        (add = xs.Models.AddGeneralSoul.create());
        // source line 49, bytecode pc 616
        add.loadJson(json);
        break;
        case xs.Constant_AddType_SkillPiece:
        // source line 53, bytecode pc 651
        (add = xs.Models.AddSkillFragment.create());
        // source line 54, bytecode pc 670
        add.loadJson(json);
        break;
        case xs.Constant_AddType_Gems:
        // source line 58, bytecode pc 705
        (add = xs.Models.AddGems.create());
        // source line 59, bytecode pc 724
        add.loadJson(json);
        break;
        case xs.Constant_AddType_Goddess:
        // source line 62, bytecode pc 759
        (add = xs.Models.AddGoddess.create());
        // source line 63, bytecode pc 778
        add.loadJson(json);
        break;
        case xs.Constant_AddType_GoddessSurface:
        // source line 66, bytecode pc 813
        (add = xs.Models.AddGoddess.create());
        // source line 67, bytecode pc 832
        add.loadJson(json);
        break;
        default:
        // source line 71, bytecode pc 890
        this.error(((("the add type is error!!" + parseInt(json.type)) + ",") + json));
        break;
    }
    // source line 75, bytecode pc 899
    return add;
}
});
