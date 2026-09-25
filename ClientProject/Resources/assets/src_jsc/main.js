// Minimal clean-room JSB startup scene.
// Reconstructed gameplay code is available under reconstructed_js/src_jsc/ for ongoing integration.
require("jsb.js");

var RebuildBootLayer = cc.Layer.extend({
    ctor: function() {
        this._super();
        cc.associateWithNative(this, cc.Layer);
    },
    init: function() {
        this._super();
        var size = cc.Director.getInstance().getWinSize();
        var label = cc.LabelTTF.create("SGSCQ Cocos2d-x 2.2.6 / JSB", "Arial", 28);
        label.setPosition(cc.p(size.width / 2, size.height / 2));
        this.addChild(label, 1);
        return true;
    }
});

var RebuildBootScene = cc.Scene.extend({
    ctor: function() {
        this._super();
        cc.associateWithNative(this, cc.Scene);
    },
    onEnter: function() {
        this._super();
        var layer = new RebuildBootLayer();
        this.addChild(layer);
        layer.init();
    }
});

cc.Director.getInstance().runWithScene(new RebuildBootScene());
