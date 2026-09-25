// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/DecisiveBattle/DecisiveBattlePreviewView.js:1
// source line 561, bytecode pc 248
(xs.Views.DecisiveBattlePreviewView = xs.Views.HungerLayer.extend({
    name: "xs.Views.DecisiveBattlePreviewView",
    ctor: function() {
    // source line 7, bytecode pc 12
    this._super();
    // source line 8, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(data) {
    var titleStr;
    if (!this._super()) {
        // source line 12, bytecode pc 19
        return false;
    }
    // source line 14, bytecode pc 27
    (this.m_ccbNode = null);
    // source line 15, bytecode pc 35
    (this.m_scrollView = null);
    // source line 16, bytecode pc 43
    (this.ccbNode_title = null);
    // source line 18, bytecode pc 115
    (this.m_lostPlayerList = [ 32, 32, 16, 16, 8, 8, 4, 4, 2, 2 ]);
    // source line 20, bytecode pc 130
    (this.m_local = data.local);
    // source line 22, bytecode pc 150
    (this.m_normalData = data.param.round_info);
    // source line 23, bytecode pc 183
    (this.m_lostData = this.checkLostPlayerData(data.param.rank_player));
    // source line 26, bytecode pc 196
    (this.roundPlayersDict = {});
    // source line 29, bytecode pc 236
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_InterServiceFight);
    // source line 33, bytecode pc 270
    (this.m_ccbNode = xs.ccb_reader.load("ccb3/Top128BattlePreview.ccbi"));
    // source line 34, bytecode pc 313
    this.m_ccbNode.setContentSize(cc.size(4500, 900));
    // source line 35, bytecode pc 360
    this.m_ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 37, bytecode pc 388
    (this.m_scrollView = cc.ScrollView.create());
    // source line 38, bytecode pc 413
    this.m_scrollView.setContainer(this.m_ccbNode);
    // source line 39, bytecode pc 456
    this.m_scrollView.setViewSize(cc.size(1130, 900));
    // source line 40, bytecode pc 499
    this.m_scrollView.setContentSize(cc.size(4500, 900));
    // source line 41, bytecode pc 528
    this.m_scrollView.setDirection(cc.SCROLLVIEW_DIRECTION_HORIZONTAL);
    // source line 42, bytecode pc 620
    xs.Utils.Node.attachNodes(this, this.m_scrollView, { desc: "c", offset: cc.p(-564, -300), sc: true });
    // source line 45, bytecode pc 629
    (titleStr = "");
    // source line 46, bytecode pc 665
    (titleStr = xs.Tools.String.createString("decisive_top128_title"));
    // source line 48, bytecode pc 701
    (this.ccbNode_title = xs.ccb_reader.load("ccb3/0_7_10_DungeonTitle.ccbi", this));
    // source line 49, bytecode pc 743
    this.ccbNode_title.setContentSize(cc.size(340, 52));
    // source line 50, bytecode pc 772
    this.ccbNode_title.setAnchorPoint(xs.ap_tc);
    // source line 51, bytecode pc 792
    this.ccbNode_title.setZOrder(1);
    // source line 55, bytecode pc 884
    xs.Utils.Node.attachNodes(this, this.ccbNode_title, { desc: "ct", offset: cc.p(-0, -0), sc: true });
    // source line 57, bytecode pc 944
    xs.Utils.replaceLabelWithString(this.ccbNode_title, 10, [ "LS_guanqiaName" ], [ titleStr ]);
    // source line 61, bytecode pc 983
    (this.m_close = xs.Views.Btn.createByStyleId("BS_Close"));
    // source line 63, bytecode pc 1069
    xs.Utils.Node.attachNodes(this, this.m_close, { desc: "rt", offset: cc.p(-40, -40), sc: true });
    // source line 65, bytecode pc 1093
    this.m_close.setOnClickCallBack(function() {
    // source line 66, bytecode pc 26
    xs.Scene.Mgr.gotoLastScene();
});
    // source line 70, bytecode pc 1106
    this.replacePicWithButton();
    if (this.m_normalData) {
        // source line 74, bytecode pc 1137
        this.creatNormalMatchCell(this.m_normalData);
    }
    // source line 77, bytecode pc 1150
    this.createTop4MatchCell();
    // source line 78, bytecode pc 1177
    this.setLineStatues(this.m_normalData, this.m_lostData);
    // source line 82, bytecode pc 1179
    return true;
},
    setRoundPlayersList: function(round, playerData) {
    // source line 87, bytecode pc 13
    (this.roundPlayersDict[round] = playerData);
},
    getRoundPlayersList: function(round) {
    if (this.roundPlayersDict[round]) {
        // source line 93, bytecode pc 25
        return this.roundPlayersDict[round];
    }
    // source line 95, bytecode pc 27
    return null;
},
    checkLostPlayerData: function(data) {
    var dataArray, i, array_1, array_2;
    // source line 98, bytecode pc 8
    (dataArray = []);
    if ((data.length == 13)) {
        // source line 101, bytecode pc 29
        (i = 0);
        while ((i < 13)) {
            if ((i == 12)) {
                // source line 103, bytecode pc 55
                (array_1 = []);
                // source line 104, bytecode pc 64
                (array_2 = []);
                if ((data[i][0].rank == 3)) {
                    // source line 106, bytecode pc 111
                    array_1.push(data[i][0]);
                    // source line 107, bytecode pc 136
                    array_2.push(data[i][1]);
                } else {
                    // source line 109, bytecode pc 166
                    array_1.push(data[i][1]);
                    // source line 110, bytecode pc 191
                    array_2.push(data[i][0]);
                }
                // source line 112, bytecode pc 210
                dataArray.push(array_1);
                // source line 113, bytecode pc 229
                dataArray.push(array_2);
            } else {
                // source line 117, bytecode pc 257
                dataArray.push(data[i]);
            }
            // source line 101, bytecode pc 271
            (i = (+i + 1));
        }
        // source line 123, bytecode pc 288
        return dataArray;
    } else {
        // source line 126, bytecode pc 297
        return data;
    }
},
    onEnter: function() {
    // source line 133, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 138, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    var i, tag, _tag;
    // source line 142, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 143, bytecode pc 36
    this.m_scrollView.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 144, bytecode pc 63
    this.m_close.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 146, bytecode pc 68
    (i = 1);
    while ((i < 21)) {
        // source line 147, bytecode pc 87
        (tag = ((i * 100) + 5));
        if (this.m_ccbNode.getChildByTag(tag)) {
            // source line 149, bytecode pc 155
            this.m_ccbNode.getChildByTag(tag).setTouchPriority((this.m_baseTouchPriority - 1));
        }
        if ((i < 11)) {
            // source line 152, bytecode pc 179
            (_tag = ((i * 100) + 99));
            if (this.m_ccbNode.getChildByTag(_tag)) {
                // source line 154, bytecode pc 247
                this.m_ccbNode.getChildByTag(_tag).setTouchPriority((this.m_baseTouchPriority - 1));
            }
        }
        // source line 146, bytecode pc 261
        (i = (+i + 1));
    }
    // source line 159, bytecode pc 279
    (i = 1);
    while ((i < 5)) {
        // source line 160, bytecode pc 299
        (tag = ((i * 100) + 1099));
        if (this.m_ccbNode.getChildByTag(tag)) {
            // source line 162, bytecode pc 367
            this.m_ccbNode.getChildByTag(tag).setTouchPriority((this.m_baseTouchPriority - 1));
        }
        // source line 159, bytecode pc 381
        (i = (+i + 1));
    }
},
    replacePicWithButton: function() {
    var i, tag, _tag, lostPlayer, strArray, Player;
    // source line 168, bytecode pc 4
    (i = 0);
    while ((i < 20)) {
        // source line 169, bytecode pc 25
        (tag = (((i + 1) * 100) + 5));
        if ((this.m_normalData[i].status == 2)) {
            // source line 173, bytecode pc 128
            xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, [ { tag: tag, type: "btn", id: "Btn_support" } ], this);
        } else {
            // source line 178, bytecode pc 213
            xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, [ { tag: tag, type: "btn", id: "Btn_Spectators" } ], this);
        }
        if ((i < 10)) {
            // source line 181, bytecode pc 239
            (_tag = (((i + 1) * 100) + 99));
            // source line 184, bytecode pc 319
            xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, [ { tag: _tag, type: "btn", id: "Btn_lostPlayers" } ], this);
            // source line 186, bytecode pc 344
            (lostPlayer = this.m_ccbNode.getChildByTag(_tag));
            if (lostPlayer) {
                // source line 189, bytecode pc 361
                (strArray = []);
                // source line 190, bytecode pc 388
                (strArray[0] = this.m_lostPlayerList[i].toString());
                // source line 192, bytecode pc 440
                lostPlayer.setString(xs.Tools.String.createStringWithArgsArray("decisive_top128_out", strArray));
                // source line 194, bytecode pc 494
                lostPlayer.setOnClickCallBack(this.goToLostPlayersDialog.bind({ self: this, tag: i }));
            }
        }
        // source line 168, bytecode pc 508
        (i = (+i + 1));
    }
    // source line 199, bytecode pc 526
    (i = 0);
    while ((i < 4)) {
        // source line 200, bytecode pc 548
        (tag = (((i + 1) * 100) + 1099));
        // source line 203, bytecode pc 628
        xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, [ { tag: tag, type: "btn", id: "Btn_winPlayers" } ], this);
        // source line 204, bytecode pc 653
        (Player = this.m_ccbNode.getChildByTag(tag));
        if (Player) {
            // source line 206, bytecode pc 718
            Player.setOnClickCallBack(this.goToLostPlayersDialog.bind({ self: this, tag: (i + 10) }));
        }
        // source line 199, bytecode pc 732
        (i = (+i + 1));
    }
},
    creatNormalMatchCell: function(data) {
    var _cfgData, i, tag, mBtn, cell, huiseSp, playerPosition, date, starTime, endTime, strArray, matchTime, matchName, matchRound;
    // source line 211, bytecode pc 40
    (_cfgData = xs.Tools.CfgData.getCfgDataByType(xs.Constant_CfgDataType_Decisive));
    // source line 213, bytecode pc 45
    (i = 0);
    while ((i < 20)) {
        // source line 215, bytecode pc 63
        (tag = ((i + 1) * 100));
        // source line 216, bytecode pc 91
        (mBtn = this.m_ccbNode.getChildByTag((tag + 5)));
        // source line 217, bytecode pc 116
        (cell = this.m_ccbNode.getChildByTag(tag));
        if (mBtn) {
            if ((data[i].status == 0)) {
                // source line 222, bytecode pc 160
                mBtn.setVisible(false);
                // source line 226, bytecode pc 202
                (huiseSp = xs.Factorys.Sprite.create("GuildDialog_duizhenganniu2", "GuildDialog"));
                if (cell) {
                    // source line 228, bytecode pc 252
                    xs.Utils.Node.replaceChildSafe(this.m_ccbNode, cell, huiseSp);
                    // source line 229, bytecode pc 259
                    (cell = huiseSp);
                }
            } else {
                if ((data[i].status == 1)) {
                    if (data[i].is_round_player) {
                        // source line 237, bytecode pc 342
                        (playerPosition = xs.Factorys.Sprite.create("Cmn03_wozaizhe", "Cmn03"));
                        // source line 238, bytecode pc 420
                        xs.Utils.Node.attachNodes(cell, playerPosition, { desc: "ct", offset: cc.p(0, 40) });
                    }
                    // source line 242, bytecode pc 476
                    mBtn.setOnClickCallBack(this.goToPlayerFightedDialog.bind({ self: this, tag: (i + 1) }));
                } else {
                    if ((data[i].status == 3)) {
                        if (data[i].is_round_player) {
                            // source line 248, bytecode pc 560
                            (playerPosition = xs.Factorys.Sprite.create("Cmn03_wozaizhe", "Cmn03"));
                            // source line 249, bytecode pc 638
                            xs.Utils.Node.attachNodes(cell, playerPosition, { desc: "ct", offset: cc.p(0, 40) });
                        }
                        // source line 253, bytecode pc 694
                        mBtn.setOnClickCallBack(this.goToPlayerFightingDialog.bind({ self: this, tag: (i + 1) }));
                    } else {
                        if ((data[i].status == 2)) {
                            if (!data[i].is_player) {
                                // source line 257, bytecode pc 793
                                mBtn.setOnClickCallBack(this.goToSupportDialog.bind({ self: this, tag: (i + 1) }));
                            } else {
                                // source line 260, bytecode pc 815
                                mBtn.setVisible(false);
                            }
                        } else {
                            if ((data[i].status == 4)) {
                                if (data[i].is_round_player) {
                                    // source line 266, bytecode pc 899
                                    (playerPosition = xs.Factorys.Sprite.create("Cmn03_wozaizhe", "Cmn03"));
                                    // source line 267, bytecode pc 977
                                    xs.Utils.Node.attachNodes(cell, playerPosition, { desc: "ct", offset: cc.p(0, 40) });
                                }
                                if (data[i].is_player) {
                                    // source line 271, bytecode pc 1050
                                    mBtn.setOnClickCallBack(this.goToSupportDialog.bind({ self: this, tag: (i + 1) }));
                                }
                            } else {
                                // source line 277, bytecode pc 1072
                                mBtn.setVisible(false);
                            }
                        }
                    }
                }
            }
        }
        // source line 282, bytecode pc 1099
        (date = (data[i].date || ""));
        // source line 283, bytecode pc 1126
        (starTime = (data[i].start_time || ""));
        // source line 284, bytecode pc 1153
        (endTime = (data[i].end_time || ""));
        // source line 286, bytecode pc 1162
        (strArray = []);
        // source line 287, bytecode pc 1202
        (strArray[0] = (data[i].round.toString() || ""));
        // source line 288, bytecode pc 1233
        (strArray[1] = (_cfgData[(i + 1)].times || ""));
        if (cell) {
            // source line 291, bytecode pc 1277
            (matchTime = xs.Factorys.Label.createByStyleId("LS_wujiangInf2"));
            // source line 292, bytecode pc 1316
            matchTime.setString(((((date + "") + starTime) + "～") + endTime));
            // source line 293, bytecode pc 1352
            (matchName = xs.Factorys.Label.createByStyleId("LS_wujiangInf2"));
            // source line 294, bytecode pc 1391
            matchName.setString((data[i].name || ""));
            // source line 295, bytecode pc 1427
            (matchRound = xs.Factorys.Label.createByStyleId("LS_Lv"));
            // source line 296, bytecode pc 1479
            matchRound.setString(xs.Tools.String.createStringWithArgsArray("Decisive_cellMatchName", strArray));
            // source line 299, bytecode pc 1505
            matchTime.setAnchorPoint(xs.ap_c);
            // source line 300, bytecode pc 1531
            matchName.setAnchorPoint(xs.ap_c);
            // source line 301, bytecode pc 1557
            matchRound.setAnchorPoint(xs.ap_c);
            // source line 305, bytecode pc 1635
            xs.Utils.Node.attachNodes(cell, matchTime, { desc: "c", offset: cc.p(0, -20) });
            // source line 307, bytecode pc 1712
            xs.Utils.Node.attachNodes(cell, matchName, { desc: "c", offset: cc.p(0, 0) });
            // source line 309, bytecode pc 1790
            xs.Utils.Node.attachNodes(cell, matchRound, { desc: "c", offset: cc.p(0, 20) });
        }
        // source line 213, bytecode pc 1804
        (i = (+i + 1));
    }
},
    createTop4MatchCell: function() {
    var cell_4, cell_1, sp, cell_3, cell_2;
    // source line 318, bytecode pc 24
    (cell_4 = this.m_ccbNode.getChildByTag(1199));
    if (cell_4) {
        // source line 320, bytecode pc 80
        cell_4.setString(xs.Tools.String.createString("decisive_top128_4th"));
    }
    // source line 323, bytecode pc 105
    (cell_1 = this.m_ccbNode.getChildByTag(1299));
    if (cell_1) {
        // source line 325, bytecode pc 155
        (sp = xs.Factorys.Sprite.create("Cmn01_Ladder_First", "Cmn01"));
        // source line 326, bytecode pc 233
        xs.Utils.Node.attachNodes(cell_1, sp, { desc: "c", offset: cc.p(-50, 0) });
        // source line 328, bytecode pc 281
        cell_1.setString(xs.Tools.String.createString("decisive_top128_1st"));
    }
    // source line 331, bytecode pc 306
    (cell_3 = this.m_ccbNode.getChildByTag(1399));
    if (cell_3) {
        // source line 333, bytecode pc 356
        (sp = xs.Factorys.Sprite.create("Cmn01_Ladder_Third", "Cmn01"));
        // source line 334, bytecode pc 434
        xs.Utils.Node.attachNodes(cell_3, sp, { desc: "c", offset: cc.p(-50, 0) });
        // source line 336, bytecode pc 482
        cell_3.setString(xs.Tools.String.createString("decisive_top128_3rd"));
    }
    // source line 339, bytecode pc 507
    (cell_2 = this.m_ccbNode.getChildByTag(1499));
    if (cell_2) {
        // source line 341, bytecode pc 557
        (sp = xs.Factorys.Sprite.create("Cmn01_Ladder_Second", "Cmn01"));
        // source line 342, bytecode pc 635
        xs.Utils.Node.attachNodes(cell_2, sp, { desc: "c", offset: cc.p(-50, 0) });
        // source line 344, bytecode pc 683
        cell_2.setString(xs.Tools.String.createString("decisive_top128_2nd"));
    }
},
    goToSupportDialog: function() {
    var tag, self;
    // source line 350, bytecode pc 15
    (tag = this.tag);
    // source line 351, bytecode pc 31
    (self = this.self);
    // source line 372, bytecode pc 200
    xs.Tools.Net.DecisiveGetPlayerList({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(), round: tag }, self.m_local, function(jsonData) {
    if (jsonData.result) {
        // source line 365, bytecode pc 93
        xs.Views.Mgr.showDialogByName("DecisiveSupportDialogFirst", { data: jsonData, round: tag, local: self.m_local });
    }
}.bind(self), function(data) {
}, self);
},
    goToPlayerWillFightDialog: function() {
    var tag, self;
    // source line 378, bytecode pc 15
    (tag = this.tag);
    // source line 379, bytecode pc 31
    (self = this.self);
    // source line 401, bytecode pc 200
    xs.Tools.Net.DecisiveGetPlayerList({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(), round: tag }, self.m_local, function(data) {
    if (data.result) {
        if (data.player_list) {
            // source line 393, bytecode pc 113
            xs.Views.Mgr.showDialogByName("OneRoundPlayerListDialog", { data: data, round: tag, idx: -1, local: self.m_local });
        }
    }
}.bind(self), function(data) {
}, self);
},
    goToPlayerFightingDialog: function() {
    var tag, self, num;
    // source line 406, bytecode pc 15
    (tag = this.tag);
    // source line 407, bytecode pc 31
    (self = this.self);
    // source line 408, bytecode pc 71
    (num = self.getFightNumByTime(tag));
    // source line 428, bytecode pc 230
    xs.Tools.Net.DecisiveGetPlayerList({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(), round: tag }, self.m_local, function(data) {
    if (data.result) {
        // source line 423, bytecode pc 107
        xs.Views.Mgr.showDialogByName("OneRoundPlayerListDialog", { data: data, round: tag, idx: num, local: self.m_local });
    }
}.bind(self), function(data) {
});
},
    getFightNumByTime: function(round) {
    var _cfgData, starTime, serviceTime, hour, minute, nowHour, nowMinutes, minutes;
    // source line 437, bytecode pc 40
    (_cfgData = xs.Tools.CfgData.getCfgDataByType(xs.Constant_CfgDataType_Decisive));
    // source line 438, bytecode pc 56
    (starTime = _cfgData[round].start_time);
    // source line 439, bytecode pc 72
    (serviceTime = this.getServerTime());
    // source line 441, bytecode pc 117
    (hour = xs.Utils.parseIntSafe(starTime.substring(0, 2)));
    // source line 442, bytecode pc 163
    (minute = xs.Utils.parseIntSafe(starTime.substring(3, 5)));
    // source line 445, bytecode pc 203
    (nowHour = xs.Utils.parseIntSafe(serviceTime.getHours()));
    // source line 446, bytecode pc 243
    (nowMinutes = xs.Utils.parseIntSafe(serviceTime.getMinutes()));
    // source line 448, bytecode pc 265
    (minutes = (((nowHour - hour) * 60) + (nowMinutes - minute)));
    // source line 450, bytecode pc 287
    return parseInt((minutes / 3));
},
    getServerTime: function() {
    var myDate, mTime, offTime, mServerThisTime;
    // source line 454, bytecode pc 13
    (myDate = new Date());
    // source line 455, bytecode pc 35
    (mTime = (myDate.getTime() / 1000));
    // source line 456, bytecode pc 53
    (offTime = (mTime - xs.sinfo_local_time));
    // source line 461, bytecode pc 120
    (mServerThisTime = new Date(((((xs.sinfo_server_time * 1000) + (offTime * 1000)) + (myDate.getTimezoneOffset() * 60000)) + xs.sinfo_offset_time)));
    // source line 463, bytecode pc 124
    return mServerThisTime;
},
    goToPlayerFightedDialog: function() {
    var tag, self, RoundPlayersData;
    // source line 469, bytecode pc 15
    (tag = this.tag);
    // source line 470, bytecode pc 31
    (self = this.self);
    // source line 472, bytecode pc 65
    (RoundPlayersData = self.getRoundPlayersList(tag));
    if (RoundPlayersData) {
        // source line 480, bytecode pc 172
        xs.Views.Mgr.showDialogByName("OneRoundPlayerListDialog", {
    data: RoundPlayersData,
    round: tag,
    idx: RoundPlayersData.player_list.length,
    local: self.m_local
});
    } else {
        // source line 505, bytecode pc 336
        xs.Tools.Net.DecisiveGetPlayerList({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(), round: tag }, self.m_local, function(data) {
    if (data.result) {
        // source line 493, bytecode pc 47
        self.setRoundPlayersList(tag, data);
        if (data.player_list) {
            // source line 499, bytecode pc 159
            xs.Views.Mgr.showDialogByName("OneRoundPlayerListDialog", { data: data, round: tag, idx: data.player_list.length, local: self.m_local });
        }
    }
}.bind(self), function(data) {
});
    }
},
    goToLostPlayersDialog: function() {
    var tag, self, length, param;
    // source line 512, bytecode pc 9
    (tag = this.tag);
    // source line 513, bytecode pc 19
    (self = this.self);
    // source line 515, bytecode pc 36
    (length = self.m_lostData.length);
    if ((tag >= length)) {
        // source line 519, bytecode pc 108
        xs.Views.Mgr.showToast(xs.Tools.String.createString("Decisive_noData"));
    } else {
        // source line 524, bytecode pc 118
        (param = null);
        if ((tag == 10)) {
            // source line 529, bytecode pc 166
            (param = { data: self.m_lostData[tag], title: "decisive_top128_4th" });
        } else {
            if ((tag == 11)) {
                // source line 534, bytecode pc 219
                (param = { data: self.m_lostData[tag], title: "decisive_top128_1st" });
            } else {
                if ((tag == 12)) {
                    // source line 540, bytecode pc 272
                    (param = { data: self.m_lostData[tag], title: "decisive_top128_3rd" });
                } else {
                    if ((tag == 13)) {
                        // source line 546, bytecode pc 325
                        (param = { data: self.m_lostData[tag], title: "decisive_top128_2nd" });
                    } else {
                        // source line 551, bytecode pc 367
                        (param = { data: self.m_lostData[tag], title: "decisive_lost_title" });
                    }
                }
            }
        }
        // source line 554, bytecode pc 382
        (param.local = this.m_local);
        // source line 556, bytecode pc 419
        xs.Views.Mgr.showDialogByName("OutPlayersDialog", param);
    }
},
    setLineStatues: function(normalData, lostData) {
    var i, line_1, line_2, line, length;
    // source line 565, bytecode pc 4
    (i = 1);
    while ((i < 20)) {
        if ((i == 19)) {
            if ((normalData[i].status == 0)) {
                // source line 570, bytecode pc 73
                (line_1 = this.m_ccbNode.getChildByTag((((i + 1) * 100) + 2)));
                // source line 571, bytecode pc 106
                (line_2 = this.m_ccbNode.getChildByTag((((i + 1) * 100) + 4)));
                if (line_1) {
                    // source line 573, bytecode pc 131
                    line_1.setVisible(false);
                }
                if (line_2) {
                    // source line 576, bytecode pc 156
                    line_2.setVisible(false);
                }
            }
            break;
        }
        if (((i % 3) == 0)) {
            if ((normalData[i].status == 0)) {
                // source line 586, bytecode pc 226
                (line_1 = this.m_ccbNode.getChildByTag((((i + 1) * 100) + 2)));
                // source line 587, bytecode pc 259
                (line_2 = this.m_ccbNode.getChildByTag((((i + 1) * 100) + 4)));
                if (line_1) {
                    // source line 589, bytecode pc 284
                    line_1.setVisible(false);
                }
                if (line_2) {
                    // source line 592, bytecode pc 309
                    line_2.setVisible(false);
                }
            }
        } else {
            if ((normalData[i].status == 0)) {
                // source line 599, bytecode pc 366
                (line = this.m_ccbNode.getChildByTag((((i + 1) * 100) + 2)));
                if (line) {
                    // source line 601, bytecode pc 391
                    line.setVisible(false);
                }
            }
        }
        // source line 565, bytecode pc 405
        (i = (+i + 1));
    }
    // source line 610, bytecode pc 430
    (length = lostData.length);
    // source line 612, bytecode pc 435
    (i = 1);
    while ((i < 15)) {
        if ((i > length)) {
            // source line 616, bytecode pc 484
            (line = this.m_ccbNode.getChildByTag(((i * 100) + 98)));
            if (line) {
                // source line 618, bytecode pc 509
                line.setVisible(false);
            }
        }
        // source line 612, bytecode pc 523
        (i = (+i + 1));
    }
}
}));
// source line 633, bytecode pc 274
(xs.Views.DecisiveBattlePreviewView.create = function(data) {
    var ret;
    // source line 634, bytecode pc 23
    (ret = new xs.Views.DecisiveBattlePreviewView());
    if ((ret && ret.init(data))) {
        // source line 636, bytecode pc 59
        return ret;
    }
    // source line 638, bytecode pc 61
    return null;
});
// source line 643, bytecode pc 349
xs.Views.Mgr.registerDialog("DecisiveBattlePreviewView", { "class": xs.Views.DecisiveBattlePreviewView, styleType: xs.Constant_DlgStyleType_Large });
