// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/TeamBuild/TeamBuildScene_V2.js:1
// source line 1201, bytecode pc 533
(xs.Scene.TeamBuildLayer = cc.Layer.extend({
    name: "TeamBuildLayer",
    ctor: function() {
    // source line 22, bytecode pc 12
    this._super();
    // source line 23, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(playerId, playerData) {
    if (!this._super()) {
        // source line 28, bytecode pc 19
        return false;
    }
    // source line 31, bytecode pc 27
    (this.m_teamList = null);
    // source line 32, bytecode pc 35
    (this.m_teamListSize = null);
    // source line 33, bytecode pc 43
    (this.m_teamListCellSize = null);
    // source line 35, bytecode pc 51
    (this.m_gInfo = null);
    // source line 36, bytecode pc 59
    (this.m_cntInfo = null);
    // source line 37, bytecode pc 67
    (this.m_baseTouchPriority = 0);
    // source line 38, bytecode pc 75
    (this.m_mainMenu = null);
    // source line 39, bytecode pc 83
    (this.m_replaceDialog = null);
    // source line 41, bytecode pc 91
    (this.m_curTeamData = null);
    // source line 43, bytecode pc 99
    (this.m_curItemData = null);
    // source line 44, bytecode pc 108
    (this.m_curItemIndex = -1);
    // source line 47, bytecode pc 120
    (this.m_iconBtns = []);
    // source line 48, bytecode pc 128
    (this.m_generalOrbitIcon = null);
    // source line 49, bytecode pc 136
    (this.m_view_general_name = null);
    // source line 50, bytecode pc 144
    (this.m_generalFightAndStrikInfo = null);
    // source line 51, bytecode pc 152
    (this.m_teamListBg = null);
    // source line 52, bytecode pc 160
    (this.m_totalFightBef = 0);
    // source line 54, bytecode pc 168
    (this.m_closeBtn = null);
    // source line 55, bytecode pc 176
    (this.m_instructionBtn = null);
    // source line 57, bytecode pc 186
    (this.m_playerId = playerId);
    // source line 58, bytecode pc 196
    (this.m_playerData = playerData);
    if ((this.m_playerId && this.m_playerData)) {
        // source line 62, bytecode pc 227
        (this.b_isSelf = false);
    } else {
        // source line 65, bytecode pc 240
        (this.b_isSelf = true);
    }
    if ((this.m_playerId && !this.m_playerData)) {
        // source line 70, bytecode pc 303
        xs.assert(false, "playerData is null!", this.m_playerId, this.m_playerData);
    }
    if ((!this.m_playerId && this.m_playerData)) {
        // source line 73, bytecode pc 366
        xs.assert(false, "playerId is null!", this.m_playerId, this.m_playerData);
    }
    // source line 77, bytecode pc 406
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_Toast);
    // source line 80, bytecode pc 425
    this.log("111111");
    // source line 82, bytecode pc 438
    this._init_nav_models();
    // source line 83, bytecode pc 451
    this._init_nav_views();
    // source line 85, bytecode pc 470
    this.log("2222");
    // source line 89, bytecode pc 483
    this._init_general_models();
    // source line 90, bytecode pc 496
    this._init_general_views();
    // source line 92, bytecode pc 515
    this.log("444");
    // source line 94, bytecode pc 528
    this._init_icons_models();
    // source line 95, bytecode pc 541
    this._init_icons_views();
    if (this.b_isSelf) {
        // source line 101, bytecode pc 615
        (this.m_mainMenu = xs.Tools.UI.addShortcutBoard(this, true, xs.Cfg.Scene.TeamBuildScene.m_mainMenu));
        // source line 104, bytecode pc 659
        (this.m_instructionBtn = xs.Tools.Views.Btn.createInstruction("team_Instruction"));
        // source line 108, bytecode pc 762
        xs.Utils.Node.attachNodes(this, this.m_instructionBtn, { desc: "lt", offset: cc.p(((visibleSize.width * 9) / 40), -460), sc: true });
        // source line 111, bytecode pc 777
        this.setBaseTouchPriority(0);
    } else {
        // source line 113, bytecode pc 821
        (this.m_closeBtn = xs.Views.Btn.create("Btn_CircleRedClose"));
        // source line 114, bytecode pc 859
        this.m_closeBtn.setOnClickCallBack(this.closeBtnCallback.bind(this));
        // source line 115, bytecode pc 943
        xs.Utils.Node.attachNodes(this, this.m_closeBtn, { desc: "rt", sc: true, offset: { x: -55, y: -64 } });
    }
    // source line 119, bytecode pc 958
    this._setCurIndex(0);
    // source line 121, bytecode pc 960
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 125, bytecode pc 12
    this._super();
    // source line 128, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this._refresh_nav, xs.Constant_Notify_ModelChange_TeamGeneral);
    // source line 129, bytecode pc 106
    xs.Utils.Notify.addObserver(this, this._refresh_nav, xs.Constant_Notify_ModelChange_General);
    // source line 132, bytecode pc 153
    xs.Utils.Notify.addObserver(this, this._refresh_icons, xs.Constant_Notify_ModelChange_Skill);
    // source line 133, bytecode pc 200
    xs.Utils.Notify.addObserver(this, this._refresh_icons, xs.Constant_Notify_ModelChange_Equ);
    // source line 134, bytecode pc 247
    xs.Utils.Notify.addObserver(this, this._refresh_icons, xs.Constant_Notify_ModelChange_General);
    // source line 138, bytecode pc 294
    xs.Utils.Notify.addObserver(this, this._refresh_general, xs.Constant_Notify_ModelChange_TeamGeneral);
    // source line 139, bytecode pc 341
    xs.Utils.Notify.addObserver(this, this._refresh_general, xs.Constant_Notify_ModelChange_General);
    // source line 142, bytecode pc 419
    xs.Guide.GuideMgr.endStepBySequence([ "40103", "50101_before", "70103", "150104", "160104" ]);
},
    onExitTransitionDidStart: function() {
    // source line 147, bytecode pc 12
    this._super();
    // source line 148, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_Skill);
    // source line 149, bytecode pc 92
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_Equ);
    // source line 150, bytecode pc 132
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_TeamGeneral);
    // source line 151, bytecode pc 172
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_General);
},
    _refresh_nav: function() {
    // source line 155, bytecode pc 18
    this.log("_refresh_nav");
    // source line 156, bytecode pc 31
    this._refresh_nav_models();
    // source line 157, bytecode pc 44
    this._refresh_nav_views();
},
    _init_nav_models: function() {
    // source line 167, bytecode pc 50
    (this.m_nav = { idx: 0, pos_array: [ { select: true, locked: false } ] });
    // source line 172, bytecode pc 63
    this._refresh_nav_models();
},
    _refresh_nav_models: function() {
    var i, _obj, _team_general, curMaxTeamLength, general;
    // source line 200, bytecode pc 4
    (i = 0);
    while ((i < 7)) {
        // source line 201, bytecode pc 32
        (this.m_nav.pos_array[i] = {});
        // source line 202, bytecode pc 51
        (_obj = this.m_nav.pos_array[i]);
        // source line 205, bytecode pc 122
        (_team_general = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getTeamGeneralInPos((i + 1)));
        if (!_team_general) {
            // source line 212, bytecode pc 196
            (curMaxTeamLength = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getCurTeamMaxLength());
            if ((i >= curMaxTeamLength)) {
                // source line 214, bytecode pc 242
                (_obj.type = xs.Scene.TeamBuild.NavItem.Const_Type_Locked);
            } else {
                // source line 217, bytecode pc 281
                (_obj.type = xs.Scene.TeamBuild.NavItem.Const_Type_Empty);
                if (this.b_isSelf) {
                    // source line 220, bytecode pc 352
                    (_obj.join_enable = xs.Profile.GameData.Mgr.getInstance().Hint.isTeamJoinEnabled(i));
                }
            }
        } else {
            // source line 226, bytecode pc 426
            (general = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getGeneral(_team_general));
            if (general) {
                // source line 228, bytecode pc 468
                (_obj.type = xs.Scene.TeamBuild.NavItem.Const_Type_General);
                // source line 229, bytecode pc 480
                (_obj.model = general);
                // source line 230, bytecode pc 492
                (_obj.idx = i);
                if ((i === this.m_curIdx)) {
                    // source line 234, bytecode pc 517
                    (_obj.selected = true);
                } else {
                    // source line 237, bytecode pc 532
                    (_obj.selected = false);
                }
            } else {
                // source line 243, bytecode pc 571
                (_obj.type = xs.Scene.TeamBuild.NavItem.Const_Type_Empty);
                if (this.b_isSelf) {
                    // source line 245, bytecode pc 642
                    (_obj.join_enable = xs.Profile.GameData.Mgr.getInstance().Hint.isTeamJoinEnabled(i));
                }
            }
        }
        if ((i === 1)) {
            // source line 252, bytecode pc 664
            (_obj.guide_tag = 3005);
        } else {
            if ((i === 2)) {
                // source line 254, bytecode pc 692
                (_obj.guide_tag = 4004);
            } else {
                // source line 256, bytecode pc 708
                (_obj.guide_tag = -1);
            }
        }
        // source line 200, bytecode pc 723
        i++;
    }
    // source line 260, bytecode pc 764
    this.dump("_refresh_nav_models", this.m_nav, 3);
},
    _refresh_nav_views: function() {
    // source line 264, bytecode pc 17
    this.m_teamList.reloadData();
},
    _init_nav_views: function() {
    var visibleSize, visibleOrigin, teamMaxLength, queueTeamMenuItem;
    // source line 269, bytecode pc 24
    (visibleSize = xs.director.getVisibleSize());
    // source line 270, bytecode pc 49
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 271, bytecode pc 88
    (this.m_teamListSize = cc.size((visibleSize.width - 210), 100));
    // source line 275, bytecode pc 153
    (teamMaxLength = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getTeamMaxLength());
    // source line 276, bytecode pc 195
    (this.m_teamListCellSize = cc.size((this.m_teamListSize.width / teamMaxLength), 100));
    // source line 278, bytecode pc 232
    (this.m_teamList = cc.TableView.create(this, this.m_teamListSize));
    // source line 279, bytecode pc 261
    this.m_teamList.setDirection(cc.SCROLLVIEW_DIRECTION_HORIZONTAL);
    // source line 280, bytecode pc 290
    this.m_teamList.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 281, bytecode pc 310
    this.m_teamList.setDelegate(this);
    // source line 282, bytecode pc 330
    this.m_teamList.setBounceable(false);
    // source line 290, bytecode pc 440
    xs.Utils.Node.attachNodes(this, this.m_teamList, { desc: "lt", sc: true, offset: { x: 70, y: -110 } }, xs.Cfg.Scene.TeamBuildScene.m_teamList);
    // source line 292, bytecode pc 473
    (this.m_teamListBg = xs.Views.EventLayer.create());
    // source line 294, bytecode pc 525
    this.m_teamListBg.setContentSize(cc.size((visibleSize.width - 220), 130));
    // source line 302, bytecode pc 635
    xs.Utils.Node.attachNodes(this, this.m_teamListBg, { desc: "lt", sc: true, offset: { x: 20, y: -110 } }, xs.Cfg.Scene.TeamBuildScene.m_teamListBg);
    if (this.b_isSelf) {
        // source line 306, bytecode pc 733
        (queueTeamMenuItem = cc.MenuItemImage.create(xs.Cfg.Sprite.ZuiduiMenuScene01.btn_quequeTeam.frameName, xs.Cfg.Sprite.ZuiduiMenuScene01.btn_quequeTeam.frameName));
        // source line 307, bytecode pc 812
        queueTeamMenuItem.setNormalSpriteFrame(cc.SpriteFrameCache.getInstance().getSpriteFrame(xs.Cfg.Sprite.ZuiduiMenuScene01.btn_quequeTeam.frameName));
        // source line 310, bytecode pc 835
        queueTeamMenuItem.setCallback(function() {
    // source line 309, bytecode pc 32
    xs.Views.Mgr.showDialogByName("QueueTeamDialog");
}, this);
        // source line 311, bytecode pc 867
        (this.m_generalMenu = cc.Menu.create(queueTeamMenuItem));
        // source line 316, bytecode pc 979
        xs.Utils.Node.attachNodes(this, this.m_generalMenu, { desc: "lt", sc: true, offset: cc.p(45, -60) }, xs.Cfg.Scene.TeamBuildScene.m_generalMenu);
    }
},
    _refresh_general: function() {
    // source line 321, bytecode pc 18
    this.log("_refresh_general");
    // source line 322, bytecode pc 31
    this._refresh_general_models();
    // source line 323, bytecode pc 59
    xs.Debug.testEnd("_refresh_general_models");
    // source line 324, bytecode pc 72
    this._refresh_general_views();
    // source line 325, bytecode pc 100
    xs.Debug.testEnd("_refresh_general_views");
},
    _init_general_models: function() {
    // source line 331, bytecode pc 7
    (this.m_model_general = null);
    // source line 333, bytecode pc 19
    (this.m_model_general_old = undefined);
},
    _refresh_general_models: function() {
    var teamGenerals, i, team, general;
    // source line 340, bytecode pc 11
    (this.m_general_dataSource = []);
    // source line 341, bytecode pc 76
    (teamGenerals = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getTeamGenerals());
    // source line 342, bytecode pc 81
    (i = 0);
    while ((i < teamGenerals.length)) {
        // source line 343, bytecode pc 98
        (team = teamGenerals[i]);
        // source line 344, bytecode pc 167
        (general = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getGeneral(team));
        // source line 345, bytecode pc 189
        this.m_general_dataSource.push(general);
        // source line 342, bytecode pc 202
        (i = (+i + 1));
    }
    // source line 349, bytecode pc 233
    (this.m_model_general_old = this.m_model_general);
    // source line 350, bytecode pc 263
    xs.log("34345", this.m_curIdx);
    // source line 351, bytecode pc 283
    (this.m_model_general = this.m_general_dataSource[this.m_curIdx]);
},
    _init_general_views: function() {
    var visibleSize, generalBody_width, generalBody_height;
    // source line 356, bytecode pc 24
    (visibleSize = xs.director.getVisibleSize());
    // source line 360, bytecode pc 40
    (generalBody_width = (visibleSize.width - 400));
    // source line 361, bytecode pc 54
    (generalBody_height = (visibleSize.height - 0));
    // source line 362, bytecode pc 117
    (this.m_gInfo = xs.Scene.TeamBuild.GeneralSwapView.create(cc.size(generalBody_width, generalBody_height)));
    // source line 363, bytecode pc 137
    this.m_gInfo.setListener(this);
    // source line 364, bytecode pc 166
    this.m_gInfo.setOffsetY(((generalBody_height / 2) - 180));
    // source line 365, bytecode pc 190
    this.m_gInfo.setMaxScale(0.86);
    // source line 374, bytecode pc 300
    xs.Utils.Node.attachNodes(this, this.m_gInfo, { desc: "lb", sc: true, offset: { x: 150, y: 0 } }, xs.Cfg.Scene.TeamBuildScene.m_gInfo);
    // source line 377, bytecode pc 338
    (this.m_cntInfo = xs.Scene.TeamBuild.TeamCntPopView.create());
    // source line 378, bytecode pc 381
    this.m_cntInfo.setAnchorPoint(cc.p(0.5, 0));
    // source line 384, bytecode pc 464
    xs.Utils.Node.attachNodes(this, this.m_cntInfo, { desc: "cb", sc: true, offset: { x: -56, y: 0 } });
    // source line 389, bytecode pc 511
    (this.m_generalFightAndStrikInfo = xs.Views.TeamGeneralFightAndStrikeView.create(this.m_playerId, this.m_playerData));
    // source line 395, bytecode pc 615
    xs.Utils.Node.attachNodes(this, this.m_generalFightAndStrikInfo, { desc: "rt", sc: true, offset: { x: (((-visibleSize.width * 9) / 40) - 174), y: -200 } });
},
    _refresh_general_views: function() {
    var visibleSize, _grade_old, _grade_new, _id_old, _id_new;
    // source line 406, bytecode pc 24
    (visibleSize = xs.director.getVisibleSize());
    // source line 409, bytecode pc 56
    this.m_gInfo.reloadData(this.m_curIdx, this.m_general_dataSource);
    // source line 410, bytecode pc 84
    xs.Debug.testEnd("this.m_gInfo.reloadData after");
    // source line 415, bytecode pc 109
    this.m_cntInfo.reloadData(this.m_model_general);
    // source line 416, bytecode pc 137
    xs.Debug.testEnd("this.m_cntInfo.setGeneralData after");
    // source line 420, bytecode pc 162
    this.m_generalFightAndStrikInfo.setGeneralData(this.m_model_general);
    // source line 421, bytecode pc 190
    xs.Debug.testEnd("this.m_generalFightAndStrikInfo.setGeneralData after");
    // source line 424, bytecode pc 228
    (_grade_old = (this.m_model_general_old ? this.m_model_general_old.getGrade() : null));
    // source line 425, bytecode pc 266
    (_grade_new = (this.m_model_general ? this.m_model_general.getGrade() : null));
    if ((_grade_old !== _grade_new)) {
        if ((_grade_new !== null)) {
            // source line 430, bytecode pc 322
            xs.Utils.Node.safeRemoveChild(this.m_view_general_grade);
            // source line 431, bytecode pc 330
            (this.m_view_general_grade = null);
            // source line 435, bytecode pc 354
            (this.m_view_general_grade = this.m_model_general.createGradeSmallIcon());
            // source line 436, bytecode pc 378
            this.m_view_general_grade.setScale(0.9);
            // source line 437, bytecode pc 398
            this.m_view_general_grade.setVisible(true);
            // source line 443, bytecode pc 497
            xs.Utils.Node.attachNodes(this, this.m_view_general_grade, { desc: "lt", sc: true, offset: { x: ((visibleSize.width * 9) / 40), y: -155 } });
        } else {
            if (this.m_view_general_grade) {
                // source line 450, bytecode pc 533
                this.m_view_general_grade.setVisible(false);
            }
        }
    }
    // source line 454, bytecode pc 571
    (_id_old = (this.m_model_general_old ? this.m_model_general_old.getId() : null));
    // source line 455, bytecode pc 609
    (_id_new = (this.m_model_general ? this.m_model_general.getId() : null));
    if ((_id_old !== _id_new)) {
        if ((_id_new !== null)) {
            // source line 460, bytecode pc 665
            xs.Utils.Node.safeRemoveChild(this.m_view_general_name);
            // source line 461, bytecode pc 673
            (this.m_view_general_name = null);
            // source line 462, bytecode pc 712
            (this.m_view_general_name = xs.Factorys.Label.createByStyleId("LS_wujiangName2"));
            // source line 463, bytecode pc 759
            this.m_view_general_name.setString(this.m_model_general.getNameString().toWordBreak());
            // source line 464, bytecode pc 788
            this.m_view_general_name.setAnchorPoint(xs.ap_tc);
            // source line 470, bytecode pc 887
            xs.Utils.Node.attachNodes(this, this.m_view_general_name, { desc: "lt", sc: true, offset: { x: ((visibleSize.width * 9) / 40), y: -190 } });
        } else {
            if (this.m_view_general_name) {
                // source line 477, bytecode pc 923
                this.m_view_general_name.setVisible(false);
            }
        }
    }
},
    _refresh_icons: function() {
    // source line 485, bytecode pc 18
    this.log("_refresh_icons");
    // source line 486, bytecode pc 31
    this._refresh_icons_models();
    // source line 487, bytecode pc 44
    this._refresh_icons_views();
},
    _init_icons_models: function() {
    // source line 491, bytecode pc 12
    this._refresh_icons_models();
},
    _refresh_icons_models: function() {
    // source line 495, bytecode pc 12
    this._init_icons_skillAndEqu_models();
},
    _refresh_icons_views: function() {
},
    _init_icons_views: function() {
    var visibleSize, y_inc, i, btn, _desc, offset_x, offset_y;
    // source line 503, bytecode pc 24
    (visibleSize = xs.director.getVisibleSize());
    // source line 504, bytecode pc 42
    (y_inc = ((visibleSize.height - 120) / 4));
    // source line 505, bytecode pc 47
    (i = 0);
    while ((i < 8)) {
        // source line 507, bytecode pc 102
        (btn = xs.Scene.TeamBuild.TeamIconButton.create(this.m_playerId, this.m_playerData));
        // source line 509, bytecode pc 111
        (_desc = "lb");
        // source line 510, bytecode pc 117
        (offset_x = 90);
        // source line 511, bytecode pc 137
        (offset_y = (((i % 4) + 0.5) * y_inc));
        if ((i > 3)) {
            // source line 513, bytecode pc 157
            (_desc = "rb");
            // source line 514, bytecode pc 166
            (offset_x = -190);
        }
        // source line 516, bytecode pc 187
        btn.setIndex((i + 1));
        // source line 517, bytecode pc 222
        btn.setCallback(this._icons_skillAndEqu_iconBtnCallback.bind(this));
        // source line 526, bytecode pc 329
        xs.Utils.Node.attachNodes(this, btn, { desc: _desc, sc: true, offset: { x: offset_x, y: offset_y } }, xs.Cfg.Scene.TeamBuildScene.m_iconBtn);
        // source line 527, bytecode pc 351
        this.m_iconBtns.push(btn);
        if ((i === 5)) {
            if (!xs.Guide.GuideMgr.getIsOver()) {
                // source line 532, bytecode pc 413
                btn.setGuideTag(3010);
            }
        }
        if ((i === 1)) {
            if (!xs.Guide.GuideMgr.getIsOver()) {
                // source line 538, bytecode pc 474
                btn.setGuideTag(4011);
            }
        }
        // source line 505, bytecode pc 487
        (i = (+i + 1));
    }
},
    setBaseTouchPriority: function(priority) {
    var i;
    // source line 545, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 546, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 547, bytecode pc 85
    this.m_teamList.setTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.TeamBuildScene.m_teamList.priority));
    // source line 548, bytecode pc 141
    this.m_teamListBg.setTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.TeamBuildScene.m_teamListBg.priority));
    // source line 549, bytecode pc 197
    this.m_gInfo.setTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.TeamBuildScene.m_gInfo.priority));
    // source line 551, bytecode pc 202
    (i = 0);
    while ((i < this.m_iconBtns.length)) {
        // source line 552, bytecode pc 268
        this.m_iconBtns[i].setTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.TeamBuildScene.m_iconBtn.priority));
        // source line 551, bytecode pc 281
        (i = (+i + 1));
    }
    if (this.b_isSelf) {
        // source line 556, bytecode pc 369
        this.m_generalMenu.setTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.TeamBuildScene.m_generalMenu.priority));
        // source line 557, bytecode pc 425
        this.m_mainMenu.setBaseTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.TeamBuildScene.m_mainMenu.priority));
        // source line 558, bytecode pc 481
        this.m_instructionBtn.setTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.TeamBuildScene.m_instructionBtn.priority));
    } else {
        // source line 560, bytecode pc 542
        this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.TeamBuildScene.m_closeBtn.priority));
    }
},
    closeBtnCallback: function() {
    // source line 564, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    _init_icons_skillAndEqu_models: function() {
    var level, lockLv_first, lockLv_second, i, _obj, general;
    // source line 568, bytecode pc 11
    (this.m_skillAndEqu_models = []);
    // source line 570, bytecode pc 34
    xs.log("TeamBuildScene updateIconBtns");
    // source line 571, bytecode pc 110
    (level = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Player.getPlayer().getPlayerLevel());
    // source line 572, bytecode pc 186
    (lockLv_first = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getOpenLevelByLieutenantPos(xs.Constant_Lieutenant_Pos_First));
    // source line 573, bytecode pc 262
    (lockLv_second = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getOpenLevelByLieutenantPos(xs.Constant_Lieutenant_Pos_Second));
    // source line 575, bytecode pc 267
    (i = 0);
    while ((i < 8)) {
        // source line 579, bytecode pc 315
        (_obj = { index: (i + 1), playerId: this.m_playerId, playerData: this.m_playerData });
        if ((i === 0)) {
            if ((level >= lockLv_second)) {
                // source line 584, bytecode pc 347
                (_obj.locked = false);
            } else {
                // source line 586, bytecode pc 362
                (_obj.locked = true);
            }
        }
        if ((i === 1)) {
            if ((level >= lockLv_first)) {
                // source line 592, bytecode pc 394
                (_obj.locked = false);
            } else {
                // source line 594, bytecode pc 409
                (_obj.locked = true);
            }
        }
        // source line 598, bytecode pc 431
        this.m_skillAndEqu_models.push(_obj);
        // source line 575, bytecode pc 444
        (i = (+i + 1));
    }
    if (this.m_curTeamData) {
        // source line 603, bytecode pc 539
        (general = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getGeneral(this.m_curTeamData));
        if (general) {
            // source line 608, bytecode pc 648
            (this.m_skillAndEqu_models[0].model = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Generals.getLieutenantByPkIdAndPos(general.getPkId(), xs.Constant_Lieutenant_Pos_Second));
            // source line 612, bytecode pc 749
            (this.m_skillAndEqu_models[1].model = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Generals.getLieutenantByPkIdAndPos(general.getPkId(), xs.Constant_Lieutenant_Pos_First));
            // source line 617, bytecode pc 851
            (this.m_skillAndEqu_models[2].model = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Skills.getSkillByGeneralPkIdAndPos(general.getPkId(), xs.Constant_Skill_Pos_Second));
            // source line 621, bytecode pc 953
            (this.m_skillAndEqu_models[3].model = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Skills.getSkillByGeneralPkIdAndPos(general.getPkId(), xs.Constant_Skill_Pos_First));
            // source line 625, bytecode pc 1055
            (this.m_skillAndEqu_models[4].model = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Equipments._getEquipmentGeneralPkIdAndPos(general.getPkId(), xs.Constant_Equ_PosType_Kit));
            // source line 629, bytecode pc 1157
            (this.m_skillAndEqu_models[5].model = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Equipments._getEquipmentGeneralPkIdAndPos(general.getPkId(), xs.Constant_Equ_PosType_Mount));
            // source line 633, bytecode pc 1259
            (this.m_skillAndEqu_models[6].model = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Equipments._getEquipmentGeneralPkIdAndPos(general.getPkId(), xs.Constant_Equ_PosType_Armor));
            // source line 637, bytecode pc 1361
            (this.m_skillAndEqu_models[7].model = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Equipments._getEquipmentGeneralPkIdAndPos(general.getPkId(), xs.Constant_Equ_PosType_Weapon));
        } else {
            // source line 640, bytecode pc 1371
            (i = 0);
            while ((i < this.m_skillAndEqu_models.length)) {
                // source line 641, bytecode pc 1394
                (this.m_skillAndEqu_models[i].model = null);
                // source line 640, bytecode pc 1407
                (i = (+i + 1));
            }
        }
    } else {
        // source line 647, bytecode pc 1438
        (i = 0);
        while ((i < this.m_skillAndEqu_models.length)) {
            // source line 648, bytecode pc 1461
            (this.m_skillAndEqu_models[i].model = null);
            // source line 649, bytecode pc 1478
            (this.m_skillAndEqu_models[i].equAble = false);
            if (this.b_isSelf) {
                if (xs.Profile.GameData.Mgr.getInstance().Hint.isEquipEnabled(this.m_curTeamPosIdx, i)) {
                    // source line 653, bytecode pc 1569
                    (this.m_skillAndEqu_models[i].equAble = true);
                } else {
                    // source line 656, bytecode pc 1591
                    (this.m_skillAndEqu_models[i].equAble = false);
                }
            }
            // source line 647, bytecode pc 1604
            (i = (+i + 1));
        }
    }
},
    _icons_skillAndEqu_iconBtnCallback: function(index, data) {
    var general;
    if ((!this.m_curTeamData && (index !== 0))) {
        // source line 667, bytecode pc 24
        return void 0;
    } else {
        if (this.m_curTeamData) {
            // source line 671, bytecode pc 112
            (general = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getGeneral(this.m_curTeamData));
            if ((!general && (index !== 0))) {
                // source line 673, bytecode pc 134
                return void 0;
            }
        }
    }
    if ((index > 0)) {
        if ((this.m_skillAndEqu_models[(index - 1)].locked === true)) {
            // source line 681, bytecode pc 218
            xs.Views.Mgr.showDialogByName("InstructionDialog", { key: "team_Instruction" });
            // source line 682, bytecode pc 220
            return void 0;
        }
    }
    // source line 686, bytecode pc 230
    (this.m_curItemData = data);
    // source line 687, bytecode pc 240
    (this.m_curItemIndex = index);
    if (data) {
        // source line 690, bytecode pc 269
        this._showDetailDialog(data, index);
    } else {
        // source line 692, bytecode pc 287
        this.showReplaceDialog();
    }
},
    _setCurIndex: function(idx) {
    // source line 699, bytecode pc 22
    this.log(("_setCurIndex:" + idx));
    if ((this.m_curIdx !== idx)) {
        // source line 703, bytecode pc 47
        (this.m_curIdx = idx);
        // source line 710, bytecode pc 121
        (this.m_curTeamData = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getTeamGeneralInPos((idx + 1)));
        // source line 711, bytecode pc 131
        (this.m_curTeamPosIdx = idx);
        // source line 713, bytecode pc 153
        xs.Debug.testBegin();
        // source line 714, bytecode pc 166
        this._refresh_nav();
        // source line 715, bytecode pc 194
        xs.Debug.testEnd("_refresh_nav after");
        // source line 716, bytecode pc 207
        this._refresh_general();
        // source line 717, bytecode pc 235
        xs.Debug.testEnd("_refresh_general after");
        // source line 718, bytecode pc 248
        this._refresh_icons();
        // source line 719, bytecode pc 276
        xs.Debug.testEnd("_refresh_icons after");
    }
},
    removeObjectAndCloseDialog: function() {
    var _itemData, _type, _position, _instance, param, _skillObj, _deputyObj;
    // source line 727, bytecode pc 9
    (_itemData = this.data);
    // source line 728, bytecode pc 19
    (_type = this.type);
    // source line 729, bytecode pc 29
    (_position = this.position);
    // source line 730, bytecode pc 39
    (_instance = this.instance);
    if (_instance.b_isSelf) {
        // source line 732, bytecode pc 79
        xs.log(("removeObjectAndCloseDialog " + _type));
        // source line 734, bytecode pc 89
        (param = {});
        // source line 736, bytecode pc 106
        (param.user_general_id = _itemData.general_pk_id);
        // source line 737, bytecode pc 118
        (param.position = _position);
        // source line 738, bytecode pc 130
        (param.type = _type);
        if ((_type == 4)) {
            // source line 742, bytecode pc 212
            (_skillObj = xs.Profile.GameData.Mgr.getInstance().Skills.getSkillByGeneralPkIdAndPos(_itemData.general_pk_id, xs.Constant_Skill_Pos_Second));
            if (_skillObj) {
                // source line 744, bytecode pc 237
                (param.object_instance_id = _skillObj.pk_id);
            }
            // source line 751, bytecode pc 293
            xs.Tools.Net.requestRemoveObject(param, function() {
    // source line 749, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 750, bytecode pc 46
    this._showFightChange(this.m_totalFightBef);
}.bind(_instance), _instance);
        } else {
            if ((_type == 1)) {
                // source line 755, bytecode pc 372
                (_deputyObj = xs.Profile.GameData.Mgr.getInstance().Generals.getLieutenantByPkIdAndPos(_itemData.general_pk_id, _position));
                if (_deputyObj) {
                    // source line 757, bytecode pc 397
                    (param.object_instance_id = _deputyObj.pk_id);
                }
                // source line 763, bytecode pc 453
                xs.Tools.Net.requestRemoveObject(param, function() {
    // source line 761, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 762, bytecode pc 46
    this._showFightChange(this.m_totalFightBef);
}.bind(_instance), _instance);
            }
        }
    }
},
    showReplaceDialog: function() {
    if ((this.m_curItemIndex === 4)) {
        // source line 772, bytecode pc 73
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_207"));
        // source line 773, bytecode pc 75
        return void 0;
    }
    if (this.b_isSelf) {
        // source line 777, bytecode pc 132
        (this.m_replaceDialog = xs.Views.Mgr.showDialogByName("ReplaceCardDialog", this.m_curItemIndex));
        // source line 778, bytecode pc 159
        this.m_replaceDialog.setReplaceData(this.m_curItemData, false);
        if (this.m_curTeamData) {
            // source line 782, bytecode pc 259
            this.m_replaceDialog.setOnGeneralData(xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getGeneral(this.m_curTeamData), true);
        }
        // source line 785, bytecode pc 279
        this.m_replaceDialog.setListener(this);
    }
},
    _showDetailDialog: function(data, index) {
    var _position, _unUseButton, _changeSkillButton;
    // source line 790, bytecode pc 3
    switch (index) {
        case 0:
        // source line 796, bytecode pc 127
        (this.detailDialog = xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: data, playerId: this.m_playerId, playerData: this.m_playerData }));
        if (this.b_isSelf) {
            // source line 800, bytecode pc 173
            this.detailDialog.setDisplayType({ type: "team" });
            // source line 802, bytecode pc 211
            this.detailDialog.setChangGeneralCB(this.showReplaceDialog.bind(this));
        } else {
            // source line 806, bytecode pc 251
            this.detailDialog.setDisplayType({ type: "achieve_nothave" });
        }
        break;
        case 1:
        case 2:
        // source line 814, bytecode pc 332
        (this.m_totalFightBef = xs.Utils.clone(xs.Profile.GameData.Mgr.getInstance().Team.getTeamTotalFighting()));
        // source line 818, bytecode pc 411
        (this.detailDialog = xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: this.m_curItemData, playerId: this.m_playerId, playerData: this.m_playerData }));
        if (this.b_isSelf) {
            // source line 822, bytecode pc 457
            this.detailDialog.setDisplayType({ type: "Deputy_General" });
            if ((this.m_curItemIndex == 1)) {
                // source line 825, bytecode pc 476
                (_position = 2);
            }
            if ((this.m_curItemIndex == 2)) {
                // source line 828, bytecode pc 495
                (_position = 1);
            }
            // source line 830, bytecode pc 533
            this.detailDialog.setChangGeneralCB(this.showReplaceDialog.bind(this));
            // source line 831, bytecode pc 607
            this.detailDialog.setUnUseCB(this.removeObjectAndCloseDialog.bind({ instance: this, data: this.m_curTeamData, type: 1, position: _position }));
        } else {
            // source line 834, bytecode pc 647
            this.detailDialog.setDisplayType({ type: "achieve_nothave" });
        }
        break;
        case 3:
        case 4:
        // source line 846, bytecode pc 731
        (this.detailDialog = xs.Views.Mgr.showDialogByName("DetailDialogSkill", { skillData: this.m_curItemData, playerId: this.m_playerId, playerData: this.m_playerData }));
        if (this.b_isSelf) {
            // source line 850, bytecode pc 747
            (_position = 0);
            if ((this.m_curItemIndex == 3)) {
                // source line 852, bytecode pc 837
                (this.m_totalFightBef = xs.Utils.clone(xs.Profile.GameData.Mgr.getInstance().Team.getTeamTotalFighting()));
                // source line 853, bytecode pc 843
                (_position = 2);
                // source line 854, bytecode pc 881
                this.detailDialog.setChangSkillCB(this.showReplaceDialog.bind(this));
                // source line 855, bytecode pc 956
                this.detailDialog.setUnUseCB(this.removeObjectAndCloseDialog.bind({ instance: this, data: this.m_curTeamData, type: 4, position: _position }));
            }
            if ((this.m_curItemIndex == 4)) {
                // source line 858, bytecode pc 975
                (_position = 1);
                // source line 859, bytecode pc 999
                this.detailDialog.setUnUseCB(function() {
    // source line 860, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_208"));
});
                // source line 862, bytecode pc 1020
                (_unUseButton = this.detailDialog.getUnUseButton());
                if (_unUseButton) {
                    // source line 864, bytecode pc 1045
                    _unUseButton.setEnabled(false);
                    // source line 865, bytecode pc 1062
                    _unUseButton.setEventOnDisable(true);
                }
                // source line 867, bytecode pc 1083
                (_changeSkillButton = this.detailDialog.getChangeSkillButton());
                if (_changeSkillButton) {
                    // source line 869, bytecode pc 1108
                    _changeSkillButton.setEnabled(false);
                    // source line 870, bytecode pc 1125
                    _changeSkillButton.setEventOnDisable(true);
                    // source line 871, bytecode pc 1149
                    this.detailDialog.setChangSkillCB(function() {
    // source line 872, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_207"));
});
                }
            }
        } else {
            // source line 879, bytecode pc 1185
            this.detailDialog.setDisplayType({ flag: false });
        }
        break;
        case 5:
        case 6:
        case 7:
        case 8:
        // source line 893, bytecode pc 1275
        (this.detailDialog = xs.Views.Mgr.showDialogByName("DetailDialogEquip", {
    equipData: this.m_curItemData,
    playerId: this.m_playerId,
    playerData: this.m_playerData,
    isSmallView: true
}));
        if (this.b_isSelf) {
            // source line 896, bytecode pc 1324
            this.detailDialog.setChangEquipCB(this.showReplaceDialog.bind(this));
        } else {
            // source line 900, bytecode pc 1360
            this.detailDialog.setDisplayType({ flag: false });
        }
        break;
        default:
        break;
    }
},
    _showFightChange: function(bef) {
    var totalFightCur, change, _style;
    // source line 911, bytecode pc 50
    (totalFightCur = xs.Profile.GameData.Mgr.getInstance().Team.getTeamTotalFighting());
    // source line 912, bytecode pc 61
    (change = (totalFightCur - bef));
    if ((change > 0)) {
        // source line 915, bytecode pc 88
        (change = ("+" + change));
        // source line 916, bytecode pc 97
        (_style = "LS_Fight_Cure");
    } else {
        if ((change < 0)) {
            // source line 919, bytecode pc 121
            (_style = "LS_Fight_Hurt");
        }
    }
    if ((change === 0)) {
        // source line 924, bytecode pc 191
        xs.Views.Mgr.showFlutterView(xs.Tools.String.createString("auto_name_210"));
    } else {
        // source line 930, bytecode pc 264
        xs.Views.Mgr.showFlutterView((xs.Tools.String.createString("auto_name_211") + change), _style);
    }
},
    Net_ReplaceTeamGeneral: function(newGeneral) {
    var param;
    // source line 938, bytecode pc 75
    (this.m_totalFightBef = xs.Utils.clone(xs.Profile.GameData.Mgr.getInstance().Team.getTeamTotalFighting()));
    // source line 940, bytecode pc 85
    (param = {});
    // source line 941, bytecode pc 95
    (param.team_id = 1);
    // source line 942, bytecode pc 112
    (param.team_position = (this.m_curIdx + 1));
    // source line 943, bytecode pc 135
    (param.general_id = newGeneral.getPkId());
    // source line 944, bytecode pc 175
    xs.Tools.Net.requestChangeTeam(param, this.Net_ReplaceTeamGeneralSuccessCallback, this);
},
    Net_ReplaceTeamGeneralSuccessCallback: function(data) {
    // source line 949, bytecode pc 26
    xs.Views.Mgr.hideAllDialog();
    // source line 950, bytecode pc 46
    this._showFightChange(this.m_totalFightBef);
    // source line 951, bytecode pc 88
    xs.Guide.GuideMgr.endStepBySequence([ "50000" ]);
    // source line 954, bytecode pc 136
    xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
},
    Net_ReplaceSkill: function(newSkill, pos) {
    var general, param;
    // source line 958, bytecode pc 29
    xs.assert(this.m_curTeamData, "Net_ReplaceEquipment can't get general data!");
    // source line 959, bytecode pc 105
    (this.m_totalFightBef = xs.Utils.clone(xs.Profile.GameData.Mgr.getInstance().Team.getTeamTotalFighting()));
    // source line 962, bytecode pc 177
    (general = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getGeneral(this.m_curTeamData));
    // source line 963, bytecode pc 187
    (param = {});
    // source line 964, bytecode pc 210
    (param.user_general_id = general.getPkId());
    // source line 965, bytecode pc 222
    (param.skill_pos = pos);
    // source line 966, bytecode pc 245
    (param.new_skill_id = newSkill.getPkId());
    // source line 967, bytecode pc 285
    xs.Tools.Net.requestEquipSkill(param, this.Net_ReplaceSkillSuccessCallback, this);
},
    Net_ReplaceSkillSuccessCallback: function(data) {
    // source line 970, bytecode pc 22
    xs.log("............Net_ReplaceEquipmentSuccessCallback");
    // source line 972, bytecode pc 49
    xs.Views.Mgr.hideAllDialog();
    // source line 973, bytecode pc 69
    this._showFightChange(this.m_totalFightBef);
    // source line 976, bytecode pc 117
    xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
},
    Net_ReplaceEquipment: function(newEquip, pos) {
    var general, param;
    // source line 981, bytecode pc 29
    xs.assert(this.m_curTeamData, "Net_ReplaceEquipment can't get general data!");
    // source line 982, bytecode pc 105
    (this.m_totalFightBef = xs.Utils.clone(xs.Profile.GameData.Mgr.getInstance().Team.getTeamTotalFighting()));
    // source line 985, bytecode pc 177
    (general = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getGeneral(this.m_curTeamData));
    // source line 986, bytecode pc 187
    (param = {});
    // source line 987, bytecode pc 210
    (param.user_general_id = general.getPkId());
    // source line 988, bytecode pc 233
    (param.new_equipment_id = newEquip.getPkId());
    // source line 989, bytecode pc 273
    xs.Tools.Net.requestEquipEquipment(param, this.Net_ReplaceEquipmentSuccessCallback, this);
},
    Net_ReplaceEquipmentSuccessCallback: function(data) {
    // source line 994, bytecode pc 26
    xs.Views.Mgr.hideAllDialog();
    // source line 995, bytecode pc 46
    this._showFightChange(this.m_totalFightBef);
    // source line 997, bytecode pc 88
    xs.Guide.GuideMgr.endStepBySequence([ "80000" ]);
    // source line 1000, bytecode pc 136
    xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
},
    Net_ReplaceAssistantGeneral: function(assistant, pos) {
    var general, param;
    // source line 1005, bytecode pc 29
    xs.assert(this.m_curTeamData, "Net_ReplaceAssistantGeneral can't get general data!");
    // source line 1006, bytecode pc 105
    (this.m_totalFightBef = xs.Utils.clone(xs.Profile.GameData.Mgr.getInstance().Team.getTeamTotalFighting()));
    // source line 1009, bytecode pc 177
    (general = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getGeneral(this.m_curTeamData));
    // source line 1010, bytecode pc 187
    (param = {});
    // source line 1011, bytecode pc 210
    (param.major_user_general_id = general.getPkId());
    // source line 1012, bytecode pc 233
    (param.lieutenant_user_general_id = assistant.getPkId());
    // source line 1013, bytecode pc 245
    (param.position = pos);
    // source line 1014, bytecode pc 285
    xs.Tools.Net.requestEquipAssistantGeneral(param, this.Net_ReplaceAssistantGeneralSuccessCallback, this);
},
    Net_ReplaceAssistantGeneralSuccessCallback: function(data) {
    // source line 1017, bytecode pc 22
    xs.log("............Net_ReplaceAssistantGeneralSuccessCallback");
    // source line 1019, bytecode pc 49
    xs.Views.Mgr.hideAllDialog();
    // source line 1020, bytecode pc 69
    this._showFightChange(this.m_totalFightBef);
    // source line 1023, bytecode pc 117
    xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
},
    ReplaceCardDialog_replaceCard: function(data, index) {
    var general, isUnique;
    // source line 1028, bytecode pc 26
    xs.log(("ReplaceCardDialog_replaceCard............." + index));
    // source line 1030, bytecode pc 30
    switch (index) {
        case 0:
        // source line 1033, bytecode pc 95
        this.Net_ReplaceTeamGeneral(data);
        break;
        case 1:
        // source line 1038, bytecode pc 130
        xs.assert(this.m_curTeamData, "teamData can't  be null!");
        // source line 1041, bytecode pc 202
        (general = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getGeneral(this.m_curTeamData));
        // source line 1043, bytecode pc 297
        (isUnique = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Generals.isThisLieutenantCanBeSet(general, data.getPkId(), xs.Constant_Lieutenant_Pos_Second));
        if (isUnique) {
            // source line 1045, bytecode pc 333
            this.Net_ReplaceAssistantGeneral(data, xs.Constant_Lieutenant_Pos_Second);
        } else {
            // source line 1047, bytecode pc 398
            xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_212"));
        }
        break;
        case 2:
        // source line 1053, bytecode pc 433
        xs.assert(this.m_curTeamData, "teamData can't  be null!");
        // source line 1056, bytecode pc 505
        (general = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getGeneral(this.m_curTeamData));
        // source line 1058, bytecode pc 600
        (isUnique = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Generals.isThisLieutenantCanBeSet(general, data.getPkId(), xs.Constant_Lieutenant_Pos_First));
        if (isUnique) {
            // source line 1060, bytecode pc 636
            this.Net_ReplaceAssistantGeneral(data, xs.Constant_Lieutenant_Pos_First);
        } else {
            // source line 1062, bytecode pc 701
            xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_212"));
        }
        break;
        case 3:
        // source line 1068, bytecode pc 736
        xs.assert(this.m_curTeamData, "teamData can't  be null!");
        // source line 1071, bytecode pc 808
        (general = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getGeneral(this.m_curTeamData));
        // source line 1073, bytecode pc 903
        (isUnique = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Generals.isThisSkillCanBeSet(general, data.getPkId(), xs.Constant_Skill_Pos_Second));
        if (isUnique) {
            // source line 1075, bytecode pc 939
            this.Net_ReplaceSkill(data, xs.Constant_Skill_Pos_Second);
        } else {
            // source line 1077, bytecode pc 1004
            xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_212"));
        }
        break;
        case 4:
        // source line 1084, bytecode pc 1034
        xs.assert(false, "nature Skill can't be replaced!");
        break;
        case 5:
        // source line 1089, bytecode pc 1067
        this.Net_ReplaceEquipment(data, xs.Constant_Equ_PosType_Kit);
        break;
        case 6:
        // source line 1094, bytecode pc 1100
        this.Net_ReplaceEquipment(data, xs.Constant_Equ_PosType_Mount);
        break;
        case 7:
        // source line 1099, bytecode pc 1133
        this.Net_ReplaceEquipment(data, xs.Constant_Equ_PosType_Armor);
        break;
        case 8:
        // source line 1104, bytecode pc 1166
        this.Net_ReplaceEquipment(data, xs.Constant_Equ_PosType_Weapon);
        break;
        default:
        break;
    }
},
    ReplaceCardDialog_close: function() {
    // source line 1117, bytecode pc 7
    (this.m_replaceDialog = null);
},
    onTouchedAtIndex_by_GeneralSwapView: function(idx) {
    var replaceGeneral;
    // source line 1123, bytecode pc 4
    (replaceGeneral = null);
    if (this.m_curTeamData) {
        // source line 1126, bytecode pc 87
        (replaceGeneral = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getGeneral(this.m_curTeamData));
    }
    // source line 1129, bytecode pc 106
    this._icons_skillAndEqu_iconBtnCallback(0, replaceGeneral);
},
    onSelect_NextOne_by_GeneralSwapView: function(idxCur) {
    var _idxNew;
    // source line 1134, bytecode pc 49
    (_idxNew = xs.Utils.Math.bound_min_max((idxCur + 1), 0, this.m_general_dataSource.length));
    // source line 1135, bytecode pc 66
    this._setCurIndex(_idxNew);
},
    onSelect_LastOne_by_GeneralSwapView: function(idxCur) {
    var _idxNew;
    // source line 1139, bytecode pc 49
    (_idxNew = xs.Utils.Math.bound_min_max((idxCur - 1), 0, this.m_general_dataSource.length));
    // source line 1140, bytecode pc 66
    this._setCurIndex(_idxNew);
},
    GeneralSwapView_swapAtIndex: function(index) {
    // source line 1145, bytecode pc 16
    this._setCurIndex(index);
},
    scrollViewDidScroll: function() {
},
    scrollViewDidZoom: function() {
},
    tableCellTouched: function(table, cell) {
    var idx, lockLv;
    // source line 1153, bytecode pc 17
    (idx = cell.getIdx());
    if ((this.m_nav.pos_array[idx].type === xs.Scene.TeamBuild.NavItem.Const_Type_Locked)) {
        // source line 1156, bytecode pc 139
        (lockLv = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getOpenLevelByTeamPos((idx + 1)));
        // source line 1157, bytecode pc 236
        xs.Views.Mgr.showToast(((xs.Tools.String.createString("auto_name_213") + lockLv) + xs.Tools.String.createString("auto_name_214")));
        // source line 1158, bytecode pc 238
        return void 0;
    }
    // source line 1161, bytecode pc 260
    xs.Debug.testBegin();
    // source line 1162, bytecode pc 277
    this._setCurIndex(idx);
    // source line 1163, bytecode pc 305
    xs.Debug.testEnd("_setCurIndex-end");
    if (!xs.Guide.GuideMgr.getIsOver()) {
        if ((idx === 1)) {
            // source line 1167, bytecode pc 389
            xs.Guide.GuideMgr.endStepBySequence([ "40104" ]);
        }
        if ((idx === 2)) {
            // source line 1170, bytecode pc 442
            xs.Guide.GuideMgr.endStepBySequence([ "150105" ]);
        }
    }
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 1176, bytecode pc 6
    return this.m_teamListCellSize;
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 1181, bytecode pc 24
    this.markFuncBegin("TeamBuildLayer.tableCellAtIndex", "begin");
    try {
        // source line 1186, bytecode pc 43
        (cell = table.dequeueCell());
        if (!cell) {
            // source line 1188, bytecode pc 94
            (cell = xs.Scene.TeamBuild.NavItem.create(this.m_teamListCellSize));
        }
        // source line 1190, bytecode pc 125
        cell.reloadData(this.m_nav.pos_array[idx]);
    } catch (e) {
        // source line 1192, bytecode pc 161
        xs.warnException(e);
        /* TODO_BYTECODE pc=162 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 1195, bytecode pc 195
    this.markFuncEnd("TeamBuildLayer.tableCellAtIndex", "end");
    // source line 1197, bytecode pc 199
    return cell;
},
    numberOfCellsInTableView: function(table) {
    // source line 1202, bytecode pc 61
    return xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Team.getTeamMaxLength();
}
}));
// source line 1206, bytecode pc 559
(xs.Scene.TeamBuildLayer.create = function(playerId, playerData) {
    var layer;
    // source line 1207, bytecode pc 23
    (layer = new xs.Scene.TeamBuildLayer());
    if ((layer && layer.init(playerId, playerData))) {
        // source line 1209, bytecode pc 76
        layer.setBaseTouchPriority(0);
        // source line 1210, bytecode pc 80
        return layer;
    }
    // source line 1212, bytecode pc 82
    return null;
});
// source line 1221, bytecode pc 623
(xs.Scene.TeamBuildScene = cc.Scene.extend({
    ctor: function() {
    // source line 1218, bytecode pc 12
    this._super();
    // source line 1219, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(playerId, playerData) {
    var layer;
    if (!this._super()) {
        // source line 1224, bytecode pc 19
        return false;
    }
    // source line 1226, bytecode pc 57
    (layer = xs.Scene.TeamBuildLayer.create(playerId, playerData));
    // source line 1229, bytecode pc 113
    xs.Utils.Node.attachNodes(this, layer, { desc: "lb", sc: true });
    // source line 1231, bytecode pc 115
    return true;
}
}));
// source line 1235, bytecode pc 649
(xs.Scene.TeamBuildScene.create = function(data) {
    var scene, playerId, playerData;
    // source line 1236, bytecode pc 23
    (scene = new xs.Scene.TeamBuildScene());
    // source line 1237, bytecode pc 28
    (playerId = null);
    // source line 1238, bytecode pc 33
    (playerData = null);
    if (data) {
        // source line 1240, bytecode pc 53
        (playerId = data.playerId);
        // source line 1241, bytecode pc 65
        (playerData = data.playerData);
    }
    if ((scene && scene.init(playerId, playerData))) {
        // source line 1246, bytecode pc 105
        return scene;
    }
    // source line 1248, bytecode pc 107
    return null;
});
// source line 1254, bytecode pc 743
xs.Scene.Mgr.registerScene("TeamBuildScene", {
    "class": xs.Scene.TeamBuildScene,
    type: xs.Constant_SceneType_General,
    area: [ "ZuiduiMenuScene01" ]
});
