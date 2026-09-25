// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/UnionEncounterMapDialog.js:1
// source line 910, bytecode pc 504
(xs.Views.Dialog.UnionEncounterMapDialog = xs.Views.HungerLayer.extend({
    name: "UnionEncounterMapDialog",
    cfg: {
        title: { tag: 10, zOrder: 1 },
        union: { tagServer: 1, tagName: 2, tagGuanZhan: 5, tagUnionTag: 3, tagHuiseMengBan: 4 },
        key: { strIsHave: "isHaveSpectators", strFigUnion: "fightUnion" }
    },
    init: function(data) {
    if (!this._super()) {
        // source line 30, bytecode pc 19
        return false;
    }
    // source line 32, bytecode pc 67
    xs.Scene.Mgr.saveStatus("UnionEncounterMapDialogParam", data.Clone());
    // source line 33, bytecode pc 82
    (this.data = data.mdata);
    // source line 34, bytecode pc 97
    (this.type = data.type);
    // source line 35, bytecode pc 127
    xs.log_hsq("thistype", this.type);
    // source line 36, bytecode pc 135
    (this.isHaveNewWar = false);
    // source line 38, bytecode pc 160
    (this.isThisWeek = (this.data.is_this_week || false));
    // source line 40, bytecode pc 200
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_Fight_Chaos);
    // source line 42, bytecode pc 213
    (this.unionWinWireList = {});
    // source line 43, bytecode pc 225
    (this.winTagList = []);
    // source line 45, bytecode pc 233
    (this.lblTitle = null);
    // source line 46, bytecode pc 241
    (this.lblDesc = null);
    // source line 47, bytecode pc 249
    (this.btnCanel = null);
    // source line 48, bytecode pc 257
    (this.btnConfirm = null);
    // source line 49, bytecode pc 265
    (this.btnClose = null);
    // source line 53, bytecode pc 299
    (this.objLeftUn = this.data.info.slice(0, 8));
    // source line 54, bytecode pc 334
    (this.objRightUn = this.data.info.slice(8, 16));
    // source line 56, bytecode pc 368
    (this.ccbNode = xs.ccb_reader.load("ccb3/unionEncounterSubject.ccbi"));
    // source line 57, bytecode pc 411
    this.ccbNode.setContentSize(cc.size(1936, 600));
    // source line 58, bytecode pc 458
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 62, bytecode pc 486
    (this.m_scrollView = cc.ScrollView.create());
    // source line 65, bytecode pc 511
    this.m_scrollView.setContainer(this.ccbNode);
    // source line 66, bytecode pc 554
    this.m_scrollView.setViewSize(cc.size(1130, 600));
    // source line 67, bytecode pc 597
    this.m_scrollView.setContentSize(cc.size(1936, 600));
    // source line 70, bytecode pc 626
    this.m_scrollView.setDirection(cc.SCROLLVIEW_DIRECTION_HORIZONTAL);
    // source line 71, bytecode pc 718
    xs.Utils.Node.attachNodes(this, this.m_scrollView, { desc: "c", offset: cc.p(-564, -300), sc: true });
    // source line 73, bytecode pc 757
    (this.m_close = xs.Views.Btn.createByStyleId("BS_Close"));
    // source line 75, bytecode pc 843
    xs.Utils.Node.attachNodes(this, this.m_close, { desc: "rt", offset: cc.p(-40, -40), sc: true });
    // source line 77, bytecode pc 867
    this.m_close.setOnClickCallBack(function() {
    // source line 78, bytecode pc 32
    xs.Scene.Mgr.loadStatusAndClear("UnionEncounterMapDialogParam");
    // source line 79, bytecode pc 59
    xs.Views.Mgr.hideDialog();
    // source line 80, bytecode pc 109
    xs.log_xjf("xs.Views.Mgr.getLastViewName()", xs.Views.Mgr.getLastViewName());
    if ((xs.Views.Mgr.getLastViewName() != "UnionDialog")) {
        // source line 82, bytecode pc 193
        xs.Views.Mgr.showDialogByName("UnionDialog", { pageIdx: 5 });
    }
});
    // source line 88, bytecode pc 901
    (this.ccbNode_time = xs.ccb_reader.load("ccb3/unionEncounterFlow.ccbi"));
    // source line 90, bytecode pc 930
    this.ccbNode_time.setAnchorPoint(xs.ap_bc);
    // source line 91, bytecode pc 1014
    xs.Utils.Node.attachNodes(this, this.ccbNode_time, { desc: "cb", offset: cc.p(0, 0), sc: true });
    // source line 92, bytecode pc 1027
    this._initTimeCfg();
    // source line 95, bytecode pc 1040
    this._initConPlace();
    // source line 96, bytecode pc 1053
    this._initializeBtn();
    // source line 98, bytecode pc 1068
    this._initializeCcb(1);
    // source line 102, bytecode pc 1081
    this._initTile();
    // source line 104, bytecode pc 1094
    this._initUnionElement();
    // source line 108, bytecode pc 1107
    this._setAllUnionElement();
    // source line 109, bytecode pc 1120
    this._setAllUnionWinWire();
    // source line 112, bytecode pc 1142
    this.schedule(this.onCountDown, 1);
    // source line 113, bytecode pc 1155
    this.onCountDown();
    // source line 118, bytecode pc 1157
    return true;
},
    _findParentForTag: function(mTg) {
    var mBai, mShi, AdvTag;
    // source line 123, bytecode pc 24
    (mBai = parseInt((mTg / 100)));
    // source line 124, bytecode pc 56
    (mShi = parseInt(((mTg - (mBai * 100)) / 10)));
    // source line 126, bytecode pc 61
    (AdvTag = null);
    if ((mTg < 500)) {
        // source line 128, bytecode pc 107
        return (((mBai + 1) * 100) + (parseInt((mShi / 2)) * 10));
    } else {
        // source line 131, bytecode pc 146
        return (((mBai - 1) * 100) + (parseInt((mShi / 2)) * 10));
    }
},
    _findChildForTag: function(mTg) {
    var mBai, mShi, AdvTag, tag1, tag2;
    // source line 137, bytecode pc 24
    (mBai = parseInt((mTg / 100)));
    // source line 138, bytecode pc 56
    (mShi = parseInt(((mTg - (mBai * 100)) / 10)));
    // source line 140, bytecode pc 61
    (AdvTag = null);
    // source line 141, bytecode pc 66
    (tag1 = null);
    // source line 142, bytecode pc 71
    (tag2 = null);
    if ((mTg == 500)) {
        // source line 144, bytecode pc 90
        (tag1 = 400);
        // source line 145, bytecode pc 97
        (tag2 = 600);
    } else {
        if ((mTg < 500)) {
            // source line 148, bytecode pc 136
            (tag1 = (((mBai - 1) * 100) + ((mShi * 2) * 10)));
            // source line 149, bytecode pc 160
            (tag2 = (((mBai - 1) * 100) + (((mShi * 2) + 1) * 10)));
        } else {
            if ((mTg > 500)) {
                // source line 152, bytecode pc 199
                (tag1 = (((mBai + 1) * 100) + ((mShi * 2) * 10)));
                // source line 153, bytecode pc 223
                (tag2 = (((mBai + 1) * 100) + (((mShi * 2) + 1) * 10)));
            }
        }
    }
    // source line 156, bytecode pc 246
    return { tag1: tag1, tag2: tag2 }
},
    _initTimeCfg: function() {
    var lunList, getBuZhen, getWar, lsTime, lsMiaoshu, i, mLabel, mMiaoshuStr;
    // source line 163, bytecode pc 44
    (lunList = [ "16", "8", "4", "2" ]);
    // source line 165, bytecode pc 53
    (getBuZhen = "");
    // source line 166, bytecode pc 62
    (getWar = "");
    if ((this.type == xs.Constant_UnionWar_Server_Local)) {
        // source line 169, bytecode pc 93
        (getBuZhen = "getUnionWarBuZhenTimeStartThis");
        // source line 170, bytecode pc 102
        (getWar = "getUnionWarTimeStartThis");
    } else {
        // source line 172, bytecode pc 116
        (getBuZhen = "getUnionWarBuZhenTimeStartStride");
        // source line 173, bytecode pc 125
        (getWar = "getUnionWarTimeStartStride");
    }
    // source line 176, bytecode pc 134
    (lsTime = "LS_Nomb1");
    // source line 177, bytecode pc 143
    (lsMiaoshu = "");
    // source line 179, bytecode pc 148
    (i = 0);
    while ((i < 8)) {
        // source line 183, bytecode pc 235
        xs.Utils.UI.replaceCcbByCfg(this.ccbNode_time, [ { tag: (10 + i), type: "ls", id: lsTime } ], this);
        // source line 185, bytecode pc 263
        (mLabel = this.ccbNode_time.getChildByTag((10 + i)));
        if (((i % 2) == 0)) {
            // source line 188, bytecode pc 285
            (lsMiaoshu = "LS_duizhengtu_zi1");
            // source line 190, bytecode pc 384
            mLabel.setString(xs.Profile.GameData.Mgr.getInstance().UnionWar.getUnionWar()[getBuZhen](lunList[parseInt((i / 2))]));
        } else {
            // source line 192, bytecode pc 398
            (lsMiaoshu = "LS_duizhengtu_zi2");
            // source line 193, bytecode pc 497
            mLabel.setString(xs.Profile.GameData.Mgr.getInstance().UnionWar.getUnionWar()[getWar](lunList[parseInt((i / 2))]));
        }
        // source line 195, bytecode pc 547
        (mMiaoshuStr = (this.ccbNode_time.getChildByTag((30 + i)).getString() || ""));
        // source line 199, bytecode pc 636
        xs.Utils.UI.replaceCcbByCfg(this.ccbNode_time, [ { tag: (30 + i), type: "ls", id: lsMiaoshu, string: mMiaoshuStr } ], this);
        // source line 179, bytecode pc 650
        (i = (+i + 1));
    }
},
    _getIdList: function(othList) {
    var mList, i, mUnionId, _isNull;
    // source line 208, bytecode pc 8
    (mList = []);
    // source line 209, bytecode pc 13
    (i = 0);
    while ((i < othList.length)) {
        // source line 210, bytecode pc 35
        (mUnionId = othList[i].union_id);
        // source line 212, bytecode pc 48
        (_isNull = (mUnionId == undefined));
        if (!_isNull) {
            // source line 215, bytecode pc 76
            mList.push(mUnionId);
        }
        // source line 209, bytecode pc 90
        (i = (+i + 1));
    }
    // source line 218, bytecode pc 113
    return mList;
},
    _initConPlace: function() {
    var type, leftIdList, rightIdList, mUnionId;
    // source line 224, bytecode pc 4
    (type = 1);
    // source line 225, bytecode pc 27
    (leftIdList = this._getIdList(this.objLeftUn));
    // source line 226, bytecode pc 50
    (rightIdList = this._getIdList(this.objRightUn));
    // source line 227, bytecode pc 134
    (mUnionId = xs.Utils.parseStringSafe(xs.Profile.GameData.Mgr.getInstance().Union.getUnion().getUnionId()));
    if (leftIdList.inArray(mUnionId)) {
        // source line 230, bytecode pc 162
        (type = 0);
    } else {
        if (rightIdList.inArray(mUnionId)) {
            // source line 232, bytecode pc 196
            (type = 2);
        }
    }
    // source line 235, bytecode pc 243
    this.m_scrollView.setContentOffset(cc.p((-403 * type), 0));
},
    _setUnionWireByTag: function(mTag) {
    if (mTag) {
        // source line 241, bytecode pc 44
        this.ccbNode.getChildByTag((mTag + 1)).setVisible(true);
    }
},
    _setUnionWinWire: function(unionSpTag, mUnionData) {
    var unionId, tagList;
    // source line 249, bytecode pc 37
    (unionId = String((mUnionData.union_id || "xxx")));
    // source line 251, bytecode pc 76
    (tagList = (this.unionWinWireList[unionId] ? this.unionWinWireList[unionId] : []));
    // source line 254, bytecode pc 95
    tagList.push(unionSpTag);
    // source line 257, bytecode pc 109
    (this.unionWinWireList[unionId] = tagList);
},
    _setAllUnionWinWire: function() {
    var unionWinObj, maxWinTagList, unionId, tagList, mTagIdx;
    // source line 263, bytecode pc 22
    (unionWinObj = this._getMaxTagList(this.unionWinWireList));
    // source line 264, bytecode pc 37
    (this.unionWinWireList = unionWinObj.unionWinWireList);
    // source line 265, bytecode pc 49
    (maxWinTagList = unionWinObj.maxUnionWinList);
    // source line 266, bytecode pc 59
    (this.newWarList = maxWinTagList);
    for (var unionId in this.unionWinWireList) {
        // source line 271, bytecode pc 92
        (tagList = this.unionWinWireList[unionId]);
        // source line 272, bytecode pc 109
        this._setUnionWinWireWitchTagList(tagList);
    }
    // source line 276, bytecode pc 122
    (mTagIdx = 0);
    while ((mTagIdx < maxWinTagList.length)) {
        // source line 277, bytecode pc 149
        this._setNewUnionWarWinWire(maxWinTagList[mTagIdx]);
        // source line 276, bytecode pc 163
        (mTagIdx = (+mTagIdx + 1));
    }
},
    _setUnionWireByTag_newWar: function(mTag) {
    var unionSp;
    // source line 284, bytecode pc 16
    this._setUnionWireByTag(mTag);
    // source line 285, bytecode pc 54
    (unionSp = this.ccbNode.getChildByTag(this._findParentForTag(mTag)));
    // source line 286, bytecode pc 99
    unionSp.getChildByTag(this.cfg.union.tagUnionTag).setVisible(false);
    // source line 287, bytecode pc 175
    unionSp.getChildByTag(this.cfg.union.tagUnionTag).setString(xs.Tools.String.createString("union_zanwu"));
    // source line 288, bytecode pc 220
    unionSp.getChildByTag(this.cfg.union.tagHuiseMengBan).setVisible(false);
},
    _setNewUnionWarWinWire: function(mTag) {
    var mLunCiNum, isNewWarEnd, isHaveWar;
    // source line 296, bytecode pc 37
    (mLunCiNum = this._getLunCiAndTag(this._findParentForTag(mTag)).lun);
    // source line 297, bytecode pc 110
    (isNewWarEnd = xs.Profile.GameData.Mgr.getInstance().UnionWar.getUnionWar().getNewWarIsEnd(mLunCiNum, this.type));
    // source line 299, bytecode pc 130
    (isHaveWar = this._isWarForTag(mTag));
    if (!this.isThisWeek) {
        // source line 303, bytecode pc 159
        this._setUnionWireByTag_newWar(mTag);
    } else {
        if ((isNewWarEnd || !isHaveWar)) {
            // source line 308, bytecode pc 199
            this._setUnionWireByTag_newWar(mTag);
        } else {
            // source line 313, bytecode pc 212
            (this.isHaveNewWar = true);
            // source line 314, bytecode pc 229
            this._setJiZhaning(mTag);
        }
    }
},
    _setLoopUnionWin: function(mTag) {
    var isHaveWar, mLunCiNum, isNewWarEnd;
    // source line 322, bytecode pc 19
    (isHaveWar = this._isWarForTag(mTag));
    // source line 323, bytecode pc 57
    (mLunCiNum = this._getLunCiAndTag(this._findParentForTag(mTag)).lun);
    // source line 324, bytecode pc 130
    (isNewWarEnd = xs.Profile.GameData.Mgr.getInstance().UnionWar.getUnionWar().getNewWarIsEnd(mLunCiNum, this.type));
    if ((isNewWarEnd || !isHaveWar)) {
        // source line 328, bytecode pc 165
        this._setUnionWireByTag_newWar(mTag);
    } else {
        // source line 332, bytecode pc 187
        this._setJiZhaning(mTag);
    }
},
    _setJiZhaning: function(mTag) {
    var unionTag, mUnionSp;
    // source line 337, bytecode pc 19
    (unionTag = this._findParentForTag(mTag));
    // source line 340, bytecode pc 44
    (mUnionSp = this.ccbNode.getChildByTag(unionTag));
    // source line 341, bytecode pc 120
    mUnionSp.getChildByTag(this.cfg.union.tagUnionTag).setString(xs.Tools.String.createString("union_JiZhaning"));
    // source line 343, bytecode pc 165
    mUnionSp.getChildByTag(this.cfg.union.tagUnionTag).setVisible(true);
    // source line 344, bytecode pc 210
    mUnionSp.getChildByTag(this.cfg.union.tagHuiseMengBan).setVisible(true);
},
    _isWarForTag: function(mTag) {
    var mParTag, mTagIdx, listinTag;
    // source line 351, bytecode pc 19
    (mParTag = this._findParentForTag(mTag));
    // source line 354, bytecode pc 24
    (mTagIdx = 0);
    while ((mTagIdx < this.winTagList.length)) {
        // source line 355, bytecode pc 44
        (listinTag = this.winTagList[mTagIdx]);
        if ((mParTag == listinTag)) {
            // source line 359, bytecode pc 58
            return true;
        }
        // source line 354, bytecode pc 72
        (mTagIdx = (+mTagIdx + 1));
    }
    // source line 362, bytecode pc 96
    return false;
},
    onCountDown: function() {
    var mTagIdx;
    if (this.isHaveNewWar) {
        // source line 370, bytecode pc 15
        (mTagIdx = 0);
        while ((mTagIdx < this.newWarList.length)) {
            // source line 371, bytecode pc 45
            this._setLoopUnionWin(this.newWarList[mTagIdx]);
            // source line 370, bytecode pc 59
            (mTagIdx = (+mTagIdx + 1));
        }
    } else {
        // source line 375, bytecode pc 88
        return void 0;
    }
},
    _setUnionWinWireWitchTagList: function(tagList) {
    var tagIdx, tag;
    // source line 382, bytecode pc 4
    (tagIdx = 0);
    while ((tagIdx < tagList.length)) {
        // source line 384, bytecode pc 21
        (tag = tagList[tagIdx]);
        // source line 386, bytecode pc 38
        this._setUnionWireByTag(tag);
        // source line 382, bytecode pc 52
        (tagIdx = (+tagIdx + 1));
    }
},
    _getMaxTagList: function(mUnionWinWireList) {
    var maxLength, maxUnionWin, mUnionName, mUnionInfo, winNum, winUnion, mTag;
    // source line 394, bytecode pc 4
    (maxLength = 0);
    // source line 395, bytecode pc 13
    (maxUnionWin = []);
    for (var mUnionName in mUnionWinWireList) {
        // source line 397, bytecode pc 40
        (mUnionInfo = mUnionWinWireList[mUnionName]);
        if (!((typeof(mUnionInfo) != "function"))) continue;
        // source line 399, bytecode pc 67
        (winNum = mUnionInfo.length);
        if (!((winNum > maxLength))) continue;
        // source line 401, bytecode pc 86
        (maxLength = winNum);
    }
    for (var mUnionName in mUnionWinWireList) {
        // source line 409, bytecode pc 121
        (winUnion = mUnionWinWireList[mUnionName]);
        if (!(((maxLength == winUnion.length) && (typeof(winUnion) != "function")))) continue;
        // source line 416, bytecode pc 176
        (mTag = mUnionWinWireList[mUnionName].pop());
        // source line 417, bytecode pc 195
        maxUnionWin.push(mTag);
    }
    // source line 422, bytecode pc 226
    return { maxUnionWinList: maxUnionWin, unionWinWireList: mUnionWinWireList }
},
    _maxLengthInList: function(mList) {
    var maxLen, maxObj, i, mVal, _isNull, mInfo;
    // source line 431, bytecode pc 4
    (maxLen = 0);
    // source line 432, bytecode pc 9
    (maxObj = null);
    for (var i in mList) {
        // source line 434, bytecode pc 36
        (mVal = mList[i]);
        // source line 435, bytecode pc 56
        (_isNull = this._isNull(mVal));
        if (!(!_isNull)) continue;
        // source line 437, bytecode pc 77
        (mInfo = mVal.info);
        if (!((mInfo.length > maxLen))) continue;
        // source line 439, bytecode pc 106
        (maxLen = mInfo.length);
        // source line 440, bytecode pc 113
        (maxObj = mVal);
    }
    // source line 446, bytecode pc 144
    return { obj: maxObj, len: maxLen }
},
    _isNull: function(mStr) {
    if (((mStr == null) || ((mStr == undefined) || (mStr.union_id == undefined)))) {
        // source line 454, bytecode pc 46
        return true;
    }
    // source line 456, bytecode pc 48
    return false;
},
    _setAllUnionElement: function() {
    var lefTagInit, rigTagInit, lefMax, lefLeg, rigMax, rigLeg, mName, mWinSpTag, mTag, mSp, mlName;
    // source line 464, bytecode pc 5
    (lefTagInit = 100);
    // source line 465, bytecode pc 12
    (rigTagInit = 900);
    // source line 467, bytecode pc 50
    this._settUnionElement(this.objLeftUn, this.objRightUn, lefTagInit, rigTagInit, 8);
    // source line 469, bytecode pc 78
    (lefMax = this._maxLengthInList(this.objLeftUn).obj);
    // source line 470, bytecode pc 106
    (lefLeg = this._maxLengthInList(this.objLeftUn).len);
    // source line 471, bytecode pc 134
    (rigMax = this._maxLengthInList(this.objRightUn).obj);
    // source line 472, bytecode pc 162
    (rigLeg = this._maxLengthInList(this.objRightUn).len);
    if (((lefLeg > 4) || (rigLeg > 4))) {
        // source line 475, bytecode pc 194
        (mName = "");
        // source line 476, bytecode pc 201
        (mWinSpTag = 400);
        if ((lefLeg > rigLeg)) {
            // source line 478, bytecode pc 220
            (mName = lefMax);
            // source line 479, bytecode pc 227
            (mWinSpTag = 400);
        } else {
            // source line 481, bytecode pc 239
            (mName = rigMax);
            // source line 482, bytecode pc 246
            (mWinSpTag = 600);
        }
        // source line 486, bytecode pc 253
        (mTag = 500);
        // source line 487, bytecode pc 278
        (mSp = this.ccbNode.getChildByTag(mTag));
        // source line 488, bytecode pc 285
        (mlName = mName);
        if (((lefLeg >= 4) && (rigLeg >= 4))) {
            // source line 492, bytecode pc 330
            (mlName[this.cfg.key.strIsHave] = true);
            // source line 493, bytecode pc 356
            (mlName[this.cfg.key.strFigUnion] = []);
            // source line 494, bytecode pc 405
            mlName[this.cfg.key.strFigUnion].push(this._getUnionNameAndId(lefMax));
            // source line 495, bytecode pc 454
            mlName[this.cfg.key.strFigUnion].push(this._getUnionNameAndId(rigMax));
            // source line 497, bytecode pc 476
            this.winTagList.push(500);
        } else {
            // source line 499, bytecode pc 503
            (mlName[this.cfg.key.strIsHave] = false);
        }
        // source line 501, bytecode pc 530
        xs.log_hsq("mlNameE", mlName);
        // source line 503, bytecode pc 551
        this._setUnionElement(mSp, mName);
        // source line 504, bytecode pc 568
        this._setUnionWireByTag(mTag);
    }
},
    _settUnionElement: function(leftUnions, rightUnions, lefTagInit, rigTagInit, maxLoop) {
    var bajinsiLeft, bajinsiRight, isHavePromotedLef, isHavePromotedRig, i, leftTag, leftSp, lefIshave, mlName, lefMax, rightTag, lrightSp, mrName, rigIshave, rigMan, right, rig1, rig2, left, lef1, lef2;
    // source line 517, bytecode pc 8
    (bajinsiLeft = []);
    // source line 518, bytecode pc 17
    (bajinsiRight = []);
    // source line 520, bytecode pc 22
    (isHavePromotedLef = false);
    // source line 521, bytecode pc 27
    (isHavePromotedRig = false);
    // source line 526, bytecode pc 32
    (i = 0);
    while ((i < maxLoop)) {
        if (((i % 2) == 0)) {
            // source line 528, bytecode pc 56
            (isHavePromotedLef = false);
            // source line 529, bytecode pc 61
            (isHavePromotedRig = false);
        }
        // source line 531, bytecode pc 75
        (leftTag = (lefTagInit + (i * 10)));
        // source line 532, bytecode pc 100
        (leftSp = this.ccbNode.getChildByTag(leftTag));
        // source line 533, bytecode pc 105
        (lefIshave = true);
        // source line 534, bytecode pc 116
        (mlName = leftUnions[i]);
        // source line 535, bytecode pc 121
        (lefMax = 0);
        if ((this._isNull(mlName) || (mlName == undefined))) {
            // source line 537, bytecode pc 162
            (lefIshave = false);
        }
        // source line 541, bytecode pc 189
        xs.log_hsq("lefIshave", lefIshave);
        if (lefIshave) {
            // source line 545, bytecode pc 233
            (lefMax = Math.max.apply(null, mlName.info));
            // source line 546, bytecode pc 254
            this._setUnionElement(leftSp, mlName);
        }
        if (((lefMax * 100) > lefTagInit)) {
            if (lefIshave) {
                // source line 553, bytecode pc 296
                bajinsiLeft.push(mlName);
                // source line 554, bytecode pc 301
                (isHavePromotedLef = true);
                // source line 556, bytecode pc 322
                this._setUnionWinWire(leftTag, mlName);
            }
        }
        // source line 560, bytecode pc 336
        (rightTag = (rigTagInit + (i * 10)));
        // source line 561, bytecode pc 361
        (lrightSp = this.ccbNode.getChildByTag(rightTag));
        // source line 562, bytecode pc 372
        (mrName = rightUnions[i]);
        // source line 563, bytecode pc 377
        (rigIshave = true);
        // source line 564, bytecode pc 382
        (rigMan = 0);
        if ((this._isNull(mrName) || (mrName == undefined))) {
            // source line 566, bytecode pc 423
            (rigIshave = false);
        }
        if (rigIshave) {
            // source line 574, bytecode pc 467
            (rigMan = Math.max.apply(null, mrName.info));
            // source line 575, bytecode pc 488
            this._setUnionElement(lrightSp, mrName);
        }
        if (((1000 - (rigMan * 100)) < rigTagInit)) {
            // source line 579, bytecode pc 534
            xs.log_hsq("rigTagInit", rigTagInit);
            // source line 580, bytecode pc 568
            xs.log_hsq("rigTagInit1", (900 - (rigMan * 100)));
            if (rigIshave) {
                // source line 583, bytecode pc 599
                xs.log_hsq("pushrig");
                // source line 586, bytecode pc 618
                bajinsiRight.push(mrName);
                // source line 587, bytecode pc 623
                (isHavePromotedRig = true);
                // source line 589, bytecode pc 644
                this._setUnionWinWire(rightTag, mrName);
            }
        }
        if (((i % 2) == 1)) {
            if (!isHavePromotedLef) {
                // source line 596, bytecode pc 688
                bajinsiLeft.push({});
            }
            if (!isHavePromotedRig) {
                // source line 599, bytecode pc 719
                bajinsiRight.push({});
                // source line 600, bytecode pc 742
                xs.log_hsq("pushrig2");
            }
            if ((!this._isNull(rightUnions[i]) && !this._isNull(rightUnions[(i - 1)]))) {
                // source line 605, bytecode pc 826
                (right = bajinsiRight[parseInt((i / 2))]);
                // source line 606, bytecode pc 839
                (rig1 = rightUnions[(i - 1)]);
                // source line 607, bytecode pc 850
                (rig2 = rightUnions[i]);
                // source line 608, bytecode pc 872
                (right[this.cfg.key.strIsHave] = true);
                // source line 609, bytecode pc 898
                (right[this.cfg.key.strFigUnion] = []);
                // source line 610, bytecode pc 947
                right[this.cfg.key.strFigUnion].push(this._getUnionNameAndId(rig1));
                // source line 611, bytecode pc 996
                right[this.cfg.key.strFigUnion].push(this._getUnionNameAndId(rig2));
                // source line 613, bytecode pc 1031
                this.winTagList.push(this._findParentForTag(rightTag));
            }
            if ((!this._isNull(leftUnions[i]) && !this._isNull(leftUnions[(i - 1)]))) {
                // source line 620, bytecode pc 1115
                (left = bajinsiLeft[parseInt((i / 2))]);
                // source line 621, bytecode pc 1128
                (lef1 = leftUnions[(i - 1)]);
                // source line 622, bytecode pc 1139
                (lef2 = leftUnions[i]);
                // source line 623, bytecode pc 1161
                (left[this.cfg.key.strIsHave] = true);
                // source line 624, bytecode pc 1187
                (left[this.cfg.key.strFigUnion] = []);
                // source line 625, bytecode pc 1236
                left[this.cfg.key.strFigUnion].push(this._getUnionNameAndId(lef1));
                // source line 626, bytecode pc 1285
                left[this.cfg.key.strFigUnion].push(this._getUnionNameAndId(lef2));
                // source line 630, bytecode pc 1320
                this.winTagList.push(this._findParentForTag(leftTag));
            }
        }
        // source line 526, bytecode pc 1334
        (i = (+i + 1));
    }
    if ((maxLoop > 1)) {
        // source line 643, bytecode pc 1400
        this._settUnionElement(bajinsiLeft, bajinsiRight, (lefTagInit + 100), (rigTagInit - 100), (maxLoop / 2));
    } else {
        // source line 646, bytecode pc 1407
        return void 0;
    }
},
    _getUnionNameAndId: function(mUnion) {
    // source line 651, bytecode pc 32
    return { unionName: mUnion.union_name, unionId: mUnion.union_id }
},
    _initTile: function() {
    var isThisWeek, titleStr;
    // source line 657, bytecode pc 9
    (isThisWeek = this.isThisWeek);
    // source line 658, bytecode pc 18
    (titleStr = "");
    if (isThisWeek) {
        // source line 660, bytecode pc 62
        (titleStr = xs.Tools.String.createString("union_thisEncounterMap"));
    } else {
        // source line 662, bytecode pc 103
        (titleStr = xs.Tools.String.createString("union_lastEncounterMap"));
    }
    // source line 664, bytecode pc 139
    (this.ccbNode_title = xs.ccb_reader.load("ccb3/0_7_10_DungeonTitle.ccbi", this));
    // source line 665, bytecode pc 181
    this.ccbNode_title.setContentSize(cc.size(340, 52));
    // source line 666, bytecode pc 210
    this.ccbNode_title.setAnchorPoint(xs.ap_tc);
    // source line 667, bytecode pc 245
    this.ccbNode_title.setZOrder(this.cfg.title.zOrder);
    // source line 672, bytecode pc 337
    xs.Utils.Node.attachNodes(this, this.ccbNode_title, { desc: "ct", offset: cc.p(-0, -0), sc: true });
    // source line 674, bytecode pc 411
    xs.Utils.replaceLabelWithString(this.ccbNode_title, this.cfg.title.tag, [ "LS_guanqiaName" ], [ titleStr ]);
    // source line 675, bytecode pc 450
    (this.mSubTile = xs.Factorys.Label.createByStyleId("LS_fightUI1"));
    // source line 676, bytecode pc 480
    xs.log_hsq("this.type", this.type);
    if ((this.type == 1)) {
        // source line 680, bytecode pc 618
        this.mSubTile.setString(xs.Tools.String.createStringWithArgsArray("union_everyFri", [
    xs.Profile.GameData.Mgr.getInstance().UnionWar.getUnionWar().getUnionWarBuZhenTimeStartThis("16")
]));
    } else {
        // source line 685, bytecode pc 748
        this.mSubTile.setString(xs.Tools.String.createStringWithArgsArray("union_everySat", [
    xs.Profile.GameData.Mgr.getInstance().UnionWar.getUnionWar().getUnionWarBuZhenTimeStartStride("16")
]));
    }
    // source line 690, bytecode pc 777
    this.mSubTile.setAnchorPoint(xs.ap_tc);
    // source line 694, bytecode pc 868
    xs.Utils.Node.attachNodes(this.ccbNode_title, this.mSubTile, { desc: "cb", offset: cc.p(-0, -0) });
},
    _gainListForTag: function(mPar, mNum) {
    var mList, mChildList, i, mTag, mTen, mge;
    // source line 700, bytecode pc 8
    (mList = []);
    // source line 701, bytecode pc 26
    (mChildList = mPar.getChildren());
    // source line 703, bytecode pc 31
    (i = 0);
    while ((i < mChildList.length)) {
        // source line 704, bytecode pc 74
        (mTag = parseInt(mChildList[i].getTag()));
        // source line 705, bytecode pc 84
        (mTen = (mTag % 10));
        // source line 706, bytecode pc 94
        (mge = (mTen % 10));
        if ((mge == mNum)) {
            // source line 708, bytecode pc 129
            mList.push(mChildList[i]);
        }
        // source line 703, bytecode pc 143
        (i = (+i + 1));
    }
    // source line 712, bytecode pc 166
    return mList;
},
    _initUnionElement: function() {
    var mChildList, i, mChild, mServer, mName, unionTag, huiseSp;
    // source line 718, bytecode pc 24
    (mChildList = this._gainListForTag(this.ccbNode, 0));
    // source line 720, bytecode pc 29
    (i = 0);
    while ((i < mChildList.length)) {
        // source line 721, bytecode pc 46
        (mChild = mChildList[i]);
        // source line 722, bytecode pc 81
        (mServer = mChild.getChildByTag(this.cfg.union.tagServer));
        // source line 723, bytecode pc 116
        (mName = mChild.getChildByTag(this.cfg.union.tagName));
        // source line 724, bytecode pc 151
        (unionTag = mChild.getChildByTag(this.cfg.union.tagUnionTag));
        if (!mServer) {
            // source line 726, bytecode pc 196
            (mServer = xs.Factorys.Label.createByStyleId("LS_wujiangInf1"));
            // source line 727, bytecode pc 232
            (mName = xs.Factorys.Label.createByStyleId("LS_wujiangInf1"));
            // source line 728, bytecode pc 274
            (unionTag = xs.Factorys.Label.createByStyleIdWithStringId("LS_yuanfenInf1", "union_zanwu"));
            // source line 731, bytecode pc 300
            mServer.setAnchorPoint(xs.ap_lt);
            // source line 732, bytecode pc 326
            mName.setAnchorPoint(xs.ap_lb);
            // source line 733, bytecode pc 352
            unionTag.setAnchorPoint(xs.ap_c);
            // source line 734, bytecode pc 465
            xs.Utils.Node.attachNodes(mChild, mServer, { desc: "lt", offset: cc.p(15, -7) }, { zOrder: 1, tag: this.cfg.union.tagServer });
            // source line 735, bytecode pc 578
            xs.Utils.Node.attachNodes(mChild, mName, { desc: "lb", offset: cc.p(15, 7) }, { zOrder: 1, tag: this.cfg.union.tagName });
            // source line 736, bytecode pc 690
            xs.Utils.Node.attachNodes(mChild, unionTag, { desc: "c", offset: cc.p(0, 0) }, { zOrder: 3, tag: this.cfg.union.tagUnionTag });
            // source line 740, bytecode pc 732
            (huiseSp = xs.Factorys.Sprite.create("GuildDialog_duizhenganniu2", "GuildDialog"));
            // source line 742, bytecode pc 844
            xs.Utils.Node.attachNodes(mChild, huiseSp, { desc: "c", offset: cc.p(0, 0) }, { zOrder: 2, tag: this.cfg.union.tagHuiseMengBan });
        }
        // source line 745, bytecode pc 865
        mServer.setString("");
        // source line 746, bytecode pc 886
        mName.setString("");
        // source line 720, bytecode pc 900
        (i = (+i + 1));
    }
},
    _setUnionElement: function(mNode, mUnionObj) {
    var mServer, mName, isGuanZhan, mUnionTag, mBtn, mInfo, mLunCi, mDiJiChang, union_war_id, fightUnions, mTimeType, mServerType;
    // source line 753, bytecode pc 34
    (mServer = mNode.getChildByTag(this.cfg.union.tagServer));
    // source line 754, bytecode pc 69
    (mName = mNode.getChildByTag(this.cfg.union.tagName));
    // source line 755, bytecode pc 104
    mServer.setString((mUnionObj.server_name || ""));
    // source line 756, bytecode pc 139
    mName.setString((mUnionObj.union_name || ""));
    // source line 757, bytecode pc 170
    (isGuanZhan = (mUnionObj[this.cfg.key.strIsHave] || false));
    if (((mUnionObj.union_name != "") && (mUnionObj.union_name != undefined))) {
        // source line 760, bytecode pc 254
        mNode.getChildByTag(this.cfg.union.tagUnionTag).setVisible(false);
        // source line 761, bytecode pc 299
        mNode.getChildByTag(this.cfg.union.tagHuiseMengBan).setVisible(false);
    }
    if (isGuanZhan) {
        // source line 765, bytecode pc 325
        (mUnionTag = mNode.getTag());
        // source line 766, bytecode pc 367
        (mBtn = this.ccbNode.getChildByTag((mUnionTag + this.cfg.union.tagGuanZhan)));
        // source line 767, bytecode pc 387
        (mInfo = this._getLunCiAndTag(mUnionTag));
        // source line 768, bytecode pc 405
        (mLunCi = mInfo.lun);
        // source line 769, bytecode pc 423
        (mDiJiChang = mInfo.chang);
        // source line 770, bytecode pc 491
        (union_war_id = xs.Profile.GameData.Mgr.getInstance().UnionWar.getUnionWar().getUnionWarId());
        // source line 771, bytecode pc 521
        (fightUnions = mUnionObj[this.cfg.key.strFigUnion]);
        // source line 772, bytecode pc 567
        (mTimeType = (this.isThisWeek ? xs.Constant_UnionWar_Time_ThisEncounter : xs.Constant_UnionWar_Time_LastEncounter));
        // source line 773, bytecode pc 615
        (mServerType = ((this.type == 1) ? xs.Constant_UnionWar_Server_Local : xs.Constant_UnionWar_Server_International));
        // source line 775, bytecode pc 648
        xs.log_xjf("mTimeType", mTimeType);
        // source line 776, bytecode pc 681
        xs.log_xjf("mServerType", mServerType);
        // source line 777, bytecode pc 714
        xs.log_xjf("mLunCi", mLunCi);
        // source line 778, bytecode pc 747
        xs.log_xjf("mDiJiChang", mDiJiChang);
        // source line 779, bytecode pc 780
        xs.log_xjf("union_war_id", union_war_id);
        // source line 780, bytecode pc 813
        xs.log_xjf("fightUnions", fightUnions);
        // source line 781, bytecode pc 830
        mBtn.setVisible(true);
        // source line 832, bytecode pc 864
        mBtn.setOnClickCallBack(function() {
    var params, fightingProcess;
    // source line 787, bytecode pc 57
    (params = { union_war_id: union_war_id, battle_rounds: mLunCi, tag: mDiJiChang });
    // source line 793, bytecode pc 164
    (fightingProcess = xs.Profile.GameData.Mgr.getInstance().UnionWar.getUnionWar().getFightingProcess(params.union_war_id, params.battle_rounds, params.tag));
    if (fightingProcess) {
        // source line 797, bytecode pc 197
        fightingProcess.setEncounterWeekType(mTimeType);
        // source line 798, bytecode pc 214
        this.showBattleScene(fightingProcess);
    } else {
        // source line 829, bytecode pc 324
        xs.Tools.Net.requestGetUnionWarFightingProcess({ union_war_id: params.union_war_id, battle_rounds: params.battle_rounds, tag: params.tag }, function(jsonData) {
    var fightingProcess;
    // source line 810, bytecode pc 33
    (fightingProcess = xs.Models.UnionWarFightingProcess.createWithJson(jsonData));
    // source line 818, bytecode pc 123
    fightingProcess.setOtherInfos(params.union_war_id, params.battle_rounds, params.tag, fightUnions, mTimeType, mServerType);
    // source line 822, bytecode pc 186
    xs.Profile.GameData.Mgr.getInstance().UnionWar.getUnionWar().setFightingProcess(fightingProcess);
    // source line 824, bytecode pc 203
    this.showBattleScene(fightingProcess);
}, function(jsonData) {
}, this);
    }
}.bind(this));
    }
},
    _getLunCiAndTag: function(mTag) {
    var mBai, mShi, cfg;
    // source line 840, bytecode pc 24
    (mBai = parseInt((mTag / 100)));
    // source line 841, bytecode pc 54
    (mShi = (parseInt(((mTag % 100) / 10)) + 1));
    // source line 849, bytecode pc 240
    (cfg = {
    "2": { lun: 16, chang: mShi },
    "8": { lun: 16, chang: (mShi + 4) },
    "3": { lun: 8, chang: mShi },
    "7": { lun: 8, chang: (mShi + 2) },
    "4": { lun: 4, chang: mShi },
    "6": { lun: 4, chang: (mShi + 1) },
    "5": { lun: 2, chang: mShi }
});
    // source line 851, bytecode pc 254
    return cfg[(mBai + "")];
},
    _initializeCcb: function(mNum) {
    var mChildList, i;
    // source line 858, bytecode pc 26
    (mChildList = this._gainListForTag(this.ccbNode, mNum));
    // source line 860, bytecode pc 31
    (i = 0);
    while ((i < mChildList.length)) {
        // source line 861, bytecode pc 58
        mChildList[i].setVisible(false);
        // source line 860, bytecode pc 72
        (i = (+i + 1));
    }
},
    _initializeBtn: function() {
    var mChildList, i, mTag;
    // source line 871, bytecode pc 25
    (mChildList = this._gainListForTag(this.ccbNode, 5));
    // source line 873, bytecode pc 30
    (i = 0);
    while ((i < mChildList.length)) {
        // source line 876, bytecode pc 58
        (mTag = mChildList[i].getTag());
        // source line 880, bytecode pc 138
        xs.Utils.UI.replaceCcbByCfg(this.ccbNode, [ { tag: mTag, type: "btn", id: "Btn_Spectators" } ], this);
        // source line 882, bytecode pc 173
        this.ccbNode.getChildByTag(mTag).setVisible(false);
        // source line 873, bytecode pc 187
        (i = (+i + 1));
    }
},
    onEnter: function() {
    // source line 891, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 895, bytecode pc 12
    this.unschedule();
    // source line 896, bytecode pc 25
    this._super();
},
    showBattleScene: function(fightingProcess) {
    var params;
    // source line 903, bytecode pc 32
    (params = { battleType: xs.Constant_UnionWar_BattleType_Fighting, fightingProcess: fightingProcess });
    // source line 906, bytecode pc 69
    xs.Scene.Mgr.changeSceneByName("UnionWarBattleScene", params);
},
    setBaseTouchPriority: function(priority) {
    var mChildList, i;
    // source line 911, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 912, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 913, bytecode pc 56
    this.m_scrollView.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 914, bytecode pc 83
    this.m_close.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 916, bytecode pc 109
    (mChildList = this._gainListForTag(this.ccbNode, 5));
    // source line 917, bytecode pc 114
    (i = 0);
    while ((i < mChildList.length)) {
        // source line 918, bytecode pc 148
        mChildList[i].setTouchPriority((this.m_baseTouchPriority - 1));
        // source line 917, bytecode pc 162
        (i = (+i + 1));
    }
}
}));
// source line 924, bytecode pc 535
(xs.Views.Dialog.UnionEncounterMapDialog.create = function(data) {
    var ret;
    // source line 925, bytecode pc 28
    (ret = new xs.Views.Dialog.UnionEncounterMapDialog());
    if ((ret && ret.init(data))) {
        // source line 927, bytecode pc 64
        return ret;
    }
    // source line 929, bytecode pc 66
    return null;
});
// source line 934, bytecode pc 615
xs.Views.Mgr.registerDialog("UnionEncounterMapDialog", { "class": xs.Views.Dialog.UnionEncounterMapDialog, styleType: xs.Constant_DlgStyleType_Normal });
