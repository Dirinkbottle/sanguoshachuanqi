// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/AnnouncementExt.js:1
// source line 54, bytecode pc 165
(xs.Views.Dialog.AnnouncementExt = xs.Views.Dialog.CommonDialog.extend({
    ccbCfg: [ { tag: 11, type: "ls", title: "", id: "LS_popUI1", stringId: "auto_name_317" } ],
    loadCCBI: function() {
    var _visibleSize, _BGccbNodeSize;
    // source line 6, bytecode pc 24
    (_visibleSize = xs.director.getVisibleSize());
    // source line 7, bytecode pc 60
    (this._BGccbNode = xs.ccb_reader.load("ccb3/0_6_2_PublicNotice.ccbi", this));
    // source line 8, bytecode pc 81
    (_BGccbNodeSize = this._BGccbNode.getContentSize());
    // source line 14, bytecode pc 191
    xs.Utils.Node.attachNodes(this, this._BGccbNode, {
    desc: "lb",
    sc: true,
    offset: { x: ((_visibleSize.width - 782) / 2), y: ((_visibleSize.height - 605) / 2) }
});
    // source line 18, bytecode pc 234
    xs.Utils.UI.replaceCcbByCfg(this._BGccbNode, this.ccbCfg, this);
},
    initWithData: function(params) {
    if (!this.init()) {
        // source line 22, bytecode pc 19
        return false;
    }
    // source line 24, bytecode pc 32
    this.loadCCBI();
    // source line 27, bytecode pc 63
    (this._EffectScrollViewSize = cc.size(750, 505));
    // source line 28, bytecode pc 103
    (this._EffectScrollView = xs.Views.ScrollView.create(this._EffectScrollViewSize));
    // source line 29, bytecode pc 144
    this._EffectScrollView.setPosition(cc.p(16, 12));
    // source line 32, bytecode pc 185
    xs.Utils.Node.attachNodes(this._BGccbNode, this._EffectScrollView);
    // source line 34, bytecode pc 235
    (this.m_endButton = xs.Utils.replaceButton(this._BGccbNode, 10, "Btn_Close", ""));
    // source line 36, bytecode pc 259
    this.m_endButton.setOnClickCallBack(function() {
    // source line 37, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 40, bytecode pc 275
    this.setBaseTouchPriority(-100);
    // source line 43, bytecode pc 288
    this.showDialog();
    // source line 44, bytecode pc 290
    return true;
},
    showDialog: function() {
    var i;
    // source line 48, bytecode pc 4
    (i = 0);
    while ((i < 10)) {
        // source line 50, bytecode pc 50
        this._EffectScrollView.addChildrenView(xs.DetailDialogComponent.createDStyleS());
        // source line 48, bytecode pc 64
        (i = (+i + 1));
    }
    // source line 52, bytecode pc 95
    this._EffectScrollView.resizeView();
},
    setBaseTouchPriority: function(priority) {
    // source line 55, bytecode pc 24
    this.m_endButton.setTouchPriority((priority - 3));
    // source line 56, bytecode pc 48
    this._EffectScrollView.setTouchPriority((priority - 1));
    // source line 57, bytecode pc 73
    this._EffectScrollView.setBaseTouchPriority((priority - 2));
}
}));
// source line 62, bytecode pc 196
(xs.Views.Dialog.AnnouncementExt.create = function(params) {
    var obj, param;
    // source line 63, bytecode pc 28
    (obj = new xs.Views.Dialog.AnnouncementExt());
    // source line 64, bytecode pc 47
    (param = (params || {}));
    if ((obj && obj.initWithData(param))) {
        // source line 66, bytecode pc 94
        obj.showDialog();
        // source line 67, bytecode pc 98
        return obj;
    }
    // source line 69, bytecode pc 100
    return null;
});
// source line 73, bytecode pc 276
xs.Views.Mgr.registerDialog("AnnouncementExt", { "class": xs.Views.Dialog.AnnouncementExt, styleType: xs.Constant_DlgStyleType_Large });
