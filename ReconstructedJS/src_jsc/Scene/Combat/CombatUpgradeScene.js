// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Combat/CombatUpgradeScene.js:1
// source line 9, bytecode pc 17
(xs.Views.CombatUpgradeView_Notify_GeneralSelectChange = 100);
// source line 10, bytecode pc 35
(xs.Views.CombatUpgradeView_Notify_SoulSelectChange = 101);
// source line 441, bytecode pc 555
(xs.Views.CombatUpgradeView = cc.Layer.extend({
    name: "CombatUpgradeView",
    ctor: function() {
    // source line 17, bytecode pc 12
    this._super();
    // source line 18, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(combatInfo) {
    var visibleSize, offset_x, controlBar, offset_y, combatIcon;
    if (!this._super()) {
        // source line 23, bytecode pc 19
        return false;
    }
    // source line 25, bytecode pc 55
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    // source line 27, bytecode pc 124
    (this.combatInfo = xs.Profile.GameData.Mgr.getInstance().Combat.getCombatByType(combatInfo.getType()));
    // source line 30, bytecode pc 164
    (this.upgradeCard = xs.Views.CombatUpgradeCard.create(this.combatInfo));
    // source line 31, bytecode pc 207
    this.upgradeCard.setAnchorPoint(cc.p(0, 0.5));
    // source line 32, bytecode pc 243
    this.upgradeCard.setCurPercentage(this.combatInfo.getCurLevelExpPer());
    // source line 36, bytecode pc 299
    (this.generals = xs.Profile.GameData.Mgr.getInstance().CardShowData.getGeneralShowData(false));
    // source line 37, bytecode pc 353
    (this.soulsClone = xs.Profile.GameData.Mgr.getInstance().CardShowData.getSoulShowData());
    // source line 39, bytecode pc 386
    (this.miniPageView = xs.Views.MiniTablePage.create());
    // source line 41, bytecode pc 468
    (offset_x = ((((visibleSize.width - this.upgradeCard.getContentSize().width) - xs.Views.MainMenuView.Width) / 2) + this.upgradeCard.getContentSize().width));
    // source line 42, bytecode pc 534
    (this.generalTableView = xs.Views.Table.CombatTableView.create(xs.Views.Table.CombatTableView_General, this.generals));
    // source line 43, bytecode pc 554
    this.generalTableView.setListener(this);
    // source line 44, bytecode pc 620
    (this.soulTableView = xs.Views.Table.CombatTableView.create(xs.Views.Table.CombatTableView_Soul, this.soulsClone));
    // source line 45, bytecode pc 640
    this.soulTableView.setListener(this);
    // source line 47, bytecode pc 698
    this.miniPageView.addPage(xs.Tools.String.createString("soul"), this.soulTableView);
    // source line 48, bytecode pc 756
    this.miniPageView.addPage(xs.Tools.String.createString("general"), this.generalTableView);
    // source line 49, bytecode pc 842
    xs.Utils.Node.attachNodes(this, this.miniPageView, { desc: "cl", offset: cc.p(offset_x, 0), sc: true });
    // source line 51, bytecode pc 994
    xs.Utils.Node.attachNodes(this, this.upgradeCard, {
    desc: "cl",
    offset: cc.p((((this.miniPageView.getPositionX() - this.miniPageView.getContentSize().width) - (this.upgradeCard.getContentSize().width / 2)) + 40), 0),
    sc: true
});
    // source line 54, bytecode pc 1027
    (this.m_listBg = xs.Views.EventLayer.create());
    // source line 55, bytecode pc 1069
    this.m_listBg.setSize(cc.size(413, 79));
    // source line 58, bytecode pc 1102
    (controlBar = xs.ccb_reader.load("ccb3/0_7_13_BottomBar.ccbi", this));
    // source line 59, bytecode pc 1141
    controlBar.setContentSize(cc.size(827, 79));
    // source line 60, bytecode pc 1181
    controlBar.setAnchorPoint(cc.p(0.5, 0));
    // source line 61, bytecode pc 1199
    (offset_y = (0.03125 * visibleSize.height));
    // source line 63, bytecode pc 1254
    xs.Utils.Node.attachNodes(this.m_listBg, controlBar, { desc: "lb" });
    // source line 66, bytecode pc 1371
    xs.Utils.Node.attachNodes(this, this.m_listBg, {
    desc: "lb",
    offset: cc.p(((visibleSize.width - xs.Views.MainMenuView.Width) / 2), offset_y),
    sc: true
});
    // source line 68, bytecode pc 1379
    (this.m_effectVal = null);
    // source line 69, bytecode pc 1387
    (this.m_btn_allGold = null);
    // source line 70, bytecode pc 1395
    (this.m_btn_allSilver = null);
    // source line 71, bytecode pc 1403
    (this.m_btn_allCopper = null);
    // source line 73, bytecode pc 1411
    (this.m_btn_confirm = null);
    // source line 75, bytecode pc 1456
    xs.Utils.UI.replaceCcbByCfg(controlBar, this.cfg.ccbCfg, this);
    // source line 77, bytecode pc 1480
    (this.controlBar_icon = controlBar.getChildByTag(10));
    // source line 78, bytecode pc 1501
    (combatIcon = this.combatInfo.createTypeIcon());
    // source line 79, bytecode pc 1534
    combatIcon.setPosition(this.controlBar_icon.getPosition());
    // source line 80, bytecode pc 1567
    this.controlBar_icon.getParent().addChild(combatIcon);
    // source line 81, bytecode pc 1587
    this.controlBar_icon.removeFromParent(true);
    // source line 82, bytecode pc 1597
    (this.controlBar_icon = combatIcon);
    // source line 84, bytecode pc 1639
    this.m_effectVal.setString(("+" + this.combatInfo.getNextLevelExtraBuff()));
    // source line 86, bytecode pc 1677
    this.m_btn_allGold.setOnClickCallBack(this.onBtnClicked.bind(this));
    // source line 88, bytecode pc 1715
    this.m_btn_allSilver.setOnClickCallBack(this.onBtnClicked.bind(this));
    // source line 90, bytecode pc 1753
    this.m_btn_allCopper.setOnClickCallBack(this.onBtnClicked.bind(this));
    // source line 92, bytecode pc 1791
    this.m_btn_allGold.setLongTimeTouchCallBack(this.onLongTimeTouch.bind(this));
    // source line 94, bytecode pc 1829
    this.m_btn_allSilver.setLongTimeTouchCallBack(this.onLongTimeTouch.bind(this));
    // source line 96, bytecode pc 1867
    this.m_btn_allCopper.setLongTimeTouchCallBack(this.onLongTimeTouch.bind(this));
    // source line 100, bytecode pc 1905
    this.m_btn_confirm.setOnClickCallBack(this.onBtnClicked.bind(this));
    // source line 102, bytecode pc 1907
    return true;
},
    onEnter: function() {
    // source line 106, bytecode pc 12
    this._super();
    // source line 107, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.updateUpgradeCard_General, xs.Constant_Notify_ModelChange_General);
    // source line 108, bytecode pc 106
    xs.Utils.Notify.addObserver(this, this.updateUpgradeCard_Soul, xs.Constant_Notify_ModelChange_GeneralSoul);
    // source line 109, bytecode pc 153
    xs.Utils.Notify.addObserver(this, this.updateCombatInfo, xs.Constant_Notify_ModelChange_Combat);
    // source line 112, bytecode pc 207
    (this.notify = xs.Profile.GameData.Mgr.getInstance().Combat.getNotify());
    // source line 113, bytecode pc 250
    this.notify.addObserver(this, this.onGeneralOrSoulSelect, xs.Views.CombatUpgradeView_Notify_GeneralSelectChange);
    // source line 114, bytecode pc 293
    this.notify.addObserver(this, this.onGeneralOrSoulSelect, xs.Views.CombatUpgradeView_Notify_SoulSelectChange);
},
    onExit: function() {
    // source line 118, bytecode pc 12
    this._super();
    // source line 119, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_General);
    // source line 120, bytecode pc 92
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_GeneralSoul);
    // source line 121, bytecode pc 132
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_Combat);
    // source line 123, bytecode pc 168
    this.notify.removeObserver(this, xs.Views.CombatUpgradeView_Notify_GeneralSelectChange);
    // source line 124, bytecode pc 204
    this.notify.removeObserver(this, xs.Views.CombatUpgradeView_Notify_SoulSelectChange);
},
    getSelGeneralExp: function() {
    var totalExp, i;
    // source line 128, bytecode pc 4
    (totalExp = 0);
    // source line 129, bytecode pc 9
    (i = 0);
    while ((i < this.generals.length)) {
        if (this.generals[i].isSelected()) {
            // source line 131, bytecode pc 81
            (totalExp = (totalExp + this.generals[i].getModel().getProCombatExp()));
        }
        // source line 129, bytecode pc 95
        (i = (+i + 1));
    }
    // source line 134, bytecode pc 121
    return totalExp;
},
    getSelSoulExp: function() {
    var totalExp, i;
    // source line 138, bytecode pc 4
    (totalExp = 0);
    // source line 139, bytecode pc 9
    (i = 0);
    while ((i < this.soulsClone.length)) {
        if (this.soulsClone[i].isSelected()) {
            // source line 142, bytecode pc 103
            (totalExp = (totalExp + (this.soulsClone[i].getModel().getProCombatExp() * this.soulsClone[i].getSelectNum())));
        }
        // source line 139, bytecode pc 117
        (i = (+i + 1));
    }
    // source line 145, bytecode pc 143
    return totalExp;
},
    onGeneralOrSoulSelect: function() {
    var cureLev;
    // source line 149, bytecode pc 50
    this.upgradeCard.updateExp((this.getSelGeneralExp() + this.getSelSoulExp()), this.combatInfo);
    // source line 151, bytecode pc 71
    (cureLev = this.upgradeCard.getPreLevel());
    // source line 152, bytecode pc 130
    this.m_effectVal.setString(("+" + this.combatInfo.getUpgradeCfgByLevel((cureLev + 1)).getExtraBuff()));
},
    updateUpgradeCard_General: function() {
    var posArray;
    // source line 156, bytecode pc 55
    (this.generals = xs.Profile.GameData.Mgr.getInstance().CardShowData.getGeneralShowData(false));
    // source line 157, bytecode pc 80
    this.generalTableView.setData(this.generals);
    if ((this.miniPageView.getCurSelPage() === 0)) {
        // source line 161, bytecode pc 125
        (posArray = this.soulTableView.getSelectIconPosArray());
        // source line 162, bytecode pc 147
        this.upgradeCard.playEatCardAction(posArray);
    } else {
        // source line 164, bytecode pc 173
        (posArray = this.generalTableView.getSelectIconPosArray());
        // source line 165, bytecode pc 195
        this.upgradeCard.playEatCardAction(posArray);
    }
    // source line 169, bytecode pc 213
    this.generalTableView.refreshDataAndReload();
},
    updateUpgradeCard_Soul: function() {
    var posArray;
    // source line 173, bytecode pc 53
    (this.soulsClone = xs.Profile.GameData.Mgr.getInstance().CardShowData.getSoulShowData());
    // source line 174, bytecode pc 78
    this.soulTableView.setData(this.soulsClone);
    if ((this.miniPageView.getCurSelPage() === 0)) {
        // source line 178, bytecode pc 123
        (posArray = this.soulTableView.getSelectIconPosArray());
        // source line 179, bytecode pc 145
        this.upgradeCard.playEatCardAction(posArray);
    } else {
        // source line 181, bytecode pc 171
        (posArray = this.generalTableView.getSelectIconPosArray());
        // source line 182, bytecode pc 193
        this.upgradeCard.playEatCardAction(posArray);
    }
    // source line 186, bytecode pc 211
    this.soulTableView.refreshDataAndReload();
},
    updateCombatInfo: function() {
    // source line 191, bytecode pc 71
    (this.combatInfo = xs.Profile.GameData.Mgr.getInstance().Combat.getCombatByType(this.combatInfo.getType()));
    // source line 192, bytecode pc 107
    this.upgradeCard.setCurPercentage(this.combatInfo.getCurLevelExpPer());
},
    getMaxNeedNum: function(param) {
    var player, totalExp, maxExp, needExp, ExpNum, maxNum;
    // source line 197, bytecode pc 50
    (player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
    // source line 198, bytecode pc 97
    (totalExp = ((this.getSelGeneralExp() + this.getSelSoulExp()) + this.combatInfo.getTotalExp()));
    // source line 199, bytecode pc 133
    (maxExp = this.combatInfo.getTotalExpByLevel(player.getPlayerCombatMaxLevel()));
    // source line 200, bytecode pc 144
    (needExp = (maxExp - totalExp));
    // source line 201, bytecode pc 194
    (ExpNum = Math.ceil((needExp / param.getModel().getProCombatExp())));
    // source line 202, bytecode pc 212
    (maxNum = param.getMaxNum());
    // source line 203, bytecode pc 239
    xs.log_zhz("needExp", needExp);
    // source line 204, bytecode pc 266
    xs.log_zhz("maxNum", maxNum);
    // source line 205, bytecode pc 293
    xs.log_zhz("ExpNum", ExpNum);
    // source line 206, bytecode pc 317
    return ((maxNum < ExpNum) ? maxNum : ExpNum);
},
    isToMaxLevel: function() {
    var player, totalExp, maxLevel;
    // source line 210, bytecode pc 50
    (player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
    // source line 211, bytecode pc 79
    (totalExp = (this.getSelGeneralExp() + this.getSelSoulExp()));
    // source line 212, bytecode pc 97
    (maxLevel = player.getPlayerCombatMaxLevel());
    if (((totalExp + this.combatInfo.getTotalExp()) >= this.combatInfo.getTotalExpByLevel(maxLevel))) {
        // source line 214, bytecode pc 147
        return true;
    }
    // source line 216, bytecode pc 149
    return false;
},
    onLongTimeTouch: function(sender) {
    // source line 219, bytecode pc 26
    xs.log_zhz("onLongTimeTouch", sender);
    // source line 220, bytecode pc 30
    switch (sender) {
        case this.m_btn_allGold:
        // source line 222, bytecode pc 92
        this.selectAll(xs.Constant_Grade_Gold);
        break;
        case this.m_btn_allSilver:
        // source line 225, bytecode pc 121
        this.selectAll(xs.Constant_Grade_Silver);
        break;
        case this.m_btn_allCopper:
        // source line 228, bytecode pc 150
        this.selectAll(xs.Constant_Grade_Copper);
        break;
        default:
        break;
    }
},
    onBtnClicked: function(sender) {
    var combatUpgradScene_str, grade, i;
    // source line 234, bytecode pc 26
    xs.log_zhz("onBtnClicked", sender);
    // source line 235, bytecode pc 30
    switch (sender) {
        case this.m_btn_allGold:
        // source line 237, bytecode pc 103
        this.selectAllOnce(xs.Constant_Grade_Gold);
        break;
        case this.m_btn_allSilver:
        // source line 240, bytecode pc 132
        this.selectAllOnce(xs.Constant_Grade_Silver);
        break;
        case this.m_btn_allCopper:
        // source line 243, bytecode pc 161
        this.selectAllOnce(xs.Constant_Grade_Copper);
        break;
        case this.m_btn_confirm:
        // source line 246, bytecode pc 171
        (combatUpgradScene_str = null);
        // source line 247, bytecode pc 185
        (grade = xs.Constant_Grade_God);
        // source line 248, bytecode pc 190
        (i = 0);
        while ((i < this.generals.length)) {
            if (this.generals[i].isSelected()) {
                if (((this.generals[i].getModel().getGrade() === grade) && !((this.generals[i].getModel().getId() === "191005") || (this.generals[i].getModel().getId() === "191006")))) {
                    // source line 252, bytecode pc 361
                    (combatUpgradScene_str = "combatUpgradScene_str_2");
                    break;
                }
            }
            // source line 248, bytecode pc 380
            (i = (+i + 1));
        }
        // source line 258, bytecode pc 407
        (i = 0);
        while ((i < this.soulsClone.length)) {
            if (this.soulsClone[i].isSelected()) {
                if (((this.soulsClone[i].getModel().getGrade() === grade) && !((this.soulsClone[i].getModel().getId() === "191005") || (this.soulsClone[i].getModel().getId() === "191006")))) {
                    // source line 262, bytecode pc 578
                    (combatUpgradScene_str = "combatUpgradScene_str_1");
                    break;
                }
            }
            // source line 258, bytecode pc 597
            (i = (+i + 1));
        }
        if ((combatUpgradScene_str != null)) {
            // source line 268, bytecode pc 646
            this.showConfirmDialog(combatUpgradScene_str);
        } else {
            // source line 274, bytecode pc 664
            this.confirmUpgrade();
        }
        break;
        default:
        break;
    }
},
    showConfirmDialog: function(combatUpgradScene_str) {
    var dialog;
    // source line 293, bytecode pc 180
    (dialog = xs.Views.Mgr.showDialogByName("common", {
    title: "combatUpgradScene_title",
    content: combatUpgradScene_str,
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("auto_name_76"),
    leftCB: function() {
    // source line 286, bytecode pc 12
    this.clearSelect();
    // source line 287, bytecode pc 39
    this.upgradeCard.updateExp(0, this.combatInfo);
    // source line 288, bytecode pc 66
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    // source line 291, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 292, bytecode pc 39
    this.confirmUpgrade();
}.bind(this)
}));
},
    confirmUpgrade: function() {
    var combatId, _gids, _sids, _sidNums, i;
    // source line 298, bytecode pc 14
    (combatId = this.combatInfo.pk_id);
    // source line 299, bytecode pc 23
    (_gids = []);
    // source line 300, bytecode pc 32
    (_sids = []);
    // source line 301, bytecode pc 41
    (_sidNums = []);
    // source line 303, bytecode pc 46
    (i = 0);
    while ((i < this.generals.length)) {
        if (this.generals[i].isSelected()) {
            // source line 305, bytecode pc 126
            _gids.push(this.generals[i].getModel().getPkId());
        }
        // source line 303, bytecode pc 140
        (i = (+i + 1));
    }
    // source line 309, bytecode pc 167
    (i = 0);
    while ((i < this.soulsClone.length)) {
        if (this.soulsClone[i].isSelected()) {
            // source line 311, bytecode pc 247
            _sids.push(this.soulsClone[i].getModel().getPkId());
            // source line 312, bytecode pc 284
            _sidNums.push(this.soulsClone[i].getSelectNum());
        }
        // source line 309, bytecode pc 298
        (i = (+i + 1));
    }
    if (((_gids.length === 0) && (_sids.length === 0))) {
        // source line 317, bytecode pc 353
        return void 0;
    }
    // source line 321, bytecode pc 393
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Generals_Change, this);
    // source line 338, bytecode pc 467
    xs.Tools.Net.requestCombatUpgrade({ combat_id: combatId, gids: _gids, sids: _sids, num: _sidNums }, function(jsonObj) {
    // source line 337, bytecode pc 99
    this.runAction(cc.Sequence.create(cc.DelayTime.create(1), cc.CallFunc.create(function() {
    var combatInfo;
    // source line 330, bytecode pc 68
    (combatInfo = xs.Profile.GameData.Mgr.getInstance().Combat.getCombatByType(this.combatInfo.getType()));
    if (combatInfo.getLevelUpStatus()) {
        // source line 333, bytecode pc 120
        xs.Views.Mgr.showToastByStringId("1070310004");
    }
    // source line 336, bytecode pc 159
    this.m_effectVal.setString(("+" + combatInfo.getNextLevelExtraBuff()));
}.bind(this))));
}, this);
},
    selectAll: function(grade) {
    var i;
    // source line 342, bytecode pc 26
    xs.log_zhz("selectAll", grade);
    if ((this.miniPageView.getCurSelPage() === 0)) {
        // source line 346, bytecode pc 55
        (i = 0);
        while ((i < this.soulsClone.length)) {
            if ((this.soulsClone[i].getModel().getGrade() === grade)) {
                if (this.isToMaxLevel()) {
                    // source line 349, bytecode pc 152
                    xs.Views.Mgr.showToastByStringKey("str_combat_max");
                    break;
                }
                // source line 352, bytecode pc 203
                this.soulsClone[i].setSelectNum(this.getMaxNeedNum(this.soulsClone[i]));
            }
            // source line 346, bytecode pc 217
            (i = (+i + 1));
        }
        // source line 355, bytecode pc 257
        this.soulTableView.refreshDataAndReload();
        // source line 356, bytecode pc 291
        this.notify.postNotification(xs.Views.CombatUpgradeView_Notify_SoulSelectChange);
    } else {
        if ((this.miniPageView.getCurSelPage() === 1)) {
            // source line 359, bytecode pc 325
            (i = 0);
            while ((i < this.generals.length)) {
                if ((this.generals[i].getModel().getGrade() === grade)) {
                    if (this.isToMaxLevel()) {
                        // source line 362, bytecode pc 422
                        xs.Views.Mgr.showToastByStringKey("str_combat_max");
                        break;
                    }
                    // source line 365, bytecode pc 473
                    this.generals[i].setSelectNum(this.getMaxNeedNum(this.generals[i]));
                }
                // source line 359, bytecode pc 487
                (i = (+i + 1));
            }
            // source line 368, bytecode pc 527
            this.generalTableView.refreshDataAndReload();
            // source line 369, bytecode pc 561
            this.notify.postNotification(xs.Views.CombatUpgradeView_Notify_GeneralSelectChange);
        }
    }
},
    selectAllOnce: function(grade) {
    var i;
    if (this.isToMaxLevel()) {
        // source line 376, bytecode pc 49
        xs.Views.Mgr.showToastByStringKey("str_combat_max");
        // source line 377, bytecode pc 51
        return void 0;
    }
    if ((this.miniPageView.getCurSelPage() === 0)) {
        // source line 382, bytecode pc 80
        (i = 0);
        while ((i < this.soulsClone.length)) {
            if ((this.soulsClone[i].getModel().getGrade() === grade)) {
                // source line 384, bytecode pc 149
                this.soulsClone[i].addSelectNum();
            }
            // source line 382, bytecode pc 163
            (i = (+i + 1));
        }
        // source line 387, bytecode pc 203
        this.soulTableView.refreshDataAndReload();
        // source line 388, bytecode pc 237
        this.notify.postNotification(xs.Views.CombatUpgradeView_Notify_SoulSelectChange);
    } else {
        if ((this.miniPageView.getCurSelPage() === 1)) {
            // source line 391, bytecode pc 271
            (i = 0);
            while ((i < this.generals.length)) {
                if ((this.generals[i].getModel().getGrade() === grade)) {
                    // source line 393, bytecode pc 340
                    this.generals[i].addSelectNum();
                }
                // source line 391, bytecode pc 354
                (i = (+i + 1));
            }
            // source line 396, bytecode pc 394
            this.generalTableView.refreshDataAndReload();
            // source line 397, bytecode pc 428
            this.notify.postNotification(xs.Views.CombatUpgradeView_Notify_GeneralSelectChange);
        }
    }
},
    clearSelect: function() {
    var i;
    // source line 404, bytecode pc 4
    (i = 0);
    while ((i < this.generals.length)) {
        // source line 405, bytecode pc 32
        this.generals[i].reset();
        // source line 404, bytecode pc 46
        (i = (+i + 1));
    }
    // source line 408, bytecode pc 73
    (i = 0);
    while ((i < this.soulsClone.length)) {
        // source line 409, bytecode pc 101
        this.soulsClone[i].reset();
        // source line 408, bytecode pc 115
        (i = (+i + 1));
    }
    if ((this.miniPageView.getCurSelPage() === 0)) {
        // source line 413, bytecode pc 179
        this.soulTableView.refreshDataAndReload();
    } else {
        if ((this.miniPageView.getCurSelPage() === 1)) {
            // source line 415, bytecode pc 226
            this.generalTableView.refreshDataAndReload();
        }
    }
},
    getNotify: function() {
    // source line 420, bytecode pc 6
    return this.notify;
},
    setBaseTouchPriority: function(priority) {
    // source line 424, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 425, bytecode pc 37
    this.m_btn_allGold.setTouchPriority((this.m_baseTouchPriority - 20));
    // source line 426, bytecode pc 65
    this.m_btn_allSilver.setTouchPriority((this.m_baseTouchPriority - 20));
    // source line 427, bytecode pc 93
    this.m_btn_allCopper.setTouchPriority((this.m_baseTouchPriority - 20));
    // source line 429, bytecode pc 121
    this.m_btn_confirm.setTouchPriority((this.m_baseTouchPriority - 20));
    // source line 430, bytecode pc 149
    this.m_listBg.setTouchPriority((this.m_baseTouchPriority - 19));
},
    cfg: {
        ccbCfg: [
            { tag: 11, type: "ls", name: "m_effectVal", id: "LS_mainUI4" },
            { tag: 12, type: "btn", name: "m_btn_allCopper", id: "Btn_All_Copper" },
            { tag: 13, type: "btn", name: "m_btn_allSilver", id: "Btn_All_Silver" },
            { tag: 14, type: "btn", name: "m_btn_allGold", id: "Btn_All_Gold" },
            { tag: 15, type: "btn", name: "m_btn_confirm", id: "Btn_Confirm" }
        ]
    }
}));
// source line 451, bytecode pc 617
(xs.Views.CombatUpgradeView.InfoBarCfg = { levelValue_tag: 13, buffStr_tag: 14, buffValue_tag: 15, buffStr2_tag: 17, buffValue2_tag: 18 });
// source line 454, bytecode pc 643
(xs.Views.CombatUpgradeView.create = function(combatInfo) {
    var ret;
    // source line 455, bytecode pc 23
    (ret = new xs.Views.CombatUpgradeView());
    if ((ret && ret.init(combatInfo))) {
        // source line 457, bytecode pc 59
        return ret;
    }
    // source line 459, bytecode pc 61
    return null;
});
// source line 470, bytecode pc 707
(xs.Scene.CombatUpgradeScene = cc.Scene.extend({
    ctor: function() {
    // source line 466, bytecode pc 12
    this._super();
    // source line 467, bytecode pc 42
    cc.associateWithNative(this, cc.Scene);
},
    init: function(combatInfo) {
    var visibleSize, playerInfo, pageView, combatUpgradeView;
    // source line 472, bytecode pc 35
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    // source line 474, bytecode pc 68
    xs.Tools.UI.addCommonBg(this, true, true);
    // source line 477, bytecode pc 98
    (playerInfo = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 478, bytecode pc 134
    playerInfo.setAnchorPoint(cc.p(0, 1));
    // source line 479, bytecode pc 190
    xs.Utils.Node.attachNodes(this, playerInfo, { desc: "lt", sc: true });
    // source line 482, bytecode pc 253
    (pageView = xs.Views.TablePage.create(cc.size(846, (visibleSize.height - 56))));
    // source line 483, bytecode pc 287
    (combatUpgradeView = xs.Views.CombatUpgradeView.create(combatInfo));
    // source line 484, bytecode pc 339
    pageView.addPage(xs.Tools.String.createString("combatUpgrade"), combatUpgradeView);
    // source line 485, bytecode pc 421
    xs.Utils.Node.attachNodes(this, pageView, { desc: "lb", sc: true }, xs.Cfg.Scene.SkillScene.pageView);
    // source line 489, bytecode pc 458
    (this.sideMenu = xs.Tools.UI.addShortcutBoard(this, true));
    // source line 491, bytecode pc 460
    return true;
}
}));
// source line 495, bytecode pc 733
(xs.Scene.CombatUpgradeScene.create = function(param) {
    var ret;
    // source line 496, bytecode pc 23
    (ret = new xs.Scene.CombatUpgradeScene());
    if ((ret && ret.init(param.combatInfo))) {
        // source line 498, bytecode pc 64
        return ret;
    }
    // source line 500, bytecode pc 66
    return null;
});
// source line 507, bytecode pc 827
xs.Scene.Mgr.registerScene("CombatUpgradeScene", {
    "class": xs.Scene.CombatUpgradeScene,
    area: [ "CombatScene" ],
    type: xs.Constant_SceneType_General
});
