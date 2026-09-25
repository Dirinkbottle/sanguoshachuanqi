// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Libs/Views/Button/common.js:1
// source line 7, bytecode pc 51
(xs.BFButton.extend = (xs.BFButton.extend || cc.Class.extend));
// source line 197, bytecode pc 306
(xs.Libs.Views.Button = (xs.Libs.Views.Button || xs.BFButton.extend({
    init: function() {
    // source line 13, bytecode pc 12
    this._super();
    // source line 15, bytecode pc 20
    (this.m_specialEnabled = false);
    // source line 17, bytecode pc 28
    (this.m_longTimeEventCallBack = null);
    // source line 19, bytecode pc 36
    (this.m_bLongTimeEventTrigger = false);
    // source line 22, bytecode pc 51
    this._wrapper(this);
},
    setBackImg: function(normalSpriteFrameName, selectedSpriteFrameName, disabledSpriteFrameName) {
    if (normalSpriteFrameName) {
        // source line 29, bytecode pc 39
        (this.norBackImg = cc.Scale9Sprite.createWithSpriteFrameName(normalSpriteFrameName));
        // source line 31, bytecode pc 70
        this.setBackgroundSpriteForState(this.norBackImg, cc.CONTROL_STATE_NORMAL);
    }
    if (selectedSpriteFrameName) {
        // source line 34, bytecode pc 110
        (this.selBacklImg = cc.Scale9Sprite.createWithSpriteFrameName(selectedSpriteFrameName));
        // source line 36, bytecode pc 141
        this.setBackgroundSpriteForState(this.selBacklImg, cc.CONTROL_STATE_HIGHLIGHTED);
    }
    if (disabledSpriteFrameName) {
        // source line 39, bytecode pc 181
        (this.disableBackImg = cc.Scale9Sprite.createWithSpriteFrameName(disabledSpriteFrameName));
        // source line 41, bytecode pc 212
        this.setBackgroundSpriteForState(this.disableBackImg, cc.CONTROL_STATE_DISABLED);
    }
},
    _longTimeOnTouch: function() {
    // source line 46, bytecode pc 22
    xs.log_hsq("_longTimeOnTouch");
    // source line 47, bytecode pc 30
    (this.m_bLongTimeEventTrigger = false);
    if (this.m_longTimeEventCallBack) {
        // source line 50, bytecode pc 66
        this.schedule(this._longTimeCallBack, 2, false);
    }
},
    _longTimeTouchEnd: function() {
    // source line 56, bytecode pc 22
    xs.log_hsq("_longTimeTouchEnd");
    if (this.m_longTimeEventCallBack) {
        // source line 58, bytecode pc 53
        this.unschedule(this._longTimeCallBack);
    }
},
    _longTimeCallBack: function() {
    // source line 66, bytecode pc 22
    xs.log_hsq("_longTimeCallBack");
    if (this.m_longTimeEventCallBack) {
        // source line 69, bytecode pc 41
        (this.m_bLongTimeEventTrigger = true);
        // source line 71, bytecode pc 56
        this.m_longTimeEventCallBack(this);
    }
},
    setLongTimeTouchCallBack: function(callBack) {
    // source line 79, bytecode pc 22
    xs.log_hsq("setLongTimeTouchCallBack");
    if (!this.m_longTimeEventCallBack) {
        // source line 82, bytecode pc 67
        this.addTargetWithActionForControlEvents(this, this._longTimeOnTouch, cc.CONTROL_EVENT_TOUCH_DOWN);
        // source line 83, bytecode pc 100
        this.addTargetWithActionForControlEvents(this, this._longTimeTouchEnd, cc.CONTROL_EVENT_TOUCH_UP_INSIDE);
        // source line 84, bytecode pc 133
        this.addTargetWithActionForControlEvents(this, this._longTimeTouchEnd, cc.CONTROL_EVENT_TOUCH_DRAG_OUTSIDE);
        // source line 85, bytecode pc 166
        this.addTargetWithActionForControlEvents(this, this._longTimeTouchEnd, cc.CONTROL_EVENT_TOUCH_DRAG_INSIDE);
        // source line 86, bytecode pc 199
        this.addTargetWithActionForControlEvents(this, this._longTimeTouchEnd, cc.CONTROL_EVENT_TOUCH_UP_OUTSIDE);
    }
    // source line 90, bytecode pc 209
    (this.m_longTimeEventCallBack = callBack);
},
    setBackgroundSpriteFrameForState: function(frameName, state) {
    var sprite;
    // source line 96, bytecode pc 28
    (sprite = cc.Scale9Sprite.createWithSpriteFrameName(frameName));
    // source line 97, bytecode pc 32
    switch (state) {
        case cc.CONTROL_STATE_NORMAL:
        // source line 99, bytecode pc 92
        (this.m_normalSpriteFrameName = frameName);
        // source line 100, bytecode pc 102
        (this.norBackImg = sprite);
        break;
        case cc.CONTROL_STATE_HIGHLIGHTED:
        // source line 103, bytecode pc 117
        (this.m_selectedSpriteFrameName = frameName);
        // source line 104, bytecode pc 127
        (this.selBacklImg = sprite);
        break;
        case cc.CONTROL_STATE_DISABLED:
        // source line 107, bytecode pc 142
        (this.m_disabledSpriteFrameName = frameName);
        // source line 108, bytecode pc 152
        (this.disableBackImg = sprite);
        break;
        default:
        break;
    }
    // source line 114, bytecode pc 183
    this.setBackgroundSpriteForState(sprite, state);
},
    setString: function(str, size) {
    var arguments;
    // source line 118, bytecode pc 4
    (arguments = arguments);
    // source line 119, bytecode pc 32
    this.setTitleForState(str, cc.CONTROL_STATE_NORMAL);
    // source line 120, bytecode pc 60
    this.setTitleForState(str, cc.CONTROL_STATE_HIGHLIGHTED);
    // source line 121, bytecode pc 88
    this.setTitleForState(str, cc.CONTROL_STATE_DISABLED);
    // source line 122, bytecode pc 116
    this.setTitleForState(str, cc.CONTROL_STATE_SELECTED);
    if ((arguments.length === 2)) {
        // source line 125, bytecode pc 149
        this.setFontSize(size);
    }
},
    getString: function() {
    // source line 130, bytecode pc 23
    return this.getTitleForState(cc.CONTROL_STATE_NORMAL);
},
    setButtonSize: function(ccsize) {
    // source line 135, bytecode pc 16
    this.setPreferredSize(ccsize);
},
    getButtonSize: function() {
    // source line 138, bytecode pc 12
    return this.getPreferredSize();
},
    setSpecialEnabled: function(enabled) {
    if ((this.m_specialEnabled !== enabled)) {
        // source line 143, bytecode pc 24
        (this.m_specialEnabled = enabled);
        if (this.m_specialEnabled) {
            if (this.m_disabledSpriteFrameName) {
                // source line 146, bytecode pc 80
                this.setBackImg(this.m_disabledSpriteFrameName, this.m_disabledSpriteFrameName, this.m_disabledSpriteFrameName);
            } else {
                // source line 148, bytecode pc 108
                xs.warn("btn.setSpecialEnabled has no disableSprite");
            }
        } else {
            // source line 151, bytecode pc 147
            this.setBackImg(this.m_normalSpriteFrameName, this.m_selectedSpriteFrameName, this.m_disabledSpriteFrameName);
        }
    }
},
    addCallBackForEvent: function(target, callBack, event) {
    var _event, arguments;
    // source line 158, bytecode pc 4
    (arguments = arguments);
    // source line 159, bytecode pc 11
    (_event = event);
    if ((arguments.length < 3)) {
        // source line 161, bytecode pc 41
        (_event = cc.CONTROL_EVENT_TOUCH_UP_INSIDE);
    }
    // source line 166, bytecode pc 66
    this.addTargetWithActionForControlEvents(target, callBack, _event);
},
    _onClickCallBack: function() {
    if (!this.m_bLongTimeEventTrigger) {
        // source line 171, bytecode pc 26
        this._lastCallBack(this);
    }
},
    setOnClickCallBack: function(callBack) {
    if (!this._lastCallBack) {
        // source line 182, bytecode pc 44
        this.addTargetWithActionForControlEvents(this, this._onClickCallBack, cc.CONTROL_EVENT_TOUCH_UP_INSIDE);
    }
    // source line 184, bytecode pc 54
    (this._lastCallBack = callBack);
},
    addOnClickCallBack: function(callBack) {
    // source line 188, bytecode pc 29
    this.addTargetWithActionForControlEvents(this, callBack, cc.CONTROL_EVENT_TOUCH_UP_INSIDE);
},
    _wrapper: function(btn) {
    // source line 193, bytecode pc 34
    xs.Factorys.BaseLabel._wrapperButton(btn, btn);
},
    setFontSize: function(size) {
    // source line 198, bytecode pc 27
    this.setTitleTTFSizeForState(size, cc.CONTROL_STATE_NORMAL);
    // source line 199, bytecode pc 55
    this.setTitleTTFSizeForState(size, cc.CONTROL_STATE_HIGHLIGHTED);
    // source line 200, bytecode pc 83
    this.setTitleTTFSizeForState(size, cc.CONTROL_STATE_DISABLED);
}
})));
// source line 206, bytecode pc 337
(xs.Libs.Views.Button.create = function() {
    var _ret;
    // source line 208, bytecode pc 28
    (_ret = new xs.Libs.Views.Button());
    // source line 209, bytecode pc 43
    _ret.init();
    // source line 211, bytecode pc 47
    return _ret;
});
// source line 217, bytecode pc 368
(xs.Libs.Views.Button.createWithSpriteFrame = function(normalSpriteFrameName, selectedSpriteFrameName, disabledSpriteFrameName) {
    var ret;
    // source line 218, bytecode pc 34
    (ret = xs.Libs.Views.Button.create());
    // source line 219, bytecode pc 61
    ret.setBackImg(normalSpriteFrameName, selectedSpriteFrameName, disabledSpriteFrameName);
    // source line 220, bytecode pc 78
    ret.setAdjustBackgroundImage(false);
    // source line 221, bytecode pc 82
    return ret;
});
