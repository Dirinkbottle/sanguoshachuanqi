// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/ClimbLadderTableView.js:1
// source line 69, bytecode pc 128
(xs.Views.Table.ClimbLadderTableView = xs.Views.Table.BaseTableView.extend({
    name: "ClimbLadderTableView",
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
    var dataArray, _data;
    // source line 26, bytecode pc 8
    (dataArray = []);
    // source line 27, bytecode pc 43
    (_data = xs.Scene.StartBattleScene.Model.getInstance());
    // source line 28, bytecode pc 50
    switch (this.dataType) {
        case "Copper":
        // source line 31, bytecode pc 113
        (dataArray = _data.getRankInfoCopper());
        break;
        case "Silver":
        // source line 35, bytecode pc 136
        (dataArray = _data.getRankInfoSilver());
        break;
        case "Gold":
        // source line 39, bytecode pc 159
        (dataArray = _data.getRankInfoGold());
        break;
        case "God":
        // source line 43, bytecode pc 182
        (dataArray = _data.getRankInfoGod());
        break;
        default:
        break;
    }
    // source line 46, bytecode pc 197
    (this.arrayModel = dataArray);
},
    createCell: function(idx) {
    var celldata, obj;
    // source line 50, bytecode pc 13
    (celldata = this.arrayModel[idx]);
    // source line 51, bytecode pc 40
    xs.log(("celldata is " + celldata));
    if (((celldata == "undefined") || (celldata == null))) {
        // source line 53, bytecode pc 95
        (obj = xs.Views.ClimbLadderTableViewCell.create());
        // source line 54, bytecode pc 122
        xs.log(("createCell obj is " + obj));
        // source line 55, bytecode pc 126
        return obj;
    }
    // source line 57, bytecode pc 161
    return xs.Views.ClimbLadderTableViewCell.create(celldata, idx);
},
    makeViewSize: function() {
    var visibelSize;
    // source line 62, bytecode pc 35
    (visibelSize = cc.Director.getInstance().getVisibleSize());
    // source line 63, bytecode pc 65
    return cc.size(visibelSize.width, 520);
},
    makeCellSize: function() {
    // source line 67, bytecode pc 24
    return cc.size(260, 517);
},
    numberOfCellsInTableView: function(table) {
    // source line 70, bytecode pc 18
    this.markFuncBegin("ClimbLadderTableView numberOfCellsInTableView");
    try {
        // source line 73, bytecode pc 54
        xs.log(("xs.Views.Table.ClimbLadderTableView.numberOfCellsInTableView " + this.arrayModel.length));
        if ((this.arrayModel.length == 0)) {
            // source line 75, bytecode pc 74
            return 1;
        }
        // source line 77, bytecode pc 86
        return this.arrayModel.length;
    } catch (e) {
        // source line 79, bytecode pc 118
        this.warnException(e);
        /* TODO_BYTECODE pc=119 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 82, bytecode pc 146
    this.markFuncEnd("ClimbLadderTableView numberOfCellsInTableView");
}
}));
// source line 86, bytecode pc 159
(xs.Views.Table.ClimbLadderTableView.create = function(type) {
    var ret;
    // source line 87, bytecode pc 22
    xs.log("xs.Views.Table.ClimbLadderTableView.create");
    // source line 88, bytecode pc 51
    (ret = new xs.Views.Table.ClimbLadderTableView());
    // source line 89, bytecode pc 63
    (ret.dataType = type);
    if ((ret && ret.init())) {
        // source line 91, bytecode pc 95
        return ret;
    }
    // source line 94, bytecode pc 124
    xs.assert(false, "xs.Views.Table.ClimbLadderTableView.create fail", ret);
    // source line 95, bytecode pc 126
    return null;
});
