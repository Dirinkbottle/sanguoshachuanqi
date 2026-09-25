// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/UnionWar/UnionWarBattleScene.js:1
// source line 233, bytecode pc 466
(xs.Scene.UnionWarEmbattleLayer = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 13, bytecode pc 12
    this._super();
},
    init: function(params) {
    var visibleSize, visibleOrigin, colorLayer, offset_x, offset_y, _desc, incX, i, _battleId, _battleInfo, _param, battleView;
    if (!this._super()) {
        // source line 18, bytecode pc 19
        return false;
    }
    // source line 21, bytecode pc 31
    (this.m_arrBattleViews = []);
    // source line 22, bytecode pc 46
    (this.m_battleType = params.battleType);
    // source line 23, bytecode pc 76
    xs.log_xjf(("UnionWarEmbattleLayer battleType = " + this.m_battleType));
    // source line 26, bytecode pc 84
    (this.fightProcess = null);
    // source line 28, bytecode pc 92
    (this.ccbTitle = null);
    // source line 29, bytecode pc 100
    (this.ccbVsTitle = null);
    // source line 30, bytecode pc 108
    (this.m_titleLabel = null);
    // source line 31, bytecode pc 116
    (this.m_team1_score_bg = null);
    // source line 32, bytecode pc 124
    (this.m_team2_score_bg = null);
    // source line 33, bytecode pc 132
    (this.m_team1_score_lab = null);
    // source line 34, bytecode pc 140
    (this.m_team2_score_lab = null);
    // source line 36, bytecode pc 165
    (visibleSize = xs.director.getVisibleSize());
    // source line 37, bytecode pc 190
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 40, bytecode pc 230
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_Fight_Chaos);
    // source line 42, bytecode pc 282
    (colorLayer = cc.LayerColor.create(cc.c4b(0, 0, 0, 150)));
    // source line 43, bytecode pc 299
    this.addChild(colorLayer);
    // source line 46, bytecode pc 333
    (this.ccbTitle = xs.ccb_reader.load("ccb3/unionWar_title.ccbi"));
    // source line 47, bytecode pc 375
    this.ccbTitle.setContentSize(cc.size(434, 52));
    // source line 53, bytecode pc 496
    xs.Utils.Node.attachNodes(this, this.ccbTitle, {
    desc: "tc",
    offset: { x: (-this.ccbTitle.getContentSize().width / 2), y: (-visibleSize.height * 0.1) },
    sc: true
});
    // source line 55, bytecode pc 544
    xs.Utils.UI.replaceCcbByCfg(this.ccbTitle, this.cfg.ccbTitleCfg, this);
    if ((this.m_battleType == xs.Constant_UnionWar_BattleType_Formation)) {
        // source line 61, bytecode pc 617
        this.m_titleLabel.setString(xs.Tools.String.createString("union_title_war"));
    } else {
        // source line 65, bytecode pc 637
        (this.fightProcess = params.fightingProcess);
        // source line 68, bytecode pc 688
        this.m_titleLabel.setString(xs.Tools.String.createString("union_title_warSituation"));
        // source line 71, bytecode pc 722
        (this.ccbVsTitle = xs.ccb_reader.load("ccb3/unionWar_vs_title.ccbi"));
        // source line 72, bytecode pc 764
        this.ccbVsTitle.setContentSize(cc.size(675, 65));
        // source line 78, bytecode pc 885
        xs.Utils.Node.attachNodes(this, this.ccbVsTitle, {
    desc: "tc",
    offset: { x: (-this.ccbVsTitle.getContentSize().width / 2), y: (-visibleSize.height * 0.2) },
    sc: true
});
        // source line 80, bytecode pc 933
        xs.Utils.UI.replaceCcbByCfg(this.ccbVsTitle, this.cfg.ccbVsTitleCfg, this);
        // source line 83, bytecode pc 971
        this.m_vsLabel1.setString(this.fightProcess.getUnionNameWithTeamNo(1));
        // source line 85, bytecode pc 1010
        this.m_vsLabel2.setString(this.fightProcess.getUnionNameWithTeamNo(2));
    }
    // source line 90, bytecode pc 1040
    (incX = (visibleSize.width / 3.5));
    // source line 91, bytecode pc 1067
    xs.log(("inc = " + incX));
    // source line 92, bytecode pc 1072
    (i = 0);
    while ((i < 6)) {
        // source line 94, bytecode pc 1087
        (_battleId = (i + 1));
        // source line 95, bytecode pc 1153
        (_battleInfo = xs.Profile.GameData.Mgr.getInstance().UnionWar.getUnionWar().getBattleInfoWithBattleId(_battleId));
        if ((i < 3)) {
            // source line 98, bytecode pc 1173
            (_desc = "bc");
            // source line 99, bytecode pc 1190
            (offset_x = ((i - 1.5) * incX));
            // source line 100, bytecode pc 1208
            (offset_y = (visibleSize.height * 0.45));
        } else {
            // source line 103, bytecode pc 1222
            (_desc = "bc");
            // source line 104, bytecode pc 1242
            (offset_x = (((i - 1.5) - 3) * incX));
            // source line 105, bytecode pc 1260
            (offset_y = (visibleSize.height * 0.05));
        }
        // source line 112, bytecode pc 1299
        (_param = { battleId: (i + 1), battleType: this.m_battleType, battleInfo: _battleInfo });
        if ((this.m_battleType == xs.Constant_UnionWar_BattleType_Fighting)) {
            // source line 116, bytecode pc 1353
            (_param.battleFightInfo = this.fightProcess.getBattleFightInfoWithBattleId((i + 1)));
        }
        // source line 119, bytecode pc 1387
        (battleView = xs.Views.UnionWarBattleView.create(_param));
        // source line 120, bytecode pc 1404
        battleView.setListener(this);
        // source line 124, bytecode pc 1487
        xs.Utils.Node.attachNodes(this, battleView, { desc: _desc, offset: cc.p(offset_x, offset_y), sc: true });
        // source line 128, bytecode pc 1509
        this.m_arrBattleViews.push(battleView);
        // source line 130, bytecode pc 1524
        battleView.refreshView();
        // source line 92, bytecode pc 1538
        (i = (+i + 1));
    }
    // source line 136, bytecode pc 1590
    (this.m_closeBtn = xs.Views.Btn.create("Btn_CircleRedClose"));
    // source line 137, bytecode pc 1628
    this.m_closeBtn.setOnClickCallBack(this.closeBtnCallback.bind(this));
    // source line 138, bytecode pc 1712
    xs.Utils.Node.attachNodes(this, this.m_closeBtn, { desc: "rt", sc: true, offset: { x: -55, y: -64 } });
    // source line 140, bytecode pc 1714
    return true;
},
    refreshView: function() {
},
    calculateScore: function() {
    var score_1, score_2, i, battleView, _battleFightInfo, _battleInfo, winnerIdx;
    // source line 156, bytecode pc 22
    xs.log_xjf("BattleView回调 calculateScore");
    // source line 157, bytecode pc 27
    (score_1 = 0);
    // source line 157, bytecode pc 32
    (score_2 = 0);
    // source line 158, bytecode pc 37
    (i = 0);
    while ((i < this.m_arrBattleViews.length)) {
        // source line 159, bytecode pc 57
        (battleView = this.m_arrBattleViews[i]);
        // source line 160, bytecode pc 95
        xs.log_xjf(("battleView.getBattleState() = " + battleView.getBattleState()));
        if ((battleView.getBattleState() == xs.Constant_UnionWar_BattleViewState_FightEnd)) {
            // source line 162, bytecode pc 143
            (_battleFightInfo = battleView.getBattleFightInfo());
            if (_battleFightInfo.getFight()) {
                // source line 164, bytecode pc 239
                (_battleInfo = xs.Profile.GameData.Mgr.getInstance().UnionWar.getUnionWar().getBattleInfoWithBattleId(_battleFightInfo.getBattleId()));
                // source line 165, bytecode pc 257
                (winnerIdx = _battleFightInfo.getWinnerUnionIdx());
                if ((winnerIdx == 0)) {
                    // source line 167, bytecode pc 289
                    (score_1 = (score_1 + _battleInfo.getBattleIntegral()));
                } else {
                    // source line 170, bytecode pc 316
                    (score_2 = (score_2 + _battleInfo.getBattleIntegral()));
                }
            }
        }
        // source line 158, bytecode pc 330
        (i = (+i + 1));
    }
    // source line 175, bytecode pc 389
    xs.log_xjf(((("score_1 = " + score_1) + ", score_2 = ") + score_2));
    // source line 177, bytecode pc 411
    this.m_team1_score_lab.setString(score_1);
    // source line 178, bytecode pc 433
    this.m_team2_score_lab.setString(score_2);
},
    onDoubtfulBtnClicked: function(battleId) {
    // source line 186, bytecode pc 47
    xs.Scene.Mgr.changeSceneByName("UnionWarChangeFormationScene", { battleId: battleId });
},
    onPlayBtnClicked: function(battleId, battleState, battleFightInfo) {
    // source line 198, bytecode pc 63
    xs.Scene.Mgr.changeSceneByName("UnionWarFightScene", { battleId: battleId, battleState: battleState, battleFightInfo: battleFightInfo });
},
    closeBtnCallback: function() {
    if ((this.m_battleType == xs.Constant_UnionWar_BattleType_Formation)) {
        // source line 206, bytecode pc 60
        xs.Scene.Mgr.saveStatus("exitBattleScene_formation", "1");
    }
    // source line 209, bytecode pc 93
    xs.Scene.Mgr.changeSceneByName("MainMenuScene");
},
    setBaseTouchPriority: function(priority) {
    var i;
    // source line 213, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 214, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 215, bytecode pc 85
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.UnionWar.m_closeBtn.priority));
    // source line 217, bytecode pc 90
    (i = 0);
    while ((i < this.m_arrBattleViews.length)) {
        // source line 219, bytecode pc 156
        this.m_arrBattleViews[i].setBaseTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.UnionWar.m_battleView.priority));
        // source line 217, bytecode pc 170
        (i = (+i + 1));
    }
},
    cfg: {
        ccbTitleCfg: [ { tag: 1, type: "ls", name: "m_titleLabel", id: "LS_guanqiaName" } ],
        ccbVsTitleCfg: [
            { tag: 1, type: "ls", name: "m_vsLabel1", id: "LS_Lv" },
            { tag: 2, type: "ls", name: "m_vsLabel2", id: "LS_Lv" },
            { tag: 3, name: "m_team1_score_bg" },
            { tag: 4, name: "m_team2_score_bg" },
            { tag: 5, type: "ls", name: "m_team1_score_lab", id: "LS_chongzhi_money", string: "0" },
            { tag: 6, type: "ls", name: "m_team2_score_lab", id: "LS_chongzhi_money", string: "0" }
        ]
    }
}));
// source line 240, bytecode pc 492
(xs.Scene.UnionWarEmbattleLayer.create = function(params) {
    var layer;
    // source line 241, bytecode pc 23
    (layer = new xs.Scene.UnionWarEmbattleLayer());
    if ((layer && layer.init(params))) {
        // source line 243, bytecode pc 59
        return layer;
    }
    // source line 245, bytecode pc 61
    return null;
});
// source line 254, bytecode pc 556
(xs.Scene.UnionWarBattleScene = cc.Scene.extend({
    ctor: function() {
    // source line 251, bytecode pc 12
    this._super();
    // source line 252, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(params) {
    var layer;
    if (!this._super()) {
        // source line 256, bytecode pc 19
        return false;
    }
    // source line 259, bytecode pc 53
    (layer = xs.Scene.UnionWarEmbattleLayer.create(params));
    if (layer) {
        // source line 261, bytecode pc 78
        layer.setBaseTouchPriority(0);
        // source line 262, bytecode pc 95
        this.addChild(layer);
    }
    // source line 264, bytecode pc 97
    return true;
}
}));
// source line 268, bytecode pc 582
(xs.Scene.UnionWarBattleScene.create = function(params) {
    var scene;
    // source line 269, bytecode pc 23
    (scene = new xs.Scene.UnionWarBattleScene());
    if ((scene && scene.init(params))) {
        // source line 271, bytecode pc 59
        return scene;
    }
    // source line 273, bytecode pc 61
    return null;
});
// source line 280, bytecode pc 676
xs.Scene.Mgr.registerScene("UnionWarBattleScene", {
    "class": xs.Scene.UnionWarBattleScene,
    type: xs.Constant_SceneType_General,
    area: [ "GuildDialog" ]
});
