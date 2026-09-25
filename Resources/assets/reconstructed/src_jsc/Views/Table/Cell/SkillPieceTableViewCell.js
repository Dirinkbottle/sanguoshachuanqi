// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/Cell/SkillPieceTableViewCell.js:1
// source line 33, bytecode pc 118
(xs.Views.SkillPieceTableViewCell = xs.Views.Table.Cell.BaseCell.extend({
    draw: function(ctx) {
    // source line 7, bytecode pc 16
    this._super(ctx);
},
    ctor: function() {
    // source line 11, bytecode pc 12
    this._super();
    // source line 12, bytecode pc 42
    cc.associateWithNative(this, cc.TableViewCell);
},
    init: function(model) {
    // source line 17, bytecode pc 8
    (this.m_baseTouchPriority = -1);
    // source line 19, bytecode pc 29
    (this.headIcon = model.createHeadView());
    // source line 20, bytecode pc 115
    xs.Utils.Node.attachNodes(this, this.headIcon, { desc: "lb", offset: cc.p(50, 45), sc: false });
    // source line 22, bytecode pc 117
    return true;
},
    updateCell: function(model) {
    // source line 26, bytecode pc 21
    this.headIcon.reloadData(model);
},
    setSelected: function() {
    // source line 30, bytecode pc 19
    this.headIcon.setSelected(true);
},
    setUnSelected: function() {
    // source line 34, bytecode pc 19
    this.headIcon.setSelected(false);
}
}));
// source line 38, bytecode pc 144
(xs.Views.SkillPieceTableViewCell.create = function(model) {
    var ret;
    // source line 39, bytecode pc 23
    (ret = new xs.Views.SkillPieceTableViewCell());
    if ((ret && ret.init(model))) {
        // source line 41, bytecode pc 59
        return ret;
    }
    // source line 44, bytecode pc 88
    xs.assert(false, "xs.Views.SkillPieceTableViewCell.create fail!", ret);
    // source line 46, bytecode pc 90
    return null;
});
