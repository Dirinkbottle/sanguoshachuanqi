// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/Chaos/ChaosFight.js:1
// source line 193, bytecode pc 476
(xs.Views.ChaosFightView = cc.Layer.extend({
    ctor: function() {
    // source line 8, bytecode pc 12
    this._super();
    // source line 9, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(param) {
    var visibleSize, exchangeBtn;
    // source line 13, bytecode pc 12
    this._super();
    // source line 15, bytecode pc 20
    (this.m_timeStr = null);
    // source line 16, bytecode pc 28
    (this.m_timeNum = null);
    // source line 17, bytecode pc 36
    (this.avoidWarBtn = null);
    // source line 18, bytecode pc 44
    (this.m_NoWarPic = null);
    // source line 19, bytecode pc 52
    (this.avoidWar = null);
    // source line 21, bytecode pc 77
    (visibleSize = xs.director.getVisibleSize());
    if (param.skillPieceModel) {
        // source line 24, bytecode pc 105
        (this.skillPieceModel = param.skillPieceModel);
    } else {
        // source line 26, bytecode pc 149
        (this.skillPieceModel = xs.Scene.Mgr.loadStatus("skillPieceModel"));
    }
    // source line 28, bytecode pc 173
    (this.skill_id = this.skillPieceModel.getId());
    if (!this.avoidWarCcb) {
        // source line 32, bytecode pc 219
        (this.avoidWarCcb = xs.ccb_reader.load("ccb3/0_8_3_TipInfoBar.ccbi"));
        // source line 33, bytecode pc 306
        xs.Utils.Node.attachNodes(this, this.avoidWarCcb, { desc: "lt", offset: cc.p(130, -110), sc: true });
        // source line 34, bytecode pc 354
        xs.Utils.UI.replaceCcbByCfg(this.avoidWarCcb, this.cfg.avoidWarCfg, this);
        // source line 36, bytecode pc 394
        (this.avoidWarBtn = xs.Views.Btn.createInvisibleWithParent(this.avoidWar));
        // source line 37, bytecode pc 429
        this.avoidWarBtn.setTouchPriority(this.cfg.avoidWar_btn.priority);
        // source line 41, bytecode pc 466
        this.avoidWarBtn.setOnClickCallBack(function() {
    // source line 40, bytecode pc 32
    xs.Views.Mgr.showDialogByName("AvoidWarDialog");
}.bind(this));
        // source line 43, bytecode pc 513
        xs.Utils.Notify.addObserver(this, this.updateAvoidWarCountDown, xs.Constant_Notify_ModelChange_ChaosCountDown);
    }
    if (xs.isVersionForPublish) {
        if (this.m_timeNum) {
            // source line 49, bytecode pc 559
            this.m_timeNum.setVisible(false);
        }
        if (this.m_timeStr) {
            // source line 52, bytecode pc 590
            this.m_timeStr.setVisible(false);
        }
        if (this.avoidWar) {
            // source line 55, bytecode pc 621
            this.avoidWar.setVisible(false);
        }
        if (this.m_NoWarPic) {
            // source line 58, bytecode pc 652
            this.m_NoWarPic.setVisible(false);
        }
    } else {
        // source line 62, bytecode pc 704
        xs.Utils.Notify.addObserver(this, this.updateAvoidWarCountDown, xs.Constant_Notify_ModelChange_ChaosCountDown);
        // source line 63, bytecode pc 717
        this.updateAvoidWarCountDown();
    }
    // source line 67, bytecode pc 753
    (exchangeBtn = xs.Views.Btn.createByStyleId("BS_Btn2"));
    // source line 68, bytecode pc 801
    exchangeBtn.setString(xs.Tools.String.createString("chaos_trade"));
    // source line 72, bytecode pc 915
    xs.Utils.Node.attachNodes(this, exchangeBtn, {
    desc: "lb",
    offset: { x: (((visibleSize.width - xs.Views.MainMenuView.Width) / 4) * 3), y: 60 },
    sc: true
});
    // source line 76, bytecode pc 949
    exchangeBtn.setOnClickCallBack(function() {
    // source line 75, bytecode pc 53
    xs.Tools.Net.requestChaosInfo({ skill_id: this.skill_id }, this.onResponse, this);
}.bind(this));
    // source line 79, bytecode pc 988
    (this.m_progressLabel = xs.Factorys.Label.createByStyleId("LS_danyao"));
    // source line 81, bytecode pc 1087
    this.m_progressLabel.setString(xs.Tools.String.createStringWithArgsArray("climbProgress_str", [ this.skillPieceModel.getNum(), this.skillPieceModel.getComposePieceNum() ]));
    // source line 85, bytecode pc 1201
    xs.Utils.Node.attachNodes(this, this.m_progressLabel, {
    desc: "lb",
    offset: { x: ((visibleSize.width - xs.Views.MainMenuView.Width) / 4), y: 60 },
    sc: true
});
    // source line 88, bytecode pc 1203
    return true;
},
    onExitTransitionDidStart: function() {
    // source line 93, bytecode pc 12
    this._super();
    // source line 94, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_ModelChange_ChaosCountDown);
},
    onEnterTransitionDidFinish: function() {
    var _modelMap;
    // source line 98, bytecode pc 12
    this._super();
    if (!this.checkPieceNumIsEnough()) {
        // source line 105, bytecode pc 66
        (_modelMap = xs.Scene.Mgr.loadStatusAndClear("PvpFight_RandEvent"));
        if ((_modelMap && (_modelMap.RandEvent.length > 0))) {
            // source line 110, bytecode pc 151
            this.runAction(cc.CallFunc.create(function() {
    // source line 109, bytecode pc 34
    xs.Views.Mgr.showDialogByName("RandEvent", this);
}.bind(_modelMap)));
        }
    }
},
    onEnter: function() {
    // source line 117, bytecode pc 12
    this._super();
    // source line 118, bytecode pc 35
    xs.log("chaos onEnter");
    // source line 121, bytecode pc 82
    xs.Utils.Notify.addObserver(this, this.checkPieceNumIsEnough, xs.Constant_Notify_QuickChaosEnd);
},
    onExit: function() {
    // source line 125, bytecode pc 22
    xs.log("chaos onExit");
    // source line 127, bytecode pc 62
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_QuickChaosEnd);
    // source line 128, bytecode pc 75
    this._super();
},
    checkPieceNumIsEnough: function() {
    var pieceNum;
    // source line 132, bytecode pc 4
    (pieceNum = 0);
    if (xs.Profile.GameData.Mgr.getInstance().SkillPieces.isThisPkIdExists(this.skill_id)) {
        // source line 134, bytecode pc 132
        (pieceNum = xs.Profile.GameData.Mgr.getInstance().SkillPieces.getByPkId(this.skill_id).getNum());
    }
    // source line 137, bytecode pc 217
    this.m_progressLabel.setString(xs.Tools.String.createStringWithArgsArray("climbProgress_str", [ pieceNum, this.skillPieceModel.getComposePieceNum() ]));
    if ((pieceNum >= this.skillPieceModel.getComposePieceNum())) {
        // source line 140, bytecode pc 270
        xs.Scene.Mgr.gotoLastScene();
        // source line 141, bytecode pc 272
        return true;
    } else {
        // source line 145, bytecode pc 331
        xs.Tools.Net.requestChaosInfo({ skill_id: this.skill_id }, this.onResponse, this);
        // source line 146, bytecode pc 333
        return false;
    }
},
    onResponse: function(jsonObj) {
    var visibleSize, chaosInfos, chaosArray, i, chaos;
    // source line 151, bytecode pc 24
    (visibleSize = xs.director.getVisibleSize());
    // source line 153, bytecode pc 41
    (chaosInfos = jsonObj.return_info.warlord_info);
    // source line 155, bytecode pc 50
    (chaosArray = []);
    // source line 156, bytecode pc 55
    (i = 0);
    while ((i < chaosInfos.length)) {
        // source line 157, bytecode pc 99
        (chaos = xs.Models.OtherPlayerInfo.create(chaosInfos[i]));
        // source line 158, bytecode pc 118
        chaosArray.push(chaos);
        // source line 156, bytecode pc 133
        i++;
    }
    if (!this.tableView) {
        // source line 161, bytecode pc 212
        (this.tableView = xs.Views.Table.ChaosTableView.create(chaosArray, this.skillPieceModel));
        // source line 163, bytecode pc 310
        xs.Utils.Node.attachNodes(this, this.tableView, { desc: "lb", offset: cc.p(0, (110 * (visibleSize.height / 640))), sc: true });
    } else {
        // source line 165, bytecode pc 337
        this.tableView.setDataArray(chaosArray);
    }
},
    updateAvoidWarCountDown: function() {
    var tt;
    // source line 171, bytecode pc 61
    (tt = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getChaosCountDown());
    // source line 173, bytecode pc 133
    xs.Utils.setCcbLabel(this.avoidWarCcb, this.cfg.avoidWar_time.tag, xs.Utils.convertSecondToTime(tt));
},
    cfg: {
        btn: { priority: -1 },
        avoidWar_time: { tag: 10 },
        avoidWar_btn: { tag: 11, priority: -1 },
        avoidWarCfg: [
            { tag: 1, type: "ls", id: "LS_qiangduo_time", stringId: "auto_name_55" },
            { tag: 2, type: "ls", id: "LS_qiangduo_time", stringId: "auto_name_56" },
            { tag: 3, type: "ls", id: "LS_qiangduo_time", stringId: "auto_name_57", name: "m_timeStr" },
            { tag: 10, type: "ls", id: "LS_Nomb1", string: "00:00:00", name: "m_timeNum" },
            { tag: 20, name: "m_NoWarPic" },
            { tag: 11, name: "avoidWar" }
        ]
    }
}));
// source line 203, bytecode pc 545
(xs.Views.ChaosFightView.cfg = { priority: -1000, bottomInfo: { openTime_tag: 10, fragmentNum_tag: 11, remainingTime_tag: 12 } });
// source line 207, bytecode pc 571
(xs.Views.ChaosFightView.create = function(param) {
    var ret;
    // source line 208, bytecode pc 23
    (ret = new xs.Views.ChaosFightView());
    if ((ret && ret.init(param))) {
        // source line 210, bytecode pc 59
        return ret;
    }
    // source line 212, bytecode pc 61
    return null;
});
