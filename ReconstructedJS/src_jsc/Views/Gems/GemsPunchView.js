// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Gems/GemsPunchView.js:1
// source line 10, bytecode pc 81
(xs.Views.Gems.GemsPunchView_NoSelectEqu_Cfg = [ { tag: 1, type: "ls", name: "m_labelSelect", id: "LS_danyao", stringId: "gems_str_selectEps" } ]);
// source line 28, bytecode pc 861
(xs.Views.Gems.GemsPunchView_EpsCcbCfg = [
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
        tag: 31,
        type: "ls",
        name: "m_labelStilettoConsume",
        id: "LS_zhanchang_zi1",
        stringId: "gems_str_punch_consume"
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
        stringId: "gems_str_punch_residue"
    },
    {
        tag: 34,
        type: "ls",
        name: "m_labelResidueStilettoNum",
        id: "LS_zhanchang_zi2",
        string: "111",
        offset: cc.p(0, -0)
    },
    { tag: 35, type: "bs", name: "m_btnSophistication", id: "BS_Btn1", stringId: "gems_str_punch_btn" },
    {
        tag: 41,
        type: "ls",
        name: "m_labelEqsGeneral",
        id: "LS_yuanfenInf2",
        string: "装\n备\n于\n",
        offset: cc.p(-40, 0)
    }
]);
// source line 41, bytecode pc 948
(xs.Views.Gems.GemsPunchView_cfg = {
    GemLightZOrder: 12,
    mStarlaNum: 9,
    refinePosTag: 11,
    mGemHoleNum: 5,
    gemOTag: 20,
    starStartTag: 100,
    starStartBgTag: 200,
    everyTimeRefactor: "1"
});
// source line 511, bytecode pc 1307
(xs.Views.Gems.GemsPunchView = cc.Layer.extend({
    ctor: function() {
    // source line 48, bytecode pc 12
    this._super();
    // source line 49, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(viewType) {
    // source line 54, bytecode pc 13
    !this._super();
    // source line 57, bytecode pc 21
    (this.m_noSelectCcbNode = null);
    // source line 59, bytecode pc 29
    (this.m_punchNode = null);
    // source line 61, bytecode pc 37
    (this.m_labelFighting = null);
    // source line 64, bytecode pc 45
    (this._equData = null);
    // source line 66, bytecode pc 55
    (this.viewType = viewType);
    // source line 67, bytecode pc 68
    this.loadEqu();
    // source line 70, bytecode pc 80
    (this.m_BoreAnimation_Array = []);
    // source line 73, bytecode pc 119
    (this._instructionBtn = xs.Views.Btn.create("Btn_Instruction"));
    // source line 74, bytecode pc 210
    xs.Utils.Node.attachNodes(this, this._instructionBtn, { desc: "lt", offset: cc.p(60, -160), sc: true }, null);
    // source line 75, bytecode pc 231
    this._instructionBtn.setTouchPriority(-20);
    // source line 82, bytecode pc 268
    this._instructionBtn.setOnClickCallBack(function() {
    // source line 81, bytecode pc 12
    this._showInstructionDialog();
}.bind(this));
    // source line 85, bytecode pc 270
    return true;
},
    loadEqu: function(pk_id) {
    var equ_obj;
    if (xs.Utils.isSet(pk_id)) {
        // source line 92, bytecode pc 84
        (equ_obj = xs.Profile.GameData.Mgr.getInstance().Equipments.getByPkId(pk_id));
        // source line 93, bytecode pc 101
        this._loadEqu(equ_obj);
    } else {
        // source line 95, bytecode pc 119
        this._loadNoSelectEqu();
    }
},
    _loadNoSelectEqu: function() {
    var strNoSelectLable, _strLab;
    // source line 102, bytecode pc 19
    this._hideCCb(this.m_punchNode);
    if (!xs.Utils.isSet(this.m_noSelectCcbNode)) {
        // source line 105, bytecode pc 102
        (this.m_noSelectCcbNode = cc.BuilderReader.load(xs.Cfg.CCBI.GemsNoEps));
        // source line 106, bytecode pc 131
        this.m_noSelectCcbNode.setAnchorPoint(xs.ap_lb);
        // source line 108, bytecode pc 227
        xs.Utils.Node.attachNodes(this, this.m_noSelectCcbNode, { desc: "c", offset: this._ip4sPosTransform(cc.p(-182, -96)) });
        // source line 110, bytecode pc 276
        (strNoSelectLable = this.m_noSelectCcbNode.getChildByTag(xs.Views.Gems.GemsPunchView_NoSelectEqu_Cfg[0].tag));
        // source line 111, bytecode pc 345
        (_strLab = xs.Factorys.Label.createByStyleIdWithString("LS_yuanfenInf2", xs.Tools.String.createString("gems_noSelectDesc")));
        // source line 112, bytecode pc 403
        _strLab.setPosition(strNoSelectLable.getPosition().x, (strNoSelectLable.getPosition().y - 50));
        // source line 113, bytecode pc 441
        xs.Utils.Node.attachNodes(this.m_noSelectCcbNode, _strLab);
        // source line 115, bytecode pc 498
        xs.Utils.UI.replaceCcbByCfg(this.m_noSelectCcbNode, xs.Views.Gems.GemsPunchView_NoSelectEqu_Cfg, this);
        // source line 116, bytecode pc 538
        (this.m_btnNoSelectEps = xs.Views.Btn.createInvisibleWithParent(this.m_noSelectCcbNode));
        // source line 117, bytecode pc 576
        this.m_btnNoSelectEps.setOnClickCallBack(this._showNoSelectEquDialog.bind(this));
    } else {
        // source line 119, bytecode pc 601
        this._showCCb(this.m_noSelectCcbNode);
    }
},
    _loadEqu: function(obj_equ) {
    // source line 128, bytecode pc 19
    this._hideCCb(this.m_noSelectCcbNode);
    // source line 130, bytecode pc 29
    (this._equData = obj_equ);
    if (!xs.Utils.isSet(this.m_punchNode)) {
        // source line 134, bytecode pc 112
        (this.m_punchNode = xs.ccb_reader.load(xs.Cfg.CCBI.GemsPuhchEps));
        // source line 135, bytecode pc 141
        this.m_punchNode.setAnchorPoint(xs.ap_lb);
        // source line 136, bytecode pc 161
        this._amendCcbiPos(this.m_punchNode);
        // source line 137, bytecode pc 182
        this.m_punchNode.setZOrder(-1);
        // source line 139, bytecode pc 195
        this._initRefine();
        // source line 141, bytecode pc 252
        xs.Utils.UI.replaceCcbByCfg(this.m_punchNode, xs.Views.Gems.GemsPunchView_EpsCcbCfg, this);
        // source line 143, bytecode pc 330
        xs.Utils.Node.attachNodes(this, this.m_punchNode, { desc: "lb", offset: cc.p(0, 0) });
    } else {
        // source line 147, bytecode pc 355
        this._showCCb(this.m_punchNode);
    }
    // source line 150, bytecode pc 368
    this._setPunchNodeCallBack();
    // source line 151, bytecode pc 381
    this._loadEquData();
},
    _setPunchNodeCallBack: function() {
    var _punchStoneNum, mList;
    // source line 159, bytecode pc 66
    (_punchStoneNum = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_PunchStone));
    // source line 161, bytecode pc 110
    this.m_labelResidueStilettoNum.setString(xs.Utils.floorSafe(_punchStoneNum));
    if (_punchStoneNum) {
        // source line 164, bytecode pc 139
        (mList = this._equData.getBoreList());
        // source line 165, bytecode pc 156
        this.checkBoreList(mList);
        if ((mList.length != xs.Views.Gems.GemsPunchView_cfg.mGemHoleNum)) {
            // source line 178, bytecode pc 232
            this.m_btnSophistication.setOnClickCallBack(function() {
    // source line 176, bytecode pc 134
    xs.Tools.Net.requestGemsPunch({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    user_equipment_id: this._equData.getPkId()
}, this.onResponse, this.onResponseErr, this);
}.bind(this));
        } else {
            // source line 181, bytecode pc 257
            this.m_btnSophistication.setEventOnDisable(true);
            // source line 183, bytecode pc 281
            this.m_btnSophistication.setOnClickCallBack(function() {
    // source line 184, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("gems_str_punch_holeIsMax"));
});
        }
    } else {
        // source line 190, bytecode pc 306
        this.m_btnSophistication.setEventOnDisable(true);
        // source line 192, bytecode pc 330
        this.m_btnSophistication.setOnClickCallBack(function() {
    // source line 193, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("gems_str_punch_stoneNotEnought"));
});
    }
},
    checkBoreList: function(list) {
    var fistBoreType, AllBoreOneProperty, i, BorePosition, gemLightArm;
    if ((list.length != 0)) {
        // source line 202, bytecode pc 28
        (fistBoreType = list[0].bore_type);
        // source line 203, bytecode pc 33
        (AllBoreOneProperty = 1);
        // source line 204, bytecode pc 38
        (i = 1);
        while ((i < list.length)) {
            if ((list[i].bore_type == fistBoreType)) {
                // source line 206, bytecode pc 80
                AllBoreOneProperty++;
            }
            // source line 204, bytecode pc 95
            i++;
        }
        if ((AllBoreOneProperty == 5)) {
            // source line 210, bytecode pc 129
            (i = 0);
            while ((i < 5)) {
                // source line 212, bytecode pc 197
                (BorePosition = this.m_punchNode.getChildByTag((xs.Views.Gems.GemsPunchView_cfg.gemOTag + i)).getPosition());
                if (!this.m_BoreAnimation_Array[i]) {
                    // source line 215, bytecode pc 254
                    (gemLightArm = xs.Views.Armature.AutoAudioArmature.create("GemLight"));
                    // source line 216, bytecode pc 273
                    gemLightArm.setPosition(BorePosition);
                    // source line 217, bytecode pc 314
                    gemLightArm.setZOrder(xs.Views.Gems.GemsPunchView_cfg.GemLightZOrder);
                    // source line 218, bytecode pc 354
                    gemLightArm.playAniById("ani_gemlight", { loop: true, speed: 1 });
                    // source line 219, bytecode pc 392
                    xs.Utils.Node.attachNodes(this.m_punchNode, gemLightArm);
                    // source line 221, bytecode pc 406
                    (this.m_BoreAnimation_Array[i] = gemLightArm);
                }
                // source line 210, bytecode pc 421
                i++;
            }
        } else {
            // source line 225, bytecode pc 443
            (i = 0);
            while ((i < this.m_BoreAnimation_Array.length)) {
                if (this.m_BoreAnimation_Array[i]) {
                    // source line 227, bytecode pc 486
                    this.m_BoreAnimation_Array[i].removeFromParent();
                    // source line 228, bytecode pc 498
                    (this.m_BoreAnimation_Array[i] = null);
                }
                // source line 225, bytecode pc 513
                i++;
            }
        }
    } else {
        // source line 234, bytecode pc 544
        (i = 0);
        while ((i < this.m_BoreAnimation_Array.length)) {
            if (this.m_BoreAnimation_Array[i]) {
                // source line 236, bytecode pc 587
                this.m_BoreAnimation_Array[i].removeFromParent();
                // source line 237, bytecode pc 599
                (this.m_BoreAnimation_Array[i] = null);
            }
            // source line 234, bytecode pc 614
            i++;
        }
    }
},
    onResponse: function(jsonObj) {
    // source line 244, bytecode pc 30
    this.loadEqu(this._equData.getPkId());
    // source line 245, bytecode pc 90
    xs.Views.Mgr.showToast(xs.Tools.String.createString("gems_str_punch_success"));
},
    onResponseErr: function(jsonObj) {
    // source line 249, bytecode pc 30
    this.loadEqu(this._equData.getPkId());
},
    _loadEquData: function() {
    var general, epsSp, mKuangSp;
    // source line 254, bytecode pc 68
    this.m_labelFighting.setString(xs.Utils.floorSafe(this._equData.getAttrNaked(xs.Constant_AttrType_FightPoint)));
    // source line 256, bytecode pc 126
    this.m_labelEpsProperty.setString(xs.Utils.floorSafe(this._equData.getEffectValue()));
    // source line 258, bytecode pc 184
    this.m_labelEpsName.setString((this._equData.getNameString().toWordBreak() || ""));
    // source line 261, bytecode pc 242
    (general = xs.Profile.GameData.Mgr.getInstance().Equipments.getGeneral(this._equData));
    if (general) {
        // source line 263, bytecode pc 327
        this.m_labelEqsGeneral.setString((xs.Tools.String.createString("gems_epsOn") + general.getNameString()).toWordBreak());
    } else {
        // source line 265, bytecode pc 356
        this.m_labelEqsGeneral.setString("");
    }
    // source line 270, bytecode pc 403
    this.m_labelEpsLV.setString((this._equData.getLevel() || "1"));
    // source line 272, bytecode pc 479
    xs.Utils.replaceNode(this.m_punchNode, xs.Views.Gems.GemsPunchView_EpsCcbCfg[4].tag, this._equData.createEffectTypeSmallIcon());
    // source line 274, bytecode pc 492
    this._setRefineLv();
    // source line 277, bytecode pc 574
    xs.Utils.replaceNode(this.m_punchNode, xs.Views.Gems.GemsPunchView_EpsCcbCfg[2].tag, this._equData.createPartView("pos_type"));
    // source line 280, bytecode pc 606
    (epsSp = this._equData.getRes().createOriginalSprite());
    // source line 281, bytecode pc 651
    xs.assert(epsSp, "_updateEpsCcb epsSp is null", this._equData.getNameString());
    if ((xs.Constant_Equ_PosType_Kit == this._equData.getEffectType())) {
        // source line 284, bytecode pc 726
        (mKuangSp = xs.Factorys.Sprite.create("gemsScene_jinnanbiangkuang", "GemsScene"));
        // source line 285, bytecode pc 747
        mKuangSp.setScale(1.2);
        // source line 286, bytecode pc 799
        xs.Utils.Node.attachNodes(epsSp, mKuangSp, { desc: "c" });
        // source line 287, bytecode pc 820
        epsSp.setScale(0.8);
    }
    // source line 290, bytecode pc 857
    (this.m_ConBtn = xs.Views.Btn.createInvisibleWithParent(epsSp));
    // source line 292, bytecode pc 918
    xs.Utils.replaceNode(this.m_punchNode, xs.Views.Gems.GemsPunchView_EpsCcbCfg[1].tag, epsSp);
    // source line 296, bytecode pc 956
    this.m_ConBtn.setOnClickCallBack(this._showNoSelectEquDialog.bind(this));
    // source line 298, bytecode pc 969
    this._setGemsAndLockBtn();
},
    _setGemsAndLockBtn: function() {
    var mHoleIdx, mSp;
    // source line 303, bytecode pc 4
    (mHoleIdx = 0);
    while ((mHoleIdx < xs.Views.Gems.GemsPunchView_cfg.mGemHoleNum)) {
        // source line 304, bytecode pc 30
        (mSp = this._getGemCon(mHoleIdx));
        // source line 305, bytecode pc 93
        xs.Utils.replaceNode(this.m_punchNode, (xs.Views.Gems.GemsPunchView_cfg.gemOTag + mHoleIdx), mSp);
        // source line 303, bytecode pc 108
        mHoleIdx++;
    }
},
    _getHoleTypeByIdx: function(mHoleIdx) {
    var mHoleDate;
    if (this._equData) {
        // source line 314, bytecode pc 37
        (mHoleDate = this._getHoleDateByEpsAndIdx(this._equData, mHoleIdx));
        if (mHoleDate) {
            // source line 316, bytecode pc 54
            return mHoleDate.is_lock;
        }
    }
    // source line 319, bytecode pc 75
    return xs.Views.Gems.Hole_Type_None;
},
    _getHoleDateByEpsAndIdx: function(mEps, idx) {
    var mList;
    // source line 324, bytecode pc 17
    (mList = mEps.getBoreList());
    if ((mList.length == 0)) {
        // source line 326, bytecode pc 34
        return null;
    } else {
        if ((idx < mList.length)) {
            // source line 328, bytecode pc 64
            return mList[idx];
        }
    }
    // source line 330, bytecode pc 66
    return null;
},
    _getGemCon: function(gemIdx) {
    var mHoleType, mNodeBg, mHoleSp, mHoleDate, mHoleTypeString, mGemsDataJson, mGemsMode, mSp, mGemBtn;
    // source line 337, bytecode pc 19
    (mHoleType = this._getHoleTypeByIdx(gemIdx));
    // source line 339, bytecode pc 61
    (mNodeBg = xs.Factorys.Sprite.create("Cmn03_baoshikongdi", "Cmn03"));
    // source line 340, bytecode pc 66
    (mHoleSp = null);
    // source line 341, bytecode pc 93
    (mHoleDate = this._getHoleDateByEpsAndIdx(this._equData, gemIdx));
    if ((xs.Views.Gems.Hole_Type_None == mHoleType)) {
        // source line 345, bytecode pc 164
        (mHoleSp = xs.Factorys.Sprite.create("icon_touxiangSuo", "Cmn01"));
    } else {
        // source line 347, bytecode pc 199
        (mHoleTypeString = this._equData.getBoreSpriteNameByType(mHoleDate.bore_type));
        // source line 348, bytecode pc 239
        (mHoleSp = xs.Factorys.Sprite.create(mHoleTypeString, "Cmn03"));
    }
    // source line 351, bytecode pc 291
    xs.Utils.Node.attachNodes(mNodeBg, mHoleSp, { desc: "c" });
    if ((!xs.Utils.isEmpty(mHoleDate) && (0 != mHoleDate.user_gem_id))) {
        // source line 355, bytecode pc 398
        (mGemsDataJson = xs.Profile.GameData.Mgr.getInstance().Gems.getByPkId(mHoleDate.user_gem_id));
        // source line 356, bytecode pc 432
        (mGemsMode = xs.Models.Gems.createWithJson(mGemsDataJson));
        // source line 358, bytecode pc 450
        (mSp = mGemsMode.createIcon_GradeAndAttribute());
        // source line 364, bytecode pc 530
        mSp.setOnClickCallBack(this.showReplaceDialogGems.bind({ holeIdx: gemIdx, thisGemId: mHoleDate.user_gem_id, holeType: mHoleDate.bore_type, tmpThis: this }));
        // source line 367, bytecode pc 582
        xs.Utils.Node.attachNodes(mNodeBg, mSp, { desc: "c" });
    } else {
        if (!xs.Utils.isEmpty(mHoleDate)) {
            // source line 370, bytecode pc 652
            (mGemBtn = xs.Views.Btn.createInvisibleWithParent(mNodeBg));
            // source line 375, bytecode pc 732
            mGemBtn.setOnClickCallBack(this.showReplaceDialogGems.bind({ holeIdx: gemIdx, thisGemId: mHoleDate.user_gem_id, holeType: mHoleDate.bore_type, tmpThis: this }));
        }
    }
    // source line 379, bytecode pc 736
    return mNodeBg;
},
    showReplaceDialogGems: function() {
    var mHoleIdx, mGemId, mGoleType, GemsSophisticationReplaceDialog;
    // source line 384, bytecode pc 9
    (mHoleIdx = this.holeIdx);
    // source line 385, bytecode pc 19
    (mGemId = this.thisGemId);
    // source line 386, bytecode pc 29
    (mGoleType = this.holeType);
    if (xs.Utils.isSet(mGemId)) {
        // source line 391, bytecode pc 126
        (GemsSophisticationReplaceDialog = xs.Views.Mgr.showDialogByName("GemsSophisticationReplaceDialog", { holeIdx: mHoleIdx, gemId: mGemId, holeType: mGoleType }));
        // source line 394, bytecode pc 148
        GemsSophisticationReplaceDialog.setListener(this.tmpThis);
    }
},
    _hideCCb: function(obj_ccb) {
    if (xs.Utils.isSet(obj_ccb)) {
        // source line 403, bytecode pc 46
        obj_ccb.setVisible(false);
    }
},
    _showCCb: function(obj_ccb) {
    if (xs.Utils.isSet(obj_ccb)) {
        // source line 410, bytecode pc 46
        obj_ccb.setVisible(true);
    }
},
    _amendCcbiPos: function(mCcbi) {
    var mChilds, mChildIdx, mChild, mOriginalPos;
    // source line 416, bytecode pc 17
    (mChilds = mCcbi.getChildren());
    if (mChilds) {
        for (var mChildIdx in mChilds) {
            // source line 419, bytecode pc 52
            (mChild = mChilds[mChildIdx]);
            if (!(mChild.getPosition)) continue;
            // source line 421, bytecode pc 83
            (mOriginalPos = mChild.getPosition());
            // source line 422, bytecode pc 115
            mChild.setPosition(this._ip4sPosTransform(mOriginalPos));
        }
    }
},
    _ip4sPosTransform: function(mPos) {
    var visibleSize, mScaleW, mScaleH;
    // source line 431, bytecode pc 24
    (visibleSize = xs.director.getVisibleSize());
    // source line 432, bytecode pc 40
    (mScaleW = (visibleSize.width / 960));
    // source line 433, bytecode pc 56
    (mScaleH = (visibleSize.height / 640));
    // source line 434, bytecode pc 99
    return cc.p((mPos.x * mScaleW), (mPos.y * mScaleH));
},
    _initRefine: function() {
    var _strLab;
    // source line 439, bytecode pc 41
    (_strLab = xs.Factorys.Label.createByStyleIdWithString("LS_yuanfenInf2", " 0/9"));
    // source line 440, bytecode pc 102
    xs.Utils.replaceNode(this.m_punchNode, xs.Views.Gems.GemsPunchView_cfg.refinePosTag, _strLab, true);
},
    _setRefineLv: function() {
    var mLvNum, mMaxLvNum, _strLab;
    // source line 446, bytecode pc 22
    (mLvNum = (this._equData.getRefineLevel() - 1));
    // source line 447, bytecode pc 45
    (mMaxLvNum = (this._equData.getMaxRefineLevel() - 1));
    // source line 449, bytecode pc 101
    (_strLab = xs.Factorys.Label.createByStyleIdWithString("LS_yuanfenInf2", (((" " + mLvNum) + "/") + mMaxLvNum)));
    // source line 450, bytecode pc 162
    xs.Utils.replaceNode(this.m_punchNode, xs.Views.Gems.GemsPunchView_cfg.refinePosTag, _strLab, true);
},
    onEnterTransitionDidFinish: function() {
    // source line 495, bytecode pc 12
    this._super();
},
    _showNoSelectEquDialog: function() {
    // source line 459, bytecode pc 59
    (this.m_replaceDialog = xs.Views.Mgr.showDialogByName("ReplaceCardDialog", xs.Views.Dialog.ReplaceCardDialog_Type_GemsEps));
    if (this._equData) {
        // source line 462, bytecode pc 97
        this.m_replaceDialog.setReplaceData(this._equData, true);
    }
    // source line 467, bytecode pc 123
    this.m_replaceDialog.setHideData([], true);
    // source line 469, bytecode pc 143
    this.m_replaceDialog.setListener(this);
},
    _showInstructionDialog: function() {
    // source line 473, bytecode pc 49
    xs.Views.Mgr.showDialogByName("InstructionDialog", { key: "gems_str_gemExplain" });
},
    ReplaceCardDialog_replaceCard: function(data, cardType) {
    // source line 479, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 480, bytecode pc 43
    this._loadEqu(data);
},
    ReplaceCardDialog_close: function() {
    // source line 484, bytecode pc 7
    (this.m_replaceDialog = null);
},
    refreshFromMenuClick: function() {
    if (this._equData) {
        // source line 490, bytecode pc 30
        this._loadEqu(this._equData);
    }
},
    onExitTransitionDidStart: function() {
    // source line 501, bytecode pc 12
    this._super();
},
    replaceGemsCallBack: function(param) {
    // source line 507, bytecode pc 16
    this._inlayOrRemove(param);
},
    _inlayOrRemove: function(param) {
    var mType, mHoleIdx, mGemPkId, mHoleDate;
    // source line 512, bytecode pc 17
    (mType = param.type);
    // source line 513, bytecode pc 29
    (mHoleIdx = param.holeIdx);
    // source line 514, bytecode pc 41
    (mGemPkId = param.gemPkId);
    // source line 515, bytecode pc 68
    (mHoleDate = this._getHoleDateByEpsAndIdx(this._equData, mHoleIdx));
    if (((xs.Constant_GemsSophistication_Inlay == mType) || (xs.Constant_GemsSophistication_Change == mType))) {
        // source line 546, bytecode pc 251
        xs.Tools.Net.requestGemsInset({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    bore_id: mHoleDate.bore_id,
    user_gem_id: mGemPkId
}, function(jsonData) {
    var mStrId, equ_obj;
    if (jsonData.result) {
        // source line 526, bytecode pc 39
        xs.Views.Mgr.hideDialog();
        // source line 527, bytecode pc 48
        (mStrId = "");
        if ((xs.Constant_GemsSophistication_Inlay == mType)) {
            // source line 529, bytecode pc 82
            (mStrId = "gems_str_gemInset");
        } else {
            if ((xs.Constant_GemsSophistication_Change == mType)) {
                // source line 531, bytecode pc 121
                (mStrId = "gems_str_gemChange");
            }
        }
        // source line 533, bytecode pc 179
        xs.Views.Mgr.showToast(xs.Tools.String.createString(mStrId));
        if (this._equData) {
            // source line 536, bytecode pc 259
            (equ_obj = xs.Profile.GameData.Mgr.getInstance().Equipments.getByPkId(this._equData.getPkId()));
            // source line 537, bytecode pc 276
            this._loadEqu(equ_obj);
        }
        // source line 539, bytecode pc 278
        return true;
    }
}, function() {
}, this);
    } else {
        if ((xs.Constant_GemsSophistication_Dismantle == mType)) {
            // source line 571, bytecode pc 413
            xs.Tools.Net.requestGemsRemove({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    bore_id: mHoleDate.bore_id,
    user_gem_id: mGemPkId
}, function(jsonData) {
    var equ_obj;
    if (jsonData.result) {
        // source line 558, bytecode pc 39
        xs.Views.Mgr.hideDialog();
        // source line 559, bytecode pc 99
        xs.Views.Mgr.showToast(xs.Tools.String.createString("gems_str_gemRemove"));
        if (this._equData) {
            // source line 561, bytecode pc 179
            (equ_obj = xs.Profile.GameData.Mgr.getInstance().Equipments.getByPkId(this._equData.getPkId()));
            // source line 562, bytecode pc 196
            this._loadEqu(equ_obj);
        }
        // source line 564, bytecode pc 198
        return true;
    }
}, function() {
}, this);
        } else {
            // source line 575, bytecode pc 453
            xs.assert(true, "no this type!", mType);
        }
    }
}
}));
// source line 580, bytecode pc 1338
(xs.Views.Gems.GemsPunchView.create = function(viewType) {
    var ret;
    // source line 581, bytecode pc 28
    (ret = new xs.Views.Gems.GemsPunchView());
    if ((ret && ret.init(viewType))) {
        // source line 583, bytecode pc 64
        return ret;
    }
    // source line 585, bytecode pc 66
    return null;
});
