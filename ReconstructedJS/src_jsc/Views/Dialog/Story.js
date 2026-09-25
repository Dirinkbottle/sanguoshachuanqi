// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/Story.js:1
// source line 477, bytecode pc 510
(xs.Views.Dialog.Story = (xs.Views.Dialog.Story || xs.Views.HungerLayer.extend({
    name: "xs.Views.Dialog.Story ",
    Const: { Type_Talk: 1, Type_Toast: 2 },
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    CCB_Cfg: [
        { tag: 1, type: "ls", name: "m_labelName", id: "LS_danyao" },
        { tag: 2, type: "ls", name: "m_labelContent", id: "LS_mainUI2" },
        { tag: 3, name: "m_bg9" },
        { tag: 4, name: "m_spriteFinger" }
    ],
    Cfg: {
        LayerColor: { zOrder: 0, tag: 0, priority: 10000 },
        Talker: { zOrder: 1, tag: 1, priority: 10000 },
        CCB: { zOrder: 2000, tag: 2000, priority: -2001 }
    },
    ctor: function() {
    // source line 71, bytecode pc 12
    this._super();
    // source line 72, bytecode pc 47
    cc.associateWithNative(this, xs.Views.HungerLayer);
},
    init: function(params) {
    var _layerColor, _ccbNode, _sizeVisible, _oriPoint, _sizeSrc, _dimensions, hideDialogSprite, hideDialogBtn;
    // source line 76, bytecode pc 12
    this._super();
    // source line 78, bytecode pc 22
    (this._params = params);
    // source line 80, bytecode pc 40
    (this._rounds = this._params.rounds);
    // source line 82, bytecode pc 70
    this.assert(this._rounds, "this._rounds is null", params);
    // source line 88, bytecode pc 120
    (_layerColor = cc.LayerColor.create(cc.c4b(0, 0, 0, 0)));
    // source line 89, bytecode pc 130
    (this.m_layerColor = _layerColor);
    // source line 94, bytecode pc 198
    xs.Utils.Node.attachNodes(this, _layerColor, { desc: "lb", sc: true }, this.Cfg.LayerColor);
    // source line 97, bytecode pc 206
    (this.m_spriteFinger = null);
    // source line 98, bytecode pc 214
    (this.m_hideDialog = null);
    // source line 99, bytecode pc 222
    (this.m_labelContent = null);
    // source line 100, bytecode pc 230
    (this.m_labelName = null);
    // source line 101, bytecode pc 238
    (this.m_bg9 = null);
    // source line 103, bytecode pc 246
    (this.m_pause = true);
    // source line 106, bytecode pc 294
    (_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.Story, this));
    // source line 107, bytecode pc 304
    (this.m_ccbNode = _ccbNode);
    // source line 108, bytecode pc 324
    this.m_ccbNode.setVisible(false);
    // source line 111, bytecode pc 392
    xs.Utils.Node.attachNodes(this, _ccbNode, { desc: "lb", sc: true }, this.Cfg.CCB);
    // source line 122, bytecode pc 432
    xs.Utils.UI.replaceCcbByCfg(_ccbNode, this.CCB_Cfg, this);
    // source line 127, bytecode pc 456
    this.m_labelName.setString("");
    // source line 128, bytecode pc 480
    this.m_labelContent.setString("");
    // source line 130, bytecode pc 492
    (this.m_storyContent = "");
    // source line 136, bytecode pc 517
    (_sizeVisible = xs.director.getVisibleSize());
    // source line 137, bytecode pc 542
    (_oriPoint = xs.director.getVisibleOrigin());
    // source line 139, bytecode pc 560
    (_sizeSrc = _ccbNode.getContentSize());
    // source line 144, bytecode pc 610
    _ccbNode.setContentSize(cc.size(_sizeVisible.width, _sizeSrc.height));
    // source line 147, bytecode pc 643
    this.m_bg9.setPreferredSize(_ccbNode.getContentSize());
    // source line 148, bytecode pc 704
    xs.Utils.Node.attachNodes(_ccbNode, this.m_bg9, { desc: "c", pc: true });
    // source line 151, bytecode pc 733
    this.m_spriteFinger.setAnchorPoint(xs.ap_rt);
    // source line 152, bytecode pc 819
    xs.Utils.Node.attachNodes(_ccbNode, this.m_spriteFinger, { desc: "rt", pc: true, offset: { x: -30, y: -30 } });
    // source line 155, bytecode pc 840
    (_dimensions = this.m_labelContent.getDimensions());
    // source line 159, bytecode pc 922
    this.m_labelContent.setDimensions(cc.size((((_sizeVisible.width - 60) - 60) - this.m_spriteFinger.getContentSize().width), _dimensions.height));
    // source line 165, bytecode pc 940
    this.m_bg9.makeDebugBoundRect();
    // source line 167, bytecode pc 953
    this.makeDebugPoint();
    // source line 169, bytecode pc 961
    (this.m_pause = false);
    // source line 171, bytecode pc 1003
    (hideDialogSprite = xs.Factorys.Sprite.create("Cmn03_skip_story", "Cmn03"));
    // source line 172, bytecode pc 1039
    hideDialogSprite.setAnchorPoint(cc.p(1, 1));
    // source line 173, bytecode pc 1089
    hideDialogSprite.setPosition(cc.p(_sizeVisible.width, _sizeVisible.height));
    // source line 174, bytecode pc 1122
    xs.Utils.Node.attachNodes(this, hideDialogSprite);
    // source line 175, bytecode pc 1141
    hideDialogSprite.setZOrder(9999);
    // source line 176, bytecode pc 1175
    (hideDialogBtn = xs.Views.Btn.createInvisibleWithParent(hideDialogSprite));
    // source line 177, bytecode pc 1196
    hideDialogBtn.setTouchPriority(-9999);
    // source line 178, bytecode pc 1213
    hideDialogBtn.setZoomOnTouchDown(false);
    // source line 182, bytecode pc 1247
    hideDialogBtn.setOnClickCallBack(function() {
    // source line 181, bytecode pc 32
    xs.Views.Mgr.hideDialogByName("Story");
}.bind(this));
},
    onEnterTransitionDidFinish: function() {
    // source line 199, bytecode pc 12
    this._super();
    if ((this._params.unuse_mask === true)) {
        if ((this.m_pause === false)) {
            // source line 208, bytecode pc 66
            xs.log_zj("resume onEnterTransitionDidFinish m_pause === false");
            // source line 209, bytecode pc 79
            this.resume();
        }
    } else {
        // source line 216, bytecode pc 178
        this.m_layerColor.runAction(xs.Utils.Action.combineSequence([ cc.FadeTo.create((3 / xs.fps), 143) ]));
        // source line 235, bytecode pc 382
        this.m_ccbNode.runAction(xs.Utils.Action.combineSequence([
    cc.FadeTo.create((3 / xs.fps), 0),
    cc.Show.create(),
    cc.FadeTo.create((3 / xs.fps), 255),
    cc.CallFunc.create(function() {
    if ((this.m_pause === false)) {
        // source line 232, bytecode pc 35
        xs.log_zj("resume onEnterTransitionDidFinish m_pause === false, after action");
        // source line 233, bytecode pc 48
        this.resume();
    }
}.bind(this))
]));
    }
},
    onExitTransitionDidStart: function() {
    // source line 247, bytecode pc 12
    this._super();
    if (this._params.funcNext) {
        // source line 250, bytecode pc 46
        this._params.funcNext();
    }
},
    layerTouched: function() {
    if (this.m_pause) {
        // source line 263, bytecode pc 18
        (this.m_pause = false);
        // source line 265, bytecode pc 41
        xs.log_zj("resume layerTouched ");
        // source line 266, bytecode pc 54
        this.resume();
    } else {
        // source line 274, bytecode pc 94
        xs.director.getActionManager().removeAllActionsFromTarget(this);
        // source line 279, bytecode pc 119
        this.m_labelContent.setString(this.m_storyContent);
        // source line 280, bytecode pc 139
        this.m_labelContent.setVisible(true);
        // source line 282, bytecode pc 147
        (this.m_pause = true);
        // source line 284, bytecode pc 183
        xs.log("layerTouched", ("finish.. : " + this.m_pause));
    }
},
    _doStoryRound: function() {
    var _rounds, _item;
    try {
        // source line 290, bytecode pc 10
        (_rounds = this._rounds);
        // source line 292, bytecode pc 28
        (_item = _rounds.getCurItem());
        if (((_item === null) || (_item === undefined))) {
            // source line 293, bytecode pc 55
            return false;
        }
        // source line 295, bytecode pc 82
        xs.log_guide("_item = ", _item);
        if ((_item.model.general_name == "dialogname980004021")) {
            // source line 299, bytecode pc 144
            xs.Utils.Notify.postNotification(xs.Constant_Notify_FightScene_OpenSkipBtn);
        }
        // source line 302, bytecode pc 159
        _rounds.nextIdx();
        // source line 311, bytecode pc 269
        this.runAction(xs.Utils.Action.combineSequence([
    this.createRoundAction(_item),
    cc.CallFunc.create(function() {
    // source line 309, bytecode pc 7
    (this.m_pause = true);
}.bind(this))
]));
    } catch (e) {
        // source line 319, bytecode pc 305
        xs.warnException(e);
        // source line 320, bytecode pc 307
        return false;
    }
    // source line 322, bytecode pc 322
    return true;
},
    createRoundAction: function(item) {
    var _tmpToast, envLayer, _actions, _actionCB, i;
    if ((item.getType() === this.Const.Type_Toast)) {
        // source line 344, bytecode pc 105
        (_tmpToast = cc.CallFunc.create(function() {
    var _item, _dialog;
    // source line 332, bytecode pc 9
    (_item = this.item);
    // source line 333, bytecode pc 19
    (_dialog = this.dialog);
    // source line 337, bytecode pc 75
    xs.Views.Mgr.showToast(_item.getContentString(), { speedScale: 5 });
}.bind({ item: item, dialog: this })));
        // source line 349, bytecode pc 109
        return _tmpToast;
    }
    // source line 352, bytecode pc 114
    (envLayer = this);
    // source line 358, bytecode pc 124
    (envLayer.m_storyLength = 0);
    // source line 359, bytecode pc 153
    (envLayer.m_storyContent = item.getContentString());
    // source line 361, bytecode pc 185
    xs.log_guide("this.m_storyContent", envLayer.m_storyContent);
    // source line 363, bytecode pc 194
    (_actions = []);
    // source line 371, bytecode pc 260
    _actions.push(cc.TargetedAction.create(this.m_ccbNode, cc.Show.create()));
    // source line 377, bytecode pc 299
    this.m_labelName.setString(item.getTalkerNameString());
    // source line 382, bytecode pc 333
    xs.Utils.Node.safeRemoveChild(this.m_viewTalker);
    // source line 384, bytecode pc 371
    (this.m_viewTalker = item.getTalkerResource().createOriginalSprite_Waist());
    if ((item.getSite() === 1)) {
        // source line 394, bytecode pc 490
        xs.Utils.Node.attachNodes(this, this.m_viewTalker, { base: "lb", offset: { x: 219, y: 219 } }, this.Cfg.Talker);
    } else {
        // source line 399, bytecode pc 517
        this.m_viewTalker.setRotationY(180);
        // source line 405, bytecode pc 611
        xs.Utils.Node.attachNodes(this, this.m_viewTalker, { base: "rb", offset: { x: -219, y: 219 } }, this.Cfg.Talker);
    }
    // source line 422, bytecode pc 646
    (_actionCB = cc.CallFunc.create(function(sender, data) {
    var _text;
    if ((sender.m_storyLength < item.getContentString().length)) {
        // source line 414, bytecode pc 67
        sender.m_storyLength++;
        // source line 415, bytecode pc 113
        (_text = item.getContentString().substr(0, sender.m_storyLength));
        // source line 417, bytecode pc 137
        sender.m_labelContent.setString(_text);
        // source line 418, bytecode pc 159
        sender.m_labelContent.setVisible(true);
    }
}, this, null));
    // source line 425, bytecode pc 651
    (i = 0);
    while ((i < item.getContentString().length)) {
        // source line 426, bytecode pc 708
        _actions.push(cc.DelayTime.create((2 / xs.fps)));
        // source line 428, bytecode pc 727
        _actions.push(_actionCB);
        // source line 425, bytecode pc 742
        i++;
    }
    // source line 460, bytecode pc 808
    return xs.Utils.Action.combineSequence(_actions);
},
    resume: function() {
    if (this._doStoryRound()) {
    } else {
        // source line 471, bytecode pc 54
        xs.Views.Mgr.hideDialogByName("Story");
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 478, bytecode pc 16
    this.setTouchPriority(priority);
}
})));
// source line 488, bytecode pc 635
xs.Views.Mgr.registerDialog("Story", {
    "class": xs.Views.Dialog.Story,
    dlgType: xs.Cfg.Scene.CommonScene.Story,
    styleType: xs.Constant_DlgStyleType_None,
    viewType: xs.Constant_ViewType_Story
});
