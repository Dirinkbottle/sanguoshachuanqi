// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/PublicNotice.js:1
// source line 6, bytecode pc 25
(xs.Views.Dialog.WebUrl_forum = "http://cq.sanguosha.com/bbs/forum.php");
// source line 85, bytecode pc 245
(xs.Views.Dialog.PublicNotice = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 11, bytecode pc 12
    this._super();
    // source line 12, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(webUrl, title) {
    // source line 16, bytecode pc 12
    this._super();
    // source line 18, bytecode pc 46
    (this.ccbNode = xs.ccb_reader.load("ccb3/0_6_2_PublicNotice.ccbi"));
    // source line 19, bytecode pc 89
    this.ccbNode.setContentSize(cc.size(782, 605));
    // source line 20, bytecode pc 136
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 21, bytecode pc 195
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", sc: true });
    // source line 23, bytecode pc 203
    (this.m_title = null);
    // source line 24, bytecode pc 251
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 25, bytecode pc 273
    this.m_title.setString(title);
    // source line 28, bytecode pc 295
    (this.webView = new xs.BFWebView());
    // source line 29, bytecode pc 315
    this.webView.setDelegate(this);
    // source line 30, bytecode pc 358
    this.webView.setContentSize(cc.size(630, 500));
    // source line 31, bytecode pc 405
    this.webView.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 35, bytecode pc 495
    xs.Utils.Node.attachNodes(this.ccbNode, this.webView, { desc: "c", offset: cc.p(0, -20), sc: true });
    // source line 37, bytecode pc 517
    this.webView.loadUrl(webUrl);
    // source line 40, bytecode pc 567
    (this.closeBtn = xs.Utils.replaceButton(this.ccbNode, 10, "Btn_Close", ""));
    // source line 41, bytecode pc 605
    this.closeBtn.setOnClickCallBack(this.onCloseBtn.bind(this));
    // source line 43, bytecode pc 607
    return true;
},
    onCloseBtn: function() {
    if ((this._webViewFlag == true)) {
        // source line 48, bytecode pc 39
        xs.Views.Mgr.hideDialog();
        // source line 49, bytecode pc 59
        this.webView.setVisible(false);
    }
},
    WebViewDidStartLoad: function() {
    // source line 56, bytecode pc 7
    (this._webViewFlag = true);
    // source line 57, bytecode pc 37
    xs.log(("WebViewDidStartLoad..." + this._webViewFlag));
},
    WebViewDidFinishLoad: function() {
    // source line 61, bytecode pc 7
    (this._webViewFlag = true);
    // source line 62, bytecode pc 37
    xs.log(("WebViewDidFinishLoad..." + this._webViewFlag));
},
    WebViewDidFailLoad: function(err) {
    // source line 65, bytecode pc 26
    xs.log(("WebViewDidFailLoad...Error : " + err));
},
    onExit: function() {
    // source line 69, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 73, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 74, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 75, bytecode pc 71
    this.closeBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.closeBtn.priority));
},
    cfg: {
        closeBtn: { priority: -1 },
        ccbCfg: [ { tag: 11, type: "ls", name: "m_title", id: "LS_popUI1" } ]
    }
}));
// source line 91, bytecode pc 276
(xs.Views.Dialog.PublicNotice.create = function(webUrl, title) {
    var ret;
    // source line 92, bytecode pc 28
    (ret = new xs.Views.Dialog.PublicNotice());
    if ((ret && ret.init(webUrl, title))) {
        // source line 94, bytecode pc 68
        return ret;
    }
});
// source line 100, bytecode pc 356
xs.Views.Mgr.registerDialog("PublicNotice", { "class": xs.Views.Dialog.PublicNotice, styleType: xs.Constant_DlgStyleType_None });
