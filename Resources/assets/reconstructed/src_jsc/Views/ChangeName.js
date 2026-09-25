// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/ChangeName.js:1
// source line 72, bytecode pc 138
(xs.Views.ChangeNameView = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 3, bytecode pc 12
    this._super();
},
    init: function() {
    var editBg;
    if (!this._super()) {
        // source line 7, bytecode pc 19
        return false;
    }
    // source line 10, bytecode pc 48
    xs.Tools.UI.addTransparentBg(this);
    // source line 12, bytecode pc 104
    (editBg = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.bg_neibu.frameName));
    // source line 14, bytecode pc 160
    (this.m_signEditBox = cc.EditBox.create(cc.size(728, 50), editBg));
    // source line 15, bytecode pc 181
    this.m_signEditBox.setFontSize(20);
    // source line 16, bytecode pc 228
    this.m_signEditBox.setPlaceholderFontColor(cc.c3b(150, 150, 150));
    // source line 17, bytecode pc 279
    this.m_signEditBox.setPlaceHolder(xs.Tools.String.createString("auto_name_256"));
    // source line 18, bytecode pc 320
    this.m_signEditBox.setFontColor(cc.c3b(0, 0, 0));
    // source line 21, bytecode pc 349
    this.m_signEditBox.setReturnType(cc.KEYBOARD_RETURNTYPE_DONE);
    // source line 22, bytecode pc 369
    this.m_signEditBox.setDelegate(this);
    // source line 23, bytecode pc 393
    this.m_signEditBox.setText("");
    // source line 29, bytecode pc 470
    xs.Utils.Node.attachNodes(this, this.m_signEditBox, { desc: "ct", sc: true, offset: { y: -100 } });
    // source line 32, bytecode pc 472
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 35, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 36, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 37, bytecode pc 56
    this.m_signEditBox.setTouchPriority((this.m_baseTouchPriority - 1));
},
    setListener: function(listner, target) {
    // source line 40, bytecode pc 9
    (this.m_listener = listner);
},
    requestCallback: function(data) {
    if (typeof((this.m_listener == "function"))) {
        // source line 44, bytecode pc 62
        this.m_listener.changeNameListner(this.m_signEditBox.getText(), data.user_info);
    }
    // source line 47, bytecode pc 91
    xs.Utils.Node.safeRemoveChild(this);
},
    editBoxEditingDidBegin: function(editBox) {
    // source line 52, bytecode pc 22
    cc.log("editBox DidBegin !");
    // source line 53, bytecode pc 46
    this.m_signEditBox.setText("");
},
    editBoxEditingDidEnd: function(editBox) {
    var _filterResult;
    // source line 57, bytecode pc 22
    cc.log("editBox DidEnd !");
    // source line 58, bytecode pc 63
    cc.log(("editBoxTextChanged is " + this.m_signEditBox.getText()));
    if ((this.m_signEditBox.getText().length > 0)) {
        // source line 60, bytecode pc 101
        (_filterResult = "");
        // source line 61, bytecode pc 149
        (_filterResult = xs.Tools.UI.FilteringSensitiveWords(this.m_signEditBox.getText()));
        // source line 62, bytecode pc 171
        this.m_signEditBox.setText(_filterResult);
    }
},
    editBoxTextChanged: function(editBox, text) {
    // source line 67, bytecode pc 26
    cc.log(("editBox, TextChanged, text: " + text));
    // source line 68, bytecode pc 34
    (this.m_input_status = true);
},
    editBoxReturn: function(editBox) {
    var UserSignString, param;
    // source line 73, bytecode pc 40
    cc.log(("editBox was returned !" + this.m_signEditBox.getText()));
    // source line 76, bytecode pc 61
    (UserSignString = this.m_signEditBox.getText());
    // source line 77, bytecode pc 71
    (param = {});
    // source line 78, bytecode pc 110
    (param.nickname = xs.Tools.UI.FilteringSensitiveWords(UserSignString));
    // source line 79, bytecode pc 150
    xs.Tools.Net.requestSaveUserNewName(param, this.requestCallback, this);
}
}));
// source line 85, bytecode pc 164
(xs.Views.ChangeNameView.create = function() {
    var scene;
    // source line 86, bytecode pc 23
    (scene = new xs.Views.ChangeNameView());
    if ((scene && scene.init())) {
        // source line 88, bytecode pc 55
        return scene;
    }
    // source line 90, bytecode pc 57
    return null;
});
