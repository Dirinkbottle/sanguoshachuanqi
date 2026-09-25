// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/SubMenu/MenuMenuScene.js:1
// source line 178, bytecode pc 243
(xs.Scene.MenuMenuLayer = cc.Layer.extend({
    ctor: function() {
    // source line 16, bytecode pc 12
    this._super();
    // source line 17, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    var visibleSize, visibleOrigin;
    if (!this._super()) {
        // source line 21, bytecode pc 19
        return false;
    }
    // source line 25, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 26, bytecode pc 35
    (this.m_mainMenu = null);
    // source line 27, bytecode pc 43
    (this.m_multiPageMenu = null);
    // source line 28, bytecode pc 51
    (this.m_coverLayer = null);
    // source line 32, bytecode pc 76
    (visibleSize = xs.director.getVisibleSize());
    // source line 33, bytecode pc 101
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 36, bytecode pc 141
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_Cmn);
    // source line 40, bytecode pc 174
    (this.horn = xs.Views.HornView.create());
    // source line 41, bytecode pc 213
    this.horn.setAnchorPoint(cc.p(0, 0));
    // source line 42, bytecode pc 272
    xs.Utils.Node.attachNodes(this, this.horn, { desc: "lb", sc: true });
    // source line 44, bytecode pc 305
    (this.m_multiPageMenu = xs.Views.MultiPagesMenuView.create());
    // source line 45, bytecode pc 325
    this.m_multiPageMenu.setDelegate(this);
    // source line 46, bytecode pc 361
    xs.Utils.Node.attachNodes(this, this.m_multiPageMenu);
    // source line 49, bytecode pc 424
    (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, false, xs.Scene.MenuMenuScene.cfg.m_mainMenu));
    // source line 51, bytecode pc 457
    (this.m_coverLayer = xs.Views.HungerLayer.create());
    // source line 52, bytecode pc 493
    xs.Utils.Node.attachNodes(this, this.m_coverLayer);
    // source line 54, bytecode pc 508
    this.setBaseTouchPriority(0);
    // source line 56, bytecode pc 510
    return true;
},
    onEnter: function() {
    // source line 59, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 63, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 67, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 68, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 69, bytecode pc 85
    this.m_mainMenu.setBaseTouchPriority((this.m_baseTouchPriority + xs.Scene.MenuMenuScene.cfg.m_mainMenu.priority));
    // source line 70, bytecode pc 141
    this.m_multiPageMenu.setBaseTouchPriority((this.m_baseTouchPriority + xs.Scene.MenuMenuScene.cfg.m_multiPageMenu.priority));
    if (this.m_coverLayer) {
        // source line 72, bytecode pc 208
        this.m_coverLayer.setTouchPriority((this.m_baseTouchPriority + xs.Scene.MenuMenuScene.cfg.m_coverLayer.priority));
    }
    // source line 74, bytecode pc 264
    this.horn.setBaseTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.MainMenuScene.m_horn.priority));
},
    MPMV_MenusNum: function() {
    // source line 79, bytecode pc 30
    return xs.Scene.MenuMenuScene.cfg.multiMenuCfg.length;
},
    MPMV_MenusNumEachPage: function() {
    // source line 82, bytecode pc 2
    return 5;
},
    MPMV_MenuPositionAtIndex: function(index) {
    var visibleSize, useSize, pos_x, pos_y, offset_x, offset_y, pos;
    // source line 85, bytecode pc 24
    (visibleSize = xs.director.getVisibleSize());
    // source line 86, bytecode pc 65
    (useSize = cc.size((visibleSize.width - 110), visibleSize.height));
    // source line 87, bytecode pc 117
    (pos_x = (useSize.width * xs.Scene.MenuMenuScene.cfg.multiMenuCfg[index].percentage.x));
    // source line 88, bytecode pc 169
    (pos_y = (useSize.height * xs.Scene.MenuMenuScene.cfg.multiMenuCfg[index].percentage.y));
    // source line 89, bytecode pc 216
    (offset_x = (pos_x - xs.Scene.MenuMenuScene.cfg.multiMenuCfg[index].offset.x));
    // source line 90, bytecode pc 263
    (offset_y = (pos_y - xs.Scene.MenuMenuScene.cfg.multiMenuCfg[index].offset.y));
    // source line 92, bytecode pc 345
    (pos = xs.Utils.Node.getPointByPosDesc(this, { desc: "lb", sc: true, offset: { x: offset_x, y: offset_y } }));
    // source line 93, bytecode pc 349
    return pos;
},
    MPMV_MenuOffsetAtIndex: function(index) {
    var offset_x, offset_y;
    // source line 96, bytecode pc 42
    (offset_x = xs.Scene.MenuMenuScene.cfg.multiMenuCfg[index].offset.x);
    // source line 97, bytecode pc 85
    (offset_y = xs.Scene.MenuMenuScene.cfg.multiMenuCfg[index].offset.y);
    // source line 98, bytecode pc 110
    return cc.p(offset_x, offset_y);
},
    MPMV_MenuEventRect: function(index) {
    // source line 101, bytecode pc 34
    return xs.Scene.MenuMenuScene.cfg.multiMenuCfg[index].eventRect;
},
    MPMV_LastBtnPos: function() {
    var pos;
    // source line 104, bytecode pc 78
    (pos = xs.Utils.Node.getPointByPosDesc(this, { desc: "lc", sc: true, offset: { x: 20, y: 0 } }));
    // source line 105, bytecode pc 82
    return pos;
},
    MPMV_NextBtnPos: function() {
    var pos;
    // source line 108, bytecode pc 81
    (pos = xs.Utils.Node.getPointByPosDesc(this, { desc: "rc", sc: true, offset: { x: -130, y: 0 } }));
    // source line 109, bytecode pc 85
    return pos;
},
    MPMV_MenuForIndex: function(index) {
    var name, area, menu, hintNum, hintIcon;
    // source line 112, bytecode pc 37
    (name = xs.Scene.MenuMenuScene.cfg.multiMenuCfg[index].name);
    // source line 113, bytecode pc 75
    (area = xs.Scene.MenuMenuScene.cfg.multiMenuCfg[index].area);
    // source line 114, bytecode pc 113
    (menu = xs.Factorys.Sprite.create(name, area));
    // source line 117, bytecode pc 118
    (hintNum = 0);
    // source line 119, bytecode pc 122
    switch (index) {
        case 4:
        // source line 121, bytecode pc 189
        (hintNum = xs.Profile.GameData.Mgr.getInstance().Hint.mailHintInfoCount());
        break;
        default:
        break;
    }
    if ((hintNum > 0)) {
        // source line 126, bytecode pc 238
        (hintIcon = xs.Tools.UI.generalHintIcon(hintNum));
        // source line 128, bytecode pc 329
        xs.Utils.Node.attachNodes(menu, hintIcon, { desc: "c", offset: xs.Scene.MenuMenuScene.cfg.multiMenuCfg[index].hintOffset });
    }
    // source line 131, bytecode pc 333
    return menu;
},
    MPMV_MenuTouchedInIndex: function(menu, index) {
    // source line 135, bytecode pc 3
    switch (index) {
        case 0:
        // source line 137, bytecode pc 48
        this.handbookCallback();
        break;
        case 1:
        // source line 140, bytecode pc 66
        this.socialCallback();
        break;
        case 2:
        // source line 143, bytecode pc 84
        this.bbsCallback();
        break;
        case 3:
        // source line 146, bytecode pc 102
        this.settingCallback();
        break;
        case 4:
        // source line 149, bytecode pc 120
        this.mailSysCallback();
        break;
        default:
        // source line 152, bytecode pc 152
        xs.warn(("MPMV_MenuTouchedInIndex error index : " + index));
        break;
    }
},
    MPMV_MenuActionDone: function() {
    // source line 157, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this.m_coverLayer);
    // source line 158, bytecode pc 41
    (this.m_coverLayer = null);
},
    mailSysCallback: function() {
    // source line 163, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("MailSystemScene");
},
    socialCallback: function() {
    // source line 166, bytecode pc 22
    xs.log("socialCallback");
    // source line 167, bytecode pc 55
    xs.Scene.Mgr.loadStatusAndClear("friendSearchKey");
    // source line 168, bytecode pc 88
    xs.Scene.Mgr.loadStatusAndClear("friendTableViewOffsetY");
    // source line 169, bytecode pc 121
    xs.Scene.Mgr.changeSceneByName("SocialScene");
},
    handbookCallback: function() {
    // source line 172, bytecode pc 22
    xs.log("handbookCallback");
    // source line 173, bytecode pc 55
    xs.Scene.Mgr.changeSceneByName("AchievementScene");
},
    settingCallback: function() {
    // source line 176, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("SettingScene");
},
    bbsCallback: function() {
    // source line 179, bytecode pc 32
    xs.Views.Mgr.showDialogByName("Announcement");
}
}));
// source line 183, bytecode pc 269
(xs.Scene.MenuMenuLayer.create = function() {
    var menuLayer;
    // source line 184, bytecode pc 23
    (menuLayer = new xs.Scene.MenuMenuLayer());
    if ((menuLayer && menuLayer.init())) {
        // source line 186, bytecode pc 68
        menuLayer.setBaseTouchPriority(0);
        // source line 187, bytecode pc 72
        return menuLayer;
    }
    // source line 189, bytecode pc 74
    return null;
});
// source line 198, bytecode pc 333
(xs.Scene.MenuMenuScene = cc.Scene.extend({
    ctor: function() {
    // source line 195, bytecode pc 12
    this._super();
    // source line 196, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    onEnter: function() {
    var layer;
    // source line 199, bytecode pc 12
    this._super();
    // source line 200, bytecode pc 42
    (layer = xs.Scene.MenuMenuLayer.create());
    // source line 201, bytecode pc 59
    this.addChild(layer);
}
}));
// source line 205, bytecode pc 359
(xs.Scene.MenuMenuScene.create = function() {
    var scene;
    // source line 206, bytecode pc 23
    (scene = new xs.Scene.MenuMenuScene());
    if ((scene && scene.init())) {
        // source line 208, bytecode pc 55
        return scene;
    }
    // source line 210, bytecode pc 57
    return null;
});
// source line 245, bytecode pc 1154
(xs.Scene.MenuMenuScene.cfg = {
    multiMenuCfg: [
        {
            name: "caidan_menu01",
            area: "CaidanScene01",
            eventRect: { x: 4, y: 4, width: 342, height: 230 },
            offset: { x: 0, y: -13 },
            percentage: { x: 0.23255813953488372, y: 0.7315541601255887 }
        },
        {
            name: "caidan_menu02",
            area: "CaidanScene01",
            eventRect: { x: 4, y: 4, width: 344, height: 230 },
            offset: { x: 2, y: -23 },
            percentage: { x: 0.7616279069767442, y: 0.7315541601255887 }
        },
        {
            name: "caidan_menu03",
            area: "CaidanScene01",
            eventRect: { x: 4, y: 4, width: 240, height: 230 },
            offset: { x: -3, y: -15 },
            percentage: { x: 0.17209302325581396, y: 0.282574568288854 }
        },
        {
            name: "caidan_menu04",
            area: "CaidanScene01",
            eventRect: { x: 4, y: 4, width: 240, height: 230 },
            offset: { x: -6, y: -12 },
            percentage: { x: 0.49767441860465117, y: 0.282574568288854 }
        },
        {
            name: "caidan_menu05",
            area: "CaidanScene01",
            eventRect: { x: 4, y: 4, width: 240, height: 230 },
            offset: { x: -0, y: -16 },
            hintOffset: cc.p(120, 100),
            percentage: { x: 0.8209302325581396, y: 0.282574568288854 }
        }
    ],
    m_mainMenu: { zOrder: 0, tag: -1, priority: -3 },
    m_multiPageMenu: { zOrder: 0, tag: -1, priority: -1 },
    m_coverLayer: { zOrder: 10, tag: -1, priority: -5 }
});
// source line 255, bytecode pc 1248
xs.Scene.Mgr.registerScene("MenuMenuScene", { "class": xs.Scene.MenuMenuScene, area: [ "CaidanScene01" ], type: xs.Constant_SceneType_Main });
