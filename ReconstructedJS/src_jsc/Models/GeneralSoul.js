// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/GeneralSoul.js:1
// source line 303, bytecode pc 418
(xs.Models.GeneralSoul = xs.Models.Card.extend({
    name: "xs.Models.GeneralSoul",
    init: function() {
    var caches;
    // source line 30, bytecode pc 12
    this._super();
    // source line 34, bytecode pc 20
    (this.pk_id = 0);
    // source line 35, bytecode pc 28
    (this.id = 0);
    // source line 36, bytecode pc 36
    (this.generalModel = null);
    // source line 40, bytecode pc 63
    (caches = [ "referenceGeneralStatus", "referenceGeneral" ]);
    // source line 43, bytecode pc 80
    this.registerCaches(caches);
    // source line 45, bytecode pc 82
    return true;
},
    getPkId: function() {
    // source line 49, bytecode pc 6
    return this.pk_id;
},
    loadJson: function(data) {
    // source line 66, bytecode pc 21
    this.setNum(data.num);
    // source line 68, bytecode pc 36
    (this.pk_id = data.pk_id);
    // source line 69, bytecode pc 51
    (this.id = data.id);
    // source line 70, bytecode pc 91
    (this.generalModel = xs.Models.General.createWithBase(this.id));
},
    loadBase: function(id) {
    // source line 75, bytecode pc 9
    (this.id = id);
    // source line 76, bytecode pc 49
    (this.generalModel = xs.Models.General.createWithBase(this.id));
},
    getId: function() {
    // source line 80, bytecode pc 6
    return this.id;
},
    getNameString: function() {
    // source line 84, bytecode pc 17
    return this.generalModel.getNameString();
},
    isSoul: function() {
    // source line 89, bytecode pc 1
    return true;
},
    getProExp: function() {
    // source line 93, bytecode pc 20
    this.assert(false, "the function is deprecated");
    // source line 94, bytecode pc 38
    return this.generalModel.getProExp();
},
    getProCombatExp: function() {
    var _eated_exp_obj;
    // source line 99, bytecode pc 37
    (_eated_exp_obj = this.generalModel._getEatedExpCfgObj("general_soul_eated_exp_type", xs.Constant_Eated_Default_Level));
    // source line 101, bytecode pc 52
    return _eated_exp_obj.getNum();
},
    createPartView: function(partName) {
    // source line 105, bytecode pc 21
    return this.generalModel.createPartView(partName);
},
    createHeadView_General_Equ_Skill: function() {
    // source line 109, bytecode pc 44
    return xs.Tools.Card.createHeadView_General_Equ_Skill(this.generalModel, xs.Const_Item_Style_GeneralSoul);
},
    createHeadView: function(viewCfg) {
    // source line 113, bytecode pc 21
    return this.generalModel.createHeadView(viewCfg);
},
    createCardView: function(viewCfg) {
    // source line 118, bytecode pc 21
    return this.generalModel.createCardView(viewCfg);
},
    createCard_General: function(viewCfg) {
    // source line 123, bytecode pc 21
    return this.generalModel.createCard_General(viewCfg);
},
    getReincarnateNum: function() {
    if (this.reincarnateNum) {
        // source line 128, bytecode pc 17
        return this.reincarnateNum;
    }
    // source line 130, bytecode pc 41
    (this.reincarnateNum = this.generalModel.getReincarnateNum());
    // source line 131, bytecode pc 48
    return this.reincarnateNum;
},
    getGrade: function() {
    // source line 135, bytecode pc 17
    return this.generalModel.getGrade();
},
    getGeneralBreachStar: function() {
    // source line 138, bytecode pc 17
    return this.generalModel.getBreachStar();
},
    _setReferenceGeneralCache: function(obj_general) {
    // source line 159, bytecode pc 7
    (this.referenceGeneralStatus = true);
    // source line 160, bytecode pc 17
    (this.referenceGeneral = obj_general);
    // source line 161, bytecode pc 24
    return this.referenceGeneral;
},
    _getReferenceGeneralCache: function() {
    if (this.referenceGeneralStatus) {
        // source line 168, bytecode pc 34
        return (this.referenceGeneral ? this.referenceGeneral : null);
    }
    // source line 170, bytecode pc 37
    return -1;
},
    _delReferenceGeneralCache: function() {
    // source line 175, bytecode pc 7
    (this.referenceGeneralStatus = false);
    // source line 176, bytecode pc 9
    return true;
},
    checkSoulNumEnough: function() {
    var general, nextBreachSoulNum;
    // source line 181, bytecode pc 52
    (general = xs.Profile.GameData.Mgr.getInstance().GeneralSouls.getReferenceGeneral(this));
    // source line 182, bytecode pc 70
    (nextBreachSoulNum = general.getNextBreachNeedSoulNum());
    if ((this.getNum() >= nextBreachSoulNum)) {
        // source line 184, bytecode pc 93
        return true;
    }
    // source line 186, bytecode pc 95
    return false;
},
    getBaseGeneralModel: function() {
    // source line 190, bytecode pc 6
    return this.generalModel;
},
    createIcon_CombatSelect: function(viewCfg) {
    var _ret;
    // source line 196, bytecode pc 15
    (_ret = this.createIcon_GradeAndName());
    // source line 197, bytecode pc 19
    return _ret;
},
    createIcon_Grade: function(viewCfg) {
    var _objCfg, ret;
    // source line 203, bytecode pc 21
    (_objCfg = { grade: true, soul: true });
    // source line 205, bytecode pc 64
    (ret = xs.Views.Icon.IconStyleA.create(_objCfg, viewCfg));
    // source line 206, bytecode pc 81
    ret.reloadData(this);
    // source line 207, bytecode pc 85
    return ret;
},
    createIcon_GradeAndNum: function(viewCfg) {
    var _objCfg, ret;
    // source line 214, bytecode pc 27
    (_objCfg = { num: true, grade: true, soul: true });
    // source line 216, bytecode pc 70
    (ret = xs.Views.Icon.IconStyleA.create(_objCfg, viewCfg));
    // source line 217, bytecode pc 87
    ret.reloadData(this);
    // source line 218, bytecode pc 91
    return ret;
},
    createIcon_GradeAndNumAndName: function(viewCfg) {
    var _objCfg, ret;
    // source line 227, bytecode pc 33
    (_objCfg = { num: true, grade: true, soul: true, name: true });
    // source line 229, bytecode pc 76
    (ret = xs.Views.Icon.IconStyleA.create(_objCfg, viewCfg));
    // source line 230, bytecode pc 93
    ret.reloadData(this);
    // source line 231, bytecode pc 97
    return ret;
},
    createIcon_GradeAndName: function(viewCfg) {
    var _objCfg, ret;
    // source line 238, bytecode pc 27
    (_objCfg = { grade: true, soul: true, name: true });
    // source line 240, bytecode pc 70
    (ret = xs.Views.Icon.IconStyleA.create(_objCfg, viewCfg));
    // source line 241, bytecode pc 87
    ret.reloadData(this);
    // source line 242, bytecode pc 91
    return ret;
},
    createIcon_GradeAndLvAndName: function(viewCfg) {
    var _ret;
    // source line 254, bytecode pc 63
    (_ret = xs.Views.Icon.IconStyleA.create({ soul: true, grade: true, name: true }, viewCfg));
    // source line 256, bytecode pc 80
    _ret.reloadData(this);
    // source line 257, bytecode pc 84
    return _ret;
},
    createIcon_GradeAndNameOrLv: function(viewCfg) {
    var _ret;
    // source line 267, bytecode pc 63
    (_ret = xs.Views.Icon.IconStyleA.create({ soul: true, grade: true, name: true }, viewCfg));
    // source line 269, bytecode pc 80
    _ret.reloadData(this);
    // source line 270, bytecode pc 84
    return _ret;
},
    getCountry: function() {
    // source line 275, bytecode pc 17
    return this.generalModel.getObrit();
},
    getFightBase: function() {
    // source line 281, bytecode pc 45
    return xs.Utils.parseFloatSafe(this.getBaseGeneralModel().getFightBase());
},
    getFightStep: function() {
    // source line 286, bytecode pc 45
    return xs.Utils.parseFloatSafe(this.getBaseGeneralModel().getFightStep());
},
    getLevel: function() {
    // source line 291, bytecode pc 1
    return 1;
},
    getRes: function() {
    // source line 296, bytecode pc 23
    return this.getBaseGeneralModel().getRes();
},
    getNaturalSkillType: function() {
    // source line 300, bytecode pc 17
    return this.generalModel.getNaturalSkillType();
},
    getNaturalSkillTypeToString: function() {
    // source line 304, bytecode pc 17
    return this.generalModel.getNaturalSkillTypeToString();
}
}));
// source line 309, bytecode pc 444
(xs.Models.GeneralSoul.createWithJson = function(data) {
    var soul;
    // source line 312, bytecode pc 23
    (soul = new xs.Models.GeneralSoul());
    if ((soul && soul.init())) {
        // source line 314, bytecode pc 70
        soul.loadJson(data);
        // source line 315, bytecode pc 74
        return soul;
    }
    // source line 317, bytecode pc 76
    return null;
});
// source line 321, bytecode pc 470
(xs.Models.GeneralSoul.createWithBase = function(id) {
    var soul;
    // source line 324, bytecode pc 23
    (soul = new xs.Models.GeneralSoul());
    if ((soul && soul.init())) {
        // source line 326, bytecode pc 70
        soul.loadBase(id);
        // source line 327, bytecode pc 74
        return soul;
    }
    // source line 329, bytecode pc 76
    return null;
});
