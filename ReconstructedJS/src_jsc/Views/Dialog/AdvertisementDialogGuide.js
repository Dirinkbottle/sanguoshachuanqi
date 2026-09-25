// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/AdvertisementDialogGuide.js:1
// source line 61, bytecode pc 93
(xs.Views.Dialog.AdvertisementDialogGuide = xs.Views.HungerLayer.extend({
    name: "xs.Views.Dialog.AdvertisementDialogGuide",
    ctor: function() {
    // source line 9, bytecode pc 12
    this._super();
    // source line 10, bytecode pc 47
    cc.associateWithNative(this, xs.Views.HungerLayer);
},
    init: function(data) {
    var visibleSize, scene, picture;
    if (!this._super()) {
        // source line 15, bytecode pc 19
        return false;
    }
    // source line 19, bytecode pc 55
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    // source line 20, bytecode pc 85
    (scene = xs.Scene.Mgr.getRunningScene());
    // source line 21, bytecode pc 102
    this.setContentSize(visibleSize);
    // source line 22, bytecode pc 110
    (this.advertismentDialog_picture = null);
    // source line 23, bytecode pc 118
    (this.advertismentDialog_btn = null);
    // source line 25, bytecode pc 169
    (this.ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.AdvertisementDialogGuide, this));
    // source line 26, bytecode pc 216
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 28, bytecode pc 300
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "cb", offset: cc.p(0, 0), sc: true });
    // source line 29, bytecode pc 367
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, xs.Views.Dialog.AdvertisementDialogGuide.cfg.ccbCfg, this);
    if ((data == null)) {
        // source line 32, bytecode pc 419
        (picture = xs.Factorys.Sprite.createWithFileName("big_picture/TheGoddesses_zhangfei.png"));
    } else {
        if ((data == 2)) {
            // source line 34, bytecode pc 477
            (picture = xs.Factorys.Sprite.createWithFileName("big_picture/TheGoddesses_machaohuangzhong.png"));
        } else {
            if ((data == 3)) {
                // source line 36, bytecode pc 535
                (picture = xs.Factorys.Sprite.createWithFileName("big_picture/TheGoddesses_diaochan.png"));
            }
        }
    }
    // source line 41, bytecode pc 665
    picture.setPosition(cc.p(this.advertismentDialog_picture.getPosition().x, (((this.advertismentDialog_btn.getPosition().y + (this.advertismentDialog_btn.getContentSize().height / 2)) + (picture.getContentSize().height / 2)) + 40)));
    // source line 43, bytecode pc 703
    xs.Utils.Node.attachNodes(this.ccbNode, picture);
    // source line 44, bytecode pc 737
    xs.Utils.Node.safeRemoveChild(this.advertismentDialog_picture);
    // source line 53, bytecode pc 774
    this.advertismentDialog_btn.setOnClickCallBack(function() {
    // source line 48, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    if ((data == null)) {
        // source line 50, bytecode pc 78
        xs.Views.Mgr.showDialogByName("AdvertisementDialogGuide", 2);
    }
}.bind(this));
    // source line 57, bytecode pc 803
    xs.Guide.GuideMgr.setIsOver(true);
    // source line 59, bytecode pc 805
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 62, bytecode pc 23
    this.advertismentDialog_btn.setTouchPriority((priority - 1));
}
}));
// source line 79, bytecode pc 252
(xs.Views.Dialog.AdvertisementDialogGuide.cfg = {
    ccbCfg: [
        { tag: 99, name: "advertismentDialog_picture" },
        { tag: 100, type: "btn", name: "advertismentDialog_btn", id: "Btn_AdverstisementKnow" }
    ],
    card: { tag: 99, zOrder: -1 },
    name: { tag: 20 }
});
// source line 82, bytecode pc 283
(xs.Views.Dialog.AdvertisementDialogGuide.create = function(data, param) {
    var layer;
    // source line 83, bytecode pc 28
    (layer = new xs.Views.Dialog.AdvertisementDialogGuide());
    if ((layer && layer.init(data, param))) {
        // source line 85, bytecode pc 68
        return layer;
    }
    // source line 87, bytecode pc 70
    return null;
});
// source line 91, bytecode pc 363
xs.Views.Mgr.registerDialog("AdvertisementDialogGuide", { "class": xs.Views.Dialog.AdvertisementDialogGuide, styleType: xs.Constant_DlgStyleType_Large });
