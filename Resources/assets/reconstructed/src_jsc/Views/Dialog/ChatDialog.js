// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/ChatDialog.js:1
// source line 98, bytecode pc 260
(xs.Views.Dialog.ChatDialog = xs.Views.HungerLayer.extend({
    name: "ChatDialog",
    cfg: {
        onceRequestTime: 10,
        requestLimit: 20,
        btnClose: { priority: -1 },
        ccbCfg: [
            { tag: 10, type: "btn", name: "btnClose", id: "Btn_Close" },
            { tag: 21, type: "ls", id: "LS_huodong_title", stringId: "auto_name_336" }
        ]
    },
    init: function() {
    if (!this._super()) {
        // source line 25, bytecode pc 19
        return false;
    }
    // source line 30, bytecode pc 55
    (this.ccbNode = cc.BuilderReader.load("ccb3/Chat.ccbi", this));
    // source line 31, bytecode pc 98
    this.ccbNode.setContentSize(cc.size(857, 612));
    // source line 32, bytecode pc 145
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 33, bytecode pc 198
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c" });
    // source line 36, bytecode pc 246
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 39, bytecode pc 304
    (this.pageView = xs.Views.ChatTablePageView.create(cc.size(800, 509)));
    // source line 40, bytecode pc 328
    this.pageView.setBaseTouchPriority(-999999);
    // source line 42, bytecode pc 417
    this.pageView.addPageWhitConstruct(xs.Tools.String.createString("btnStr_world"), xs.Views.ChatContentLayer, { param: xs.ChatType_World });
    // source line 43, bytecode pc 506
    this.pageView.addPageWhitConstruct(xs.Tools.String.createString("btnStr_union"), xs.Views.ChatContentLayer, { param: xs.ChatType_Guild });
    // source line 44, bytecode pc 597
    xs.Utils.Node.attachNodes(this.ccbNode, this.pageView, { offset: cc.p(20, 22), desc: "lb", sc: true });
    if ((!xsc.Tools.PaySys.isUsingAppStore() && !xs.isVersionForPublish)) {
        // source line 48, bytecode pc 735
        this.pageView.addPageWhitConstruct(xs.Tools.String.createString("btnStr_prvChar"), xs.Views.ChatContentLayer, { param: xs.ChatType_Private });
        // source line 49, bytecode pc 758
        this.pageView.setPageButtonEnabled(2, false);
    }
    if (!xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().hasUnion()) {
        // source line 54, bytecode pc 850
        this.pageView.setPageButtonEnabled(1, false, function() {
    // source line 55, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("chat_noUnion"));
});
    }
    // source line 59, bytecode pc 939
    this.pageView.addPageWhitConstruct(xs.Tools.String.createString("btnStr_duijiu"), xs.Views.ChatContentLayer, { param: xs.ChatType_Duijiu });
    // source line 69, bytecode pc 963
    this.btnClose.setOnClickCallBack(function() {
    // source line 70, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 73, bytecode pc 965
    return true;
},
    onEnter: function() {
    // source line 77, bytecode pc 12
    this._super();
    // source line 80, bytecode pc 52
    xs.Models.ChatMessageManager.getInstance().requestNewMsgFromServer(true);
    // source line 83, bytecode pc 94
    xs.director.getScheduler().unscheduleCallbackForTarget(this, this.autoRequestNewMsgFromServer);
    // source line 84, bytecode pc 159
    xs.director.getScheduler().scheduleCallbackForTarget(this, this.autoRequestNewMsgFromServer, this.cfg.onceRequestTime, cc.REPEAT_FOREVER);
},
    onExit: function() {
    // source line 88, bytecode pc 12
    this._super();
    // source line 89, bytecode pc 54
    xs.director.getScheduler().unscheduleCallbackForTarget(this, this.autoRequestNewMsgFromServer);
},
    setBaseTouchPriority: function(priority) {
    // source line 93, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 94, bytecode pc 51
    this.btnClose.setTouchPriority((this.m_baseTouchPriority + this.cfg.btnClose.priority));
},
    autoRequestNewMsgFromServer: function() {
    // source line 99, bytecode pc 39
    xs.Models.ChatMessageManager.getInstance().requestNewMsgFromServer(false);
}
}));
// source line 105, bytecode pc 291
(xs.Views.Dialog.ChatDialog.show = function() {
    // source line 107, bytecode pc 32
    xs.Views.Mgr.showDialogByName("ChatDialog");
});
// source line 111, bytecode pc 322
(xs.Views.Dialog.ChatDialog.create = function() {
    var ret;
    // source line 112, bytecode pc 28
    (ret = new xs.Views.Dialog.ChatDialog());
    if ((ret && ret.init())) {
        // source line 114, bytecode pc 60
        return ret;
    }
    // source line 116, bytecode pc 62
    return null;
});
// source line 119, bytecode pc 353
(xs.Views.Dialog.ChatDialog.load = function() {
    // source line 120, bytecode pc 32
    xs.Factorys.Sprite.load("DlgCmn");
});
// source line 123, bytecode pc 384
(xs.Views.Dialog.ChatDialog.unload = function() {
    // source line 124, bytecode pc 32
    xs.Factorys.Sprite.unload("DlgCmn");
});
// source line 132, bytecode pc 464
xs.Views.Mgr.registerDialog("ChatDialog", { "class": xs.Views.Dialog.ChatDialog, styleType: xs.Constant_DlgStyleType_Large });
