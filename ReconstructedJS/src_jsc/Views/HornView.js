// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/HornView.js:1
// source line 90, bytecode pc 213
(xs.Views.HornView = xs.Views.HungerLayer.extend({
    ccbCfg: [ { tag: 10, type: "ls", id: "LS_liaotian_5" } ],
    cfg: { rebirthTime: 5 },
    ctor: function() {
    // source line 18, bytecode pc 12
    this._super();
},
    init: function() {
    var node;
    if (!this._super()) {
        // source line 23, bytecode pc 19
        return false;
    }
    // source line 26, bytecode pc 27
    (this.m_speakLab = null);
    // source line 29, bytecode pc 80
    (node = xs.ccb_reader.load(xs.Views.HornView.cfg.ccbi, this));
    // source line 30, bytecode pc 116
    node.setAnchorPoint(cc.p(0, 0));
    // source line 32, bytecode pc 166
    xs.Utils.Node.attachNodes(this, node, { desc: "lb" });
    // source line 34, bytecode pc 206
    xs.Utils.UI.replaceCcbByCfg(node, this.ccbCfg, this);
    // source line 35, bytecode pc 230
    (this.m_bg = node.getChildByTag(20));
    // source line 36, bytecode pc 303
    this.m_bg.setContentSize(cc.size(((xs.director.getVisibleSize().width * 820) / 960), 41));
    // source line 38, bytecode pc 355
    (this.m_speakLab = node.getChildByTag(xs.Views.HornView.cfg.m_speakLab.tag));
    // source line 39, bytecode pc 394
    this.m_speakLab.setAnchorPoint(cc.p(0, 1));
    // source line 40, bytecode pc 468
    this.m_speakLab.setPosition(cc.p(this.m_speakLab.getPositionX(), (this.m_speakLab.getPositionY() + 14)));
    // source line 42, bytecode pc 537
    this.m_speakLab.setString(this.createSafeMessage(xs.Models.ChatMessageManager.getInstance().getLastLanternMsg()));
    // source line 45, bytecode pc 539
    return true;
},
    onEnter: function() {
    // source line 49, bytecode pc 12
    this._super();
    // source line 50, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.changeContent, xs.Constant_Notify_Event_LanternMessage);
},
    onExit: function() {
    // source line 54, bytecode pc 39
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_LanternMessage);
    // source line 56, bytecode pc 52
    this._super();
},
    onTouchBegan: function(touch, e) {
    var endPoint;
    // source line 61, bytecode pc 19
    (endPoint = this.convertTouchToNodeSpace(touch));
    if ((cc.rectContainsPoint(this.m_bg.getBoundingBox(), endPoint) && xs.Guide.GuideMgr.getIsOver())) {
        // source line 63, bytecode pc 117
        xs.log_xjf("点到聊天条");
        // source line 64, bytecode pc 149
        xs.Views.Dialog.ChatDialog.show();
        // source line 65, bytecode pc 151
        return true;
    }
    // source line 67, bytecode pc 153
    return false;
},
    onTouchMoved: function(touch, e) {
},
    onTouchEnded: function(touch, e) {
},
    setBaseTouchPriority: function(priority) {
    // source line 74, bytecode pc 19
    this.setTouchPriority((priority - 99));
},
    createSafeMessage: function(str) {
    var _newMessage;
    // source line 79, bytecode pc 12
    (_newMessage = ("" + str));
    if ((str == null)) {
        // source line 81, bytecode pc 58
        (_newMessage = xs.Tools.String.createString("hornDefault"));
    } else {
        if ((_newMessage.length > 39)) {
            // source line 84, bytecode pc 108
            (_newMessage = (_newMessage.substring(0, 37) + "..."));
        }
    }
    // source line 87, bytecode pc 112
    return _newMessage;
},
    changeContent: function(newMessage) {
    var fdOut, call, fdIn;
    if ((newMessage != null)) {
        // source line 92, bytecode pc 32
        (this.newMessage = this.createSafeMessage(newMessage));
        // source line 94, bytecode pc 71
        (fdOut = cc.FadeOut.create((6 / xs.fps)));
        // source line 98, bytecode pc 115
        (call = cc.CallFunc.create(function() {
    // source line 97, bytecode pc 24
    this.m_speakLab.setString(this.newMessage);
}.bind(this)));
        // source line 100, bytecode pc 154
        (fdIn = cc.FadeIn.create((3 / xs.fps)));
        // source line 107, bytecode pc 226
        this.m_speakLab.runAction(xs.Utils.Action.combineSequence([ fdOut, call, fdIn ]));
    } else {
        if ((xs.Models.ChatMessageManager.getInstance().getCanLanternRequest() && xs.Guide.GuideMgr.getIsOver())) {
            // source line 115, bytecode pc 343
            xs.Models.ChatMessageManager.getInstance().requestMsgFromLantern();
        }
    }
}
}));
// source line 124, bytecode pc 239
(xs.Views.HornView.create = function() {
    var node;
    // source line 125, bytecode pc 23
    (node = new xs.Views.HornView());
    if ((node && node.init())) {
        // source line 127, bytecode pc 55
        return node;
    }
    // source line 129, bytecode pc 57
    return null;
});
// source line 135, bytecode pc 294
(xs.Views.HornView.cfg = { ccbi: "ccb3/laba.ccbi", m_speakLab: { tag: 10 } });
