// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/RankTableView.js:1
// source line 65, bytecode pc 128
(xs.Views.Table.RankTableView = xs.Views.Table.BaseTableView.extend({
    name: "RankTableView",
    init: function(data, type) {
    if (!this._super()) {
        // source line 10, bytecode pc 19
        return false;
    }
    // source line 13, bytecode pc 43
    this.setDirection(cc.SCROLLVIEW_DIRECTION_HORIZONTAL);
    // source line 14, bytecode pc 67
    this.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 16, bytecode pc 77
    (this.dataType = type);
    // source line 17, bytecode pc 87
    (this.data = data);
    // source line 21, bytecode pc 89
    return true;
},
    refreshData: function() {
    // source line 27, bytecode pc 23
    (this.arrayModel = (this.data || []));
},
    createCell: function(idx) {
    var obj, celldata;
    if ((idx == this.arrayModel.length)) {
        // source line 42, bytecode pc 56
        (obj = xs.Views.RankTableViewCell.create(this.dataType));
        // source line 43, bytecode pc 60
        return obj;
    }
    // source line 45, bytecode pc 74
    (celldata = this.arrayModel[idx]);
    if (((celldata == "undefined") || (celldata == null))) {
        // source line 49, bytecode pc 136
        (obj = xs.Views.RankTableViewCell.create(this.dataType));
        // source line 50, bytecode pc 140
        return obj;
    }
    // source line 53, bytecode pc 182
    return xs.Views.RankTableViewCell.create(this.dataType, celldata, idx);
},
    makeViewSize: function() {
    var visibelSize;
    // source line 58, bytecode pc 35
    (visibelSize = cc.Director.getInstance().getVisibleSize());
    // source line 59, bytecode pc 65
    return cc.size(visibelSize.width, 564);
},
    makeCellSize: function() {
    // source line 63, bytecode pc 24
    return cc.size(246, 564);
},
    numberOfCellsInTableView: function(table) {
    // source line 66, bytecode pc 18
    this.markFuncBegin("RankTableView numberOfCellsInTableView");
    try {
        if ((this.arrayModel.length == 0)) {
            // source line 70, bytecode pc 39
            return 1;
        }
        // source line 72, bytecode pc 53
        return (this.arrayModel.length + 1);
    } catch (e) {
        // source line 74, bytecode pc 85
        this.warnException(e);
        /* TODO_BYTECODE pc=86 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 77, bytecode pc 113
    this.markFuncEnd("RankTableView numberOfCellsInTableView");
}
}));
// source line 82, bytecode pc 159
(xs.Views.Table.RankTableView.create = function(data, type) {
    var ret;
    // source line 83, bytecode pc 28
    (ret = new xs.Views.Table.RankTableView());
    if ((ret && ret.init(data, type))) {
        // source line 85, bytecode pc 68
        return ret;
    }
    // source line 88, bytecode pc 70
    return null;
});
