// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/Combat.js:1
// source line 191, bytecode pc 249
(xs.Models.Combat = (xs.Models.Combat || xs.Models.Card.extend({
    name: "xs.Models.Combat",
    init: function() {
    var caches;
    // source line 21, bytecode pc 12
    this._super();
    // source line 23, bytecode pc 20
    (this.type = 0);
    // source line 24, bytecode pc 28
    (this.exp = 0);
    // source line 25, bytecode pc 36
    (this.extra_buff = 0);
    // source line 26, bytecode pc 44
    (this.open_level = 0);
    // source line 27, bytecode pc 52
    (this.is_open = 0);
    // source line 28, bytecode pc 64
    (this.desc = "");
    // source line 29, bytecode pc 72
    (this.m_bLevelUpStatus = false);
    // source line 32, bytecode pc 90
    (caches = [ "_curLevelUpgradeCfg" ]);
    // source line 35, bytecode pc 107
    this.registerCaches(caches);
    // source line 37, bytecode pc 109
    return true;
},
    loadJson: function(data) {
    // source line 44, bytecode pc 16
    this._super(data);
    // source line 58, bytecode pc 53
    (this.type = xs.Utils.parseIntSafe(data.combat_type));
    // source line 61, bytecode pc 90
    (this.open_level = xs.Utils.parseIntSafe(data.open_level));
    // source line 62, bytecode pc 105
    (this.is_open = data.is_open);
},
    getCurLevelUpgradeCfg: function() {
    if (!this._curLevelUpgradeCfg) {
        // source line 71, bytecode pc 70
        (this._curLevelUpgradeCfg = xs.Models.CombatUpgradeCfg.createWithBase(this.getType(), this.getLevel()));
    }
    // source line 73, bytecode pc 77
    return this._curLevelUpgradeCfg;
},
    getUpgradeCfgByLevel: function(level) {
    // source line 78, bytecode pc 32
    xs.assert((level > 0), "getUpgradeCfgByLevel level must be >0 ", level);
    // source line 79, bytecode pc 76
    return xs.Models.CombatUpgradeCfg.createWithBase(this.getType(), level);
},
    isOpen: function() {
    // source line 83, bytecode pc 6
    return this.is_open;
},
    getType: function() {
    // source line 87, bytecode pc 6
    return this.type;
},
    setLevelUpStatus: function(bLevelUp) {
    // source line 112, bytecode pc 9
    (this.m_bLevelUpStatus = bLevelUp);
},
    getLevelUpStatus: function() {
    // source line 116, bytecode pc 6
    return this.m_bLevelUpStatus;
},
    createTypeIcon: function() {
    var _ret;
    // source line 120, bytecode pc 4
    (_ret = null);
    // source line 121, bytecode pc 11
    switch (this.type) {
        case xs.Constant_AttrType_Atk:
        // source line 123, bytecode pc 107
        (_ret = cc.Sprite.createWithSpriteFrameName("Cmn01_gong1.png"));
        break;
        case xs.Constant_AttrType_Def:
        // source line 126, bytecode pc 143
        (_ret = cc.Sprite.createWithSpriteFrameName("Cmn01_fang1.png"));
        break;
        case xs.Constant_AttrType_Hp:
        // source line 129, bytecode pc 179
        (_ret = cc.Sprite.createWithSpriteFrameName("Cmn01_xue1.png"));
        break;
        case xs.Constant_AttrType_Int:
        // source line 132, bytecode pc 215
        (_ret = cc.Sprite.createWithSpriteFrameName("Cmn01_zhi1.png"));
        break;
        default:
        break;
    }
    // source line 135, bytecode pc 224
    return _ret;
},
    createCard_CardExp: function() {
    // source line 139, bytecode pc 6
    switch (this.type) {
        case xs.Constant_AttrType_Atk:
        // source line 141, bytecode pc 110
        return xs.Factorys.Sprite.create("CombatScene_Combat_sha", "CombatScene");
        case xs.Constant_AttrType_Def:
        // source line 143, bytecode pc 149
        return xs.Factorys.Sprite.create("CombatScene_Combat_shan", "CombatScene");
        case xs.Constant_AttrType_Hp:
        // source line 145, bytecode pc 188
        return xs.Factorys.Sprite.create("CombatScene_Combat_tao", "CombatScene");
        case xs.Constant_AttrType_Int:
        // source line 147, bytecode pc 227
        return xs.Factorys.Sprite.create("CombatScene_Combat_jiu", "CombatScene");
        default:
        break;
    }
},
    getUpgradeExpNeed: function(level) {
    // source line 153, bytecode pc 24
    (level = (level || this.getLevel()));
    // source line 154, bytecode pc 52
    return this.getUpgradeCfgByLevel(level).getNum();
},
    getMaxLevel: function() {
    // source line 159, bytecode pc 23
    return this.getCurLevelUpgradeCfg().getMaxLevel();
},
    getTotalExpByLevel: function(level) {
    // source line 164, bytecode pc 27
    return this.getUpgradeCfgByLevel(level).getNumTotal();
},
    getExtraBuff: function(level) {
    var _level;
    // source line 169, bytecode pc 24
    (_level = (level || this.getLevel()));
    // source line 171, bytecode pc 52
    return this.getUpgradeCfgByLevel(_level).getExtraBuff();
},
    getNextLevelExtraBuff: function() {
    // source line 176, bytecode pc 38
    return this.getUpgradeCfgByLevel((this.getLevel() + 1)).getExtraBuff();
},
    getTotalExp: function() {
    var total;
    if ((this.getLevel() > 1)) {
        // source line 182, bytecode pc 45
        (total = this.getCurLevelUpgradeCfg().getNumTotal());
        // source line 183, bytecode pc 62
        return (total + this.getExp());
    } else {
        // source line 186, bytecode pc 80
        return this.getExp();
    }
},
    getOpenLevel: function() {
    // source line 192, bytecode pc 6
    return this.open_level;
}
})));
// source line 196, bytecode pc 275
(xs.Models.Combat.createWithJson = function(data) {
    var _ret;
    // source line 197, bytecode pc 23
    (_ret = new xs.Models.Combat());
    if ((_ret && _ret.init())) {
        // source line 199, bytecode pc 70
        _ret.loadJson(data);
        // source line 200, bytecode pc 74
        return _ret;
    }
    // source line 202, bytecode pc 76
    return null;
});
