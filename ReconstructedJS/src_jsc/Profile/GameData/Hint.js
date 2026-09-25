// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/GameData/Hint.js:1
// source line 566, bytecode pc 708
(xs.Profile.GameData.Hint = xs.Profile.GameData.Base.extend({
    name: "xs.Profile.GameData.Map",
    dump: xs.Debug.emptyFunc,
    init: function(param) {
    // source line 12, bytecode pc 16
    this._super(param);
    // source line 15, bytecode pc 63
    xs.Utils.Notify.addObserver(this, this.updateHintInfo, xs.Constant_Notify_ModelChange_Push);
    // source line 18, bytecode pc 110
    xs.Utils.Notify.addObserver(this, this._clearTeamInfo, xs.Constant_Notify_Buddy_Change);
    // source line 19, bytecode pc 157
    xs.Utils.Notify.addObserver(this, this._generalsChange, xs.Constant_Notify_Generals_Change);
    // source line 20, bytecode pc 204
    xs.Utils.Notify.addObserver(this, this._skillsChange, xs.Constant_Notify_Skill_Change);
    // source line 21, bytecode pc 251
    xs.Utils.Notify.addObserver(this, this._clearTeamInfo, xs.Constant_Notify_Team_Change);
    // source line 22, bytecode pc 298
    xs.Utils.Notify.addObserver(this, this._clearTeamInfo, xs.Constant_Notify_Equipmen_Change);
    // source line 23, bytecode pc 345
    xs.Utils.Notify.addObserver(this, this._clearGeneralInfo, xs.Constant_Notify_GeneralSouls_Change);
    // source line 25, bytecode pc 392
    xs.Utils.Notify.addObserver(this, this._clearEquipmentInfo, xs.Constant_Notify_EquipmenPieces_Change);
    // source line 26, bytecode pc 439
    xs.Utils.Notify.addObserver(this, this._clearChaosInfo, xs.Constant_Notify_SkillPoeces_Change);
    // source line 29, bytecode pc 441
    return true;
},
    _generalsChange: function() {
    // source line 33, bytecode pc 12
    this._clearTeamInfo();
    // source line 34, bytecode pc 25
    this._clearGeneralInfo();
},
    _skillsChange: function() {
    // source line 37, bytecode pc 12
    this._clearTeamInfo();
    // source line 38, bytecode pc 25
    this._clearChaosInfo();
},
    updateHintInfo: function() {
    if (xs.Profile.GameData.PushInfo.getInstance()) {
        // source line 43, bytecode pc 73
        (this.pushData = xs.Profile.GameData.PushInfo.getInstance());
    }
    // source line 46, bytecode pc 86
    this.updateCampHintInfo();
    // source line 47, bytecode pc 99
    this.updatePvpHintInfo();
    // source line 50, bytecode pc 112
    this.updateMenuHintInfo();
    // source line 52, bytecode pc 152
    xs.Utils.Notify.postNotification(xs.Constant_Notify_HintChange_All, this);
},
    updateTeamHintInfo: function() {
    // source line 59, bytecode pc 34
    (this.hintTeamInfo = this._invokeFuncWithCache(function() {
    // source line 58, bytecode pc 26
    return xs.Models.HintCampTeam.create();
}, null, "hintTeamInfo", null));
    // source line 61, bytecode pc 74
    xs.Utils.Notify.postNotification(xs.Constant_Notify_HintChange_TeamInfo, this);
},
    _clearTeamInfo: function() {
    if (this._cache_in_func.hintTeamInfo) {
        // source line 67, bytecode pc 28
        (this._cache_in_func.hintTeamInfo = null);
    }
    // source line 69, bytecode pc 51
    xs.log_hsq("_clearTeamInfo");
},
    _clearGeneralInfo: function() {
    // source line 74, bytecode pc 22
    xs.log_hsq("_clearGeneralInfo");
    if (this._cache_in_func.hintGeneralInfo) {
        // source line 77, bytecode pc 51
        (this._cache_in_func.hintGeneralInfo = null);
    }
},
    _clearEquipmentInfo: function() {
    // source line 83, bytecode pc 22
    xs.log_hsq("_clearEquipmentInfo");
    if (this._cache_in_func.hintEquipmentInfo) {
        // source line 86, bytecode pc 51
        (this._cache_in_func.hintEquipmentInfo = null);
    }
},
    _clearChaosInfo: function() {
    // source line 92, bytecode pc 22
    xs.log_hsq("_clearEquipmentInfo");
    if (this._cache_in_func.hintChaosInfo) {
        // source line 95, bytecode pc 51
        (this._cache_in_func.hintChaosInfo = null);
    }
},
    updateCampHintInfo: function() {
    // source line 105, bytecode pc 34
    (this.hintTeamInfo = this._invokeFuncWithCache(function() {
    // source line 104, bytecode pc 26
    return xs.Models.HintCampTeam.create();
}, null, "hintTeamInfo", null));
    // source line 110, bytecode pc 69
    (this.hintGeneralInfo = this._invokeFuncWithCache(function() {
    // source line 109, bytecode pc 26
    return xs.Models.HintCampGeneral.create();
}, null, "hintGeneralInfo", null));
    // source line 115, bytecode pc 104
    (this.hintEquipmentInfo = this._invokeFuncWithCache(function() {
    // source line 114, bytecode pc 26
    return xs.Models.HintCampEquipment.create();
}, null, "hintEquipmentInfo", null));
    // source line 117, bytecode pc 127
    xs.log_hsq("updateCampHintInfo beibao");
    // source line 122, bytecode pc 160
    (this.hintBagInfo = xs.Models.HintCampBag.create());
    // source line 125, bytecode pc 214
    (this.m_goddessHintNum = xs.Profile.GameData.Mgr.getInstance().Goddess.getNotFightGoddessNum());
},
    isTeamJoinEnabled: function(generalPosIdx) {
    // source line 130, bytecode pc 21
    return this.hintTeamInfo._isJoinEnabled(generalPosIdx);
},
    isEquipEnabled: function(generalPosIdx, equipIdx) {
    // source line 135, bytecode pc 26
    xs.log_hsq("isEquipEnabled", generalPosIdx);
    // source line 136, bytecode pc 53
    xs.log_hsq("isEquipEnabled", equipIdx);
    // source line 137, bytecode pc 79
    return this.hintTeamInfo._isEquipEnabled(generalPosIdx, equipIdx);
},
    campHintInfoCount: function() {
    if (this.hintTeamInfo) {
        // source line 143, bytecode pc 28
        return this.hintTeamInfo._getHintCount();
    }
    // source line 145, bytecode pc 30
    return 0;
},
    generalHintInfoCount: function() {
    // source line 149, bytecode pc 25
    return (this.generalReinHintInfoCount() + this.generalBreachHintInfoCount());
},
    generalReinHintInfoCount: function() {
    if (this.hintGeneralInfo) {
        // source line 155, bytecode pc 28
        return this.hintGeneralInfo._getReincarnationHintCount();
    }
    // source line 157, bytecode pc 30
    return 0;
},
    generalBreachHintInfoCount: function() {
    if (this.hintGeneralInfo) {
        // source line 163, bytecode pc 28
        return this.hintGeneralInfo._getBreachHintCount();
    }
    // source line 165, bytecode pc 30
    return 0;
},
    equipmentHintInfoCount: function() {
    if (this.hintEquipmentInfo) {
        // source line 171, bytecode pc 28
        return this.hintEquipmentInfo._getHintCount();
    }
    // source line 173, bytecode pc 30
    return 0;
},
    resetBagHint: function() {
    // source line 178, bytecode pc 22
    xs.log_hsq("resetBagHint");
    if (this.hintBagInfo) {
        // source line 180, bytecode pc 51
        this.hintBagInfo.init();
    }
},
    conBagHintInfoCount: function() {
    if (this.hintBagInfo) {
        // source line 187, bytecode pc 28
        return this.hintBagInfo._getConBagHintCount();
    }
    // source line 189, bytecode pc 30
    return 0;
},
    bagHintInfoCount: function() {
    if (this.hintBagInfo) {
        // source line 195, bytecode pc 28
        return this.hintBagInfo._getHintCount();
    }
    // source line 197, bytecode pc 30
    return 0;
},
    gemBagHintInfoCount: function() {
    if (this.hintBagInfo) {
        // source line 202, bytecode pc 28
        return this.hintBagInfo._getGemBagHintCount();
    }
    // source line 204, bytecode pc 30
    return 0;
},
    GoddessHintCount: function() {
    var _level;
    // source line 208, bytecode pc 61
    (_level = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLevel());
    if ((_level < 10)) {
        // source line 210, bytecode pc 74
        return 0;
    }
    if (!xs.Utils.isEmpty(this.m_goddessHintNum)) {
        // source line 214, bytecode pc 115
        return this.m_goddessHintNum;
    }
    // source line 216, bytecode pc 163
    return xs.Profile.GameData.Mgr.getInstance().Goddess.getNotFightGoddessNum();
},
    haveCampHintInfo: function() {
    if (((this.hintTeamInfo._getHintCount() > 0) || ((this.hintGeneralInfo._getHintCount() > 0) || ((this.hintEquipmentInfo._getHintCount() > 0) || ((this.hintBagInfo._getHintCount() > 0) || (this.GoddessHintCount() > 0)))))) {
        // source line 226, bytecode pc 120
        return true;
    }
    // source line 228, bytecode pc 122
    return false;
},
    updatePvpHintInfo: function() {
    // source line 236, bytecode pc 34
    (this.hintChaosInfo = this._invokeFuncWithCache(function() {
    // source line 235, bytecode pc 26
    return xs.Models.HintPvpChaos.create();
}, null, "hintChaosInfo", null));
},
    ladderHintInfoCount: function() {
    if (this.pushData) {
        // source line 242, bytecode pc 46
        return (this.pushData.getLadderExchangeNum_Salary() + this.pushData.getLadderExchangeNum_Honor());
    }
    // source line 244, bytecode pc 48
    return 0;
},
    ladderHintInfoCount_salary: function() {
    if (this.pushData) {
        // source line 250, bytecode pc 28
        return this.pushData.getLadderExchangeNum_Salary();
    }
    // source line 252, bytecode pc 30
    return 0;
},
    ladderHintInfoCount_honor: function() {
    if (this.pushData) {
        // source line 258, bytecode pc 28
        return this.pushData.getLadderExchangeNum_Honor();
    }
    // source line 260, bytecode pc 30
    return 0;
},
    chaosHintInfoCount: function() {
    if (this.hintChaosInfo) {
        // source line 266, bytecode pc 28
        return this.hintChaosInfo._getHintCount();
    }
    // source line 268, bytecode pc 30
    return 0;
},
    climbHintInfoCount: function() {
    if (this.pushData) {
        // source line 274, bytecode pc 28
        return this.pushData.getClimbTimes();
    }
    // source line 276, bytecode pc 30
    return 0;
},
    hulaoBattleHintInfoCount: function() {
    if (xs.Profile.Permission.isUnlock(xs.Constant_Permission_WorldBoss)) {
        if (xs.Profile.UserCfg.getHuLaoBattle()) {
            // source line 282, bytecode pc 74
            return 1;
        }
    }
    // source line 285, bytecode pc 76
    return 0;
},
    ladderWarCounts: function() {
    if (this.pushData) {
        // source line 290, bytecode pc 46
        return (this.pushData.getLadderWarNum() + this.pushData.getLadderWarExchangeNum());
    }
    // source line 292, bytecode pc 48
    return 0;
},
    ladderWarExchangeCounts: function() {
    if (this.pushData) {
        // source line 297, bytecode pc 28
        return this.pushData.getLadderWarExchangeNum();
    }
    // source line 299, bytecode pc 30
    return 0;
},
    ladderWarInfoCount: function() {
    if (this.pushData) {
        // source line 304, bytecode pc 28
        return this.pushData.getLadderWarNum();
    }
    // source line 306, bytecode pc 30
    return 0;
},
    localLadderWarCounts: function() {
    if (this.pushData) {
        // source line 312, bytecode pc 46
        return (this.pushData.getLocalLadderWarNum() + this.pushData.getLocalLadderWarExchangeNum());
    }
    // source line 314, bytecode pc 48
    return 0;
},
    localLadderWarExchangeCounts: function() {
    if (this.pushData) {
        // source line 319, bytecode pc 28
        return this.pushData.getLocalLadderWarExchangeNum();
    }
    // source line 321, bytecode pc 30
    return 0;
},
    localLadderWarInfoCount: function() {
    if (this.pushData) {
        // source line 326, bytecode pc 28
        return this.pushData.getLocalLadderWarNum();
    }
    // source line 328, bytecode pc 30
    return 0;
},
    decisiveBattleInfoCount: function() {
    if (this.pushData) {
        // source line 333, bytecode pc 28
        return this.pushData.getDecisiveBattleNum();
    }
    // source line 335, bytecode pc 30
    return 0;
},
    localDecisiveBattleInfoCount: function() {
    if (this.pushData) {
        // source line 341, bytecode pc 28
        return this.pushData.getLocalDecisiveBattleNum();
    }
    // source line 343, bytecode pc 30
    return 0;
},
    havePvpHintInfo: function() {
    if (((this.chaosHintInfoCount() > 0) || ((this.climbHintInfoCount() > 0) || ((this.ladderHintInfoCount() > 0) || ((this.decisiveBattleInfoCount() > 0) || ((this.ladderWarCounts() > 0) || ((this.localLadderWarCounts() > 0) || ((this.localDecisiveBattleInfoCount() > 0) || (this.hulaoBattleHintInfoCount() > 0))))))))) {
        // source line 356, bytecode pc 160
        return true;
    }
    // source line 358, bytecode pc 162
    return false;
},
    updatePartyHintInfo: function() {
},
    trainHintInfoCount: function() {
    if (this.pushData) {
        // source line 369, bytecode pc 28
        return this.pushData.getTrainNum();
    }
    // source line 371, bytecode pc 30
    return 0;
},
    fstpayHintInfoCount: function() {
    // source line 376, bytecode pc 1
    return 0;
},
    _otherPartyHintInfoCountByIdx: function(idx) {
    var hintNum, _partyInfo, _modelPartyEvent;
    // source line 383, bytecode pc 4
    (hintNum = 0);
    // source line 385, bytecode pc 50
    (_partyInfo = xs.Profile.GameData.PushInfo.getInstance().getPartyInfo());
    // source line 387, bytecode pc 72
    (_modelPartyEvent = _partyInfo.getPartyEventByIdx(idx));
    if (_modelPartyEvent) {
        // source line 389, bytecode pc 110
        (hintNum = (_modelPartyEvent.isReceiveAble() ? 1 : 0));
    }
    // source line 391, bytecode pc 114
    return hintNum;
},
    partyHintInfoCountByIdx: function(index) {
    var hintNum, _idx_training, _idx_fstcharge, _idx_feast, _begin;
    // source line 397, bytecode pc 4
    (hintNum = 0);
    // source line 399, bytecode pc 34
    (_idx_training = xs.Tools.Party.getTrainingIdx());
    // source line 400, bytecode pc 64
    (_idx_fstcharge = xs.Tools.Party.getFstChargeIdx());
    // source line 401, bytecode pc 94
    (_idx_feast = xs.Tools.Party.getFeastIdx());
    if ((index === _idx_training)) {
        // source line 404, bytecode pc 147
        (hintNum = xs.gd_mgr.getInstance().Hint.trainHintInfoCount());
    } else {
        if ((index === _idx_fstcharge)) {
            // source line 407, bytecode pc 205
            (hintNum = xs.gd_mgr.getInstance().Hint.fstpayHintInfoCount());
        } else {
            if ((index === _idx_feast)) {
                // source line 410, bytecode pc 291
                (hintNum = (xs.Profile.GameData.PushInfo.getInstance().getFeastInfo().isEatAble() ? 1 : 0));
            } else {
                // source line 414, bytecode pc 305
                (_begin = (_idx_feast + 1));
                // source line 415, bytecode pc 354
                (hintNum = xs.gd_mgr.getInstance().Hint._otherPartyHintInfoCountByIdx((index - _begin)));
            }
        }
    }
    // source line 418, bytecode pc 358
    return hintNum;
},
    havePartyHintInfo: function() {
    var _num, i;
    // source line 427, bytecode pc 29
    (_num = xs.Tools.Party.getPartyNum());
    // source line 429, bytecode pc 34
    (i = 0);
    while ((i < _num)) {
        if ((this.partyHintInfoCountByIdx(i) > 0)) {
            // source line 431, bytecode pc 65
            return true;
        }
        // source line 429, bytecode pc 80
        i++;
    }
    // source line 434, bytecode pc 95
    return false;
},
    updateStoreHintInfo: function() {
},
    toastHintInfoCount: function() {
    // source line 448, bytecode pc 58
    return xs.Profile.GameData.Mgr.getInstance().ToastInfo.getToastInfo().getTotalToastTimes();
},
    giftHintInfoCount: function() {
    if (this.pushData) {
        // source line 456, bytecode pc 28
        return this.pushData.getGiftCanBuyNum();
    }
    // source line 458, bytecode pc 30
    return 0;
},
    haveStoreHintInfo: function() {
    if (((this.toastHintInfoCount() > 0) || (this.giftHintInfoCount() > 0))) {
        // source line 465, bytecode pc 40
        return true;
    }
    // source line 467, bytecode pc 42
    return false;
},
    updateMenuHintInfo: function() {
    if ((this.normalMailCount() > 0)) {
    }
    if ((this.awardHintInfoCount() > 0)) {
    }
},
    getHintMailCount: function(mailType) {
    // source line 482, bytecode pc 21
    return this.pushData.getNewMailNum(mailType);
},
    awardHintInfoCount: function() {
    if (this.pushData) {
        // source line 488, bytecode pc 39
        return this.pushData.getNewMailNum(xs.Constant_HintType_Mail_Award);
    }
    // source line 490, bytecode pc 41
    return 0;
},
    normalMailCount: function() {
    var count;
    if (this.pushData) {
        // source line 495, bytecode pc 15
        (count = 0);
        // source line 496, bytecode pc 47
        (count = this.pushData.getNewMailNum(xs.Constant_HintType_Mail_System));
        // source line 497, bytecode pc 83
        (count = (count + this.pushData.getNewMailNum(xs.Constant_HintType_Mail_Friend)));
        // source line 498, bytecode pc 119
        (count = (count + this.pushData.getNewMailNum(xs.Constant_HintType_Mail_Report)));
        // source line 499, bytecode pc 155
        (count = (count + this.pushData.getNewMailNum(xs.Constant_HintType_Mail_Charge)));
        // source line 500, bytecode pc 159
        return count;
    }
    // source line 502, bytecode pc 161
    return 0;
},
    msgMailHintInfoCount: function() {
    // source line 507, bytecode pc 37
    return xs.Models.MailModel.getInstance().getNewUserMailNum();
},
    mailHintInfoCount: function() {
    var count;
    // source line 511, bytecode pc 4
    (count = 0);
    // source line 512, bytecode pc 36
    (count = this.pushData.getNewMailNum(xs.Constant_HintType_Mail_System));
    // source line 513, bytecode pc 72
    (count = (count + this.pushData.getNewMailNum(xs.Constant_HintType_Mail_Friend)));
    // source line 514, bytecode pc 108
    (count = (count + this.pushData.getNewMailNum(xs.Constant_HintType_Mail_Award)));
    // source line 515, bytecode pc 144
    (count = (count + this.pushData.getNewMailNum(xs.Constant_HintType_Mail_Report)));
    // source line 516, bytecode pc 180
    (count = (count + this.pushData.getNewMailNum(xs.Constant_HintType_Mail_Charge)));
    // source line 517, bytecode pc 184
    return count;
},
    haveMenuHintInfo: function() {
    if ((this.mailHintInfoCount() > 0)) {
        // source line 523, bytecode pc 20
        return true;
    }
    // source line 525, bytecode pc 22
    return false;
},
    getWishinHint: function() {
    // source line 530, bytecode pc 17
    return this.pushData.getIsWishin();
},
    getHintUnionForType: function(unionType) {
    if (this.pushData) {
        // source line 536, bytecode pc 55
        xs.log("Hint Point", this.pushData.getNewUnionHitNum(unionType));
        // source line 537, bytecode pc 82
        xs.log("Hint Point1", unionType);
        // source line 538, bytecode pc 118
        return ((this.pushData.getNewUnionHitNum(unionType) > 0) ? true : false);
    }
    // source line 540, bytecode pc 120
    return false;
},
    unionHintInfoCount: function() {
    var count;
    // source line 544, bytecode pc 4
    (count = 0);
    // source line 545, bytecode pc 36
    (count = this.pushData.getNewUnionHitNum(xs.Constant_HintType_Union_Donate));
    // source line 546, bytecode pc 72
    (count = (count + this.pushData.getNewUnionHitNum(xs.Constant_HintType_Union_Shop)));
    // source line 547, bytecode pc 108
    (count = (count + this.pushData.getNewUnionHitNum(xs.Constant_HintType_Union_Depot)));
    // source line 548, bytecode pc 144
    (count = (count + this.pushData.getNewUnionHitNum(xs.Constant_HintType_UnionWar_signup)));
    // source line 549, bytecode pc 148
    return count;
},
    haveUnionHintInfo: function() {
    if ((this.unionHintInfoCount() > 0)) {
        // source line 555, bytecode pc 20
        return true;
    }
    // source line 557, bytecode pc 22
    return false;
},
    taskHintInfoCount: function() {
    var count;
    // source line 562, bytecode pc 20
    (count = this.pushData.getTaskNum());
    // source line 563, bytecode pc 24
    return count;
},
    haveTaskHintInfo: function() {
    if ((this.taskHintInfoCount() > 0)) {
        // source line 568, bytecode pc 20
        return true;
    }
    // source line 570, bytecode pc 22
    return false;
}
}));
// source line 575, bytecode pc 739
(xs.Profile.GameData.Hint.create = function(param) {
    var _str, _cls_name, obj;
    // source line 576, bytecode pc 11
    (_str = param.play_id);
    // source line 577, bytecode pc 35
    (_cls_name = xs.Profile.GameData.Hint);
    // source line 578, bytecode pc 85
    (xs.Utils.isSet(_cls_name._instance) || (_cls_name._instance = []));
    if (_cls_name._instance[_str]) {
        // source line 581, bytecode pc 115
        return _cls_name._instance[_str];
    }
    // source line 584, bytecode pc 127
    (obj = new _cls_name());
    if ((obj && obj.init(param))) {
        // source line 586, bytecode pc 175
        (_cls_name._instance[_str] = obj);
        // source line 587, bytecode pc 179
        return obj;
    }
    // source line 589, bytecode pc 202
    xs.error("xs.Profile.GameData.Map.create failed");
    // source line 590, bytecode pc 204
    return null;
});
