// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/SendMessageDialog.js:1
// source line 6, bytecode pc 21
(xs.Views.Dialog.SendMessageDialog_Type_FeedBack = 0);
// source line 7, bytecode pc 43
(xs.Views.Dialog.SendMessageDialog_Type_SendMsgToFriend = 1);
// source line 152, bytecode pc 621
(xs.Views.Dialog.SendMessageDialog = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 12, bytecode pc 12
    this._super();
},
    init: function(params) {
    // source line 16, bytecode pc 12
    this._super();
    // source line 17, bytecode pc 27
    (this.target = params.targetUser);
    // source line 18, bytecode pc 42
    (this.viewType = params.type);
    // source line 20, bytecode pc 50
    (this.m_title = null);
    // source line 21, bytecode pc 58
    (this.m_shutDownBtn = null);
    // source line 22, bytecode pc 66
    (this.m_closeBtn = null);
    // source line 23, bytecode pc 74
    (this.m_sendBtn = null);
    // source line 24, bytecode pc 82
    (this.m_targetName = null);
    if ((this.viewType === xs.Views.Dialog.SendMessageDialog_Type_FeedBack)) {
        // source line 27, bytecode pc 148
        (this.ccbNode = xs.ccb_reader.load("ccb3/0_6_2_SendMail.ccbi"));
        // source line 28, bytecode pc 196
        xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg_1, this);
    } else {
        if ((this.viewType === xs.Views.Dialog.SendMessageDialog_Type_SendMsgToFriend)) {
            // source line 30, bytecode pc 267
            (this.ccbNode = xs.ccb_reader.load("ccb3/0_6_3_SendMsgToFriend.ccbi"));
            // source line 31, bytecode pc 315
            xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg_2, this);
        }
    }
    // source line 34, bytecode pc 358
    this.ccbNode.setContentSize(cc.size(782, 605));
    // source line 35, bytecode pc 405
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 36, bytecode pc 464
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", sc: true });
    // source line 43, bytecode pc 502
    this.m_shutDownBtn.setOnClickCallBack(this.onCloseBtn.bind(this));
    // source line 46, bytecode pc 540
    this.m_closeBtn.setOnClickCallBack(this.onCloseBtn.bind(this));
    // source line 48, bytecode pc 578
    this.m_sendBtn.setOnClickCallBack(this.onSendBtnClick.bind(this));
    if ((this.viewType === xs.Views.Dialog.SendMessageDialog_Type_FeedBack)) {
        // source line 52, bytecode pc 661
        this.m_sendBtn.setString(xs.Tools.String.createString("send"));
        // source line 53, bytecode pc 712
        this.m_title.setString(xs.Tools.String.createString("feedBack"));
        // source line 55, bytecode pc 818
        (this.textField = cc.TextFieldTTF.textFieldWithPlaceHolder(xs.Tools.String.createString("auto_name_437"), cc.size(620, 385), cc.TEXT_ALIGNMENT_LEFT, "Helvetica", 24));
        // source line 56, bytecode pc 865
        this.textField.setColorSpaceHolder(cc.c3b(255, 235, 188));
    } else {
        if ((this.viewType === xs.Views.Dialog.SendMessageDialog_Type_SendMsgToFriend)) {
            // source line 58, bytecode pc 926
            this.m_sendBtn.setStringById("1071310023");
            // source line 59, bytecode pc 956
            this.m_title.setString(this.target.name);
            // source line 60, bytecode pc 986
            this.m_targetName.setString(this.target.name);
            // source line 62, bytecode pc 1092
            (this.textField = cc.TextFieldTTF.textFieldWithPlaceHolder(xs.Tools.String.createString("auto_name_437"), cc.size(620, 355), cc.TEXT_ALIGNMENT_LEFT, "Helvetica", 24));
            // source line 63, bytecode pc 1139
            this.textField.setColorSpaceHolder(cc.c3b(255, 235, 188));
        }
    }
    // source line 66, bytecode pc 1198
    xs.Utils.Node.attachNodes(this, this.textField, { desc: "c", sc: true });
    // source line 71, bytecode pc 1200
    return true;
},
    onCloseBtn: function() {
    // source line 75, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    onSendBtnClick: function() {
    var _text;
    // source line 79, bytecode pc 20
    (_text = this.textField.getString());
    if (_text) {
        if (xs.Tools.UI.IsHaveSensitiveWords(_text)) {
            // source line 83, bytecode pc 123
            xs.Views.Mgr.showToast(xs.Tools.String.createString("str_haveSensitiveWords"));
            // source line 84, bytecode pc 125
            return void 0;
        } else {
            // source line 88, bytecode pc 164
            (_text = xs.Tools.UI.deleteBlankSpace(_text));
        }
    }
    if ((this.viewType === xs.Views.Dialog.SendMessageDialog_Type_FeedBack)) {
        if (((_text == null) || (_text == ""))) {
            // source line 94, bytecode pc 281
            xs.Views.Mgr.showToast(xs.Tools.String.createString("str_SendBugMessageNull"));
            // source line 95, bytecode pc 283
            return void 0;
        }
        // source line 99, bytecode pc 348
        xs.Tools.Net.requestSendFeedBack({ message: this.textField.getString() }, this.onResponse, this);
    } else {
        if ((this.viewType === xs.Views.Dialog.SendMessageDialog_Type_SendMsgToFriend)) {
            if (((_text == null) || (_text == ""))) {
                // source line 102, bytecode pc 470
                xs.Views.Mgr.showToast(xs.Tools.String.createString("str_SendMessageToFriendNull"));
                // source line 103, bytecode pc 472
                return void 0;
            }
            // source line 110, bytecode pc 570
            xs.Tools.Net.requestSendMessage({ send_to: this.target.id, title: "", content: this.textField.getString(), send_type: 3 }, this.onResponse, this);
        }
    }
},
    onResponse: function(jsObj) {
    // source line 116, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_285"));
    // source line 117, bytecode pc 72
    this.onCloseBtn();
},
    onTouchEnded: function(touch, e) {
    var point;
    // source line 122, bytecode pc 19
    (point = this.convertTouchToNodeSpace(touch));
    if (cc.rectContainsPoint(this.textField.getBoundingBox(), point)) {
        // source line 124, bytecode pc 80
        this.textField.attachWithIME();
    } else {
        // source line 126, bytecode pc 103
        this.textField.detachWithIME();
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 131, bytecode pc 9
    (this.m_touchPriority = priority);
    // source line 132, bytecode pc 29
    this.setTouchPriority(this.m_touchPriority);
    // source line 133, bytecode pc 56
    this.m_shutDownBtn.setTouchPriority((this.m_touchPriority - 1));
    // source line 134, bytecode pc 83
    this.m_closeBtn.setTouchPriority((this.m_touchPriority - 1));
    // source line 135, bytecode pc 110
    this.m_sendBtn.setTouchPriority((this.m_touchPriority - 1));
},
    cfg: {
        ccbCfg_1: [
            { tag: 10, type: "btn", name: "m_shutDownBtn", id: "Btn_Close" },
            { tag: 11, type: "btn", name: "m_closeBtn", id: "Btn_ShutDown" },
            { tag: 12, type: "btn", name: "m_sendBtn", id: "Btn_Send" },
            { tag: 14, type: "ls", name: "m_title", id: "LS_popUI1" }
        ],
        ccbCfg_2: [
            { tag: 10, type: "btn", name: "m_shutDownBtn", id: "Btn_Close" },
            { tag: 11, type: "btn", name: "m_closeBtn", id: "Btn_ShutDown" },
            { tag: 12, type: "btn", name: "m_sendBtn", id: "Btn_Send" },
            { tag: 14, type: "ls", name: "m_title", id: "LS_popUI1" },
            { tag: 15, type: "ls", name: "m_targetName", id: "LS_liebiaoInf2" }
        ]
    }
}));
// source line 157, bytecode pc 652
(xs.Views.Dialog.SendMessageDialog.create = function(params) {
    var ret;
    // source line 158, bytecode pc 28
    (ret = new xs.Views.Dialog.SendMessageDialog());
    if ((ret && ret.init(params))) {
        // source line 160, bytecode pc 64
        return ret;
    }
    // source line 162, bytecode pc 66
    return null;
});
// source line 167, bytecode pc 732
xs.Views.Mgr.registerDialog("SendMessageDialog", { "class": xs.Views.Dialog.SendMessageDialog, styleType: xs.Constant_DlgStyleType_Large });
