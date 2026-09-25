// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Debug/DebugScene.js:1
// source line 99, bytecode pc 78
(xs.Views.DebugItemCell = xs.Views.ItemCell.extend({
    init: function() {
    if (!this._super()) {
        // source line 14, bytecode pc 19
        return false;
    }
    // source line 17, bytecode pc 27
    (this.m_itemData = null);
    // source line 18, bytecode pc 36
    (this.m_spGuideTag = -1);
    // source line 20, bytecode pc 56
    this.m_fastBtn.setVisible(false);
    // source line 21, bytecode pc 80
    this.m_centerBtn.setString("onTouch");
    // source line 22, bytecode pc 118
    this.m_centerBtn.setOnClickCallBack(this.onTouchCallBack.bind(this));
    // source line 24, bytecode pc 126
    (this.num = 0);
    // source line 25, bytecode pc 134
    (this.par = null);
    // source line 27, bytecode pc 136
    return true;
},
    update: function(par, num) {
    // source line 31, bytecode pc 9
    (this.par = par);
    // source line 32, bytecode pc 19
    (this.num = num);
    if ((this.par.cfg[this.num].key == "ChannelID")) {
        // source line 35, bytecode pc 104
        this.m_descLab.setString(("ChannelID:" + xs.Tools.Jsb.getChannelId()));
        // source line 36, bytecode pc 106
        return void 0;
    }
    if ((this.par.cfg[this.num].key == "Cocos2d_Debug")) {
        // source line 39, bytecode pc 191
        this.m_descLab.setString(("Cocos2d_Debug:" + xs.Tools.Jsb.getCocos2dDebugLevel()));
        // source line 40, bytecode pc 193
        return void 0;
    }
    if ((this.par.cfg[this.num].key == "ApkInfo")) {
        // source line 44, bytecode pc 317
        this.m_descLab.setString((((("VersionName:" + xs.Tools.Jsb.getVersionName()) + " --- ") + "VersionCode:") + xs.Tools.Jsb.getVersionCode()));
        // source line 46, bytecode pc 319
        return void 0;
    }
    if ((this.par.cfg[this.num].key == "ServerApp")) {
        // source line 50, bytecode pc 415
        this.m_descLab.setString((xs.Tools.String.createString("auto_name_63") + xs.sinfo_game_ver));
        // source line 52, bytecode pc 417
        return void 0;
    }
    if ((this.par.cfg[this.num].key == "ServerCfg")) {
        // source line 57, bytecode pc 513
        this.m_descLab.setString((xs.Tools.String.createString("auto_name_64") + xs.sinfo_cfg_ver));
        // source line 59, bytecode pc 515
        return void 0;
    }
    if ((this.par.cfg[this.num].key == "ServerOptCfg")) {
        // source line 64, bytecode pc 611
        this.m_descLab.setString((xs.Tools.String.createString("auto_name_65") + xs.sinfo_optcfg_ver));
        // source line 66, bytecode pc 613
        return void 0;
    }
    if ((this.par.cfg[this.num].key == "ClientCfgVer")) {
        // source line 70, bytecode pc 698
        this.m_descLab.setString(("ClientCfgVer:" + xs.Tools.Jsb.getCfgVersion()));
        // source line 71, bytecode pc 700
        return void 0;
    }
    if ((this.par.cfg[this.num].key == "TKAppKey")) {
        // source line 75, bytecode pc 785
        this.m_descLab.setString(("TKAppKey:" + xs.Tools.Jsb.getTKAppKey()));
        // source line 76, bytecode pc 787
        return void 0;
    }
    if ((this.par.cfg[this.num].key == "app_macroStr")) {
        // source line 79, bytecode pc 845
        this.m_descLab.setString("hong ding yi: 点击右侧按钮");
        // source line 80, bytecode pc 847
        return void 0;
    }
    if ((this.par.cfg[this.num].key == "EasySdkInfo")) {
        // source line 84, bytecode pc 905
        this.m_descLab.setString("EasySdk info");
        // source line 87, bytecode pc 907
        return void 0;
    }
    // source line 95, bytecode pc 1027
    this.m_descLab.setString((((((("xs." + this.par.cfg[this.num].key) + ":") + xs[this.par.cfg[this.num].key]) + "(") + this.par.cfg[this.num].desc) + ")"));
},
    onTouchCallBack: function() {
    if ((this.par.cfg[this.num].key == "app_macroStr")) {
        // source line 101, bytecode pc 128
        xs.Views.Mgr.showDialogByName("InstructionDialog", { string: xs.JsbConnecter.getInstance().invoke("Cfg", "getMacroStr", "") });
        // source line 102, bytecode pc 130
        return void 0;
    }
    if ((this.par.cfg[this.num].key == "EasySdkInfo")) {
        // source line 108, bytecode pc 308
        xs.Views.Mgr.showDialogByName("InstructionDialog", {
    string: ((("  getBuildDesc: " + xs.Tools.Jsb.EasySdk.callFunctionIfSupported("EasySdk", "getBuildDesc")) + "\n  getCfgDesc: ") + xs.Tools.Jsb.EasySdk.callFunctionIfSupported("EasySdk", "getCfgDesc"))
});
        // source line 110, bytecode pc 310
        return void 0;
    }
    if ((this.par.cfg[this.num].changeAble === false)) {
        // source line 114, bytecode pc 400
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_66"));
        // source line 115, bytecode pc 402
        return void 0;
    }
    // source line 118, bytecode pc 462
    (xs[this.par.cfg[this.num].key] = !xs[this.par.cfg[this.num].key]);
    if (((this.par.cfg[this.num].key == "channel") || ((this.par.cfg[this.num].key == "version") || (this.par.cfg[this.num].key == "SDKChannel")))) {
        // source line 120, bytecode pc 608
        this.m_descLab.setString(this.par.cfg[this.num].desc);
        // source line 121, bytecode pc 610
        return void 0;
    }
    // source line 129, bytecode pc 724
    this.m_descLab.setString(((((("key " + this.par.cfg[this.num].key) + " desc ") + this.par.cfg[this.num].desc) + " value ") + xs[this.par.cfg[this.num].key]));
}
}));
// source line 134, bytecode pc 104
(xs.Views.DebugItemCell.create = function() {
    var cell;
    // source line 135, bytecode pc 23
    (cell = new xs.Views.DebugItemCell());
    if ((cell && cell.init())) {
        // source line 137, bytecode pc 55
        return cell;
    }
    // source line 140, bytecode pc 57
    return null;
});
// source line 241, bytecode pc 1298
(xs.Scene.TableViewTestLayer = cc.Layer.extend({
    cfg: [
        { changeAble: false, key: "Cocos2d_Debug", desc: ("" + xs.Tools.Jsb.getCocos2dDebugLevel()) },
        { changeAble: false, key: "ChannelID", desc: ("CID:" + xs.Tools.Jsb.getChannelId()) },
        { changeAble: false, key: "ApkInfo", desc: "" },
        { changeAble: false, key: "ClientCfgVer", desc: "" },
        { changeAble: false, key: "ServerApp", desc: "" },
        { changeAble: false, key: "ServerCfg", desc: "" },
        { changeAble: false, key: "ServerOptCfg", desc: "" },
        { changeAble: false, key: "TKAppKey", desc: "" },
        { changeAble: false, key: "app_macroStr", desc: "" },
        { changeAble: false, key: "EasySdkInfo", desc: "" },
        { key: "release", desc: "" },
        { key: "useLog", desc: "" },
        { key: "useMark", desc: "" },
        { key: "useDebugBoundRect", desc: "" },
        { key: "useDebugPoint", desc: "" },
        { key: "useDlgEffect", desc: xs.Tools.String.createString("auto_name_67") },
        { key: "testLogin", desc: xs.Tools.String.createString("auto_name_68") },
        { key: "fightSkipAlways", desc: xs.Tools.String.createString("auto_name_69") },
        { key: "dungeonPlotAlways", desc: xs.Tools.String.createString("auto_name_70") },
        { key: "dungeonPlot_skip", desc: xs.Tools.String.createString("auto_name_71") },
        { key: "guideOpen", desc: xs.Tools.String.createString("auto_name_72") },
        { key: "dog_check", desc: xs.Tools.String.createString("auto_name_73") },
        { key: "useToken", desc: xs.Tools.String.createString("auto_name_74") }
    ],
    ctor: function() {
    // source line 172, bytecode pc 12
    this._super();
    // source line 173, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    var winSize, tableView;
    // source line 177, bytecode pc 12
    this._super();
    // source line 179, bytecode pc 37
    (winSize = xs.director.getVisibleSize());
    // source line 182, bytecode pc 111
    (tableView = cc.TableView.create(this, cc.size((winSize.width * 0.9), (winSize.height * 0.7))));
    // source line 183, bytecode pc 137
    tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 184, bytecode pc 199
    tableView.setPosition(cc.p((winSize.width * 0.1), (winSize.height * 0.1)));
    // source line 185, bytecode pc 216
    tableView.setDelegate(this);
    // source line 186, bytecode pc 242
    tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 187, bytecode pc 259
    this.addChild(tableView);
    // source line 188, bytecode pc 274
    tableView.reloadData();
    // source line 190, bytecode pc 276
    return true;
},
    toExtensionsMainLayer: function(sender) {
    var scene;
    // source line 194, bytecode pc 13
    (scene = new ExtensionsTestScene());
    // source line 195, bytecode pc 28
    scene.runThisTest();
},
    scrollViewDidScroll: function(view) {
},
    scrollViewDidZoom: function() {
    // source line 238, bytecode pc 32
    xs.Views.Mgr.showToast("scrollViewDidZoom");
},
    tableCellTouched: function(table, cell) {
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 209, bytecode pc 23
    return cc.size(860, 120);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 216, bytecode pc 26
    cc.log((idx + "-----"));
    // source line 218, bytecode pc 44
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 220, bytecode pc 83
        (cell = xs.Views.DebugItemCell.create());
    }
    // source line 223, bytecode pc 104
    cell.update(this, idx);
    // source line 226, bytecode pc 108
    return cell;
},
    numberOfCellsInTableView: function(table) {
    // source line 230, bytecode pc 11
    return this.cfg.length;
}
}));
// source line 247, bytecode pc 1324
(xs.Scene.TableViewTestLayer.create = function() {
    var retObj;
    // source line 248, bytecode pc 23
    (retObj = new xs.Scene.TableViewTestLayer());
    if ((retObj && retObj.init())) {
        // source line 250, bytecode pc 55
        return retObj;
    }
    // source line 252, bytecode pc 57
    return null;
});
// source line 264, bytecode pc 1398
(xs.Scene.DebugLayer = cc.Layer.extend({
    name: "DebugLayer",
    ctor: function() {
    var conList;
    // source line 259, bytecode pc 12
    this._super();
    // source line 260, bytecode pc 47
    cc.associateWithNative(this, xs.Scene.BaseTestCaseLayer);
    // source line 261, bytecode pc 84
    (conList = [ xs.m_release, xs.m_loadTest ]);
},
    init: function() {
    var winSize, layer, _btnBack, m_defaultSize, bgsprite, _btnBack2;
    // source line 265, bytecode pc 12
    this._super();
    // source line 266, bytecode pc 20
    (this._productId = null);
    // source line 267, bytecode pc 45
    (winSize = xs.director.getVisibleSize());
    // source line 268, bytecode pc 78
    xs.Tools.UI.addCommonBg(this, true, true);
    // source line 270, bytecode pc 108
    (layer = xs.Scene.TableViewTestLayer.create());
    // source line 271, bytecode pc 128
    this.addChild(layer, 4);
    // source line 272, bytecode pc 164
    layer.setPosition(cc.p(0, 0));
    // source line 273, bytecode pc 200
    layer.setAnchorPoint(cc.p(0, 0));
    // source line 276, bytecode pc 236
    (_btnBack = xs.Views.Btn.create("Default"));
    // source line 279, bytecode pc 273
    _btnBack.setEffectMap(xs.Constant_NodeEffectEvent_Disappear, xs.Constant_NodeEffectType_Hide);
    // source line 281, bytecode pc 324
    _btnBack.setString(xs.Tools.String.createString("auto_name_75"), 30);
    // source line 282, bytecode pc 363
    _btnBack.setButtonSize(cc.size(220, 50));
    // source line 283, bytecode pc 389
    _btnBack.setAnchorPoint(xs.ap_rb);
    // source line 295, bytecode pc 423
    _btnBack.setOnClickCallBack(function() {
    // source line 289, bytecode pc 29
    this.runEffectAction(xs.Constant_NodeEffectEvent_Disappear, function() {
    // source line 290, bytecode pc 26
    xs.Scene.Mgr.gotoLastSceneSafe();
});
}.bind(this));
    // source line 301, bytecode pc 500
    xs.Utils.Node.attachNodes(this, _btnBack, { desc: "rb", sc: true }, { tag: 121, zOrder: 10 });
    // source line 306, bytecode pc 536
    (_btnBack = xs.Views.Btn.create("Btn_btn1"));
    // source line 309, bytecode pc 573
    _btnBack.setEffectMap(xs.Constant_NodeEffectEvent_Disappear, xs.Constant_NodeEffectType_Hide);
    // source line 311, bytecode pc 621
    _btnBack.setString(xs.Tools.String.createString("auto_name_76"));
    // source line 320, bytecode pc 655
    _btnBack.setOnClickCallBack(function() {
    if (this.m_EditBox_Account.getText()) {
        // source line 316, bytecode pc 66
        xs.Profile.UserCfg.setProductIdSql(this.m_EditBox_Account.getText());
        // source line 317, bytecode pc 150
        xs.Views.Mgr.showToast(((xs.Tools.String.createString("auto_name_77") + this.m_EditBox_Account.getText()) + "!"));
    }
}.bind(this));
    // source line 327, bytecode pc 760
    xs.Utils.Node.attachNodes(this, _btnBack, { desc: "c", offset: cc.p(100, 265), sc: true }, { tag: 122, zOrder: 10 });
    // source line 331, bytecode pc 787
    (m_defaultSize = cc.size(470, 45));
    // source line 332, bytecode pc 843
    (bgsprite = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.popView_contentBg02.frameName));
    // source line 333, bytecode pc 862
    bgsprite.setContentSize(m_defaultSize);
    // source line 336, bytecode pc 898
    (this.m_EditBox_Account = cc.EditBox.create(m_defaultSize, bgsprite));
    // source line 337, bytecode pc 937
    this.m_EditBox_Account.setAnchorPoint(cc.p(0, 0));
    // source line 338, bytecode pc 957
    this.m_EditBox_Account.setZOrder(0);
    // source line 340, bytecode pc 1004
    this.m_EditBox_Account.setPlaceholderFontColor(cc.c3b(255, 255, 255));
    // source line 341, bytecode pc 1051
    this.m_EditBox_Account.setFontColor(cc.c3b(255, 255, 255));
    // source line 342, bytecode pc 1072
    this.m_EditBox_Account.setPlaceholderFontSize(22);
    // source line 343, bytecode pc 1099
    this.m_EditBox_Account.setFont("", 22);
    // source line 344, bytecode pc 1150
    this.m_EditBox_Account.setPlaceHolder(xs.Tools.String.createString("auto_name_78"));
    // source line 345, bytecode pc 1179
    this.m_EditBox_Account.setInputMode(cc.EDITBOX_INPUT_MODE_SINGLELINE);
    // source line 346, bytecode pc 1208
    this.m_EditBox_Account.setInputFlag(cc.EDITBOX_INPUT_FLAG_SENSITIVE);
    // source line 347, bytecode pc 1237
    this.m_EditBox_Account.setReturnType(cc.KEYBOARD_RETURNTYPE_DONE);
    // source line 348, bytecode pc 1257
    this.m_EditBox_Account.setDelegate(this);
    // source line 349, bytecode pc 1281
    this.m_EditBox_Account.setText("");
    // source line 353, bytecode pc 1365
    xs.Utils.Node.attachNodes(this, this.m_EditBox_Account, { desc: "c", offset: cc.p(-450, 243) });
    // source line 359, bytecode pc 1401
    (_btnBack2 = xs.Views.Btn.create("Btn_btn1"));
    // source line 362, bytecode pc 1438
    _btnBack2.setEffectMap(xs.Constant_NodeEffectEvent_Disappear, xs.Constant_NodeEffectType_Hide);
    // source line 364, bytecode pc 1459
    _btnBack2.setString("account_uid");
    // source line 378, bytecode pc 1493
    _btnBack2.setOnClickCallBack(function() {
    var _text;
    if (this.m_EditBox_Account.getText()) {
        // source line 369, bytecode pc 42
        (_text = this.m_EditBox_Account.getText());
        if ((_text == -1)) {
            // source line 371, bytecode pc 62
            (_text = "");
        }
        // source line 373, bytecode pc 93
        xs.Profile.UserCfg.setDebugAccountUid(_text);
        // source line 374, bytecode pc 150
        xs.Views.Mgr.showToast((("account_uid设置为:" + this.m_EditBox_Account.getText()) + "!"));
    } else {
        // source line 376, bytecode pc 188
        xs.Views.Mgr.showToast("输入你要登陆的account_uid 要清空填-1");
    }
}.bind(this));
    // source line 385, bytecode pc 1599
    xs.Utils.Node.attachNodes(this, _btnBack2, { desc: "c", offset: cc.p(300, 265), sc: true }, { tag: 122, zOrder: 10 });
    // source line 388, bytecode pc 1601
    return true;
}
}));
// source line 399, bytecode pc 1462
(xs.Scene.DebugScene = cc.Scene.extend({
    ctor: function() {
    // source line 395, bytecode pc 12
    this._super();
    // source line 396, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    onEnter: function() {
    var layer;
    // source line 400, bytecode pc 12
    this._super();
    // source line 401, bytecode pc 36
    (layer = new xs.Scene.DebugLayer());
    // source line 402, bytecode pc 51
    layer.init();
    // source line 403, bytecode pc 68
    this.addChild(layer);
}
}));
// source line 408, bytecode pc 1488
(xs.Scene.DebugScene.create = function() {
    // source line 409, bytecode pc 20
    return new xs.Scene.DebugScene();
});
// source line 415, bytecode pc 1563
xs.Scene.Mgr.registerScene("DebugScene", { "class": xs.Scene.DebugScene, type: xs.Constant_SceneType_Main });
