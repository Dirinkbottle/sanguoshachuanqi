// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/BindingDialog.js:1
// source line 294, bytecode pc 523
(xs.Views.Dialog.BindingDialog = xs.Views.HungerLayer.extend({
    name: "BindingDialog",
    init: function(params) {
    var editBg, pos;
    if (!this._super()) {
        // source line 12, bytecode pc 19
        return false;
    }
    // source line 14, bytecode pc 27
    (this.m_closeBtn = null);
    // source line 15, bytecode pc 35
    (this.m_bindingBtn = null);
    // source line 17, bytecode pc 69
    (this.ccbNode = xs.ccb_reader.load("ccb3/0_6_4_Dialog_Register.ccbi"));
    // source line 18, bytecode pc 112
    this.ccbNode.setContentSize(cc.size(510, 367));
    // source line 19, bytecode pc 159
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 20, bytecode pc 218
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", sc: true });
    // source line 22, bytecode pc 266
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 24, bytecode pc 317
    this.m_title.setString(xs.Tools.String.createString("titleStr_Binding"));
    // source line 26, bytecode pc 325
    (this.m_styleType = 1);
    // source line 29, bytecode pc 349
    (editBg = this.ccbNode.getChildByTag(13));
    // source line 30, bytecode pc 367
    (pos = editBg.getPosition());
    // source line 31, bytecode pc 382
    editBg.removeFromParent();
    // source line 32, bytecode pc 438
    (this.m_EditBox_Account = cc.EditBox.create(cc.size(320, 45), editBg));
    // source line 33, bytecode pc 477
    this.m_EditBox_Account.setAnchorPoint(cc.p(0, 0));
    // source line 34, bytecode pc 497
    this.m_EditBox_Account.setZOrder(0);
    // source line 35, bytecode pc 519
    this.m_EditBox_Account.setPosition(pos);
    // source line 36, bytecode pc 563
    this.m_EditBox_Account.setPlaceholderFontColor(cc.c3b(122, 68, 3));
    // source line 37, bytecode pc 607
    this.m_EditBox_Account.setFontColor(cc.c3b(122, 68, 3));
    // source line 38, bytecode pc 628
    this.m_EditBox_Account.setPlaceholderFontSize(22);
    // source line 39, bytecode pc 655
    this.m_EditBox_Account.setFont("", 22);
    // source line 40, bytecode pc 706
    this.m_EditBox_Account.setPlaceHolder(xs.Tools.String.createString("importID"));
    // source line 41, bytecode pc 735
    this.m_EditBox_Account.setInputMode(cc.EDITBOX_INPUT_MODE_SINGLELINE);
    // source line 42, bytecode pc 764
    this.m_EditBox_Account.setInputFlag(cc.EDITBOX_INPUT_FLAG_SENSITIVE);
    // source line 43, bytecode pc 793
    this.m_EditBox_Account.setReturnType(cc.KEYBOARD_RETURNTYPE_DONE);
    // source line 44, bytecode pc 813
    this.m_EditBox_Account.setDelegate(this);
    // source line 45, bytecode pc 837
    this.m_EditBox_Account.setText("");
    // source line 46, bytecode pc 862
    this.ccbNode.addChild(this.m_EditBox_Account);
    // source line 48, bytecode pc 886
    (editBg = this.ccbNode.getChildByTag(14));
    // source line 49, bytecode pc 904
    (pos = editBg.getPosition());
    // source line 50, bytecode pc 919
    editBg.removeFromParent();
    // source line 51, bytecode pc 975
    (this.m_EditBox_Psw = cc.EditBox.create(cc.size(320, 45), editBg));
    // source line 52, bytecode pc 1014
    this.m_EditBox_Psw.setAnchorPoint(cc.p(0, 0));
    // source line 53, bytecode pc 1034
    this.m_EditBox_Psw.setZOrder(0);
    // source line 54, bytecode pc 1056
    this.m_EditBox_Psw.setPosition(pos);
    // source line 55, bytecode pc 1100
    this.m_EditBox_Psw.setPlaceholderFontColor(cc.c3b(122, 68, 3));
    // source line 56, bytecode pc 1144
    this.m_EditBox_Psw.setFontColor(cc.c3b(122, 68, 3));
    // source line 57, bytecode pc 1165
    this.m_EditBox_Psw.setPlaceholderFontSize(22);
    // source line 58, bytecode pc 1192
    this.m_EditBox_Psw.setFont("", 22);
    // source line 59, bytecode pc 1243
    this.m_EditBox_Psw.setPlaceHolder(xs.Tools.String.createString("auto_name_320"));
    // source line 60, bytecode pc 1272
    this.m_EditBox_Psw.setInputMode(cc.EDITBOX_INPUT_MODE_SINGLELINE);
    // source line 61, bytecode pc 1301
    this.m_EditBox_Psw.setInputFlag(cc.EDITBOX_INPUT_FLAG_PASSWORD);
    // source line 62, bytecode pc 1330
    this.m_EditBox_Psw.setReturnType(cc.KEYBOARD_RETURNTYPE_DONE);
    // source line 63, bytecode pc 1350
    this.m_EditBox_Psw.setDelegate(this);
    // source line 64, bytecode pc 1374
    this.m_EditBox_Psw.setText("");
    // source line 65, bytecode pc 1399
    this.ccbNode.addChild(this.m_EditBox_Psw);
    // source line 69, bytecode pc 1438
    (this.m_closeBtn = xs.Views.Btn.createByStyleId("BS_Close"));
    // source line 75, bytecode pc 1574
    xs.Utils.Node.attachNodes(this, this.m_closeBtn, {
    desc: "c",
    sc: true,
    offset: {
        x: ((this.ccbNode.getContentSize().width / 2) - 20),
        y: ((this.ccbNode.getContentSize().height / 2) - 20)
    }
});
    // source line 78, bytecode pc 1598
    this.m_closeBtn.setOnClickCallBack(function() {
    // source line 79, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 83, bytecode pc 1633
    this.ccbNode.getChildByTag(150).setVisible(false);
    // source line 84, bytecode pc 1668
    this.ccbNode.getChildByTag(151).setVisible(false);
    // source line 85, bytecode pc 1703
    this.ccbNode.getChildByTag(200).setVisible(false);
    // source line 86, bytecode pc 1738
    this.ccbNode.getChildByTag(201).setVisible(false);
    // source line 87, bytecode pc 1793
    (this.zuizhonglabelBtn = xs.Views.Btn.createInvisibleWithParent(this.ccbNode.getChildByTag(151)));
    // source line 90, bytecode pc 1819
    this.zuizhonglabelBtn.addCallBackForEvent(this, function() {
    // source line 92, bytecode pc 43
    xs.Views.Mgr.showDialogByName("Announcement", xs.Constant_SettingType_ZuiZhongXieYi);
});
    // source line 95, bytecode pc 1874
    (this.m_checkBtn = xs.Views.Btn.createInvisibleWithParent(this.ccbNode.getChildByTag(200)));
    // source line 96, bytecode pc 1912
    this.m_checkBtn.setOnClickCallBack(this.onCheckBtnClick.bind(this));
    // source line 98, bytecode pc 1950
    this.m_registerBtn.setOnClickCallBack(this.onRegisterBtnClick.bind(this));
    // source line 99, bytecode pc 1988
    this.m_bindingBtn.setOnClickCallBack(this.onBindingBtnClick.bind(this));
    if ((params && (params.close && (params.close == "false")))) {
        // source line 101, bytecode pc 2050
        this.m_closeBtn.setVisible(false);
    }
    // source line 104, bytecode pc 2052
    return true;
},
    onEnter: function() {
    // source line 108, bytecode pc 12
    this._super();
    // source line 109, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.onBfSdkLoginSucess, xs.Constant_Notify_Event_BfLoginSucess);
    // source line 110, bytecode pc 106
    xs.Utils.Notify.addObserver(this, this.onBfSdkLoginFail, xs.Constant_Notify_Event_BfLoginFail);
    // source line 111, bytecode pc 153
    xs.Utils.Notify.addObserver(this, this.onBfSdkRegisterSucess, xs.Constant_Notify_Event_BfRegisterSucess);
    // source line 112, bytecode pc 200
    xs.Utils.Notify.addObserver(this, this.onBfSdkRegisterFail, xs.Constant_Notify_Event_BfRegisterFail);
},
    onExit: function() {
    // source line 116, bytecode pc 12
    this._super();
    // source line 117, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_BfLoginSucess);
    // source line 118, bytecode pc 92
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_BfLoginFail);
    // source line 119, bytecode pc 132
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_BfRegisterSucess);
    // source line 120, bytecode pc 172
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_BfRegisterFail);
},
    onCheckBtnClick: function() {
    if (this.ccbNode.getChildByTag(201).isVisible()) {
        // source line 124, bytecode pc 71
        this.ccbNode.getChildByTag(201).setVisible(false);
    } else {
        // source line 126, bytecode pc 111
        this.ccbNode.getChildByTag(201).setVisible(true);
    }
},
    onRegisterBtnClick: function() {
    if ((this.m_styleType === 1)) {
        // source line 132, bytecode pc 63
        this.m_registerBtn.setString(xs.Tools.String.createString("btnStr_return"));
        // source line 133, bytecode pc 114
        this.m_bindingBtn.setString(xs.Tools.String.createString("auto_name_321"));
        // source line 134, bytecode pc 141
        this.m_EditBox_Account.setFont("", 22);
        // source line 135, bytecode pc 192
        this.m_EditBox_Account.setPlaceHolder(xs.Tools.String.createString("auto_name_110"));
        // source line 136, bytecode pc 219
        this.m_EditBox_Psw.setFont("", 22);
        // source line 137, bytecode pc 270
        this.m_EditBox_Psw.setPlaceHolder(xs.Tools.String.createString("auto_name_111"));
        // source line 139, bytecode pc 305
        this.ccbNode.getChildByTag(150).setVisible(true);
        // source line 140, bytecode pc 340
        this.ccbNode.getChildByTag(151).setVisible(true);
        // source line 141, bytecode pc 375
        this.ccbNode.getChildByTag(200).setVisible(true);
        // source line 142, bytecode pc 410
        this.ccbNode.getChildByTag(201).setVisible(true);
        // source line 144, bytecode pc 419
        (this.m_styleType = 2);
    } else {
        // source line 146, bytecode pc 475
        this.m_registerBtn.setString(xs.Tools.String.createString("btnStr_registered"));
        // source line 147, bytecode pc 526
        this.m_bindingBtn.setString(xs.Tools.String.createString("btnStr_immediatelyBinding"));
        // source line 148, bytecode pc 553
        this.m_EditBox_Account.setFont("", 22);
        // source line 149, bytecode pc 604
        this.m_EditBox_Account.setPlaceHolder(xs.Tools.String.createString("importID"));
        // source line 150, bytecode pc 631
        this.m_EditBox_Psw.setFont("", 22);
        // source line 151, bytecode pc 682
        this.m_EditBox_Psw.setPlaceHolder(xs.Tools.String.createString("auto_name_320"));
        // source line 153, bytecode pc 717
        this.ccbNode.getChildByTag(150).setVisible(false);
        // source line 154, bytecode pc 752
        this.ccbNode.getChildByTag(151).setVisible(false);
        // source line 155, bytecode pc 787
        this.ccbNode.getChildByTag(200).setVisible(false);
        // source line 156, bytecode pc 822
        this.ccbNode.getChildByTag(201).setVisible(false);
        // source line 158, bytecode pc 830
        (this.m_styleType = 1);
    }
},
    onBindingBtnClick: function() {
    var _username, _pwd, _strE;
    if ((this.m_styleType === 1)) {
        try {
            if (((!this.m_EditBox_Psw.getText() || !this.m_EditBox_Account.getText()) && xs.release)) {
                // source line 167, bytecode pc 136
                xs.Views.Mgr.showToast(xs.Tools.String.createString("noNull"));
                // source line 168, bytecode pc 138
                return void 0;
            }
            // source line 171, bytecode pc 159
            (_username = this.m_EditBox_Account.getText());
            // source line 172, bytecode pc 180
            (_pwd = this.m_EditBox_Psw.getText());
            // source line 175, bytecode pc 207
            xs.Tools.Statistic.bfSdkLoginStartEvent();
            // source line 177, bytecode pc 234
            xs.Views.Mgr.displayLoadingLayer();
            // source line 178, bytecode pc 293
            xs.JsbConnecter.getInstance().invoke("BfSdk", "login", ((_username + "|") + _pwd));
        } catch (e) {
            // source line 181, bytecode pc 329
            xs.warnException(e);
            // source line 182, bytecode pc 358
            (_strE = xs.Debug.toJsonString(e));
            // source line 183, bytecode pc 389
            xs.Views.Mgr.showToast(_strE);
            /* TODO_BYTECODE pc=390 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
        }
    } else {
        // source line 188, bytecode pc 416
        this.onRegister();
    }
},
    onRegister: function() {
    var _username, _pwd, _strE;
    if (!this.ccbNode.getChildByTag(201).isVisible()) {
        // source line 197, bytecode pc 97
        xs.Views.Mgr.showToast(xs.Tools.String.createString("hintStr_ZuiZhongXieYi"));
        // source line 198, bytecode pc 99
        return void 0;
    }
    try {
        if (((!this.m_EditBox_Psw.getText() || !this.m_EditBox_Account.getText()) && xs.release)) {
            // source line 203, bytecode pc 223
            xs.Views.Mgr.showToast(xs.Tools.String.createString("noNull"));
            // source line 204, bytecode pc 225
            return void 0;
        }
        // source line 207, bytecode pc 246
        (_username = this.m_EditBox_Account.getText());
        // source line 208, bytecode pc 267
        (_pwd = this.m_EditBox_Psw.getText());
        // source line 213, bytecode pc 300
        xs.Tools.Statistic.event("1700005");
        if (!xs._event_once_each_launch_register) {
            // source line 215, bytecode pc 328
            (xs._event_once_each_launch_register = true);
            // source line 216, bytecode pc 361
            xs.Tools.Statistic.event("1700015");
        }
        // source line 219, bytecode pc 388
        xs.Views.Mgr.displayLoadingLayer();
        // source line 220, bytecode pc 447
        xs.JsbConnecter.getInstance().invoke("BfSdk", "regis", ((_username + "|") + _pwd));
    } catch (e) {
        // source line 224, bytecode pc 483
        xs.warnException(e);
        // source line 225, bytecode pc 512
        (_strE = xs.Debug.toJsonString(e));
        // source line 226, bytecode pc 543
        xs.Views.Mgr.showToast(_strE);
        /* TODO_BYTECODE pc=544 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
},
    onBfSdkRegisterSucess: function() {
    // source line 233, bytecode pc 7
    (this.m_styleType = 1);
    // source line 234, bytecode pc 20
    this.onBindingBtnClick();
},
    onBfSdkRegisterFail: function(params) {
    // source line 239, bytecode pc 35
    xs.Views.Mgr.showToast(params.errorMsg);
},
    onBfSdkLoginSucess: function(params) {
    // source line 265, bytecode pc 117
    xs.Tools.Net.requestBindingBFAccount({ uid: xs.Profile.UserCfg.getAccountUid(), sessionId: params.sessionKey }, function(jsonObj) {
    // source line 247, bytecode pc 37
    xs.Profile.UserCfg.setLoginType(xs.Constant_LoginType_BianFeng);
    // source line 248, bytecode pc 82
    xs.Profile.UserCfg.setLoginAccount(this.m_EditBox_Account.getText());
    // source line 249, bytecode pc 127
    xs.Profile.UserCfg.setLoginPsw(this.m_EditBox_Psw.getText());
    // source line 251, bytecode pc 187
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_322"));
    // source line 253, bytecode pc 214
    xs.Views.Mgr.hideDialog();
}.bind(this), function(jsonObj) {
    if ((jsonObj.error_code === "e_bind_bfaccount_1000")) {
        // source line 257, bytecode pc 78
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_323"));
    } else {
        if ((jsonObj.error_code === "e_bind_bfaccount_1001")) {
            // source line 259, bytecode pc 162
            xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_324"));
        } else {
            if ((jsonObj.error_code === "e_bind_bfaccount_1002")) {
                // source line 261, bytecode pc 246
                xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_325"));
            } else {
                // source line 263, bytecode pc 311
                xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_326"));
            }
        }
    }
}.bind(this), this);
},
    onBfSdkLoginFail: function(params) {
    // source line 271, bytecode pc 35
    xs.Views.Mgr.showToast(params.errorMsg);
},
    setBaseTouchPriority: function(priority) {
    // source line 276, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 277, bytecode pc 36
    this.m_registerBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 278, bytecode pc 63
    this.m_bindingBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 279, bytecode pc 90
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 280, bytecode pc 117
    this.m_checkBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 281, bytecode pc 144
    this.m_EditBox_Account.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 282, bytecode pc 171
    this.m_EditBox_Psw.setTouchPriority((this.m_baseTouchPriority - 1));
},
    cfg: {
        ccbCfg: [
            { tag: 10, type: "btn", name: "m_registerBtn", id: "Btn_toRegister" },
            { tag: 11, type: "btn", name: "m_bindingBtn", id: "Btn_Binding" },
            { tag: 20, type: "ls", name: "m_title", id: "LS_popUI1", stringId: "auto_name_327" },
            { tag: 21, type: "ls", id: "LS_popUI2", string: xs.Tools.String.createString("bianFengID") },
            { tag: 98, type: "ls", id: "LS_popUI2", string: "" },
            { tag: 99, type: "ls", id: "LS_popUI2", string: "" }
        ]
    }
}));
// source line 299, bytecode pc 554
(xs.Views.Dialog.BindingDialog.create = function(params) {
    var ret;
    // source line 300, bytecode pc 28
    (ret = new xs.Views.Dialog.BindingDialog());
    if ((ret && ret.init(params))) {
        // source line 302, bytecode pc 64
        return ret;
    }
    // source line 304, bytecode pc 66
    return null;
});
// source line 309, bytecode pc 634
xs.Views.Mgr.registerDialog("BindingDialog", { "class": xs.Views.Dialog.BindingDialog, styleType: xs.Constant_DlgStyleType_Small });
