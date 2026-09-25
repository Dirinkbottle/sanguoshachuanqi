// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/MessagePopView.js:1
// source line 10, bytecode pc 16
(xs.Views.MessagePopViewType_One = 1);
// source line 11, bytecode pc 34
(xs.Views.MessagePopViewType_Two = 2);
// source line 12, bytecode pc 52
(xs.Views.MessagePopViewType_Three = 3);
// source line 299, bytecode pc 271
(xs.Views.MessagePopView = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 16, bytecode pc 12
    this._super();
},
    init: function(type) {
    if (!this._super()) {
        // source line 20, bytecode pc 19
        return false;
    }
    // source line 23, bytecode pc 27
    (this.m_scale9SpBG = null);
    // source line 24, bytecode pc 35
    (this.m_scale9ContentBg = null);
    // source line 25, bytecode pc 43
    (this.m_titleLab = null);
    // source line 26, bytecode pc 51
    (this.m_contentNode = null);
    // source line 27, bytecode pc 59
    (this.m_leftBtn = null);
    // source line 28, bytecode pc 67
    (this.m_rightBtn = null);
    // source line 29, bytecode pc 75
    (this.m_centerBtn = null);
    // source line 30, bytecode pc 83
    (this.m_closeBtn = null);
    // source line 31, bytecode pc 93
    (this.m_type = type);
    // source line 32, bytecode pc 101
    (this.m_listener = null);
    // source line 34, bytecode pc 132
    (this.m_defaultSize = cc.size(432, 200));
    // source line 35, bytecode pc 145
    (this.m_size = this.m_defaultSize);
    // source line 40, bytecode pc 204
    (this.m_scale9SpBG = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.popView_bg02.frameName));
    // source line 41, bytecode pc 229
    this.m_scale9SpBG.setPreferredSize(this.m_defaultSize);
    // source line 44, bytecode pc 288
    xs.Utils.Node.attachNodes(this, this.m_scale9SpBG, { desc: "c", sc: true });
    // source line 47, bytecode pc 347
    (this.m_scale9ContentBg = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.popView_contentBg02.frameName));
    // source line 48, bytecode pc 413
    this.m_scale9ContentBg.setPreferredSize(cc.size((this.m_defaultSize.width - 116), (this.m_defaultSize.height - 160)));
    // source line 54, bytecode pc 496
    xs.Utils.Node.attachNodes(this, this.m_scale9ContentBg, { desc: "c", sc: true, offset: { x: 0, y: 6 } });
    // source line 59, bytecode pc 535
    (this.m_titleLab = xs.Factorys.Label.createByStyleId("LS_popUI1"));
    // source line 60, bytecode pc 582
    this.m_titleLab.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 61, bytecode pc 611
    this.m_titleLab.setVerticalAlignment(cc.TEXT_ALIGNMENT_CENTER);
    // source line 62, bytecode pc 640
    this.m_titleLab.setHorizontalAlignment(cc.VERTICAL_TEXT_ALIGNMENT_CENTER);
    // source line 68, bytecode pc 738
    xs.Utils.Node.attachNodes(this, this.m_titleLab, { desc: "c", sc: true, offset: { x: 0, y: ((this.m_defaultSize.height / 2) - 24) } });
    // source line 72, bytecode pc 777
    (this.m_promptLab = xs.Factorys.Label.createByStyleId("LS_popUI2"));
    // source line 73, bytecode pc 824
    this.m_promptLab.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 74, bytecode pc 853
    this.m_promptLab.setVerticalAlignment(cc.TEXT_ALIGNMENT_CENTER);
    // source line 75, bytecode pc 882
    this.m_promptLab.setHorizontalAlignment(cc.VERTICAL_TEXT_ALIGNMENT_CENTER);
    // source line 81, bytecode pc 977
    xs.Utils.Node.attachNodes(this, this.m_promptLab, { desc: "c", sc: true, offset: { x: 0, y: (this.m_defaultSize.height / 2) } });
    if (((type === xs.Views.MessagePopViewType_Three) || (type === xs.Views.MessagePopViewType_Two))) {
        // source line 86, bytecode pc 1065
        (this.m_leftBtn = xs.Views.Btn.create("Btn_Cancel"));
        // source line 87, bytecode pc 1092
        this.m_leftBtn.addCallBackForEvent(this, this.leftBtnCallback);
        // source line 93, bytecode pc 1205
        xs.Utils.Node.attachNodes(this, this.m_leftBtn, {
    desc: "c",
    sc: true,
    offset: { x: (-this.m_defaultSize.width / 4), y: ((-this.m_defaultSize.height / 2) + 48) }
});
    }
    if (((type === xs.Views.MessagePopViewType_Three) || (type === xs.Views.MessagePopViewType_Two))) {
        // source line 98, bytecode pc 1293
        (this.m_rightBtn = xs.Views.Btn.create("Btn_Confirm"));
        // source line 99, bytecode pc 1320
        this.m_rightBtn.addCallBackForEvent(this, this.rightBtnCallback);
        // source line 105, bytecode pc 1432
        xs.Utils.Node.attachNodes(this, this.m_rightBtn, {
    desc: "c",
    sc: true,
    offset: { x: (this.m_defaultSize.width / 4), y: ((-this.m_defaultSize.height / 2) + 48) }
});
    }
    if (((type === xs.Views.MessagePopViewType_Three) || (type === xs.Views.MessagePopViewType_One))) {
        // source line 110, bytecode pc 1520
        (this.m_centerBtn = xs.Views.Btn.create("Btn_Confirm"));
        // source line 111, bytecode pc 1547
        this.m_centerBtn.addCallBackForEvent(this, this.centerBtnCallback);
        // source line 117, bytecode pc 1646
        xs.Utils.Node.attachNodes(this, this.m_centerBtn, { desc: "c", sc: true, offset: { x: 0, y: ((-this.m_defaultSize.height / 2) + 48) } });
        if (!xs.Guide.GuideMgr.getIsOver()) {
            // source line 122, bytecode pc 1700
            this.m_centerBtn.setGuideTag(3009);
        }
    }
    // source line 126, bytecode pc 1739
    (this.m_closeBtn = xs.Views.Btn.create("Btn_Close"));
    // source line 127, bytecode pc 1777
    this.m_closeBtn.setOnClickCallBack(this.closeBtnCallback.bind(this));
    // source line 136, bytecode pc 1891
    xs.Utils.Node.attachNodes(this, this.m_closeBtn, {
    desc: "c",
    sc: true,
    offset: { x: ((this.m_defaultSize.width / 2) - 58), y: ((this.m_defaultSize.height / 2) - 36) }
});
    // source line 141, bytecode pc 1928
    (this.m_baseTouchPriority = xs.Cfg.Scene.CommonScene.Dialog.priority);
    // source line 142, bytecode pc 1948
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 144, bytecode pc 1950
    return true;
},
    setPopSize: function(size) {
    var visibleOrigin, visibleSize, centerPos, titleSize, ccSize;
    // source line 147, bytecode pc 21
    this.m_scale9SpBG.setPreferredSize(size);
    // source line 149, bytecode pc 46
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 150, bytecode pc 71
    (visibleSize = xs.director.getVisibleSize());
    // source line 151, bytecode pc 133
    (centerPos = cc.p(((visibleSize.width / 2) + visibleOrigin.x), ((visibleSize.height / 2) + visibleOrigin.y)));
    // source line 153, bytecode pc 201
    this.m_titleLab.setPosition(cc.p(centerPos.x, ((centerPos.y + (size.height / 2)) - 32)));
    // source line 154, bytecode pc 222
    (titleSize = this.m_titleLab.getContentSize());
    // source line 155, bytecode pc 275
    this.m_promptLab.setPosition(cc.p(centerPos.x, centerPos.y));
    if (this.m_contentNode) {
        // source line 158, bytecode pc 322
        xs.Utils.Node.fastSetVisible(this.m_scale9ContentBg, true);
        // source line 159, bytecode pc 343
        (ccSize = this.m_contentNode.getContentSize());
        // source line 160, bytecode pc 402
        this.m_scale9ContentBg.setPreferredSize(cc.size((ccSize.width + 10), (ccSize.height + 10)));
    } else {
        // source line 162, bytecode pc 443
        xs.Utils.Node.fastSetVisible(this.m_scale9ContentBg, false);
    }
    // source line 166, bytecode pc 529
    this.m_closeBtn.setPosition(cc.p((((centerPos.x + (size.width / 2)) - 58) + 13), ((centerPos.y + (size.height / 2)) - 36)));
    if (this.m_leftBtn) {
        // source line 169, bytecode pc 621
        this.m_leftBtn.setPosition(cc.p((centerPos.x - (size.width / 4)), ((centerPos.y + (-size.height / 2)) + 48)));
    }
    if (this.m_rightBtn) {
        // source line 172, bytecode pc 713
        this.m_rightBtn.setPosition(cc.p((centerPos.x + (size.width / 4)), ((centerPos.y + (-size.height / 2)) + 48)));
    }
    if (this.m_centerBtn) {
        // source line 175, bytecode pc 793
        this.m_centerBtn.setPosition(cc.p(centerPos.x, ((centerPos.y + (-size.height / 2)) + 48)));
    }
    // source line 178, bytecode pc 803
    (this.m_size = size);
},
    setContentNode: function(node) {
    if (this.m_contentNode) {
        // source line 182, bytecode pc 44
        xs.Utils.Node.safeRemoveChild(this.m_contentNode);
    }
    // source line 184, bytecode pc 54
    (this.m_contentNode = node);
    // source line 185, bytecode pc 67
    this.updatePopSize();
    // source line 186, bytecode pc 114
    this.m_contentNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 192, bytecode pc 197
    xs.Utils.Node.attachNodes(this, this.m_contentNode, { desc: "c", sc: true, offset: { x: 0, y: 6 } });
    if (this.m_contentNode.setBaseTouchPriority) {
        // source line 197, bytecode pc 269
        this.m_contentNode.setBaseTouchPriority((this.m_baseTouchPriority + xs.Views.MessagePopView.cfg.m_contentNode.priority));
    }
    if (this.m_contentNode.setTouchPriority) {
        // source line 200, bytecode pc 341
        this.m_contentNode.setTouchPriority((this.m_baseTouchPriority + xs.Views.MessagePopView.cfg.m_contentNode.priority));
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 204, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 205, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    if (this.m_centerBtn) {
        // source line 207, bytecode pc 96
        this.m_centerBtn.setTouchPriority((this.m_baseTouchPriority + xs.Views.MessagePopView.cfg.m_centerBtn.priority));
    }
    if (this.m_leftBtn) {
        // source line 210, bytecode pc 163
        this.m_leftBtn.setTouchPriority((this.m_baseTouchPriority + xs.Views.MessagePopView.cfg.m_leftBtn.priority));
    }
    if (this.m_rightBtn) {
        // source line 213, bytecode pc 230
        this.m_rightBtn.setTouchPriority((this.m_baseTouchPriority + xs.Views.MessagePopView.cfg.m_rightBtn.priority));
    }
    if (this.m_closeBtn) {
        // source line 216, bytecode pc 297
        this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority + xs.Views.MessagePopView.cfg.m_closeBtn.priority));
    }
    if (this.m_contentNode) {
        if (this.m_contentNode.setBaseTouchPriority) {
            // source line 220, bytecode pc 380
            this.m_contentNode.setBaseTouchPriority((this.m_baseTouchPriority + xs.Views.MessagePopView.cfg.m_contentNode.priority));
        }
        if (this.m_contentNode.setTouchPriority) {
            // source line 223, bytecode pc 452
            this.m_contentNode.setTouchPriority((this.m_baseTouchPriority + xs.Views.MessagePopView.cfg.m_contentNode.priority));
        }
    }
},
    setTitle: function(title) {
    // source line 228, bytecode pc 21
    this.m_titleLab.setString(title);
    // source line 229, bytecode pc 34
    this.updatePopSize();
},
    setPrompt: function(prompt) {
    // source line 232, bytecode pc 21
    this.m_promptLab.setString(prompt);
    // source line 233, bytecode pc 34
    this.updatePopSize();
},
    updatePopSize: function() {
    var newSize, csize, tsize;
    // source line 236, bytecode pc 23
    (newSize = cc.size(0, 0));
    if (this.m_contentNode) {
        // source line 239, bytecode pc 55
        (csize = this.m_contentNode.getContentSize());
        // source line 240, bytecode pc 121
        (newSize.width = ((this.m_size.width > (csize.width + 132)) ? this.m_size.width : (csize.width + 132)));
        // source line 241, bytecode pc 187
        (newSize.height = ((this.m_size.height > (csize.height + 180)) ? this.m_size.height : (csize.height + 180)));
    }
    // source line 244, bytecode pc 208
    (tsize = this.m_titleLab.getContentSize());
    // source line 245, bytecode pc 266
    (newSize.width = ((newSize.width > (tsize.width + 40)) ? newSize.width : (tsize.width + 40)));
    // source line 246, bytecode pc 324
    (newSize.height = ((newSize.height > this.m_size.height) ? newSize.height : this.m_size.height));
    // source line 248, bytecode pc 341
    this.setPopSize(newSize);
},
    setLeftBtnTxt: function(str) {
    if (this.m_leftBtn) {
        // source line 252, bytecode pc 32
        this.m_leftBtn.setString(str);
    }
},
    setRightBtnTxt: function(str) {
    if (this.m_rightBtn) {
        // source line 257, bytecode pc 32
        this.m_rightBtn.setString(str);
    }
},
    setCenterBtnTxt: function(str) {
    if (this.m_centerBtn) {
        // source line 267, bytecode pc 32
        this.m_centerBtn.setString(str);
    }
},
    setListener: function(listener) {
    // source line 271, bytecode pc 9
    (this.m_listener = listener);
},
    leftBtnCallback: function() {
    if (this.m_listener) {
        // source line 275, bytecode pc 28
        this.m_listener.leftBtnCallback();
    }
    // source line 277, bytecode pc 57
    xs.Utils.Node.safeRemoveChild(this);
},
    rightBtnCallback: function() {
    if (this.m_listener) {
        // source line 281, bytecode pc 28
        this.m_listener.rightBtnCallback();
    }
    // source line 283, bytecode pc 57
    xs.Utils.Node.safeRemoveChild(this);
},
    centerBtnCallback: function() {
    if (this.m_listener) {
        // source line 287, bytecode pc 28
        this.m_listener.centerBtnCallback();
    }
    // source line 289, bytecode pc 57
    xs.Utils.Node.safeRemoveChild(this);
    // source line 291, bytecode pc 99
    xs.Guide.GuideMgr.endStepBySequence([ "70001" ]);
},
    closeBtnCallback: function() {
    if ((this.m_listener && (typeof(this.m_listener.closeCallback) == "function"))) {
        // source line 295, bytecode pc 52
        this.m_listener.closeCallback();
    }
    // source line 297, bytecode pc 79
    xs.Views.Mgr.hideDialog();
},
    getDialogSize: function() {
    // source line 300, bytecode pc 6
    return this.m_size;
}
}));
// source line 304, bytecode pc 297
(xs.Views.MessagePopView.create = function(type) {
    var layer;
    // source line 305, bytecode pc 23
    (layer = new xs.Views.MessagePopView());
    if ((layer && layer.init(type))) {
        // source line 307, bytecode pc 59
        return layer;
    }
    // source line 309, bytecode pc 61
    return null;
});
// source line 326, bytecode pc 414
(xs.Views.MessagePopView.cfg = {
    m_leftBtn: { priority: -1 },
    m_rightBtn: { priority: -1 },
    m_centerBtn: { priority: -1 },
    m_closeBtn: { priority: -1 },
    m_contentNode: { priority: -1 }
});
