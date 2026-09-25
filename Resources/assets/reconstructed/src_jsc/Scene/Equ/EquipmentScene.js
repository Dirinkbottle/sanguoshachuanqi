// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Equ/EquipmentScene.js:1
// source line 393, bytecode pc 213
(xs.Scene.EquipmentLayer = cc.Layer.extend({
    ctor: function() {
    // source line 17, bytecode pc 12
    this._super();
    // source line 18, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(param) {
    var visibleOrigin, visibleSize, titler, mainMenu;
    if (!this._super()) {
        // source line 22, bytecode pc 19
        return false;
    }
    // source line 26, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 27, bytecode pc 35
    (this.m_pageView = null);
    // source line 28, bytecode pc 43
    (this.m_allEquipmentsView = null);
    // source line 29, bytecode pc 51
    (this.m_weaponsView = null);
    // source line 33, bytecode pc 95
    this.setTouchPriority(xs.Cfg.Scene.EquipmentScene.reinforcePopView.priority);
    // source line 36, bytecode pc 128
    xs.Tools.UI.addCommonBg(this, true, true);
    // source line 38, bytecode pc 153
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 39, bytecode pc 178
    (visibleSize = xs.director.getVisibleSize());
    // source line 42, bytecode pc 208
    (titler = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 43, bytecode pc 244
    titler.setAnchorPoint(cc.p(0, 1));
    // source line 46, bytecode pc 300
    xs.Utils.Node.attachNodes(this, titler, { desc: "lt", sc: true });
    // source line 60, bytecode pc 344
    (this._sellSortController = xs.Views.SortController.create(xs.Constant_FilterStyle_Equipment));
    // source line 61, bytecode pc 382
    this._sellSortController.setSortChgCallBack(this.onFilterChangeSell.bind(this));
    // source line 62, bytecode pc 436
    this._sellSortController.setBaseTouchPriority(xs.Cfg.Scene.EquipmentScene.sortView.base.priority);
    // source line 64, bytecode pc 457
    this._sellSortController.setZOrder(10);
    // source line 68, bytecode pc 544
    xs.Utils.Node.attachNodes(this, this._sellSortController, { desc: "lt", offset: cc.p(530, -95), sc: true });
    // source line 71, bytecode pc 588
    (this._pieceSortController = xs.Views.SortController.create(xs.Constant_FilterStyle_Equipment));
    // source line 72, bytecode pc 626
    this._pieceSortController.setSortChgCallBack(this.onFilterChangePiece.bind(this));
    // source line 73, bytecode pc 680
    this._pieceSortController.setBaseTouchPriority(xs.Cfg.Scene.EquipmentScene.sortView.base.priority);
    // source line 75, bytecode pc 701
    this._pieceSortController.setZOrder(10);
    // source line 79, bytecode pc 790
    xs.Utils.Node.attachNodes(this, this._pieceSortController, { desc: "rt", offset: cc.p(-380, -95), sc: true });
    // source line 81, bytecode pc 810
    this._pieceSortController.setVisible(false);
    // source line 85, bytecode pc 849
    (this.meltButton = xs.Views.Btn.createByStyleId("BS_Btn1"));
    // source line 86, bytecode pc 873
    this.meltButton.setStringById("EquipmentMelt");
    // source line 87, bytecode pc 911
    this.meltButton.setOnClickCallBack(this.onMeltButtonTouch.bind(this));
    // source line 93, bytecode pc 1029
    xs.Utils.Node.attachNodes(this, this.meltButton, { desc: "lt", offset: cc.p(430, -65), sc: true }, xs.Cfg.Scene.EquipmentScene.sortView.base);
    // source line 96, bytecode pc 1068
    (this.m_strongOneStepButton = xs.Views.Btn.createByStyleId("BS_Btn1"));
    // source line 97, bytecode pc 1092
    this.m_strongOneStepButton.setStringById("strongOneStep");
    // source line 98, bytecode pc 1146
    this.m_strongOneStepButton.setTouchPriority(xs.Cfg.Scene.EquipmentScene.sortView.base.priority);
    // source line 99, bytecode pc 1184
    this.m_strongOneStepButton.setOnClickCallBack(this.strongOneStepButtonTouch.bind(this));
    // source line 105, bytecode pc 1302
    xs.Utils.Node.attachNodes(this, this.m_strongOneStepButton, { desc: "lt", offset: cc.p(850, -65), sc: true }, xs.Cfg.Scene.EquipmentScene.sortView.base);
    // source line 107, bytecode pc 1358
    (this.pieceButton = xs.Views.Btn.createByStyleId("BS_Btn1").setStringById("str_Equipment_Sell"));
    // source line 108, bytecode pc 1396
    this.pieceButton.setOnClickCallBack(this.onPiecesButtonTouch.bind(this));
    // source line 114, bytecode pc 1516
    xs.Utils.Node.attachNodes(this, this.pieceButton, { desc: "rt", offset: cc.p(-470, -65), sc: true }, xs.Cfg.Scene.EquipmentScene.sortView.base);
    // source line 115, bytecode pc 1536
    this.pieceButton.setVisible(false);
    // source line 118, bytecode pc 1558
    xs.Debug.testBegin();
    // source line 119, bytecode pc 1586
    (this.m_allEquipmentsView = cc.Node.create());
    // source line 121, bytecode pc 1629
    (this.m_allEquipmentsView._equalTableView = xs.Views.Table.EquipmentTableView.create());
    // source line 122, bytecode pc 1688
    this.m_allEquipmentsView._equalTableView.setBaseTouchPriority(xs.Cfg.Scene.EquipmentScene.sortView.sortBtn.priority);
    // source line 126, bytecode pc 1818
    xs.Utils.Node.attachNodes(this.m_allEquipmentsView, this.m_allEquipmentsView._equalTableView, {
    desc: "lb",
    sc: true,
    offset: cc.p((visibleOrigin.x + (((visibleSize.width - 840) - 100) / 2)), (visibleOrigin.y + 50))
});
    // source line 128, bytecode pc 1843
    this.m_allEquipmentsView._equalTableView.setVisible(false);
    // source line 129, bytecode pc 1868
    this.m_allEquipmentsView._equalTableView.setKeepOldOffsetFlag(true);
    // source line 132, bytecode pc 1911
    (this.m_allEquipmentsView._strengthenTableView = xs.Views.Table.EquipmentTableViewStrengthen.create());
    // source line 133, bytecode pc 1970
    this.m_allEquipmentsView._strengthenTableView.setBaseTouchPriority(xs.Cfg.Scene.EquipmentScene.sortView.sortBtn.priority);
    // source line 137, bytecode pc 2100
    xs.Utils.Node.attachNodes(this.m_allEquipmentsView, this.m_allEquipmentsView._strengthenTableView, {
    desc: "lb",
    sc: true,
    offset: cc.p((visibleOrigin.x + (((visibleSize.width - 840) - 100) / 2)), (visibleOrigin.y + 50))
});
    // source line 139, bytecode pc 2125
    this.m_allEquipmentsView._strengthenTableView.setVisible(true);
    // source line 140, bytecode pc 2150
    this.m_allEquipmentsView._strengthenTableView.setKeepOldOffsetFlag(true);
    // source line 144, bytecode pc 2178
    (this.m_weaponsView = cc.Node.create());
    // source line 145, bytecode pc 2221
    (this.m_weaponsView._fragmentSell = xs.Views.Table.EquipmentFragmentTableView.create());
    // source line 146, bytecode pc 2246
    this.m_weaponsView._fragmentSell.setKeepOldOffsetFlag(true);
    // source line 150, bytecode pc 2376
    xs.Utils.Node.attachNodes(this.m_weaponsView, this.m_weaponsView._fragmentSell, {
    desc: "lb",
    sc: true,
    offset: cc.p((visibleOrigin.x + (((visibleSize.width - 840) - 100) / 2)), (visibleOrigin.y + 50))
});
    // source line 152, bytecode pc 2419
    (this.m_weaponsView._fragmentJoin = xs.Views.Table.EquipmentFragmentJoinTableView.create());
    // source line 153, bytecode pc 2444
    this.m_weaponsView._fragmentJoin.setKeepOldOffsetFlag(true);
    // source line 157, bytecode pc 2574
    xs.Utils.Node.attachNodes(this.m_weaponsView, this.m_weaponsView._fragmentJoin, {
    desc: "lb",
    sc: true,
    offset: cc.p((visibleOrigin.x + (((visibleSize.width - 840) - 100) / 2)), (visibleOrigin.y + 50))
});
    // source line 159, bytecode pc 2599
    this.m_weaponsView._fragmentJoin.setVisible(true);
    // source line 160, bytecode pc 2624
    this.m_weaponsView._fragmentSell.setVisible(false);
    // source line 166, bytecode pc 2646
    xs.Debug.testEnd();
    // source line 168, bytecode pc 2738
    (this.m_pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), (visibleSize.height - 50))));
    // source line 170, bytecode pc 2758
    this.m_pageView.setListener(this);
    // source line 172, bytecode pc 2816
    this.m_pageView.addPage(xs.Tools.String.createString("str_ReplaceDialog_equ"), this.m_allEquipmentsView);
    // source line 173, bytecode pc 2874
    this.m_pageView.addPage(xs.Tools.String.createString("str_Equipment_Fragement"), this.m_weaponsView);
    if ((param !== undefined)) {
        // source line 177, bytecode pc 2915
        this.m_pageView.selectPage(param.selectPageIdx);
    }
    // source line 179, bytecode pc 2937
    xs.Debug.testEnd();
    // source line 183, bytecode pc 2996
    xs.Utils.Node.attachNodes(this, this.m_pageView, { desc: "lb", sc: true });
    // source line 188, bytecode pc 3047
    this.m_pageView.setHintIcon([ 1 ], [ xs.Constant_HintType_Camp_EquPiece ], true);
    // source line 190, bytecode pc 3107
    (mainMenu = xs.Tools.UI.addShortcutBoard(this, true, xs.Cfg.Scene.EquipmentScene.mainmenu));
    // source line 193, bytecode pc 3109
    return true;
},
    strongOneStepButtonTouch: function() {
    var dialog;
    // source line 230, bytecode pc 182
    (dialog = xs.Views.Mgr.showDialogByName("common", {
    title: "Equipment_yijian_title",
    content: "Equipment_yijian_prompt",
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("auto_name_76"),
    leftCB: function() {
    // source line 204, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    // source line 207, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 227, bytecode pc 150
    xs.Tools.Net.requestEquipmentMultiUpgrade({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(data) {
    // source line 214, bytecode pc 26
    xs.log_hsq("data", data);
    if ((data.coin_not_enough == 1)) {
        // source line 216, bytecode pc 74
        xs.Views.Mgr.showToastByStringKey("strongOneStep_noMoney");
    } else {
        if (data.result) {
            // source line 219, bytecode pc 125
            xs.Views.Mgr.showToastByStringKey("strongOneStep_ok_str");
        }
    }
}.bind(this), function(data) {
}, this);
}.bind(this)
}));
},
    EquipmentMeltOneStepButtonTouch: function() {
    // source line 246, bytecode pc 166
    xs.Views.Mgr.showDialogByName("common", {
    title: "OneStepMeltPromptTitle",
    content: "OneStepMeltPrompt",
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("auto_name_76"),
    leftCB: function() {
    // source line 244, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    // source line 247, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 287, bytecode pc 144
    xs.Tools.Net.requireMultMelt({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(data) {
    var list, chuji_refineStone, zhongji_refineStone, gaoji_refineStone, yinLiang, i, str;
    if (data.add_list) {
        // source line 253, bytecode pc 24
        (list = data.add_list);
        // source line 254, bytecode pc 29
        (chuji_refineStone = 0);
        // source line 255, bytecode pc 34
        (zhongji_refineStone = 0);
        // source line 256, bytecode pc 39
        (gaoji_refineStone = 0);
        // source line 257, bytecode pc 44
        (yinLiang = 0);
        // source line 259, bytecode pc 49
        (i = 0);
        while ((i < list.length)) {
            if ((list[i].type == xs.Const_Item_Style_Item)) {
                if ((list[i].id == xs.Models.ItemID_RefineStone_chuji)) {
                    // source line 262, bytecode pc 151
                    (chuji_refineStone = (chuji_refineStone + Number(list[i].num)));
                } else {
                    if ((list[i].id == xs.Models.ItemID_RefineStone_zhongji)) {
                        // source line 264, bytecode pc 224
                        (zhongji_refineStone = (zhongji_refineStone + Number(list[i].num)));
                    } else {
                        if ((list[i].id == xs.Models.ItemID_RefineStone_gaoji)) {
                            // source line 266, bytecode pc 297
                            (gaoji_refineStone = (gaoji_refineStone + Number(list[i].num)));
                        }
                    }
                }
            } else {
                // source line 269, bytecode pc 337
                (yinLiang = (yinLiang + Number(list[i].num)));
            }
            // source line 259, bytecode pc 351
            (i = (+i + 1));
        }
        // source line 272, bytecode pc 406
        (str = xs.Tools.String.createString("EquipmentMeltSucess"));
        if (chuji_refineStone) {
            // source line 274, bytecode pc 464
            (str = (((str + xs.Tools.String.createString("chuJi_RefineStone")) + chuji_refineStone) + ","));
        }
        if (zhongji_refineStone) {
            // source line 277, bytecode pc 522
            (str = (((str + xs.Tools.String.createString("zhongJi_RefineStone")) + zhongji_refineStone) + ","));
        }
        if (gaoji_refineStone) {
            // source line 280, bytecode pc 580
            (str = (((str + xs.Tools.String.createString("gaoJi_RefineStone")) + gaoji_refineStone) + ","));
        }
        if (yinLiang) {
            // source line 283, bytecode pc 632
            (str = ((str + xs.Tools.String.createString("auto_name_26")) + yinLiang));
        }
        // source line 285, bytecode pc 663
        xs.Views.Mgr.showToast(str);
    }
}.bind(this), this);
}
});
},
    onEnterTransitionDidFinish: function() {
    // source line 300, bytecode pc 12
    this._super();
    // source line 304, bytecode pc 58
    xs.Utils.Notify.addObserver(this, function() {
    // source line 303, bytecode pc 50
    this.m_pageView.setHintIcon([ 1 ], [ xs.Constant_HintType_Camp_EquPiece ], true);
}, xs.Constant_Notify_HintChange_All);
    // source line 305, bytecode pc 109
    xs.Guide.GuideMgr.endStepBySequence([ "110103", "200104" ]);
},
    onExitTransitionDidStart: function() {
    // source line 309, bytecode pc 12
    this._super();
    // source line 310, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_HintChange_All);
},
    onFilterChangeSell: function(filterType, filterResult) {
    // source line 316, bytecode pc 30
    this.m_allEquipmentsView._equalTableView.onFilterChange(filterType, filterResult);
    // source line 317, bytecode pc 61
    this.m_allEquipmentsView._strengthenTableView.onFilterChange(filterType, filterResult);
},
    onFilterChangePiece: function(filterType, filterResult) {
    // source line 321, bytecode pc 30
    this.m_weaponsView._fragmentSell.onFilterChange(filterType, filterResult);
    // source line 322, bytecode pc 61
    this.m_weaponsView._fragmentJoin.onFilterChange(filterType, filterResult);
},
    setBaseTouchPriority: function(priority) {
    // source line 325, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 326, bytecode pc 58
    this.sortView.setBaseTouchPriority(xs.Cfg.Scene.EquipmentScene.sortView.priority);
    // source line 327, bytecode pc 107
    this.m_strongOneStepButton.setBaseTouchPriority(xs.Cfg.Scene.EquipmentScene.sortView.priority);
},
    backCallback: function() {
    // source line 330, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("MainMenuScene");
},
    reloadData: function() {
},
    reinforceEquipmentFinished: function() {
    // source line 342, bytecode pc 12
    this.reloadData();
},
    refineCallback: function(equipmentData) {
},
    reinforceCallback: function(equipmentData) {
    var reinforcePopView;
    // source line 351, bytecode pc 29
    (reinforcePopView = xs.Views.EquipmentReinforceView.create());
    // source line 352, bytecode pc 48
    reinforcePopView.setEquipmentData(equipmentData);
    // source line 353, bytecode pc 65
    reinforcePopView.setListener(this);
    // source line 354, bytecode pc 118
    reinforcePopView.setBaseTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.EquipmentScene.reinforcePopView.priority));
    // source line 358, bytecode pc 200
    xs.Utils.Node.attachNodes(this, reinforcePopView, { desc: "lb", sc: true }, xs.Cfg.Scene.EquipmentScene.reinforcePopView);
},
    onPageChange: function(pageIdx) {
    // source line 362, bytecode pc 19
    this.meltButton.setVisible(false);
    // source line 363, bytecode pc 39
    this.pieceButton.setVisible(false);
    // source line 364, bytecode pc 59
    this._sellSortController.setVisible(false);
    // source line 365, bytecode pc 79
    this._pieceSortController.setVisible(false);
    // source line 366, bytecode pc 83
    switch (pageIdx) {
        case 0:
        // source line 368, bytecode pc 123
        this.meltButton.setVisible(true);
        // source line 369, bytecode pc 143
        this._sellSortController.setVisible(true);
        // source line 370, bytecode pc 163
        this.m_strongOneStepButton.setVisible(true);
        break;
        case 1:
        // source line 373, bytecode pc 188
        this.pieceButton.setVisible(true);
        // source line 374, bytecode pc 208
        this._pieceSortController.setVisible(true);
        // source line 375, bytecode pc 228
        this.m_strongOneStepButton.setVisible(false);
        break;
        default:
        break;
    }
},
    onPiecesButtonTouch: function() {
    if ((this.m_weaponsView._fragmentSell.isVisible() == true)) {
        // source line 382, bytecode pc 53
        this.m_weaponsView._fragmentSell.setVisible(false);
        // source line 383, bytecode pc 78
        this.m_weaponsView._fragmentJoin.setVisible(true);
        // source line 384, bytecode pc 129
        this.pieceButton.setString(xs.Tools.String.createString("str_Equipment_Sell"));
    } else {
        // source line 387, bytecode pc 159
        this.m_weaponsView._fragmentSell.setVisible(true);
        // source line 388, bytecode pc 184
        this.m_weaponsView._fragmentJoin.setVisible(false);
        // source line 389, bytecode pc 235
        this.pieceButton.setString(xs.Tools.String.createString("chaos_compose"));
    }
},
    onMeltButtonTouch: function() {
    if ((this.m_allEquipmentsView._equalTableView.isVisible() == true)) {
        // source line 395, bytecode pc 53
        this.m_allEquipmentsView._equalTableView.setVisible(false);
        // source line 396, bytecode pc 78
        this.m_allEquipmentsView._strengthenTableView.setVisible(true);
        // source line 397, bytecode pc 129
        this.meltButton.setString(xs.Tools.String.createString("EquipmentMelt"));
        // source line 400, bytecode pc 153
        this.m_strongOneStepButton.setStringById("strongOneStep");
        // source line 401, bytecode pc 191
        this.m_strongOneStepButton.setOnClickCallBack(this.strongOneStepButtonTouch.bind(this));
    } else {
        // source line 404, bytecode pc 221
        this.m_allEquipmentsView._equalTableView.setVisible(true);
        // source line 405, bytecode pc 246
        this.m_allEquipmentsView._strengthenTableView.setVisible(false);
        // source line 406, bytecode pc 297
        this.meltButton.setString(xs.Tools.String.createString("str_Equipment_Strongger"));
        // source line 409, bytecode pc 321
        this.m_strongOneStepButton.setStringById("OneStepEquipmentMelt");
        // source line 410, bytecode pc 359
        this.m_strongOneStepButton.setOnClickCallBack(this.EquipmentMeltOneStepButtonTouch.bind(this));
    }
}
}));
// source line 416, bytecode pc 239
(xs.Scene.EquipmentLayer.create = function(param) {
    var layer;
    // source line 417, bytecode pc 23
    (layer = new xs.Scene.EquipmentLayer());
    if ((layer && layer.init(param))) {
        // source line 419, bytecode pc 59
        return layer;
    }
    // source line 421, bytecode pc 61
    return null;
});
// source line 430, bytecode pc 303
(xs.Scene.EquipmentScene = cc.Scene.extend({
    ctor: function() {
    // source line 426, bytecode pc 12
    this._super();
    // source line 427, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(param) {
    var layer;
    if (!this._super()) {
        // source line 432, bytecode pc 19
        return false;
    }
    // source line 435, bytecode pc 53
    (layer = xs.Scene.EquipmentLayer.create(param));
    // source line 436, bytecode pc 70
    this.addChild(layer);
    // source line 438, bytecode pc 72
    return true;
}
}));
// source line 442, bytecode pc 329
(xs.Scene.EquipmentScene.create = function(param) {
    var scene;
    // source line 443, bytecode pc 23
    (scene = new xs.Scene.EquipmentScene());
    if ((scene && scene.init(param))) {
        // source line 445, bytecode pc 59
        return scene;
    }
    // source line 447, bytecode pc 61
    return null;
});
// source line 454, bytecode pc 404
xs.Scene.Mgr.registerScene("EquipmentScene", { "class": xs.Scene.EquipmentScene, type: xs.Constant_SceneType_General });
