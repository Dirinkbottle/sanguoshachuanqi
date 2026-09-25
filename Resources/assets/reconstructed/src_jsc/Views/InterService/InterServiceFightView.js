// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/InterService/InterServiceFightView.js:1
// source line 424, bytecode pc 982
(xs.Views.InterServiceFightView = cc.Layer.extend({
    name: "xs.Views.InterServiceFightView",
    ccbCfg_first: [
        { tag: 1, type: "ls", name: "m_first_PlayerName", id: "LS_yuanfenInf2" },
        { tag: 10, type: "ls", name: "m_first_PlayerServer", id: "LS_yuanfenInf2" },
        { tag: 3, type: "ls", name: "m_first_PlayerLevel", id: "LS_Lv" },
        { tag: 50, type: "ls", name: "m_first_YuanbaoNum", id: "LS_Lv" },
        { tag: 4, type: "btn", name: "m_first_fightBtn", id: "Btn_btn1" }
    ],
    ccbCfg_second: [
        { tag: 1, type: "ls", name: "m_second_PlayerName", id: "LS_yuanfenInf2" },
        { tag: 10, type: "ls", name: "m_second_PlayerServer", id: "LS_yuanfenInf2" },
        { tag: 3, type: "ls", name: "m_second_PlayerLevel", id: "LS_Lv" },
        { tag: 50, type: "ls", name: "m_second_YuanbaoNum", id: "LS_Lv" },
        { tag: 4, type: "btn", name: "m_second_fightBtn", id: "Btn_btn1" }
    ],
    ccbCfg_userinfor: [
        { tag: 1, type: "ls", name: "m_winNum_history", id: "LS_liansha" },
        { tag: 2, type: "ls", name: "m_winNum_now", id: "LS_liansha" },
        { tag: 3, type: "ls", name: "m_points_history", id: "LS_Lv" },
        { tag: 4, type: "ls", name: "m_points_residue", id: "LS_Lv" },
        { tag: 5, type: "ls", name: "m_rank", id: "LS_Lv" },
        { tag: 40, type: "ls", name: "m_historyResidueNum", id: "LS_ZbJn" }
    ],
    ctor: function() {
    // source line 30, bytecode pc 12
    this._super();
    // source line 31, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(data) {
    var visibleSize;
    if (!this._super()) {
        // source line 35, bytecode pc 19
        return false;
    }
    // source line 38, bytecode pc 27
    (this.ccbNode_first = null);
    // source line 39, bytecode pc 35
    (this.ccbNode_second = null);
    // source line 40, bytecode pc 43
    (this.m_first_PlayerName = null);
    // source line 41, bytecode pc 51
    (this.m_first_PlayerLevel = null);
    // source line 42, bytecode pc 59
    (this.m_first_PlayerServer = null);
    // source line 43, bytecode pc 67
    (this.m_first_fightBtn = null);
    // source line 44, bytecode pc 75
    (this.m_first_icon = null);
    // source line 45, bytecode pc 83
    (this.m_second_PlayerName = null);
    // source line 46, bytecode pc 91
    (this.m_second_PlayerLevel = null);
    // source line 47, bytecode pc 99
    (this.m_second_PlayerServer = null);
    // source line 48, bytecode pc 107
    (this.m_second_fightBtn = null);
    // source line 49, bytecode pc 115
    (this.m_second_icon = null);
    // source line 50, bytecode pc 123
    (this.m_winNum_history = null);
    // source line 51, bytecode pc 131
    (this.m_winNum_now = null);
    // source line 52, bytecode pc 139
    (this.m_points_history = null);
    // source line 53, bytecode pc 147
    (this.m_points_residue = null);
    // source line 54, bytecode pc 155
    (this.m_rank = null);
    // source line 56, bytecode pc 163
    (this.m_first_YuanbaoNum = null);
    // source line 57, bytecode pc 171
    (this.m_second_YuanbaoNum = null);
    // source line 59, bytecode pc 179
    (this.m_historyResidueNum = null);
    // source line 61, bytecode pc 187
    (this.m_firstID = null);
    // source line 62, bytecode pc 195
    (this.m_secondID = null);
    // source line 64, bytecode pc 203
    (this.m_history_fight = null);
    // source line 65, bytecode pc 211
    (this.m_left_fight = null);
    // source line 66, bytecode pc 219
    (this.m_price = null);
    // source line 67, bytecode pc 227
    (this.m_current_win = null);
    // source line 68, bytecode pc 235
    (this.m_enable_fight = null);
    // source line 70, bytecode pc 245
    (this.m_local = data);
    // source line 72, bytecode pc 253
    (this.m_data = null);
    // source line 74, bytecode pc 278
    (visibleSize = xs.director.getVisibleSize());
    // source line 78, bytecode pc 329
    (this.ccbNode_first = xs.ccb_reader.load(xs.Cfg.CCBI.InterServicePlayerInfor, this));
    // source line 81, bytecode pc 416
    xs.Utils.Node.attachNodes(this, this.ccbNode_first, { desc: "lb", offset: cc.p(200, 110), sc: false });
    // source line 82, bytecode pc 459
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode_first, this.ccbCfg_first, this);
    // source line 85, bytecode pc 510
    (this.ccbNode_second = xs.ccb_reader.load(xs.Cfg.CCBI.InterServicePlayerInfor, this));
    // source line 88, bytecode pc 599
    xs.Utils.Node.attachNodes(this, this.ccbNode_second, { desc: "rb", offset: cc.p(-450, 110), sc: false });
    // source line 89, bytecode pc 642
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode_second, this.ccbCfg_second, this);
    // source line 92, bytecode pc 680
    (this.m_first_YuanbaoBg = xs.Utils.getChildByTag(this.ccbNode_first, 60));
    // source line 93, bytecode pc 718
    (this.m_second_YuanbaoBg = xs.Utils.getChildByTag(this.ccbNode_second, 60));
    // source line 95, bytecode pc 769
    (this.ccbNode_userinfor = xs.ccb_reader.load(xs.Cfg.CCBI.InterFightUserInfor, this));
    // source line 96, bytecode pc 811
    this.ccbNode_userinfor.setContentSize(cc.size(800, 110));
    // source line 102, bytecode pc 908
    xs.Utils.Node.attachNodes(this, this.ccbNode_userinfor, { desc: "lb", offset: { x: ((visibleSize.width / 2) - 310), y: 6 }, sc: false });
    // source line 103, bytecode pc 951
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode_userinfor, this.ccbCfg_userinfor, this);
    // source line 107, bytecode pc 996
    (this.winPoint_bg = xs.Factorys.Sprite.create("InterServiceLadderWar_WinPoints", "InterServiceLadderWar"));
    // source line 111, bytecode pc 1094
    xs.Utils.Node.attachNodes(this, this.winPoint_bg, { desc: "lt", offset: { x: (visibleSize.width / 2), y: -130 }, sc: true }, null);
    // source line 113, bytecode pc 1139
    (this.winPointNumLabel = xs.Factorys.Label.createByStyleIdWithString("LS_Lv", "0"));
    // source line 119, bytecode pc 1244
    xs.Utils.Node.attachNodes(this, this.winPointNumLabel, { desc: "lt", sc: true, offset: { x: (this.winPoint_bg.getPositionX() + 20), y: -154 } });
    // source line 125, bytecode pc 1295
    this.m_first_fightBtn.setString(xs.Tools.String.createString("interService_kill"));
    // source line 127, bytecode pc 1316
    this.m_first_fightBtn.setZOrder(2);
    // source line 128, bytecode pc 1336
    this.m_first_fightBtn.setZoomOnTouchDown(true);
    // source line 129, bytecode pc 1374
    this.m_first_fightBtn.setOnClickCallBack(this.firstFightCallback.bind(this));
    // source line 132, bytecode pc 1425
    this.m_second_fightBtn.setString(xs.Tools.String.createString("interService_kill"));
    // source line 134, bytecode pc 1446
    this.m_second_fightBtn.setZOrder(2);
    // source line 135, bytecode pc 1466
    this.m_second_fightBtn.setZoomOnTouchDown(true);
    // source line 136, bytecode pc 1504
    this.m_second_fightBtn.setOnClickCallBack(this.secondFightCallback.bind(this));
    // source line 139, bytecode pc 1542
    (this.m_first_icon = xs.Utils.getChildByTag(this.ccbNode_first, 2));
    // source line 140, bytecode pc 1562
    this.m_first_icon.setZOrder(1);
    // source line 141, bytecode pc 1600
    (this.m_second_icon = xs.Utils.getChildByTag(this.ccbNode_second, 2));
    // source line 142, bytecode pc 1620
    this.m_first_icon.setZOrder(1);
    // source line 144, bytecode pc 1658
    (this.m_firstgeneral_bg = xs.Utils.getChildByTag(this.ccbNode_first, 30));
    // source line 145, bytecode pc 1679
    this.m_firstgeneral_bg.setZOrder(2);
    // source line 146, bytecode pc 1717
    (this.m_secondgeneral_bg = xs.Utils.getChildByTag(this.ccbNode_second, 30));
    // source line 147, bytecode pc 1738
    this.m_secondgeneral_bg.setZOrder(2);
    // source line 148, bytecode pc 1776
    (this.m_firstlv_bg = xs.Utils.getChildByTag(this.ccbNode_first, 40));
    // source line 149, bytecode pc 1797
    this.m_firstlv_bg.setZOrder(3);
    // source line 150, bytecode pc 1835
    (this.m_secondlv_bg = xs.Utils.getChildByTag(this.ccbNode_second, 40));
    // source line 151, bytecode pc 1856
    this.m_secondlv_bg.setZOrder(3);
    // source line 153, bytecode pc 1877
    this.m_first_PlayerName.setZOrder(3);
    // source line 154, bytecode pc 1898
    this.m_first_PlayerLevel.setZOrder(3);
    // source line 155, bytecode pc 1919
    this.m_first_PlayerServer.setZOrder(3);
    // source line 156, bytecode pc 1940
    this.m_second_PlayerName.setZOrder(3);
    // source line 157, bytecode pc 1961
    this.m_second_PlayerLevel.setZOrder(3);
    // source line 158, bytecode pc 1982
    this.m_second_PlayerServer.setZOrder(3);
    // source line 161, bytecode pc 2006
    this.m_winNum_history.setString("0");
    // source line 162, bytecode pc 2030
    this.m_winNum_now.setString("0");
    // source line 163, bytecode pc 2054
    this.m_points_history.setString("0");
    // source line 164, bytecode pc 2078
    this.m_points_residue.setString("0");
    // source line 165, bytecode pc 2102
    this.m_rank.setString("0");
    // source line 169, bytecode pc 2104
    return true;
},
    onEnter: function() {
    // source line 172, bytecode pc 12
    this._super();
    // source line 173, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.goToFight, xs.Constant_Notify_Event_InterBuyGoFight);
    // source line 174, bytecode pc 72
    this.requestPlayersInfor();
},
    onExit: function() {
    // source line 177, bytecode pc 39
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_InterBuyGoFight);
    // source line 178, bytecode pc 52
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 181, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 182, bytecode pc 36
    this.m_first_fightBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 183, bytecode pc 63
    this.m_second_fightBtn.setTouchPriority((this.m_baseTouchPriority - 1));
},
    requestPlayersInfor: function() {
    if (this.m_local) {
        // source line 199, bytecode pc 127
        xs.Tools.Net.requestLocalInterGetMatchs({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(), is_main: 1 }, function(data) {
    if (data.return_info) {
        // source line 193, bytecode pc 27
        (this.m_data = data.return_info);
        // source line 194, bytecode pc 49
        this.initLayerInfor(data.return_info);
    }
}, function(data) {
}, this);
    } else {
        // source line 214, bytecode pc 249
        xs.Tools.Net.requestInterGetMatchs({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(), is_main: 1 }, function(data) {
    if (data.return_info) {
        // source line 208, bytecode pc 27
        (this.m_data = data.return_info);
        // source line 209, bytecode pc 49
        this.initLayerInfor(data.return_info);
    }
}, function(data) {
}, this);
    }
},
    initLayerInfor: function(data) {
    var playerArray, fightStr, doubleKillStr, _first_filePath, _second_filePath, _first_general, _second_general;
    // source line 222, bytecode pc 11
    (playerArray = data.match_info);
    // source line 224, bytecode pc 28
    (this.m_firstID = playerArray[0].uid);
    // source line 225, bytecode pc 45
    (this.m_secondID = playerArray[1].uid);
    // source line 228, bytecode pc 72
    this.winPointNumLabel.setString(data.point);
    // source line 230, bytecode pc 87
    (this.m_history_fight = data.history_fight);
    // source line 231, bytecode pc 102
    (this.m_left_fight = data.left_fight);
    // source line 232, bytecode pc 117
    (this.m_price = data.price);
    // source line 233, bytecode pc 132
    (this.m_enable_fight = data.enable_fight);
    if ((data.left_fight > 0)) {
        // source line 237, bytecode pc 167
        this.m_first_YuanbaoNum.setVisible(false);
        // source line 238, bytecode pc 187
        this.m_second_YuanbaoNum.setVisible(false);
        // source line 240, bytecode pc 207
        this.m_first_YuanbaoBg.setVisible(false);
        // source line 241, bytecode pc 227
        this.m_second_YuanbaoBg.setVisible(false);
        // source line 243, bytecode pc 263
        (fightStr = xs.Tools.String.createString("interService_residueNum"));
        // source line 244, bytecode pc 309
        this.m_historyResidueNum.setString((((fightStr + data.left_fight) + "/") + data.total_fight));
    } else {
        if (!data.enable_fight) {
            // source line 249, bytecode pc 348
            this.m_first_YuanbaoNum.setVisible(true);
            // source line 250, bytecode pc 368
            this.m_second_YuanbaoNum.setVisible(true);
            // source line 251, bytecode pc 395
            this.m_first_YuanbaoNum.setString(data.price);
            // source line 252, bytecode pc 422
            this.m_second_YuanbaoNum.setString(data.price);
            // source line 253, bytecode pc 442
            this.m_first_YuanbaoBg.setVisible(true);
            // source line 254, bytecode pc 462
            this.m_second_YuanbaoBg.setVisible(true);
        } else {
            // source line 256, bytecode pc 487
            this.m_first_YuanbaoNum.setVisible(false);
            // source line 257, bytecode pc 507
            this.m_second_YuanbaoNum.setVisible(false);
            // source line 258, bytecode pc 527
            this.m_first_YuanbaoBg.setVisible(false);
            // source line 259, bytecode pc 547
            this.m_second_YuanbaoBg.setVisible(false);
        }
        // source line 263, bytecode pc 583
        (fightStr = xs.Tools.String.createString("interService_HisResidueNum"));
        // source line 264, bytecode pc 614
        this.m_historyResidueNum.setString((fightStr + data.history_fight));
    }
    // source line 268, bytecode pc 643
    this.m_first_PlayerName.setString(playerArray[0].nick);
    // source line 269, bytecode pc 672
    this.m_first_PlayerServer.setString(playerArray[0].server);
    // source line 270, bytecode pc 712
    this.m_first_PlayerLevel.setString((playerArray[0].level || "0"));
    // source line 271, bytecode pc 741
    this.m_second_PlayerName.setString(playerArray[1].nick);
    // source line 272, bytecode pc 770
    this.m_second_PlayerServer.setString(playerArray[1].server);
    // source line 273, bytecode pc 810
    this.m_second_PlayerLevel.setString((playerArray[1].level || "0"));
    // source line 275, bytecode pc 846
    (doubleKillStr = xs.Tools.String.createString("interService_doubleKill"));
    if ((Number(data.max_win) >= 2)) {
        // source line 277, bytecode pc 919
        this.m_winNum_history.setString(((data.max_win || "0") + doubleKillStr));
    } else {
        // source line 279, bytecode pc 962
        this.m_winNum_history.setString((data.max_win || "0"));
    }
    // source line 282, bytecode pc 977
    (this.m_current_win = data.current_win);
    if ((Number(data.current_win) >= 2)) {
        // source line 284, bytecode pc 1050
        this.m_winNum_now.setString(((data.current_win || "0") + doubleKillStr));
    } else {
        // source line 286, bytecode pc 1093
        this.m_winNum_now.setString((data.current_win || "0"));
    }
    // source line 288, bytecode pc 1131
    this.m_points_history.setString((data.total_point || "0"));
    // source line 289, bytecode pc 1169
    this.m_points_residue.setString((data.daily_point || "0"));
    // source line 291, bytecode pc 1207
    this.m_rank.setString((data.rank || "0"));
    // source line 294, bytecode pc 1258
    (_first_filePath = ((xs.Cfg.Resource.Path.Card1_V2.file_pre + playerArray[0].gid) + ".png"));
    // source line 295, bytecode pc 1309
    (_second_filePath = ((xs.Cfg.Resource.Path.Card1_V2.file_pre + playerArray[1].gid) + ".png"));
    // source line 296, bytecode pc 1343
    (_first_general = xs.Factorys.Sprite.createWithFileName(_first_filePath));
    // source line 297, bytecode pc 1364
    _first_general.setScale(0.7);
    // source line 298, bytecode pc 1398
    (_second_general = xs.Factorys.Sprite.createWithFileName(_second_filePath));
    // source line 299, bytecode pc 1419
    _second_general.setScale(0.7);
    // source line 300, bytecode pc 1464
    xs.Utils.Node.replaceChildSafe(this.ccbNode_first, this.m_first_icon, _first_general);
    // source line 301, bytecode pc 1474
    (this.m_first_icon = _first_general);
    // source line 302, bytecode pc 1494
    this.m_first_icon.setZOrder(1);
    // source line 303, bytecode pc 1539
    xs.Utils.Node.replaceChildSafe(this.ccbNode_second, this.m_second_icon, _second_general);
    // source line 304, bytecode pc 1549
    (this.m_second_icon = _second_general);
    // source line 305, bytecode pc 1569
    this.m_second_icon.setZOrder(1);
},
    goToFight: function() {
    var successFunction;
    // source line 309, bytecode pc 32
    xs.Tools.Statistic.event("ladderWar_kill");
    // source line 343, bytecode pc 60
    (successFunction = function(jsonObj) {
    var fightNum;
    // source line 311, bytecode pc 16
    (fightNum = (this.m_left_fight + this.m_history_fight));
    if ((fightNum === 1)) {
        // source line 326, bytecode pc 169
        xs.Scene.Mgr.changeSceneByName("FightScene", {
    mode: xs.Constant_FightScene_Mode_Normal,
    fightType: xs.Constant_FightScene_Type_UnionWar,
    openType: xs.Constant_FightScene_OpenType_Pvp,
    fightData: xs.Models.FightInfo.create(jsonObj),
    funcFinish: function() {
    // source line 323, bytecode pc 36
    xs.Scene.Mgr.history.names_sub.pop();
    // source line 324, bytecode pc 84
    (xs.Scene.Mgr.history.paramMap.InterServiceRegistrationScene = { local: this.m_local });
    // source line 325, bytecode pc 111
    xs.Scene.Mgr.gotoLastScene();
}.bind(this)
});
    } else {
        // source line 338, bytecode pc 294
        xs.Scene.Mgr.changeSceneByName("FightScene", {
    mode: xs.Constant_FightScene_Mode_Normal,
    fightType: xs.Constant_FightScene_Type_UnionWar,
    openType: xs.Constant_FightScene_OpenType_Pvp,
    fightData: xs.Models.FightInfo.create(jsonObj)
});
    }
}.bind(this));
    if (this.m_local) {
        // source line 355, bytecode pc 193
        xs.Tools.Net.requestLocalInterServiceFight({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    player_id: this.m_playerId
}, function(jsonObj) {
    // source line 351, bytecode pc 18
    successFunction(jsonObj);
}, function(jsonObj) {
}, this);
    } else {
        // source line 366, bytecode pc 320
        xs.Tools.Net.requestInterServiceFight({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    player_id: this.m_playerId
}, function(jsonObj) {
    // source line 362, bytecode pc 18
    successFunction(jsonObj);
}, function(jsonObj) {
}, this);
    }
},
    ClickGoToFight: function() {
    var promptInfor;
    if ((this.m_left_fight > 0)) {
        // source line 373, bytecode pc 25
        this.goToFight();
    } else {
        if (this.m_enable_fight) {
            // source line 376, bytecode pc 54
            this.goToFight();
        } else {
            // source line 381, bytecode pc 97
            (promptInfor = { price: this.m_price, history_fight: this.m_history_fight, fightOrRegistration: true });
            // source line 385, bytecode pc 156
            xs.Views.Mgr.showDialogByName("PromptFrameDialog", { param: promptInfor, local: this.m_local });
        }
    }
},
    firstFightCallback: function() {
    // source line 390, bytecode pc 12
    (this.m_playerId = this.m_firstID);
    if ((Number(this.m_current_win) === 20)) {
        // source line 392, bytecode pc 54
        this.createTwentyWinPrompt();
        // source line 393, bytecode pc 56
        return void 0;
    }
    // source line 395, bytecode pc 69
    this.ClickGoToFight();
},
    secondFightCallback: function() {
    // source line 398, bytecode pc 12
    (this.m_playerId = this.m_secondID);
    if ((Number(this.m_current_win) === 20)) {
        // source line 400, bytecode pc 54
        this.createTwentyWinPrompt();
        // source line 401, bytecode pc 56
        return void 0;
    }
    // source line 403, bytecode pc 69
    this.ClickGoToFight();
},
    createTwentyWinPrompt: function() {
    // source line 406, bytecode pc 48
    (this.PromptMessagePop = xs.Views.MessagePopView.create(xs.Views.MessagePopViewType_Two));
    // source line 407, bytecode pc 99
    this.PromptMessagePop.setTitle(xs.Tools.String.createString("inter_winClearTitle"));
    // source line 408, bytecode pc 150
    this.PromptMessagePop.setPrompt(xs.Tools.String.createString("inter_winClear"));
    // source line 409, bytecode pc 193
    this.PromptMessagePop.setPopSize(cc.size(480, 240));
    // source line 410, bytecode pc 213
    this.PromptMessagePop.setListener(this);
    // source line 411, bytecode pc 241
    this.PromptMessagePop.setBaseTouchPriority((this.m_baseTouchPriority - 3));
    // source line 412, bytecode pc 277
    xs.Utils.Node.attachNodes(this, this.PromptMessagePop);
},
    rightBtnCallback: function() {
    // source line 417, bytecode pc 12
    this.ClickGoToFight();
},
    leftBtnCallback: function() {
    if (this.PromptMessagePop) {
        // source line 421, bytecode pc 28
        this.PromptMessagePop.removeFromParent();
    }
},
    closeCallback: function() {
    if (this.PromptMessagePop) {
        // source line 426, bytecode pc 28
        this.PromptMessagePop.removeFromParent();
    }
}
}));
// source line 430, bytecode pc 1008
(xs.Views.InterServiceFightView.create = function(data) {
    var view;
    // source line 431, bytecode pc 23
    (view = new xs.Views.InterServiceFightView());
    if ((view && view.init(data))) {
        // source line 433, bytecode pc 59
        return view;
    }
    // source line 435, bytecode pc 84
    xs.assert(false, "xs.Views.InterServiceFightView.create error!");
    // source line 436, bytecode pc 86
    return null;
});
