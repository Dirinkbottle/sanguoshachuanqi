// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/SelectOpenBoxNumDialog.js:1
// source line 142, bytecode pc 472
(xs.Views.Dialog.SelectOpenBoxNumDialog = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 6, bytecode pc 12
    this._super();
    // source line 7, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(data) {
    if (!this._super()) {
        // source line 12, bytecode pc 19
        return false;
    }
    // source line 14, bytecode pc 34
    (this.data = data.param);
    // source line 15, bytecode pc 42
    (this.selectNum = 1);
    // source line 16, bytecode pc 50
    (this.minNum = 1);
    // source line 17, bytecode pc 65
    (this.maxNum = data.num);
    if ((this.maxNum > 100)) {
        // source line 21, bytecode pc 88
        (this.maxNum = 100);
    }
    // source line 24, bytecode pc 96
    (this.m_titleLabel = null);
    // source line 25, bytecode pc 104
    (this.m_tipLabel = null);
    // source line 26, bytecode pc 112
    (this.m_openNumLabel = null);
    // source line 27, bytecode pc 120
    (this.m_openMaxNum = null);
    // source line 28, bytecode pc 128
    (this.m_cancelBtn = null);
    // source line 29, bytecode pc 136
    (this.m_confirmBtn = null);
    // source line 30, bytecode pc 144
    (this.m_btnClose = null);
    // source line 33, bytecode pc 180
    (this.ccbNode = xs.ccb_reader.load("ccb3/selectOpenBoxDialog.ccbi", this));
    // source line 34, bytecode pc 223
    this.ccbNode.setContentSize(cc.size(660, 313));
    // source line 35, bytecode pc 270
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 38, bytecode pc 329
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", sc: true });
    // source line 40, bytecode pc 377
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 42, bytecode pc 401
    this.m_titleLabel.setStringById("openBox_2");
    // source line 43, bytecode pc 425
    this.m_tipLabel.setStringById("openBox_3");
    // source line 44, bytecode pc 450
    this.m_openNumLabel.setString(this.selectNum);
    // source line 45, bytecode pc 508
    this.m_openMaxNum.setString((xs.Tools.String.createString("openBox_4") + this.maxNum));
    // source line 48, bytecode pc 580
    (this.add1Btn = xs.Utils.replaceButton(this.ccbNode, 14, xs.Views.Button.ChangeNumBtn.create(1)));
    // source line 49, bytecode pc 618
    this.add1Btn.setOnClickCallBack(this.onChgNum.bind(this));
    // source line 52, bytecode pc 691
    (this.decrease1Btn = xs.Utils.replaceButton(this.ccbNode, 13, xs.Views.Button.ChangeNumBtn.create(2)));
    // source line 53, bytecode pc 729
    this.decrease1Btn.setOnClickCallBack(this.onChgNum.bind(this));
    // source line 56, bytecode pc 802
    (this.add10Btn = xs.Utils.replaceButton(this.ccbNode, 15, xs.Views.Button.ChangeNumBtn.create(3)));
    // source line 57, bytecode pc 840
    this.add10Btn.setOnClickCallBack(this.onChgNum.bind(this));
    // source line 60, bytecode pc 913
    (this.decrease10Btn = xs.Utils.replaceButton(this.ccbNode, 12, xs.Views.Button.ChangeNumBtn.create(4)));
    // source line 61, bytecode pc 951
    this.decrease10Btn.setOnClickCallBack(this.onChgNum.bind(this));
    // source line 64, bytecode pc 1024
    (this.maxBtn = xs.Utils.replaceButton(this.ccbNode, 16, xs.Views.Button.ChangeNumBtn.create(5)));
    // source line 65, bytecode pc 1062
    this.maxBtn.setOnClickCallBack(this.onChgNum.bind(this));
    // source line 67, bytecode pc 1100
    this.m_confirmBtn.setOnClickCallBack(this.onClick.bind(this));
    // source line 68, bytecode pc 1138
    this.m_cancelBtn.setOnClickCallBack(this.onClick.bind(this));
    // source line 69, bytecode pc 1176
    this.m_btnClose.setOnClickCallBack(this.onClose.bind(this));
    // source line 71, bytecode pc 1178
    return true;
},
    setListener: function(listener) {
    // source line 75, bytecode pc 9
    (this.m_listener = listener);
},
    onClose: function() {
    // source line 79, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    onClick: function(sender) {
    // source line 83, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    if ((sender === this.m_confirmBtn)) {
        // source line 85, bytecode pc 66
        this.m_listener.confirmSelect(this.selectNum);
    }
},
    onChgNum: function(sender) {
    // source line 90, bytecode pc 3
    switch (sender) {
        case this.add1Btn:
        if ((this.selectNum < this.maxNum)) {
            // source line 93, bytecode pc 96
            (this.selectNum = (this.selectNum + 1));
        }
        break;
        case this.decrease1Btn:
        if ((this.selectNum > this.minNum)) {
            // source line 98, bytecode pc 134
            (this.selectNum = (this.selectNum - 1));
        }
        break;
        case this.add10Btn:
        // source line 102, bytecode pc 193
        (((this.selectNum + 10) < this.maxNum) ? (this.selectNum = (this.selectNum + 10)) : (this.selectNum = this.maxNum));
        break;
        case this.decrease10Btn:
        // source line 107, bytecode pc 252
        (((this.selectNum - 10) > this.minNum) ? (this.selectNum = (this.selectNum - 10)) : (this.selectNum = this.minNum));
        break;
        case this.maxBtn:
        // source line 112, bytecode pc 270
        (this.selectNum = this.maxNum);
        break;
        default:
        break;
    }
    // source line 116, bytecode pc 306
    this.m_openNumLabel.setString((this.selectNum + ""));
},
    setBaseTouchPriority: function(priority) {
    // source line 120, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 121, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 123, bytecode pc 56
    this.add1Btn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 124, bytecode pc 83
    this.decrease1Btn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 125, bytecode pc 110
    this.add10Btn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 126, bytecode pc 137
    this.decrease10Btn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 127, bytecode pc 164
    this.maxBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 129, bytecode pc 191
    this.m_cancelBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 130, bytecode pc 218
    this.m_confirmBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 131, bytecode pc 245
    this.m_btnClose.setTouchPriority((this.m_baseTouchPriority - 1));
},
    cfg: {
        ccbCfg: [
            { tag: 1, type: "ls", name: "m_titleLabel", id: "LS_popUI1" },
            { tag: 2, type: "ls", name: "m_tipLabel", id: "LS_popUI2" },
            { tag: 3, type: "ls", name: "m_openNumLabel", id: "LS_popUI4" },
            { tag: 4, type: "ls", name: "m_openMaxNum", id: "LS_popUI2" },
            { tag: 17, type: "btn", name: "m_cancelBtn", id: "Btn_Cancel" },
            { tag: 18, type: "btn", name: "m_confirmBtn", id: "Btn_Confirm" },
            { tag: 50, type: "btn", name: "m_btnClose", id: "Btn_Close" }
        ]
    }
}));
// source line 147, bytecode pc 503
(xs.Views.Dialog.SelectOpenBoxNumDialog.create = function(data) {
    var ret;
    // source line 148, bytecode pc 28
    (ret = new xs.Views.Dialog.SelectOpenBoxNumDialog());
    if ((ret && ret.init(data))) {
        // source line 150, bytecode pc 64
        return ret;
    }
    // source line 152, bytecode pc 66
    return null;
});
// source line 157, bytecode pc 583
xs.Views.Mgr.registerDialog("SelectOpenBoxNumDialog", { "class": xs.Views.Dialog.SelectOpenBoxNumDialog, styleType: xs.Constant_DlgStyleType_Small });
