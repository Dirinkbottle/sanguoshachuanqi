// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/TeamCntPopView.js:1
// source line 238, bytecode pc 123
(xs.Views.TeamCntPopView = cc.Node.extend({
    ctor: function() {
    // source line 13, bytecode pc 12
    this._super();
    // source line 14, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function(playerId, playerData) {
    var pos, expProgressBg;
    if (!this._super()) {
        // source line 18, bytecode pc 19
        return false;
    }
    // source line 22, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 23, bytecode pc 35
    (this.m_generalData = null);
    // source line 24, bytecode pc 43
    (this.m_ccbNode = null);
    // source line 26, bytecode pc 51
    (this.m_lvLab = null);
    // source line 27, bytecode pc 59
    (this.m_hpLab = null);
    // source line 28, bytecode pc 67
    (this.m_atkLab = null);
    // source line 29, bytecode pc 75
    (this.m_defLab = null);
    // source line 30, bytecode pc 83
    (this.m_intLab = null);
    // source line 33, bytecode pc 91
    (this.m_1cntLab = null);
    // source line 34, bytecode pc 99
    (this.m_2cntLab = null);
    // source line 35, bytecode pc 107
    (this.m_3cntLab = null);
    // source line 36, bytecode pc 115
    (this.m_4cntLab = null);
    // source line 37, bytecode pc 123
    (this.m_5cntLab = null);
    // source line 38, bytecode pc 131
    (this.m_6cntLab = null);
    // source line 40, bytecode pc 139
    (this.progressBarSprite = null);
    // source line 41, bytecode pc 147
    (this.m_expProgressTimer = null);
    // source line 42, bytecode pc 155
    (this.m_bg = null);
    // source line 44, bytecode pc 165
    (this.m_playerId = playerId);
    // source line 45, bytecode pc 175
    (this.m_playerData = playerData);
    // source line 48, bytecode pc 213
    this.setContentSize(cc.size(540, 140));
    // source line 50, bytecode pc 269
    (this.m_ccbNode = xs.ccb_reader.load(xs.Views.TeamCntPopView.cfg.ccbi, this));
    // source line 51, bytecode pc 305
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 53, bytecode pc 367
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, xs.Views.TeamCntPopView.cfg.ccbCfg, this);
    // source line 55, bytecode pc 422
    (this.m_bg = this.m_ccbNode.getChildByTag(xs.Views.TeamCntPopView.cfg.m_bg.tag));
    // source line 57, bytecode pc 477
    (this.progressBarSprite = this.m_ccbNode.getChildByTag(xs.Views.TeamCntPopView.cfg.m_expProgressTimer.tag));
    // source line 58, bytecode pc 495
    this.progressBarSprite.removeFromParent();
    // source line 59, bytecode pc 516
    (pos = this.progressBarSprite.getPosition());
    // source line 62, bytecode pc 551
    (this.m_expProgressTimer = cc.ProgressTimer.create(this.progressBarSprite));
    // source line 63, bytecode pc 573
    this.m_expProgressTimer.setPosition(pos);
    // source line 64, bytecode pc 602
    this.m_expProgressTimer.setType(cc.PROGRESS_TIMER_TYPE_BAR);
    // source line 65, bytecode pc 641
    this.m_expProgressTimer.setMidpoint(cc.p(0, 0));
    // source line 66, bytecode pc 680
    this.m_expProgressTimer.setBarChangeRate(cc.p(1, 0));
    // source line 67, bytecode pc 729
    this.m_expProgressTimer.setZOrder(xs.Views.TeamCntPopView.cfg.m_expProgressTimer.zOrder);
    // source line 68, bytecode pc 770
    xs.Utils.Node.attachNodes(this.m_ccbNode, this.m_expProgressTimer);
    // source line 70, bytecode pc 822
    (expProgressBg = this.m_ccbNode.getChildByTag(xs.Views.TeamCntPopView.cfg.expProgressBg.tag));
    // source line 71, bytecode pc 868
    expProgressBg.setZOrder(xs.Views.TeamCntPopView.cfg.expProgressBg.zOrder);
    // source line 73, bytecode pc 917
    this.m_bg.setZOrder(xs.Views.TeamCntPopView.cfg.m_bg.zOrder);
    // source line 76, bytecode pc 962
    (this.m_changeYuanFen = xs.Views.Btn.create("Btn_ChangeYuanFen", ""));
    // source line 77, bytecode pc 1003
    this.m_changeYuanFen.setPosition(cc.p(-10, 43));
    // source line 78, bytecode pc 1054
    this.m_changeYuanFen.setString(xs.Tools.String.createString("btn_change_yuanfen"));
    // source line 110, bytecode pc 1091
    this.m_changeYuanFen.setOnClickCallBack(function() {
    var evolutionData;
    // source line 80, bytecode pc 68
    (evolutionData = xs.Profile.GameData.Mgr.getInstance().EvolutionInfos.getByGeneralId(this.m_generalData.getId()));
    if ((evolutionData != null)) {
        // source line 83, bytecode pc 101
        xs.log_ck("fate_ids:");
        // source line 85, bytecode pc 147
        xs.Views.Mgr.showDialogByName("AwakeChangeYuanFenDialog", evolutionData.fate_ids, evolutionData);
    }
}.bind(this));
    // source line 111, bytecode pc 1132
    xs.Utils.Node.attachNodes(this.m_ccbNode, this.m_changeYuanFen);
    // source line 112, bytecode pc 1159
    this.m_changeYuanFen.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 113, bytecode pc 1179
    this.m_changeYuanFen.setVisible(false);
    // source line 115, bytecode pc 1181
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 118, bytecode pc 9
    (this.m_baseTouchPriority = priority);
},
    setGeneralData: function(data) {
    // source line 121, bytecode pc 9
    (this.m_generalData = data);
    // source line 122, bytecode pc 22
    this.updateView();
},
    getOriginalByType: function(type) {
    var _val, _obj_magicalEqu, _obj_meridian, lieutenantArray, i, magicalEqu;
    // source line 126, bytecode pc 75
    (_val = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Generals.getAttr(this.m_generalData, type));
    // source line 128, bytecode pc 158
    (_obj_magicalEqu = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).MagicalEqus.getByGeneralId(this.m_generalData.getId()));
    if (_obj_magicalEqu) {
        // source line 130, bytecode pc 192
        (_val = (_val + _obj_magicalEqu.getPointEffectValAllByType(type)));
    }
    // source line 132, bytecode pc 275
    (_obj_meridian = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).MeridianTops.getByGeneralPkId(this.m_generalData.getPkId()));
    if (_obj_meridian) {
        // source line 134, bytecode pc 309
        (_val = (_val + _obj_meridian.getMeridianAndMeridianPointBuffValByType(type)));
    }
    // source line 138, bytecode pc 392
    (lieutenantArray = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Generals.getLieutenantByPkId(this.m_generalData.getPkId()));
    // source line 139, bytecode pc 397
    (i = 0);
    while ((i < lieutenantArray.length)) {
        // source line 140, bytecode pc 487
        (magicalEqu = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).MagicalEqus.getByGeneralId(lieutenantArray[i].getId()));
        if (magicalEqu) {
            // source line 142, bytecode pc 521
            (_val = (_val + magicalEqu.getPointEffectValAllByType(type)));
        }
        // source line 139, bytecode pc 535
        (i = (+i + 1));
    }
    // source line 146, bytecode pc 580
    return xs.Utils.parseIntSafe(_val);
},
    updateView: function() {
    var teamGeneralInfo, fates, i;
    if (this.m_generalData) {
        // source line 152, bytecode pc 46
        this.m_changeYuanFen.setVisible(this.m_generalData.isAwaked());
        // source line 154, bytecode pc 82
        this.m_expProgressTimer.setPercentage(this.m_generalData.getCurLevelExpPer());
        // source line 157, bytecode pc 118
        this.m_lvLab.setString(this.m_generalData.getLevel());
        // source line 169, bytecode pc 201
        (teamGeneralInfo = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getTeamGeneralByPkId(this.m_generalData.getPkId()));
        if (teamGeneralInfo) {
            // source line 172, bytecode pc 236
            this.m_hpLab.setString(teamGeneralInfo.hp);
            // source line 173, bytecode pc 263
            this.m_atkLab.setString(teamGeneralInfo.atk);
            // source line 174, bytecode pc 290
            this.m_defLab.setString(teamGeneralInfo.def);
            // source line 175, bytecode pc 317
            this.m_intLab.setString(teamGeneralInfo.int);
        }
        // source line 186, bytecode pc 338
        (fates = this.m_generalData.getFates());
        // source line 187, bytecode pc 373
        xs.assert((fates.length < 7), "general fates out of range!");
        // source line 188, bytecode pc 378
        (i = 1);
        while ((i <= fates.length)) {
            if (xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Fate.isLightedInGeneral(fates[(i - 1)], this.m_generalData)) {
                // source line 195, bytecode pc 583
                xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccbNode, {
    name: (("m_" + i) + "cntLab"),
    tag: this[(("m_" + i) + "cntLab")].getTag(),
    type: "ls",
    id: "LS_yuanfenInf2"
}, this);
            } else {
                // source line 201, bytecode pc 704
                xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccbNode, {
    name: (("m_" + i) + "cntLab"),
    tag: this[(("m_" + i) + "cntLab")].getTag(),
    type: "ls",
    id: "LS_yuanfenInf1"
}, this);
            }
            // source line 203, bytecode pc 754
            this[(("m_" + i) + "cntLab")].setString(fates[(i - 1)].getNameString());
            // source line 188, bytecode pc 767
            (i = (+i + 1));
        }
        // source line 205, bytecode pc 799
        (i = (fates.length + 1));
        while ((i < 7)) {
            // source line 210, bytecode pc 921
            xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccbNode, {
    name: (("m_" + i) + "cntLab"),
    tag: this[(("m_" + i) + "cntLab")].getTag(),
    type: "ls",
    id: "LS_yuanfenInf1"
}, this);
            // source line 211, bytecode pc 956
            this[(("m_" + i) + "cntLab")].setString("");
            // source line 205, bytecode pc 969
            (i = (+i + 1));
        }
    } else {
        // source line 215, bytecode pc 1006
        this.m_expProgressTimer.setPercentage(0);
        // source line 216, bytecode pc 1030
        this.m_lvLab.setString("");
        // source line 217, bytecode pc 1054
        this.m_hpLab.setString("");
        // source line 218, bytecode pc 1078
        this.m_atkLab.setString("");
        // source line 219, bytecode pc 1102
        this.m_defLab.setString("");
        // source line 220, bytecode pc 1126
        this.m_intLab.setString("");
        // source line 222, bytecode pc 1131
        (i = 1);
        while ((i < 7)) {
            // source line 227, bytecode pc 1253
            xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccbNode, {
    name: (("m_" + i) + "cntLab"),
    tag: this[(("m_" + i) + "cntLab")].getTag(),
    type: "ls",
    id: "LS_yuanfenInf1"
}, this);
            // source line 228, bytecode pc 1288
            this[(("m_" + i) + "cntLab")].setString("");
            // source line 222, bytecode pc 1301
            (i = (+i + 1));
        }
        // source line 230, bytecode pc 1333
        this.m_changeYuanFen.setVisible(false);
    }
},
    onEnterTransitionDidFinish: function() {
    // source line 233, bytecode pc 12
    this._super();
    // source line 234, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.updateView, xs.Constant_Notify_ModelChange_Evolution);
},
    onExitTransitionDidStart: function() {
    // source line 239, bytecode pc 12
    this._super();
    // source line 240, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_Evolution);
}
}));
// source line 246, bytecode pc 149
(xs.Views.TeamCntPopView.create = function(playerId, playerData) {
    var node;
    // source line 247, bytecode pc 23
    (node = new xs.Views.TeamCntPopView());
    if ((node && node.init(playerId, playerData))) {
        // source line 249, bytecode pc 63
        return node;
    }
    // source line 252, bytecode pc 65
    return null;
});
// source line 285, bytecode pc 812
(xs.Views.TeamCntPopView.cfg = {
    ccbi: "ccb3/0_7_2_MVGeneralInfo.ccbi",
    ccbCfg: [
        { name: "m_lvLab", tag: 11, type: "ls", id: "LS_mainLv" },
        { name: "m_hpLab", tag: 12, type: "ls", id: "LS_mainUI4" },
        { name: "m_atkLab", tag: 13, type: "ls", id: "LS_mainUI4" },
        { name: "m_defLab", tag: 14, type: "ls", id: "LS_mainUI4" },
        { name: "m_intLab", tag: 15, type: "ls", id: "LS_mainUI4" },
        { name: "m_1cntLab", tag: 16, type: "ls", id: "LS_yuanfenInf1" },
        { name: "m_2cntLab", tag: 17, type: "ls", id: "LS_yuanfenInf1" },
        { name: "m_3cntLab", tag: 18, type: "ls", id: "LS_yuanfenInf1" },
        { name: "m_4cntLab", tag: 19, type: "ls", id: "LS_yuanfenInf1" },
        { name: "m_5cntLab", tag: 20, type: "ls", id: "LS_yuanfenInf1" },
        { name: "m_6cntLab", tag: 21, type: "ls", id: "LS_yuanfenInf1" }
    ],
    m_bg: { zOrder: -5, tag: 22 },
    expProgressCover: { zOrder: 0, tag: 23 },
    m_expProgressTimer: { zOrder: -1, tag: 25 },
    expProgressBg: { zOrder: -2, tag: 24 }
});
