// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/Gems.js:1
// source line 8, bytecode pc 25
(xs.Models.Gems_Type_Atk = xs.Constant_AttrType_Atk);
// source line 9, bytecode pc 51
(xs.Models.Gems_Type_Def = xs.Constant_AttrType_Def);
// source line 10, bytecode pc 77
(xs.Models.Gems_Type_Hp = xs.Constant_AttrType_Hp);
// source line 11, bytecode pc 103
(xs.Models.Gems_Type_Int = xs.Constant_AttrType_Int);
// source line 268, bytecode pc 503
(xs.Models.Gems = xs.Models.Card.extend({
    name: "xs.Models.Gems",
    CfgDataType: xs.Constant_CfgDataType_Gem,
    ResType: xs.Constant_ResType_Item,
    names: { id: "Gems_id", level: "Gems_level" },
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    init: function() {
    if (!this._super()) {
        // source line 32, bytecode pc 19
        return false;
    }
    // source line 41, bytecode pc 27
    (this.used_num = 0);
    // source line 42, bytecode pc 35
    (this.total_num = 0);
    // source line 43, bytecode pc 43
    (this.is_new = null);
    // source line 44, bytecode pc 51
    (this.is_look = false);
    // source line 45, bytecode pc 59
    (this.gem_level = 0);
    // source line 50, bytecode pc 61
    return true;
},
    getQuantity: function() {
    // source line 55, bytecode pc 6
    return this.total_num;
},
    getUsedNum: function() {
    // source line 60, bytecode pc 6
    return this.used_num;
},
    loadJson: function(json) {
    // source line 65, bytecode pc 7
    (this.is_look = false);
    // source line 67, bytecode pc 24
    this._super(json);
    // source line 71, bytecode pc 46
    (this.used_num = (json.used_num || 0));
    // source line 72, bytecode pc 68
    (this.total_num = (json.total_num || 0));
},
    setLook: function() {
    // source line 79, bytecode pc 7
    (this.is_look = true);
},
    setNewStatus: function(status) {
    // source line 85, bytecode pc 26
    xs.log_hsq("status11", status);
    // source line 86, bytecode pc 36
    (this.is_new = status);
},
    setNoNew: function() {
    if ((this.is_new && this.is_look)) {
        // source line 92, bytecode pc 37
        this.setNewStatus(false);
    }
},
    getNewStatus: function() {
    var _is_new;
    // source line 100, bytecode pc 9
    (_is_new = this.is_new);
    // source line 101, bytecode pc 22
    this.setLook();
    // source line 104, bytecode pc 33
    return (_is_new || false);
},
    getStatus: function() {
    // source line 109, bytecode pc 13
    return (this.is_new || false);
},
    getItemNum: function() {
    // source line 113, bytecode pc 6
    return this.total_num;
},
    getEffectValue: function() {
    // source line 118, bytecode pc 34
    return xs.Utils.floorSafe(this.getEffectValueBase());
},
    getEffectValueBase: function() {
    // source line 122, bytecode pc 39
    return xs.Utils.parseFloatSafe(this.getBaseDataRef().effect_value);
},
    getLevel: function() {
    // source line 126, bytecode pc 6
    return this.gem_level;
},
    getPrice: function() {
    // source line 130, bytecode pc 12
    return this._super();
},
    getEffectType: function() {
    // source line 137, bytecode pc 40
    xs.log_hsq("typpp", this.getBaseDataRef().type);
    // source line 138, bytecode pc 80
    return xs.Utils.parseIntSafe(this.getBaseDataRef().type);
},
    getAttrNaked: function(attrType) {
    // source line 142, bytecode pc 16
    return this.getAttr(attrType);
},
    getAttr: function(attrType) {
    var _ret;
    // source line 149, bytecode pc 4
    (_ret = 0);
    // source line 150, bytecode pc 8
    switch (attrType) {
        case xs.Constant_AttrType_Hp:
        case xs.Constant_AttrType_Atk:
        case xs.Constant_AttrType_Def:
        case xs.Constant_AttrType_Int:
        if ((this.getEffectType() === attrType)) {
            // source line 157, bytecode pc 185
            (_ret = this.getEffectValue());
        }
        break;
        case xs.Constant_AttrType_FightPoint:
        // source line 169, bytecode pc 316
        (_ret = xs.Tools.Card.calculateAttrType_FightPoint(this.getAttr(xs.Constant_AttrType_Atk), this.getAttr(xs.Constant_AttrType_Def), this.getAttr(xs.Constant_AttrType_Hp), this.getAttr(xs.Constant_AttrType_Int)));
        break;
        case xs.Constant_AttrType_Miss:
        case xs.Constant_AttrType_Aim:
        case xs.Constant_AttrType_Cri:
        case xs.Constant_AttrType_Tou:
        break;
        default:
        // source line 179, bytecode pc 349
        this.error("getAttr", attrType);
        break;
    }
    // source line 185, bytecode pc 358
    return _ret;
},
    getEquipTypeToString: function() {
    var _txt_lab, _effect_type;
    // source line 189, bytecode pc 8
    (_txt_lab = "");
    // source line 190, bytecode pc 24
    (_effect_type = this.getEffectType());
    // source line 191, bytecode pc 28
    switch (_effect_type) {
        case xs.Models.Gems_Type_Atk:
        // source line 193, bytecode pc 149
        (_txt_lab = xs.Tools.String.createString("filter_attack"));
        break;
        case xs.Models.Gems_Type_Def:
        // source line 196, bytecode pc 190
        (_txt_lab = xs.Tools.String.createString("auto_name_15"));
        break;
        case xs.Models.Gems_Type_Hp:
        // source line 199, bytecode pc 231
        (_txt_lab = xs.Tools.String.createString("auto_name_16"));
        break;
        case xs.Models.Gems_Type_Int:
        // source line 202, bytecode pc 272
        (_txt_lab = xs.Tools.String.createString("auto_name_17"));
        break;
        default:
        // source line 205, bytecode pc 286
        (_txt_lab = "??");
        break;
    }
    // source line 208, bytecode pc 295
    return _txt_lab;
},
    createHeadView_General_Equ_Skill: function() {
    // source line 214, bytecode pc 39
    return xs.Tools.Card.createHeadView_General_Equ_Skill(this, xs.Const_Item_Style_Gems);
},
    createIcon_Select: function(viewCfg) {
    var _ret;
    // source line 224, bytecode pc 51
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true }, viewCfg));
    // source line 226, bytecode pc 68
    _ret.reloadData(this);
    // source line 227, bytecode pc 72
    return _ret;
},
    createIcon_GradeAndAttribute: function(viewCfg) {
    var _ret;
    // source line 237, bytecode pc 63
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, attribute: true, lv: true }, viewCfg));
    // source line 239, bytecode pc 80
    _ret.reloadData(this);
    // source line 240, bytecode pc 84
    return _ret;
},
    createIcon_GradeAndName: function(viewCfg) {
    var _ret;
    // source line 250, bytecode pc 57
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, name: true }, viewCfg));
    // source line 252, bytecode pc 74
    _ret.reloadData(this);
    // source line 253, bytecode pc 78
    return _ret;
},
    createIcon_GradeAndLv: function(viewCfg) {
    var _ret;
    // source line 263, bytecode pc 63
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, lv: true, refine_lv: true }, viewCfg));
    // source line 265, bytecode pc 80
    _ret.reloadData(this);
    // source line 266, bytecode pc 84
    return _ret;
},
    getLevelById: function(id) {
    var _dataObj, key;
    // source line 270, bytecode pc 40
    (_dataObj = xs.Tools.CfgData.getCfgDataByType(xs.Constant_CfgDataType_Gem));
    for (var key in _dataObj) {
        if (!(_dataObj.hasOwnProperty(key))) continue;
        if (!((_dataObj[key].id == id))) continue;
        // source line 276, bytecode pc 119
        (this.gem_level = _dataObj[key].level);
        break;
    }
}
}));
// source line 284, bytecode pc 529
(xs.Models.Gems.createWithBase = function(id) {
    var card;
    // source line 285, bytecode pc 23
    (card = new xs.Models.Gems());
    if ((card && card.init())) {
        // source line 287, bytecode pc 70
        card.readBaseData(id);
        // source line 288, bytecode pc 89
        card.getLevelById(id);
        // source line 290, bytecode pc 93
        return card;
    }
    // source line 292, bytecode pc 116
    xs.warn("xs.Models.Gems.createWithBase");
    // source line 293, bytecode pc 118
    return null;
});
// source line 296, bytecode pc 555
(xs.Models.Gems.createWithJson = function(mJson) {
    var card;
    // source line 297, bytecode pc 23
    (card = new xs.Models.Gems());
    if ((card && card.init())) {
        // source line 299, bytecode pc 70
        card.loadJson(mJson);
        // source line 300, bytecode pc 94
        card.getLevelById(mJson.id);
        // source line 301, bytecode pc 98
        return card;
    }
    // source line 303, bytecode pc 121
    xs.warn("xs.Models.Gems.createWithJson");
    // source line 304, bytecode pc 123
    return null;
});
