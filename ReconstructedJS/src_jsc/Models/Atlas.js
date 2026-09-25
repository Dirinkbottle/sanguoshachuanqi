// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/Atlas.js:1
// source line 7, bytecode pc 16
(xs.Models.Altas_Status_None = 0);
// source line 8, bytecode pc 33
(xs.Models.Altas_Status_Own = 1);
// source line 9, bytecode pc 51
(xs.Models.Altas_Status_Surrender = 2);
// source line 12, bytecode pc 68
(xs.Models.Atlas_General_Status_None = 0);
// source line 13, bytecode pc 85
(xs.Models.Altas_General_Status_Own = 1);
// source line 161, bytecode pc 344
(xs.Models.Atlas = xs.Models.Base.extend({
    name: "xs.Models.Altas",
    init: function() {
    // source line 21, bytecode pc 12
    this._super();
    // source line 23, bytecode pc 24
    (this.pk_id = "");
    // source line 24, bytecode pc 36
    (this.atlas_status = "");
    // source line 25, bytecode pc 48
    (this.general_status = "");
    // source line 26, bytecode pc 60
    (this.type = "");
    // source line 27, bytecode pc 72
    (this.relation_model = "");
    // source line 28, bytecode pc 84
    (this.general_grade = "");
    // source line 29, bytecode pc 86
    return true;
},
    loadJson: function(json) {
    var _relation_model;
    // source line 35, bytecode pc 21
    this.setPkId(json.pk_id);
    // source line 36, bytecode pc 43
    this.setAtlasStatus(json.atlas_status);
    // source line 37, bytecode pc 65
    this.setGeneralStatus(json.general_status);
    // source line 38, bytecode pc 87
    this.setType(json.type);
    // source line 39, bytecode pc 109
    this.setGeneralGrade(json.general_grade);
    // source line 41, bytecode pc 118
    (_relation_model = "");
    // source line 42, bytecode pc 131
    switch (this.getType()) {
        case xs.Constant_ObjType_General:
        // source line 44, bytecode pc 239
        (_relation_model = xs.Models.General.createWithBase(this.getPkId()));
        break;
        case xs.Constant_ObjType_Equipment:
        // source line 47, bytecode pc 287
        (_relation_model = xs.Models.Equipment.createWithBase(this.getPkId()));
        break;
        case xs.Constant_ObjType_Skill:
        // source line 50, bytecode pc 335
        (_relation_model = xs.Models.Skill.createWithBase(this.getPkId()));
        break;
        case xs.Constant_ObjType_Goddess:
        // source line 53, bytecode pc 383
        (_relation_model = xs.Models.Goddess.createWithBase(this.getPkId()));
        break;
        default:
        // source line 56, bytecode pc 426
        this.error((("the altas type " + this.getType()) + "is error!!"));
        break;
    }
    // source line 65, bytecode pc 441
    (this.relation_model = _relation_model);
},
    setGeneralGrade: function(general_grade) {
    // source line 73, bytecode pc 29
    (this.general_grade = this.pk_id.substring(2, 3));
    // source line 74, bytecode pc 31
    return null;
},
    getGeneralGrade: function() {
    // source line 78, bytecode pc 23
    (this.general_grade = this.relation_model.getGrade());
    // source line 79, bytecode pc 30
    return this.general_grade;
},
    setPkId: function(pk_id) {
    // source line 83, bytecode pc 22
    this.assert(pk_id, "atlas setPkId error");
    // source line 84, bytecode pc 54
    (this.pk_id = xs.Utils.parseStringSafe(pk_id));
    // source line 85, bytecode pc 56
    return null;
},
    getPkId: function() {
    // source line 89, bytecode pc 6
    return this.pk_id;
},
    setType: function(val) {
    // source line 94, bytecode pc 22
    this.assert(val, "atlas setType error");
    // source line 95, bytecode pc 32
    (this.type = val);
    // source line 96, bytecode pc 34
    return null;
},
    getType: function() {
    // source line 101, bytecode pc 21
    return parseInt(this.type);
},
    setAtlasStatus: function(val) {
    // source line 106, bytecode pc 22
    this.assert(val, "atlas setAtlasStatus error");
    // source line 107, bytecode pc 32
    (this.atlas_status = val);
    // source line 108, bytecode pc 34
    return null;
},
    getAtlasStatus: function() {
    // source line 116, bytecode pc 21
    return parseInt(this.atlas_status);
},
    setGeneralStatus: function(val) {
    // source line 125, bytecode pc 22
    this.assert(val, "atlas setGeneralStatus error");
    // source line 126, bytecode pc 32
    (this.general_status = val);
    // source line 127, bytecode pc 34
    return null;
},
    getGeneralStatus: function() {
    // source line 131, bytecode pc 6
    return this.general_status;
},
    createIcon_Grade: function(viewCfg) {
    // source line 136, bytecode pc 21
    return this.relation_model.createIcon_Grade(viewCfg);
},
    createIcon_GradeAndName: function(viewCfg) {
    // source line 140, bytecode pc 21
    return this.relation_model.createIcon_GradeAndName(viewCfg);
},
    createIconAndName: function(viewCfg) {
    // source line 143, bytecode pc 21
    return this.relation_model.createIconAndName(viewCfg);
},
    getModel: function() {
    // source line 146, bytecode pc 6
    return this.relation_model;
},
    getGrade: function() {
    // source line 151, bytecode pc 17
    return this.relation_model.getGrade();
},
    getId: function() {
    // source line 156, bytecode pc 17
    return this.relation_model.getId();
},
    getWarlordGeneralId: function() {
    // source line 159, bytecode pc 17
    return this.relation_model.getWarlordGeneralId();
},
    getOrder: function() {
    // source line 162, bytecode pc 33
    return xs.Utils.parseIntSafe(this.relation_model.pack_order);
}
}));
// source line 167, bytecode pc 370
(xs.Models.Atlas.createWithJson = function(json_data) {
    var card;
    // source line 168, bytecode pc 23
    (card = new xs.Models.Atlas());
    if ((card && card.init())) {
        // source line 170, bytecode pc 70
        card.loadJson(json_data);
        // source line 171, bytecode pc 74
        return card;
    }
    // source line 173, bytecode pc 97
    xs.warn("xs.Models.Atlas.createWithJson error");
    // source line 174, bytecode pc 99
    return null;
});
