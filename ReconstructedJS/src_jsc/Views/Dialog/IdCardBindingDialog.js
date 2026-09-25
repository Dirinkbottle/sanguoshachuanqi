// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/IdCardBindingDialog.js:1
// source line 123, bytecode pc 512
(xs.Views.Dialog.IdCardBindingDialog = xs.Views.HungerLayer.extend({
    name: "IdCardBindingDialog",
    cfg: {
        ccbCfg: [
            { tag: 10, type: "btn", name: "m_cancelBtn", id: "Btn_Binding" },
            { tag: 11, type: "btn", name: "m_bindingBtn", id: "Btn_Binding" },
            { tag: 20, type: "ls", name: "m_title", id: "LS_popUI1", stringId: "IdCardBinding_3" },
            { tag: 21, type: "ls", name: "m_title_1", id: "LS_popUI2", stringId: "IdCardBinding_4" },
            { tag: 98, type: "ls", id: "LS_popUI2", string: "" },
            { tag: 99, type: "ls", id: "LS_popUI2" },
            { tag: 150, type: "ls", id: "LS_popUI2", string: "" },
            { tag: 151, type: "ls", id: "LS_popUI2" }
        ]
    },
    init: function(params) {
    var editBg, pos;
    if (!this._super()) {
        // source line 26, bytecode pc 19
        return false;
    }
    // source line 29, bytecode pc 53
    (this.ccbNode = xs.ccb_reader.load("ccb3/0_6_4_Dialog_Register.ccbi"));
    // source line 30, bytecode pc 96
    this.ccbNode.setContentSize(cc.size(510, 367));
    // source line 31, bytecode pc 143
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 32, bytecode pc 202
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", sc: true });
    // source line 34, bytecode pc 250
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 38, bytecode pc 274
    (editBg = this.ccbNode.getChildByTag(13));
    // source line 39, bytecode pc 292
    (pos = editBg.getPosition());
    // source line 40, bytecode pc 307
    editBg.removeFromParent();
    // source line 41, bytecode pc 363
    (this.m_EditBox_Account = cc.EditBox.create(cc.size(320, 45), editBg));
    // source line 42, bytecode pc 402
    this.m_EditBox_Account.setAnchorPoint(cc.p(0, 0));
    // source line 43, bytecode pc 422
    this.m_EditBox_Account.setZOrder(0);
    // source line 44, bytecode pc 444
    this.m_EditBox_Account.setPosition(pos);
    // source line 45, bytecode pc 488
    this.m_EditBox_Account.setPlaceholderFontColor(cc.c3b(122, 68, 3));
    // source line 46, bytecode pc 532
    this.m_EditBox_Account.setFontColor(cc.c3b(122, 68, 3));
    // source line 47, bytecode pc 553
    this.m_EditBox_Account.setPlaceholderFontSize(22);
    // source line 48, bytecode pc 580
    this.m_EditBox_Account.setFont("", 22);
    // source line 49, bytecode pc 631
    this.m_EditBox_Account.setPlaceHolder(xs.Tools.String.createString("IdCardBinding_1"));
    // source line 50, bytecode pc 660
    this.m_EditBox_Account.setInputMode(cc.EDITBOX_INPUT_MODE_SINGLELINE);
    // source line 51, bytecode pc 689
    this.m_EditBox_Account.setInputFlag(cc.EDITBOX_INPUT_FLAG_SENSITIVE);
    // source line 52, bytecode pc 718
    this.m_EditBox_Account.setReturnType(cc.KEYBOARD_RETURNTYPE_DONE);
    // source line 53, bytecode pc 738
    this.m_EditBox_Account.setDelegate(this);
    // source line 54, bytecode pc 762
    this.m_EditBox_Account.setText("");
    // source line 55, bytecode pc 787
    this.ccbNode.addChild(this.m_EditBox_Account);
    // source line 57, bytecode pc 811
    (editBg = this.ccbNode.getChildByTag(14));
    // source line 58, bytecode pc 829
    (pos = editBg.getPosition());
    // source line 59, bytecode pc 844
    editBg.removeFromParent();
    // source line 60, bytecode pc 900
    (this.m_EditBox_Psw = cc.EditBox.create(cc.size(320, 45), editBg));
    // source line 61, bytecode pc 939
    this.m_EditBox_Psw.setAnchorPoint(cc.p(0, 0));
    // source line 62, bytecode pc 959
    this.m_EditBox_Psw.setZOrder(0);
    // source line 63, bytecode pc 981
    this.m_EditBox_Psw.setPosition(pos);
    // source line 64, bytecode pc 1025
    this.m_EditBox_Psw.setPlaceholderFontColor(cc.c3b(122, 68, 3));
    // source line 65, bytecode pc 1069
    this.m_EditBox_Psw.setFontColor(cc.c3b(122, 68, 3));
    // source line 66, bytecode pc 1090
    this.m_EditBox_Psw.setPlaceholderFontSize(22);
    // source line 67, bytecode pc 1117
    this.m_EditBox_Psw.setFont("", 22);
    // source line 68, bytecode pc 1168
    this.m_EditBox_Psw.setPlaceHolder(xs.Tools.String.createString("IdCardBinding_2"));
    // source line 69, bytecode pc 1197
    this.m_EditBox_Psw.setInputMode(cc.EDITBOX_INPUT_MODE_SINGLELINE);
    // source line 71, bytecode pc 1226
    this.m_EditBox_Psw.setReturnType(cc.KEYBOARD_RETURNTYPE_DONE);
    // source line 72, bytecode pc 1246
    this.m_EditBox_Psw.setDelegate(this);
    // source line 73, bytecode pc 1270
    this.m_EditBox_Psw.setText("");
    // source line 74, bytecode pc 1299
    this.m_EditBox_Psw.setInputFlag(cc.EDITBOX_INPUT_FLAG_SENSITIVE);
    // source line 75, bytecode pc 1324
    this.ccbNode.addChild(this.m_EditBox_Psw);
    // source line 77, bytecode pc 1345
    (pos = this.m_title_1.getPosition());
    // source line 78, bytecode pc 1401
    this.m_title_1.setPosition(cc.p((pos.x - 80), pos.y));
    // source line 79, bytecode pc 1444
    this.m_title_1.setAnchorPoint(cc.p(0, 0.5));
    // source line 86, bytecode pc 1479
    this.ccbNode.getChildByTag(200).setVisible(false);
    // source line 87, bytecode pc 1514
    this.ccbNode.getChildByTag(201).setVisible(false);
    // source line 90, bytecode pc 1565
    this.m_cancelBtn.setString(xs.Tools.String.createString("1070610006"));
    // source line 91, bytecode pc 1589
    this.m_cancelBtn.setOnClickCallBack(function() {
    // source line 92, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 95, bytecode pc 1627
    this.m_bindingBtn.setOnClickCallBack(this.onBindingBtnClick.bind(this));
    if ((params && (params.close && (params.close == "false")))) {
        // source line 98, bytecode pc 1689
        this.m_cancelBtn.setVisible(false);
        // source line 99, bytecode pc 1710
        (pos = this.m_bindingBtn.getPosition());
        // source line 100, bytecode pc 1758
        this.m_bindingBtn.setPosition(cc.p(255, pos.y));
    }
    // source line 104, bytecode pc 1760
    return true;
},
    onEnter: function() {
    // source line 107, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 110, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 114, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 116, bytecode pc 36
    this.m_cancelBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 117, bytecode pc 63
    this.m_bindingBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 119, bytecode pc 90
    this.m_EditBox_Account.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 120, bytecode pc 117
    this.m_EditBox_Psw.setTouchPriority((this.m_baseTouchPriority - 1));
},
    onBindingBtnClick: function() {
    var _username, _pwd, _strE;
    try {
        if (((!this.m_EditBox_Psw.getText() || !this.m_EditBox_Account.getText()) && xs.release)) {
            // source line 127, bytecode pc 123
            xs.Views.Mgr.showToast(xs.Tools.String.createString("noNull"));
            // source line 128, bytecode pc 125
            return void 0;
        }
        // source line 131, bytecode pc 146
        (_username = this.m_EditBox_Account.getText());
        // source line 132, bytecode pc 167
        (_pwd = this.m_EditBox_Psw.getText());
        // source line 159, bytecode pc 294
        xs.Tools.Net.requestAutonymApprove({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    user_name: _username,
    idcard: _pwd
}, function(jsonObj) {
    // source line 141, bytecode pc 26
    xs.dump("jsonObjjj", jsonObj);
    // source line 142, bytecode pc 59
    xs.Views.Mgr.showToastByStringId("IdCardBinding_5");
    // source line 143, bytecode pc 71
    (xs.isAdult = true);
    // source line 144, bytecode pc 98
    xs.Views.Mgr.hideDialog();
}, function(jsonObj) {
    if ((jsonObj.error_code == "e_1005")) {
        // source line 148, bytecode pc 51
        xs.Views.Mgr.showToastByStringId("IdCardBinding_6");
    } else {
        if ((jsonObj.error_code == "e_1000")) {
            // source line 151, bytecode pc 108
            xs.Views.Mgr.showToastByStringId("IdCardBinding_7");
        } else {
            // source line 154, bytecode pc 146
            xs.Views.Mgr.showToastByStringId("IdCardBinding_8");
        }
    }
    // source line 157, bytecode pc 148
    return true;
}, this);
    } catch (e) {
        // source line 163, bytecode pc 330
        xs.warnException(e);
        // source line 164, bytecode pc 359
        (_strE = xs.Debug.toJsonString(e));
        // source line 165, bytecode pc 390
        xs.Views.Mgr.showToast(_strE);
        /* TODO_BYTECODE pc=391 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
}
}));
// source line 174, bytecode pc 543
(xs.Views.Dialog.IdCardBindingDialog.create = function(params) {
    var ret;
    // source line 175, bytecode pc 28
    (ret = new xs.Views.Dialog.IdCardBindingDialog());
    if ((ret && ret.init(params))) {
        // source line 177, bytecode pc 64
        return ret;
    }
    // source line 179, bytecode pc 66
    return null;
});
// source line 185, bytecode pc 638
xs.Views.Mgr.registerDialog("IdCardBindingDialog", {
    "class": xs.Views.Dialog.IdCardBindingDialog,
    styleType: xs.Constant_DlgStyleType_Small,
    viewType: xs.Constant_ViewType_Dlg
});
