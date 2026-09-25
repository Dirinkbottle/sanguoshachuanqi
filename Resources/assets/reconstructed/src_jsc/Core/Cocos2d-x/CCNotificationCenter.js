// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Core/Cocos2d-x/CCNotificationCenter.js:1
// source line 31, bytecode pc 11
(cc.s_sharedNotificationCenter = null);
// source line 122, bytecode pc 116
(cc.NotificationCenter = cc.Class.extend({
    ctor: function() {
    // source line 35, bytecode pc 11
    (this._observers = []);
},
    addObserver: function(target, selector, name, obj) {
    var observer;
    if (this._observerExisted(target, name)) {
        // source line 46, bytecode pc 26
        return void 0;
    }
    // source line 48, bytecode pc 61
    (observer = new cc.NotificationObserver(target, selector, name, obj));
    if (!observer) {
        // source line 50, bytecode pc 72
        return void 0;
    }
    // source line 52, bytecode pc 94
    this._observers.push(observer);
},
    removeObserver: function(target, name) {
    var i, observer;
    // source line 61, bytecode pc 4
    (i = 0);
    while ((i < this._observers.length)) {
        // source line 62, bytecode pc 24
        (observer = this._observers[i]);
        if (!observer) {
        } else {
            if (((observer.getName() == name) && (observer.getTarget() == target))) {
                // source line 66, bytecode pc 109
                this._observers.splice(i, 1);
                // source line 67, bytecode pc 111
                return void 0;
            }
        }
        // source line 61, bytecode pc 126
        i++;
    }
},
    removeAllObservers: function(target) {
    var removes, i, selObserver;
    // source line 78, bytecode pc 8
    (removes = []);
    // source line 79, bytecode pc 13
    (i = 0);
    while ((i < this._observers.length)) {
        // source line 80, bytecode pc 33
        (selObserver = this._observers[i]);
        if ((selObserver.getTarget() == target)) {
            // source line 82, bytecode pc 75
            removes.push(selObserver);
        }
        // source line 79, bytecode pc 90
        i++;
    }
    // source line 84, bytecode pc 139
    cc.ArrayRemoveArray(this._observers, removes);
    // source line 85, bytecode pc 148
    return removes.length;
},
    postNotification: function(name, object) {
    var i, observer;
    // source line 93, bytecode pc 4
    (i = 0);
    while ((i < this._observers.length)) {
        // source line 94, bytecode pc 24
        (observer = this._observers[i]);
        if (!observer) {
        } else {
            if ((observer.getName() == name)) {
                // source line 98, bytecode pc 80
                observer.performSelector(object);
            }
        }
        // source line 93, bytecode pc 95
        i++;
    }
},
    _observerExisted: function(target, name) {
    var i, observer;
    // source line 113, bytecode pc 4
    (i = 0);
    while ((i < this._observers.length)) {
        // source line 114, bytecode pc 24
        (observer = this._observers[i]);
        if (!observer) {
        } else {
            if (((observer.getName() == name) && (observer.getTarget() == target))) {
                // source line 118, bytecode pc 87
                return true;
            }
        }
        // source line 113, bytecode pc 102
        i++;
    }
    // source line 120, bytecode pc 125
    return false;
},
    _observers: null
}));
// source line 128, bytecode pc 137
(cc.NotificationCenter.getInstance = function() {
    if (!cc.s_sharedNotificationCenter) {
        // source line 130, bytecode pc 41
        (cc.s_sharedNotificationCenter = new cc.NotificationCenter());
    }
    // source line 132, bytecode pc 52
    return cc.s_sharedNotificationCenter;
});
// source line 191, bytecode pc 260
(cc.NotificationObserver = cc.Class.extend({
    ctor: function(target, selector, name, obj) {
    // source line 143, bytecode pc 9
    (this._target = target);
    // source line 144, bytecode pc 19
    (this._selector = selector);
    // source line 145, bytecode pc 29
    (this._name = name);
    // source line 146, bytecode pc 39
    (this._object = obj);
},
    performSelector: function(obj) {
    if ((this._target && (typeof(this._selector) == "string"))) {
        // source line 154, bytecode pc 53
        this._target[this._selector](obj);
    } else {
        if ((this._target && (typeof(this._selector) == "function"))) {
            // source line 156, bytecode pc 117
            this._selector.call(this._target, obj);
        } else {
            // source line 158, bytecode pc 139
            this._selector(obj);
        }
    }
},
    _target: null,
    _selector: null,
    _name: null,
    _object: null,
    getTarget: function() {
    // source line 171, bytecode pc 6
    return this._target;
},
    getSelector: function() {
    // source line 178, bytecode pc 6
    return this._selector;
},
    getName: function() {
    // source line 185, bytecode pc 6
    return this._name;
},
    getObject: function() {
    // source line 192, bytecode pc 6
    return this._object;
}
}));
