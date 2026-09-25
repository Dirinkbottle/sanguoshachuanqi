// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/MultiPagesMenuView.js:1
// source line 332, bytecode pc 213
(xs.Views.MultiPagesMenuView = cc.Layer.extend({
    ctor: function() {
    // source line 12, bytecode pc 12
    this._super();
    // source line 13, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(params) {
    if (!this._super()) {
        // source line 17, bytecode pc 19
        return false;
    }
    // source line 20, bytecode pc 27
    (this.isPlayAction = true);
    // source line 23, bytecode pc 54
    (this.m_touchBeganPos = cc.p(0, 0));
    // source line 24, bytecode pc 62
    (this.b_touchMoved = false);
    // source line 25, bytecode pc 70
    (this.m_container = null);
    // source line 26, bytecode pc 78
    (this.m_delegate = null);
    // source line 28, bytecode pc 86
    (this.m_pageIndex = 0);
    // source line 29, bytecode pc 94
    (this.m_pageNum = 0);
    // source line 30, bytecode pc 106
    (this.m_menuArray = []);
    // source line 31, bytecode pc 118
    (this.m_pageArray = []);
    // source line 33, bytecode pc 126
    (this.m_lastBtn = null);
    // source line 34, bytecode pc 134
    (this.m_nextBtn = null);
    // source line 35, bytecode pc 142
    (this.b_ismoving = false);
    // source line 39, bytecode pc 170
    (this.m_container = cc.Node.create());
    // source line 40, bytecode pc 206
    xs.Utils.Node.attachNodes(this, this.m_container);
    // source line 43, bytecode pc 221
    this.setTouchEnabled(true);
    // source line 44, bytecode pc 245
    this.setTouchMode(cc.TOUCH_ONE_BY_ONE);
    if (params) {
        if (!params.isAction) {
            // source line 51, bytecode pc 275
            (this.isPlayAction = false);
        }
    }
    // source line 55, bytecode pc 277
    return true;
},
    onEnterTransitionDidFinish: function() {
    var contentSize, scaleTo;
    // source line 62, bytecode pc 12
    this._super();
    if (this.isPlayAction) {
        // source line 67, bytecode pc 155
        xs.Guide.GuideMgr.endStepBySequence([
    "40102",
    "60103",
    "70102",
    "110102",
    "150103",
    "120102",
    "130103",
    "140103",
    "170103",
    "160103",
    "200103"
]);
        // source line 69, bytecode pc 181
        this.m_pageArray[0].setScale(2.2);
        // source line 70, bytecode pc 230
        this.m_pageArray[0].setAnchorPoint(cc.p(0.5, 0.5));
        // source line 71, bytecode pc 246
        (contentSize = this.getContentSize());
        // source line 72, bytecode pc 307
        this.m_pageArray[0].setPosition(cc.p((contentSize.width / 2), (contentSize.height / 2)));
        // source line 73, bytecode pc 340
        (scaleTo = cc.ScaleTo.create(0.2, 1));
        // source line 84, bytecode pc 427
        this.m_pageArray[0].runAction(cc.Sequence.create(scaleTo, cc.CallFunc.create(function() {
    // source line 76, bytecode pc 40
    this.m_pageArray[0].setAnchorPoint(cc.p(0, 0));
    // source line 77, bytecode pc 81
    this.m_pageArray[0].setPosition(cc.p(0, 0));
    if (this.m_delegate) {
        // source line 81, bytecode pc 110
        this.m_delegate.MPMV_MenuActionDone();
    }
}.bind(this))));
    } else {
        // source line 88, bytecode pc 450
        this.m_delegate.MPMV_MenuActionDone();
    }
},
    setDelegate: function(delegate) {
    // source line 96, bytecode pc 9
    (this.m_delegate = delegate);
    // source line 97, bytecode pc 22
    this.setUpContainer();
    // source line 98, bytecode pc 35
    this.setUpSwapBtn();
},
    setUpContainer: function() {
    var mod, pageNum, contentSize, i, page;
    if (!this.m_delegate) {
        // source line 102, bytecode pc 34
        xs.warn("MultiPagesMenuView needs delegate!");
        // source line 103, bytecode pc 36
        return void 0;
    }
    // source line 105, bytecode pc 75
    (mod = (this.m_delegate.MPMV_MenusNum() % this.m_delegate.MPMV_MenusNumEachPage()));
    // source line 106, bytecode pc 136
    (pageNum = xs.Utils.parseIntSafe((this.m_delegate.MPMV_MenusNum() / this.m_delegate.MPMV_MenusNumEachPage())));
    // source line 110, bytecode pc 161
    (pageNum = (mod ? (pageNum + 1) : pageNum));
    // source line 111, bytecode pc 171
    (this.m_pageNum = pageNum);
    // source line 113, bytecode pc 187
    (contentSize = this.getContentSize());
    // source line 114, bytecode pc 192
    (i = 0);
    while ((i < pageNum)) {
        // source line 115, bytecode pc 223
        (page = cc.Node.create());
        // source line 116, bytecode pc 242
        page.setContentSize(contentSize);
        // source line 119, bytecode pc 289
        page.setPosition(cc.p((i * contentSize.width), 0));
        // source line 120, bytecode pc 327
        xs.Utils.Node.attachNodes(this.m_container, page);
        // source line 123, bytecode pc 349
        this.m_pageArray.push(page);
        // source line 125, bytecode pc 370
        this.layoutMenu(page, i);
        // source line 114, bytecode pc 383
        (i = (+i + 1));
    }
},
    setUpSwapBtn: function() {
    if (!this.m_delegate) {
        // source line 131, bytecode pc 34
        xs.warn("MultiPagesMenuView needs delegate!");
        // source line 132, bytecode pc 36
        return void 0;
    }
    // source line 138, bytecode pc 80
    (this._arm_left = xs.Views.Armature.AutoAudioArmature.create("Arm_guideArrow"));
    // source line 140, bytecode pc 124
    (this._arm_right = xs.Views.Armature.AutoAudioArmature.create("Arm_guideArrow"));
    // source line 143, bytecode pc 167
    this._arm_left.playAniById("guide", { loop: true, speed: 1 });
    // source line 144, bytecode pc 210
    this._arm_right.playAniById("guide", { loop: true, speed: 1 });
    // source line 148, bytecode pc 250
    (this.m_nextBtn = xs.Views.Btn.createInvisibleWithChild(this._arm_right));
    // source line 149, bytecode pc 288
    this.m_nextBtn.setOnClickCallBack(this.nextPage.bind(this));
    // source line 150, bytecode pc 324
    this.m_nextBtn.setPosition(this.m_delegate.MPMV_NextBtnPos());
    // source line 151, bytecode pc 360
    xs.Utils.Node.attachNodes(this, this.m_nextBtn);
    // source line 154, bytecode pc 400
    (this.m_lastBtn = xs.Views.Btn.createInvisibleWithChild(this._arm_left));
    // source line 155, bytecode pc 438
    this.m_lastBtn.addOnClickCallBack(this.lastPage.bind(this));
    // source line 156, bytecode pc 474
    this.m_lastBtn.setPosition(this.m_delegate.MPMV_LastBtnPos());
    // source line 157, bytecode pc 496
    this.m_lastBtn.setRotationY(180);
    // source line 158, bytecode pc 532
    xs.Utils.Node.attachNodes(this, this.m_lastBtn);
    // source line 162, bytecode pc 545
    this.updateSwapBtn();
},
    setBaseTouchPriority: function(priority) {
    // source line 165, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 166, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 167, bytecode pc 85
    this.m_lastBtn.setTouchPriority((this.m_baseTouchPriority + xs.Views.MultiPagesMenuView.cfg.m_lastBtn.priority));
    // source line 168, bytecode pc 141
    this.m_nextBtn.setTouchPriority((this.m_baseTouchPriority + xs.Views.MultiPagesMenuView.cfg.m_nextBtn.priority));
},
    updateSwapBtn: function() {
    // source line 171, bytecode pc 19
    this.m_lastBtn.setVisible(true);
    // source line 172, bytecode pc 39
    this.m_nextBtn.setVisible(true);
    // source line 173, bytecode pc 59
    this._arm_left.setVisible(true);
    // source line 174, bytecode pc 79
    this._arm_right.setVisible(true);
    if ((this.m_pageIndex === 0)) {
        // source line 176, bytecode pc 112
        this.m_lastBtn.setVisible(false);
        // source line 177, bytecode pc 132
        this._arm_left.setVisible(false);
    }
    if ((this.m_pageIndex === (this.m_pageNum - 1))) {
        // source line 180, bytecode pc 172
        this.m_nextBtn.setVisible(false);
        // source line 181, bytecode pc 192
        this._arm_right.setVisible(false);
    }
},
    layoutMenu: function(page, index) {
    var allMenuNum, eachPageMenuNum, menuNum, i, menuIndex, menu, pos;
    // source line 204, bytecode pc 20
    (allMenuNum = this.m_delegate.MPMV_MenusNum());
    // source line 205, bytecode pc 41
    (eachPageMenuNum = this.m_delegate.MPMV_MenusNumEachPage());
    // source line 207, bytecode pc 46
    (menuNum = 0);
    if ((index === (this.m_pageNum - 1))) {
        if ((allMenuNum === eachPageMenuNum)) {
            // source line 210, bytecode pc 82
            (menuNum = eachPageMenuNum);
        } else {
            // source line 212, bytecode pc 107
            (menuNum = (allMenuNum - (eachPageMenuNum * (this.m_pageNum - 1))));
        }
    } else {
        // source line 215, bytecode pc 119
        (menuNum = eachPageMenuNum);
    }
    // source line 218, bytecode pc 124
    (i = 0);
    while ((i < menuNum)) {
        // source line 219, bytecode pc 145
        (menuIndex = ((index * eachPageMenuNum) + i));
        // source line 220, bytecode pc 170
        (menu = this.m_delegate.MPMV_MenuForIndex(menuIndex));
        // source line 221, bytecode pc 195
        (pos = this.m_delegate.MPMV_MenuPositionAtIndex(menuIndex));
        // source line 222, bytecode pc 214
        menu.setPosition(pos);
        // source line 223, bytecode pc 249
        xs.Utils.Node.attachNodes(page, menu);
        // source line 226, bytecode pc 271
        this.m_menuArray.push(menu);
        // source line 218, bytecode pc 284
        (i = (+i + 1));
    }
},
    nextPage: function() {
    // source line 230, bytecode pc 21
    this.setPageIndex((this.m_pageIndex + 1));
},
    lastPage: function() {
    // source line 233, bytecode pc 21
    this.setPageIndex((this.m_pageIndex - 1));
},
    setPageIndexNoAction: function(index) {
    var contentSize;
    if ((index < 0)) {
        // source line 237, bytecode pc 14
        (index = 0);
    } else {
        if ((index >= this.m_pageNum)) {
            // source line 239, bytecode pc 46
            (index = (this.m_pageNum - 1));
        }
    }
    // source line 243, bytecode pc 56
    (this.m_pageIndex = index);
    // source line 244, bytecode pc 69
    this.updateSwapBtn();
    // source line 245, bytecode pc 85
    (contentSize = this.getContentSize());
    // source line 247, bytecode pc 139
    this.m_container.setPosition(cc.p((-this.m_pageIndex * contentSize.width), 0));
},
    setPageIndex: function(index) {
    var contentSize, moveBegin, moveTo, moveEnd, sequence;
    if (((index >= this.m_pageNum) || (index < 0))) {
        // source line 253, bytecode pc 27
        return void 0;
    }
    if (this.b_ismoving) {
        // source line 255, bytecode pc 40
        return void 0;
    }
    // source line 257, bytecode pc 50
    (this.m_pageIndex = index);
    // source line 258, bytecode pc 63
    this.updateSwapBtn();
    // source line 259, bytecode pc 79
    (contentSize = this.getContentSize());
    // source line 260, bytecode pc 112
    (moveBegin = cc.CallFunc.create(function() {
    // source line 260, bytecode pc 7
    (this.b_ismoving = true);
}, this));
    // source line 261, bytecode pc 179
    (moveTo = cc.MoveTo.create(0.4, cc.p((-this.m_pageIndex * contentSize.width), 0)));
    // source line 262, bytecode pc 212
    (moveEnd = cc.CallFunc.create(function() {
    // source line 262, bytecode pc 7
    (this.b_ismoving = false);
}, this));
    // source line 263, bytecode pc 249
    (sequence = cc.Sequence.create(moveBegin, moveTo, moveEnd));
    // source line 264, bytecode pc 271
    this.m_container.runAction(sequence);
},
    dispatchTouchAtPos: function(touchPos) {
    var allMenuNum, eachPageMenuNum, startIndex, endIndex, i, pos, eRect, offset, org, index, scaleTo, scaleBack, action;
    // source line 269, bytecode pc 20
    (allMenuNum = this.m_delegate.MPMV_MenusNum());
    // source line 270, bytecode pc 41
    (eachPageMenuNum = this.m_delegate.MPMV_MenusNumEachPage());
    // source line 272, bytecode pc 55
    (startIndex = (this.m_pageIndex * eachPageMenuNum));
    // source line 275, bytecode pc 111
    (endIndex = ((this.m_pageIndex < (this.m_pageNum - 1)) ? (startIndex + eachPageMenuNum) : ((startIndex + allMenuNum) - (eachPageMenuNum * (this.m_pageNum - 1)))));
    // source line 277, bytecode pc 118
    (i = startIndex);
    while ((i < endIndex)) {
        // source line 278, bytecode pc 149
        (pos = this.m_delegate.MPMV_MenuPositionAtIndex(i));
        // source line 279, bytecode pc 174
        (eRect = this.m_delegate.MPMV_MenuEventRect(i));
        // source line 280, bytecode pc 199
        (offset = this.m_delegate.MPMV_MenuOffsetAtIndex(i));
        // source line 281, bytecode pc 225
        (pos.x = (pos.x + offset.x));
        // source line 282, bytecode pc 251
        (pos.y = (pos.y + offset.y));
        // source line 288, bytecode pc 289
        (org = cc.p(pos.x, pos.y));
        // source line 289, bytecode pc 318
        (org.x = (org.x - (eRect.width / 2)));
        // source line 290, bytecode pc 347
        (org.y = (org.y - (eRect.height / 2)));
        if (((touchPos.x <= (org.x + eRect.width)) && ((touchPos.x >= org.x) && ((touchPos.y <= (org.y + eRect.height)) && (touchPos.y >= org.y))))) {
            // source line 303, bytecode pc 469
            (index = i);
            // source line 305, bytecode pc 506
            (scaleTo = cc.ScaleTo.create(0.05, 1.1));
            // source line 306, bytecode pc 539
            (scaleBack = cc.ScaleTo.create(0.05, 1));
            // source line 310, bytecode pc 633
            (action = cc.Sequence.create.apply(cc.Sequence, [
    scaleTo,
    cc.CallFunc.create(function() {
    // source line 309, bytecode pc 44
    this.m_delegate.MPMV_MenuTouchedInIndex(this.m_menuArray[index], index);
}, this),
    scaleBack
]));
            // source line 311, bytecode pc 659
            this.m_menuArray[i].runAction(action);
            // source line 313, bytecode pc 661
            return void 0;
        }
        // source line 277, bytecode pc 674
        (i = (+i + 1));
    }
},
    onTouchBegan: function(touch, e) {
    // source line 319, bytecode pc 20
    (this.m_touchBeganPos = touch.getLocation());
    // source line 320, bytecode pc 28
    (this.b_touchMoved = false);
    // source line 322, bytecode pc 30
    return true;
},
    onTouchMoved: function(touch, e) {
    var touchMovedPos;
    // source line 325, bytecode pc 17
    (touchMovedPos = touch.getLocation());
    if (((Math.abs((touchMovedPos.x - this.m_touchBeganPos.x)) > 30) || (Math.abs((touchMovedPos.y - this.m_touchBeganPos.y)) > 30))) {
        // source line 328, bytecode pc 116
        (this.b_touchMoved = true);
    }
},
    onTouchEnded: function(touch, e) {
    var touchEndedPos;
    if (this.b_ismoving) {
        // source line 333, bytecode pc 12
        return void 0;
    }
    // source line 334, bytecode pc 30
    (touchEndedPos = touch.getLocation());
    if (!this.b_touchMoved) {
        // source line 336, bytecode pc 59
        this.dispatchTouchAtPos(touchEndedPos);
    } else {
        if (((touchEndedPos.x - this.m_touchBeganPos.x) > 100)) {
            // source line 339, bytecode pc 105
            this.lastPage();
        }
        if (((touchEndedPos.x - this.m_touchBeganPos.x) < -100)) {
            // source line 342, bytecode pc 146
            this.nextPage();
        }
    }
}
}));
// source line 354, bytecode pc 276
(xs.Views.MultiPagesMenuView.cfg = { m_lastBtn: { priority: -2 }, m_nextBtn: { priority: -2 } });
// source line 358, bytecode pc 302
(xs.Views.MultiPagesMenuView.create = function(params) {
    var layer;
    // source line 359, bytecode pc 23
    (layer = new xs.Views.MultiPagesMenuView());
    if ((layer && layer.init(params))) {
        // source line 361, bytecode pc 59
        return layer;
    }
    // source line 363, bytecode pc 82
    xs.warn("xs.Views.MultiPagesMenuView.create error!");
    // source line 364, bytecode pc 84
    return null;
});
