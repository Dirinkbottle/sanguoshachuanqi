// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Gems/GemsSophisticationView.js:1
// source line 5, bytecode pc 21
(xs.Views.Gems.Hole_Type_UnLock = 0);
// source line 6, bytecode pc 43
(xs.Views.Gems.Hole_Type_Lock = 1);
// source line 7, bytecode pc 66
(xs.Views.Gems.Hole_Type_None = 2);
// source line 861, bytecode pc 1666
(xs.Views.Gems.GemsSophisticationView = cc.Layer.extend({
    name: "GemsSophisticationView",
    ctor: function() {
    // source line 14, bytecode pc 12
    this._super();
    // source line 15, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    cfg: {
        GemLightZOrder: 12,
        mStarlaNum: 9,
        refinePosTag: 11,
        mGemHoleNum: 5,
        gemOTag: 20,
        starStartTag: 100,
        starStartBgTag: 200,
        everyTimeRefactor: "1",
        epsCcbCfg: [
            {
                tag: 1,
                type: "ls",
                name: "m_labelEpsName",
                id: "LS_guanqiaName",
                string: "琴\n琴\n",
                offset: cc.p(-30, -0)
            },
            { tag: 2, name: "m_epsPos" },
            { tag: 3, name: "m_epsType" },
            { tag: 4, type: "ls", name: "m_labelFighting", id: "LS_mainUI4", string: "1111" },
            { tag: 5, name: "m_epsPropertyType" },
            { tag: 6, type: "ls", name: "m_labelEpsProperty", id: "LS_mainUI4", string: "111" },
            { tag: 7, type: "ls", name: "m_labelEpsLV", id: "LS_Lv" },
            {
                tag: 12,
                type: "ls",
                name: "m_labelStilettoConsume",
                id: "LS_Lv",
                stringId: "gems_str_kongWeiGongZhengTitle",
                offset: cc.p(2, 0)
            },
            {
                tag: 13,
                type: "ls",
                name: "m_labelStilettoConsume",
                id: "LS_mainUI4",
                stringId: "gems_str_kongWeiGongZheng2",
                offset: cc.p(0, -30)
            },
            {
                tag: 31,
                type: "ls",
                name: "m_labelStilettoConsume",
                id: "LS_zhanchang_zi1",
                stringId: "gems_str_StilettoConsume"
            },
            {
                tag: 32,
                type: "ls",
                name: "m_labelStilettoConsumeNum",
                id: "LS_zhanchang_zi2",
                string: "1",
                offset: cc.p(0, -0)
            },
            {
                tag: 33,
                type: "ls",
                name: "m_labelResidueStiletto",
                id: "LS_zhanchang_zi1",
                stringId: "gems_str_ResidueStiletto"
            },
            {
                tag: 34,
                type: "ls",
                name: "m_labelResidueStilettoNum",
                id: "LS_zhanchang_zi2",
                string: "111",
                offset: cc.p(0, -0)
            },
            {
                tag: 35,
                type: "bs",
                name: "m_btnSophistication",
                id: "BS_Btn1",
                stringId: "gems_str_btnSophistication"
            },
            { tag: 40, type: "ls", id: "LS_Lv", stringId: "gems_str_LaiYuan", offset: cc.p(50, -16) },
            {
                tag: 41,
                type: "ls",
                name: "m_labelEqsGeneral",
                id: "LS_yuanfenInf2",
                string: "装\n备\n于\n",
                offset: cc.p(-40, 0)
            }
        ],
        selectCcbCfg: [ { tag: 1, type: "ls", name: "m_labelSelect", id: "LS_danyao", stringId: "gems_str_selectEps" } ]
    },
    init: function() {
    var strNoSelectLable, _strLab, gem_discount, _btnPos, _zhekou_num;
    // source line 58, bytecode pc 12
    this._super();
    // source line 61, bytecode pc 20
    (this.m_labelEpsName = null);
    // source line 62, bytecode pc 28
    (this.m_epsPos = null);
    // source line 63, bytecode pc 36
    (this.m_epsType = null);
    // source line 64, bytecode pc 44
    (this.m_labelFighting = null);
    // source line 65, bytecode pc 52
    (this.m_epsPropertyType = null);
    // source line 66, bytecode pc 60
    (this.m_labelEpsProperty = null);
    // source line 67, bytecode pc 68
    (this.m_labelEpsLV = null);
    // source line 68, bytecode pc 76
    (this.m_labelStilettoConsumeNum = null);
    // source line 69, bytecode pc 84
    (this.m_labelResidueStilettoNum = null);
    // source line 70, bytecode pc 92
    (this.m_btnSophistication = null);
    // source line 73, bytecode pc 100
    (this.m_repDate = null);
    // source line 74, bytecode pc 108
    (this.m_isHaveShowEps = false);
    // source line 75, bytecode pc 116
    (this.m_refactorNum = 0);
    // source line 76, bytecode pc 124
    (this.isNeedRefresh = true);
    // source line 77, bytecode pc 132
    (this.m_lockNum = 0);
    // source line 78, bytecode pc 140
    (this.m_holeNum = 0);
    // source line 79, bytecode pc 148
    (this.m_holeHaveGemNum = 0);
    // source line 82, bytecode pc 160
    (this.m_BoreAnimation_Array = []);
    // source line 85, bytecode pc 209
    (this.m_epsCcbNode = cc.BuilderReader.load(xs.Cfg.CCBI.GemsSophEps));
    // source line 86, bytecode pc 238
    this.m_epsCcbNode.setAnchorPoint(xs.ap_lb);
    // source line 87, bytecode pc 316
    xs.Utils.Node.attachNodes(this, this.m_epsCcbNode, { desc: "lb", offset: cc.p(0, 0) });
    // source line 88, bytecode pc 364
    xs.Utils.UI.replaceCcbByCfg(this.m_epsCcbNode, this.cfg.epsCcbCfg, this);
    // source line 89, bytecode pc 384
    this._amendCcbiPos(this.m_epsCcbNode);
    // source line 90, bytecode pc 405
    this.m_epsPos.setZOrder(-1);
    // source line 91, bytecode pc 443
    this.m_btnSophistication.setOnClickCallBack(this._gemShopHisticationHint.bind(this));
    // source line 92, bytecode pc 456
    this._initRefine();
    // source line 93, bytecode pc 486
    this.m_labelStilettoConsumeNum.setString(this.cfg.everyTimeRefactor);
    // source line 95, bytecode pc 535
    (this.m_selectCcbNode = cc.BuilderReader.load(xs.Cfg.CCBI.GemsNoEps));
    // source line 96, bytecode pc 564
    this.m_selectCcbNode.setAnchorPoint(xs.ap_lb);
    // source line 98, bytecode pc 604
    (strNoSelectLable = this.m_selectCcbNode.getChildByTag(this.cfg.selectCcbCfg[0].tag));
    // source line 99, bytecode pc 673
    (_strLab = xs.Factorys.Label.createByStyleIdWithString("LS_yuanfenInf2", xs.Tools.String.createString("gems_noSelectDesc")));
    // source line 100, bytecode pc 731
    _strLab.setPosition(strNoSelectLable.getPosition().x, (strNoSelectLable.getPosition().y - 50));
    // source line 101, bytecode pc 769
    xs.Utils.Node.attachNodes(this.m_selectCcbNode, _strLab);
    // source line 103, bytecode pc 865
    xs.Utils.Node.attachNodes(this, this.m_selectCcbNode, { desc: "c", offset: this._ip4sPosTransform(cc.p(-182, -96)) });
    // source line 104, bytecode pc 913
    xs.Utils.UI.replaceCcbByCfg(this.m_selectCcbNode, this.cfg.selectCcbCfg, this);
    // source line 105, bytecode pc 953
    (this.m_btnSelectEps = xs.Views.Btn.createInvisibleWithParent(this.m_selectCcbNode));
    // source line 106, bytecode pc 991
    this.m_btnSelectEps.setOnClickCallBack(this.showReplaceDialog.bind(this));
    // source line 110, bytecode pc 1035
    (this.m_instructionBtn = xs.Tools.Views.Btn.createInstruction("gems_str_gemExplain"));
    // source line 111, bytecode pc 1126
    xs.Utils.Node.attachNodes(this, this.m_instructionBtn, { desc: "lt", offset: cc.p(60, -160), sc: true }, null);
    // source line 112, bytecode pc 1147
    this.m_instructionBtn.setTouchPriority(-20);
    // source line 115, bytecode pc 1193
    (gem_discount = xs.Profile.GameData.PushInfo.getInstance().getGemDiscount());
    if (gem_discount.is_open) {
        // source line 117, bytecode pc 1227
        (_btnPos = this.m_btnSophistication.getPosition());
        // source line 118, bytecode pc 1259
        (_zhekou_num = Math.ceil((gem_discount.discount / 10)));
        if (((_zhekou_num >= 5) && (_zhekou_num < 10))) {
            // source line 120, bytecode pc 1331
            (this._xianshidazhe = xs.Factorys.Sprite.create(("Cmn02_xianshidazhe_" + _zhekou_num), "Cmn02"));
            // source line 124, bytecode pc 1401
            xs.Utils.Node.attachNodes(this, this._xianshidazhe, { desc: "c", sc: true, offset: {} });
            // source line 131, bytecode pc 1457
            this._xianshidazhe.setPosition(cc.p(_btnPos.x, (_btnPos.y + 80)));
        }
    }
    // source line 137, bytecode pc 1470
    this._update();
    // source line 139, bytecode pc 1472
    return true;
},
    _updataXiLian: function() {
    // source line 144, bytecode pc 69
    (this.m_refactorNum = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_Refactor));
    // source line 145, bytecode pc 101
    (this.m_refactorNum = ((this.m_refactorNum == null) ? 0 : this.m_refactorNum));
    // source line 146, bytecode pc 126
    this.m_labelResidueStilettoNum.setString(this.m_refactorNum);
},
    _getEpsDate: function() {
    var mEpsPkId;
    // source line 153, bytecode pc 15
    (mEpsPkId = this._readLocalSqlForEpId());
    if ((mEpsPkId != "0")) {
        // source line 155, bytecode pc 81
        return xs.Profile.GameData.Mgr.getInstance().Equipments.getEpsDateForPkId(mEpsPkId);
    }
    // source line 157, bytecode pc 83
    return null;
},
    _getLockYuanbaoCfgForNum: function(mLockNum) {
    var mkey, _dataObj, _jsonObj;
    // source line 163, bytecode pc 8
    (mkey = "GemChgPropertyGoldConf");
    // source line 166, bytecode pc 53
    (_dataObj = xs.Tools.CfgData.readRecordByTypeAndKey(xs.Constant_CfgDataType_Global, mkey));
    // source line 169, bytecode pc 58
    (_jsonObj = null);
    try {
        // source line 172, bytecode pc 88
        (_jsonObj = JSON.parse(_dataObj.logical_data));
        // source line 173, bytecode pc 105
        (_jsonObj = _jsonObj[(mLockNum + "")]);
    } catch (e) {
        // source line 176, bytecode pc 145
        xs.assert(false, "getLockYuanbaoCfg err!");
        /* TODO_BYTECODE pc=146 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 178, bytecode pc 158
    return _jsonObj;
},
    _gemShopErrorHint: function() {
    if ((this.m_lockNum >= this.m_holeNum)) {
        // source line 185, bytecode pc 50
        xs.Views.Mgr.showToastByStringKey("gems_str_gemsLockAll");
        // source line 186, bytecode pc 52
        return true;
    } else {
        if ((this.m_holeHaveGemNum > 0)) {
            // source line 188, bytecode pc 103
            xs.Views.Mgr.showToastByStringKey("gems_str_gemsHoleHaveGem");
            // source line 189, bytecode pc 105
            return true;
        } else {
            if ((this.m_lockNum > 3)) {
                // source line 191, bytecode pc 157
                xs.Views.Mgr.showToastByStringKey("gems_str_gemsMaxThree");
                // source line 192, bytecode pc 159
                return true;
            }
        }
    }
    // source line 194, bytecode pc 161
    return false;
},
    _gemShopHisticationHint: function() {
    var dialog, lockGold, gem_discount;
    if (this._gemShopErrorHint()) {
        // source line 201, bytecode pc 18
        return void 0;
    }
    if (((this.m_lockNum > 0) && (this.m_lockNum < 4))) {
        // source line 217, bytecode pc 216
        (dialog = xs.Views.Mgr.showDialogByName("common", {
    title: "1070910046",
    content: "1070910046",
    leftText: xs.Tools.String.createString("auto_name_146"),
    rightText: xs.Tools.String.createString("auto_name_76"),
    leftCB: function() {
    // source line 211, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    rightCB: function() {
    // source line 214, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 215, bytecode pc 39
    this._gemSophisticationCallBack();
}.bind(this)
}));
        // source line 218, bytecode pc 234
        (dialog = dialog.getRealDialog());
        // source line 220, bytecode pc 257
        (lockGold = this._getLockYuanbaoCfgForNum(this.m_lockNum));
        // source line 221, bytecode pc 303
        (gem_discount = xs.Profile.GameData.PushInfo.getInstance().getGemDiscount());
        if (gem_discount.is_open) {
            // source line 223, bytecode pc 352
            (lockGold = Math.floor(((gem_discount.discount / 100) * lockGold)));
        }
        // source line 227, bytecode pc 423
        dialog.setContentText(xs.Tools.String.createStringWithArgsArray("gems_str_gemSopHint", [ this.m_lockNum, lockGold ]));
        // source line 228, bytecode pc 471
        dialog.setTitleByString(xs.Tools.String.createString("auto_name_223"));
    } else {
        // source line 231, bytecode pc 489
        this._gemSophisticationCallBack();
    }
},
    _gemSophisticationCallBack: function() {
    if (!this.m_repDate) {
        // source line 241, bytecode pc 13
        return void 0;
    }
    if ((this.m_refactorNum <= 0)) {
        // source line 245, bytecode pc 59
        xs.Views.Mgr.showToastByStringKey("gems_str_noXiLianShi");
    }
    // source line 269, bytecode pc 192
    xs.Tools.Net.requestGemsSophistication({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    user_equipment_id: this.m_repDate.getPkId()
}, function(jsonData) {
    var mMaiDianKey;
    if (jsonData.result) {
        // source line 255, bytecode pc 45
        xs.Views.Mgr.showToastByStringKey("gems_str_gemsSophisicationOk");
        // source line 257, bytecode pc 61
        (mMaiDianKey = ("gem_holeReset_lock" + this.m_lockNum));
        // source line 258, bytecode pc 88
        xs.log_hsq("mMaiDianKey", mMaiDianKey);
        // source line 259, bytecode pc 119
        xs.Tools.Statistic.event(mMaiDianKey);
        // source line 262, bytecode pc 132
        this._update();
    }
}, function() {
}, this);
},
    _isShowEps: function() {
    if (this.m_isHaveShowEps) {
        // source line 276, bytecode pc 30
        this.m_epsCcbNode.setVisible(true);
        // source line 277, bytecode pc 50
        this.m_selectCcbNode.setVisible(false);
    } else {
        // source line 279, bytecode pc 75
        this.m_epsCcbNode.setVisible(false);
        // source line 280, bytecode pc 95
        this.m_selectCcbNode.setVisible(true);
    }
},
    _amendCcbiPos: function(mCcbi) {
    var mChilds, mChildIdx, mChild, mOriginalPos;
    // source line 286, bytecode pc 17
    (mChilds = mCcbi.getChildren());
    if (mChilds) {
        for (var mChildIdx in mChilds) {
            // source line 289, bytecode pc 52
            (mChild = mChilds[mChildIdx]);
            if (!(mChild.getPosition)) continue;
            // source line 291, bytecode pc 83
            (mOriginalPos = mChild.getPosition());
            // source line 292, bytecode pc 115
            mChild.setPosition(this._ip4sPosTransform(mOriginalPos));
        }
    }
},
    _ip4sPosTransform: function(mPos) {
    var visibleSize, mScaleW, mScaleH;
    // source line 301, bytecode pc 24
    (visibleSize = xs.director.getVisibleSize());
    // source line 302, bytecode pc 40
    (mScaleW = (visibleSize.width / 960));
    // source line 303, bytecode pc 56
    (mScaleH = (visibleSize.height / 640));
    // source line 304, bytecode pc 99
    return cc.p((mPos.x * mScaleW), (mPos.y * mScaleH));
},
    _getGemsSophisticationKey: function() {
    // source line 310, bytecode pc 5
    return "_sgs_gemsSophistication";
},
    _readLocalSqlForEpId: function() {
    var _result, _data, _empty;
    // source line 316, bytecode pc 46
    (_data = xs.Utils.LocalStore.getItem(this._getGemsSophisticationKey()));
    if ((_data == "")) {
        // source line 320, bytecode pc 69
        (_empty = "{\"ep_pk_id\":\"0\"}");
        // source line 321, bytecode pc 113
        xs.Utils.LocalStore.setItem(this._getGemsSophisticationKey(), _empty);
        // source line 322, bytecode pc 120
        (_data = _empty);
    }
    try {
        // source line 326, bytecode pc 145
        (_result = JSON.parse(_data));
    } catch (e) {
        // source line 329, bytecode pc 181
        xs.warnException(e);
        // source line 330, bytecode pc 201
        (_result = { ep_pk_id: "0" });
        /* TODO_BYTECODE pc=202 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 333, bytecode pc 219
    return _result.ep_pk_id;
},
    writeLocalSqlForEpId: function(mEpId) {
    var _objArray, _str;
    // source line 339, bytecode pc 17
    (mEpId = (mEpId || "0"));
    // source line 341, bytecode pc 35
    (_objArray = { ep_pk_id: mEpId });
    // source line 342, bytecode pc 59
    (_str = JSON.stringify(_objArray));
    // source line 344, bytecode pc 103
    xs.Utils.LocalStore.setItem(this._getGemsSophisticationKey(), _str);
},
    showReplaceDialog: function() {
    // source line 351, bytecode pc 59
    (this.m_replaceDialog = xs.Views.Mgr.showDialogByName("ReplaceCardDialog", xs.Views.Dialog.ReplaceCardDialog_Type_GemsEps));
    if (this.m_repDate) {
        // source line 353, bytecode pc 97
        this.m_replaceDialog.setReplaceData(this.m_repDate, true);
    }
    // source line 357, bytecode pc 165
    this.m_replaceDialog.setHideData(xs.Profile.GameData.Mgr.getInstance().Equipments.getGradeGodEpsWithoutHole(), true);
    // source line 359, bytecode pc 185
    this.m_replaceDialog.setListener(this);
},
    ReplaceCardDialog_replaceCard: function(date, cardType) {
    // source line 365, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 366, bytecode pc 36
    (this.m_repDate = date);
    // source line 367, bytecode pc 64
    this.writeLocalSqlForEpId(date.getPkId());
    // source line 368, bytecode pc 77
    this._update();
},
    _update: function() {
    // source line 374, bytecode pc 18
    (this.m_repDate = this._getEpsDate());
    if (this.m_repDate) {
        // source line 376, bytecode pc 37
        (this.m_isHaveShowEps = true);
        // source line 377, bytecode pc 57
        this._updateEpsCcb(this.m_repDate);
        // source line 378, bytecode pc 88
        this.checkBoreList(this.m_repDate.getBoreList());
    }
    // source line 380, bytecode pc 101
    this._isShowEps();
    // source line 381, bytecode pc 114
    this._updataXiLian();
},
    checkBoreList: function(list) {
    var fistBoreType, AllBoreOneProperty, i, BorePosition, gemLightArm;
    if ((list.length != 0)) {
        // source line 386, bytecode pc 28
        (fistBoreType = list[0].bore_type);
        // source line 387, bytecode pc 33
        (AllBoreOneProperty = 1);
        // source line 388, bytecode pc 38
        (i = 1);
        while ((i < list.length)) {
            if ((list[i].bore_type == fistBoreType)) {
                // source line 390, bytecode pc 79
                (AllBoreOneProperty = (+AllBoreOneProperty + 1));
            }
            // source line 388, bytecode pc 94
            (i = (+i + 1));
        }
        if ((AllBoreOneProperty == 5)) {
            // source line 394, bytecode pc 129
            (i = 0);
            while ((i < 5)) {
                // source line 396, bytecode pc 183
                (BorePosition = this.m_epsCcbNode.getChildByTag((this.cfg.gemOTag + i)).getPosition());
                if (!this.m_BoreAnimation_Array[i]) {
                    // source line 399, bytecode pc 240
                    (gemLightArm = xs.Views.Armature.AutoAudioArmature.create("GemLight"));
                    // source line 400, bytecode pc 259
                    gemLightArm.setPosition(BorePosition);
                    // source line 401, bytecode pc 286
                    gemLightArm.setZOrder(this.cfg.GemLightZOrder);
                    // source line 402, bytecode pc 326
                    gemLightArm.playAniById("ani_gemlight", { loop: true, speed: 1 });
                    // source line 403, bytecode pc 364
                    xs.Utils.Node.attachNodes(this.m_epsCcbNode, gemLightArm);
                    // source line 405, bytecode pc 386
                    this.m_BoreAnimation_Array.push(gemLightArm);
                }
                // source line 394, bytecode pc 400
                (i = (+i + 1));
            }
        } else {
            // source line 409, bytecode pc 423
            (i = 0);
            while ((i < this.m_BoreAnimation_Array.length)) {
                if (this.m_BoreAnimation_Array[i]) {
                    // source line 411, bytecode pc 466
                    this.m_BoreAnimation_Array[i].removeFromParent();
                    // source line 412, bytecode pc 478
                    (this.m_BoreAnimation_Array[i] = null);
                }
                // source line 409, bytecode pc 492
                (i = (+i + 1));
            }
        }
    } else {
        // source line 418, bytecode pc 524
        (i = 0);
        while ((i < this.m_BoreAnimation_Array.length)) {
            if (this.m_BoreAnimation_Array[i]) {
                // source line 420, bytecode pc 567
                this.m_BoreAnimation_Array[i].removeFromParent();
                // source line 421, bytecode pc 579
                (this.m_BoreAnimation_Array[i] = null);
            }
            // source line 418, bytecode pc 593
            (i = (+i + 1));
        }
    }
},
    _inlayOrRemove: function(param) {
    var mType, mHoleIdx, mGemPkId, mHoleDate;
    // source line 430, bytecode pc 22
    xs.log_zx("_inlayOrRemoveTESThsq");
    // source line 431, bytecode pc 40
    (mType = param.type);
    // source line 432, bytecode pc 52
    (mHoleIdx = param.holeIdx);
    // source line 433, bytecode pc 64
    (mGemPkId = param.gemPkId);
    // source line 434, bytecode pc 91
    (mHoleDate = this._getHoleDateByEpsAndIdx(this.m_repDate, mHoleIdx));
    if (((xs.Constant_GemsSophistication_Inlay == mType) || (xs.Constant_GemsSophistication_Change == mType))) {
        // source line 461, bytecode pc 274
        xs.Tools.Net.requestGemsInset({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    bore_id: mHoleDate.bore_id,
    user_gem_id: mGemPkId
}, function(jsonData) {
    var mStrId;
    if (jsonData.result) {
        // source line 445, bytecode pc 39
        xs.Views.Mgr.hideDialog();
        // source line 446, bytecode pc 48
        (mStrId = "");
        if ((xs.Constant_GemsSophistication_Inlay == mType)) {
            // source line 448, bytecode pc 82
            (mStrId = "gems_str_gemInset");
        } else {
            if ((xs.Constant_GemsSophistication_Change == mType)) {
                // source line 450, bytecode pc 121
                (mStrId = "gems_str_gemChange");
            }
        }
        // source line 452, bytecode pc 179
        xs.Views.Mgr.showToast(xs.Tools.String.createString(mStrId));
        // source line 453, bytecode pc 192
        this._update();
        // source line 454, bytecode pc 194
        return true;
    }
}, function() {
}, this);
    } else {
        if ((xs.Constant_GemsSophistication_Dismantle == mType)) {
            // source line 483, bytecode pc 436
            xs.Tools.Net.requestGemsRemove({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    bore_id: mHoleDate.bore_id,
    user_gem_id: mGemPkId
}, function(jsonData) {
    if (jsonData.result) {
        // source line 473, bytecode pc 39
        xs.Views.Mgr.hideDialog();
        // source line 474, bytecode pc 99
        xs.Views.Mgr.showToast(xs.Tools.String.createString("gems_str_gemRemove"));
        // source line 475, bytecode pc 112
        this._update();
        // source line 476, bytecode pc 114
        return true;
    }
}, function() {
}, this);
        } else {
            // source line 487, bytecode pc 476
            xs.assert(true, "no this type!", mType);
        }
    }
},
    _updateEpsCcb: function(date) {
    var general, epsSp;
    // source line 496, bytecode pc 65
    this.m_labelFighting.setString(xs.Utils.floorSafe(date.getAttrNaked(xs.Constant_AttrType_FightPoint)));
    // source line 498, bytecode pc 120
    this.m_labelEpsProperty.setString(xs.Utils.floorSafe(date.getEffectValue()));
    // source line 500, bytecode pc 175
    this.m_labelEpsName.setString((date.getNameString().toWordBreak() || ""));
    // source line 503, bytecode pc 230
    (general = xs.Profile.GameData.Mgr.getInstance().Equipments.getGeneral(date));
    if (general) {
        // source line 505, bytecode pc 315
        this.m_labelEqsGeneral.setString((xs.Tools.String.createString("gems_epsOn") + general.getNameString()).toWordBreak());
    } else {
        // source line 507, bytecode pc 344
        this.m_labelEqsGeneral.setString("");
    }
    // source line 511, bytecode pc 388
    this.m_labelEpsLV.setString((date.getLevel() || "1"));
    // source line 513, bytecode pc 436
    this._replaceSp(date.createEffectTypeSmallIcon(), this.cfg.epsCcbCfg[4].tag);
    // source line 515, bytecode pc 453
    this._setRefineLv(date);
    // source line 519, bytecode pc 507
    this._replaceSp(date.createPartView("pos_type"), this.cfg.epsCcbCfg[2].tag);
    // source line 522, bytecode pc 527
    (epsSp = this._getDisposeObjSp(date));
    // source line 524, bytecode pc 564
    (this.m_ConBtn = xs.Views.Btn.createInvisibleWithParent(epsSp));
    // source line 526, bytecode pc 600
    this._replaceSp(epsSp, this.cfg.epsCcbCfg[1].tag);
    // source line 527, bytecode pc 638
    this.m_ConBtn.setOnClickCallBack(this.showReplaceDialog.bind(this));
    // source line 532, bytecode pc 651
    this._setGemsAndLockBtn();
},
    _getDisposeObjSp: function(date) {
    var mEpsObjSp, mKuangSp;
    // source line 539, bytecode pc 28
    (mEpsObjSp = date.getRes().createOriginalSprite());
    if ((xs.Constant_Equ_PosType_Kit == date.getEffectType())) {
        // source line 541, bytecode pc 100
        (mKuangSp = xs.Factorys.Sprite.create("gemsScene_jinnanbiangkuang", "GemsScene"));
        // source line 542, bytecode pc 121
        mKuangSp.setScale(1.2);
        // source line 543, bytecode pc 211
        xs.Utils.Node.attachNodes(mEpsObjSp, mKuangSp, { desc: "c", offset: this._ip4sPosTransform(cc.p(0, 0)) });
        // source line 544, bytecode pc 232
        mEpsObjSp.setScale(0.8);
    }
    // source line 546, bytecode pc 236
    return mEpsObjSp;
},
    _setGemsAndLockBtn: function() {
    var mHoleIdx, mHoleType, mSp;
    // source line 551, bytecode pc 12
    this._errorHintKeyInit();
    // source line 552, bytecode pc 17
    (mHoleIdx = 0);
    while ((mHoleIdx < this.cfg.mGemHoleNum)) {
        // source line 553, bytecode pc 43
        (mHoleType = this._getHoleTypeByIdx(mHoleIdx));
        // source line 554, bytecode pc 67
        (mSp = this._getGemCon(mHoleIdx, mHoleType));
        // source line 555, bytecode pc 100
        this._replaceSp(mSp, (this.cfg.gemOTag + mHoleIdx));
        // source line 557, bytecode pc 121
        this._setLockBtn(mHoleIdx, mHoleType);
        // source line 552, bytecode pc 135
        (mHoleIdx = (+mHoleIdx + 1));
    }
},
    _getHoleTypeByIdx: function(mHoleIdx) {
    var mHoleDate;
    if (this.m_repDate) {
        // source line 564, bytecode pc 37
        (mHoleDate = this._getHoleDateByEpsAndIdx(this.m_repDate, mHoleIdx));
        if (mHoleDate) {
            // source line 566, bytecode pc 54
            return mHoleDate.is_lock;
        }
    }
    // source line 570, bytecode pc 75
    return xs.Views.Gems.Hole_Type_None;
},
    _getHoleDateByEpsAndIdx: function(mEps, idx) {
    var mList;
    // source line 575, bytecode pc 17
    (mList = mEps.getBoreList());
    if ((mList.length == 0)) {
        // source line 577, bytecode pc 34
        return null;
    } else {
        if ((idx < mList.length)) {
            // source line 579, bytecode pc 64
            return mList[idx];
        }
    }
    // source line 581, bytecode pc 66
    return null;
},
    _setLockBtn: function(btnIdx, type) {
    var mHoleDate, mHoleId, strId, btnIsEnabled, btnPatNode, mPos;
    // source line 587, bytecode pc 26
    (mHoleDate = this._getHoleDateByEpsAndIdx(this.m_repDate, btnIdx));
    // source line 588, bytecode pc 31
    (mHoleId = null);
    if (mHoleDate) {
        // source line 590, bytecode pc 51
        (mHoleId = mHoleDate.bore_id);
    }
    // source line 592, bytecode pc 78
    xs.log_hsq("mHoleId", mHoleId);
    // source line 593, bytecode pc 87
    (strId = "");
    // source line 594, bytecode pc 92
    (btnIsEnabled = false);
    if (!this[("btnGemLock" + btnIdx)]) {
        // source line 596, bytecode pc 146
        (btnPatNode = this.m_epsCcbNode.getChildByTag((this.cfg.gemOTag + btnIdx)));
        // source line 597, bytecode pc 164
        (mPos = btnPatNode.getPosition());
        // source line 598, bytecode pc 208
        (this[("btnGemLock" + btnIdx)] = xs.Views.Btn.createByStyleId("BS_Btn3"));
        // source line 599, bytecode pc 254
        this[("btnGemLock" + btnIdx)].setButtonSize(cc.size(79, 33));
        // source line 600, bytecode pc 280
        this[("btnGemLock" + btnIdx)].setFontSize(24);
        // source line 601, bytecode pc 310
        this.m_epsCcbNode.addChild(this[("btnGemLock" + btnIdx)]);
        // source line 602, bytecode pc 371
        this[("btnGemLock" + btnIdx)].setPosition(cc.p(mPos.x, (mPos.y - 70)));
    }
    if ((xs.Views.Gems.Hole_Type_UnLock == type)) {
        // source line 605, bytecode pc 409
        (strId = "gems_str_btnLock");
        // source line 606, bytecode pc 414
        (btnIsEnabled = true);
    } else {
        if ((xs.Views.Gems.Hole_Type_Lock == type)) {
            // source line 608, bytecode pc 457
            (strId = "gems_str_btnUnLock");
            // source line 609, bytecode pc 462
            (btnIsEnabled = true);
        } else {
            // source line 611, bytecode pc 476
            (strId = "gems_str_btnLock");
            // source line 612, bytecode pc 481
            (btnIsEnabled = false);
        }
    }
    // source line 615, bytecode pc 508
    this[("btnGemLock" + btnIdx)].setEnabled(btnIsEnabled);
    // source line 616, bytecode pc 562
    this[("btnGemLock" + btnIdx)].setString(xs.Tools.String.createString(strId));
    // source line 618, bytecode pc 632
    this[("btnGemLock" + btnIdx)].setOnClickCallBack(this._gemLockAndUnlockCallBack.bind({ self: this, type: type, holeId: mHoleId }));
},
    _gemLockErrorHint: function(diff) {
    if (((this.m_lockNum + diff) > 3)) {
        // source line 626, bytecode pc 50
        xs.Views.Mgr.showToastByStringKey("gems_str_gemsMaxThree");
        // source line 627, bytecode pc 52
        return true;
    }
    // source line 629, bytecode pc 54
    return false;
},
    _errorHintKeyInit: function() {
    // source line 635, bytecode pc 7
    (this.m_lockNum = 0);
    // source line 636, bytecode pc 15
    (this.m_holeNum = 0);
    // source line 637, bytecode pc 23
    (this.m_holeHaveGemNum = 0);
},
    _addLockNum: function() {
    // source line 642, bytecode pc 14
    (this.m_lockNum = (this.m_lockNum + 1));
},
    _gemLockAndUnlockCallBack: function() {
    var mType, mSelf, mHoleId;
    // source line 648, bytecode pc 9
    (mType = this.type);
    // source line 649, bytecode pc 19
    (mSelf = this.self);
    // source line 650, bytecode pc 29
    (mHoleId = this.holeId);
    if ((xs.Views.Gems.Hole_Type_UnLock == mType)) {
        if (mSelf._gemLockErrorHint(1)) {
            // source line 657, bytecode pc 81
            return void 0;
        }
        // source line 675, bytecode pc 202
        xs.Tools.Net.requestGemsHoleLock({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    bore_id: mHoleId
}, function(jsonData) {
    if (jsonData.result) {
        // source line 666, bytecode pc 72
        xs.Views.Mgr.showToast(xs.Tools.String.createString("gems_str_holeLock"));
        // source line 667, bytecode pc 85
        this._update();
        // source line 668, bytecode pc 87
        return true;
    }
}, function() {
}, mSelf);
    } else {
        if ((xs.Views.Gems.Hole_Type_Lock == mType)) {
            // source line 698, bytecode pc 357
            xs.Tools.Net.requestGemsHoleUnLock({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    bore_id: mHoleId
}, function(jsonData) {
    if (jsonData.result) {
        // source line 689, bytecode pc 72
        xs.Views.Mgr.showToast(xs.Tools.String.createString("gems_str_holeUnLock"));
        // source line 690, bytecode pc 85
        this._update();
        // source line 691, bytecode pc 87
        return true;
    }
}, function() {
}, mSelf);
        }
    }
},
    _getGemCon: function(gemIdx, mHoleType) {
    var mNodeBg, mHoleSp, mHoleDate, mGemId, mGemType, mHoleTypeString, isHaveGemAndNoLock, mGemsMode, mSp, mLockSp, mGemBtn;
    // source line 707, bytecode pc 41
    (mNodeBg = xs.Factorys.Sprite.create("Cmn03_baoshikongdi", "Cmn03"));
    // source line 708, bytecode pc 46
    (mHoleSp = null);
    // source line 709, bytecode pc 73
    (mHoleDate = this._getHoleDateByEpsAndIdx(this.m_repDate, gemIdx));
    // source line 710, bytecode pc 78
    (mGemId = null);
    // source line 711, bytecode pc 83
    (mGemType = null);
    if ((xs.Views.Gems.Hole_Type_None == mHoleType)) {
        // source line 714, bytecode pc 154
        (mHoleSp = xs.Factorys.Sprite.create("icon_touxiangSuo", "Cmn01"));
    } else {
        // source line 716, bytecode pc 174
        (this.m_holeNum = (this.m_holeNum + 1));
        // source line 718, bytecode pc 186
        (mGemType = mHoleDate.bore_type);
        // source line 720, bytecode pc 195
        (mHoleTypeString = "Cmn03_fangxingKong");
        if ((xs.Constant_AttrType_Atk == mGemType)) {
            // source line 722, bytecode pc 223
            (mHoleTypeString = "Cmn03_sanjiaoKong");
        } else {
            if ((xs.Constant_AttrType_Def == mGemType)) {
                // source line 724, bytecode pc 256
                (mHoleTypeString = "Cmn03_fangxingKong");
            } else {
                if ((xs.Constant_AttrType_Hp == mGemType)) {
                    // source line 726, bytecode pc 289
                    (mHoleTypeString = "Cmn03_yuanxingKong");
                } else {
                    if ((xs.Constant_AttrType_Int == mGemType)) {
                        // source line 728, bytecode pc 322
                        (mHoleTypeString = "Cmn03_lingxingKong");
                    }
                }
            }
        }
        // source line 730, bytecode pc 362
        (mHoleSp = xs.Factorys.Sprite.create(mHoleTypeString, "Cmn03"));
    }
    // source line 733, bytecode pc 414
    xs.Utils.Node.attachNodes(mNodeBg, mHoleSp, { desc: "c" });
    // source line 735, bytecode pc 419
    (isHaveGemAndNoLock = false);
    if (mHoleDate) {
        // source line 738, bytecode pc 439
        (mGemId = mHoleDate.user_gem_id);
        if ((0 != mGemId)) {
            // source line 740, bytecode pc 504
            (mGemsMode = xs.Profile.GameData.Mgr.getInstance().Gems.getByPkId(mGemId));
            // source line 742, bytecode pc 522
            (mSp = mGemsMode.createIcon_GradeAndAttribute());
            // source line 748, bytecode pc 592
            mSp.setOnClickCallBack(this.showReplaceDialogGems.bind({ holeIdx: gemIdx, thisGemId: mGemId, holeType: mGemType, tmpThis: this }));
            // source line 751, bytecode pc 644
            xs.Utils.Node.attachNodes(mNodeBg, mSp, { desc: "c" });
            // source line 754, bytecode pc 649
            (isHaveGemAndNoLock = true);
        }
    }
    if ((xs.Views.Gems.Hole_Type_Lock == mHoleType)) {
        // source line 760, bytecode pc 720
        (mLockSp = xs.Factorys.Sprite.create("gemsScene_lock", "GemsScene"));
        // source line 761, bytecode pc 798
        xs.Utils.Node.attachNodes(mNodeBg, mLockSp, { desc: "c", offset: cc.p(0, -20) });
        // source line 762, bytecode pc 811
        this._addLockNum();
        // source line 763, bytecode pc 816
        (isHaveGemAndNoLock = false);
    }
    if (isHaveGemAndNoLock) {
        // source line 767, bytecode pc 839
        (this.m_holeHaveGemNum = (this.m_holeHaveGemNum + 1));
    }
    // source line 770, bytecode pc 873
    (mGemBtn = xs.Views.Btn.createInvisibleWithParent(mNodeBg));
    // source line 776, bytecode pc 943
    mGemBtn.setOnClickCallBack(this.showReplaceDialogGems.bind({ holeIdx: gemIdx, thisGemId: mGemId, holeType: mGemType, tmpThis: this }));
    // source line 779, bytecode pc 947
    return mNodeBg;
},
    _initRefine: function() {
    var _strLab;
    // source line 784, bytecode pc 41
    (_strLab = xs.Factorys.Label.createByStyleIdWithString("LS_yuanfenInf2", " 0/9"));
    // source line 785, bytecode pc 88
    xs.Utils.replaceNode(this.m_epsCcbNode, this.cfg.refinePosTag, _strLab, true);
},
    _setRefineLv: function(model) {
    var mLvNum, mMaxLvNum, _strLab;
    // source line 791, bytecode pc 19
    (mLvNum = (model.getRefineLevel() - 1));
    // source line 792, bytecode pc 39
    (mMaxLvNum = (model.getMaxRefineLevel() - 1));
    // source line 794, bytecode pc 95
    (_strLab = xs.Factorys.Label.createByStyleIdWithString("LS_yuanfenInf2", (((" " + mLvNum) + "/") + mMaxLvNum)));
    // source line 795, bytecode pc 142
    xs.Utils.replaceNode(this.m_epsCcbNode, this.cfg.refinePosTag, _strLab, true);
},
    _replaceSp: function(mSp, tag) {
    var _replaceNode, _position, _zOrder;
    // source line 801, bytecode pc 24
    (_replaceNode = this.m_epsCcbNode.getChildByTag(tag));
    // source line 802, bytecode pc 42
    (_position = _replaceNode.getPosition());
    // source line 803, bytecode pc 60
    (_zOrder = _replaceNode.getZOrder());
    // source line 804, bytecode pc 75
    _replaceNode.removeFromParent();
    // source line 806, bytecode pc 94
    mSp.setTag(tag);
    // source line 807, bytecode pc 113
    mSp.setPosition(_position);
    // source line 808, bytecode pc 132
    mSp.setZOrder(_zOrder);
    // source line 809, bytecode pc 154
    this.m_epsCcbNode.addChild(mSp);
},
    showReplaceDialogGems: function() {
    var mHoleIdx, mGemId, mGoleType, GemsSophisticationReplaceDialog;
    // source line 814, bytecode pc 9
    (mHoleIdx = this.holeIdx);
    // source line 815, bytecode pc 19
    (mGemId = this.thisGemId);
    // source line 816, bytecode pc 29
    (mGoleType = this.holeType);
    if (xs.Utils.isSet(mGemId)) {
        // source line 821, bytecode pc 126
        (GemsSophisticationReplaceDialog = xs.Views.Mgr.showDialogByName("GemsSophisticationReplaceDialog", { holeIdx: mHoleIdx, gemId: mGemId, holeType: mGoleType }));
        // source line 824, bytecode pc 148
        GemsSophisticationReplaceDialog.setListener(this.tmpThis);
    }
},
    refreshFromMenuClick: function() {
    if (this.isNeedRefresh) {
        // source line 833, bytecode pc 23
        this._update();
    }
},
    ReplaceCardDialog_close: function() {
    // source line 839, bytecode pc 7
    (this.m_replaceDialog = null);
},
    onEnterTransitionDidFinish: function() {
    // source line 843, bytecode pc 12
    this._super();
},
    onExitTransitionDidStart: function() {
    // source line 849, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 854, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 855, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 856, bytecode pc 56
    this.m_instructionBtn.setTouchPriority((this.m_baseTouchPriority - 1));
},
    replaceGemsCallBack: function(param) {
    // source line 862, bytecode pc 16
    this._inlayOrRemove(param);
}
}));
// source line 867, bytecode pc 1697
(xs.Views.Gems.GemsSophisticationView.create = function() {
    var ret;
    // source line 868, bytecode pc 28
    (ret = new xs.Views.Gems.GemsSophisticationView());
    if ((ret && ret.init())) {
        // source line 870, bytecode pc 60
        return ret;
    }
    // source line 872, bytecode pc 62
    return null;
});
