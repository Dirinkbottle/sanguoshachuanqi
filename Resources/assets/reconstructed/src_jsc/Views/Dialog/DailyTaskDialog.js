// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/DailyTaskDialog.js:1
// source line 127, bytecode pc 364
(xs.Views.Dialog.DailyTaskDialog = xs.Views.HungerLayer.extend({
    name: "DailyTaskDialog",
    clickType: { previous: 1, next: 2 },
    cfg: {
        btnClose: { priority: -1 },
        listView: { priority: -1 },
        ccbCfg: [
            { tag: 2, type: "btn", name: "btnClose", id: "Btn_Close" },
            { tag: 1, type: "ls", name: "lblTitle", id: "LS_huodong_title" },
            { tag: 5, type: "btn", name: "m_getAllAwardButton", id: "BS_Btn1", stringId: "GetAllAwards" }
        ]
    },
    init: function() {
    if (!this._super()) {
        // source line 28, bytecode pc 19
        return false;
    }
    // source line 31, bytecode pc 27
    (this.btnClose = null);
    // source line 32, bytecode pc 35
    (this.lblTitle = null);
    // source line 33, bytecode pc 43
    (this.m_getAllAwardButton = null);
    // source line 36, bytecode pc 79
    (this.ccbNode = cc.BuilderReader.load("ccb3/TaskDialog.ccbi", this));
    // source line 37, bytecode pc 122
    this.ccbNode.setContentSize(cc.size(935, 613));
    // source line 38, bytecode pc 169
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 39, bytecode pc 222
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c" });
    // source line 40, bytecode pc 270
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 43, bytecode pc 321
    this.lblTitle.setString(xs.Tools.String.createString("auto_name_342"));
    // source line 45, bytecode pc 382
    (this.taskTableView = xs.Views.Table.TaskTableView.create({ width: 895, height: 440 }));
    // source line 46, bytecode pc 402
    this.taskTableView.setKeepOldOffsetFlag(true);
    // source line 47, bytecode pc 487
    xs.Utils.Node.attachNodes(this.ccbNode, this.taskTableView, { desc: "lb", offset: cc.p(26, 90) });
    // source line 50, bytecode pc 511
    this.btnClose.setOnClickCallBack(function() {
    // source line 51, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 54, bytecode pc 549
    this.m_getAllAwardButton.setOnClickCallBack(this.getAllAwardButtonTouch.bind(this));
    // source line 56, bytecode pc 551
    return true;
},
    getAllAwardButtonTouch: function() {
    // source line 84, bytecode pc 129
    xs.Tools.Net.requestTaskMultiRecieve({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    forcepush: true
}, function(data) {
    var param;
    // source line 71, bytecode pc 57
    xs.Utils.Notify.postNotification(xs.Constant_Notify_TaskReceive, { list: data.task_list });
    if (data.result) {
        // source line 75, bytecode pc 80
        (param = {});
        // source line 76, bytecode pc 109
        (param.adds = (data.list || {}));
        // source line 77, bytecode pc 150
        (param.title = xs.Tools.String.createString("auto_name_128"));
        // source line 78, bytecode pc 187
        xs.Views.Mgr.showDialogByName("UseItemSuccessDialog", param);
    }
}.bind(this), function(data) {
}, this);
},
    onEnter: function() {
    // source line 89, bytecode pc 12
    this._super();
    // source line 90, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.taskGetListCallBack, xs.Constant_Notify_TaskReceive);
    // source line 92, bytecode pc 115
    xs.Tools.Net.requestTaskGetList({ forcepush: true }, this.taskGetListCallBack, this.taskGetListCallBackErr, this);
},
    onExit: function() {
    // source line 96, bytecode pc 39
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_TaskReceive);
    // source line 97, bytecode pc 52
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 101, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 102, bytecode pc 51
    this.btnClose.setTouchPriority((this.m_baseTouchPriority + this.cfg.btnClose.priority));
    // source line 103, bytecode pc 93
    this.taskTableView.setTouchPriority((this.m_baseTouchPriority + this.cfg.listView.priority));
    // source line 104, bytecode pc 135
    this.m_getAllAwardButton.setTouchPriority((this.m_baseTouchPriority + this.cfg.btnClose.priority));
},
    taskGetListCallBack: function(data) {
    var arrModels, i, model;
    // source line 111, bytecode pc 47
    xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
    // source line 113, bytecode pc 56
    (arrModels = []);
    // source line 114, bytecode pc 61
    (i = 0);
    while ((i < data.list.length)) {
        // source line 115, bytecode pc 110
        (model = xs.Models.Task.createWithData(data.list[i]));
        // source line 116, bytecode pc 129
        arrModels.push(model);
        // source line 114, bytecode pc 143
        (i = (+i + 1));
    }
    // source line 119, bytecode pc 188
    arrModels.sort(function(taskData1, taskData2) {
    // source line 120, bytecode pc 42
    return ((taskData1.getSortPriority() > taskData2.getSortPriority()) ? 1 : -1);
});
    // source line 124, bytecode pc 210
    this.taskTableView.refreshData(arrModels);
},
    taskGetListCallBackErr: function(data) {
    // source line 128, bytecode pc 20
    xs.dump(data);
}
}));
// source line 133, bytecode pc 395
(xs.Views.Dialog.DailyTaskDialog.create = function() {
    var ret;
    // source line 134, bytecode pc 28
    (ret = new xs.Views.Dialog.DailyTaskDialog());
    if ((ret && ret.init())) {
        // source line 136, bytecode pc 60
        return ret;
    }
    // source line 138, bytecode pc 62
    return null;
});
// source line 144, bytecode pc 485
xs.Views.Mgr.registerDialog("DailyTaskDialog", {
    "class": xs.Views.Dialog.DailyTaskDialog,
    styleType: xs.Constant_DlgStyleType_Large,
    area: "DlgCmn"
});
