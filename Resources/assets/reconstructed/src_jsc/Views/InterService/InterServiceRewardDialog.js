// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/InterService/InterServiceRewardDialog.js:1
// source line 151, bytecode pc 345
(xs.Views.InterServiceRewardDialog = xs.Views.HungerLayer.extend({
    name: "InterServiceRewardDialog",
    ctor: function() {
    // source line 11, bytecode pc 12
    this._super();
    // source line 12, bytecode pc 47
    cc.associateWithNative(this, xs.Views.HungerLayer);
},
    init: function(param) {
    if (!this._super()) {
        // source line 17, bytecode pc 19
        return false;
    }
    // source line 21, bytecode pc 34
    (this.rewardList = param.rewardList);
    // source line 22, bytecode pc 49
    (this.m_local = param.local);
    // source line 24, bytecode pc 57
    (this.btnClose = null);
    // source line 25, bytecode pc 65
    (this.btnConfirm = null);
    // source line 26, bytecode pc 73
    (this.btnCancel = null);
    // source line 29, bytecode pc 109
    (this.ccbNode = cc.BuilderReader.load("ccb3/InterServerhangRewardDialog.ccbi", this));
    // source line 30, bytecode pc 152
    this.ccbNode.setContentSize(cc.size(936, 610));
    // source line 31, bytecode pc 199
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 33, bytecode pc 252
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c" });
    // source line 35, bytecode pc 295
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbCfg, this);
    // source line 40, bytecode pc 356
    (this.tableView = xs.Views.Table.InterServiceRewardTableView.create({ width: 890, height: 410 }));
    // source line 42, bytecode pc 381
    this.tableView.refreshData(this.rewardList);
    // source line 45, bytecode pc 464
    xs.Utils.Node.attachNodes(this.ccbNode, this.tableView, { desc: "lb", offset: { x: 26, y: 110 } });
    // source line 49, bytecode pc 502
    this.btnClose.setOnClickCallBack(this.onBtnCloseClicked.bind(this));
    // source line 50, bytecode pc 540
    this.btnCancel.setOnClickCallBack(this.onBtnCloseClicked.bind(this));
    // source line 51, bytecode pc 578
    this.btnConfirm.setOnClickCallBack(this.onBtnConfirmClicked.bind(this));
    // source line 53, bytecode pc 580
    return true;
},
    onBtnCloseClicked: function() {
    // source line 57, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    onBtnConfirmClicked: function() {
    var _pkIds;
    // source line 61, bytecode pc 22
    xs.log("确认按钮点击");
    // source line 63, bytecode pc 38
    (_pkIds = this.getAddPkIds());
    // source line 64, bytecode pc 65
    xs.dump("_pkIds", _pkIds);
    if ((_pkIds.length > 0)) {
        // source line 67, bytecode pc 97
        this.requestHangReward(_pkIds);
    } else {
        // source line 72, bytecode pc 129
        xs.Views.Mgr.hideDialog();
    }
},
    requestHangReward: function(pk_Ids) {
    if (this.m_local) {
        // source line 94, bytecode pc 129
        xs.Tools.Net.requestLocalHangReward({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(), pk_ids: pk_Ids }, function(jsonData) {
    var _usedList;
    // source line 87, bytecode pc 15
    (_usedList = this.getAllUsedList());
    // source line 88, bytecode pc 57
    xs.Utils.Notify.postNotification(xs.Constant_Notify_InterService_HangRewardSuccess, _usedList);
    // source line 89, bytecode pc 84
    xs.Views.Mgr.hideDialog();
}, function(jsonData) {
}, this);
    } else {
        // source line 111, bytecode pc 253
        xs.Tools.Net.requestHangReward({ user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(), pk_ids: pk_Ids }, function(jsonData) {
    var _usedList;
    // source line 104, bytecode pc 15
    (_usedList = this.getAllUsedList());
    // source line 105, bytecode pc 57
    xs.Utils.Notify.postNotification(xs.Constant_Notify_InterService_HangRewardSuccess, _usedList);
    // source line 106, bytecode pc 84
    xs.Views.Mgr.hideDialog();
}, function(jsonData) {
}, this);
    }
},
    getAddPkIds: function() {
    var _pk_Ids, i;
    // source line 118, bytecode pc 8
    (_pk_Ids = []);
    // source line 119, bytecode pc 13
    (i = 0);
    while ((i < this.rewardList.length)) {
        if ((this.rewardList[i].is_selected && !this.rewardList[i].is_used)) {
            // source line 121, bytecode pc 98
            _pk_Ids.push(("" + this.rewardList[i].pk_id));
        }
        // source line 119, bytecode pc 112
        (i = (+i + 1));
    }
    // source line 124, bytecode pc 138
    return _pk_Ids;
},
    getAllUsedList: function() {
    var _usedList, i;
    // source line 128, bytecode pc 8
    (_usedList = []);
    // source line 129, bytecode pc 13
    (i = 0);
    while ((i < this.rewardList.length)) {
        if ((this.rewardList[i].is_selected || this.rewardList[i].is_used)) {
            // source line 132, bytecode pc 77
            (this.rewardList[i].is_selected = true);
            // source line 133, bytecode pc 94
            (this.rewardList[i].is_used = true);
            // source line 134, bytecode pc 120
            _usedList.push(this.rewardList[i]);
        }
        // source line 129, bytecode pc 134
        (i = (+i + 1));
    }
    // source line 137, bytecode pc 160
    return _usedList;
},
    ccbCfg: [
        {
            tag: 1,
            type: "ls",
            name: "lblTitle",
            id: "LS_huodong_title",
            stringId: "interService_hangRewardSel"
        },
        { tag: 10, type: "btn", name: "btnCancel", id: "Btn_Cancel" },
        { tag: 11, type: "btn", name: "btnConfirm", id: "Btn_Confirm_2" },
        { tag: 20, type: "btn", name: "btnClose", id: "Btn_Close" }
    ],
    setBaseTouchPriority: function(priority) {
    // source line 152, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 153, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 154, bytecode pc 54
    this.tableView.setTouchPriority(this.m_baseTouchPriority);
    // source line 155, bytecode pc 81
    this.btnCancel.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 156, bytecode pc 108
    this.btnConfirm.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 157, bytecode pc 135
    this.btnClose.setTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 161, bytecode pc 371
(xs.Views.InterServiceRewardDialog.create = function(param) {
    var ret;
    // source line 162, bytecode pc 23
    (ret = new xs.Views.InterServiceRewardDialog());
    if ((ret && ret.init(param))) {
        // source line 164, bytecode pc 59
        return ret;
    }
    // source line 166, bytecode pc 84
    xs.assert(false, "xs.Views.InterServiceRewardDialog.create err");
    // source line 167, bytecode pc 86
    return null;
});
// source line 172, bytecode pc 446
xs.Views.Mgr.registerDialog("InterServiceRewardDialog", { "class": xs.Views.InterServiceRewardDialog, styleType: xs.Constant_DlgStyleType_Small });
