// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/FeedBack.js:1
// source line 80, bytecode pc 118
(xs.Views.FeedBack = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 9, bytecode pc 12
    this._super();
},
    init: function(data) {
    // source line 13, bytecode pc 12
    this._super();
    // source line 15, bytecode pc 46
    (this.ccbNode = xs.ccb_reader.load("ccb3/0_6_2_SendMail.ccbi"));
    // source line 16, bytecode pc 89
    this.ccbNode.setContentSize(cc.size(782, 605));
    // source line 17, bytecode pc 136
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 20, bytecode pc 195
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", sc: true });
    // source line 24, bytecode pc 245
    (this.closeBtn = xs.Utils.replaceButton(this.ccbNode, 10, "Btn_Close", ""));
    // source line 25, bytecode pc 272
    this.closeBtn.addCallBackForEvent(this, this.onCloseBtn);
    // source line 28, bytecode pc 349
    (this.leftBtn = xs.Utils.replaceButton(this.ccbNode, 11, "Btn_Default", xs.Tools.String.createString("auto_name_282")));
    // source line 29, bytecode pc 376
    this.leftBtn.addCallBackForEvent(this, this.onBtnClick);
    // source line 31, bytecode pc 453
    (this.rightBtn = xs.Utils.replaceButton(this.ccbNode, 12, "Btn_Default", xs.Tools.String.createString("auto_name_283")));
    // source line 32, bytecode pc 480
    this.rightBtn.addCallBackForEvent(this, this.onBtnClick);
    // source line 36, bytecode pc 586
    (this.textField = cc.TextFieldTTF.textFieldWithPlaceHolder(xs.Tools.String.createString("auto_name_284"), cc.size(620, 385), cc.TEXT_ALIGNMENT_LEFT, "Helvetica", 24));
    // source line 39, bytecode pc 645
    xs.Utils.Node.attachNodes(this, this.textField, { desc: "c", sc: true });
    // source line 46, bytecode pc 647
    return true;
},
    onCloseBtn: function() {
    // source line 51, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    onBtnClick: function(sender) {
    if ((sender === this.leftBtn)) {
        // source line 56, bytecode pc 27
        this.onCloseBtn();
    } else {
        if ((sender === this.rightBtn)) {
            // source line 60, bytecode pc 112
            xs.Tools.Net.requestSendFeedBack({ message: this.textField.getString() }, this.onResponse, this);
        }
    }
},
    onResponse: function(jsObj) {
    // source line 66, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_285"));
    // source line 67, bytecode pc 86
    xs.Views.Mgr.hideDialog();
},
    onTouchEnded: function(touch, e) {
    var point;
    // source line 72, bytecode pc 19
    (point = this.convertTouchToNodeSpace(touch));
    if (cc.rectContainsPoint(this.textField.getBoundingBox(), point)) {
        // source line 74, bytecode pc 80
        this.textField.attachWithIME();
    } else {
        // source line 76, bytecode pc 103
        this.textField.detachWithIME();
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 81, bytecode pc 9
    (this.m_touchPriority = priority);
    // source line 82, bytecode pc 36
    this.leftBtn.setTouchPriority((this.m_touchPriority - 1));
    // source line 83, bytecode pc 63
    this.rightBtn.setTouchPriority((this.m_touchPriority - 1));
    // source line 84, bytecode pc 90
    this.closeBtn.setTouchPriority((this.m_touchPriority - 1));
}
}));
// source line 88, bytecode pc 144
(xs.Views.FeedBack.create = function() {
    var ret;
    // source line 89, bytecode pc 23
    (ret = new xs.Views.FeedBack());
    if ((ret && ret.init())) {
        // source line 91, bytecode pc 55
        return ret;
    }
    // source line 93, bytecode pc 57
    return null;
});
