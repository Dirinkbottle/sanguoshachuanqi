// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/MultiItemBuyDialog.js:1
// source line 140, bytecode pc 519
(xs.Views.Dialog.MultiItemBuyDialog = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 9, bytecode pc 12
    this._super();
    // source line 10, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(good) {
    if (!this._super()) {
        // source line 15, bytecode pc 19
        return false;
    }
    // source line 17, bytecode pc 29
    (this.good = good);
    // source line 18, bytecode pc 37
    (this.buyNum = 1);
    // source line 21, bytecode pc 45
    (this.minNum = 1);
    // source line 22, bytecode pc 66
    (this.maxNum = good.getCanBuyNum());
    // source line 30, bytecode pc 102
    (this.ccbNode = xs.ccb_reader.load("ccb3/0_8_5_MultiItemBuyDialog.ccbi", this));
    // source line 31, bytecode pc 145
    this.ccbNode.setContentSize(cc.size(524, 304));
    // source line 32, bytecode pc 192
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 35, bytecode pc 251
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", sc: true });
    // source line 38, bytecode pc 259
    (this.m_titleLabel = null);
    // source line 39, bytecode pc 267
    (this.m_tipLabel = null);
    // source line 40, bytecode pc 275
    (this.m_buyNumLabel = null);
    // source line 41, bytecode pc 283
    (this.m_totalPriceLabel = null);
    // source line 42, bytecode pc 291
    (this.m_cancelBtn = null);
    // source line 43, bytecode pc 299
    (this.m_confirmBtn = null);
    // source line 44, bytecode pc 307
    (this.m_btnClose = null);
    // source line 46, bytecode pc 355
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 48, bytecode pc 379
    this.m_titleLabel.setStringById("1071310069");
    // source line 49, bytecode pc 403
    this.m_tipLabel.setStringById("1071310070");
    // source line 50, bytecode pc 427
    this.m_buyNumLabel.setString("1");
    // source line 51, bytecode pc 469
    this.m_totalPriceLabel.setString(("x" + this.good.getPrice()));
    // source line 54, bytecode pc 541
    (this.add1Btn = xs.Utils.replaceButton(this.ccbNode, 14, xs.Views.Button.ChangeNumBtn.create(1)));
    // source line 55, bytecode pc 579
    this.add1Btn.setOnClickCallBack(this.onChgNum.bind(this));
    // source line 58, bytecode pc 652
    (this.decrease1Btn = xs.Utils.replaceButton(this.ccbNode, 13, xs.Views.Button.ChangeNumBtn.create(2)));
    // source line 59, bytecode pc 690
    this.decrease1Btn.setOnClickCallBack(this.onChgNum.bind(this));
    // source line 62, bytecode pc 763
    (this.add10Btn = xs.Utils.replaceButton(this.ccbNode, 15, xs.Views.Button.ChangeNumBtn.create(3)));
    // source line 63, bytecode pc 801
    this.add10Btn.setOnClickCallBack(this.onChgNum.bind(this));
    // source line 66, bytecode pc 874
    (this.decrease10Btn = xs.Utils.replaceButton(this.ccbNode, 12, xs.Views.Button.ChangeNumBtn.create(4)));
    // source line 67, bytecode pc 912
    this.decrease10Btn.setOnClickCallBack(this.onChgNum.bind(this));
    // source line 69, bytecode pc 950
    this.m_confirmBtn.setOnClickCallBack(this.onClick.bind(this));
    // source line 70, bytecode pc 988
    this.m_cancelBtn.setOnClickCallBack(this.onClick.bind(this));
    // source line 71, bytecode pc 1026
    this.m_btnClose.setOnClickCallBack(this.onClose.bind(this));
    // source line 73, bytecode pc 1028
    return true;
},
    setListener: function(listener) {
    // source line 77, bytecode pc 9
    (this.m_listener = listener);
},
    onClose: function() {
    // source line 81, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    onClick: function(sender) {
    // source line 85, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    if ((sender === this.m_confirmBtn)) {
        // source line 87, bytecode pc 73
        this.m_listener.confirmBuy(this.good, this.buyNum);
    }
},
    onChgNum: function(sender) {
    // source line 92, bytecode pc 3
    switch (sender) {
        case this.add1Btn:
        if ((this.buyNum < this.maxNum)) {
            // source line 95, bytecode pc 85
            (this.buyNum = (this.buyNum + 1));
        }
        break;
        case this.decrease1Btn:
        if ((this.buyNum > this.minNum)) {
            // source line 100, bytecode pc 123
            (this.buyNum = (this.buyNum - 1));
        }
        break;
        case this.add10Btn:
        // source line 104, bytecode pc 182
        (((this.buyNum + 10) < this.maxNum) ? (this.buyNum = (this.buyNum + 10)) : (this.buyNum = this.maxNum));
        break;
        case this.decrease10Btn:
        // source line 109, bytecode pc 241
        (((this.buyNum - 10) > this.minNum) ? (this.buyNum = (this.buyNum - 10)) : (this.buyNum = this.minNum));
        break;
        default:
        break;
    }
    // source line 113, bytecode pc 277
    this.m_buyNumLabel.setString((this.buyNum + ""));
    // source line 114, bytecode pc 326
    this.m_totalPriceLabel.setString(("x" + (this.good.getPrice() * this.buyNum)));
},
    setBaseTouchPriority: function(priority) {
    // source line 118, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 119, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 121, bytecode pc 56
    this.add1Btn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 122, bytecode pc 83
    this.decrease1Btn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 123, bytecode pc 110
    this.add10Btn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 124, bytecode pc 137
    this.decrease10Btn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 126, bytecode pc 164
    this.m_cancelBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 127, bytecode pc 191
    this.m_confirmBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 128, bytecode pc 218
    this.m_btnClose.setTouchPriority((this.m_baseTouchPriority - 1));
},
    cfg: {
        ccbCfg: [
            { tag: 1, type: "ls", name: "m_titleLabel", id: "LS_popUI1" },
            { tag: 2, type: "ls", name: "m_tipLabel", id: "LS_popUI2" },
            { tag: 3, type: "ls", name: "m_buyNumLabel", id: "LS_popUI4" },
            { tag: 4, type: "ls", name: "m_totalPriceLabel", id: "LS_liebiaoInf2" },
            { tag: 16, type: "btn", name: "m_cancelBtn", id: "Btn_Cancel" },
            { tag: 17, type: "btn", name: "m_confirmBtn", id: "Btn_Confirm" },
            { tag: 50, type: "btn", name: "m_btnClose", id: "Btn_Close" },
            { tag: 51, type: "ls", id: "LS_popUI2", stringId: "auto_name_418" }
        ]
    }
}));
// source line 145, bytecode pc 550
(xs.Views.Dialog.MultiItemBuyDialog.create = function(good) {
    var ret;
    // source line 146, bytecode pc 28
    (ret = new xs.Views.Dialog.MultiItemBuyDialog());
    if ((ret && ret.init(good))) {
        // source line 148, bytecode pc 64
        return ret;
    }
    // source line 150, bytecode pc 66
    return null;
});
// source line 155, bytecode pc 630
xs.Views.Mgr.registerDialog("MultiItemBuyDialog", { "class": xs.Views.Dialog.MultiItemBuyDialog, styleType: xs.Constant_DlgStyleType_Small });
