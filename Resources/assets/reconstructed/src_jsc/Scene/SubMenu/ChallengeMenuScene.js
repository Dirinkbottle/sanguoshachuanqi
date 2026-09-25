// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/SubMenu/ChallengeMenuScene.js:1
// source line 298, bytecode pc 258
(xs.Scene.ChallengeMenuLayer = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 12, bytecode pc 12
    this._super();
},
    init: function() {
    var visibleSize, visibleOrigin;
    if (!this._super()) {
        // source line 16, bytecode pc 19
        return false;
    }
    // source line 19, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 20, bytecode pc 35
    (this.m_tableView = null);
    // source line 21, bytecode pc 43
    (this.m_mainMenu = null);
    // source line 22, bytecode pc 51
    (this.m_multiPageMenu = null);
    // source line 23, bytecode pc 59
    (this.m_coverLayer = null);
    // source line 29, bytecode pc 84
    (visibleSize = xs.director.getVisibleSize());
    // source line 30, bytecode pc 109
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 33, bytecode pc 149
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_Ladder);
    // source line 36, bytecode pc 182
    (this.horn = xs.Views.HornView.create());
    // source line 37, bytecode pc 221
    this.horn.setAnchorPoint(cc.p(0, 0));
    // source line 38, bytecode pc 280
    xs.Utils.Node.attachNodes(this, this.horn, { desc: "lb", sc: true });
    // source line 40, bytecode pc 313
    (this.m_multiPageMenu = xs.Views.MultiPagesMenuView.create());
    // source line 41, bytecode pc 333
    this.m_multiPageMenu.setDelegate(this);
    // source line 42, bytecode pc 369
    xs.Utils.Node.attachNodes(this, this.m_multiPageMenu);
    // source line 45, bytecode pc 432
    (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, false, xs.Scene.ChallengeMenuLayer.cfg.m_mainMenu));
    // source line 48, bytecode pc 465
    (this.m_coverLayer = xs.Views.HungerLayer.create());
    // source line 49, bytecode pc 501
    xs.Utils.Node.attachNodes(this, this.m_coverLayer);
    // source line 51, bytecode pc 516
    this.setBaseTouchPriority(0);
    // source line 53, bytecode pc 518
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 57, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 58, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 59, bytecode pc 85
    this.m_multiPageMenu.setBaseTouchPriority((this.m_baseTouchPriority + xs.Scene.ChallengeMenuLayer.cfg.m_multiPageMenu.priority));
    // source line 60, bytecode pc 141
    this.m_mainMenu.setBaseTouchPriority((this.m_baseTouchPriority + xs.Scene.ChallengeMenuLayer.cfg.m_mainMenu.priority));
    if (this.m_coverLayer) {
        // source line 62, bytecode pc 208
        this.m_coverLayer.setTouchPriority((this.m_baseTouchPriority + xs.Scene.ChallengeMenuLayer.cfg.m_coverLayer.priority));
    }
    // source line 64, bytecode pc 264
    this.horn.setBaseTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.MainMenuScene.m_horn.priority));
},
    MPMV_MenusNum: function() {
    // source line 70, bytecode pc 30
    return xs.Scene.ChallengeMenuLayer.cfg.multiMenuCfg.length;
},
    MPMV_MenusNumEachPage: function() {
    // source line 75, bytecode pc 2
    return 4;
},
    MPMV_MenuPositionAtIndex: function(index) {
    var visibleSize, useSize, pos_x, pos_y, offset_x, offset_y, pos;
    // source line 78, bytecode pc 24
    (visibleSize = xs.director.getVisibleSize());
    // source line 79, bytecode pc 65
    (useSize = cc.size((visibleSize.width - 110), visibleSize.height));
    // source line 81, bytecode pc 117
    (pos_x = (useSize.width * xs.Scene.ChallengeMenuLayer.cfg.multiMenuCfg[index].percentage.x));
    // source line 82, bytecode pc 169
    (pos_y = (useSize.height * xs.Scene.ChallengeMenuLayer.cfg.multiMenuCfg[index].percentage.y));
    // source line 83, bytecode pc 216
    (offset_x = (pos_x - xs.Scene.ChallengeMenuLayer.cfg.multiMenuCfg[index].offset.x));
    // source line 84, bytecode pc 263
    (offset_y = (pos_y - xs.Scene.ChallengeMenuLayer.cfg.multiMenuCfg[index].offset.y));
    // source line 87, bytecode pc 345
    (pos = xs.Utils.Node.getPointByPosDesc(this, { desc: "lb", sc: true, offset: { x: offset_x, y: offset_y } }));
    // source line 88, bytecode pc 349
    return pos;
},
    MPMV_MenuOffsetAtIndex: function(index) {
    var offset_x, offset_y, _ret;
    // source line 92, bytecode pc 42
    (offset_x = xs.Scene.ChallengeMenuLayer.cfg.multiMenuCfg[index].offset.x);
    // source line 93, bytecode pc 85
    (offset_y = xs.Scene.ChallengeMenuLayer.cfg.multiMenuCfg[index].offset.y);
    // source line 97, bytecode pc 113
    (_ret = cc.p(offset_x, offset_y));
    // source line 101, bytecode pc 117
    return _ret;
},
    MPMV_MenuEventRect: function(index) {
    // source line 105, bytecode pc 34
    return xs.Scene.ChallengeMenuLayer.cfg.multiMenuCfg[index].eventRect;
},
    MPMV_LastBtnPos: function() {
    var pos;
    // source line 110, bytecode pc 78
    (pos = xs.Utils.Node.getPointByPosDesc(this, { desc: "lc", sc: true, offset: { x: 20, y: 0 } }));
    // source line 111, bytecode pc 82
    return pos;
},
    MPMV_NextBtnPos: function() {
    var pos;
    // source line 114, bytecode pc 81
    (pos = xs.Utils.Node.getPointByPosDesc(this, { desc: "rc", sc: true, offset: { x: -130, y: 0 } }));
    // source line 115, bytecode pc 85
    return pos;
},
    MPMV_MenuForIndex: function(index) {
    var name, area, _param, menu, hintNum, hintIcon;
    // source line 119, bytecode pc 37
    (name = xs.Scene.ChallengeMenuLayer.cfg.multiMenuCfg[index].name);
    // source line 120, bytecode pc 75
    (area = xs.Scene.ChallengeMenuLayer.cfg.multiMenuCfg[index].area);
    // source line 125, bytecode pc 84
    (_param = "");
    // source line 127, bytecode pc 88
    switch (index) {
        case 0:
        if (xs.Profile.Permission.isLock(xs.Constant_Permission_Chaos)) {
            // source line 130, bytecode pc 183
            (_param = "_locked");
        }
        break;
        case 1:
        if (xs.Profile.Permission.isLock(xs.Constant_Permission_Ladder)) {
            // source line 135, bytecode pc 239
            (_param = "_locked");
        }
        break;
        case 2:
        if (xs.Profile.Permission.isLock(xs.Constant_Permission_Climp)) {
            // source line 140, bytecode pc 295
            (_param = "_locked");
        }
        break;
        case 3:
        if (xs.Profile.Permission.isLock(xs.Constant_Permission_WorldBoss)) {
            // source line 145, bytecode pc 351
            (_param = "_locked");
            // source line 146, bytecode pc 396
            (xs.Scene.ChallengeMenuLayer.cfg.multiMenuCfg[index].percentage.x = 0.7558139534883721);
        }
        break;
        case 4:
        if (xs.Profile.Permission.isLock(xs.Constant_Permission_LadderWar)) {
            // source line 151, bytecode pc 452
            (_param = "_locked");
        }
        break;
        case 5:
        break;
        case 6:
        if (xs.Profile.Permission.isLock(xs.Constant_Permission_LadderWar)) {
            // source line 159, bytecode pc 513
            (_param = "_locked");
        }
        break;
        case 7:
        break;
        default:
        break;
    }
    // source line 167, bytecode pc 574
    (menu = xs.Factorys.Sprite.create(name, area, [ _param ]));
    // source line 170, bytecode pc 579
    (hintNum = 0);
    // source line 172, bytecode pc 583
    switch (index) {
        case 0:
        // source line 174, bytecode pc 678
        (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.chaosHintInfoCount());
        break;
        case 1:
        // source line 177, bytecode pc 734
        (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.ladderHintInfoCount());
        break;
        case 2:
        // source line 180, bytecode pc 790
        (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.climbHintInfoCount());
        break;
        case 3:
        // source line 183, bytecode pc 846
        (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.hulaoBattleHintInfoCount());
        break;
        case 4:
        // source line 186, bytecode pc 902
        (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.localLadderWarCounts());
        break;
        case 5:
        // source line 189, bytecode pc 958
        (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.localDecisiveBattleInfoCount());
        break;
        case 6:
        // source line 192, bytecode pc 1014
        (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.ladderWarCounts());
        break;
        case 7:
        // source line 195, bytecode pc 1070
        (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.decisiveBattleInfoCount());
        break;
        default:
        break;
    }
    if ((hintNum > 0)) {
        // source line 200, bytecode pc 1119
        (hintIcon = xs.Tools.UI.generalHintIcon(hintNum));
        // source line 203, bytecode pc 1210
        xs.Utils.Node.attachNodes(menu, hintIcon, { desc: "c", offset: xs.Scene.ChallengeMenuLayer.cfg.multiMenuCfg[index].hintOffset });
    }
    if (!xs.Guide.GuideMgr.getIsOver()) {
        if ((index === 0)) {
            // source line 211, bytecode pc 1271
            menu.setGuideTag(4006);
        }
        if ((index === 1)) {
            // source line 214, bytecode pc 1300
            menu.setGuideTag(4005);
        }
        if ((index === 2)) {
            // source line 217, bytecode pc 1330
            menu.setGuideTag(4010);
        }
    }
    // source line 221, bytecode pc 1334
    return menu;
},
    MPMV_MenuTouchedInIndex: function(menu, index) {
    // source line 225, bytecode pc 3
    switch (index) {
        case 0:
        // source line 227, bytecode pc 60
        this.chaosWarCallback();
        break;
        case 1:
        // source line 230, bytecode pc 78
        this.cloudLadderCallback();
        break;
        case 2:
        // source line 233, bytecode pc 96
        this.passFortKillGeneralCallback();
        break;
        case 3:
        // source line 236, bytecode pc 114
        this.worldBossCallback();
        break;
        case 4:
        // source line 239, bytecode pc 132
        this.smallLadderWarCallback();
        break;
        case 5:
        // source line 243, bytecode pc 150
        this.smallDecisiveBattleCallback();
        break;
        case 6:
        // source line 246, bytecode pc 168
        this.ladderWarCallback();
        break;
        case 7:
        // source line 250, bytecode pc 186
        this.decisiveBattleCallback();
        break;
        default:
        // source line 253, bytecode pc 218
        xs.warn(("MPMV_MenuTouchedInIndex error index : " + index));
        break;
    }
},
    MPMV_MenuActionDone: function() {
    // source line 258, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this.m_coverLayer);
    // source line 259, bytecode pc 41
    (this.m_coverLayer = null);
},
    cloudLadderCallback: function() {
    // source line 265, bytecode pc 26
    xs.Tools.Scene.gotoLadder();
},
    passFortKillGeneralCallback: function() {
    // source line 272, bytecode pc 26
    xs.Tools.Scene.gotoClimp();
},
    smallLadderWarCallback: function() {
    // source line 277, bytecode pc 26
    xs.Tools.Scene.gotoSmallLadderWar();
},
    smallDecisiveBattleCallback: function() {
    // source line 281, bytecode pc 26
    xs.Tools.Scene.gotoSmallDecisiveBattle();
},
    ladderWarCallback: function() {
    // source line 285, bytecode pc 26
    xs.Tools.Scene.gotoLadderWar();
},
    worldBossCallback: function() {
    // source line 290, bytecode pc 26
    xs.Tools.Scene.gotoWorldBoss();
},
    chaosWarCallback: function() {
    // source line 295, bytecode pc 26
    xs.Tools.Scene.gotoChaos();
},
    decisiveBattleCallback: function() {
    // source line 300, bytecode pc 26
    xs.Tools.Scene.gotoDecisiveBattle();
}
}));
// source line 305, bytecode pc 284
(xs.Scene.ChallengeMenuLayer.create = function() {
    var layer;
    // source line 306, bytecode pc 23
    (layer = new xs.Scene.ChallengeMenuLayer());
    if ((layer && layer.init())) {
        // source line 308, bytecode pc 55
        return layer;
    }
    // source line 310, bytecode pc 80
    xs.assert(false, "xs.Scene.ChallengeMenuLayer.create error!");
    // source line 311, bytecode pc 82
    return null;
});
// source line 380, bytecode pc 2284
(xs.Scene.ChallengeMenuLayer.cfg = {
    multiMenuCfg: [
        {
            name: "tiaozhan_menu01",
            area: "TiaozhanScene01",
            eventRect: { x: 4, y: 4, width: 342, height: 230 },
            offset: { x: -5, y: -8 },
            hintOffset: cc.p(165, 110),
            percentage: { x: 0.24883720930232558, y: 0.7221350078492935 }
        },
        {
            name: "tiaozhan_menu02",
            area: "TiaozhanScene01",
            eventRect: { x: 4, y: 4, width: 342, height: 230 },
            offset: { x: -8, y: -26 },
            hintOffset: cc.p(165, 90),
            percentage: { x: 0.7441860465116279, y: 0.7221350078492935 }
        },
        {
            name: "tiaozhan_menu03",
            area: "TiaozhanScene01",
            eventRect: { x: 4, y: 4, width: 342, height: 230 },
            offset: { x: -51, y: 7 },
            hintOffset: cc.p(120, 120),
            percentage: { x: 0.24883720930232558, y: 0.28885400313971743 }
        },
        {
            name: "tiaozhan_menu05",
            area: "TiaozhanScene01",
            eventRect: { x: 4, y: 4, width: 342, height: 230 },
            offset: { x: -40, y: -20 },
            hintOffset: cc.p(130, 95),
            percentage: { x: 0.7441860465116279, y: 0.28885400313971743 }
        },
        {
            name: "tiaozhan_menu07",
            area: "TiaozhanScene01",
            eventRect: { x: 4, y: 4, width: 342, height: 230 },
            offset: { x: 16, y: -16 },
            hintOffset: cc.p(165, 82),
            percentage: { x: 0.26046511627906976, y: 0.7378335949764521 }
        },
        {
            name: "tiaozhan_menu08",
            area: "TiaozhanScene01",
            eventRect: { x: 4, y: 4, width: 342, height: 230 },
            offset: { x: -7, y: 56 },
            hintOffset: cc.p(170, 160),
            percentage: { x: 0.7441860465116279, y: 0.7315541601255887 }
        },
        {
            name: "tiaozhan_menu04",
            area: "TiaozhanScene01",
            eventRect: { x: 4, y: 4, width: 342, height: 230 },
            offset: { x: 6, y: -16 },
            hintOffset: cc.p(130, 88),
            percentage: { x: 0.2837209302325581, y: 0.28885400313971743 }
        },
        {
            name: "tiaozhan_menu06",
            area: "TiaozhanScene01",
            eventRect: { x: 4, y: 4, width: 342, height: 230 },
            offset: { x: -10, y: 40 },
            hintOffset: cc.p(180, 122),
            percentage: { x: 0.7325581395348837, y: 0.3202511773940345 }
        }
    ],
    multiMenuCfg_banshu: [
        {
            name: "tiaozhan_menu01",
            area: "TiaozhanScene01",
            eventRect: { x: 4, y: 4, width: 342, height: 230 },
            offset: { x: -5, y: -8 },
            hintOffset: cc.p(165, 110),
            percentage: { x: 0.24883720930232558, y: 0.7221350078492935 }
        },
        {
            name: "tiaozhan_menu02",
            area: "TiaozhanScene01",
            eventRect: { x: 4, y: 4, width: 342, height: 230 },
            offset: { x: -8, y: -26 },
            hintOffset: cc.p(165, 90),
            percentage: { x: 0.7441860465116279, y: 0.7221350078492935 }
        },
        {
            name: "tiaozhan_menu03",
            area: "TiaozhanScene01",
            eventRect: { x: 4, y: 4, width: 342, height: 230 },
            offset: { x: -51, y: 7 },
            hintOffset: cc.p(120, 120),
            percentage: { x: 0.24883720930232558, y: 0.28885400313971743 }
        },
        {
            name: "tiaozhan_menu05",
            area: "TiaozhanScene01",
            eventRect: { x: 4, y: 4, width: 342, height: 230 },
            offset: { x: -41, y: -20 },
            hintOffset: cc.p(130, 90),
            percentage: { x: 0.7441860465116279, y: 0.28885400313971743 }
        }
    ],
    m_mainMenu: { zOrder: 0, tag: -1, priority: -3 },
    m_multiPageMenu: { zOrder: 0, tag: -1, priority: -1 },
    m_coverLayer: { zOrder: 10, tag: -1, priority: -5 }
});
// source line 392, bytecode pc 2348
(xs.Scene.ChallengeMenuScene = cc.Scene.extend({
    ctor: function() {
    // source line 389, bytecode pc 12
    this._super();
    // source line 390, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function() {
    var layer;
    if (!this._super()) {
        // source line 394, bytecode pc 19
        return false;
    }
    // source line 397, bytecode pc 49
    (layer = xs.Scene.ChallengeMenuLayer.create());
    // source line 398, bytecode pc 66
    layer.setBaseTouchPriority(0);
    // source line 399, bytecode pc 99
    xs.Utils.Node.attachNodes(this, layer);
    // source line 401, bytecode pc 101
    return true;
}
}));
// source line 405, bytecode pc 2374
(xs.Scene.ChallengeMenuScene.create = function() {
    var sc;
    // source line 406, bytecode pc 23
    (sc = new xs.Scene.ChallengeMenuScene());
    if ((sc && sc.init())) {
        // source line 408, bytecode pc 55
        return sc;
    }
    // source line 410, bytecode pc 80
    xs.assert(false, "xs.Scene.ChallengeMenuScene.create error!");
    // source line 411, bytecode pc 82
    return null;
});
// source line 421, bytecode pc 2468
xs.Scene.Mgr.registerScene("ChallengeMenuScene", {
    "class": xs.Scene.ChallengeMenuScene,
    area: [ "TiaozhanScene01" ],
    type: xs.Constant_SceneType_Main
});
