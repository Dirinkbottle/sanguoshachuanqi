// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/ErrorDialog.js:1
// source line 170, bytecode pc 182
(xs.Views.Dialog.ErrorDialog = xs.Views.HungerLayer.extend({
    name: "ErrorDialog",
    cfg: { closeBtn: { priority: -1 } },
    ctor: function() {
    // source line 18, bytecode pc 12
    this._super();
    // source line 19, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(param) {
    // source line 29, bytecode pc 12
    this._super();
    // source line 31, bytecode pc 20
    (this.m_closeBtn = null);
    // source line 34, bytecode pc 48
    (this.m_scene = xs.director.getRunningScene());
    // source line 38, bytecode pc 107
    (this.m_bg = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.popView_bg02.frameName));
    // source line 39, bytecode pc 136
    this.m_bg.setAnchorPoint(xs.ap_c);
    // source line 40, bytecode pc 179
    this.m_bg.setContentSize(cc.size(860, 600));
    // source line 41, bytecode pc 232
    xs.Utils.Node.attachNodes(this, this.m_bg, { desc: "lb" });
    // source line 44, bytecode pc 304
    (this.m_topLabel = xs.Factorys.Label.createByStyleIdWithString("LS_popUI1", xs.Tools.String.createString("auto_name_411")));
    // source line 47, bytecode pc 386
    xs.Utils.Node.attachNodes(this.m_bg, this.m_topLabel, { desc: "ct", offset: { x: 0, y: -30 } });
    // source line 52, bytecode pc 429
    (this.m_label = cc.LabelTTF.create("moren", "", 25));
    // source line 58, bytecode pc 476
    this.m_label.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 59, bytecode pc 519
    this.m_label.setDimensions(cc.size(780, 2000));
    // source line 60, bytecode pc 564
    this.m_label.setColor(cc.c3b(220, 20, 60));
    // source line 61, bytecode pc 584
    this.m_label.setVerticalAlignment(0);
    // source line 62, bytecode pc 604
    this.m_label.setHorizontalAlignment(0);
    // source line 67, bytecode pc 643
    (this.m_closeBtn = xs.Views.Btn.createByStyleId("BS_Close"));
    // source line 68, bytecode pc 726
    xs.Utils.Node.attachNodes(this.m_bg, this.m_closeBtn, { desc: "rt", offset: { x: -40, y: -38 } });
    // source line 71, bytecode pc 764
    this.m_closeBtn.setOnClickCallBack(this._onCloseBtn.bind(this));
    // source line 72, bytecode pc 788
    this.m_closeBtn.setTouchPriority(-9999);
    // source line 75, bytecode pc 816
    (this.m_scrollView = cc.ScrollView.create());
    // source line 76, bytecode pc 859
    this.m_scrollView.setViewSize(cc.size(800, 510));
    // source line 78, bytecode pc 902
    this.m_scrollView.setContentSize(cc.size(800, 500));
    // source line 81, bytecode pc 931
    this.m_scrollView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
    // source line 82, bytecode pc 1028
    xs.Utils.Node.attachNodes(this.m_bg, this.m_scrollView, { desc: "c", offset: cc.p(-530, -365), sc: true });
    // source line 83, bytecode pc 1052
    this.m_scrollView.setTouchPriority(-6553);
    // source line 84, bytecode pc 1074
    this.initStr(param.errorStr);
    // source line 89, bytecode pc 1076
    return true;
},
    initStr: function(mStr) {
    // source line 103, bytecode pc 16
    this._addStr(mStr);
},
    _addStr: function(mStr) {
    var m_strs, m_str, i, showStr;
    // source line 109, bytecode pc 33
    (m_strs = xs.Views.Dialog.ErrorDialog.errorData.m_errorStr);
    if (!this._isexistToStrs(mStr, m_strs)) {
        // source line 112, bytecode pc 78
        m_strs.push(mStr);
    }
    // source line 115, bytecode pc 87
    (m_str = "");
    // source line 117, bytecode pc 92
    (i = 0);
    while ((i < m_strs.length)) {
        // source line 118, bytecode pc 113
        (m_str = (m_str + m_strs[i]));
        // source line 117, bytecode pc 127
        (i = (+i + 1));
    }
    // source line 121, bytecode pc 153
    (showStr = m_str);
    // source line 123, bytecode pc 175
    this.m_label.setString(showStr);
    // source line 124, bytecode pc 200
    this.m_scrollView.setContainer(this.m_label);
    // source line 125, bytecode pc 243
    this.m_scrollView.setContentOffset(cc.p(0, -1500));
},
    _isexistToStrs: function(mStr, strList) {
    var i;
    // source line 134, bytecode pc 4
    (i = 0);
    while ((i < strList.length)) {
        if ((mStr == strList[i])) {
            // source line 136, bytecode pc 28
            return true;
        }
        // source line 134, bytecode pc 42
        (i = (+i + 1));
    }
    // source line 139, bytecode pc 63
    return false;
},
    onEnterTransitionDidFinish: function() {
    // source line 144, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 150, bytecode pc 31
    (xs.Views.Dialog.ErrorDialog.errorData.m_errorDialog = null);
    // source line 151, bytecode pc 54
    xs.log("error dialog exit");
    // source line 152, bytecode pc 67
    this._super();
},
    _onCloseBtn: function() {
    // source line 163, bytecode pc 14
    this.removeFromParent(true);
},
    setBaseTouchPriority: function(priority) {
    // source line 171, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 172, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 173, bytecode pc 71
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.closeBtn.priority));
}
}));
// source line 179, bytecode pc 230
(xs.Views.Dialog.ErrorDialog.errorData = { m_errorStr: [], m_errorDialog: null });
// source line 187, bytecode pc 261
(xs.Views.Dialog.ErrorDialog.show = function(param) {
    var m_scene, m_dialog, visibleSize;
    if (!xs.cfg_exception_dialog_use) {
        // source line 190, bytecode pc 17
        return void 0;
    }
    if (((xs.app_indentify != xsc.Const_Proj_Code_Develop) && ((xs.app_indentify != xsc.Const_Proj_Code_TestOnline) && (xs.app_indentify != xsc.Const_Proj_Code_226_TestOnline)))) {
        // source line 198, bytecode pc 99
        return void 0;
    }
    if (xs.cfg_exception_dialog_use) {
        // source line 205, bytecode pc 139
        (m_scene = xs.director.getRunningScene());
        if (!m_scene) {
            // source line 207, bytecode pc 173
            (m_scene = cc.Scene.create());
            // source line 208, bytecode pc 210
            cc.Director.getInstance().runWithScene(m_scene);
        }
        if (!xs.director.getRunningScene()) {
            // source line 212, bytecode pc 239
            return void 0;
        }
        // source line 215, bytecode pc 273
        (m_dialog = xs.Views.Dialog.ErrorDialog.errorData.m_errorDialog);
        if ((m_dialog == null)) {
            // source line 219, bytecode pc 319
            (visibleSize = cc.Director.getInstance().getVisibleSize());
            // source line 220, bytecode pc 369
            (m_dialog = xs.Views.Dialog.ErrorDialog.create({ errorStr: param }));
            // source line 221, bytecode pc 392
            m_scene.addChild(m_dialog, 999);
            // source line 223, bytecode pc 448
            m_dialog.setPosition(cc.p((visibleSize.width / 2), (visibleSize.height / 2)));
            // source line 226, bytecode pc 482
            (xs.Views.Dialog.ErrorDialog.errorData.m_errorDialog = m_dialog);
        } else {
            // source line 229, bytecode pc 506
            m_dialog.initStr(param);
        }
    }
});
// source line 235, bytecode pc 292
(xs.Views.Dialog.ErrorDialog.create = function(param) {
    var ret;
    // source line 236, bytecode pc 28
    (ret = new xs.Views.Dialog.ErrorDialog());
    if ((ret && ret.init(param))) {
        // source line 238, bytecode pc 64
        return ret;
    }
});
// source line 244, bytecode pc 372
xs.Views.Mgr.registerDialog("ErrorDialog", { "class": xs.Views.Dialog.ErrorDialog, styleType: xs.Constant_DlgStyleType_Large });
