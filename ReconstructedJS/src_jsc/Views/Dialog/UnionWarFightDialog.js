// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/UnionWarFightDialog.js:1
// source line 23, bytecode pc 93
(xs.Views.Dialog.UnionWarFightDialog = xs.Views.HungerLayer.extend({
    init: function(param) {
    if (!this._super()) {
        // source line 7, bytecode pc 19
        return false;
    }
    // source line 10, bytecode pc 27
    (this.m_mainLayer = null);
    // source line 11, bytecode pc 64
    (this.m_mainLayer = xs.Scene.UnionWarFightLayer.create(param));
    // source line 12, bytecode pc 100
    xs.Utils.Node.attachNodes(this, this.m_mainLayer);
    // source line 14, bytecode pc 102
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 17, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 18, bytecode pc 36
    this.m_mainLayer.setBaseTouchPriority((this.m_baseTouchPriority - 1));
},
    onEnter: function() {
    // source line 21, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 24, bytecode pc 12
    this._super();
}
}));
// source line 29, bytecode pc 124
(xs.Views.Dialog.UnionWarFightDialog.create = function(param) {
    var dialog;
    // source line 30, bytecode pc 28
    (dialog = new xs.Views.Dialog.UnionWarFightDialog());
    if ((dialog && dialog.init(param))) {
        // source line 32, bytecode pc 64
        return dialog;
    }
    // source line 34, bytecode pc 87
    xs.warn("xs.Views.Dialog.UnionWarFightDialog.create error!");
    // source line 35, bytecode pc 89
    return null;
});
// source line 40, bytecode pc 204
xs.Views.Mgr.registerDialog("UnionWarFightDialog", { "class": xs.Views.Dialog.UnionWarFightDialog, styleType: xs.Constant_DlgStyleType_Normal });
