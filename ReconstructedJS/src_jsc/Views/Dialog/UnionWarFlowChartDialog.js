// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/UnionWarFlowChartDialog.js:1
// source line 259, bytecode pc 1560
(xs.Views.Dialog.UnionWarFlowChartDialog = xs.Views.HungerLayer.extend({
    flowChartCfg: [
        { serverType: -1, group: 0, state: xs.Constant_UnionWar_State_ActiveStatistical },
        { serverType: -1, group: 0, state: xs.Constant_UnionWar_State_Apply },
        {
            serverType: xs.Constant_UnionWar_Server_Local,
            group: 8,
            state: xs.Constant_UnionWar_State_Formation
        },
        {
            serverType: xs.Constant_UnionWar_Server_Local,
            group: 8,
            state: xs.Constant_UnionWar_State_Combat,
            noDesc: true
        },
        {
            serverType: xs.Constant_UnionWar_Server_Local,
            group: 8,
            state: xs.Constant_UnionWar_State_ShowFight
        },
        {
            serverType: xs.Constant_UnionWar_Server_Local,
            group: 4,
            state: xs.Constant_UnionWar_State_Formation
        },
        {
            serverType: xs.Constant_UnionWar_Server_Local,
            group: 4,
            state: xs.Constant_UnionWar_State_Combat,
            noDesc: true
        },
        {
            serverType: xs.Constant_UnionWar_Server_Local,
            group: 4,
            state: xs.Constant_UnionWar_State_ShowFight
        },
        {
            serverType: xs.Constant_UnionWar_Server_Local,
            group: 2,
            state: xs.Constant_UnionWar_State_Formation
        },
        {
            serverType: xs.Constant_UnionWar_Server_Local,
            group: 2,
            state: xs.Constant_UnionWar_State_Combat,
            noDesc: true
        },
        {
            serverType: xs.Constant_UnionWar_Server_Local,
            group: 2,
            state: xs.Constant_UnionWar_State_ShowFight
        },
        {
            serverType: xs.Constant_UnionWar_Server_Local,
            group: 1,
            state: xs.Constant_UnionWar_State_Formation
        },
        {
            serverType: xs.Constant_UnionWar_Server_Local,
            group: 1,
            state: xs.Constant_UnionWar_State_Combat,
            noDesc: true
        },
        {
            serverType: xs.Constant_UnionWar_Server_Local,
            group: 1,
            state: xs.Constant_UnionWar_State_ShowFight
        },
        { serverType: -1, group: 0, state: xs.Constant_UnionWar_State_LocalEndAndSpanBefore, noDesc: true },
        {
            serverType: xs.Constant_UnionWar_Server_International,
            group: 8,
            state: xs.Constant_UnionWar_State_Formation
        },
        {
            serverType: xs.Constant_UnionWar_Server_International,
            group: 8,
            state: xs.Constant_UnionWar_State_Combat,
            noDesc: true
        },
        {
            serverType: xs.Constant_UnionWar_Server_International,
            group: 8,
            state: xs.Constant_UnionWar_State_ShowFight
        },
        {
            serverType: xs.Constant_UnionWar_Server_International,
            group: 4,
            state: xs.Constant_UnionWar_State_Formation
        },
        {
            serverType: xs.Constant_UnionWar_Server_International,
            group: 4,
            state: xs.Constant_UnionWar_State_Combat,
            noDesc: true
        },
        {
            serverType: xs.Constant_UnionWar_Server_International,
            group: 4,
            state: xs.Constant_UnionWar_State_ShowFight
        },
        {
            serverType: xs.Constant_UnionWar_Server_International,
            group: 2,
            state: xs.Constant_UnionWar_State_Formation
        },
        {
            serverType: xs.Constant_UnionWar_Server_International,
            group: 2,
            state: xs.Constant_UnionWar_State_Combat,
            noDesc: true
        },
        {
            serverType: xs.Constant_UnionWar_Server_International,
            group: 2,
            state: xs.Constant_UnionWar_State_ShowFight
        },
        {
            serverType: xs.Constant_UnionWar_Server_International,
            group: 1,
            state: xs.Constant_UnionWar_State_Formation
        },
        {
            serverType: xs.Constant_UnionWar_Server_International,
            group: 1,
            state: xs.Constant_UnionWar_State_Combat,
            noDesc: true
        },
        {
            serverType: xs.Constant_UnionWar_Server_International,
            group: 1,
            state: xs.Constant_UnionWar_State_ShowFight
        },
        { serverType: -1, group: 0, state: xs.Constant_UnionWar_State_EndSpanNextWeekBefore, noDesc: true }
    ],
    ccbNodeCfg: [
        { tag: 2, type: "btn", name: "btnClose", id: "Btn_Close" },
        { tag: 1, type: "ls", name: "lblTitle", id: "LS_popUI1", stringId: "uwar_ep_title" }
    ],
    init: function(param) {
    var _stageDetail, i, obj;
    if (!this._super()) {
        // source line 181, bytecode pc 19
        return false;
    }
    // source line 185, bytecode pc 28
    (this._stateNowIdx = -1);
    // source line 186, bytecode pc 36
    (this.btnClose = null);
    // source line 189, bytecode pc 70
    (this.ccbNode = xs.ccb_reader.load("ccb3/unionWarFlowChartDialog.ccbi"));
    // source line 190, bytecode pc 113
    this.ccbNode.setContentSize(cc.size(856, 615));
    // source line 191, bytecode pc 160
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 192, bytecode pc 213
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c" });
    // source line 193, bytecode pc 256
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbNodeCfg, this);
    // source line 194, bytecode pc 277
    this.lblTitle.setFontSize(48);
    // source line 197, bytecode pc 315
    (this.tableView = xs.Views.Table.UnionWarFlowChartTableView.create());
    // source line 198, bytecode pc 356
    this.tableView.setPosition(cc.p(34, 10));
    // source line 199, bytecode pc 381
    this.tableView.setData(this.flowChartCfg);
    // source line 201, bytecode pc 422
    xs.Utils.Node.attachNodes(this.ccbNode, this.tableView);
    // source line 204, bytecode pc 484
    (_stageDetail = xs.Profile.GameData.Mgr.getInstance().UnionWar.getUnionWar().getUnionWarStageDetail());
    // source line 206, bytecode pc 489
    (i = 0);
    while ((i < this.flowChartCfg.length)) {
        // source line 207, bytecode pc 509
        (obj = this.flowChartCfg[i]);
        if ((obj.state == _stageDetail.state)) {
            if (((obj.state == xs.Constant_UnionWar_State_ActiveStatistical) || ((obj.state == xs.Constant_UnionWar_State_Apply) || ((obj.state == xs.Constant_UnionWar_State_LocalEndAndSpanBefore) || (obj.state == xs.Constant_UnionWar_State_EndSpanNextWeekBefore))))) {
                // source line 214, bytecode pc 640
                (this._stateNowIdx = i);
                break;
            } else {
                if (((obj.serverType == _stageDetail.serverType) && (obj.group == _stageDetail.group))) {
                    // source line 221, bytecode pc 705
                    (this._stateNowIdx = i);
                    break;
                }
            }
        }
        // source line 206, bytecode pc 724
        (i = (+i + 1));
    }
    // source line 231, bytecode pc 771
    this.tableView.setStateNowIdx(this._stateNowIdx);
    // source line 233, bytecode pc 809
    this.btnClose.setOnClickCallBack(this.onBtnCloseClicked.bind(this));
    // source line 235, bytecode pc 811
    return true;
},
    onEnter: function() {
    var _cellHeight, _offY;
    // source line 239, bytecode pc 12
    this._super();
    // source line 241, bytecode pc 42
    (_cellHeight = this.tableView.makeCellSize(null, 1).height);
    // source line 242, bytecode pc 94
    (_offY = (-1 * ((_cellHeight * (this.flowChartCfg.length - this._stateNowIdx)) - this.tableView.makeViewSize().height)));
    if ((_offY > 0)) {
        // source line 245, bytecode pc 109
        (_offY = 0);
    }
    // source line 248, bytecode pc 152
    this.tableView.setContentOffset(cc.p(0, _offY), true);
},
    onExit: function() {
    // source line 252, bytecode pc 12
    this._super();
},
    onBtnCloseClicked: function() {
    // source line 256, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    setBaseTouchPriority: function(priority) {
    // source line 260, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 261, bytecode pc 36
    this.btnClose.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 262, bytecode pc 63
    this.tableView.setTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 267, bytecode pc 1591
(xs.Views.Dialog.UnionWarFlowChartDialog.create = function(param) {
    var dialog;
    // source line 268, bytecode pc 28
    (dialog = new xs.Views.Dialog.UnionWarFlowChartDialog());
    if ((dialog && dialog.init(param))) {
        // source line 270, bytecode pc 64
        return dialog;
    }
    // source line 272, bytecode pc 87
    xs.warn("xs.Views.Dialog.UnionWarFlowChartDialog.create error!");
    // source line 273, bytecode pc 89
    return null;
});
// source line 278, bytecode pc 1671
xs.Views.Mgr.registerDialog("UnionWarFlowChartDialog", { "class": xs.Views.Dialog.UnionWarFlowChartDialog, styleType: xs.Constant_DlgStyleType_Small });
