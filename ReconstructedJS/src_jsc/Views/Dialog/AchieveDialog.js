// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/AchieveDialog.js:1
// source line 83, bytecode pc 93
(xs.Views.Dialog.AchieveDialog = xs.Views.HungerLayer.extend({
    name: "xs.Views.Dialog.AchieveDialog",
    ctor: function() {
    // source line 11, bytecode pc 12
    this._super();
    // source line 12, bytecode pc 47
    cc.associateWithNative(this, xs.Views.HungerLayer);
},
    init: function(data, param) {
    var visibleSize, scene, _obj, card, str1, _pos;
    if (!this._super()) {
        // source line 17, bytecode pc 19
        return false;
    }
    // source line 19, bytecode pc 29
    (this._param = param);
    // source line 20, bytecode pc 65
    (visibleSize = cc.Director.getInstance().getVisibleSize());
    // source line 21, bytecode pc 95
    (scene = xs.Scene.Mgr.getRunningScene());
    // source line 22, bytecode pc 112
    this.setContentSize(visibleSize);
    // source line 23, bytecode pc 120
    (this.acheveDialog_card = null);
    // source line 24, bytecode pc 128
    (this.acheveDialog_cardName = null);
    // source line 25, bytecode pc 136
    (this.acheveDialog_acheveName = null);
    // source line 26, bytecode pc 144
    (this.acheveDialog_teamPoint = null);
    // source line 27, bytecode pc 152
    (this.acheveDialog_teamPointIcon = null);
    // source line 28, bytecode pc 160
    (this.m_cardBtn = null);
    // source line 29, bytecode pc 168
    (this.acheveDialog_light_top = null);
    // source line 30, bytecode pc 176
    (this.acheveDialog_light_bottom = null);
    // source line 31, bytecode pc 184
    (this.acheveDialog_label2 = null);
    // source line 33, bytecode pc 235
    (this.ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.AchieveDialog, this));
    // source line 34, bytecode pc 282
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 35, bytecode pc 380
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", offset: cc.p(0, ((-visibleSize.height / 4) - 25)), sc: true });
    // source line 37, bytecode pc 447
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, xs.Views.Dialog.AchieveDialog.cfg.ccbCfg, this);
    // source line 40, bytecode pc 502
    (_obj = xs.Profile.GameData.Mgr.getInstance().Generals.createWithBase(data));
    // source line 41, bytecode pc 531
    (card = _obj.getRes().createOriginalSprite_Foot());
    // source line 42, bytecode pc 552
    this.acheveDialog_card.setZOrder(-1);
    // source line 43, bytecode pc 573
    card.setScale(1.2);
    // source line 44, bytecode pc 644
    xs.Utils.replaceNode(this.ccbNode, xs.Views.Dialog.AchieveDialog.cfg.card.tag, card, true);
    // source line 45, bytecode pc 697
    (str1 = xs.Tools.String.createString(this._param.model.getCompleteSurrenderTitle()));
    // source line 46, bytecode pc 730
    this.acheveDialog_cardName.setString(_obj.getNameString());
    // source line 48, bytecode pc 751
    (_pos = this.acheveDialog_cardName.getPosition());
    // source line 49, bytecode pc 773
    this.acheveDialog_light_top.setPosition(_pos);
    // source line 50, bytecode pc 795
    this.acheveDialog_light_bottom.setPosition(_pos);
    // source line 52, bytecode pc 838
    this.acheveDialog_label2.setAnchorPoint(cc.p(0, 0.5));
    // source line 56, bytecode pc 948
    this.acheveDialog_label2.setPosition(cc.p(((this.acheveDialog_cardName.getPosition().x + (this.acheveDialog_cardName.getContentSize().width / 2)) + 10), this.acheveDialog_cardName.getPosition().y));
    // source line 59, bytecode pc 970
    this.acheveDialog_acheveName.setString(str1);
    // source line 63, bytecode pc 1077
    this.acheveDialog_teamPointIcon.setPosition(cc.p(((this.acheveDialog_acheveName.getPosition().x + this.acheveDialog_acheveName.getContentSize().width) + 50), this.acheveDialog_acheveName.getPosition().y));
    // source line 66, bytecode pc 1124
    this.acheveDialog_teamPoint.setString(("+" + this._param.model.getGovernValue()));
    // source line 70, bytecode pc 1208
    this.acheveDialog_teamPoint.setPosition(cc.p((this.acheveDialog_teamPointIcon.getPosition().x + 20), this.acheveDialog_teamPointIcon.getPosition().y));
    // source line 73, bytecode pc 1243
    (this.m_cardBtn = xs.Views.Btn.createInvisibleWithParent(this));
    // source line 79, bytecode pc 1280
    this.m_cardBtn.setOnClickCallBack(function() {
    var _funcCancel;
    // source line 76, bytecode pc 32
    xs.Views.Mgr.hideDialogByName("AchieveDialog");
    // source line 77, bytecode pc 47
    (_funcCancel = this._param.cancelFunc);
    // source line 78, bytecode pc 65
    (_funcCancel && _funcCancel());
}.bind(this));
    // source line 81, bytecode pc 1282
    return true;
},
    setBaseTouchPriority: function(priority) {
    // source line 84, bytecode pc 23
    this.m_cardBtn.setTouchPriority((priority - 1));
}
}));
// source line 107, bytecode pc 541
(xs.Views.Dialog.AchieveDialog.cfg = {
    ccbCfg: [
        {
            tag: 10,
            type: "ls",
            name: "acheveDialog_label1",
            id: "LS_wujiangName1",
            stringId: "acheveDialog_str_label1"
        },
        {
            tag: 12,
            type: "ls",
            name: "acheveDialog_label2",
            id: "LS_wujiangName1",
            stringId: "acheveDialog_str_label2"
        },
        { tag: 20, type: "ls", name: "acheveDialog_acheveName", id: "LS_wujiangName1" },
        { tag: 21, name: "acheveDialog_teamPointIcon" },
        { tag: 22, type: "ls", name: "acheveDialog_teamPoint", id: "LS_yuanfenInf2" },
        { tag: 11, type: "ls", name: "acheveDialog_cardName", id: "LS_danyao" },
        { tag: 99, name: "acheveDialog_card" },
        { tag: 101, name: "acheveDialog_light_top" },
        { tag: 102, name: "acheveDialog_light_bottom" }
    ],
    card: { tag: 99, zOrder: -1 },
    name: { tag: 20 }
});
// source line 110, bytecode pc 572
(xs.Views.Dialog.AchieveDialog.create = function(data, param) {
    var layer;
    // source line 111, bytecode pc 28
    (layer = new xs.Views.Dialog.AchieveDialog());
    if ((layer && layer.init(data, param))) {
        // source line 113, bytecode pc 68
        return layer;
    }
    // source line 115, bytecode pc 70
    return null;
});
// source line 121, bytecode pc 697
xs.Views.Mgr.registerDialog("AchieveDialog", {
    "class": xs.Views.Dialog.AchieveDialog,
    dlgType: xs.Cfg.Scene.CommonScene.RandEvent_Dialog,
    styleType: xs.Constant_DlgStyleType_Small,
    viewType: xs.Constant_ViewType_RandEvent
});
