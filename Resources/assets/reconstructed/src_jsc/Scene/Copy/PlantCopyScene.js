// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Copy/PlantCopyScene.js:1
// source line 630, bytecode pc 393
(xs.Views.PlantCopyLayer = cc.Layer.extend({
    name: "xs.Views.PlantCopyLayer",
    ctor: function() {
    // source line 11, bytecode pc 12
    this._super();
    // source line 12, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(param) {
    if (!this._super()) {
        // source line 17, bytecode pc 19
        return false;
    }
    // source line 20, bytecode pc 27
    (this.m_curTeamListIndex = 0);
    // source line 21, bytecode pc 35
    (this.m_gInfo = null);
    // source line 23, bytecode pc 43
    (this.m_first_icon = null);
    // source line 24, bytecode pc 51
    (this.m_second_icon = null);
    // source line 26, bytecode pc 63
    (this.m_iconsList = []);
    // source line 32, bytecode pc 65
    return true;
},
    initData: function() {
    var dataSource, index, i, model;
    // source line 38, bytecode pc 48
    (this.m_CopyInfo = xs.Profile.GameData.PushInfo.getInstance().getCopyInfo());
    // source line 39, bytecode pc 72
    (this.m_festival_info = this.m_CopyInfo.getFestivalInfo());
    // source line 40, bytecode pc 96
    (this.m_boss_info = this.m_CopyInfo.getBossInfo());
    // source line 41, bytecode pc 120
    (this.m_award_info = this.m_CopyInfo.getAwardInfo());
    // source line 42, bytecode pc 144
    (this.m_kill_info = this.m_CopyInfo.getKillInfo());
    // source line 44, bytecode pc 163
    (this.m_curr_bossId = this.getCurrBossId());
    // source line 45, bytecode pc 182
    (this.m_boss_dungeon_id = this.getCurrDungeonId());
    // source line 46, bytecode pc 208
    (this.m_currKillInfoStr = this.getKillInfoStr(this.m_boss_dungeon_id));
    // source line 47, bytecode pc 226
    (this.m_challengeCnt = this.m_festival_info.free_times);
    // source line 49, bytecode pc 245
    (this.m_currBossHpPercent = this.getCurrHpPercent());
    // source line 52, bytecode pc 254
    (dataSource = []);
    // source line 53, bytecode pc 259
    (index = 0);
    // source line 54, bytecode pc 264
    (i = 0);
    while ((i < this.m_boss_info.length)) {
        // source line 55, bytecode pc 302
        (model = this._getGeneralModelById(this.m_boss_info[i].boss_card));
        // source line 56, bytecode pc 313
        (dataSource[index] = model);
        // source line 57, bytecode pc 322
        (index = (index + 1));
        // source line 54, bytecode pc 337
        i++;
    }
    // source line 60, bytecode pc 368
    (this.generalList = dataSource);
},
    initUI: function() {
    var visibleOrigin, visibleSize, _tmpSize, generalBody_width, generalBody_height, tili, promptStr, kill_list, num, round_list, num3, num5, num15, item_list, i, str;
    // source line 66, bytecode pc 24
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 67, bytecode pc 49
    (visibleSize = xs.director.getVisibleSize());
    // source line 68, bytecode pc 88
    (_tmpSize = cc.size(114.28571428571429, (visibleSize.height - 160)));
    // source line 69, bytecode pc 98
    (this._viewSize = _tmpSize);
    // source line 70, bytecode pc 164
    (this._viewPosition = cc.p((((visibleSize.width / 2) - 390) - (xs.Views.MainMenuView.Width / 2)), 60));
    // source line 73, bytecode pc 180
    (generalBody_width = (visibleSize.width - 400));
    // source line 74, bytecode pc 194
    (generalBody_height = (visibleSize.height - 0));
    // source line 77, bytecode pc 252
    (this.m_gInfo = xs.Views.GeneralSwapView.create(cc.size(generalBody_width, generalBody_height)));
    // source line 79, bytecode pc 272
    this.m_gInfo.setListener(this);
    // source line 80, bytecode pc 301
    this.m_gInfo.setOffsetY(((generalBody_height / 2) - 180));
    // source line 82, bytecode pc 325
    this.m_gInfo.setMaxScale(0.86);
    // source line 83, bytecode pc 338
    this.reloadGeneralSwapView();
    // source line 91, bytecode pc 448
    xs.Utils.Node.attachNodes(this, this.m_gInfo, { desc: "lb", sc: true, offset: { x: 60, y: 30 } }, xs.Cfg.Scene.TeamBuildScene.m_gInfo);
    // source line 94, bytecode pc 461
    (this.m_teamListSize = this._viewSize);
    // source line 95, bytecode pc 498
    (this.m_teamList = cc.TableView.create(this, this.m_teamListSize));
    // source line 97, bytecode pc 518
    this.m_teamList.setDelegate(this);
    // source line 98, bytecode pc 547
    this.m_teamList.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 99, bytecode pc 576
    this.m_teamList.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 100, bytecode pc 601
    this.m_teamList.setPosition(this._viewPosition);
    // source line 108, bytecode pc 711
    xs.Utils.Node.attachNodes(this, this.m_teamList, { desc: "lb", sc: true, offset: { x: 30, y: 50 } }, xs.Cfg.Scene.TeamBuildScene.m_gInfo);
    // source line 110, bytecode pc 732
    this.m_teamList.setTouchPriority(-10);
    // source line 114, bytecode pc 771
    (this.m_JiFenBtn = xs.Views.Btn.create("Btn_ZhiShu"));
    // source line 115, bytecode pc 858
    xs.Utils.Node.attachNodes(this, this.m_JiFenBtn, { desc: "ct", sc: true, offset: cc.p(245, -40) });
    // source line 116, bytecode pc 897
    this.m_JiFenBtn.setAnchorPoint(cc.p(0, 1));
    // source line 118, bytecode pc 946
    this.m_JiFenBtn.setOnClickCallBack(this.showConvertDlg.bind({ self: this }));
    // source line 121, bytecode pc 997
    (this.m_challengeNode = xs.ccb_reader.load(xs.Cfg.CCBI.ChallengeCopy, this));
    // source line 122, bytecode pc 1089
    xs.Utils.Node.attachNodes(this, this.m_challengeNode, { desc: "c", sc: true, offset: cc.p(-400, -240) });
    // source line 124, bytecode pc 1116
    (this.m_challengeLabel = this.m_challengeNode.getChildByTag(10));
    // source line 125, bytecode pc 1141
    this.m_challengeLabel.setString(this.m_challengeCnt);
    // source line 127, bytecode pc 1180
    (this.label_0 = xs.Factorys.Label.createByStyleId("LS_zhanchang_zi2"));
    // source line 128, bytecode pc 1223
    this.label_0.setAnchorPoint(cc.p(0, 0.5));
    // source line 129, bytecode pc 1239
    (tili = this.getCurrBossTiLi());
    // source line 130, bytecode pc 1288
    (promptStr = xs.Tools.String.createStringWithArgsArray("CopyTiLiTips", [ tili ]));
    // source line 131, bytecode pc 1310
    this.label_0.setString(promptStr);
    if ((this.m_challengeCnt > 0)) {
        // source line 133, bytecode pc 1343
        this.label_0.setVisible(false);
    }
    // source line 136, bytecode pc 1435
    xs.Utils.Node.attachNodes(this, this.label_0, { desc: "c", sc: true, offset: cc.p(-400, -247) });
    // source line 138, bytecode pc 1486
    (this.ccb_Node = xs.ccb_reader.load(xs.Cfg.CCBI.PlantTreeCopy, this));
    // source line 139, bytecode pc 1576
    xs.Utils.Node.attachNodes(this, this.ccb_Node, { desc: "c", sc: true, offset: cc.p(180, -260) });
    // source line 142, bytecode pc 1598
    (kill_list = this.m_award_info[this.m_curTeamListIndex].kill_award);
    // source line 143, bytecode pc 1625
    xs.dump("---- kill_list ;", kill_list);
    // source line 144, bytecode pc 1639
    (num = kill_list[0].num);
    // source line 145, bytecode pc 1666
    (this.killAwardLabel = this.ccb_Node.getChildByTag(9));
    // source line 146, bytecode pc 1705
    this.killAwardLabel.setString(("x" + num.toString()));
    // source line 148, bytecode pc 1727
    (round_list = this.m_award_info[this.m_curTeamListIndex].round_award);
    // source line 149, bytecode pc 1754
    xs.dump("回合奖励:", round_list);
    // source line 150, bytecode pc 1771
    (num3 = round_list[3][0].num);
    // source line 151, bytecode pc 1788
    (num5 = round_list[5][0].num);
    // source line 152, bytecode pc 1805
    (num15 = round_list[15][0].num);
    // source line 153, bytecode pc 1832
    (this.awardLabel3 = this.ccb_Node.getChildByTag(10));
    // source line 154, bytecode pc 1871
    this.awardLabel3.setString(("x" + num3.toString()));
    // source line 155, bytecode pc 1898
    (this.awardLabel5 = this.ccb_Node.getChildByTag(11));
    // source line 156, bytecode pc 1937
    this.awardLabel5.setString(("x" + num5.toString()));
    // source line 157, bytecode pc 1964
    (this.awardLabel15 = this.ccb_Node.getChildByTag(12));
    // source line 158, bytecode pc 2003
    this.awardLabel15.setString(("x" + num15.toString()));
    // source line 160, bytecode pc 2030
    (this.m_first_icon = this.ccb_Node.getChildByTag(15));
    // source line 161, bytecode pc 2057
    (this.m_second_icon = this.ccb_Node.getChildByTag(16));
    // source line 162, bytecode pc 2082
    this.m_iconsList.push(this.m_first_icon);
    // source line 163, bytecode pc 2107
    this.m_iconsList.push(this.m_second_icon);
    // source line 164, bytecode pc 2129
    (item_list = this.m_award_info[this.m_curTeamListIndex].first_kill_award);
    // source line 165, bytecode pc 2134
    (i = 0);
    while ((i < 2)) {
        // source line 166, bytecode pc 2165
        this.switchCreateIcon(item_list[i], i);
        // source line 165, bytecode pc 2180
        i++;
    }
    // source line 172, bytecode pc 2231
    (this.killBtn = xs.Views.Btn.create("Btn_Copy_Kill"));
    // source line 173, bytecode pc 2320
    xs.Utils.Node.attachNodes(this, this.killBtn, { desc: "c", offset: cc.p(100, -240), sc: true });
    // source line 174, bytecode pc 2341
    this.killBtn.setTouchPriority(-20);
    // source line 202, bytecode pc 2378
    this.killBtn.setOnClickCallBack(function() {
    if (this.getCurrBossIsLocked()) {
        // source line 177, bytecode pc 76
        xs.Views.Mgr.showToast(xs.Tools.String.createString("CopyLockTips"));
        // source line 178, bytecode pc 78
        return void 0;
    }
    if ((this.m_challengeCnt <= 0)) {
        if ((xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerCurTiLi() < 10)) {
            // source line 184, bytecode pc 180
            xs.log("---- 体力不足 -----");
            // source line 187, bytecode pc 240
            xs.Views.Mgr.showDialogByName("NotEnoughAndBuy", { item_id: xs.Models.ItemID_PowerWithVipCondition });
            // source line 189, bytecode pc 242
            return void 0;
        }
    }
    // source line 201, bytecode pc 381
    xs.Tools.Net.requireCopyFight({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    boss_id: this.getCurrBossId(),
    boss_dungeon_id: this.getCurrDungeonId()
}, function(jsonObj, _modelMap) {
    // source line 200, bytecode pc 68
    xs.Tools.Scene.gotoFight(xs.Constant_FightScene_Type_Copy, xs.Models.FightInfo.create(jsonObj));
}, this);
}.bind(this));
    // source line 206, bytecode pc 2422
    (this.m_instructionBtn = xs.Tools.Views.Btn.createInstruction("PlantTreeCopyExplain"));
    // source line 207, bytecode pc 2510
    xs.Utils.Node.attachNodes(this, this.m_instructionBtn, { desc: "ct", offset: cc.p(106, -80), sc: true }, null);
    // source line 208, bytecode pc 2531
    this.m_instructionBtn.setTouchPriority(-20);
    // source line 211, bytecode pc 2590
    (this.m_scale9ContentBg = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.Cmn01_news.frameName));
    // source line 212, bytecode pc 2629
    this.m_scale9ContentBg.setAnchorPoint(cc.p(0, 0));
    // source line 213, bytecode pc 2671
    this.m_scale9ContentBg.setPreferredSize(cc.size(960, 41));
    // source line 219, bytecode pc 2754
    xs.Utils.Node.attachNodes(this, this.m_scale9ContentBg, { desc: "lb", sc: true, offset: { x: 40, y: 0 } });
    // source line 223, bytecode pc 2793
    (this.m_newsLabel = xs.Factorys.Label.createByStyleId("LS_liaotian_5"));
    // source line 224, bytecode pc 2818
    this.m_newsLabel.setString(this.m_currKillInfoStr);
    // source line 230, bytecode pc 2899
    xs.Utils.Node.attachNodes(this.m_scale9ContentBg, this.m_newsLabel, { desc: "c", offset: { x: 0, y: 0 } });
    // source line 235, bytecode pc 2938
    (this.m_hpLabel = xs.Factorys.Label.createByStyleId("LS_liaotian_6"));
    // source line 239, bytecode pc 2990
    (str = xs.Tools.String.createStringWithArgsArray("CopyHpPercentTips", [ this.m_currBossHpPercent ]));
    // source line 240, bytecode pc 3012
    this.m_hpLabel.setString(str);
    // source line 246, bytecode pc 3097
    xs.Utils.Node.attachNodes(this, this.m_hpLabel, { desc: "c", sc: true, offset: { x: 50, y: 150 } });
    // source line 251, bytecode pc 3110
    this.updateBossLock();
    // source line 253, bytecode pc 3123
    this.setUpIconAndName();
},
    updateBossLock: function() {
    var i, is_lock, cell;
    // source line 257, bytecode pc 4
    (i = 0);
    while ((i < this.m_boss_info.length)) {
        // source line 258, bytecode pc 29
        (is_lock = this.m_boss_info[i].is_lock);
        // source line 259, bytecode pc 54
        (cell = this.m_teamList.cellAtIndex(i));
        // source line 260, bytecode pc 73
        cell.setIsLocked(is_lock);
        // source line 257, bytecode pc 88
        i++;
    }
},
    setUpIconAndName: function() {
    var visibleSize, general, generalName;
    // source line 268, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this.m_generalName);
    // source line 269, bytecode pc 41
    (this.m_generalName = null);
    // source line 271, bytecode pc 66
    (visibleSize = xs.director.getVisibleSize());
    // source line 273, bytecode pc 83
    (general = this.generalList[this.m_curTeamListIndex]);
    if (general) {
        // source line 276, bytecode pc 109
        (generalName = general.getNameString());
        // source line 277, bytecode pc 148
        (this.m_generalName = xs.Factorys.Label.createByStyleId("LS_wujiangName2"));
        // source line 278, bytecode pc 181
        this.m_generalName.setString(generalName.toWordBreak());
        // source line 279, bytecode pc 224
        this.m_generalName.setAnchorPoint(cc.p(0.5, 1));
        // source line 285, bytecode pc 320
        xs.Utils.Node.attachNodes(this, this.m_generalName, { desc: "lt", sc: true, offset: { x: ((visibleSize.width * 9) / 40), y: -100 } });
    }
},
    updateAllUI: function() {
    // source line 293, bytecode pc 17
    this.m_teamList.reloadData();
    // source line 294, bytecode pc 30
    this.reloadGeneralSwapView();
    // source line 295, bytecode pc 43
    this.updateUI();
},
    updateUI: function() {
    var kill_list, num, round_list, num3, num5, num15, item_list, i, tili, promptStr, str;
    // source line 300, bytecode pc 24
    this.m_challengeLabel.setString(this.m_challengeCnt);
    // source line 302, bytecode pc 46
    (kill_list = this.m_award_info[this.m_curTeamListIndex].kill_award);
    // source line 303, bytecode pc 60
    (num = kill_list[0].num);
    // source line 304, bytecode pc 99
    this.killAwardLabel.setString(("x" + num.toString()));
    // source line 306, bytecode pc 121
    (round_list = this.m_award_info[this.m_curTeamListIndex].round_award);
    // source line 307, bytecode pc 138
    (num3 = round_list[3][0].num);
    // source line 308, bytecode pc 155
    (num5 = round_list[5][0].num);
    // source line 309, bytecode pc 172
    (num15 = round_list[15][0].num);
    // source line 310, bytecode pc 211
    this.awardLabel3.setString(("x" + num3.toString()));
    // source line 311, bytecode pc 250
    this.awardLabel5.setString(("x" + num5.toString()));
    // source line 312, bytecode pc 289
    this.awardLabel15.setString(("x" + num15.toString()));
    // source line 314, bytecode pc 311
    (item_list = this.m_award_info[this.m_curTeamListIndex].first_kill_award);
    // source line 315, bytecode pc 316
    (i = 0);
    while ((i < 2)) {
        // source line 316, bytecode pc 347
        this.switchCreateIcon(item_list[i], i);
        // source line 315, bytecode pc 362
        i++;
    }
    // source line 319, bytecode pc 393
    (this.m_curr_bossId = this.getCurrBossId());
    // source line 320, bytecode pc 412
    (this.m_boss_dungeon_id = this.getCurrDungeonId());
    // source line 321, bytecode pc 438
    (this.m_currKillInfoStr = this.getKillInfoStr(this.m_boss_dungeon_id));
    // source line 322, bytecode pc 463
    this.m_newsLabel.setString(this.m_currKillInfoStr);
    // source line 324, bytecode pc 479
    (tili = this.getCurrBossTiLi());
    // source line 325, bytecode pc 528
    (promptStr = xs.Tools.String.createStringWithArgsArray("CopyTiLiTips", [ tili ]));
    // source line 326, bytecode pc 550
    this.label_0.setString(promptStr);
    if ((this.m_challengeCnt > 0)) {
        // source line 328, bytecode pc 583
        this.label_0.setVisible(false);
    } else {
        // source line 330, bytecode pc 608
        this.label_0.setVisible(true);
    }
    // source line 334, bytecode pc 627
    (this.m_currBossHpPercent = this.getCurrHpPercent());
    // source line 335, bytecode pc 679
    (str = xs.Tools.String.createStringWithArgsArray("CopyHpPercentTips", [ this.m_currBossHpPercent ]));
    // source line 336, bytecode pc 701
    this.m_hpLabel.setString(str);
    // source line 338, bytecode pc 714
    this.setUpIconAndName();
},
    _getGeneralModelById: function(generalId) {
    var _obj;
    // source line 342, bytecode pc 54
    (_obj = xs.Profile.GameData.Mgr.getInstance().Generals.createWithBase(generalId));
    // source line 343, bytecode pc 58
    return _obj;
},
    reloadGeneralSwapView: function() {
    // source line 347, bytecode pc 24
    this.m_gInfo.setDataSource(this.generalList);
},
    getCurrBossId: function() {
    var bossId;
    // source line 351, bytecode pc 4
    (bossId = 0);
    if (this.m_boss_info[this.m_curTeamListIndex]) {
        // source line 353, bytecode pc 44
        (bossId = this.m_boss_info[this.m_curTeamListIndex].boss_id);
    }
    // source line 355, bytecode pc 48
    return bossId;
},
    getCurrBossTiLi: function() {
    var tili;
    // source line 359, bytecode pc 4
    (tili = 0);
    if (this.m_boss_info[this.m_curTeamListIndex]) {
        // source line 361, bytecode pc 44
        (tili = this.m_boss_info[this.m_curTeamListIndex].boss_power);
    }
    // source line 363, bytecode pc 48
    return tili;
},
    getCurrDungeonId: function() {
    var boss_dungeon_id;
    // source line 367, bytecode pc 4
    (boss_dungeon_id = 0);
    if (this.m_boss_info[this.m_curTeamListIndex]) {
        // source line 369, bytecode pc 44
        (boss_dungeon_id = this.m_boss_info[this.m_curTeamListIndex].boss_dungeon_id);
    }
    // source line 371, bytecode pc 48
    return boss_dungeon_id;
},
    getCurrBossIsLocked: function() {
    var is_lock;
    // source line 376, bytecode pc 4
    (is_lock = true);
    if (this.m_boss_info[this.m_curTeamListIndex]) {
        // source line 378, bytecode pc 44
        (is_lock = this.m_boss_info[this.m_curTeamListIndex].is_lock);
    }
    // source line 380, bytecode pc 48
    return is_lock;
},
    getCurrHpPercent: function() {
    var hpPercent, percent;
    // source line 384, bytecode pc 5
    (hpPercent = 100);
    if (this.m_boss_info[this.m_curTeamListIndex]) {
        // source line 386, bytecode pc 45
        (percent = this.m_boss_info[this.m_curTeamListIndex].boss_hp_percent);
        if (percent) {
            // source line 388, bytecode pc 60
            (hpPercent = percent);
        }
    }
    // source line 391, bytecode pc 64
    return hpPercent;
},
    getKillInfoStr: function(bossId) {
    var str, i;
    // source line 395, bytecode pc 8
    (str = "");
    // source line 396, bytecode pc 13
    (i = 0);
    while ((i < this.m_kill_info.length)) {
        if ((bossId == this.m_kill_info[i].boss_dungeon_id)) {
            // source line 399, bytecode pc 123
            (str = xs.Tools.String.createStringWithArgsArray("BossKilledStr", [ this.m_kill_info[i].kill_user_name, this.m_kill_info[i].kill_time ]));
            break;
        }
        // source line 396, bytecode pc 143
        i++;
    }
    if ((str == "")) {
        // source line 404, bytecode pc 214
        (str = xs.Tools.String.createString("BossNoKillStr"));
    }
    // source line 406, bytecode pc 218
    return str;
},
    showConvertDlg: function() {
    var self;
    // source line 414, bytecode pc 9
    (self = this.self);
    // source line 415, bytecode pc 45
    xs.Views.Dialog.PlantTreeDlg.showWithSurrenderInfo(self);
},
    onEnter: function() {
    // source line 419, bytecode pc 12
    this._super();
    // source line 420, bytecode pc 35
    xs.log("CopyScene onEnter");
    // source line 421, bytecode pc 48
    this.requestService();
},
    requestCallback: function(data) {
    // source line 425, bytecode pc 22
    xs.log("requestCallback");
},
    requestService: function() {
    // source line 429, bytecode pc 22
    xs.log("requestService");
    // source line 455, bytecode pc 159
    xs.Tools.Net.requirePlantTreeData({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(params) {
    var mCopy;
    // source line 436, bytecode pc 45
    (mCopy = xs.Profile.GameData.PushInfo.getInstance().getCopyInfo());
    // source line 437, bytecode pc 64
    mCopy.loadJson(params);
    if (mCopy.getResult()) {
        // source line 440, bytecode pc 96
        this.initWithData();
    }
}.bind(this), function(params) {
    if ((params.error_code === "e_1005")) {
        // source line 450, bytecode pc 45
        xs.Views.Mgr.hideDialog();
        // source line 451, bytecode pc 47
        return true;
    }
    // source line 453, bytecode pc 49
    return false;
}.bind(this), this);
},
    onExit: function() {
    // source line 463, bytecode pc 12
    this._super();
},
    setTeamListCurIndex: function(idx) {
    var oldIndex, preCell, currCell;
    // source line 467, bytecode pc 26
    xs.log(("setTeamListCurIndex................." + idx));
    if ((this.m_curTeamListIndex !== idx)) {
        // source line 470, bytecode pc 51
        (oldIndex = this.m_curTeamListIndex);
        // source line 471, bytecode pc 61
        (this.m_curTeamListIndex = idx);
        // source line 473, bytecode pc 86
        (preCell = this.m_teamList.cellAtIndex(oldIndex));
        // source line 474, bytecode pc 114
        (currCell = this.m_teamList.cellAtIndex(this.m_curTeamListIndex));
        // source line 476, bytecode pc 131
        preCell.setIsSelected(false);
        // source line 477, bytecode pc 148
        currCell.setIsSelected(true);
        // source line 479, bytecode pc 161
        this.updateUI();
    }
},
    initWithData: function() {
    // source line 485, bytecode pc 22
    xs.log("----- initWithData -----");
    // source line 486, bytecode pc 35
    this.initData();
    // source line 487, bytecode pc 48
    this.initUI();
},
    createItemIcon: function(data, idex) {
    var num, model, head, str_num, lab_num;
    // source line 492, bytecode pc 11
    (num = data.num);
    // source line 494, bytecode pc 50
    (model = xs.Models.Item.createWithBase(data.id));
    // source line 496, bytecode pc 68
    (head = model.createIcon_Grade());
    // source line 497, bytecode pc 96
    (str_num = ("x" + String(num)));
    // source line 498, bytecode pc 132
    (lab_num = xs.Factorys.Label.createByStyleId("LS_EXPInf"));
    // source line 500, bytecode pc 151
    lab_num.setString(str_num);
    // source line 501, bytecode pc 236
    xs.Utils.Node.attachNodes(head, lab_num, { desc: "c", offset: cc.p(5, -30), sc: false });
    // source line 503, bytecode pc 285
    xs.Utils.Node.replaceChildSafe(this.ccb_Node, this.m_iconsList[idex], head);
    // source line 504, bytecode pc 299
    (this.m_iconsList[idex] = head);
},
    createEquipmentFragmentIcon: function(data, idex) {
    var num, model, equipData, head, str_num, lab_num;
    // source line 511, bytecode pc 11
    (num = data.num);
    // source line 512, bytecode pc 50
    (model = xs.Models.Equipment.createWithBase(data.id));
    // source line 513, bytecode pc 89
    (equipData = xs.Models.EquipmentPiece.createWithBase(data.id));
    // source line 514, bytecode pc 107
    (head = equipData.createIcon_Grade());
    // source line 516, bytecode pc 135
    (str_num = ("x" + String(num)));
    // source line 517, bytecode pc 171
    (lab_num = xs.Factorys.Label.createByStyleId("LS_EXPInf"));
    // source line 519, bytecode pc 190
    lab_num.setString(str_num);
    // source line 520, bytecode pc 275
    xs.Utils.Node.attachNodes(head, lab_num, { desc: "c", offset: cc.p(5, -30), sc: false });
    // source line 521, bytecode pc 324
    xs.Utils.Node.replaceChildSafe(this.ccb_Node, this.m_iconsList[idex], head);
    // source line 522, bytecode pc 338
    (this.m_iconsList[idex] = head);
},
    createGeneralsSoulIcon: function(data, idex) {
    var num, generalId, equipData, model, head, str_num, lab_num;
    // source line 528, bytecode pc 11
    (num = data.num);
    // source line 529, bytecode pc 23
    (generalId = data.id);
    // source line 530, bytecode pc 74
    (equipData = xs.Models.General.createWithBase(generalId.toString()));
    // source line 531, bytecode pc 119
    (model = xs.Models.GeneralSoul.createWithBase(generalId.toString()));
    // source line 532, bytecode pc 137
    (head = model.createIcon_Grade());
    // source line 539, bytecode pc 171
    head.setOnClickCallBack(function() {
    // source line 537, bytecode pc 63
    xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: equipData, type: "achieve_nothave" });
}.bind(this));
    // source line 541, bytecode pc 199
    (str_num = ("x" + String(num)));
    // source line 542, bytecode pc 235
    (lab_num = xs.Factorys.Label.createByStyleId("LS_EXPInf"));
    // source line 544, bytecode pc 254
    lab_num.setString(str_num);
    // source line 545, bytecode pc 339
    xs.Utils.Node.attachNodes(head, lab_num, { desc: "c", offset: cc.p(5, -30), sc: false });
    // source line 546, bytecode pc 388
    xs.Utils.Node.replaceChildSafe(this.ccb_Node, this.m_iconsList[idex], head);
    // source line 547, bytecode pc 402
    (this.m_iconsList[idex] = head);
},
    switchCreateIcon: function(data, i) {
    var type;
    // source line 553, bytecode pc 26
    (type = Number(data.type));
    // source line 554, bytecode pc 30
    switch (type) {
        case 3:
        case 4:
        case 7:
        /* TODO_BYTECODE pc=30 opcode=tableswitch reason=tableswitch_target_invalid */
        break;
        case 5:
        // source line 557, bytecode pc 91
        this.createItemIcon(data, i);
        break;
        case 6:
        // source line 562, bytecode pc 117
        this.createGeneralsSoulIcon(data, i);
        break;
        case 8:
        // source line 566, bytecode pc 143
        this.createEquipmentFragmentIcon(data, i);
        break;
        case 2:
        // source line 570, bytecode pc 169
        this.createEquipmentFragmentIcon(data, i);
        break;
        default:
        // source line 574, bytecode pc 197
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
    // source line 589, bytecode pc 17
    (idx = cell.getIdx());
    // source line 590, bytecode pc 44
    xs.log("------ tableCellTouched idx = ", idx);
    if ((idx == this.m_curTeamListIndex)) {
        // source line 592, bytecode pc 61
        return void 0;
    }
    // source line 594, bytecode pc 78
    this.setTeamListCurIndex(idx);
    // source line 597, bytecode pc 100
    this.m_gInfo.setIndex(idx);
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 603, bytecode pc 22
    return cc.size(106, 120);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 606, bytecode pc 26
    xs.log("~~~~ idx = ", idx);
    // source line 607, bytecode pc 44
    (cell = table.dequeueCell());
    try {
        if (!cell) {
            // source line 610, bytecode pc 84
            (cell = xs.Views.BossCell.create());
        }
        // source line 612, bytecode pc 110
        cell.refresh(this.generalList[idx]);
        if ((idx === this.m_curTeamListIndex)) {
            // source line 615, bytecode pc 142
            cell.setIsSelected(true);
        } else {
            // source line 617, bytecode pc 164
            cell.setIsSelected(false);
        }
    } catch (e) {
        // source line 620, bytecode pc 200
        xs.warnException(e);
        /* TODO_BYTECODE pc=201 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 623, bytecode pc 213
    return cell;
},
    numberOfCellsInTableView: function(table) {
    // source line 626, bytecode pc 11
    return this.m_boss_info.length;
},
    GeneralSwapView_swapAtIndex: function(idx) {
    if ((idx == this.m_curTeamListIndex)) {
        // source line 632, bytecode pc 16
        return void 0;
    }
    // source line 634, bytecode pc 33
    this.setTeamListCurIndex(idx);
}
}));
// source line 640, bytecode pc 419
(xs.Views.PlantCopyLayer.create = function(param) {
    var view;
    // source line 642, bytecode pc 23
    (view = new xs.Views.PlantCopyLayer());
    if ((view && view.init(param))) {
        // source line 645, bytecode pc 59
        return view;
    }
    // source line 648, bytecode pc 84
    xs.assert(false, "xs.Views.PlantCopyLayer.create error!");
    // source line 650, bytecode pc 86
    return null;
});
// source line 661, bytecode pc 493
(xs.Scene.PlantCopyScene = cc.Scene.extend({
    name: "xs.Scene.PlantCopyScene",
    ctor: function() {
    // source line 657, bytecode pc 12
    this._super();
    // source line 658, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(param) {
    var visibleSize, playerInfo;
    if (!this._super()) {
        // source line 663, bytecode pc 19
        return false;
    }
    // source line 666, bytecode pc 55
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    // source line 667, bytecode pc 72
    this.setContentSize(visibleSize);
    // source line 670, bytecode pc 112
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_Fight_PlantCopy);
    // source line 673, bytecode pc 142
    (playerInfo = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 674, bytecode pc 178
    playerInfo.setAnchorPoint(cc.p(0, 1));
    // source line 675, bytecode pc 234
    xs.Utils.Node.attachNodes(this, playerInfo, { desc: "lt", sc: true });
    // source line 678, bytecode pc 271
    (this.sideMenu = xs.Tools.UI.addShortcutBoard(this, true));
    // source line 681, bytecode pc 363
    (this.m_pageView = xs.Views.TablePage.create(cc.size((visibleSize.width - xs.Views.MainMenuView.Width), (visibleSize.height - 50))));
    // source line 682, bytecode pc 384
    this.m_pageView.setBaseTouchPriority(-1);
    // source line 683, bytecode pc 404
    this.m_pageView.setListener(this);
    // source line 685, bytecode pc 495
    this.m_pageView.addPageWhitConstruct(xs.Tools.String.createString("PlantCopyTitle"), xs.Views.PlantCopyLayer, { listener: this, param: {} });
    // source line 688, bytecode pc 554
    xs.Utils.Node.attachNodes(this, this.m_pageView, { desc: "lb", sc: true });
    // source line 691, bytecode pc 556
    return true;
}
}));
// source line 697, bytecode pc 519
(xs.Scene.PlantCopyScene.create = function(param) {
    var sc;
    // source line 698, bytecode pc 23
    (sc = new xs.Scene.PlantCopyScene());
    if ((sc && sc.init(param))) {
        // source line 701, bytecode pc 59
        return sc;
    }
    // source line 703, bytecode pc 84
    xs.assert(false, "xs.Scene.CopyScene.create error!");
    // source line 704, bytecode pc 86
    return null;
});
// source line 710, bytecode pc 640
xs.Scene.Mgr.registerScene("PlantCopyScene", {
    "class": xs.Scene.PlantCopyScene,
    area: [ "DuiJiuScene01", "SellTag", "SecretShop", "ZuiduiMenuScene01" ],
    type: xs.Constant_SceneType_Cmn
});
