// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/EquipmentPiece.js:1
// source line 145, bytecode pc 268
(xs.Models.EquipmentPiece = xs.Models.Card.extend({
    name: "EquipmentPiece",
    init: function() {
    // source line 17, bytecode pc 7
    (this.num = 0);
    // source line 18, bytecode pc 15
    (this.pk_id = 0);
    // source line 19, bytecode pc 23
    (this.id = 0);
    // source line 20, bytecode pc 31
    (this.EquipmentModel = null);
    // source line 22, bytecode pc 33
    return true;
},
    isPiece: function() {
    // source line 26, bytecode pc 1
    return true;
},
    getPkId: function() {
    // source line 31, bytecode pc 6
    return this.pk_id;
},
    loadJson: function(data) {
    // source line 36, bytecode pc 16
    this._super(data);
    // source line 40, bytecode pc 38
    this.setNum(data.num);
    // source line 42, bytecode pc 53
    (this.pk_id = data.pk_id);
    // source line 43, bytecode pc 68
    (this.id = data.id);
    // source line 44, bytecode pc 108
    (this.EquipmentModel = xs.Models.Equipment.createWithBase(this.id));
},
    loadBase: function(id) {
    // source line 49, bytecode pc 9
    (this.id = id);
    // source line 50, bytecode pc 49
    (this.EquipmentModel = xs.Models.Equipment.createWithBase(this.id));
},
    getId: function() {
    // source line 54, bytecode pc 6
    return this.id;
},
    getNameString: function() {
    // source line 58, bytecode pc 17
    return this.EquipmentModel.getNameString();
},
    createPartView: function(partName) {
    // source line 62, bytecode pc 21
    return this.EquipmentModel.createPartView(partName);
},
    createHeadView_General_Equ_Skill: function() {
    // source line 66, bytecode pc 44
    return xs.Tools.Card.createHeadView_General_Equ_Skill(this.EquipmentModel, xs.Const_Item_Style_EquPiece);
},
    createHeadView: function(viewCfg) {
    // source line 71, bytecode pc 21
    return this.EquipmentModel.createHeadView(viewCfg);
},
    createCardView: function(viewCfg) {
    // source line 75, bytecode pc 21
    return this.EquipmentModel.createCardView(viewCfg);
},
    getComposePieceNum: function() {
    // source line 80, bytecode pc 17
    return this.EquipmentModel.getComposePieceNum();
},
    canCompose: function() {
    if ((this.getNum() < this.getComposePieceNum())) {
        // source line 87, bytecode pc 31
        return false;
    }
    // source line 90, bytecode pc 33
    return true;
},
    getPieceDesc: function() {
    // source line 97, bytecode pc 17
    return this.EquipmentModel.getPieceDesc();
},
    getPiecePrice: function() {
    // source line 102, bytecode pc 22
    xs.log("getPiecePrice");
    // source line 103, bytecode pc 40
    return this.EquipmentModel.getPiecePrice();
},
    getEffectType: function() {
    // source line 108, bytecode pc 17
    return this.EquipmentModel.getEffectType();
},
    createIcon_Grade: function(viewCfg) {
    var _ret;
    // source line 118, bytecode pc 57
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, piece: true }, viewCfg));
    // source line 120, bytecode pc 74
    _ret.reloadData(this);
    // source line 121, bytecode pc 78
    return _ret;
},
    createIcon_GradeAndName: function(viewCfg) {
    var _ret;
    // source line 131, bytecode pc 63
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, name: true, piece: true }, viewCfg));
    // source line 133, bytecode pc 80
    _ret.reloadData(this);
    // source line 134, bytecode pc 84
    return _ret;
},
    getGrade: function() {
    // source line 138, bytecode pc 17
    return this.EquipmentModel.getGrade();
},
    getPosType: function() {
    // source line 142, bytecode pc 17
    return this.EquipmentModel.getPosType();
},
    getEquipmentModel: function() {
    // source line 146, bytecode pc 6
    return this.EquipmentModel;
}
}));
// source line 151, bytecode pc 294
(xs.Models.EquipmentPiece.createWithJson = function(data) {
    var obj;
    // source line 154, bytecode pc 23
    (obj = new xs.Models.EquipmentPiece());
    if ((obj && obj.init())) {
        // source line 156, bytecode pc 70
        obj.loadJson(data);
        // source line 157, bytecode pc 74
        return obj;
    }
    // source line 159, bytecode pc 76
    return null;
});
// source line 162, bytecode pc 320
(xs.Models.EquipmentPiece.createWithBase = function(id) {
    var obj;
    // source line 165, bytecode pc 23
    (obj = new xs.Models.EquipmentPiece());
    if ((obj && obj.init())) {
        // source line 167, bytecode pc 70
        obj.loadBase(id);
        // source line 168, bytecode pc 74
        return obj;
    }
    // source line 170, bytecode pc 76
    return null;
});
