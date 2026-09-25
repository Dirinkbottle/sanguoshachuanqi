// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/MultiColumnTableView.js:1
// source line 28, bytecode pc 129
(xs.Views.Table.MultiColumnTableView = xs.Views.Table.BaseTableView.extend({
    name: "MultiColumnTableView",
    Cfg: { modelTypes: [] },
    refreshData: function() {
    // source line 13, bytecode pc 22
    xs.log("MultiColumnTableView refreshData");
    // source line 18, bytecode pc 150
    (this.arrayModel = [ [ 1, 1, 1, 1 ], [ 1, 1, 1, 1 ], [ 1, 1, 1, 1 ], [ 1, 1, 1, 1 ] ]);
},
    onSortChg: function(sortedData) {
},
    createCell: function(idx) {
    var cell;
    // source line 25, bytecode pc 45
    (cell = xs.Views.Table.MultiColumnTableViewCell.create(this.arrayModel[idx]));
    // source line 26, bytecode pc 49
    return cell;
},
    makeViewSize: function() {
    // source line 30, bytecode pc 24
    return cc.size(650, 640);
}
}));
// source line 46, bytecode pc 160
(xs.Views.Table.MultiColumnTableView.create = function() {
    var ret;
    // source line 47, bytecode pc 22
    xs.log("xs.Views.Table.MultiColumnTableView.create");
    // source line 48, bytecode pc 51
    (ret = new xs.Views.Table.MultiColumnTableView());
    if ((ret && ret.init())) {
        // source line 50, bytecode pc 83
        return ret;
    }
    // source line 52, bytecode pc 102
    this.error("MultiColumnTableView.create:");
    // source line 53, bytecode pc 104
    return null;
});
// source line 56, bytecode pc 186
(xs.Views.Table.changeDimensionsOneToTwo = function(srcData, columnNum) {
    var data, one, two, i;
    // source line 57, bytecode pc 31
    xs.log(("xs.Views.Table.changeDimensionsOneToTwo srcData length is " + srcData.length));
    // source line 58, bytecode pc 60
    xs.assert((srcData != null), "srcData is null");
    // source line 59, bytecode pc 89
    xs.assert((columnNum != null), "columnNum is null");
    // source line 60, bytecode pc 98
    (data = []);
    // source line 61, bytecode pc 103
    (one = 0);
    // source line 62, bytecode pc 108
    (two = 0);
    // source line 63, bytecode pc 113
    (i = 0);
    while ((i < srcData.length)) {
        // source line 64, bytecode pc 147
        (one = Math.floor((i / columnNum)));
        // source line 65, bytecode pc 175
        (two = Math.floor((i % columnNum)));
        if ((data[one] == null)) {
            // source line 68, bytecode pc 202
            (data[one] = []);
        }
        // source line 70, bytecode pc 221
        (data[one][two] = srcData[i]);
        // source line 63, bytecode pc 236
        i++;
    }
    // source line 72, bytecode pc 286
    xs.log(("xs.Views.Table.changeDimensionsOneToTwo data[one] length is " + data.length));
    // source line 73, bytecode pc 290
    return data;
});
