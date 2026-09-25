// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/GeneralPreview.js:1
// source line 79, bytecode pc 198
(xs.Models.GeneralPreview = xs.Models.Base.extend({
    name: "xs.Models.GeneralPreview",
    init: function() {
    // source line 12, bytecode pc 12
    this._super();
    // source line 14, bytecode pc 24
    (this.pk_id = "");
    // source line 15, bytecode pc 36
    (this.model = "");
    // source line 16, bytecode pc 48
    (this.grade = "");
    // source line 17, bytecode pc 50
    return true;
},
    loadJson: function(json) {
    // source line 23, bytecode pc 21
    this.setPkId(json.general_id);
    // source line 24, bytecode pc 51
    (this.grade = this.pk_id.substring(2, 3));
    // source line 25, bytecode pc 97
    (this.model = xs.Models.General.createWithBase(this.getPkId()));
    // source line 26, bytecode pc 121
    (this.grade = this.model.getGrade());
},
    setGrade: function(grade) {
    // source line 34, bytecode pc 29
    (this.grade = this.pk_id.substring(2, 3));
    // source line 35, bytecode pc 31
    return null;
},
    getGrade: function() {
    // source line 69, bytecode pc 17
    return this.model.getGrade();
},
    setPkId: function(pk_id) {
    // source line 44, bytecode pc 22
    this.assert(pk_id, "atlas setPkId error");
    // source line 45, bytecode pc 54
    (this.pk_id = xs.Utils.parseStringSafe(pk_id));
    // source line 46, bytecode pc 56
    return null;
},
    getPkId: function() {
    // source line 50, bytecode pc 6
    return this.pk_id;
},
    createIcon_Grade: function(viewCfg) {
    // source line 54, bytecode pc 21
    return this.model.createIcon_Grade(viewCfg);
},
    createIcon_GradeAndName: function(viewCfg) {
    // source line 58, bytecode pc 21
    return this.model.createIcon_GradeAndName(viewCfg);
},
    createIconAndName: function(viewCfg) {
    // source line 61, bytecode pc 21
    return this.model.createIconAndName(viewCfg);
},
    getModel: function() {
    // source line 64, bytecode pc 6
    return this.model;
},
    getId: function() {
    // source line 74, bytecode pc 17
    return this.model.getId();
},
    getWarlordGeneralId: function() {
    // source line 77, bytecode pc 17
    return this.model.getWarlordGeneralId();
},
    getOrder: function() {
    // source line 80, bytecode pc 33
    return xs.Utils.parseIntSafe(this.model.pack_order);
}
}));
// source line 85, bytecode pc 224
(xs.Models.GeneralPreview.createWithJson = function(json_data) {
    var card;
    // source line 86, bytecode pc 23
    (card = new xs.Models.GeneralPreview());
    if ((card && card.init())) {
        // source line 88, bytecode pc 70
        card.loadJson(json_data);
        // source line 89, bytecode pc 74
        return card;
    }
    // source line 91, bytecode pc 97
    xs.warn("xs.Models.GeneralPreview.createWithJson error");
    // source line 92, bytecode pc 99
    return null;
});
