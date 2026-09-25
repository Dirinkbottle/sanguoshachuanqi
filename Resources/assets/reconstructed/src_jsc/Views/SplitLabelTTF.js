// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/SplitLabelTTF.js:1
// source line 103, bytecode pc 73
(xs.Views.SplitLableTTF = cc.Node.extend({
    ctor: function() {
    // source line 68, bytecode pc 12
    this._super();
    // source line 69, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function(format) {
    var y, flag, nodeHeight, nodeWidth, i, strInfo, size;
    if (!this._super()) {
        // source line 73, bytecode pc 19
        return false;
    }
    // source line 75, bytecode pc 24
    (y = 0);
    // source line 76, bytecode pc 29
    (flag = false);
    // source line 77, bytecode pc 34
    (nodeHeight = 0);
    // source line 78, bytecode pc 39
    (nodeWidth = 0);
    // source line 79, bytecode pc 44
    (i = 0);
    while ((i < format.length)) {
        // source line 80, bytecode pc 61
        (strInfo = format[i]);
        if ((strInfo instanceof Array)) {
            // source line 82, bytecode pc 101
            (size = this.SplitLable(strInfo, this, y));
            // source line 83, bytecode pc 117
            (y = (y + size.height));
            if ((size.width > nodeWidth)) {
                // source line 85, bytecode pc 146
                (nodeWidth = size.width);
            }
            // source line 87, bytecode pc 153
            (nodeHeight = y);
        } else {
            // source line 89, bytecode pc 163
            (flag = true);
        }
        // source line 79, bytecode pc 176
        (i = (+i + 1));
    }
    if (flag) {
        // source line 93, bytecode pc 228
        (size = this.SplitLable(format, this, y));
        // source line 94, bytecode pc 240
        (nodeWidth = size.width);
        // source line 95, bytecode pc 252
        (nodeHeight = size.height);
    }
    // source line 98, bytecode pc 290
    this.setContentSize(cc.size(nodeWidth, nodeHeight));
    // source line 100, bytecode pc 292
    return true;
},
    SplitLable: function(js, fatherNode, y) {
    var x, height, i, strInfo, label, size;
    // source line 104, bytecode pc 4
    (x = 0);
    // source line 105, bytecode pc 9
    (height = 0);
    // source line 106, bytecode pc 14
    (i = 0);
    while ((i < js.length)) {
        // source line 107, bytecode pc 31
        (strInfo = js[i]);
        // source line 108, bytecode pc 36
        (label = null);
        if (strInfo.labelId) {
            // source line 110, bytecode pc 88
            (label = xs.Factorys.Label.createByLabelId(strInfo.labelId));
        } else {
            if (strInfo.fontId) {
                // source line 112, bytecode pc 154
                (label = xs.Factorys.LabelTTF.create(strInfo.str, strInfo.fontId));
            } else {
                // source line 114, bytecode pc 211
                (label = cc.LabelTTF.create(strInfo.str, strInfo.font, strInfo.size));
                // source line 115, bytecode pc 235
                label.setColor(strInfo.color);
            }
        }
        // source line 117, bytecode pc 271
        label.setAnchorPoint(cc.p(0, 0));
        // source line 118, bytecode pc 311
        label.setPosition(cc.p(x, y));
        // source line 119, bytecode pc 346
        xs.Utils.Node.attachNodes(fatherNode, label);
        // source line 120, bytecode pc 364
        (size = label.getContentSize());
        // source line 121, bytecode pc 380
        (x = (x + size.width));
        if ((size.height > height)) {
            // source line 123, bytecode pc 409
            (height = size.height);
        }
        // source line 106, bytecode pc 422
        (i = (+i + 1));
    }
    // source line 127, bytecode pc 465
    return cc.size(x, height);
}
}));
// source line 131, bytecode pc 99
(xs.Views.SplitLableTTF.create = function(format) {
    var label;
    // source line 132, bytecode pc 23
    (label = new xs.Views.SplitLableTTF());
    if ((label && label.init(format))) {
        // source line 134, bytecode pc 59
        return label;
    }
    // source line 136, bytecode pc 82
    xs.warn("xs.Views.SplitLableTTF.create error!");
    // source line 137, bytecode pc 84
    return null;
});
