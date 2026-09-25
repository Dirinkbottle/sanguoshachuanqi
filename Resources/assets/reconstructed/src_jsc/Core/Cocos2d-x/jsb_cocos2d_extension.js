// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Core/Cocos2d-x/jsb_cocos2d_extension.js:1
// source line 7, bytecode pc 0
var cc;
// source line 7, bytecode pc 32
(cc = (cc || {}));
// source line 9, bytecode pc 45
(cc.SCROLLVIEW_DIRECTION_NONE = -1);
// source line 10, bytecode pc 57
(cc.SCROLLVIEW_DIRECTION_HORIZONTAL = 0);
// source line 11, bytecode pc 69
(cc.SCROLLVIEW_DIRECTION_VERTICAL = 1);
// source line 12, bytecode pc 82
(cc.SCROLLVIEW_DIRECTION_BOTH = 2);
// source line 13, bytecode pc 94
(cc.TABLEVIEW_FILL_TOPDOWN = 0);
// source line 14, bytecode pc 106
(cc.TABLEVIEW_FILL_BOTTOMUP = 1);
// source line 21, bytecode pc 118
(cc.KEYBOARD_RETURNTYPE_DEFAULT = 0);
// source line 27, bytecode pc 130
(cc.KEYBOARD_RETURNTYPE_DONE = 1);
// source line 33, bytecode pc 143
(cc.KEYBOARD_RETURNTYPE_SEND = 2);
// source line 39, bytecode pc 156
(cc.KEYBOARD_RETURNTYPE_SEARCH = 3);
// source line 45, bytecode pc 169
(cc.KEYBOARD_RETURNTYPE_GO = 4);
// source line 52, bytecode pc 181
(cc.EDITBOX_INPUT_MODE_ANY = 0);
// source line 59, bytecode pc 193
(cc.EDITBOX_INPUT_MODE_EMAILADDR = 1);
// source line 66, bytecode pc 206
(cc.EDITBOX_INPUT_MODE_NUMERIC = 2);
// source line 73, bytecode pc 219
(cc.EDITBOX_INPUT_MODE_PHONENUMBER = 3);
// source line 80, bytecode pc 232
(cc.EDITBOX_INPUT_MODE_URL = 4);
// source line 88, bytecode pc 245
(cc.EDITBOX_INPUT_MODE_DECIMAL = 5);
// source line 95, bytecode pc 258
(cc.EDITBOX_INPUT_MODE_SINGLELINE = 6);
// source line 103, bytecode pc 270
(cc.EDITBOX_INPUT_FLAG_PASSWORD = 0);
// source line 113, bytecode pc 282
(cc.EDITBOX_INPUT_FLAG_SENSITIVE = 1);
// source line 121, bytecode pc 295
(cc.EDITBOX_INPUT_FLAG_INITIAL_CAPS_WORD = 2);
// source line 129, bytecode pc 308
(cc.EDITBOX_INPUT_FLAG_INITIAL_CAPS_SENTENCE = 3);
// source line 136, bytecode pc 321
(cc.EDITBOX_INPUT_FLAG_INITIAL_CAPS_ALL_CHARACTERS = 4);
// source line 138, bytecode pc 334
(cc.CONTROL_EVENT_TOTAL_NUMBER = 9);
// source line 140, bytecode pc 346
(cc.CONTROL_EVENT_TOUCH_DOWN = 1);
// source line 141, bytecode pc 359
(cc.CONTROL_EVENT_TOUCH_DRAG_INSIDE = 2);
// source line 142, bytecode pc 372
(cc.CONTROL_EVENT_TOUCH_DRAG_OUTSIDE = 4);
// source line 143, bytecode pc 385
(cc.CONTROL_EVENT_TOUCH_DRAG_ENTER = 8);
// source line 144, bytecode pc 398
(cc.CONTROL_EVENT_TOUCH_DRAG_EXIT = 16);
// source line 145, bytecode pc 411
(cc.CONTROL_EVENT_TOUCH_UP_INSIDE = 32);
// source line 146, bytecode pc 424
(cc.CONTROL_EVENT_TOUCH_UP_OUTSIDE = 64);
// source line 147, bytecode pc 438
(cc.CONTROL_EVENT_TOUCH_CANCEL = 128);
// source line 148, bytecode pc 452
(cc.CONTROL_EVENT_VALUECHANGED = 256);
// source line 150, bytecode pc 464
(cc.CONTROL_STATE_NORMAL = 1);
// source line 151, bytecode pc 477
(cc.CONTROL_STATE_HIGHLIGHTED = 2);
// source line 152, bytecode pc 490
(cc.CONTROL_STATE_DISABLED = 4);
// source line 153, bytecode pc 503
(cc.CONTROL_STATE_SELECTED = 8);
// source line 154, bytecode pc 516
(cc.CONTROL_STATE_INITIAL = 8);
// source line 157, bytecode pc 537
(cc.PhysicsDebugNode.create = function(space) {
    var s;
    // source line 158, bytecode pc 6
    (s = space);
    if ((space.handle !== undefined)) {
        // source line 160, bytecode pc 37
        (s = space.handle);
    }
    // source line 161, bytecode pc 63
    return cc.PhysicsDebugNode._create(s);
});
// source line 163, bytecode pc 563
(cc.PhysicsDebugNode.prototype.setSpace = function(space) {
    var s;
    // source line 164, bytecode pc 6
    (s = space);
    if ((space.handle !== undefined)) {
        // source line 166, bytecode pc 37
        (s = space.handle);
    }
    // source line 167, bytecode pc 54
    return this._setSpace(s);
});
// source line 171, bytecode pc 589
(cc.PhysicsSprite.prototype.setBody = function(body) {
    var b;
    // source line 172, bytecode pc 6
    (b = body);
    if ((body.handle !== undefined)) {
        // source line 174, bytecode pc 37
        (b = body.handle);
    }
    // source line 175, bytecode pc 54
    return this._setCPBody(b);
});
// source line 178, bytecode pc 620
(cc.ScrollView.extend = cc.Class.extend);
// source line 179, bytecode pc 651
(cc.TableView.extend = cc.Class.extend);
// source line 180, bytecode pc 682
(cc.TableViewCell.extend = cc.Class.extend);
// source line 181, bytecode pc 713
(cc.GLNode.extend = cc.Class.extend);
