// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/HungerLayer.js:1
// source line 101, bytecode pc 193
(xs.Views.HungerLayer = cc.Layer.extend({
    name: "xs.Views.HungerLayer",
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    ctor: function() {
    // source line 22, bytecode pc 12
    this._super();
    // source line 23, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    if (!this._super()) {
        // source line 27, bytecode pc 19
        return false;
    }
    // source line 31, bytecode pc 27
    (this.b_isEatEvents = true);
    // source line 34, bytecode pc 42
    this.setTouchEnabled(true);
    // source line 35, bytecode pc 66
    this.setTouchMode(cc.TOUCH_ONE_BY_ONE);
    // source line 38, bytecode pc 68
    return true;
},
    setIsEatEvent: function(eat) {
    if ((this.b_isEatEvents != eat)) {
        // source line 49, bytecode pc 24
        (this.b_isEatEvents = eat);
    }
},
    getIsEatEvent: function() {
    // source line 54, bytecode pc 26
    return (this.b_isEatEvents && (this.isVisible() === true));
},
    isTouchInContent: function(touch) {
    var touchLoc, contentSize, x, y;
    if (!this.isVisible()) {
        // source line 59, bytecode pc 19
        return false;
    }
    // source line 62, bytecode pc 37
    (touchLoc = touch.getLocation());
    // source line 64, bytecode pc 57
    (touchLoc = this.convertToNodeSpace(touchLoc));
    // source line 65, bytecode pc 73
    (contentSize = this.getContentSize());
    // source line 66, bytecode pc 85
    (x = touchLoc.x);
    // source line 67, bytecode pc 97
    (y = touchLoc.y);
    if (((x > 0) && ((x < contentSize.width) && ((y > 0) && (y < contentSize.height))))) {
        // source line 69, bytecode pc 156
        return true;
    }
    // source line 71, bytecode pc 158
    return false;
},
    layerTouched: function() {
    if ((this._isvisible() == false)) {
        // source line 80, bytecode pc 20
        return false;
    }
    // source line 82, bytecode pc 63
    xs.log_zj(("layerTouched eat event" + this.getTouchPriority()), this.name);
},
    onTouchBegan: function(touch, e) {
    if ((this._isvisible() == false)) {
        // source line 86, bytecode pc 20
        return false;
    }
    // source line 88, bytecode pc 33
    return this.getIsEatEvent();
},
    onTouchMoved: function(touch, e) {
    if ((this._isvisible() == false)) {
        // source line 92, bytecode pc 20
        return false;
    }
},
    onTouchEnded: function(touch, e) {
    if ((this._isvisible() == false)) {
        // source line 97, bytecode pc 20
        return false;
    }
    // source line 99, bytecode pc 33
    this.layerTouched();
},
    _isvisible: function() {
    var _parent;
    // source line 102, bytecode pc 15
    (_parent = this.getParent());
    while ((_parent != null)) {
        if ((_parent.isVisible() == false)) {
            // source line 105, bytecode pc 44
            return false;
        }
        // source line 107, bytecode pc 62
        (_parent = _parent.getParent());
    }
}
}));
// source line 112, bytecode pc 219
(xs.Views.HungerLayer.create = function() {
    var layer;
    // source line 113, bytecode pc 23
    (layer = new xs.Views.HungerLayer());
    if ((layer && layer.init())) {
        // source line 115, bytecode pc 55
        return layer;
    }
    // source line 117, bytecode pc 78
    xs.warn("xs.Views.HungerLayer.create error!");
    // source line 118, bytecode pc 80
    return null;
});
// source line 166, bytecode pc 338
(xs.Views.EventLayer = xs.Views.HungerLayer.extend({
    init: function() {
    if (!this._super()) {
        // source line 128, bytecode pc 19
        return false;
    }
    // source line 131, bytecode pc 32
    (this.private = {});
    // source line 132, bytecode pc 45
    (this.private.m_selector = null);
    // source line 133, bytecode pc 58
    (this.private.m_selectorData = null);
    // source line 135, bytecode pc 73
    this.setIsEatEvent(true);
    // source line 137, bytecode pc 75
    return true;
},
    setSize: function(size) {
    var layer;
    // source line 141, bytecode pc 16
    this.setContentSize(size);
    // source line 147, bytecode pc 96
    (layer = cc.LayerColor.create({ r: 250, g: 10, b: 10, a: 200 }, size.width, size.height));
    // source line 148, bytecode pc 129
    xs.Utils.Node.attachNodes(this, layer);
},
    setTouchCallback: function(selector, target, data) {
    // source line 151, bytecode pc 29
    (this.private.m_selector = selector.bind(target));
    // source line 152, bytecode pc 44
    (this.private.m_selectorData = data);
},
    setTouchCallbackData: function(data) {
    // source line 157, bytecode pc 14
    (this.private.m_selectorData = data);
},
    onTouchBegan: function(touch, e) {
    if (!this.isTouchInContent(touch)) {
        // source line 161, bytecode pc 23
        return false;
    }
    // source line 163, bytecode pc 36
    return this.getIsEatEvent();
},
    onTouchMoved: function(touch, e) {
},
    onTouchEnded: function(touch, e) {
    if (!this.isVisible()) {
        // source line 168, bytecode pc 19
        return void 0;
    }
    if (!this.isTouchInContent(touch)) {
        // source line 171, bytecode pc 43
        return void 0;
    }
    if (this.private.m_selector) {
        // source line 174, bytecode pc 89
        this.private.m_selector(this.private.m_selectorData);
    } else {
        // source line 176, bytecode pc 107
        this.layerTouched();
    }
}
}));
// source line 181, bytecode pc 364
(xs.Views.EventLayer.create = function() {
    var layer;
    // source line 182, bytecode pc 23
    (layer = new xs.Views.EventLayer());
    if ((layer && layer.init())) {
        // source line 184, bytecode pc 55
        return layer;
    }
    // source line 186, bytecode pc 78
    xs.warn("xs.Views.EventLayer.create error!");
    // source line 187, bytecode pc 80
    return null;
});
// source line 340, bytecode pc 493
(xs.Views.HollowOutLayer = xs.Views.HungerLayer.extend({
    name: "xs.Views.HollowOutLayer",
    init: function(data) {
    var delayTime;
    if (!this._super()) {
        // source line 199, bytecode pc 19
        return false;
    }
    // source line 202, bytecode pc 50
    (this.m_hollowOutRect = cc.rect(0, 0, 0, 0));
    // source line 203, bytecode pc 58
    (this.m_isClickHand = true);
    // source line 204, bytecode pc 66
    (this.m_clickHand = null);
    if (((data.isClickHand != null) && (data.isClickHand != undefined))) {
        // source line 207, bytecode pc 134
        (this.m_isClickHand = data.isClickHand);
    }
    if (data.rect) {
        // source line 216, bytecode pc 189
        (data.delay = (data.delay || 0));
        // source line 218, bytecode pc 229
        (delayTime = cc.DelayTime.create(data.delay));
        // source line 222, bytecode pc 311
        this.runAction(cc.Sequence.create(delayTime, cc.CallFunc.create(function() {
    // source line 221, bytecode pc 27
    this.setHollowOutRect(data.rect);
}.bind(this), this)));
    }
    // source line 225, bytecode pc 326
    this.setIsEatEvent(true);
    // source line 227, bytecode pc 328
    return true;
},
    reloadData: function(data) {
    var delayTime;
    if (((data.isClickHand != null) && (data.isClickHand != undefined))) {
        // source line 233, bytecode pc 49
        (this.m_isClickHand = data.isClickHand);
    }
    if (data.rect) {
        // source line 238, bytecode pc 86
        (data.delay = (data.delay || 0));
        // source line 240, bytecode pc 91
        (delayTime = null);
        // source line 265, bytecode pc 113
        this.setHollowOutRect(data.rect);
    }
},
    setHollowOutRect: function(rect) {
    // source line 270, bytecode pc 9
    (this.m_hollowOutRect = rect);
    if (this.m_clickHand) {
        // source line 279, bytecode pc 40
        this.m_clickHand.setVisible(false);
    }
    if (this.m_isClickHand) {
        if (!this.m_clickHand) {
            // source line 285, bytecode pc 107
            (this.m_clickHand = xs.Views.Armature.AutoAudioArmature.create("Arm_Hand_Click"));
            // source line 286, bytecode pc 143
            xs.Utils.Node.attachNodes(this, this.m_clickHand);
        }
        // source line 289, bytecode pc 163
        this.m_clickHand.setVisible(true);
        // source line 291, bytecode pc 252
        this.m_clickHand.setPosition(cc.p((this.m_hollowOutRect.x + (this.m_hollowOutRect.width / 2)), (this.m_hollowOutRect.y + (this.m_hollowOutRect.height / 2))));
        // source line 307, bytecode pc 295
        this.m_clickHand.playAniById("hand_click", { speed: 1, loop: true });
    }
},
    isTouchInRect: function(touch) {
    var touchLoc, x, y;
    // source line 316, bytecode pc 17
    (touchLoc = touch.getLocation());
    // source line 318, bytecode pc 37
    (touchLoc = this.convertToNodeSpace(touchLoc));
    // source line 320, bytecode pc 49
    (x = touchLoc.x);
    // source line 321, bytecode pc 61
    (y = touchLoc.y);
    if (((x >= this.m_hollowOutRect.x) && ((x <= (this.m_hollowOutRect.x + this.m_hollowOutRect.width)) && ((y >= this.m_hollowOutRect.y) && (y <= (this.m_hollowOutRect.y + this.m_hollowOutRect.height)))))) {
        // source line 324, bytecode pc 170
        return true;
    }
    // source line 326, bytecode pc 172
    return false;
},
    onTouchBegan: function(touch, e) {
    if (!this.isVisible()) {
        // source line 330, bytecode pc 19
        return false;
    }
    if (this.isTouchInRect(touch)) {
        // source line 333, bytecode pc 70
        xs.log(this.name, ".........throw...");
        // source line 335, bytecode pc 72
        return false;
    }
    // source line 337, bytecode pc 85
    return this.getIsEatEvent();
},
    onTouchMoved: function(touch, e) {
},
    onTouchEnded: function(touch, e) {
    // source line 342, bytecode pc 12
    this.layerTouched();
}
}));
// source line 346, bytecode pc 519
(xs.Views.HollowOutLayer.create = function(data) {
    var layer;
    // source line 347, bytecode pc 23
    (layer = new xs.Views.HollowOutLayer());
    if ((layer && layer.init(data))) {
        // source line 349, bytecode pc 59
        return layer;
    }
    // source line 351, bytecode pc 82
    xs.warn("xs.Views.HollowOutLayer.create error!");
    // source line 352, bytecode pc 84
    return null;
});
