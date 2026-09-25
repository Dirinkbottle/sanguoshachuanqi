// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/NotificationNode.js:1
// source line 15, bytecode pc 63
(xs.Views.NotificationNode = cc.Node.extend({
    ctor: function() {
    // source line 12, bytecode pc 12
    this._super();
    // source line 13, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function() {
    var loadingLayer;
    if (!this._super()) {
        // source line 18, bytecode pc 19
        return false;
    }
    // source line 21, bytecode pc 49
    (loadingLayer = xs.Views.LoadingView.create());
    // source line 22, bytecode pc 95
    loadingLayer.setTag(xs.Cfg.Scene.CommonScene.Loading.tag);
    // source line 23, bytecode pc 141
    loadingLayer.setZOrder(xs.Cfg.Scene.CommonScene.Loading.zOrder);
    // source line 24, bytecode pc 187
    loadingLayer.setBaseTouchPriority(xs.Cfg.Scene.CommonScene.Loading.priority);
    // source line 25, bytecode pc 220
    xs.Utils.Node.attachNodes(this, loadingLayer);
    // source line 26, bytecode pc 237
    loadingLayer.setVisible(true);
    // source line 28, bytecode pc 247
    (this.m_arm_loading = loadingLayer);
    // source line 31, bytecode pc 265
    this.m_arm_loading.play();
    // source line 37, bytecode pc 267
    return true;
}
}));
// source line 41, bytecode pc 89
(xs.Views.NotificationNode.create = function() {
    var node;
    // source line 42, bytecode pc 23
    (node = new xs.Views.NotificationNode());
    if ((node && node.init())) {
        // source line 44, bytecode pc 55
        return node;
    }
    // source line 46, bytecode pc 78
    xs.warn("xs.Views.NotificationNode.create error!");
    // source line 47, bytecode pc 80
    return null;
});
// source line 51, bytecode pc 149
xs.Views.Mgr.registerNotificationNode("Loading", { "class": xs.Views.NotificationNode });
// source line 55, bytecode pc 204
xs.Views.Mgr.registerNotificationNode("EmptyNode", { "class": cc.Node });
