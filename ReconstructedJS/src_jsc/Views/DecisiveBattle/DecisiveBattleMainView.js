// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/DecisiveBattle/DecisiveBattleMainView.js:1
// source line 478, bytecode pc 625
(xs.Views.DecisiveBattleMainView = cc.Layer.extend({
    name: "xs.Views.DecisiveBattleMainView",
    ccbCfg: [
        { tag: 1, type: "ls", name: "m_matchName", id: "LS_danyao" },
        { tag: 2, type: "ls", name: "m_matchTime", id: "LS_wujiangName1" },
        { tag: 3, type: "ls", name: "m_time", id: "LS_wujiangName1" },
        { tag: 4, type: "ls", name: "m_timeDec", id: "LS_cardWujiangName" },
        { tag: 5, type: "ls", name: "m_matchDec", id: "LS_qiangduo_Inf" },
        { tag: 7, type: "ls", name: "m_supportPoints", id: "LS_yuanfenInf2" },
        { tag: 8, type: "ls", name: "m_supportPointsNum", id: "LS_yuanfenInf2" },
        {
            tag: 10,
            type: "ls",
            name: "m_supportRanking",
            id: "LS_yuanfenInf2",
            stringId: "Decisive_ranking"
        },
        { tag: 11, type: "ls", name: "m_supportRankingNum", id: "LS_yuanfenInf2" }
    ],
    ctor: function() {
    // source line 20, bytecode pc 12
    this._super();
    // source line 21, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(data) {
    var visibleSize, midTimeLabel, arrayStr, _ret, sceneKey;
    if (!this._super()) {
        // source line 25, bytecode pc 19
        return false;
    }
    // source line 27, bytecode pc 27
    (this.m_ccbNode = null);
    // source line 28, bytecode pc 35
    (this.m_watchGameButton = null);
    // source line 29, bytecode pc 43
    (this.m_supportAwardButton = null);
    // source line 30, bytecode pc 51
    (this.m_rankButton = null);
    // source line 31, bytecode pc 59
    (this.m_instructionBtn = null);
    // source line 32, bytecode pc 67
    (this.m_data = null);
    // source line 33, bytecode pc 75
    (this.m_residueTime = null);
    // source line 35, bytecode pc 83
    (this.m_matchName = null);
    // source line 36, bytecode pc 91
    (this.m_matchTime = null);
    // source line 37, bytecode pc 99
    (this.m_timeDec = null);
    // source line 38, bytecode pc 107
    (this.m_matchDec = null);
    // source line 39, bytecode pc 115
    (this.m_supportRankBg = null);
    // source line 40, bytecode pc 123
    (this.m_supportRanking = null);
    // source line 41, bytecode pc 131
    (this.m_supportRankingNum = null);
    // source line 42, bytecode pc 139
    (this.m_supportPointsNum = null);
    // source line 43, bytecode pc 147
    (this.m_supportPoints = null);
    // source line 45, bytecode pc 155
    (this.m_supportResidueNum = null);
    // source line 48, bytecode pc 170
    (this.m_local = data.local);
    // source line 50, bytecode pc 195
    (visibleSize = xs.director.getVisibleSize());
    // source line 52, bytecode pc 246
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.DecisiveBattleMainView, this));
    // source line 53, bytecode pc 289
    this.m_ccbNode.setContentSize(cc.size(600, 380));
    // source line 54, bytecode pc 336
    this.m_ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 60, bytecode pc 462
    xs.Utils.Node.attachNodes(this, this.m_ccbNode, {
    desc: "lb",
    offset: { x: ((visibleSize.width - xs.Views.MainMenuView.Width) / 2), y: ((visibleSize.height / 2) - 50) },
    sc: true
});
    // source line 61, bytecode pc 505
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg, this);
    // source line 63, bytecode pc 525
    this.m_ccbNode.setVisible(false);
    // source line 65, bytecode pc 552
    (this.m_supportRankBg = this.m_ccbNode.getChildByTag(9));
    // source line 68, bytecode pc 591
    (this.m_rankButton = xs.Views.Btn.create("Btn_PointsAward"));
    // source line 69, bytecode pc 642
    this.m_rankButton.setString(xs.Tools.String.createString("DecisiveBattle_supportRanking"));
    // source line 70, bytecode pc 669
    this.m_rankButton.addCallBackForEvent(this, this.rankCallback);
    // source line 76, bytecode pc 759
    xs.Utils.Node.attachNodes(this, this.m_rankButton, { desc: "rt", sc: true, offset: { x: -200, y: -160 } });
    // source line 83, bytecode pc 798
    (this.m_watchGameButton = xs.Views.Btn.createByStyleId("BS_Btn1"));
    // source line 84, bytecode pc 849
    this.m_watchGameButton.setString(xs.Tools.String.createString("DecisiveBattle_watchMatch"));
    // source line 85, bytecode pc 876
    this.m_watchGameButton.addCallBackForEvent(this, this.watchGameCallBack);
    // source line 91, bytecode pc 993
    xs.Utils.Node.attachNodes(this, this.m_watchGameButton, {
    desc: "lb",
    sc: true,
    offset: { x: (((visibleSize.width - xs.Views.MainMenuView.Width) / 4) * 3), y: 100 }
});
    // source line 95, bytecode pc 1013
    this.m_watchGameButton.setVisible(false);
    // source line 97, bytecode pc 1052
    (this.m_supportResidueNum = xs.Factorys.Label.createByStyleId("LS_qiangduo_Inf"));
    // source line 103, bytecode pc 1205
    xs.Utils.Node.attachNodes(this, this.m_supportResidueNum, {
    desc: "lb",
    sc: true,
    offset: {
        x: this.m_watchGameButton.getPosition().x,
        y: ((this.m_watchGameButton.getPosition().y - (this.m_watchGameButton.getContentSize().height / 2)) - 20)
    }
});
    // source line 106, bytecode pc 1225
    this.m_supportResidueNum.setVisible(false);
    // source line 108, bytecode pc 1264
    (this.m_supportAwardButton = xs.Views.Btn.createByStyleId("BS_Btn1"));
    // source line 109, bytecode pc 1315
    this.m_supportAwardButton.setString(xs.Tools.String.createString("DecisiveBattle_supportAward"));
    // source line 110, bytecode pc 1353
    this.m_supportAwardButton.setOnClickCallBack(this.supportAwardCallBack.bind(this));
    // source line 116, bytecode pc 1467
    xs.Utils.Node.attachNodes(this, this.m_supportAwardButton, {
    desc: "lb",
    sc: true,
    offset: { x: ((visibleSize.width - xs.Views.MainMenuView.Width) / 4), y: 100 }
});
    // source line 119, bytecode pc 1487
    this.m_supportAwardButton.setVisible(false);
    // source line 124, bytecode pc 1600
    (midTimeLabel = xs.Views.Label.LabelExt.createWithStyles([
    "LS_FightHurt_all",
    "LS_loginSign",
    "LS_FightHurt_all",
    "LS_loginSign",
    "LS_FightHurt_all",
    "LS_loginSign",
    "LS_FightHurt_all",
    "LS_loginSign"
]));
    // source line 126, bytecode pc 1644
    midTimeLabel.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 127, bytecode pc 1667
    midTimeLabel.setFontScaleAtIndex(0, 0.5);
    // source line 128, bytecode pc 1691
    midTimeLabel.setFontScaleAtIndex(2, 0.5);
    // source line 129, bytecode pc 1715
    midTimeLabel.setFontScaleAtIndex(4, 0.5);
    // source line 130, bytecode pc 1739
    midTimeLabel.setFontScaleAtIndex(6, 0.5);
    // source line 132, bytecode pc 1762
    midTimeLabel.setStringById(1, "union_str_day");
    // source line 133, bytecode pc 1786
    midTimeLabel.setStringById(3, "union_str_hours");
    // source line 134, bytecode pc 1810
    midTimeLabel.setStringById(5, "union_str_minute");
    // source line 135, bytecode pc 1834
    midTimeLabel.setStringById(7, "union_str_second");
    // source line 137, bytecode pc 1879
    xs.Utils.Node.replaceChildSafe(this.m_ccbNode, this.m_time, midTimeLabel);
    // source line 138, bytecode pc 1889
    (this.m_time = midTimeLabel);
    // source line 139, bytecode pc 1909
    this.m_time.setVisible(false);
    // source line 143, bytecode pc 1924
    (arrayStr = []);
    if (this.m_local) {
        // source line 145, bytecode pc 1952
        (arrayStr[0] = "LocalDecisiveBattle_1");
        // source line 146, bytecode pc 1969
        (arrayStr[1] = "LocalDecisiveBattle_2");
        // source line 147, bytecode pc 1987
        (arrayStr[2] = "LocalDecisiveBattle_3");
    } else {
        // source line 149, bytecode pc 2009
        (arrayStr[0] = "DecisiveBattle_Instruction_1");
        // source line 150, bytecode pc 2026
        (arrayStr[1] = "DecisiveBattle_Instruction_2");
        // source line 151, bytecode pc 2044
        (arrayStr[2] = "DecisiveBattle_Instruction_3");
    }
    // source line 154, bytecode pc 2090
    (_ret = xs.Views.Button.Factory.Audio.create("Btn_Instruction"));
    // source line 156, bytecode pc 2111
    _ret.setOnClickCallBack(function() {
    // source line 157, bytecode pc 53
    xs.Views.Mgr.showDialogByName("InstructionDialog", { strings: arrayStr });
});
    // source line 161, bytecode pc 2199
    xs.Utils.Node.attachNodes(this, _ret, { desc: "lt", offset: cc.p(120, -160), sc: true }, null);
    // source line 164, bytecode pc 2204
    (sceneKey = null);
    if (this.m_local) {
        // source line 166, bytecode pc 2251
        (sceneKey = xs.Scene.Mgr.loadStatus("LocalDecisiveBattleMainSceneKey"));
    } else {
        // source line 168, bytecode pc 2292
        (sceneKey = xs.Scene.Mgr.loadStatus("DecisiveBattleMainSceneKey"));
    }
    if (sceneKey) {
        if (!xs.Utils.isEmpty(data.param)) {
            // source line 172, bytecode pc 2351
            (this.m_data = data.param);
            if (this.m_data.time) {
                // source line 175, bytecode pc 2385
                (this.m_residueTime = this.m_data.time);
                // source line 176, bytecode pc 2407
                this.schedule(this.updataUITime, 1);
                // source line 177, bytecode pc 2420
                this.updataUITime();
                // source line 178, bytecode pc 2440
                this.setGameStatus(this.m_data);
            }
        }
    }
    // source line 182, bytecode pc 2442
    return true;
},
    onEnter: function() {
    var sceneKey;
    // source line 185, bytecode pc 12
    this._super();
    // source line 186, bytecode pc 17
    (sceneKey = null);
    if (this.m_local) {
        // source line 188, bytecode pc 64
        (sceneKey = xs.Scene.Mgr.loadStatusAndClear("LocalDecisiveBattleMainSceneKey"));
    } else {
        // source line 190, bytecode pc 105
        (sceneKey = xs.Scene.Mgr.loadStatusAndClear("DecisiveBattleMainSceneKey"));
    }
    if (!sceneKey) {
        // source line 193, bytecode pc 127
        this.requestMianViewData();
    }
},
    onExit: function() {
    // source line 197, bytecode pc 19
    this.unschedule(this.updataUITime);
    // source line 198, bytecode pc 32
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 201, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 202, bytecode pc 36
    this.m_watchGameButton.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 203, bytecode pc 63
    this.m_supportAwardButton.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 204, bytecode pc 90
    this.m_rankButton.setTouchPriority((this.m_baseTouchPriority - 1));
},
    requestMianViewData: function() {
    // source line 226, bytecode pc 117
    xs.Tools.Net.requestDecisiveBattleMainInfor({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, this.m_local, function(data) {
    if (data.info) {
        // source line 213, bytecode pc 27
        (this.m_data = data.info);
        if (this.m_data.time) {
            // source line 216, bytecode pc 61
            (this.m_residueTime = this.m_data.time);
            // source line 217, bytecode pc 83
            this.schedule(this.updataUITime, 1);
            // source line 218, bytecode pc 96
            this.updataUITime();
            // source line 219, bytecode pc 116
            this.setGameStatus(this.m_data);
        }
    }
}, function() {
}, this);
},
    setGameStatus: function(data) {
    var strArray, visibleSize, _strArray;
    // source line 229, bytecode pc 19
    this.m_ccbNode.setVisible(true);
    // source line 230, bytecode pc 39
    this.m_watchGameButton.setVisible(true);
    // source line 231, bytecode pc 59
    this.m_supportResidueNum.setVisible(true);
    // source line 232, bytecode pc 79
    this.m_supportAwardButton.setVisible(true);
    // source line 233, bytecode pc 99
    this.m_time.setVisible(true);
    if ((data.status == 1)) {
        // source line 236, bytecode pc 123
        (strArray = []);
        // source line 237, bytecode pc 148
        (strArray[0] = (data.round || ""));
        // source line 238, bytecode pc 173
        (strArray[1] = (data.name || ""));
        // source line 240, bytecode pc 228
        this.m_matchName.setString(xs.Tools.String.createStringWithArgsArray("DecisiveBattle_befortTittle", strArray));
        // source line 243, bytecode pc 248
        this.m_matchTime.setVisible(true);
        // source line 244, bytecode pc 305
        this.m_matchTime.setString(((((data.date + " ") + data.start_time) + "～") + data.end_time));
        // source line 246, bytecode pc 356
        this.m_timeDec.setString(xs.Tools.String.createString("DecisiveBattle_MatchState1"));
        if (!data.is_player) {
            // source line 250, bytecode pc 390
            this.m_matchDec.setVisible(true);
            // source line 251, bytecode pc 441
            this.m_matchDec.setString(xs.Tools.String.createString("DecisiveBattle_befortInstru"));
        } else {
            // source line 254, bytecode pc 466
            this.m_matchDec.setVisible(false);
        }
    } else {
        if ((data.status == 2)) {
            // source line 260, bytecode pc 496
            (strArray = []);
            // source line 261, bytecode pc 521
            (strArray[0] = (data.round || ""));
            // source line 262, bytecode pc 546
            (strArray[1] = (data.name || ""));
            // source line 264, bytecode pc 601
            this.m_matchName.setString(xs.Tools.String.createStringWithArgsArray("DecisiveBattle_fightingTittle", strArray));
            // source line 266, bytecode pc 621
            this.m_matchTime.setVisible(true);
            // source line 267, bytecode pc 678
            this.m_matchTime.setString(((((data.date + " ") + data.start_time) + "～") + data.end_time));
            // source line 269, bytecode pc 729
            this.m_timeDec.setString(xs.Tools.String.createString("DecisiveBattle_MatchState2"));
            if (!data.is_player) {
                // source line 274, bytecode pc 763
                this.m_matchDec.setVisible(true);
                // source line 275, bytecode pc 814
                this.m_matchDec.setString(xs.Tools.String.createString("DecisiveBattle_befortInstru"));
            } else {
                // source line 278, bytecode pc 839
                this.m_matchDec.setVisible(false);
            }
        } else {
            if ((data.status == 0)) {
                // source line 284, bytecode pc 910
                this.m_matchName.setString(xs.Tools.String.createString("DecisiveBattle_endTitle"));
                // source line 287, bytecode pc 930
                this.m_matchTime.setVisible(false);
                // source line 290, bytecode pc 950
                this.m_matchDec.setVisible(false);
                if (!data.is_player) {
                    // source line 293, bytecode pc 1015
                    this.m_timeDec.setString(xs.Tools.String.createString("DecisiveBattle_MatchState3"));
                } else {
                    // source line 296, bytecode pc 1071
                    this.m_timeDec.setString(xs.Tools.String.createString("DecisiveBattle_MatchState4"));
                }
            }
        }
    }
    // source line 300, bytecode pc 1091
    this.m_supportAwardButton.setEnabled(true);
    if (!data.is_player) {
        // source line 303, bytecode pc 1125
        this.m_supportRankBg.setVisible(true);
        // source line 304, bytecode pc 1145
        this.m_supportRanking.setVisible(true);
        // source line 305, bytecode pc 1165
        this.m_supportRankingNum.setVisible(true);
        // source line 306, bytecode pc 1185
        this.m_supportAwardButton.setVisible(true);
        // source line 307, bytecode pc 1205
        this.m_supportResidueNum.setVisible(true);
        // source line 310, bytecode pc 1256
        this.m_supportPoints.setString(xs.Tools.String.createString("DecisiveBattle_supportPoints"));
        // source line 311, bytecode pc 1305
        this.m_supportPointsNum.setString((data.support_point.toString() || ""));
        // source line 313, bytecode pc 1343
        this.m_supportRankingNum.setString((data.rank || ""));
        // source line 316, bytecode pc 1368
        (visibleSize = xs.director.getVisibleSize());
        // source line 317, bytecode pc 1442
        this.m_watchGameButton.setPosition(cc.p((((visibleSize.width - xs.Views.MainMenuView.Width) / 4) * 3), 100));
        if ((data.status == 0)) {
            // source line 321, bytecode pc 1477
            this.m_supportResidueNum.setVisible(false);
        } else {
            // source line 324, bytecode pc 1491
            (_strArray = []);
            // source line 325, bytecode pc 1527
            (_strArray[0] = (data.left_support_times.toString() || ""));
            // source line 326, bytecode pc 1552
            (_strArray[1] = (data.support_times || ""));
            // source line 328, bytecode pc 1607
            this.m_supportResidueNum.setString(xs.Tools.String.createStringWithArgsArray("Decisive_todaySupportNum", _strArray));
        }
        // source line 330, bytecode pc 1658
        this.m_supportAwardButton.setString(xs.Tools.String.createString("DecisiveBattle_supportAward"));
        // source line 331, bytecode pc 1696
        this.m_supportAwardButton.setOnClickCallBack(this.supportAwardCallBack.bind(this));
    } else {
        // source line 334, bytecode pc 1721
        this.m_supportRankBg.setVisible(false);
        // source line 335, bytecode pc 1741
        this.m_supportRanking.setVisible(false);
        // source line 336, bytecode pc 1761
        this.m_supportRankingNum.setVisible(false);
        // source line 339, bytecode pc 1812
        this.m_supportPoints.setString(xs.Tools.String.createString("Decisive_popularity"));
        // source line 340, bytecode pc 1861
        this.m_supportPointsNum.setString((data.support_sum.toString() || ""));
        if ((data.status == 1)) {
            // source line 344, bytecode pc 1927
            this.m_supportAwardButton.setString(xs.Tools.String.createString("DecisiveRefreshTeam"));
            if ((this.m_residueTime <= 600)) {
                // source line 346, bytecode pc 1962
                this.m_supportAwardButton.setEnabled(false);
            }
            // source line 348, bytecode pc 2000
            this.m_supportAwardButton.setOnClickCallBack(this.refreshTeam.bind(this));
            // source line 351, bytecode pc 2025
            (visibleSize = xs.director.getVisibleSize());
            // source line 352, bytecode pc 2099
            this.m_watchGameButton.setPosition(cc.p((((visibleSize.width - xs.Views.MainMenuView.Width) / 4) * 3), 100));
        } else {
            // source line 354, bytecode pc 2124
            this.m_supportAwardButton.setVisible(false);
            // source line 356, bytecode pc 2149
            (visibleSize = xs.director.getVisibleSize());
            // source line 357, bytecode pc 2220
            this.m_watchGameButton.setPosition(cc.p(((visibleSize.width - xs.Views.MainMenuView.Width) / 2), 100));
        }
        // source line 361, bytecode pc 2240
        this.m_supportResidueNum.setVisible(false);
    }
},
    refreshTeam: function() {
    // source line 391, bytecode pc 179
    xs.Views.Mgr.showDialogByName("common", {
    title: "DecisiveRefresh_2",
    content: "DecisiveRefresh_3",
    leftText: xs.Tools.String.createString("auto_name_146"),
    rightText: xs.Tools.String.createString("auto_name_76"),
    leftCB: function() {
    // source line 371, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    if ((this.m_residueTime <= 600)) {
        // source line 375, bytecode pc 47
        xs.Views.Mgr.showToastByStringId("DecisiveRefresh_1");
        // source line 376, bytecode pc 49
        return void 0;
    }
    // source line 389, bytecode pc 167
    xs.Tools.Net.requestDecisiveBattleRefreshTeam({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, this.m_local, function(data) {
    // source line 383, bytecode pc 32
    xs.Views.Mgr.showToastByStringId("DecisiveRefresh_4");
    // source line 384, bytecode pc 59
    xs.Views.Mgr.hideDialog();
}, function(data) {
}, this);
}.bind(this)
});
},
    rankCallback: function() {
    // source line 410, bytecode pc 117
    xs.Tools.Net.requestDecisiveBattleSupportRank({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, this.m_local, function(data) {
    if (data.support_rank) {
        // source line 403, bytecode pc 76
        xs.Views.Mgr.showDialogByName("SupportRankingDialog", { data: data.support_rank, local: this.m_local });
    }
}, function(data) {
}, this);
},
    supportAwardCallBack: function() {
    // source line 429, bytecode pc 117
    xs.Tools.Net.requestDecisiveBattleSupportRecord({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(), type: 0 }, this.m_local, function(data) {
    if (data.support_list) {
        // source line 425, bytecode pc 71
        xs.Scene.Mgr.changeSceneByName("SupportAwardScene", { param: data, local: this.m_local });
    }
}, this);
},
    watchGameCallBack: function() {
    // source line 450, bytecode pc 117
    xs.Tools.Net.requestDecisiveTop128({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, this.m_local, function(data) {
    if (data.result) {
        // source line 443, bytecode pc 71
        xs.Scene.Mgr.changeSceneByName("DecisiveBattlePreviewScene", { param: data, local: this.m_local });
    }
}, function(data) {
}, this);
},
    updataUITime: function() {
    var residueTime, day, hours, minute, seconds;
    // source line 458, bytecode pc 25
    (this.m_residueTime = (+this.m_residueTime - 1));
    // source line 460, bytecode pc 53
    (residueTime = Math.floor(this.m_residueTime));
    // source line 462, bytecode pc 82
    (day = Math.floor((residueTime / 86400)));
    // source line 463, bytecode pc 119
    (hours = Math.floor(((residueTime - (day * 86400)) / 3600)));
    // source line 464, bytecode pc 150
    (minute = Math.floor(((residueTime % 3600) / 60)));
    // source line 465, bytecode pc 164
    (seconds = ((residueTime % 3600) % 60));
    // source line 467, bytecode pc 188
    this.m_time.setString(0, day);
    // source line 468, bytecode pc 226
    this.m_time.setString(2, this.timeDispose(hours));
    // source line 469, bytecode pc 264
    this.m_time.setString(4, this.timeDispose(minute));
    // source line 470, bytecode pc 302
    this.m_time.setString(6, this.timeDispose(seconds));
    if ((residueTime <= 0)) {
        // source line 473, bytecode pc 332
        this.unschedule(this.updataUITime);
        // source line 474, bytecode pc 345
        this.requestMianViewData();
    }
},
    timeDispose: function(mNum) {
    if ((mNum < 10)) {
        // source line 480, bytecode pc 23
        (mNum = ("0" + mNum));
    }
    // source line 483, bytecode pc 27
    return mNum;
}
}));
// source line 488, bytecode pc 651
(xs.Views.DecisiveBattleMainView.create = function(data) {
    var view;
    // source line 489, bytecode pc 23
    (view = new xs.Views.DecisiveBattleMainView());
    if ((view && view.init(data))) {
        // source line 491, bytecode pc 59
        return view;
    }
    // source line 493, bytecode pc 84
    xs.assert(false, "xs.Views.DecisiveBattleMainView.create error!");
    // source line 494, bytecode pc 86
    return null;
});
