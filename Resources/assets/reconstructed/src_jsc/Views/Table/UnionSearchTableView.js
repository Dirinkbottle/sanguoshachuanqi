// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/UnionSearchTableView.js:1
// source line 28, bytecode pc 128
(xs.Views.Table.UnionSearchTableView = xs.Views.Table.BaseTableView.extend({
    name: "UnionSearchTableView",
    refreshData: function() {
    // source line 5, bytecode pc 22
    xs.log("UnionSearchTableView refreshData");
},
    createCell: function(idx) {
    var cell;
    // source line 9, bytecode pc 4
    (cell = null);
    // source line 10, bytecode pc 39
    xs.log(("UnionSearchTableView createCell " + this.parent.m_baseTouchPriority));
    // source line 11, bytecode pc 97
    (cell = xs.Views.Table.Cell.UnionSearchTableViewCell.create(this.arrayModel[idx], this.parent));
    // source line 12, bytecode pc 124
    cell.setBaseTouchPriority(this.parent.m_baseTouchPriority);
    // source line 13, bytecode pc 128
    return cell;
},
    makeViewSize: function() {
    // source line 17, bytecode pc 24
    return cc.size(900, 415);
},
    makeCellSize: function() {
    // source line 20, bytecode pc 23
    return cc.size(882, 110);
},
    initWithData: function(data) {
    // source line 24, bytecode pc 22
    xs.log("UnionSearchTableView initWithData");
    // source line 25, bytecode pc 32
    (this.arrayModel = data);
    // source line 26, bytecode pc 70
    this.setContentSize(cc.size(900, 415));
},
    setBaseTouchPriority: function(priority) {
    // source line 29, bytecode pc 22
    xs.log("UnionSearchTableView setBaseTouchPriority ");
    // source line 30, bytecode pc 32
    (this.m_baseTouchPriority = priority);
}
}));
// source line 34, bytecode pc 159
(xs.Views.Table.UnionSearchTableView.create = function(data, parent) {
    var ret;
    // source line 35, bytecode pc 28
    (ret = new xs.Views.Table.UnionSearchTableView());
    if ((ret && ret.init())) {
        // source line 37, bytecode pc 68
        (ret.parent = parent);
        // source line 38, bytecode pc 87
        ret.initWithData(data);
        // source line 39, bytecode pc 91
        return ret;
    }
    // source line 41, bytecode pc 110
    this.error("UnionSearchTableView.create:");
    // source line 42, bytecode pc 112
    return null;
});
