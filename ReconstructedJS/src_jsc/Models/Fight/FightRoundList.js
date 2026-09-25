// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/Fight/FightRoundList.js:1
// source line 396, bytecode pc 239
(xs.Models.FightRoundList = cc.Class.extend({
    items: [],
    idx: 0,
    ctor: function() {
    // source line 15, bytecode pc 29
    cc.associateWithNative(this, cc.Class);
},
    init: function() {
    // source line 19, bytecode pc 7
    (this.idx = 0);
    // source line 20, bytecode pc 19
    (this.items = []);
},
    push: function(item) {
    // source line 25, bytecode pc 21
    this.items.push(item);
},
    getCurItem: function() {
    // source line 32, bytecode pc 13
    return this.items[this.idx];
},
    nextIdx: function() {
    if (((this.idx + 1) <= this.items.length)) {
        // source line 37, bytecode pc 50
        (this.idx = (+this.idx + 1));
    } else {
        // source line 40, bytecode pc 79
        cc.log("WARNING nextIdx ");
    }
},
    _getListObjForFs: function(mToList) {
    var fsList, otherList, i, isFs;
    // source line 46, bytecode pc 8
    (fsList = []);
    // source line 47, bytecode pc 17
    (otherList = []);
    // source line 48, bytecode pc 22
    (i = 0);
    while ((i < mToList.length)) {
        // source line 49, bytecode pc 59
        xs.log_hsq("mToList[i]:", mToList[i]);
        // source line 51, bytecode pc 115
        (isFs = (mToList[i].event ? mToList[i].event.hasItem("fs") : false));
        // source line 52, bytecode pc 142
        xs.log_hsq("isFs:", isFs);
        if (isFs) {
            // source line 54, bytecode pc 169
            fsList.push(i);
        } else {
            // source line 56, bytecode pc 193
            otherList.push(i);
        }
        // source line 48, bytecode pc 207
        (i = (+i + 1));
    }
    // source line 61, bytecode pc 249
    return { fsList: fsList, otherList: otherList }
},
    dispose_mo_kurou: function(_roundCfg) {
    var _roundCfgList, mToList, mListsObj, mSkillCfg, fsList, mToArray, mToCfgList, i, otherList, x;
    // source line 68, bytecode pc 8
    (_roundCfgList = []);
    // source line 69, bytecode pc 36
    (mToList = (_roundCfg.params.to || []));
    // source line 70, bytecode pc 56
    (mListsObj = this._getListObjForFs(mToList));
    // source line 71, bytecode pc 66
    (mSkillCfg = {});
    // source line 75, bytecode pc 78
    (fsList = mListsObj.fsList);
    if ((fsList.length > 0)) {
        // source line 78, bytecode pc 102
        (mToArray = []);
        // source line 79, bytecode pc 111
        (mToCfgList = []);
        // source line 80, bytecode pc 116
        (i = 0);
        while ((i < fsList.length)) {
            // source line 81, bytecode pc 154
            mToArray.push(_roundCfg.to[fsList[i]]);
            // source line 82, bytecode pc 181
            mToCfgList.push(mToList[fsList[i]]);
            // source line 80, bytecode pc 195
            (i = (+i + 1));
        }
        // source line 87, bytecode pc 300
        (mSkillCfg = {
    from: _roundCfg.from,
    to: mToArray,
    skill: "mo_kurou_1",
    type: _roundCfg.type,
    skillId: _roundCfg.skillId,
    params: { to: mToCfgList }
});
        // source line 90, bytecode pc 319
        _roundCfgList.push(mSkillCfg);
    }
    // source line 93, bytecode pc 331
    (otherList = mListsObj.otherList);
    // source line 94, bytecode pc 358
    xs.log_hsq("otherList", otherList);
    // source line 95, bytecode pc 367
    (mToArray = []);
    // source line 96, bytecode pc 376
    (mToCfgList = []);
    // source line 97, bytecode pc 381
    (x = 0);
    while ((x < otherList.length)) {
        // source line 98, bytecode pc 419
        mToArray.push(_roundCfg.to[otherList[x]]);
        // source line 99, bytecode pc 446
        mToCfgList.push(mToList[otherList[x]]);
        // source line 97, bytecode pc 460
        (x = (+x + 1));
    }
    // source line 105, bytecode pc 583
    (mSkillCfg = {
    from: _roundCfg.from,
    to: mToArray,
    skill: "mo_kurou_2",
    type: _roundCfg.type,
    skillId: _roundCfg.skillId,
    params: { to: mToCfgList, once: _roundCfg.params.once }
});
    // source line 110, bytecode pc 602
    _roundCfgList.push(mSkillCfg);
    // source line 112, bytecode pc 629
    xs.log_hsq("_roundCfgList", _roundCfgList);
    // source line 117, bytecode pc 715
    (mSkillCfg = {
    from: _roundCfg.from,
    to: mToArray,
    skill: "mo_kurou_0",
    type: _roundCfg.type,
    skillId: _roundCfg.skillId,
    params: { to: mToCfgList }
});
    // source line 120, bytecode pc 736
    _roundCfgList.insert(0, mSkillCfg);
    // source line 122, bytecode pc 740
    return _roundCfgList;
},
    _getListObjForTagList: function(mList, tagList) {
    var mRYIdxList, mTagList, i;
    // source line 127, bytecode pc 8
    (mRYIdxList = []);
    // source line 128, bytecode pc 26
    (mTagList = (tagList || []));
    // source line 129, bytecode pc 31
    (i = 0);
    while ((i < mList.length)) {
        if (mTagList.hasItem(mList[i])) {
            // source line 131, bytecode pc 83
            mRYIdxList.push(i);
        }
        // source line 129, bytecode pc 97
        (i = (+i + 1));
    }
    // source line 135, bytecode pc 120
    return mRYIdxList;
},
    dispose_luanwu: function(_roundCfg) {
    var _roundCfgList, mToList, mTagLists, mSkillCfg, mCfg, mToCfgList, i, mToObj, mEventList;
    // source line 140, bytecode pc 8
    (_roundCfgList = []);
    // source line 141, bytecode pc 31
    (mToList = (_roundCfg.to || []));
    // source line 142, bytecode pc 68
    (mTagLists = this._getListObjForTagList(mToList, [ 1, 4 ]));
    // source line 143, bytecode pc 78
    (mSkillCfg = {});
    // source line 144, bytecode pc 85
    (mCfg = _roundCfg);
    if ((mTagLists.length > 0)) {
        // source line 148, bytecode pc 117
        (mToCfgList = mCfg.params.to);
        // source line 150, bytecode pc 122
        (i = 0);
        while ((i < mTagLists.length)) {
            // source line 151, bytecode pc 143
            (mToObj = mToCfgList[mTagLists[i]]);
            // source line 152, bytecode pc 178
            (mEventList = (mToObj.event ? mToObj.event : []));
            if (!mEventList.hasItem("rotationY180")) {
                // source line 154, bytecode pc 225
                mEventList.push("rotationY180");
            }
            // source line 156, bytecode pc 237
            (mToObj.event = mEventList);
            // source line 150, bytecode pc 251
            (i = (+i + 1));
        }
    }
    // source line 162, bytecode pc 289
    _roundCfgList.push(mCfg);
    // source line 163, bytecode pc 316
    xs.log_hsq("mCfgluanwu:", mCfg);
    // source line 165, bytecode pc 320
    return _roundCfgList;
},
    dispose_nuyan: function(_roundCfg) {
    var _roundCfgList, _roundCfgBefore, _roundCfgLater;
    // source line 170, bytecode pc 8
    (_roundCfgList = []);
    // source line 171, bytecode pc 37
    (_roundCfgBefore = xs.Utils.clone(_roundCfg));
    // source line 172, bytecode pc 66
    (_roundCfgLater = xs.Utils.clone(_roundCfg));
    // source line 173, bytecode pc 80
    (_roundCfgBefore.skill = "nuyan");
    // source line 174, bytecode pc 120
    (_roundCfgLater.skill = _roundCfg.skill.replace("_nuyan", ""));
    // source line 175, bytecode pc 139
    _roundCfgList.push(_roundCfgBefore);
    // source line 176, bytecode pc 158
    _roundCfgList.push(_roundCfgLater);
    // source line 177, bytecode pc 162
    return _roundCfgList;
},
    dispose_kuanggu: function(_roundCfg) {
    var mRoundCfg, fromVal, mToList, idx, fistCfg, isHaveFs, key, mPopPos, mPopPosTo;
    // source line 183, bytecode pc 6
    (mRoundCfg = _roundCfg);
    // source line 186, bytecode pc 20
    (fromVal = mRoundCfg.from[0]);
    // source line 187, bytecode pc 32
    (mToList = mRoundCfg.to);
    // source line 189, bytecode pc 37
    (idx = 0);
    while ((idx < mToList.length)) {
        if ((mToList[idx] == fromVal)) {
            // source line 191, bytecode pc 85
            mRoundCfg.to.splice(idx, 1);
            // source line 192, bytecode pc 116
            mRoundCfg.params.to.splice(idx, 1);
        }
        // source line 189, bytecode pc 130
        (idx = (+idx + 1));
    }
    // source line 195, bytecode pc 176
    xs.log_hsq("mRoundCfg:", mRoundCfg);
    // source line 198, bytecode pc 195
    (fistCfg = mRoundCfg.params.to[0]);
    // source line 199, bytecode pc 222
    xs.log_hsq("mRoundCfg11:", fistCfg);
    if (fistCfg.event) {
        // source line 202, bytecode pc 258
        xs.log_hsq("isevent");
        // source line 204, bytecode pc 263
        (isHaveFs = false);
        for (var key in fistCfg.event) {
            // source line 206, bytecode pc 311
            xs.log_hsq("key:", key);
            // source line 207, bytecode pc 347
            xs.log_hsq("val:", fistCfg.event[key]);
            if (!((fistCfg.event[key] == "fs"))) continue;
            // source line 209, bytecode pc 375
            (isHaveFs = true);
        }
        if (!isHaveFs) {
            // source line 213, bytecode pc 405
            return [ mRoundCfg ];
        }
    } else {
        // source line 216, bytecode pc 423
        return [ mRoundCfg ];
    }
    // source line 218, bytecode pc 446
    (mPopPos = mRoundCfg.to.pop());
    // source line 219, bytecode pc 470
    mRoundCfg.to.unshift(mPopPos);
    // source line 220, bytecode pc 498
    (mPopPosTo = mRoundCfg.params.to.pop());
    // source line 221, bytecode pc 527
    mRoundCfg.params.to.unshift(mPopPosTo);
    // source line 222, bytecode pc 554
    xs.log_hsq("mCfgkuanggu:", mRoundCfg);
    // source line 224, bytecode pc 567
    return [ mRoundCfg ];
},
    dispose_jieyin: function(_roundCfg) {
    var _roundCfgList, mToList, mTagLists, mSkillCfg, mCfg, mToCfgList, i, mToObj, mEventList;
    // source line 230, bytecode pc 8
    (_roundCfgList = []);
    // source line 231, bytecode pc 31
    (mToList = (_roundCfg.to || []));
    // source line 232, bytecode pc 60
    (mTagLists = this._getListObjForTagList(mToList, _roundCfg.from));
    // source line 233, bytecode pc 70
    (mSkillCfg = {});
    // source line 234, bytecode pc 77
    (mCfg = _roundCfg);
    if ((mTagLists.length > 0)) {
        // source line 238, bytecode pc 109
        (mToCfgList = mCfg.params.to);
        // source line 240, bytecode pc 114
        (i = 0);
        while ((i < mTagLists.length)) {
            // source line 241, bytecode pc 135
            (mToObj = mToCfgList[mTagLists[i]]);
            // source line 242, bytecode pc 170
            (mEventList = (mToObj.event ? mToObj.event : []));
            if (!mEventList.hasItem("self")) {
                // source line 244, bytecode pc 217
                mEventList.push("self");
            }
            // source line 246, bytecode pc 229
            (mToObj.event = mEventList);
            // source line 240, bytecode pc 243
            (i = (+i + 1));
        }
    }
    // source line 252, bytecode pc 281
    _roundCfgList.push(mCfg);
    // source line 253, bytecode pc 308
    xs.log_hsq("mCfgjieyin:", _roundCfgList);
    // source line 255, bytecode pc 312
    return _roundCfgList;
},
    dispose_jiuyuan: function(_roundCfg) {
    var _roundCfgList, mCfg, mFromCfgList, i, mFromObj, mCure, mEventList;
    // source line 260, bytecode pc 8
    (_roundCfgList = []);
    // source line 261, bytecode pc 15
    (mCfg = _roundCfg);
    // source line 264, bytecode pc 51
    (mFromCfgList = (mCfg.params ? mCfg.params.from : false));
    if (mFromCfgList) {
        // source line 266, bytecode pc 64
        (i = 0);
        while ((i < mFromCfgList.length)) {
            // source line 267, bytecode pc 81
            (mFromObj = mFromCfgList[i]);
            if (mFromObj) {
                // source line 269, bytecode pc 120
                (mCure = (mFromObj.cure ? mFromObj.cure : false));
                // source line 270, bytecode pc 155
                (mEventList = (mFromObj.event ? mFromObj.event : []));
                if (mCure) {
                    // source line 273, bytecode pc 184
                    mEventList.push("cure");
                }
                // source line 275, bytecode pc 196
                (mFromObj.event = mEventList);
            }
            // source line 266, bytecode pc 210
            (i = (+i + 1));
        }
    }
    // source line 285, bytecode pc 248
    _roundCfgList.push(mCfg);
    // source line 288, bytecode pc 252
    return _roundCfgList;
},
    dispose_lieren: function(_roundCfg) {
    var atkFromList, wisFromList, _roundCfgList, mCfg, mFromCfgList, i, mFromObj, mEventList;
    // source line 295, bytecode pc 25
    (atkFromList = this.getListForCfgByTagFrom(_roundCfg, "atk"));
    // source line 296, bytecode pc 51
    (wisFromList = this.getListForCfgByTagFrom(_roundCfg, "wis"));
    // source line 297, bytecode pc 60
    (_roundCfgList = []);
    // source line 298, bytecode pc 67
    (mCfg = _roundCfg);
    // source line 301, bytecode pc 103
    (mFromCfgList = (mCfg.params ? mCfg.params.from : false));
    if (mFromCfgList) {
        // source line 303, bytecode pc 116
        (i = 0);
        while ((i < mFromCfgList.length)) {
            // source line 304, bytecode pc 133
            (mFromObj = mFromCfgList[i]);
            if (mFromObj) {
                // source line 306, bytecode pc 176
                (mEventList = (mFromObj.event ? mFromObj.event : []));
                if (!atkFromList) {
                    // source line 309, bytecode pc 206
                    mEventList.push("noatk");
                }
                if (!wisFromList) {
                    // source line 313, bytecode pc 236
                    mEventList.push("nowis");
                }
                // source line 315, bytecode pc 248
                (mFromObj.event = mEventList);
            }
            // source line 303, bytecode pc 262
            (i = (+i + 1));
        }
    }
    // source line 323, bytecode pc 300
    _roundCfgList.push(mCfg);
    // source line 325, bytecode pc 304
    return _roundCfgList;
},
    dispose_general: function(_roundCfg, eventStr, tagList) {
    var _roundCfgList, mToList, mTagLists, mSkillCfg, mCfg, mToCfgList, i, mToObj, mEventList;
    // source line 331, bytecode pc 8
    (_roundCfgList = []);
    // source line 332, bytecode pc 31
    (mToList = (_roundCfg.to || []));
    // source line 333, bytecode pc 55
    (mTagLists = this._getListObjForTagList(mToList, tagList));
    // source line 334, bytecode pc 65
    (mSkillCfg = {});
    // source line 335, bytecode pc 72
    (mCfg = _roundCfg);
    if ((mTagLists.length > 0)) {
        // source line 339, bytecode pc 104
        (mToCfgList = mCfg.params.to);
        // source line 341, bytecode pc 109
        (i = 0);
        while ((i < mTagLists.length)) {
            // source line 342, bytecode pc 130
            (mToObj = mToCfgList[mTagLists[i]]);
            // source line 343, bytecode pc 165
            (mEventList = (mToObj.event ? mToObj.event : []));
            if (!mEventList.hasItem(eventStr)) {
                // source line 345, bytecode pc 208
                mEventList.push(eventStr);
            }
            // source line 347, bytecode pc 220
            (mToObj.event = mEventList);
            // source line 341, bytecode pc 234
            (i = (+i + 1));
        }
    }
    // source line 353, bytecode pc 272
    _roundCfgList.push(mCfg);
    // source line 356, bytecode pc 276
    return _roundCfgList;
},
    getListForCfgByTag: function(_roundCfg, tagStr) {
    var mTagList, mToList, toIdx, rowCfg;
    // source line 362, bytecode pc 8
    (mTagList = []);
    // source line 363, bytecode pc 31
    (mToList = (_roundCfg.to || []));
    // source line 365, bytecode pc 36
    (toIdx = 0);
    while ((toIdx < _roundCfg.params.to.length)) {
        // source line 366, bytecode pc 63
        (rowCfg = _roundCfg.params.to[toIdx]);
        if (rowCfg[tagStr]) {
            // source line 368, bytecode pc 98
            mTagList.push(mToList[toIdx]);
        }
        // source line 365, bytecode pc 117
        (toIdx = (+toIdx + 1));
    }
    // source line 374, bytecode pc 150
    return mTagList;
},
    getListForCfgByNoTagTo: function(_roundCfg, tagStr) {
    var mTagList, mToList, toIdx, rowCfg;
    // source line 381, bytecode pc 8
    (mTagList = []);
    // source line 382, bytecode pc 31
    (mToList = (_roundCfg.to || []));
    // source line 384, bytecode pc 36
    (toIdx = 0);
    while ((toIdx < _roundCfg.params.to.length)) {
        // source line 385, bytecode pc 63
        (rowCfg = _roundCfg.params.to[toIdx]);
        if (!rowCfg[tagStr]) {
            // source line 388, bytecode pc 99
            mTagList.push(mToList[toIdx]);
        }
        // source line 384, bytecode pc 113
        (toIdx = (+toIdx + 1));
    }
    // source line 391, bytecode pc 146
    return mTagList;
},
    getListForCfgByTagFrom: function(_roundCfg, tagStr) {
    var mTagList, mToList, isHave, maxLen, toIdx, rowCfg;
    // source line 397, bytecode pc 8
    (mTagList = []);
    // source line 398, bytecode pc 31
    (mToList = (_roundCfg.from || []));
    // source line 399, bytecode pc 36
    (isHave = false);
    // source line 400, bytecode pc 82
    (maxLen = (_roundCfg.params.from ? _roundCfg.params.from.length : 0));
    // source line 401, bytecode pc 87
    (toIdx = 0);
    while ((toIdx < maxLen)) {
        // source line 402, bytecode pc 114
        (rowCfg = _roundCfg.params.from[toIdx]);
        // source line 403, bytecode pc 141
        xs.log_hsq("rowCfg", rowCfg);
        if (rowCfg[tagStr]) {
            // source line 405, bytecode pc 158
            (isHave = true);
            // source line 406, bytecode pc 181
            mTagList.push(mToList[toIdx]);
        }
        // source line 401, bytecode pc 195
        (toIdx = (+toIdx + 1));
    }
    if (isHave) {
        // source line 410, bytecode pc 221
        return mTagList;
    }
    // source line 413, bytecode pc 223
    return false;
}
}));
// source line 421, bytecode pc 265
(xs.Models.FightRoundList.createWithFightItems = function(itemArray) {
    var _tmp, _newItem, i, _roundCfg, _roundDescType, _roundCfgList, cfgIdx, _skillNames, j, _round, _skillName;
    // source line 422, bytecode pc 23
    (_tmp = new xs.Models.FightRoundList());
    // source line 423, bytecode pc 38
    _tmp.init();
    if (itemArray) {
        // source line 427, bytecode pc 51
        (_newItem = null);
        // source line 428, bytecode pc 78
        xs.log_hsq("itemArray", itemArray);
        // source line 429, bytecode pc 83
        (i = 0);
        while ((i < itemArray.length)) {
            // source line 431, bytecode pc 100
            (_roundCfg = itemArray[i]);
            // source line 435, bytecode pc 119
            (_roundDescType = (_roundCfg.type || 0));
            if (((_roundDescType === 0) || (_roundDescType === 1))) {
                if (("mo_kurou" == _roundCfg.skill)) {
                    // source line 440, bytecode pc 186
                    xs.log_hsq("dis mo_kurou", _roundCfg);
                    // source line 441, bytecode pc 208
                    (_roundCfgList = _tmp.dispose_mo_kurou(_roundCfg));
                    // source line 442, bytecode pc 213
                    (cfgIdx = 0);
                    while ((cfgIdx < _roundCfgList.length)) {
                        // source line 443, bytecode pc 243
                        (_newItem = new xs.Models.FightRoundItem());
                        // source line 445, bytecode pc 266
                        _newItem.init(_roundCfgList[cfgIdx]);
                        // source line 446, bytecode pc 285
                        _tmp.push(_newItem);
                        // source line 442, bytecode pc 299
                        (cfgIdx = (+cfgIdx + 1));
                    }
                } else {
                    if ((_roundCfg.skill.indexOf("luanwu") >= 0)) {
                        // source line 451, bytecode pc 383
                        xs.log_hsq("dis luanwu");
                        // source line 452, bytecode pc 405
                        (_roundCfgList = _tmp.dispose_luanwu(_roundCfg));
                        // source line 453, bytecode pc 410
                        (cfgIdx = 0);
                        while ((cfgIdx < _roundCfgList.length)) {
                            // source line 454, bytecode pc 440
                            (_newItem = new xs.Models.FightRoundItem());
                            // source line 456, bytecode pc 463
                            _newItem.init(_roundCfgList[cfgIdx]);
                            // source line 457, bytecode pc 482
                            _tmp.push(_newItem);
                            // source line 453, bytecode pc 496
                            (cfgIdx = (+cfgIdx + 1));
                        }
                    } else {
                        if ((_roundCfg.skill.indexOf("_nuyan") >= 0)) {
                            // source line 462, bytecode pc 580
                            xs.log_hsq("dis luanwu");
                            // source line 463, bytecode pc 602
                            (_roundCfgList = _tmp.dispose_nuyan(_roundCfg));
                            // source line 464, bytecode pc 607
                            (cfgIdx = 0);
                            while ((cfgIdx < _roundCfgList.length)) {
                                // source line 465, bytecode pc 637
                                (_newItem = new xs.Models.FightRoundItem());
                                // source line 467, bytecode pc 660
                                _newItem.init(_roundCfgList[cfgIdx]);
                                // source line 468, bytecode pc 679
                                _tmp.push(_newItem);
                                // source line 464, bytecode pc 693
                                (cfgIdx = (+cfgIdx + 1));
                            }
                        } else {
                            if (((_roundCfg.skill.indexOf("kuanggu") >= 0) || (_roundCfg.skill.indexOf("shixue") >= 0))) {
                                // source line 473, bytecode pc 810
                                xs.log_hsq("dis kuanggu");
                                // source line 474, bytecode pc 832
                                (_roundCfgList = _tmp.dispose_kuanggu(_roundCfg));
                                // source line 475, bytecode pc 837
                                (cfgIdx = 0);
                                while ((cfgIdx < _roundCfgList.length)) {
                                    // source line 476, bytecode pc 867
                                    (_newItem = new xs.Models.FightRoundItem());
                                    // source line 478, bytecode pc 890
                                    _newItem.init(_roundCfgList[cfgIdx]);
                                    // source line 479, bytecode pc 909
                                    _tmp.push(_newItem);
                                    // source line 475, bytecode pc 923
                                    (cfgIdx = (+cfgIdx + 1));
                                }
                            } else {
                                if ((_roundCfg.skill.indexOf("jieyin") >= 0)) {
                                    // source line 484, bytecode pc 1007
                                    xs.log_hsq("dis jieyin_v5");
                                    // source line 485, bytecode pc 1029
                                    (_roundCfgList = _tmp.dispose_jieyin(_roundCfg));
                                    // source line 486, bytecode pc 1034
                                    (cfgIdx = 0);
                                    while ((cfgIdx < _roundCfgList.length)) {
                                        // source line 487, bytecode pc 1064
                                        (_newItem = new xs.Models.FightRoundItem());
                                        // source line 489, bytecode pc 1087
                                        _newItem.init(_roundCfgList[cfgIdx]);
                                        // source line 490, bytecode pc 1106
                                        _tmp.push(_newItem);
                                        // source line 486, bytecode pc 1120
                                        (cfgIdx = (+cfgIdx + 1));
                                    }
                                } else {
                                    if ((_roundCfg.skill.indexOf("jiuyuan") >= 0)) {
                                        // source line 496, bytecode pc 1204
                                        xs.log_hsq("dis jiuyuan");
                                        // source line 497, bytecode pc 1226
                                        (_roundCfgList = _tmp.dispose_jiuyuan(_roundCfg));
                                        // source line 499, bytecode pc 1231
                                        (cfgIdx = 0);
                                        while ((cfgIdx < _roundCfgList.length)) {
                                            // source line 500, bytecode pc 1261
                                            (_newItem = new xs.Models.FightRoundItem());
                                            // source line 502, bytecode pc 1284
                                            _newItem.init(_roundCfgList[cfgIdx]);
                                            // source line 503, bytecode pc 1303
                                            _tmp.push(_newItem);
                                            // source line 499, bytecode pc 1317
                                            (cfgIdx = (+cfgIdx + 1));
                                        }
                                    } else {
                                        if ((_roundCfg.skill.indexOf("lieren") >= 0)) {
                                            // source line 509, bytecode pc 1401
                                            xs.log_hsq("dis lieren");
                                            // source line 510, bytecode pc 1423
                                            (_roundCfgList = _tmp.dispose_lieren(_roundCfg));
                                            // source line 512, bytecode pc 1428
                                            (cfgIdx = 0);
                                            while ((cfgIdx < _roundCfgList.length)) {
                                                // source line 513, bytecode pc 1458
                                                (_newItem = new xs.Models.FightRoundItem());
                                                // source line 515, bytecode pc 1481
                                                _newItem.init(_roundCfgList[cfgIdx]);
                                                // source line 516, bytecode pc 1500
                                                _tmp.push(_newItem);
                                                // source line 512, bytecode pc 1514
                                                (cfgIdx = (+cfgIdx + 1));
                                            }
                                        } else {
                                            if (((_roundCfg.skill.indexOf("qixi") >= 0) || (_roundCfg.skill.indexOf("tiaoxin") >= 0))) {
                                                // source line 521, bytecode pc 1631
                                                xs.log_hsq("dis qixi_v3");
                                                // source line 522, bytecode pc 1684
                                                (_roundCfgList = _tmp.dispose_general(_roundCfg, "nodef", _tmp.getListForCfgByNoTagTo(_roundCfg, "def")));
                                                // source line 523, bytecode pc 1689
                                                (cfgIdx = 0);
                                                while ((cfgIdx < _roundCfgList.length)) {
                                                    // source line 524, bytecode pc 1719
                                                    (_newItem = new xs.Models.FightRoundItem());
                                                    // source line 526, bytecode pc 1742
                                                    _newItem.init(_roundCfgList[cfgIdx]);
                                                    // source line 527, bytecode pc 1761
                                                    _tmp.push(_newItem);
                                                    // source line 523, bytecode pc 1775
                                                    (cfgIdx = (+cfgIdx + 1));
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                // source line 534, bytecode pc 1823
                (_newItem = new xs.Models.FightRoundItem());
                // source line 536, bytecode pc 1842
                _newItem.init(_roundCfg);
                // source line 537, bytecode pc 1861
                _tmp.push(_newItem);
            } else {
                // source line 541, bytecode pc 1885
                this.error("createWithFightItems _roundDescType");
                // source line 571, bytecode pc 1957
                (_skillNames = [
    "Attack_$weapon_0",
    (_roundCfg.skill + "_0"),
    "Attack_$weapon_1",
    (_roundCfg.skill + "_1"),
    "Attack_$weapon_2"
]);
                // source line 574, bytecode pc 1962
                (j = 0);
                while ((j < 5)) {
                    // source line 575, bytecode pc 1992
                    (_newItem = new xs.Models.FightRoundItem());
                    // source line 578, bytecode pc 2013
                    (_round = { params: {} });
                    // source line 580, bytecode pc 2050
                    (_skillName = _skillNames[j].replace("$weapon", _roundCfg.weapon));
                    // source line 582, bytecode pc 2062
                    (_round.skill = _skillName);
                    if (((j === 0) || ((j === 2) || (j === 4)))) {
                        // source line 586, bytecode pc 2113
                        (_round.from = _roundCfg.attacker);
                        // source line 587, bytecode pc 2130
                        (_round.to = _roundCfg.from);
                        // source line 588, bytecode pc 2149
                        (_round.params.from = []);
                        // source line 589, bytecode pc 2176
                        (_round.params.to = _roundCfg.params.attack);
                    } else {
                        if ((j === 1)) {
                            // source line 592, bytecode pc 2208
                            (_round.from = _roundCfg.from);
                            // source line 593, bytecode pc 2225
                            (_round.to = _roundCfg.attacker);
                            // source line 594, bytecode pc 2244
                            (_round.params.from = []);
                            // source line 595, bytecode pc 2263
                            (_round.params.to = []);
                        } else {
                            // source line 598, bytecode pc 2285
                            (_round.from = _roundCfg.from);
                            // source line 599, bytecode pc 2302
                            (_round.to = _roundCfg.to);
                            // source line 600, bytecode pc 2329
                            (_round.params.from = _roundCfg.params.from);
                            // source line 601, bytecode pc 2356
                            (_round.params.to = _roundCfg.params.to);
                        }
                    }
                    // source line 604, bytecode pc 2375
                    _newItem.init(_round);
                    // source line 605, bytecode pc 2394
                    _tmp.push(_newItem);
                    // source line 574, bytecode pc 2408
                    (j = (+j + 1));
                }
            }
            // source line 429, bytecode pc 2435
            (i = (+i + 1));
        }
    } else {
        // source line 611, bytecode pc 2486
        xs.warn(("itemArray:" + itemArray));
    }
    // source line 614, bytecode pc 2490
    return _tmp;
});
// source line 617, bytecode pc 291
(xs.Models.FightRoundList.createWithStoryItems = function(itemArray) {
    var _tmp, _newItem, i;
    if ((itemArray && (itemArray.length > 0))) {
        // source line 625, bytecode pc 47
        (_tmp = new xs.Models.FightRoundList());
        // source line 626, bytecode pc 62
        _tmp.init();
        // source line 628, bytecode pc 67
        (_newItem = null);
        // source line 630, bytecode pc 72
        (i = 0);
        while ((i < itemArray.length)) {
            // source line 632, bytecode pc 102
            (_newItem = new xs.Models.FightStoryItem());
            // source line 634, bytecode pc 125
            _newItem.init(itemArray[i]);
            // source line 636, bytecode pc 144
            _tmp.push(_newItem);
            // source line 630, bytecode pc 158
            (i = (+i + 1));
        }
        // source line 639, bytecode pc 181
        return _tmp;
    } else {
        // source line 643, bytecode pc 188
        return null;
    }
});
