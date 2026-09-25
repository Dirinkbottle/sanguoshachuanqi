// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/TaskTableView.js:1
// source line 92, bytecode pc 148
(xs.Views.Table.TaskTableView = xs.Views.Table.BaseTableView.extend({
    name: "TaskTableView",
    init: function(viewSize) {
    // source line 10, bytecode pc 9
    (this.viewSize = viewSize);
    if (!this._super()) {
        // source line 13, bytecode pc 29
        return false;
    }
    // source line 15, bytecode pc 41
    (this.arrayModel = []);
    // source line 16, bytecode pc 49
    (this.m_cell_cache_use = false);
    // source line 18, bytecode pc 73
    this.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 19, bytecode pc 97
    this.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    // source line 21, bytecode pc 99
    return true;
},
    onExit: function() {
    // source line 25, bytecode pc 12
    this._super();
},
    refreshData: function(arrModels) {
    if (arrModels) {
        if ((this.arrayModel.length == 0)) {
            // source line 34, bytecode pc 35
            (this.arrayModel = arrModels);
            // source line 35, bytecode pc 48
            this.reloadData();
        } else {
            // source line 38, bytecode pc 63
            (this.arrayModel = arrModels);
            // source line 39, bytecode pc 76
            this.refreshDataAndReload();
        }
    }
},
    createCell: function(idx) {
    // source line 47, bytecode pc 47
    return xs.Views.Table.Cell.TaskCell.create(this.arrayModel[idx]);
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 52, bytecode pc 4
    (cell = null);
    try {
        if (this.m_cell_cache_use) {
            if (this.m_cell_cache[idx]) {
                // source line 56, bytecode pc 42
                return this.m_cell_cache[idx];
            } else {
                // source line 59, bytecode pc 67
                (cell = this.createCell(idx));
                // source line 60, bytecode pc 93
                cell.updateCell(this.arrayModel[idx]);
                // source line 61, bytecode pc 107
                (this.m_cell_cache[idx] = cell);
                // source line 62, bytecode pc 129
                this.m_cell_cache[idx].retain();
            }
        } else {
            // source line 66, bytecode pc 152
            (cell = table.dequeueCell());
            if (!cell) {
                // source line 69, bytecode pc 181
                (cell = this.createCell(idx));
            }
            // source line 71, bytecode pc 207
            cell.updateCell(this.arrayModel[idx]);
        }
    } catch (e) {
        // source line 76, bytecode pc 239
        this.warnException(e);
        /* TODO_BYTECODE pc=240 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 79, bytecode pc 252
    return cell;
},
    makeViewSize: function() {
    // source line 84, bytecode pc 22
    xs.log("设置view大小");
    // source line 85, bytecode pc 63
    return cc.size(this.viewSize.width, this.viewSize.height);
},
    makeCellSize: function(idx) {
    // source line 89, bytecode pc 23
    return cc.size(882, 110);
},
    tableCellSizeForIndex: function(table, idx) {
    // source line 93, bytecode pc 16
    return this.makeCellSize(idx);
}
}));
// source line 97, bytecode pc 179
(xs.Views.Table.TaskTableView.create = function(viewSize) {
    var ret;
    // source line 98, bytecode pc 28
    (ret = new xs.Views.Table.TaskTableView());
    if ((ret && ret.init(viewSize))) {
        // source line 100, bytecode pc 64
        return ret;
    }
    // source line 103, bytecode pc 93
    xs.assert(false, "xs.Views.Table.TaskTableView.create fail", ret);
    // source line 104, bytecode pc 95
    return null;
});
