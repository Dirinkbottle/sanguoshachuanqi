// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/SkillPiece.js:1
// source line 168, bytecode pc 278
(xs.Models.SkillPiece = xs.Models.Card.extend({
    name: "SkillPiece",
    init: function() {
    // source line 13, bytecode pc 7
    (this.num = 0);
    // source line 14, bytecode pc 15
    (this.pk_id = 0);
    // source line 15, bytecode pc 23
    (this.id = 0);
    // source line 16, bytecode pc 31
    (this.SkillModel = null);
    // source line 18, bytecode pc 33
    return true;
},
    isPiece: function() {
    // source line 22, bytecode pc 1
    return true;
},
    getPkId: function() {
    // source line 27, bytecode pc 6
    return this.pk_id;
},
    loadJson: function(data) {
    // source line 32, bytecode pc 16
    this._super(data);
    // source line 34, bytecode pc 38
    this.setNum(data.num);
    // source line 36, bytecode pc 53
    (this.pk_id = data.pk_id);
    // source line 37, bytecode pc 68
    (this.id = data.id);
    // source line 38, bytecode pc 108
    (this.SkillModel = xs.Models.Skill.createWithBase(this.id));
},
    loadBase: function(id) {
    // source line 43, bytecode pc 9
    (this.id = id);
    // source line 44, bytecode pc 49
    (this.SkillModel = xs.Models.Skill.createWithBase(this.id));
},
    getId: function() {
    // source line 48, bytecode pc 6
    return this.id;
},
    isExpBook: function() {
    var _id;
    // source line 51, bytecode pc 9
    (_id = this.id);
    if (((_id == "361001") || ((_id == "362001") || (_id == "363001")))) {
        // source line 53, bytecode pc 55
        return true;
    }
    // source line 55, bytecode pc 57
    return false;
},
    getSkillType: function() {
    // source line 58, bytecode pc 17
    return this.SkillModel.getSkillType();
},
    getNameString: function() {
    // source line 61, bytecode pc 17
    return this.SkillModel.getNameString();
},
    createPartView: function(partName) {
    // source line 65, bytecode pc 21
    return this.SkillModel.createPartView(partName);
},
    createHeadView_General_Equ_Skill: function() {
    // source line 70, bytecode pc 44
    return xs.Tools.Card.createHeadView_General_Equ_Skill(this.SkillModel, xs.Const_Item_Style_SkillPiece);
},
    createHeadView: function() {
    // source line 75, bytecode pc 12
    return this.createIcon_GradeAndDot();
},
    createCardView: function(viewCfg) {
    // source line 79, bytecode pc 21
    return this.SkillModel.createCardView(viewCfg);
},
    getComposePieceNum: function() {
    // source line 84, bytecode pc 17
    return this.SkillModel.getComposePieceNum();
},
    canCompose: function() {
    if ((this.getNum() >= this.SkillModel.getComposePieceNum())) {
        // source line 90, bytecode pc 36
        return true;
    }
    // source line 92, bytecode pc 38
    return false;
},
    getTeacher: function() {
    // source line 97, bytecode pc 22
    return this.SkillModel.getBaseDataRef().warlord_general_id;
},
    createIcon_GradeAndDot: function(viewCfg) {
    var _ret;
    // source line 107, bytecode pc 57
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, red_dot: true }, viewCfg));
    // source line 109, bytecode pc 74
    _ret.reloadData(this);
    // source line 110, bytecode pc 78
    return _ret;
},
    createIcon_Grade: function(viewCfg) {
    var _ret;
    // source line 121, bytecode pc 57
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, piece: true }, viewCfg));
    // source line 123, bytecode pc 74
    _ret.reloadData(this);
    // source line 124, bytecode pc 78
    return _ret;
},
    createIcon_GradeAndName: function(viewCfg) {
    var _ret;
    // source line 135, bytecode pc 69
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, lv: false, piece: true, name: false }, viewCfg));
    // source line 137, bytecode pc 86
    _ret.reloadData(this);
    // source line 138, bytecode pc 90
    return _ret;
},
    createIcon_GradeAndPieceNameAndNumMax: function(viewCfg) {
    var _ret;
    // source line 149, bytecode pc 69
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, piece: true, piece_name: true, part_max: true }, viewCfg));
    // source line 151, bytecode pc 86
    _ret.reloadData(this);
    // source line 152, bytecode pc 90
    return _ret;
},
    createIcon_GradeAndNumMax: function(viewCfg) {
    var _ret;
    // source line 162, bytecode pc 63
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, piece: true, part_max: true }, viewCfg));
    // source line 164, bytecode pc 80
    _ret.reloadData(this);
    // source line 165, bytecode pc 84
    return _ret;
},
    getGrade: function() {
    // source line 169, bytecode pc 17
    return this.SkillModel.getGrade();
}
}));
// source line 174, bytecode pc 304
(xs.Models.SkillPiece.createWithJson = function(data) {
    var obj;
    // source line 176, bytecode pc 23
    (obj = new xs.Models.SkillPiece());
    if ((obj && obj.init())) {
        // source line 178, bytecode pc 70
        obj.loadJson(data);
        // source line 179, bytecode pc 74
        return obj;
    }
    // source line 181, bytecode pc 76
    return null;
});
// source line 184, bytecode pc 330
(xs.Models.SkillPiece.createWithBase = function(id) {
    var obj;
    // source line 187, bytecode pc 23
    (obj = new xs.Models.SkillPiece());
    if ((obj && obj.init())) {
        // source line 189, bytecode pc 70
        obj.loadBase(id);
        // source line 190, bytecode pc 74
        return obj;
    }
    // source line 192, bytecode pc 76
    return null;
});
