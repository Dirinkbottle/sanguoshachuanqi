// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/Cell/ChatContentCell.js:1
// source line 33, bytecode pc 103
(xs.Views.Table.Cell.ChatContentCell = cc.TableViewCell.extend({
    draw: function(ctx) {
    // source line 8, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 12, bytecode pc 12
    this._super();
    // source line 13, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function(chatModel) {
    if (!this._super()) {
        // source line 18, bytecode pc 19
        return false;
    }
    // source line 22, bytecode pc 36
    this.updateCell(chatModel);
    // source line 24, bytecode pc 38
    return true;
},
    updateCell: function(chatModel) {
    // source line 28, bytecode pc 12
    this.removeAllChildren();
    // source line 29, bytecode pc 29
    chatModel.refresh(this);
},
    getContentSize: function() {
    // source line 34, bytecode pc 27
    return cc.size(780, this.cellHeight);
}
}));
// source line 38, bytecode pc 139
(xs.Views.Table.Cell.ChatContentCell.create = function(chatModel) {
    var ret;
    // source line 39, bytecode pc 33
    (ret = new xs.Views.Table.Cell.ChatContentCell());
    if ((ret && ret.init(chatModel))) {
        // source line 41, bytecode pc 69
        return ret;
    }
    // source line 44, bytecode pc 98
    xs.assert(false, "xs.Views.ChatContentCell.create fail!", ret);
    // source line 45, bytecode pc 100
    return null;
});
