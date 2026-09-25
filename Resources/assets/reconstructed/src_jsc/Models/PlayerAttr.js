// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/PlayerAttr.js:1
// source line 251, bytecode pc 204
(xs.Models.PlayerAttr = xs.Models.Base.extend({
    name: "xs.Models.PlayerAttr",
    ResType: null,
    init: function() {
    // source line 22, bytecode pc 12
    this._super();
    // source line 29, bytecode pc 20
    (this.num = null);
    // source line 30, bytecode pc 28
    (this.id = null);
    // source line 32, bytecode pc 30
    return true;
},
    loadJson: function(data) {
    // source line 36, bytecode pc 16
    this._super(data);
    // source line 37, bytecode pc 31
    (this.id = data.id);
    // source line 38, bytecode pc 46
    (this.num = data.num);
},
    getId: function() {
    // source line 43, bytecode pc 6
    return this.id;
},
    getId2Type: function() {
    // source line 47, bytecode pc 28
    return xs.Utils.parseIntSafe(this.id);
},
    getNum: function() {
    // source line 52, bytecode pc 6
    return this.num;
},
    getGrade: function() {
    // source line 67, bytecode pc 10
    return xs.Constant_Grade_Copper;
},
    getNameString: function() {
    var _name;
    // source line 72, bytecode pc 8
    (_name = "TODO");
    // source line 73, bytecode pc 21
    switch (this.getId2Type()) {
        case xs.Models.AddPlayerInfoType_TiLi:
        // source line 76, bytecode pc 302
        (_name = xs.Tools.String.createString("auto_name_24"));
        break;
        case xs.Models.AddPlayerInfoType_JingLi:
        // source line 80, bytecode pc 343
        (_name = xs.Tools.String.createString("auto_name_25"));
        break;
        case xs.Models.AddPlayerInfoType_TongQian:
        // source line 84, bytecode pc 384
        (_name = xs.Tools.String.createString("auto_name_26"));
        break;
        case xs.Models.AddPlayerInfoType_YuanBao:
        // source line 88, bytecode pc 425
        (_name = xs.Tools.String.createString("auto_name_27"));
        break;
        case xs.Models.AddPlayerInfoType_GoldSoul:
        // source line 92, bytecode pc 466
        (_name = xs.Tools.String.createString("auto_name_28"));
        break;
        case xs.Models.AddPlayerInfoType_SilverSoul:
        // source line 96, bytecode pc 507
        (_name = xs.Tools.String.createString("auto_name_29"));
        break;
        case xs.Models.AddPlayerInfoType_Salary:
        // source line 100, bytecode pc 548
        (_name = xs.Tools.String.createString("auto_name_30"));
        break;
        case xs.Models.AddPlayerInfoType_Fragment:
        // source line 104, bytecode pc 589
        (_name = xs.Tools.String.createString("auto_name_31"));
        break;
        case xs.Models.AddPlayerInfoType_Battle:
        // source line 108, bytecode pc 630
        (_name = xs.Tools.String.createString("auto_name_32"));
        break;
        case xs.Models.AddPlayerInfoType_TeamPoint:
        // source line 113, bytecode pc 671
        (_name = xs.Tools.String.createString("auto_name_33"));
        break;
        case xs.Models.AddPlayerInfoType_Exp:
        // source line 119, bytecode pc 712
        (_name = xs.Tools.String.createString("str_add_name_exp"));
        break;
        case xs.Models.AddPlayerInfoType_UnionScore:
        // source line 124, bytecode pc 753
        (_name = xs.Tools.String.createString("str_add_UnionScore"));
        break;
        default:
        // source line 130, bytecode pc 783
        xs.assert(false, "info type getNameString!");
        break;
    }
    // source line 136, bytecode pc 792
    return _name;
},
    getTxtLabString: function() {
    var _name;
    // source line 140, bytecode pc 8
    (_name = "TODO");
    // source line 141, bytecode pc 21
    switch (this.getId2Type()) {
        case xs.Models.AddPlayerInfoType_TiLi:
        case xs.Models.AddPlayerInfoType_JingLi:
        case xs.Models.AddPlayerInfoType_Battle:
        case xs.Models.AddPlayerInfoType_TeamPoint:
        case xs.Models.AddPlayerInfoType_Exp:
        case xs.Models.AddPlayerInfoType_UnionScore:
        // source line 149, bytecode pc 302
        (_name = xs.Tools.String.createString("auto_name_34"));
        break;
        case xs.Models.AddPlayerInfoType_TongQian:
        case xs.Models.AddPlayerInfoType_YuanBao:
        case xs.Models.AddPlayerInfoType_GoldSoul:
        case xs.Models.AddPlayerInfoType_SilverSoul:
        case xs.Models.AddPlayerInfoType_Salary:
        case xs.Models.AddPlayerInfoType_Fragment:
        // source line 159, bytecode pc 343
        (_name = xs.Tools.String.createString("str_Worship_num"));
        break;
        default:
        // source line 166, bytecode pc 373
        xs.assert(false, "info type getNameString!");
        break;
    }
    // source line 172, bytecode pc 382
    return _name;
},
    getNumPreString: function() {
    var _name;
    // source line 175, bytecode pc 8
    (_name = "TODO");
    // source line 176, bytecode pc 21
    switch (this.getId2Type()) {
        case xs.Models.AddPlayerInfoType_TiLi:
        case xs.Models.AddPlayerInfoType_JingLi:
        case xs.Models.AddPlayerInfoType_Battle:
        case xs.Models.AddPlayerInfoType_TeamPoint:
        case xs.Models.AddPlayerInfoType_Exp:
        case xs.Models.AddPlayerInfoType_UnionScore:
        // source line 184, bytecode pc 275
        (_name = "+");
        break;
        case xs.Models.AddPlayerInfoType_TongQian:
        case xs.Models.AddPlayerInfoType_YuanBao:
        case xs.Models.AddPlayerInfoType_GoldSoul:
        case xs.Models.AddPlayerInfoType_SilverSoul:
        case xs.Models.AddPlayerInfoType_Salary:
        case xs.Models.AddPlayerInfoType_Fragment:
        // source line 194, bytecode pc 289
        (_name = "");
        break;
        default:
        // source line 201, bytecode pc 319
        xs.assert(false, "info type getNameString!");
        break;
    }
    // source line 207, bytecode pc 328
    return _name;
},
    createPartView: function(partName) {
    // source line 212, bytecode pc 22
    this.assert(partName, "need partName");
    // source line 213, bytecode pc 55
    return xs.Tools.Card.createPartView_PlayerAttr(this, partName);
},
    createIcon_Grade: function(viewCfg) {
    var _ret;
    // source line 221, bytecode pc 51
    (_ret = xs.Views.Icon.IconStyleB.create({ grade: true }, viewCfg));
    // source line 223, bytecode pc 68
    _ret.reloadData(this);
    // source line 224, bytecode pc 72
    return _ret;
},
    createIcon_GradeAndNum: function(viewCfg) {
    var _ret;
    // source line 233, bytecode pc 57
    (_ret = xs.Views.Icon.IconStyleB.create({ grade: true, num: true }, viewCfg));
    // source line 235, bytecode pc 74
    _ret.reloadData(this);
    // source line 236, bytecode pc 78
    return _ret;
},
    createIcon_GradeAndName: function(viewCfg) {
    var _ret;
    // source line 245, bytecode pc 57
    (_ret = xs.Views.Icon.IconStyleB.create({ grade: true, name: true }, viewCfg));
    // source line 247, bytecode pc 74
    _ret.reloadData(this);
    // source line 248, bytecode pc 78
    return _ret;
},
    createIcon_GradeAndNumAndName: function(viewCfg) {
    var _ret;
    // source line 258, bytecode pc 63
    (_ret = xs.Views.Icon.IconStyleB.create({ grade: true, num: true, name: true }, viewCfg));
    // source line 260, bytecode pc 80
    _ret.reloadData(this);
    // source line 261, bytecode pc 84
    return _ret;
}
}));
// source line 266, bytecode pc 230
(xs.Models.PlayerAttr.createWithJson = function(data) {
    var item;
    // source line 267, bytecode pc 23
    (item = new xs.Models.PlayerAttr());
    if ((item && item.init())) {
        // source line 269, bytecode pc 70
        item.loadJson(data);
        // source line 270, bytecode pc 74
        return item;
    }
    // source line 272, bytecode pc 99
    xs.assert(false, "xs.Models.PlayerAttr.createWithJson err");
    // source line 273, bytecode pc 101
    return null;
});
