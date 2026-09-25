// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/ShowData.js:1
// source line 88, bytecode pc 193
(xs.Models.ShowData = cc.Class.extend({
    name: "xs.Models.ShowData",
    init: function(oriModel) {
    // source line 11, bytecode pc 9
    (this.oriModel = oriModel);
    // source line 13, bytecode pc 17
    (this.selectNum = 0);
    // source line 16, bytecode pc 19
    return true;
},
    getModel: function() {
    // source line 20, bytecode pc 6
    return this.oriModel;
},
    getOriModel: function() {
    // source line 24, bytecode pc 6
    return this.oriModel;
},
    isSelected: function() {
    if ((this.selectNum > 0)) {
        // source line 29, bytecode pc 14
        return true;
    }
    // source line 31, bytecode pc 16
    return false;
},
    setSelectNum: function(num) {
    // source line 37, bytecode pc 9
    (this.selectNum = num);
},
    getSelectNum: function() {
    // source line 43, bytecode pc 6
    return this.selectNum;
},
    getMaxNum: function() {
    // source line 47, bytecode pc 17
    return this.oriModel.getNum();
},
    setSelectMaxNum: function() {
    // source line 50, bytecode pc 23
    (this.selectNum = this.oriModel.getNum());
},
    setSelectMinNum: function() {
    // source line 53, bytecode pc 7
    (this.selectNum = 0);
},
    addSelectNum: function() {
    if (this.isAddSelectNumAble()) {
        // source line 59, bytecode pc 42
        (this.selectNum = (+this.selectNum + 1));
    } else {
        // source line 62, bytecode pc 71
        xs.warn("use isAddSelectNumAble before addSelectNum");
    }
},
    subSelectNum: function() {
    if (this.isSubSelectNumAble()) {
        // source line 70, bytecode pc 42
        (this.selectNum = (+this.selectNum - 1));
    } else {
        // source line 73, bytecode pc 71
        xs.warn("use isSubSelectNumAble before subSelectNum");
    }
},
    isAddSelectNumAble: function() {
    // source line 81, bytecode pc 24
    return (this.oriModel.getNum() > this.selectNum);
},
    isSubSelectNumAble: function() {
    // source line 85, bytecode pc 8
    return (this.selectNum > 0);
},
    reset: function() {
    // source line 91, bytecode pc 7
    (this.selectNum = 0);
}
}));
// source line 96, bytecode pc 219
(xs.Models.ShowData.create = function(oriModel) {
    var ret;
    // source line 97, bytecode pc 23
    (ret = new xs.Models.ShowData());
    if ((ret && ret.init(oriModel))) {
        // source line 99, bytecode pc 59
        return ret;
    }
    // source line 101, bytecode pc 61
    return null;
});
