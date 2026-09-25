// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/HDShowViews.js:1
// source line 138, bytecode pc 118
(xs.Views.HDShowViews = xs.Views.HungerLayer.extend({
    ctor: function() {
    // source line 3, bytecode pc 12
    this._super();
},
    init: function(data) {
    var visibleSize, _platform;
    if (!this._super()) {
        // source line 7, bytecode pc 19
        return false;
    }
    // source line 9, bytecode pc 74
    (this.bgBlack = cc.LayerColor.create(cc.c4b(0, 0, 0, 128)));
    // source line 10, bytecode pc 110
    xs.Utils.Node.attachNodes(this, this.bgBlack);
    // source line 13, bytecode pc 143
    xs.log(("the HD Image path is:" + data));
    if (!cc.FileUtils.getInstance().isFileExist(data)) {
        // source line 15, bytecode pc 224
        xs.log(("Can't Create Sprite,path is:" + data));
        // source line 16, bytecode pc 226
        return true;
    }
    // source line 19, bytecode pc 262
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    // source line 21, bytecode pc 305
    (this._hd_sprite = xs.Factorys.Sprite.createWithFileName(data));
    // source line 22, bytecode pc 335
    xs.log(("hd_sprite is " + this._hd_sprite));
    // source line 23, bytecode pc 357
    this._hd_sprite.setRotation(270);
    // source line 24, bytecode pc 416
    this._hd_sprite.setPosition(cc.p((visibleSize.width / 2), (visibleSize.height / 2)));
    // source line 25, bytecode pc 452
    xs.Utils.Node.attachNodes(this, this._hd_sprite);
    // source line 27, bytecode pc 482
    xs.log(("hd_sprite is end" + this._hd_sprite));
    // source line 30, bytecode pc 521
    (this._shareToSinaButton = xs.Views.Btn.createByStyleId("BS_HDShareToSina_BUTTON"));
    // source line 36, bytecode pc 653
    xs.Utils.Node.attachNodes(this, this._shareToSinaButton, {
    desc: "rt",
    sc: false,
    offset: {
        x: ((-this._shareToSinaButton.getContentSize().height / 2) - 20),
        y: -this._shareToSinaButton.getContentSize().width
    }
});
    // source line 39, bytecode pc 674
    this._shareToSinaButton.setRotation(-90);
    // source line 40, bytecode pc 698
    this._shareToSinaButton.setOnClickCallBack(function() {
    // source line 41, bytecode pc 22
    xs.log("分享到新浪");
    // source line 42, bytecode pc 77
    xs.JsbConnecter.getInstance().invoke("Share", "shareToSina", data);
});
    // source line 46, bytecode pc 737
    (this._shareToWXButton = xs.Views.Btn.createByStyleId("BS_HDShareToWX_BUTTON"));
    // source line 53, bytecode pc 847
    xs.Utils.Node.attachNodes(this, this._shareToWXButton, {
    desc: "rc",
    sc: false,
    offset: { x: ((-this._shareToWXButton.getContentSize().height / 2) - 20), y: 0 }
});
    // source line 56, bytecode pc 868
    this._shareToWXButton.setRotation(-90);
    // source line 57, bytecode pc 892
    this._shareToWXButton.setOnClickCallBack(function() {
    // source line 58, bytecode pc 22
    xs.log("分享到微信");
    // source line 59, bytecode pc 77
    xs.JsbConnecter.getInstance().invoke("Share", "shareToWX", data);
});
    // source line 62, bytecode pc 922
    (_platform = xs.Tools.Jsb.getPlatform());
    if ((_platform == "android")) {
        // source line 64, bytecode pc 975
        (this._wallpaperButton = xs.Views.Btn.createByStyleId("BS_HDBizhi_BUTTON"));
        // source line 73, bytecode pc 1106
        xs.Utils.Node.attachNodes(this, this._wallpaperButton, {
    desc: "rb",
    sc: false,
    offset: {
        x: ((-this._wallpaperButton.getContentSize().height / 2) - 20),
        y: this._wallpaperButton.getContentSize().width
    }
});
        // source line 79, bytecode pc 1127
        this._wallpaperButton.setRotation(-90);
        // source line 80, bytecode pc 1151
        this._wallpaperButton.setOnClickCallBack(function() {
    // source line 81, bytecode pc 22
    xs.log("壁纸设置");
    // source line 82, bytecode pc 77
    xs.JsbConnecter.getInstance().invoke("Share", "setWallPaper", data);
});
    }
    if ((_platform == "ios")) {
        // source line 86, bytecode pc 1188
        xs.log("4");
        // source line 87, bytecode pc 1227
        (this._saveButton = xs.Views.Btn.createByStyleId("BS_HDSave_BUTTON"));
        // source line 88, bytecode pc 1250
        xs.log("5");
        // source line 95, bytecode pc 1381
        xs.Utils.Node.attachNodes(this, this._saveButton, {
    desc: "rb",
    sc: false,
    offset: {
        x: ((-this._saveButton.getContentSize().height / 2) - 20),
        y: this._saveButton.getContentSize().width
    }
});
        // source line 101, bytecode pc 1402
        this._saveButton.setRotation(-90);
        // source line 102, bytecode pc 1426
        this._saveButton.setOnClickCallBack(function() {
    // source line 103, bytecode pc 22
    xs.log("保存图片");
    // source line 104, bytecode pc 77
    xs.JsbConnecter.getInstance().invoke("Share", "savePhoto", data);
});
        // source line 106, bytecode pc 1449
        xs.log("6");
    }
    if ((_platform == "android")) {
        if (xsc.Tools.AccountSys.isUsingAnySdk()) {
            if ((this._shareToWXButton != null)) {
                // source line 112, bytecode pc 1527
                this._shareToWXButton.setVisible(false);
            }
            if ((this._shareToSinaButton != null)) {
                // source line 116, bytecode pc 1560
                this._shareToSinaButton.setVisible(false);
            }
        }
    }
    // source line 123, bytecode pc 1562
    return true;
},
    onTouchBegan: function(touch, e) {
    // source line 126, bytecode pc 1
    return true;
},
    layerTouched: function() {
    // source line 130, bytecode pc 22
    xs.log("layerTouched");
    // source line 131, bytecode pc 45
    xs.log("onTouchBegan: function(touch, e)");
    // source line 132, bytecode pc 74
    xs.Utils.Node.safeRemoveChild(this);
},
    onTouchMoved: function(touch, e) {
},
    onTouchEnded: function(touch, e) {
    // source line 136, bytecode pc 12
    this.layerTouched();
},
    setBaseTouchPriority: function(p) {
    var priority, _priority, _platform;
    // source line 139, bytecode pc 36
    (priority = (xs.Cfg.Scene.CommonScene.Dialog.priority - 100));
    // source line 141, bytecode pc 55
    this.setTouchPriority((priority - 1));
    // source line 142, bytecode pc 80
    this._shareToSinaButton.setTouchPriority((priority - 2));
    // source line 143, bytecode pc 105
    this._shareToWXButton.setTouchPriority((priority - 2));
    // source line 145, bytecode pc 112
    (_priority = priority);
    // source line 146, bytecode pc 142
    (_platform = xs.Tools.Jsb.getPlatform());
    // source line 148, bytecode pc 165
    xs.log("10");
    if ((_platform == "android")) {
        // source line 150, bytecode pc 204
        this._wallpaperButton.setTouchPriority((_priority - 3));
    }
    if ((_platform == "ios")) {
        // source line 153, bytecode pc 241
        xs.log("11");
        // source line 154, bytecode pc 266
        this._saveButton.setTouchPriority((_priority - 3));
    }
    // source line 156, bytecode pc 289
    xs.log("12");
}
}));
// source line 160, bytecode pc 144
(xs.Views.HDShowViews.create = function(data) {
    var view;
    // source line 161, bytecode pc 22
    xs.log("xs.Views.HDShowViews.create");
    // source line 162, bytecode pc 46
    (view = new xs.Views.HDShowViews());
    if ((view && view.init(data))) {
        // source line 164, bytecode pc 82
        return view;
    }
    // source line 166, bytecode pc 107
    xs.assert(false, "can't create HDShowViews");
    // source line 167, bytecode pc 109
    return null;
});
