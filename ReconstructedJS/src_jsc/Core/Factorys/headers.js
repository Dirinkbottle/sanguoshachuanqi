// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Core/Factorys/headers.js:1
// source line 61, bytecode pc 82
(xs.Core.Factorys = {
    Sprite: {
        load: function(plist) {
    // source line 11, bytecode pc 36
    cc.SpriteFrameCache.getInstance().addSpriteFrames(plist);
},
        unload: function(plist) {
    // source line 34, bytecode pc 36
    cc.SpriteFrameCache.getInstance().removeSpriteFramesFromFile(plist);
},
        _createWithFileName: function(name, rect) {
    var _sprite;
    // source line 39, bytecode pc 4
    (_sprite = null);
    if (rect) {
        // source line 42, bytecode pc 45
        (_sprite = cc.Sprite.create(name, rect));
    } else {
        // source line 45, bytecode pc 79
        (_sprite = cc.Sprite.create(name));
    }
    if ((_sprite === null)) {
        // source line 49, bytecode pc 121
        xsc.Debug.log("warning,Sprite.createWithFileName is null", name);
    }
    // source line 52, bytecode pc 125
    return _sprite;
},
        createWithFileName: function(name, rect) {
    var _ret;
    // source line 56, bytecode pc 23
    (_ret = this._createWithFileName(name, rect));
    // source line 57, bytecode pc 55
    xsc.Debug.assert(_ret, "createWithFileName failed");
    // source line 58, bytecode pc 59
    return _ret;
},
        createWithSpriteFrameName: function(frameName) {
    // source line 62, bytecode pc 25
    return cc.Sprite.createWithSpriteFrameName(frameName);
}
    }
});
