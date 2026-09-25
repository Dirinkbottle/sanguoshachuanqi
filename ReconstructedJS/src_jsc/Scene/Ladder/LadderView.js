// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Ladder/LadderView.js:1
// source line 244, bytecode pc 562
(xs.Views.LadderView = cc.Layer.extend({
    ctor: function() {
    // source line 9, bytecode pc 12
    this._super();
    // source line 10, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(chartData) {
    var visibleSize, playerInfo;
    if (!this._super()) {
        // source line 15, bytecode pc 19
        return false;
    }
    // source line 19, bytecode pc 43
    this.setTouchMode(cc.TOUCH_ONE_BY_ONE);
    // source line 20, bytecode pc 58
    this.setTouchEnabled(true);
    // source line 22, bytecode pc 94
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    // source line 25, bytecode pc 134
    xs.Tools.UI.addBgByType(this, xs.Constant_BgType_Ladder);
    // source line 28, bytecode pc 164
    (playerInfo = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 29, bytecode pc 200
    playerInfo.setAnchorPoint(cc.p(0, 1));
    // source line 30, bytecode pc 256
    xs.Utils.Node.attachNodes(this, playerInfo, { desc: "lt", sc: true });
    // source line 33, bytecode pc 292
    (this.ccbNode_Ladderinfo = xs.ccb_reader.load("ccb3/0_8_2_UserLadderInfo.ccbi", this));
    // source line 34, bytecode pc 334
    this.ccbNode_Ladderinfo.setContentSize(cc.size(335, 100));
    // source line 35, bytecode pc 373
    this.ccbNode_Ladderinfo.setAnchorPoint(cc.p(0, 1));
    // source line 36, bytecode pc 393
    this.ccbNode_Ladderinfo.setVisible(false);
    // source line 37, bytecode pc 479
    xs.Utils.Node.attachNodes(this, this.ccbNode_Ladderinfo, { desc: "lt", offset: cc.p(15, -110), sc: true });
    // source line 39, bytecode pc 487
    (this.m_rank = null);
    // source line 40, bytecode pc 495
    (this.m_chgTimes = null);
    // source line 41, bytecode pc 503
    (this.m_salary = null);
    // source line 42, bytecode pc 511
    (this.m_totalSalary = null);
    // source line 43, bytecode pc 519
    (this.m_totalHonor = null);
    // source line 45, bytecode pc 567
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode_Ladderinfo, this.cfg.ccbCfg, this);
    // source line 49, bytecode pc 606
    (this.m_queueTeamButton = xs.Views.Btn.createByStyleId("BS_Btn1"));
    // source line 51, bytecode pc 657
    this.m_queueTeamButton.setString(xs.Tools.String.createString("str_formation_4_5"));
    // source line 52, bytecode pc 679
    this.m_queueTeamButton.setZOrder(999);
    // source line 53, bytecode pc 706
    this.m_queueTeamButton.addCallBackForEvent(this, this.queueTeamCallback);
    // source line 59, bytecode pc 793
    xs.Utils.Node.attachNodes(this, this.m_queueTeamButton, { desc: "lt", sc: true, offset: { x: 100, y: -250 } });
    // source line 65, bytecode pc 832
    (this.chartBtn = xs.Views.Btn.create("Btn_RankAward"));
    // source line 66, bytecode pc 856
    this.chartBtn.setOnClickCallBack(function() {
    // source line 68, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("LadderChartScene");
});
    // source line 70, bytecode pc 945
    xs.Utils.Node.attachNodes(this, this.chartBtn, { desc: "rb", offset: cc.p(-200, 80), sc: true });
    // source line 72, bytecode pc 953
    (this.ladderCardShow = null);
    // source line 74, bytecode pc 955
    return true;
},
    queueTeamCallback: function() {
    // source line 77, bytecode pc 34
    xs.Views.Mgr.showDialogByName("QueueTeamDialog", true);
},
    onEnter: function() {
    // source line 81, bytecode pc 12
    this._super();
    // source line 82, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.updateInfo, xs.Constant_Notify_ModelChange_UserInfo);
    // source line 83, bytecode pc 106
    xs.Utils.Notify.addObserver(this, this.reloadLadderInfo, xs.Constant_Notify_Event_NeedReloadLadder);
    // source line 87, bytecode pc 119
    this.reloadLadderInfo();
    // source line 89, bytecode pc 142
    xs.log_guide("end step : 120104_before action start");
    // source line 95, bytecode pc 261
    this.getParent().runAction(xs.Utils.Action.combineSequence([
    cc.DelayTime.create(0.01),
    cc.CallFunc.create(function() {
    var obj;
    // source line 96, bytecode pc 22
    xs.log_guide("end step : 120104_before");
    // source line 97, bytecode pc 64
    xs.Guide.GuideMgr.endStepBySequence([ "120104_before" ]);
    if ((xs.isVersionForPublish && !xs.Utils.LocalStore.getItem("isShowedLadderSuggestion"))) {
        // source line 100, bytecode pc 153
        xs.Utils.LocalStore.setItem("isShowedLadderSuggestion", true);
        // source line 105, bytecode pc 317
        (obj = xs.Views.Mgr.showDialogByName("OneBtnDialog", {
    titleText: xs.Tools.String.createString("verPublish_enterLadder_title"),
    contentText: xs.Tools.String.createString("verPublish_enterLadder_context"),
    btnText: xs.Tools.String.createString("verPublish_enterLadder_btntext"),
    btnCallback: function() {
    // source line 106, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}
}));
        // source line 109, bytecode pc 387
        obj.getRealDialog().getTitleText().setString(xs.Tools.String.createString("verPublish_enterLadder_title"));
        // source line 110, bytecode pc 457
        obj.getRealDialog().getContentText().setString(xs.Tools.String.createString("verPublish_enterLadder_context"));
    }
})
]));
    // source line 118, bytecode pc 284
    xs.log_guide("end step : 120104_before action end");
},
    onExit: function() {
    // source line 123, bytecode pc 12
    this._super();
    // source line 124, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_UserInfo);
    // source line 125, bytecode pc 92
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_NeedReloadLadder);
},
    reloadLadderInfo: function() {
    // source line 144, bytecode pc 41
    xs.Tools.Net.requestLadderData({}, function(jsonObj) {
    // source line 134, bytecode pc 51
    xs.Profile.GameData.Mgr.getInstance().LadderInfo.update(jsonObj);
    if (this.ladderCardShow) {
        // source line 137, bytecode pc 80
        this.ladderCardShow.removeFromParent();
    }
    // source line 139, bytecode pc 113
    (this.ladderCardShow = xs.Views.LadderCardShow.create());
    // source line 140, bytecode pc 155
    this.ladderCardShow.setBaseTouchPriority((this.m_baseTouchPriority + this.cfg.ladderCardShow.priority));
    // source line 141, bytecode pc 239
    xs.Utils.Node.attachNodes(this, this.ladderCardShow, { desc: "c", offset: cc.p(0, 0), sc: true });
    // source line 143, bytecode pc 252
    this.updateLadderInfo();
}, this);
},
    updateLadderInfo: function() {
    var ladderInfo, timesStr, salary, honor;
    // source line 149, bytecode pc 19
    this.ccbNode_Ladderinfo.setVisible(true);
    // source line 150, bytecode pc 70
    (ladderInfo = xs.Profile.GameData.Mgr.getInstance().LadderInfo.getLadderInfo());
    if (!ladderInfo) {
        // source line 152, bytecode pc 81
        return void 0;
    }
    // source line 155, bytecode pc 159
    this.m_rank.setStringByStrings([ xs.Tools.String.createString("rank"), ladderInfo.getLadderRank() ]);
    // source line 157, bytecode pc 198
    (timesStr = ((ladderInfo.getChallengeNum() + "/") + ladderInfo.getTotalChallengeNum()));
    // source line 158, bytecode pc 265
    this.m_chgTimes.setStringByStrings([ xs.Tools.String.createString("lostChallengeTimes"), timesStr ]);
    // source line 161, bytecode pc 376
    this.m_salary.setStringByStrings([
    xs.Tools.String.createString("salary"),
    (ladderInfo.getCurRankSalary() + xs.Tools.String.createString("minute"))
]);
    // source line 163, bytecode pc 438
    (salary = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getLadderRankSalary());
    // source line 165, bytecode pc 511
    this.m_totalSalary.setStringByStrings([ xs.Tools.String.createString("totalSalary"), (salary + "") ]);
    // source line 167, bytecode pc 573
    (honor = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getUserHonor());
    // source line 168, bytecode pc 646
    this.m_totalHonor.setStringByStrings([ xs.Tools.String.createString("totalHonor"), ("" + honor) ]);
},
    updateChallengeTimes: function() {
    var ladderInfo, lastChgTimes, timesStr;
    // source line 173, bytecode pc 50
    (ladderInfo = xs.Profile.GameData.Mgr.getInstance().LadderInfo.getLadderInfo());
    if (!ladderInfo) {
        // source line 175, bytecode pc 61
        return void 0;
    }
    // source line 177, bytecode pc 123
    (lastChgTimes = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getLadderChallengeTimes());
    // source line 178, bytecode pc 151
    (timesStr = ((lastChgTimes + "/") + ladderInfo.getTotalChallengeNum()));
    if (this.m_chgTimes) {
        // source line 181, bytecode pc 229
        this.m_chgTimes.setStringByStrings([ xs.Tools.String.createString("lostChallengeTimes"), timesStr ]);
    }
},
    updateInfo: function() {
    // source line 186, bytecode pc 12
    this.updateLadderInfo();
    // source line 187, bytecode pc 25
    this.updateChallengeTimes();
},
    onTouchBegan: function(touch, e) {
    // source line 194, bytecode pc 7
    (this.moveStart = false);
    // source line 195, bytecode pc 15
    (this.touchBegan = true);
    // source line 196, bytecode pc 17
    return true;
},
    onTouchMoved: function(touch, e) {
    if ((this.moveStart === false)) {
        // source line 201, bytecode pc 35
        (this.moveStartPoint = this.convertTouchToNodeSpace(touch));
        // source line 202, bytecode pc 43
        (this.moveStart = true);
    }
},
    onTouchEnded: function(touch, e) {
    var endPoint;
    if ((this.moveStart === false)) {
        // source line 210, bytecode pc 14
        return void 0;
    }
    // source line 213, bytecode pc 34
    (endPoint = this.convertTouchToNodeSpace(touch));
    if (((endPoint.x - this.moveStartPoint.x) < -20)) {
        // source line 215, bytecode pc 82
        this.ladderCardShow.moveTo(true);
    } else {
        if (((endPoint.x - this.moveStartPoint.x) > 20)) {
            // source line 217, bytecode pc 135
            this.ladderCardShow.moveTo(false);
        }
    }
    // source line 219, bytecode pc 143
    (this.touchBegan = false);
},
    setBaseTouchPriority: function(priority) {
    // source line 223, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 224, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 225, bytecode pc 71
    this.chartBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.chartBtn.priority));
    // source line 226, bytecode pc 113
    this.m_queueTeamButton.setTouchPriority((this.m_baseTouchPriority + this.cfg.chartBtn.priority));
},
    cfg: {
        chartBtn: { tag: 10, priority: -1 },
        ladderCardShow: { priority: -1 },
        ccbCfg: [
            { tag: 10, type: "ls_ext", name: "m_rank", ids: [ "LS_ZbJn", "LS_Nomb1" ] },
            { tag: 11, type: "ls_ext", name: "m_chgTimes", ids: [ "LS_ZbJn", "LS_Nomb1" ] },
            { tag: 12, type: "ls_ext", name: "m_salary", ids: [ "LS_ZbJn", "LS_Nomb1" ] },
            { tag: 13, type: "ls_ext", name: "m_totalSalary", ids: [ "LS_ZbJn", "LS_Nomb1" ] },
            { tag: 14, type: "ls_ext", name: "m_totalHonor", ids: [ "LS_ZbJn", "LS_Nomb1" ] }
        ]
    }
}));
// source line 249, bytecode pc 588
(xs.Views.LadderView.create = function() {
    var ret;
    // source line 250, bytecode pc 23
    (ret = new xs.Views.LadderView());
    if ((ret && ret.init())) {
        // source line 252, bytecode pc 55
        return ret;
    }
    // source line 254, bytecode pc 57
    return null;
});
