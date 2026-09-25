// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/MainMenuView.js:1
// source line 98, bytecode pc 133
(xs.Views.MainMenuViewCell = cc.TableViewCell.extend({
    draw: function(ctx) {
    // source line 16, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 19, bytecode pc 12
    this._super();
    // source line 20, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function(guideTag, bs, isBack) {
    var visibleSize, newGuideTag;
    // source line 23, bytecode pc 12
    this._super();
    // source line 25, bytecode pc 20
    (this.m_cellButton = null);
    // source line 26, bytecode pc 28
    (this.m_cellLab = null);
    // source line 28, bytecode pc 53
    (visibleSize = xs.director.getVisibleSize());
    // source line 30, bytecode pc 126
    this.setContentSize(cc.size(xs.Views.MainMenuViewCell.Cfg.contentSize.width, (visibleSize.height / 6)));
    // source line 32, bytecode pc 141
    (newGuideTag = (guideTag || -1));
    // source line 34, bytecode pc 205
    (this.m_cellButton = xs.Views.Button.Factory.Audio.createByStyleId(bs, "", xs.Constant_AudioType_Shortcut));
    // source line 35, bytecode pc 258
    xs.Utils.Node.attachNodes(this, this.m_cellButton, { desc: "c" });
    // source line 41, bytecode pc 280
    this.m_cellButton.setGuideTag(newGuideTag);
    // source line 43, bytecode pc 319
    (this.m_cellLab = xs.Factorys.Label.createByStyleId("LS_bnt1"));
    if (isBack) {
        // source line 46, bytecode pc 378
        this.m_cellLab.setString(xs.Tools.String.createString("btnStr_return"));
    }
    // source line 50, bytecode pc 481
    this.m_cellLab.setPosition(cc.p((xs.Views.MainMenuViewCell.Cfg.contentSize.width / 2), (xs.Views.MainMenuViewCell.Cfg.contentSize.height / 2)));
    // source line 53, bytecode pc 534
    xs.Utils.Node.attachNodes(this, this.m_cellLab, { desc: "c" });
    // source line 55, bytecode pc 536
    return true;
},
    setUp: function(selector, target, normal, selected, disable) {
    if ((selector && target)) {
        // source line 62, bytecode pc 53
        this.m_cellButton.setOnClickCallBack(selector.bind(target));
    }
    if ((normal && (normal != ""))) {
        // source line 67, bytecode pc 98
        this.m_cellButton.setNormalImageFrameName(normal);
    }
    if ((selected && (selected != ""))) {
        // source line 70, bytecode pc 143
        this.m_cellButton.setSelectedImageFrameName(selected);
    }
    if ((disable && (disable != ""))) {
        // source line 73, bytecode pc 188
        this.m_cellButton.setDisabledImageFrameName(disable);
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 78, bytecode pc 21
    this.m_cellButton.setTouchPriority(priority);
},
    menuClick: function() {
    // source line 81, bytecode pc 22
    xs.log("default menuClick");
},
    setCellTxt: function(txt) {
    // source line 84, bytecode pc 21
    this.m_cellLab.setString(txt);
},
    setHintPoint: function(bVisible) {
    if (bVisible) {
        if (!this.hintPoint) {
            // source line 89, bytecode pc 64
            (this.hintPoint = xs.Factorys.Sprite.create("Cmn01_Hint_Point", "Cmn01"));
            // source line 90, bytecode pc 85
            this.hintPoint.setZOrder(10);
            // source line 91, bytecode pc 165
            xs.Utils.Node.attachNodes(this, this.hintPoint, { desc: "rt", offset: cc.p(-20, -20) });
        }
    } else {
        if (this.hintPoint) {
            // source line 94, bytecode pc 199
            this.hintPoint.removeFromParent();
            // source line 95, bytecode pc 207
            (this.hintPoint = null);
        }
    }
},
    setRobHint: function(bVisible) {
    if (bVisible) {
        if (!this.RobHint) {
            // source line 101, bytecode pc 64
            (this.RobHint = xs.Factorys.Sprite.create("Cmn02_Hint_Qiang", "Cmn02"));
            // source line 102, bytecode pc 85
            this.RobHint.setZOrder(10);
            // source line 103, bytecode pc 165
            xs.Utils.Node.attachNodes(this, this.RobHint, { desc: "rt", offset: cc.p(-20, -20) });
        }
    } else {
        if (this.RobHint) {
            // source line 106, bytecode pc 199
            this.RobHint.removeFromParent();
            // source line 107, bytecode pc 207
            (this.RobHint = null);
        }
    }
}
}));
// source line 115, bytecode pc 184
(xs.Views.MainMenuViewCell.Cfg = { contentSize: { width: 110, height: 0 } });
// source line 119, bytecode pc 210
(xs.Views.MainMenuViewCell.create = function(guideTag, bs, isBack) {
    var cell;
    // source line 120, bytecode pc 23
    (cell = new xs.Views.MainMenuViewCell());
    // source line 121, bytecode pc 50
    cell.init(guideTag, bs, isBack);
    // source line 122, bytecode pc 54
    return cell;
});
// source line 288, bytecode pc 404
(xs.Views.MainMenuView = cc.Node.extend({
    ctor: function() {
    // source line 130, bytecode pc 12
    this._super();
    // source line 131, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function(type) {
    var visibleSize, contentSize, bg, bgSize, scaleY;
    // source line 134, bytecode pc 12
    this._super();
    // source line 136, bytecode pc 22
    (this.type = type);
    // source line 140, bytecode pc 64
    (this.m_items = [ null, null, null, null, null, null ]);
    // source line 145, bytecode pc 72
    (this.m_tableView = null);
    // source line 146, bytecode pc 80
    (this.m_baseTouchPriority = 0);
    // source line 149, bytecode pc 105
    (visibleSize = xs.director.getVisibleSize());
    // source line 151, bytecode pc 137
    (contentSize = cc.size(110, visibleSize.height));
    // source line 153, bytecode pc 154
    this.setContentSize(contentSize);
    // source line 155, bytecode pc 196
    (bg = xs.Factorys.Sprite.create("mainMenuView_bg", "Cmn01"));
    // source line 157, bytecode pc 232
    bg.setAnchorPoint(cc.p(1, 0));
    // source line 158, bytecode pc 250
    (bgSize = bg.getContentSize());
    // source line 159, bytecode pc 271
    (scaleY = (visibleSize.height / bgSize.height));
    // source line 160, bytecode pc 290
    bg.setScaleY(scaleY);
    // source line 161, bytecode pc 366
    xs.Utils.Node.attachNodes(this, bg, { desc: "rb" }, xs.Views.MainMenuView.cfg.bg);
    // source line 164, bytecode pc 379
    this.initButtons();
    // source line 167, bytecode pc 438
    (this.m_tableView = cc.TableView.create(this, cc.size(110, visibleSize.height)));
    // source line 168, bytecode pc 467
    this.m_tableView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 169, bytecode pc 496
    this.m_tableView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 170, bytecode pc 516
    this.m_tableView.setDelegate(this);
    // source line 171, bytecode pc 595
    xs.Utils.Node.attachNodes(this, this.m_tableView, { desc: "lb" }, xs.Views.MainMenuView.cfg.m_tableView);
    // source line 172, bytecode pc 615
    this.m_tableView.setTouchEnabled(false);
    // source line 173, bytecode pc 617
    return true;
},
    onEnter: function() {
    // source line 177, bytecode pc 12
    this._super();
    // source line 180, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.updateHint, xs.Constant_Notify_HintChange_All);
    // source line 183, bytecode pc 107
    xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
},
    setListener: function(listener) {
    // source line 186, bytecode pc 9
    (this.m_listener = listener);
},
    onExit: function() {
    // source line 189, bytecode pc 12
    this._super();
    // source line 191, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_HintChange_All);
},
    updateHint: function(hintInfo) {
    if (hintInfo) {
        // source line 197, bytecode pc 42
        this.m_items[1].setHintPoint(hintInfo.haveCampHintInfo());
        // source line 199, bytecode pc 78
        this.m_items[3].setHintPoint(hintInfo.havePvpHintInfo());
        // source line 201, bytecode pc 114
        this.m_items[4].setHintPoint(hintInfo.havePartyHintInfo());
        // source line 203, bytecode pc 150
        this.m_items[5].setHintPoint(hintInfo.haveStoreHintInfo());
    }
},
    setBaseTouchPriority: function(priority) {
    var i;
    // source line 209, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 211, bytecode pc 65
    this.m_tableView.setTouchPriority((this.m_baseTouchPriority + xs.Views.MainMenuView.cfg.m_tableView.priority));
    // source line 213, bytecode pc 70
    (i = 0);
    while ((i < this.m_items.length)) {
        // source line 214, bytecode pc 138
        this.m_items[i].setBaseTouchPriority(((this.m_baseTouchPriority + xs.Views.MainMenuView.cfg.m_tableView.priority) + 1));
        // source line 213, bytecode pc 152
        (i = (+i + 1));
    }
},
    scrollViewDidScroll: function() {
},
    scrollViewDidZoom: function() {
},
    tableCellTouched: function(table, cell) {
},
    tableCellSizeForIndex: function(table, idx) {
    var visibleSize;
    // source line 226, bytecode pc 24
    (visibleSize = xs.director.getVisibleSize());
    // source line 227, bytecode pc 56
    return cc.size(110, (visibleSize.height / 6));
},
    tableCellAtIndex: function(table, idx) {
    // source line 230, bytecode pc 10
    return this.m_items[idx];
},
    numberOfCellsInTableView: function(table) {
    // source line 233, bytecode pc 11
    return this.m_items.length;
},
    initButtons: function() {
    var _idx, _params, _cfg, _bs, i, _selector, _isback;
    // source line 243, bytecode pc 20
    (i = 0);
    while ((i < xs.Views.MainMenuView.cfg.mapMenus.length)) {
        // source line 244, bytecode pc 33
        (_idx = i);
        // source line 246, bytecode pc 66
        (_cfg = xs.Views.MainMenuView.cfg.mapMenus[i]);
        // source line 254, bytecode pc 75
        (_isback = false);
        // source line 257, bytecode pc 94
        (_params = (_cfg.params || null));
        // source line 260, bytecode pc 106
        (_bs = _cfg.bs);
        if (((i === 0) && (this.type === xs.Views.MainMenuView.Type.Close))) {
            // source line 265, bytecode pc 163
            (_bs = "BS_ShortCut_Close");
            // source line 266, bytecode pc 168
            (_isback = true);
            // source line 276, bytecode pc 190
            (_selector = function() {
    if (this.m_listener) {
        // source line 272, bytecode pc 28
        this.m_listener.closeButtonCallBack();
    } else {
        // source line 274, bytecode pc 60
        xs.Scene.Mgr.gotoLastScene();
    }
}.bind(this));
        } else {
            // source line 279, bytecode pc 258
            (_selector = xs.Views.MainMenuView.itemOnClick.bind({ idx: i, nameScene: _cfg.nameScene }));
        }
        // source line 284, bytecode pc 307
        (this.m_items[i] = xs.Views.MainMenuViewCell.create(_params, _bs, _isback));
        // source line 285, bytecode pc 335
        this.m_items[i].setUp(_selector, this);
        // source line 243, bytecode pc 349
        (i = (+i + 1));
    }
},
    closeButtonCallBack: function() {
    if (this.m_listener) {
        // source line 290, bytecode pc 28
        this.m_listener.closeButtonCallBack();
    }
}
}));
// source line 306, bytecode pc 427
(xs.Views.MainMenuView.Width = 110);
// source line 308, bytecode pc 453
(xs.Views.MainMenuView.itemOnClick = function() {
    if ((xs.Scene.Mgr.getCurSceneName() !== this.nameScene)) {
        // source line 328, bytecode pc 71
        xs.Scene.Mgr.changeSceneByName(this.nameScene);
    }
});
// source line 370, bytecode pc 965
(xs.Views.MainMenuView.cfg = {
    bg: { zOrder: 0, tag: -1 },
    m_tableView: { zOrder: 0, tag: -1, priority: -2, cell: { priority: -1 } },
    menuTypes: { IdxOrBack: 0, General: 1, Map: 2, Chellage: 3, Party: 4, Shop: 5, Setting: 6 },
    mapMenus: [
        {
            idx: 0,
            bs: "BS_ShortCut_Idx",
            params: xs.Constant_GuideTag_Shortcut_Idx,
            nameScene: "MainMenuScene"
        },
        {
            idx: 1,
            bs: "BS_ShortCut_General",
            params: 1002,
            spriteKey: "mainMenuView_wujiang",
            nameScene: "GeneralMenuScene"
        },
        {
            idx: 2,
            bs: "BS_ShortCut_Chapter",
            params: 1000,
            spriteKey: "mainMenuView_guanqia",
            nameScene: "FightChapters"
        },
        {
            idx: 3,
            bs: "BS_ShortCut_Challenge",
            params: 1003,
            spriteKey: "mainMenuView_tiaozhan",
            nameScene: "ChallengeMenuScene"
        },
        { idx: 4, bs: "BS_ShortCut_Party", spriteKey: "mainMenuView_qiwen", nameScene: "PartyMenuScene" },
        { idx: 5, bs: "BS_ShortCut_Shop", params: 1001, nameScene: "StoreScene" },
        { idx: 6, bs: "BS_ShortCut_Setting", nameScene: "MenuMenuScene" }
    ]
});
// source line 376, bytecode pc 1004
(xs.Views.MainMenuView.Type = { Index: 0, Close: 1 });
// source line 380, bytecode pc 1030
(xs.Views.MainMenuView.createWithBack = function() {
    var menuView;
    // source line 381, bytecode pc 23
    (menuView = new xs.Views.MainMenuView());
    // source line 382, bytecode pc 64
    menuView.init(xs.Views.MainMenuView.Type.Close);
    // source line 383, bytecode pc 68
    return menuView;
});
// source line 387, bytecode pc 1056
(xs.Views.MainMenuView.createWithIndex = function() {
    var menuView;
    // source line 388, bytecode pc 23
    (menuView = new xs.Views.MainMenuView());
    // source line 389, bytecode pc 64
    menuView.init(xs.Views.MainMenuView.Type.Index);
    // source line 390, bytecode pc 68
    return menuView;
});
