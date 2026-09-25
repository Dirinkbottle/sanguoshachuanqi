// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/UnionWar/UnionWarFightScene.js:1
// source line 291, bytecode pc 526
(xs.Scene.UnionWarFightLayer = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 10, bytecode pc 12
    this._super();
},
    init: function(params) {
    var visibleSize, visibleOrigin, colorLayer;
    if (!this._super()) {
        // source line 15, bytecode pc 19
        return false;
    }
    // source line 19, bytecode pc 34
    (this.m_battleId = params.battleId);
    // source line 20, bytecode pc 49
    (this.m_battleState = params.battleState);
    // source line 21, bytecode pc 64
    (this.battleFightInfo = params.battleFightInfo);
    // source line 23, bytecode pc 72
    (this.m_titleLabel = null);
    // source line 24, bytecode pc 80
    (this.m_vsLabel1 = null);
    // source line 25, bytecode pc 88
    (this.m_vsLabel2 = null);
    // source line 26, bytecode pc 96
    (this.m_team1_score_bg = null);
    // source line 27, bytecode pc 104
    (this.m_team2_score_bg = null);
    // source line 28, bytecode pc 112
    (this.m_team1_score_lab = null);
    // source line 29, bytecode pc 120
    (this.m_team2_score_lab = null);
    // source line 31, bytecode pc 132
    (this.m_arrBattleViews = []);
    // source line 34, bytecode pc 152
    this.battleFightInfo.setIsUserPlayed(true);
    if (this.battleFightInfo.getIsUserPlayingDetailProcess()) {
        // source line 38, bytecode pc 191
        (this.battleFightShowType = xs.Constant_UnionWar_FightViewProcessState_ShowResult);
        // source line 39, bytecode pc 211
        this.battleFightInfo.setIsUserPlayingDetailProcess(false);
    } else {
        // source line 43, bytecode pc 233
        (this.battleFightShowType = xs.Constant_UnionWar_FightViewProcessState_ShowFight);
    }
    // source line 46, bytecode pc 258
    (visibleSize = xs.director.getVisibleSize());
    // source line 47, bytecode pc 283
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 50, bytecode pc 323
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_WorldBoss);
    // source line 52, bytecode pc 375
    (colorLayer = cc.LayerColor.create(cc.c4b(0, 0, 0, 150)));
    // source line 53, bytecode pc 392
    this.addChild(colorLayer);
    // source line 56, bytecode pc 426
    (this.ccbTitle = xs.ccb_reader.load("ccb3/unionWar_title.ccbi"));
    // source line 57, bytecode pc 468
    this.ccbTitle.setContentSize(cc.size(434, 52));
    // source line 63, bytecode pc 589
    xs.Utils.Node.attachNodes(this, this.ccbTitle, {
    desc: "tc",
    offset: { x: (-this.ccbTitle.getContentSize().width / 2), y: (-visibleSize.height * 0.1) },
    sc: true
});
    // source line 65, bytecode pc 637
    xs.Utils.UI.replaceCcbByCfg(this.ccbTitle, this.cfg.ccbTitleCfg, this);
    // source line 68, bytecode pc 671
    (this.ccbVsTitle = xs.ccb_reader.load("ccb3/unionWar_vs_title.ccbi"));
    // source line 69, bytecode pc 713
    this.ccbVsTitle.setContentSize(cc.size(675, 65));
    // source line 75, bytecode pc 834
    xs.Utils.Node.attachNodes(this, this.ccbVsTitle, {
    desc: "tc",
    offset: { x: (-this.ccbVsTitle.getContentSize().width / 2), y: (-visibleSize.height * 0.2) },
    sc: true
});
    // source line 77, bytecode pc 882
    xs.Utils.UI.replaceCcbByCfg(this.ccbVsTitle, this.cfg.ccbVsTitleCfg, this);
    // source line 79, bytecode pc 902
    this.m_team1_score_bg.setVisible(false);
    // source line 80, bytecode pc 922
    this.m_team2_score_bg.setVisible(false);
    // source line 81, bytecode pc 942
    this.m_team1_score_lab.setVisible(false);
    // source line 82, bytecode pc 962
    this.m_team2_score_lab.setVisible(false);
    // source line 85, bytecode pc 1000
    this.m_vsLabel1.setString(this.battleFightInfo.getUnionNameWithTeamNo(1));
    // source line 87, bytecode pc 1039
    this.m_vsLabel2.setString(this.battleFightInfo.getUnionNameWithTeamNo(2));
    // source line 90, bytecode pc 1065
    (this.fightView = this.createNewFightView(this.battleFightShowType));
    // source line 93, bytecode pc 1104
    (this.btnSkip = xs.Views.Btn.createByStyleId("BS_Corner2_RB"));
    // source line 94, bytecode pc 1128
    this.btnSkip.setStringById("str_fight_skip");
    // source line 95, bytecode pc 1157
    this.btnSkip.setAnchorPoint(xs.ap_rb);
    // source line 96, bytecode pc 1195
    this.btnSkip.setOnClickCallBack(this.onBtnSkipClicked.bind(this));
    // source line 97, bytecode pc 1215
    this.btnSkip.setEventOnDisable(true);
    // source line 98, bytecode pc 1305
    xs.Utils.Node.attachNodes(this, this.btnSkip, { desc: "rb", sc: true }, xs.Cfg.Constant.Scene.FightDemo.UI);
    // source line 101, bytecode pc 1344
    (this.btnReplay = xs.Views.Btn.create("Btn_Replay"));
    // source line 102, bytecode pc 1382
    this.btnReplay.setOnClickCallBack(this.onBtnReplayClicked.bind(this));
    // source line 103, bytecode pc 1402
    this.btnReplay.setVisible(false);
    // source line 104, bytecode pc 1518
    xs.Utils.Node.attachNodes(this, this.btnReplay, { desc: "rb", offset: { x: -100, y: 150 }, sc: true }, xs.Cfg.Constant.Scene.FightDemo.UI);
    // source line 107, bytecode pc 1557
    (this.btnClose = xs.Views.Btn.create("Btn_ShutDown"));
    // source line 108, bytecode pc 1595
    this.btnClose.setOnClickCallBack(this.btnCloseClicked.bind(this));
    // source line 109, bytecode pc 1615
    this.btnClose.setVisible(false);
    // source line 110, bytecode pc 1730
    xs.Utils.Node.attachNodes(this, this.btnClose, { desc: "rb", offset: { x: -100, y: 70 }, sc: true }, xs.Cfg.Constant.Scene.FightDemo.UI);
    if ((this.m_battleState == xs.Constant_UnionWar_BattleViewState_FightEnd)) {
        // source line 114, bytecode pc 1772
        this.btnSkip.setEnabled(true);
    } else {
        if ((this.m_battleState == xs.Constant_UnionWar_BattleViewState_Fighting)) {
            // source line 117, bytecode pc 1819
            this.btnSkip.setEnabled(false);
            // source line 118, bytecode pc 1843
            this.btnSkip.setOnClickCallBack(function() {
});
        }
    }
    // source line 122, bytecode pc 1845
    return true;
},
    onEnter: function() {
    // source line 126, bytecode pc 12
    this._super();
    // source line 128, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.setUserPlayingDetailProcess, xs.Constant_Notify_UnionWar_UserPlayingDetailProcess);
    if ((this.battleFightShowType == xs.Constant_UnionWar_FightViewProcessState_ShowFight)) {
        // source line 132, bytecode pc 94
        this.initFightShow();
        // source line 134, bytecode pc 107
        this.fightReady();
    } else {
        // source line 138, bytecode pc 125
        this.initResultShow();
    }
},
    onExit: function() {
    // source line 143, bytecode pc 39
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_UnionWar_UserPlayingDetailProcess);
    // source line 144, bytecode pc 52
    this._super();
},
    initFightShow: function() {
    // source line 148, bytecode pc 19
    this.btnSkip.setVisible(true);
    // source line 149, bytecode pc 39
    this.btnSkip.setEnabled(true);
    // source line 150, bytecode pc 77
    this.btnSkip.setOnClickCallBack(this.onBtnSkipClicked.bind(this));
    // source line 151, bytecode pc 97
    this.btnReplay.setVisible(false);
    // source line 152, bytecode pc 117
    this.btnClose.setVisible(false);
},
    initResultShow: function() {
    // source line 156, bytecode pc 19
    this.btnSkip.setVisible(false);
    // source line 157, bytecode pc 43
    this.btnSkip.setOnClickCallBack(function() {
});
    // source line 158, bytecode pc 63
    this.btnReplay.setVisible(true);
    // source line 159, bytecode pc 83
    this.btnClose.setVisible(true);
},
    setUserPlayingDetailProcess: function() {
    // source line 164, bytecode pc 19
    this.battleFightInfo.setIsUserPlayingDetailProcess(true);
},
    fightReady: function() {
    // source line 169, bytecode pc 43
    (this.m_arm_openning = xs.Views.Armature.AutoAudioArmature.create("Arm_Fight_Openning"));
    // source line 170, bytecode pc 63
    this.m_arm_openning.setOpacity(0);
    // source line 173, bytecode pc 122
    xs.Utils.Node.attachNodes(this, this.m_arm_openning, { desc: "c", sc: true });
    // source line 189, bytecode pc 271
    this.m_arm_openning.runAction(xs.Utils.Action.combineSequence([
    cc.FadeIn.create(0),
    this.m_arm_openning.createPlayAction("kaichang02"),
    cc.CallFunc.create(function() {
    // source line 185, bytecode pc 17
    this.m_arm_openning.removeFromParent();
    // source line 186, bytecode pc 25
    (this.m_arm_openning = null);
    // source line 188, bytecode pc 38
    this.fightViewAtkStart();
}.bind(this))
]));
},
    fightViewAtkStart: function() {
    // source line 198, bytecode pc 17
    this.fightView.atkStart();
},
    createNewFightView: function(processState) {
    var fightView;
    // source line 206, bytecode pc 66
    (fightView = xs.Views.UnionWarFightView.create({ btattleId: this.m_battleId, battleFightInfo: this.battleFightInfo, processState: processState }));
    // source line 208, bytecode pc 83
    fightView.setListener(this);
    // source line 214, bytecode pc 185
    xs.Utils.Node.attachNodes(this, fightView, { desc: "cb", sc: true, offset: { x: -(fightView.getContentSize().width / 2), y: 30 } });
    // source line 218, bytecode pc 189
    return fightView;
},
    reloadView: function(viewState) {
    var maskLayer;
    // source line 224, bytecode pc 49
    (maskLayer = cc.LayerColor.create(cc.c4b(0, 0, 0, 0)));
    // source line 225, bytecode pc 70
    this.addChild(maskLayer, 9999);
    // source line 249, bytecode pc 224
    maskLayer.runAction(xs.Utils.Action.combineSequence([
    cc.FadeIn.create(0.3),
    cc.CallFunc.create(function() {
    // source line 231, bytecode pc 33
    xs.Utils.Node.removeFromParentSafe(this.fightView);
    if ((viewState == xs.Constant_UnionWar_FightViewProcessState_ShowFight)) {
        // source line 234, bytecode pc 88
        (this.fightView = this.createNewFightView(xs.Constant_UnionWar_FightViewProcessState_ShowFight));
        // source line 236, bytecode pc 101
        this.initFightShow();
        // source line 238, bytecode pc 114
        this.fightReady();
    } else {
        // source line 241, bytecode pc 149
        (this.fightView = this.createNewFightView(xs.Constant_UnionWar_FightViewProcessState_ShowResult));
        // source line 243, bytecode pc 162
        this.initResultShow();
    }
    // source line 246, bytecode pc 182
    this.setBaseTouchPriority(this.m_baseTouchPriority);
}.bind(this)),
    cc.FadeOut.create(0.3)
]));
},
    btnCloseClicked: function() {
    // source line 256, bytecode pc 26
    xs.Scene.Mgr.gotoLastScene();
},
    onBtnSkipClicked: function() {
    // source line 263, bytecode pc 23
    this.reloadView(xs.Constant_UnionWar_FightViewProcessState_ShowResult);
},
    onBtnReplayClicked: function() {
    // source line 269, bytecode pc 23
    this.reloadView(xs.Constant_UnionWar_FightViewProcessState_ShowFight);
},
    setBaseTouchPriority: function(priority) {
    // source line 273, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 274, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 275, bytecode pc 56
    this.fightView.setBaseTouchPriority((this.m_baseTouchPriority - 1));
    // source line 276, bytecode pc 84
    this.btnSkip.setTouchPriority((this.m_baseTouchPriority - 3));
    // source line 277, bytecode pc 112
    this.btnReplay.setTouchPriority((this.m_baseTouchPriority - 3));
    // source line 278, bytecode pc 140
    this.btnClose.setTouchPriority((this.m_baseTouchPriority - 3));
},
    cfg: {
        ccbTitleCfg: [
            {
                tag: 1,
                type: "ls",
                name: "m_titleLabel",
                id: "LS_guanqiaName",
                stringId: "union_title_warDetail"
            }
        ],
        ccbVsTitleCfg: [
            { tag: 1, type: "ls", name: "m_vsLabel1", id: "LS_Lv" },
            { tag: 2, type: "ls", name: "m_vsLabel2", id: "LS_Lv" },
            { tag: 3, name: "m_team1_score_bg" },
            { tag: 4, name: "m_team2_score_bg" },
            { tag: 5, type: "ls", name: "m_team1_score_lab", id: "LS_chongzhi_money" },
            { tag: 6, type: "ls", name: "m_team2_score_lab", id: "LS_chongzhi_money" }
        ]
    }
}));
// source line 298, bytecode pc 552
(xs.Scene.UnionWarFightLayer.create = function(params) {
    var layer;
    // source line 299, bytecode pc 23
    (layer = new xs.Scene.UnionWarFightLayer());
    if ((layer && layer.init(params))) {
        // source line 301, bytecode pc 59
        return layer;
    }
    // source line 303, bytecode pc 61
    return null;
});
// source line 312, bytecode pc 616
(xs.Scene.UnionWarFightScene = cc.Scene.extend({
    ctor: function() {
    // source line 309, bytecode pc 12
    this._super();
    // source line 310, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(params) {
    var layer;
    if (!this._super()) {
        // source line 314, bytecode pc 19
        return false;
    }
    // source line 317, bytecode pc 53
    (layer = xs.Scene.UnionWarFightLayer.create(params));
    if (layer) {
        // source line 319, bytecode pc 78
        layer.setBaseTouchPriority(0);
        // source line 320, bytecode pc 95
        this.addChild(layer);
    }
    // source line 322, bytecode pc 97
    return true;
}
}));
// source line 327, bytecode pc 642
(xs.Scene.UnionWarFightScene.create = function(params) {
    var scene;
    // source line 328, bytecode pc 23
    (scene = new xs.Scene.UnionWarFightScene());
    if ((scene && scene.init(params))) {
        // source line 330, bytecode pc 59
        return scene;
    }
    // source line 332, bytecode pc 61
    return null;
});
// source line 340, bytecode pc 745
xs.Scene.Mgr.registerScene("UnionWarFightScene", {
    "class": xs.Scene.UnionWarFightScene,
    type: xs.Constant_SceneType_General,
    area: [ "FightScene01", "GuildDialog" ]
});
