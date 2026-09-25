// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Worship/WorshipScene.js:1
// source line 252, bytecode pc 228
(xs.Scene.WorshipLayer = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 12, bytecode pc 12
    this._super();
},
    init: function(general) {
    var visibleOrigin, visibleSize, titler, arrow;
    if (!this._super()) {
        // source line 16, bytecode pc 19
        return false;
    }
    // source line 19, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 20, bytecode pc 35
    (this.m_mainMenu = null);
    // source line 22, bytecode pc 43
    (this.m_pageView = null);
    // source line 24, bytecode pc 51
    (this.m_useWineData = null);
    // source line 26, bytecode pc 59
    (this.m_worshipDesc = null);
    // source line 27, bytecode pc 67
    (this.m_worshipInfo = null);
    // source line 28, bytecode pc 75
    (this.m_worshipCardAdd = null);
    // source line 29, bytecode pc 83
    (this.m_generalData = null);
    // source line 30, bytecode pc 91
    (this.m_oblationData = null);
    // source line 31, bytecode pc 99
    (this.m_GeneralCard = null);
    // source line 32, bytecode pc 107
    (this.m_OblationCard = null);
    // source line 33, bytecode pc 115
    (this.m_replaceDialog = null);
    // source line 35, bytecode pc 123
    (this.m_mailiItemNum = 0);
    // source line 40, bytecode pc 148
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 41, bytecode pc 173
    (visibleSize = xs.director.getVisibleSize());
    // source line 43, bytecode pc 206
    xs.Tools.UI.addCommonBg(this, true, true);
    // source line 46, bytecode pc 236
    (titler = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 47, bytecode pc 272
    titler.setAnchorPoint(cc.p(0, 1));
    // source line 48, bytecode pc 328
    xs.Utils.Node.attachNodes(this, titler, { desc: "lt", sc: true });
    // source line 50, bytecode pc 361
    (this.m_worshipDesc = xs.Views.WorshipDescView.create());
    // source line 51, bytecode pc 404
    this.m_worshipDesc.setAnchorPoint(cc.p(0.5, 0));
    // source line 52, bytecode pc 488
    xs.Utils.Node.attachNodes(this, this.m_worshipDesc, { desc: "cb", sc: true, offset: { x: -50, y: 20 } });
    // source line 54, bytecode pc 521
    (this.m_worshipInfo = xs.Views.WorshipInfoView.create());
    // source line 55, bytecode pc 564
    this.m_worshipInfo.setAnchorPoint(cc.p(0.5, 0));
    // source line 56, bytecode pc 584
    this.m_worshipInfo.setListener(this);
    // source line 57, bytecode pc 668
    xs.Utils.Node.attachNodes(this, this.m_worshipInfo, { desc: "cb", sc: true, offset: { x: -50, y: 16 } });
    // source line 58, bytecode pc 688
    this.m_worshipInfo.setVisible(false);
    // source line 60, bytecode pc 721
    (this.m_worshipCardAdd = xs.Views.WorshipCardAdd.create());
    // source line 61, bytecode pc 768
    this.m_worshipCardAdd.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 62, bytecode pc 788
    this.m_worshipCardAdd.setListener(this);
    // source line 63, bytecode pc 884
    xs.Utils.Node.attachNodes(this, this.m_worshipCardAdd, { desc: "c", sc: true, offset: { x: ((visibleSize.width / 4) - 50), y: 20 } });
    // source line 65, bytecode pc 901
    this.setGeneralData(general);
    // source line 67, bytecode pc 943
    (arrow = xs.Factorys.Sprite.create("worship_arrow", "WorshipScene01"));
    // source line 68, bytecode pc 1024
    xs.Utils.Node.attachNodes(this, arrow, { desc: "c", sc: true, offset: { x: -50, y: 20 } });
    // source line 70, bytecode pc 1116
    (this.m_pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), (visibleSize.height - 50))));
    // source line 71, bytecode pc 1189
    this.m_pageView.addPage(xs.Tools.String.createString("auto_name_221"), cc.Node.create());
    // source line 72, bytecode pc 1248
    xs.Utils.Node.attachNodes(this, this.m_pageView, { desc: "lb", sc: true });
    // source line 76, bytecode pc 1311
    (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, true, xs.Scene.WorshipLayer.cfg.m_mainMenu));
    // source line 78, bytecode pc 1355
    (this.m_instructionBtn = xs.Tools.Views.Btn.createInstruction("inheritDescription"));
    // source line 79, bytecode pc 1444
    xs.Utils.Node.attachNodes(this, this.m_instructionBtn, { desc: "rt", offset: cc.p(-180, -60), sc: true });
    // source line 81, bytecode pc 1459
    this.setBaseTouchPriority(0);
    // source line 82, bytecode pc 1461
    return true;
},
    backCallback: function() {
    // source line 85, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("MainMenuScene");
},
    setBaseTouchPriority: function(priority) {
    // source line 88, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 89, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 91, bytecode pc 85
    this.m_mainMenu.setBaseTouchPriority((this.m_baseTouchPriority + xs.Scene.WorshipLayer.cfg.m_mainMenu.priority));
    // source line 93, bytecode pc 141
    this.m_worshipCardAdd.setBaseTouchPriority((this.m_baseTouchPriority + xs.Scene.WorshipLayer.cfg.m_worshipCardAdd.priority));
    // source line 95, bytecode pc 197
    this.m_worshipInfo.setBaseTouchPriority((this.m_baseTouchPriority + xs.Scene.WorshipLayer.cfg.m_worshipInfo.priority));
    // source line 96, bytecode pc 224
    this.m_instructionBtn.setTouchPriority((this.m_baseTouchPriority - 1));
},
    setGeneralData: function(data) {
    var visibleSize;
    // source line 99, bytecode pc 9
    (this.m_generalData = data);
    // source line 101, bytecode pc 34
    (visibleSize = xs.director.getVisibleSize());
    // source line 102, bytecode pc 68
    xs.Utils.Node.safeRemoveChild(this.m_GeneralCard);
    // source line 104, bytecode pc 92
    (this.m_GeneralCard = this.m_generalData.createCardView());
    // source line 105, bytecode pc 117
    this.m_GeneralCard.reloadData(this.m_generalData);
    // source line 106, bytecode pc 141
    this.m_GeneralCard.setScale(0.85);
    // source line 107, bytecode pc 238
    xs.Utils.Node.attachNodes(this, this.m_GeneralCard, { desc: "c", sc: true, offset: { x: ((-visibleSize.width / 4) - 50), y: 20 } });
},
    setOblationData: function(data) {
    var visibleSize;
    // source line 110, bytecode pc 9
    (this.m_oblationData = data);
    // source line 112, bytecode pc 34
    (visibleSize = xs.director.getVisibleSize());
    // source line 114, bytecode pc 68
    xs.Utils.Node.safeRemoveChild(this.m_OblationCard);
    // source line 115, bytecode pc 76
    (this.m_OblationCard = null);
    if (this.m_oblationData) {
        // source line 118, bytecode pc 111
        (this.m_OblationCard = this.m_oblationData.createCardView());
        // source line 119, bytecode pc 136
        this.m_OblationCard.reloadData(this.m_oblationData);
        // source line 120, bytecode pc 160
        this.m_OblationCard.setScale(0.85);
        // source line 121, bytecode pc 256
        xs.Utils.Node.attachNodes(this, this.m_OblationCard, { desc: "c", sc: true, offset: { x: ((visibleSize.width / 4) - 50), y: 20 } });
    }
},
    showWorshipInfo: function() {
    if (this.m_worshipDesc.isVisible()) {
        // source line 126, bytecode pc 41
        this.m_worshipDesc.setVisible(false);
    }
    if (!this.m_worshipInfo.isVisible()) {
        // source line 129, bytecode pc 84
        this.m_worshipInfo.setVisible(true);
    }
},
    hideWorshipInfo: function() {
    if (!this.m_worshipDesc.isVisible()) {
        // source line 134, bytecode pc 42
        this.m_worshipDesc.setVisible(true);
    }
    if (this.m_worshipInfo.isVisible()) {
        // source line 137, bytecode pc 84
        this.m_worshipInfo.setVisible(false);
    }
},
    WorshipCardAdd_AddCallback: function() {
    // source line 144, bytecode pc 59
    (this.m_replaceDialog = xs.Views.Mgr.showDialogByName("ReplaceCardDialog", xs.Views.Dialog.ReplaceCardDialog_Type_Worship));
    // source line 145, bytecode pc 86
    this.m_replaceDialog.setReplaceData(this.m_oblationData, false);
    // source line 146, bytecode pc 122
    this.m_replaceDialog.setHideData([ this.m_generalData ], true);
    // source line 147, bytecode pc 142
    this.m_replaceDialog.setListener(this);
},
    ReplaceCardDialog_replaceCard: function(data) {
    // source line 152, bytecode pc 16
    this.setOblationData(data);
    // source line 153, bytecode pc 34
    this.m_replaceDialog.replaceSuccess();
    // source line 154, bytecode pc 47
    this.showWorshipInfo();
    // source line 155, bytecode pc 79
    this.m_worshipInfo.setGeneralAndOblation(this.m_generalData, this.m_oblationData);
},
    ReplaceCardDialog_close: function() {
},
    WorshipInfoView_worship: function(wine, num) {
    var param, dialog, arr, m_oblationData_star, m_generalData_star, m_oblationData_name, m_generalData_name;
    // source line 163, bytecode pc 26
    xs.log("........WorshipInfoView_worship", wine);
    // source line 165, bytecode pc 36
    (this.m_mailiItemNum = num);
    // source line 168, bytecode pc 52
    (param = {});
    // source line 169, bytecode pc 84
    (param.user_general_id = this.m_generalData.getPkId());
    // source line 170, bytecode pc 116
    (param.user_death_general_id = this.m_oblationData.getPkId());
    // source line 171, bytecode pc 145
    (param.sacrifice_type = wine.getGrade());
    // source line 172, bytecode pc 174
    (param.item_id = wine.getId());
    if ((this.m_generalData.getGrade() != this.m_oblationData.getGrade())) {
        // source line 186, bytecode pc 384
        (dialog = xs.Views.Mgr.showDialogByName("common", {
    title: "1070910046",
    content: "1070910046",
    leftText: xs.Tools.String.createString("auto_name_146"),
    rightText: xs.Tools.String.createString("auto_name_76"),
    leftCB: function() {
    // source line 182, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    rightCB: function() {
    // source line 185, bytecode pc 22
    this.requestWorshipGeneral(param);
}.bind(this)
}));
        // source line 187, bytecode pc 402
        (dialog = dialog.getRealDialog());
        // source line 188, bytecode pc 450
        dialog.setContentText(xs.Tools.String.createString("auto_name_222"));
        // source line 189, bytecode pc 498
        dialog.setTitleByString(xs.Tools.String.createString("auto_name_223"));
    } else {
        // source line 192, bytecode pc 548
        (arr = [ "12", "34", "56", "78" ]);
        // source line 193, bytecode pc 569
        (m_oblationData_star = this.m_oblationData.getBreachLevel());
        // source line 194, bytecode pc 590
        (m_generalData_star = this.m_generalData.getBreachLevel());
        // source line 195, bytecode pc 611
        (m_oblationData_name = this.m_oblationData.getNameString());
        // source line 196, bytecode pc 632
        (m_generalData_name = this.m_generalData.getNameString());
        // source line 197, bytecode pc 669
        (arr = [ m_oblationData_star, m_oblationData_name, m_generalData_star, m_generalData_name ]);
        // source line 208, bytecode pc 839
        (dialog = xs.Views.Mgr.showDialogByName("common", {
    title: "1070910046",
    content: "1070910046",
    leftText: xs.Tools.String.createString("auto_name_146"),
    rightText: xs.Tools.String.createString("auto_name_76"),
    leftCB: function() {
    // source line 204, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    rightCB: function() {
    // source line 207, bytecode pc 22
    this.requestWorshipGeneral(param);
}.bind(this)
}));
        // source line 209, bytecode pc 857
        (dialog = dialog.getRealDialog());
        // source line 210, bytecode pc 909
        dialog.setContentText(xs.Tools.String.createStringWithArgsArray("str_Worship_Suggestion", arr));
        // source line 211, bytecode pc 957
        dialog.setTitleByString(xs.Tools.String.createString("auto_name_223"));
    }
},
    requestWorshipGeneral: function(param) {
    // source line 216, bytecode pc 39
    xs.Tools.Net.requestWorshipGeneral(param, this.worshipSuccessCallback, this);
},
    worshipSuccessCallback: function(data) {
    var transmissionModel;
    // source line 220, bytecode pc 26
    xs.log_zhz("data", data);
    // source line 221, bytecode pc 53
    xs.Views.Mgr.hideAllDialog();
    // source line 224, bytecode pc 153
    (transmissionModel = xs.Models.TransmissionModel.create(data, xs.Profile.GameData.Mgr.getInstance().Generals.getByPkId(this.m_generalData.getPkId())));
    // source line 227, bytecode pc 212
    xs.Views.Mgr.showDialogByName("BreachResult", { param: transmissionModel, num: this.m_mailiItemNum });
    // source line 230, bytecode pc 227
    this.setOblationData(null);
    // source line 231, bytecode pc 245
    this.m_worshipInfo.reset();
    // source line 232, bytecode pc 258
    this.hideWorshipInfo();
},
    WorshipInfoView_showItem: function(generalId) {
    var showWorshipDialog;
    // source line 235, bytecode pc 22
    xs.log("........WorshipInfoView_showItem");
    // source line 236, bytecode pc 62
    (showWorshipDialog = xs.Views.Mgr.showDialogByName("ShowWorshipItemDialog", generalId));
    // source line 237, bytecode pc 79
    showWorshipDialog.setListener(this);
},
    ShowWorshipItemDialog_useWine: function(item) {
    // source line 242, bytecode pc 22
    xs.log("..........ShowWorshipItemDialog_useWine");
    // source line 243, bytecode pc 44
    this.m_worshipInfo.setUseWine(item);
},
    ShowWorshipItemDialog_buyWine: function(good) {
    // source line 246, bytecode pc 39
    xs.Tools.Net.getInstance().setListener(this);
    // source line 247, bytecode pc 81
    xs.Tools.Net.getInstance().setListenerCallbackData(good);
    // source line 249, bytecode pc 165
    xs.Tools.Net.getInstance().BuyGood(good, 1, this, (this.m_baseTouchPriority + xs.Scene.WorshipLayer.cfg.BuyGoodsSuccessPopView.priority));
},
    buyGoodSuccessCallback: function(data) {
    var item;
    // source line 253, bytecode pc 22
    xs.log("...........buyGoodSuccessCallback");
    // source line 254, bytecode pc 49
    xs.Views.Mgr.hideAllDialog();
    // source line 255, bytecode pc 126
    (item = xs.Profile.GameData.Mgr.getInstance().Items.getPriorityObjById(data.getItem().getId()));
    // source line 256, bytecode pc 143
    this.ShowWorshipItemDialog_useWine(item);
}
}));
// source line 260, bytecode pc 254
(xs.Scene.WorshipLayer.create = function(general) {
    var layer;
    // source line 261, bytecode pc 23
    (layer = new xs.Scene.WorshipLayer());
    if ((layer && layer.init(general))) {
        // source line 263, bytecode pc 59
        return layer;
    }
    // source line 266, bytecode pc 61
    return null;
});
// source line 290, bytecode pc 416
(xs.Scene.WorshipLayer.cfg = {
    m_mainMenu: { zOrder: 5, tag: -1, priority: -5 },
    m_worshipCardAdd: { priority: -1 },
    m_worshipInfo: { priority: -1 },
    selectGeneralLayer: { priority: -20 },
    winePopLayer: { zOrder: 0, tag: 100, priority: -20 },
    BuyGoodsSuccessPopView: { priority: -40 }
});
// source line 300, bytecode pc 480
(xs.Scene.WorshipScene = cc.Scene.extend({
    ctor: function() {
    // source line 297, bytecode pc 12
    this._super();
    // source line 298, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(general) {
    var layer;
    if (!this._super()) {
        // source line 302, bytecode pc 19
        return false;
    }
    // source line 305, bytecode pc 53
    (layer = xs.Scene.WorshipLayer.create(general));
    // source line 306, bytecode pc 86
    xs.Utils.Node.attachNodes(this, layer);
    // source line 308, bytecode pc 88
    return true;
}
}));
// source line 312, bytecode pc 506
(xs.Scene.WorshipScene.create = function(general) {
    var scene;
    // source line 313, bytecode pc 23
    (scene = new xs.Scene.WorshipScene());
    if ((scene && scene.init(general))) {
        // source line 315, bytecode pc 59
        return scene;
    }
    // source line 317, bytecode pc 61
    return null;
});
// source line 326, bytecode pc 600
xs.Scene.Mgr.registerScene("WorshipScene", { "class": xs.Scene.WorshipScene, type: xs.Constant_SceneType_Cmn, area: [ "WorshipScene01" ] });
