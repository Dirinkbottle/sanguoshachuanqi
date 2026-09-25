// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Gems/GemsComposeView.js:1
// source line 4, bytecode pc 21
(xs.Views.Gems.firstClick = 1);
// source line 5, bytecode pc 44
(xs.Views.Gems.secondClick = 2);
// source line 6, bytecode pc 67
(xs.Views.Gems.thirdClick = 3);
// source line 466, bytecode pc 455
(xs.Views.GemsComposeView = cc.Layer.extend({
    ctor: function() {
    // source line 10, bytecode pc 12
    this._super();
    // source line 11, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    ccbCfg: [
        { tag: 5, type: "btn", name: "m_ComposeBtn", id: "Btn_btn1", stringId: "gems_compose" },
        {
            tag: 6,
            type: "btn",
            name: "m_oneStepComposeBtn",
            id: "Btn_btn1",
            stringId: "GemsOneStepCompose"
        }
    ],
    init: function() {
    var _dataObj, key, visibleSize, RealWidth;
    if (!this._super()) {
        // source line 20, bytecode pc 19
        return false;
    }
    // source line 23, bytecode pc 27
    (this.ccbNode = null);
    // source line 24, bytecode pc 35
    (this.m_gem_first = null);
    // source line 25, bytecode pc 43
    (this.m_gem_second = null);
    // source line 26, bytecode pc 51
    (this.m_gem_third = null);
    // source line 27, bytecode pc 59
    (this.m_gem_compose = null);
    // source line 28, bytecode pc 67
    (this.first_button = null);
    // source line 29, bytecode pc 75
    (this.second_button = null);
    // source line 30, bytecode pc 83
    (this.third_button = null);
    // source line 31, bytecode pc 91
    (this.m_ComposeBtn = null);
    // source line 32, bytecode pc 99
    (this.m_oneStepComposeBtn = null);
    // source line 34, bytecode pc 107
    (this.ccbComposeNode = null);
    // source line 35, bytecode pc 115
    (this.m_composeGem_first = null);
    // source line 36, bytecode pc 123
    (this.m_composeGem_second = null);
    // source line 37, bytecode pc 131
    (this.m_composeGem_third = null);
    // source line 38, bytecode pc 139
    (this.m_composeGem_fourth = null);
    // source line 41, bytecode pc 147
    (this.m_firstGemid = null);
    // source line 42, bytecode pc 155
    (this.m_SecondGemid = null);
    // source line 43, bytecode pc 163
    (this.m_ThirdGemid = null);
    // source line 44, bytecode pc 171
    (this.m_FourthGemid = null);
    // source line 46, bytecode pc 179
    (this.m_smallgemsID = null);
    // source line 47, bytecode pc 187
    (this.m_smallGemType = null);
    // source line 48, bytecode pc 195
    (this.m_smallGemLevel = null);
    // source line 49, bytecode pc 203
    (this.m_canCompose = false);
    // source line 50, bytecode pc 211
    (this.m_bigGemType = null);
    // source line 51, bytecode pc 219
    (this.m_BigGemsList = null);
    // source line 53, bytecode pc 231
    (this.m_dataGems = []);
    // source line 55, bytecode pc 272
    (_dataObj = xs.Tools.CfgData.getCfgDataByType(xs.Constant_CfgDataType_Gem));
    for (var key in _dataObj) {
        if (!(_dataObj.hasOwnProperty(key))) continue;
        // source line 60, bytecode pc 337
        this.m_dataGems.push(_dataObj[key]);
    }
    // source line 64, bytecode pc 370
    (visibleSize = xs.director.getVisibleSize());
    // source line 66, bytecode pc 403
    xs.Tools.UI.addCommonBg(this, true, true);
    // source line 67, bytecode pc 448
    (this.m_GeneralBg = xs.Factorys.Sprite.create("gemsScene_beijing2", "GemsScene"));
    // source line 68, bytecode pc 484
    xs.Tools.UI.addSpriteAsBg(this, this.m_GeneralBg);
    // source line 71, bytecode pc 517
    (this.m_infoBar = xs.Views.PlayerInfoBannerSimpleView.create());
    // source line 72, bytecode pc 556
    this.m_infoBar.setAnchorPoint(cc.p(0, 1));
    // source line 75, bytecode pc 615
    xs.Utils.Node.attachNodes(this, this.m_infoBar, { desc: "lt", sc: true });
    // source line 78, bytecode pc 648
    (RealWidth = (visibleSize.width - xs.Views.MainMenuView.Width));
    // source line 79, bytecode pc 699
    (this.ccbComposeNode = xs.ccb_reader.load(xs.Cfg.CCBI.GemsComposeList, this));
    // source line 80, bytecode pc 741
    this.ccbComposeNode.setContentSize(cc.size(RealWidth, 90));
    // source line 87, bytecode pc 823
    xs.Utils.Node.attachNodes(this, this.ccbComposeNode, { desc: "lb", offset: { x: 0, y: 0 }, sc: true });
    // source line 89, bytecode pc 843
    this.ccbComposeNode.setVisible(false);
    // source line 92, bytecode pc 894
    (this.ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.GemsComposeView, this));
    // source line 93, bytecode pc 937
    this.ccbNode.setContentSize(cc.size(550, 431));
    // source line 100, bytecode pc 1093
    xs.Utils.Node.attachNodes(this, this.ccbNode, {
    desc: "lb",
    offset: {
        x: (((visibleSize.width / 2) - (this.ccbNode.getContentSize().width / 2)) - (xs.Views.MainMenuView.Width / 2)),
        y: ((visibleSize.height / 2) - 220)
    },
    sc: true
});
    // source line 103, bytecode pc 1136
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.ccbCfg, this);
    // source line 106, bytecode pc 1173
    (this.m_gem_first = xs.Utils.getChildByTag(this.ccbNode, 1));
    // source line 107, bytecode pc 1211
    (this.m_gem_second = xs.Utils.getChildByTag(this.ccbNode, 2));
    // source line 108, bytecode pc 1249
    (this.m_gem_third = xs.Utils.getChildByTag(this.ccbNode, 3));
    // source line 109, bytecode pc 1287
    (this.m_gem_compose = xs.Utils.getChildByTag(this.ccbNode, 4));
    // source line 111, bytecode pc 1327
    (this.first_button = xs.Views.Btn.createInvisibleWithParent(this.m_gem_first));
    // source line 112, bytecode pc 1365
    this.first_button.setOnClickCallBack(this.GemFirstCallBack.bind(this));
    // source line 113, bytecode pc 1405
    (this.second_button = xs.Views.Btn.createInvisibleWithParent(this.m_gem_second));
    // source line 114, bytecode pc 1443
    this.second_button.setOnClickCallBack(this.GemSecondCallBack.bind(this));
    // source line 115, bytecode pc 1483
    (this.third_button = xs.Views.Btn.createInvisibleWithParent(this.m_gem_third));
    // source line 116, bytecode pc 1521
    this.third_button.setOnClickCallBack(this.GemThirdCallBack.bind(this));
    // source line 119, bytecode pc 1558
    (this.m_composeGem_first = xs.Utils.getChildByTag(this.ccbComposeNode, 1));
    // source line 120, bytecode pc 1607
    this.m_composeGem_first.setPositionX(this._PosTransform(this.m_composeGem_first.getPositionX()));
    // source line 121, bytecode pc 1645
    (this.m_composeGem_second = xs.Utils.getChildByTag(this.ccbComposeNode, 2));
    // source line 122, bytecode pc 1694
    this.m_composeGem_second.setPositionX(this._PosTransform(this.m_composeGem_second.getPositionX()));
    // source line 123, bytecode pc 1732
    (this.m_composeGem_third = xs.Utils.getChildByTag(this.ccbComposeNode, 3));
    // source line 124, bytecode pc 1781
    this.m_composeGem_third.setPositionX(this._PosTransform(this.m_composeGem_third.getPositionX()));
    // source line 125, bytecode pc 1819
    (this.m_composeGem_fourth = xs.Utils.getChildByTag(this.ccbComposeNode, 4));
    // source line 126, bytecode pc 1868
    this.m_composeGem_fourth.setPositionX(this._PosTransform(this.m_composeGem_fourth.getPositionX()));
    // source line 127, bytecode pc 1906
    (this.m_composeGem_bg = xs.Utils.getChildByTag(this.ccbComposeNode, 10));
    // source line 128, bytecode pc 1955
    this.m_composeGem_bg.setPositionX(this._PosTransform(this.m_composeGem_bg.getPositionX()));
    // source line 131, bytecode pc 1975
    this.m_ComposeBtn.setEnabled(false);
    // source line 132, bytecode pc 1995
    this.m_ComposeBtn.setEventOnDisable(true);
    // source line 133, bytecode pc 2015
    this.m_ComposeBtn.setZoomOnTouchDown(true);
    // source line 134, bytecode pc 2053
    this.m_ComposeBtn.setOnClickCallBack(this.ComposeCallback.bind(this));
    // source line 138, bytecode pc 2093
    this.m_oneStepComposeBtn.addCallBackForEvent(this, this.OneStepComposeCallBack.bind(this));
    // source line 139, bytecode pc 2113
    this.m_oneStepComposeBtn.setEnabled(false);
    // source line 140, bytecode pc 2133
    this.m_oneStepComposeBtn.setEventOnDisable(true);
    // source line 143, bytecode pc 2178
    (this.m_IconBg = xs.Factorys.Sprite.create("Cmn02_icon_lt_equipped_2", "Cmn01"));
    // source line 144, bytecode pc 2198
    this.m_IconBg.setVisible(false);
    // source line 147, bytecode pc 2262
    xs.Utils.Node.attachNodes(this.ccbComposeNode, this.m_IconBg, { desc: "lb", sc: true });
    // source line 151, bytecode pc 2264
    return true;
},
    _PosTransform: function(x) {
    var visibleSize, RealWidth, mScaleW;
    // source line 156, bytecode pc 24
    (visibleSize = xs.director.getVisibleSize());
    // source line 157, bytecode pc 57
    (RealWidth = (visibleSize.width - xs.Views.MainMenuView.Width));
    // source line 158, bytecode pc 68
    (mScaleW = (RealWidth / 1124));
    // source line 159, bytecode pc 76
    return (x * mScaleW);
},
    onEnter: function() {
    // source line 162, bytecode pc 12
    this._super();
    // source line 163, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.ExchangeGemIcon, xs.Constant_Notify_Event_GemSelect);
},
    onExit: function() {
    // source line 166, bytecode pc 12
    this._super();
    // source line 167, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_GemSelect);
},
    setBaseTouchPriority: function(priority) {
    // source line 170, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 171, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 172, bytecode pc 56
    this.first_button.setTouchPriority((this.m_baseTouchPriority - 1));
},
    GetGemIdByLevelAndType: function(level, type) {
    var gems, i, bigGems, threeGems;
    // source line 177, bytecode pc 8
    (gems = []);
    // source line 178, bytecode pc 13
    (i = 0);
    while ((i < this.m_dataGems.length)) {
        if ((this.m_dataGems[i].level == level)) {
            // source line 180, bytecode pc 69
            gems.push(this.m_dataGems[i]);
        }
        // source line 178, bytecode pc 83
        (i = (+i + 1));
    }
    // source line 183, bytecode pc 114
    (bigGems = []);
    // source line 184, bytecode pc 123
    (threeGems = []);
    // source line 186, bytecode pc 128
    (i = 0);
    while ((i < gems.length)) {
        if ((gems[i].type == type)) {
            // source line 188, bytecode pc 168
            (bigGems[0] = gems[i]);
        } else {
            // source line 190, bytecode pc 196
            threeGems.push(gems[i]);
        }
        // source line 186, bytecode pc 210
        (i = (+i + 1));
    }
    // source line 193, bytecode pc 240
    (bigGems[1] = threeGems[0]);
    // source line 194, bytecode pc 252
    (bigGems[2] = threeGems[1]);
    // source line 195, bytecode pc 265
    (bigGems[3] = threeGems[2]);
    // source line 197, bytecode pc 269
    return bigGems;
},
    OneStepComposeCallBack: function() {
    if (this.m_canCompose) {
        // source line 230, bytecode pc 159
        (this._dialog2 = xs.Views.Dialog.createTwoButtonDialog("GemsOneStepTitle", "GemsOneStepPrompt", xs.Tools.String.createString("auto_name_146"), xs.Tools.String.createString("auto_name_76"), function() {
    // source line 207, bytecode pc 33
    xs.Utils.Node.removeFromParentSafe(this._dialog2);
}.bind(this), function() {
    // source line 210, bytecode pc 33
    xs.Utils.Node.removeFromParentSafe(this._dialog2);
    // source line 228, bytecode pc 187
    xs.Tools.Net.requestGemsCompose({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    user_gem_id: this.m_smallgemsID,
    type: Number(this.m_bigGemType),
    multi: 1
}, function(jsonData) {
    if (jsonData.result) {
        // source line 220, bytecode pc 45
        xs.Views.Mgr.showToastByStringKey("gems_str_ComposeOK");
        // source line 221, bytecode pc 58
        this.ClearAllGems();
    }
}, function() {
}, this);
}.bind(this)));
        // source line 238, bytecode pc 264
        xs.Utils.Node.attachNodes(this, this._dialog2, { desc: "lb", offset: { x: (-xs.Views.MainMenuView.Width / 2), y: 0 }, sc: true });
    } else {
        // source line 242, bytecode pc 302
        xs.Views.Mgr.showToastByStringKey("gems_str_NoCompose");
    }
},
    ComposeCallback: function() {
    if (this.m_canCompose) {
        // source line 278, bytecode pc 164
        xs.Tools.Net.requestGemsCompose({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    user_gem_id: this.m_smallgemsID,
    type: Number(this.m_bigGemType),
    multi: 0
}, function(jsonData) {
    var smallGemList;
    if (jsonData.result) {
        // source line 259, bytecode pc 45
        xs.Views.Mgr.showToastByStringKey("gems_str_ComposeOK");
        // source line 260, bytecode pc 58
        this.ClearAllGems();
        if (jsonData.return_info) {
            // source line 264, bytecode pc 94
            (smallGemList = this.ResidueSmallGemCanCompose(this.m_smallgemsID));
            if (smallGemList) {
                // source line 267, bytecode pc 119
                this.ExchangeGemIcon(smallGemList);
            }
        }
    }
}, function() {
}, this);
    } else {
        // source line 281, bytecode pc 202
        xs.Views.Mgr.showToastByStringKey("gems_str_NoCompose");
    }
},
    ResidueSmallGemCanCompose: function(PkId) {
    var smallGemlist, allGemsList, i, num;
    // source line 286, bytecode pc 4
    (smallGemlist = null);
    // source line 287, bytecode pc 55
    (allGemsList = xs.Profile.GameData.Mgr.getInstance().Gems.getAll());
    // source line 289, bytecode pc 60
    (i = 0);
    while ((i < allGemsList.length)) {
        if ((allGemsList[i].pk_id == PkId)) {
            // source line 292, bytecode pc 116
            (num = (allGemsList[i].total_num - allGemsList[i].used_num));
            if ((num >= 3)) {
                // source line 294, bytecode pc 138
                (smallGemlist = allGemsList[i]);
                break;
            }
        }
        // source line 289, bytecode pc 157
        (i = (+i + 1));
    }
    // source line 301, bytecode pc 180
    return smallGemlist;
},
    GemFirstCallBack: function() {
    // source line 306, bytecode pc 32
    xs.Views.Mgr.showDialogByName("AllGemsListDialog");
},
    GemSecondCallBack: function() {
    // source line 310, bytecode pc 32
    xs.Views.Mgr.showDialogByName("AllGemsListDialog");
},
    GemThirdCallBack: function() {
    // source line 313, bytecode pc 32
    xs.Views.Mgr.showDialogByName("AllGemsListDialog");
},
    PullAllGemsByNum: function(gemList) {
    var iconButton_1, iconButton_2, iconButton_3;
    // source line 316, bytecode pc 17
    (iconButton_1 = gemList.createIcon_GradeAndAttribute());
    // source line 317, bytecode pc 52
    iconButton_1.setOnClickCallBack(this.GemFirstCallBack.bind(this));
    // source line 318, bytecode pc 97
    xs.Utils.Node.replaceChildSafe(this.ccbNode, this.m_gem_first, iconButton_1);
    // source line 319, bytecode pc 107
    (this.m_gem_first = iconButton_1);
    // source line 321, bytecode pc 125
    (iconButton_2 = gemList.createIcon_GradeAndAttribute());
    // source line 322, bytecode pc 160
    iconButton_2.setOnClickCallBack(this.GemSecondCallBack.bind(this));
    // source line 323, bytecode pc 205
    xs.Utils.Node.replaceChildSafe(this.ccbNode, this.m_gem_second, iconButton_2);
    // source line 324, bytecode pc 215
    (this.m_gem_second = iconButton_2);
    // source line 326, bytecode pc 233
    (iconButton_3 = gemList.createIcon_GradeAndAttribute());
    // source line 327, bytecode pc 268
    iconButton_3.setOnClickCallBack(this.GemThirdCallBack.bind(this));
    // source line 328, bytecode pc 313
    xs.Utils.Node.replaceChildSafe(this.ccbNode, this.m_gem_third, iconButton_3);
    // source line 329, bytecode pc 323
    (this.m_gem_third = iconButton_3);
},
    ComposeGemIsOk: function() {
    var defaultGemId, iconButton, icon, iconButton_1, icon_1, iconButton_2, icon_2, iconButton_3, icon_3, iconButton_4, icon_4;
    // source line 334, bytecode pc 19
    this.ccbComposeNode.setVisible(true);
    // source line 336, bytecode pc 52
    (this.m_BigGemsList = this.GetGemIdByLevelAndType(this.m_smallGemLevel, this.m_smallGemType));
    // source line 337, bytecode pc 72
    (this.m_bigGemType = this.m_BigGemsList[0].type);
    // source line 340, bytecode pc 106
    (defaultGemId = (Number(this.m_BigGemsList[0].resource_id) + 1));
    // source line 341, bytecode pc 151
    (iconButton = xs.Models.Gems.createWithBase(defaultGemId.toString()));
    // source line 342, bytecode pc 169
    (icon = iconButton.createIcon_GradeAndAttribute());
    // source line 343, bytecode pc 214
    xs.Utils.Node.replaceChildSafe(this.ccbNode, this.m_gem_compose, icon);
    // source line 344, bytecode pc 224
    (this.m_gem_compose = icon);
    // source line 346, bytecode pc 245
    (this.m_firstGemid = defaultGemId.toString());
    // source line 347, bytecode pc 290
    (iconButton_1 = xs.Models.Gems.createWithBase(defaultGemId.toString()));
    // source line 348, bytecode pc 308
    (icon_1 = iconButton_1.createIcon_GradeAndAttribute());
    // source line 349, bytecode pc 343
    icon_1.setOnClickCallBack(this.SelectFirstGem.bind(this));
    // source line 350, bytecode pc 388
    xs.Utils.Node.replaceChildSafe(this.ccbComposeNode, this.m_composeGem_first, icon_1);
    // source line 351, bytecode pc 398
    (this.m_composeGem_first = icon_1);
    // source line 353, bytecode pc 418
    (this.m_SecondGemid = this.m_BigGemsList[1].resource_id);
    // source line 354, bytecode pc 462
    (iconButton_2 = xs.Models.Gems.createWithBase(this.m_BigGemsList[1].resource_id));
    // source line 355, bytecode pc 480
    (icon_2 = iconButton_2.createIcon_GradeAndAttribute());
    // source line 356, bytecode pc 515
    icon_2.setOnClickCallBack(this.SelectSecondGem.bind(this));
    // source line 357, bytecode pc 560
    xs.Utils.Node.replaceChildSafe(this.ccbComposeNode, this.m_composeGem_second, icon_2);
    // source line 358, bytecode pc 570
    (this.m_composeGem_second = icon_2);
    // source line 360, bytecode pc 591
    (this.m_ThirdGemid = this.m_BigGemsList[2].resource_id);
    // source line 361, bytecode pc 636
    (iconButton_3 = xs.Models.Gems.createWithBase(this.m_BigGemsList[2].resource_id));
    // source line 362, bytecode pc 654
    (icon_3 = iconButton_3.createIcon_GradeAndAttribute());
    // source line 363, bytecode pc 689
    icon_3.setOnClickCallBack(this.SelectThirdGem.bind(this));
    // source line 364, bytecode pc 734
    xs.Utils.Node.replaceChildSafe(this.ccbComposeNode, this.m_composeGem_third, icon_3);
    // source line 365, bytecode pc 744
    (this.m_composeGem_third = icon_3);
    // source line 367, bytecode pc 765
    (this.m_FourthGemid = this.m_BigGemsList[3].resource_id);
    // source line 368, bytecode pc 810
    (iconButton_4 = xs.Models.Gems.createWithBase(this.m_BigGemsList[3].resource_id));
    // source line 369, bytecode pc 828
    (icon_4 = iconButton_4.createIcon_GradeAndAttribute());
    // source line 370, bytecode pc 863
    icon_4.setOnClickCallBack(this.SelectFourthGem.bind(this));
    // source line 371, bytecode pc 908
    xs.Utils.Node.replaceChildSafe(this.ccbComposeNode, this.m_composeGem_fourth, icon_4);
    // source line 372, bytecode pc 918
    (this.m_composeGem_fourth = icon_4);
},
    SelectFirstGem: function() {
    var iconButton, icon;
    // source line 377, bytecode pc 19
    (this.m_bigGemType = this.m_BigGemsList[0].type);
    // source line 379, bytecode pc 39
    this.m_IconBg.setVisible(true);
    // source line 380, bytecode pc 75
    this.m_IconBg.setPosition(this.m_composeGem_first.getPosition());
    // source line 382, bytecode pc 112
    (iconButton = xs.Models.Gems.createWithBase(this.m_firstGemid));
    // source line 383, bytecode pc 130
    (icon = iconButton.createIcon_GradeAndAttribute());
    // source line 384, bytecode pc 175
    xs.Utils.Node.replaceChildSafe(this.ccbNode, this.m_gem_compose, icon);
    // source line 385, bytecode pc 185
    (this.m_gem_compose = icon);
},
    SelectSecondGem: function() {
    var iconButton, icon;
    // source line 390, bytecode pc 19
    (this.m_bigGemType = this.m_BigGemsList[1].type);
    // source line 392, bytecode pc 39
    this.m_IconBg.setVisible(true);
    // source line 393, bytecode pc 75
    this.m_IconBg.setPosition(this.m_composeGem_second.getPosition());
    // source line 395, bytecode pc 112
    (iconButton = xs.Models.Gems.createWithBase(this.m_SecondGemid));
    // source line 396, bytecode pc 130
    (icon = iconButton.createIcon_GradeAndAttribute());
    // source line 397, bytecode pc 175
    xs.Utils.Node.replaceChildSafe(this.ccbNode, this.m_gem_compose, icon);
    // source line 398, bytecode pc 185
    (this.m_gem_compose = icon);
},
    SelectThirdGem: function() {
    var iconButton, icon;
    // source line 403, bytecode pc 20
    (this.m_bigGemType = this.m_BigGemsList[2].type);
    // source line 405, bytecode pc 40
    this.m_IconBg.setVisible(true);
    // source line 406, bytecode pc 76
    this.m_IconBg.setPosition(this.m_composeGem_third.getPosition());
    // source line 408, bytecode pc 113
    (iconButton = xs.Models.Gems.createWithBase(this.m_ThirdGemid));
    // source line 409, bytecode pc 131
    (icon = iconButton.createIcon_GradeAndAttribute());
    // source line 410, bytecode pc 176
    xs.Utils.Node.replaceChildSafe(this.ccbNode, this.m_gem_compose, icon);
    // source line 411, bytecode pc 186
    (this.m_gem_compose = icon);
},
    SelectFourthGem: function() {
    var iconButton, icon;
    // source line 416, bytecode pc 20
    (this.m_bigGemType = this.m_BigGemsList[3].type);
    // source line 418, bytecode pc 40
    this.m_IconBg.setVisible(true);
    // source line 419, bytecode pc 76
    this.m_IconBg.setPosition(this.m_composeGem_fourth.getPosition());
    // source line 421, bytecode pc 113
    (iconButton = xs.Models.Gems.createWithBase(this.m_FourthGemid));
    // source line 422, bytecode pc 131
    (icon = iconButton.createIcon_GradeAndAttribute());
    // source line 423, bytecode pc 176
    xs.Utils.Node.replaceChildSafe(this.ccbNode, this.m_gem_compose, icon);
    // source line 424, bytecode pc 186
    (this.m_gem_compose = icon);
},
    ClearGems: function() {
    var jiahaoIcon;
    // source line 429, bytecode pc 19
    this.ccbComposeNode.setVisible(false);
    // source line 430, bytecode pc 61
    (jiahaoIcon = xs.Factorys.Sprite.create("gemsScene_wenhao1", "GemsScene"));
    // source line 431, bytecode pc 106
    xs.Utils.Node.replaceChildSafe(this.ccbNode, this.m_gem_compose, jiahaoIcon);
    // source line 432, bytecode pc 116
    (this.m_gem_compose = jiahaoIcon);
},
    ClearAllGems: function() {
    var jiahaoIcon, iconButton_1, iconButton_2, iconButton_3;
    // source line 438, bytecode pc 19
    this.ccbComposeNode.setVisible(false);
    // source line 439, bytecode pc 61
    (jiahaoIcon = xs.Factorys.Sprite.create("gemsScene_wenhao1", "GemsScene"));
    // source line 440, bytecode pc 106
    xs.Utils.Node.replaceChildSafe(this.ccbNode, this.m_gem_compose, jiahaoIcon);
    // source line 441, bytecode pc 116
    (this.m_gem_compose = jiahaoIcon);
    // source line 443, bytecode pc 158
    (iconButton_1 = xs.Factorys.Sprite.create("gemsScene_jiahao", "GemsScene"));
    // source line 444, bytecode pc 203
    xs.Utils.Node.replaceChildSafe(this.ccbNode, this.m_gem_first, iconButton_1);
    // source line 445, bytecode pc 213
    (this.m_gem_first = iconButton_1);
    // source line 446, bytecode pc 253
    (this.first_button = xs.Views.Btn.createInvisibleWithParent(this.m_gem_first));
    // source line 447, bytecode pc 291
    this.first_button.setOnClickCallBack(this.GemFirstCallBack.bind(this));
    // source line 449, bytecode pc 333
    (iconButton_2 = xs.Factorys.Sprite.create("gemsScene_jiahao", "GemsScene"));
    // source line 450, bytecode pc 378
    xs.Utils.Node.replaceChildSafe(this.ccbNode, this.m_gem_second, iconButton_2);
    // source line 451, bytecode pc 388
    (this.m_gem_second = iconButton_2);
    // source line 452, bytecode pc 428
    (this.second_button = xs.Views.Btn.createInvisibleWithParent(this.m_gem_second));
    // source line 453, bytecode pc 466
    this.second_button.setOnClickCallBack(this.GemSecondCallBack.bind(this));
    // source line 455, bytecode pc 508
    (iconButton_3 = xs.Factorys.Sprite.create("gemsScene_jiahao", "GemsScene"));
    // source line 456, bytecode pc 553
    xs.Utils.Node.replaceChildSafe(this.ccbNode, this.m_gem_third, iconButton_3);
    // source line 457, bytecode pc 563
    (this.m_gem_third = iconButton_3);
    // source line 458, bytecode pc 603
    (this.third_button = xs.Views.Btn.createInvisibleWithParent(this.m_gem_third));
    // source line 459, bytecode pc 641
    this.third_button.setOnClickCallBack(this.GemThirdCallBack.bind(this));
    // source line 461, bytecode pc 661
    this.m_ComposeBtn.setEnabled(false);
    // source line 462, bytecode pc 681
    this.m_oneStepComposeBtn.setEnabled(false);
    // source line 463, bytecode pc 689
    (this.m_canCompose = false);
},
    ExchangeGemIcon: function(data) {
    var gemList;
    // source line 467, bytecode pc 6
    (gemList = data);
    // source line 469, bytecode pc 21
    (this.m_smallgemsID = gemList.pk_id);
    // source line 471, bytecode pc 41
    (this.m_smallGemType = gemList.baseDataRef.type);
    // source line 472, bytecode pc 61
    (this.m_smallGemLevel = gemList.baseDataRef.level);
    // source line 474, bytecode pc 74
    this.ClearGems();
    // source line 475, bytecode pc 91
    this.PullAllGemsByNum(gemList);
    // source line 476, bytecode pc 111
    this.m_ComposeBtn.setEnabled(true);
    // source line 477, bytecode pc 131
    this.m_oneStepComposeBtn.setEnabled(true);
    // source line 478, bytecode pc 139
    (this.m_canCompose = true);
    // source line 480, bytecode pc 159
    this.m_IconBg.setVisible(true);
    // source line 481, bytecode pc 195
    this.m_IconBg.setPosition(this.m_composeGem_first.getPosition());
    // source line 483, bytecode pc 208
    this.ComposeGemIsOk();
}
}));
// source line 488, bytecode pc 481
(xs.Views.GemsComposeView.create = function() {
    var ret;
    // source line 489, bytecode pc 23
    (ret = new xs.Views.GemsComposeView());
    if ((ret && ret.init())) {
        // source line 491, bytecode pc 55
        return ret;
    }
    // source line 493, bytecode pc 57
    return null;
});
