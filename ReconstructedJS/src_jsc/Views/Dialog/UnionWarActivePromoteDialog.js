// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/UnionWarActivePromoteDialog.js:1
// source line 123, bytecode pc 214
(xs.Views.Dialog.UnionWarActivePromoteDialog = xs.Views.HungerLayer.extend({
    name: "UnionWarActivePromoteDialog",
    btnCfg: {
        union_str_juqing: "_goDrama",
        union_str_tianti: "_goHighLadder",
        union_str_guoguan: "_goSkipmatch",
        union_str_juanxian: "_goUnionDonate"
    },
    ctor: function() {
    // source line 19, bytecode pc 12
    this._super();
    // source line 20, bytecode pc 47
    cc.associateWithNative(this, xs.Views.HungerLayer);
},
    init: function(param) {
    if (!this._super()) {
        // source line 31, bytecode pc 19
        return false;
    }
    // source line 34, bytecode pc 42
    xs.log_hsq("init UnionWarActivePromoteDialog");
    // source line 35, bytecode pc 50
    (this.m_baseTouchPriority = 0);
    // source line 38, bytecode pc 109
    (this.m_bg = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.popView_bg02.frameName));
    // source line 39, bytecode pc 156
    this.m_bg.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 40, bytecode pc 199
    this.m_bg.setContentSize(cc.size(500, 440));
    // source line 41, bytecode pc 275
    xs.Utils.Node.attachNodes(this, this.m_bg, { desc: "c", offset: { x: 0, y: 0 } });
    // source line 44, bytecode pc 347
    (this.m_headLabel = xs.Factorys.Label.createByStyleIdWithString("LS_popUI1", xs.Tools.String.createString("union_activePromote")));
    // source line 46, bytecode pc 429
    xs.Utils.Node.attachNodes(this.m_bg, this.m_headLabel, { desc: "ct", offset: { x: 0, y: -30 } });
    // source line 48, bytecode pc 468
    (this.m_closeBtn = xs.Views.Btn.createByStyleId("BS_Close"));
    // source line 49, bytecode pc 551
    xs.Utils.Node.attachNodes(this.m_bg, this.m_closeBtn, { desc: "rt", offset: { x: -40, y: -38 } });
    // source line 50, bytecode pc 589
    this.m_closeBtn.setOnClickCallBack(this.onCloseBtn.bind(this));
    // source line 52, bytecode pc 602
    this._initBtn();
    // source line 55, bytecode pc 604
    return true;
},
    _initBtn: function() {
    var _pos, keyList, btnInterval, keyIndx, mBtn, mPos;
    // source line 59, bytecode pc 27
    (_pos = cc.p(250, 310));
    // source line 61, bytecode pc 50
    (keyList = this._getObjKeyList(this.btnCfg));
    // source line 62, bytecode pc 56
    (btnInterval = 80);
    // source line 64, bytecode pc 61
    (keyIndx = 0);
    while ((keyIndx < keyList.length)) {
        // source line 65, bytecode pc 106
        xs.Utils.Node.safeRemoveChild(this[("btn_" + keyIndx)]);
        // source line 66, bytecode pc 142
        (mBtn = xs.Views.Btn.createByStyleId("BS_ChannelSgs"));
        // source line 67, bytecode pc 180
        xs.Utils.Node.attachNodes(this.m_bg, mBtn);
        // source line 68, bytecode pc 226
        (mPos = cc.p(_pos.x, (_pos.y - (keyIndx * btnInterval))));
        // source line 69, bytecode pc 253
        xs.dump("mPosmPos", mPos);
        // source line 70, bytecode pc 272
        mBtn.setPosition(mPos);
        // source line 71, bytecode pc 322
        mBtn.setString(xs.Tools.String.createString(keyList[keyIndx]));
        // source line 72, bytecode pc 367
        mBtn.setOnClickCallBack(this[this.btnCfg[keyList[keyIndx]]].bind(this));
        // source line 73, bytecode pc 391
        mBtn.setTouchPriority((this.m_baseTouchPriority - 1));
        // source line 74, bytecode pc 406
        (this[("btn_" + keyIndx)] = mBtn);
        // source line 64, bytecode pc 420
        (keyIndx = (+keyIndx + 1));
    }
},
    _getObjKeyList: function(mObj) {
    var mKeyList, mkey;
    // source line 81, bytecode pc 8
    (mKeyList = []);
    for (var mkey in mObj) {
        // source line 83, bytecode pc 51
        xs.log_hsq("mkey", mkey);
        if (!((typeof(mObj[mkey]) != "function"))) continue;
        // source line 85, bytecode pc 97
        xs.log_hsq("mkeyj", mkey);
        // source line 86, bytecode pc 116
        mKeyList.push(mkey);
    }
    // source line 89, bytecode pc 128
    return mKeyList;
},
    _goDrama: function() {
    // source line 93, bytecode pc 22
    xs.log_hsq("去剧情");
    // source line 94, bytecode pc 55
    xs.Scene.Mgr.changeSceneByName("FightChapters");
},
    _goHighLadder: function() {
    // source line 99, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("ChallengeMenuScene");
    // source line 100, bytecode pc 55
    xs.log_hsq("去天梯");
},
    _goSkipmatch: function() {
    // source line 104, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("ChallengeMenuScene");
    // source line 105, bytecode pc 55
    xs.log_hsq("去过关斩将");
},
    _goUnionDonate: function() {
    // source line 109, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 110, bytecode pc 53
    xs.Views.Mgr.hideDialog();
    // source line 111, bytecode pc 100
    xs.Views.Mgr.showDialogByName("UnionDialog", { pageIdx: 3 });
    // source line 112, bytecode pc 123
    xs.log_hsq("公会捐献");
},
    onCloseBtn: function() {
    // source line 118, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    setBaseTouchPriority: function(priority) {
    var i;
    // source line 124, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 125, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 127, bytecode pc 56
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 129, bytecode pc 61
    (i = 0);
    while ((i < 4)) {
        if (this[("btn_" + i)]) {
            // source line 131, bytecode pc 115
            this[("btn_" + i)].setTouchPriority((this.m_baseTouchPriority - 1));
        }
        // source line 129, bytecode pc 129
        (i = (+i + 1));
    }
}
}));
// source line 140, bytecode pc 245
(xs.Views.Dialog.UnionWarActivePromoteDialog.create = function(param) {
    var ret;
    // source line 141, bytecode pc 28
    (ret = new xs.Views.Dialog.UnionWarActivePromoteDialog());
    if ((ret && ret.init(param))) {
        // source line 143, bytecode pc 64
        return ret;
    }
    // source line 145, bytecode pc 89
    xs.assert(false, "xs.Views.Dialog.UnionWarActivePromoteDialog.create err");
    // source line 146, bytecode pc 91
    return null;
});
// source line 152, bytecode pc 325
xs.Views.Mgr.registerDialog("UnionWarActivePromoteDialog", { "class": xs.Views.Dialog.UnionWarActivePromoteDialog, styleType: xs.Constant_DlgStyleType_Small });
