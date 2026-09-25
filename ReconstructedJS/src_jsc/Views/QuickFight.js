// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/QuickFight.js:1
// source line 360, bytecode pc 2291
(xs.Views.QuickFightView = xs.Views.HungerLayer.extend({
    name: "xs.Views.QuickFightView",
    ctor: function() {
    // source line 11, bytecode pc 12
    this._super();
    // source line 12, bytecode pc 47
    cc.associateWithNative(this, xs.Views.HungerLayer);
},
    init: function(fightInfo, endFunc) {
    var _ccbName, _ccbCfg, _ccbSize, dropItems, i, icon;
    if (!this._super()) {
        // source line 16, bytecode pc 19
        return false;
    }
    // source line 19, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 20, bytecode pc 42
    this.setIsEatEvent(true);
    if (endFunc) {
        // source line 23, bytecode pc 60
        (this.endFunc = endFunc);
    }
    // source line 25, bytecode pc 70
    (this.fightInfo = fightInfo);
    // source line 29, bytecode pc 79
    (_ccbName = "ccb3/");
    // source line 30, bytecode pc 84
    (_ccbCfg = null);
    // source line 31, bytecode pc 89
    (_ccbSize = null);
    // source line 32, bytecode pc 104
    switch (fightInfo.getFightType()) {
        case xs.Constant_FightType_Ladder:
        // source line 35, bytecode pc 167
        (_ccbName = (_ccbName + "quickFightResult_ladder_"));
        // source line 36, bytecode pc 209
        (_ccbName = (_ccbName + (fightInfo.isSuccess() ? "win.ccbi" : "fail.ccbi")));
        // source line 37, bytecode pc 259
        (_ccbCfg = (fightInfo.isSuccess() ? this.ccbCfg.ladder_win : this.ccbCfg.ladder_lose));
        // source line 38, bytecode pc 287
        (_ccbSize = cc.size(540, 248));
        break;
        case xs.Constant_FightType_Chaos:
        // source line 43, bytecode pc 305
        (_ccbName = (_ccbName + "quickFightResult_chaos_"));
        if (fightInfo.isSuccess()) {
            if ((fightInfo.getDropItems().length <= 0)) {
                // source line 48, bytecode pc 363
                (_ccbName = (_ccbName + "fail_2.ccbi"));
                // source line 49, bytecode pc 391
                (_ccbSize = cc.size(540, 248));
                // source line 50, bytecode pc 406
                (_ccbCfg = this.ccbCfg.chaos_lose2);
            } else {
                // source line 54, bytecode pc 424
                (_ccbName = (_ccbName + "win.ccbi"));
                // source line 55, bytecode pc 452
                (_ccbSize = cc.size(540, 248));
                // source line 56, bytecode pc 467
                (_ccbCfg = this.ccbCfg.chaos_win);
            }
        } else {
            // source line 61, bytecode pc 485
            (_ccbName = (_ccbName + "fail_1.ccbi"));
            // source line 62, bytecode pc 513
            (_ccbSize = cc.size(540, 196));
            // source line 63, bytecode pc 528
            (_ccbCfg = this.ccbCfg.chaos_lose1);
        }
        break;
        case xs.Constant_FightType_Climb:
        // source line 69, bytecode pc 546
        (_ccbName = (_ccbName + "quickFightResult_climbLadders_"));
        if (fightInfo.isSuccess()) {
            // source line 72, bytecode pc 578
            (_ccbName = (_ccbName + "win.ccbi"));
            // source line 73, bytecode pc 606
            (_ccbSize = cc.size(540, 190));
            // source line 74, bytecode pc 621
            (_ccbCfg = this.ccbCfg.climb_win);
        } else {
            // source line 77, bytecode pc 649
            xs.log("111");
            // source line 79, bytecode pc 651
            return true;
        }
        break;
        default:
        break;
    }
    // source line 87, bytecode pc 688
    xs.log_xjf(("_ccbName = " + _ccbName));
    // source line 89, bytecode pc 722
    (this.ccbNode = xs.ccb_reader.load(_ccbName, this));
    // source line 90, bytecode pc 744
    this.ccbNode.setContentSize(_ccbSize);
    // source line 91, bytecode pc 791
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 92, bytecode pc 875
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "lb", offset: cc.p(0, 0), sc: true });
    // source line 94, bytecode pc 883
    (this.m_exp = null);
    // source line 95, bytecode pc 891
    (this.m_coin = null);
    // source line 96, bytecode pc 899
    (this.m_extra_integration = null);
    // source line 97, bytecode pc 907
    (this.m_salary = null);
    // source line 98, bytecode pc 915
    (this.m_honor = null);
    // source line 99, bytecode pc 923
    (this.m_expLab = null);
    // source line 100, bytecode pc 931
    (this.m_salaryLab = null);
    // source line 101, bytecode pc 939
    (this.m_honorLab = null);
    // source line 102, bytecode pc 947
    (this.m_remainderGeneral = null);
    // source line 103, bytecode pc 955
    (this.m_rounds = null);
    // source line 105, bytecode pc 995
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, _ccbCfg, this);
    if (this.m_exp) {
        // source line 109, bytecode pc 1045
        this.m_exp.setString((" +" + fightInfo.getUserExp()));
    }
    if (this.m_coin) {
        // source line 113, bytecode pc 1095
        this.m_coin.setString((" +" + fightInfo.getDropCoin()));
    }
    if (this.m_extra_integration) {
        // source line 117, bytecode pc 1145
        this.m_extra_integration.setString((" +" + fightInfo.getIntegration()));
    }
    if (this.m_salary) {
        // source line 121, bytecode pc 1195
        this.m_salary.setString((" +" + fightInfo.getSalary()));
    }
    if (this.m_honor) {
        // source line 125, bytecode pc 1245
        this.m_honor.setString((" +" + fightInfo.getHonor()));
    }
    if ((fightInfo.getFightType() == xs.Constant_FightType_Climb)) {
        if (fightInfo.isSuccess()) {
            // source line 135, bytecode pc 1339
            this.m_remainderGeneral.setString(((" " + fightInfo.getRemainderGeneralPer()) + "%"));
            // source line 136, bytecode pc 1378
            this.m_rounds.setString((" " + fightInfo.getRounds()));
            // source line 137, bytecode pc 1417
            this.m_coin.setString((" " + fightInfo.getDropCoin()));
            // source line 138, bytecode pc 1456
            this.m_extra_integration.setString((" " + fightInfo.getIntegration()));
            // source line 140, bytecode pc 1499
            this.ccbNode.setPosition(cc.p(0, -200));
            // source line 142, bytecode pc 1541
            (this.m_winStar = [ this.m_winStar_1, this.m_winStar_2, this.m_winStar_3 ]);
            // source line 143, bytecode pc 1583
            (this.m_drop = [ this.m_drop_1, this.m_drop_2, this.m_drop_3 ]);
            // source line 145, bytecode pc 1596
            this.hideWinStar();
            // source line 146, bytecode pc 1627
            this.showWinStar(this.fightInfo.getStarLevel());
            // source line 147, bytecode pc 1658
            this.showWinTxt(this.fightInfo.getStarLevel());
            // source line 149, bytecode pc 1671
            this.hideDropIcon();
            // source line 150, bytecode pc 1689
            (dropItems = fightInfo.getDropItems());
            // source line 151, bytecode pc 1694
            (i = 0);
            while ((i < dropItems.length)) {
                // source line 155, bytecode pc 1762
                (icon = xs.Utils.replaceIcon_direct(this.ccbNode, this.m_drop[i], dropItems[i].createIcon_GradeAndName()));
                // source line 156, bytecode pc 1779
                icon.setVisible(true);
                // source line 151, bytecode pc 1793
                (i = (+i + 1));
            }
        }
    }
    // source line 161, bytecode pc 1837
    this.markFuncEnd("showFlutterView", "222");
    // source line 162, bytecode pc 1839
    return true;
},
    startAnm: function() {
    var moveUp, scale, delay, spawn, sequence;
    if ((this.ccbNode == null)) {
        // source line 168, bytecode pc 25
        this.amnOver();
        // source line 169, bytecode pc 27
        return void 0;
    }
    // source line 172, bytecode pc 80
    (moveUp = cc.MoveBy.create(0.3, cc.p(0, 50)));
    // source line 173, bytecode pc 117
    (scale = cc.ScaleTo.create(0.3, 1.2));
    // source line 174, bytecode pc 148
    (delay = cc.DelayTime.create(0.5));
    // source line 179, bytecode pc 198
    (spawn = xs.Utils.Action.combineSpawn([ moveUp, scale ]));
    // source line 193, bytecode pc 294
    (sequence = xs.Utils.Action.combineSequence([
    spawn,
    delay,
    cc.CallFunc.create(function() {
    // source line 191, bytecode pc 12
    this.amnOver();
}.bind(this), this)
]));
    // source line 198, bytecode pc 316
    this.ccbNode.runAction(sequence);
},
    amnOver: function() {
    var _modelMap;
    // source line 206, bytecode pc 22
    xs.log_xjf("动画完毕");
    // source line 207, bytecode pc 51
    xs.Utils.Node.removeFromParentSafe(this);
    // source line 210, bytecode pc 87
    (_modelMap = xs.Scene.Mgr.loadStatusAndClear("PvpFight_RandEvent"));
    if ((_modelMap && (_modelMap.RandEvent && (_modelMap.RandEvent.length > 0)))) {
        // source line 213, bytecode pc 167
        xs.Views.Mgr.showDialogByName("RandEvent", _modelMap);
    }
    // source line 216, bytecode pc 185
    switch (this.fightInfo.getFightType()) {
        case xs.Constant_FightType_Ladder:
        if ((this.fightInfo.getLadderUpTo() !== 0)) {
            // source line 221, bytecode pc 297
            xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_NeedReloadLadder);
        }
        // source line 224, bytecode pc 335
        xs.Utils.Notify.postNotification(xs.Constant_Notify_QuickLandderEnd);
        break;
        case xs.Constant_FightType_Chaos:
        if ((this.fightInfo.isSuccess() && (this.fightInfo.getDropItems().length > 0))) {
            // source line 230, bytecode pc 430
            xs.Utils.Notify.postNotification(xs.Constant_Notify_QuickChaosEnd);
        }
        break;
        case xs.Constant_FightType_Climb:
        if (this.fightInfo.isSuccess()) {
            // source line 237, bytecode pc 495
            xs.Utils.Notify.postNotification(xs.Constant_Notify_QuickClimbLandderEnd);
        } else {
            // source line 241, bytecode pc 540
            xs.Views.Mgr.showDialogByName("ClimbLaddersFailDialog", this.fightInfo);
        }
        break;
        default:
        break;
    }
    if (this.endFunc) {
        // source line 251, bytecode pc 569
        this.endFunc();
    }
},
    showWinStar: function(starNum) {
    var i;
    // source line 257, bytecode pc 4
    (i = 0);
    while ((i < starNum)) {
        // source line 258, bytecode pc 34
        this.m_winStar[i].setVisible(true);
        // source line 257, bytecode pc 48
        (i = (+i + 1));
    }
},
    hideWinStar: function() {
    // source line 264, bytecode pc 19
    this.m_winStar_1.setVisible(false);
    // source line 265, bytecode pc 39
    this.m_winStar_2.setVisible(false);
    // source line 266, bytecode pc 59
    this.m_winStar_3.setVisible(false);
},
    hideDropIcon: function() {
    // source line 271, bytecode pc 19
    this.m_drop_1.setVisible(false);
    // source line 272, bytecode pc 39
    this.m_drop_2.setVisible(false);
    // source line 273, bytecode pc 59
    this.m_drop_3.setVisible(false);
},
    showWinTxt: function(starNum) {
    // source line 278, bytecode pc 3
    switch (starNum) {
        case 1:
        // source line 281, bytecode pc 98
        xs.Utils.replaceNode(this.ccbNode, 43, xs.Factorys.Sprite.create("smallWin", "FightResult"));
        break;
        case 2:
        // source line 285, bytecode pc 174
        xs.Utils.replaceNode(this.ccbNode, 43, xs.Factorys.Sprite.create("bigWin", "FightResult"));
        break;
        case 3:
        // source line 289, bytecode pc 250
        xs.Utils.replaceNode(this.ccbNode, 43, xs.Factorys.Sprite.create("largeWin", "FightResult"));
        break;
        default:
        break;
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 295, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 296, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
},
    ccbCfg: {
        ladder_win: [
            { name: "m_exp", tag: 1, type: "ls", id: "LS_danyao", string: " 0" },
            { name: "m_coin", tag: 2, type: "ls", id: "LS_danyao", string: " 0" },
            { name: "m_salary", tag: 3, type: "ls", id: "LS_danyao", string: " 0" },
            { name: "m_honor", tag: 4, type: "ls", id: "LS_danyao", string: " 0" },
            { tag: 100, type: "ls", id: "LS_qianghua_done", stringId: "auto_name_297" },
            { name: "m_expLab", tag: 21, type: "ls", id: "LS_green_big", stringId: "auto_name_Exp" },
            { name: "m_salaryLab", tag: 22, type: "ls", id: "LS_green_big", stringId: "salary_0" },
            { name: "m_honorLab", tag: 23, type: "ls", id: "LS_green_big", stringId: "honor_0" }
        ],
        ladder_lose: [
            { name: "m_exp", tag: 1, type: "ls", id: "LS_danyao", string: " 0" },
            { name: "m_honor", tag: 2, type: "ls", id: "LS_danyao", string: " 0" },
            { tag: 100, type: "ls", id: "LS_qianghua_doub", stringId: "auto_name_298" },
            { name: "m_expLab", tag: 21, type: "ls", id: "LS_green_big", stringId: "auto_name_Exp" },
            { name: "m_honorLab", tag: 22, type: "ls", id: "LS_green_big", stringId: "honor_0" }
        ],
        chaos_win: [
            { name: "m_exp", tag: 1, type: "ls", id: "LS_danyao", string: " 0" },
            { name: "m_coin", tag: 2, type: "ls", id: "LS_danyao", string: " 0" },
            { name: "m_spNum", tag: 3, type: "ls", id: "LS_danyao", string: " +1" },
            { tag: 100, type: "ls", id: "LS_qianghua_done", stringId: "auto_name_299" },
            { name: "m_expLab", tag: 21, type: "ls", id: "LS_green_big", stringId: "auto_name_Exp" },
            { name: "m_honorLab", tag: 22, type: "ls", id: "LS_green_big", stringId: "auto_name_300" }
        ],
        chaos_lose1: [
            { name: "m_exp", tag: 1, type: "ls", id: "LS_danyao", string: " 0" },
            { name: "m_expLab", tag: 21, type: "ls", id: "LS_green_big", stringId: "auto_name_Exp" },
            { tag: 100, type: "ls", id: "LS_qianghua_doub", stringId: "auto_name_298" }
        ],
        chaos_lose2: [
            { name: "m_exp", tag: 1, type: "ls", id: "LS_danyao", string: " 0" },
            { name: "m_coin", tag: 2, type: "ls", id: "LS_danyao", string: " 0" },
            { tag: 100, type: "ls", id: "LS_qianghua_doub", stringId: "auto_name_301" },
            { name: "m_expLab", tag: 21, type: "ls", id: "LS_green_big", stringId: "auto_name_Exp" }
        ],
        climb_win: [
            { name: "m_winStar_1", tag: 40 },
            { name: "m_winStar_2", tag: 41 },
            { name: "m_winStar_3", tag: 42 },
            { name: "winTxt", tag: 43 },
            { name: "m_drop_1", tag: 32 },
            { name: "m_drop_2", tag: 31 },
            { name: "m_drop_3", tag: 33 },
            {
                name: "m_remainderGeneralLab",
                tag: 11,
                type: "ls",
                id: "LS_green_big",
                stringId: "auto_name_302"
            },
            { name: "m_roundsLab", tag: 12, type: "ls", id: "LS_green_big", stringId: "fightRounds" },
            { name: "m_coinLab", tag: 13, type: "ls", id: "LS_green_big", stringId: "coin" },
            {
                name: "m_extra_integrationLab",
                tag: 14,
                type: "ls",
                id: "LS_green_big",
                stringId: "integration"
            },
            { name: "m_remainderGeneral", tag: 21, type: "ls", id: "LS_danyao", string: "0" },
            { name: "m_rounds", tag: 22, type: "ls", id: "LS_danyao", string: "0" },
            { name: "m_coin", tag: 23, type: "ls", id: "LS_danyao", string: "0" },
            { name: "m_extra_integration", tag: 24, type: "ls", id: "LS_danyao", string: "0" }
        ]
    }
}));
// source line 365, bytecode pc 2317
(xs.Views.QuickFightView.create = function(fightInfo, endFunc) {
    var layer;
    // source line 366, bytecode pc 23
    (layer = new xs.Views.QuickFightView());
    if ((layer && layer.init(fightInfo, endFunc))) {
        // source line 368, bytecode pc 63
        return layer;
    }
    // source line 370, bytecode pc 65
    return null;
});
// source line 373, bytecode pc 2343
(xs.Views.QuickFightView.showWithFightInfo = function(fightInfo, endFunc) {
    var quickFightView, scene;
    // source line 374, bytecode pc 37
    (quickFightView = xs.Views.QuickFightView.create(fightInfo, endFunc));
    // source line 375, bytecode pc 83
    quickFightView.setTag(xs.Cfg.Scene.CommonScene.Loading_ext.tag);
    // source line 376, bytecode pc 129
    quickFightView.setZOrder(xs.Cfg.Scene.CommonScene.Loading_ext.zOrder);
    // source line 377, bytecode pc 175
    quickFightView.setBaseTouchPriority(xs.Cfg.Scene.CommonScene.Loading_ext.priority);
    // source line 379, bytecode pc 205
    (scene = xs.Scene.Mgr.getRunningScene());
    if (scene) {
        // source line 384, bytecode pc 271
        xs.Utils.Node.attachNodes(scene, quickFightView, { desc: "c", sc: true });
        // source line 387, bytecode pc 286
        quickFightView.startAnm();
    }
});
