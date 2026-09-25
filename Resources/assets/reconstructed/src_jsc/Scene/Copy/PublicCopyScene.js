// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Copy/PublicCopyScene.js:1
// source line 733, bytecode pc 403
(xs.Views.CopyLayer = cc.Layer.extend({
    name: "xs.Views.CopyLayer",
    ctor: function() {
    // source line 90, bytecode pc 12
    this._super();
    // source line 91, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
    // source line 92, bytecode pc 65
    xs.log("-----  初始化 ctor 78900------");
},
    init: function(param) {
    if (!this._super()) {
        // source line 97, bytecode pc 19
        return false;
    }
    // source line 100, bytecode pc 27
    (this.m_curTeamListIndex = 0);
    // source line 101, bytecode pc 35
    (this.m_gInfo = null);
    // source line 103, bytecode pc 43
    (this.m_first_icon = null);
    // source line 104, bytecode pc 51
    (this.m_second_icon = null);
    // source line 106, bytecode pc 63
    (this.m_iconsList = []);
    // source line 112, bytecode pc 65
    return true;
},
    initData: function() {
    var dataSource, index, i, model;
    // source line 118, bytecode pc 48
    (this.m_CopyInfo = xs.Profile.GameData.PushInfo.getInstance().getCopyInfo());
    // source line 119, bytecode pc 72
    (this.m_festival_info = this.m_CopyInfo.getFestivalInfo());
    // source line 120, bytecode pc 96
    (this.m_boss_info = this.m_CopyInfo.getBossInfo());
    // source line 121, bytecode pc 120
    (this.m_award_info = this.m_CopyInfo.getAwardInfo());
    // source line 122, bytecode pc 144
    (this.m_kill_info = this.m_CopyInfo.getKillInfo());
    // source line 124, bytecode pc 163
    (this.m_curr_bossId = this.getCurrBossId());
    // source line 125, bytecode pc 182
    (this.m_boss_dungeon_id = this.getCurrDungeonId());
    // source line 126, bytecode pc 208
    (this.m_currKillInfoStr = this.getKillInfoStr(this.m_boss_dungeon_id));
    // source line 127, bytecode pc 226
    (this.m_challengeCnt = this.m_festival_info.free_times);
    // source line 129, bytecode pc 245
    (this.m_currBossHpPercent = this.getCurrHpPercent());
    // source line 132, bytecode pc 254
    (dataSource = []);
    // source line 133, bytecode pc 259
    (index = 0);
    // source line 134, bytecode pc 264
    (i = 0);
    while ((i < this.m_boss_info.length)) {
        // source line 135, bytecode pc 302
        (model = this._getGeneralModelById(this.m_boss_info[i].boss_card));
        // source line 136, bytecode pc 313
        (dataSource[index] = model);
        // source line 137, bytecode pc 322
        (index = (index + 1));
        // source line 134, bytecode pc 336
        (i = (+i + 1));
    }
    // source line 140, bytecode pc 368
    (this.generalList = dataSource);
},
    initUI: function() {
    var visibleOrigin, visibleSize, _tmpSize, generalBody_width, generalBody_height, tili, promptStr, _fileName, kill_list, num, round_list, num3, num5, num15, item_list, i, str;
    // source line 146, bytecode pc 24
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 147, bytecode pc 49
    (visibleSize = xs.director.getVisibleSize());
    // source line 148, bytecode pc 88
    (_tmpSize = cc.size(114.28571428571429, (visibleSize.height - 160)));
    // source line 149, bytecode pc 98
    (this._viewSize = _tmpSize);
    // source line 150, bytecode pc 164
    (this._viewPosition = cc.p((((visibleSize.width / 2) - 390) - (xs.Views.MainMenuView.Width / 2)), 60));
    // source line 153, bytecode pc 180
    (generalBody_width = (visibleSize.width - 400));
    // source line 154, bytecode pc 194
    (generalBody_height = (visibleSize.height - 0));
    // source line 157, bytecode pc 252
    (this.m_gInfo = xs.Views.GeneralSwapView.create(cc.size(generalBody_width, generalBody_height)));
    // source line 159, bytecode pc 272
    this.m_gInfo.setListener(this);
    // source line 160, bytecode pc 301
    this.m_gInfo.setOffsetY(((generalBody_height / 2) - 180));
    // source line 162, bytecode pc 325
    this.m_gInfo.setMaxScale(0.86);
    // source line 163, bytecode pc 338
    this.reloadGeneralSwapView();
    // source line 171, bytecode pc 448
    xs.Utils.Node.attachNodes(this, this.m_gInfo, { desc: "lb", sc: true, offset: { x: 60, y: 30 } }, xs.Cfg.Scene.TeamBuildScene.m_gInfo);
    // source line 174, bytecode pc 461
    (this.m_teamListSize = this._viewSize);
    // source line 175, bytecode pc 498
    (this.m_teamList = cc.TableView.create(this, this.m_teamListSize));
    // source line 177, bytecode pc 518
    this.m_teamList.setDelegate(this);
    // source line 178, bytecode pc 547
    this.m_teamList.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 179, bytecode pc 576
    this.m_teamList.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 180, bytecode pc 601
    this.m_teamList.setPosition(this._viewPosition);
    // source line 188, bytecode pc 711
    xs.Utils.Node.attachNodes(this, this.m_teamList, { desc: "lb", sc: true, offset: { x: 30, y: 50 } }, xs.Cfg.Scene.TeamBuildScene.m_gInfo);
    // source line 190, bytecode pc 732
    this.m_teamList.setTouchPriority(-10);
    // source line 194, bytecode pc 771
    (this.m_JiFenBtn = xs.Views.Btn.create("Btn_JiFen"));
    // source line 195, bytecode pc 858
    xs.Utils.Node.attachNodes(this, this.m_JiFenBtn, { desc: "ct", sc: true, offset: cc.p(245, -40) });
    // source line 196, bytecode pc 897
    this.m_JiFenBtn.setAnchorPoint(cc.p(0, 1));
    // source line 198, bytecode pc 946
    this.m_JiFenBtn.setOnClickCallBack(this.showConvertDlg.bind({ self: this }));
    // source line 201, bytecode pc 997
    (this.m_challengeNode = xs.ccb_reader.load(xs.Cfg.CCBI.ChallengeCopy, this));
    // source line 202, bytecode pc 1089
    xs.Utils.Node.attachNodes(this, this.m_challengeNode, { desc: "c", sc: true, offset: cc.p(-400, -240) });
    // source line 204, bytecode pc 1116
    (this.m_challengeLabel = this.m_challengeNode.getChildByTag(10));
    // source line 205, bytecode pc 1141
    this.m_challengeLabel.setString(this.m_challengeCnt);
    // source line 207, bytecode pc 1180
    (this.label_0 = xs.Factorys.Label.createByStyleId("LS_zhanchang_zi2"));
    // source line 208, bytecode pc 1223
    this.label_0.setAnchorPoint(cc.p(0, 0.5));
    // source line 209, bytecode pc 1239
    (tili = this.getCurrBossTiLi());
    // source line 210, bytecode pc 1288
    (promptStr = xs.Tools.String.createStringWithArgsArray("CopyTiLiTips", [ tili ]));
    // source line 211, bytecode pc 1310
    this.label_0.setString(promptStr);
    if ((this.m_challengeCnt > 0)) {
        // source line 213, bytecode pc 1343
        this.label_0.setVisible(false);
    }
    // source line 216, bytecode pc 1435
    xs.Utils.Node.attachNodes(this, this.label_0, { desc: "c", sc: true, offset: cc.p(-400, -247) });
    // source line 218, bytecode pc 1486
    (this.ccb_Node = xs.ccb_reader.load(xs.Cfg.CCBI.MemorialCopy, this));
    // source line 219, bytecode pc 1576
    xs.Utils.Node.attachNodes(this, this.ccb_Node, { desc: "c", sc: true, offset: cc.p(180, -260) });
    // source line 222, bytecode pc 1632
    (_fileName = ((xs.Cfg.Resource.Path.Item1.file_pre + xs.Models.ItemID_CopyPublic) + ".png"));
    // source line 223, bytecode pc 1704
    this.replaceSprite(this.ccb_Node, this.ccb_Node.getChildByTag(5), xs.Factorys.Sprite.createWithFileName(_fileName));
    // source line 224, bytecode pc 1776
    this.replaceSprite(this.ccb_Node, this.ccb_Node.getChildByTag(6), xs.Factorys.Sprite.createWithFileName(_fileName));
    // source line 225, bytecode pc 1848
    this.replaceSprite(this.ccb_Node, this.ccb_Node.getChildByTag(7), xs.Factorys.Sprite.createWithFileName(_fileName));
    // source line 226, bytecode pc 1920
    this.replaceSprite(this.ccb_Node, this.ccb_Node.getChildByTag(8), xs.Factorys.Sprite.createWithFileName(_fileName));
    // source line 231, bytecode pc 1942
    (kill_list = this.m_award_info[this.m_curTeamListIndex].kill_award);
    // source line 232, bytecode pc 1969
    xs.dump("---- kill_list ;", kill_list);
    // source line 233, bytecode pc 1983
    (num = kill_list[0].num);
    // source line 234, bytecode pc 2010
    (this.killAwardLabel = this.ccb_Node.getChildByTag(9));
    // source line 235, bytecode pc 2049
    this.killAwardLabel.setString(("x" + num.toString()));
    // source line 237, bytecode pc 2071
    (round_list = this.m_award_info[this.m_curTeamListIndex].round_award);
    // source line 238, bytecode pc 2098
    xs.dump("回合奖励:", round_list);
    // source line 239, bytecode pc 2115
    (num3 = round_list[3][0].num);
    // source line 240, bytecode pc 2132
    (num5 = round_list[5][0].num);
    // source line 241, bytecode pc 2149
    (num15 = round_list[15][0].num);
    // source line 242, bytecode pc 2176
    (this.awardLabel3 = this.ccb_Node.getChildByTag(10));
    // source line 243, bytecode pc 2215
    this.awardLabel3.setString(("x" + num3.toString()));
    // source line 244, bytecode pc 2242
    (this.awardLabel5 = this.ccb_Node.getChildByTag(11));
    // source line 245, bytecode pc 2281
    this.awardLabel5.setString(("x" + num5.toString()));
    // source line 246, bytecode pc 2308
    (this.awardLabel15 = this.ccb_Node.getChildByTag(12));
    // source line 247, bytecode pc 2347
    this.awardLabel15.setString(("x" + num15.toString()));
    // source line 249, bytecode pc 2374
    (this.m_first_icon = this.ccb_Node.getChildByTag(15));
    // source line 250, bytecode pc 2401
    (this.m_second_icon = this.ccb_Node.getChildByTag(16));
    // source line 251, bytecode pc 2426
    this.m_iconsList.push(this.m_first_icon);
    // source line 252, bytecode pc 2451
    this.m_iconsList.push(this.m_second_icon);
    // source line 253, bytecode pc 2473
    (item_list = this.m_award_info[this.m_curTeamListIndex].first_kill_award);
    // source line 254, bytecode pc 2478
    (i = 0);
    while ((i < 2)) {
        // source line 255, bytecode pc 2509
        this.switchCreateIcon(item_list[i], i);
        // source line 254, bytecode pc 2523
        (i = (+i + 1));
    }
    // source line 261, bytecode pc 2575
    (this.killBtn = xs.Views.Btn.create("Btn_Copy_Kill"));
    // source line 262, bytecode pc 2664
    xs.Utils.Node.attachNodes(this, this.killBtn, { desc: "c", offset: cc.p(100, -240), sc: true });
    // source line 263, bytecode pc 2685
    this.killBtn.setTouchPriority(-20);
    // source line 291, bytecode pc 2722
    this.killBtn.setOnClickCallBack(function() {
    if (this.getCurrBossIsLocked()) {
        // source line 266, bytecode pc 76
        xs.Views.Mgr.showToast(xs.Tools.String.createString("CopyLockTips"));
        // source line 267, bytecode pc 78
        return void 0;
    }
    if ((this.m_challengeCnt <= 0)) {
        if ((xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerCurTiLi() < 10)) {
            // source line 273, bytecode pc 180
            xs.log("---- 体力不足 -----");
            // source line 276, bytecode pc 240
            xs.Views.Mgr.showDialogByName("NotEnoughAndBuy", { item_id: xs.Models.ItemID_PowerWithVipCondition });
            // source line 278, bytecode pc 242
            return void 0;
        }
    }
    // source line 290, bytecode pc 381
    xs.Tools.Net.requireCopyFight({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    boss_id: this.getCurrBossId(),
    boss_dungeon_id: this.getCurrDungeonId()
}, function(jsonObj, _modelMap) {
    // source line 289, bytecode pc 68
    xs.Tools.Scene.gotoFight(xs.Constant_FightScene_Type_Copy, xs.Models.FightInfo.create(jsonObj));
}, this);
}.bind(this));
    // source line 295, bytecode pc 2766
    (this.m_instructionBtn = xs.Tools.Views.Btn.createInstruction("QingMingCopyExplain"));
    // source line 296, bytecode pc 2854
    xs.Utils.Node.attachNodes(this, this.m_instructionBtn, { desc: "ct", offset: cc.p(106, -80), sc: true }, null);
    // source line 297, bytecode pc 2875
    this.m_instructionBtn.setTouchPriority(-20);
    // source line 300, bytecode pc 2934
    (this.m_scale9ContentBg = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.Cmn01_news.frameName));
    // source line 301, bytecode pc 2973
    this.m_scale9ContentBg.setAnchorPoint(cc.p(0, 0));
    // source line 302, bytecode pc 3015
    this.m_scale9ContentBg.setPreferredSize(cc.size(960, 41));
    // source line 308, bytecode pc 3098
    xs.Utils.Node.attachNodes(this, this.m_scale9ContentBg, { desc: "lb", sc: true, offset: { x: 40, y: 0 } });
    // source line 312, bytecode pc 3137
    (this.m_newsLabel = xs.Factorys.Label.createByStyleId("LS_liaotian_5"));
    // source line 313, bytecode pc 3162
    this.m_newsLabel.setString(this.m_currKillInfoStr);
    // source line 319, bytecode pc 3243
    xs.Utils.Node.attachNodes(this.m_scale9ContentBg, this.m_newsLabel, { desc: "c", offset: { x: 0, y: 0 } });
    // source line 324, bytecode pc 3282
    (this.m_hpLabel = xs.Factorys.Label.createByStyleId("LS_liaotian_5"));
    // source line 325, bytecode pc 3334
    (str = xs.Tools.String.createStringWithArgsArray("CopyHpPercentTips", [ this.m_currBossHpPercent ]));
    // source line 326, bytecode pc 3356
    this.m_hpLabel.setString(str);
    // source line 332, bytecode pc 3441
    xs.Utils.Node.attachNodes(this, this.m_hpLabel, { desc: "c", sc: true, offset: { x: 50, y: 150 } });
    // source line 337, bytecode pc 3454
    this.updateBossLock();
    // source line 339, bytecode pc 3467
    this.setUpIconAndName();
},
    updateBossLock: function() {
    var i, is_lock, cell;
    // source line 343, bytecode pc 4
    (i = 0);
    while ((i < this.m_boss_info.length)) {
        // source line 344, bytecode pc 29
        (is_lock = this.m_boss_info[i].is_lock);
        // source line 345, bytecode pc 54
        (cell = this.m_teamList.cellAtIndex(i));
        // source line 346, bytecode pc 73
        cell.setIsLocked(is_lock);
        // source line 343, bytecode pc 87
        (i = (+i + 1));
    }
},
    setUpIconAndName: function() {
    var visibleSize, general, generalName;
    // source line 354, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this.m_generalName);
    // source line 355, bytecode pc 41
    (this.m_generalName = null);
    // source line 357, bytecode pc 66
    (visibleSize = xs.director.getVisibleSize());
    // source line 359, bytecode pc 83
    (general = this.generalList[this.m_curTeamListIndex]);
    if (general) {
        // source line 362, bytecode pc 109
        (generalName = general.getNameString());
        // source line 363, bytecode pc 148
        (this.m_generalName = xs.Factorys.Label.createByStyleId("LS_wujiangName2"));
        // source line 364, bytecode pc 181
        this.m_generalName.setString(generalName.toWordBreak());
        // source line 365, bytecode pc 224
        this.m_generalName.setAnchorPoint(cc.p(0.5, 1));
        // source line 371, bytecode pc 320
        xs.Utils.Node.attachNodes(this, this.m_generalName, { desc: "lt", sc: true, offset: { x: ((visibleSize.width * 9) / 40), y: -100 } });
    }
},
    updateAllUI: function() {
    // source line 379, bytecode pc 17
    this.m_teamList.reloadData();
    // source line 380, bytecode pc 30
    this.reloadGeneralSwapView();
    // source line 381, bytecode pc 43
    this.updateUI();
},
    updateUI: function() {
    var kill_list, num, round_list, num3, num5, num15, item_list, i, tili, promptStr, str;
    // source line 386, bytecode pc 24
    this.m_challengeLabel.setString(this.m_challengeCnt);
    // source line 388, bytecode pc 46
    (kill_list = this.m_award_info[this.m_curTeamListIndex].kill_award);
    // source line 389, bytecode pc 60
    (num = kill_list[0].num);
    // source line 390, bytecode pc 99
    this.killAwardLabel.setString(("x" + num.toString()));
    // source line 392, bytecode pc 121
    (round_list = this.m_award_info[this.m_curTeamListIndex].round_award);
    // source line 393, bytecode pc 138
    (num3 = round_list[3][0].num);
    // source line 394, bytecode pc 155
    (num5 = round_list[5][0].num);
    // source line 395, bytecode pc 172
    (num15 = round_list[15][0].num);
    // source line 396, bytecode pc 211
    this.awardLabel3.setString(("x" + num3.toString()));
    // source line 397, bytecode pc 250
    this.awardLabel5.setString(("x" + num5.toString()));
    // source line 398, bytecode pc 289
    this.awardLabel15.setString(("x" + num15.toString()));
    // source line 400, bytecode pc 311
    (item_list = this.m_award_info[this.m_curTeamListIndex].first_kill_award);
    // source line 401, bytecode pc 316
    (i = 0);
    while ((i < 2)) {
        // source line 402, bytecode pc 347
        this.switchCreateIcon(item_list[i], i);
        // source line 401, bytecode pc 361
        (i = (+i + 1));
    }
    // source line 405, bytecode pc 393
    (this.m_curr_bossId = this.getCurrBossId());
    // source line 406, bytecode pc 412
    (this.m_boss_dungeon_id = this.getCurrDungeonId());
    // source line 407, bytecode pc 438
    (this.m_currKillInfoStr = this.getKillInfoStr(this.m_boss_dungeon_id));
    // source line 408, bytecode pc 463
    this.m_newsLabel.setString(this.m_currKillInfoStr);
    // source line 410, bytecode pc 479
    (tili = this.getCurrBossTiLi());
    // source line 411, bytecode pc 528
    (promptStr = xs.Tools.String.createStringWithArgsArray("CopyTiLiTips", [ tili ]));
    // source line 412, bytecode pc 550
    this.label_0.setString(promptStr);
    if ((this.m_challengeCnt > 0)) {
        // source line 414, bytecode pc 583
        this.label_0.setVisible(false);
    } else {
        // source line 416, bytecode pc 608
        this.label_0.setVisible(true);
    }
    // source line 420, bytecode pc 627
    (this.m_currBossHpPercent = this.getCurrHpPercent());
    // source line 421, bytecode pc 679
    (str = xs.Tools.String.createStringWithArgsArray("CopyHpPercentTips", [ this.m_currBossHpPercent ]));
    // source line 422, bytecode pc 701
    this.m_hpLabel.setString(str);
    // source line 424, bytecode pc 714
    this.setUpIconAndName();
},
    _getGeneralModelById: function(generalId) {
    var _obj;
    // source line 428, bytecode pc 54
    (_obj = xs.Profile.GameData.Mgr.getInstance().Generals.createWithBase(generalId));
    // source line 429, bytecode pc 58
    return _obj;
},
    reloadGeneralSwapView: function() {
    // source line 433, bytecode pc 24
    this.m_gInfo.setDataSource(this.generalList);
},
    getCurrBossId: function() {
    var bossId;
    // source line 437, bytecode pc 4
    (bossId = 0);
    if (this.m_boss_info[this.m_curTeamListIndex]) {
        // source line 439, bytecode pc 44
        (bossId = this.m_boss_info[this.m_curTeamListIndex].boss_id);
    }
    // source line 441, bytecode pc 48
    return bossId;
},
    getCurrBossTiLi: function() {
    var tili;
    // source line 445, bytecode pc 4
    (tili = 0);
    if (this.m_boss_info[this.m_curTeamListIndex]) {
        // source line 447, bytecode pc 44
        (tili = this.m_boss_info[this.m_curTeamListIndex].boss_power);
    }
    // source line 449, bytecode pc 48
    return tili;
},
    getCurrDungeonId: function() {
    var boss_dungeon_id;
    // source line 453, bytecode pc 4
    (boss_dungeon_id = 0);
    if (this.m_boss_info[this.m_curTeamListIndex]) {
        // source line 455, bytecode pc 44
        (boss_dungeon_id = this.m_boss_info[this.m_curTeamListIndex].boss_dungeon_id);
    }
    // source line 457, bytecode pc 48
    return boss_dungeon_id;
},
    getCurrBossIsLocked: function() {
    var is_lock;
    // source line 462, bytecode pc 4
    (is_lock = true);
    if (this.m_boss_info[this.m_curTeamListIndex]) {
        // source line 464, bytecode pc 44
        (is_lock = this.m_boss_info[this.m_curTeamListIndex].is_lock);
    }
    // source line 466, bytecode pc 48
    return is_lock;
},
    getCurrHpPercent: function() {
    var hpPercent, percent;
    // source line 470, bytecode pc 5
    (hpPercent = 100);
    if (this.m_boss_info[this.m_curTeamListIndex]) {
        // source line 472, bytecode pc 45
        (percent = this.m_boss_info[this.m_curTeamListIndex].boss_hp_percent);
        if (percent) {
            // source line 474, bytecode pc 60
            (hpPercent = percent);
        }
    }
    // source line 477, bytecode pc 64
    return hpPercent;
},
    getKillInfoStr: function(bossId) {
    var str, i;
    // source line 481, bytecode pc 8
    (str = "");
    // source line 482, bytecode pc 13
    (i = 0);
    while ((i < this.m_kill_info.length)) {
        if ((bossId == this.m_kill_info[i].boss_dungeon_id)) {
            // source line 485, bytecode pc 123
            (str = xs.Tools.String.createStringWithArgsArray("BossKilledStr", [ this.m_kill_info[i].kill_user_name, this.m_kill_info[i].kill_time ]));
            break;
        }
        // source line 482, bytecode pc 142
        (i = (+i + 1));
    }
    if ((str == "")) {
        // source line 490, bytecode pc 214
        (str = xs.Tools.String.createString("BossNoKillStr"));
    }
    // source line 492, bytecode pc 218
    return str;
},
    replaceSprite: function(ParentNode, oldNode, newNode) {
    var _z, _tag, _scale, _pos;
    // source line 495, bytecode pc 4
    (_z = null);
    // source line 496, bytecode pc 9
    (_tag = null);
    // source line 497, bytecode pc 14
    (_scale = null);
    if (oldNode) {
        // source line 499, bytecode pc 40
        (_pos = oldNode.getPosition());
        // source line 500, bytecode pc 58
        (_tag = oldNode.getTag());
        // source line 501, bytecode pc 76
        (_z = oldNode.getZOrder());
        // source line 502, bytecode pc 94
        (_scale = oldNode.getScale());
        // source line 503, bytecode pc 125
        xs.Utils.Node.safeRemoveChild(oldNode);
        // source line 504, bytecode pc 144
        newNode.setPosition(_pos);
        // source line 505, bytecode pc 163
        newNode.setZOrder(_tag);
        // source line 506, bytecode pc 182
        newNode.setTag(_z);
        // source line 507, bytecode pc 201
        newNode.setScale(_scale);
    }
    // source line 512, bytecode pc 266
    xs.Utils.Node.attachNodes(ParentNode, newNode, false, { zOrder: _z, tag: _tag });
    // source line 513, bytecode pc 273
    (oldNode = newNode);
},
    showConvertDlg: function() {
    var self;
    // source line 517, bytecode pc 9
    (self = this.self);
    // source line 518, bytecode pc 45
    xs.Views.Dialog.PublicCopyDialog.showWithSurrenderInfo(self);
},
    onEnter: function() {
    // source line 522, bytecode pc 12
    this._super();
    // source line 523, bytecode pc 35
    xs.log("CopyScene onEnter");
    // source line 524, bytecode pc 48
    this.requestService();
},
    requestCallback: function(data) {
    // source line 528, bytecode pc 22
    xs.log("requestCallback");
},
    requestService: function() {
    // source line 532, bytecode pc 22
    xs.log("requestService");
    // source line 558, bytecode pc 159
    xs.Tools.Net.requireCopyData({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(params) {
    var mCopy;
    // source line 539, bytecode pc 45
    (mCopy = xs.Profile.GameData.PushInfo.getInstance().getCopyInfo());
    // source line 540, bytecode pc 64
    mCopy.loadJson(params);
    if (mCopy.getResult()) {
        // source line 543, bytecode pc 96
        this.initWithData();
    }
}.bind(this), function(params) {
    if ((params.error_code === "e_1005")) {
        // source line 553, bytecode pc 45
        xs.Views.Mgr.hideDialog();
        // source line 554, bytecode pc 47
        return true;
    }
    // source line 556, bytecode pc 49
    return false;
}.bind(this), this);
},
    onExit: function() {
    // source line 566, bytecode pc 12
    this._super();
},
    setTeamListCurIndex: function(idx) {
    var oldIndex, preCell, currCell;
    // source line 570, bytecode pc 26
    xs.log(("setTeamListCurIndex................." + idx));
    if ((this.m_curTeamListIndex !== idx)) {
        // source line 573, bytecode pc 51
        (oldIndex = this.m_curTeamListIndex);
        // source line 574, bytecode pc 61
        (this.m_curTeamListIndex = idx);
        // source line 576, bytecode pc 86
        (preCell = this.m_teamList.cellAtIndex(oldIndex));
        // source line 577, bytecode pc 114
        (currCell = this.m_teamList.cellAtIndex(this.m_curTeamListIndex));
        // source line 579, bytecode pc 131
        preCell.setIsSelected(false);
        // source line 580, bytecode pc 148
        currCell.setIsSelected(true);
        // source line 582, bytecode pc 161
        this.updateUI();
    }
},
    initWithData: function() {
    // source line 588, bytecode pc 22
    xs.log("----- initWithData -----");
    // source line 589, bytecode pc 35
    this.initData();
    // source line 590, bytecode pc 48
    this.initUI();
},
    createItemIcon: function(data, idex) {
    var num, model, head, str_num, lab_num;
    // source line 595, bytecode pc 11
    (num = data.num);
    // source line 597, bytecode pc 50
    (model = xs.Models.Item.createWithBase(data.id));
    // source line 599, bytecode pc 68
    (head = model.createIcon_Grade());
    // source line 600, bytecode pc 96
    (str_num = ("x" + String(num)));
    // source line 601, bytecode pc 132
    (lab_num = xs.Factorys.Label.createByStyleId("LS_EXPInf"));
    // source line 603, bytecode pc 151
    lab_num.setString(str_num);
    // source line 604, bytecode pc 236
    xs.Utils.Node.attachNodes(head, lab_num, { desc: "c", offset: cc.p(5, -30), sc: false });
    // source line 606, bytecode pc 285
    xs.Utils.Node.replaceChildSafe(this.ccb_Node, this.m_iconsList[idex], head);
    // source line 607, bytecode pc 299
    (this.m_iconsList[idex] = head);
},
    createEquipmentFragmentIcon: function(data, idex) {
    var num, model, equipData, head, str_num, lab_num;
    // source line 614, bytecode pc 11
    (num = data.num);
    // source line 615, bytecode pc 50
    (model = xs.Models.Equipment.createWithBase(data.id));
    // source line 616, bytecode pc 89
    (equipData = xs.Models.EquipmentPiece.createWithBase(data.id));
    // source line 617, bytecode pc 107
    (head = equipData.createIcon_Grade());
    // source line 619, bytecode pc 135
    (str_num = ("x" + String(num)));
    // source line 620, bytecode pc 171
    (lab_num = xs.Factorys.Label.createByStyleId("LS_EXPInf"));
    // source line 622, bytecode pc 190
    lab_num.setString(str_num);
    // source line 623, bytecode pc 275
    xs.Utils.Node.attachNodes(head, lab_num, { desc: "c", offset: cc.p(5, -30), sc: false });
    // source line 624, bytecode pc 324
    xs.Utils.Node.replaceChildSafe(this.ccb_Node, this.m_iconsList[idex], head);
    // source line 625, bytecode pc 338
    (this.m_iconsList[idex] = head);
},
    createGeneralsSoulIcon: function(data, idex) {
    var num, generalId, equipData, model, head, str_num, lab_num;
    // source line 631, bytecode pc 11
    (num = data.num);
    // source line 632, bytecode pc 23
    (generalId = data.id);
    // source line 633, bytecode pc 74
    (equipData = xs.Models.General.createWithBase(generalId.toString()));
    // source line 634, bytecode pc 119
    (model = xs.Models.GeneralSoul.createWithBase(generalId.toString()));
    // source line 635, bytecode pc 137
    (head = model.createIcon_Grade());
    // source line 642, bytecode pc 171
    head.setOnClickCallBack(function() {
    // source line 640, bytecode pc 63
    xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: equipData, type: "achieve_nothave" });
}.bind(this));
    // source line 644, bytecode pc 199
    (str_num = ("x" + String(num)));
    // source line 645, bytecode pc 235
    (lab_num = xs.Factorys.Label.createByStyleId("LS_EXPInf"));
    // source line 647, bytecode pc 254
    lab_num.setString(str_num);
    // source line 648, bytecode pc 339
    xs.Utils.Node.attachNodes(head, lab_num, { desc: "c", offset: cc.p(5, -30), sc: false });
    // source line 649, bytecode pc 388
    xs.Utils.Node.replaceChildSafe(this.ccb_Node, this.m_iconsList[idex], head);
    // source line 650, bytecode pc 402
    (this.m_iconsList[idex] = head);
},
    switchCreateIcon: function(data, i) {
    var type;
    // source line 656, bytecode pc 26
    (type = Number(data.type));
    // source line 657, bytecode pc 30
    switch (type) {
        case 3:
        case 4:
        case 7:
        /* TODO_BYTECODE pc=30 opcode=tableswitch reason=tableswitch_target_invalid */
        break;
        case 5:
        // source line 660, bytecode pc 91
        this.createItemIcon(data, i);
        break;
        case 6:
        // source line 665, bytecode pc 117
        this.createGeneralsSoulIcon(data, i);
        break;
        case 8:
        // source line 669, bytecode pc 143
        this.createEquipmentFragmentIcon(data, i);
        break;
        case 2:
        // source line 673, bytecode pc 169
        this.createEquipmentFragmentIcon(data, i);
        break;
        default:
        // source line 677, bytecode pc 197
        xs.warn("this.switchCreateIcon tag error! ");
        break;
    }
},
    scrollViewDidScroll: function() {
},
    scrollViewDidZoom: function() {
},
    tableCellTouched: function(table, cell) {
    var idx;
    // source line 692, bytecode pc 17
    (idx = cell.getIdx());
    // source line 693, bytecode pc 44
    xs.log("------ tableCellTouched idx = ", idx);
    if ((idx == this.m_curTeamListIndex)) {
        // source line 695, bytecode pc 61
        return void 0;
    }
    // source line 697, bytecode pc 78
    this.setTeamListCurIndex(idx);
    // source line 700, bytecode pc 100
    this.m_gInfo.setIndex(idx);
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 706, bytecode pc 22
    return cc.size(106, 120);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 709, bytecode pc 26
    xs.log("~~~~ idx = ", idx);
    // source line 710, bytecode pc 44
    (cell = table.dequeueCell());
    try {
        if (!cell) {
            // source line 713, bytecode pc 84
            (cell = xs.Views.BossCell.create());
        }
        // source line 715, bytecode pc 110
        cell.refresh(this.generalList[idx]);
        if ((idx === this.m_curTeamListIndex)) {
            // source line 718, bytecode pc 142
            cell.setIsSelected(true);
        } else {
            // source line 720, bytecode pc 164
            cell.setIsSelected(false);
        }
    } catch (e) {
        // source line 723, bytecode pc 200
        xs.warnException(e);
        /* TODO_BYTECODE pc=201 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 726, bytecode pc 213
    return cell;
},
    numberOfCellsInTableView: function(table) {
    // source line 729, bytecode pc 11
    return this.m_boss_info.length;
},
    GeneralSwapView_swapAtIndex: function(idx) {
    if ((idx == this.m_curTeamListIndex)) {
        // source line 735, bytecode pc 16
        return void 0;
    }
    // source line 737, bytecode pc 33
    this.setTeamListCurIndex(idx);
}
}));
// source line 743, bytecode pc 429
(xs.Views.CopyLayer.create = function(param) {
    var view;
    // source line 745, bytecode pc 23
    (view = new xs.Views.CopyLayer());
    if ((view && view.init(param))) {
        // source line 748, bytecode pc 59
        return view;
    }
    // source line 751, bytecode pc 84
    xs.assert(false, "xs.Views.CopyLayer.create error!");
    // source line 753, bytecode pc 86
    return null;
});
// source line 764, bytecode pc 503
(xs.Scene.PublicCopyScene = cc.Scene.extend({
    name: "xs.Scene.PublicCopyScene",
    ctor: function() {
    // source line 760, bytecode pc 12
    this._super();
    // source line 761, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(param) {
    var visibleSize, playerInfo;
    if (!this._super()) {
        // source line 766, bytecode pc 19
        return false;
    }
    // source line 769, bytecode pc 55
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    // source line 770, bytecode pc 72
    this.setContentSize(visibleSize);
    // source line 773, bytecode pc 112
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_TuTeng);
    // source line 776, bytecode pc 142
    (playerInfo = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 777, bytecode pc 178
    playerInfo.setAnchorPoint(cc.p(0, 1));
    // source line 778, bytecode pc 234
    xs.Utils.Node.attachNodes(this, playerInfo, { desc: "lt", sc: true });
    // source line 781, bytecode pc 271
    (this.sideMenu = xs.Tools.UI.addShortcutBoard(this, true));
    // source line 784, bytecode pc 363
    (this.m_pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), (visibleSize.height - 50))));
    // source line 785, bytecode pc 384
    this.m_pageView.setBaseTouchPriority(-1);
    // source line 786, bytecode pc 404
    this.m_pageView.setListener(this);
    // source line 788, bytecode pc 495
    this.m_pageView.addPageWhitConstruct(xs.Tools.String.createString("PublicCopyTitle"), xs.Views.CopyLayer, { listener: this, param: {} });
    // source line 791, bytecode pc 554
    xs.Utils.Node.attachNodes(this, this.m_pageView, { desc: "lb", sc: true });
    // source line 794, bytecode pc 556
    return true;
}
}));
// source line 800, bytecode pc 529
(xs.Scene.PublicCopyScene.create = function(param) {
    var sc;
    // source line 801, bytecode pc 23
    (sc = new xs.Scene.PublicCopyScene());
    if ((sc && sc.init(param))) {
        // source line 804, bytecode pc 59
        return sc;
    }
    // source line 806, bytecode pc 84
    xs.assert(false, "xs.Scene.PublicCopyScene.create error!");
    // source line 807, bytecode pc 86
    return null;
});
// source line 813, bytecode pc 650
xs.Scene.Mgr.registerScene("PublicCopyScene", {
    "class": xs.Scene.PublicCopyScene,
    area: [ "DuiJiuScene01", "SellTag", "SecretShop", "ZuiduiMenuScene01" ],
    type: xs.Constant_SceneType_Cmn
});
