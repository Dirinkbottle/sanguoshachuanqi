// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/Cell/BaseTableViewExtraCell.js:1
// source line 16, bytecode pc 103
(xs.Views.Table.Cell.BaseTableViewExtraCell = cc.TableViewCell.extend({
    name: "BaseTableViewExtraCell",
    ctor: function() {
    // source line 5, bytecode pc 12
    this._super();
},
    initWithData: function(data) {
    // source line 9, bytecode pc 1
    return true;
},
    updateCell: function(data) {
    // source line 13, bytecode pc 22
    xs.error("BaseTableViewExtraCell updateCell");
},
    updateCellEx: function(idx) {
    // source line 17, bytecode pc 22
    xs.error("BaseTableViewExtraCell updateCellEx");
}
}));
// source line 25, bytecode pc 139
(xs.Views.Table.Cell.BaseTableViewExtraCell.create = function(data) {
    var object;
    // source line 26, bytecode pc 22
    xs.log("xs.Views.Table.BaseTableViewExtraCell");
    // source line 27, bytecode pc 56
    (object = new xs.Views.Table.Cell.BaseTableViewExtraCell());
    if ((object && object.initWithData(data))) {
        // source line 29, bytecode pc 92
        return object;
    }
    // source line 31, bytecode pc 117
    xs.assert(false, "xs.Views.Table.Cell.BaseTableViewExtraCell.create error");
    // source line 32, bytecode pc 119
    return null;
});
