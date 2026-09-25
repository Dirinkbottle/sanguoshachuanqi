// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/SubMenu/GeneralMenuScene.js:1
// source line 394, bytecode pc 323
(xs.Scene.GeneralMenuLayer = cc.Layer.extend({
    ctor: function() {
    // source line 14, bytecode pc 12
    this._super();
    // source line 15, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    var visibleSize, visibleOrigin;
    if (!this._super()) {
        // source line 19, bytecode pc 19
        return false;
    }
    // source line 23, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 24, bytecode pc 35
    (this.m_mainMenu = null);
    // source line 25, bytecode pc 43
    (this.m_multiPageMenu = null);
    // source line 26, bytecode pc 51
    (this.m_coverLayer = null);
    // source line 30, bytecode pc 76
    (visibleSize = xs.director.getVisibleSize());
    // source line 31, bytecode pc 101
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 34, bytecode pc 141
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_Team);
    // source line 37, bytecode pc 174
    (this.horn = xs.Views.HornView.create());
    // source line 38, bytecode pc 213
    this.horn.setAnchorPoint(cc.p(0, 0));
    // source line 39, bytecode pc 272
    xs.Utils.Node.attachNodes(this, this.horn, { desc: "lb", sc: true });
    // source line 41, bytecode pc 305
    (this.m_multiPageMenu = xs.Views.MultiPagesMenuView.create());
    // source line 42, bytecode pc 325
    this.m_multiPageMenu.setDelegate(this);
    // source line 43, bytecode pc 361
    xs.Utils.Node.attachNodes(this, this.m_multiPageMenu);
    // source line 46, bytecode pc 424
    (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, false, xs.Scene.GeneralMenuScene.cfg.m_mainMenu));
    // source line 48, bytecode pc 457
    (this.m_coverLayer = xs.Views.HungerLayer.create());
    // source line 49, bytecode pc 493
    xs.Utils.Node.attachNodes(this, this.m_coverLayer);
    // source line 51, bytecode pc 508
    this.setBaseTouchPriority(0);
    // source line 53, bytecode pc 510
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 57, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 58, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 59, bytecode pc 85
    this.m_multiPageMenu.setBaseTouchPriority((this.m_baseTouchPriority + xs.Scene.GeneralMenuScene.cfg.m_multiPageMenu.priority));
    // source line 61, bytecode pc 141
    this.m_mainMenu.setBaseTouchPriority((this.m_baseTouchPriority + xs.Scene.GeneralMenuScene.cfg.m_mainMenu.priority));
    if (this.m_coverLayer) {
        // source line 63, bytecode pc 208
        this.m_coverLayer.setTouchPriority((this.m_baseTouchPriority + xs.Scene.GeneralMenuScene.cfg.m_coverLayer.priority));
    }
    // source line 65, bytecode pc 264
    this.horn.setBaseTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.MainMenuScene.m_horn.priority));
},
    MPMV_MenusNum: function() {
    // source line 70, bytecode pc 30
    return xs.Scene.GeneralMenuScene.cfg.multiMenuCfg.length;
},
    MPMV_MenusNumEachPage: function() {
    // source line 73, bytecode pc 2
    return 6;
},
    MPMV_MenuPositionAtIndex: function(index) {
    var visibleSize, useSize, pos_x, pos_y, offset_x, offset_y, pos;
    // source line 76, bytecode pc 24
    (visibleSize = xs.director.getVisibleSize());
    // source line 77, bytecode pc 65
    (useSize = cc.size((visibleSize.width - 110), visibleSize.height));
    // source line 78, bytecode pc 117
    (pos_x = (useSize.width * xs.Scene.GeneralMenuScene.cfg.multiMenuCfg[index].percentage.x));
    // source line 79, bytecode pc 169
    (pos_y = (useSize.height * xs.Scene.GeneralMenuScene.cfg.multiMenuCfg[index].percentage.y));
    // source line 80, bytecode pc 216
    (offset_x = (pos_x - xs.Scene.GeneralMenuScene.cfg.multiMenuCfg[index].offset.x));
    // source line 81, bytecode pc 263
    (offset_y = (pos_y - xs.Scene.GeneralMenuScene.cfg.multiMenuCfg[index].offset.y));
    // source line 83, bytecode pc 345
    (pos = xs.Utils.Node.getPointByPosDesc(this, { desc: "lb", sc: true, offset: { x: pos_x, y: pos_y } }));
    // source line 84, bytecode pc 349
    return pos;
},
    MPMV_MenuOffsetAtIndex: function(index) {
    var offset_x, offset_y;
    // source line 87, bytecode pc 42
    (offset_x = xs.Scene.GeneralMenuScene.cfg.multiMenuCfg[index].offset.x);
    // source line 88, bytecode pc 85
    (offset_y = xs.Scene.GeneralMenuScene.cfg.multiMenuCfg[index].offset.y);
    // source line 89, bytecode pc 110
    return cc.p(offset_x, offset_y);
},
    MPMV_MenuEventRect: function(index) {
    // source line 92, bytecode pc 34
    return xs.Scene.GeneralMenuScene.cfg.multiMenuCfg[index].eventRect;
},
    MPMV_LastBtnPos: function() {
    var pos;
    // source line 95, bytecode pc 78
    (pos = xs.Utils.Node.getPointByPosDesc(this, { desc: "lc", sc: true, offset: { x: 20, y: 0 } }));
    // source line 96, bytecode pc 82
    return pos;
},
    MPMV_NextBtnPos: function() {
    var pos;
    // source line 99, bytecode pc 81
    (pos = xs.Utils.Node.getPointByPosDesc(this, { desc: "rc", sc: true, offset: { x: -130, y: 0 } }));
    // source line 100, bytecode pc 85
    return pos;
},
    MPMV_MenuForIndex: function(index) {
    var name, area, zOrder, _param, menu, _level, needLevel, hintNum, hintIcon;
    // source line 103, bytecode pc 37
    (name = xs.Scene.GeneralMenuScene.cfg.multiMenuCfg[index].name);
    // source line 104, bytecode pc 75
    (area = xs.Scene.GeneralMenuScene.cfg.multiMenuCfg[index].area);
    // source line 105, bytecode pc 113
    (zOrder = xs.Scene.GeneralMenuScene.cfg.multiMenuCfg[index].zOrder);
    // source line 107, bytecode pc 122
    (_param = "");
    // source line 108, bytecode pc 127
    (menu = null);
    if ((index === 4)) {
        // source line 110, bytecode pc 200
        (_level = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLevel());
        if ((_level < 40)) {
            // source line 112, bytecode pc 220
            (_param = "suodin");
            // source line 113, bytecode pc 265
            (xs.Scene.GeneralMenuScene.cfg.multiMenuCfg[index].percentage.x = 0.4046511627906977);
            // source line 114, bytecode pc 310
            (xs.Scene.GeneralMenuScene.cfg.multiMenuCfg[index].percentage.y = 0.2668759811616955);
            // source line 115, bytecode pc 361
            (menu = xs.Factorys.Sprite.create(name, area, [ _param ]));
        } else {
            // source line 117, bytecode pc 411
            (xs.Scene.GeneralMenuScene.cfg.multiMenuCfg[index].percentage.x = 0.4046511627906977);
            // source line 118, bytecode pc 456
            (xs.Scene.GeneralMenuScene.cfg.multiMenuCfg[index].percentage.y = 0.27629513343799056);
            // source line 119, bytecode pc 509
            (menu = xs.Factorys.Sprite.create(name, area, [ _param ], true));
        }
    } else {
        if ((index === 8)) {
            // source line 122, bytecode pc 587
            (_level = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLevel());
            if ((_level < 10)) {
                // source line 124, bytecode pc 607
                (_param = "suodin");
                // source line 125, bytecode pc 652
                (xs.Scene.GeneralMenuScene.cfg.multiMenuCfg[index].percentage.x = 0.7744186046511627);
                // source line 126, bytecode pc 697
                (xs.Scene.GeneralMenuScene.cfg.multiMenuCfg[index].percentage.y = 0.7315541601255887);
                // source line 127, bytecode pc 748
                (menu = xs.Factorys.Sprite.create(name, area, [ _param ]));
            } else {
                // source line 129, bytecode pc 798
                (xs.Scene.GeneralMenuScene.cfg.multiMenuCfg[index].percentage.x = 0.727906976744186);
                // source line 130, bytecode pc 843
                (xs.Scene.GeneralMenuScene.cfg.multiMenuCfg[index].percentage.y = 0.7974882260596546);
                // source line 131, bytecode pc 896
                (menu = xs.Factorys.Sprite.create(name, area, [ _param ], true));
            }
        } else {
            if ((index === 9)) {
                // source line 135, bytecode pc 974
                (_level = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLevel());
                // source line 136, bytecode pc 1015
                (needLevel = xs.Tools.CfgData.getGlobalConf("MeridianConf").user_level);
                if ((_level < needLevel)) {
                    // source line 138, bytecode pc 1036
                    (_param = "2");
                    // source line 139, bytecode pc 1081
                    (xs.Scene.GeneralMenuScene.cfg.multiMenuCfg[index].percentage.x = 0.15813953488372093);
                    // source line 140, bytecode pc 1126
                    (xs.Scene.GeneralMenuScene.cfg.multiMenuCfg[index].percentage.y = 0.2668759811616955);
                    // source line 141, bytecode pc 1177
                    (menu = xs.Factorys.Sprite.create(name, area, [ _param ]));
                } else {
                    // source line 143, bytecode pc 1227
                    (xs.Scene.GeneralMenuScene.cfg.multiMenuCfg[index].percentage.x = 0.15813953488372093);
                    // source line 144, bytecode pc 1272
                    (xs.Scene.GeneralMenuScene.cfg.multiMenuCfg[index].percentage.y = 0.27629513343799056);
                    // source line 145, bytecode pc 1325
                    (menu = xs.Factorys.Sprite.create(name, area, [ _param ], true));
                }
            } else {
                if ((index === 10)) {
                    // source line 150, bytecode pc 1403
                    (_level = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLevel());
                    // source line 151, bytecode pc 1439
                    (needLevel = xs.Tools.CfgData.getGlobalConf("SkillRefineUnlockLevel"));
                    if ((_level < needLevel)) {
                        // source line 153, bytecode pc 1460
                        (_param = "2");
                        // source line 154, bytecode pc 1505
                        (xs.Scene.GeneralMenuScene.cfg.multiMenuCfg[index].percentage.x = 0.43488372093023253);
                        // source line 155, bytecode pc 1550
                        (xs.Scene.GeneralMenuScene.cfg.multiMenuCfg[index].percentage.y = 0.2668759811616955);
                        // source line 156, bytecode pc 1601
                        (menu = xs.Factorys.Sprite.create(name, area, [ _param ]));
                    } else {
                        // source line 158, bytecode pc 1651
                        (xs.Scene.GeneralMenuScene.cfg.multiMenuCfg[index].percentage.x = 0.43488372093023253);
                        // source line 159, bytecode pc 1696
                        (xs.Scene.GeneralMenuScene.cfg.multiMenuCfg[index].percentage.y = 0.27629513343799056);
                        // source line 160, bytecode pc 1749
                        (menu = xs.Factorys.Sprite.create(name, area, [ _param ], true));
                    }
                } else {
                    if ((index === 11)) {
                        // source line 165, bytecode pc 1827
                        (_level = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLevel());
                        // source line 166, bytecode pc 1868
                        (needLevel = xs.Tools.CfgData.getGlobalConf("PulseConf").unlock_level);
                        if ((_level < needLevel)) {
                            // source line 168, bytecode pc 1889
                            (_param = "2");
                            // source line 169, bytecode pc 1934
                            (xs.Scene.GeneralMenuScene.cfg.multiMenuCfg[index].percentage.x = 0.7744186046511627);
                            // source line 170, bytecode pc 1979
                            (xs.Scene.GeneralMenuScene.cfg.multiMenuCfg[index].percentage.y = 0.2668759811616955);
                            // source line 171, bytecode pc 2030
                            (menu = xs.Factorys.Sprite.create(name, area, [ _param ]));
                        } else {
                            // source line 173, bytecode pc 2080
                            (xs.Scene.GeneralMenuScene.cfg.multiMenuCfg[index].percentage.x = 0.727906976744186);
                            // source line 174, bytecode pc 2125
                            (xs.Scene.GeneralMenuScene.cfg.multiMenuCfg[index].percentage.y = 0.27629513343799056);
                            // source line 175, bytecode pc 2178
                            (menu = xs.Factorys.Sprite.create(name, area, [ _param ], true));
                        }
                    } else {
                        // source line 180, bytecode pc 2225
                        (menu = xs.Factorys.Sprite.create(name, area, null, true));
                    }
                }
            }
        }
    }
    // source line 183, bytecode pc 2244
    menu.setZOrder(zOrder);
    // source line 186, bytecode pc 2249
    (hintNum = 0);
    // source line 188, bytecode pc 2253
    switch (index) {
        case 7:
        /* TODO_BYTECODE pc=2253 opcode=tableswitch reason=tableswitch_target_invalid */
        break;
        case 0:
        // source line 190, bytecode pc 2352
        (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.campHintInfoCount());
        break;
        case 1:
        // source line 193, bytecode pc 2408
        (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.generalHintInfoCount());
        break;
        case 2:
        // source line 196, bytecode pc 2464
        (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.equipmentHintInfoCount());
        break;
        case 3:
        break;
        case 4:
        break;
        case 5:
        // source line 203, bytecode pc 2530
        (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.bagHintInfoCount());
        break;
        case 6:
        break;
        case 8:
        // source line 208, bytecode pc 2591
        (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.GoddessHintCount());
        break;
        default:
        if ((hintNum > 0)) {
            // source line 213, bytecode pc 2640
            (hintIcon = xs.Tools.UI.generalHintIcon(hintNum));
            // source line 215, bytecode pc 2731
            xs.Utils.Node.attachNodes(menu, hintIcon, { desc: "c", offset: xs.Scene.GeneralMenuScene.cfg.multiMenuCfg[index].hintOffset });
        }
        if (!xs.Guide.GuideMgr.getIsOver()) {
            if ((index === 0)) {
                // source line 221, bytecode pc 2792
                menu.setGuideTag(3004);
            }
            if ((index === 1)) {
                // source line 224, bytecode pc 2821
                menu.setGuideTag(4007);
            }
            if ((index === 2)) {
                // source line 227, bytecode pc 2851
                menu.setGuideTag(4001);
            }
            if ((index === 5)) {
                // source line 230, bytecode pc 2881
                menu.setGuideTag(3007);
            }
        }
        // source line 234, bytecode pc 2885
        return menu;
    }
},
    MPMV_MenuTouchedInIndex: function(menu, index) {
    // source line 238, bytecode pc 3
    switch (index) {
        case 0:
        // source line 240, bytecode pc 76
        this.teamCallback();
        break;
        case 1:
        // source line 243, bytecode pc 94
        this.generalCallback();
        break;
        case 2:
        // source line 246, bytecode pc 112
        this.equipmentCallback();
        break;
        case 3:
        // source line 249, bytecode pc 130
        this.skillCallback();
        break;
        case 4:
        // source line 252, bytecode pc 148
        this.gemsCallback();
        break;
        case 5:
        // source line 255, bytecode pc 166
        this.bagCallback();
        break;
        case 6:
        // source line 258, bytecode pc 184
        this.formulasCallback();
        break;
        case 7:
        // source line 261, bytecode pc 202
        this.miracleWeaponCallback();
        break;
        case 8:
        // source line 264, bytecode pc 220
        this.goddessCallback();
        break;
        case 9:
        // source line 267, bytecode pc 238
        this.goJingMaiCallback();
        break;
        case 10:
        // source line 270, bytecode pc 256
        this.goSkillRefiningCallback();
        break;
        case 11:
        // source line 273, bytecode pc 274
        this.goPracticeMeridiansCallback();
        break;
        default:
        // source line 276, bytecode pc 306
        xs.warn(("MPMV_MenuTouchedInIndex error index : " + index));
        break;
    }
},
    MPMV_MenuActionDone: function() {
    // source line 281, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this.m_coverLayer);
    // source line 282, bytecode pc 41
    (this.m_coverLayer = null);
},
    teamCallback: function() {
    // source line 286, bytecode pc 22
    xs.log("teamCallback");
    // source line 288, bytecode pc 55
    xs.Scene.Mgr.changeSceneByName("TeamBuildScene");
},
    generalCallback: function() {
    // source line 291, bytecode pc 22
    xs.log("generalCallback");
    // source line 292, bytecode pc 55
    xs.Scene.Mgr.changeSceneByName("AgaScene");
},
    equipmentCallback: function() {
    // source line 297, bytecode pc 22
    xs.log("equipmentCallback");
    // source line 298, bytecode pc 55
    xs.Scene.Mgr.changeSceneByName("EquipmentScene");
},
    skillCallback: function() {
    // source line 301, bytecode pc 22
    xs.log("skillCallback");
    // source line 302, bytecode pc 55
    xs.Scene.Mgr.changeSceneByName("SkillScene");
},
    mTipsCallback: function() {
    // source line 306, bytecode pc 22
    xs.log("mTipsCallback");
},
    gemsCallback: function() {
    var _level;
    if (xs.isShowGem) {
        // source line 313, bytecode pc 76
        (_level = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLevel());
        if ((_level < 40)) {
            // source line 315, bytecode pc 147
            xs.Views.Mgr.showToast(xs.Tools.String.createString("gem_baoshi_suoding"));
        } else {
            // source line 317, bytecode pc 185
            xs.Scene.Mgr.changeSceneByName("GemsScene");
        }
    } else {
        // source line 320, bytecode pc 250
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_51"));
    }
},
    formulasCallback: function() {
    // source line 327, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("CombatScene");
},
    formatCallback: function() {
},
    worshipCallback: function() {
    // source line 334, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("WorshipScene");
},
    bagCallback: function() {
    // source line 338, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("BagScene");
},
    miracleWeaponCallback: function() {
    var List, data;
    if (xs.isShowMagic) {
        // source line 342, bytecode pc 65
        (List = xs.Profile.GameData.Mgr.getInstance().MagicalEqus.getAll());
        if ((List.length === 0)) {
            // source line 344, bytecode pc 140
            xs.Views.Mgr.showToast(xs.Tools.String.createString("MiracleWeapon_null"));
        } else {
            // source line 348, bytecode pc 169
            (data = { list: List, index: 0 });
            // source line 351, bytecode pc 206
            xs.Scene.Mgr.changeSceneByName("SelectMiracleWeaponsScene", data);
        }
    } else {
        // source line 354, bytecode pc 271
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_51"));
    }
},
    goddessCallback: function() {
    var _level;
    // source line 360, bytecode pc 61
    (_level = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLevel());
    if ((_level < 10)) {
        // source line 362, bytecode pc 132
        xs.Views.Mgr.showToast(xs.Tools.String.createString("goddess_suoding"));
    } else {
        // source line 365, bytecode pc 170
        xs.Scene.Mgr.changeSceneByName("GoddessMainScene");
    }
},
    goJingMaiCallback: function() {
    var needLevel, _level, _data;
    // source line 370, bytecode pc 40
    (needLevel = xs.Tools.CfgData.getGlobalConf("MeridianConf").user_level);
    // source line 371, bytecode pc 102
    (_level = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLevel());
    if ((_level < needLevel)) {
        // source line 373, bytecode pc 198
        xs.Views.Mgr.showToast(xs.Tools.String.createStringWithArgsArray("auto_name_52", [ needLevel.toString() ]));
    } else {
        // source line 375, bytecode pc 254
        (_data = xs.Profile.GameData.Mgr.getInstance().MeridianTops.getAllMeridianTopModel());
        if (xs.Utils.isEmpty(_data)) {
            // source line 377, bytecode pc 344
            xs.Views.Mgr.showToast(xs.Tools.String.createString("MeridiansMain_21"));
            // source line 378, bytecode pc 346
            return void 0;
        }
        // source line 380, bytecode pc 383
        xs.Scene.Mgr.changeSceneByName("MeridiansMainScene", _data);
    }
},
    goPracticeMeridiansCallback: function() {
    var needLevel, _level;
    // source line 385, bytecode pc 40
    (needLevel = xs.Tools.CfgData.getGlobalConf("PulseConf").unlock_level);
    // source line 386, bytecode pc 102
    (_level = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLevel());
    if ((_level < needLevel)) {
        // source line 388, bytecode pc 198
        xs.Views.Mgr.showToast(xs.Tools.String.createStringWithArgsArray("auto_name_52", [ needLevel.toString() ]));
    } else {
        // source line 390, bytecode pc 236
        xs.Scene.Mgr.changeSceneByName("PracticeMeridiansMainScene");
    }
},
    goSkillRefiningCallback: function() {
    var needLevel, _level;
    // source line 395, bytecode pc 35
    (needLevel = xs.Tools.CfgData.getGlobalConf("SkillRefineUnlockLevel"));
    // source line 396, bytecode pc 97
    (_level = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLevel());
    if ((_level < needLevel)) {
        // source line 398, bytecode pc 193
        xs.Views.Mgr.showToast(xs.Tools.String.createStringWithArgsArray("RefiningSkill_needlevel", [ needLevel.toString() ]));
    } else {
        // source line 400, bytecode pc 237
        xs.Scene.Mgr.changeSceneByName("SkillRefiningScene", "");
    }
}
}));
// source line 406, bytecode pc 349
(xs.Scene.GeneralMenuLayer.create = function() {
    var menuLayer;
    // source line 407, bytecode pc 23
    (menuLayer = new xs.Scene.GeneralMenuLayer());
    if ((menuLayer && menuLayer.init())) {
        // source line 409, bytecode pc 68
        menuLayer.setBaseTouchPriority(0);
        // source line 410, bytecode pc 72
        return menuLayer;
    }
    // source line 412, bytecode pc 74
    return null;
});
// source line 431, bytecode pc 423
(xs.Scene.GeneralMenuScene = cc.Scene.extend({
    ctor: function() {
    // source line 418, bytecode pc 12
    this._super();
    // source line 419, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function() {
    var layer;
    if (!this._super()) {
        // source line 423, bytecode pc 19
        return false;
    }
    // source line 426, bytecode pc 49
    (layer = xs.Scene.GeneralMenuLayer.create());
    // source line 427, bytecode pc 66
    this.addChild(layer);
    // source line 429, bytecode pc 68
    return true;
},
    onEnter: function() {
    // source line 432, bytecode pc 12
    this._super();
}
}));
// source line 436, bytecode pc 449
(xs.Scene.GeneralMenuScene.create = function() {
    var scene;
    // source line 437, bytecode pc 23
    (scene = new xs.Scene.GeneralMenuScene());
    if ((scene && scene.init())) {
        // source line 439, bytecode pc 55
        return scene;
    }
    // source line 441, bytecode pc 57
    return null;
});
// source line 544, bytecode pc 2512
(xs.Scene.GeneralMenuScene.cfg = {
    multiMenuCfg: [
        {
            name: "multiMenu_01",
            area: "YangchengScene01",
            eventRect: { x: 4, y: 4, width: 342, height: 230 },
            offset: { x: 2, y: -0 },
            percentage: { x: 0.23255813953488372, y: 0.7268445839874411 },
            hintOffset: cc.p(170, 80),
            zOrder: 0
        },
        {
            name: "multiMenu_02",
            area: "YangchengScene01",
            eventRect: { x: 4, y: 4, width: 192, height: 230 },
            offset: { x: 8, y: -0 },
            percentage: { x: 0.5837209302325581, y: 0.7268445839874411 },
            hintOffset: cc.p(110, 65),
            zOrder: 1
        },
        {
            name: "multiMenu_03",
            area: "YangchengScene01",
            eventRect: { x: 4, y: 4, width: 192, height: 230 },
            offset: { x: -16, y: 0 },
            percentage: { x: 0.8441860465116279, y: 0.7268445839874411 },
            hintOffset: cc.p(80, 110),
            zOrder: 0
        },
        {
            name: "multiMenu_04",
            area: "YangchengScene01",
            eventRect: { x: 4, y: 4, width: 192, height: 230 },
            offset: { x: -10, y: 0 },
            percentage: { x: 0.14651162790697675, y: 0.27629513343799056 },
            hintOffset: cc.p(100, 135),
            zOrder: 0
        },
        {
            name: "multiMenu_05",
            area: "YangchengScene01",
            eventRect: { x: 4, y: 4, width: 192, height: 230 },
            offset: { x: -20, y: -0 },
            percentage: { x: 0.4046511627906977, y: 0.27629513343799056 },
            hintOffset: cc.p(95, 110),
            zOrder: 0
        },
        {
            name: "multiMenu_06",
            area: "YangchengScene01",
            eventRect: { x: 4, y: 4, width: 342, height: 230 },
            offset: { x: -20, y: 0 },
            percentage: { x: 0.7558139534883721, y: 0.27629513343799056 },
            hintOffset: cc.p(170, 115),
            zOrder: 0
        },
        {
            name: "multiMenu_07",
            area: "YangchengScene01",
            eventRect: { x: 4, y: 4, width: 192, height: 230 },
            offset: { x: -10, y: 0 },
            percentage: { x: 0.18604651162790697, y: 0.7268445839874411 },
            hintOffset: cc.p(100, 135),
            zOrder: 0
        },
        {
            name: "multiMenu_08",
            area: "YangchengScene01",
            eventRect: { x: 4, y: 4, width: 192, height: 230 },
            offset: { x: -20, y: 0 },
            percentage: { x: 0.43488372093023253, y: 0.7598116169544741 },
            hintOffset: cc.p(100, 115),
            zOrder: 0
        },
        {
            name: "multiMenu_09",
            area: "YangchengScene01",
            eventRect: { x: 4, y: 4, width: 350, height: 270 },
            offset: { x: 10, y: -10 },
            percentage: { x: 0.7744186046511627, y: 0.7974882260596546 },
            hintOffset: cc.p(162, 114),
            zOrder: 0
        },
        {
            name: "multiMenu_10",
            area: "YangchengScene01",
            eventRect: { x: 4, y: 4, width: 210, height: 238 },
            offset: { x: -10, y: 0 },
            percentage: { x: 0.14651162790697675, y: 0.27629513343799056 },
            hintOffset: cc.p(100, 135),
            zOrder: 0
        },
        {
            name: "multiMenu_11",
            area: "YangchengScene01",
            eventRect: { x: 4, y: 4, width: 192, height: 230 },
            offset: { x: -10, y: -0 },
            percentage: { x: 0.43488372093023253, y: 0.27629513343799056 },
            hintOffset: cc.p(95, 110),
            zOrder: 0
        },
        {
            name: "multiMenu_12",
            area: "YangchengScene01",
            eventRect: { x: 4, y: 4, width: 342, height: 320 },
            offset: { x: -10, y: 0 },
            percentage: { x: 0.7744186046511627, y: 0.27629513343799056 },
            hintOffset: cc.p(170, 115),
            zOrder: 0
        }
    ],
    m_mainMenu: { zOrder: 0, tag: -1, priority: -2 },
    m_multiPageMenu: { zOrder: 0, tag: -1, priority: -1 },
    m_coverLayer: { zOrder: 10, tag: -1, priority: -5 }
});
// source line 553, bytecode pc 2606
xs.Scene.Mgr.registerScene("GeneralMenuScene", {
    "class": xs.Scene.GeneralMenuScene,
    type: xs.Constant_SceneType_Main,
    area: [ "YangchengScene01" ]
});
