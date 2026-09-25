// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/DungeonDetailB.js:1
// source line 495, bytecode pc 930
(xs.Views.Dialog.DungeonDetailB = xs.Views.HungerLayer.extend({
    name: "DungeonDetailB",
    init: function(params) {
    var dungeonId, curMap, generalModel, ccbInfoRegion, dropInfos, dropInfoNum, i, icon, _mulitiKillTimes;
    // source line 9, bytecode pc 12
    this._super();
    // source line 12, bytecode pc 35
    xs.log("xs.Views.Dialog.DungeonDetailB");
    // source line 13, bytecode pc 45
    (this.params = params);
    // source line 14, bytecode pc 57
    (dungeonId = params.dungeonId);
    // source line 15, bytecode pc 117
    (curMap = xs.Profile.GameData.Mgr.getInstance().Map.getMapObjByMapId(params.map_id));
    if (curMap) {
        // source line 17, bytecode pc 148
        xs.log("xs.Views.Dialog.DungeonDetailB");
        // source line 18, bytecode pc 173
        (this.dungeonModel = curMap.getDungeonById(dungeonId));
        if (!this.dungeonModel) {
            // source line 20, bytecode pc 245
            (curMap = xs.Profile.GameData.Mgr.getInstance().Map.getCurMap(params.map_id));
            if (curMap) {
                // source line 22, bytecode pc 278
                (this.dungeonModel = curMap.getDungeonById(dungeonId));
            } else {
                // source line 24, bytecode pc 285
                return false;
            }
        }
    } else {
        // source line 28, bytecode pc 292
        return false;
    }
    // source line 32, bytecode pc 328
    (this.ccbNode = xs.ccb_reader.load("ccb3/0_7_10_DungeonDetail.ccbi", this));
    // source line 33, bytecode pc 371
    this.ccbNode.setContentSize(cc.size(910, 555));
    // source line 40, bytecode pc 461
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", offset: { x: -466, y: -278 }, sc: true });
    // source line 44, bytecode pc 555
    (this.nameLab = xs.Utils.replaceLabelWithString(this.ccbNode, this.cfg.title.tag, [ "LS_popUI1" ], [ this.dungeonModel.getName() ]));
    // source line 47, bytecode pc 603
    (generalModel = xs.Models.General.createWithBase(this.dungeonModel.getBossCardId()));
    // source line 48, bytecode pc 624
    (this.generalCard = generalModel.createCard_Chapter());
    // source line 49, bytecode pc 677
    xs.Utils.replaceGeneralCard(this.ccbNode, this.cfg.card.tag, this.generalCard);
    // source line 54, bytecode pc 803
    (this.starLabArray = [
    this.ccbNode.getChildByTag(this.cfg.star1.tag),
    this.ccbNode.getChildByTag(this.cfg.star2.tag),
    this.ccbNode.getChildByTag(this.cfg.star3.tag)
]);
    // source line 56, bytecode pc 816
    this.initFightStar();
    // source line 60, bytecode pc 854
    (ccbInfoRegion = this.ccbNode.getChildByTag(this.cfg.infoRegion.tag));
    // source line 61, bytecode pc 886
    ccbInfoRegion.setZOrder(this.cfg.infoRegion.zOrder);
    // source line 63, bytecode pc 894
    (this.m_coolDown = null);
    // source line 64, bytecode pc 944
    xs.Utils.UI.replaceCcbByCfg(ccbInfoRegion, this.cfg.infoRegion.ccbCfg, this);
    // source line 67, bytecode pc 1034
    xs.Utils.replaceLabelWithString(ccbInfoRegion, this.cfg.infoRegion.power.tag, [ "LS_mainUI4" ], [ this.dungeonModel.getCostPower() ]);
    // source line 70, bytecode pc 1094
    this.m_challengeTimes.setString(((this.dungeonModel.getPlayedTimes() + "/") + this.dungeonModel.getDungeonTimes()));
    // source line 72, bytecode pc 1184
    xs.Utils.replaceLabelWithString(ccbInfoRegion, this.cfg.infoRegion.suggestLevel.tag, [ "LS_mainUI4" ], [ this.dungeonModel.getSuggestLevel() ]);
    // source line 74, bytecode pc 1280
    xs.Utils.replaceLabelWithString(ccbInfoRegion, this.cfg.infoRegion.coin.tag, [ "LS_mainUI4" ], [ ("x" + this.dungeonModel.getDropCoin()) ]);
    // source line 77, bytecode pc 1376
    xs.Utils.replaceLabelWithString(ccbInfoRegion, this.cfg.infoRegion.generalExp.tag, [ "LS_mainUI4" ], [ ("x" + this.dungeonModel.getGeneralExp()) ]);
    // source line 81, bytecode pc 1461
    (this.closeBtn = xs.Utils.replaceButton(this.ccbNode, this.cfg.closeBtn.tag, xs.Views.Btn.create("Btn_Close")));
    // source line 84, bytecode pc 1498
    this.closeBtn.setOnClickCallBack(function() {
    // source line 83, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this));
    // source line 87, bytecode pc 1515
    (this.dropIconBtn = new Array());
    // source line 88, bytecode pc 1565
    ccbInfoRegion.getChildByTag(this.cfg.infoRegion.dropIcon1.tag).setVisible(false);
    // source line 89, bytecode pc 1615
    ccbInfoRegion.getChildByTag(this.cfg.infoRegion.dropIcon2.tag).setVisible(false);
    // source line 90, bytecode pc 1636
    (dropInfos = this.dungeonModel.getDropInfo());
    // source line 91, bytecode pc 1671
    (dropInfoNum = ((dropInfos.length > 2) ? 2 : dropInfos.length));
    // source line 92, bytecode pc 1676
    (i = 0);
    while ((i < dropInfoNum)) {
        // source line 94, bytecode pc 1756
        (icon = xs.Utils.replaceIcon(ccbInfoRegion, (this.cfg.infoRegion.dropIcon1.tag + i), dropInfos[i].createIcon_GradeAndName()));
        // source line 95, bytecode pc 1805
        this.dropIconBtn.push(xs.Views.Btn.createInvisibleWithParent(icon));
        // source line 99, bytecode pc 1863
        this.dropIconBtn[i].setOnClickCallBack(function() {
    // source line 97, bytecode pc 33
    xs.Tools.UI.showDropItemDetail(this.dropItem);
}.bind({ dropItem: dropInfos[i] }));
        // source line 92, bytecode pc 1877
        (i = (+i + 1));
    }
    // source line 104, bytecode pc 1912
    (_mulitiKillTimes = this.dungeonModel.getMultiKillTimes());
    // source line 106, bytecode pc 1999
    (this.mulitiKillBtn = xs.Utils.replaceButton(ccbInfoRegion, this.cfg.infoRegion.button1.tag, xs.Views.Btn.create("Btn_MulitiKill")));
    // source line 107, bytecode pc 2050
    this.mulitiKillBtn.setString(xs.Tools.String.createString("mulitiKill"));
    // source line 108, bytecode pc 2081
    this.mulitiKillBtn.setStringParams([ _mulitiKillTimes ]);
    // source line 109, bytecode pc 2101
    this.mulitiKillBtn.setEventOnDisable(true);
    // source line 112, bytecode pc 2188
    (this.killBtn = xs.Utils.replaceButton(ccbInfoRegion, this.cfg.infoRegion.button2.tag, xs.Views.Btn.create("Btn_Kill")));
    // source line 113, bytecode pc 2224
    this.killBtn.setEnabled(this.dungeonModel.isCanPlay());
    // source line 147, bytecode pc 2261
    this.mulitiKillBtn.setOnClickCallBack(function() {
    var result;
    // source line 117, bytecode pc 20
    (result = this.dungeonModel.isCanMulitiKill());
    if ((result === true)) {
        // source line 143, bytecode pc 100
        xs.Tools.Net.requireMultiKill({ dungeon_id: this.dungeonModel.getId(), ignoreRandEvent: true }, function(jsonObj, _modelMap) {
    var _updateMapInfo;
    // source line 128, bytecode pc 8
    (_updateMapInfo = function(jsonObj) {
    // source line 129, bytecode pc 56
    xs.Profile.GameData.Mgr.getInstance().Map.update(jsonObj.map_info);
    // source line 131, bytecode pc 69
    this.updateAll();
});
    // source line 133, bytecode pc 64
    xs.Tools.Net.requireChapterInfo({ map_id: this.params.map_id }, _updateMapInfo, this);
    // source line 135, bytecode pc 101
    xs.Scene.Mgr.saveStatus("PveFight_RandEvent", _modelMap);
    // source line 137, bytecode pc 158
    xs.Profile.GameData.Mgr.getInstance().Map.update(jsonObj.map_info);
    // source line 141, bytecode pc 255
    xs.Views.Mgr.showDialogByName("MulitiFightDialog", {
    mulitiFightModel: xs.Models.MulitiFightInfo.create(jsonObj),
    dungeonName: this.dungeonModel.getName()
});
}, this);
    } else {
        // source line 145, bytecode pc 122
        this.showErrorDialog(result);
    }
}.bind(this));
    // source line 150, bytecode pc 2299
    this.killBtn.setOnClickCallBack(this.singleFight.bind(this));
    if ((xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getCoolDownTime() > 0)) {
        // source line 154, bytecode pc 2384
        this.m_coolDown.setVisible(true);
    } else {
        // source line 156, bytecode pc 2409
        this.m_coolDown.setVisible(false);
    }
    // source line 162, bytecode pc 2438
    this.killBtn.setGuideTag(xs.Constant_GuideTag_ChapterDetail_Fight);
    // source line 165, bytecode pc 2440
    return true;
},
    onEnterTransitionDidFinish: function() {
    var player;
    // source line 169, bytecode pc 12
    this._super();
    // source line 171, bytecode pc 63
    (player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
    // source line 172, bytecode pc 84
    (this.cdTime = player.getCoolDownTime());
    // source line 174, bytecode pc 126
    xs.director.getScheduler().unscheduleCallbackForTarget(this, this.updateCoolDownTime);
    // source line 175, bytecode pc 181
    xs.director.getScheduler().scheduleCallbackForTarget(this, this.updateCoolDownTime, 1, cc.REPEAT_FOREVER);
    // source line 178, bytecode pc 194
    this.updateCoolDownTime();
    // source line 180, bytecode pc 241
    xs.Utils.Notify.addObserver(this, this.updataMulitiBtn, xs.Constant_Notify_ModelChange_UserInfo);
    // source line 182, bytecode pc 288
    xs.Utils.Notify.addObserver(this, this.updataMulitiBtn, xs.Constant_Notify_ModelChange_DungeonTimes);
    // source line 184, bytecode pc 301
    this.updataMulitiBtn();
    // source line 186, bytecode pc 343
    xs.Guide.GuideMgr.endStepBySequence([ "180106" ]);
},
    onExit: function() {
    // source line 190, bytecode pc 12
    this._super();
    // source line 191, bytecode pc 54
    xs.director.getScheduler().unscheduleCallbackForTarget(this, this.updateCoolDownTime);
    // source line 192, bytecode pc 94
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_UserInfo);
    // source line 193, bytecode pc 134
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_DungeonTimes);
},
    singleFight: function() {
    var result;
    // source line 198, bytecode pc 20
    (result = this.dungeonModel.isCanKill());
    if ((result === true)) {
        // source line 201, bytecode pc 72
        xs.Guide.GuideMgr.endStepBySequence([ "180108" ]);
        // source line 261, bytecode pc 149
        xs.Tools.Net.requireFight({ dungeon_id: this.dungeonModel.getId(), check_troop: 2, ignoreRandEvent: true }, function(jsonObj, _modelMap) {
    var _dungeonId, multiJsonobj, _model_fight_info, _updateMapInfo;
    // source line 213, bytecode pc 20
    (_dungeonId = this.dungeonModel.getId());
    // source line 215, bytecode pc 30
    (multiJsonobj = {});
    // source line 216, bytecode pc 44
    (multiJsonobj.fight_result_all = []);
    // source line 217, bytecode pc 68
    multiJsonobj.fight_result_all.push(jsonObj);
    // source line 220, bytecode pc 105
    xs.Scene.Mgr.saveStatus("PveFight_RandEvent", _modelMap);
    // source line 222, bytecode pc 162
    xs.Profile.GameData.Mgr.getInstance().Map.update(jsonObj.map_info);
    // source line 224, bytecode pc 196
    (_model_fight_info = xs.Models.FightInfo.create(jsonObj));
    // source line 227, bytecode pc 227
    xs.Tools.Statistic.startLevel(_dungeonId);
    if (_model_fight_info.isSuccess()) {
        // source line 229, bytecode pc 277
        xs.Tools.Statistic.finishLevel(_dungeonId);
    } else {
        // source line 232, bytecode pc 313
        xs.Tools.Statistic.failLevel(_dungeonId);
    }
    // source line 241, bytecode pc 322
    (_updateMapInfo = function(jsonObj) {
    // source line 242, bytecode pc 56
    xs.Profile.GameData.Mgr.getInstance().Map.update(jsonObj.map_info);
    // source line 244, bytecode pc 69
    this.updateAll();
});
    // source line 246, bytecode pc 378
    xs.Tools.Net.requireChapterInfo({ map_id: this.params.map_id }, _updateMapInfo, this);
    // source line 250, bytecode pc 475
    xs.Views.Mgr.showDialogByName("MulitiFightDialog", {
    mulitiFightModel: xs.Models.MulitiFightInfo.create(multiJsonobj),
    dungeonName: this.dungeonModel.getName()
});
}, this);
    } else {
        // source line 265, bytecode pc 171
        this.showErrorDialog(result);
    }
},
    showErrorDialog: function(result) {
    var _itemId, _itemUsedTimes, totalPrice, dialog;
    if ((result === xs.Models.Dungeon_FightError_Tili)) {
        // source line 273, bytecode pc 83
        xs.Views.Mgr.showDialogByName("NotEnoughAndBuy", { item_id: xs.Models.ItemID_PowerWithVipCondition });
    } else {
        if ((result === xs.Models.Dungeon_FightError_Times)) {
            // source line 277, bytecode pc 167
            (_itemId = (this.params.m_bInHardChapter ? xs.Models.ItemID_RecoveryEliteDungeonTimes : xs.Models.ItemID_RecoveryDungeonTimes));
            // source line 278, bytecode pc 172
            (_itemUsedTimes = null);
            if ((_itemId === xs.Models.ItemID_RecoveryEliteDungeonTimes)) {
                // source line 281, bytecode pc 217
                (_itemUsedTimes = this.dungeonModel.getRecoveryBuyTimes());
            }
            // source line 286, bytecode pc 284
            xs.Views.Mgr.showDialogByName("NotEnoughAndBuy", { item_id: _itemId, itemUsedTimes: _itemUsedTimes, dungeon: this.dungeonModel });
        } else {
            if ((result === xs.Models.Dungeon_FightError_Level)) {
                // source line 290, bytecode pc 346
                xs.Views.Mgr.showToastByStringId("1071310075");
            } else {
                if ((result === xs.Models.Dungeon_FightError_locked)) {
                    // source line 293, bytecode pc 435
                    xs.Views.Mgr.showToast(xs.Tools.String.createString("dungeonLocked"));
                } else {
                    if ((result === xs.Models.Dungeon_FightError_coolDown)) {
                        // source line 295, bytecode pc 491
                        (totalPrice = this.dungeonModel.getTotalCDPrice());
                        // source line 345, bytecode pc 661
                        (dialog = xs.Views.Mgr.showDialogByName("common", {
    title: "1070910046",
    content: "1070910046",
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("1070610035"),
    leftCB: function() {
    // source line 303, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    rightCB: function() {
    var player, level;
    // source line 307, bytecode pc 50
    (player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
    if ((player.getPlayerYuanBao() >= totalPrice)) {
        if (xs.Profile.Permission.isUnLock_dungeonCD()) {
            // source line 310, bytecode pc 137
            xs.Views.Mgr.hideDialog();
            // source line 336, bytecode pc 213
            xs.Tools.Net.requireMultiKill({ dungeon_id: this.dungeonModel.getId(), clear_cd: 1, ignoreRandEvent: true }, function(jsonObj, _modelMap) {
    var _updateMapInfo;
    // source line 318, bytecode pc 42
    xs.Tools.Statistic.buy(("600030|1|" + totalPrice));
    // source line 321, bytecode pc 79
    xs.Scene.Mgr.saveStatus("PveFight_RandEvent", _modelMap);
    // source line 323, bytecode pc 136
    xs.Profile.GameData.Mgr.getInstance().Map.update(jsonObj.map_info);
    // source line 327, bytecode pc 233
    xs.Views.Mgr.showDialogByName("MulitiFightDialog", {
    mulitiFightModel: xs.Models.MulitiFightInfo.create(jsonObj),
    dungeonName: this.dungeonModel.getName()
});
    // source line 330, bytecode pc 242
    (_updateMapInfo = function(jsonObj) {
    // source line 331, bytecode pc 56
    xs.Profile.GameData.Mgr.getInstance().Map.update(jsonObj.map_info);
    // source line 333, bytecode pc 69
    this.updateAll();
});
    // source line 335, bytecode pc 298
    xs.Tools.Net.requireChapterInfo({ map_id: this.params.map_id }, _updateMapInfo, this);
}, this);
        } else {
            // source line 338, bytecode pc 245
            xs.Views.Mgr.hideDialog();
            // source line 339, bytecode pc 306
            (level = xs.Utils.parseIntSafe(xs.Tools.CfgData.getGlobalConf("vip_mkill_clearcd", 6)));
            // source line 340, bytecode pc 403
            xs.Views.Mgr.showToast(((xs.Tools.String.createString("auto_name_vip") + level) + xs.Tools.String.createString("auto_name_400")));
        }
    } else {
        // source line 343, bytecode pc 435
        xs.Tools.UI.showGoldNotEnough();
    }
}.bind(this)
}));
                        // source line 349, bytecode pc 679
                        (dialog = dialog.getRealDialog());
                        // source line 350, bytecode pc 763
                        dialog.setContentText(xs.Tools.String.createString("1070910047").convWithArgs([ (totalPrice + "") ]));
                    }
                }
            }
        }
    }
},
    initFightStar: function() {
    var grade, i;
    // source line 357, bytecode pc 20
    (grade = this.dungeonModel.getFightStar());
    // source line 358, bytecode pc 25
    (i = 1);
    while ((i <= 3)) {
        if ((grade >= i)) {
            // source line 360, bytecode pc 69
            this.starLabArray[(i - 1)].setVisible(true);
        } else {
            // source line 362, bytecode pc 100
            this.starLabArray[(i - 1)].setVisible(false);
        }
        // source line 358, bytecode pc 114
        (i = (+i + 1));
    }
},
    updateAll: function() {
    var curMap, player;
    // source line 368, bytecode pc 62
    (curMap = xs.Profile.GameData.Mgr.getInstance().Map.getMapObjByMapId(this.params.map_id));
    if (curMap) {
        // source line 370, bytecode pc 93
        xs.log("xs.Views.Dialog.DungeonDetailB");
        // source line 371, bytecode pc 126
        (this.dungeonModel = curMap.getDungeonById(this.params.dungeonId));
        if (!this.dungeonModel) {
            // source line 373, bytecode pc 201
            (curMap = xs.Profile.GameData.Mgr.getInstance().Map.getCurMap(this.params.map_id));
            if (curMap) {
                // source line 375, bytecode pc 242
                (this.dungeonModel = curMap.getDungeonById(this.params.dungeonId));
            }
        }
    }
    // source line 379, bytecode pc 293
    (player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
    // source line 380, bytecode pc 314
    (this.cdTime = player.getCoolDownTime());
    if ((player.getCoolDownTime() > 0)) {
        // source line 383, bytecode pc 355
        this.m_coolDown.setVisible(true);
    } else {
        // source line 385, bytecode pc 380
        this.m_coolDown.setVisible(false);
    }
    // source line 388, bytecode pc 440
    this.m_challengeTimes.setString(((this.dungeonModel.getPlayedTimes() + "/") + this.dungeonModel.getDungeonTimes()));
    // source line 389, bytecode pc 453
    this.updataMulitiBtn();
    // source line 390, bytecode pc 466
    this.updateCoolDownTime();
},
    updataMulitiBtn: function() {
    var _mulitiKillTimes;
    // source line 395, bytecode pc 20
    (_mulitiKillTimes = this.dungeonModel.getMultiKillTimes());
    if (this.mulitiKillBtn) {
        // source line 397, bytecode pc 106
        this.mulitiKillBtn.setString(xs.Tools.String.createString("mulitiKill").convWithArgs([ _mulitiKillTimes ]));
    }
    if ((this.dungeonModel.isNewest() || (this.dungeonModel.isCanMulitiKill() === false))) {
        // source line 402, bytecode pc 173
        this.mulitiKillBtn.setEnabled(false);
    } else {
        if (this.dungeonModel.isCanPlay()) {
            // source line 404, bytecode pc 220
            this.mulitiKillBtn.setEnabled(true);
        }
    }
    // source line 408, bytecode pc 280
    this.m_challengeTimes.setString(((this.dungeonModel.getPlayedTimes() + "/") + this.dungeonModel.getDungeonTimes()));
    // source line 410, bytecode pc 316
    this.killBtn.setEnabled(this.dungeonModel.isCanPlay());
},
    updateCoolDownTime: function() {
    var str;
    if ((this.cdTime === null)) {
        // source line 418, bytecode pc 14
        return void 0;
    }
    // source line 420, bytecode pc 29
    (this.cdTime = (this.cdTime - 1));
    if ((this.cdTime < 0)) {
        // source line 422, bytecode pc 62
        this.m_coolDown.setVisible(false);
        // source line 423, bytecode pc 70
        (this.cdTime = null);
        // source line 424, bytecode pc 72
        return void 0;
    }
    // source line 427, bytecode pc 157
    (str = xs.Tools.String.createString("coolDownTip").convWithArgs([ xs.Utils.convertSecondToTime(this.cdTime) ]));
    // source line 428, bytecode pc 179
    this.m_coolDown.setString(str);
},
    setBaseTouchPriority: function(priority) {
    var i;
    // source line 433, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 434, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 436, bytecode pc 71
    this.closeBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.closeBtn.priority));
    // source line 437, bytecode pc 118
    this.mulitiKillBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.infoRegion.button1.priority));
    // source line 438, bytecode pc 165
    this.killBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.infoRegion.button2.priority));
    // source line 440, bytecode pc 170
    (i = 0);
    while ((i < this.dropIconBtn.length)) {
        // source line 441, bytecode pc 227
        this.dropIconBtn[i].setTouchPriority((this.m_baseTouchPriority + this.cfg.infoRegion.dropIcon1.priority));
        // source line 440, bytecode pc 241
        (i = (+i + 1));
    }
},
    cfg: {
        title: { tag: 10 },
        closeBtn: { tag: 24, priority: -1 },
        star1: { tag: 20 },
        star2: { tag: 21 },
        star3: { tag: 22 },
        card: { tag: 23 },
        infoRegion: {
            tag: 30,
            zOrder: 2,
            power: { tag: 11 },
            challgenTimes: { tag: 12 },
            suggestLevel: { tag: 13 },
            coin: { tag: 14 },
            generalExp: { tag: 15 },
            dropIcon1: { tag: 16, priority: -1 },
            dropIcon2: { tag: 17 },
            button1: { tag: 18, priority: -1 },
            button2: { tag: 19, priority: -1 },
            ccbCfg: [
                { tag: 12, type: "ls", name: "m_challengeTimes", id: "LS_mainUI4" },
                { tag: 20, type: "ls", name: "m_coolDown", id: "LS_TiXing" },
                { tag: 21, type: "ls", id: "LS_jinengInf1", stringId: "DungeonDetail_tili" },
                { tag: 22, type: "ls", id: "LS_jinengInf1", stringId: "DungeonDetail_times" },
                { tag: 23, type: "ls", id: "LS_jinengInf1", stringId: "DungeonDetail_sgLevel" },
                { tag: 24, type: "ls", id: "LS_wujiangInf1", stringId: "auto_name_401" },
                { tag: 25, type: "ls", id: "LS_jinengInf1", stringId: "DungeonDetail_money" },
                { tag: 26, type: "ls", id: "LS_jinengInf1", stringId: "DungeonDetail_exp" },
                { tag: 27, type: "ls", id: "LS_wujiangInf1", stringId: "1071110042" }
            ]
        }
    }
}));
// source line 501, bytecode pc 961
(xs.Views.Dialog.DungeonDetailB.create = function(param) {
    var ret;
    // source line 502, bytecode pc 28
    (ret = new xs.Views.Dialog.DungeonDetailB());
    if ((ret && ret.init(param))) {
        // source line 504, bytecode pc 64
        return ret;
    }
    // source line 506, bytecode pc 66
    return null;
});
// source line 511, bytecode pc 1041
xs.Views.Mgr.registerDialog("DungeonDetailB", { "class": xs.Views.Dialog.DungeonDetailB, styleType: xs.Constant_DlgStyleType_Large });
