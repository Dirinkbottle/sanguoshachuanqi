// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/InterService/InterServiceRewardPreviewDialog.js:1
// source line 9, bytecode pc 11
(xs.Constant_RewardListDialog_ShowType_Preview = 1);
// source line 10, bytecode pc 24
(xs.Constant_RewardListDialog_ShowType_Get = 2);
// source line 110, bytecode pc 310
(xs.Views.InterServiceRewardPreviewDialog = xs.Views.HungerLayer.extend({
    name: "InterServiceRewardPreviewDialog",
    ctor: function() {
    // source line 17, bytecode pc 12
    this._super();
    // source line 18, bytecode pc 47
    cc.associateWithNative(this, xs.Views.HungerLayer);
},
    init: function(param) {
    if (!this._super()) {
        // source line 23, bytecode pc 19
        return false;
    }
    // source line 26, bytecode pc 34
    (this.rewardList = param.rewardList);
    // source line 27, bytecode pc 65
    (this.showType = (param.showType || xs.Constant_RewardListDialog_ShowType_Preview));
    if ((this.showType == xs.Constant_RewardListDialog_ShowType_Preview)) {
        // source line 31, bytecode pc 113
        (this.userName = (param.userName || ""));
        // source line 32, bytecode pc 121
        (this.addHeight = 0);
    } else {
        if ((this.showType == xs.Constant_RewardListDialog_ShowType_Get)) {
            // source line 35, bytecode pc 156
            (this.userName = null);
            // source line 36, bytecode pc 165
            (this.addHeight = 30);
        }
    }
    // source line 39, bytecode pc 173
    (this.lblTitle = null);
    // source line 40, bytecode pc 181
    (this.lblDesc = null);
    // source line 41, bytecode pc 189
    (this.bgPanel = null);
    // source line 42, bytecode pc 197
    (this.btnClose = null);
    // source line 45, bytecode pc 233
    (this.ccbNode = cc.BuilderReader.load("ccb3/InterServiceRewardDialog.ccbi", this));
    // source line 46, bytecode pc 276
    this.ccbNode.setContentSize(cc.size(584, 400));
    // source line 47, bytecode pc 323
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 49, bytecode pc 376
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c" });
    // source line 51, bytecode pc 419
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbCfg, this);
    // source line 56, bytecode pc 487
    (this.tableView = xs.Views.Table.InterServiceRewardPreviewTableView.create({ width: 540, height: (258 + this.addHeight) }));
    // source line 58, bytecode pc 512
    this.tableView.refreshData(this.rewardList);
    // source line 61, bytecode pc 595
    xs.Utils.Node.attachNodes(this.ccbNode, this.tableView, { desc: "lb", offset: { x: 28, y: 26 } });
    // source line 65, bytecode pc 633
    this.btnClose.setOnClickCallBack(this.onBtnCloseClicked.bind(this));
    if ((this.showType == xs.Constant_RewardListDialog_ShowType_Preview)) {
        // source line 70, bytecode pc 706
        this.lblTitle.setString(xs.Tools.String.createString("interService_hangRewardPreview"));
        // source line 71, bytecode pc 773
        this.lblDesc.setString(xs.Tools.String.createStringWithArgsArray("interService_rewardCon", [ this.userName ]));
    } else {
        if ((this.showType == xs.Constant_RewardListDialog_ShowType_Get)) {
            // source line 75, bytecode pc 851
            this.lblTitle.setString(xs.Tools.String.createString("interService_getReward"));
            // source line 78, bytecode pc 939
            this.bgPanel.setContentSize(cc.size(this.bgPanel.getContentSize().width, (this.bgPanel.getContentSize().height + this.addHeight)));
            // source line 79, bytecode pc 963
            this.lblDesc.setString("");
        }
    }
    // source line 82, bytecode pc 965
    return true;
},
    setCloseCallFunc: function(func) {
    if (func) {
        // source line 87, bytecode pc 17
        (this.closeFunc = func);
    }
},
    onBtnCloseClicked: function() {
    // source line 92, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    if (this.closeFunc) {
        // source line 95, bytecode pc 50
        this.closeFunc();
    }
},
    ccbCfg: [
        { tag: 1, type: "ls", name: "lblTitle", id: "LS_huodong_title" },
        { tag: 2, type: "ls", name: "lblDesc", id: "LS_liebiaoInf" },
        { tag: 3, name: "bgPanel" },
        { tag: 20, type: "btn", name: "btnClose", id: "Btn_Close" }
    ],
    setBaseTouchPriority: function(priority) {
    // source line 111, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 112, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 113, bytecode pc 54
    this.tableView.setTouchPriority(this.m_baseTouchPriority);
    // source line 114, bytecode pc 81
    this.btnClose.setTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 118, bytecode pc 336
(xs.Views.InterServiceRewardPreviewDialog.create = function(param) {
    var ret;
    // source line 119, bytecode pc 23
    (ret = new xs.Views.InterServiceRewardPreviewDialog());
    if ((ret && ret.init(param))) {
        // source line 121, bytecode pc 59
        return ret;
    }
    // source line 123, bytecode pc 84
    xs.assert(false, "xs.Views.InterServiceRewardPreviewDialog.create err");
    // source line 124, bytecode pc 86
    return null;
});
// source line 129, bytecode pc 411
xs.Views.Mgr.registerDialog("InterServiceRewardPreviewDialog", { "class": xs.Views.InterServiceRewardPreviewDialog, styleType: xs.Constant_DlgStyleType_Small });
