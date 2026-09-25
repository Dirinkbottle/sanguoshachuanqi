// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/Card.js:1
// source line 12, bytecode pc 16
(xs.Models.Card_Type_General = 1);
// source line 13, bytecode pc 34
(xs.Models.Card_Type_MTip = 2);
// source line 14, bytecode pc 52
(xs.Models.Card_Type_Equipment = 3);
// source line 15, bytecode pc 70
(xs.Models.Card_Type_Skill = 4);
// source line 16, bytecode pc 88
(xs.Models.Card_Type_Connect = 5);
// source line 21, bytecode pc 105
(xs.Models.Card_Orbit_Wei = 1);
// source line 22, bytecode pc 123
(xs.Models.Card_Orbit_Shu = 2);
// source line 23, bytecode pc 141
(xs.Models.Card_Orbit_Wu = 3);
// source line 24, bytecode pc 159
(xs.Models.Card_Orbit_Qun = 4);
// source line 560, bytecode pc 798
(xs.Models.Card = xs.Models.BaseCfg.extend({
    name: "xs.Models.Card",
    init: function() {
    // source line 38, bytecode pc 12
    this._super();
    // source line 40, bytecode pc 20
    (this.card_type = 0);
    // source line 41, bytecode pc 32
    (this.pk_id = "0");
    // source line 42, bytecode pc 40
    (this.level = 1);
    // source line 43, bytecode pc 48
    (this.get_time = 0);
    // source line 44, bytecode pc 56
    (this.num = 1);
    // source line 45, bytecode pc 64
    (this.exp = 0);
    // source line 47, bytecode pc 90
    this.assert(this.createHeadView, "need override createHeadView");
    // source line 48, bytecode pc 116
    this.assert(this.isDefault, "need override isDefault");
    // source line 54, bytecode pc 118
    return true;
},
    isDefault: function() {
    var _resModel;
    // source line 61, bytecode pc 15
    (_resModel = this.getRes());
    if ((_resModel.getId() === "0")) {
        // source line 63, bytecode pc 42
        return true;
    }
    // source line 65, bytecode pc 44
    return false;
},
    setNum: function(num) {
    // source line 71, bytecode pc 31
    (this.num = xs.Utils.parseIntSafe(num));
},
    getNum: function() {
    // source line 76, bytecode pc 6
    return this.num;
},
    isIgnoreByFilter: function() {
    // source line 82, bytecode pc 18
    this.error("isIgnoreByFilter need override");
    // source line 83, bytecode pc 20
    return false;
},
    getGrade: function() {
    var _ret;
    // source line 88, bytecode pc 20
    (_ret = this.getBaseDataRef().grade);
    // source line 90, bytecode pc 54
    xs.assert(_ret, "getGrade", this.name);
    // source line 92, bytecode pc 80
    return xs.Utils.parseIntSafe(_ret);
},
    getSortGrade: function() {
    if ((this.getGrade() == xs.Constant_Grade_Demon)) {
        // source line 98, bytecode pc 29
        return 1;
    } else {
        // source line 101, bytecode pc 49
        return (this.getGrade() + 1);
    }
},
    getStyleId: function() {
    // source line 107, bytecode pc 39
    return xs.Utils.parseIntSafe(this.getBaseDataRef().style_id);
},
    getStyleDesc: function() {
    // source line 112, bytecode pc 17
    return this.getBaseDataRef().style_desc;
},
    getObrit: function() {
    // source line 118, bytecode pc 1
    return 0;
},
    getStyleModel: function() {
    // source line 122, bytecode pc 1
    return this;
},
    createHeadView: function(viewCfg) {
    // source line 131, bytecode pc 16
    return this.createIcon_Grade(viewCfg);
},
    createCardView: function(viewCfg) {
    // source line 140, bytecode pc 16
    return this.createCard_Grade(viewCfg);
},
    createCard_Grade: function(viewCfg) {
    // source line 147, bytecode pc 18
    this.error("need override createCard_Grade");
    // source line 148, bytecode pc 20
    return null;
},
    createIcon_Grade: function(viewCfg) {
    var _ret;
    // source line 157, bytecode pc 51
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true }, viewCfg));
    // source line 159, bytecode pc 68
    _ret.reloadData(this);
    // source line 160, bytecode pc 72
    return _ret;
},
    createIcon_GradeAndLv: function(viewCfg) {
    var _ret;
    // source line 169, bytecode pc 57
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, lv: true }, viewCfg));
    // source line 171, bytecode pc 74
    _ret.reloadData(this);
    // source line 172, bytecode pc 78
    return _ret;
},
    createIcon_GradeAndLvAndFate: function(viewCfg) {
    var _ret;
    // source line 181, bytecode pc 63
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, lv: true, fate: true }, viewCfg));
    // source line 183, bytecode pc 80
    _ret.reloadData(this);
    // source line 184, bytecode pc 84
    return _ret;
},
    createIcon_GradeAndLvAndName: function(viewCfg) {
    var _ret;
    // source line 195, bytecode pc 63
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, lv: true, name: true }, viewCfg));
    // source line 197, bytecode pc 80
    _ret.reloadData(this);
    // source line 198, bytecode pc 84
    return _ret;
},
    createIcon_GradeAndNameOrLv: function(viewCfg) {
    var _ret;
    // source line 208, bytecode pc 63
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, lv: true, name: true }, viewCfg));
    // source line 210, bytecode pc 80
    _ret.reloadData(this);
    // source line 211, bytecode pc 84
    return _ret;
},
    createIcon_GradeAndNum: function(viewCfg) {
    var _ret;
    // source line 219, bytecode pc 57
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, num: true }, viewCfg));
    // source line 221, bytecode pc 74
    _ret.reloadData(this);
    // source line 222, bytecode pc 78
    return _ret;
},
    createIcon_GradeAndNumAndName: function(viewCfg) {
    var _ret;
    // source line 232, bytecode pc 63
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, num: true, name: true }, viewCfg));
    // source line 234, bytecode pc 80
    _ret.reloadData(this);
    // source line 235, bytecode pc 84
    return _ret;
},
    createIcon_GradeAndName: function(viewCfg) {
    var _ret;
    // source line 257, bytecode pc 57
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, name: true }, viewCfg));
    // source line 259, bytecode pc 74
    _ret.reloadData(this);
    // source line 260, bytecode pc 78
    return _ret;
},
    createIcon_GradeAndNameAndEqued: function(viewCfg) {
    var _ret;
    // source line 271, bytecode pc 63
    (_ret = xs.Views.Icon.IconStyleA.create({ grade: true, equed: true, name: true }, viewCfg));
    // source line 273, bytecode pc 80
    _ret.reloadData(this);
    // source line 274, bytecode pc 84
    return _ret;
},
    loadJson: function(data) {
    // source line 282, bytecode pc 16
    this._super(data);
    // source line 285, bytecode pc 38
    this.setPkId(data.pk_id);
    // source line 286, bytecode pc 60
    this.setCardType(data.card_type);
    // source line 287, bytecode pc 89
    this.setGetTime((data.get_time || 0));
    // source line 288, bytecode pc 111
    this.setLevel(data.level);
    // source line 289, bytecode pc 133
    this.setExp(data.exp);
    // source line 291, bytecode pc 174
    xs.assert(this.pk_id, "data.pk_id", data, this.name);
    // source line 292, bytecode pc 215
    xs.assert(this.get_time, "data.get_time", data, this.name);
    // source line 293, bytecode pc 265
    xs.assert(this.level, "data.level", data, [ this.name ]);
},
    setExp: function(exp) {
    // source line 297, bytecode pc 31
    (this.exp = xs.Utils.parseIntSafe(exp));
},
    getExp: function() {
    // source line 301, bytecode pc 6
    return this.exp;
},
    setPkId: function(pkId) {
    // source line 305, bytecode pc 9
    (this.pk_id = pkId);
},
    getPkId: function() {
    // source line 309, bytecode pc 6
    return this.pk_id;
},
    getCardType: function() {
    // source line 315, bytecode pc 6
    return this.card_type;
},
    setCardType: function(card_type) {
    // source line 319, bytecode pc 9
    (this.card_type = card_type);
},
    getGetTime: function() {
    // source line 324, bytecode pc 6
    return this.get_time;
},
    setGetTime: function(time) {
    // source line 328, bytecode pc 9
    (this.get_time = time);
},
    setLevel: function(level) {
    var _level;
    // source line 334, bytecode pc 28
    (_level = xs.Utils.parseIntSafe(level));
    if ((this.level !== _level)) {
        // source line 338, bytecode pc 56
        this.clearCache();
        // source line 339, bytecode pc 66
        (this.level = _level);
    }
},
    getLevel: function() {
    // source line 344, bytecode pc 6
    return this.level;
},
    getSource: function() {
    // source line 350, bytecode pc 17
    return this.getBaseDataRef().source;
},
    clearResCache: function() {
    // source line 354, bytecode pc 7
    (this.cacheResInfo = null);
},
    getRes: function() {
    var _resId, evolutionData, evoResId;
    if (((this.cacheResInfo === null) || (this.cacheResInfo === undefined))) {
        // source line 362, bytecode pc 51
        (_resId = this.getBaseDataRef().resource_id);
        if (this.isAwaked()) {
            // source line 366, bytecode pc 132
            (evolutionData = xs.Profile.GameData.Mgr.getInstance().EvolutionInfos.getByGeneralId(this.getId()));
            if (evolutionData) {
                if (evolutionData.cfgInfo) {
                    // source line 373, bytecode pc 170
                    (evoResId = evolutionData.cfgInfo.resource_id);
                    if (evoResId) {
                        // source line 381, bytecode pc 185
                        (_resId = evoResId);
                    }
                }
            }
        }
        // source line 394, bytecode pc 223
        this.assert(_resId, "_resId error", this, this.getBaseDataRef());
        // source line 396, bytecode pc 249
        this.assert(this.ResType, "need this.ResType");
        // source line 399, bytecode pc 293
        (this.cacheResInfo = xs.Models.Resource.createWithBase(_resId, this.ResType));
    }
    // source line 404, bytecode pc 300
    return this.cacheResInfo;
},
    getFightBase: function() {
    // source line 409, bytecode pc 39
    return xs.Utils.parseFloatSafe(this.getBaseDataRef().fighting);
},
    getFightStep: function() {
    // source line 412, bytecode pc 39
    return xs.Utils.parseFloatSafe(this.getBaseDataRef().fighting_step);
},
    getNextLevel: function() {
    var _nextLevel, _maxLevel;
    // source line 418, bytecode pc 17
    (_nextLevel = (this.getLevel() + 1));
    // source line 420, bytecode pc 33
    (_maxLevel = this.getMaxLevel());
    if ((_nextLevel >= _maxLevel)) {
        // source line 423, bytecode pc 52
        (_nextLevel = _maxLevel);
    }
    // source line 425, bytecode pc 56
    return _nextLevel;
},
    isMaxLv: function() {
    if ((this.getLevel() >= this.getMaxLevel())) {
        // source line 431, bytecode pc 31
        return true;
    }
    // source line 433, bytecode pc 33
    return false;
},
    getCurLevelExpPer: function() {
    // source line 439, bytecode pc 45
    return Math.floor(((this.getExp() / this.getUpgradeExpNeed()) * 100));
},
    createGradeSmallIcon: function() {
    // source line 446, bytecode pc 39
    return xs.Tools.UI.createGradeSmallIcon(this.getGrade());
},
    createOrbitSmallIcon: function() {
    // source line 451, bytecode pc 39
    return xs.Tools.UI.createOrbitSmallIcon(this.getObrit());
},
    createEffectTypeSmallIcon: function() {
    // source line 458, bytecode pc 39
    return xs.Tools.UI.createEffectTypeSmallIcon(this.getEffectType());
},
    getTotalExp: function() {
    var total;
    if ((this.getLevel() > 1)) {
        // source line 467, bytecode pc 45
        (total = this._getUpgradeExpCfgObj().getNumTotal());
        // source line 468, bytecode pc 62
        return (total + this.getExp());
    } else {
        // source line 471, bytecode pc 80
        return this.getExp();
    }
},
    getMaxLevel: function() {
    // source line 477, bytecode pc 23
    return this._getUpgradeExpCfgObj().getMaxLevel();
},
    getUpgradeCoinNeed: function(level) {
    var _upgrade_coin_obj;
    // source line 482, bytecode pc 21
    (_upgrade_coin_obj = this._getUpgradeCoinCfgObj(null, level));
    // source line 483, bytecode pc 36
    return _upgrade_coin_obj.getNum();
},
    getUpgradeExpNeed: function(level) {
    var _upgrade_exp_obj;
    // source line 488, bytecode pc 21
    (_upgrade_exp_obj = this._getUpgradeExpCfgObj(null, level));
    // source line 489, bytecode pc 36
    return _upgrade_exp_obj.getNum();
},
    getEatedProExp: function(level) {
    var _eated_exp_obj, itemId;
    // source line 494, bytecode pc 4
    (_eated_exp_obj = null);
    // source line 495, bytecode pc 20
    (itemId = this.getId());
    // source line 496, bytecode pc 24
    switch (itemId) {
        case xs.Models.ItemID_JuanZhou_chuji:
        // source line 498, bytecode pc 127
        (_eated_exp_obj = xs.Models.EatedExpUpgradeCfg.createWithBase("chujijuanzhou_jinengshengji", 1));
        break;
        case xs.Models.ItemID_JuanZhou_zhongji:
        // source line 501, bytecode pc 170
        (_eated_exp_obj = xs.Models.EatedExpUpgradeCfg.createWithBase("zhongjijuanzhou_jinengshengji", 1));
        break;
        case xs.Models.ItemID_JuanZhou_gaoji:
        // source line 505, bytecode pc 213
        (_eated_exp_obj = xs.Models.EatedExpUpgradeCfg.createWithBase("gaojijuanzhou_jinengshengji", 1));
        break;
        default:
        break;
    }
    if ((_eated_exp_obj == null)) {
        // source line 509, bytecode pc 250
        (_eated_exp_obj = this._getEatedExpCfgObj(null, level));
    }
    // source line 510, bytecode pc 265
    return _eated_exp_obj.getNum();
},
    getPrice: function(level) {
    var _sell_cfg_obj;
    // source line 515, bytecode pc 21
    (_sell_cfg_obj = this._getSellCfgObj(null, level));
    // source line 516, bytecode pc 36
    return _sell_cfg_obj.getNum();
},
    _getUpgradeExpCfgObj: function(tag, level) {
    var _tag, _level, _upgrade_exp_obj;
    // source line 521, bytecode pc 17
    (_tag = (tag || "upgrade_exp_type"));
    // source line 522, bytecode pc 42
    (_level = (level || this.getLevel()));
    // source line 523, bytecode pc 93
    (_upgrade_exp_obj = xs.Models.UpgradeExpCfg.createWithBase(this.getBaseDataRef()[_tag], _level));
    // source line 524, bytecode pc 97
    return _upgrade_exp_obj;
},
    _getEatedExpCfgObj: function(tag, level) {
    var _tag, _level, _eated_exp_obj;
    // source line 529, bytecode pc 17
    (_tag = (tag || "eated_exp_type"));
    // source line 530, bytecode pc 42
    (_level = (level || this.getLevel()));
    // source line 532, bytecode pc 93
    (_eated_exp_obj = xs.Models.EatedExpUpgradeCfg.createWithBase(this.getBaseDataRef()[_tag], _level));
    // source line 533, bytecode pc 97
    return _eated_exp_obj;
},
    _getSellCfgObj: function(tag, level) {
    var _tag, _level, _sell_obj;
    // source line 538, bytecode pc 17
    (_tag = (tag || "sell_type"));
    // source line 539, bytecode pc 42
    (_level = (level || this.getLevel()));
    // source line 541, bytecode pc 93
    (_sell_obj = xs.Models.SellCfg.createWithBase(this.getBaseDataRef()[_tag], _level));
    // source line 542, bytecode pc 97
    return _sell_obj;
},
    _getUpgradeCoinCfgObj: function(tag, level) {
    var _tag, _level, _upgrade_coin_obj;
    // source line 547, bytecode pc 17
    (_tag = (tag || "upgrade_coin_type"));
    // source line 548, bytecode pc 42
    (_level = (level || this.getLevel()));
    // source line 550, bytecode pc 93
    (_upgrade_coin_obj = xs.Models.UpgradeCoinCfg.createWithBase(this.getBaseDataRef()[_tag], _level));
    // source line 551, bytecode pc 97
    return _upgrade_coin_obj;
},
    isAwaked: function() {
    // source line 554, bytecode pc 60
    return xs.Profile.GameData.Mgr.getInstance().EvolutionInfos.checkAwakedByGeneralId(this.getId());
},
    print: function() {
    var item;
    // source line 561, bytecode pc 22
    xs.log("{");
    for (var item in this) {
        // source line 563, bytecode pc 75
        xs.log(((("    " + item) + " = ") + this[item]));
    }
    // source line 565, bytecode pc 106
    xs.log("}");
}
}));
