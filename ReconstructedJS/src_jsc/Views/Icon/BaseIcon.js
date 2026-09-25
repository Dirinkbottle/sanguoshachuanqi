// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Icon/BaseIcon.js:1
// source line 351, bytecode pc 576
(xs.Views.Icon.BaseIcon = (xs.Views.Icon.BaseIcon || xs.Views.BaseView.extend({
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    name: "xs.Views.Icon.BaseIcon",
    Cfg: {
        Constant: {
            Bg: { zOrder: 1, tag: 1, Hp: { zOrder: 1, tag: 1 }, Name: { zOrder: 2, tag: 2 } },
            MaskDark: { zOrder: 9, tag: 9 },
            LvBg: { zOrder: 10, tag: 10 },
            Lv: { zOrder: 11, tag: 11 },
            Other: { zOrder: 12, tag: 12 },
            SellTag: { zOrder: 130, tag: 130 },
            ArmEffect: { zOrder: 201, tag: 201 }
        }
    },
    getCfg_ArmEffect: function() {
    // source line 68, bytecode pc 16
    return this.Cfg.Constant.ArmEffect;
},
    ctor: function() {
    // source line 73, bytecode pc 12
    this._super();
    // source line 74, bytecode pc 47
    cc.associateWithNative(this, xs.Views.BaseView);
},
    init: function(viewCfg) {
    // source line 79, bytecode pc 18
    this.markFuncBegin("init");
    // source line 86, bytecode pc 31
    this._super();
    // source line 89, bytecode pc 53
    (this.viewCfg = (viewCfg || {}));
    // source line 92, bytecode pc 61
    (this.bgView = null);
    // source line 95, bytecode pc 69
    (this.btn = null);
    // source line 96, bytecode pc 77
    (this.btnPriority = 0);
    // source line 97, bytecode pc 85
    (this.m_bBtnSwallowTouch = null);
    // source line 100, bytecode pc 100
    this.setCascadeOpacityEnabled(true);
    // source line 102, bytecode pc 119
    this._create_property_boolean_auto("Surrender");
    // source line 103, bytecode pc 138
    this._create_property_boolean_auto("Complete");
    // source line 104, bytecode pc 157
    this._create_property_boolean_auto("Received");
    // source line 105, bytecode pc 176
    this._create_property_boolean_auto("DarkMask");
    // source line 110, bytecode pc 212
    xs.Utils.Node.initByViewCfg(this, this.viewCfg);
    // source line 112, bytecode pc 231
    this.markFuncEnd("init");
},
    setOnClickCallBack_SubBtn: function(funcOnClick) {
    // source line 116, bytecode pc 12
    this._lazyInitSubSelectedViews();
    // source line 117, bytecode pc 34
    this.m_btnSubSelected.setOnClickCallBack(funcOnClick);
},
    setLongOnClickCallBack_SubBtn: function(funcOnClick) {
    // source line 120, bytecode pc 12
    this._lazyInitSubSelectedViews();
    // source line 121, bytecode pc 34
    this.m_btnSubSelected.setLongTimeTouchCallBack(funcOnClick);
},
    setBgViewFlipX: function(bFlipX) {
    // source line 126, bytecode pc 9
    (this.bgViewFlipX = bFlipX);
},
    getBgViewFlipX: function() {
    // source line 130, bytecode pc 6
    return this.bgViewFlipX;
},
    _lazyInitSubSelectedViews: function() {
    if (!this.m_btnSubSelected) {
        // source line 135, bytecode pc 50
        (this.m_btnSubSelected = xs.Views.Btn.createByStyleId("BS_Icon_SubSelected"));
        // source line 137, bytecode pc 79
        this.m_btnSubSelected.setAnchorPoint(xs.ap_c);
        // source line 144, bytecode pc 149
        xs.Utils.Node.attachNodes(this, this.m_btnSubSelected, { desc: "c" }, this.Cfg.Constant.Other);
    }
    if (!this.m_bgSubSelected) {
        // source line 149, bytecode pc 206
        (this.m_bgSubSelected = xs.Factorys.Sprite.create("Cmn02_Icon_SubBtn_Text_bg", "Cmn02"));
        // source line 155, bytecode pc 294
        xs.Utils.Node.attachNodes(this, this.m_bgSubSelected, { desc: "c", offset: { y: -30 } }, this.Cfg.Constant.Other);
    }
    if (!this.m_labelSubSelected) {
        // source line 159, bytecode pc 345
        (this.m_labelSubSelected = xs.Factorys.Label.createByStyleId("Default"));
        // source line 165, bytecode pc 433
        xs.Utils.Node.attachNodes(this, this.m_labelSubSelected, { desc: "c", offset: { y: -30 } }, this.Cfg.Constant.Other);
    }
    if (((this.btnPriority !== null) && (this.btnPriority !== undefined))) {
        // source line 169, bytecode pc 484
        this.setTouchPriority(this.btnPriority);
    }
    if (((this.m_bBtnSwallowTouch !== null) && (this.m_bBtnSwallowTouch !== undefined))) {
        // source line 172, bytecode pc 540
        this.btn.setSwallowTouch(this.m_bBtnSwallowTouch);
    }
},
    setOnClickCallBack: function(func) {
    // source line 180, bytecode pc 9
    (this.m_onClickCallBack = func);
    if (this.btn) {
        // source line 182, bytecode pc 45
        this.btn.setOnClickCallBack(this.m_onClickCallBack);
    }
},
    setLongTimeTouchCallBack: function(func) {
    // source line 186, bytecode pc 9
    (this.m_onLongClickCallBack = func);
    if (this.btn) {
        // source line 188, bytecode pc 45
        this.btn.setLongTimeTouchCallBack(this.m_onLongClickCallBack);
    }
},
    reloadData: function(model) {
    if ((this.m_id !== model.getId())) {
        // source line 197, bytecode pc 46
        (this.m_id = model.getId());
        // source line 198, bytecode pc 63
        this._reload_id(model);
    }
},
    _getLazyInitBgView: function(model) {
    if (!this.bgView) {
        // source line 204, bytecode pc 34
        (this.bgView = this._createHeadView(model));
        // source line 205, bytecode pc 112
        xs.Utils.Node.attachNodes(this, this.bgView, { base: "c", offset: { x: -1, y: 2 } });
    }
    // source line 210, bytecode pc 119
    return this.bgView;
},
    _reload_id: function(model) {
    // source line 215, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this.bgView);
    // source line 216, bytecode pc 41
    (this.bgView = null);
    // source line 217, bytecode pc 49
    (this.idxView = null);
    // source line 219, bytecode pc 72
    (this.bgView = this._getLazyInitBgView(model));
    // source line 222, bytecode pc 112
    (this.btn = xs.Views.Btn.createInvisibleWithParent(this.bgView));
    if (this.m_onClickCallBack) {
        // source line 227, bytecode pc 148
        this.btn.setOnClickCallBack(this.m_onClickCallBack);
    }
    if (this.m_onLongClickCallBack) {
        // source line 230, bytecode pc 184
        this.btn.setOnClickCallBack(this.m_onLongClickCallBack);
    }
    if (((this.btnPriority !== null) && (this.btnPriority !== undefined))) {
        // source line 233, bytecode pc 235
        this.setTouchPriority(this.btnPriority);
    }
    if (((this.m_bBtnSwallowTouch !== null) && (this.m_bBtnSwallowTouch !== undefined))) {
        // source line 236, bytecode pc 291
        this.btn.setSwallowTouch(this.m_bBtnSwallowTouch);
    }
},
    setTouchPriority: function(priority) {
    // source line 244, bytecode pc 9
    (this.btnPriority = priority);
    if (this.btn) {
        // source line 247, bytecode pc 47
        this.btn.setTouchPriority((this.btnPriority - 1));
    }
    if (this.m_btnSubSelected) {
        // source line 251, bytecode pc 86
        this.m_btnSubSelected.setTouchPriority((this.btnPriority - 2));
    }
},
    setSwallowTouch: function(flag) {
    // source line 258, bytecode pc 9
    (this.m_bBtnSwallowTouch = flag);
    if (this.m_btnSubSelected) {
        // source line 261, bytecode pc 45
        this.m_btnSubSelected.setSwallowTouch(this.m_bBtnSwallowTouch);
    }
    if (this.btn) {
        // source line 265, bytecode pc 81
        this.btn.setSwallowTouch(this.m_bBtnSwallowTouch);
    } else {
        // source line 267, bytecode pc 105
        this.error("setSwallowTouch need this.btn");
    }
},
    _getLazyInitSurrenderView: function() {
    var _offset;
    if (!this.lazySurrenderView) {
        // source line 276, bytecode pc 56
        (this.lazySurrenderView = xs.Factorys.Sprite.create("icon_lt_surrender", "Cmn02"));
        // source line 277, bytecode pc 85
        this.lazySurrenderView.setAnchorPoint(xs.ap_lt);
        // source line 279, bytecode pc 164
        (_offset = cc.p((-xs.Cfg.Resource.Head.w / 2), (xs.Cfg.Resource.Head.h / 2)));
        // source line 284, bytecode pc 236
        xs.Utils.Node.attachNodes(this._getLazyInitBgView(), this.lazySurrenderView, { desc: "c", offset: _offset });
    }
    // source line 288, bytecode pc 243
    return this.lazySurrenderView;
},
    _getLazyInitCompleteView: function() {
    var _offset;
    if (!this.lazyCompleteView) {
        // source line 294, bytecode pc 56
        (this.lazyCompleteView = xs.Factorys.Sprite.create("icon_lt_complete", "Cmn01"));
        // source line 295, bytecode pc 85
        this.lazyCompleteView.setAnchorPoint(xs.ap_lt);
        // source line 297, bytecode pc 164
        (_offset = cc.p((-xs.Cfg.Resource.Head.w / 2), (xs.Cfg.Resource.Head.h / 2)));
        // source line 304, bytecode pc 242
        xs.Utils.Node.attachNodes(this, this.lazyCompleteView, { desc: "c", offset: _offset }, this.Cfg.Constant.Other);
    }
    // source line 308, bytecode pc 249
    return this.lazyCompleteView;
},
    _getLazyInitReceivedView: function() {
    if (!this.lazyReceivedView) {
        // source line 314, bytecode pc 56
        (this.lazyReceivedView = xs.Factorys.Sprite.create("Cmn02_icon_over_num", "Cmn02"));
        // source line 315, bytecode pc 85
        this.lazyReceivedView.setAnchorPoint(xs.ap_c);
        // source line 325, bytecode pc 155
        xs.Utils.Node.attachNodes(this, this.lazyReceivedView, { desc: "c" }, this.Cfg.Constant.Other);
    }
    // source line 329, bytecode pc 162
    return this.lazyReceivedView;
},
    _getLazyInitDarkMaskView: function() {
    if (!this.m_lazyDarkMaskView) {
        // source line 334, bytecode pc 56
        (this.m_lazyDarkMaskView = xs.Factorys.Sprite.create("Cmn02_icon_mask_dark", "Cmn02"));
        // source line 335, bytecode pc 85
        this.m_lazyDarkMaskView.setAnchorPoint(xs.ap_c);
        // source line 341, bytecode pc 179
        xs.Utils.Node.attachNodes(this, this.m_lazyDarkMaskView, { desc: "c", offset: { x: 1, y: -1 } }, this.Cfg.Constant.MaskDark);
    }
    // source line 345, bytecode pc 186
    return this.m_lazyDarkMaskView;
},
    setSellTag: function(idx) {
    var _offset;
    // source line 353, bytecode pc 22
    this.log(("setSellTag:" + idx));
    // source line 355, bytecode pc 56
    xs.Utils.Node.removeChildSafe(this.m_view_selltag);
    // source line 356, bytecode pc 64
    (this.m_view_selltag = null);
    if (((idx !== 0) && ((idx !== null) && (idx !== undefined)))) {
        // source line 359, bytecode pc 158
        (this.m_view_selltag = xs.Factorys.Sprite.create("SellTag_Cell", "SellTag", [ idx ]));
        // source line 360, bytecode pc 187
        this.m_view_selltag.setAnchorPoint(xs.ap_lt);
        // source line 364, bytecode pc 272
        (_offset = cc.p(((-xs.Cfg.Resource.Head.w / 2) - 10), ((xs.Cfg.Resource.Head.h / 2) + 11)));
        // source line 371, bytecode pc 350
        xs.Utils.Node.attachNodes(this, this.m_view_selltag, { desc: "lt", offset: _offset }, this.Cfg.Constant.SellTag);
    }
}
})));
