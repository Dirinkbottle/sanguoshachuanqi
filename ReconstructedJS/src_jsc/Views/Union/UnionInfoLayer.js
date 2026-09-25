// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Union/UnionInfoLayer.js:1
// source line 303, bytecode pc 1119
(xs.Views.Union.UnionInfoLayer = xs.Views.Union.UnionBaseLayer.extend({
    ctor: function() {
    // source line 7, bytecode pc 12
    this._super();
},
    cfg: {
        ccbCfg: [
            { tag: 1, type: "ls", name: "lblUnionName", id: "LS_wujiangInf1", string: "" },
            { tag: 2, type: "ls", name: "lblUnionLv", id: "LS_Lv", string: "0" },
            { tag: 3, type: "ls", name: "lblUnionId", id: "LS_wujiangInf1", string: "ID:" },
            { tag: 4, type: "ls", name: "lbl_UnionName", id: "LS_wujiangInf2", stringId: "auto_name_544" },
            { tag: 5, type: "ls", name: "lbl_PresidentName", id: "LS_wujiangInf2", stringId: "auto_name_545" },
            { tag: 6, type: "ls", name: "lbl_Rank", id: "LS_wujiangInf2", stringId: "auto_name_546" },
            { tag: 7, type: "ls", name: "lbl_MemberNum", id: "LS_wujiangInf2", stringId: "auto_name_547" },
            { tag: 8, type: "ls", name: "lblUnionExp", id: "LS_EXPInf", string: " 0/28 " },
            { tag: 10, type: "ls", name: "lblLeader_nickname", id: "LS_Lv", string: "" },
            { tag: 11, type: "ls", name: "lblRank", id: "LS_Lv", string: "0" },
            { tag: 12, type: "ls", name: "lblMemberNum", id: "LS_Lv", string: "0/1" },
            { tag: 20, type: "btn", name: "btnEditNotice", id: "Btn_EditNotice" },
            { tag: 21, type: "btn", name: "btnEditUnionSign", id: "Btn_EditUnionSign" },
            { tag: 22, type: "btn", name: "btnExitUnion", id: "Btn_ExitUnion" }
        ],
        expProgressTimer: { tag: 9 },
        btnCfg: {
            btnEditNotice: { priority: -1 },
            btnEditUnionSign: { priority: -1 },
            btnExitUnion: { priority: -1 }
        }
    },
    init: function(param) {
    var logs;
    if (!this._super()) {
        // source line 43, bytecode pc 19
        return false;
    }
    // source line 46, bytecode pc 27
    (this.isNeedRefresh = true);
    // source line 47, bytecode pc 35
    (this.m_baseTouchPriority = 0);
    // source line 49, bytecode pc 43
    (this.unionInfo = null);
    // source line 50, bytecode pc 55
    (this.unionLog = []);
    // source line 53, bytecode pc 63
    (this.lblUnionName = null);
    // source line 54, bytecode pc 71
    (this.lblUnionLv = null);
    // source line 55, bytecode pc 79
    (this.lblUnionId = null);
    // source line 56, bytecode pc 87
    (this.lbl_UnionName = null);
    // source line 57, bytecode pc 95
    (this.lbl_PresidentName = null);
    // source line 58, bytecode pc 103
    (this.lbl_Rank = null);
    // source line 59, bytecode pc 111
    (this.lbl_MemberNum = null);
    // source line 60, bytecode pc 119
    (this.lblUnionExp = null);
    // source line 61, bytecode pc 127
    (this.expProgressTimer = null);
    // source line 62, bytecode pc 135
    (this.lblLeader_nickname = null);
    // source line 63, bytecode pc 143
    (this.lblRank = null);
    // source line 64, bytecode pc 151
    (this.lblMemberNum = null);
    // source line 66, bytecode pc 159
    (this.btnEditNotice = null);
    // source line 67, bytecode pc 167
    (this.btnEditUnionSign = null);
    // source line 68, bytecode pc 175
    (this.btnExitUnion = null);
    // source line 70, bytecode pc 211
    (this.ccbNode = cc.BuilderReader.load("ccb3/GuildMain.ccbi", this));
    // source line 71, bytecode pc 254
    this.ccbNode.setContentSize(cc.size(800, 460));
    // source line 72, bytecode pc 293
    this.ccbNode.setAnchorPoint(cc.p(0, 0));
    // source line 73, bytecode pc 346
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "lb" });
    // source line 74, bytecode pc 394
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 77, bytecode pc 427
    (this.expProgressTimer = xs.Views.BlueProgressTimer.create());
    // source line 78, bytecode pc 451
    this.expProgressTimer.setScaleX(1.1);
    // source line 79, bytecode pc 475
    this.expProgressTimer.setScaleY(0.6);
    // source line 80, bytecode pc 528
    xs.Utils.replaceNode(this.ccbNode, this.cfg.expProgressTimer.tag, this.expProgressTimer);
    // source line 83, bytecode pc 573
    (this.lblNotice = xs.Factorys.Label.createByStyleIdWithString("LS_liaotian_5", ""));
    // source line 84, bytecode pc 614
    this.lblNotice.setDimensions(cc.size(416, 0));
    // source line 85, bytecode pc 643
    this.lblNotice.setHorizontalAlignment(cc.TEXT_ALIGNMENT_LEFT);
    // source line 86, bytecode pc 682
    this.lblNotice.setAnchorPoint(cc.p(0, 1));
    // source line 87, bytecode pc 724
    this.lblNotice.setPosition(cc.p(22, 176));
    // source line 88, bytecode pc 765
    xs.Utils.Node.attachNodes(this.ccbNode, this.lblNotice);
    // source line 91, bytecode pc 774
    (logs = []);
    // source line 92, bytecode pc 839
    (this.logTableView = xs.Views.Table.UnionLogTableView.create(logs, { width: 440, height: 295 }));
    // source line 93, bytecode pc 925
    xs.Utils.Node.attachNodes(this.ccbNode, this.logTableView, { desc: "lb", offset: cc.p(466, 86) });
    // source line 95, bytecode pc 950
    this.btnEditNotice.setOnClickCallBack(this.onBtnEditNoticeClick);
    // source line 96, bytecode pc 975
    this.btnEditUnionSign.setOnClickCallBack(this.onBtnEditUnionSignClick);
    // source line 97, bytecode pc 1000
    this.btnExitUnion.setOnClickCallBack(this.onBtnExitUnionClick);
    // source line 99, bytecode pc 1054
    (this.unionInfo = xs.Profile.GameData.Mgr.getInstance().Union.getUnion());
    // source line 100, bytecode pc 1119
    (this.unionLog = xs.Profile.GameData.Mgr.getInstance().Union.getUnion().getUnionLog());
    if ((this.unionInfo.getUnionId() != 0)) {
        // source line 104, bytecode pc 1156
        this.refreshUI();
    } else {
        // source line 108, bytecode pc 1174
        this.requestGetUnioninfo();
    }
    // source line 113, bytecode pc 1187
    this.checkRole();
    // source line 114, bytecode pc 1189
    return true;
},
    onEnter: function() {
    // source line 118, bytecode pc 12
    this._super();
    // source line 121, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.refreshUnionInfo, xs.Constant_Notify_Event_refreshUnionInfo);
    // source line 122, bytecode pc 106
    xs.Utils.Notify.addObserver(this, this.addUnionLogAndRefresh, xs.Constant_Notify_Event_AddUnionLogAndRefresh);
    // source line 123, bytecode pc 153
    xs.Utils.Notify.addObserver(this, this.refreshUnionUserNum, xs.Constant_Notify_Union_PeopleChange);
    // source line 124, bytecode pc 200
    xs.Utils.Notify.addObserver(this, this.refreshUnionLeaderNickname, xs.Constant_Notify_Union_LeaderNicknameChange);
},
    onExit: function() {
    // source line 128, bytecode pc 39
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_refreshUnionInfo);
    // source line 129, bytecode pc 79
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_AddUnionLogAndRefresh);
    // source line 130, bytecode pc 119
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Union_PeopleChange);
    // source line 131, bytecode pc 159
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Union_LeaderNicknameChange);
    // source line 132, bytecode pc 172
    this._super();
},
    refreshFromMenuClick: function() {
    // source line 136, bytecode pc 22
    xs.log("refreshFromMenuClick unionInfoLayer");
    if (this.isNeedRefresh) {
        // source line 138, bytecode pc 46
        this.checkRole();
    }
},
    requestGetUnioninfo: function() {
    // source line 153, bytecode pc 123
    xs.Tools.Net.requestGetUnionInfo({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId() }, function(resData) {
    // source line 148, bytecode pc 16
    this.getUnionInfoCallBack(resData);
}.bind(this), function(resData) {
}, this);
},
    getUnionInfoCallBack: function(resData) {
    if (resData.result) {
        // source line 161, bytecode pc 80
        xs.Profile.GameData.Mgr.getInstance().Union.getUnion().loadJson(resData.return_info);
        // source line 163, bytecode pc 134
        (this.unionInfo = xs.Profile.GameData.Mgr.getInstance().Union.getUnion());
        // source line 164, bytecode pc 199
        (this.unionLog = xs.Profile.GameData.Mgr.getInstance().Union.getUnion().getUnionLog());
        // source line 166, bytecode pc 212
        this.refreshUI();
    }
},
    refreshUI: function() {
    // source line 172, bytecode pc 12
    this.refreshUnionInfo();
    // source line 173, bytecode pc 25
    this.checkRole();
    // source line 174, bytecode pc 47
    this.refreshUnionLog(this.unionLog, false);
},
    refreshUnionInfo: function() {
    // source line 179, bytecode pc 41
    this.lblUnionId.setString(("ID: " + this.unionInfo.getUnionId()));
    // source line 180, bytecode pc 77
    this.lblUnionName.setString(this.unionInfo.getUnionName());
    // source line 181, bytecode pc 113
    this.lblUnionLv.setString(this.unionInfo.getUnionLevel());
    // source line 182, bytecode pc 185
    this.lblUnionExp.setString(((((" " + this.unionInfo.getUnionExp()) + "/") + this.unionInfo.getUnionLevelUpExp()) + " "));
    // source line 183, bytecode pc 242
    this.expProgressTimer.setPercentage(((this.unionInfo.getUnionExp() / this.unionInfo.getUnionLevelUpExp()) * 100));
    // source line 187, bytecode pc 352
    this.lblLeader_nickname.setString(((this.unionInfo.getLeaderNickname().length > 8) ? (this.unionInfo.getLeaderNickname().substring(0, 7) + "...") : this.unionInfo.getLeaderNickname()));
    // source line 188, bytecode pc 388
    this.lblRank.setString(this.unionInfo.getUnionRank());
    // source line 189, bytecode pc 454
    this.lblMemberNum.setString(((("" + this.unionInfo.getUserNum()) + "/") + this.unionInfo.getUserLimit()));
    // source line 190, bytecode pc 501
    this.lblNotice.setString((this.unionInfo.getNotice() || ""));
},
    refreshUnionUserNum: function() {
    var unionInfo;
    // source line 195, bytecode pc 50
    (unionInfo = xs.Profile.GameData.Mgr.getInstance().Union.getUnion());
    // source line 196, bytecode pc 98
    this.lblMemberNum.setString(((("" + unionInfo.user_num) + "/") + unionInfo.user_limit));
},
    refreshUnionLeaderNickname: function() {
    // source line 201, bytecode pc 41
    this.lblLeader_nickname.setString(("" + this.unionInfo.getLeaderNickname()));
},
    addUnionLogAndRefresh: function(newLog) {
    // source line 206, bytecode pc 21
    this.unionLog.push(newLog);
    // source line 207, bytecode pc 43
    this.refreshUnionLog(this.unionLog, true);
},
    refreshUnionLog: function(union_log, isAnimation) {
    var logs, i, logModel;
    // source line 212, bytecode pc 8
    (logs = []);
    // source line 213, bytecode pc 13
    (i = 0);
    while ((i < union_log.length)) {
        // source line 214, bytecode pc 73
        (logModel = xs.Models.UnionLog.createWithData({ content: union_log[i].content }));
        // source line 215, bytecode pc 92
        logs.push(logModel);
        // source line 213, bytecode pc 106
        (i = (+i + 1));
    }
    // source line 217, bytecode pc 138
    (this.logTableView.arrayModel = null);
    // source line 218, bytecode pc 153
    (this.logTableView.arrayModel = logs);
    // source line 219, bytecode pc 175
    this.logTableView.refreshTableViewAutoOffset(isAnimation);
},
    checkRole: function() {
    // source line 225, bytecode pc 81
    xs.log(("role = " + xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getUserRole()));
    if ((xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getUserRole() == 1)) {
        // source line 227, bytecode pc 166
        this.btnEditNotice.setVisible(true);
        // source line 228, bytecode pc 186
        this.btnEditUnionSign.setVisible(true);
    } else {
        // source line 231, bytecode pc 211
        this.btnEditNotice.setVisible(false);
        // source line 232, bytecode pc 231
        this.btnEditUnionSign.setVisible(false);
    }
},
    onBtnEditNoticeClick: function() {
    if (xs.isSpecialTime) {
        // source line 240, bytecode pc 74
        xs.Views.Mgr.showToast(xs.Tools.String.createString("str_specialtime"));
        // source line 241, bytecode pc 76
        return void 0;
    }
    // source line 243, bytecode pc 130
    xs.Views.Mgr.showDialogByName("UnionChgNoticeSignDialog", xs.Views.Dialog.UnionChgNoticeSignDialog_Type_Notice);
},
    onBtnEditUnionSignClick: function() {
    if (xs.isSpecialTime) {
        // source line 250, bytecode pc 74
        xs.Views.Mgr.showToast(xs.Tools.String.createString("str_specialtime"));
        // source line 251, bytecode pc 76
        return void 0;
    }
    // source line 253, bytecode pc 130
    xs.Views.Mgr.showDialogByName("UnionChgNoticeSignDialog", xs.Views.Dialog.UnionChgNoticeSignDialog_Type_Sign);
},
    onBtnExitUnionClick: function() {
    var dialog;
    // source line 285, bytecode pc 182
    (dialog = xs.Views.Mgr.showDialogByName("common", {
    title: "",
    content: "",
    leftText: xs.Tools.String.createString("auto_name_146"),
    rightText: xs.Tools.String.createString("auto_name_465"),
    leftCB: function() {
    // source line 264, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this),
    rightCB: function() {
    // source line 273, bytecode pc 171
    xs.Tools.Net.requestExitUnion({
    union_id: xs.Profile.GameData.Mgr.getInstance().Union.getUnion().getUnionId(),
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    forcepush: true
}, function(resData) {
    if (resData.result) {
        // source line 275, bytecode pc 72
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_548"));
        // source line 277, bytecode pc 131
        xs.Profile.GameData.Mgr.getInstance().Union.getUnion().clearUnionInfo();
        // source line 278, bytecode pc 190
        xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().clearUnionUserInfo();
        // source line 280, bytecode pc 217
        xs.Views.Mgr.hideDialog();
        // source line 281, bytecode pc 244
        xs.Views.Mgr.hideDialog();
    }
});
}.bind(this)
}));
    // source line 287, bytecode pc 200
    (dialog = dialog.getRealDialog());
    // source line 288, bytecode pc 248
    dialog.setContentText(xs.Tools.String.createString("auto_name_549"));
    // source line 289, bytecode pc 296
    dialog.setTitleByString(xs.Tools.String.createString("auto_name_5"));
},
    refresh: function() {
    // source line 293, bytecode pc 22
    xs.log("刷新UnionInfo layer");
    if (this.isNeedRefresh) {
        // source line 296, bytecode pc 56
        xs.log("ss");
        // source line 299, bytecode pc 64
        (this.isNeedRefresh = false);
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 304, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 305, bytecode pc 56
    this.btnEditNotice.setTouchPriority((this.m_baseTouchPriority + this.cfg.btnCfg.btnEditNotice.priority));
    // source line 306, bytecode pc 103
    this.btnEditUnionSign.setTouchPriority((this.m_baseTouchPriority + this.cfg.btnCfg.btnEditUnionSign.priority));
    // source line 307, bytecode pc 150
    this.btnExitUnion.setTouchPriority((this.m_baseTouchPriority + this.cfg.btnCfg.btnExitUnion.priority));
    // source line 308, bytecode pc 194
    this.logTableView.setTouchPriority((priority + this.cfg.btnCfg.btnExitUnion.priority));
}
}));
// source line 313, bytecode pc 1150
(xs.Views.Union.UnionInfoLayer.create = function(param) {
    var layer;
    // source line 314, bytecode pc 28
    (layer = new xs.Views.Union.UnionInfoLayer());
    if ((layer && layer.init(param))) {
        // source line 316, bytecode pc 64
        return layer;
    }
    // source line 318, bytecode pc 66
    return null;
});
