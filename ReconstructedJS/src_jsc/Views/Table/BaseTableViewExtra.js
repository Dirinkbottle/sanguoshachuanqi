// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/BaseTableViewExtra.js:1
// source line 54, bytecode pc 139
(xs.Views.Table.BaseTableViewExtra = xs.Views.Table.BaseTableView.extend({
    name: "BaseTableViewExtra",
    Cfg: { modelTypes: [] },
    refreshData: function() {
    // source line 15, bytecode pc 22
    xs.error("BaseTableViewExtra refreshData");
    // source line 17, bytecode pc 39
    (this.arrayModel = [ 1 ]);
},
    createCell: function(idx) {
    // source line 21, bytecode pc 22
    xs.error("BaseTableViewExtra createCell");
    // source line 22, bytecode pc 24
    return null;
},
    makeViewSize: function() {
    // source line 26, bytecode pc 22
    xs.error("BaseTableViewExtra makeViewSize");
    // source line 27, bytecode pc 24
    return null;
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    try {
        // source line 33, bytecode pc 18
        (cell = table.dequeueCell());
        if (!cell) {
            // source line 36, bytecode pc 47
            (cell = this.createCell(idx));
        }
        if ((idx >= this.arrayModel.length)) {
            // source line 41, bytecode pc 86
            cell.updateCellEx(idx);
        } else {
            // source line 44, bytecode pc 117
            cell.updateCell(this.arrayModel[idx]);
        }
    } catch (e) {
        // source line 48, bytecode pc 153
        xs.warnException(e);
        /* TODO_BYTECODE pc=154 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 51, bytecode pc 166
    return cell;
},
    numberOfCellsInTableView: function(table) {
    var num;
    // source line 55, bytecode pc 16
    (num = (this.arrayModel.length + 1));
    // source line 56, bytecode pc 20
    return num;
}
}));
