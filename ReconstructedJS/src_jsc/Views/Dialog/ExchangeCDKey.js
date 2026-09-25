// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/ExchangeCDKey.js:1
// source line 99, bytecode pc 438
(xs.Views.Dialog.ExchangeCDKey = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 8, bytecode pc 12
    this._super();
    // source line 9, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    var ccbNode, editBoxBgSprite, pos;
    // source line 13, bytecode pc 12
    this._super();
    // source line 15, bytecode pc 43
    (ccbNode = xs.ccb_reader.load("ccb3/0_6_2_ExchangeCdKey.ccbi"));
    // source line 16, bytecode pc 83
    ccbNode.setContentSize(cc.size(732, 402));
    // source line 17, bytecode pc 127
    ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 20, bytecode pc 135
    (this.m_title = null);
    // source line 21, bytecode pc 143
    (this.m_tip = null);
    // source line 22, bytecode pc 151
    (this.m_btn_cancel = null);
    // source line 23, bytecode pc 159
    (this.m_btn_exchange = null);
    // source line 24, bytecode pc 167
    (this.m_btn_close = null);
    // source line 26, bytecode pc 212
    xs.Utils.UI.replaceCcbByCfg(ccbNode, this.cfg.ccbCfg, this);
    // source line 28, bytecode pc 263
    this.m_title.setString(xs.Tools.String.createString("exchangeCdKey_title"));
    // source line 29, bytecode pc 314
    this.m_tip.setString(xs.Tools.String.createString("exchangeCdKey_tip"));
    // source line 32, bytecode pc 349
    (editBoxBgSprite = ccbNode.getChildByTag(this.cfg.editBox.tag));
    // source line 33, bytecode pc 367
    (pos = editBoxBgSprite.getPosition());
    // source line 34, bytecode pc 382
    editBoxBgSprite.removeFromParent();
    // source line 35, bytecode pc 438
    (this.editBox = cc.EditBox.create(cc.size(500, 43), editBoxBgSprite));
    // source line 36, bytecode pc 460
    this.editBox.setPosition(pos);
    // source line 37, bytecode pc 482
    ccbNode.addChild(this.editBox);
    // source line 39, bytecode pc 506
    this.m_btn_cancel.setOnClickCallBack(function() {
    // source line 40, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 43, bytecode pc 544
    this.m_btn_exchange.setOnClickCallBack(this.onExchange.bind(this));
    // source line 45, bytecode pc 568
    this.m_btn_close.setOnClickCallBack(function() {
    // source line 46, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 49, bytecode pc 624
    xs.Utils.Node.attachNodes(this, ccbNode, { desc: "c", sc: true });
    // source line 51, bytecode pc 626
    return true;
},
    onExchange: function() {
    var cdKey;
    // source line 55, bytecode pc 20
    (cdKey = this.editBox.getText());
    if (cdKey) {
        // source line 67, bytecode pc 85
        xs.Tools.Net.requestExchangeCDKey({ cdkey_string: cdKey }, this.onResponse, function(params) {
    var _error_code;
    // source line 61, bytecode pc 11
    (_error_code = params.error_code);
    // source line 64, bytecode pc 42
    xs.Views.Mgr.showToastByStringKey(_error_code);
    // source line 66, bytecode pc 44
    return true;
}, this);
    } else {
        // source line 69, bytecode pc 150
        xs.Views.Mgr.showToast(xs.Tools.String.createString("exchangeCdKey_tip"));
    }
},
    onResponse: function(jsonObj) {
    // source line 74, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 75, bytecode pc 68
    xs.Tools.Net.getInstance().UseItemSuccess(jsonObj);
},
    setBaseTouchPriority: function(priority) {
    // source line 79, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 80, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 81, bytecode pc 71
    this.editBox.setTouchPriority((this.m_baseTouchPriority + this.cfg.editBox.priority));
    // source line 82, bytecode pc 113
    this.m_btn_cancel.setTouchPriority((this.m_baseTouchPriority + this.cfg.leftBtn.priority));
    // source line 83, bytecode pc 155
    this.m_btn_exchange.setTouchPriority((this.m_baseTouchPriority + this.cfg.rightBtn.priority));
    // source line 84, bytecode pc 197
    this.m_btn_close.setTouchPriority((this.m_baseTouchPriority + this.cfg.closeBtn.priority));
},
    cfg: {
        editBox: { priority: -1, tag: 12 },
        leftBtn: { priority: -1 },
        rightBtn: { priority: -1 },
        closeBtn: { priority: -1 },
        ccbCfg: [
            { tag: 10, type: "ls", name: "m_title", id: "LS_popUI1" },
            { tag: 11, type: "ls", name: "m_tip", id: "LS_popUI2" },
            { tag: 13, type: "btn", name: "m_btn_cancel", id: "Btn_Cancel" },
            { tag: 14, type: "btn", name: "m_btn_exchange", id: "Btn_Exchange" },
            { tag: 15, type: "btn", name: "m_btn_close", id: "Btn_Close" }
        ]
    }
}));
// source line 104, bytecode pc 469
(xs.Views.Dialog.ExchangeCDKey.create = function() {
    var ret;
    // source line 105, bytecode pc 28
    (ret = new xs.Views.Dialog.ExchangeCDKey());
    if ((ret && ret.init())) {
        // source line 107, bytecode pc 60
        return ret;
    }
    // source line 109, bytecode pc 62
    return null;
});
// source line 114, bytecode pc 549
xs.Views.Mgr.registerDialog("ExchangeCDKey", { "class": xs.Views.Dialog.ExchangeCDKey, styleType: xs.Constant_DlgStyleType_Large });
