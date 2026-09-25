// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/UnionWarBattleView.js:1
// source line 292, bytecode pc 705
(xs.Views.UnionWarBattleView = cc.Node.extend({
    ctor: function() {
    // source line 8, bytecode pc 12
    this._super();
    // source line 9, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function(param) {
    var bg;
    if (!this._super()) {
        // source line 13, bytecode pc 19
        return false;
    }
    // source line 16, bytecode pc 34
    (this.m_battleId = param.battleId);
    // source line 17, bytecode pc 49
    (this.m_battleType = param.battleType);
    // source line 18, bytecode pc 64
    (this.battleInfo = param.battleInfo);
    // source line 19, bytecode pc 72
    (this.battleFightInfo = null);
    if ((this.m_battleType == xs.Constant_UnionWar_BattleType_Fighting)) {
        // source line 22, bytecode pc 109
        (this.battleFightInfo = param.battleFightInfo);
    }
    // source line 25, bytecode pc 139
    xs.log_xjf(("UnionWarBattleView battleType = " + this.m_battleType));
    // source line 27, bytecode pc 147
    (this.m_rewardTitle = null);
    // source line 28, bytecode pc 155
    (this.m_rewardLabel = null);
    // source line 29, bytecode pc 163
    (this.m_teamNumTitle = null);
    // source line 30, bytecode pc 171
    (this.m_teamNumLabel = null);
    // source line 31, bytecode pc 179
    (this.m_doubtfulBtn = null);
    // source line 32, bytecode pc 187
    (this.m_winnerNameLabel = null);
    // source line 33, bytecode pc 195
    (this.m_winTitle = null);
    // source line 34, bytecode pc 203
    (this.m_winScoreLabel = null);
    // source line 35, bytecode pc 211
    (this.m_playBtn = null);
    // source line 36, bytecode pc 219
    (this.m_stateImg = null);
    // source line 37, bytecode pc 227
    (this.m_bg = null);
    // source line 39, bytecode pc 236
    (this.m_battleState = -1);
    if ((this.m_battleType == xs.Constant_UnionWar_BattleType_Formation)) {
        // source line 42, bytecode pc 292
        (this.ccbNode = xs.ccb_reader.load("ccb3/unionWar_battleView_doubtful.ccbi"));
        // source line 43, bytecode pc 335
        xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbCfg_formation, this);
        // source line 44, bytecode pc 373
        this.m_doubtfulBtn.setOnClickCallBack(this.onDoubtfulBtnClicked.bind(this));
    } else {
        // source line 47, bytecode pc 412
        (this.ccbNode = xs.ccb_reader.load("ccb3/unionWar_battleView_fighting.ccbi"));
        // source line 48, bytecode pc 455
        xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbCfg_fight, this);
        // source line 49, bytecode pc 493
        this.m_playBtn.setOnClickCallBack(this.onPlayBtnClicked.bind(this));
    }
    // source line 51, bytecode pc 530
    this.setContentSize(cc.size(133, 108));
    // source line 52, bytecode pc 572
    this.ccbNode.setContentSize(cc.size(133, 108));
    // source line 53, bytecode pc 592
    this.addChild(this.ccbNode);
    // source line 56, bytecode pc 650
    (bg = xs.Factorys.Sprite.create("GuildDialog_battle_bg", "GuildDialog", [ this.m_battleId ]));
    // source line 57, bytecode pc 690
    xs.Utils.replaceNodeWithOldNode(this.ccbNode, this.m_bg, bg);
    // source line 58, bytecode pc 700
    (this.m_bg = bg);
    // source line 59, bytecode pc 721
    this.m_bg.setZOrder(-1);
    // source line 61, bytecode pc 723
    return true;
},
    onEnter: function() {
    // source line 64, bytecode pc 12
    this._super();
    // source line 65, bytecode pc 34
    this.schedule(this.refreshFightingView, 1);
},
    onExit: function() {
    // source line 69, bytecode pc 19
    this.unschedule(this.refreshFightingView);
    // source line 70, bytecode pc 32
    this._super();
},
    setListener: function(listener) {
    // source line 74, bytecode pc 9
    (this.m_listener = listener);
},
    getBattleState: function() {
    // source line 79, bytecode pc 6
    return this.m_battleState;
},
    getBattleFightInfo: function() {
    // source line 84, bytecode pc 6
    return this.battleFightInfo;
},
    getBattleInfo: function() {
    // source line 89, bytecode pc 6
    return this.battleInfo;
},
    refreshView: function() {
    var _playerNum, newBattleState, timeObj, showSp, oldBattleState;
    if ((this.m_battleType == xs.Constant_UnionWar_BattleType_Formation)) {
        // source line 95, bytecode pc 90
        (_playerNum = xs.Profile.GameData.Mgr.getInstance().UnionWar.getUnionWar().getBattlePlayerNum(this.m_battleId));
        // source line 97, bytecode pc 141
        this.m_rewardTitle.setString(xs.Tools.String.createString("unionWarBattleView_1"));
        // source line 98, bytecode pc 183
        this.m_rewardLabel.setString(("+" + this.battleInfo.getBattleIntegral()));
        // source line 99, bytecode pc 234
        this.m_teamNumTitle.setString(xs.Tools.String.createString("unionWarBattleView_2"));
        // source line 100, bytecode pc 286
        this.m_teamNumLabel.setString(((("" + _playerNum) + "/") + this.battleInfo.getBattleMaxMemberNum()));
        // source line 104, bytecode pc 380
        this.m_rewardLabel.setPosition(cc.p((this.m_rewardTitle.getPositionX() + this.m_rewardTitle.getContentSize().width), this.m_rewardTitle.getPositionY()));
        // source line 109, bytecode pc 474
        this.m_teamNumLabel.setPosition(cc.p((this.m_teamNumTitle.getPositionX() + this.m_teamNumTitle.getContentSize().width), this.m_teamNumTitle.getPositionY()));
    } else {
        if ((this.m_battleType == xs.Constant_UnionWar_BattleType_Fighting)) {
            if (this.battleFightInfo.getIsUserPlayed()) {
                // source line 118, bytecode pc 541
                (newBattleState = xs.Constant_UnionWar_BattleViewState_FightEnd);
            } else {
                if ((this.battleFightInfo.getEncounterWeekType() == xs.Constant_UnionWar_Time_LastEncounter)) {
                    // source line 122, bytecode pc 593
                    (newBattleState = xs.Constant_UnionWar_BattleViewState_FightEnd);
                } else {
                    // source line 129, bytecode pc 703
                    (timeObj = xs.Profile.GameData.Mgr.getInstance().UnionWar.getUnionWar().getWarSumTime(this.battleFightInfo.getBattleRounds(), this.m_battleId, this.battleFightInfo.getEncounterServerType()));
                    if ((timeObj.secTime > 0)) {
                        // source line 137, bytecode pc 732
                        (newBattleState = xs.Constant_UnionWar_BattleViewState_WillOpen);
                    } else {
                        if ((timeObj.secTime <= (-1 * timeObj.onceTime))) {
                            // source line 142, bytecode pc 776
                            (newBattleState = xs.Constant_UnionWar_BattleViewState_FightEnd);
                        } else {
                            // source line 146, bytecode pc 795
                            (newBattleState = xs.Constant_UnionWar_BattleViewState_Fighting);
                            if ((this.battleFightInfo.getFight() == null)) {
                                // source line 150, bytecode pc 833
                                (newBattleState = xs.Constant_UnionWar_BattleViewState_FightEnd);
                            }
                        }
                    }
                }
            }
            if ((newBattleState == xs.Constant_UnionWar_BattleViewState_WillOpen)) {
                // source line 159, bytecode pc 901
                this.m_playBtn.setString(xs.Utils.convertSecondToTime(timeObj.secTime));
                if ((this.m_battleState == newBattleState)) {
                    // source line 162, bytecode pc 918
                    return void 0;
                }
                // source line 164, bytecode pc 938
                this.m_playBtn.setEnabled(false);
                // source line 165, bytecode pc 958
                this.m_playBtn.setVisible(true);
                // source line 166, bytecode pc 978
                this.m_winnerNameLabel.setVisible(false);
                // source line 167, bytecode pc 998
                this.m_winScoreLabel.setVisible(false);
                // source line 169, bytecode pc 1040
                (showSp = xs.Factorys.Sprite.create("GuildDialog_jijiangkaizhan", "GuildDialog"));
                // source line 170, bytecode pc 1080
                xs.Utils.replaceNodeWithOldNode(this.ccbNode, this.m_stateImg, showSp);
                // source line 171, bytecode pc 1090
                (this.m_stateImg = showSp);
                // source line 172, bytecode pc 1110
                this.m_stateImg.setVisible(true);
            } else {
                if ((newBattleState == xs.Constant_UnionWar_BattleViewState_Fighting)) {
                    if ((this.m_battleState == newBattleState)) {
                        // source line 177, bytecode pc 1151
                        return void 0;
                    }
                    // source line 179, bytecode pc 1171
                    this.m_winnerNameLabel.setVisible(false);
                    // source line 180, bytecode pc 1191
                    this.m_winScoreLabel.setVisible(false);
                    // source line 181, bytecode pc 1211
                    this.m_playBtn.setEnabled(true);
                    // source line 182, bytecode pc 1231
                    this.m_playBtn.setVisible(true);
                    // source line 183, bytecode pc 1282
                    this.m_playBtn.setString(xs.Tools.String.createString("union_play"));
                    // source line 185, bytecode pc 1324
                    (showSp = xs.Factorys.Sprite.create("GuildDialog_jizhanzhong", "GuildDialog"));
                    // source line 186, bytecode pc 1364
                    xs.Utils.replaceNodeWithOldNode(this.ccbNode, this.m_stateImg, showSp);
                    // source line 187, bytecode pc 1374
                    (this.m_stateImg = showSp);
                    // source line 188, bytecode pc 1394
                    this.m_stateImg.setVisible(true);
                } else {
                    if ((newBattleState == xs.Constant_UnionWar_BattleViewState_FightEnd)) {
                        if ((this.m_battleState == newBattleState)) {
                            // source line 193, bytecode pc 1435
                            return void 0;
                        }
                        // source line 195, bytecode pc 1455
                        this.m_winnerNameLabel.setVisible(true);
                        // source line 196, bytecode pc 1475
                        this.m_winScoreLabel.setVisible(true);
                        // source line 197, bytecode pc 1495
                        this.m_stateImg.setVisible(false);
                        if (this.battleFightInfo.getFight()) {
                            // source line 201, bytecode pc 1553
                            this.m_winnerNameLabel.setString(this.battleFightInfo.getWinnerUnionName());
                            // source line 202, bytecode pc 1604
                            this.m_winTitle.setString(xs.Tools.String.createString("unionWarBattleView_3"));
                            // source line 203, bytecode pc 1646
                            this.m_winScoreLabel.setString(("+" + this.battleInfo.getBattleIntegral()));
                            // source line 205, bytecode pc 1697
                            this.m_playBtn.setString(xs.Tools.String.createString("union_play"));
                            // source line 206, bytecode pc 1717
                            this.m_playBtn.setEnabled(true);
                            // source line 207, bytecode pc 1737
                            this.m_playBtn.setVisible(true);
                        } else {
                            // source line 211, bytecode pc 1793
                            this.m_winnerNameLabel.setString(xs.Tools.String.createString("unionWarBattleView_4"));
                            // source line 212, bytecode pc 1817
                            this.m_winTitle.setString("");
                            // source line 213, bytecode pc 1841
                            this.m_winScoreLabel.setString("");
                            // source line 215, bytecode pc 1892
                            this.m_playBtn.setString(xs.Tools.String.createString("union_play"));
                            // source line 216, bytecode pc 1912
                            this.m_playBtn.setEnabled(false);
                            // source line 217, bytecode pc 1932
                            this.m_playBtn.setVisible(false);
                        }
                    }
                }
            }
            // source line 224, bytecode pc 1942
            (oldBattleState = this.m_battleState);
            // source line 227, bytecode pc 1952
            (this.m_battleState = newBattleState);
            if ((((oldBattleState == -1) || (oldBattleState == xs.Constant_UnionWar_BattleViewState_Fighting)) && (newBattleState == xs.Constant_UnionWar_BattleViewState_FightEnd))) {
                // source line 233, bytecode pc 2026
                xs.log_xjf("计算得分");
                // source line 234, bytecode pc 2039
                this.calculateScore();
            }
        }
    }
},
    refreshFightingView: function() {
    if ((this.m_battleType == xs.Constant_UnionWar_BattleType_Fighting)) {
        // source line 241, bytecode pc 34
        this.refreshView();
    }
},
    calculateScore: function() {
    if ((this.m_listener && this.m_listener.calculateScore)) {
        // source line 248, bytecode pc 45
        this.m_listener.calculateScore();
    }
},
    onDoubtfulBtnClicked: function() {
    if ((this.m_listener && this.m_listener.onDoubtfulBtnClicked)) {
        // source line 255, bytecode pc 52
        this.m_listener.onDoubtfulBtnClicked(this.m_battleId);
    }
},
    onPlayBtnClicked: function() {
    if ((this.m_listener && this.m_listener.onPlayBtnClicked)) {
        // source line 262, bytecode pc 66
        this.m_listener.onPlayBtnClicked(this.m_battleId, this.m_battleState, this.battleFightInfo);
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 267, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    if ((this.m_battleType == xs.Constant_UnionWar_BattleType_Formation)) {
        // source line 269, bytecode pc 58
        this.m_doubtfulBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    } else {
        // source line 272, bytecode pc 90
        this.m_playBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    }
},
    ccbCfg_formation: [
        { tag: 1, type: "ls", name: "m_rewardTitle", id: "LS_zhanchang_zi1" },
        { tag: 2, type: "ls", name: "m_rewardLabel", id: "LS_zhanchang_zi2" },
        { tag: 3, type: "ls", name: "m_teamNumTitle", id: "LS_zhanchang_zi1" },
        { tag: 4, type: "ls", name: "m_teamNumLabel", id: "LS_zhanchang_zi2" },
        { tag: 10, type: "btn", name: "m_doubtfulBtn", id: "Btn_UnionWar_ChangeShape" },
        { tag: 50, name: "m_bg" }
    ],
    ccbCfg_fight: [
        { tag: 1, type: "ls", name: "m_winnerNameLabel", id: "LS_Lv" },
        { tag: 3, type: "ls", name: "m_winTitle", id: "LS_zhanchang_zi1" },
        { tag: 4, type: "ls", name: "m_winScoreLabel", id: "LS_zhanchang_zi2" },
        { tag: 10, type: "btn", name: "m_playBtn", id: "Btn_UnionWar_Play" },
        { tag: 11, name: "m_stateImg" },
        { tag: 50, name: "m_bg" }
    ]
}));
// source line 296, bytecode pc 731
(xs.Views.UnionWarBattleView.create = function(param) {
    var btn;
    // source line 297, bytecode pc 23
    (btn = new xs.Views.UnionWarBattleView());
    if ((btn && btn.init(param))) {
        // source line 299, bytecode pc 59
        return btn;
    }
    // source line 301, bytecode pc 82
    xs.warn("xs.Views.UnionWarBattleView.create error!");
    // source line 302, bytecode pc 84
    return null;
});
