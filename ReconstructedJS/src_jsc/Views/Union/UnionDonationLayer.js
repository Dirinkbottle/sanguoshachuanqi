// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Union/UnionDonationLayer.js:1
// source line 320, bytecode pc 1778
(xs.Views.Union.UnionDonationLayer = xs.Views.Union.UnionBaseLayer.extend({
    ctor: function() {
    // source line 7, bytecode pc 12
    this._super();
},
    cfg: {
        ccbCfg: [
            { tag: 1, type: "ls", name: "lblUnionName", id: "LS_wujiangInf1", string: "" },
            { tag: 2, type: "ls", name: "lblUnionLv", id: "LS_Lv", string: "0" },
            { tag: 3, type: "ls", name: "lblUnionId", id: "LS_wujiangInf1", string: "ID:" },
            { tag: 5, type: "ls", name: "lblUnionExp", id: "LS_EXPInf", string: " 0/28 " },
            { tag: 8, type: "ls", name: "lblDonateCount", id: "LS_huodong_dayNomb", string: "0" },
            { tag: 30, type: "ls", name: "lblDonateDesc", id: "LS_yuanfenInf2", stringId: "auto_name_536" },
            { tag: 51, type: "ls", id: "LS_cardWujiangName", stringId: "GuildDialog_jinyan" },
            { tag: 52, type: "ls", id: "LS_cardWujiangName", stringId: "GuildDialog_juanxian" },
            { tag: 53, type: "ls", id: "LS_cardWujiangName", stringId: "GuildDialog_jinyan" },
            { tag: 54, type: "ls", id: "LS_cardWujiangName", stringId: "GuildDialog_juanxian" },
            { tag: 55, type: "ls", id: "LS_cardWujiangName", stringId: "GuildDialog_jinyan" },
            { tag: 56, type: "ls", id: "LS_cardWujiangName", stringId: "GuildDialog_juanxian" },
            { tag: 61, type: "ls", name: "lblUnionExp1", id: "LS_SXJC", string: "+1" },
            { tag: 62, type: "ls", name: "lblDonate1", id: "LS_SXJC", string: "+1" },
            { tag: 63, type: "ls", name: "lblUnionExp2", id: "LS_SXJC", string: "+5" },
            { tag: 64, type: "ls", name: "lblDonate2", id: "LS_SXJC", string: "+5" },
            { tag: 65, type: "ls", name: "lblUnionExp3", id: "LS_SXJC", string: "+25" },
            { tag: 66, type: "ls", name: "lblDonate3", id: "LS_SXJC", string: "+25" },
            { tag: 71, type: "sprite", name: "spDonate1", id: "GuildDialog_yinliang", area: "GuildDialog" },
            { tag: 72, type: "sprite", name: "spDonate2", id: "GuildDialog_yuanbao", area: "GuildDialog" },
            { tag: 73, type: "sprite", name: "spDonate3", id: "GuildDialog_yuanbao", area: "GuildDialog" },
            { tag: 81, type: "ls", name: "lblCost1", id: "LS_wujiangInf2", stringId: "auto_name_537" },
            { tag: 82, type: "ls", name: "lblCost2", id: "LS_wujiangInf2", stringId: "auto_name_538" },
            { tag: 83, type: "ls", name: "lblCost3", id: "LS_wujiangInf2", stringId: "auto_name_539" },
            { tag: 91, type: "btn", name: "btnDonate1", id: "Btn_Donate" },
            { tag: 92, type: "btn", name: "btnDonate2", id: "Btn_Donate" },
            { tag: 93, type: "btn", name: "btnDonate3", id: "Btn_Donate" }
        ],
        expProgressTimer: { tag: 6 },
        btnCfg: { btnDonate1: { priority: -1 }, btnDonate2: { priority: -1 }, btnDonate3: { priority: -1 } },
        logTableViewCfg: { priority: -1 }
    },
    init: function() {
    var logs;
    if (!this._super()) {
        // source line 63, bytecode pc 19
        return false;
    }
    // source line 67, bytecode pc 27
    (this.m_baseTouchPriority = 0);
    // source line 69, bytecode pc 40
    (this.donateInfoAll = {});
    // source line 70, bytecode pc 48
    (this.donateItemInfo = null);
    // source line 72, bytecode pc 56
    (this.lblUnionName = null);
    // source line 73, bytecode pc 64
    (this.lblUnionLv = null);
    // source line 74, bytecode pc 72
    (this.lblUnionId = null);
    // source line 75, bytecode pc 80
    (this.lblUnionExp = null);
    // source line 76, bytecode pc 88
    (this.lblDonateDesc = null);
    // source line 77, bytecode pc 96
    (this.lblDonateCount = null);
    // source line 78, bytecode pc 104
    (this.lblUnionExp1 = null);
    // source line 79, bytecode pc 112
    (this.lblDonate1 = null);
    // source line 80, bytecode pc 120
    (this.lblUnionExp2 = null);
    // source line 81, bytecode pc 128
    (this.lblDonate2 = null);
    // source line 82, bytecode pc 136
    (this.lblUnionExp3 = null);
    // source line 83, bytecode pc 144
    (this.lblDonate3 = null);
    // source line 84, bytecode pc 152
    (this.lblCost1 = null);
    // source line 85, bytecode pc 160
    (this.lblCost2 = null);
    // source line 86, bytecode pc 168
    (this.lblCost3 = null);
    // source line 87, bytecode pc 176
    (this.spDonate1 = null);
    // source line 88, bytecode pc 184
    (this.spDonate2 = null);
    // source line 89, bytecode pc 192
    (this.spDonate3 = null);
    // source line 90, bytecode pc 200
    (this.btnDonate1 = null);
    // source line 91, bytecode pc 208
    (this.btnDonate2 = null);
    // source line 92, bytecode pc 216
    (this.btnDonate3 = null);
    // source line 94, bytecode pc 252
    (this.ccbNode = cc.BuilderReader.load("ccb3/GuildDonation.ccbi", this));
    // source line 95, bytecode pc 295
    this.ccbNode.setContentSize(cc.size(885, 423));
    // source line 96, bytecode pc 334
    this.ccbNode.setAnchorPoint(cc.p(0, 0));
    // source line 97, bytecode pc 387
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "lb" });
    // source line 99, bytecode pc 435
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 101, bytecode pc 456
    this.btnDonate1.setZOrder(10);
    // source line 102, bytecode pc 477
    this.btnDonate2.setZOrder(10);
    // source line 103, bytecode pc 498
    this.btnDonate3.setZOrder(10);
    // source line 106, bytecode pc 531
    (this.expProgressTimer = xs.Views.BlueProgressTimer.create());
    // source line 107, bytecode pc 555
    this.expProgressTimer.setScaleX(1.1);
    // source line 108, bytecode pc 579
    this.expProgressTimer.setScaleY(0.6);
    // source line 109, bytecode pc 632
    xs.Utils.replaceNode(this.ccbNode, this.cfg.expProgressTimer.tag, this.expProgressTimer);
    // source line 112, bytecode pc 641
    (logs = []);
    // source line 113, bytecode pc 706
    (this.logTableView = xs.Views.Table.UnionLogTableView.create(logs, { width: 418, height: 244 }));
    // source line 114, bytecode pc 790
    xs.Utils.Node.attachNodes(this.ccbNode, this.logTableView, { desc: "lb", offset: cc.p(0, 34) });
    // source line 118, bytecode pc 827
    this.btnDonate1.setOnClickCallBack(function() {
    // source line 117, bytecode pc 14
    this.onBtnDonateClick(0);
}.bind(this));
    // source line 122, bytecode pc 864
    this.btnDonate2.setOnClickCallBack(function() {
    // source line 121, bytecode pc 14
    this.onBtnDonateClick(1);
}.bind(this));
    // source line 126, bytecode pc 901
    this.btnDonate3.setOnClickCallBack(function() {
    // source line 125, bytecode pc 15
    this.onBtnDonateClick(2);
}.bind(this));
    // source line 128, bytecode pc 925
    this.setTouchMode(cc.TOUCH_ONE_BY_ONE);
    // source line 129, bytecode pc 940
    this.setTouchEnabled(true);
    // source line 132, bytecode pc 953
    this.requestGetDonateInfo();
    // source line 134, bytecode pc 955
    return true;
},
    onEnter: function() {
    // source line 138, bytecode pc 12
    this._super();
    // source line 141, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.refreshUnionInfo, xs.Constant_Notify_Event_refreshUnionInfo);
},
    onExit: function() {
    // source line 145, bytecode pc 39
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_refreshUnionInfo);
    // source line 146, bytecode pc 52
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 150, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 151, bytecode pc 28
    this.setTouchPriority((priority - 1));
    // source line 152, bytecode pc 72
    this.btnDonate1.setTouchPriority((priority + this.cfg.btnCfg.btnDonate1.priority));
    // source line 153, bytecode pc 116
    this.btnDonate2.setTouchPriority((priority + this.cfg.btnCfg.btnDonate2.priority));
    // source line 154, bytecode pc 160
    this.btnDonate3.setTouchPriority((priority + this.cfg.btnCfg.btnDonate3.priority));
    // source line 155, bytecode pc 199
    this.logTableView.setTouchPriority((priority + this.cfg.logTableViewCfg.priority));
},
    onTouchBegan: function(touch, e) {
    var touchPos;
    // source line 160, bytecode pc 19
    (touchPos = this.convertTouchToNodeSpace(touch));
    if (cc.rectContainsPoint(this.spDonate1.getBoundingBox(), touchPos)) {
        // source line 162, bytecode pc 77
        this.onBtnDonateClick(0);
    } else {
        if (cc.rectContainsPoint(this.spDonate2.getBoundingBox(), touchPos)) {
            // source line 165, bytecode pc 140
            this.onBtnDonateClick(1);
        } else {
            if (cc.rectContainsPoint(this.spDonate3.getBoundingBox(), touchPos)) {
                // source line 168, bytecode pc 204
                this.onBtnDonateClick(2);
            }
        }
    }
    // source line 170, bytecode pc 206
    return false;
},
    requestGetDonateInfo: function() {
    // source line 196, bytecode pc 184
    xs.Tools.Net.requestGetDonateInfo({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    union_id: xs.Profile.GameData.Mgr.getInstance().Union.getUnion().getUnionId()
}, function(resData) {
    if (resData.result) {
        // source line 181, bytecode pc 27
        (this.donateInfoAll = resData.return_info);
        // source line 186, bytecode pc 52
        this.refreshUnionInfo(this.donateInfoAll.union_info);
        // source line 189, bytecode pc 72
        this.refreshDonateInfo(this.donateInfoAll);
        // source line 192, bytecode pc 97
        this.refreshDonateLog(this.donateInfoAll.donate_records);
    }
}.bind(this), function(resData) {
});
},
    refreshUnionInfo: function() {
    var unionInfo;
    // source line 204, bytecode pc 50
    (unionInfo = xs.Profile.GameData.Mgr.getInstance().Union.getUnion());
    // source line 206, bytecode pc 89
    this.lblUnionId.setString(("ID: " + unionInfo.getUnionId()));
    // source line 207, bytecode pc 122
    this.lblUnionName.setString(unionInfo.getUnionName());
    // source line 208, bytecode pc 155
    this.lblUnionLv.setString(unionInfo.getUnionLevel());
    // source line 209, bytecode pc 221
    this.lblUnionExp.setString(((((" " + unionInfo.getUnionExp()) + "/") + unionInfo.getUnionLevelUpExp()) + " "));
    // source line 210, bytecode pc 272
    this.expProgressTimer.setPercentage(((unionInfo.getUnionExp() / unionInfo.getUnionLevelUpExp()) * 100));
},
    refreshDonateInfo: function(donate_infoAll) {
    var donate_info, i, cfgDonateInfo, newSp;
    // source line 215, bytecode pc 26
    this.lblDonateCount.setString(donate_infoAll.donate_num);
    // source line 218, bytecode pc 38
    (donate_info = donate_infoAll.donate_info);
    // source line 219, bytecode pc 43
    (i = 0);
    while ((i < donate_info.length)) {
        // source line 220, bytecode pc 60
        (cfgDonateInfo = donate_info[i]);
        // source line 221, bytecode pc 103
        this[("lblUnionExp" + cfgDonateInfo.data_id)].setString(("+" + cfgDonateInfo.exp));
        // source line 222, bytecode pc 146
        this[("lblDonate" + cfgDonateInfo.data_id)].setString(("+" + cfgDonateInfo.donate));
        // source line 223, bytecode pc 301
        this[("lblCost" + cfgDonateInfo.data_id)].setString(((xs.Tools.String.createString("auto_name_540") + cfgDonateInfo.num) + ((cfgDonateInfo.type == 1) ? xs.Tools.String.createString("auto_name_26") : xs.Tools.String.createString("auto_name_27"))));
        // source line 227, bytecode pc 368
        (newSp = xs.Factorys.Sprite.create(((cfgDonateInfo.type == 1) ? "GuildDialog_yinliang" : "GuildDialog_yuanbao"), "GuildDialog"));
        // source line 228, bytecode pc 418
        xs.Utils.replaceNodeWithOldNode(this.ccbNode, this[("spDonate" + cfgDonateInfo.data_id)], newSp);
        // source line 229, bytecode pc 438
        (this[("spDonate" + cfgDonateInfo.data_id)] = newSp);
        // source line 219, bytecode pc 453
        i++;
    }
    if ((donate_infoAll.is_donate == true)) {
        // source line 235, bytecode pc 501
        this.addDonateSucessSp(false);
    }
},
    addDonateLogAndRefresh: function() {
    // source line 244, bytecode pc 124
    this.donateInfoAll.donate_records.push({
    user_nickname: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerName(),
    num: this.donateItemInfo.num,
    type: this.donateItemInfo.type
});
    // source line 246, bytecode pc 151
    this.refreshDonateLog(this.donateInfoAll.donate_records, true);
},
    refreshDonateLog: function(donate_records, isAnimation) {
    var logs, i, record, logModel;
    // source line 250, bytecode pc 8
    (logs = []);
    // source line 251, bytecode pc 13
    (i = 0);
    while ((i < donate_records.length)) {
        // source line 252, bytecode pc 30
        (record = donate_records[i]);
        // source line 254, bytecode pc 213
        (logModel = xs.Models.UnionLog.createWithData({
    content: (((("【" + record.user_nickname) + xs.Tools.String.createString("auto_name_541")) + record.num) + ((record.type == 1) ? xs.Tools.String.createString("auto_name_26") : xs.Tools.String.createString("auto_name_27")))
}));
        // source line 256, bytecode pc 232
        logs.push(logModel);
        // source line 251, bytecode pc 247
        i++;
    }
    // source line 258, bytecode pc 278
    (this.logTableView.arrayModel = null);
    // source line 259, bytecode pc 293
    (this.logTableView.arrayModel = logs);
    // source line 260, bytecode pc 315
    this.logTableView.refreshTableViewAutoOffset(isAnimation);
},
    onBtnDonateClick: function(idx) {
    var cfgDonateInfo;
    // source line 266, bytecode pc 18
    (cfgDonateInfo = this.donateInfoAll.donate_info[idx]);
    // source line 267, bytecode pc 28
    (this.donateItemInfo = cfgDonateInfo);
    // source line 268, bytecode pc 50
    this.requestDonate(cfgDonateInfo.data_id);
},
    requestDonate: function(donateId) {
    // source line 303, bytecode pc 193
    xs.Tools.Net.requestDonate({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    union_id: xs.Profile.GameData.Mgr.getInstance().Union.getUnion().getUnionId(),
    data_id: donateId,
    forcepush: true
}, function(resData) {
    if (resData.result) {
        // source line 288, bytecode pc 50
        xs.Utils.Notify.postNotification(xs.Constant_Notify_Union_hit);
        // source line 290, bytecode pc 98
        xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
        // source line 292, bytecode pc 135
        xs.Tools.Statistic.UnionDonationEvent(donateId);
        // source line 293, bytecode pc 158
        this.donateSucess(donateId);
        // source line 295, bytecode pc 226
        xs.Profile.GameData.Mgr.getInstance().Union.getUnion().safeUpdate(resData.return_info);
        // source line 297, bytecode pc 264
        xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_refreshUnionInfo);
    }
}, function(resData) {
}, this);
},
    donateSucess: function(donateId) {
    // source line 308, bytecode pc 26
    xs.log(("捐献成功 donateId = " + donateId));
    // source line 310, bytecode pc 109
    this.lblDonateCount.setString(("" + xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getDonateNum()));
    // source line 314, bytecode pc 122
    this.addDonateLogAndRefresh();
    // source line 317, bytecode pc 137
    this.addDonateSucessSp(true);
},
    addDonateSucessSp: function(isAnimation) {
    var spSucess;
    // source line 323, bytecode pc 41
    (spSucess = xs.Factorys.Sprite.create("GuildDialog_juanxianwancheng", "GuildDialog"));
    // source line 325, bytecode pc 145
    xs.Utils.Node.attachNodes(this.ccbNode, spSucess, { desc: "lb", offset: cc.p(657, 214) }, { zOrder: 100, tag: 0 });
    if (isAnimation) {
        // source line 329, bytecode pc 171
        spSucess.setScale(3);
        // source line 337, bytecode pc 308
        spSucess.runAction(xs.Utils.Action.combineSequence([
    cc.EaseIn.create(cc.ScaleTo.create(0.3, 1), 3),
    cc.CallFunc.create(function() {
    // source line 339, bytecode pc 37
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_DonateSucess);
})
]));
    }
}
}));
// source line 350, bytecode pc 1809
(xs.Views.Union.UnionDonationLayer.create = function() {
    var layer;
    // source line 351, bytecode pc 28
    (layer = new xs.Views.Union.UnionDonationLayer());
    // source line 352, bytecode pc 51
    xs.log("UnionDonationLayer create");
    if ((layer && layer.init())) {
        // source line 354, bytecode pc 83
        return layer;
    }
    // source line 356, bytecode pc 85
    return null;
});
