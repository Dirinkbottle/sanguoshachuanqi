// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/TransmissionModel.js:1
// source line 38, bytecode pc 108
(xs.Models.TransmissionModel = xs.Models.BaseBreach.extend({
    name: "xs.Models.TransmissionModel",
    init: function(jsonObj, generalModel) {
    if (!this._super(jsonObj, generalModel)) {
        // source line 11, bytecode pc 27
        return false;
    }
    // source line 15, bytecode pc 69
    (this.talentPoint_plus = xs.Utils.parseIntSafe(jsonObj.info.talent_point));
    // source line 16, bytecode pc 111
    (this.sacrifice_type = xs.Utils.parseIntSafe(jsonObj.info.sacrifice_type));
    // source line 18, bytecode pc 153
    (this.ganodermaBackNum = xs.Utils.parseIntSafe(jsonObj.info.ganoderma));
    // source line 20, bytecode pc 195
    (this.generalLevel_new = xs.Utils.parseIntSafe(jsonObj.info.general_level_now));
    // source line 21, bytecode pc 237
    (this.generalLevel_old = xs.Utils.parseIntSafe(jsonObj.info.general_level_before));
    // source line 23, bytecode pc 258
    (this.talentPoint = generalModel.getTalentPoint());
    // source line 26, bytecode pc 260
    return true;
},
    getTalentPointPlus: function() {
    // source line 30, bytecode pc 6
    return this.talentPoint_plus;
},
    getSacrificeType: function() {
    // source line 33, bytecode pc 6
    return this.sacrifice_type;
},
    getTalentPoint: function() {
    // source line 36, bytecode pc 6
    return this.talentPoint;
},
    getGanodermaBackNum: function() {
    // source line 39, bytecode pc 6
    return this.ganodermaBackNum;
}
}));
// source line 43, bytecode pc 134
(xs.Models.TransmissionModel.create = function(jsonObj, generalModel) {
    var ret;
    // source line 44, bytecode pc 23
    (ret = new xs.Models.TransmissionModel());
    if ((ret && ret.init(jsonObj, generalModel))) {
        // source line 46, bytecode pc 63
        return ret;
    }
    // source line 48, bytecode pc 65
    return null;
});
