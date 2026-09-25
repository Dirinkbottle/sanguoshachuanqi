// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/EquipRefineTableView.js:1
// source line 79, bytecode pc 178
(xs.Views.Table.EquipRefineTableView = xs.Views.Table.MultiColumnTableView.extend({
    name: "EquipRefineTableView",
    init: function(modelDatas, targetModel) {
    if (!this._super()) {
        // source line 11, bytecode pc 19
        return false;
    }
    // source line 14, bytecode pc 29
    (this.arrayTemp = modelDatas);
    // source line 15, bytecode pc 39
    (this._targetModel = targetModel);
    // source line 16, bytecode pc 41
    return true;
},
    onEnter: function() {
    // source line 20, bytecode pc 12
    this._super();
    // source line 21, bytecode pc 25
    this.refreshDataAndReload();
},
    setData: function(_modelDatas) {
    // source line 25, bytecode pc 9
    (this.arrayTemp = _modelDatas);
},
    refreshData: function() {
    var i, _array, j;
    // source line 30, bytecode pc 48
    (this.arrayModel = new Array(Math.ceil((this.arrayTemp.length / 4))));
    // source line 31, bytecode pc 53
    (i = 0);
    while ((i < this.arrayModel.length)) {
        // source line 32, bytecode pc 68
        (_array = []);
        // source line 33, bytecode pc 73
        (j = 0);
        while ((j < 4)) {
            if ((((i * 4) + j) < this.arrayTemp.length)) {
                // source line 35, bytecode pc 139
                _array.push(this.arrayTemp[((i * 4) + j)]);
            }
            // source line 33, bytecode pc 153
            (j = (+j + 1));
        }
        // source line 38, bytecode pc 180
        (this.arrayModel[i] = _array);
        // source line 31, bytecode pc 194
        (i = (+i + 1));
    }
},
    createCell: function(idx) {
    var cell;
    // source line 45, bytecode pc 45
    (cell = xs.Views.Table.EquipRefineTableViewCell.create(this.arrayModel[idx]));
    // source line 46, bytecode pc 73
    cell.setBaseTouchPriority(this.getTouchPriority());
    // source line 47, bytecode pc 83
    (cell._parent = this);
    // source line 49, bytecode pc 87
    return cell;
},
    makeViewSize: function() {
    // source line 54, bytecode pc 24
    return cc.size(480, 440);
},
    resetTargetModel: function(newModel) {
    // source line 59, bytecode pc 9
    (this._targetModel = newModel);
},
    IsMaxLevel: function() {
    if (this.m_listener) {
        // source line 64, bytecode pc 28
        return this.m_listener.isMaxLevel();
    }
    // source line 66, bytecode pc 30
    return false;
},
    getSubMaxExp: function() {
    if (this.m_listener) {
        // source line 70, bytecode pc 28
        return this.m_listener.getSubMaxExp();
    }
    // source line 72, bytecode pc 30
    return 0;
},
    setListener: function(listener) {
    // source line 75, bytecode pc 9
    (this.m_listener = listener);
},
    getSelectIconPosArray: function() {
    var posArray, i, cell;
    // source line 80, bytecode pc 22
    xs.log("getSelectIconPosArray");
    // source line 81, bytecode pc 31
    (posArray = []);
    // source line 82, bytecode pc 36
    (i = 0);
    while ((i < this.arrayModel.length)) {
        // source line 83, bytecode pc 62
        (cell = this.cellAtIndex(i));
        if (cell) {
            // source line 85, bytecode pc 103
            (posArray = posArray.concat(cell.getSelectIconPosArray()));
        }
        // source line 82, bytecode pc 117
        (i = (+i + 1));
    }
    // source line 88, bytecode pc 143
    return posArray;
}
}));
// source line 93, bytecode pc 209
(xs.Views.Table.EquipRefineTableView.create = function(modelDatas, targetModel) {
    var ret;
    // source line 94, bytecode pc 28
    (ret = new xs.Views.Table.EquipRefineTableView());
    if ((ret && ret.init(modelDatas, targetModel))) {
        // source line 96, bytecode pc 68
        return ret;
    }
    // source line 98, bytecode pc 70
    return null;
});
