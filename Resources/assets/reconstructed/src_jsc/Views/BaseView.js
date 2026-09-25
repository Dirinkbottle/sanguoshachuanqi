// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/BaseView.js:1
// source line 7, bytecode pc 30
(cc.NodeRGBA.extend = cc.Class.extend);
// source line 87, bytecode pc 155
(xs.Views.BaseView = (xs.Views.BaseView || cc.NodeRGBA.extend({
    name: "xs.Views.BaseView",
    ctor: function() {
    // source line 14, bytecode pc 12
    this._super();
    // source line 15, bytecode pc 42
    cc.associateWithNative(this, cc.NodeRGBA);
},
    init: function() {
    // source line 19, bytecode pc 12
    this._super();
    // source line 22, bytecode pc 27
    this.setCascadeOpacityEnabled(true);
    // source line 23, bytecode pc 42
    this.setCascadeColorEnabled(true);
},
    _checkModel: function(model, funcName) {
    // source line 28, bytecode pc 45
    this.assert(model[funcName], ((("model " + model.name) + " need funcName:") + funcName));
},
    _create_property_boolean_auto: function(propertyName) {
    var _setFuncName, _isFuncName, _propertyName, _updateFuncName, _lazyInitFuncName;
    // source line 34, bytecode pc 12
    (_setFuncName = ("set" + propertyName));
    // source line 35, bytecode pc 25
    (_isFuncName = ("is" + propertyName));
    // source line 36, bytecode pc 38
    (_propertyName = ("m_" + propertyName));
    // source line 37, bytecode pc 57
    (_updateFuncName = (("_update" + propertyName) + "View"));
    // source line 38, bytecode pc 76
    (_lazyInitFuncName = (("_getLazyInit" + propertyName) + "View"));
    // source line 46, bytecode pc 127
    (this[_isFuncName] = function() {
    // source line 41, bytecode pc 20
    return (this.who[this.propertyName] || false);
}.bind({ who: this, isFuncName: _isFuncName, propertyName: _propertyName }));
    // source line 61, bytecode pc 194
    (this[_setFuncName] = function(flag) {
    if ((flag !== this.who[this.propertyName])) {
        // source line 52, bytecode pc 38
        (this.who[this.propertyName] = flag);
        // source line 53, bytecode pc 58
        this.who[this.updateFuncName]();
    }
}.bind({
    who: this,
    isFuncName: _isFuncName,
    setFuncName: _setFuncName,
    updateFuncName: _updateFuncName,
    propertyName: _propertyName
}));
    // source line 77, bytecode pc 261
    (this[_updateFuncName] = function() {
    var _view, _visible;
    // source line 66, bytecode pc 22
    (_view = this.who[this.lazyInitFuncName]());
    // source line 68, bytecode pc 45
    (_visible = this.who[this.isFuncName]());
    // source line 70, bytecode pc 64
    _view.setVisible(_visible);
}.bind({
    who: this,
    isFuncName: _isFuncName,
    setFuncName: _setFuncName,
    updateFuncName: _updateFuncName,
    lazyInitFuncName: _lazyInitFuncName
}));
    // source line 82, bytecode pc 290
    this.assert(this[_lazyInitFuncName], ("_create_property_boolean_auto need:" + _lazyInitFuncName));
},
    _create_property_int_auto: function(propertyName) {
    var _setFuncName, _getFuncName, _propertyName, _updateFuncName, _lazyInitFuncName;
    // source line 89, bytecode pc 12
    (_setFuncName = ("set" + propertyName));
    // source line 90, bytecode pc 25
    (_getFuncName = ("get" + propertyName));
    // source line 91, bytecode pc 38
    (_propertyName = ("m_" + propertyName));
    // source line 92, bytecode pc 57
    (_updateFuncName = (("_update" + propertyName) + "View"));
    // source line 93, bytecode pc 76
    (_lazyInitFuncName = (("_getLazyInit" + propertyName) + "View"));
    // source line 100, bytecode pc 119
    (this[_getFuncName] = function() {
    // source line 96, bytecode pc 13
    return this.who[this.propertyName];
}.bind({ who: this, propertyName: _propertyName }));
    // source line 117, bytecode pc 188
    (this[_setFuncName] = function(flag) {
    if ((flag !== this.who[this.propertyName])) {
        // source line 107, bytecode pc 48
        xs.Utils.Node.removeChildSafe();
        // source line 108, bytecode pc 65
        (this.who[this.propertyName] = flag);
        // source line 109, bytecode pc 85
        this.who[this.updateFuncName]();
    }
}.bind({
    who: this,
    isFuncName: _isFuncName,
    setFuncName: _setFuncName,
    updateFuncName: _updateFuncName,
    propertyName: _propertyName
}));
    // source line 133, bytecode pc 257
    (this[_updateFuncName] = function() {
    var _view, _visible;
    // source line 122, bytecode pc 22
    (_view = this.who[this.lazyInitFuncName]());
    // source line 124, bytecode pc 45
    (_visible = this.who[this.isFuncName]());
    // source line 126, bytecode pc 64
    _view.setVisible(_visible);
}.bind({
    who: this,
    isFuncName: _isFuncName,
    setFuncName: _setFuncName,
    updateFuncName: _updateFuncName,
    lazyInitFuncName: _lazyInitFuncName
}));
    // source line 138, bytecode pc 286
    this.assert(this[_lazyInitFuncName], ("_create_property_boolean_auto need:" + _lazyInitFuncName));
}
})));
