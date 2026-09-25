// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/ScrollView.js:1
// source line 154, bytecode pc 218
(xs.Views.ScrollView = xs.Views.HungerLayer.extend({
    name: "ScrollView",
    ctor: function() {
    // source line 5, bytecode pc 12
    this._super();
},
    init: function(viewSize) {
    if (!this._super()) {
        // source line 9, bytecode pc 19
        return false;
    }
    // source line 11, bytecode pc 29
    (this.originalSize = viewSize);
    // source line 12, bytecode pc 61
    (this.m_scrollView = cc.ScrollView.create(viewSize));
    // source line 13, bytecode pc 90
    this.m_scrollView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 14, bytecode pc 112
    this.m_scrollView.setContentSize(viewSize);
    // source line 15, bytecode pc 134
    this.m_scrollView.setViewSize(viewSize);
    // source line 16, bytecode pc 154
    this.m_scrollView.setDelegate(this);
    // source line 17, bytecode pc 188
    xs.Utils.Node.makeDebugPoint(this.m_scrollView);
    // source line 23, bytecode pc 270
    xs.Utils.Node.attachNodes(this, this.m_scrollView, { desc: "lb", sc: true, offset: { x: 0, y: 0 } });
    // source line 26, bytecode pc 278
    (this.m_offsetDistance = 0);
    // source line 28, bytecode pc 287
    (this._defaultIntervalHeight = 5);
    // source line 30, bytecode pc 304
    this.setContentSize(viewSize);
    // source line 32, bytecode pc 319
    this.setIsEatEvent(true);
    // source line 34, bytecode pc 331
    (this._childrenArray = []);
    // source line 35, bytecode pc 333
    return true;
},
    addChildrenView: function(childrenView, width, height) {
    var childrenViewSize, contensize, position;
    // source line 39, bytecode pc 41
    (childrenViewSize = cc.size((width || 0), (height || 0)));
    if (((childrenViewSize.width == 0) && (childrenViewSize.height == 0))) {
        if ((childrenView.getViewSize != null)) {
            // source line 42, bytecode pc 105
            (childrenViewSize = childrenView.getViewSize());
        } else {
            // source line 45, bytecode pc 128
            (childrenViewSize = childrenView.getContentSize());
        }
    }
    // source line 54, bytecode pc 228
    xs.Utils.Node.attachNodes(this.m_scrollView.getContainer(), childrenView, { desc: "lb", sc: true, offset: { x: 0, y: this.m_offsetDistance } });
    // source line 57, bytecode pc 238
    (contensize = this.originalSize);
    // source line 59, bytecode pc 267
    (this.m_offsetDistance = ((this.m_offsetDistance + childrenViewSize.height) + this._defaultIntervalHeight));
    if ((this.m_offsetDistance > contensize.height)) {
        // source line 61, bytecode pc 338
        this.m_scrollView.setContentSize(cc.size(contensize.width, this.m_offsetDistance));
        // source line 62, bytecode pc 359
        (position = this.m_scrollView.minContainerOffset());
        // source line 63, bytecode pc 392
        this.m_scrollView.getContainer().setPosition(position);
    }
    // source line 65, bytecode pc 414
    this._childrenArray.push(childrenView);
},
    removeAllChildrenView: function() {
    // source line 68, bytecode pc 28
    this.m_scrollView.getContainer().removeAllChildren();
    // source line 69, bytecode pc 36
    (this.m_offsetDistance = 0);
    // source line 70, bytecode pc 45
    (this._defaultIntervalHeight = 5);
    // source line 71, bytecode pc 57
    (this._childrenArray = []);
},
    setBaseTouchPriority: function(priority) {
    // source line 77, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 78, bytecode pc 26
    this.setTouchPriority(priority);
    // source line 79, bytecode pc 53
    this.m_scrollView.setTouchPriority((this.m_baseTouchPriority - 1));
},
    getBaseTouchPriority: function() {
    // source line 82, bytecode pc 6
    return this.m_baseTouchPriority;
},
    scrollViewDidScroll: function(tableView) {
    var offset;
    // source line 85, bytecode pc 17
    (offset = tableView.getContentOffset());
},
    onTouchBegan: function(touch, e) {
    if ((this._isvisible() == false)) {
        // source line 90, bytecode pc 20
        return false;
    }
    // source line 94, bytecode pc 47
    (this.touchBeganFlag = this._super(touch, e));
    // source line 95, bytecode pc 54
    return this.touchBeganFlag;
},
    onTouchMoved: function(touch, e) {
    if ((this._isvisible() == false)) {
        // source line 99, bytecode pc 20
        return false;
    }
    // source line 103, bytecode pc 28
    (this.touchMoveFlag = true);
},
    onTouchEnded: function(touch, e) {
    if ((this._isvisible() == false)) {
        // source line 107, bytecode pc 20
        return false;
    }
    // source line 109, bytecode pc 28
    (this.touchEndFlag = true);
    // source line 111, bytecode pc 49
    this._super(touch, e);
},
    layerTouched: function(touch, e) {
    var childrenarray, i;
    if ((this._isvisible() == false)) {
        // source line 115, bytecode pc 20
        return false;
    }
    // source line 118, bytecode pc 30
    (this.layerTouchedTouch = touch);
    // source line 119, bytecode pc 40
    (this.layerTouchedEvent = e);
    // source line 122, bytecode pc 72
    (childrenarray = this.m_scrollView.getContainer().getChildren());
    // source line 123, bytecode pc 77
    (i = 0);
    while ((i < childrenarray.length)) {
        if ((typeof(childrenarray[i].isLayerTouched) == "function")) {
            // source line 125, bytecode pc 134
            childrenarray[i].isLayerTouched(touch, e);
        }
        // source line 123, bytecode pc 149
        i++;
    }
    // source line 128, bytecode pc 175
    (this.touchBeganFlag = false);
    // source line 129, bytecode pc 183
    (this.touchMoveFlag = false);
    // source line 130, bytecode pc 191
    (this.touchEndFlag = false);
},
    getOffsetDistance: function() {
    // source line 133, bytecode pc 6
    return this.m_offsetDistance;
},
    setTouch: function(flag) {
    // source line 136, bytecode pc 21
    this.m_scrollView.setTouchEnabled(flag);
},
    resizeView: function() {
    var _diffvalue, _newpos, i;
    if ((this.m_offsetDistance < this.originalSize.height)) {
        // source line 140, bytecode pc 44
        (_diffvalue = (this.originalSize.height - this.m_offsetDistance));
        // source line 141, bytecode pc 68
        (_newpos = cc.p(0, 0));
        // source line 143, bytecode pc 73
        (i = 0);
        while ((i < this._childrenArray.length)) {
            // source line 144, bytecode pc 104
            (_newpos = this._childrenArray[i].getPosition());
            // source line 145, bytecode pc 125
            (_newpos.y = (_newpos.y + _diffvalue));
            // source line 147, bytecode pc 151
            this._childrenArray[i].setPosition(_newpos);
            // source line 143, bytecode pc 166
            i++;
        }
    }
},
    getContentOffset: function() {
    // source line 152, bytecode pc 17
    return this.m_scrollView.getContentOffset();
},
    setContentOffset: function(offset) {
    // source line 155, bytecode pc 21
    this.m_scrollView.setContentOffset(offset);
}
}));
// source line 158, bytecode pc 244
(xs.Views.ScrollView.create = function(viewSize) {
    var view;
    // source line 159, bytecode pc 23
    (view = new xs.Views.ScrollView());
    if ((view && view.init(viewSize))) {
        // source line 161, bytecode pc 59
        return view;
    }
    // source line 163, bytecode pc 84
    xs.assert(false, "xs.Views.ListTableView.create error");
    // source line 164, bytecode pc 86
    return null;
});
