// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/MiniTablePage.js:1
// source line 50, bytecode pc 98
(xs.Views.MiniTablePage = xs.Views.TablePage.extend({
    ctor: function() {
    // source line 9, bytecode pc 12
    this._super();
    // source line 10, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function() {
    var bg;
    if (!this._super()) {
        // source line 15, bytecode pc 19
        return false;
    }
    // source line 18, bytecode pc 50
    (bg = cc.Scale9Sprite.createWithSpriteFrameName("Cmn01_0_6_1_erjineikuang.png"));
    // source line 19, bytecode pc 90
    bg.setPreferredSize(cc.size(456, 456));
    // source line 20, bytecode pc 126
    bg.setAnchorPoint(cc.p(0, 0));
    // source line 21, bytecode pc 164
    this.setContentSize(cc.size(456, 518));
    // source line 22, bytecode pc 206
    this.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 23, bytecode pc 223
    this.addChild(bg);
    // source line 25, bytecode pc 225
    return true;
},
    addPage: function(pageName, pageView) {
    // source line 30, bytecode pc 36
    pageView.setPosition(cc.p(20, 0));
    // source line 31, bytecode pc 57
    this._super(pageName, pageView);
},
    addPageButton: function(pageName) {
    var pageBtn;
    // source line 36, bytecode pc 39
    (pageBtn = xs.Views.Btn.createWithString("Btn_MiniTable", pageName));
    // source line 37, bytecode pc 75
    pageBtn.setAnchorPoint(cc.p(0, 1));
    // source line 38, bytecode pc 92
    pageBtn.setZoomOnTouchDown(false);
    // source line 39, bytecode pc 127
    pageBtn.setOnClickCallBack(this.touchDownAction.bind(this));
    // source line 40, bytecode pc 180
    pageBtn.setTouchPriority((this.m_baseTouchPriority + xs.Views.TablePage.cfg.btn.priority));
    // source line 41, bytecode pc 215
    pageBtn.setOnClickCallBack(this.touchDownAction.bind(this));
    // source line 44, bytecode pc 331
    xs.Utils.Node.attachNodes(this, pageBtn, { desc: "lb", offset: this.getAdjustPos(this.pageButtons.length), sc: false }, xs.Cfg.Scene.AgaScene.tablePage.pageButton);
    // source line 45, bytecode pc 348
    pageBtn.setZoomOnTouchDown(false);
    // source line 46, bytecode pc 394
    pageBtn.setTouchPriority(xs.Views.TablePage.cfg.btn.priority);
    // source line 47, bytecode pc 416
    this.pageButtons.push(pageBtn);
},
    getAdjustPos: function(idx) {
    var visibleSize, frontPos, frontSize, pos;
    // source line 51, bytecode pc 35
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    if ((idx === 0)) {
        // source line 53, bytecode pc 83
        return cc.p(20, this.getContentSize().height);
    } else {
        // source line 55, bytecode pc 115
        (frontPos = this.pageButtons[(idx - 1)].getPosition());
        // source line 56, bytecode pc 142
        (frontSize = this.pageButtons[(idx - 1)].getContentSize());
        // source line 57, bytecode pc 201
        (pos = cc.p(((frontPos.x + frontSize.width) - 8), this.getContentSize().height));
        // source line 58, bytecode pc 205
        return pos;
    }
}
}));
// source line 63, bytecode pc 124
(xs.Views.MiniTablePage.create = function() {
    var ret;
    // source line 64, bytecode pc 23
    (ret = new xs.Views.MiniTablePage());
    if ((ret && ret.init())) {
        // source line 66, bytecode pc 55
        return ret;
    }
    // source line 68, bytecode pc 57
    return null;
});
