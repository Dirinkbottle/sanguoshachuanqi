// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/MulitiFightResultTableView.js:1
// source line 69, bytecode pc 159
(xs.Views.Table.MulitiFightResultTableView = xs.Views.Table.BaseTableView.extend({
    name: "MulitiFightResultTableView",
    Cfg: { modelTypes: [] },
    setData: function(mulitiFightModel) {
    // source line 17, bytecode pc 20
    (this.arrayModel = mulitiFightModel.getFightInfos());
},
    refreshData: function() {
    var i;
    // source line 22, bytecode pc 18
    this.markFuncBegin("refreshData");
    // source line 23, bytecode pc 23
    (i = 0);
    while ((i < this.arrayModel.length)) {
        // source line 25, bytecode pc 129
        (this.arrayModel[i].titleName = ((xs.Tools.String.createString("auto_name_123") + this.getHanZiByNum((i + 1))) + xs.Tools.String.createString("auto_name_289")));
        // source line 23, bytecode pc 144
        i++;
    }
    // source line 29, bytecode pc 184
    this.markFuncEnd("refreshData");
},
    createCell: function(idx) {
    var cell;
    // source line 34, bytecode pc 50
    (cell = xs.Views.Table.Cell.MulitiFightCell.create(this.arrayModel[idx]));
    // source line 35, bytecode pc 54
    return cell;
},
    makeViewSize: function() {
    // source line 40, bytecode pc 24
    return cc.size(710, 450);
},
    makeCellSize: function() {
    // source line 45, bytecode pc 24
    return cc.size(686, 220);
},
    getHanZiByNum: function(num) {
    var num_1, num_2;
    if ((num > 99)) {
        // source line 49, bytecode pc 16
        return "";
    }
    if ((num <= 10)) {
        // source line 52, bytecode pc 44
        return this.switchToHanzi(num);
    } else {
        // source line 54, bytecode pc 59
        (num_1 = (num % 10));
        // source line 55, bytecode pc 84
        (num_2 = parseInt((num / 10)));
        if ((num_1 == 0)) {
            // source line 57, bytecode pc 127
            return (this.switchToHanzi(num_2) + this.switchToHanzi(10));
        } else {
            if ((num < 20)) {
                // source line 60, bytecode pc 176
                return (this.switchToHanzi(10) + this.switchToHanzi(num_1));
            } else {
                // source line 63, bytecode pc 231
                return ((this.switchToHanzi(num_2) + this.switchToHanzi(10)) + this.switchToHanzi(num_1));
            }
        }
    }
},
    switchToHanzi: function(num) {
    // source line 70, bytecode pc 3
    switch (num) {
        case 1:
        // source line 72, bytecode pc 88
        return xs.Tools.String.createString("auto_name_475");
        case 2:
        // source line 74, bytecode pc 121
        return xs.Tools.String.createString("auto_name_476");
        case 3:
        // source line 76, bytecode pc 154
        return xs.Tools.String.createString("auto_name_477");
        case 4:
        // source line 78, bytecode pc 187
        return xs.Tools.String.createString("auto_name_478");
        case 5:
        // source line 80, bytecode pc 220
        return xs.Tools.String.createString("auto_name_479");
        case 6:
        // source line 82, bytecode pc 253
        return xs.Tools.String.createString("auto_name_480");
        case 7:
        // source line 84, bytecode pc 286
        return xs.Tools.String.createString("auto_name_481");
        case 8:
        // source line 86, bytecode pc 319
        return xs.Tools.String.createString("auto_name_482");
        case 9:
        // source line 88, bytecode pc 352
        return xs.Tools.String.createString("auto_name_483");
        case 10:
        // source line 90, bytecode pc 385
        return xs.Tools.String.createString("auto_name_484");
        default:
        // source line 92, bytecode pc 389
        return num;
    }
}
}));
// source line 98, bytecode pc 190
(xs.Views.Table.MulitiFightResultTableView.create = function() {
    var ret;
    // source line 99, bytecode pc 28
    (ret = new xs.Views.Table.MulitiFightResultTableView());
    if ((ret && ret.init())) {
        // source line 101, bytecode pc 60
        return ret;
    }
    // source line 103, bytecode pc 79
    this.error("MulitiFightResultTableView.create:");
    // source line 104, bytecode pc 81
    return null;
});
