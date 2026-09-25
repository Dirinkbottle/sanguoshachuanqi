// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Core/Cocos2d-x/jsb_cocos2d_studio.js:1
// source line 7, bytecode pc 0
var ccs;
// source line 7, bytecode pc 32
(ccs = (ccs || {}));
// source line 9, bytecode pc 81
(ccs.Class = (ccs.Class || (cc.Class || {})));
// source line 15, bytecode pc 117
(ccs.MovementEventType = { start: 0, complete: 1, loopComplete: 2 });
// source line 21, bytecode pc 153
(ccs.BrightStyle = { none: -1, normal: 0, highlight: 1 });
// source line 26, bytecode pc 182
(ccs.WidgetType = { widget: 0, container: 1 });
// source line 31, bytecode pc 211
(ccs.TextureResType = { local: 0, plist: 1 });
// source line 38, bytecode pc 254
(ccs.TouchEventType = { began: 0, moved: 1, ended: 2, canceled: 3 });
// source line 43, bytecode pc 283
(ccs.SizeType = { absolute: 0, percent: 1 });
// source line 48, bytecode pc 312
(ccs.PositionType = { absolute: 0, percent: 1 });
// source line 53, bytecode pc 341
(ccs.CheckBoxEventType = { selected: 0, unselected: 1 });
// source line 60, bytecode pc 384
(ccs.TextFiledEventType = { attach_with_me: 0, detach_with_ime: 1, insert_text: 2, delete_backward: 3 });
// source line 66, bytecode pc 420
(ccs.LayoutBackGroundColorType = { none: 0, solid: 1, gradient: 2 });
// source line 73, bytecode pc 463
(ccs.LayoutType = { absolute: 0, linearVertical: 1, linearHorizontal: 2, relative: 3 });
// source line 78, bytecode pc 492
(ccs.LayoutClippingType = { stencil: 0, scissor: 1 });
// source line 84, bytecode pc 528
(ccs.LayoutParameterType = { none: 0, linear: 1, relative: 2 });
// source line 94, bytecode pc 592
(ccs.LinearGravity = { none: 0, left: 1, top: 2, right: 3, bottom: 4, centerVertical: 5, centerHorizontal: 6 });
// source line 119, bytecode pc 761
(ccs.RelativeAlign = {
    alignNone: 0,
    alignParentTopLeft: 1,
    alignParentTopCenterHorizontal: 2,
    alignParentTopRight: 3,
    alignParentLeftCenterVertical: 4,
    centerInParent: 5,
    alignParentRightCenterVertical: 6,
    alignParentLeftBottom: 7,
    alignParentBottomCenterHorizontal: 8,
    alignParentRightBottom: 9,
    locationAboveLeftAlign: 10,
    locationAboveCenter: 11,
    locationAboveRightAlign: 12,
    locationLeftOfTopAlign: 13,
    locationLeftOfCenter: 14,
    locationLeftOfBottomAlign: 15,
    locationRightOfTopAlign: 16,
    locationRightOfCenter: 17,
    locationRightOfBottomAlign: 18,
    locationBelowLeftAlign: 19,
    locationBelowCenter: 20,
    locationBelowRightAlign: 21
});
// source line 122, bytecode pc 784
(ccs.SliderEventType = { percent_changed: 0 });
// source line 124, bytecode pc 813
(ccs.LoadingBarType = { left: 0, right: 1 });
// source line 130, bytecode pc 856
(ccs.ScrollViewDir = { none: 0, vertical: 1, horizontal: 2, both: 3 });
// source line 142, bytecode pc 934
(ccs.ScrollviewEventType = {
    scrollToTop: 0,
    scrollToBottom: 1,
    scrollToLeft: 2,
    scrollToRight: 3,
    scrolling: 4,
    bounceTop: 5,
    bounceBottom: 6,
    bounceLeft: 7,
    bounceRight: 8
});
// source line 146, bytecode pc 957
(ccs.ListViewEventType = { listViewOnselectedItem: 0 });
// source line 155, bytecode pc 1014
(ccs.ListViewGravity = { left: 0, right: 1, centerHorizontal: 2, top: 3, bottom: 4, centerVertical: 5 });
// source line 159, bytecode pc 1037
(ccs.PageViewEventType = { turning: 0 });
// source line 164, bytecode pc 1066
(ccs.PVTouchDir = { touchLeft: 0, touchRight: 1 });
// source line 168, bytecode pc 1087
(ccs.UIPanel = ccs.Layout);
// source line 169, bytecode pc 1108
(ccs.UITextArea = ccs.Label);
// source line 170, bytecode pc 1129
(ccs.UIContainerWidget = ccs.Layout);
// source line 171, bytecode pc 1150
(ccs.UITextButton = ccs.Button);
// source line 172, bytecode pc 1171
(ccs.UINodeContainer = ccs.Widget);
// source line 173, bytecode pc 1192
(ccs.PanelColorType = ccs.LayoutBackGroundColorType);
// source line 175, bytecode pc 1213
(ccs.UIWidget = ccs.Widget);
// source line 177, bytecode pc 1234
(ccs.UILayoutParameter = ccs.LayoutParameter);
// source line 178, bytecode pc 1255
(ccs.UILinearLayoutParameter = ccs.LinearLayoutParameter);
// source line 179, bytecode pc 1276
(ccs.UIRelativeLayoutParameter = ccs.RelativeLayoutParameter);
// source line 181, bytecode pc 1297
(ccs.UILinearGravity = ccs.LinearGravity);
// source line 182, bytecode pc 1318
(ccs.UIRelativeAlign = ccs.RelativeAlign);
// source line 184, bytecode pc 1339
(ccs.UIMargin = ccs.Margin);
// source line 185, bytecode pc 1360
(ccs.UIMarginZero = ccs.MarginZero);
// source line 187, bytecode pc 1381
(ccs.UIListView = ccs.ListView);
// source line 188, bytecode pc 1402
(ccs.UIPageView = ccs.PageView);
// source line 189, bytecode pc 1423
(ccs.UIScrollView = ccs.ScrollView);
// source line 190, bytecode pc 1444
(ccs.UIButton = ccs.Button);
// source line 191, bytecode pc 1465
(ccs.UICheckBox = ccs.CheckBox);
// source line 192, bytecode pc 1486
(ccs.UIImageView = ccs.ImageView);
// source line 193, bytecode pc 1507
(ccs.UILabel = ccs.Label);
// source line 194, bytecode pc 1528
(ccs.UILabelAtlas = ccs.LabelAtlas);
// source line 195, bytecode pc 1549
(ccs.UILabelBMFont = ccs.LabelBMFont);
// source line 196, bytecode pc 1570
(ccs.UILoadingBar = ccs.LoadingBar);
// source line 197, bytecode pc 1591
(ccs.UISlider = ccs.Slider);
// source line 198, bytecode pc 1612
(ccs.UITextField = ccs.TextField);
// source line 226, bytecode pc 1705
(ccs.Margin = cc.Class.extend({
    left: 0,
    top: 0,
    right: 0,
    bottom: 0,
    ctor: function() {
    var uiMargin, arguments;
    // source line 205, bytecode pc 4
    (arguments = arguments);
    if ((arguments.length == 1)) {
        // source line 207, bytecode pc 28
        (uiMargin = arguments[0]);
        // source line 208, bytecode pc 43
        (this.left = uiMargin.left);
        // source line 209, bytecode pc 58
        (this.top = uiMargin.top);
        // source line 210, bytecode pc 73
        (this.right = uiMargin.right);
        // source line 211, bytecode pc 88
        (this.bottom = uiMargin.bottom);
    }
    if ((arguments.length == 4)) {
        // source line 214, bytecode pc 116
        (this.left = arguments[0]);
        // source line 215, bytecode pc 128
        (this.top = arguments[1]);
        // source line 216, bytecode pc 141
        (this.right = arguments[2]);
        // source line 217, bytecode pc 154
        (this.bottom = arguments[3]);
    }
},
    setMargin: function(l, t, r, b) {
    // source line 221, bytecode pc 9
    (this.left = l);
    // source line 222, bytecode pc 19
    (this.top = t);
    // source line 223, bytecode pc 29
    (this.right = r);
    // source line 224, bytecode pc 39
    (this.bottom = b);
},
    equals: function(target) {
    // source line 227, bytecode pc 78
    return ((this.left == target.left) && ((this.top == target.top) && ((this.right == target.right) && (this.bottom == target.bottom))));
}
}));
if (ccs.Armature) {
    // source line 233, bytecode pc 1746
    (ccs.Armature.prototype.setBody = function(body) {
    var b;
    // source line 234, bytecode pc 6
    (b = body);
    if ((body.handle !== undefined)) {
        // source line 236, bytecode pc 37
        (b = body.handle);
    }
    // source line 237, bytecode pc 54
    return this._setCPBody(b);
});
    // source line 240, bytecode pc 1772
    (ccs.ArmatureAnimation.prototype.playWithNames = function() {
    var arguments;
    // source line 240, bytecode pc 4
    (arguments = arguments);
    // source line 241, bytecode pc 42
    return ccs.ArmatureAnimation.prototype.playWithArray.apply(this, arguments);
});
    // source line 244, bytecode pc 1798
    (ccs.ArmatureAnimation.prototype.playWithIndexes = function() {
    var arguments;
    // source line 244, bytecode pc 4
    (arguments = arguments);
    // source line 245, bytecode pc 42
    return ccs.ArmatureAnimation.prototype.playWithIndexArray.apply(this, arguments);
});
    // source line 248, bytecode pc 1829
    (ccs.ComController.extend = cc.Class.extend);
    // source line 249, bytecode pc 1860
    (ccs.Armature.extend = cc.Class.extend);
}
// source line 253, bytecode pc 1876
(ccs.sendEvent = function(event) {
    var triggerObjArr, i, triObj;
    // source line 254, bytecode pc 39
    (triggerObjArr = ccs.TriggerMng.getInstance().get(event));
    if ((triggerObjArr == null)) {
        // source line 256, bytecode pc 51
        return void 0;
    }
    // source line 258, bytecode pc 56
    (i = 0);
    while ((i < triggerObjArr.length)) {
        // source line 259, bytecode pc 73
        (triObj = triggerObjArr[i]);
        if (((triObj != null) && triObj.detect())) {
            // source line 261, bytecode pc 118
            triObj.done();
        }
        // source line 258, bytecode pc 133
        i++;
    }
});
// source line 285, bytecode pc 1961
(ccs.ObjectFactory = ccs.Class.extend({
    _typeMap: null,
    ctor: function() {
    // source line 270, bytecode pc 12
    (this._typeMap = {});
},
    destroyInstance: function() {
    // source line 273, bytecode pc 7
    (this._sharedFactory = null);
},
    createObject: function(className) {
    var o, t;
    // source line 277, bytecode pc 4
    (o = null);
    // source line 278, bytecode pc 18
    (t = this._typeMap[className]);
    if (t) {
        // source line 280, bytecode pc 43
        (o = new t._fun());
    }
    // source line 282, bytecode pc 47
    return o;
},
    registerType: function(t) {
    // source line 286, bytecode pc 18
    (this._typeMap[t._className] = t);
}
}));
// source line 290, bytecode pc 1978
(ccs.ObjectFactory._sharedFactory = null);
// source line 292, bytecode pc 1999
(ccs.ObjectFactory.getInstance = function() {
    if (!this._sharedFactory) {
        // source line 294, bytecode pc 33
        (this._sharedFactory = new ccs.ObjectFactory());
    }
    // source line 296, bytecode pc 40
    return this._sharedFactory;
});
// source line 307, bytecode pc 2064
(ccs.TInfo = ccs.Class.extend({
    _className: "",
    _fun: null,
    ctor: function(c, f) {
    if (f) {
        // source line 309, bytecode pc 17
        (this._className = c);
        // source line 310, bytecode pc 27
        (this._fun = f);
    } else {
        // source line 312, bytecode pc 47
        (this._className = c._className);
        // source line 313, bytecode pc 62
        (this._fun = c._fun);
    }
    // source line 315, bytecode pc 97
    ccs.ObjectFactory.getInstance().registerType(this);
}
}));
// source line 319, bytecode pc 2080
(ccs.registerTriggerClass = function(className, createFunc) {
    // source line 320, bytecode pc 23
    new ccs.TInfo(className, createFunc);
});
// source line 335, bytecode pc 2159
(ccs.BaseTriggerCondition = ccs.Class.extend({
    init: function() {
    // source line 325, bytecode pc 1
    return true;
},
    detect: function() {
    // source line 329, bytecode pc 1
    return true;
},
    serialize: function(jsonVal) {
},
    removeAll: function() {
}
}));
// source line 351, bytecode pc 2238
(ccs.BaseTriggerAction = ccs.Class.extend({
    init: function() {
    // source line 341, bytecode pc 1
    return true;
},
    done: function() {
},
    serialize: function(jsonVal) {
},
    removeAll: function() {
}
}));
// source line 473, bytecode pc 2397
(ccs.TriggerObj = ccs.Class.extend({
    _cons: null,
    _acts: null,
    _id: 0,
    _enable: true,
    _vInt: null,
    ctor: function() {
    // source line 363, bytecode pc 7
    (this._id = 0);
    // source line 364, bytecode pc 15
    (this._enable = true);
},
    init: function() {
    // source line 368, bytecode pc 11
    (this._cons = []);
    // source line 369, bytecode pc 23
    (this._acts = []);
    // source line 370, bytecode pc 35
    (this._vInt = []);
    // source line 371, bytecode pc 37
    return true;
},
    detect: function() {
    var ret, obj, i;
    if ((!this._enable || (this._cons.length == 0))) {
        // source line 376, bytecode pc 32
        return true;
    }
    // source line 378, bytecode pc 37
    (ret = true);
    // source line 379, bytecode pc 42
    (obj = null);
    // source line 380, bytecode pc 47
    (i = 0);
    while ((i < this._cons.length)) {
        // source line 381, bytecode pc 67
        (obj = this._cons[i]);
        if ((obj && obj.detect)) {
            // source line 383, bytecode pc 116
            (ret = (ret && obj.detect()));
        }
        // source line 380, bytecode pc 131
        i++;
    }
    // source line 386, bytecode pc 156
    return ret;
},
    done: function() {
    var obj, i;
    if ((!this._enable || (this._acts.length == 0))) {
        // source line 391, bytecode pc 32
        return void 0;
    }
    // source line 394, bytecode pc 41
    (i = 0);
    while ((i < this._acts.length)) {
        // source line 395, bytecode pc 61
        (obj = this._acts[i]);
        if ((obj && obj.done)) {
            // source line 397, bytecode pc 98
            obj.done();
        }
        // source line 394, bytecode pc 113
        i++;
    }
},
    removeAll: function() {
    var obj, i;
    // source line 403, bytecode pc 4
    (obj = null);
    // source line 404, bytecode pc 9
    (i = 0);
    while ((i < this._cons.length)) {
        // source line 405, bytecode pc 29
        (obj = this._cons[i]);
        if (obj) {
            // source line 407, bytecode pc 52
            obj.removeAll();
        }
        // source line 404, bytecode pc 67
        i++;
    }
    // source line 409, bytecode pc 100
    (this._cons = []);
    // source line 410, bytecode pc 105
    (i = 0);
    while ((i < this._acts.length)) {
        // source line 411, bytecode pc 125
        (obj = this._acts[i]);
        if (obj) {
            // source line 413, bytecode pc 148
            obj.removeAll();
        }
        // source line 410, bytecode pc 163
        i++;
    }
    // source line 415, bytecode pc 196
    (this._acts = []);
},
    serialize: function(jsonVal) {
    var conditions, i, subDict, classname, con, actions, act, events, event;
    // source line 419, bytecode pc 21
    (this._id = (jsonVal.id || 0));
    // source line 420, bytecode pc 44
    (conditions = (jsonVal.conditions || []));
    // source line 421, bytecode pc 49
    (i = 0);
    while ((i < conditions.length)) {
        // source line 422, bytecode pc 66
        (subDict = conditions[i]);
        // source line 423, bytecode pc 78
        (classname = subDict.classname);
        if (!classname) {
        } else {
            // source line 427, bytecode pc 132
            (con = ccs.ObjectFactory.getInstance().createObject(classname));
            if (!con) {
                // source line 429, bytecode pc 174
                cc.log((("class named classname(" + classname) + ") can not implement!"));
            }
            // source line 432, bytecode pc 193
            con.serialize(subDict);
            // source line 433, bytecode pc 208
            con.init();
            // source line 434, bytecode pc 230
            this._cons.push(con);
        }
        // source line 421, bytecode pc 245
        i++;
    }
    // source line 437, bytecode pc 286
    (actions = (jsonVal.actions || []));
    // source line 438, bytecode pc 291
    (i = 0);
    while ((i < actions.length)) {
        // source line 439, bytecode pc 308
        (subDict = actions[i]);
        // source line 440, bytecode pc 320
        (classname = subDict.classname);
        if (!classname) {
        } else {
            // source line 444, bytecode pc 374
            (act = ccs.ObjectFactory.getInstance().createObject(classname));
            if (!act) {
                // source line 446, bytecode pc 416
                cc.log((("class named classname(" + classname) + ") can not implement!"));
            }
            // source line 449, bytecode pc 435
            act.serialize(subDict);
            // source line 450, bytecode pc 450
            act.init();
            // source line 451, bytecode pc 472
            this._acts.push(act);
        }
        // source line 438, bytecode pc 487
        i++;
    }
    // source line 454, bytecode pc 528
    (events = (jsonVal.events || []));
    // source line 455, bytecode pc 533
    (i = 0);
    while ((i < events.length)) {
        // source line 456, bytecode pc 550
        (subDict = events[i]);
        // source line 457, bytecode pc 562
        (event = subDict.id);
        if ((event < 0)) {
        } else {
            // source line 461, bytecode pc 599
            this._vInt.push(event);
        }
        // source line 455, bytecode pc 614
        i++;
    }
},
    getId: function() {
    // source line 466, bytecode pc 6
    return this._id;
},
    setEnable: function(enable) {
    // source line 470, bytecode pc 9
    (this._enable = enable);
},
    getEvents: function() {
    // source line 474, bytecode pc 6
    return this._vInt;
}
}));
// source line 478, bytecode pc 2418
(ccs.TriggerObj.create = function() {
    var ret;
    // source line 479, bytecode pc 18
    (ret = new ccs.TriggerObj());
    if (ret.init()) {
        // source line 481, bytecode pc 41
        return ret;
    }
    // source line 482, bytecode pc 43
    return null;
});
// source line 648, bytecode pc 2625
(ccs.TriggerMng = ccs.Class.extend({
    _eventTriggers: null,
    _triggerObjs: null,
    _movementDispatches: null,
    ctor: function() {
    // source line 490, bytecode pc 12
    (this._eventTriggers = {});
    // source line 491, bytecode pc 25
    (this._triggerObjs = {});
    // source line 492, bytecode pc 37
    (this._movementDispatches = []);
},
    destroyInstance: function() {
    // source line 496, bytecode pc 12
    this.removeAll();
    // source line 497, bytecode pc 20
    (this._instance = null);
},
    parse: function(root) {
    var triggers, i, subDict, triggerObj, events, j, event;
    // source line 501, bytecode pc 6
    (triggers = root);
    // source line 502, bytecode pc 11
    (i = 0);
    while ((i < triggers.length)) {
        // source line 503, bytecode pc 28
        (subDict = triggers[i]);
        // source line 504, bytecode pc 53
        (triggerObj = ccs.TriggerObj.create());
        // source line 505, bytecode pc 72
        triggerObj.serialize(subDict);
        // source line 506, bytecode pc 90
        (events = triggerObj.getEvents());
        // source line 507, bytecode pc 95
        (j = 0);
        while ((j < events.length)) {
            // source line 508, bytecode pc 112
            (event = events[j]);
            // source line 509, bytecode pc 133
            this.add(event, triggerObj);
            // source line 507, bytecode pc 148
            j++;
        }
        // source line 511, bytecode pc 191
        (this._triggerObjs[triggerObj.getId()] = triggerObj);
        // source line 502, bytecode pc 204
        (i = (+i + 1));
    }
},
    get: function(event) {
    // source line 516, bytecode pc 10
    return this._eventTriggers[event];
},
    getTriggerObj: function(id) {
    // source line 520, bytecode pc 10
    return this._triggerObjs[id];
},
    add: function(event, triggerObj) {
    var eventTriggers;
    // source line 524, bytecode pc 13
    (eventTriggers = this._eventTriggers[event]);
    if (!eventTriggers) {
        // source line 526, bytecode pc 31
        (eventTriggers = []);
    }
    if (!cc.ArrayContainsObject(eventTriggers, triggerObj)) {
        // source line 529, bytecode pc 80
        eventTriggers.push(triggerObj);
        // source line 530, bytecode pc 94
        (this._eventTriggers[event] = eventTriggers);
    }
},
    removeAll: function() {
    var key, triObjArr, j, obj;
    for (var key in this._eventTriggers) {
        // source line 536, bytecode pc 32
        (triObjArr = this._eventTriggers[key]);
        // source line 537, bytecode pc 37
        (j = 0);
        while ((j < triObjArr.length)) {
            // source line 538, bytecode pc 54
            (obj = triObjArr[j]);
            // source line 539, bytecode pc 69
            obj.removeAll();
            // source line 537, bytecode pc 84
            j++;
        }
    }
    // source line 542, bytecode pc 123
    (this._eventTriggers = {});
},
    remove: function(event, Obj) {
    var bRet, triObjects, i, triObject;
    if (Obj) {
        // source line 547, bytecode pc 28
        return this._removeObj(event, Obj);
    }
    // source line 549, bytecode pc 33
    (bRet = false);
    do {
        // source line 552, bytecode pc 50
        (triObjects = this._eventTriggers[event]);
        if (!triObjects) {
            break;
        }
        // source line 554, bytecode pc 69
        (i = 0);
        while ((i < triObjects.length)) {
            // source line 555, bytecode pc 86
            (triObject = triObjects[i]);
            if (triObject) {
                // source line 557, bytecode pc 109
                triObject.removeAll();
            }
            // source line 554, bytecode pc 124
            i++;
        }
        // source line 560, bytecode pc 153
        delete this._eventTriggers[event];
        // source line 561, bytecode pc 158
        (bRet = true);
    } while (0);
    // source line 563, bytecode pc 168
    return bRet;
},
    _removeObj: function(event, Obj) {
    var bRet, triObjects, i, triObject;
    // source line 567, bytecode pc 4
    (bRet = false);
    do {
        // source line 570, bytecode pc 21
        (triObjects = this._eventTriggers[event]);
        if (!triObjects) {
            break;
        }
        // source line 572, bytecode pc 40
        (i = 0);
        while ((i < triObjects.length)) {
            // source line 573, bytecode pc 57
            (triObject = triObjects[i]);
            if ((triObject && (triObject == Obj))) {
                // source line 575, bytecode pc 93
                triObject.removeAll();
                // source line 576, bytecode pc 114
                triObjects.splice(i, 1);
                break;
            }
            // source line 572, bytecode pc 134
            i++;
        }
        // source line 580, bytecode pc 157
        (bRet = true);
    } while (0);
    // source line 582, bytecode pc 167
    return bRet;
},
    removeTriggerObj: function(id) {
    var obj, events, i, event;
    // source line 586, bytecode pc 19
    (obj = this.getTriggerObj(id));
    if (!obj) {
        // source line 588, bytecode pc 30
        return false;
    }
    // source line 590, bytecode pc 48
    (events = obj.getEvents());
    // source line 591, bytecode pc 53
    (i = 0);
    while ((i < events.length)) {
        // source line 592, bytecode pc 70
        (event = events[i]);
        // source line 593, bytecode pc 91
        this.remove(event, obj);
        // source line 591, bytecode pc 106
        i++;
    }
    // source line 595, bytecode pc 126
    return true;
},
    isEmpty: function() {
    // source line 598, bytecode pc 26
    return (!this._eventTriggers || (this._eventTriggers.length <= 0));
},
    addArmatureMovementCallBack: function(armature, callFunc, target) {
    var locAmd, hasADD, i, newAmd;
    if (((armature == null) || ((target == null) || (callFunc == null)))) {
        // source line 603, bytecode pc 33
        return void 0;
    }
    // source line 605, bytecode pc 42
    (hasADD = false);
    // source line 606, bytecode pc 47
    (i = 0);
    while ((i < this._movementDispatches.length)) {
        // source line 607, bytecode pc 67
        (locAmd = this._movementDispatches[i]);
        if ((locAmd && (locAmd[0] == armature))) {
            // source line 609, bytecode pc 113
            locAmd.addAnimationEventCallBack(callFunc, target);
            // source line 610, bytecode pc 118
            (hasADD = true);
        }
        // source line 606, bytecode pc 133
        i++;
    }
    if (!hasADD) {
        // source line 614, bytecode pc 182
        (newAmd = new ccs.ArmatureMovementDispatcher());
        // source line 615, bytecode pc 221
        armature.getAnimation().setMovementEventCallFunc(newAmd.animationEvent, newAmd);
        // source line 616, bytecode pc 244
        newAmd.addAnimationEventCallBack(callFunc, target);
        // source line 617, bytecode pc 282
        this._movementDispatches.push([ armature, newAmd ]);
    }
},
    removeArmatureMovementCallBack: function(armature, target, callFunc) {
    var locAmd, i;
    if (((armature == null) || ((target == null) || (callFunc == null)))) {
        // source line 623, bytecode pc 33
        return void 0;
    }
    // source line 626, bytecode pc 42
    (i = 0);
    while ((i < this._movementDispatches.length)) {
        // source line 627, bytecode pc 62
        (locAmd = this._movementDispatches[i]);
        if ((locAmd && (locAmd[0] == armature))) {
            // source line 629, bytecode pc 108
            locAmd.removeAnimationEventCallBack(callFunc, target);
        }
        // source line 626, bytecode pc 123
        i++;
    }
},
    removeArmatureAllMovementCallBack: function(armature) {
    var locAmd, i;
    if ((armature == null)) {
        // source line 636, bytecode pc 11
        return void 0;
    }
    // source line 639, bytecode pc 20
    (i = 0);
    while ((i < this._movementDispatches.length)) {
        // source line 640, bytecode pc 40
        (locAmd = this._movementDispatches[i]);
        if ((locAmd && (locAmd[0] == armature))) {
            // source line 642, bytecode pc 87
            this._movementDispatches.splice(i, 1);
            break;
        }
        // source line 639, bytecode pc 107
        i++;
    }
},
    removeAllArmatureMovementCallBack: function() {
    // source line 649, bytecode pc 11
    (this._movementDispatches = []);
}
}));
// source line 653, bytecode pc 2646
(ccs.TriggerMng.triggerMngVersion = function() {
    // source line 654, bytecode pc 5
    return "1.2.0.0";
});
// source line 656, bytecode pc 2663
(ccs.TriggerMng._instance = null);
// source line 657, bytecode pc 2684
(ccs.TriggerMng.getInstance = function() {
    if ((null == this._instance)) {
        // source line 659, bytecode pc 34
        (this._instance = new ccs.TriggerMng());
    }
    // source line 661, bytecode pc 41
    return this._instance;
});
