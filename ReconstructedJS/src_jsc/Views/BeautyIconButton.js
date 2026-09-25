// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/BeautyIconButton.js:1
// source line 187, bytecode pc 243
(xs.Views.BeautyIconButton = cc.Node.extend({
    ctor: function() {
    // source line 7, bytecode pc 12
    this._super();
    // source line 8, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function() {
    if (!this._super()) {
        // source line 12, bytecode pc 19
        return false;
    }
    // source line 15, bytecode pc 27
    (this.m_innerBtn = null);
    // source line 16, bytecode pc 35
    (this.m_nameLab = null);
    // source line 17, bytecode pc 43
    (this.m_placeIcon = null);
    // source line 18, bytecode pc 51
    (this.m_icon = null);
    // source line 19, bytecode pc 59
    (this.m_selector = null);
    // source line 20, bytecode pc 68
    (this.m_index = -1);
    // source line 21, bytecode pc 76
    (this.b_isLocked = false);
    // source line 22, bytecode pc 84
    (this.m_lockIcon = null);
    // source line 23, bytecode pc 92
    (this.m_lockLv = 0);
    // source line 24, bytecode pc 100
    (this.b_equipEnabled = false);
    // source line 26, bytecode pc 108
    (this.m_gradeSpr = null);
    // source line 27, bytecode pc 116
    (this.m_level = 0);
    // source line 28, bytecode pc 124
    (this.m_grade = 0);
    // source line 29, bytecode pc 136
    (this.m_num = "");
    // source line 31, bytecode pc 173
    this.setContentSize(cc.size(100, 130));
    // source line 33, bytecode pc 218
    (this.m_innerBtn = xs.Views.Btn.create("Btn_TeamIconButton", ""));
    // source line 34, bytecode pc 238
    this.m_innerBtn.setZoomOnTouchDown(false);
    // source line 35, bytecode pc 276
    this.m_innerBtn.setOnClickCallBack(this.innerBtnCallback.bind(this));
    // source line 36, bytecode pc 317
    this.m_innerBtn.setPosition(cc.p(50, 80));
    // source line 37, bytecode pc 353
    xs.Utils.Node.attachNodes(this, this.m_innerBtn);
    // source line 39, bytecode pc 398
    (this.m_nameLab = xs.Factorys.LabelTTF.create("", "TTF_Font_TeamIconName"));
    // source line 40, bytecode pc 439
    this.m_nameLab.setPosition(cc.p(50, 16));
    // source line 41, bytecode pc 475
    xs.Utils.Node.attachNodes(this, this.m_nameLab);
    // source line 43, bytecode pc 520
    (this.m_lockIcon = xs.Factorys.Sprite.create("hongyan_icon1", "hongyan"));
    // source line 44, bytecode pc 561
    this.m_lockIcon.setPosition(cc.p(50, 80));
    // source line 45, bytecode pc 582
    this.m_lockIcon.setZOrder(2);
    // source line 46, bytecode pc 618
    xs.Utils.Node.attachNodes(this, this.m_lockIcon);
    // source line 48, bytecode pc 660
    this.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 49, bytecode pc 662
    return true;
},
    setIconName: function(name) {
    // source line 52, bytecode pc 21
    this.m_nameLab.setString(name);
},
    setBtnText: function(txt) {
    // source line 55, bytecode pc 21
    this.m_innerBtn.setString(txt);
},
    setTouchPriority: function(priority) {
    // source line 58, bytecode pc 21
    this.m_innerBtn.setTouchPriority(priority);
},
    getTouchPriority: function() {
    // source line 61, bytecode pc 17
    return this.m_innerBtn.getTouchPriority();
},
    setEnabled: function(enabled) {
    // source line 64, bytecode pc 21
    this.m_innerBtn.setEnabled(enabled);
},
    setIndex: function(index, isUpdate) {
    if ((this.m_index != index)) {
        // source line 68, bytecode pc 24
        (this.m_index = index);
        if (((isUpdate == null) || (isUpdate == true))) {
            // source line 70, bytecode pc 58
            this.updateView();
        }
    }
},
    setLockLv: function(level) {
    // source line 75, bytecode pc 9
    (this.m_lockLv = level);
},
    getLockLv: function() {
    // source line 78, bytecode pc 6
    return this.m_lockLv;
},
    setIsLocked: function(locked, isUpdate) {
    if ((this.b_isLocked != locked)) {
        // source line 82, bytecode pc 24
        (this.b_isLocked = locked);
        if (((isUpdate == null) || (isUpdate == true))) {
            // source line 84, bytecode pc 58
            this.updateView();
        }
    }
},
    getIsLocked: function() {
    // source line 89, bytecode pc 6
    return this.b_isLocked;
},
    setCallback: function(selector) {
    // source line 94, bytecode pc 9
    (this.m_selector = selector);
},
    innerBtnCallback: function() {
    if (this.m_selector) {
        // source line 98, bytecode pc 30
        this.m_selector(this.m_index);
    }
},
    setLevel: function(lv) {
    var _offset;
    // source line 102, bytecode pc 16
    (this.m_level = (lv || 0));
    if (!this.m_spriteLvBg) {
        // source line 104, bytecode pc 85
        (this.m_spriteLvBg = xs.Factorys.Sprite.create("icon_rb_level", "Cmn02", [ 2 ]));
        // source line 105, bytecode pc 114
        this.m_spriteLvBg.setAnchorPoint(xs.ap_rb);
        // source line 106, bytecode pc 199
        (_offset = cc.p(((xs.Cfg.Resource.Head.w / 2) + 5), ((-xs.Cfg.Resource.Head.h / 2) + 80)));
        // source line 108, bytecode pc 260
        xs.Utils.Node.attachNodes(this, this.m_spriteLvBg, { desc: "c", offset: _offset });
        // source line 110, bytecode pc 299
        (this.lvLabel = xs.Factorys.Label.createByStyleId("LS_Nomb1"));
        // source line 111, bytecode pc 387
        (_offset = cc.p(((xs.Cfg.Resource.Head.w / 2) - 10), (((-xs.Cfg.Resource.Head.h / 2) + 11) + 80)));
        // source line 112, bytecode pc 448
        xs.Utils.Node.attachNodes(this, this.lvLabel, { desc: "c", offset: _offset });
    }
    if (lv) {
        // source line 115, bytecode pc 476
        this.m_spriteLvBg.setVisible(true);
        // source line 116, bytecode pc 507
        this.lvLabel.setString(("" + this.m_level));
    } else {
        // source line 118, bytecode pc 536
        this.lvLabel.setString("");
        // source line 119, bytecode pc 556
        this.m_spriteLvBg.setVisible(false);
    }
},
    setNum: function(num) {
    var _offset;
    // source line 124, bytecode pc 16
    (this.m_num = (num || 0));
    if (!this.numLabel) {
        // source line 127, bytecode pc 73
        (this.numLabel = xs.Factorys.Label.createByStyleIdWithString("LS_mainUI4", ""));
        // source line 128, bytecode pc 128
        (_offset = cc.p(0, ((-xs.Cfg.Resource.Head.h / 2) + 25)));
        // source line 129, bytecode pc 189
        xs.Utils.Node.attachNodes(this, this.numLabel, { desc: "c", offset: _offset });
    }
    if (num) {
        // source line 132, bytecode pc 228
        this.numLabel.setString(("x" + this.m_num));
    } else {
        // source line 134, bytecode pc 257
        this.numLabel.setString("");
    }
},
    getNum: function() {
    // source line 139, bytecode pc 6
    return this.m_num;
},
    updateView: function() {
    var pIconFrameName;
    // source line 143, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this.m_placeIcon);
    // source line 144, bytecode pc 41
    (this.m_placeIcon = null);
    // source line 146, bytecode pc 50
    (pIconFrameName = "hongyan_icon1");
    // source line 147, bytecode pc 57
    switch (this.m_index) {
        case 0:
        // source line 149, bytecode pc 90
        (pIconFrameName = "hongyan_icon1");
        break;
        case 1:
        // source line 152, bytecode pc 104
        (pIconFrameName = "hongyan_icon2");
        break;
        case 2:
        // source line 155, bytecode pc 118
        (pIconFrameName = "hongyan_icon3");
        break;
        default:
        break;
    }
    // source line 160, bytecode pc 166
    (this.m_placeIcon = xs.Factorys.Sprite.create(pIconFrameName, "hongyan"));
    // source line 161, bytecode pc 207
    this.m_placeIcon.setPosition(cc.p(50, 80));
    // source line 162, bytecode pc 243
    xs.Utils.Node.attachNodes(this, this.m_placeIcon);
    if (this.b_isLocked) {
        // source line 166, bytecode pc 290
        xs.Utils.Node.fastSetVisible(this.m_lockIcon, true);
    } else {
        // source line 168, bytecode pc 331
        xs.Utils.Node.fastSetVisible(this.m_lockIcon, false);
    }
    // source line 171, bytecode pc 347
    this.setGrade(4);
},
    setGrade: function(grade) {
    var _offset;
    // source line 174, bytecode pc 13
    (grade = (grade || 0));
    if ((grade != this.m_grade)) {
        if (this.m_gradeSpr) {
            // source line 177, bytecode pc 73
            xs.Utils.Node.removeChildSafe(this.m_gradeSpr);
        }
        // source line 179, bytecode pc 131
        (this.m_gradeSpr = xs.Factorys.Sprite.create("head_grade", "Cmn02", [ grade ]));
        // source line 180, bytecode pc 160
        this.m_gradeSpr.setAnchorPoint(xs.ap_rb);
        // source line 181, bytecode pc 245
        (_offset = cc.p(((xs.Cfg.Resource.Head.w / 2) + 9), ((-xs.Cfg.Resource.Head.h / 2) + 6)));
        // source line 182, bytecode pc 306
        xs.Utils.Node.attachNodes(this, this.m_gradeSpr, { desc: "c", offset: _offset });
    }
    // source line 184, bytecode pc 316
    (this.m_grade = grade);
},
    getGrade: function() {
    // source line 188, bytecode pc 6
    return this.m_grade;
}
}));
// source line 193, bytecode pc 269
(xs.Views.BeautyIconButton.create = function() {
    var btn;
    // source line 194, bytecode pc 23
    (btn = new xs.Views.BeautyIconButton());
    if ((btn && btn.init())) {
        // source line 196, bytecode pc 55
        return btn;
    }
    // source line 198, bytecode pc 78
    xs.warn("xs.Views.BeautyIconButton.create error!");
    // source line 199, bytecode pc 80
    return null;
});
