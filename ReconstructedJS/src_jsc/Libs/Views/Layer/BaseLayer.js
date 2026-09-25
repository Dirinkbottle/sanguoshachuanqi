// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Libs/Views/Layer/BaseLayer.js:1
// source line 103, bytecode pc 148
(xs.Libs.Views.BaseLayer = cc.LayerColor.extend({
    name: "xs.Libs.Views.BaseLayer",
    ctor: function() {
    // source line 18, bytecode pc 12
    this._super();
    // source line 19, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    if (!this._super()) {
        // source line 23, bytecode pc 19
        return false;
    }
    // source line 27, bytecode pc 27
    (this.b_isEatEvents = false);
    // source line 34, bytecode pc 29
    return true;
},
    setIsEatEvent: function(eat) {
    if ((this.b_isEatEvents !== eat)) {
        // source line 39, bytecode pc 24
        (this.b_isEatEvents = eat);
    }
},
    getIsEatEvent: function() {
    // source line 44, bytecode pc 6
    return this.b_isEatEvents;
},
    setTouchCheckVisible: function(flag) {
    if ((this.m_bCheckVisible !== flag)) {
        // source line 49, bytecode pc 24
        (this.m_bCheckVisible = flag);
    }
},
    onTouchBegan: function(touch, e) {
    if ((this.m_bCheckVisible && (this._isvisible() == false))) {
        // source line 88, bytecode pc 32
        return false;
    }
    // source line 90, bytecode pc 45
    return this.getIsEatEvent();
},
    onTouchMoved: function(touch, e) {
    if ((this.m_bCheckVisible && (this._isvisible() == false))) {
        // source line 94, bytecode pc 32
        return false;
    }
},
    onTouchEnded: function(touch, e) {
    if ((this.m_bCheckVisible && (this._isvisible() == false))) {
        // source line 99, bytecode pc 32
        return false;
    }
    // source line 101, bytecode pc 45
    this.layerTouched();
},
    _isvisible: function() {
    var _parent;
    // source line 104, bytecode pc 15
    (_parent = this.getParent());
    while ((_parent != null)) {
        if ((_parent.isVisible() == false)) {
            // source line 107, bytecode pc 44
            return false;
        }
        // source line 109, bytecode pc 62
        (_parent = _parent.getParent());
    }
}
}));
