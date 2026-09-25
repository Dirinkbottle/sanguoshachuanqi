// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/ChatTablePageView.js:1
// source line 40, bytecode pc 78
(xs.Views.ChatTablePageView = xs.Views.TablePage.extend({
    addPageButton: function(pageName) {
    var pageBtn;
    // source line 9, bytecode pc 39
    (pageBtn = xs.Views.Btn.createWithString("Btn_TableChat", pageName));
    // source line 10, bytecode pc 75
    pageBtn.setAnchorPoint(cc.p(0, 1));
    // source line 11, bytecode pc 92
    pageBtn.setZoomOnTouchDown(false);
    // source line 12, bytecode pc 127
    pageBtn.setOnClickCallBack(this.touchDownAction.bind(this));
    // source line 13, bytecode pc 180
    pageBtn.setTouchPriority((this.m_baseTouchPriority + xs.Views.TablePage.cfg.btn.priority));
    // source line 22, bytecode pc 293
    xs.Utils.Node.attachNodes(this, pageBtn, { desc: "lb", offset: this.getAdjustPos(this.pageButtons.length), sc: false }, { zOrder: -1, tag: -1, priority: -30 });
    // source line 25, bytecode pc 315
    this.pageButtons.push(pageBtn);
    // source line 26, bytecode pc 346
    this.pageButtonsEnabled.push({ canUse: true });
},
    getAdjustPos: function(idx) {
    var frontPos, frontSize, pos;
    if ((idx === 0)) {
        // source line 31, bytecode pc 47
        return cc.p(20, this.getContentSize().height);
    } else {
        // source line 33, bytecode pc 79
        (frontPos = this.pageButtons[(idx - 1)].getPosition());
        // source line 34, bytecode pc 106
        (frontSize = this.pageButtons[(idx - 1)].getContentSize());
        // source line 35, bytecode pc 165
        (pos = cc.p(((frontPos.x + frontSize.width) + 10), this.getContentSize().height));
        // source line 36, bytecode pc 169
        return pos;
    }
},
    getAdjustPosForHintIcon: function(idx) {
    var frontPos, frontSize, pos;
    // source line 50, bytecode pc 26
    (frontPos = this.pageButtons[(idx - 1)].getPosition());
    // source line 51, bytecode pc 53
    (frontSize = this.pageButtons[(idx - 1)].getContentSize());
    // source line 52, bytecode pc 97
    (pos = cc.p(((frontPos.x + frontSize.width) - 10), -15));
    // source line 53, bytecode pc 101
    return pos;
}
}));
// source line 57, bytecode pc 104
(xs.Views.ChatTablePageView.create = function(contentSize) {
    var ret;
    // source line 59, bytecode pc 23
    (ret = new xs.Views.ChatTablePageView());
    if ((ret && ret.init())) {
        // source line 61, bytecode pc 70
        ret.setContentSize(contentSize);
        // source line 62, bytecode pc 74
        return ret;
    } else {
        // source line 64, bytecode pc 81
        return null;
    }
});
