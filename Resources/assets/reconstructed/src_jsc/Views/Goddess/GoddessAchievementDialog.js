// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Goddess/GoddessAchievementDialog.js:1
// source line 195, bytecode pc 278
(xs.Views.GoddessAchievementDialog = xs.Views.HungerLayer.extend({
    name: "xs.Views.GoddessAchievementDialog",
    ccbCfg: [
        { tag: 10, type: "ls", name: "m_title", id: "LS_popUI1", stringId: "goddess_dialogTitle" },
        { tag: 6, name: "m_zhanli" },
        { tag: 1, type: "btn", name: "m_Close", id: "Btn_Close" }
    ],
    ctor: function() {
    // source line 14, bytecode pc 12
    this._super();
    // source line 15, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(param) {
    var _visibleSize, fateArray, pos, callbackRight, callbackLeft, _panelSize;
    if (!this._super()) {
        // source line 19, bytecode pc 19
        return false;
    }
    // source line 21, bytecode pc 27
    (this.m_ccbNode = null);
    // source line 22, bytecode pc 35
    (this.m_Close = null);
    // source line 23, bytecode pc 43
    (this.m_zhanliPic = null);
    // source line 24, bytecode pc 51
    (this.m_zhanliBgPic = null);
    // source line 26, bytecode pc 59
    (this.m_ScrollViewBg = null);
    // source line 28, bytecode pc 67
    (this.m_ScrollView = null);
    // source line 29, bytecode pc 75
    (this.m_goddess = null);
    // source line 31, bytecode pc 90
    (this.m_data = param.goddessList);
    // source line 33, bytecode pc 105
    (this.m_modelsList = param.goddessSkinList);
    // source line 34, bytecode pc 130
    this.m_modelsList.push(this.m_data);
    // source line 35, bytecode pc 138
    (this.m_idex = 0);
    // source line 36, bytecode pc 156
    (this.m_modelsListLength = this.m_modelsList.length);
    // source line 39, bytecode pc 181
    (_visibleSize = xs.director.getVisibleSize());
    // source line 41, bytecode pc 232
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.GoddessAchievementDialogCcb, this));
    // source line 42, bytecode pc 275
    this.m_ccbNode.setContentSize(cc.size(915, 627));
    // source line 43, bytecode pc 322
    this.m_ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 47, bytecode pc 381
    xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "c", sc: true });
    // source line 50, bytecode pc 424
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg, this);
    // source line 52, bytecode pc 451
    (this.m_zhanliPic = this.m_ccbNode.getChildByTag(5));
    // source line 53, bytecode pc 478
    (this.m_zhanliBgPic = this.m_ccbNode.getChildByTag(4));
    // source line 54, bytecode pc 505
    (this.m_ScrollViewBg = this.m_ccbNode.getChildByTag(3));
    // source line 55, bytecode pc 532
    (this.m_goddess = this.m_ccbNode.getChildByTag(2));
    // source line 57, bytecode pc 568
    this.m_zhanli.setString(this.m_data.getSmallFighting());
    // source line 58, bytecode pc 589
    this.m_zhanliBgPic.setZOrder(4);
    // source line 59, bytecode pc 610
    this.m_zhanliPic.setZOrder(5);
    // source line 60, bytecode pc 631
    this.m_zhanli.setZOrder(5);
    // source line 61, bytecode pc 652
    this.m_ScrollViewBg.setZOrder(2);
    // source line 63, bytecode pc 690
    this.m_Close.setOnClickCallBack(this.onBtnCloseClicked.bind(this));
    // source line 68, bytecode pc 748
    (this.m_ScrollView = xs.Views.ScrollView.create(cc.size(490, 450)));
    // source line 70, bytecode pc 757
    (fateArray = []);
    // source line 72, bytecode pc 778
    (fateArray = this.m_data.getFates());
    if ((fateArray.length > 0)) {
        // source line 78, bytecode pc 881
        this.m_ScrollView.addChildrenView(xs.DetailDialogComponent.createDStyleQ1({
    fateData: fateArray,
    generalData: this.m_data,
    otherPlayerId: this.m_playerId,
    otherPlayerData: this.m_playerData
}));
        // source line 83, bytecode pc 965
        this.m_ScrollView.addChildrenView(xs.DetailDialogComponent.createDStyleE({ titleText: xs.Tools.String.createString("1071110014") }));
    }
    // source line 88, bytecode pc 1028
    this.m_ScrollView.addChildrenView(xs.Views.JiaChengView.create(this.m_data.getBuffList()));
    // source line 93, bytecode pc 1134
    this.m_ScrollView.addChildrenView(xs.DetailDialogComponent.createDStyleA({
    titleText: xs.Tools.String.createString("goddess_intro"),
    contentText: this.m_data.getDescString()
}));
    // source line 101, bytecode pc 1224
    xs.Utils.Node.attachNodes(this.m_ccbNode, this.m_ScrollView, { desc: "lb", sc: true, offset: { x: 380, y: 80 } });
    // source line 104, bytecode pc 1245
    this.m_ScrollView.setZOrder(2);
    // source line 105, bytecode pc 1263
    this.m_ScrollView.resizeView();
    // source line 108, bytecode pc 1304
    (pos = this.m_ccbNode.getChildByTag(2).getPosition());
    // source line 109, bytecode pc 1338
    xs.Utils.Node.safeRemoveChild(this.m_goddess);
    // source line 110, bytecode pc 1362
    (this.m_goddess = this.m_data.createCardAndName());
    // source line 111, bytecode pc 1390
    this.m_goddess.setPosition(pos);
    // source line 112, bytecode pc 1410
    this.m_goddess.setZOrder(1);
    // source line 113, bytecode pc 1451
    xs.Utils.Node.attachNodes(this.m_ccbNode, this.m_goddess);
    // source line 131, bytecode pc 1473
    (callbackRight = function() {
    var filename, func1, func2;
    // source line 122, bytecode pc 31
    (filename = this.m_data.getRes().getHDUrl());
    // source line 126, bytecode pc 53
    (func1 = function(params) {
    // source line 125, bytecode pc 16
    this.__readyFunc(params);
}.bind(this));
    // source line 129, bytecode pc 75
    (func2 = function(params) {
    // source line 128, bytecode pc 16
    this.__unreadyFunc(params);
}.bind(this));
    // source line 130, bytecode pc 127
    xs.Models.HDModel.getInstance().addQuery(filename, this, func1, func2);
}.bind(this));
    // source line 152, bytecode pc 1495
    (callbackLeft = function() {
    if ((this.m_modelsListLength == 1)) {
        // source line 136, bytecode pc 14
        return void 0;
    }
    // source line 139, bytecode pc 34
    (this.m_data = this.m_modelsList[this.m_idex]);
    // source line 140, bytecode pc 60
    (this.m_idex = (+this.m_idex + 1));
    if ((this.m_idex >= this.m_modelsListLength)) {
        // source line 142, bytecode pc 87
        (this.m_idex = 0);
    }
    // source line 145, bytecode pc 121
    xs.Utils.Node.safeRemoveChild(this.m_goddess);
    // source line 146, bytecode pc 145
    (this.m_goddess = this.m_data.createCardAndName());
    // source line 147, bytecode pc 173
    this.m_goddess.setPosition(pos);
    // source line 148, bytecode pc 193
    this.m_goddess.setZOrder(1);
    // source line 149, bytecode pc 234
    xs.Utils.Node.attachNodes(this.m_ccbNode, this.m_goddess);
}.bind(this));
    // source line 158, bytecode pc 1620
    (this._panel = xs.DetailDialogComponent.createDStyleN({
    btnTextR: xs.Tools.String.createString("general_lookHD"),
    callbackRight: callbackRight,
    btnTextL: xs.Tools.String.createString("goddess_changeSkin"),
    callbackLeft: callbackLeft
}));
    // source line 161, bytecode pc 1646
    (_panelSize = this._panel._ccbNode.getContentSize());
    // source line 167, bytecode pc 1769
    xs.Utils.Node.attachNodes(this.m_ccbNode, this._panel, {
    desc: "lb",
    sc: true,
    offset: { x: ((this.m_ccbNode.getContentSize().width / 2) - (_panelSize.width / 2)), y: 0 }
});
    // source line 170, bytecode pc 1790
    this._panel.setZOrder(3);
    // source line 172, bytecode pc 1792
    return true;
},
    __readyFunc: function(params) {
    var obj;
    if ((params.absoluteFilePath != null)) {
        // source line 176, bytecode pc 19
        (obj = null);
        // source line 177, bytecode pc 58
        (obj = xs.Views.HDShowViews.create(params.absoluteFilePath));
        // source line 178, bytecode pc 80
        obj.setBaseTouchPriority(this.m_baseTouchPriority);
        // source line 179, bytecode pc 161
        xs.Utils.Node.attachNodes(xs.director.getRunningScene(), obj, null, xs.Cfg.Scene.CommonScene.Loading_ext);
    }
},
    __unreadyFunc: function(params) {
    // source line 183, bytecode pc 22
    xs.log("__unreadyFunc");
},
    onBtnCloseClicked: function() {
    // source line 187, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    onEnter: function() {
    // source line 190, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 193, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 196, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 197, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 198, bytecode pc 57
    this.m_Close.setTouchPriority((this.m_baseTouchPriority - 2));
    // source line 199, bytecode pc 84
    this.m_ScrollView.setBaseTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 203, bytecode pc 304
(xs.Views.GoddessAchievementDialog.create = function(param) {
    var ret;
    // source line 204, bytecode pc 23
    (ret = new xs.Views.GoddessAchievementDialog());
    if ((ret && ret.init(param))) {
        // source line 206, bytecode pc 59
        return ret;
    }
    // source line 208, bytecode pc 84
    xs.assert(false, "xs.Views.GoddessAchievementDialog.create err");
    // source line 209, bytecode pc 86
    return null;
});
// source line 213, bytecode pc 379
xs.Views.Mgr.registerDialog("GoddessAchievementDialog", { "class": xs.Views.GoddessAchievementDialog, styleType: xs.Constant_DlgStyleType_Large });
// source line 364, bytecode pc 688
(xs.Views.JiaChengView = xs.Views.HungerLayer.extend({
    name: "xs.Views.JiaChengView",
    ccbCfg_add: [
        { tag: 1, type: "ls", name: "m_add_title", id: "LS_wujiangInf1", stringId: "goddess_dialogTitle" },
        {
            tag: 2,
            type: "ls",
            name: "m_chuzhan_title",
            id: "LS_wujiangInf1",
            stringId: "goddess_AchievementJia"
        },
        { tag: 4, type: "ls", name: "m_jiacheng01", id: "LS_mainUI4" }
    ],
    ctor: function() {
    // source line 229, bytecode pc 12
    this._super();
    // source line 230, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(param) {
    var firstPic, i, position, iconPicBg, iconPic, label;
    if (!this._super()) {
        // source line 234, bytecode pc 19
        return false;
    }
    // source line 236, bytecode pc 27
    (this.m_ccbNode = null);
    // source line 238, bytecode pc 35
    (this.m_shuxing_bg = null);
    // source line 240, bytecode pc 43
    (this.m_jiacheng01_pic = null);
    // source line 241, bytecode pc 51
    (this.m_jiacheng01 = null);
    // source line 242, bytecode pc 61
    (this.m_data = param);
    // source line 245, bytecode pc 112
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.GoddessAchievementCell, this));
    // source line 246, bytecode pc 148
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 247, bytecode pc 191
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg_add, this);
    // source line 249, bytecode pc 218
    (this.m_jiacheng01_pic = this.m_ccbNode.getChildByTag(3));
    // source line 254, bytecode pc 260
    (firstPic = this.getJiaChangePicByType(Number(this.m_data[0][0])));
    // source line 255, bytecode pc 305
    xs.Utils.Node.replaceChildSafe(this.m_ccbNode, this.m_jiacheng01_pic, firstPic);
    // source line 256, bytecode pc 315
    (this.m_jiacheng01_pic = firstPic);
    // source line 257, bytecode pc 350
    this.m_jiacheng01.setString(("+" + this.m_data[0][1]));
    // source line 260, bytecode pc 355
    (i = 0);
    while ((i < this.m_data.length)) {
        if ((i > 0)) {
            // source line 263, bytecode pc 391
            (position = this.getPositionByType(i));
            // source line 265, bytecode pc 433
            (iconPicBg = xs.Factorys.Sprite.create("smallIcon_fp_bg", "Cmn01"));
            // source line 271, bytecode pc 534
            xs.Utils.Node.attachNodes(this.m_ccbNode, iconPicBg, { desc: "lb", sc: true, offset: { x: (position.x + 50), y: position.y } });
            // source line 275, bytecode pc 578
            (iconPic = this.getJiaChangePicByType(Number(this.m_data[i][0])));
            // source line 281, bytecode pc 676
            xs.Utils.Node.attachNodes(this.m_ccbNode, iconPic, { desc: "lb", sc: true, offset: { x: position.x, y: position.y } });
            // source line 286, bytecode pc 712
            (label = xs.Factorys.Label.createByStyleId("LS_mainUI4"));
            // source line 287, bytecode pc 746
            label.setString(("+" + this.m_data[i][1]));
            // source line 288, bytecode pc 786
            label.setAnchorPoint(cc.p(0, 0.5));
            // source line 294, bytecode pc 887
            xs.Utils.Node.attachNodes(this.m_ccbNode, label, { desc: "lb", sc: true, offset: { x: (position.x + 20), y: position.y } });
        }
        // source line 260, bytecode pc 901
        (i = (+i + 1));
    }
    // source line 304, bytecode pc 925
    return true;
},
    getPositionByType: function(idex) {
    if ((idex == 1)) {
        // source line 310, bytecode pc 66
        return cc.p((this.m_jiacheng01_pic.getPositionX() + 150), this.m_jiacheng01_pic.getPositionY());
    } else {
        if ((idex == 2)) {
            // source line 314, bytecode pc 138
            return cc.p(this.m_jiacheng01_pic.getPositionX(), (this.m_jiacheng01_pic.getPositionY() - 36));
        } else {
            if ((idex == 3)) {
                // source line 318, bytecode pc 214
                return cc.p((this.m_jiacheng01_pic.getPositionX() + 150), (this.m_jiacheng01_pic.getPositionY() - 36));
            }
        }
    }
},
    getJiaChangePicByType: function(type) {
    var iconPic;
    // source line 322, bytecode pc 4
    (iconPic = null);
    // source line 323, bytecode pc 8
    switch (type) {
        case 1:
        // source line 326, bytecode pc 78
        (iconPic = xs.Factorys.Sprite.create("icon_atk1", "Cmn01"));
        break;
        case 2:
        // source line 331, bytecode pc 125
        (iconPic = xs.Factorys.Sprite.create("icon_def1", "Cmn01"));
        break;
        case 3:
        // source line 336, bytecode pc 172
        (iconPic = xs.Factorys.Sprite.create("icon_hp1", "Cmn01"));
        break;
        case 4:
        // source line 341, bytecode pc 219
        (iconPic = xs.Factorys.Sprite.create("icon_int1", "Cmn01"));
        break;
        default:
        // source line 346, bytecode pc 247
        this.assert("iconPic type erro", type);
        break;
    }
    // source line 351, bytecode pc 256
    return iconPic;
},
    getViewSize: function() {
    var viewsize;
    // source line 355, bytecode pc 20
    (viewsize = this.m_ccbNode.getContentSize());
    // source line 356, bytecode pc 44
    return cc.size(470, 110);
},
    onEnter: function() {
    // source line 359, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 362, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 365, bytecode pc 12
    (this.m_baseTouchPriority = (priority - 10));
    // source line 366, bytecode pc 34
    this.setTouchPriority((this.m_baseTouchPriority - 1));
}
}));
// source line 370, bytecode pc 714
(xs.Views.JiaChengView.create = function(param) {
    var ret;
    // source line 371, bytecode pc 23
    (ret = new xs.Views.JiaChengView());
    if ((ret && ret.init(param))) {
        // source line 373, bytecode pc 59
        return ret;
    }
    // source line 375, bytecode pc 84
    xs.assert(false, "xs.Views.JiaChengView.create err");
    // source line 376, bytecode pc 86
    return null;
});
