// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Beauty/BeautyScene.js:1
// source line 1168, bytecode pc 633
(xs.Views.BeautyLayer = cc.Layer.extend({
    name: "xs.Views.BeautyLayer",
    ctor: function() {
    // source line 10, bytecode pc 12
    this._super();
    // source line 11, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(param) {
    if (!this._super()) {
        // source line 16, bytecode pc 19
        return false;
    }
    // source line 19, bytecode pc 27
    (this.m_curTeamListIndex = 0);
    // source line 20, bytecode pc 35
    (this.m_initTeamListIndex = 0);
    // source line 21, bytecode pc 43
    (this.m_initTeamList = true);
    // source line 22, bytecode pc 51
    (this.m_gInfo = null);
    // source line 24, bytecode pc 63
    (this.m_iconsList = []);
    // source line 26, bytecode pc 65
    return true;
},
    initData: function() {
    var dataSource, i, model;
    // source line 30, bytecode pc 48
    (this.m_Beauty = xs.Profile.GameData.PushInfo.getInstance().getBeautyData());
    // source line 31, bytecode pc 72
    (this.m_BeautyInfo = this.m_Beauty.getBeautyInfo());
    // source line 32, bytecode pc 96
    (this.m_BeautyRecord = this.m_Beauty.getBeautyRecord());
    // source line 33, bytecode pc 120
    (this.m_UserBeautyInfo = this.m_Beauty.getUserBeautyInfo());
    // source line 34, bytecode pc 144
    (this.m_TalentInfo = this.m_Beauty.getTalentInfo());
    // source line 36, bytecode pc 153
    (dataSource = []);
    // source line 37, bytecode pc 158
    (i = 0);
    while ((i < this.m_BeautyInfo.length)) {
        // source line 38, bytecode pc 196
        (model = this.getGeneralModelById(this.m_BeautyInfo[i].general_id));
        // source line 39, bytecode pc 220
        (model.is_lock = this.m_BeautyInfo[i].is_lock);
        // source line 40, bytecode pc 244
        (model.m_level = this.m_BeautyInfo[i].max_level);
        if ((this.m_BeautyInfo[i].beauty_id == this.m_UserBeautyInfo.beauty_id)) {
            // source line 42, bytecode pc 296
            (model.m_level = this.m_UserBeautyInfo.talent_level);
            // source line 43, bytecode pc 306
            (this.m_initTeamListIndex = i);
        }
        // source line 45, bytecode pc 317
        (dataSource[i] = model);
        // source line 37, bytecode pc 331
        (i = (+i + 1));
    }
    // source line 48, bytecode pc 363
    (this.generalList = dataSource);
    // source line 50, bytecode pc 382
    (this.m_curr_beauty_id = this.getCurrBeautyId());
    // source line 51, bytecode pc 401
    (this.m_curr_general_id = this.getCurrGeneralId());
    // source line 55, bytecode pc 473
    (this.m_time = ((parseInt(this.m_UserBeautyInfo.end_time) > 0) ? parseInt(this.m_UserBeautyInfo.end_time) : 0));
    // source line 57, bytecode pc 503
    xs.log((" initData  time:" + this.m_time));
    // source line 59, bytecode pc 523
    this.setTime(this.m_time);
},
    initUI: function() {
    var visibleOrigin, visibleSize, _tmpSize, generalBody_width, generalBody_height;
    // source line 64, bytecode pc 24
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 65, bytecode pc 49
    (visibleSize = xs.director.getVisibleSize());
    // source line 66, bytecode pc 88
    (_tmpSize = cc.size(114.28571428571429, (visibleSize.height - 160)));
    // source line 67, bytecode pc 98
    (this._viewSize = _tmpSize);
    // source line 68, bytecode pc 164
    (this._viewPosition = cc.p((((visibleSize.width / 2) - 390) - (xs.Views.MainMenuView.Width / 2)), 60));
    // source line 71, bytecode pc 172
    (this.m_title_gong = null);
    // source line 72, bytecode pc 180
    (this.m_title_zhi = null);
    // source line 73, bytecode pc 188
    (this.m_title_ti = null);
    // source line 74, bytecode pc 196
    (this.m_title_fang = null);
    // source line 76, bytecode pc 204
    (this.m_num = null);
    // source line 77, bytecode pc 212
    (this.m_count = null);
    // source line 78, bytecode pc 220
    (this.m_now_gong = null);
    // source line 79, bytecode pc 228
    (this.m_next_gong = null);
    // source line 80, bytecode pc 236
    (this.m_now_zhi = null);
    // source line 81, bytecode pc 244
    (this.m_next_zhi = null);
    // source line 82, bytecode pc 252
    (this.m_now_ti = null);
    // source line 83, bytecode pc 260
    (this.m_next_ti = null);
    // source line 84, bytecode pc 268
    (this.m_now_fang = null);
    // source line 85, bytecode pc 276
    (this.m_next_fang = null);
    // source line 86, bytecode pc 284
    (this.m_progress = null);
    // source line 87, bytecode pc 292
    (this.m_progress_img = null);
    // source line 89, bytecode pc 300
    (this.m_tips = null);
    // source line 90, bytecode pc 308
    (this.m_nowCfg = null);
    // source line 91, bytecode pc 316
    (this.m_nextCfg = null);
    // source line 93, bytecode pc 343
    (this.m_scrollPosition = cc.p(0, 0));
    // source line 94, bytecode pc 351
    (this.m_scrollPositionY = 0);
    // source line 98, bytecode pc 367
    (generalBody_width = (visibleSize.width - 400));
    // source line 99, bytecode pc 381
    (generalBody_height = (visibleSize.height - 0));
    // source line 102, bytecode pc 439
    (this.m_gInfo = xs.Views.GeneralSwapView.create(cc.size(generalBody_width, generalBody_height)));
    // source line 104, bytecode pc 459
    this.m_gInfo.setListener(this);
    // source line 105, bytecode pc 488
    this.m_gInfo.setOffsetY(((generalBody_height / 2) - 180));
    // source line 107, bytecode pc 512
    this.m_gInfo.setMaxScale(0.86);
    // source line 108, bytecode pc 525
    this.reloadGeneralSwapView();
    // source line 116, bytecode pc 635
    xs.Utils.Node.attachNodes(this, this.m_gInfo, { desc: "lb", sc: true, offset: { x: 60, y: 20 } }, xs.Cfg.Scene.TeamBuildScene.m_gInfo);
    // source line 121, bytecode pc 648
    (this.m_teamListSize = this._viewSize);
    // source line 122, bytecode pc 685
    (this.m_teamList = cc.TableView.create(this, this.m_teamListSize));
    // source line 124, bytecode pc 705
    this.m_teamList.setDelegate(this);
    // source line 125, bytecode pc 734
    this.m_teamList.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 126, bytecode pc 763
    this.m_teamList.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 127, bytecode pc 788
    this.m_teamList.setPosition(this._viewPosition);
    // source line 135, bytecode pc 898
    xs.Utils.Node.attachNodes(this, this.m_teamList, { desc: "lb", sc: true, offset: { x: 40, y: 50 } }, xs.Cfg.Scene.TeamBuildScene.m_gInfo);
    // source line 137, bytecode pc 919
    this.m_teamList.setTouchPriority(-10);
    // source line 140, bytecode pc 932
    this.initIconBtns();
    // source line 141, bytecode pc 947
    (this.m_numItemIcon = this.m_iconsList[0]);
    // source line 142, bytecode pc 962
    (this.m_boxItemIcon = this.m_iconsList[1]);
    // source line 143, bytecode pc 978
    (this.m_talentItemIcon = this.m_iconsList[2]);
    // source line 146, bytecode pc 1017
    (this.m_ShopBtn = xs.Views.Btn.create("Btn_BeautyShop"));
    // source line 147, bytecode pc 1104
    xs.Utils.Node.attachNodes(this, this.m_ShopBtn, { desc: "ct", sc: true, offset: cc.p(240, -20) });
    // source line 148, bytecode pc 1143
    this.m_ShopBtn.setAnchorPoint(cc.p(0, 1));
    // source line 149, bytecode pc 1192
    this.m_ShopBtn.setOnClickCallBack(this.showShopDlg.bind({ self: this }));
    // source line 152, bytecode pc 1243
    (this.ccb_titleNode = xs.ccb_reader.load(xs.Cfg.CCBI.BeautyTitle, this));
    // source line 153, bytecode pc 1332
    xs.Utils.Node.attachNodes(this, this.ccb_titleNode, { desc: "ct", sc: true, offset: cc.p(-380, -110) });
    // source line 154, bytecode pc 1394
    xs.Utils.UI.replaceCcbByCfg(this.ccb_titleNode, xs.Scene.BeautyScene.cfg.titleCfg, this);
    // source line 158, bytecode pc 1445
    (this.ccb_infoNode = xs.ccb_reader.load(xs.Cfg.CCBI.BeautyInfo, this));
    // source line 159, bytecode pc 1535
    xs.Utils.Node.attachNodes(this, this.ccb_infoNode, { desc: "c", sc: true, offset: cc.p(200, -260) });
    // source line 160, bytecode pc 1597
    xs.Utils.UI.replaceCcbByCfg(this.ccb_infoNode, xs.Scene.BeautyScene.cfg.infoCfg, this);
    // source line 163, bytecode pc 1636
    (this.m_cultivateBtn = xs.Views.Btn.create("Btn_BeautyCultivate"));
    // source line 164, bytecode pc 1726
    xs.Utils.Node.attachNodes(this, this.m_cultivateBtn, { desc: "c", sc: true, offset: cc.p(340, -200) });
    // source line 165, bytecode pc 1773
    this.m_cultivateBtn.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 166, bytecode pc 1794
    this.m_cultivateBtn.setTouchPriority(-20);
    // source line 167, bytecode pc 1832
    this.m_cultivateBtn.setOnClickCallBack(this.onClickCultivate.bind(this));
    // source line 169, bytecode pc 1882
    (this.m_cultivateTitle = xs.Tools.String.createStringWithArgsArray("BeautyBtnTitle1", [ 1 ]));
    // source line 171, bytecode pc 1907
    this.m_cultivateBtn.setString(this.m_cultivateTitle);
    // source line 174, bytecode pc 1946
    (this.m_cultivateLabel = xs.Factorys.Label.createByStyleId("LS_hongyan_txt"));
    // source line 175, bytecode pc 1989
    this.m_cultivateLabel.setAnchorPoint(cc.p(0, 0.5));
    // source line 176, bytecode pc 2048
    (this.m_cultivateStr = xs.Tools.String.createStringWithArgsArray("BeautyLabel2", [ xs.Constant_Beauty_Const_LingYu ]));
    // source line 177, bytecode pc 2073
    this.m_cultivateLabel.setString(this.m_cultivateStr);
    // source line 178, bytecode pc 2163
    xs.Utils.Node.attachNodes(this, this.m_cultivateLabel, { desc: "c", sc: true, offset: cc.p(260, -245) });
    // source line 181, bytecode pc 2202
    (this.m_cultivateGetLabel = xs.Factorys.Label.createByStyleId("LS_hongyan_txt"));
    // source line 182, bytecode pc 2245
    this.m_cultivateGetLabel.setAnchorPoint(cc.p(0, 0.5));
    // source line 183, bytecode pc 2295
    (this.m_cultivateGetStr = xs.Tools.String.createStringWithArgsArray("BeautyLabel3", [ 0 ]));
    // source line 184, bytecode pc 2320
    this.m_cultivateGetLabel.setString(this.m_cultivateGetStr);
    // source line 185, bytecode pc 2410
    xs.Utils.Node.attachNodes(this, this.m_cultivateGetLabel, { desc: "c", sc: true, offset: cc.p(260, -270) });
    // source line 189, bytecode pc 2443
    (this.m_progress = xs.Views.NormalProgressTimer.create());
    // source line 190, bytecode pc 2482
    xs.Utils.replaceNode(this.ccb_infoNode, 25, this.m_progress);
    // source line 191, bytecode pc 2506
    this.m_progress.setExpShow(100, 100);
    // source line 195, bytecode pc 2565
    (this.m_scale9StatusBg = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.hongyan.hongyan_dibutiao.frameName));
    // source line 196, bytecode pc 2612
    this.m_scale9StatusBg.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 197, bytecode pc 2654
    this.m_scale9StatusBg.setPreferredSize(cc.size(460, 39));
    // source line 203, bytecode pc 2744
    xs.Utils.Node.attachNodes(this, this.m_scale9StatusBg, { desc: "c", sc: true, offset: { x: -150, y: -180 } });
    // source line 208, bytecode pc 2783
    (this.m_statusLabel = xs.Factorys.Label.createByStyleId("LS_liaotian_5"));
    // source line 209, bytecode pc 2807
    this.m_statusLabel.setString("");
    // source line 215, bytecode pc 2897
    xs.Utils.Node.attachNodes(this, this.m_statusLabel, { desc: "c", sc: true, offset: { x: -150, y: -180 } });
    // source line 221, bytecode pc 2905
    (this.m_isActive = false);
    // source line 223, bytecode pc 2944
    (this.m_activetTitle = xs.Tools.String.createString("BeautyBtnTitle2"));
    // source line 224, bytecode pc 2983
    (this.m_noActivetTitle = xs.Tools.String.createString("BeautyTitle"));
    // source line 227, bytecode pc 3022
    (this.m_activeBtn = xs.Views.Btn.create("Btn_BeautyActive"));
    // source line 228, bytecode pc 3114
    xs.Utils.Node.attachNodes(this, this.m_activeBtn, { desc: "c", offset: cc.p(-150, -240), sc: true });
    // source line 229, bytecode pc 3135
    this.m_activeBtn.setTouchPriority(-20);
    // source line 230, bytecode pc 3173
    this.m_activeBtn.setOnClickCallBack(this.onClickActive.bind(this));
    // source line 231, bytecode pc 3193
    this.updateActiveStatus(this.m_isActive);
    // source line 236, bytecode pc 3237
    (this.m_instructionBtn = xs.Tools.Views.Btn.createInstruction("BeautyExplain"));
    // source line 237, bytecode pc 3328
    xs.Utils.Node.attachNodes(this, this.m_instructionBtn, { desc: "cb", offset: cc.p(-350, 100), sc: true }, null);
    // source line 238, bytecode pc 3349
    this.m_instructionBtn.setTouchPriority(-20);
    // source line 242, bytecode pc 3408
    (this.m_scale9ContentBg = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.Cmn01_news.frameName));
    // source line 243, bytecode pc 3447
    this.m_scale9ContentBg.setAnchorPoint(cc.p(0, 0));
    // source line 244, bytecode pc 3489
    this.m_scale9ContentBg.setPreferredSize(cc.size(960, 41));
    // source line 250, bytecode pc 3572
    xs.Utils.Node.attachNodes(this, this.m_scale9ContentBg, { desc: "lb", sc: true, offset: { x: 40, y: 0 } });
    // source line 254, bytecode pc 3611
    (this.m_currKillInfoStr = xs.Tools.String.createString("BeautyNoMaxStr"));
    // source line 256, bytecode pc 3650
    (this.m_newsLabel = xs.Factorys.Label.createByStyleId("LS_liaotian_5"));
    // source line 263, bytecode pc 3731
    xs.Utils.Node.attachNodes(this.m_scale9ContentBg, this.m_newsLabel, { desc: "c", offset: { x: 0, y: 0 } });
    // source line 266, bytecode pc 3756
    this.m_newsLabel.setString(this.m_currKillInfoStr);
    // source line 268, bytecode pc 3780
    this.m_title_gong.setString("0");
    // source line 269, bytecode pc 3804
    this.m_title_zhi.setString("0");
    // source line 270, bytecode pc 3828
    this.m_title_ti.setString("0");
    // source line 271, bytecode pc 3852
    this.m_title_fang.setString("0");
    // source line 273, bytecode pc 3876
    this.m_num.setString("0");
    // source line 274, bytecode pc 3900
    this.m_count.setString("0");
    // source line 275, bytecode pc 3924
    this.m_now_gong.setString("0");
    // source line 276, bytecode pc 3948
    this.m_next_gong.setString("0");
    // source line 277, bytecode pc 3972
    this.m_now_zhi.setString("0");
    // source line 278, bytecode pc 3996
    this.m_next_zhi.setString("0");
    // source line 279, bytecode pc 4020
    this.m_now_ti.setString("0");
    // source line 280, bytecode pc 4044
    this.m_next_ti.setString("0");
    // source line 281, bytecode pc 4068
    this.m_now_fang.setString("0");
    // source line 282, bytecode pc 4092
    this.m_next_fang.setString("0");
    // source line 284, bytecode pc 4105
    this.updateUI();
    // source line 286, bytecode pc 4120
    this.setBaseTouchPriority(0);
    if (this.m_initTeamList) {
        // source line 291, bytecode pc 4139
        (this.m_initTeamList = false);
        // source line 293, bytecode pc 4159
        this.setTeamListCurIndex(this.m_initTeamListIndex);
        // source line 294, bytecode pc 4184
        this.m_gInfo.setIndex(this.m_initTeamListIndex);
    }
},
    setBaseTouchPriority: function(priority) {
    var i;
    // source line 299, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 300, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 301, bytecode pc 34
    (i = 0);
    while ((i < this.m_iconsList.length)) {
        // source line 302, bytecode pc 100
        this.m_iconsList[i].setTouchPriority((this.m_baseTouchPriority + xs.Cfg.Scene.BeautyScene.m_iconBtn.priority));
        // source line 301, bytecode pc 113
        (i = (+i + 1));
    }
},
    initIconBtns: function() {
    var visibleSize, hGap, i, btn, _desc, offset_x, offset_y;
    // source line 307, bytecode pc 24
    (visibleSize = xs.director.getVisibleSize());
    // source line 308, bytecode pc 30
    (hGap = 20);
    // source line 309, bytecode pc 35
    (i = 0);
    while ((i < 3)) {
        // source line 310, bytecode pc 71
        (btn = xs.Views.BeautyIconButton.create());
        // source line 312, bytecode pc 80
        (_desc = "c");
        // source line 313, bytecode pc 87
        (offset_x = 130);
        // source line 315, bytecode pc 105
        (offset_y = ((156 - (i * 120)) - hGap));
        // source line 317, bytecode pc 126
        btn.setIconName("");
        // source line 318, bytecode pc 145
        btn.setIndex(i);
        // source line 319, bytecode pc 180
        btn.setCallback(this.iconBtnCallback.bind(this));
        // source line 320, bytecode pc 202
        this.m_iconsList.push(btn);
        // source line 326, bytecode pc 309
        xs.Utils.Node.attachNodes(this, btn, { desc: _desc, sc: true, offset: { x: offset_x, y: offset_y } }, xs.Cfg.Scene.TeamBuildScene.m_iconBtn);
        // source line 309, bytecode pc 322
        (i = (+i + 1));
    }
},
    updateIconBtns: function(data) {
    // source line 333, bytecode pc 26
    xs.dump(" updateIconBtns ", data);
    // source line 334, bytecode pc 46
    this.m_numItemIcon.setNum(0);
    // source line 335, bytecode pc 66
    this.m_boxItemIcon.setNum(0);
    // source line 336, bytecode pc 86
    this.m_talentItemIcon.setNum(0);
    if (data) {
        // source line 339, bytecode pc 136
        this.m_numItemIcon.setLevel(parseInt(data.beauty_currency));
        // source line 340, bytecode pc 178
        this.m_boxItemIcon.setLevel(parseInt(data.box_num));
        // source line 341, bytecode pc 220
        this.m_talentItemIcon.setLevel(parseInt(data.box_detail));
    }
},
    iconBtnCallback: function(index) {
    var params;
    // source line 346, bytecode pc 39
    (params = { index: index, nowData: this.m_nowCfg, nextData: this.m_nextCfg });
    // source line 347, bytecode pc 66
    xs.dump(" IconBtn params:", params);
    // source line 349, bytecode pc 103
    xs.Views.Mgr.showDialogByName("BeautyTipsDialog", params);
},
    updateActiveStatus: function(isActive) {
    var str;
    // source line 355, bytecode pc 26
    xs.log(("updateActiveStatus isActive: " + isActive));
    // source line 356, bytecode pc 35
    (str = "");
    if (!isActive) {
        // source line 372, bytecode pc 80
        (str = xs.Tools.String.createString("BeautyStatus2"));
        // source line 373, bytecode pc 102
        this.m_statusLabel.setString(str);
    }
    // source line 378, bytecode pc 146
    this.m_activeBtn.setString((isActive ? this.m_activetTitle : this.m_noActivetTitle));
    // source line 380, bytecode pc 159
    this.onCountDown();
    // source line 382, bytecode pc 191
    this.m_scale9StatusBg.setVisible(!this.isLock());
    // source line 383, bytecode pc 223
    this.m_statusLabel.setVisible(!this.isLock());
    // source line 384, bytecode pc 255
    this.m_activeBtn.setVisible(!this.isLock());
    // source line 385, bytecode pc 287
    this.m_cultivateBtn.setVisible(!this.isLock());
    if (this.m_isMax) {
        // source line 388, bytecode pc 318
        this.m_cultivateBtn.setVisible(false);
    }
    if ((!this.m_isActive && this.isCruise())) {
        // source line 392, bytecode pc 373
        this.m_scale9StatusBg.setVisible(this.m_isActive);
        // source line 393, bytecode pc 398
        this.m_statusLabel.setVisible(this.m_isActive);
        // source line 394, bytecode pc 423
        this.m_activeBtn.setVisible(this.m_isActive);
    }
    if ((isActive && this.isBeautyTimeEnd())) {
        // source line 398, bytecode pc 469
        this.m_scale9StatusBg.setVisible(false);
        // source line 399, bytecode pc 489
        this.m_statusLabel.setVisible(false);
        // source line 400, bytecode pc 509
        this.m_activeBtn.setVisible(true);
        // source line 401, bytecode pc 560
        this.m_activeBtn.setString(xs.Tools.String.createString("BeautyBtnTitle3"));
    }
},
    updateAllUI: function() {
    // source line 406, bytecode pc 17
    (this.m_UserBeautyInfo.end_time = this.m_time);
    // source line 407, bytecode pc 30
    this.initData();
    // source line 408, bytecode pc 48
    this.m_teamList.reloadData();
    // source line 409, bytecode pc 61
    this.reloadGeneralSwapView();
    // source line 410, bytecode pc 74
    this.updateUI();
    if ((this.m_scrollPositionY > 0)) {
        // source line 413, bytecode pc 112
        this.m_teamList.setContentOffset(this.m_scrollPosition);
    }
},
    updateUI: function() {
    var nowCfg, nextCfg, nowLv, nextLv, itemInfo;
    // source line 418, bytecode pc 22
    xs.log("updateUI");
    if (this.m_UserBeautyInfo) {
        // source line 422, bytecode pc 63
        this.m_title_gong.setString(this.m_UserBeautyInfo.attr_attack);
        // source line 423, bytecode pc 93
        this.m_title_zhi.setString(this.m_UserBeautyInfo.attr_wisdom);
        // source line 424, bytecode pc 123
        this.m_title_ti.setString(this.m_UserBeautyInfo.attr_hp);
        // source line 425, bytecode pc 153
        this.m_title_fang.setString(this.m_UserBeautyInfo.attr_defense);
    }
    // source line 428, bytecode pc 223
    (this.lingyunNum = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_LingYun));
    // source line 429, bytecode pc 248
    this.m_num.setString(this.lingyunNum);
    // source line 432, bytecode pc 267
    (this.m_currKillInfoStr = this.getMaxInfoStr());
    // source line 433, bytecode pc 292
    this.m_newsLabel.setString(this.m_currKillInfoStr);
    // source line 436, bytecode pc 311
    (this.m_isUse = this.isCurrUse());
    // source line 437, bytecode pc 330
    (this.m_isMax = this.isCurrMaxLevel());
    // source line 438, bytecode pc 349
    (this.m_maxLevel = this.getCurrMaxLevel());
    // source line 439, bytecode pc 358
    (nextCfg = null);
    // source line 442, bytecode pc 414
    xs.log((((((" this.m_curTeamListIndex :" + this.m_curTeamListIndex) + " isMax:") + this.m_isMax) + " this.m_isUse:") + this.m_isUse));
    if (this.m_isMax) {
        // source line 445, bytecode pc 448
        (nowCfg = this.getBeautyCfg(this.m_maxLevel));
        // source line 446, bytecode pc 465
        this.updateBeautyAttrInfo(nowCfg);
        // source line 448, bytecode pc 489
        this.m_next_gong.setString("Max");
        // source line 449, bytecode pc 513
        this.m_next_zhi.setString("Max");
        // source line 450, bytecode pc 537
        this.m_next_ti.setString("Max");
        // source line 451, bytecode pc 561
        this.m_next_fang.setString("Max");
        // source line 453, bytecode pc 585
        this.m_count.setString("0");
    } else {
        // source line 455, bytecode pc 599
        (nextLv = 0);
        if (!this.getCurrIsLock()) {
            // source line 457, bytecode pc 633
            (nowLv = this.getCurrTalentLevel());
            // source line 458, bytecode pc 651
            (nextLv = (this.getCurrTalentLevel() + 1));
        } else {
            // source line 460, bytecode pc 661
            (nowLv = 1);
            // source line 461, bytecode pc 667
            (nextLv = 2);
        }
        // source line 463, bytecode pc 704
        xs.log((((" nowLv:" + nowLv) + " nextLv:") + nextLv));
        // source line 465, bytecode pc 724
        (nowCfg = this.getBeautyCfg(nowLv));
        // source line 466, bytecode pc 744
        (nextCfg = this.getBeautyCfg(nextLv));
    }
    // source line 468, bytecode pc 781
    xs.log((((" nowCfg:" + nowCfg) + " nextCfg:") + nextCfg));
    if (nowCfg) {
        // source line 472, bytecode pc 856
        (itemInfo = xs.Profile.GameData.Mgr.getInstance().Items.getByItemId(xs.Models.ItemID_LingYun));
        if (itemInfo) {
            // source line 476, bytecode pc 928
            (this.m_cultivateGetStr = xs.Tools.String.createStringWithArgsArray("BeautyLabel3", [ itemInfo.baseDataRef.effect_value[0] ]));
            // source line 477, bytecode pc 953
            this.m_cultivateGetLabel.setString(this.m_cultivateGetStr);
            // source line 478, bytecode pc 985
            xs.log(("  itemInfo effect_value:" + itemInfo.effect_value));
        }
        // source line 481, bytecode pc 1002
        this.updateBeautyAttrInfo(nowCfg);
        // source line 482, bytecode pc 1019
        this.updateIconBtns(nowCfg);
        if (nextCfg) {
            if ((this.m_BeautyInfo[this.m_curTeamListIndex].beauty_id == this.m_UserBeautyInfo.beauty_id)) {
                // source line 486, bytecode pc 1101
                this.m_progress.setExpShow(this.m_UserBeautyInfo.current_beauty_experience, nowCfg.beauty_experience);
            } else {
                // source line 488, bytecode pc 1135
                this.m_progress.setExpShow(0, nowCfg.beauty_experience);
            }
        } else {
            if ((this.m_BeautyInfo[this.m_curTeamListIndex].beauty_id == this.m_UserBeautyInfo.beauty_id)) {
                // source line 492, bytecode pc 1214
                this.m_progress.setExpShow(this.m_UserBeautyInfo.current_beauty_experience, nowCfg.beauty_experience);
                // source line 493, bytecode pc 1238
                this.m_next_gong.setString("Max");
                // source line 494, bytecode pc 1262
                this.m_next_zhi.setString("Max");
                // source line 495, bytecode pc 1286
                this.m_next_ti.setString("Max");
                // source line 496, bytecode pc 1310
                this.m_next_fang.setString("Max");
            } else {
                // source line 498, bytecode pc 1351
                this.m_progress.setExpShow(nowCfg.beauty_experience, nowCfg.beauty_experience);
            }
        }
    }
    if (nextCfg) {
        // source line 503, bytecode pc 1378
        this.updateBeautyAttrInfo(nextCfg, true);
    }
    // source line 506, bytecode pc 1388
    (this.m_nowCfg = nowCfg);
    // source line 507, bytecode pc 1398
    (this.m_nextCfg = nextCfg);
    // source line 511, bytecode pc 1417
    (this.m_isActive = this.isCurrCruise());
    // source line 512, bytecode pc 1437
    this.updateActiveStatus(this.m_isActive);
    // source line 516, bytecode pc 1450
    this.setUpIconAndName();
},
    updateBeautyAttrInfo: function(data, isNext) {
    // source line 522, bytecode pc 22
    xs.log("updateBeautyAttrInfo");
    if (!data) {
        // source line 524, bytecode pc 33
        return void 0;
    }
    // source line 525, bytecode pc 47
    (isNext = (isNext || false));
    if (!isNext) {
        // source line 527, bytecode pc 83
        this.m_now_gong.setString(data.attr_attack);
        // source line 528, bytecode pc 110
        this.m_now_zhi.setString(data.attr_wisdom);
        // source line 529, bytecode pc 137
        this.m_now_ti.setString(data.attr_hp);
        // source line 530, bytecode pc 164
        this.m_now_fang.setString(data.attr_defense);
    } else {
        // source line 532, bytecode pc 196
        this.m_next_gong.setString(data.attr_attack);
        // source line 533, bytecode pc 223
        this.m_next_zhi.setString(data.attr_wisdom);
        // source line 534, bytecode pc 250
        this.m_next_ti.setString(data.attr_hp);
        // source line 535, bytecode pc 277
        this.m_next_fang.setString(data.attr_defense);
        // source line 536, bytecode pc 304
        this.m_count.setString(data.beauty_currency);
    }
},
    setUpIconAndName: function() {
    var visibleSize, general, generalName;
    // source line 542, bytecode pc 22
    xs.log("setUpIconAndName");
    // source line 543, bytecode pc 56
    xs.Utils.Node.safeRemoveChild(this.m_generalName);
    // source line 544, bytecode pc 64
    (this.m_generalName = null);
    // source line 546, bytecode pc 89
    (visibleSize = xs.director.getVisibleSize());
    // source line 548, bytecode pc 106
    (general = this.generalList[this.m_curTeamListIndex]);
    if (general) {
        // source line 551, bytecode pc 132
        (generalName = general.getNameString());
        // source line 552, bytecode pc 171
        (this.m_generalName = xs.Factorys.Label.createByStyleId("LS_wujiangName2"));
        // source line 553, bytecode pc 204
        this.m_generalName.setString(generalName.toWordBreak());
        // source line 554, bytecode pc 247
        this.m_generalName.setAnchorPoint(cc.p(0.5, 1));
        // source line 560, bytecode pc 343
        xs.Utils.Node.attachNodes(this, this.m_generalName, { desc: "lt", sc: true, offset: { x: ((visibleSize.width * 9) / 40), y: -120 } });
    }
},
    getMaxInfoStr: function() {
    var str, id, i;
    // source line 572, bytecode pc 8
    (str = "");
    // source line 573, bytecode pc 24
    (id = this.getCurrBeautyId());
    // source line 574, bytecode pc 29
    (i = 0);
    while ((i < this.m_BeautyRecord.length)) {
        if ((id == this.m_BeautyRecord[i].beauty_id)) {
            // source line 577, bytecode pc 139
            (str = xs.Tools.String.createStringWithArgsArray("BeautyMaxStr", [ this.m_BeautyRecord[i].upgrade_user_name, this.m_BeautyRecord[i].upgrade_time ]));
            break;
        }
        // source line 574, bytecode pc 158
        (i = (+i + 1));
    }
    if ((str == "")) {
        // source line 582, bytecode pc 230
        (str = xs.Tools.String.createString("BeautyNoMaxStr"));
    }
    // source line 584, bytecode pc 234
    return str;
},
    getGeneralModelById: function(generalId) {
    var _obj;
    // source line 588, bytecode pc 54
    (_obj = xs.Profile.GameData.Mgr.getInstance().Generals.createWithBase(generalId));
    // source line 589, bytecode pc 58
    return _obj;
},
    reloadGeneralSwapView: function() {
    // source line 593, bytecode pc 24
    this.m_gInfo.setDataSource(this.generalList);
},
    getCurrBeautyId: function() {
    var beautyId;
    // source line 597, bytecode pc 4
    (beautyId = 0);
    if (this.m_BeautyInfo[this.m_curTeamListIndex]) {
        // source line 599, bytecode pc 51
        (beautyId = (this.m_BeautyInfo[this.m_curTeamListIndex].beauty_id || 1));
    }
    // source line 601, bytecode pc 55
    return beautyId;
},
    getCurrTalentLevel: function() {
    var talentLevel;
    // source line 604, bytecode pc 4
    (talentLevel = 0);
    if (this.m_BeautyInfo[this.m_curTeamListIndex]) {
        if ((this.m_BeautyInfo[this.m_curTeamListIndex].beauty_id == this.m_UserBeautyInfo.beauty_id)) {
            // source line 607, bytecode pc 94
            (talentLevel = (parseInt(this.m_UserBeautyInfo.talent_level) || 0));
        }
        if (this.m_BeautyInfo[this.m_curTeamListIndex].max_level) {
            // source line 610, bytecode pc 133
            (talentLevel = this.getCurrMaxLevel());
        }
    }
    // source line 614, bytecode pc 137
    return talentLevel;
},
    getCurrMaxLevel: function() {
    var maxLevel;
    // source line 617, bytecode pc 4
    (maxLevel = 0);
    if (this.m_BeautyInfo[this.m_curTeamListIndex]) {
        // source line 619, bytecode pc 51
        (maxLevel = (this.m_BeautyInfo[this.m_curTeamListIndex].max_level || 0));
    }
    // source line 621, bytecode pc 55
    return maxLevel;
},
    isCurrCruise: function() {
    var isCruise;
    // source line 625, bytecode pc 4
    (isCruise = false);
    if ((this.m_BeautyInfo[this.m_curTeamListIndex].beauty_id == this.m_UserBeautyInfo.beauty_cruise_id)) {
        // source line 627, bytecode pc 81
        (isCruise = (parseInt(this.m_UserBeautyInfo.cruise_status) ? true : false));
    }
    // source line 629, bytecode pc 85
    return isCruise;
},
    isCruise: function() {
    var isCruise;
    // source line 633, bytecode pc 4
    (isCruise = false);
    // source line 634, bytecode pc 46
    (isCruise = (parseInt(this.m_UserBeautyInfo.cruise_status) ? true : false));
    // source line 635, bytecode pc 50
    return isCruise;
},
    isCurrMaxLevel: function() {
    var isMax;
    // source line 639, bytecode pc 4
    (isMax = false);
    if ((this.m_BeautyInfo[this.m_curTeamListIndex] && this.m_BeautyInfo[this.m_curTeamListIndex].max_level)) {
        // source line 642, bytecode pc 51
        (isMax = true);
    }
    // source line 644, bytecode pc 55
    return isMax;
},
    isCurrUse: function() {
    var isUse;
    // source line 648, bytecode pc 4
    (isUse = false);
    if (this.m_BeautyInfo[this.m_curTeamListIndex]) {
        if ((this.m_BeautyInfo[this.m_curTeamListIndex].beauty_id == this.m_UserBeautyInfo.beauty_cruise_id)) {
            // source line 653, bytecode pc 62
            (isUse = true);
        }
    }
    // source line 656, bytecode pc 66
    return isUse;
},
    isLock: function() {
    var isLock;
    // source line 660, bytecode pc 4
    (isLock = false);
    if ((this.m_BeautyInfo[this.m_curTeamListIndex] && this.m_BeautyInfo[this.m_curTeamListIndex].is_lock)) {
        // source line 662, bytecode pc 51
        (isLock = true);
    }
    // source line 664, bytecode pc 55
    return isLock;
},
    getBeautyCfg: function(talentLevel, beautyId) {
    var beautyData, cfgData, talentData;
    // source line 669, bytecode pc 24
    (beautyId = (beautyId || this.getCurrBeautyId()));
    // source line 670, bytecode pc 49
    (talentLevel = (talentLevel || this.getCurrMaxLevel()));
    // source line 672, bytecode pc 86
    xs.log((((" getBeautyCfg   beautyId: " + beautyId) + "   talentLevel: ") + talentLevel));
    // source line 675, bytecode pc 131
    (beautyData = xs.Tools.CfgData.readRecordByTypeAndKey(xs.Constant_CfgDataType_Beauty, beautyId));
    // source line 676, bytecode pc 136
    (cfgData = null);
    if (beautyData) {
        // source line 678, bytecode pc 155
        (talentData = beautyData[talentLevel]);
        // source line 679, bytecode pc 178
        (cfgData = (talentData ? talentData[0] : null));
    } else {
        // source line 681, bytecode pc 220
        xs.log((((" getBeautyCfg no found  beautyId " + beautyId) + "   talentLevel ") + talentLevel));
    }
    // source line 684, bytecode pc 224
    return cfgData;
},
    getCurrGeneralId: function() {
    var general_id;
    // source line 689, bytecode pc 4
    (general_id = 0);
    if (this.m_BeautyInfo[this.m_curTeamListIndex]) {
        // source line 691, bytecode pc 44
        (general_id = this.m_BeautyInfo[this.m_curTeamListIndex].general_id);
    }
    // source line 693, bytecode pc 48
    return general_id;
},
    getCurrIsLock: function() {
    var isLock;
    // source line 696, bytecode pc 4
    (isLock = true);
    if (this.m_BeautyInfo[this.m_curTeamListIndex]) {
        // source line 698, bytecode pc 44
        (isLock = this.m_BeautyInfo[this.m_curTeamListIndex].is_lock);
    }
    // source line 700, bytecode pc 48
    return isLock;
},
    showShopDlg: function() {
    var self;
    // source line 703, bytecode pc 9
    (self = this.self);
    // source line 704, bytecode pc 45
    xs.Views.Dialog.BeautyShopDialog.showWithSurrenderInfo(self);
},
    onExit: function() {
    // source line 707, bytecode pc 12
    this._super();
    // source line 708, bytecode pc 32
    this.unschedule(this.onCountDown);
},
    onEnter: function() {
    // source line 711, bytecode pc 12
    this._super();
    // source line 713, bytecode pc 34
    this.schedule(this.onCountDown, 1);
    // source line 715, bytecode pc 47
    this.initWithData();
},
    onClickActive: function() {
    // source line 724, bytecode pc 29
    xs.log((" onClickActive ：" + this.m_isActive));
    if (this.m_isActive) {
        // source line 727, bytecode pc 53
        this.requestBeautyEnd();
    } else {
        if (this.isCruise()) {
            // source line 730, bytecode pc 135
            xs.Views.Mgr.showToast(xs.Tools.String.createString("BeautyContent2"));
        } else {
            // source line 732, bytecode pc 153
            this.requestBeautySatrt();
        }
    }
},
    requestBeautySatrt: function() {
    var param;
    // source line 738, bytecode pc 22
    xs.log("requestBeautySatrt");
    // source line 740, bytecode pc 32
    (param = {});
    // source line 741, bytecode pc 53
    (param.beauty_id = this.getCurrBeautyId());
    // source line 742, bytecode pc 74
    (param.talent_level = this.getCurrTalentLevel());
    // source line 744, bytecode pc 127
    xs.Tools.Net.requestBeautySatrt(param, this.requestBeautySatrtCallback.bind(this), this);
},
    requestBeautySatrtCallback: function(data) {
    // source line 747, bytecode pc 26
    xs.dump("requestBeautySatrtCallback", data);
    if (data.result) {
        // source line 749, bytecode pc 79
        (this.m_UserBeautyInfo.end_time = parseInt(data.beauty_info.end_time));
        // source line 750, bytecode pc 121
        this.setTime(parseInt(data.beauty_info.end_time));
        // source line 751, bytecode pc 134
        (this.m_UserBeautyInfo.cruise_status = 1);
        // source line 752, bytecode pc 158
        (this.m_UserBeautyInfo.beauty_cruise_id = this.getCurrBeautyId());
        // source line 753, bytecode pc 182
        (this.m_UserBeautyInfo.talent_cruise_level = this.getCurrTalentLevel());
        // source line 755, bytecode pc 195
        this.updateUI();
    } else {
        // source line 757, bytecode pc 222
        this.showError(data.error_code);
    }
},
    setTime: function(time) {
    var strRealTime, str;
    // source line 763, bytecode pc 55
    (this.m_time = ((parseInt(time) > 0) ? parseInt(time) : 0));
    if (this.m_isActive) {
        if (this.m_time) {
            // source line 768, bytecode pc 121
            (strRealTime = xs.Utils.convertSecondToTime(parseInt(time)));
            // source line 770, bytecode pc 170
            (str = xs.Tools.String.createStringWithArgsArray("BeautyStatus1", [ strRealTime ]));
            if (this.m_statusLabel) {
                // source line 771, bytecode pc 203
                this.m_statusLabel.setString(str);
            }
        } else {
            // source line 773, bytecode pc 228
            this.m_scale9StatusBg.setVisible(false);
            // source line 774, bytecode pc 248
            this.m_statusLabel.setVisible(false);
            // source line 775, bytecode pc 268
            this.m_activeBtn.setVisible(true);
            // source line 776, bytecode pc 319
            this.m_activeBtn.setString(xs.Tools.String.createString("BeautyBtnTitle3"));
        }
    }
},
    getTime: function() {
    // source line 783, bytecode pc 13
    return (this.m_time || 0);
},
    onCountDown: function() {
    var time;
    // source line 787, bytecode pc 15
    (time = this.getTime());
    if ((time < 0)) {
        // source line 788, bytecode pc 27
        return void 0;
    }
    // source line 791, bytecode pc 36
    (time = (time - 1));
    // source line 792, bytecode pc 53
    this.setTime(time);
},
    isBeautyTimeEnd: function() {
    var isEnd;
    // source line 796, bytecode pc 4
    (isEnd = false);
    if ((this.isCurrUse() && !this.getTime())) {
        // source line 799, bytecode pc 45
        (isEnd = true);
    }
    // source line 802, bytecode pc 49
    return isEnd;
},
    getOverPrice: function() {
    var totalPrice, gap, price, time, num;
    // source line 806, bytecode pc 4
    (totalPrice = 0);
    // source line 807, bytecode pc 11
    (gap = 600);
    // source line 808, bytecode pc 17
    (price = 10);
    if (this.isCurrUse()) {
        // source line 810, bytecode pc 50
        (time = this.getTime());
        // source line 811, bytecode pc 110
        xs.log((((" getOverPrice  endTime:" + parseInt(this.m_UserBeautyInfo.end_time)) + "    nowTime:") + time));
        if ((time > 0)) {
            if ((time <= gap)) {
                // source line 815, bytecode pc 139
                (totalPrice = price);
            } else {
                // source line 817, bytecode pc 172
                (num = Math.ceil((time / gap)));
                // source line 818, bytecode pc 183
                (totalPrice = (price * num));
            }
        }
    }
    // source line 822, bytecode pc 210
    xs.log((" getOverPrice:" + totalPrice));
    // source line 823, bytecode pc 214
    return totalPrice;
},
    requestBeautyEnd: function() {
    var isEnd, param, promptStr, haveMoney, price;
    // source line 827, bytecode pc 15
    (isEnd = this.isBeautyTimeEnd());
    // source line 828, bytecode pc 31
    (param = {});
    // source line 829, bytecode pc 79
    (param.type = (isEnd ? xs.Constant_Beauty_Over_Normal : xs.Constant_Beauty_Over_Good));
    // source line 831, bytecode pc 106
    xs.log(("requestBeautyEnd isEnd:" + isEnd));
    if (isEnd) {
        // source line 834, bytecode pc 173
        xs.Tools.Net.requestBeautyEnd(param, this.requestBeautyEndCallback.bind(this), this);
    } else {
        // source line 837, bytecode pc 183
        (promptStr = null);
        // source line 838, bytecode pc 245
        (haveMoney = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerYuanBao());
        // source line 839, bytecode pc 261
        (price = this.getOverPrice());
        if ((price > haveMoney)) {
            // source line 842, bytecode pc 306
            xs.Views.Mgr.showToastByStringId("auto_name_521");
            // source line 843, bytecode pc 308
            return void 0;
        }
        // source line 846, bytecode pc 357
        (promptStr = xs.Tools.String.createStringWithArgsArray("BeautyBuyPrompt_2", [ price ]));
        // source line 858, bytecode pc 535
        xs.Views.Mgr.showDialogByName("NewCommon", {
    title: "BuyPrompt_1",
    content: promptStr,
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("auto_name_76"),
    leftCB: function() {
    // source line 853, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    // source line 856, bytecode pc 58
    xs.Tools.Net.requestBeautyEnd(param, this.requestBeautyEndCallback.bind(this), this);
    // source line 857, bytecode pc 85
    xs.Views.Mgr.hideDialog();
}.bind(this)
});
    }
},
    requestBeautyEndCallback: function(data) {
    var param;
    // source line 866, bytecode pc 26
    xs.dump("requestBeautyEndCallback", data);
    if (data.result) {
        // source line 870, bytecode pc 52
        (this.m_UserBeautyInfo.cruise_status = 0);
        // source line 871, bytecode pc 65
        (this.m_UserBeautyInfo.beauty_cruise_id = 0);
        // source line 872, bytecode pc 78
        (this.m_UserBeautyInfo.talent_cruise_level = 0);
        if (!xs.Utils.isEmpty(data.beauty_cruise_info)) {
            // source line 876, bytecode pc 124
            (param = {});
            // source line 877, bytecode pc 141
            (param.adds = data.beauty_cruise_info);
            // source line 878, bytecode pc 182
            (param.title = xs.Tools.String.createString("BeautyBtnTitle4"));
            // source line 879, bytecode pc 219
            xs.Views.Mgr.showDialogByName("UseItemSuccessDialog", param);
            // source line 881, bytecode pc 267
            xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
        }
        // source line 883, bytecode pc 280
        this.updateUI();
    } else {
        // source line 885, bytecode pc 307
        this.showError(data.error_code);
    }
},
    onClickCultivate: function() {
    var num;
    // source line 890, bytecode pc 22
    xs.log(" onClickCultivate");
    // source line 891, bytecode pc 27
    (num = 0);
    if ((this.lingyunNum >= (xs.Constant_Beauty_Const_LingYu * 1))) {
        // source line 893, bytecode pc 67
        (num = (xs.Constant_Beauty_Const_LingYu * 1));
    } else {
        // source line 895, bytecode pc 82
        (num = this.lingyunNum);
    }
    if ((num >= xs.Constant_Beauty_Const_LingYu)) {
        // source line 898, bytecode pc 118
        this.requestBeautyAddExp(num);
    } else {
        // source line 900, bytecode pc 183
        xs.Views.Mgr.showToast(xs.Tools.String.createString("BuyPrompt_4"));
    }
},
    requestBeautyAddExp: function(num) {
    var userItem, param;
    // source line 904, bytecode pc 22
    xs.log(" requestBeautyAddExp");
    // source line 905, bytecode pc 38
    (num = (num || 2000));
    // source line 906, bytecode pc 105
    (userItem = xs.Profile.GameData.Mgr.getInstance().Items.getPriorityObjById(xs.Models.ItemID_LingYun));
    // source line 908, bytecode pc 115
    (param = {});
    // source line 909, bytecode pc 138
    (param.user_item_id = userItem.getPkId());
    // source line 910, bytecode pc 150
    (param.item_num = num);
    // source line 911, bytecode pc 203
    xs.Tools.Net.requestBeautyAddExp(param, this.requestBeautyAddExpCallback.bind(this), this);
},
    updataBeautyExp: function(addExp) {
    var nowExp, nowLevel, maxExp, nextLv, nextCfg;
    // source line 915, bytecode pc 21
    (addExp = parseInt(addExp));
    if (this.m_nowCfg) {
        // source line 918, bytecode pc 62
        (nowExp = parseInt(this.m_UserBeautyInfo.current_beauty_experience));
        // source line 919, bytecode pc 78
        (nowLevel = this.getCurrTalentLevel());
        // source line 920, bytecode pc 108
        (maxExp = parseInt(this.m_nowCfg.beauty_experience));
        // source line 921, bytecode pc 155
        xs.log((((((".............  addExp：" + addExp) + "  nowExp：") + nowExp) + " maxExp：") + maxExp));
        if (((addExp + nowExp) > maxExp)) {
            // source line 924, bytecode pc 194
            (this.m_UserBeautyInfo.current_beauty_experience = ((addExp + nowExp) - maxExp));
            // source line 925, bytecode pc 204
            (nextLv = (nowLevel + 2));
            // source line 926, bytecode pc 224
            (nextCfg = this.getBeautyCfg(nextLv));
            if (this.m_nextCfg) {
                // source line 928, bytecode pc 248
                (this.m_nowCfg = this.m_nextCfg);
            }
            // source line 931, bytecode pc 258
            (this.m_nextCfg = nextCfg);
        } else {
            // source line 934, bytecode pc 282
            (this.m_UserBeautyInfo.current_beauty_experience = (addExp + nowExp));
        }
        if (this.m_UserBeautyInfo.isUplevel) {
            // source line 938, bytecode pc 328
            xs.dump(" requestBeautyAddExpCallback exp:", this.m_UserBeautyInfo);
        }
        // source line 941, bytecode pc 341
        this.updateAllUI();
    }
},
    requestBeautyAddExpCallback: function(data) {
    var nowLevel, addExp, curMaxLevle;
    // source line 946, bytecode pc 26
    xs.dump(" requestBeautyAddExpCallback", data);
    if (data.result) {
        // source line 948, bytecode pc 52
        (this.m_UserBeautyInfo.isUplevel = false);
        // source line 949, bytecode pc 67
        (nowLevel = this.m_UserBeautyInfo.talent_level);
        // source line 950, bytecode pc 91
        (addExp = (data.add_list.addExperience || 0));
        // source line 951, bytecode pc 133
        (this.m_UserBeautyInfo.attr_attack = (data.add_list.attack || this.m_UserBeautyInfo.attr_attack));
        // source line 952, bytecode pc 175
        (this.m_UserBeautyInfo.attr_defense = (data.add_list.defense || this.m_UserBeautyInfo.attr_defense));
        // source line 953, bytecode pc 217
        (this.m_UserBeautyInfo.attr_hp = (data.add_list.hp || this.m_UserBeautyInfo.attr_hp));
        // source line 954, bytecode pc 259
        (this.m_UserBeautyInfo.attr_wisdom = (data.add_list.wisdom || this.m_UserBeautyInfo.attr_wisdom));
        // source line 955, bytecode pc 301
        (this.m_UserBeautyInfo.talent_level = (data.add_list.talentLevel || this.m_UserBeautyInfo.talent_level));
        // source line 956, bytecode pc 326
        (curMaxLevle = (data.add_list.curMaxLevle || 30));
        // source line 957, bytecode pc 358
        (this.m_UserBeautyInfo.isUplevel = (data.add_list.isUplevel || false));
        if (this.m_UserBeautyInfo.isUplevel) {
            // source line 960, bytecode pc 404
            xs.dump(" requestBeautyAddExpCallback  last:", this.m_UserBeautyInfo);
            // source line 961, bytecode pc 444
            (this.m_UserBeautyInfo.beauty_id = (parseInt(this.m_UserBeautyInfo.beauty_id) + 1));
            // source line 962, bytecode pc 466
            (this.m_BeautyInfo[this.m_curTeamListIndex].max_level = curMaxLevle);
            // source line 963, bytecode pc 503
            xs.dump(" requestBeautyAddExpCallback  last item:", this.m_BeautyInfo[this.m_curTeamListIndex]);
            if (this.m_BeautyInfo[(this.m_curTeamListIndex + 1)]) {
                // source line 966, bytecode pc 545
                (this.m_BeautyInfo[(this.m_curTeamListIndex + 1)].is_lock = false);
            }
            // source line 968, bytecode pc 575
            xs.dump(" requestBeautyAddExpCallback now:", this.m_UserBeautyInfo);
            // source line 969, bytecode pc 614
            xs.dump(" requestBeautyAddExpCallback  now item:", this.m_BeautyInfo[(this.m_curTeamListIndex + 1)]);
        }
        // source line 972, bytecode pc 631
        this.updataBeautyExp(addExp);
        // source line 975, bytecode pc 679
        xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
    } else {
        // source line 977, bytecode pc 706
        this.showError(data.error_code);
    }
},
    showError: function(errorCode) {
    var errorTxt;
    // source line 983, bytecode pc 8
    (errorTxt = "");
    // source line 984, bytecode pc 12
    switch (errorCode) {
        case "e_beauty_1019":
        // source line 987, bytecode pc 73
        (errorTxt = xs.Tools.String.createString("BeautyErrorTxt1019"));
        break;
        case "e_beauty_1001":
        // source line 990, bytecode pc 114
        (errorTxt = xs.Tools.String.createString("BeautyErrorTxt1001"));
        break;
        default:
        break;
    }
    if ((errorCode != "")) {
        // source line 997, bytecode pc 169
        xs.Views.Mgr.showToast(errorCode);
    }
},
    setTeamListCurIndex: function(idx) {
    var oldIndex, preCell, currCell;
    // source line 1002, bytecode pc 26
    xs.log(("setTeamListCurIndex................." + idx));
    // source line 1003, bytecode pc 56
    xs.log(("m_curTeamListIndex ................." + this.m_curTeamListIndex));
    // source line 1008, bytecode pc 66
    (oldIndex = this.m_curTeamListIndex);
    // source line 1009, bytecode pc 76
    (this.m_curTeamListIndex = idx);
    // source line 1011, bytecode pc 101
    (preCell = this.m_teamList.cellAtIndex(oldIndex));
    // source line 1012, bytecode pc 129
    (currCell = this.m_teamList.cellAtIndex(this.m_curTeamListIndex));
    if (preCell) {
        // source line 1014, bytecode pc 154
        preCell.setIsSelected(false);
    }
    if (currCell) {
        // source line 1015, bytecode pc 179
        currCell.setIsSelected(true);
    }
    // source line 1023, bytecode pc 202
    xs.log("-----------updateUI------------");
    // source line 1024, bytecode pc 215
    this.updateUI();
    // source line 1026, bytecode pc 238
    xs.log("-----------updateUI------------     123");
},
    initWithData: function() {
    // source line 1031, bytecode pc 12
    this.initData();
    // source line 1032, bytecode pc 25
    this.initUI();
},
    createItemIcon: function(data, idex) {
    var num, model, head, str_num, lab_num;
    // source line 1037, bytecode pc 11
    (num = data.num);
    // source line 1039, bytecode pc 50
    (model = xs.Models.Item.createWithBase(data.id));
    // source line 1041, bytecode pc 68
    (head = model.createIcon_Grade());
    // source line 1042, bytecode pc 96
    (str_num = ("x" + String(num)));
    // source line 1043, bytecode pc 132
    (lab_num = xs.Factorys.Label.createByStyleId("LS_EXPInf"));
    // source line 1045, bytecode pc 151
    lab_num.setString(str_num);
    // source line 1046, bytecode pc 236
    xs.Utils.Node.attachNodes(head, lab_num, { desc: "c", offset: cc.p(5, -30), sc: false });
    // source line 1048, bytecode pc 285
    xs.Utils.Node.replaceChildSafe(this.ccb_Node, this.m_iconsList[idex], head);
    // source line 1049, bytecode pc 299
    (this.m_iconsList[idex] = head);
},
    createEquipmentFragmentIcon: function(data, idex) {
    var num, model, equipData, head, str_num, lab_num;
    // source line 1056, bytecode pc 11
    (num = data.num);
    // source line 1057, bytecode pc 50
    (model = xs.Models.Equipment.createWithBase(data.id));
    // source line 1058, bytecode pc 89
    (equipData = xs.Models.EquipmentPiece.createWithBase(data.id));
    // source line 1059, bytecode pc 107
    (head = equipData.createIcon_Grade());
    // source line 1061, bytecode pc 135
    (str_num = ("x" + String(num)));
    // source line 1062, bytecode pc 171
    (lab_num = xs.Factorys.Label.createByStyleId("LS_EXPInf"));
    // source line 1064, bytecode pc 190
    lab_num.setString(str_num);
    // source line 1065, bytecode pc 275
    xs.Utils.Node.attachNodes(head, lab_num, { desc: "c", offset: cc.p(5, -30), sc: false });
    // source line 1066, bytecode pc 324
    xs.Utils.Node.replaceChildSafe(this.ccb_Node, this.m_iconsList[idex], head);
    // source line 1067, bytecode pc 338
    (this.m_iconsList[idex] = head);
},
    createGeneralsSoulIcon: function(data, idex) {
    var num, generalId, equipData, model, head, str_num, lab_num;
    // source line 1073, bytecode pc 11
    (num = data.num);
    // source line 1074, bytecode pc 23
    (generalId = data.id);
    // source line 1075, bytecode pc 74
    (equipData = xs.Models.General.createWithBase(generalId.toString()));
    // source line 1076, bytecode pc 119
    (model = xs.Models.GeneralSoul.createWithBase(generalId.toString()));
    // source line 1077, bytecode pc 137
    (head = model.createIcon_Grade());
    // source line 1084, bytecode pc 171
    head.setOnClickCallBack(function() {
    // source line 1082, bytecode pc 63
    xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: equipData, type: "achieve_nothave" });
}.bind(this));
    // source line 1086, bytecode pc 199
    (str_num = ("x" + String(num)));
    // source line 1087, bytecode pc 235
    (lab_num = xs.Factorys.Label.createByStyleId("LS_EXPInf"));
    // source line 1089, bytecode pc 254
    lab_num.setString(str_num);
    // source line 1090, bytecode pc 339
    xs.Utils.Node.attachNodes(head, lab_num, { desc: "c", offset: cc.p(5, -30), sc: false });
    // source line 1091, bytecode pc 388
    xs.Utils.Node.replaceChildSafe(this.ccb_Node, this.m_iconsList[idex], head);
    // source line 1092, bytecode pc 402
    (this.m_iconsList[idex] = head);
},
    switchCreateIcon: function(data, i) {
    var type;
    // source line 1098, bytecode pc 26
    (type = Number(data.type));
    // source line 1099, bytecode pc 30
    switch (type) {
        case 3:
        case 4:
        case 7:
        /* TODO_BYTECODE pc=30 opcode=tableswitch reason=tableswitch_target_invalid */
        break;
        case 5:
        // source line 1102, bytecode pc 91
        this.createItemIcon(data, i);
        break;
        case 6:
        // source line 1107, bytecode pc 117
        this.createGeneralsSoulIcon(data, i);
        break;
        case 8:
        // source line 1111, bytecode pc 143
        this.createEquipmentFragmentIcon(data, i);
        break;
        case 2:
        // source line 1115, bytecode pc 169
        this.createEquipmentFragmentIcon(data, i);
        break;
        default:
        // source line 1119, bytecode pc 197
        xs.warn("this.switchCreateIcon tag error! ");
        break;
    }
},
    scrollViewDidScroll: function() {
    // source line 1130, bytecode pc 23
    (this.m_scrollPosition = this.m_teamList.getContentOffset());
    // source line 1131, bytecode pc 52
    (this.m_scrollPositionY = this.m_teamList.getContentOffset().y);
},
    scrollViewDidZoom: function() {
},
    tableCellTouched: function(table, cell) {
    var idx;
    // source line 1136, bytecode pc 17
    (idx = cell.getIdx());
    // source line 1137, bytecode pc 57
    xs.log(((("tableCellTouched == this.m_curTeamListIndex:" + this.m_curTeamListIndex) + "  idx: ") + idx));
    if ((idx == this.m_curTeamListIndex)) {
        // source line 1138, bytecode pc 74
        return void 0;
    }
    // source line 1139, bytecode pc 91
    this.setTeamListCurIndex(idx);
    // source line 1140, bytecode pc 113
    this.m_gInfo.setIndex(idx);
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 1143, bytecode pc 22
    return cc.size(106, 120);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 1145, bytecode pc 39
    xs.log((((" tableCellAtIndex == this.m_curTeamListIndex:" + this.m_curTeamListIndex) + "  idx: ") + idx));
    // source line 1146, bytecode pc 57
    (cell = table.dequeueCell());
    try {
        if (!cell) {
            // source line 1149, bytecode pc 97
            (cell = xs.Views.BeautyCell.create());
        }
        // source line 1151, bytecode pc 123
        cell.refresh(this.generalList[idx]);
        if ((idx === this.m_curTeamListIndex)) {
            // source line 1155, bytecode pc 155
            cell.setIsSelected(true);
            // source line 1156, bytecode pc 177
            this.m_gInfo.setIndex(idx);
        } else {
            // source line 1158, bytecode pc 199
            cell.setIsSelected(false);
        }
    } catch (e) {
        // source line 1161, bytecode pc 235
        xs.warnException(e);
        /* TODO_BYTECODE pc=236 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 1164, bytecode pc 248
    return cell;
},
    numberOfCellsInTableView: function(table) {
    // source line 1166, bytecode pc 11
    return this.m_BeautyInfo.length;
},
    GeneralSwapView_swapAtIndex: function(idx) {
    // source line 1169, bytecode pc 39
    xs.log(((("GeneralSwapView_swapAtIndex == this.m_curTeamListIndex:" + this.m_curTeamListIndex) + "  idx: ") + idx));
    if ((idx == this.m_curTeamListIndex)) {
        // source line 1170, bytecode pc 56
        return void 0;
    }
    // source line 1171, bytecode pc 73
    this.setTeamListCurIndex(idx);
    // source line 1172, bytecode pc 95
    this.m_gInfo.setIndex(idx);
}
}));
// source line 1178, bytecode pc 659
(xs.Views.BeautyLayer.create = function(param) {
    var view;
    // source line 1180, bytecode pc 23
    (view = new xs.Views.BeautyLayer());
    if ((view && view.init(param))) {
        // source line 1183, bytecode pc 59
        return view;
    }
    // source line 1186, bytecode pc 84
    xs.assert(false, "xs.Views.BeautyLayer.create error!");
    // source line 1188, bytecode pc 86
    return null;
});
// source line 1199, bytecode pc 733
(xs.Scene.BeautyScene = cc.Scene.extend({
    name: "xs.Scene.BeautyScene",
    ctor: function() {
    // source line 1195, bytecode pc 12
    this._super();
    // source line 1196, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(param) {
    var visibleSize, playerInfo;
    if (!this._super()) {
        // source line 1201, bytecode pc 19
        return false;
    }
    // source line 1204, bytecode pc 55
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    // source line 1205, bytecode pc 72
    this.setContentSize(visibleSize);
    // source line 1208, bytecode pc 112
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_Beauty);
    // source line 1211, bytecode pc 142
    (playerInfo = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 1212, bytecode pc 178
    playerInfo.setAnchorPoint(cc.p(0, 1));
    // source line 1213, bytecode pc 234
    xs.Utils.Node.attachNodes(this, playerInfo, { desc: "lt", sc: true });
    // source line 1216, bytecode pc 271
    (this.sideMenu = xs.Tools.UI.addShortcutBoard(this, true));
    // source line 1219, bytecode pc 363
    (this.m_pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), (visibleSize.height - 50))));
    // source line 1220, bytecode pc 384
    this.m_pageView.setBaseTouchPriority(-1);
    // source line 1221, bytecode pc 404
    this.m_pageView.setListener(this);
    // source line 1223, bytecode pc 495
    this.m_pageView.addPageWhitConstruct(xs.Tools.String.createString("BeautyTitle"), xs.Views.BeautyLayer, { listener: this, param: {} });
    // source line 1226, bytecode pc 554
    xs.Utils.Node.attachNodes(this, this.m_pageView, { desc: "lb", sc: true });
    // source line 1229, bytecode pc 556
    return true;
}
}));
// source line 1266, bytecode pc 1982
(xs.Scene.BeautyScene.cfg = {
    tipsCfg: [
        { tag: 24, type: "btn", name: "m_closeBtn", id: "Btn_Close" },
        { tag: 1, type: "ls", name: "m_tips_title", id: "LS_hongyan_tips_name" },
        { tag: 10, type: "ls", name: "m_now_level", id: "LS_hongyan_txt" },
        { tag: 11, type: "ls", name: "m_now_value", id: "LS_hongyan_txt" },
        { tag: 13, type: "ls", name: "m_next_level", id: "LS_hongyan_txt" },
        { tag: 14, type: "ls", name: "m_next_value", id: "LS_hongyan_txt" }
    ],
    titleCfg: [
        { tag: 1, type: "ls", name: "m_title", id: "LS_hongyan_title", stringId: "BeautyLabel1" },
        { tag: 11, type: "ls", name: "m_title_gong", id: "LS_hongyan_label" },
        { tag: 13, type: "ls", name: "m_title_zhi", id: "LS_hongyan_label" },
        { tag: 15, type: "ls", name: "m_title_ti", id: "LS_hongyan_label" },
        { tag: 17, type: "ls", name: "m_title_fang", id: "LS_hongyan_label" }
    ],
    infoCfg: [
        { tag: 21, type: "ls", name: "m_num", id: "LS_mainUI4" },
        { tag: 1, type: "ls", name: "m_now_title", id: "LS_hongyan_title", stringId: "BeautyText1" },
        { tag: 2, type: "ls", name: "m_next_title", id: "LS_hongyan_title", stringId: "BeautyText2" },
        { tag: 3, type: "ls", name: "m_next_label", id: "LS_hongyan_title", stringId: "BeautyText3" },
        { tag: 22, type: "ls", name: "m_count", id: "LS_hongyan_title" },
        { tag: 11, type: "ls", name: "m_now_gong", id: "LS_mainUI4" },
        { tag: 12, type: "ls", name: "m_next_gong", id: "LS_mainUI4" },
        { tag: 13, type: "ls", name: "m_now_zhi", id: "LS_mainUI4" },
        { tag: 14, type: "ls", name: "m_next_zhi", id: "LS_mainUI4" },
        { tag: 15, type: "ls", name: "m_now_ti", id: "LS_mainUI4" },
        { tag: 16, type: "ls", name: "m_next_ti", id: "LS_mainUI4" },
        { tag: 17, type: "ls", name: "m_now_fang", id: "LS_mainUI4" },
        { tag: 18, type: "ls", name: "m_next_fang", id: "LS_mainUI4" },
        { tag: 25, name: "m_progress_img" }
    ]
});
// source line 1321, bytecode pc 2008
(xs.Scene.BeautyScene.create = function(param) {
    var sc;
    // source line 1322, bytecode pc 23
    (sc = new xs.Scene.BeautyScene());
    if ((sc && sc.init(param))) {
        // source line 1325, bytecode pc 59
        return sc;
    }
    // source line 1327, bytecode pc 84
    xs.assert(false, "xs.Scene.CopyScene.create error!");
    // source line 1328, bytecode pc 86
    return null;
});
// source line 1334, bytecode pc 2138
xs.Scene.Mgr.registerScene("BeautyScene", {
    "class": xs.Scene.BeautyScene,
    area: [ "DuiJiuScene01", "SellTag", "SecretShop", "ZuiduiMenuScene01", "hongyan" ],
    type: xs.Constant_SceneType_Cmn
});
