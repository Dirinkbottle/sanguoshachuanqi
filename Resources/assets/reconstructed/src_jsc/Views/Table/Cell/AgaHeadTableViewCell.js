// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/Cell/AgaHeadTableViewCell.js:1
// source line 32, bytecode pc 93
(xs.Views.AgaHeadTableViewCell = cc.TableViewCell.extend({
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
    init: function(model) {
    if (!this._super()) {
        // source line 18, bytecode pc 19
        return false;
    }
    // source line 20, bytecode pc 27
    (this.isSelected = false);
    // source line 21, bytecode pc 44
    this.updateCell(model);
    // source line 23, bytecode pc 46
    return true;
},
    updateCell: function(model) {
    // source line 27, bytecode pc 12
    this.removeAllChildren();
    // source line 28, bytecode pc 33
    (this.m_headIcon = model.createIcon_Grade());
    // source line 29, bytecode pc 116
    xs.Utils.Node.attachNodes(this, this.m_headIcon, { desc: "lb", offset: cc.p(57.5, 45) });
},
    addSelectedIcon: function(icon) {
    // source line 33, bytecode pc 79
    xs.Utils.Node.attachNodes(this, icon, { desc: "lb", offset: cc.p(57.5, 45) });
}
}));
// source line 37, bytecode pc 119
(xs.Views.AgaHeadTableViewCell.create = function(model) {
    var ret;
    // source line 38, bytecode pc 23
    (ret = new xs.Views.AgaHeadTableViewCell());
    if ((ret && ret.init(model))) {
        // source line 40, bytecode pc 59
        return ret;
    }
    // source line 43, bytecode pc 88
    xs.assert(false, "xs.Views.AgaHeadTableViewCell.create fail!", ret);
    // source line 44, bytecode pc 90
    return null;
});
