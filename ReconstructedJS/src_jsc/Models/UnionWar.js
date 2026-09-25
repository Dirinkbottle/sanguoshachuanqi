// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/UnionWar.js:1
// source line 834, bytecode pc 579
(xs.Models.UnionWar = xs.Models.Base.extend({
    name: "xs.Models.UnionWar",
    Cfg: {},
    init: function() {
    var i, _battleId, _battleInfo, caches;
    // source line 22, bytecode pc 12
    this._super();
    // source line 24, bytecode pc 24
    (this.fightPlayers = []);
    // source line 25, bytecode pc 32
    (this.fightPlayers_temp = null);
    // source line 27, bytecode pc 40
    (this.localArr = null);
    // source line 28, bytecode pc 48
    (this.internationalArr = null);
    // source line 29, bytecode pc 56
    (this.isUnionWarEmbattleTimeInited = false);
    // source line 32, bytecode pc 69
    (this.battleNums = {});
    // source line 33, bytecode pc 82
    (this.changedInfo = {});
    // source line 34, bytecode pc 94
    (this.union_war_id = "");
    // source line 37, bytecode pc 107
    (this.fightingProcessDict = {});
    // source line 39, bytecode pc 120
    (this.battleInfoDict = {});
    // source line 40, bytecode pc 125
    (i = 0);
    while ((i < 6)) {
        // source line 41, bytecode pc 162
        (_battleId = xs.Utils.parseStringSafe((i + 1)));
        // source line 42, bytecode pc 196
        (_battleInfo = xs.Models.UnionWarBattleInfo.createWithBattleId(_battleId));
        // source line 43, bytecode pc 210
        (this.battleInfoDict[_battleId] = _battleInfo);
        // source line 40, bytecode pc 225
        i++;
    }
    // source line 47, bytecode pc 281
    (this._notifyCenter[xs.Constant_Notify_ModelChange_UnionWar] = xs.Utils.Notify.create());
    // source line 50, bytecode pc 299
    (caches = [ "cacheUnionWarUpgradeCfg" ]);
    // source line 52, bytecode pc 316
    this.registerCaches(caches);
},
    loadJson: function(jsonData) {
    var i, playerInfo;
    // source line 56, bytecode pc 12
    this.clearFightPlayers();
    // source line 57, bytecode pc 25
    this.clearFightPlayersTemp();
    // source line 58, bytecode pc 38
    (this.changedInfo = {});
    if (jsonData.info) {
        // source line 61, bytecode pc 56
        (i = 0);
        while ((i < jsonData.info.length)) {
            // source line 62, bytecode pc 105
            (playerInfo = xs.Models.UnionWarPlayer.createWithJson(jsonData.info[i]));
            // source line 64, bytecode pc 127
            this.fightPlayers.push(playerInfo);
            // source line 61, bytecode pc 142
            i++;
        }
    }
    // source line 69, bytecode pc 178
    this.reloadBattlePlayerNums();
    // source line 71, bytecode pc 191
    this.clearCache();
    // source line 72, bytecode pc 193
    return true;
},
    getBattleInfoWithBattleId: function(battleId) {
    // source line 77, bytecode pc 32
    return this.battleInfoDict[xs.Utils.parseStringSafe(battleId)];
},
    getBattleInfoAll: function() {
    // source line 80, bytecode pc 6
    return this.battleInfoDict;
},
    reloadBattlePlayerNums: function() {
    var battleId, num, i;
    // source line 85, bytecode pc 4
    (battleId = 1);
    while ((battleId <= 6)) {
        // source line 86, bytecode pc 15
        (num = 0);
        // source line 87, bytecode pc 20
        (i = 0);
        while ((i < this.fightPlayers.length)) {
            if ((this.fightPlayers[i].getBattleId() == battleId)) {
                // source line 89, bytecode pc 71
                num++;
            }
            // source line 87, bytecode pc 86
            i++;
        }
        // source line 92, bytecode pc 128
        this._setBattlePlayerNum(battleId, num);
        // source line 85, bytecode pc 143
        battleId++;
    }
},
    _setBattlePlayerNum: function(battleId, num) {
    var strBattleId;
    // source line 97, bytecode pc 28
    (strBattleId = xs.Utils.parseStringSafe(battleId));
    // source line 98, bytecode pc 42
    (this.battleNums[strBattleId] = num);
},
    getBattlePlayerNum: function(battleId) {
    var strBattleId, num;
    // source line 103, bytecode pc 28
    (strBattleId = xs.Utils.parseStringSafe(battleId));
    // source line 104, bytecode pc 33
    (num = 0);
    if (this.battleNums[strBattleId]) {
        // source line 106, bytecode pc 62
        (num = this.battleNums[strBattleId]);
    }
    // source line 108, bytecode pc 66
    return num;
},
    _getAllFightPlayers: function() {
    // source line 113, bytecode pc 6
    return this.fightPlayers;
},
    createFightPlayersTmp: function() {
    if ((this.fightPlayers.length == 0)) {
        // source line 119, bytecode pc 29
        (this.fightPlayers_temp = []);
    } else {
        // source line 122, bytecode pc 58
        (this.fightPlayers_temp = this.fightPlayers.Clone());
    }
    // source line 125, bytecode pc 71
    (this.changedInfo = {});
    // source line 126, bytecode pc 78
    return this.fightPlayers_temp;
},
    saveFightPlayersTmp: function() {
    // source line 132, bytecode pc 12
    this.clearFightPlayers();
    // source line 134, bytecode pc 25
    (this.fightPlayers = this.fightPlayers_temp);
    // source line 136, bytecode pc 33
    (this.fightPlayers_temp = null);
    // source line 139, bytecode pc 46
    this.reloadBattlePlayerNums();
},
    clearFightPlayersTemp: function() {
    if (this.fightPlayers_temp) {
        // source line 145, bytecode pc 32
        (length = this.fightPlayers_temp.length);
        // source line 146, bytecode pc 58
        this.fightPlayers_temp.splice(0, length);
    }
    // source line 148, bytecode pc 66
    (this.fightPlayers_temp = null);
    // source line 149, bytecode pc 79
    (this.changedInfo = {});
},
    clearFightPlayers: function() {
    if (this.fightPlayers) {
        // source line 155, bytecode pc 32
        (length = this.fightPlayers.length);
        // source line 156, bytecode pc 58
        this.fightPlayers.splice(0, length);
    }
    // source line 158, bytecode pc 70
    (this.fightPlayers = []);
    // source line 159, bytecode pc 83
    (this.changedInfo = {});
},
    getAllFightPlayers_Temp: function() {
    if (((this.fightPlayers_temp == null) || (this.fightPlayers_temp === undefined))) {
        // source line 166, bytecode pc 43
        this.createFightPlayersTmp();
    }
    // source line 168, bytecode pc 50
    return this.fightPlayers_temp;
},
    getPlayerListWithConditions: function(battleId, sortConditions, isUseOriginalData) {
    var filterParam;
    // source line 175, bytecode pc 24
    (filterParam = { filterConditions: xs.Constant_FilterType_Battle_Id });
    if ((battleId != null)) {
        // source line 179, bytecode pc 46
        (filterParam.result = battleId);
    }
    if ((sortConditions != null)) {
        // source line 183, bytecode pc 68
        (filterParam.sortConditions = sortConditions);
    }
    if (isUseOriginalData) {
        // source line 187, bytecode pc 97
        (filterParam.data = this._getAllFightPlayers());
    } else {
        // source line 190, bytecode pc 123
        (filterParam.data = this.getAllFightPlayers_Temp());
    }
    // source line 193, bytecode pc 154
    return xs.Tools.Filter.filterData(filterParam);
},
    getPlayerListNotInPlayerId: function() {
    var _arr_player_id, a, _rs_obj, arguments;
    // source line 197, bytecode pc 4
    (arguments = arguments);
    // source line 198, bytecode pc 13
    (_arr_player_id = []);
    // source line 199, bytecode pc 18
    (a = 0);
    while ((a < arguments.length)) {
        // source line 200, bytecode pc 47
        _arr_player_id.push(arguments[a]);
        // source line 199, bytecode pc 62
        a++;
    }
    // source line 203, bytecode pc 89
    (_rs_obj = []);
    // source line 204, bytecode pc 109
    (_rs_obj = this._getPlayerListNotInPlayerId(_arr_player_id));
    // source line 206, bytecode pc 113
    return _rs_obj;
},
    _getPlayerListNotInPlayerId: function(_arr_player_id) {
    var _rs_obj, _arr_players_all, i;
    // source line 211, bytecode pc 8
    (_rs_obj = []);
    // source line 212, bytecode pc 24
    (_arr_players_all = this.getAllFightPlayers_Temp());
    // source line 213, bytecode pc 29
    (i = 0);
    while ((i < _arr_players_all.length)) {
        if ((_arr_player_id.inArray(_arr_players_all[i].getPlayerId()) === false)) {
            // source line 215, bytecode pc 98
            _rs_obj.push(_arr_players_all[i]);
        }
        // source line 213, bytecode pc 113
        i++;
    }
    // source line 218, bytecode pc 135
    return _rs_obj;
},
    changePlayerPos: function(player1, player2, newBattleId, newBattlePos) {
    var battleId, battlePos, tmpPlayer;
    if ((player1 && player2)) {
        // source line 225, bytecode pc 34
        (battleId = player1.getBattleId());
        // source line 226, bytecode pc 52
        (battlePos = player1.getBattlePos());
        // source line 228, bytecode pc 82
        player1.setBattleId(player2.getBattleId());
        // source line 229, bytecode pc 112
        player1.setBattlePos(player2.getBattlePos());
        // source line 231, bytecode pc 131
        player2.setBattleId(battleId);
        // source line 232, bytecode pc 150
        player2.setBattlePos(battlePos);
    } else {
        if (((player1 == null) || (player2 == null))) {
            // source line 235, bytecode pc 192
            (tmpPlayer = (player1 || player2));
            // source line 236, bytecode pc 219
            xs.assert(tmpPlayer, "changePlayerPos player is null!");
            // source line 238, bytecode pc 238
            tmpPlayer.setBattleId(newBattleId);
            // source line 239, bytecode pc 257
            tmpPlayer.setBattlePos(newBattlePos);
        }
    }
    if (player1) {
        // source line 247, bytecode pc 353
        (this.changedInfo[xs.Utils.parseStringSafe(player1.getPlayerId())] = { battle_id: player1.getBattleId(), pos: player1.getBattlePos() });
    }
    if (player2) {
        // source line 253, bytecode pc 449
        (this.changedInfo[xs.Utils.parseStringSafe(player2.getPlayerId())] = { battle_id: player2.getBattleId(), pos: player2.getBattlePos() });
    }
},
    getChangedInfo: function() {
    // source line 261, bytecode pc 6
    return this.changedInfo;
},
    setUnionWarId: function(data) {
    // source line 266, bytecode pc 25
    (this.union_war_id = (data.union_war_id || ""));
},
    getUnionWarId: function() {
    // source line 271, bytecode pc 6
    return this.union_war_id;
},
    setFightingProcess: function(fightingProcess) {
    var key;
    // source line 280, bytecode pc 65
    (key = ((((("" + fightingProcess.getUnionWarId()) + "_") + fightingProcess.getBattleRounds()) + "_") + fightingProcess.getTag()));
    // source line 281, bytecode pc 79
    (this.fightingProcessDict[key] = fightingProcess);
},
    getFightingProcess: function(union_war_id, battle_rounds, tag) {
    var key;
    // source line 286, bytecode pc 32
    (key = ((((("" + union_war_id) + "_") + battle_rounds) + "_") + tag));
    if (this.fightingProcessDict[key]) {
        // source line 288, bytecode pc 58
        return this.fightingProcessDict[key];
    }
    // source line 290, bytecode pc 60
    return null;
},
    getServerTime: function() {
    var myDate, mTime, offTime, mServerThisTime;
    // source line 298, bytecode pc 13
    (myDate = new Date());
    // source line 299, bytecode pc 35
    (mTime = (myDate.getTime() / 1000));
    // source line 302, bytecode pc 53
    (offTime = (mTime - xs.sinfo_local_time));
    // source line 307, bytecode pc 120
    (mServerThisTime = new Date(((((xs.sinfo_server_time * 1000) + (offTime * 1000)) + (myDate.getTimezoneOffset() * 60000)) + xs.sinfo_offset_time)));
    // source line 309, bytecode pc 154
    xs.log_zx("test fasdfasdfasdf", xs.sinfo_offset_time);
    // source line 315, bytecode pc 158
    return mServerThisTime;
},
    getServerData: function() {
    var mServerThisData, mServerWeek;
    // source line 319, bytecode pc 15
    (mServerThisData = this.getServerTime());
    // source line 320, bytecode pc 33
    (mServerWeek = mServerThisData.getDay());
    if ((mServerWeek == 0)) {
        // source line 322, bytecode pc 49
        (mServerWeek = 7);
    }
    // source line 324, bytecode pc 68
    return (mServerWeek + mServerThisData.toLocaleTimeString());
},
    getUnionWarTime: function() {
    var mServerThisData, mTime;
    // source line 331, bytecode pc 15
    (mServerThisData = this.getServerData());
    // source line 333, bytecode pc 42
    (mTime = this._getLatelyShowTime(mServerThisData, this.localArr));
    if ((mTime == 0)) {
        // source line 336, bytecode pc 79
        (mTime = this._getLatelyShowTime(mServerThisData, this.internationalArr));
    }
    // source line 339, bytecode pc 83
    return mTime;
},
    getUnionWarResidueTime: function() {
    var mServerThisData, mTime;
    // source line 347, bytecode pc 15
    (mServerThisData = this.getServerData());
    // source line 349, bytecode pc 42
    (mTime = this._getLatelyShowTime(mServerThisData, this.localArr));
    if ((mTime == 0)) {
        // source line 352, bytecode pc 79
        (mTime = this._getLatelyShowTime(mServerThisData, this.internationalArr));
    }
    // source line 355, bytecode pc 83
    return mTime;
},
    _getLatelyShowTime: function(mServerThisData, mDict) {
    var i, isStartTime, hourOfStartTime;
    // source line 364, bytecode pc 26
    xs.assert(mDict, "_getLatelyShowTime mDict is null!");
    // source line 366, bytecode pc 31
    (i = 0);
    while ((i < mDict.length)) {
        // source line 369, bytecode pc 93
        (isStartTime = this.timeComparison(mServerThisData, (mDict[i].show_time.start_week + mDict[i].show_time.start_time)));
        // source line 371, bytecode pc 104
        (hourOfStartTime = (isStartTime / 3600));
        if ((hourOfStartTime > 24)) {
            // source line 374, bytecode pc 117
            return 0;
        } else {
            if (((hourOfStartTime >= 0) && (hourOfStartTime <= 24))) {
                // source line 376, bytecode pc 148
                return isStartTime;
            }
        }
        // source line 366, bytecode pc 163
        i++;
    }
    // source line 382, bytecode pc 183
    return 0;
},
    getUnionWarStageDetail: function() {
    var _stage, mServerThisData, mServerWeek, isApplayAndTime, isActiveStatistical, isLocal, tmpStage, isLocalEndAndSpanBefore, isInternational, isEndSpanNextWeekBefore;
    // source line 394, bytecode pc 22
    xs.log_hsq("1111");
    // source line 399, bytecode pc 60
    (_stage = { state: -100, serverType: -100, group: -100, residueTime: -100 });
    // source line 402, bytecode pc 76
    (mServerThisData = this.getServerTime());
    // source line 403, bytecode pc 94
    (mServerWeek = mServerThisData.getDay());
    if ((mServerWeek == 0)) {
        // source line 405, bytecode pc 110
        (mServerWeek = 7);
    }
    // source line 407, bytecode pc 132
    (mServerThisData = (mServerWeek + mServerThisData.toLocaleTimeString()));
    // source line 408, bytecode pc 137
    (isApplayAndTime = 0);
    // source line 409, bytecode pc 157
    (isApplayAndTime = this.isApplyStageResidueTime(mServerThisData));
    // source line 411, bytecode pc 162
    (isActiveStatistical = 0);
    // source line 412, bytecode pc 182
    (isActiveStatistical = this.isActiveStatistical(mServerThisData));
    if (isActiveStatistical) {
        // source line 415, bytecode pc 209
        (_stage.state = xs.Constant_UnionWar_State_ActiveStatistical);
        // source line 416, bytecode pc 221
        (_stage.residueTime = isActiveStatistical);
    } else {
        if (isApplayAndTime) {
            // source line 420, bytecode pc 253
            (_stage.state = xs.Constant_UnionWar_State_Apply);
            // source line 421, bytecode pc 265
            (_stage.residueTime = isApplayAndTime);
            // source line 422, bytecode pc 292
            xs.log_hsq("isApplayAndTime", isApplayAndTime);
        } else {
            // source line 429, bytecode pc 417
            (isLocal = this.isTimeAmong(mServerThisData, (this.localArr[0].battle_formation_time.start_week + this.localArr[0].battle_formation_time.start_time), (this.localArr[(this.localArr.length - 1)].show_time.end_week + this.localArr[(this.localArr.length - 1)].show_time.end_time)));
            if (isLocal) {
                // source line 432, bytecode pc 448
                xs.log_hsq("isLocal");
                // source line 433, bytecode pc 467
                (_stage.serverType = xs.Constant_UnionWar_Server_Local);
                // source line 434, bytecode pc 494
                (tmpStage = this._stageInDictForTime(mServerThisData, this.localArr));
                // source line 435, bytecode pc 511
                (_stage.state = tmpStage.state);
                // source line 436, bytecode pc 528
                (_stage.group = tmpStage.group);
                // source line 437, bytecode pc 545
                (_stage.residueTime = tmpStage.residueTime);
            } else {
                // source line 441, bytecode pc 555
                (isLocalEndAndSpanBefore = 0);
                // source line 447, bytecode pc 675
                (isLocalEndAndSpanBefore = this.isTimeAmongResidueTime(mServerThisData, (this.localArr[(this.localArr.length - 1)].show_time.end_week + this.localArr[(this.localArr.length - 1)].show_time.end_time), (this.internationalArr[0].battle_formation_time.start_week + this.internationalArr[0].battle_formation_time.start_time)));
                if (isLocalEndAndSpanBefore) {
                    // source line 450, bytecode pc 702
                    (_stage.state = xs.Constant_UnionWar_State_LocalEndAndSpanBefore);
                    // source line 451, bytecode pc 714
                    (_stage.residueTime = isLocalEndAndSpanBefore);
                }
                // source line 459, bytecode pc 834
                (isInternational = this.isTimeAmong(mServerThisData, (this.internationalArr[0].battle_formation_time.start_week + this.internationalArr[0].battle_formation_time.start_time), (this.internationalArr[(this.internationalArr.length - 1)].show_time.end_week + this.internationalArr[(this.internationalArr.length - 1)].show_time.end_time)));
                if (isInternational) {
                    // source line 462, bytecode pc 865
                    xs.log_hsq("isInternational");
                    // source line 463, bytecode pc 884
                    (_stage.serverType = xs.Constant_UnionWar_Server_International);
                    // source line 464, bytecode pc 911
                    (tmpStage = this._stageInDictForTime(mServerThisData, this.internationalArr));
                    // source line 465, bytecode pc 928
                    (_stage.state = tmpStage.state);
                    // source line 466, bytecode pc 945
                    (_stage.group = tmpStage.group);
                    // source line 467, bytecode pc 962
                    (_stage.residueTime = tmpStage.residueTime);
                }
                // source line 473, bytecode pc 1050
                (isEndSpanNextWeekBefore = this.isTimeAmongResidueTime(mServerThisData, (this.internationalArr[(this.internationalArr.length - 1)].show_time.end_week + this.internationalArr[(this.internationalArr.length - 1)].show_time.end_time), "724:00:00"));
                if (isEndSpanNextWeekBefore) {
                    // source line 476, bytecode pc 1077
                    (_stage.state = xs.Constant_UnionWar_State_EndSpanNextWeekBefore);
                    // source line 477, bytecode pc 1089
                    (_stage.residueTime = isEndSpanNextWeekBefore);
                }
            }
        }
    }
    // source line 486, bytecode pc 1093
    return _stage;
},
    getUnionWarStage: function() {
    var mServerThisData, mServerWeek;
    // source line 491, bytecode pc 15
    (mServerThisData = this.getServerTime());
    // source line 492, bytecode pc 33
    (mServerWeek = mServerThisData.getDay());
    if ((mServerWeek == 0)) {
        // source line 494, bytecode pc 49
        (mServerWeek = 7);
    }
    // source line 496, bytecode pc 71
    (mServerThisData = (mServerWeek + mServerThisData.toLocaleTimeString()));
    if (this.isApplyStage(mServerThisData)) {
        // source line 498, bytecode pc 103
        return xs.Constant_UnionWar_State_Apply;
    } else {
        // source line 500, bytecode pc 125
        return this._getOtherUnionWarStage(mServerThisData);
    }
},
    _getOtherUnionWarStage: function(mServerThisData) {
    var isLocal, isInternational;
    // source line 513, bytecode pc 119
    (isLocal = this.isTimeAmong(mServerThisData, (this.localArr[0].battle_formation_time.start_week + this.localArr[0].battle_formation_time.start_time), (this.localArr[(this.localArr.length - 1)].show_time.end_week + this.localArr[(this.localArr.length - 1)].show_time.end_time)));
    if (isLocal) {
        // source line 516, bytecode pc 150
        xs.log_hsq("isLocal");
        // source line 517, bytecode pc 179
        return this._stageInDictForTime(mServerThisData, this.localArr).state;
    }
    // source line 525, bytecode pc 299
    (isInternational = this.isTimeAmong(mServerThisData, (this.internationalArr[0].battle_formation_time.start_week + this.internationalArr[0].battle_formation_time.start_time), (this.internationalArr[(this.internationalArr.length - 1)].show_time.end_week + this.internationalArr[(this.internationalArr.length - 1)].show_time.end_time)));
    if (isInternational) {
        // source line 528, bytecode pc 330
        xs.log_hsq("isInternational");
        // source line 529, bytecode pc 359
        return this._stageInDictForTime(mServerThisData, this.internationalArr).state;
    } else {
        // source line 531, bytecode pc 375
        return xs.Constant_UnionWar_State_Other;
    }
},
    _stageInDictForTime: function(mServerThisData, mDict) {
    var _stage, i, isThisTime, isFormation, isCombat, isShowFight;
    // source line 541, bytecode pc 30
    (_stage = { state: -1, group: -1, residueTime: -1 });
    // source line 543, bytecode pc 35
    (i = 0);
    while ((i < mDict.length)) {
        // source line 544, bytecode pc 68
        xs.log_hsq("iii", i);
        // source line 549, bytecode pc 160
        (isThisTime = this.isTimeAmong(mServerThisData, (mDict[i].battle_formation_time.start_week + mDict[i].battle_formation_time.start_time), (mDict[i].show_time.end_week + mDict[i].show_time.end_time)));
        if (isThisTime) {
            // source line 552, bytecode pc 211
            (_stage.group = Math.pow(2, ((mDict.length - 1) - i)));
            // source line 553, bytecode pc 244
            (isFormation = this._stageInThisBout(mServerThisData, mDict[i].battle_formation_time));
            // source line 554, bytecode pc 277
            (isCombat = this._stageInThisBout(mServerThisData, mDict[i].fight_time));
            // source line 555, bytecode pc 310
            (isShowFight = this._stageInThisBout(mServerThisData, mDict[i].show_time));
            if (isFormation) {
                // source line 558, bytecode pc 337
                (_stage.state = xs.Constant_UnionWar_State_Formation);
                // source line 559, bytecode pc 349
                (_stage.residueTime = isFormation);
            } else {
                if (isCombat) {
                    // source line 562, bytecode pc 381
                    (_stage.state = xs.Constant_UnionWar_State_Combat);
                    // source line 563, bytecode pc 393
                    (_stage.residueTime = isCombat);
                } else {
                    if (isShowFight) {
                        // source line 565, bytecode pc 425
                        (_stage.state = xs.Constant_UnionWar_State_ShowFight);
                        // source line 566, bytecode pc 437
                        (_stage.residueTime = isShowFight);
                    }
                }
            }
            // source line 569, bytecode pc 441
            return _stage;
        }
        // source line 543, bytecode pc 456
        i++;
    }
    // source line 572, bytecode pc 497
    xs.error("no finad time!");
},
    _stageInThisBout: function(mServerThisData, mBoutDict) {
    var isThisTime;
    // source line 582, bytecode pc 55
    (isThisTime = this.isTimeAmongResidueTime(mServerThisData, (mBoutDict.start_week + mBoutDict.start_time), (mBoutDict.end_week + mBoutDict.end_time)));
    // source line 583, bytecode pc 59
    return isThisTime;
},
    isApplyStage: function(mServerThisData) {
    var applyCfg;
    // source line 588, bytecode pc 15
    (applyCfg = this.getUnionWarApplyTimeCfg());
    // source line 592, bytecode pc 68
    return this.isTimeAmong(mServerThisData, (applyCfg.start_week + applyCfg.start_time), (applyCfg.end_week + applyCfg.end_time));
},
    isApplyStageResidueTime: function(mServerThisData) {
    var applyCfg;
    // source line 598, bytecode pc 15
    (applyCfg = this.getUnionWarApplyTimeCfg());
    // source line 602, bytecode pc 68
    return this.isTimeAmongResidueTime(mServerThisData, (applyCfg.start_week + applyCfg.start_time), (applyCfg.end_week + applyCfg.end_time));
},
    isActiveStatistical: function(mServerThisData) {
    var applyCfg;
    // source line 608, bytecode pc 15
    (applyCfg = this.getUnionWarApplyTimeCfg());
    // source line 612, bytecode pc 56
    return this.isTimeAmongResidueTime(mServerThisData, "100:00:00", (applyCfg.start_week + applyCfg.start_time));
},
    initUnionWarEmbattleTimeCfg: function() {
    var mkey, _dataObj, _jsonObj;
    if (this.isUnionWarEmbattleTimeInited) {
        // source line 621, bytecode pc 12
        return void 0;
    }
    // source line 624, bytecode pc 21
    (mkey = "UnionWarFightingTime");
    // source line 627, bytecode pc 66
    (_dataObj = xs.Tools.CfgData.readRecordByTypeAndKey(xs.Constant_CfgDataType_Global, mkey));
    // source line 630, bytecode pc 93
    xs.log_xjf("UnionWarFightingTime", _dataObj);
    // source line 631, bytecode pc 103
    (_jsonObj = {});
    try {
        // source line 633, bytecode pc 133
        (_jsonObj = JSON.parse(_dataObj.logical_data));
    } catch (e) {
        // source line 636, bytecode pc 175
        xs.dump("initUnionWarEmbattleTimeCfg err", e);
        /* TODO_BYTECODE pc=176 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 640, bytecode pc 212
    (this.localArr = this.accordTimeSort(_jsonObj.local));
    // source line 641, bytecode pc 240
    (this.internationalArr = this.accordTimeSort(_jsonObj.international));
    // source line 642, bytecode pc 255
    (this.localDict = _jsonObj.local);
    // source line 643, bytecode pc 270
    (this.internationalDict = _jsonObj.international);
    // source line 645, bytecode pc 278
    (this.isUnionWarEmbattleTimeInited = true);
},
    accordTimeSort: function(mObj) {
    var mDict, i, mTimeObj;
    // source line 654, bytecode pc 13
    (mDict = new Array());
    for (var i in mObj) {
        // source line 656, bytecode pc 40
        (mTimeObj = mObj[i]);
        if (!((typeof(mTimeObj) != "function"))) continue;
        // source line 660, bytecode pc 74
        mDict.push(mTimeObj);
    }
    // source line 664, bytecode pc 117
    mDict.sort(this.timeSort.bind(this));
    // source line 667, bytecode pc 121
    return mDict;
},
    timeSort: function(a, b) {
    var aBat, bBat;
    // source line 675, bytecode pc 11
    (aBat = a.battle_formation_time);
    // source line 676, bytecode pc 23
    (bBat = b.battle_formation_time);
    if (((aBat == undefined) || (bBat == undefined))) {
        // source line 678, bytecode pc 55
        return -1;
    }
    // source line 680, bytecode pc 119
    return ((this.timeComparison((aBat.start_week + aBat.start_time), (bBat.start_week + bBat.start_time)) > 0) ? -1 : 1);
},
    getUnionWarApplyTimeCfg: function() {
    var mkey, _dataObj, _jsonObj;
    // source line 686, bytecode pc 8
    (mkey = "UnionWarSignUpTime");
    // source line 689, bytecode pc 53
    (_dataObj = xs.Tools.CfgData.readRecordByTypeAndKey(xs.Constant_CfgDataType_Global, mkey));
    // source line 693, bytecode pc 58
    (_jsonObj = null);
    try {
        // source line 695, bytecode pc 88
        (_jsonObj = JSON.parse(_dataObj.logical_data));
    } catch (e) {
        // source line 698, bytecode pc 130
        xs.dump("getUnionWarApplyTimeCfg err!", e);
        /* TODO_BYTECODE pc=131 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 700, bytecode pc 143
    return _jsonObj;
},
    getUnionWarApplyTimeStart: function() {
    var mStrtTime;
    // source line 705, bytecode pc 36
    (mStrtTime = this.getUnionWarApplyTimeCfg().start_time.substring(0, 5));
    // source line 706, bytecode pc 51
    return (mStrtTime || "");
},
    getUnionWarApplyTimeEnd: function() {
    var mStrtTime;
    // source line 711, bytecode pc 36
    (mStrtTime = this.getUnionWarApplyTimeCfg().end_time.substring(0, 5));
    // source line 712, bytecode pc 51
    return (mStrtTime || "");
},
    getUnionWarBuZhenTimeStartThis: function(mLun) {
    var mStrtTime;
    // source line 717, bytecode pc 39
    (mStrtTime = this.localDict[mLun].battle_formation_time.start_time.substring(0, 5));
    // source line 718, bytecode pc 54
    return (mStrtTime || "");
},
    getUnionWarBuZhenTimeStartStride: function(mLun) {
    var mStrtTime;
    // source line 723, bytecode pc 39
    (mStrtTime = this.internationalDict[mLun].battle_formation_time.start_time.substring(0, 5));
    // source line 724, bytecode pc 54
    return (mStrtTime || "");
},
    getUnionWarTimeStartThis: function(mLun) {
    var mStrtTime;
    // source line 729, bytecode pc 39
    (mStrtTime = this.localDict[mLun].show_time.start_time.substring(0, 5));
    // source line 730, bytecode pc 54
    return (mStrtTime || "");
},
    getUnionWarTimeStartStride: function(mLun) {
    var mStrtTime;
    // source line 735, bytecode pc 39
    (mStrtTime = this.internationalDict[mLun].show_time.start_time.substring(0, 5));
    // source line 736, bytecode pc 54
    return (mStrtTime || "");
},
    isTimeAmong: function(thisTime, agoTime, queenTime) {
    var mTime, beginTime, endTime;
    // source line 741, bytecode pc 19
    (mTime = this._getTimeFormat(thisTime));
    // source line 742, bytecode pc 39
    (beginTime = this._getTimeFormat(agoTime));
    // source line 743, bytecode pc 59
    (endTime = this._getTimeFormat(queenTime));
    if (((Date.parse(mTime) >= Date.parse(beginTime)) && (Date.parse(mTime) < Date.parse(endTime)))) {
        // source line 747, bytecode pc 154
        return true;
    }
    // source line 749, bytecode pc 156
    return false;
},
    isTimeAmongResidueTime: function(thisTime, agoTime, queenTime) {
    var mTime, beginTime, endTime, mResidue;
    // source line 754, bytecode pc 22
    xs.log_hsq("221");
    // source line 755, bytecode pc 42
    (mTime = this._getTimeFormat(thisTime));
    // source line 756, bytecode pc 62
    (beginTime = this._getTimeFormat(agoTime));
    // source line 757, bytecode pc 82
    (endTime = this._getTimeFormat(queenTime));
    // source line 760, bytecode pc 109
    xs.log_hsq("222mTime", mTime);
    if (((Date.parse(mTime) >= Date.parse(beginTime)) && (Date.parse(mTime) < Date.parse(endTime)))) {
        // source line 762, bytecode pc 246
        xs.log_hsq("endTime", Date.parse(endTime));
        // source line 763, bytecode pc 291
        (mResidue = (Date.parse(endTime) - Date.parse(mTime)));
        // source line 764, bytecode pc 335
        xs.log_hsq("mTime", Date.parse(mTime));
        // source line 765, bytecode pc 339
        return mResidue;
    }
    // source line 767, bytecode pc 341
    return false;
},
    timeComparison: function(thisTime, goalTime) {
    var beginTime, endTime, a;
    // source line 773, bytecode pc 19
    (beginTime = this._getTimeFormat(thisTime));
    // source line 774, bytecode pc 39
    (endTime = this._getTimeFormat(goalTime));
    // source line 776, bytecode pc 88
    (a = ((Date.parse(endTime) - Date.parse(beginTime)) / 1000));
    // source line 777, bytecode pc 92
    return a;
},
    _getTimeFormat: function(time) {
    var dateObj, nowYear, nowMonth, timeFormat;
    // source line 784, bytecode pc 13
    (dateObj = new Date());
    // source line 785, bytecode pc 31
    (nowYear = dateObj.getFullYear());
    // source line 786, bytecode pc 49
    (nowMonth = dateObj.getMonth());
    // source line 788, bytecode pc 117
    (timeFormat = ((((((nowMonth + "/0") + time.substring(0, 1)) + "/") + nowYear) + " ") + time.substring(1, 9)));
    // source line 789, bytecode pc 121
    return timeFormat;
},
    getWarSumTime: function(key, battleId, encounterServerType) {
    var _key, _battleId, warOnceTime, startTime, serverTime, beginTime, nowTime, secTime;
    // source line 794, bytecode pc 28
    (_key = xs.Utils.parseStringSafe(key));
    // source line 795, bytecode pc 57
    (_battleId = xs.Utils.parseIntSafe(battleId));
    // source line 806, bytecode pc 63
    (warOnceTime = 90);
    if ((encounterServerType == xs.Constant_UnionWar_Server_Local)) {
        // source line 812, bytecode pc 131
        (startTime = (this.localDict[_key].show_time.start_week + this.localDict[_key].show_time.start_time));
    } else {
        // source line 816, bytecode pc 181
        (startTime = (this.internationalDict[_key].show_time.start_week + this.internationalDict[_key].show_time.start_time));
    }
    // source line 819, bytecode pc 197
    (serverTime = this.getServerData());
    // source line 821, bytecode pc 217
    (beginTime = this._getTimeFormat(startTime));
    // source line 822, bytecode pc 237
    (nowTime = this._getTimeFormat(serverTime));
    // source line 824, bytecode pc 300
    (secTime = (((Date.parse(beginTime) / 1000) + (warOnceTime * (_battleId - 1))) - (Date.parse(nowTime) / 1000)));
    // source line 828, bytecode pc 323
    return { onceTime: warOnceTime, secTime: secTime }
},
    getNewWarIsEnd: function(key, goalTime) {
    var mTimeObj, mTime, isEnd;
    // source line 835, bytecode pc 26
    (mTimeObj = this.getWarSumTime(key, 5, goalTime));
    // source line 836, bytecode pc 47
    (mTime = (mTimeObj.secTime + mTimeObj.onceTime));
    // source line 837, bytecode pc 74
    xs.log_hsq("mTime", mTime);
    // source line 839, bytecode pc 95
    (isEnd = ((mTime <= 0) ? true : false));
    // source line 841, bytecode pc 99
    return isEnd;
}
}));
// source line 847, bytecode pc 601
(xs.Models.UnionWar.s_instance = null);
// source line 848, bytecode pc 627
(xs.Models.UnionWar.create = function() {
    var UnionWar;
    // source line 849, bytecode pc 23
    (UnionWar = new xs.Models.UnionWar());
    if (!UnionWar.init()) {
        // source line 851, bytecode pc 45
        return null;
    }
    // source line 854, bytecode pc 49
    return UnionWar;
});
// source line 857, bytecode pc 653
(xs.Models.UnionWar.getInstance = function() {
    // source line 858, bytecode pc 18
    this.error("xs.Models.UnionWar.getInstance will be delete");
    if (!xs.Models.UnionWar.s_instance) {
        // source line 860, bytecode pc 85
        (xs.Models.UnionWar.s_instance = new xs.Models.UnionWar());
        // source line 861, bytecode pc 117
        xs.Models.UnionWar.s_instance.init();
    }
    // source line 863, bytecode pc 138
    return xs.Models.UnionWar.s_instance;
});
// source line 866, bytecode pc 679
(xs.Models.UnionWar.purgeInstance = function() {
    if (xs.Models.UnionWar.s_instance) {
        // source line 868, bytecode pc 46
        (xs.Models.UnionWar.s_instance = null);
    }
});
