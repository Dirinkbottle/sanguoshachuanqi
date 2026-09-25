// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/UnionChgNoticeSignDialog.js:1
// source line 5, bytecode pc 21
(xs.Views.Dialog.UnionChgNoticeSignDialog_Type_Notice = 0);
// source line 6, bytecode pc 43
(xs.Views.Dialog.UnionChgNoticeSignDialog_Type_Sign = 1);
// source line 172, bytecode pc 472
(xs.Views.Dialog.UnionChgNoticeSignDialog = xs.Views.HungerLayer.extend({
    name: "UnionChgNoticeSignDialog",
    cfg: {
        ccbCfg: [
            { tag: 1, type: "ls", name: "lblTitle", id: "LS_popUI1", string: "" },
            { tag: 2, type: "ls", name: "lblDesc", id: "LS_popUI2", string: "" },
            { tag: 10, type: "bs", name: "btnCanel", id: "BS_Btn1", stringId: "auto_name_146" },
            { tag: 11, type: "bs", name: "btnConfirm", id: "BS_Btn1", stringId: "auto_name_465" },
            { tag: 20, type: "btn", name: "btnClose", id: "Btn_Close" }
        ]
    },
    init: function(type) {
    var editBg;
    if (!this._super()) {
        // source line 24, bytecode pc 19
        return false;
    }
    // source line 26, bytecode pc 29
    (this.type = type);
    // source line 28, bytecode pc 37
    (this.lblTitle = null);
    // source line 29, bytecode pc 45
    (this.lblDesc = null);
    // source line 30, bytecode pc 53
    (this.btnCanel = null);
    // source line 31, bytecode pc 61
    (this.btnConfirm = null);
    // source line 32, bytecode pc 69
    (this.btnClose = null);
    // source line 34, bytecode pc 103
    (this.ccbNode = xs.ccb_reader.load("ccb3/chgNoticeSign.ccbi"));
    // source line 35, bytecode pc 146
    this.ccbNode.setContentSize(cc.size(516, 316));
    // source line 36, bytecode pc 193
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 37, bytecode pc 252
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", sc: true });
    // source line 39, bytecode pc 300
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 41, bytecode pc 351
    this.lblTitle.setString(xs.Tools.String.createString("titleStr_Binding"));
    // source line 45, bytecode pc 407
    (editBg = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.Cmn01_0_7_kuangdi.frameName));
    // source line 46, bytecode pc 463
    (this.m_EditBox_Account = cc.EditBox.create(cc.size(462, 72), editBg));
    // source line 47, bytecode pc 502
    this.m_EditBox_Account.setAnchorPoint(cc.p(0, 0));
    // source line 48, bytecode pc 522
    this.m_EditBox_Account.setZOrder(0);
    // source line 49, bytecode pc 563
    this.m_EditBox_Account.setPosition(cc.p(28, 124));
    // source line 50, bytecode pc 607
    this.m_EditBox_Account.setPlaceholderFontColor(cc.c3b(122, 68, 3));
    // source line 51, bytecode pc 651
    this.m_EditBox_Account.setFontColor(cc.c3b(122, 68, 3));
    // source line 52, bytecode pc 672
    this.m_EditBox_Account.setPlaceholderFontSize(22);
    // source line 53, bytecode pc 699
    this.m_EditBox_Account.setFont("", 22);
    // source line 54, bytecode pc 728
    this.m_EditBox_Account.setInputMode(cc.EDITBOX_INPUT_MODE_SINGLELINE);
    // source line 55, bytecode pc 757
    this.m_EditBox_Account.setInputFlag(cc.EDITBOX_INPUT_FLAG_SENSITIVE);
    // source line 56, bytecode pc 786
    this.m_EditBox_Account.setReturnType(cc.KEYBOARD_RETURNTYPE_DONE);
    // source line 57, bytecode pc 806
    this.m_EditBox_Account.setDelegate(this);
    // source line 58, bytecode pc 830
    this.m_EditBox_Account.setText("");
    // source line 60, bytecode pc 855
    this.ccbNode.addChild(this.m_EditBox_Account);
    if ((this.type == xs.Views.Dialog.UnionChgNoticeSignDialog_Type_Notice)) {
        // source line 69, bytecode pc 938
        this.lblTitle.setString(xs.Tools.String.createString("auto_name_3"));
        // source line 70, bytecode pc 989
        this.lblDesc.setString(xs.Tools.String.createString("auto_name_466"));
        // source line 72, bytecode pc 1040
        this.m_EditBox_Account.setPlaceHolder(xs.Tools.String.createString("auto_name_467"));
    } else {
        // source line 75, bytecode pc 1096
        this.lblTitle.setString(xs.Tools.String.createString("auto_name_4"));
        // source line 76, bytecode pc 1147
        this.lblDesc.setString(xs.Tools.String.createString("auto_name_468"));
        // source line 78, bytecode pc 1198
        this.m_EditBox_Account.setPlaceHolder(xs.Tools.String.createString("auto_name_469"));
    }
    // source line 82, bytecode pc 1222
    this.btnClose.setOnClickCallBack(function() {
    // source line 83, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 86, bytecode pc 1260
    this.btnCanel.setOnClickCallBack(this.onBtnCancelClick.bind(this));
    // source line 88, bytecode pc 1298
    this.btnConfirm.setOnClickCallBack(this.onBtnConfirmClick.bind(this));
    // source line 90, bytecode pc 1300
    return true;
},
    onEnter: function() {
    // source line 94, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 98, bytecode pc 12
    this._super();
},
    onBtnCancelClick: function() {
    // source line 102, bytecode pc 22
    xs.log("取消");
    // source line 103, bytecode pc 49
    xs.Views.Mgr.hideDialog();
},
    onBtnConfirmClick: function() {
    var text;
    // source line 107, bytecode pc 22
    xs.log("确认");
    // source line 108, bytecode pc 81
    (text = (this.m_EditBox_Account.getText() ? this.m_EditBox_Account.getText() : ""));
    if ((this.type == xs.Views.Dialog.UnionChgNoticeSignDialog_Type_Notice)) {
        // source line 128, bytecode pc 306
        xs.Tools.Net.requestChgUnionNotice({
    union_id: xs.Profile.GameData.Mgr.getInstance().Union.getUnion().getUnionId(),
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    notice: text
}, function(resData) {
    if (resData.result) {
        // source line 118, bytecode pc 74
        (xs.Profile.GameData.Mgr.getInstance().Union.getUnion().notice = text);
        // source line 119, bytecode pc 112
        xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_refreshUnionInfo);
        // source line 120, bytecode pc 172
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_470"));
        // source line 122, bytecode pc 235
        xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_AddUnionLogAndRefresh, { content: resData.return_info.log_content });
        // source line 125, bytecode pc 262
        xs.Views.Mgr.hideDialog();
    }
}.bind(this));
    } else {
        if ((this.type == xs.Views.Dialog.UnionChgNoticeSignDialog_Type_Sign)) {
            // source line 147, bytecode pc 536
            xs.Tools.Net.requestChgUnionSign({
    union_id: xs.Profile.GameData.Mgr.getInstance().Union.getUnion().getUnionId(),
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    union_sign: text
}, function(resData) {
    if (resData.result) {
        // source line 140, bytecode pc 74
        (xs.Profile.GameData.Mgr.getInstance().Union.getUnion().union_sign = text);
        // source line 141, bytecode pc 134
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_471"));
        // source line 143, bytecode pc 197
        xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_AddUnionLogAndRefresh, { content: resData.return_info.log_content });
        // source line 145, bytecode pc 224
        xs.Views.Mgr.hideDialog();
    }
}.bind(this));
        }
    }
},
    onTextFieldDetachWithIME: function() {
    // source line 168, bytecode pc 22
    xs.log("ssssss");
},
    setBaseTouchPriority: function(priority) {
    // source line 173, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 174, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 175, bytecode pc 56
    this.btnCanel.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 176, bytecode pc 83
    this.btnConfirm.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 177, bytecode pc 110
    this.btnClose.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 178, bytecode pc 137
    this.m_EditBox_Account.setTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 183, bytecode pc 503
(xs.Views.Dialog.UnionChgNoticeSignDialog.create = function(type) {
    var ret;
    // source line 184, bytecode pc 28
    (ret = new xs.Views.Dialog.UnionChgNoticeSignDialog());
    if ((ret && ret.init(type))) {
        // source line 186, bytecode pc 64
        return ret;
    }
    // source line 188, bytecode pc 66
    return null;
});
// source line 193, bytecode pc 583
xs.Views.Mgr.registerDialog("UnionChgNoticeSignDialog", { "class": xs.Views.Dialog.UnionChgNoticeSignDialog, styleType: xs.Constant_DlgStyleType_Small });
