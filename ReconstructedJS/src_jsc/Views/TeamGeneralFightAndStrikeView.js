// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/TeamGeneralFightAndStrikeView.js:1
// source line 138, bytecode pc 179
(xs.Views.TeamGeneralFightAndStrikeView = cc.Node.extend({
    ctor: function() {
    // source line 12, bytecode pc 12
    this._super();
    // source line 13, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function(playerId, playerData) {
    if (!this._super()) {
        // source line 17, bytecode pc 19
        return false;
    }
    // source line 20, bytecode pc 27
    (this.m_ccbNode = null);
    // source line 21, bytecode pc 35
    (this.m_generalData = null);
    // source line 23, bytecode pc 43
    (this.m_fightLab = null);
    // source line 25, bytecode pc 53
    (this.m_playerId = playerId);
    // source line 26, bytecode pc 63
    (this.m_playerData = playerData);
    // source line 28, bytecode pc 99
    this.setContentSize(cc.size(126, 68));
    // source line 30, bytecode pc 150
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.TeamBuild_FightAndStrikeInfo, this));
    // source line 31, bytecode pc 186
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 33, bytecode pc 234
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.cfg.ccbCfg, this);
    // source line 35, bytecode pc 236
    return true;
},
    setGeneralData: function(data) {
    // source line 38, bytecode pc 9
    (this.m_generalData = data);
    // source line 39, bytecode pc 22
    this.updateView();
},
    updateView: function() {
    var teamGeneralInfo;
    if (this.m_generalData) {
        if (!this.isVisible()) {
            // source line 44, bytecode pc 43
            this.setVisible(true);
        }
        // source line 47, bytecode pc 141
        this.m_fightLab.setString(xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Generals.getAttr(this.m_generalData, xs.Constant_AttrType_FightPoint));
        // source line 56, bytecode pc 224
        (teamGeneralInfo = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getTeamGeneralByPkId(this.m_generalData.getPkId()));
        if (teamGeneralInfo) {
            // source line 61, bytecode pc 262
            xs.log_ck(("当前的用户IDthis.m_playerId:" + this.m_playerId));
            // source line 62, bytecode pc 289
            this.m_fightLab.setString(teamGeneralInfo.fighting);
        } else {
            // source line 65, bytecode pc 314
            this.m_fightLab.setString(0);
        }
        // source line 69, bytecode pc 384
        (this.m_strikeLab = xs.Utils.replaceNode(this.m_ccbNode, this.cfg.breachStar.tag, this.m_generalData.getBreachStar()));
    } else {
        if (this.isVisible()) {
            // source line 72, bytecode pc 421
            this.setVisible(false);
        }
        // source line 74, bytecode pc 445
        this.m_fightLab.setString("");
    }
},
    getFightPoint: function() {
    var _fight_point, generalModle, magicalModle, meridianModel, _Atk, _Def, _Hp, _Int, _obj_magicalEqu, _obj_meridianTopModel, valueModel, lieutenantArray, i, magicalEqu, _arr_general_skill_all;
    // source line 79, bytecode pc 4
    (_fight_point = 0);
    // source line 81, bytecode pc 58
    (generalModle = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Generals);
    // source line 82, bytecode pc 112
    (magicalModle = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).MagicalEqus);
    // source line 83, bytecode pc 166
    (meridianModel = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).MeridianTops);
    // source line 85, bytecode pc 171
    (_Atk = 0);
    // source line 86, bytecode pc 176
    (_Def = 0);
    // source line 87, bytecode pc 181
    (_Hp = 0);
    // source line 88, bytecode pc 186
    (_Int = 0);
    // source line 90, bytecode pc 222
    (_obj_magicalEqu = magicalModle.getByGeneralId(this.m_generalData.getId()));
    if (_obj_magicalEqu) {
        // source line 92, bytecode pc 259
        (_Atk = _obj_magicalEqu.getPointEffectValAllByType(xs.Constant_AttrType_Atk));
        // source line 93, bytecode pc 288
        (_Def = _obj_magicalEqu.getPointEffectValAllByType(xs.Constant_AttrType_Def));
        // source line 94, bytecode pc 317
        (_Hp = _obj_magicalEqu.getPointEffectValAllByType(xs.Constant_AttrType_Hp));
        // source line 95, bytecode pc 346
        (_Int = _obj_magicalEqu.getPointEffectValAllByType(xs.Constant_AttrType_Int));
    }
    // source line 97, bytecode pc 382
    (_obj_meridianTopModel = meridianModel.getByGeneralPkId(this.m_generalData.getPkId()));
    if (_obj_meridianTopModel) {
        // source line 99, bytecode pc 408
        (valueModel = _obj_meridianTopModel.getMeridianAndMeridianPointBuffValAll());
        // source line 100, bytecode pc 424
        (_Atk = (_Atk + valueModel.gong));
        // source line 101, bytecode pc 440
        (_Def = (_Def + valueModel.fang));
        // source line 102, bytecode pc 456
        (_Hp = (_Hp + valueModel.xue));
        // source line 103, bytecode pc 472
        (_Int = (_Int + valueModel.zhi));
    }
    // source line 106, bytecode pc 508
    (lieutenantArray = generalModle.getLieutenantByPkId(this.m_generalData.getPkId()));
    // source line 107, bytecode pc 513
    (i = 0);
    while ((i < lieutenantArray.length)) {
        // source line 108, bytecode pc 556
        (magicalEqu = magicalModle.getByGeneralId(lieutenantArray[i].getId()));
        if (magicalEqu) {
            // source line 110, bytecode pc 597
            (_Atk = (_Atk + magicalEqu.getPointEffectValAllByType(xs.Constant_AttrType_Atk)));
            // source line 111, bytecode pc 630
            (_Def = (_Def + magicalEqu.getPointEffectValAllByType(xs.Constant_AttrType_Def)));
            // source line 112, bytecode pc 663
            (_Hp = (_Hp + magicalEqu.getPointEffectValAllByType(xs.Constant_AttrType_Hp)));
            // source line 113, bytecode pc 696
            (_Int = (_Int + magicalEqu.getPointEffectValAllByType(xs.Constant_AttrType_Int)));
        }
        // source line 107, bytecode pc 710
        (i = (+i + 1));
    }
    // source line 122, bytecode pc 911
    (_fight_point = (_fight_point + xs.Tools.Card.calculateAttrType_FightPoint((generalModle.getAttr(this.m_generalData, xs.Constant_AttrType_Atk) + _Atk), (generalModle.getAttr(this.m_generalData, xs.Constant_AttrType_Def) + _Def), (generalModle.getAttr(this.m_generalData, xs.Constant_AttrType_Hp) + _Hp), (generalModle.getAttr(this.m_generalData, xs.Constant_AttrType_Int) + _Int))));
    // source line 126, bytecode pc 936
    (_arr_general_skill_all = generalModle.getAllSkillsAndLieutenantSkills(this.m_generalData));
    // source line 127, bytecode pc 941
    (i = 0);
    while ((i < _arr_general_skill_all.length)) {
        // source line 128, bytecode pc 984
        (_fight_point = (_fight_point + _arr_general_skill_all[i].getAttrNaked(xs.Constant_AttrType_FightPoint)));
        // source line 127, bytecode pc 998
        (i = (+i + 1));
    }
    // source line 131, bytecode pc 1043
    return xs.Utils.parseIntSafe(_fight_point);
},
    cfg: {
        breachStar: { tag: 11 },
        ccbCfg: [ { name: "m_fightLab", tag: 10, type: "ls", id: "LS_mainUI4" } ]
    }
}));
// source line 143, bytecode pc 205
(xs.Views.TeamGeneralFightAndStrikeView.create = function(playerId, playerData) {
    var view;
    // source line 144, bytecode pc 23
    (view = new xs.Views.TeamGeneralFightAndStrikeView());
    if ((view && view.init(playerId, playerData))) {
        // source line 146, bytecode pc 63
        return view;
    }
    // source line 148, bytecode pc 86
    xs.warn("xs.Views.TeamGeneralFightAndStrikeView.create error!");
    // source line 149, bytecode pc 88
    return null;
});
