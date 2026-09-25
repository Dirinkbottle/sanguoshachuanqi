// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Union/UnionCombatMainLayer.js:1
// source line 601, bytecode pc 1168
(xs.Views.Union.UnionCombatMainLayer = xs.Views.Union.UnionBaseLayer.extend({
    name: "UnionCombatMainLayer",
    ctor: function() {
    // source line 9, bytecode pc 12
    this._super();
},
    cfg: {
        ccbCfg: [
            { tag: 3, type: "btn", name: "btnActiveRank", id: "Btn_ActiveRank", offset: cc.p(0, -20) },
            { tag: 2, type: "ls", name: "labelHeadline", id: "LS_danyao", string: "" },
            { tag: 1, type: "btn", name: "btnInstruction", id: "Btn_Instruction", offset: cc.p(9, 9) },
            { tag: 4, name: "subheading" },
            { tag: 5, name: "spMiddle" },
            { tag: 6, type: "ls", id: "ls", stringId: "" },
            { tag: 7, type: "ls", id: "ls", stringId: "" },
            { tag: 8, type: "ls", id: "ls", stringId: "" }
        ]
    },
    btnCfg: {
        Constant_UnionWar_State_Apply: {
            union_saiShiJinCheng: "_saiShiCallBack",
            union_lastEncounter_new: "_benDuiZhenTuCallBack",
            union_apply: "_baoMingBack"
        },
        Constant_UnionWar_State_Formation: {
            union_saiShiJinCheng: "_saiShiCallBack",
            union_lastEncounter_new: "_benDuiZhenTuCallBack",
            union_Embattle: "_buZhenCallBack"
        },
        Constant_UnionWar_State_Formation_kua: {
            union_saiShiJinCheng: "_saiShiCallBack",
            union_thisEncounter_new: "_kuaDuiZhenTuCallBack",
            union_lastEncounter_new: "_benDuiZhenTuCallBack",
            union_Embattle: "_buZhenCallBack"
        },
        Constant_UnionWar_State_Combat: { union_saiShiJinCheng: "_saiShiCallBack", union_lastEncounter_new: "_benDuiZhenTuCallBack" },
        Constant_UnionWar_State_Combat_kua: {
            union_saiShiJinCheng: "_saiShiCallBack",
            union_thisEncounter_new: "_kuaDuiZhenTuCallBack",
            union_lastEncounter_new: "_benDuiZhenTuCallBack"
        },
        Constant_UnionWar_State_ShowFight: { union_saiShiJinCheng: "_saiShiCallBack", union_lastEncounter_new: "_benDuiZhenTuCallBack" },
        Constant_UnionWar_State_ShowFight_kua: {
            union_saiShiJinCheng: "_saiShiCallBack",
            union_thisEncounter_new: "_kuaDuiZhenTuCallBack",
            union_lastEncounter_new: "_benDuiZhenTuCallBack"
        },
        Constant_UnionWar_State_ActiveStatistical: {
            union_saiShiJinCheng: "_saiShiCallBack",
            union_thisEncounter_new: "_kuaDuiZhenTuCallBack",
            union_lastEncounter_new: "_benDuiZhenTuCallBack",
            union_tiShengHuoyue: "_tiShengHuoYueCallBack"
        },
        Constant_UnionWar_State_LocalEndAndSpanBefore: {
            union_saiShiJinCheng: "_saiShiCallBack",
            union_thisEncounter_new: "_kuaDuiZhenTuCallBack",
            union_lastEncounter_new: "_benDuiZhenTuCallBack"
        },
        Constant_UnionWar_State_EndSpanNextWeekBefore: {
            union_saiShiJinCheng: "_saiShiCallBack",
            union_thisEncounter_new: "_kuaDuiZhenTuCallBack",
            union_lastEncounter_new: "_benDuiZhenTuCallBack"
        }
    },
    init: function() {
    var subPos, midPos;
    if (!this._super()) {
        // source line 76, bytecode pc 19
        return false;
    }
    // source line 79, bytecode pc 27
    (this.isNeedRefresh = true);
    // source line 80, bytecode pc 35
    (this.m_baseTouchPriority = 0);
    // source line 81, bytecode pc 43
    (this.btnActiveRank = null);
    // source line 82, bytecode pc 51
    (this.labelHeadline = null);
    // source line 83, bytecode pc 59
    (this.btnInstruction = null);
    // source line 84, bytecode pc 67
    (this.subheading = null);
    // source line 85, bytecode pc 75
    (this.spMiddle = null);
    // source line 86, bytecode pc 83
    (this.btnEncounter = null);
    // source line 87, bytecode pc 91
    (this.btnApplyAndEmbattle = null);
    // source line 88, bytecode pc 99
    (this.btnMiddle = null);
    // source line 89, bytecode pc 107
    (this.thisUnionWarStage = null);
    // source line 90, bytecode pc 115
    (this.isApply = null);
    // source line 91, bytecode pc 123
    (this.m_baseTouchPriority = 0);
    // source line 93, bytecode pc 159
    (this.m_ccbNode = cc.BuilderReader.load("ccb3/unionCombatMain.ccbi", this));
    // source line 94, bytecode pc 202
    this.m_ccbNode.setContentSize(cc.size(800, 640));
    // source line 95, bytecode pc 231
    this.m_ccbNode.setAnchorPoint(xs.ap_lb);
    // source line 96, bytecode pc 310
    xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "lb", offset: cc.p(-5, 0) });
    // source line 97, bytecode pc 358
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.cfg.ccbCfg, this);
    // source line 100, bytecode pc 382
    this.labelHeadline.setString("");
    // source line 101, bytecode pc 406
    (this.headlinePosY = this.labelHeadline.getPositionY());
    // source line 104, bytecode pc 427
    (subPos = this.subheading.getPosition());
    // source line 105, bytecode pc 466
    (this.subheadLabel = xs.Factorys.Label.createByStyleId("LS_qiangduo_Inf"));
    // source line 106, bytecode pc 490
    this.subheadLabel.setString("");
    // source line 107, bytecode pc 512
    this.subheadLabel.setPosition(subPos);
    // source line 108, bytecode pc 537
    this.m_ccbNode.addChild(this.subheadLabel);
    // source line 112, bytecode pc 558
    (midPos = this.spMiddle.getPosition());
    // source line 116, bytecode pc 674
    (this.midTimeLabel = xs.Views.Label.LabelExt.createWithStyles([
    "LS_FightHurt_all",
    "LS_loginSign",
    "LS_FightHurt_all",
    "LS_loginSign",
    "LS_FightHurt_all",
    "LS_loginSign",
    "LS_FightHurt_all",
    "LS_loginSign"
]));
    // source line 119, bytecode pc 734
    this.midTimeLabel.setPosition(cc.p((midPos.x - 205), (midPos.y - 5)));
    // source line 120, bytecode pc 760
    this.midTimeLabel.setFontScaleAtIndex(0, 0.5);
    // source line 121, bytecode pc 787
    this.midTimeLabel.setFontScaleAtIndex(2, 0.5);
    // source line 122, bytecode pc 814
    this.midTimeLabel.setFontScaleAtIndex(4, 0.5);
    // source line 123, bytecode pc 841
    this.midTimeLabel.setFontScaleAtIndex(6, 0.5);
    // source line 125, bytecode pc 867
    this.midTimeLabel.setStringById(1, "union_str_day");
    // source line 126, bytecode pc 894
    this.midTimeLabel.setStringById(3, "union_str_hours");
    // source line 127, bytecode pc 921
    this.midTimeLabel.setStringById(5, "union_str_minute");
    // source line 128, bytecode pc 948
    this.midTimeLabel.setStringById(7, "union_str_second");
    // source line 130, bytecode pc 973
    this.m_ccbNode.addChild(this.midTimeLabel);
    // source line 133, bytecode pc 1012
    (this.midTimeLabelHit = xs.Factorys.Label.createByStyleId("LS_cardWujiangName"));
    // source line 134, bytecode pc 1036
    this.midTimeLabelHit.setString("");
    // source line 135, bytecode pc 1092
    this.midTimeLabelHit.setPosition(cc.p(midPos.x, (midPos.y - 30)));
    // source line 136, bytecode pc 1117
    this.m_ccbNode.addChild(this.midTimeLabelHit);
    // source line 140, bytecode pc 1141
    this.btnInstruction.setOnClickCallBack(function() {
    // source line 141, bytecode pc 49
    xs.Views.Mgr.showDialogByName("InstructionDialog", { key: "str_unionWar_desc" });
});
    // source line 147, bytecode pc 1165
    this.btnActiveRank.setOnClickCallBack(function() {
    // source line 148, bytecode pc 32
    xs.Views.Mgr.showDialogByName("UnionActiveDialog");
});
    // source line 153, bytecode pc 1187
    this.schedule(this.onCountDown, 1);
    // source line 154, bytecode pc 1200
    this.onCountDown();
    // source line 156, bytecode pc 1202
    return true;
},
    _getObjKeyList: function(mObj) {
    var mKeyList, mkey;
    // source line 161, bytecode pc 8
    (mKeyList = []);
    for (var mkey in mObj) {
        // source line 163, bytecode pc 51
        xs.log_hsq("mkey", mkey);
        if (!((typeof(mObj[mkey]) != "function"))) continue;
        // source line 165, bytecode pc 97
        xs.log_hsq("mkeyj", mkey);
        // source line 166, bytecode pc 116
        mKeyList.push(mkey);
    }
    // source line 169, bytecode pc 128
    return mKeyList;
},
    _getCfgForKeyListByCon: function(mCfg, mObj, isKuaFu) {
    var kuaFuStr, mNum, mkey;
    // source line 174, bytecode pc 17
    (kuaFuStr = (isKuaFu || ""));
    // source line 175, bytecode pc 24
    (mNum = mCfg);
    // source line 176, bytecode pc 51
    xs.log_hsq("keyList", mObj);
    for (var mkey in mObj) {
        // source line 179, bytecode pc 94
        xs.log_hsq("mkey", mkey);
        if (!((xs[mkey] == mNum))) continue;
        // source line 181, bytecode pc 124
        return mObj[(mkey + kuaFuStr)];
    }
    // source line 184, bytecode pc 136
    return null;
},
    _saiShiCallBack: function() {
    // source line 189, bytecode pc 32
    xs.Views.Mgr.showDialogByName("UnionWarFlowChartDialog");
    // source line 190, bytecode pc 55
    xs.log_hsq("赛事流程");
},
    _benDuiZhenTuCallBack: function() {
    // source line 194, bytecode pc 22
    xs.log_hsq("本服对阵图");
    // source line 195, bytecode pc 46
    this.onBtnCurrentEncounterClicked(xs.Constant_UnionWar_Server_Local);
},
    _kuaDuiZhenTuCallBack: function() {
    // source line 199, bytecode pc 22
    xs.log_hsq("跨服对阵图");
    // source line 200, bytecode pc 46
    this.onBtnCurrentEncounterClicked(xs.Constant_UnionWar_Server_International);
},
    _buZhenCallBack: function() {
    // source line 205, bytecode pc 12
    this.onBtnApplyAndEmbattleClicked();
    // source line 206, bytecode pc 35
    xs.log_hsq("布阵");
},
    _baoMingBack: function() {
    // source line 211, bytecode pc 12
    this.onBtnApplyAndEmbattleClicked();
    // source line 213, bytecode pc 35
    xs.log_hsq("报名");
},
    _tiShengHuoYueCallBack: function() {
    // source line 217, bytecode pc 32
    xs.Views.Mgr.showDialogByName("UnionWarActivePromoteDialog");
    // source line 218, bytecode pc 55
    xs.log_hsq("提升活跃");
},
    onBtnCurrentEncounterClicked: function(type) {
    var mType;
    // source line 223, bytecode pc 6
    (mType = type);
    // source line 224, bytecode pc 33
    xs.log_hsq("mType", mType);
    // source line 245, bytecode pc 165
    xs.Tools.Net.requestGetEncounterInfo({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(), type: mType }, function(data) {
    var param;
    if (data.result) {
        // source line 234, bytecode pc 75
        xs.Profile.GameData.Mgr.getInstance().UnionWar.getUnionWar().setUnionWarId(data);
        // source line 237, bytecode pc 104
        (param = { mdata: data, type: this.type });
        // source line 240, bytecode pc 141
        xs.Views.Mgr.showDialogByName("UnionEncounterMapDialog", param);
    }
}, function(data) {
}, { type: mType });
},
    onBtnApplyAndEmbattleClicked: function() {
    var isSignUp;
    if ((this.thisUnionWarStage == xs.Constant_UnionWar_State_Other)) {
        // source line 257, bytecode pc 54
        xs.Views.Mgr.showToastByStringKey("union_noApplyTime");
        // source line 258, bytecode pc 56
        return void 0;
    } else {
        if ((this.thisUnionWarStage == xs.Constant_UnionWar_State_Apply)) {
            // source line 261, bytecode pc 145
            (isSignUp = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getUnionWarSignUp());
            if (isSignUp) {
                // source line 263, bytecode pc 166
                this.updataEntry();
            } else {
                // source line 265, bytecode pc 190
                this.applyClick("union_applyOk");
            }
            // source line 268, bytecode pc 192
            return void 0;
        } else {
            if ((this.thisUnionWarStage == xs.Constant_UnionWar_State_Formation)) {
                if ((xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getUserRole() == 3)) {
                    // source line 271, bytecode pc 318
                    xs.Views.Mgr.showToastByStringKey("union_unionWarEmbattle");
                } else {
                    // source line 285, bytecode pc 434
                    xs.Tools.Net.requestGetBattleFormation({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(jsonData) {
    // source line 279, bytecode pc 62
    xs.Profile.GameData.Mgr.getInstance().UnionWar.getUnionWar().loadJson(jsonData);
    // source line 280, bytecode pc 117
    xs.Scene.Mgr.changeSceneByName("UnionWarBattleScene", { battleType: xs.Constant_UnionWar_BattleType_Formation });
}, function() {
}, this);
                }
                // source line 289, bytecode pc 436
                return void 0;
            } else {
                if ((this.thisUnionWarStage == xs.Constant_UnionWar_State_Combat)) {
                    // source line 292, bytecode pc 496
                    xs.Views.Mgr.showToastByStringKey("union_unionWarIntend");
                    // source line 293, bytecode pc 498
                    return void 0;
                } else {
                    if ((this.thisUnionWarStage == xs.Constant_UnionWar_State_ShowFight)) {
                        // source line 295, bytecode pc 558
                        xs.Views.Mgr.showToastByStringKey("union_unionWarStart");
                        // source line 296, bytecode pc 560
                        return void 0;
                    }
                }
            }
        }
    }
},
    applyClick: function(stringId) {
    // source line 330, bytecode pc 168
    xs.Tools.Net.requestUnionCombatSignUp({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    fight_point: xs.Profile.GameData.Mgr.getInstance().Team.getTeamTotalFighting(),
    forcepush: true
}, function(resData) {
    if (resData.result) {
        // source line 311, bytecode pc 49
        xs.Views.Mgr.showToastByStringKey(stringId);
        // source line 313, bytecode pc 97
        xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
        // source line 315, bytecode pc 135
        xs.Utils.Notify.postNotification(xs.Constant_Notify_Union_hit);
    }
}, function(params) {
    // source line 322, bytecode pc 26
    xs.dump("params", params);
    if ((params.error_code === "e_1005")) {
        // source line 324, bytecode pc 105
        xs.Views.Mgr.showToast(xs.Tools.String.createString("union_noApplyChance"));
        // source line 326, bytecode pc 107
        return true;
    }
}, this);
},
    updataEntry: function() {
    var dialog;
    // source line 350, bytecode pc 169
    (dialog = xs.Views.Mgr.showDialogByName("common", {
    title: "union_updaEntry",
    content: "1070910046",
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("auto_name_76"),
    leftCB: function() {
    // source line 344, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    rightCB: function() {
    // source line 347, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 348, bytecode pc 45
    this.applyClick("union_updataOk");
}.bind(this)
}));
    // source line 351, bytecode pc 187
    (dialog = dialog.getRealDialog());
    // source line 352, bytecode pc 235
    dialog.setContentText(xs.Tools.String.createString("union_isSaveCast"));
    // source line 353, bytecode pc 256
    dialog.setTitleByStringId("union_updaEntry");
},
    onEnter: function() {
    // source line 358, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 363, bytecode pc 19
    this.unschedule(this.onCountDown);
    // source line 364, bytecode pc 32
    this._super();
},
    onCountDown: function() {
    var mStage, daty, hours, minute, seconds;
    // source line 371, bytecode pc 61
    (mStage = xs.Profile.GameData.Mgr.getInstance().UnionWar.getUnionWar().getUnionWarStageDetail());
    // source line 372, bytecode pc 88
    xs.log_hsq("thisUnionWarStage", mStage);
    // source line 373, bytecode pc 110
    (this.m_residueTime = (mStage.residueTime || 0));
    // source line 374, bytecode pc 144
    (this.m_residueTime = Math.floor((this.m_residueTime / 1000)));
    if ((this.m_residueTime <= 0)) {
        // source line 379, bytecode pc 165
        (this.m_residueTime = 0);
    }
    // source line 382, bytecode pc 197
    (daty = Math.floor((this.m_residueTime / 86400)));
    // source line 383, bytecode pc 237
    (hours = Math.floor(((this.m_residueTime - (daty * 86400)) / 3600)));
    // source line 384, bytecode pc 271
    (minute = Math.floor(((this.m_residueTime % 3600) / 60)));
    // source line 385, bytecode pc 288
    (seconds = ((this.m_residueTime % 3600) % 60));
    // source line 387, bytecode pc 356
    this.updateCountDown(daty, this.timeDispose(hours), this.timeDispose(minute), this.timeDispose(seconds));
    // source line 388, bytecode pc 373
    this.stageShow(mStage);
},
    stageShow: function(mStage) {
    var mIsApply, mServerType, mGroup;
    // source line 394, bytecode pc 61
    (mIsApply = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getUnionWarSignUp());
    if (((this.thisUnionWarStage != mStage.state) || (this.isApply != mIsApply))) {
        // source line 396, bytecode pc 112
        (this.thisUnionWarStage = mStage.state);
        // source line 397, bytecode pc 122
        (this.isApply = mIsApply);
    } else {
        // source line 399, bytecode pc 129
        return void 0;
    }
    // source line 402, bytecode pc 141
    (mServerType = mStage.serverType);
    // source line 403, bytecode pc 153
    (mGroup = mStage.group);
    // source line 405, bytecode pc 174
    this._setMainLabelString(mServerType, mGroup);
    // source line 406, bytecode pc 191
    this._setMainBtn(mServerType);
},
    _setMainBtn: function(mServerType) {
    var mStage, isKuaFu, btnCfg, keyList, btnNum, btnInterval, firstBtnPos, btnIdx, keyIndx, mBtn, mPos;
    // source line 413, bytecode pc 9
    (mStage = this.thisUnionWarStage);
    // source line 414, bytecode pc 36
    xs.log_hsq("mStagemStage", mStage);
    // source line 415, bytecode pc 45
    (isKuaFu = "");
    if ((mServerType == xs.Constant_UnionWar_Server_International)) {
        // source line 417, bytecode pc 73
        (isKuaFu = "_kua");
    }
    // source line 419, bytecode pc 104
    (btnCfg = this._getCfgForKeyListByCon(mStage, this.btnCfg, isKuaFu));
    // source line 421, bytecode pc 124
    (keyList = this._getObjKeyList(btnCfg));
    // source line 424, bytecode pc 136
    (btnNum = keyList.length);
    // source line 425, bytecode pc 153
    (btnInterval = (210 + ((4 - btnNum) * 60)));
    // source line 426, bytecode pc 193
    (firstBtnPos = cc.p(((888 - ((btnNum - 1) * btnInterval)) / 2), 62));
    // source line 428, bytecode pc 198
    (btnIdx = 0);
    while ((btnIdx < 4)) {
        if (this[("btn_" + btnIdx)]) {
            // source line 430, bytecode pc 245
            this[("btn_" + btnIdx)].setVisible(false);
        }
        // source line 428, bytecode pc 260
        btnIdx++;
    }
    // source line 436, bytecode pc 277
    (keyIndx = 0);
    while ((keyIndx < keyList.length)) {
        // source line 437, bytecode pc 322
        xs.Utils.Node.safeRemoveChild(this[("btn_" + keyIndx)]);
        // source line 438, bytecode pc 358
        (mBtn = xs.Views.Btn.create("Btn_btn2"));
        // source line 439, bytecode pc 396
        xs.Utils.Node.attachNodes(this.m_ccbNode, mBtn);
        // source line 440, bytecode pc 442
        (mPos = cc.p((firstBtnPos.x + (keyIndx * btnInterval)), firstBtnPos.y));
        // source line 442, bytecode pc 461
        mBtn.setPosition(mPos);
        // source line 444, bytecode pc 511
        mBtn.setString(xs.Tools.String.createString(keyList[keyIndx]));
        // source line 445, bytecode pc 553
        mBtn.setOnClickCallBack(this[btnCfg[keyList[keyIndx]]].bind(this));
        // source line 453, bytecode pc 577
        mBtn.setTouchPriority((this.m_baseTouchPriority - 1));
        // source line 454, bytecode pc 592
        (this[("btn_" + keyIndx)] = mBtn);
        // source line 436, bytecode pc 607
        keyIndx++;
    }
    if ((mStage == xs.Constant_UnionWar_State_Apply)) {
        if (this.isApply) {
            // source line 460, bytecode pc 706
            this.btn_2.setString(xs.Tools.String.createString("union_refreshBattle"));
        }
    } else {
        if ((mStage == xs.Constant_UnionWar_State_Formation)) {
            if ((xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getUserRole() == xs.Constant_Member)) {
                // source line 466, bytecode pc 824
                this.btn_2.setEnabled(false);
                // source line 467, bytecode pc 875
                this.btn_2.setString(xs.Tools.String.createString("union_huiZhangBuZhening"));
            }
        }
    }
},
    _setMainLabelString: function(mServerType, mGroup) {
    var headLineStr, subheadStr, hintStr, serverTypeTag, groupTag, warType, warStrHeard;
    // source line 478, bytecode pc 8
    (headLineStr = "headline");
    // source line 479, bytecode pc 17
    (subheadStr = "subhead");
    // source line 480, bytecode pc 26
    (hintStr = "hint");
    // source line 481, bytecode pc 64
    (serverTypeTag = ((mServerType == xs.Constant_UnionWar_Server_Local) ? "l" : "i"));
    // source line 482, bytecode pc 71
    (groupTag = mGroup);
    // source line 484, bytecode pc 80
    (warType = "");
    // source line 485, bytecode pc 89
    (warStrHeard = "uwar_ep");
    // source line 487, bytecode pc 96
    switch (this.thisUnionWarStage) {
        case xs.Constant_UnionWar_State_Formation:
        // source line 490, bytecode pc 185
        (warType = "format");
        break;
        case xs.Constant_UnionWar_State_Combat:
        // source line 493, bytecode pc 199
        (warType = "fight");
        break;
        case xs.Constant_UnionWar_State_ShowFight:
        // source line 496, bytecode pc 213
        (warType = "show");
        break;
        case xs.Constant_UnionWar_State_LocalEndAndSpanBefore:
        // source line 499, bytecode pc 227
        (warType = "end");
        // source line 500, bytecode pc 236
        (serverTypeTag = "l");
        break;
        case xs.Constant_UnionWar_State_EndSpanNextWeekBefore:
        // source line 503, bytecode pc 250
        (warType = "end");
        // source line 504, bytecode pc 259
        (serverTypeTag = "i");
        break;
        default:
        break;
    }
    if (((this.thisUnionWarStage == xs.Constant_UnionWar_State_LocalEndAndSpanBefore) || (this.thisUnionWarStage == xs.Constant_UnionWar_State_EndSpanNextWeekBefore))) {
        // source line 512, bytecode pc 314
        (groupTag = 1);
        // source line 513, bytecode pc 334
        this.subheading.setVisible(false);
        // source line 514, bytecode pc 354
        this.subheadLabel.setVisible(false);
        // source line 515, bytecode pc 382
        this.labelHeadline.setPositionY((this.headlinePosY - 30));
    } else {
        // source line 519, bytecode pc 407
        this.subheading.setVisible(true);
        // source line 520, bytecode pc 427
        this.subheadLabel.setVisible(true);
        // source line 521, bytecode pc 452
        this.labelHeadline.setPositionY(this.headlinePosY);
    }
    if ((this.thisUnionWarStage == xs.Constant_UnionWar_State_ActiveStatistical)) {
        // source line 526, bytecode pc 483
        (headLineStr = "uwar_ep_active_headline");
        // source line 527, bytecode pc 492
        (subheadStr = "uwar_ep_active_subhead");
        // source line 528, bytecode pc 501
        (hintStr = "uwar_ep_active_hint");
    } else {
        if ((this.thisUnionWarStage == xs.Constant_UnionWar_State_Apply)) {
            // source line 531, bytecode pc 537
            (headLineStr = "uwar_ep_sign_headline");
            // source line 532, bytecode pc 546
            (subheadStr = "uwar_ep_sign_subhead");
            if (this.isApply) {
                // source line 534, bytecode pc 566
                (hintStr = "uwar_ep_sign_hint_refresh");
            } else {
                // source line 536, bytecode pc 580
                (hintStr = "uwar_ep_sign_hint_apply");
            }
        } else {
            // source line 541, bytecode pc 621
            (headLineStr = this._stringIdJoint(warStrHeard, serverTypeTag, groupTag, warType, headLineStr));
            // source line 542, bytecode pc 657
            (subheadStr = this._stringIdJoint(warStrHeard, serverTypeTag, groupTag, warType, subheadStr));
            // source line 543, bytecode pc 693
            (hintStr = this._stringIdJoint(warStrHeard, serverTypeTag, groupTag, warType, hintStr));
        }
    }
    // source line 546, bytecode pc 720
    xs.log_hsq("subheadStr", subheadStr);
    // source line 547, bytecode pc 747
    xs.log_hsq("headLineStr", headLineStr);
    // source line 548, bytecode pc 774
    xs.log_hsq("hintStr", hintStr);
    // source line 550, bytecode pc 834
    this.subheadLabel.setString((xs.Tools.String.createString(subheadStr) || ""));
    // source line 551, bytecode pc 894
    this.labelHeadline.setString((xs.Tools.String.createString(headLineStr) || ""));
    // source line 552, bytecode pc 954
    this.midTimeLabelHit.setString((xs.Tools.String.createString(hintStr) || ""));
},
    _stringIdJoint: function(str1, str2, str3, str4, str5) {
    // source line 558, bytecode pc 43
    return ((((((((str1 + "_") + str2) + "_") + str3) + "_") + str4) + "_") + str5);
},
    timeDispose: function(mNum) {
    if ((mNum < 10)) {
        // source line 564, bytecode pc 23
        (mNum = ("0" + mNum));
    }
    // source line 567, bytecode pc 27
    return mNum;
},
    updateCountDown: function(day, hour, minute, second) {
    // source line 575, bytecode pc 23
    this.midTimeLabel.setString(0, day);
    // source line 576, bytecode pc 48
    this.midTimeLabel.setString(2, hour);
    // source line 577, bytecode pc 73
    this.midTimeLabel.setString(4, minute);
    // source line 578, bytecode pc 98
    this.midTimeLabel.setString(6, second);
},
    refreshFromMenuClick: function() {
    // source line 583, bytecode pc 22
    xs.log("refreshFromMenuClick unionInfoLayer");
    if (this.isNeedRefresh) {
    }
},
    refresh: function() {
    // source line 591, bytecode pc 22
    xs.log("刷新UnionInfo layer");
    if (this.isNeedRefresh) {
        // source line 594, bytecode pc 56
        xs.log("ss");
        // source line 597, bytecode pc 64
        (this.isNeedRefresh = false);
    }
},
    setBaseTouchPriority: function(priority) {
    var btnIdx;
    // source line 602, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 603, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 605, bytecode pc 56
    this.btnActiveRank.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 606, bytecode pc 83
    this.btnInstruction.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 608, bytecode pc 88
    (btnIdx = 0);
    while ((btnIdx < 4)) {
        if (this[("btn_" + btnIdx)]) {
            // source line 610, bytecode pc 142
            this[("btn_" + btnIdx)].setTouchPriority((this.m_baseTouchPriority - 1));
        }
        // source line 608, bytecode pc 157
        btnIdx++;
    }
}
}));
// source line 618, bytecode pc 1199
(xs.Views.Union.UnionCombatMainLayer.create = function() {
    var layer;
    // source line 619, bytecode pc 28
    (layer = new xs.Views.Union.UnionCombatMainLayer());
    if ((layer && layer.init())) {
        // source line 621, bytecode pc 60
        return layer;
    }
    // source line 623, bytecode pc 62
    return null;
});
