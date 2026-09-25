// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/SurrenderReachView.js:1
// source line 79, bytecode pc 103
(xs.SpecificDialog.SurrenderReachView = xs.Views.Dialog.CommonDialog.extend({
    ctor: function() {
    // source line 9, bytecode pc 12
    this._super();
},
    loadCCBI: function() {
    var visibleSize, pos, _data, proScaleX, proStatusStr, itemModel, icon, general;
    // source line 12, bytecode pc 22
    xs.log("SurrenderReachView loadCCBI");
    // source line 13, bytecode pc 73
    (this._BGccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.SurrenderReach, this));
    // source line 16, bytecode pc 132
    xs.Utils.Node.attachNodes(this, this._BGccbNode, { desc: "lb", sc: true });
    // source line 19, bytecode pc 157
    (visibleSize = xs.director.getVisibleSize());
    // source line 20, bytecode pc 217
    (pos = cc.p(((visibleSize.width / 2) - (this._BGccbNode.getContentSize().width / 2)), 0));
    // source line 21, bytecode pc 239
    this._BGccbNode.setPosition(pos);
    // source line 24, bytecode pc 254
    (_data = this._data.data);
    // source line 26, bytecode pc 295
    this._BGccbNode.getChildByTag(3).setString(_data.surrender_title);
    // source line 27, bytecode pc 336
    this._BGccbNode.getChildByTag(5).setString(_data.surrender_desc);
    // source line 29, bytecode pc 368
    (proScaleX = ((_data.progressed_num / _data.progress_num) || 0.01));
    // source line 30, bytecode pc 404
    this._BGccbNode.getChildByTag(4).setScaleX(proScaleX);
    // source line 32, bytecode pc 431
    (proStatusStr = ((_data.progressed_num + "/") + _data.progress_num));
    // source line 33, bytecode pc 467
    this._BGccbNode.getChildByTag(10).setString(proStatusStr);
    if ((_data.surrender_id != null)) {
        // source line 36, bytecode pc 514
        xs.log(("_data.surrender_id is " + _data.surrender_id));
        // source line 37, bytecode pc 564
        (itemModel = xs.Models.Item.createWithBase(_data.surrender_id.toString()));
        // source line 38, bytecode pc 596
        xs.log(("_data.surrender_id 111111 is " + _data.surrender_id));
        // source line 39, bytecode pc 631
        (pos = this._BGccbNode.getChildByTag(7).getPosition());
        // source line 40, bytecode pc 649
        (icon = itemModel.createHeadView());
        // source line 41, bytecode pc 668
        icon.setPosition(pos);
        // source line 42, bytecode pc 706
        xs.Utils.Node.attachNodes(this._BGccbNode, icon);
    }
    // source line 45, bytecode pc 741
    this._BGccbNode.getChildByTag(2).setZOrder(100);
    if ((this._data.general_id != null)) {
        // source line 48, bytecode pc 801
        (general = xs.Models.General.createWithBase(this._data.general_id));
        // source line 49, bytecode pc 833
        (this.m_body = general.getRes().createOriginalSprite());
        // source line 50, bytecode pc 857
        this.m_body.setScale(0.86);
        // source line 51, bytecode pc 900
        this.m_body.setAnchorPoint(cc.p(0.5, 0));
        // source line 52, bytecode pc 934
        (pos = this._BGccbNode.getChildByTag(1).getPosition());
        // source line 53, bytecode pc 956
        this.m_body.setPosition(pos);
        // source line 54, bytecode pc 977
        this.m_body.setZOrder(-1);
        // source line 55, bytecode pc 1018
        xs.Utils.Node.attachNodes(this._BGccbNode, this.m_body);
        // source line 57, bytecode pc 1098
        this._BGccbNode.getChildByTag(100).setString((general.getNameString() + xs.Tools.String.createString("auto_name_303")));
    }
    // source line 61, bytecode pc 1283
    this._BGccbNode.getChildByTag(101).setString((((((((general.getNameString() + xs.Tools.String.createString("auto_name_304")) + _data.progressed_num) + "/") + _data.progress_num) + xs.Tools.String.createString("auto_name_305")) + general.getNameString()) + xs.Tools.String.createString("auto_name_47")));
    // source line 63, bytecode pc 1330
    this._BGccbNode.getChildByTag(6).setString((_data.govern_value + ""));
},
    showDialog: function(params) {
},
    init: function(params) {
    var param;
    // source line 70, bytecode pc 18
    (param = (params || {}));
    // source line 71, bytecode pc 28
    (this._data = param);
    // source line 72, bytecode pc 58
    xs.dump("SurrenderReachView init", this._data);
    // source line 73, bytecode pc 71
    this._super();
    // source line 75, bytecode pc 86
    this.setIsEatEvent(true);
    // source line 77, bytecode pc 88
    return true;
},
    onTouchEnded: function(touch, e) {
    // source line 80, bytecode pc 22
    xs.log("SurrenderReachView onTouchEnded ");
    // source line 81, bytecode pc 51
    xs.Utils.Node.safeRemoveChild(this);
}
}));
// source line 85, bytecode pc 163
xs.Views.Mgr.registerDialog("SurrenderReachView", { "class": xs.SpecificDialog.SurrenderReachView });
