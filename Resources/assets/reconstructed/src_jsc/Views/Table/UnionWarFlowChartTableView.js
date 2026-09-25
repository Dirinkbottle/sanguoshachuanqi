// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/UnionWarFlowChartTableView.js:1
// source line 156, bytecode pc 432
(xs.Views.UnionWarFlowChartCell = cc.TableViewCell.extend({
    draw: function(ctx) {
    // source line 7, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 11, bytecode pc 12
    this._super();
    // source line 12, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function() {
    if (!this._super()) {
        // source line 17, bytecode pc 19
        return false;
    }
    // source line 19, bytecode pc 27
    (this.data = null);
    // source line 20, bytecode pc 35
    (this.idx = 0);
    // source line 21, bytecode pc 43
    (this.spSelectedBg = null);
    // source line 22, bytecode pc 51
    (this.spJianTou = null);
    // source line 23, bytecode pc 59
    (this.spDescBg = null);
    // source line 24, bytecode pc 67
    (this.spState1 = null);
    // source line 25, bytecode pc 75
    (this.spState2 = null);
    // source line 26, bytecode pc 83
    (this.spState3 = null);
    // source line 27, bytecode pc 91
    (this.lblTime = null);
    // source line 28, bytecode pc 99
    (this.lblTitle = null);
    // source line 29, bytecode pc 107
    (this.lblDesc = null);
    // source line 30, bytecode pc 115
    (this.spClock = null);
    // source line 32, bytecode pc 149
    (this.ccbNode = xs.ccb_reader.load("ccb3/unionWarFlowChartCell.ccbi"));
    // source line 33, bytecode pc 191
    this.ccbNode.setContentSize(cc.size(788, 80));
    // source line 34, bytecode pc 227
    xs.Utils.Node.attachNodes(this, this.ccbNode);
    // source line 35, bytecode pc 270
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbNodeCfg, this);
    // source line 37, bytecode pc 290
    this.spClock.setVisible(false);
    // source line 39, bytecode pc 292
    return true;
},
    updateCell: function(data, idx) {
    var _strState, _strServerType, _str, _strTime, _strTitle, _strDesc, _isDescShow;
    // source line 43, bytecode pc 9
    (this.data = data);
    // source line 44, bytecode pc 19
    (this.idx = idx);
    if ((data.state == xs.Constant_UnionWar_State_ActiveStatistical)) {
        // source line 57, bytecode pc 76
        (_str = "uwar_ep_active");
    } else {
        if ((data.state == xs.Constant_UnionWar_State_Apply)) {
            // source line 60, bytecode pc 114
            (_str = "uwar_ep_sign");
        } else {
            if ((data.state == xs.Constant_UnionWar_State_LocalEndAndSpanBefore)) {
                // source line 63, bytecode pc 152
                (_str = "uwar_ep_l_1_end");
            } else {
                if ((data.state == xs.Constant_UnionWar_State_EndSpanNextWeekBefore)) {
                    // source line 66, bytecode pc 190
                    (_str = "uwar_ep_i_1_end");
                } else {
                    if ((data.state == xs.Constant_UnionWar_State_Formation)) {
                        // source line 70, bytecode pc 228
                        (_strState = "format");
                    } else {
                        if ((data.state == xs.Constant_UnionWar_State_Combat)) {
                            // source line 72, bytecode pc 266
                            (_strState = "fight");
                        } else {
                            if ((data.state == xs.Constant_UnionWar_State_ShowFight)) {
                                // source line 74, bytecode pc 304
                                (_strState = "show");
                            } else {
                                // source line 76, bytecode pc 318
                                (_strState = "xxxxx");
                            }
                        }
                    }
                    if ((data.serverType == xs.Constant_UnionWar_Server_Local)) {
                        // source line 80, bytecode pc 351
                        (_strServerType = "l");
                    } else {
                        if ((data.serverType == xs.Constant_UnionWar_Server_International)) {
                            // source line 83, bytecode pc 389
                            (_strServerType = "i");
                        } else {
                            // source line 86, bytecode pc 403
                            (_strServerType = "xxxx");
                        }
                    }
                    // source line 92, bytecode pc 447
                    (_str = (((((("uwar_ep" + "_") + _strServerType) + "_") + data.group) + "_") + _strState));
                }
            }
        }
    }
    // source line 95, bytecode pc 487
    (_strTime = xs.Tools.String.createString((_str + "_time")));
    // source line 96, bytecode pc 527
    (_strTitle = xs.Tools.String.createString((_str + "_title")));
    // source line 97, bytecode pc 567
    (_strDesc = xs.Tools.String.createString((_str + "_desc")));
    // source line 99, bytecode pc 594
    xs.log_xjf(("_strTime = " + _strTime));
    // source line 100, bytecode pc 621
    xs.log_xjf(("_strTitle = " + _strTitle));
    // source line 101, bytecode pc 648
    xs.log_xjf(("_strDesc = " + _strDesc));
    // source line 104, bytecode pc 670
    this.lblTime.setString(_strTime);
    // source line 105, bytecode pc 692
    this.lblTitle.setString(_strTitle);
    // source line 106, bytecode pc 714
    this.lblDesc.setString(_strDesc);
    // source line 109, bytecode pc 719
    (_isDescShow = true);
    if ((this.data.noDesc || ((_strDesc == null) || ((_strDesc == "") || ((_strDesc.length == 0) || (_strDesc == " ")))))) {
        // source line 112, bytecode pc 797
        (_isDescShow = false);
    }
    // source line 114, bytecode pc 819
    this.lblDesc.setVisible(_isDescShow);
    // source line 115, bytecode pc 841
    this.spJianTou.setVisible(_isDescShow);
    // source line 116, bytecode pc 863
    this.spDescBg.setVisible(_isDescShow);
},
    updateWithStateNowIdx: function(stateNowIdx) {
    // source line 122, bytecode pc 19
    this.spSelectedBg.setVisible(false);
    // source line 123, bytecode pc 39
    this.spState1.setVisible(true);
    // source line 124, bytecode pc 59
    this.spState2.setVisible(false);
    // source line 125, bytecode pc 79
    this.spState3.setVisible(false);
    if ((this.idx == stateNowIdx)) {
        // source line 135, bytecode pc 114
        this.spSelectedBg.setVisible(true);
        // source line 136, bytecode pc 134
        this.spState3.setVisible(true);
    } else {
        if ((this.idx < stateNowIdx)) {
            // source line 140, bytecode pc 174
            this.spState2.setVisible(true);
        }
    }
},
    ccbNodeCfg: [
        { tag: 1, name: "spSelectedBg" },
        { tag: 11, name: "spJianTou" },
        { tag: 12, name: "spDescBg" },
        { tag: 21, name: "spState1" },
        { tag: 22, name: "spState2" },
        { tag: 23, name: "spState3" },
        { tag: 50, name: "spClock" },
        { tag: 31, type: "ls", name: "lblTime", id: "LS_Lv" },
        { tag: 32, type: "ls", name: "lblTitle", id: "LS_wujiangInf2" },
        { tag: 33, type: "ls", name: "lblDesc", id: "LS_wujiangInf2" }
    ]
}));
// source line 161, bytecode pc 458
(xs.Views.UnionWarFlowChartCell.create = function() {
    var ret;
    // source line 162, bytecode pc 23
    (ret = new xs.Views.UnionWarFlowChartCell());
    if ((ret && ret.init())) {
        // source line 164, bytecode pc 55
        return ret;
    }
    // source line 167, bytecode pc 84
    xs.assert(false, "xs.Views.UnionWarFlowChartCell.create fail!", ret);
    // source line 168, bytecode pc 86
    return null;
});
// source line 218, bytecode pc 607
(xs.Views.Table.UnionWarFlowChartTableView = xs.Views.Table.BaseTableView.extend({
    name: "UnionWarFlowChartTableView",
    init: function() {
    if (!this._super()) {
        // source line 179, bytecode pc 19
        return false;
    }
    // source line 181, bytecode pc 27
    (this.stateNowIdx = 0);
    // source line 182, bytecode pc 39
    (this.arrayTemp = []);
    // source line 184, bytecode pc 41
    return true;
},
    setStateNowIdx: function(stateNowIdx) {
    // source line 187, bytecode pc 9
    (this.stateNowIdx = stateNowIdx);
},
    refreshData: function() {
    // source line 192, bytecode pc 12
    (this.arrayModel = this.arrayTemp);
},
    setData: function(_modelDatas) {
    // source line 197, bytecode pc 9
    (this.arrayTemp = _modelDatas);
},
    createCell: function(idx) {
    // source line 202, bytecode pc 26
    return xs.Views.UnionWarFlowChartCell.create();
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 206, bytecode pc 23
    (cell = this._super(table, idx));
    // source line 207, bytecode pc 45
    cell.updateWithStateNowIdx(this.stateNowIdx);
    // source line 209, bytecode pc 49
    return cell;
},
    makeViewSize: function() {
    // source line 214, bytecode pc 24
    return cc.size(800, 525);
},
    makeCellSize: function(table, idx) {
    var size;
    // source line 224, bytecode pc 30
    (size = cc.size(788, 78));
    // source line 226, bytecode pc 34
    return size;
}
}));
// source line 230, bytecode pc 638
(xs.Views.Table.UnionWarFlowChartTableView.create = function() {
    var ret;
    // source line 231, bytecode pc 28
    (ret = new xs.Views.Table.UnionWarFlowChartTableView());
    if ((ret && ret.init())) {
        // source line 233, bytecode pc 60
        return ret;
    }
    // source line 235, bytecode pc 79
    this.error("UnionWarFlowChartTableView.create:");
    // source line 236, bytecode pc 81
    return null;
});
