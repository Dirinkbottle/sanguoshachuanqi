// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Icon/IconWrapped.js:1
// source line 198, bytecode pc 329
(xs.Views.Icon.IconWrapped = (xs.Views.Icon.IconWrapped || xs.Views.BaseView.extend({
    name: "xs.Views.Icon.IconWrapped",
    Cfg: { Constant: { Ori: { zOrder: 1, tag: 1 }, Other: { zOrder: 10, tag: 10 } } },
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    init: function() {
    // source line 33, bytecode pc 12
    this._super();
    // source line 35, bytecode pc 20
    (this.m_viewOri = null);
    // source line 37, bytecode pc 28
    (this.m_bBtnSwallowTouch = true);
    // source line 38, bytecode pc 36
    (this.btnPriority = 0);
},
    reloadData: function(modelWrapped) {
    // source line 44, bytecode pc 16
    this._reloadData_oriView(modelWrapped);
    // source line 46, bytecode pc 33
    this._reloadData_wrapped(modelWrapped);
},
    setOnClickCallBack: function(func) {
    // source line 50, bytecode pc 12
    this._lazyInitSubSelectedViews();
    // source line 52, bytecode pc 34
    this.m_viewOri.setOnClickCallBack(func);
},
    setLongTimeTouchCallBack: function(func) {
    // source line 55, bytecode pc 12
    this._lazyInitSubSelectedViews();
    // source line 57, bytecode pc 34
    this.m_viewOri.setLongTimeTouchCallBack(func);
},
    _reloadData_oriView: function(modelWrapped) {
    var _modelOri;
    // source line 62, bytecode pc 17
    (_modelOri = modelWrapped.getOriModel());
    if (!this.m_viewOri) {
        // source line 67, bytecode pc 50
        (this.m_viewOri = _modelOri.createIcon_GradeAndNameOrLv());
        // source line 73, bytecode pc 120
        xs.Utils.Node.attachNodes(this, this.m_viewOri, { desc: "c" }, this.Cfg.Constant.Ori);
        // source line 76, bytecode pc 133
        this._refreshSwallowTouch();
        // source line 77, bytecode pc 146
        this._refreshTouchPriority();
    } else {
        // source line 81, bytecode pc 173
        this.m_viewOri.reloadData(_modelOri);
    }
},
    _reloadData_wrapped: function(modelWrapped) {
    var _cur, _max;
    // source line 87, bytecode pc 12
    this._lazyInitSubSelectedViews();
    if (modelWrapped.isSubSelectNumAble()) {
        // source line 90, bytecode pc 51
        this.m_btnSubSelected.setVisible(true);
    } else {
        // source line 93, bytecode pc 76
        this.m_btnSubSelected.setVisible(false);
    }
    // source line 96, bytecode pc 94
    (_cur = modelWrapped.getSelectNum());
    // source line 97, bytecode pc 123
    (_max = modelWrapped.getOriModel().getNum());
    // source line 100, bytecode pc 161
    this.m_labelSubSelected.setString(((("" + _cur) + "/") + _max));
},
    _lazyInitSubSelectedViews: function() {
    var _offset;
    if (!this.m_btnSubSelected) {
        // source line 106, bytecode pc 50
        (this.m_btnSubSelected = xs.Views.Btn.createByStyleId("BS_Icon_SubSelected"));
        // source line 108, bytecode pc 79
        this.m_btnSubSelected.setAnchorPoint(xs.ap_rt);
        // source line 112, bytecode pc 157
        (_offset = cc.p((xs.Cfg.Resource.Head.w / 2), (xs.Cfg.Resource.Head.h / 2)));
        // source line 120, bytecode pc 235
        xs.Utils.Node.attachNodes(this, this.m_btnSubSelected, { desc: "c", offset: _offset }, this.Cfg.Constant.Other);
    }
    if (!this.m_bgSubSelected) {
        // source line 125, bytecode pc 292
        (this.m_bgSubSelected = xs.Factorys.Sprite.create("Cmn02_Icon_SubBtn_Text_bg", "Cmn02"));
        // source line 131, bytecode pc 380
        xs.Utils.Node.attachNodes(this, this.m_bgSubSelected, { desc: "c", offset: { y: -30 } }, this.Cfg.Constant.Other);
    }
    if (!this.m_labelSubSelected) {
        // source line 135, bytecode pc 431
        (this.m_labelSubSelected = xs.Factorys.Label.createByStyleId("LS_EXPInf"));
        // source line 141, bytecode pc 519
        xs.Utils.Node.attachNodes(this, this.m_labelSubSelected, { desc: "c", offset: { y: -30 } }, this.Cfg.Constant.Other);
    }
    // source line 144, bytecode pc 532
    this._refreshSwallowTouch();
    // source line 145, bytecode pc 545
    this._refreshTouchPriority();
},
    _refreshSwallowTouch: function() {
    if (this.m_viewOri) {
        // source line 153, bytecode pc 35
        this.m_viewOri.setSwallowTouch(this.m_bBtnSwallowTouch);
    } else {
        // source line 155, bytecode pc 59
        this.error("setSwallowTouch need this.m_viewOri");
    }
    if (this.m_btnSubSelected) {
        // source line 159, bytecode pc 90
        this.m_btnSubSelected.setSwallowTouch(true);
    }
},
    _refreshTouchPriority: function() {
    if (this.m_viewOri) {
        // source line 165, bytecode pc 37
        this.m_viewOri.setTouchPriority((this.btnPriority - 1));
    } else {
        // source line 168, bytecode pc 61
        this.error("setTouchPriority need this.m_viewOri");
    }
    if (this.m_btnSubSelected) {
        // source line 172, bytecode pc 100
        this.m_btnSubSelected.setTouchPriority((this.btnPriority - 2));
    }
},
    setTouchPriority: function(priority) {
    // source line 180, bytecode pc 9
    (this.btnPriority = priority);
    // source line 182, bytecode pc 22
    this._refreshTouchPriority();
},
    setSwallowTouch: function(flag) {
    // source line 188, bytecode pc 9
    (this.m_bBtnSwallowTouch = flag);
    // source line 190, bytecode pc 22
    this._refreshSwallowTouch();
},
    setOnClickCallBack_SubBtn: function(funcOnClick) {
    // source line 195, bytecode pc 12
    this._lazyInitSubSelectedViews();
    // source line 196, bytecode pc 34
    this.m_btnSubSelected.setOnClickCallBack(funcOnClick);
},
    setLongOnClickCallBack_SubBtn: function(funcOnClick) {
    // source line 199, bytecode pc 12
    this._lazyInitSubSelectedViews();
    // source line 200, bytecode pc 34
    this.m_btnSubSelected.setLongTimeTouchCallBack(funcOnClick);
}
})));
// source line 206, bytecode pc 360
(xs.Views.Icon.IconWrapped.create = function(modelWrapped) {
    var _ret;
    // source line 207, bytecode pc 28
    (_ret = new xs.Views.Icon.IconWrapped());
    // source line 208, bytecode pc 43
    _ret.init();
    // source line 209, bytecode pc 62
    _ret.reloadData(modelWrapped);
    // source line 211, bytecode pc 66
    return _ret;
});
