// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/LadderChartTableView.js:1
// source line 38, bytecode pc 118
(xs.Views.Table.LadderChartTableView = xs.Views.Table.BaseTableView.extend({
    name: "LadderChartTableView",
    init: function() {
    if (!this._super()) {
        // source line 12, bytecode pc 19
        return false;
    }
    // source line 15, bytecode pc 43
    this.setDirection(cc.SCROLLVIEW_DIRECTION_HORIZONTAL);
    // source line 16, bytecode pc 67
    this.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 18, bytecode pc 69
    return true;
},
    refreshData: function() {
    // source line 24, bytecode pc 64
    (this.arrayModel = xs.Profile.GameData.Mgr.getInstance().LadderInfo.getLadderInfo().getLadderTop());
},
    createCell: function(idx) {
    // source line 29, bytecode pc 37
    return xs.Views.LadderChartTableViewCell.create(this.arrayModel[idx]);
},
    makeViewSize: function() {
    var visibelSize;
    // source line 34, bytecode pc 35
    (visibelSize = cc.Director.getInstance().getVisibleSize());
    // source line 35, bytecode pc 65
    return cc.size(visibelSize.width, 520);
},
    makeCellSize: function() {
    // source line 39, bytecode pc 24
    return cc.size(260, 517);
}
}));
// source line 44, bytecode pc 149
(xs.Views.Table.LadderChartTableView.create = function() {
    var ret;
    // source line 45, bytecode pc 28
    (ret = new xs.Views.Table.LadderChartTableView());
    if ((ret && ret.init())) {
        // source line 47, bytecode pc 60
        return ret;
    }
    // source line 50, bytecode pc 89
    xs.assert(false, "xs.Views.Table.LadderChartTableView.create fail", ret);
    // source line 51, bytecode pc 91
    return null;
});
