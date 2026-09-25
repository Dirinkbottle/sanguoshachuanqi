// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/FriendOperationDialog.js:1
// source line 107, bytecode pc 426
(xs.Views.Dialog.FriendOperationDialog = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 9, bytecode pc 12
    this._super();
    // source line 10, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(friendInfo) {
    if (!this._super()) {
        // source line 15, bytecode pc 19
        return false;
    }
    // source line 17, bytecode pc 46
    xs.dump("friendInfo", friendInfo);
    // source line 19, bytecode pc 56
    (this.data = friendInfo);
    // source line 21, bytecode pc 90
    (this.ccbNode = xs.ccb_reader.load("ccb3/0_6_3_FriendOperation.ccbi"));
    // source line 22, bytecode pc 133
    this.ccbNode.setContentSize(cc.size(441, 394));
    // source line 23, bytecode pc 180
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 24, bytecode pc 239
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", sc: true });
    // source line 26, bytecode pc 247
    (this.m_title = null);
    // source line 27, bytecode pc 255
    (this.m_btn_msg = null);
    // source line 28, bytecode pc 263
    (this.m_btn_lineUp = null);
    // source line 29, bytecode pc 271
    (this.m_btn_delete = null);
    // source line 30, bytecode pc 279
    (this.m_btn_close = null);
    // source line 32, bytecode pc 327
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 34, bytecode pc 354
    this.m_title.setString(friendInfo.name);
    // source line 36, bytecode pc 367
    this.setBtnCallBack();
    // source line 38, bytecode pc 369
    return true;
},
    setListener: function(listener) {
    // source line 42, bytecode pc 13
    (m_listener = listener);
},
    onClick: function(sender) {
    // source line 46, bytecode pc 38
    m_listener.onFriendOperationDialogClick(this.btnArray.indexOf(sender));
    // source line 47, bytecode pc 53
    this.removeFromParent(true);
},
    setBaseTouchPriority: function(priority) {
    // source line 51, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 52, bytecode pc 36
    this.m_btn_msg.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 53, bytecode pc 63
    this.m_btn_lineUp.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 54, bytecode pc 90
    this.m_btn_delete.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 55, bytecode pc 117
    this.m_btn_close.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 56, bytecode pc 144
    this.m_close.setTouchPriority((this.m_baseTouchPriority - 1));
},
    setBtnCallBack: function() {
    // source line 64, bytecode pc 36
    this.m_btn_msg.setOnClickCallBack(function() {
    // source line 63, bytecode pc 75
    xs.Views.Mgr.showDialogByName("SendMessageDialog", { type: xs.Views.Dialog.SendMessageDialog_Type_SendMsgToFriend, targetUser: this.data });
}.bind(this));
    // source line 71, bytecode pc 73
    this.m_btn_lineUp.setOnClickCallBack(function() {
    // source line 69, bytecode pc 60
    xs.Tools.Net.getInstance().displayOtherTeamInfo({ other_user_id: this.data.id });
}.bind(this));
    // source line 76, bytecode pc 110
    this.m_btn_delete.setOnClickCallBack(function() {
    // source line 75, bytecode pc 64
    xs.Tools.Net.requestDeleteFriend({ other_id: this.data.id, type: 1 }, this.onDeleteFriendCb, this);
}.bind(this));
    // source line 81, bytecode pc 147
    this.m_btn_close.setOnClickCallBack(function() {
    // source line 80, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this));
    // source line 85, bytecode pc 184
    this.m_close.setOnClickCallBack(function() {
    // source line 84, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this));
},
    onDeleteFriendCb: function() {
    // source line 89, bytecode pc 22
    xs.log("onDeleteFriendCb");
    // source line 91, bytecode pc 82
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_413"));
    // source line 92, bytecode pc 109
    xs.Views.Mgr.hideDialog();
    // source line 95, bytecode pc 174
    xs.Utils.Notify.postNotification(xs.Constant_Notify_ModelChange_Social_del, { type: xs.Views.SocialView_Type_Friends });
},
    cfg: {
        ccbCfg: [
            { tag: 2, type: "btn", name: "m_close", id: "Btn_Close" },
            { tag: 10, type: "ls", name: "m_title", id: "LS_popUI1" },
            { tag: 11, type: "btn", name: "m_btn_msg", id: "Btn_SendMsg" },
            { tag: 12, type: "btn", name: "m_btn_lineUp", id: "Btn_LineUp" },
            { tag: 13, type: "btn", name: "m_btn_delete", id: "Btn_DeleteFriend" },
            { tag: 14, type: "btn", name: "m_btn_close", id: "Btn_ShutDown" }
        ]
    }
}));
// source line 112, bytecode pc 457
(xs.Views.Dialog.FriendOperationDialog.create = function(friendInfo) {
    var ret;
    // source line 113, bytecode pc 28
    (ret = new xs.Views.Dialog.FriendOperationDialog());
    if ((ret && ret.init(friendInfo))) {
        // source line 115, bytecode pc 64
        return ret;
    }
    // source line 117, bytecode pc 66
    return null;
});
// source line 122, bytecode pc 537
xs.Views.Mgr.registerDialog("FriendOperationDialog", { "class": xs.Views.Dialog.FriendOperationDialog, styleType: xs.Constant_DlgStyleType_Large });
