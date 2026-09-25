// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/TmpInfo/Fight.js:1
// source line 498, bytecode pc 460
(xs.Models.TmpInfo.Fight = (xs.Models.TmpInfo.Fight || xs.Models.Base.extend({
    name: "xs.Models.TmpInfo.Fight",
    cfg: { leftGoddessKey: "godness_0", rightGoddessKey: "godness_1", goddessSkillName: "Goddess_Buff" },
    init: function(param) {
    var goddesObj;
    // source line 20, bytecode pc 18
    this.markFuncBegin("model init");
    // source line 23, bytecode pc 28
    (this.param = param);
    // source line 26, bytecode pc 61
    (this.speedIdx = xs.Profile.UserCfg.getFightSpeedIdx());
    if ((this.speedIdx >= this._getSpeedInfos().length)) {
        // source line 28, bytecode pc 98
        (this.speedIdx = 0);
    }
    // source line 32, bytecode pc 106
    (this.openData = null);
    if ((param.openType === xs.Constant_FightScene_OpenType_Pve)) {
        // source line 34, bytecode pc 162
        (this.openData = xs.Scene.FightScene.Cfg.Open);
    } else {
        if ((param.openType === xs.Constant_FightScene_OpenType_Pvp)) {
            // source line 37, bytecode pc 223
            (this.openData = xs.Scene.FightScene.Cfg.Open);
        } else {
            // source line 40, bytecode pc 260
            this.error(("unknow openType :" + param.openType), param);
        }
    }
    // source line 43, bytecode pc 289
    (this.fightData = this.param.fightData.getFightProcess());
    // source line 44, bytecode pc 307
    (this.storyData = this.param.storyData);
    if ((this.param.fightData.isSuccess() !== true)) {
        if ((this.storyData && this.storyData[1])) {
            // source line 48, bytecode pc 371
            (this.storyData[1] = null);
        }
    }
    // source line 51, bytecode pc 403
    (this.resultData = xs.Scene.FightScene.Cfg.Result);
    // source line 52, bytecode pc 435
    (this.resultOpenData = xs.Scene.FightScene.Cfg.ResultOpen);
    // source line 57, bytecode pc 443
    (this.roundsFight = null);
    // source line 58, bytecode pc 451
    (this.roundsOpen = null);
    // source line 59, bytecode pc 473
    (this.roundsStory = [ null, null ]);
    // source line 60, bytecode pc 495
    (this.roundsGoddess = [ null, null ]);
    // source line 63, bytecode pc 504
    (this.roundMax = 100);
    // source line 64, bytecode pc 512
    (this.roundCur = 1);
    // source line 65, bytecode pc 534
    (this.deathNum = [ 0, 0 ]);
    // source line 68, bytecode pc 579
    (this.roundsOpen = xs.Models.FightRoundList.createWithFightItems(this.openData.rounds));
    // source line 70, bytecode pc 619
    (goddesObj = this.getGoddessRounds(this.fightData.rounds, this.fightData.init));
    if ((this.fightData.init[this.cfg.rightGoddessKey] && !goddesObj.right)) {
        // source line 75, bytecode pc 707
        (this.roundsGoddess[1] = this.getGoddessRoundsByData(this.cfg.rightGoddessKey, this.fightData.init));
        // source line 76, bytecode pc 743
        this.fightData.rounds.splice(0, 0, this.roundsGoddess[1]);
    }
    if ((this.fightData.init[this.cfg.leftGoddessKey] && !goddesObj.left)) {
        // source line 81, bytecode pc 831
        (this.roundsGoddess[0] = this.getGoddessRoundsByData(this.cfg.leftGoddessKey, this.fightData.init));
        // source line 82, bytecode pc 867
        this.fightData.rounds.splice(0, 0, this.roundsGoddess[0]);
    }
    if ((this.fightData && (this.fightData.init && this.fightData.rounds))) {
        // source line 90, bytecode pc 968
        (this.info = xs.Utils.clone((this.fightData.init.info || [])));
        // source line 91, bytecode pc 1024
        (this.cardDatas = xs.Utils.clone((this.fightData.init.cards || [])));
        // source line 92, bytecode pc 1054
        (this.cards_size0 = (this.fightData.init.cards_size0 || 0));
        // source line 93, bytecode pc 1084
        (this.cards_size1 = (this.fightData.init.cards_size1 || 0));
        // source line 94, bytecode pc 1114
        (this.backups_size0 = (this.fightData.init.backups_size0 || 0));
        // source line 95, bytecode pc 1144
        (this.backups_size1 = (this.fightData.init.backups_size1 || 0));
        // source line 96, bytecode pc 1175
        (this.roundMax = (this.fightData.init.roundMax || 30));
        // source line 97, bytecode pc 1205
        (this.roundSkip = (this.fightData.init.skipRounds || 0));
        // source line 98, bytecode pc 1261
        (this.roundsFight = xs.Models.FightRoundList.createWithFightItems((this.fightData.rounds || [])));
        // source line 99, bytecode pc 1284
        (this.m_fstSide = this.fightData.init.first);
    } else {
        // source line 104, bytecode pc 1317
        this.error("check fight data", this.fightData, this);
        // source line 106, bytecode pc 1329
        (this.info = []);
        // source line 107, bytecode pc 1341
        (this.cardDatas = []);
        // source line 108, bytecode pc 1349
        (this.cards_size0 = 0);
        // source line 109, bytecode pc 1357
        (this.cards_size1 = 0);
        // source line 110, bytecode pc 1365
        (this.backups_size0 = 0);
        // source line 111, bytecode pc 1373
        (this.backups_size1 = 0);
        // source line 112, bytecode pc 1382
        (this.roundMax = 30);
        // source line 113, bytecode pc 1390
        (this.roundSkip = 0);
        // source line 114, bytecode pc 1429
        (this.roundsFight = xs.Models.FightRoundList.createWithFightItems([]));
        // source line 115, bytecode pc 1437
        (this.m_fstSide = 0);
    }
    if (this.param.storyData) {
        // source line 121, bytecode pc 1502
        (this.roundsStory[0] = xs.Models.FightRoundList.createWithStoryItems(this.param.storyData[0]));
        // source line 122, bytecode pc 1551
        (this.roundsStory[1] = xs.Models.FightRoundList.createWithStoryItems(this.param.storyData[1]));
    }
    // source line 128, bytecode pc 1607
    (this.roundsResult = xs.Models.FightRoundList.createWithFightItems((this.resultData.rounds || [])));
    // source line 130, bytecode pc 1626
    this.markFuncEnd("model init");
},
    getGoddessRounds: function(roundsData, fightData) {
    var leftGodd, rightGodd, i, leftNum, mroundStr, mRound;
    // source line 135, bytecode pc 4
    (leftGodd = false);
    // source line 136, bytecode pc 9
    (rightGodd = false);
    // source line 137, bytecode pc 14
    (i = 0);
    // source line 138, bytecode pc 41
    (leftNum = parseInt(fightData.cards_size0));
    for (var mroundStr in roundsData) {
        // source line 141, bytecode pc 71
        (i = (+i + 1));
        // source line 142, bytecode pc 83
        (mRound = roundsData[mroundStr]);
        if ((mRound.skill == this.cfg.goddessSkillName)) {
            if ((parseInt(mRound.from[0]) >= leftNum)) {
                // source line 146, bytecode pc 147
                (rightGodd = true);
            } else {
                // source line 148, bytecode pc 157
                (leftGodd = true);
            }
        }
        if (!((i > 1))) continue;
        // source line 153, bytecode pc 190
        return { left: leftGodd, right: rightGodd }
    }
    // source line 157, bytecode pc 223
    return { left: leftGodd, right: rightGodd }
},
    getToList: function(startidx, length) {
    var mList, i;
    // source line 162, bytecode pc 8
    (mList = []);
    // source line 163, bytecode pc 13
    (i = 0);
    while ((i < length)) {
        // source line 164, bytecode pc 42
        mList.push((startidx + i));
        // source line 163, bytecode pc 56
        (i = (+i + 1));
    }
    // source line 166, bytecode pc 74
    return mList;
},
    getGoddessRoundsByData: function(keyStr, initData) {
    var goddessDataList, goddessData, mFromIdx, toList, leftNum, rightNum, leftList, rightList, mRound;
    // source line 173, bytecode pc 10
    (goddessDataList = initData[keyStr]);
    // source line 175, bytecode pc 15
    (goddessData = null);
    // source line 176, bytecode pc 20
    (mFromIdx = 0);
    // source line 177, bytecode pc 45
    (toList = [ 0, 1, 2 ]);
    // source line 178, bytecode pc 72
    (leftNum = parseInt(initData.cards_size0));
    // source line 179, bytecode pc 99
    (rightNum = parseInt(initData.cards_size1));
    // source line 181, bytecode pc 108
    (leftList = []);
    // source line 182, bytecode pc 117
    (rightList = []);
    // source line 183, bytecode pc 139
    (leftList = this.getToList(0, leftNum));
    // source line 184, bytecode pc 168
    (rightList = this.getToList(leftList.length, rightNum));
    if ((keyStr == this.cfg.leftGoddessKey)) {
        // source line 190, bytecode pc 195
        (goddessData = goddessDataList);
        // source line 191, bytecode pc 204
        (mFromIdx = leftList[0]);
        // source line 192, bytecode pc 211
        (toList = leftList);
    } else {
        // source line 194, bytecode pc 223
        (goddessData = goddessDataList);
        // source line 195, bytecode pc 232
        (mFromIdx = rightList[0]);
        // source line 196, bytecode pc 239
        (toList = rightList);
    }
    // source line 201, bytecode pc 337
    (mRound = {
    from: [ 1 ],
    to: [ 0, 1, 2 ],
    skill: "Goddess_Buff",
    type: 0,
    skillId: "121005",
    params: { to: [] }
});
    if (goddessData.id) {
        // source line 208, bytecode pc 367
        (mRound.skillId = goddessData.id);
    } else {
        // source line 210, bytecode pc 397
        xs.assert(false, "no Goddess id,server no send");
    }
    // source line 214, bytecode pc 411
    (mRound.from[0] = mFromIdx);
    // source line 216, bytecode pc 423
    (mRound.to = toList);
    // source line 220, bytecode pc 427
    return mRound;
},
    getInfoBySide: function(side) {
    // source line 226, bytecode pc 10
    return this.info[side];
},
    getCardsSizeBySide: function(side) {
    if ((side === 0)) {
        // source line 232, bytecode pc 16
        return this.cards_size0;
    } else {
        if ((side === 1)) {
            // source line 235, bytecode pc 38
            return this.cards_size1;
        } else {
            // source line 238, bytecode pc 66
            this.error("getCardsSizeBySide", side);
            // source line 239, bytecode pc 73
            return this.cards_size0;
        }
    }
},
    getBackupsSizeBySide: function(side) {
    if ((side === 0)) {
        // source line 246, bytecode pc 16
        return this.backups_size0;
    } else {
        if ((side === 1)) {
            // source line 249, bytecode pc 38
            return this.backups_size1;
        } else {
            // source line 252, bytecode pc 66
            this.error("getBackupsSizeBySide", side);
            // source line 253, bytecode pc 73
            return this.backups_size0;
        }
    }
},
    getMode: function() {
    // source line 258, bytecode pc 11
    return this.param.mode;
},
    setRoundCur: function(roundCur) {
    // source line 263, bytecode pc 9
    (this.roundCur = roundCur);
},
    getRoundCur: function() {
    // source line 267, bytecode pc 6
    return this.roundCur;
},
    getRoundMax: function() {
    // source line 271, bytecode pc 6
    return this.roundMax;
},
    getFstSide: function() {
    // source line 277, bytecode pc 6
    return this.m_fstSide;
},
    getBackUpNumCur: function(side) {
    var _count, _begin, _end, i;
    // source line 283, bytecode pc 4
    (_count = 0);
    // source line 284, bytecode pc 9
    (_begin = 0);
    // source line 285, bytecode pc 14
    (_end = 0);
    if ((side === 0)) {
        // source line 287, bytecode pc 41
        (_begin = (this.cards_size0 + this.cards_size1));
        // source line 288, bytecode pc 65
        (_end = ((this.cards_size0 + this.cards_size1) + this.backups_size0));
    } else {
        // source line 291, bytecode pc 94
        (_begin = ((this.cards_size0 + this.cards_size1) + this.backups_size0));
        // source line 292, bytecode pc 109
        (_end = this.cardDatas.length);
    }
    // source line 294, bytecode pc 116
    (i = _begin);
    while ((i < _end)) {
        if (!!this.cardDatas[i]) {
            // source line 296, bytecode pc 153
            (_count = (+_count + 1));
        }
        // source line 294, bytecode pc 168
        (i = (+i + 1));
    }
    // source line 299, bytecode pc 186
    return _count;
},
    getBackUpNumMax: function(side) {
    if ((side === 0)) {
        // source line 303, bytecode pc 16
        return this.backups_size0;
    } else {
        // source line 309, bytecode pc 54
        return (((this.cardDatas.length - this.cards_size0) - this.cards_size1) - this.backups_size0);
    }
},
    canSkip: function() {
    var _roundSkip, _roundCur;
    if ((xs.fightSkipAlways === true)) {
        // source line 318, bytecode pc 18
        return true;
    }
    if ((this.getMode() === xs.Constant_FightScene_Mode_Replay)) {
        // source line 323, bytecode pc 48
        return true;
    }
    if ((this.roundSkip === 0)) {
        // source line 327, bytecode pc 63
        return false;
    }
    // source line 331, bytecode pc 80
    (_roundSkip = (this.roundSkip || 1));
    // source line 332, bytecode pc 97
    (_roundCur = (this.roundCur || 1));
    // source line 334, bytecode pc 105
    return (_roundSkip <= _roundCur);
},
    getCardModelBySideAndOffset: function(side, offset) {
    var _idx;
    // source line 341, bytecode pc 23
    (_idx = this._getCardIdxBySideAndOffset(side, offset));
    // source line 342, bytecode pc 34
    return this.cardDatas[_idx];
},
    getBackupModelBySideAndOffset: function(side, offset) {
    var _idx;
    // source line 346, bytecode pc 23
    (_idx = this._getBackupIdxBySideAndOffset(side, offset));
    // source line 347, bytecode pc 34
    return this.cardDatas[_idx];
},
    _getCardIdxBySideAndOffset: function(side, offset) {
    // source line 353, bytecode pc 14
    return ((this.cards_size0 * side) + offset);
},
    _getBackupIdxBySideAndOffset: function(side, offset) {
    if ((side === 0)) {
        // source line 358, bytecode pc 27
        return ((this.cards_size0 + this.cards_size1) + offset);
    } else {
        // source line 361, bytecode pc 57
        return (((this.cards_size0 + this.cards_size1) + this.backups_size0) + offset);
    }
},
    getSideByIdx: function(idx) {
    if ((idx < this.cards_size0)) {
        // source line 367, bytecode pc 16
        return 0;
    } else {
        if ((idx < (this.cards_size0 + this.cards_size1))) {
            // source line 370, bytecode pc 45
            return 1;
        } else {
            if ((idx < ((this.cards_size0 + this.cards_size1) + this.backups_size0))) {
                // source line 373, bytecode pc 81
                return 0;
            } else {
                if ((idx < (((this.cards_size0 + this.cards_size1) + this.backups_size0) + this.backups_size1))) {
                    // source line 376, bytecode pc 124
                    return 1;
                } else {
                    // source line 379, bytecode pc 152
                    this.error("getSideByIdx", idx);
                }
            }
        }
    }
    // source line 382, bytecode pc 154
    return 0;
},
    getOffsetByIdx: function(idx) {
    if ((idx < this.cards_size0)) {
        // source line 388, bytecode pc 18
        return idx;
    } else {
        if ((idx < (this.cards_size0 + this.cards_size1))) {
            // source line 391, bytecode pc 56
            return (idx - this.cards_size0);
        } else {
            if ((idx < ((this.cards_size0 + this.cards_size1) + this.backups_size0))) {
                // source line 394, bytecode pc 108
                return ((idx - this.cards_size0) - this.cards_size1);
            } else {
                if ((idx < (((this.cards_size0 + this.cards_size1) + this.backups_size0) + this.backups_size1))) {
                    // source line 397, bytecode pc 174
                    return (((idx - this.cards_size0) - this.cards_size1) - this.backups_size0);
                } else {
                    // source line 400, bytecode pc 202
                    this.error("getOffsetByIdx", idx);
                }
            }
        }
    }
    // source line 403, bytecode pc 204
    return 0;
},
    getCardModelByIdx: function(idx) {
    // source line 410, bytecode pc 10
    return this.cardDatas[idx];
},
    setCardModelByIdx: function(idx, obj) {
    // source line 415, bytecode pc 13
    (this.cardDatas[idx] = obj);
},
    update_cards_idx: function(pre) {
    var _leaveIdx, _backupIdx;
    // source line 422, bytecode pc 11
    (_leaveIdx = pre.leaveIdx);
    // source line 423, bytecode pc 23
    (_backupIdx = pre.backupIdx);
    // source line 425, bytecode pc 44
    (this.cardDatas[_leaveIdx] = this.cardDatas[_backupIdx]);
    // source line 426, bytecode pc 56
    (this.cardDatas[_backupIdx] = null);
},
    _getSpeedInfos: function() {
    // source line 432, bytecode pc 25
    return xs.Cfg.Scene.FightScene.speedInfos;
},
    changeSpeed: function() {
    // source line 438, bytecode pc 25
    (this.speedIdx = (+this.speedIdx + 1));
    if ((this.speedIdx >= this._getSpeedInfos().length)) {
        // source line 441, bytecode pc 63
        (this.speedIdx = 0);
    }
    // source line 444, bytecode pc 97
    xs.Profile.UserCfg.setFightSpeedIdx(this.speedIdx);
},
    setSpeedIdx: function(idx) {
    // source line 449, bytecode pc 9
    (this.speedIdx = idx);
    if ((this.speedIdx >= this._getSpeedInfos().length)) {
        // source line 452, bytecode pc 46
        (this.speedIdx = 0);
    }
    // source line 455, bytecode pc 80
    xs.Profile.UserCfg.setFightSpeedIdx(this.speedIdx);
},
    getSpeed: function() {
    var _ret;
    // source line 463, bytecode pc 24
    (_ret = this._getSpeedInfos()[this.speedIdx][0]);
    // source line 467, bytecode pc 28
    return _ret;
},
    getNewPlayerSpeed: function() {
    var _ret;
    // source line 472, bytecode pc 20
    (_ret = this._getSpeedInfos()[2][0]);
    // source line 473, bytecode pc 24
    return _ret;
},
    getSpeedVoiceType: function() {
    var _tmp;
    // source line 481, bytecode pc 25
    (_tmp = this._getSpeedInfos()[this.speedIdx][2]);
    // source line 482, bytecode pc 29
    return _tmp;
},
    getSpeedIdx: function() {
    // source line 486, bytecode pc 6
    return this.speedIdx;
},
    getSpeedTag: function() {
    var _tmp;
    // source line 490, bytecode pc 25
    (_tmp = this._getSpeedInfos()[this.speedIdx][3]);
    // source line 491, bytecode pc 29
    return _tmp;
},
    getSpeedText: function() {
    var _tmp;
    // source line 502, bytecode pc 24
    (_tmp = this._getSpeedInfos()[this.speedIdx][1]);
    // source line 504, bytecode pc 28
    return _tmp;
}
})));
// source line 522, bytecode pc 491
(xs.Models.TmpInfo.Fight.create = function(param) {
    var _ret;
    // source line 524, bytecode pc 28
    (_ret = new xs.Models.TmpInfo.Fight());
    // source line 525, bytecode pc 47
    _ret.init(param);
    // source line 527, bytecode pc 51
    return _ret;
});
