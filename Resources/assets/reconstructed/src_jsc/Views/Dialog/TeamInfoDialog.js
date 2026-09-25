// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/TeamInfoDialog.js:1
// source line 29, bytecode pc 93
(xs.Views.Dialog.TeamInfoDialog = xs.Views.HungerLayer.extend({
    init: function(playerId, playerData) {
    if (!this._super()) {
        // source line 12, bytecode pc 19
        return false;
    }
    // source line 15, bytecode pc 27
    (this.m_mainLayer = null);
    // source line 17, bytecode pc 68
    (this.m_mainLayer = xs.Scene.TeamBuildLayer.create(playerId, playerData));
    // source line 18, bytecode pc 104
    xs.Utils.Node.attachNodes(this, this.m_mainLayer);
    // source line 20, bytecode pc 106
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 23, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 24, bytecode pc 34
    this.m_mainLayer.setBaseTouchPriority(this.m_baseTouchPriority);
},
    onEnter: function() {
    // source line 27, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 30, bytecode pc 12
    this._super();
}
}));
// source line 35, bytecode pc 124
(xs.Views.Dialog.TeamInfoDialog.create = function(playerId, playerData) {
    var dialog;
    // source line 36, bytecode pc 28
    (dialog = new xs.Views.Dialog.TeamInfoDialog());
    if ((dialog && dialog.init(playerId, playerData))) {
        // source line 38, bytecode pc 68
        return dialog;
    }
    // source line 40, bytecode pc 91
    xs.warn("xs.Views.Dialog.TeamInfoDialog.create error!");
    // source line 41, bytecode pc 93
    return null;
});
// source line 44, bytecode pc 155
(xs.Views.Dialog.TeamInfoDialog.load = function() {
    // source line 45, bytecode pc 32
    xs.Factorys.Sprite.load("ZuiduiMenuScene01");
});
// source line 48, bytecode pc 186
(xs.Views.Dialog.TeamInfoDialog.unload = function() {
    // source line 49, bytecode pc 32
    xs.Factorys.Sprite.unload("ZuiduiMenuScene01");
});
// source line 56, bytecode pc 266
xs.Views.Mgr.registerDialog("TeamInfoDialog", { "class": xs.Views.Dialog.TeamInfoDialog, styleType: xs.Constant_DlgStyleType_Normal });
