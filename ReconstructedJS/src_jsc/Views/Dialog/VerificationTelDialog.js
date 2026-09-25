// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/VerificationTelDialog.js:1
// source line 166, bytecode pc 349
(xs.Views.Dialog.VerificationTelDialog = xs.Views.HungerLayer.extend({
    name: "VerificationTelDialog",
    init: function(model) {
    var editBg, pos;
    if (!this._super()) {
        // source line 12, bytecode pc 19
        return false;
    }
    // source line 16, bytecode pc 53
    (this.ccbNode = xs.ccb_reader.load("ccb3/0_6_4_Dialog_SaveTel.ccbi"));
    // source line 17, bytecode pc 96
    this.ccbNode.setContentSize(cc.size(510, 367));
    // source line 18, bytecode pc 143
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 19, bytecode pc 202
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", sc: true });
    // source line 21, bytecode pc 250
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 24, bytecode pc 301
    this.m_title.setString(xs.Tools.String.createString("IdCardBinding_101"));
    // source line 27, bytecode pc 325
    (editBg = this.ccbNode.getChildByTag(13));
    // source line 28, bytecode pc 343
    (pos = editBg.getPosition());
    // source line 29, bytecode pc 358
    editBg.removeFromParent();
    // source line 30, bytecode pc 414
    (this.m_EditBox_Account = cc.EditBox.create(cc.size(310, 45), editBg));
    // source line 31, bytecode pc 453
    this.m_EditBox_Account.setAnchorPoint(cc.p(0, 0));
    // source line 32, bytecode pc 473
    this.m_EditBox_Account.setZOrder(0);
    // source line 33, bytecode pc 495
    this.m_EditBox_Account.setPosition(pos);
    // source line 34, bytecode pc 539
    this.m_EditBox_Account.setPlaceholderFontColor(cc.c3b(122, 68, 3));
    // source line 35, bytecode pc 583
    this.m_EditBox_Account.setFontColor(cc.c3b(122, 68, 3));
    // source line 36, bytecode pc 604
    this.m_EditBox_Account.setPlaceholderFontSize(22);
    // source line 37, bytecode pc 631
    this.m_EditBox_Account.setFont("", 22);
    // source line 38, bytecode pc 682
    this.m_EditBox_Account.setPlaceHolder(xs.Tools.String.createString("auto_name_328"));
    // source line 39, bytecode pc 711
    this.m_EditBox_Account.setInputMode(cc.EDITBOX_INPUT_MODE_SINGLELINE);
    // source line 40, bytecode pc 740
    this.m_EditBox_Account.setInputFlag(cc.EDITBOX_INPUT_FLAG_SENSITIVE);
    // source line 41, bytecode pc 769
    this.m_EditBox_Account.setReturnType(cc.KEYBOARD_RETURNTYPE_DONE);
    // source line 42, bytecode pc 789
    this.m_EditBox_Account.setDelegate(this);
    // source line 43, bytecode pc 813
    this.m_EditBox_Account.setText("");
    // source line 44, bytecode pc 838
    this.ccbNode.addChild(this.m_EditBox_Account);
    // source line 46, bytecode pc 862
    (editBg = this.ccbNode.getChildByTag(14));
    // source line 47, bytecode pc 880
    (pos = editBg.getPosition());
    // source line 48, bytecode pc 895
    editBg.removeFromParent();
    // source line 49, bytecode pc 951
    (this.m_EditBox_Psw = cc.EditBox.create(cc.size(170, 45), editBg));
    // source line 50, bytecode pc 990
    this.m_EditBox_Psw.setAnchorPoint(cc.p(0, 0));
    // source line 51, bytecode pc 1010
    this.m_EditBox_Psw.setZOrder(0);
    // source line 52, bytecode pc 1032
    this.m_EditBox_Psw.setPosition(pos);
    // source line 53, bytecode pc 1076
    this.m_EditBox_Psw.setPlaceholderFontColor(cc.c3b(122, 68, 3));
    // source line 54, bytecode pc 1120
    this.m_EditBox_Psw.setFontColor(cc.c3b(122, 68, 3));
    // source line 55, bytecode pc 1141
    this.m_EditBox_Psw.setPlaceholderFontSize(22);
    // source line 56, bytecode pc 1168
    this.m_EditBox_Psw.setFont("", 22);
    // source line 57, bytecode pc 1219
    this.m_EditBox_Psw.setPlaceHolder(xs.Tools.String.createString("auto_name_329"));
    // source line 58, bytecode pc 1248
    this.m_EditBox_Psw.setInputMode(cc.EDITBOX_INPUT_MODE_SINGLELINE);
    // source line 59, bytecode pc 1277
    this.m_EditBox_Psw.setInputFlag(cc.EDITBOX_INPUT_FLAG_SENSITIVE);
    // source line 60, bytecode pc 1306
    this.m_EditBox_Psw.setReturnType(cc.KEYBOARD_RETURNTYPE_DONE);
    // source line 61, bytecode pc 1326
    this.m_EditBox_Psw.setDelegate(this);
    // source line 62, bytecode pc 1350
    this.m_EditBox_Psw.setText("");
    // source line 63, bytecode pc 1375
    this.ccbNode.addChild(this.m_EditBox_Psw);
    // source line 67, bytecode pc 1399
    this.m_closeBtn.setOnClickCallBack(function() {
    // source line 68, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 99, bytecode pc 1436
    this.m_requestCodeBtn.setOnClickCallBack(function() {
    var _phoneNum, _pwd;
    // source line 73, bytecode pc 20
    (_phoneNum = this.m_EditBox_Account.getText());
    // source line 74, bytecode pc 50
    (_pwd = xs.Profile.UserCfg.getLoginPsw());
    if (((_phoneNum === "") || (_phoneNum === null))) {
        // source line 76, bytecode pc 135
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_330"));
    } else {
        // source line 95, bytecode pc 257
        xs.Tools.Net.requestAuthenticationCode({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    mobile: _phoneNum
}, function() {
}, function() {
    // source line 96, bytecode pc 32
    xs.Views.Mgr.showToast("获取验证码失败!");
});
    }
}.bind(this));
    // source line 141, bytecode pc 1473
    this.m_bindingBtn.setOnClickCallBack(function() {
    var _phoneNum, _checkCode;
    // source line 103, bytecode pc 20
    (_phoneNum = this.m_EditBox_Account.getText());
    // source line 104, bytecode pc 41
    (_checkCode = this.m_EditBox_Psw.getText());
    if (((_checkCode === "") || (_checkCode === null))) {
        // source line 106, bytecode pc 126
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_331"));
    } else {
        // source line 137, bytecode pc 256
        xs.Tools.Net.requestSaveMoblieTel({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    mobile: _phoneNum,
    mobile_code: _checkCode
}, function(data) {
    if (data.result) {
        // source line 127, bytecode pc 24
        (xs.isMobile = true);
        // source line 128, bytecode pc 51
        xs.Views.Mgr.hideDialog();
        // source line 130, bytecode pc 111
        xs.Utils.Notify.postNotification(xs.Constant_Mobile_Verification_OK, { code: xs.isMobile });
        // source line 132, bytecode pc 144
        xs.Views.Mgr.showToast("绑定手机成功!");
    } else {
        // source line 134, bytecode pc 182
        xs.Views.Mgr.showToast("绑定手机失败!");
    }
}, function() {
});
    }
}.bind(this));
    // source line 143, bytecode pc 1475
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 147, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 148, bytecode pc 36
    this.m_bindingBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 149, bytecode pc 63
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 150, bytecode pc 90
    this.m_requestCodeBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 152, bytecode pc 117
    this.m_EditBox_Account.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 153, bytecode pc 144
    this.m_EditBox_Psw.setTouchPriority((this.m_baseTouchPriority - 1));
},
    cfg: {
        ccbCfg: [
            { tag: 10, type: "btn", name: "m_bindingBtn", id: "Btn_Verification" },
            { tag: 30, type: "btn", name: "m_closeBtn", id: "Btn_Close" },
            { tag: 31, type: "btn", name: "m_requestCodeBtn", id: "Btn_btn5" },
            { tag: 20, type: "ls", name: "m_title", id: "LS_popUI1", stringId: "IdCardBinding_101" },
            { tag: 21, type: "ls", id: "LS_popUI2", stringId: "IdCardBinding_102" }
        ]
    }
}));
// source line 172, bytecode pc 380
(xs.Views.Dialog.VerificationTelDialog.create = function() {
    var ret;
    // source line 173, bytecode pc 28
    (ret = new xs.Views.Dialog.VerificationTelDialog());
    if ((ret && ret.init())) {
        // source line 175, bytecode pc 60
        return ret;
    }
    // source line 177, bytecode pc 62
    return null;
});
// source line 182, bytecode pc 460
xs.Views.Mgr.registerDialog("VerificationTelDialog", { "class": xs.Views.Dialog.VerificationTelDialog, styleType: xs.Constant_DlgStyleType_Small });
