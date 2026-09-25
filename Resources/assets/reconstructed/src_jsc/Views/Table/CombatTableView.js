// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/CombatTableView.js:1
// source line 78, bytecode pc 217
(xs.Views.Table.CombatTableView = xs.Views.Table.MultiColumnTableView.extend({
    name: "CombatTableView",
    Cfg: {
        modelTypes: [ xs.Constant_Notify_ModelChange_General, xs.Constant_Notify_ModelChange_GeneralSoul ]
    },
    init: function(modelDatas) {
    if (!this._super()) {
        // source line 19, bytecode pc 19
        return false;
    }
    // source line 22, bytecode pc 29
    (this.arrayTemp = modelDatas);
    // source line 24, bytecode pc 31
    return true;
},
    onEnter: function() {
    // source line 28, bytecode pc 12
    this.refreshDataAndReload();
},
    setData: function(_modelDatas) {
    // source line 32, bytecode pc 9
    (this.arrayTemp = _modelDatas);
},
    refreshData: function() {
    var i, _array, j;
    // source line 37, bytecode pc 48
    (this.arrayModel = new Array(Math.ceil((this.arrayTemp.length / 4))));
    // source line 38, bytecode pc 53
    (i = 0);
    while ((i < this.arrayModel.length)) {
        // source line 39, bytecode pc 68
        (_array = []);
        // source line 40, bytecode pc 73
        (j = 0);
        while ((j < 4)) {
            if ((((i * 4) + j) < this.arrayTemp.length)) {
                // source line 42, bytecode pc 139
                _array.push(this.arrayTemp[((i * 4) + j)]);
            }
            // source line 40, bytecode pc 154
            j++;
        }
        // source line 45, bytecode pc 180
        (this.arrayModel[i] = _array);
        // source line 38, bytecode pc 195
        i++;
    }
},
    onSortChg: function(sortedData) {
    // source line 51, bytecode pc 9
    (this.arrayModel = sortedData);
    // source line 52, bytecode pc 22
    this.reloadData();
},
    createCell: function(idx) {
    var cell;
    // source line 58, bytecode pc 52
    (cell = xs.Views.Table.CombatTableViewCell.create(this.arrayModel[idx], this.modelType));
    // source line 59, bytecode pc 74
    cell.setListener(this.m_listener);
    // source line 60, bytecode pc 78
    return cell;
},
    makeViewSize: function() {
    // source line 65, bytecode pc 24
    return cc.size(440, 440);
},
    setModelType: function(type) {
    // source line 70, bytecode pc 9
    (this.modelType = type);
},
    setListener: function(listener) {
    // source line 74, bytecode pc 9
    (this.m_listener = listener);
},
    getSelectIconPosArray: function() {
    var posArray, i, cell;
    // source line 79, bytecode pc 22
    xs.log("getSelectIconPosArray");
    // source line 80, bytecode pc 31
    (posArray = []);
    // source line 81, bytecode pc 36
    (i = 0);
    while ((i < this.arrayModel.length)) {
        // source line 82, bytecode pc 62
        (cell = this.cellAtIndex(i));
        if (cell) {
            // source line 84, bytecode pc 103
            (posArray = posArray.concat(cell.getSelectIconPosArray()));
        }
        // source line 81, bytecode pc 118
        i++;
    }
    // source line 87, bytecode pc 143
    return posArray;
}
}));
// source line 91, bytecode pc 239
(xs.Views.Table.CombatTableView_General = 1);
// source line 92, bytecode pc 262
(xs.Views.Table.CombatTableView_Soul = 2);
// source line 94, bytecode pc 293
(xs.Views.Table.CombatTableView.create = function(modelType, modelDatas) {
    var ret;
    // source line 95, bytecode pc 28
    (ret = new xs.Views.Table.CombatTableView());
    if ((ret && ret.init(modelDatas))) {
        // source line 97, bytecode pc 79
        ret.setModelType(modelType);
        // source line 98, bytecode pc 83
        return ret;
    }
    // source line 100, bytecode pc 85
    return null;
});
