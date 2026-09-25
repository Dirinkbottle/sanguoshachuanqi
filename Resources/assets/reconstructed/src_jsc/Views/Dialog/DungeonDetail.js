// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/DungeonDetail.js:1
// source line 528, bytecode pc 940
(xs.Views.Dialog.DungeonDetail = xs.Views.HungerLayer.extend({
    name: "DungeonDetail",
    init: function(params) {
    var dungeonId, curMap, _data, generalModel, ccbInfoRegion, dropInfos, dropInfoNum, i, icon, _mulitiKillTimes;
    // source line 9, bytecode pc 12
    this._super();
    // source line 11, bytecode pc 71
    (this.m_equipmentNum = xs.Profile.GameData.Mgr.getInstance().Equipments.getAll().length);
    // source line 13, bytecode pc 81
    (this.params = params);
    // source line 14, bytecode pc 93
    (dungeonId = params.dungeonId);
    // source line 15, bytecode pc 144
    (curMap = xs.Profile.GameData.Mgr.getInstance().Map.getCurMap());
    if (curMap) {
        // source line 17, bytecode pc 177
        (this.dungeonModel = curMap.getDungeonById(dungeonId));
        if (!this.dungeonModel) {
            // source line 19, bytecode pc 242
            (curMap = xs.Profile.GameData.Mgr.getInstance().Map.getCurMap(true));
            if (curMap) {
                // source line 21, bytecode pc 275
                (this.dungeonModel = curMap.getDungeonById(dungeonId));
            } else {
                // source line 23, bytecode pc 282
                return false;
            }
        }
    } else {
        // source line 27, bytecode pc 289
        return false;
    }
    // source line 31, bytecode pc 339
    (_data = xs.Tools.CfgData.getGlobalConf("DungeonMultiSpecialConf", { vip_level: 12 }));
    // source line 32, bytecode pc 354
    (this.m_multiKillVip = _data.vip_level);
    // source line 35, bytecode pc 390
    (this.ccbNode = xs.ccb_reader.load("ccb3/0_7_10_DungeonDetail.ccbi", this));
    // source line 36, bytecode pc 433
    this.ccbNode.setContentSize(cc.size(910, 555));
    // source line 43, bytecode pc 523
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", offset: { x: -466, y: -278 }, sc: true });
    // source line 47, bytecode pc 617
    (this.nameLab = xs.Utils.replaceLabelWithString(this.ccbNode, this.cfg.title.tag, [ "LS_popUI1" ], [ this.dungeonModel.getName() ]));
    // source line 50, bytecode pc 665
    (generalModel = xs.Models.General.createWithBase(this.dungeonModel.getBossCardId()));
    // source line 51, bytecode pc 686
    (this.generalCard = generalModel.createCard_Chapter());
    // source line 52, bytecode pc 739
    xs.Utils.replaceGeneralCard(this.ccbNode, this.cfg.card.tag, this.generalCard);
    // source line 57, bytecode pc 865
    (this.starLabArray = [
    this.ccbNode.getChildByTag(this.cfg.star1.tag),
    this.ccbNode.getChildByTag(this.cfg.star2.tag),
    this.ccbNode.getChildByTag(this.cfg.star3.tag)
]);
    // source line 59, bytecode pc 878
    this.initFightStar();
    // source line 63, bytecode pc 916
    (ccbInfoRegion = this.ccbNode.getChildByTag(this.cfg.infoRegion.tag));
    // source line 64, bytecode pc 948
    ccbInfoRegion.setZOrder(this.cfg.infoRegion.zOrder);
    // source line 66, bytecode pc 956
    (this.m_coolDown = null);
    // source line 67, bytecode pc 1006
    xs.Utils.UI.replaceCcbByCfg(ccbInfoRegion, this.cfg.infoRegion.ccbCfg, this);
    // source line 70, bytecode pc 1096
    xs.Utils.replaceLabelWithString(ccbInfoRegion, this.cfg.infoRegion.power.tag, [ "LS_mainUI4" ], [ this.dungeonModel.getCostPower() ]);
    // source line 73, bytecode pc 1156
    this.m_challengeTimes.setString(((this.dungeonModel.getPlayedTimes() + "/") + this.dungeonModel.getDungeonTimes()));
    // source line 75, bytecode pc 1246
    xs.Utils.replaceLabelWithString(ccbInfoRegion, this.cfg.infoRegion.suggestLevel.tag, [ "LS_mainUI4" ], [ this.dungeonModel.getSuggestLevel() ]);
    // source line 77, bytecode pc 1342
    xs.Utils.replaceLabelWithString(ccbInfoRegion, this.cfg.infoRegion.coin.tag, [ "LS_mainUI4" ], [ ("x" + this.dungeonModel.getDropCoin()) ]);
    // source line 80, bytecode pc 1438
    xs.Utils.replaceLabelWithString(ccbInfoRegion, this.cfg.infoRegion.generalExp.tag, [ "LS_mainUI4" ], [ ("x" + this.dungeonModel.getGeneralExp()) ]);
    // source line 84, bytecode pc 1523
    (this.closeBtn = xs.Utils.replaceButton(this.ccbNode, this.cfg.closeBtn.tag, xs.Views.Btn.create("Btn_Close")));
    // source line 87, bytecode pc 1560
    this.closeBtn.setOnClickCallBack(function() {
    // source line 86, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this));
    // source line 90, bytecode pc 1577
    (this.dropIconBtn = new Array());
    // source line 91, bytecode pc 1627
    ccbInfoRegion.getChildByTag(this.cfg.infoRegion.dropIcon1.tag).setVisible(false);
    // source line 92, bytecode pc 1677
    ccbInfoRegion.getChildByTag(this.cfg.infoRegion.dropIcon2.tag).setVisible(false);
    // source line 93, bytecode pc 1698
    (dropInfos = this.dungeonModel.getDropInfo());
    // source line 94, bytecode pc 1733
    (dropInfoNum = ((dropInfos.length > 2) ? 2 : dropInfos.length));
    // source line 95, bytecode pc 1738
    (i = 0);
    while ((i < dropInfoNum)) {
        // source line 97, bytecode pc 1818
        (icon = xs.Utils.replaceIcon(ccbInfoRegion, (this.cfg.infoRegion.dropIcon1.tag + i), dropInfos[i].createIcon_GradeAndName()));
        // source line 98, bytecode pc 1867
        this.dropIconBtn.push(xs.Views.Btn.createInvisibleWithParent(icon));
        // source line 102, bytecode pc 1925
        this.dropIconBtn[i].setOnClickCallBack(function() {
    // source line 100, bytecode pc 33
    xs.Tools.UI.showDropItemDetail(this.dropItem);
}.bind({ dropItem: dropInfos[i] }));
        // source line 95, bytecode pc 1940
        i++;
    }
    // source line 107, bytecode pc 1974
    (_mulitiKillTimes = this.dungeonModel.getMultiKillTimes());
    // source line 109, bytecode pc 2061
    (this.mulitiKillBtn = xs.Utils.replaceButton(ccbInfoRegion, this.cfg.infoRegion.button1.tag, xs.Views.Btn.create("Btn_MulitiKill")));
    // source line 110, bytecode pc 2112
    this.mulitiKillBtn.setString(xs.Tools.String.createString("mulitiKill"));
    // source line 111, bytecode pc 2143
    this.mulitiKillBtn.setStringParams([ _mulitiKillTimes ]);
    // source line 112, bytecode pc 2163
    this.mulitiKillBtn.setEventOnDisable(true);
    // source line 115, bytecode pc 2250
    (this.killBtn = xs.Utils.replaceButton(ccbInfoRegion, this.cfg.infoRegion.button2.tag, xs.Views.Btn.create("Btn_Kill")));
    // source line 116, bytecode pc 2286
    this.killBtn.setEnabled(this.dungeonModel.isCanPlay());
    // source line 160, bytecode pc 2323
    this.mulitiKillBtn.setOnClickCallBack(function() {
    var result;
    // source line 120, bytecode pc 20
    (result = this.dungeonModel.isCanMulitiKill());
    if ((result === true)) {
        if ((this.m_equipmentNum > xs.Const_Equipment_Max)) {
            // source line 134, bytecode pc 232
            xs.Views.Mgr.showDialogByName("common", {
    title: "MeltPromptTitle",
    content: "EquipmentIsMax",
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("GoToEquipmentMelt"),
    leftCB: function() {
    // source line 130, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    // source line 133, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("EquipmentScene");
}.bind(this)
});
            // source line 135, bytecode pc 234
            return void 0;
        }
        // source line 156, bytecode pc 304
        xs.Tools.Net.requireMultiKill({ dungeon_id: this.dungeonModel.getId(), ignoreRandEvent: true }, function(jsonObj, _modelMap) {
    // source line 145, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 147, bytecode pc 63
    xs.Scene.Mgr.saveStatus("PveFight_RandEvent", _modelMap);
    // source line 149, bytecode pc 120
    xs.Profile.GameData.Mgr.getInstance().Map.update(jsonObj.map_info);
    // source line 154, bytecode pc 223
    xs.Views.Mgr.showDialogByName("MulitiFightDialog", {
    mulitiFightModel: xs.Models.MulitiFightInfo.create(jsonObj),
    dungeonName: this.dungeonModel.getName(),
    showListDialog: true
});
}, this);
    } else {
        // source line 158, bytecode pc 326
        this.showErrorDialog(result);
    }
}.bind(this));
    // source line 163, bytecode pc 2361
    this.killBtn.setOnClickCallBack(this.singleFight.bind(this));
    if ((xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getCoolDownTime() > 0)) {
        // source line 167, bytecode pc 2446
        this.m_coolDown.setVisible(true);
    } else {
        // source line 169, bytecode pc 2471
        this.m_coolDown.setVisible(false);
    }
    // source line 175, bytecode pc 2500
    this.killBtn.setGuideTag(xs.Constant_GuideTag_ChapterDetail_Fight);
    if (this.params.m_bInHardChapter) {
        if ((this.dungeonModel.getDungeonTimes() == 99)) {
            // source line 180, bytecode pc 2554
            this.createAutoMulitiKillButton();
        }
    } else {
        // source line 183, bytecode pc 2572
        this.createAutoMulitiKillButton();
    }
    // source line 185, bytecode pc 2574
    return true;
},
    onEnterTransitionDidFinish: function() {
    var player;
    // source line 188, bytecode pc 12
    this._super();
    // source line 190, bytecode pc 63
    (player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
    // source line 191, bytecode pc 84
    (this.cdTime = player.getCoolDownTime());
    // source line 193, bytecode pc 126
    xs.director.getScheduler().unscheduleCallbackForTarget(this, this.updateCoolDownTime);
    // source line 194, bytecode pc 181
    xs.director.getScheduler().scheduleCallbackForTarget(this, this.updateCoolDownTime, 1, cc.REPEAT_FOREVER);
    // source line 197, bytecode pc 194
    this.updateCoolDownTime();
    // source line 199, bytecode pc 241
    xs.Utils.Notify.addObserver(this, this.updataMulitiBtn, xs.Constant_Notify_ModelChange_UserInfo);
    // source line 201, bytecode pc 288
    xs.Utils.Notify.addObserver(this, this.updataMulitiBtn, xs.Constant_Notify_ModelChange_DungeonTimes);
    // source line 203, bytecode pc 301
    this.updataMulitiBtn();
    // source line 205, bytecode pc 343
    xs.Guide.GuideMgr.endStepBySequence([ "180106" ]);
},
    createAutoMulitiKillButton: function() {
    var nodeInfor;
    // source line 208, bytecode pc 39
    this.mulitiKillBtn.setPositionX((this.mulitiKillBtn.getPositionX() + 136));
    // source line 209, bytecode pc 78
    this.killBtn.setPositionX((this.killBtn.getPositionX() + 50));
    // source line 211, bytecode pc 116
    (nodeInfor = this.ccbNode.getChildByTag(this.cfg.infoRegion.tag));
    // source line 212, bytecode pc 155
    (this.m_autoMulitiKillButtonn = xs.Views.Btn.create("Btn_MulitiKill"));
    // source line 213, bytecode pc 206
    this.m_autoMulitiKillButtonn.setString(xs.Tools.String.createString("AutoMultiKill_1"));
    // source line 214, bytecode pc 226
    this.m_autoMulitiKillButtonn.setEventOnDisable(true);
    // source line 215, bytecode pc 264
    this.m_autoMulitiKillButtonn.setOnClickCallBack(this.autoMulitiKillCallBack.bind(this));
    // source line 222, bytecode pc 356
    xs.Utils.Node.attachNodes(nodeInfor, this.m_autoMulitiKillButtonn, { desc: "lb", offset: { x: -160, y: -180 }, sc: true });
    if (this.dungeonModel.isNewest()) {
        // source line 225, bytecode pc 398
        this.m_autoMulitiKillButtonn.setEnabled(false);
    }
    // source line 228, bytecode pc 418
    this.m_autoMulitiKillButtonn.setVisible(false);
},
    autoMulitiKillCallBack: function() {
    var playerVip;
    if (this.dungeonModel.isNewest()) {
        // source line 233, bytecode pc 81
        xs.Views.Mgr.showToast(xs.Tools.String.createString("dungeonLocked"));
        // source line 234, bytecode pc 83
        return void 0;
    }
    if ((this.m_equipmentNum > xs.Const_Equipment_Max)) {
        // source line 247, bytecode pc 285
        xs.Views.Mgr.showDialogByName("common", {
    title: "MeltPromptTitle",
    content: "EquipmentIsMax",
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("GoToEquipmentMelt"),
    leftCB: function() {
    // source line 243, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    // source line 246, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("EquipmentScene");
}.bind(this)
});
        // source line 248, bytecode pc 287
        return void 0;
    }
    // source line 250, bytecode pc 349
    (playerVip = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerVipLevel());
    if ((playerVip >= this.m_multiKillVip)) {
        // source line 252, bytecode pc 391
        xs.Views.Mgr.hideDialog();
        // source line 253, bytecode pc 458
        xs.Views.Mgr.showDialogByName("AutoMultiKillSelectDialog", { model: this.dungeonModel, hard: this.params.m_bInHardChapter });
    } else {
        // source line 256, bytecode pc 539
        xs.Views.Mgr.showToast(xs.Tools.String.createStringWithArgsArray("AutoMultiKill_6", [ this.m_multiKillVip ]));
    }
},
    onExit: function() {
    // source line 260, bytecode pc 12
    this._super();
    // source line 261, bytecode pc 54
    xs.director.getScheduler().unscheduleCallbackForTarget(this, this.updateCoolDownTime);
    // source line 262, bytecode pc 94
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_UserInfo);
    // source line 263, bytecode pc 134
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_DungeonTimes);
},
    singleFight: function() {
    var result;
    // source line 268, bytecode pc 20
    (result = this.dungeonModel.isCanKill());
    if ((result === true)) {
        if ((this.m_equipmentNum > xs.Const_Equipment_Max)) {
            // source line 281, bytecode pc 232
            xs.Views.Mgr.showDialogByName("common", {
    title: "MeltPromptTitle",
    content: "EquipmentIsMax",
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("GoToEquipmentMelt"),
    leftCB: function() {
    // source line 277, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    // source line 280, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("EquipmentScene");
}.bind(this)
});
            // source line 282, bytecode pc 234
            return void 0;
        }
        // source line 284, bytecode pc 276
        xs.Guide.GuideMgr.endStepBySequence([ "180108" ]);
        // source line 287, bytecode pc 303
        xs.Views.Mgr.hideDialog();
        // source line 323, bytecode pc 380
        xs.Tools.Net.requireFight({ dungeon_id: this.dungeonModel.getId(), check_troop: 2, ignoreRandEvent: true }, function(jsonObj, _modelMap) {
    var _dungeonId, _model_fight_info;
    // source line 296, bytecode pc 20
    (_dungeonId = this.dungeonModel.getId());
    // source line 299, bytecode pc 57
    xs.Scene.Mgr.saveStatus("PveFight_RandEvent", _modelMap);
    // source line 301, bytecode pc 114
    xs.Profile.GameData.Mgr.getInstance().Map.update(jsonObj.map_info);
    // source line 303, bytecode pc 148
    (_model_fight_info = xs.Models.FightInfo.create(jsonObj));
    // source line 306, bytecode pc 179
    xs.Tools.Statistic.startLevel(_dungeonId);
    if (_model_fight_info.isSuccess()) {
        // source line 308, bytecode pc 229
        xs.Tools.Statistic.finishLevel(_dungeonId);
    } else {
        // source line 311, bytecode pc 265
        xs.Tools.Statistic.failLevel(_dungeonId);
    }
    // source line 320, bytecode pc 440
    xs.Tools.Scene.gotoFight(xs.Constant_FightScene_Type_Map, _model_fight_info, this.dungeonModel.getPlot(), xs.Models.Resource.createWithBase(xs.Profile.GameData.Mgr.getInstance().Map.getCurMap(this.params.m_bInHardChapter).getChapterBgId(), xs.Constant_ResType_Map), function() {
    // source line 321, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("FightChapters");
});
}, this);
    } else {
        // source line 327, bytecode pc 402
        this.showErrorDialog(result);
    }
},
    showErrorDialog: function(result) {
    var _itemId, _itemUsedTimes, totalPrice, dialog;
    if ((result === xs.Models.Dungeon_FightError_Tili)) {
        // source line 335, bytecode pc 83
        xs.Views.Mgr.showDialogByName("NotEnoughAndBuy", { item_id: xs.Models.ItemID_PowerWithVipCondition });
    } else {
        if ((result === xs.Models.Dungeon_FightError_Times)) {
            // source line 339, bytecode pc 167
            (_itemId = (this.params.m_bInHardChapter ? xs.Models.ItemID_RecoveryEliteDungeonTimes : xs.Models.ItemID_RecoveryDungeonTimes));
            // source line 340, bytecode pc 172
            (_itemUsedTimes = null);
            if ((_itemId === xs.Models.ItemID_RecoveryEliteDungeonTimes)) {
                // source line 343, bytecode pc 217
                (_itemUsedTimes = this.dungeonModel.getRecoveryBuyTimes());
            }
            // source line 348, bytecode pc 284
            xs.Views.Mgr.showDialogByName("NotEnoughAndBuy", { item_id: _itemId, itemUsedTimes: _itemUsedTimes, dungeon: this.dungeonModel });
        } else {
            if ((result === xs.Models.Dungeon_FightError_Level)) {
                // source line 352, bytecode pc 346
                xs.Views.Mgr.showToastByStringId("1071310075");
            } else {
                if ((result === xs.Models.Dungeon_FightError_locked)) {
                    // source line 355, bytecode pc 435
                    xs.Views.Mgr.showToast(xs.Tools.String.createString("dungeonLocked"));
                } else {
                    if ((result === xs.Models.Dungeon_FightError_coolDown)) {
                        // source line 357, bytecode pc 491
                        (totalPrice = this.dungeonModel.getTotalCDPrice());
                        // source line 401, bytecode pc 661
                        (dialog = xs.Views.Mgr.showDialogByName("common", {
    title: "1070910046",
    content: "1070910046",
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("1070610035"),
    leftCB: function() {
    // source line 365, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    rightCB: function() {
    var player, level;
    // source line 369, bytecode pc 50
    (player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
    if ((player.getPlayerYuanBao() >= totalPrice)) {
        if (xs.Profile.Permission.isUnLock_dungeonCD()) {
            // source line 372, bytecode pc 137
            xs.Views.Mgr.hideDialog();
            // source line 392, bytecode pc 213
            xs.Tools.Net.requireMultiKill({ dungeon_id: this.dungeonModel.getId(), clear_cd: 1, ignoreRandEvent: true }, function(jsonObj, _modelMap) {
    // source line 380, bytecode pc 42
    xs.Tools.Statistic.buy(("600030|1|" + totalPrice));
    // source line 381, bytecode pc 69
    xs.Views.Mgr.hideDialog();
    // source line 383, bytecode pc 106
    xs.Scene.Mgr.saveStatus("PveFight_RandEvent", _modelMap);
    // source line 385, bytecode pc 163
    xs.Profile.GameData.Mgr.getInstance().Map.update(jsonObj.map_info);
    // source line 390, bytecode pc 266
    xs.Views.Mgr.showDialogByName("MulitiFightDialog", {
    mulitiFightModel: xs.Models.MulitiFightInfo.create(jsonObj),
    dungeonName: this.dungeonModel.getName(),
    showListDialog: true
});
}, this);
        } else {
            // source line 394, bytecode pc 245
            xs.Views.Mgr.hideDialog();
            // source line 395, bytecode pc 306
            (level = xs.Utils.parseIntSafe(xs.Tools.CfgData.getGlobalConf("vip_mkill_clearcd", 6)));
            // source line 396, bytecode pc 403
            xs.Views.Mgr.showToast(((xs.Tools.String.createString("auto_name_vip") + level) + xs.Tools.String.createString("auto_name_400")));
        }
    } else {
        // source line 399, bytecode pc 435
        xs.Tools.UI.showGoldNotEnough();
    }
}.bind(this)
}));
                        // source line 405, bytecode pc 679
                        (dialog = dialog.getRealDialog());
                        // source line 406, bytecode pc 763
                        dialog.setContentText(xs.Tools.String.createString("1070910047").convWithArgs([ (totalPrice + "") ]));
                    }
                }
            }
        }
    }
},
    initFightStar: function() {
    var grade, i;
    // source line 413, bytecode pc 20
    (grade = this.dungeonModel.getFightStar());
    // source line 414, bytecode pc 25
    (i = 1);
    while ((i <= 3)) {
        if ((grade >= i)) {
            // source line 416, bytecode pc 69
            this.starLabArray[(i - 1)].setVisible(true);
        } else {
            // source line 418, bytecode pc 100
            this.starLabArray[(i - 1)].setVisible(false);
        }
        // source line 414, bytecode pc 115
        i++;
    }
},
    updataMulitiBtn: function() {
    var _mulitiKillTimes;
    // source line 425, bytecode pc 20
    (_mulitiKillTimes = this.dungeonModel.getMultiKillTimes());
    if (this.mulitiKillBtn) {
        // source line 427, bytecode pc 106
        this.mulitiKillBtn.setString(xs.Tools.String.createString("mulitiKill").convWithArgs([ _mulitiKillTimes ]));
    }
    if ((this.dungeonModel.isNewest() || (this.dungeonModel.isCanMulitiKill() === false))) {
        // source line 432, bytecode pc 173
        this.mulitiKillBtn.setEnabled(false);
    } else {
        if (this.dungeonModel.isCanPlay()) {
            // source line 434, bytecode pc 220
            this.mulitiKillBtn.setEnabled(true);
        }
    }
    // source line 438, bytecode pc 280
    this.m_challengeTimes.setString(((this.dungeonModel.getPlayedTimes() + "/") + this.dungeonModel.getDungeonTimes()));
    // source line 440, bytecode pc 316
    this.killBtn.setEnabled(this.dungeonModel.isCanPlay());
},
    updateCoolDownTime: function() {
    var str;
    if ((this.cdTime === null)) {
        // source line 448, bytecode pc 14
        return void 0;
    }
    // source line 450, bytecode pc 29
    (this.cdTime = (this.cdTime - 1));
    if ((this.cdTime < 0)) {
        // source line 453, bytecode pc 62
        this.m_coolDown.setVisible(false);
        // source line 454, bytecode pc 70
        (this.cdTime = null);
        // source line 455, bytecode pc 72
        return void 0;
    }
    // source line 458, bytecode pc 157
    (str = xs.Tools.String.createString("coolDownTip").convWithArgs([ xs.Utils.convertSecondToTime(this.cdTime) ]));
    // source line 459, bytecode pc 179
    this.m_coolDown.setString(str);
},
    setBaseTouchPriority: function(priority) {
    var i;
    // source line 463, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 464, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 466, bytecode pc 71
    this.closeBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.closeBtn.priority));
    // source line 467, bytecode pc 118
    this.mulitiKillBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.infoRegion.button1.priority));
    // source line 468, bytecode pc 165
    this.killBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.infoRegion.button2.priority));
    if (this.m_autoMulitiKillButtonn) {
        // source line 470, bytecode pc 223
        this.m_autoMulitiKillButtonn.setTouchPriority((this.m_baseTouchPriority + this.cfg.infoRegion.button2.priority));
    }
    // source line 473, bytecode pc 228
    (i = 0);
    while ((i < this.dropIconBtn.length)) {
        // source line 474, bytecode pc 285
        this.dropIconBtn[i].setTouchPriority((this.m_baseTouchPriority + this.cfg.infoRegion.dropIcon1.priority));
        // source line 473, bytecode pc 300
        i++;
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
// source line 534, bytecode pc 971
(xs.Views.Dialog.DungeonDetail.create = function(param) {
    var ret;
    // source line 535, bytecode pc 28
    (ret = new xs.Views.Dialog.DungeonDetail());
    if ((ret && ret.init(param))) {
        // source line 537, bytecode pc 64
        return ret;
    }
    // source line 539, bytecode pc 66
    return null;
});
// source line 544, bytecode pc 1051
xs.Views.Mgr.registerDialog("DungeonDetail", { "class": xs.Views.Dialog.DungeonDetail, styleType: xs.Constant_DlgStyleType_Large });
