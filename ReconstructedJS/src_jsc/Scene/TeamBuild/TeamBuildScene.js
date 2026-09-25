// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/TeamBuild/TeamBuildScene.js:1
// source line 178, bytecode pc 163
(xs.Scene.TeamBuildListCell = cc.TableViewCell.extend({
    draw: function(ctx) {
    // source line 15, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 18, bytecode pc 12
    this._super();
    // source line 19, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function(size, playerId, playerData) {
    if (!this._super()) {
        // source line 23, bytecode pc 19
        return false;
    }
    // source line 26, bytecode pc 27
    (this.b_isForward = false);
    // source line 27, bytecode pc 35
    (this.b_isLocked = false);
    // source line 28, bytecode pc 43
    (this.b_isEmpty = false);
    // source line 29, bytecode pc 51
    (this.b_isSelected = false);
    // source line 31, bytecode pc 59
    (this.m_bg = null);
    // source line 32, bytecode pc 67
    (this.m_head = null);
    // source line 33, bytecode pc 75
    (this.m_icon = null);
    // source line 34, bytecode pc 83
    (this.m_teamData = null);
    // source line 35, bytecode pc 91
    (this.m_selectedIcon = null);
    // source line 36, bytecode pc 99
    (this.m_lockIcon = null);
    // source line 37, bytecode pc 108
    (this.m_spGuideTag = -1);
    // source line 38, bytecode pc 116
    (this.b_joinEnable = false);
    // source line 40, bytecode pc 133
    this.setContentSize(size);
    // source line 42, bytecode pc 143
    (this.m_playerId = playerId);
    // source line 43, bytecode pc 153
    (this.m_playerData = playerData);
    // source line 46, bytecode pc 217
    (this.m_title = cc.LabelTTF.create("", xsc.Tools.ProductSys.getOurttf(), 40));
    // source line 49, bytecode pc 296
    xs.Utils.Node.attachNodes(this, this.m_title, { desc: "c" }, xs.Scene.TeamBuildListCell.cfg.m_title);
    // source line 51, bytecode pc 298
    return true;
},
    updateView: function() {
    var general, _idx;
    // source line 57, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this.m_bg);
    // source line 58, bytecode pc 41
    (this.m_bg = null);
    // source line 59, bytecode pc 75
    xs.Utils.Node.safeRemoveChild(this.m_icon);
    // source line 60, bytecode pc 83
    (this.m_icon = null);
    // source line 61, bytecode pc 117
    xs.Utils.Node.safeRemoveChild(this.m_selectedIcon);
    // source line 62, bytecode pc 125
    (this.m_selectedIcon = null);
    // source line 63, bytecode pc 159
    xs.Utils.Node.safeRemoveChild(this.m_lockIcon);
    // source line 64, bytecode pc 167
    (this.m_lockIcon = null);
    // source line 66, bytecode pc 187
    this.m_title.setVisible(false);
    if (this.m_teamData) {
        // source line 70, bytecode pc 270
        (general = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getGeneral(this.m_teamData));
        if (general) {
            if (!this.m_head) {
                // source line 73, bytecode pc 311
                (this.m_head = general.createIcon_TeamBuild());
                // source line 74, bytecode pc 366
                xs.Utils.Node.attachNodes(this, this.m_head, { desc: "c" }, null);
            }
            // source line 77, bytecode pc 388
            this.m_head.reloadData(general);
            // source line 78, bytecode pc 468
            (_idx = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getInTeamPos(general.getPkId()));
            // source line 79, bytecode pc 490
            this.m_head.reloadData_TeamIdx(_idx);
            if (!xs.Guide.GuideMgr.getIsOver()) {
                // source line 82, bytecode pc 547
                this.m_head.setGuideTag(this.m_spGuideTag);
            }
        }
    }
    if ((this.b_isEmpty || this.b_isLocked)) {
        // source line 89, bytecode pc 615
        (this.m_bg = xs.Factorys.Sprite.create("button_kongzhikuang", "Cmn01"));
        // source line 91, bytecode pc 668
        xs.Utils.Node.attachNodes(this, this.m_bg, { desc: "c" });
        if (!xs.Guide.GuideMgr.getIsOver()) {
            // source line 94, bytecode pc 725
            this.m_bg.setGuideTag(this.m_spGuideTag);
        }
        // source line 96, bytecode pc 770
        (this.m_icon = xs.Factorys.Sprite.create("icon_kongTouxiang", "Cmn01"));
        // source line 98, bytecode pc 823
        xs.Utils.Node.attachNodes(this, this.m_icon, { desc: "c" });
        if (this.b_isLocked) {
            // source line 103, bytecode pc 854
            this.m_title.setVisible(true);
            // source line 104, bytecode pc 899
            (this.m_lockIcon = xs.Factorys.Sprite.create("icon_touxiangSuo", "Cmn01"));
            // source line 106, bytecode pc 952
            xs.Utils.Node.attachNodes(this, this.m_lockIcon, { desc: "c" });
        }
    }
    if (this.b_isSelected) {
        // source line 112, bytecode pc 1008
        (this.m_selectedIcon = xs.Factorys.Sprite.create("head_select", "Cmn02"));
        // source line 113, bytecode pc 1057
        this.m_selectedIcon.setZOrder(xs.Scene.TeamBuildListCell.cfg.m_selectedIcon.zOrder);
        // source line 115, bytecode pc 1110
        xs.Utils.Node.attachNodes(this, this.m_selectedIcon, { desc: "c" });
    }
    if (this.b_joinEnable) {
        if (!this.m_joinEnabledIcon) {
            // source line 123, bytecode pc 1178
            (this.m_joinEnabledIcon = xs.Factorys.Sprite.create("icon_lt_joinEnabled", "Cmn02"));
            // source line 124, bytecode pc 1199
            this.m_joinEnabledIcon.setZOrder(10);
            // source line 126, bytecode pc 1279
            xs.Utils.Node.attachNodes(this, this.m_joinEnabledIcon, { desc: "c", offset: cc.p(-20, 20) });
        } else {
            // source line 129, bytecode pc 1304
            this.m_joinEnabledIcon.setVisible(true);
        }
    } else {
        if (this.m_joinEnabledIcon) {
            // source line 133, bytecode pc 1340
            this.m_joinEnabledIcon.setVisible(false);
        }
    }
},
    setLockLv: function(lv) {
    // source line 139, bytecode pc 54
    this.m_title.setString((lv + xs.Tools.String.createString("auto_name_206")));
},
    setTeamData: function(data) {
    // source line 142, bytecode pc 9
    (this.m_teamData = data);
    // source line 143, bytecode pc 22
    this.updateView();
},
    setIsEmpty: function(empty) {
    if ((this.b_isEmpty !== empty)) {
        // source line 147, bytecode pc 24
        (this.b_isEmpty = empty);
        // source line 148, bytecode pc 37
        this.updateView();
    }
},
    setIsLocked: function(locked) {
    if ((this.b_isLocked !== locked)) {
        // source line 153, bytecode pc 24
        (this.b_isLocked = locked);
        // source line 154, bytecode pc 37
        this.updateView();
    }
},
    setIsSelected: function(selected) {
    if ((this.b_isSelected !== selected)) {
        // source line 159, bytecode pc 24
        (this.b_isSelected = selected);
        // source line 160, bytecode pc 37
        this.updateView();
    }
},
    setSpGuideTag: function(tag) {
    if ((this.m_spGuideTag !== tag)) {
        // source line 165, bytecode pc 24
        (this.m_spGuideTag = tag);
        // source line 166, bytecode pc 37
        this.updateView();
    }
},
    setJoinEnabled: function(bEnable) {
    if ((this.b_joinEnable !== bEnable)) {
        // source line 172, bytecode pc 24
        (this.b_joinEnable = bEnable);
        // source line 173, bytecode pc 37
        this.updateView();
    }
},
    setRedHintShow: function(isShow) {
    if (isShow) {
        if (!this.hintPoint) {
            // source line 181, bytecode pc 64
            (this.hintPoint = xs.Factorys.Sprite.create("Cmn01_Hint_Point", "Cmn01"));
            // source line 182, bytecode pc 113
            this.hintPoint.setZOrder(xs.Scene.TeamBuildListCell.cfg.m_hintPoint.zOrder);
            // source line 185, bytecode pc 193
            xs.Utils.Node.attachNodes(this, this.hintPoint, { desc: "c", offset: cc.p(40, 40) });
        }
    } else {
        if (this.hintPoint) {
            // source line 191, bytecode pc 227
            this.hintPoint.removeFromParent();
            // source line 192, bytecode pc 235
            (this.hintPoint = null);
        }
    }
}
}));
// source line 209, bytecode pc 264
(xs.Scene.TeamBuildListCell.cfg = {
    m_title: { zOrder: 5, tag: -1 },
    m_hintPoint: { zOrder: 20, tag: -1 },
    m_selectedIcon: { zOrder: 1, tag: -1 }
});
// source line 213, bytecode pc 290
(xs.Scene.TeamBuildListCell.create = function(size, playerId, playerData) {
    var cell;
    // source line 214, bytecode pc 23
    (cell = new xs.Scene.TeamBuildListCell());
    if ((cell && cell.init(size, playerId, playerData))) {
        // source line 216, bytecode pc 67
        return cell;
    }
    // source line 219, bytecode pc 69
    return null;
});
// source line 1521, bytecode pc 874
(xs.Scene.TeamBuildLayer = cc.Layer.extend({
    name: "TeamBuildLayer",
    ctor: function() {
    // source line 229, bytecode pc 12
    this._super();
    // source line 230, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(playerId, playerData) {
    var visibleSize, visibleOrigin, teamMaxLength, queueTeamMenuItem, generalBody_width, generalBody_height, pos;
    if (!this._super()) {
        // source line 234, bytecode pc 19
        return false;
    }
    // source line 237, bytecode pc 27
    (this.m_teamNumInfo = null);
    // source line 238, bytecode pc 35
    (this.m_teamList = null);
    // source line 239, bytecode pc 43
    (this.m_teamListSize = null);
    // source line 240, bytecode pc 51
    (this.m_teamListCellSize = null);
    // source line 242, bytecode pc 59
    (this.m_gInfo = null);
    // source line 243, bytecode pc 67
    (this.m_cntInfo = null);
    // source line 244, bytecode pc 75
    (this.m_baseTouchPriority = 0);
    // source line 245, bytecode pc 83
    (this.m_mainMenu = null);
    // source line 246, bytecode pc 91
    (this.m_replaceDialog = null);
    // source line 248, bytecode pc 99
    (this.m_curTeamData = null);
    // source line 249, bytecode pc 107
    (this.m_curTeamListIndex = null);
    // source line 250, bytecode pc 115
    (this.m_curItemData = null);
    // source line 251, bytecode pc 124
    (this.m_curItemIndex = -1);
    // source line 254, bytecode pc 136
    (this.m_iconBtns = []);
    // source line 255, bytecode pc 144
    (this.m_generalOrbitIcon = null);
    // source line 256, bytecode pc 152
    (this.m_generalName = null);
    // source line 257, bytecode pc 160
    (this.m_generalFightAndStrikInfo = null);
    // source line 258, bytecode pc 168
    (this.m_teamListBg = null);
    // source line 259, bytecode pc 176
    (this.m_totalFightBef = 0);
    // source line 261, bytecode pc 184
    (this.m_closeBtn = null);
    // source line 262, bytecode pc 192
    (this.m_instructionBtn = null);
    // source line 264, bytecode pc 202
    (this.m_playerId = playerId);
    // source line 265, bytecode pc 212
    (this.m_playerData = playerData);
    // source line 266, bytecode pc 220
    (this.b_isSelf = true);
    if ((this.m_playerId && this.m_playerData)) {
        // source line 269, bytecode pc 251
        (this.b_isSelf = false);
    }
    if ((this.m_playerId && !this.m_playerData)) {
        // source line 273, bytecode pc 314
        xs.assert(false, "playerData is null!", this.m_playerId, this.m_playerData);
    }
    if ((!this.m_playerId && this.m_playerData)) {
        // source line 276, bytecode pc 377
        xs.assert(false, "playerId is null!", this.m_playerId, this.m_playerData);
    }
    // source line 283, bytecode pc 402
    (visibleSize = xs.director.getVisibleSize());
    // source line 284, bytecode pc 427
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 288, bytecode pc 467
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_Toast);
    // source line 291, bytecode pc 510
    (this.hintInfo = xs.Profile.GameData.Mgr.getInstance().Hint);
    // source line 292, bytecode pc 528
    this.hintInfo.updateTeamHintInfo();
    // source line 295, bytecode pc 536
    (this.m_curTeamListIndex = 0);
    // source line 296, bytecode pc 578
    (this.m_teamListSize = cc.size(((visibleSize.width - 210) - 35), 106));
    // source line 297, bytecode pc 643
    (teamMaxLength = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getTeamMaxLength());
    // source line 299, bytecode pc 687
    (this.m_teamListCellSize = cc.size((this.m_teamListSize.width / 7.5), 106));
    // source line 303, bytecode pc 746
    (this.m_teamListSize = cc.size((this.m_teamListSize.width - this.m_teamListCellSize.width), this.m_teamListSize.height));
    // source line 305, bytecode pc 783
    (this.m_teamList = cc.TableView.create(this, this.m_teamListSize));
    // source line 306, bytecode pc 812
    this.m_teamList.setDirection(cc.SCROLLVIEW_DIRECTION_HORIZONTAL);
    // source line 307, bytecode pc 841
    this.m_teamList.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 308, bytecode pc 861
    this.m_teamList.setDelegate(this);
    // source line 309, bytecode pc 881
    this.m_teamList.setBounceable(false);
    // source line 317, bytecode pc 991
    xs.Utils.Node.attachNodes(this, this.m_teamList, { desc: "lt", sc: true, offset: { x: 100, y: -110 } }, xs.Cfg.Scene.TeamBuildScene.m_teamList);
    // source line 318, bytecode pc 1004
    this.showPageArrowByTeam();
    // source line 321, bytecode pc 1043
    (this.m_buddyBtn = xs.Views.Btn.createByStyleId("BS_BuddyBtn"));
    // source line 329, bytecode pc 1198
    xs.Utils.Node.attachNodes(this, this.m_buddyBtn, {
    desc: "lt",
    sc: true,
    offset: {
        x: (((75 + this.m_teamListSize.width) + (this.m_teamListCellSize.width / 2)) + 55),
        y: (-115 + (this.m_teamListCellSize.height / 2))
    }
}, xs.Cfg.Scene.TeamBuildScene.m_buddyBtn);
    // source line 349, bytecode pc 1235
    this.m_buddyBtn.setOnClickCallBack(function() {
    var param;
    // source line 333, bytecode pc 29
    xs.log(("m_curTeamListIndex" + this.m_curTeamPosIdx));
    // source line 337, bytecode pc 61
    (param = { playerId: this.m_playerId, playerData: this.m_playerData });
    if (this.b_isSelf) {
        // source line 342, bytecode pc 109
        xs.Scene.Mgr.changeSceneByName("BuddyScene", param);
    } else {
        // source line 346, bytecode pc 151
        xs.Views.Mgr.showDialogByName("BuddyInfoDialog", param);
    }
}.bind(this));
    // source line 351, bytecode pc 1268
    (this.m_teamListBg = xs.Views.EventLayer.create());
    // source line 353, bytecode pc 1320
    this.m_teamListBg.setContentSize(cc.size((visibleSize.width - 220), 130));
    // source line 361, bytecode pc 1430
    xs.Utils.Node.attachNodes(this, this.m_teamListBg, { desc: "lt", sc: true, offset: { x: 20, y: -110 } }, xs.Cfg.Scene.TeamBuildScene.m_teamListBg);
    if (this.b_isSelf) {
        // source line 365, bytecode pc 1528
        (queueTeamMenuItem = cc.MenuItemImage.create(xs.Cfg.Sprite.ZuiduiMenuScene01.btn_quequeTeam.frameName, xs.Cfg.Sprite.ZuiduiMenuScene01.btn_quequeTeam.frameName));
        // source line 366, bytecode pc 1607
        queueTeamMenuItem.setNormalSpriteFrame(cc.SpriteFrameCache.getInstance().getSpriteFrame(xs.Cfg.Sprite.ZuiduiMenuScene01.btn_quequeTeam.frameName));
        // source line 367, bytecode pc 1631
        queueTeamMenuItem.setCallback(this.queueTeamCallback, this);
        // source line 370, bytecode pc 1663
        (this.m_generalMenu = cc.Menu.create(queueTeamMenuItem));
        // source line 375, bytecode pc 1775
        xs.Utils.Node.attachNodes(this, this.m_generalMenu, { desc: "lt", sc: true, offset: cc.p(45, -60) }, xs.Cfg.Scene.TeamBuildScene.m_generalMenu);
    }
    // source line 379, bytecode pc 1788
    this.initIconBtns();
    // source line 381, bytecode pc 1804
    (generalBody_width = (visibleSize.width - 400));
    // source line 382, bytecode pc 1818
    (generalBody_height = (visibleSize.height - 0));
    // source line 385, bytecode pc 1876
    (this.m_gInfo = xs.Views.GeneralSwapView.create(cc.size(generalBody_width, generalBody_height)));
    // source line 387, bytecode pc 1896
    this.m_gInfo.setListener(this);
    // source line 388, bytecode pc 1925
    this.m_gInfo.setOffsetY(((generalBody_height / 2) - 180));
    // source line 390, bytecode pc 1949
    this.m_gInfo.setMaxScale(0.86);
    // source line 391, bytecode pc 1962
    this.reloadGeneralSwapView();
    // source line 399, bytecode pc 2072
    xs.Utils.Node.attachNodes(this, this.m_gInfo, { desc: "lb", sc: true, offset: { x: 150, y: 0 } }, xs.Cfg.Scene.TeamBuildScene.m_gInfo);
    // source line 405, bytecode pc 2119
    (this.m_cntInfo = xs.Views.TeamCntPopView.create(this.m_playerId, this.m_playerData));
    // source line 406, bytecode pc 2162
    this.m_cntInfo.setAnchorPoint(cc.p(0.5, 0));
    // source line 412, bytecode pc 2245
    xs.Utils.Node.attachNodes(this, this.m_cntInfo, { desc: "cb", sc: true, offset: { x: -56, y: 0 } });
    // source line 417, bytecode pc 2292
    (this.m_generalFightAndStrikInfo = xs.Views.TeamGeneralFightAndStrikeView.create(this.m_playerId, this.m_playerData));
    // source line 423, bytecode pc 2396
    xs.Utils.Node.attachNodes(this, this.m_generalFightAndStrikInfo, { desc: "rt", sc: true, offset: { x: (((-visibleSize.width * 9) / 40) - 174), y: -200 } });
    if (this.b_isSelf) {
        // source line 430, bytecode pc 2470
        (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, true, xs.Cfg.Scene.TeamBuildScene.m_mainMenu));
        // source line 434, bytecode pc 2514
        (this.m_instructionBtn = xs.Tools.Views.Btn.createInstruction("team_Instruction"));
        // source line 438, bytecode pc 2613
        xs.Utils.Node.attachNodes(this, this.m_instructionBtn, { desc: "lb", offset: cc.p(((visibleSize.width * 9) / 40), 190), sc: true });
        // source line 441, bytecode pc 2628
        this.setBaseTouchPriority(0);
    } else {
        // source line 444, bytecode pc 2672
        (this.m_closeBtn = xs.Views.Btn.create("Btn_CircleRedClose"));
        // source line 445, bytecode pc 2710
        this.m_closeBtn.setOnClickCallBack(this.closeBtnCallback.bind(this));
        // source line 446, bytecode pc 2794
        xs.Utils.Node.attachNodes(this, this.m_closeBtn, { desc: "rt", sc: true, offset: { x: -55, y: -64 } });
    }
    // source line 456, bytecode pc 2799
    (pos = 0);
    // source line 458, bytecode pc 2884
    this.setCurTeamData(xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getTeamGeneralInPos((pos + 1)), pos);
    // source line 465, bytecode pc 2886
    return true;
},
    onEnter: function() {
    // source line 468, bytecode pc 12
    this._super();
    // source line 469, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.updateView, xs.Constant_Notify_ModelChange_Skill);
    // source line 470, bytecode pc 106
    xs.Utils.Notify.addObserver(this, this.updateView, xs.Constant_Notify_ModelChange_Equ);
    // source line 471, bytecode pc 153
    xs.Utils.Notify.addObserver(this, this.refreshData, xs.Constant_Notify_ModelChange_TeamGeneral);
    // source line 472, bytecode pc 200
    xs.Utils.Notify.addObserver(this, this.refreshData, xs.Constant_Notify_ModelChange_General);
    // source line 475, bytecode pc 247
    xs.Utils.Notify.addObserver(this, this.updateHint, xs.Constant_Notify_HintChange_TeamInfo);
},
    onEnterTransitionDidFinish: function() {
    // source line 481, bytecode pc 12
    this._super();
    // source line 484, bytecode pc 90
    xs.Guide.GuideMgr.endStepBySequence([ "40103", "50101_before", "70103", "150104", "160104" ]);
},
    onExit: function() {
    // source line 488, bytecode pc 39
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_Skill);
    // source line 489, bytecode pc 79
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_Equ);
    // source line 490, bytecode pc 119
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_TeamGeneral);
    // source line 491, bytecode pc 159
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_General);
    // source line 493, bytecode pc 199
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_HintChange_TeamInfo);
    // source line 494, bytecode pc 212
    this._super();
},
    onExitTransitionDidStart: function() {
    // source line 497, bytecode pc 12
    this._super();
},
    updateHint: function() {
    // source line 504, bytecode pc 12
    this.updateIconBtns();
    // source line 505, bytecode pc 25
    this.updateTeamList();
},
    setBaseTouchPriority: function(priority) {
    var i;
    // source line 509, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 510, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 511, bytecode pc 85
    this.m_teamList.setTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.TeamBuildScene.m_teamList.priority));
    // source line 512, bytecode pc 141
    this.m_teamListBg.setTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.TeamBuildScene.m_teamListBg.priority));
    // source line 513, bytecode pc 197
    this.m_gInfo.setTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.TeamBuildScene.m_gInfo.priority));
    // source line 514, bytecode pc 253
    this.m_buddyBtn.setTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.TeamBuildScene.m_buddyBtn.priority));
    // source line 516, bytecode pc 258
    (i = 0);
    while ((i < this.m_iconBtns.length)) {
        // source line 517, bytecode pc 324
        this.m_iconBtns[i].setTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.TeamBuildScene.m_iconBtn.priority));
        // source line 516, bytecode pc 337
        (i = (+i + 1));
    }
    if (this.b_isSelf) {
        // source line 521, bytecode pc 425
        this.m_generalMenu.setTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.TeamBuildScene.m_generalMenu.priority));
        // source line 522, bytecode pc 481
        this.m_mainMenu.setBaseTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.TeamBuildScene.m_mainMenu.priority));
        // source line 523, bytecode pc 537
        this.m_instructionBtn.setTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.TeamBuildScene.m_instructionBtn.priority));
    } else {
        // source line 525, bytecode pc 598
        this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.TeamBuildScene.m_closeBtn.priority));
    }
},
    closeBtnCallback: function() {
    // source line 529, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    initIconBtns: function() {
    var visibleSize, y_inc, i, btn, _desc, offset_x, offset_y;
    // source line 532, bytecode pc 24
    (visibleSize = xs.director.getVisibleSize());
    // source line 533, bytecode pc 42
    (y_inc = ((visibleSize.height - 120) / 4));
    // source line 536, bytecode pc 47
    (i = 0);
    while ((i < 8)) {
        // source line 538, bytecode pc 97
        (btn = xs.Views.TeamIconButton.create(this.m_playerId, this.m_playerData));
        // source line 541, bytecode pc 106
        (_desc = "lb");
        // source line 542, bytecode pc 112
        (offset_x = 90);
        // source line 543, bytecode pc 132
        (offset_y = (((i % 4) + 0.5) * y_inc));
        if ((i > 3)) {
            // source line 545, bytecode pc 152
            (_desc = "rb");
            // source line 546, bytecode pc 161
            (offset_x = -190);
        }
        // source line 550, bytecode pc 182
        btn.setIconName("");
        // source line 551, bytecode pc 203
        btn.setIndex((i + 1));
        // source line 552, bytecode pc 227
        btn.setCallback(this.iconBtnCallback, this);
        // source line 553, bytecode pc 249
        this.m_iconBtns.push(btn);
        // source line 566, bytecode pc 356
        xs.Utils.Node.attachNodes(this, btn, { desc: _desc, sc: true, offset: { x: offset_x, y: offset_y } }, xs.Cfg.Scene.TeamBuildScene.m_iconBtn);
        if ((i === 5)) {
            if (!xs.Guide.GuideMgr.getIsOver()) {
                // source line 573, bytecode pc 418
                btn.setGuideTag(3010);
            }
        }
        if ((i === 1)) {
            if (!xs.Guide.GuideMgr.getIsOver()) {
                // source line 579, bytecode pc 479
                btn.setGuideTag(4011);
            }
        }
        // source line 536, bytecode pc 492
        (i = (+i + 1));
    }
},
    updateIconBtns: function() {
    var level, lockLv_second, lockLv_first, general, i;
    // source line 587, bytecode pc 75
    (level = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Player.getPlayer().getPlayerLevel());
    // source line 588, bytecode pc 151
    (lockLv_second = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getOpenLevelByLieutenantPos(xs.Constant_Lieutenant_Pos_Second));
    // source line 589, bytecode pc 175
    this.m_iconBtns[0].setLockLv(lockLv_second);
    if ((level >= lockLv_second)) {
        // source line 592, bytecode pc 209
        this.m_iconBtns[0].setIsLocked(false);
    } else {
        // source line 594, bytecode pc 236
        this.m_iconBtns[0].setIsLocked(true);
    }
    // source line 596, bytecode pc 312
    (lockLv_first = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getOpenLevelByLieutenantPos(xs.Constant_Lieutenant_Pos_First));
    // source line 597, bytecode pc 336
    this.m_iconBtns[1].setLockLv(lockLv_first);
    if ((level >= lockLv_first)) {
        // source line 600, bytecode pc 370
        this.m_iconBtns[1].setIsLocked(false);
    } else {
        // source line 602, bytecode pc 397
        this.m_iconBtns[1].setIsLocked(true);
    }
    if (this.m_curTeamData) {
        // source line 606, bytecode pc 480
        (general = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getGeneral(this.m_curTeamData));
        if (general) {
            // source line 611, bytecode pc 596
            this.m_iconBtns[0].setData(xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Generals.getLieutenantByPkIdAndPos(general.getPkId(), xs.Constant_Lieutenant_Pos_Second));
            // source line 615, bytecode pc 704
            this.m_iconBtns[1].setData(xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Generals.getLieutenantByPkIdAndPos(general.getPkId(), xs.Constant_Lieutenant_Pos_First));
            // source line 620, bytecode pc 813
            this.m_iconBtns[2].setData(xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Skills.getSkillByGeneralPkIdAndPos(general.getPkId(), xs.Constant_Skill_Pos_Second));
            // source line 625, bytecode pc 922
            this.m_iconBtns[3].setData(xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Skills.getSkillByGeneralPkIdAndPos(general.getPkId(), xs.Constant_Skill_Pos_First));
            // source line 630, bytecode pc 1031
            this.m_iconBtns[4].setData(xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Equipments._getEquipmentGeneralPkIdAndPos(general.getPkId(), xs.Constant_Equ_PosType_Kit));
            // source line 635, bytecode pc 1140
            this.m_iconBtns[5].setData(xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Equipments._getEquipmentGeneralPkIdAndPos(general.getPkId(), xs.Constant_Equ_PosType_Mount));
            // source line 640, bytecode pc 1249
            this.m_iconBtns[6].setData(xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Equipments._getEquipmentGeneralPkIdAndPos(general.getPkId(), xs.Constant_Equ_PosType_Armor));
            // source line 645, bytecode pc 1358
            this.m_iconBtns[7].setData(xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Equipments._getEquipmentGeneralPkIdAndPos(general.getPkId(), xs.Constant_Equ_PosType_Weapon));
        } else {
            // source line 648, bytecode pc 1368
            (i = 0);
            while ((i < this.m_iconBtns.length)) {
                // source line 649, bytecode pc 1398
                this.m_iconBtns[i].setData(null);
                // source line 648, bytecode pc 1411
                (i = (+i + 1));
            }
        }
    } else {
        // source line 653, bytecode pc 1442
        (i = 0);
        while ((i < this.m_iconBtns.length)) {
            // source line 654, bytecode pc 1472
            this.m_iconBtns[i].setData(null);
            // source line 655, bytecode pc 1496
            this.m_iconBtns[i].setEquipEnabled(false);
            // source line 653, bytecode pc 1509
            (i = (+i + 1));
        }
    }
    if (this.b_isSelf) {
        // source line 661, bytecode pc 1546
        (i = 0);
        while ((i < this.m_iconBtns.length)) {
            if (this.hintInfo.isEquipEnabled(this.m_curTeamPosIdx, i)) {
                // source line 663, bytecode pc 1609
                this.m_iconBtns[i].setEquipEnabled(true);
            } else {
                // source line 665, bytecode pc 1638
                this.m_iconBtns[i].setEquipEnabled(false);
            }
            // source line 661, bytecode pc 1651
            (i = (+i + 1));
        }
    }
},
    updateTeamList: function() {
    // source line 672, bytecode pc 12
    this.refreshTableViewWithOldPos();
},
    iconBtnCallback: function(index, data) {
    var general, lockLv;
    // source line 676, bytecode pc 36
    xs.log(((("iconBtnCallback......" + index) + "......") + data));
    if ((!this.m_curTeamData && (index !== 0))) {
        // source line 678, bytecode pc 61
        return void 0;
    } else {
        if (this.m_curTeamData) {
            // source line 681, bytecode pc 149
            (general = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getGeneral(this.m_curTeamData));
            if ((!general && (index !== 0))) {
                // source line 683, bytecode pc 171
                return void 0;
            }
        }
    }
    if ((index > 0)) {
        if (this.m_iconBtns[(index - 1)].getIsLocked()) {
            // source line 689, bytecode pc 236
            (lockLv = this.m_iconBtns[(index - 1)].getLockLv());
            // source line 690, bytecode pc 286
            xs.Views.Mgr.showDialogByName("InstructionDialog", { key: "team_Instruction" });
            // source line 691, bytecode pc 288
            return void 0;
        }
    }
    // source line 696, bytecode pc 298
    (this.m_curItemData = data);
    // source line 697, bytecode pc 308
    (this.m_curItemIndex = index);
    if (data) {
        // source line 700, bytecode pc 329
        this.showDetailDialog();
    } else {
        // source line 702, bytecode pc 347
        this.showReplaceDialog();
    }
},
    backCallback: function() {
    // source line 706, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("MainMenuScene");
},
    reloadGeneralSwapView: function() {
    var dataSource, teamGenerals, i, team, general, teamPosition;
    // source line 709, bytecode pc 8
    (dataSource = []);
    // source line 710, bytecode pc 73
    (teamGenerals = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getTeamGenerals());
    // source line 711, bytecode pc 78
    (i = 0);
    while ((i < teamGenerals.length)) {
        // source line 712, bytecode pc 95
        (team = teamGenerals[i]);
        // source line 713, bytecode pc 164
        (general = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getGeneral(team));
        // source line 714, bytecode pc 178
        (teamPosition = (team.general_position - 1));
        // source line 715, bytecode pc 189
        (dataSource[teamPosition] = general);
        // source line 711, bytecode pc 202
        (i = (+i + 1));
    }
    // source line 717, bytecode pc 242
    this.m_gInfo.setDataSource(dataSource);
},
    setCurTeamData: function(data, posIdx) {
    // source line 721, bytecode pc 9
    (this.m_curTeamData = data);
    // source line 722, bytecode pc 19
    (this.m_curTeamPosIdx = posIdx);
    // source line 723, bytecode pc 32
    this.updateView();
},
    updateView: function() {
    var general;
    if (this.m_curTeamData) {
        // source line 728, bytecode pc 82
        (general = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getGeneral(this.m_curTeamData));
        // source line 729, bytecode pc 104
        this.m_cntInfo.setGeneralData(general);
        // source line 730, bytecode pc 126
        this.m_generalFightAndStrikInfo.setGeneralData(general);
    } else {
        // source line 732, bytecode pc 151
        this.m_cntInfo.setGeneralData(null);
        // source line 733, bytecode pc 171
        this.m_generalFightAndStrikInfo.setGeneralData(null);
    }
    // source line 739, bytecode pc 184
    this.setUpIconAndName();
    // source line 740, bytecode pc 197
    this.updateIconBtns();
},
    setUpIconAndName: function() {
    var visibleSize, general, generalName;
    // source line 744, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this.m_generalOrbitIcon);
    // source line 745, bytecode pc 41
    (this.m_generalOrbitIcon = null);
    // source line 746, bytecode pc 75
    xs.Utils.Node.safeRemoveChild(this.m_generalName);
    // source line 747, bytecode pc 83
    (this.m_generalName = null);
    if (this.m_curTeamData) {
        // source line 750, bytecode pc 119
        (visibleSize = xs.director.getVisibleSize());
        // source line 753, bytecode pc 191
        (general = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getGeneral(this.m_curTeamData));
        if (general) {
            // source line 756, bytecode pc 220
            (this.m_generalOrbitIcon = general.createGradeSmallIcon());
            // source line 757, bytecode pc 244
            this.m_generalOrbitIcon.setScale(0.9);
            // source line 763, bytecode pc 343
            xs.Utils.Node.attachNodes(this, this.m_generalOrbitIcon, { desc: "lt", sc: true, offset: { x: ((visibleSize.width * 9) / 40), y: -155 } });
            // source line 767, bytecode pc 361
            (generalName = general.getNameString());
            // source line 768, bytecode pc 400
            (this.m_generalName = xs.Factorys.Label.createByStyleId("LS_wujiangName2"));
            // source line 769, bytecode pc 433
            this.m_generalName.setString(generalName.toWordBreak());
            // source line 770, bytecode pc 476
            this.m_generalName.setAnchorPoint(cc.p(0.5, 1));
            // source line 776, bytecode pc 575
            xs.Utils.Node.attachNodes(this, this.m_generalName, { desc: "lt", sc: true, offset: { x: ((visibleSize.width * 9) / 40), y: -190 } });
        }
    }
},
    refreshData: function() {
    var tempIndex;
    // source line 786, bytecode pc 9
    (tempIndex = this.m_curTeamListIndex);
    // source line 787, bytecode pc 18
    (this.m_curTeamListIndex = -1);
    // source line 789, bytecode pc 31
    this.refreshTableViewWithOldPos();
    // source line 790, bytecode pc 44
    this.reloadGeneralSwapView();
    // source line 791, bytecode pc 61
    this.setCurIndex(tempIndex);
},
    reloadData: function() {
    // source line 797, bytecode pc 78
    this.setCurTeamData(xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getTeamGeneralInPos(1), 0);
    // source line 798, bytecode pc 96
    this.m_teamList.reloadData();
    // source line 799, bytecode pc 109
    this.reloadGeneralSwapView();
    // source line 800, bytecode pc 124
    this.setTeamListCurIndex(0);
},
    setTeamListCurIndex: function(idx) {
    var oldIndex, x;
    if ((this.m_curTeamListIndex !== idx)) {
        // source line 806, bytecode pc 24
        (oldIndex = this.m_curTeamListIndex);
        // source line 807, bytecode pc 34
        (this.m_curTeamListIndex = idx);
        // source line 808, bytecode pc 56
        this.m_teamList.updateCellAtIndex(oldIndex);
        // source line 809, bytecode pc 81
        this.m_teamList.updateCellAtIndex(this.m_curTeamListIndex);
        // source line 811, bytecode pc 101
        (x = this.convertCardIndexToTeamListOffsetX(idx));
        // source line 813, bytecode pc 142
        this.m_teamList.setContentOffset(cc.p(x, 0));
    }
},
    setTeamListCurIndexWithOutScorll: function(idx) {
    var oldIndex;
    if ((this.m_curTeamListIndex !== idx)) {
        // source line 819, bytecode pc 24
        (oldIndex = this.m_curTeamListIndex);
        // source line 820, bytecode pc 34
        (this.m_curTeamListIndex = idx);
        // source line 821, bytecode pc 56
        this.m_teamList.updateCellAtIndex(oldIndex);
        // source line 822, bytecode pc 81
        this.m_teamList.updateCellAtIndex(this.m_curTeamListIndex);
    }
},
    setCurIndex: function(idx) {
    // source line 826, bytecode pc 16
    this.setTeamListCurIndex(idx);
    // source line 827, bytecode pc 38
    this.m_gInfo.setIndex(idx);
    // source line 828, bytecode pc 123
    this.setCurTeamData(xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getTeamGeneralInPos((idx + 1)), idx);
},
    updateCurIndex: function(idx) {
    // source line 831, bytecode pc 21
    this.m_teamList.updateCellAtIndex(idx);
    // source line 832, bytecode pc 43
    this.m_gInfo.setIndex(idx);
    // source line 833, bytecode pc 128
    this.setCurTeamData(xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getTeamGeneralInPos((idx + 1)), idx);
},
    queueTeamCallback: function() {
    // source line 836, bytecode pc 32
    xs.Views.Mgr.showDialogByName("MultiLineUpView");
},
    removeObjectAndCloseDialog: function() {
    var _itemData, _type, _position, _instance, param, _skillObj, _deputyObj;
    // source line 843, bytecode pc 9
    (_itemData = this.data);
    // source line 844, bytecode pc 19
    (_type = this.type);
    // source line 845, bytecode pc 29
    (_position = this.position);
    // source line 846, bytecode pc 39
    (_instance = this.instance);
    if (_instance.b_isSelf) {
        // source line 850, bytecode pc 62
        (param = {});
        // source line 851, bytecode pc 79
        (param.user_general_id = _itemData.general_pk_id);
        // source line 852, bytecode pc 91
        (param.position = _position);
        // source line 853, bytecode pc 103
        (param.type = _type);
        if ((_type == 4)) {
            // source line 857, bytecode pc 185
            (_skillObj = xs.Profile.GameData.Mgr.getInstance().Skills.getSkillByGeneralPkIdAndPos(_itemData.general_pk_id, xs.Constant_Skill_Pos_Second));
            if (_skillObj) {
                // source line 859, bytecode pc 210
                (param.object_instance_id = _skillObj.pk_id);
            }
            // source line 865, bytecode pc 266
            xs.Tools.Net.requestRemoveObject(param, function() {
    // source line 863, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 864, bytecode pc 46
    this._showFightChange(this.m_totalFightBef);
}.bind(_instance), _instance);
        } else {
            if ((_type == 1)) {
                // source line 869, bytecode pc 345
                (_deputyObj = xs.Profile.GameData.Mgr.getInstance().Generals.getLieutenantByPkIdAndPos(_itemData.general_pk_id, _position));
                if (_deputyObj) {
                    // source line 871, bytecode pc 370
                    (param.object_instance_id = _deputyObj.pk_id);
                }
                // source line 876, bytecode pc 426
                xs.Tools.Net.requestRemoveObject(param, function() {
    // source line 874, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 875, bytecode pc 46
    this._showFightChange(this.m_totalFightBef);
}.bind(_instance), _instance);
            }
        }
    }
},
    showReplaceDialog: function() {
    if ((this.m_curItemIndex === 4)) {
        // source line 885, bytecode pc 73
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_207"));
        // source line 886, bytecode pc 75
        return void 0;
    }
    if (this.b_isSelf) {
        // source line 889, bytecode pc 132
        (this.m_replaceDialog = xs.Views.Mgr.showDialogByName("ReplaceCardDialog", this.m_curItemIndex));
        // source line 890, bytecode pc 159
        this.m_replaceDialog.setReplaceData(this.m_curItemData, false);
        if (this.m_curTeamData) {
            // source line 894, bytecode pc 259
            this.m_replaceDialog.setOnGeneralData(xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getGeneral(this.m_curTeamData), false);
        }
        // source line 898, bytecode pc 299
        this.m_replaceDialog.getCardList().selectWithFiterIdx(xs.Constant_FilterIdx_canUse);
        // source line 899, bytecode pc 319
        this.m_replaceDialog.setListener(this);
    }
},
    showMiracleWeaponByGeneralId: function(dataList, id) {
    var listLength, i, weapon;
    // source line 903, bytecode pc 11
    (listLength = dataList.length);
    // source line 904, bytecode pc 16
    (i = 0);
    while ((i < listLength)) {
        // source line 905, bytecode pc 60
        (weapon = xs.Models.MagicalEqu.createWithJson(dataList[i]));
        if ((weapon.getGeneralId() == id)) {
            // source line 907, bytecode pc 120
            xs.Views.Mgr.showDialogByName("MiracleWeaponInforDialog", weapon);
            // source line 908, bytecode pc 122
            return void 0;
        }
        // source line 904, bytecode pc 137
        i++;
    }
    // source line 911, bytecode pc 210
    xs.Views.Mgr.showToast(xs.Tools.String.createString("MiracleWeapon_kaiqi"));
},
    goToSelectMiracleWeapons: function() {
    var List, _index, data;
    if (xs.isShowMagic) {
        // source line 917, bytecode pc 65
        (List = xs.Profile.GameData.Mgr.getInstance().MagicalEqus.getAll());
        if ((List.length === 0)) {
            // source line 919, bytecode pc 140
            xs.Views.Mgr.showToast(xs.Tools.String.createString("MiracleWeapon_null"));
        } else {
            // source line 922, bytecode pc 214
            (_index = xs.Profile.GameData.Mgr.getInstance().MagicalEqus.getIndexByGeneralId(this.m_curItemData.getId()));
            // source line 925, bytecode pc 240
            (data = { list: List, index: _index });
            // source line 927, bytecode pc 277
            xs.Scene.Mgr.changeSceneByName("SelectMiracleWeaponsScene", data);
        }
    } else {
        // source line 931, bytecode pc 342
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_51"));
    }
},
    requestOthersMiracleWeaponInfor: function() {
    // source line 951, bytecode pc 58
    xs.Tools.Net.requestOthersMiracleWeapon({ other_user_id: this.m_playerId }, function(data) {
    var weaponData;
    if (data.info[this.m_playerId]) {
        // source line 942, bytecode pc 38
        (weaponData = data.info[this.m_playerId]);
        if (weaponData.cmn.magic_info) {
            // source line 945, bytecode pc 101
            this.showMiracleWeaponByGeneralId(weaponData.cmn.magic_info, this.m_curItemData.getId());
        }
    }
}, function(data) {
}, this);
},
    showDetailDialog: function() {
    var _position, _unUseButton, _changeSkillButton, _lv;
    // source line 956, bytecode pc 6
    switch (this.m_curItemIndex) {
        case 0:
        // source line 962, bytecode pc 133
        (this.detailDialog = xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: this.m_curItemData, playerId: this.m_playerId, playerData: this.m_playerData }));
        if (this.b_isSelf) {
            // source line 966, bytecode pc 179
            this.detailDialog.setDisplayType({ type: "team" });
            // source line 968, bytecode pc 217
            this.detailDialog.setMiddleCB(this.goToSelectMiracleWeapons.bind(this));
            // source line 971, bytecode pc 255
            this.detailDialog.setUnUseCB(this.showReplaceDialog.bind(this));
        } else {
            // source line 975, bytecode pc 295
            this.detailDialog.setDisplayType({ type: "others_team" });
            // source line 977, bytecode pc 333
            this.detailDialog.setRightCB(this.requestOthersMiracleWeaponInfor.bind(this));
        }
        break;
        case 1:
        case 2:
        // source line 985, bytecode pc 414
        (this.m_totalFightBef = xs.Utils.clone(xs.Profile.GameData.Mgr.getInstance().Team.getTeamTotalFighting()));
        // source line 989, bytecode pc 493
        (this.detailDialog = xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: this.m_curItemData, playerId: this.m_playerId, playerData: this.m_playerData }));
        if (this.b_isSelf) {
            // source line 993, bytecode pc 539
            this.detailDialog.setDisplayType({ type: "Deputy_General" });
            if ((this.m_curItemIndex == 1)) {
                // source line 996, bytecode pc 558
                (_position = 2);
            }
            if ((this.m_curItemIndex == 2)) {
                // source line 999, bytecode pc 577
                (_position = 1);
            }
            // source line 1001, bytecode pc 615
            this.detailDialog.setLeftCB(this.showReplaceDialog.bind(this));
            // source line 1002, bytecode pc 653
            this.detailDialog.setMiddleCB(this.goToSelectMiracleWeapons.bind(this));
            // source line 1003, bytecode pc 727
            this.detailDialog.setUnUseCB(this.removeObjectAndCloseDialog.bind({ instance: this, data: this.m_curTeamData, type: 1, position: _position }));
        } else {
            // source line 1006, bytecode pc 767
            this.detailDialog.setDisplayType({ type: "others_team" });
            // source line 1008, bytecode pc 805
            this.detailDialog.setRightCB(this.requestOthersMiracleWeaponInfor.bind(this));
        }
        break;
        case 3:
        case 4:
        // source line 1018, bytecode pc 889
        (this.detailDialog = xs.Views.Mgr.showDialogByName("DetailDialogSkill", { skillData: this.m_curItemData, playerId: this.m_playerId, playerData: this.m_playerData }));
        if (this.b_isSelf) {
            // source line 1022, bytecode pc 905
            (_position = 0);
            if ((this.m_curItemIndex == 3)) {
                // source line 1024, bytecode pc 995
                (this.m_totalFightBef = xs.Utils.clone(xs.Profile.GameData.Mgr.getInstance().Team.getTeamTotalFighting()));
                // source line 1025, bytecode pc 1001
                (_position = 2);
                // source line 1026, bytecode pc 1039
                this.detailDialog.setChangSkillCB(this.showReplaceDialog.bind(this));
                // source line 1027, bytecode pc 1114
                this.detailDialog.setUnUseCB(this.removeObjectAndCloseDialog.bind({ instance: this, data: this.m_curTeamData, type: 4, position: _position }));
            }
            if ((this.m_curItemIndex == 4)) {
                // source line 1030, bytecode pc 1133
                (_position = 1);
                // source line 1031, bytecode pc 1157
                this.detailDialog.setUnUseCB(function() {
    // source line 1032, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_208"));
});
                // source line 1034, bytecode pc 1178
                (_unUseButton = this.detailDialog.getUnUseButton());
                if (_unUseButton) {
                    // source line 1036, bytecode pc 1203
                    _unUseButton.setEnabled(false);
                    // source line 1037, bytecode pc 1220
                    _unUseButton.setEventOnDisable(true);
                }
                // source line 1039, bytecode pc 1241
                (_changeSkillButton = this.detailDialog.getChangeSkillButton());
                if (_changeSkillButton) {
                    // source line 1041, bytecode pc 1266
                    _changeSkillButton.setEnabled(false);
                    // source line 1042, bytecode pc 1283
                    _changeSkillButton.setEventOnDisable(true);
                    // source line 1043, bytecode pc 1307
                    this.detailDialog.setChangSkillCB(function() {
    // source line 1044, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_207"));
});
                }
            }
        } else {
            // source line 1051, bytecode pc 1343
            this.detailDialog.setDisplayType({ flag: false });
        }
        break;
        case 5:
        case 6:
        case 7:
        case 8:
        // source line 1065, bytecode pc 1433
        (this.detailDialog = xs.Views.Mgr.showDialogByName("DetailDialogEquip", {
    equipData: this.m_curItemData,
    playerId: this.m_playerId,
    playerData: this.m_playerData,
    isSmallView: true
}));
        if (this.b_isSelf) {
            // source line 1068, bytecode pc 1482
            this.detailDialog.setChangEquipCB(this.showReplaceDialog.bind(this));
            // source line 1069, bytecode pc 1544
            (_lv = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLevel());
            if ((_lv >= xs.Tools.CfgData.getGlobalConf("RefineEquip_Unlock_Level"))) {
                // source line 1072, bytecode pc 1605
                this.detailDialog.setUnUseCB(null);
            } else {
                // source line 1075, bytecode pc 1646
                this.detailDialog._panel.getButtonUnUse().setEnabled(false);
                // source line 1076, bytecode pc 1682
                this.detailDialog._panel.getButtonUnUse().setEventOnDisable(true);
                // source line 1077, bytecode pc 1706
                this.detailDialog.setUnUseCB(function() {
    // source line 1078, bytecode pc 92
    xs.Views.Mgr.showToast((xs.Tools.CfgData.getGlobalConf("RefineEquip_Unlock_Level") + xs.Tools.String.createString("auto_name_209")));
});
            }
        } else {
            // source line 1084, bytecode pc 1742
            this.detailDialog.setDisplayType({ flag: false });
        }
        break;
        default:
        break;
    }
},
    _showFightChange: function(bef) {
    var totalFightCur, change, _style;
    // source line 1095, bytecode pc 50
    (totalFightCur = xs.Profile.GameData.Mgr.getInstance().Team.getTeamTotalFighting());
    // source line 1096, bytecode pc 61
    (change = (totalFightCur - bef));
    if ((change > 0)) {
        // source line 1099, bytecode pc 88
        (change = ("+" + change));
        // source line 1100, bytecode pc 97
        (_style = "LS_Fight_Cure");
    } else {
        if ((change < 0)) {
            // source line 1103, bytecode pc 121
            (_style = "LS_Fight_Hurt");
        }
    }
    if ((change === 0)) {
        // source line 1108, bytecode pc 191
        xs.Views.Mgr.showFlutterView(xs.Tools.String.createString("auto_name_210"));
    } else {
        // source line 1114, bytecode pc 264
        xs.Views.Mgr.showFlutterView((xs.Tools.String.createString("auto_name_211") + change), _style);
    }
    // source line 1119, bytecode pc 312
    xs.Profile.GameData.Mgr.getInstance().Hint.updateTeamHintInfo();
},
    Net_ReplaceTeamGeneral: function(newGeneral) {
    var param;
    // source line 1125, bytecode pc 75
    (this.m_totalFightBef = xs.Utils.clone(xs.Profile.GameData.Mgr.getInstance().Team.getTeamTotalFighting()));
    // source line 1128, bytecode pc 85
    (param = {});
    // source line 1129, bytecode pc 95
    (param.team_id = 1);
    // source line 1130, bytecode pc 112
    (param.team_position = (this.m_curTeamListIndex + 1));
    // source line 1131, bytecode pc 135
    (param.general_id = newGeneral.getPkId());
    // source line 1132, bytecode pc 175
    xs.Tools.Net.requestChangeTeam(param, this.Net_ReplaceTeamGeneralSuccessCallback, this);
},
    Net_ReplaceTeamGeneralSuccessCallback: function(data) {
    // source line 1136, bytecode pc 17
    this.m_replaceDialog.replaceSuccess();
    // source line 1137, bytecode pc 44
    xs.Views.Mgr.hideAllDialog();
    // source line 1138, bytecode pc 64
    this._showFightChange(this.m_totalFightBef);
    // source line 1139, bytecode pc 82
    this.m_teamList.reloadData();
    // source line 1140, bytecode pc 95
    this.refreshTableViewWithOldPos();
    // source line 1141, bytecode pc 137
    xs.Guide.GuideMgr.endStepBySequence([ "50000" ]);
},
    refreshTableViewWithOldPos: function() {
    if (!this.oldContentOffset) {
        // source line 1146, bytecode pc 29
        this.m_teamList.reloadData();
        // source line 1147, bytecode pc 53
        (this.oldContentOffset = this.m_teamList.getContentOffset());
    } else {
        // source line 1149, bytecode pc 82
        (this.oldContentOffset = this.m_teamList.getContentOffset());
        // source line 1150, bytecode pc 100
        this.m_teamList.reloadData();
        // source line 1151, bytecode pc 125
        this.m_teamList.setContentOffset(this.oldContentOffset);
    }
    if ((this.oldContentOffset.x < this.m_teamList.minContainerOffset().x)) {
        // source line 1155, bytecode pc 182
        this.m_teamList.reloadData();
    }
},
    Net_ReplaceSkill: function(newSkill, pos) {
    var general, param;
    // source line 1160, bytecode pc 29
    xs.assert(this.m_curTeamData, "Net_ReplaceEquipment can't get general data!");
    // source line 1161, bytecode pc 105
    (this.m_totalFightBef = xs.Utils.clone(xs.Profile.GameData.Mgr.getInstance().Team.getTeamTotalFighting()));
    // source line 1164, bytecode pc 177
    (general = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getGeneral(this.m_curTeamData));
    // source line 1165, bytecode pc 187
    (param = {});
    // source line 1166, bytecode pc 210
    (param.user_general_id = general.getPkId());
    // source line 1167, bytecode pc 222
    (param.skill_pos = pos);
    // source line 1168, bytecode pc 245
    (param.new_skill_id = newSkill.getPkId());
    // source line 1169, bytecode pc 285
    xs.Tools.Net.requestEquipSkill(param, this.Net_ReplaceSkillSuccessCallback, this);
},
    Net_ReplaceSkillSuccessCallback: function(data) {
    // source line 1174, bytecode pc 26
    xs.Views.Mgr.hideAllDialog();
    // source line 1175, bytecode pc 46
    this._showFightChange(this.m_totalFightBef);
},
    Net_ReplaceEquipment: function(newEquip, pos) {
    var general, param;
    // source line 1180, bytecode pc 29
    xs.assert(this.m_curTeamData, "Net_ReplaceEquipment can't get general data!");
    // source line 1181, bytecode pc 105
    (this.m_totalFightBef = xs.Utils.clone(xs.Profile.GameData.Mgr.getInstance().Team.getTeamTotalFighting()));
    // source line 1184, bytecode pc 177
    (general = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getGeneral(this.m_curTeamData));
    // source line 1185, bytecode pc 187
    (param = {});
    // source line 1186, bytecode pc 210
    (param.user_general_id = general.getPkId());
    // source line 1187, bytecode pc 233
    (param.new_equipment_id = newEquip.getPkId());
    // source line 1188, bytecode pc 273
    xs.Tools.Net.requestEquipEquipment(param, this.Net_ReplaceEquipmentSuccessCallback, this);
},
    Net_ReplaceEquipmentSuccessCallback: function(data) {
    // source line 1193, bytecode pc 26
    xs.Views.Mgr.hideAllDialog();
    // source line 1194, bytecode pc 46
    this._showFightChange(this.m_totalFightBef);
    // source line 1196, bytecode pc 88
    xs.Guide.GuideMgr.endStepBySequence([ "80000" ]);
},
    Net_ReplaceAssistantGeneral: function(assistant, pos) {
    var general, param;
    // source line 1201, bytecode pc 29
    xs.assert(this.m_curTeamData, "Net_ReplaceAssistantGeneral can't get general data!");
    // source line 1202, bytecode pc 105
    (this.m_totalFightBef = xs.Utils.clone(xs.Profile.GameData.Mgr.getInstance().Team.getTeamTotalFighting()));
    // source line 1205, bytecode pc 177
    (general = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getGeneral(this.m_curTeamData));
    // source line 1206, bytecode pc 187
    (param = {});
    // source line 1207, bytecode pc 210
    (param.major_user_general_id = general.getPkId());
    // source line 1208, bytecode pc 233
    (param.lieutenant_user_general_id = assistant.getPkId());
    // source line 1209, bytecode pc 245
    (param.position = pos);
    // source line 1210, bytecode pc 285
    xs.Tools.Net.requestEquipAssistantGeneral(param, this.Net_ReplaceAssistantGeneralSuccessCallback, this);
},
    Net_ReplaceAssistantGeneralSuccessCallback: function(data) {
    // source line 1215, bytecode pc 26
    xs.Views.Mgr.hideAllDialog();
    // source line 1216, bytecode pc 46
    this._showFightChange(this.m_totalFightBef);
},
    ReplaceCardDialog_replaceCard: function(data, index) {
    var general, isUnique;
    // source line 1222, bytecode pc 3
    switch (index) {
        case 0:
        // source line 1225, bytecode pc 68
        this.Net_ReplaceTeamGeneral(data);
        break;
        case 1:
        // source line 1230, bytecode pc 103
        xs.assert(this.m_curTeamData, "teamData can't  be null!");
        // source line 1233, bytecode pc 175
        (general = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getGeneral(this.m_curTeamData));
        // source line 1235, bytecode pc 270
        (isUnique = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Generals.isThisLieutenantCanBeSet(general, data.getPkId(), xs.Constant_Lieutenant_Pos_Second));
        if (isUnique) {
            // source line 1237, bytecode pc 306
            this.Net_ReplaceAssistantGeneral(data, xs.Constant_Lieutenant_Pos_Second);
        } else {
            // source line 1239, bytecode pc 371
            xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_212"));
        }
        break;
        case 2:
        // source line 1245, bytecode pc 406
        xs.assert(this.m_curTeamData, "teamData can't  be null!");
        // source line 1248, bytecode pc 478
        (general = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getGeneral(this.m_curTeamData));
        // source line 1250, bytecode pc 573
        (isUnique = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Generals.isThisLieutenantCanBeSet(general, data.getPkId(), xs.Constant_Lieutenant_Pos_First));
        if (isUnique) {
            // source line 1252, bytecode pc 609
            this.Net_ReplaceAssistantGeneral(data, xs.Constant_Lieutenant_Pos_First);
        } else {
            // source line 1254, bytecode pc 674
            xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_212"));
        }
        break;
        case 3:
        // source line 1260, bytecode pc 709
        xs.assert(this.m_curTeamData, "teamData can't  be null!");
        // source line 1263, bytecode pc 781
        (general = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getGeneral(this.m_curTeamData));
        // source line 1265, bytecode pc 876
        (isUnique = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Generals.isThisSkillCanBeSet(general, data.getPkId(), xs.Constant_Skill_Pos_Second));
        if (isUnique) {
            // source line 1267, bytecode pc 912
            this.Net_ReplaceSkill(data, xs.Constant_Skill_Pos_Second);
        } else {
            // source line 1269, bytecode pc 977
            xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_212"));
        }
        break;
        case 4:
        // source line 1276, bytecode pc 1007
        xs.assert(false, "nature Skill can't be replaced!");
        break;
        case 5:
        // source line 1281, bytecode pc 1040
        this.Net_ReplaceEquipment(data, xs.Constant_Equ_PosType_Kit);
        break;
        case 6:
        // source line 1286, bytecode pc 1073
        this.Net_ReplaceEquipment(data, xs.Constant_Equ_PosType_Mount);
        break;
        case 7:
        // source line 1291, bytecode pc 1106
        this.Net_ReplaceEquipment(data, xs.Constant_Equ_PosType_Armor);
        break;
        case 8:
        // source line 1296, bytecode pc 1139
        this.Net_ReplaceEquipment(data, xs.Constant_Equ_PosType_Weapon);
        break;
        default:
        break;
    }
},
    ReplaceCardDialog_close: function() {
    // source line 1309, bytecode pc 7
    (this.m_replaceDialog = null);
},
    GeneralSwapView_touchedAtIndex: function(idx) {
    var replaceGeneral;
    // source line 1315, bytecode pc 4
    (replaceGeneral = null);
    if (this.m_curTeamData) {
        // source line 1318, bytecode pc 87
        (replaceGeneral = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getGeneral(this.m_curTeamData));
    }
    // source line 1321, bytecode pc 106
    this.iconBtnCallback(0, replaceGeneral);
},
    GeneralSwapView_swapAtIndex: function(index) {
    // source line 1324, bytecode pc 16
    this.setTeamListCurIndex(index);
    // source line 1325, bytecode pc 101
    this.setCurTeamData(xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getTeamGeneralInPos((index + 1)), index);
},
    convertCardIndexToTeamListOffsetX: function(index) {
    var cellNum, cellSize, x, minX;
    // source line 1330, bytecode pc 22
    (cellNum = this.numberOfCellsInTableView(this.m_teamList));
    // source line 1331, bytecode pc 64
    xs.assert(((index >= 0) && (index < cellNum)), "tableview idx error!");
    // source line 1332, bytecode pc 91
    (cellSize = this.tableCellSizeForIndex(this.m_teamList, index));
    // source line 1334, bytecode pc 110
    (x = ((-1 * index) * cellSize.width));
    // source line 1335, bytecode pc 138
    (minX = (this.m_teamListSize.width - (cellNum * cellSize.width)));
    if ((x > 0)) {
        // source line 1337, bytecode pc 153
        (x = 0);
    }
    if ((x < minX)) {
        // source line 1340, bytecode pc 172
        (x = minX);
    }
    // source line 1343, bytecode pc 176
    return x;
},
    scrollViewDidScroll: function() {
    var rigOffx, mConOffX;
    // source line 1348, bytecode pc 32
    (rigOffx = ((((this.m_teamListSize.width / 6.5) * 2.5) - 9) * -1));
    // source line 1351, bytecode pc 58
    (mConOffX = this.m_teamList.getContentOffset().x);
    if ((this.rightArrow && this.rightArrow)) {
        if ((mConOffX < rigOffx)) {
            // source line 1354, bytecode pc 113
            this.rightArrow.setVisible(false);
        } else {
            if ((mConOffX > -9)) {
                // source line 1357, bytecode pc 149
                this.leftArrow.setVisible(false);
            } else {
                // source line 1359, bytecode pc 174
                this.leftArrow.setVisible(true);
                // source line 1360, bytecode pc 194
                this.rightArrow.setVisible(true);
            }
        }
    }
},
    scrollViewDidZoom: function() {
},
    tableCellTouched: function(table, cell) {
    var idx, lockLv, curGeneral;
    // source line 1369, bytecode pc 21
    xs.Debug.testBegin();
    // source line 1370, bytecode pc 39
    (idx = cell.getIdx());
    if (cell.b_isLocked) {
        // source line 1373, bytecode pc 123
        (lockLv = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getOpenLevelByTeamPos((idx + 1)));
        // source line 1374, bytecode pc 220
        xs.Views.Mgr.showToast(((xs.Tools.String.createString("auto_name_213") + lockLv) + xs.Tools.String.createString("auto_name_214")));
        // source line 1375, bytecode pc 222
        return void 0;
    }
    // source line 1378, bytecode pc 239
    this.setTeamListCurIndexWithOutScorll(idx);
    // source line 1380, bytecode pc 261
    this.m_gInfo.setIndex(idx);
    // source line 1381, bytecode pc 332
    (curGeneral = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getTeamGeneralInPos((idx + 1)));
    // source line 1382, bytecode pc 353
    this.setCurTeamData(curGeneral, idx);
    if (!xs.Guide.GuideMgr.getIsOver()) {
        if ((idx === 1)) {
            // source line 1387, bytecode pc 437
            xs.Guide.GuideMgr.endStepBySequence([ "40104" ]);
        }
        if ((idx === 2)) {
            // source line 1390, bytecode pc 490
            xs.Guide.GuideMgr.endStepBySequence([ "150105" ]);
        }
    }
    // source line 1393, bytecode pc 512
    xs.Debug.testEnd();
},
    showPageArrowByTeam: function() {
    if (!this.leftArrow) {
        // source line 1399, bytecode pc 55
        (this._arm_left = xs.Views.Armature.AutoAudioArmature.create("Arm_guideArrow"));
        // source line 1400, bytecode pc 98
        this._arm_left.playAniById("normal", { loop: false, speed: 1 });
        // source line 1402, bytecode pc 138
        (this.leftArrow = xs.Views.Btn.createInvisibleWithChild(this._arm_left));
        // source line 1403, bytecode pc 160
        this.leftArrow.setRotation(180);
        // source line 1404, bytecode pc 184
        this.leftArrow.setScale(0.5);
        // source line 1405, bytecode pc 211
        this.leftArrow.setTouchPriority((this.m_baseTouchPriority - 1));
        // source line 1413, bytecode pc 295
        xs.Utils.Node.attachNodes(this, this.leftArrow, { desc: "lt", offset: { x: 85, y: -52 }, sc: true });
    }
    if (!this.rightArrow) {
        // source line 1417, bytecode pc 351
        (this._arm_right = xs.Views.Armature.AutoAudioArmature.create("Arm_guideArrow"));
        // source line 1418, bytecode pc 394
        this._arm_right.playAniById("normal", { loop: false, speed: 1 });
        // source line 1420, bytecode pc 434
        (this.rightArrow = xs.Views.Btn.createInvisibleWithChild(this._arm_right));
        // source line 1421, bytecode pc 458
        this.rightArrow.setScale(0.5);
        // source line 1422, bytecode pc 485
        this.rightArrow.setTouchPriority((this.m_baseTouchPriority - 1));
        // source line 1430, bytecode pc 584
        xs.Utils.Node.attachNodes(this, this.rightArrow, { desc: "lt", offset: { x: ((70 + this.m_teamListSize.width) + 45), y: -52 }, sc: true });
    }
    // source line 1432, bytecode pc 627
    this._arm_right.playAniById("guide", { loop: true, speed: 1 });
    // source line 1433, bytecode pc 670
    this._arm_left.playAniById("guide", { loop: true, speed: 1 });
    // source line 1434, bytecode pc 683
    this.scrollViewDidScroll();
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 1439, bytecode pc 6
    return this.m_teamListCellSize;
},
    tableCellAtIndex: function(table, idx) {
    var cell, team, curMaxTeamLength, general, eventNum, i;
    // source line 1443, bytecode pc 24
    this.markFuncBegin("TeamBuildLayer.tableCellAtIndex", "begin");
    try {
        // source line 1450, bytecode pc 47
        (cell = table.cellAtIndex(idx));
        // source line 1455, bytecode pc 52
        (team = null);
        // source line 1457, bytecode pc 123
        (team = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getTeamGeneralInPos((idx + 1)));
        if (!cell) {
            // source line 1459, bytecode pc 183
            (cell = xs.Scene.TeamBuildListCell.create(this.m_teamListCellSize, this.m_playerId, this.m_playerData));
        }
        if (!team) {
            // source line 1464, bytecode pc 209
            cell.setIsEmpty(true);
            // source line 1465, bytecode pc 274
            (curMaxTeamLength = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getCurTeamMaxLength());
            if ((idx >= curMaxTeamLength)) {
                // source line 1467, bytecode pc 303
                cell.setIsLocked(true);
            } else {
                // source line 1469, bytecode pc 325
                cell.setIsLocked(false);
            }
        } else {
            // source line 1472, bytecode pc 399
            (general = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getGeneral(team));
            if (general) {
                // source line 1474, bytecode pc 424
                cell.setIsEmpty(false);
            } else {
                // source line 1476, bytecode pc 446
                cell.setIsEmpty(true);
            }
            // source line 1479, bytecode pc 463
            cell.setIsLocked(false);
        }
        if ((idx === this.m_curTeamListIndex)) {
            // source line 1483, bytecode pc 495
            cell.setIsSelected(true);
        } else {
            // source line 1485, bytecode pc 517
            cell.setIsSelected(false);
        }
        // source line 1488, bytecode pc 536
        cell.setTeamData(team);
        if ((idx === 1)) {
            // source line 1491, bytecode pc 565
            cell.setSpGuideTag(3005);
        } else {
            if ((idx === 2)) {
                // source line 1493, bytecode pc 600
                cell.setSpGuideTag(4004);
            } else {
                // source line 1495, bytecode pc 623
                cell.setSpGuideTag(-1);
            }
        }
    } catch (e) {
        // source line 1499, bytecode pc 659
        xs.warnException(e);
        /* TODO_BYTECODE pc=660 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    if (this.b_isSelf) {
        // source line 1504, bytecode pc 716
        cell.setJoinEnabled(this.hintInfo.isTeamJoinEnabled(idx));
        // source line 1506, bytecode pc 721
        (eventNum = 0);
        // source line 1507, bytecode pc 726
        (i = 0);
        while ((i < xs.Constant_Team_Max)) {
            if (this.hintInfo.isEquipEnabled(idx, i)) {
                // source line 1509, bytecode pc 777
                eventNum++;
                break;
            }
            // source line 1507, bytecode pc 795
            (i = (+i + 1));
        }
        // source line 1514, bytecode pc 834
        cell.setRedHintShow(eventNum);
    }
    // source line 1517, bytecode pc 859
    this.markFuncEnd("TeamBuildLayer.tableCellAtIndex", "end");
    // source line 1519, bytecode pc 863
    return cell;
},
    numberOfCellsInTableView: function(table) {
    // source line 1522, bytecode pc 61
    return xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getTeamMaxLength();
}
}));
// source line 1526, bytecode pc 900
(xs.Scene.TeamBuildLayer.create = function(playerId, playerData) {
    var layer;
    // source line 1527, bytecode pc 23
    (layer = new xs.Scene.TeamBuildLayer());
    if ((layer && layer.init(playerId, playerData))) {
        // source line 1529, bytecode pc 76
        layer.setBaseTouchPriority(0);
        // source line 1530, bytecode pc 80
        return layer;
    }
    // source line 1532, bytecode pc 82
    return null;
});
// source line 1541, bytecode pc 964
(xs.Scene.TeamBuildScene = cc.Scene.extend({
    ctor: function() {
    // source line 1538, bytecode pc 12
    this._super();
    // source line 1539, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(playerId, playerData) {
    var layer;
    if (!this._super()) {
        // source line 1544, bytecode pc 19
        return false;
    }
    // source line 1546, bytecode pc 57
    (layer = xs.Scene.TeamBuildLayer.create(playerId, playerData));
    // source line 1549, bytecode pc 113
    xs.Utils.Node.attachNodes(this, layer, { desc: "lb", sc: true });
    // source line 1551, bytecode pc 115
    return true;
}
}));
// source line 1555, bytecode pc 990
(xs.Scene.TeamBuildScene.create = function(data) {
    var scene, playerId, playerData;
    // source line 1556, bytecode pc 23
    (scene = new xs.Scene.TeamBuildScene());
    // source line 1557, bytecode pc 28
    (playerId = null);
    // source line 1558, bytecode pc 33
    (playerData = null);
    if (data) {
        // source line 1560, bytecode pc 53
        (playerId = data.playerId);
        // source line 1561, bytecode pc 65
        (playerData = data.playerData);
    }
    // source line 1563, bytecode pc 92
    xs.dump("playerId", playerId);
    // source line 1564, bytecode pc 119
    xs.dump("playerData", playerData);
    if ((scene && scene.init(playerId, playerData))) {
        // source line 1566, bytecode pc 159
        return scene;
    }
    // source line 1568, bytecode pc 161
    return null;
});
// source line 1574, bytecode pc 1084
xs.Scene.Mgr.registerScene("TeamBuildScene", {
    "class": xs.Scene.TeamBuildScene,
    type: xs.Constant_SceneType_General,
    area: [ "ZuiduiMenuScene01" ]
});
