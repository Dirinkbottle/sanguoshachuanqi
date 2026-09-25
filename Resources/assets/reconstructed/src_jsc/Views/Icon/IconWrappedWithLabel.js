// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Icon/IconWrappedWithLabel.js:1
// source line 115, bytecode pc 304
(xs.Views.Icon.IconWrappedWithLabel = (xs.Views.Icon.IconWrappedWithLabel || xs.Views.BaseView.extend({
    name: "xs.Views.Icon.IconWrappedWithLabel",
    Cfg: {
        Constant: {
            Bg: { zOrder: 1, tag: 1 },
            Label: { zOrder: 3, tag: 3 },
            Ori: { zOrder: 4, tag: 4 },
            Mask: { zOrder: 9, tag: 9 },
            Other: { zOrder: 10, tag: 10 }
        }
    },
    init: function() {
    // source line 43, bytecode pc 12
    this._super();
    // source line 44, bytecode pc 20
    (this.m_viewOri = null);
    // source line 45, bytecode pc 28
    (this.m_nodeTitle = null);
},
    setNodeTitle: function(node) {
    // source line 49, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this.m_nodeTitle);
    // source line 51, bytecode pc 43
    (this.m_nodeTitle = node);
    // source line 59, bytecode pc 131
    xs.Utils.Node.attachNodes(this, this.m_nodeTitle, { desc: "c", offset: { y: 65 } }, this.Cfg.Constant.Label);
},
    reloadData: function(modelWrapped) {
    // source line 68, bytecode pc 16
    this._reloadData_oriView(modelWrapped);
    // source line 69, bytecode pc 33
    this._reloadData_wrapped(modelWrapped);
},
    _reloadData_oriView: function(modelWrapped) {
    var _modelOri;
    // source line 73, bytecode pc 17
    (_modelOri = modelWrapped.getModelOri());
    if (!this.m_viewOri) {
        // source line 81, bytecode pc 50
        (this.m_viewOri = _modelOri.createIcon_GradeAndName());
        // source line 90, bytecode pc 120
        xs.Utils.Node.attachNodes(this, this.m_viewOri, { desc: "c" }, this.Cfg.Constant.Ori);
    } else {
        // source line 97, bytecode pc 156
        this.log("this.m_viewOri reloadData", this.m_viewOri.name);
        // source line 99, bytecode pc 178
        this.m_viewOri.reloadData(_modelOri);
    }
},
    getViewOri: function() {
    // source line 105, bytecode pc 6
    return this.m_viewOri;
},
    getBodySize: function() {
    // source line 111, bytecode pc 94
    return cc.size((xs.Cfg.Resource.Head.w * this.getScaleX()), (xs.Cfg.Resource.Head.h * this.getScaleY()));
},
    _reloadData_wrapped: function(modelWrapped) {
    var _modelExt;
    // source line 117, bytecode pc 17
    (_modelExt = modelWrapped.getModelExt());
    // source line 119, bytecode pc 51
    xs.Utils.Node.removeChildSafe(this.m_viewExt);
    // source line 120, bytecode pc 59
    (this.m_viewExt = null);
    if ((_modelExt.isNextReward === true)) {
        // source line 125, bytecode pc 119
        (this.m_viewExt = xs.Factorys.Sprite.create("Cmn03_Party_Bg_Select", "Cmn03"));
    } else {
        // source line 128, bytecode pc 169
        (this.m_viewExt = xs.Factorys.Sprite.create("Cmn03_Party_Bg_Normal", "Cmn03"));
    }
    // source line 138, bytecode pc 239
    xs.Utils.Node.attachNodes(this, this.m_viewExt, { desc: "c" }, this.Cfg.Constant.Bg);
    if ((_modelExt.status.is_received === true)) {
        // source line 142, bytecode pc 279
        this.m_viewOri.setReceived(true);
    } else {
        // source line 145, bytecode pc 304
        this.m_viewOri.setReceived(false);
    }
}
})));
// source line 150, bytecode pc 335
(xs.Views.Icon.IconWrappedWithLabel.create = function(modelWrapped) {
    var _ret;
    // source line 151, bytecode pc 28
    (_ret = new xs.Views.Icon.IconWrappedWithLabel());
    // source line 152, bytecode pc 43
    _ret.init();
    // source line 153, bytecode pc 62
    _ret.reloadData(modelWrapped);
    // source line 155, bytecode pc 66
    return _ret;
});
