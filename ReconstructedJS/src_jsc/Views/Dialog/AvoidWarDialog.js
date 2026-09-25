// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/AvoidWarDialog.js:1
// source line 24, bytecode pc 73
(xs.Views.AvoidWarNode = cc.Node.extend({
    ctor: function() {
    // source line 9, bytecode pc 12
    this._super();
    // source line 10, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function() {
    if (!this._super()) {
        // source line 14, bytecode pc 19
        return false;
    }
    // source line 17, bytecode pc 57
    (this.tableView = xs.Views.Table.AvoidWarTableView.create());
    // source line 18, bytecode pc 88
    this.setContentSize(this.tableView.getContentSize());
    // source line 19, bytecode pc 108
    this.addChild(this.tableView);
    // source line 21, bytecode pc 110
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 25, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 26, bytecode pc 34
    this.tableView.setBaseTouchPriority(this.m_baseTouchPriority);
}
}));
// source line 31, bytecode pc 99
(xs.Views.AvoidWarNode.create = function() {
    var ret;
    // source line 32, bytecode pc 23
    (ret = new xs.Views.AvoidWarNode());
    if ((ret && ret.init())) {
        // source line 34, bytecode pc 55
        return ret;
    }
    // source line 37, bytecode pc 84
    xs.assert(false, "xs.Views.AvoidWarNode.create fail!", ret);
    // source line 39, bytecode pc 86
    return null;
});
// source line 74, bytecode pc 203
(xs.Views.Dialog.AvoidWarDialog = xs.Views.HungerLayer.extend({
    name: "AvoidWarDialog",
    init: function(model) {
    if (!this._super()) {
        // source line 49, bytecode pc 19
        return false;
    }
    // source line 53, bytecode pc 68
    (this.mainBoard = xs.Views.MessagePopView.create(xs.Views.MessagePopViewType_One));
    // source line 55, bytecode pc 101
    (this.contentNode = xs.Views.AvoidWarNode.create());
    // source line 57, bytecode pc 152
    this.mainBoard.setTitle(xs.Tools.String.createString("auto_name_318"));
    // source line 58, bytecode pc 177
    this.mainBoard.setContentNode(this.contentNode);
    // source line 59, bytecode pc 228
    this.mainBoard.setCenterBtnTxt(xs.Tools.String.createString("auto_name_319"));
    // source line 60, bytecode pc 248
    this.mainBoard.setListener(this);
    // source line 61, bytecode pc 312
    xs.Utils.Node.attachNodes(this, this.mainBoard, null, xs.Cfg.Scene.CommonScene.Dialog);
    // source line 63, bytecode pc 314
    return true;
},
    onEnter: function() {
    // source line 67, bytecode pc 12
    this._super();
},
    centerBtnCallback: function() {
    // source line 71, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    setBaseTouchPriority: function(priority) {
    // source line 75, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 76, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 77, bytecode pc 56
    this.mainBoard.setBaseTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 81, bytecode pc 234
(xs.Views.Dialog.AvoidWarDialog.create = function() {
    var ret;
    // source line 82, bytecode pc 28
    (ret = new xs.Views.Dialog.AvoidWarDialog());
    if ((ret && ret.init())) {
        // source line 84, bytecode pc 60
        return ret;
    }
    // source line 87, bytecode pc 89
    xs.assert(false, "xs.Views.Dialog.AvoidWarDialog.create fail!", ret);
    // source line 89, bytecode pc 91
    return null;
});
// source line 94, bytecode pc 314
xs.Views.Mgr.registerDialog("AvoidWarDialog", { "class": xs.Views.Dialog.AvoidWarDialog, styleType: xs.Constant_DlgStyleType_Large });
