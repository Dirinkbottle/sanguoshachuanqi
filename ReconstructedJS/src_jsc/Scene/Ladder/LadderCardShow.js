// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Ladder/LadderCardShow.js:1
// source line 572, bytecode pc 550
(xs.Views.LadderCardShow = cc.Node.extend({
    ctor: function() {
    // source line 8, bytecode pc 12
    this._super();
    // source line 9, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function() {
    // source line 13, bytecode pc 12
    this._super();
    // source line 17, bytecode pc 77
    (this.ladderTeams = xs.Profile.GameData.Mgr.getInstance().LadderInfo.getLadderInfo().getLadderTeam());
    // source line 19, bytecode pc 142
    (this.ladderTop = xs.Profile.GameData.Mgr.getInstance().LadderInfo.getLadderInfo().getLadderTop());
    // source line 21, bytecode pc 151
    (this.cardCount = 11);
    // source line 68, bytecode pc 789
    (this.cardAreaState = [
    { pos: cc.p(-1025, -188), scale: 0.6, zOrder: 11 },
    { pos: cc.p(-815, -188), scale: 0.59, zOrder: 10 },
    { pos: cc.p(-605, -188), scale: 0.58, zOrder: 9 },
    { pos: cc.p(-388, -145), scale: 0.57, zOrder: 8 },
    { pos: cc.p(-175, -89), scale: 0.56, zOrder: 7 },
    { pos: cc.p(33, -24), scale: 0.55, zOrder: 6 },
    { pos: cc.p(201, 40), scale: 0.51, zOrder: 4 },
    { pos: cc.p(273, 86), scale: 0.46, zOrder: 3 },
    { pos: cc.p(294, 124), scale: 0.44, zOrder: 2 },
    { pos: cc.p(299, 160), scale: 0.42, zOrder: 1 },
    { pos: cc.p(265, 206), scale: 0.4, zOrder: 0 }
]);
    // source line 71, bytecode pc 813
    (this.cardViews = new Array(this.cardCount));
    // source line 72, bytecode pc 826
    (this.cardsData = this.ladderTeams);
    // source line 76, bytecode pc 839
    this.initStartIdx();
    // source line 78, bytecode pc 848
    (this.startDataIndexMin = -5);
    // source line 79, bytecode pc 871
    (this.startDataIndexMax = ((this.cardsData.length - 1) - 5));
    // source line 83, bytecode pc 879
    (this.bMoveEnd = true);
    // source line 85, bytecode pc 881
    return true;
},
    onEnterTransitionDidFinish: function() {
    // source line 89, bytecode pc 12
    this._super();
    // source line 90, bytecode pc 25
    this.updateCardShow();
},
    initStartIdx: function() {
    var lastFightData;
    // source line 95, bytecode pc 50
    (lastFightData = xs.Profile.GameData.Mgr.getInstance().LadderInfo.getLastFightData());
    // source line 96, bytecode pc 77
    xs.log_xjf("lastFightData", lastFightData);
    if ((lastFightData && (xs.Utils.parseStringSafe(lastFightData.selfData.selfRank) == xs.Utils.parseStringSafe(xs.Profile.GameData.Mgr.getInstance().LadderInfo.getLadderInfo().getLadderRank())))) {
        // source line 101, bytecode pc 230
        xs.log("排名无变化,使用上一次的idx");
        // source line 102, bytecode pc 250
        (this.startCardViewIndex = lastFightData.selfData.startCardViewIndex);
        // source line 103, bytecode pc 270
        (this.startDataIndex = lastFightData.selfData.startDataIndex);
    } else {
        // source line 107, bytecode pc 283
        (this.startCardViewIndex = 0);
        // source line 109, bytecode pc 351
        (this.startDataIndex = (xs.Profile.GameData.Mgr.getInstance().LadderInfo.getLadderInfo().getFocusIdx() - 5));
    }
},
    updateCardShow: function() {
    var i, cardModel, index;
    // source line 116, bytecode pc 4
    (i = 0);
    while ((i < this.cardAreaState.length)) {
        // source line 117, bytecode pc 30
        (cardModel = this.getCardDataByIndexOffset(i));
        // source line 118, bytecode pc 51
        (index = ((i + this.startCardViewIndex) % this.cardCount));
        if (cardModel) {
            if (!this.cardViews[index]) {
                // source line 121, bytecode pc 100
                (this.cardViews[index] = cardModel.createCardView());
                // source line 122, bytecode pc 138
                this.cardViews[index].setScale(this.cardAreaState[i].scale);
                // source line 123, bytecode pc 176
                this.cardViews[index].setZOrder(this.cardAreaState[i].zOrder);
                // source line 127, bytecode pc 259
                xs.Utils.Node.attachNodes(this, this.cardViews[index], { desc: "c", offset: this.cardAreaState[i].pos, sc: false });
            } else {
                if ((this.cardViews[index].reloadData_Ladder === undefined)) {
                    // source line 130, bytecode pc 314
                    this.cardViews[index].removeFromParent(true);
                    // source line 131, bytecode pc 339
                    (this.cardViews[index] = cardModel.createCardView());
                    // source line 132, bytecode pc 377
                    this.cardViews[index].setScale(this.cardAreaState[i].scale);
                    // source line 133, bytecode pc 415
                    this.cardViews[index].setZOrder(this.cardAreaState[i].zOrder);
                    // source line 137, bytecode pc 498
                    xs.Utils.Node.attachNodes(this, this.cardViews[index], { desc: "c", offset: this.cardAreaState[i].pos, sc: false });
                } else {
                    // source line 140, bytecode pc 529
                    this.cardViews[index].reloadData_Ladder(cardModel);
                }
            }
        } else {
            if (this.cardViews[index]) {
                // source line 144, bytecode pc 573
                this.cardViews[index].removeFromParent(true);
            }
            // source line 146, bytecode pc 605
            (this.cardViews[index] = cc.Node.create());
            // source line 150, bytecode pc 688
            xs.Utils.Node.attachNodes(this, this.cardViews[index], { desc: "c", offset: this.cardAreaState[i].pos, sc: false });
        }
        if ((i === 5)) {
            // source line 155, bytecode pc 716
            this.updateFocusView(cardModel);
        }
        // source line 116, bytecode pc 730
        (i = (+i + 1));
    }
},
    updateFocusView: function(model) {
    var ladderInfo, selfRank;
    // source line 162, bytecode pc 9
    (this.model = model);
    if (this.ccbNode_Focus) {
        // source line 164, bytecode pc 40
        this.ccbNode_Focus.removeFromParent(true);
        // source line 165, bytecode pc 48
        (this.ccbNode_Focus = null);
    }
    if (this.lineUpBtn) {
        // source line 169, bytecode pc 79
        this.lineUpBtn.removeFromParent(true);
        // source line 170, bytecode pc 87
        (this.lineUpBtn = null);
    }
    if (model.isCanChallenge()) {
        // source line 174, bytecode pc 142
        (this.ccbNode_Focus = xs.ccb_reader.load("ccb3/0_8_2_LadderFightStart.ccbi", this));
        // source line 175, bytecode pc 184
        this.ccbNode_Focus.setContentSize(cc.size(240, 117));
        // source line 176, bytecode pc 231
        this.ccbNode_Focus.setAnchorPoint(cc.p(0.5, 0.5));
        // source line 177, bytecode pc 271
        this.ccbNode_Focus.setZOrder(this.cfg.challengeCcb.fightBtn.zOrder);
        // source line 181, bytecode pc 360
        xs.Utils.Node.attachNodes(this, this.ccbNode_Focus, { desc: "c", offset: cc.p(30, -195), sc: false });
        // source line 184, bytecode pc 368
        (this.m_salary = null);
        // source line 185, bytecode pc 376
        (this.m_fightBtn = null);
        // source line 186, bytecode pc 384
        (this.m_quickFightBtn = null);
        // source line 187, bytecode pc 392
        (this.m_tenFightBtn = null);
        // source line 188, bytecode pc 445
        xs.Utils.UI.replaceCcbByCfg(this.ccbNode_Focus, this.cfg.challengeCcb.ccbCfg, this);
        // source line 190, bytecode pc 496
        (ladderInfo = xs.Profile.GameData.Mgr.getInstance().LadderInfo.getLadderInfo());
        if (ladderInfo) {
            // source line 192, bytecode pc 522
            (selfRank = ladderInfo.getLadderRank());
            if ((selfRank < this.model.getLadderRank())) {
                // source line 194, bytecode pc 587
                (this.m_tenFightBtn = xs.Views.Btn.create("Btn_NewQuickFight"));
                // source line 195, bytecode pc 611
                this.m_tenFightBtn.setStringById("tenKill");
                // source line 196, bytecode pc 649
                this.m_tenFightBtn.setOnClickCallBack(this.tenFightCallBack.bind(this));
                // source line 198, bytecode pc 746
                this.m_tenFightBtn.setPosition(cc.p(((this.m_fightBtn.getPositionX() + this.m_fightBtn.getContentSize().width) - 4), this.m_fightBtn.getPositionY()));
                // source line 200, bytecode pc 771
                this.ccbNode_Focus.addChild(this.m_tenFightBtn);
            }
        }
        if (this.m_baseTouchPriority) {
            // source line 206, bytecode pc 829
            this.m_fightBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.challengeCcb.fightBtn.priority));
            if (this.m_tenFightBtn) {
                // source line 208, bytecode pc 887
                this.m_tenFightBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.challengeCcb.fightBtn.priority));
            }
            // source line 210, bytecode pc 934
            this.m_quickFightBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.challengeCcb.fightBtn.priority));
        }
        // source line 217, bytecode pc 971
        this.m_fightBtn.setOnClickCallBack(function() {
    // source line 216, bytecode pc 23
    this.fightBtnClick(xs.Constants_FightQuickType_Nor);
}.bind(this));
        // source line 222, bytecode pc 1008
        this.m_quickFightBtn.setOnClickCallBack(function() {
    // source line 221, bytecode pc 23
    this.fightBtnClick(xs.Constants_FightQuickType_Quick);
}.bind(this));
        // source line 226, bytecode pc 1086
        this.m_salary.setStringByStrings([ xs.Tools.String.createString("salary_1"), model.getFightSalary() ]);
    } else {
        if (model.isSelf()) {
            // source line 228, bytecode pc 1146
            (this.ccbNode_Focus = xs.ccb_reader.load("ccb3/0_8_2_Selfpos.ccbi", this));
            // source line 229, bytecode pc 1188
            this.ccbNode_Focus.setContentSize(cc.size(183, 40));
            // source line 230, bytecode pc 1235
            this.ccbNode_Focus.setAnchorPoint(cc.p(0.5, 0.5));
            // source line 231, bytecode pc 1275
            this.ccbNode_Focus.setZOrder(this.cfg.challengeCcb.fightBtn.zOrder);
            // source line 235, bytecode pc 1364
            xs.Utils.Node.attachNodes(this, this.ccbNode_Focus, { desc: "c", offset: cc.p(35, -163), sc: false });
            // source line 238, bytecode pc 1372
            (this.m_selfPos = null);
            // source line 239, bytecode pc 1425
            xs.Utils.UI.replaceCcbByCfg(this.ccbNode_Focus, this.cfg.selfCcb.ccbCfg, this);
            // source line 240, bytecode pc 1476
            this.m_selfPos.setString(xs.Tools.String.createString("selfPos"));
        } else {
            // source line 242, bytecode pc 1520
            (this.lineUpBtn = xs.Views.Btn.create("Btn_LineUp"));
            // source line 243, bytecode pc 1567
            this.lineUpBtn.setAnchorPoint(cc.p(0.5, 0.5));
            // source line 244, bytecode pc 1607
            this.lineUpBtn.setZOrder(this.cfg.challengeCcb.fightBtn.zOrder);
            if (this.m_baseTouchPriority) {
                // source line 246, bytecode pc 1665
                this.lineUpBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.challengeCcb.lineUpBtn.priority));
            }
            // source line 251, bytecode pc 1754
            xs.Utils.Node.attachNodes(this, this.lineUpBtn, { desc: "c", offset: cc.p(30, -190), sc: false });
            // source line 263, bytecode pc 1793
            this.lineUpBtn.setOnClickCallBack(function() {
    if ((this.getPlayerType() === 1)) {
        // source line 256, bytecode pc 48
        xs.dump("this.playerId", this.playerId);
        // source line 258, bytecode pc 104
        xs.Tools.Net.getInstance().displayOtherTeamInfo({ other_user_id: this.playerId });
    } else {
        // source line 261, bytecode pc 169
        xs.Views.Mgr.showToast(xs.Tools.String.createString("secret"));
    }
}.bind(model));
        }
    }
    if (!this.lightBg) {
        // source line 269, bytecode pc 1850
        (this.lightBg = xs.Factorys.Sprite.create("light", "LadderScene01"));
        // source line 270, bytecode pc 1897
        this.lightBg.setAnchorPoint(cc.p(0.5, 0.5));
        // source line 271, bytecode pc 1937
        this.lightBg.setZOrder(this.cfg.challengeCcb.light.zOrder);
        // source line 275, bytecode pc 2023
        xs.Utils.Node.attachNodes(this, this.lightBg, { desc: "c", offset: cc.p(20, 50), sc: false });
    }
},
    tenFightCallBack: function() {
    var _result;
    // source line 281, bytecode pc 29
    (_result = xs.Profile.Permission.isUnLock_ladderTenFight());
    if (!_result.result) {
        // source line 283, bytecode pc 79
        xs.Views.Mgr.showToast(_result.desc);
        // source line 284, bytecode pc 81
        return void 0;
    }
    if ((xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerCurQiLi() >= 10)) {
        if ((xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getLadderChallengeTimes() >= 10)) {
            // source line 310, bytecode pc 396
            xs.Tools.Net.requestLadderTenFight({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    player_id: this.model.getPlayerId(),
    player_type: this.model.getPlayerType(),
    ladder_rank: this.model.getLadderRank(),
    ignoreRandEvent: true
}, function(jsonObj, _modelMap) {
    if (jsonObj.fight_result) {
        if (jsonObj.fight_result.drop_info) {
            // source line 302, bytecode pc 67
            xs.Scene.Mgr.saveStatus("PveFight_RandEvent", _modelMap);
            // source line 304, bytecode pc 114
            xs.Views.Mgr.showDialogByName("LadderTenFightResultDialog", jsonObj.fight_result.drop_info);
        }
    }
}, function(jsonObj) {
}, this);
        } else {
            // source line 316, bytecode pc 461
            xs.Views.Mgr.showDialogByName("NotEnoughAndBuy", { item_id: xs.Models.ItemID_TenChallengeCard });
        }
    } else {
        // source line 322, bytecode pc 526
        xs.Views.Mgr.showDialogByName("NotEnoughAndBuy", { item_id: xs.Models.ItemID_EnergyWithVipCondition });
    }
},
    fightBtnClick: function(fightQuickType) {
    var _result, param, lastFightData;
    // source line 328, bytecode pc 32
    xs.log(("fightQuickType" + fightQuickType));
    if ((xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getLadderChallengeTimes() > 0)) {
        if ((xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerCurQiLi() > 0)) {
            if ((fightQuickType == xs.Constants_FightQuickType_Quick)) {
                // source line 335, bytecode pc 217
                (_result = xs.Profile.Permission.isUnLock_quickFight());
                if (!_result.result) {
                    // source line 337, bytecode pc 267
                    xs.Views.Mgr.showToast(_result.desc);
                    // source line 338, bytecode pc 269
                    return void 0;
                }
            }
            // source line 343, bytecode pc 302
            xs.Tools.Statistic.event("fight_tianti_begin");
            // source line 350, bytecode pc 384
            (param = {
    player_id: this.model.getPlayerId(),
    player_type: this.model.getPlayerType(),
    ladder_rank: this.model.getLadderRank(),
    ignoreRandEvent: true
});
            // source line 353, bytecode pc 414
            xs.log_xjf(("this.startCardViewIndex" + this.startCardViewIndex));
            // source line 354, bytecode pc 444
            xs.log_xjf(("this.startDataIndex" + this.startDataIndex));
            // source line 360, bytecode pc 558
            (lastFightData = {
    targetData: param,
    selfData: {
        selfRank: xs.Profile.GameData.Mgr.getInstance().LadderInfo.getLadderInfo().getLadderRank(),
        startCardViewIndex: this.startCardViewIndex,
        startDataIndex: this.startDataIndex
    }
});
            // source line 365, bytecode pc 610
            xs.Profile.GameData.Mgr.getInstance().LadderInfo.setLastFightData(lastFightData);
            // source line 395, bytecode pc 677
            xs.Tools.Net.requestLadderFight(xs.Utils.clone(param), function(jsonObj, _modelMap) {
    // source line 373, bytecode pc 36
    xs.Scene.Mgr.saveStatus("PvpFight_RandEvent", _modelMap);
    if ((fightQuickType == xs.Constants_FightQuickType_Nor)) {
        // source line 379, bytecode pc 132
        xs.Tools.Scene.gotoFight(xs.Constant_FightScene_Type_Ladder, xs.Models.FightInfo.create(jsonObj), null);
    } else {
        // source line 384, bytecode pc 195
        xs.Views.QuickFightView.showWithFightInfo(xs.Models.FightInfo.create(jsonObj));
    }
}, function(jsonObj) {
    if ((jsonObj.error_code === "e_8008")) {
        // source line 390, bytecode pc 56
        xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_NeedReloadLadder);
        // source line 391, bytecode pc 116
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_92"));
        // source line 392, bytecode pc 118
        return true;
    }
    // source line 394, bytecode pc 120
    return false;
}, this);
        } else {
            // source line 401, bytecode pc 742
            xs.Views.Mgr.showDialogByName("NotEnoughAndBuy", { item_id: xs.Models.ItemID_EnergyWithVipCondition });
        }
    } else {
        // source line 406, bytecode pc 807
        xs.Views.Mgr.showDialogByName("NotEnoughAndBuy", { item_id: xs.Models.ItemID_BattleWithVipCondition });
    }
},
    getCardDataByIndexOffset: function(indexOffset) {
    var index, ret;
    if ((((this.startDataIndex + indexOffset) < 0) || ((this.startDataIndex + indexOffset) > (this.cardsData.length - 1)))) {
        // source line 415, bytecode pc 48
        return null;
    }
    // source line 418, bytecode pc 74
    (index = ((this.startDataIndex + indexOffset) % this.cardsData.length));
    // source line 420, bytecode pc 88
    (ret = this.cardsData[index]);
    // source line 422, bytecode pc 92
    return ret;
},
    moveTo: function(bDirection) {
    var i, targetArea, index, moveTo, scaleTo;
    if (!this.moveDuration) {
        // source line 428, bytecode pc 23
        (this.moveDuration = 0.3);
    }
    if (!this.bMoveEnd) {
        if ((this.moveDuration > 0.1)) {
            // source line 433, bytecode pc 71
            (this.moveDuration = (this.moveDuration - 0.05));
        }
        // source line 435, bytecode pc 73
        return void 0;
    } else {
        if ((this.moveDuration < 0.3)) {
            // source line 438, bytecode pc 114
            (this.moveDuration = (this.moveDuration + 0.05));
        }
    }
    if ((((this.startDataIndex >= this.startDataIndexMax) && bDirection) || ((this.startDataIndex <= this.startDataIndexMin) && !bDirection))) {
        // source line 445, bytecode pc 172
        return void 0;
    }
    // source line 448, bytecode pc 180
    (this.bMoveEnd = false);
    // source line 450, bytecode pc 185
    (i = 0);
    while ((i < this.cardViews.length)) {
        // source line 451, bytecode pc 215
        (targetArea = this.getTargetArea(bDirection, i));
        // source line 452, bytecode pc 236
        (index = ((i + this.startCardViewIndex) % this.cardCount));
        // source line 454, bytecode pc 277
        (moveTo = cc.MoveTo.create(this.moveDuration, targetArea.pos));
        // source line 455, bytecode pc 318
        (scaleTo = cc.ScaleTo.create(this.moveDuration, targetArea.scale));
        if ((((i === 0) && bDirection) || ((i === (this.cardViews.length - 1)) && (bDirection === false)))) {
            // source line 457, bytecode pc 402
            this.cardViews[index].setPosition(targetArea.pos);
            // source line 458, bytecode pc 433
            this.cardViews[index].setScale(targetArea.scale);
        } else {
            // source line 460, bytecode pc 490
            this.cardViews[index].runAction(cc.Spawn.create(moveTo, scaleTo));
        }
        // source line 462, bytecode pc 521
        this.cardViews[index].setZOrder(targetArea.zOrder);
        // source line 450, bytecode pc 535
        (i = (+i + 1));
    }
    // source line 466, bytecode pc 663
    this.runAction(cc.Sequence.create(cc.DelayTime.create(this.moveDuration), cc.CallFunc.create(this.moveEnd.bind(this))));
    // source line 468, bytecode pc 693
    xs.log_xjf(("this.startCardViewIndex = " + this.startCardViewIndex));
    // source line 469, bytecode pc 723
    xs.log_xjf(("this.startDataIndex = " + this.startDataIndex));
    if (bDirection) {
        // source line 471, bytecode pc 766
        (this.startCardViewIndex = ((this.startCardViewIndex = (+this.startCardViewIndex + 1)) % this.cardCount));
        if ((this.startDataIndex < this.startDataIndexMax)) {
            // source line 473, bytecode pc 810
            (this.startDataIndex = (+this.startDataIndex + 1));
        }
    } else {
        if ((this.startCardViewIndex > 0)) {
            // source line 477, bytecode pc 864
            (this.startCardViewIndex = ((this.startCardViewIndex = (+this.startCardViewIndex - 1)) % this.cardCount));
        } else {
            // source line 479, bytecode pc 889
            (this.startCardViewIndex = (this.cardViews.length - 1));
        }
        if ((this.startDataIndex > this.startDataIndexMin)) {
            // source line 483, bytecode pc 933
            (this.startDataIndex = (+this.startDataIndex - 1));
        }
    }
    // source line 486, bytecode pc 964
    xs.log(("this.startCardViewIndex = " + this.startCardViewIndex));
    // source line 487, bytecode pc 994
    xs.log(("this.startDataIndex = " + this.startDataIndex));
    // source line 489, bytecode pc 1007
    this.updateCardShow();
},
    moveEnd: function() {
    // source line 493, bytecode pc 7
    (this.bMoveEnd = true);
},
    getTargetArea: function(bDirection, curIndex) {
    if (bDirection) {
        if ((curIndex === 0)) {
            // source line 500, bytecode pc 40
            xs.log_xjf("1");
            // source line 501, bytecode pc 61
            return this.cardAreaState[(this.cardAreaState.length - 1)];
        }
        // source line 503, bytecode pc 84
        xs.log_xjf("2");
        // source line 504, bytecode pc 97
        return this.cardAreaState[(curIndex - 1)];
    } else {
        if ((curIndex >= (this.cardAreaState.length - 1))) {
            // source line 508, bytecode pc 147
            xs.log_xjf("3");
            // source line 509, bytecode pc 156
            return this.cardAreaState[0];
        }
        // source line 511, bytecode pc 179
        xs.log_xjf("4");
        // source line 512, bytecode pc 192
        return this.cardAreaState[(curIndex + 1)];
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 517, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    if (this.fightBtn) {
        // source line 519, bytecode pc 67
        this.fightBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.challengeCcb.fightBtn.priority));
    }
    if (this.lineUpBtn) {
        // source line 523, bytecode pc 125
        this.lineUpBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.challengeCcb.lineUpBtn.priority));
    }
},
    cfg: {
        challengeCcb: {
            salary: { tag: 10 },
            fightBtn: { tag: 11, zOrder: 11, priority: -1 },
            quickFightBtn: { tag: 11, zOrder: 11, priority: -1 },
            light: { zOrder: 5 },
            lineUpBtn: { priority: -1 },
            ccbCfg: [
                { tag: 10, type: "ls_ext", name: "m_salary", ids: [ "LS_mainUI2", "LS_Lv" ] },
                { tag: 12, type: "btn", name: "m_fightBtn", id: "Btn_NewFight" },
                { tag: 11, type: "btn", name: "m_quickFightBtn", id: "Btn_NewQuickFight" }
            ]
        },
        selfCcb: { ccbCfg: [ { tag: 10, type: "ls", name: "m_selfPos", id: "LS_mainUI2" } ] }
    }
}));
// source line 578, bytecode pc 576
(xs.Views.LadderCardShow.create = function() {
    var ret;
    // source line 579, bytecode pc 23
    (ret = new xs.Views.LadderCardShow());
    if ((ret && ret.init())) {
        // source line 581, bytecode pc 55
        return ret;
    }
    // source line 583, bytecode pc 57
    return null;
});
