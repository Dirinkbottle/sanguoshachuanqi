// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Tools/UI.js:1
// source line 9, bytecode pc 42
(xs.Tools.UI = (xs.Tools.UI || {}));
// source line 12, bytecode pc 68
(xs.Tools.UI.addCommonBg = function(father, hasContent, isContentHigher) {
    // source line 13, bytecode pc 41
    xs.Tools.UI.addBgByType(father, xs.Constant_BgType_Cmn);
    if ((hasContent === true)) {
        // source line 15, bytecode pc 86
        xs.Tools.UI.addContentBg(father, isContentHigher);
    }
});
// source line 21, bytecode pc 94
(xs.Tools.UI.addIndexBgSprite = function(parent) {
    var date, hour, _fileName, _bgView, scaleBg;
    // source line 23, bytecode pc 13
    (date = new Date());
    // source line 24, bytecode pc 31
    (hour = date.getHours());
    if (((hour >= 5) && (hour < 17))) {
        // source line 28, bytecode pc 92
        (_fileName = xs.Cfg.Sprite.Single01.MainMorning_bg.fileName);
    } else {
        if (((hour >= 17) && (hour < 19))) {
            // source line 30, bytecode pc 154
            (_fileName = xs.Cfg.Sprite.Single01.MainNightfall_bg.fileName);
        } else {
            // source line 32, bytecode pc 193
            (_fileName = xs.Cfg.Sprite.Single01.MainNight_bg.fileName);
        }
    }
    // source line 35, bytecode pc 227
    (_bgView = xs.Factorys.Sprite.createWithFileName(_fileName));
    // source line 37, bytecode pc 254
    (scaleBg = (1136 / _bgView.getContentSize().width));
    // source line 38, bytecode pc 273
    _bgView.setScale(scaleBg);
    // source line 39, bytecode pc 299
    _bgView.setAnchorPoint(xs.ap_bc);
    // source line 46, bytecode pc 378
    xs.Utils.Node.attachNodes(parent, _bgView, { desc: "bc", offset: { y: -347 }, sc: true });
    // source line 49, bytecode pc 382
    return _bgView;
});
// source line 52, bytecode pc 120
(xs.Tools.UI.addLoadingLayer = function(father) {
    var loadingLayer;
    // source line 54, bytecode pc 48
    (loadingLayer = father.getChildByTag(xs.Cfg.Scene.CommonScene.Loading.tag));
    if (!loadingLayer) {
        // source line 57, bytecode pc 113
        (loadingLayer = xs.Views.Mgr._getCmnViewByType(xs.Views.Mgr.Const.Type_CmnView_LoadingLayer));
        // source line 58, bytecode pc 152
        xs.Utils.Node.attachNodes(father, loadingLayer, null, null);
    }
    // source line 65, bytecode pc 169
    loadingLayer.setVisible(false);
});
// source line 68, bytecode pc 146
(xs.Tools.UI.addShortcutBoard = function(parentNode, isBack, cfgObj) {
    var mainMenu;
    // source line 72, bytecode pc 4
    (mainMenu = null);
    if (isBack) {
        // source line 74, bytecode pc 42
        (mainMenu = xs.Views.MainMenuView.createWithBack());
    } else {
        // source line 76, bytecode pc 77
        (mainMenu = xs.Views.MainMenuView.createWithIndex());
    }
    // source line 78, bytecode pc 113
    mainMenu.setAnchorPoint(cc.p(1, 0));
    // source line 82, bytecode pc 175
    xs.Utils.Node.attachNodes(parentNode, mainMenu, { desc: "rb", sc: true }, cfgObj);
    // source line 83, bytecode pc 179
    return mainMenu;
});
// source line 89, bytecode pc 172
(xs.Tools.UI.addTransparentBg = function(father) {
    var bgLayer;
    // source line 94, bytecode pc 60
    (bgLayer = cc.LayerColor.create({ r: 10, g: 10, b: 10, a: 200 }));
    // source line 96, bytecode pc 96
    bgLayer.setAnchorPoint(cc.p(0, 0));
    // source line 97, bytecode pc 131
    xs.Utils.Node.attachNodes(father, bgLayer);
    // source line 98, bytecode pc 135
    return bgLayer;
});
// source line 119, bytecode pc 198
(xs.Tools.UI.addBgByType = function(parent, type) {
    var _fileName, _bgView;
    // source line 124, bytecode pc 8
    (_fileName = "scene_bg/cmn_bg.png");
    // source line 126, bytecode pc 12
    switch (type) {
        default:
        // source line 128, bytecode pc 385
        this.error(("addBgByType error:" + type));
        // source line 129, bytecode pc 394
        (_fileName = "scene_bg/worldboss_bg.png");
        break;
        case xs.Constant_BgType_Cmn:
        // source line 132, bytecode pc 408
        (_fileName = "scene_bg/cmn_bg.png");
        break;
        case xs.Constant_BgType_WorldBoss:
        // source line 135, bytecode pc 422
        (_fileName = "scene_bg/worldboss_bg.png");
        break;
        case xs.Constant_BgType_Fight_Copy:
        // source line 138, bytecode pc 436
        (_fileName = "scene_bg/copy_bg.png");
        break;
        case xs.Constant_BgType_Climp:
        // source line 141, bytecode pc 450
        (_fileName = "scene_bg/climp_bg.png");
        break;
        case xs.Constant_BgType_Toast:
        // source line 144, bytecode pc 464
        (_fileName = "scene_bg/toast_bg.png");
        break;
        case xs.Constant_BgType_Training:
        // source line 147, bytecode pc 478
        (_fileName = "scene_bg/training_bg.png");
        break;
        case xs.Constant_BgType_Develop:
        // source line 150, bytecode pc 492
        (_fileName = "scene_bg/develop_bg.png");
        break;
        case xs.Constant_BgType_ChooseGirl:
        // source line 153, bytecode pc 506
        (_fileName = "scene_bg/ChooseRole_bg.png");
        break;
        case xs.Constant_BgType_Team:
        // source line 156, bytecode pc 520
        (_fileName = "scene_bg/team_bg.png");
        break;
        case xs.Constant_BgType_Ladder:
        // source line 159, bytecode pc 534
        (_fileName = "scene_bg/ladder_bg.png");
        break;
        case xs.Constant_BgType_InterServiceFight:
        // source line 162, bytecode pc 548
        (_fileName = "map_bg/930004.png");
        break;
        case xs.Constant_BgType_Chaos:
        // source line 165, bytecode pc 562
        (_fileName = "map_bg/920008.png");
        break;
        case xs.Constant_BgType_Fight_Chaos:
        // source line 169, bytecode pc 576
        (_fileName = "map_bg/930004.png");
        break;
        case xs.Constant_BgType_Fight_Climp:
        // source line 172, bytecode pc 590
        (_fileName = "map_bg/930002.png");
        break;
        case xs.Constant_BgType_Fight_WorldBoss:
        // source line 175, bytecode pc 604
        (_fileName = "map_bg/930003.png");
        break;
        case xs.Constant_BgType_Fight_NewPlayer:
        // source line 178, bytecode pc 618
        (_fileName = "map_bg/920010.png");
        break;
        case xs.Constant_BgType_Fight_Ladder:
        // source line 181, bytecode pc 632
        (_fileName = "map_bg/930001.png");
        break;
        case xs.Constant_BgType_Fight_NewPlayer_New:
        // source line 184, bytecode pc 646
        (_fileName = "map_bg/920009.png");
        break;
        case xs.Constant_BgType_MeridiansMainView_Bg:
        // source line 187, bytecode pc 660
        (_fileName = "scene_bg/jingmai_bg.png");
        break;
        case xs.Constant_BgType_Fight_PlantCopy:
        // source line 190, bytecode pc 674
        (_fileName = "map_bg/920001.png");
        break;
        case xs.Constant_BgType_AwakeBox:
        // source line 193, bytecode pc 688
        (_fileName = "scene_bg/juexingbaoxiang_bg.png");
        break;
        case xs.Constant_BgType_TuTeng:
        // source line 196, bytecode pc 702
        (_fileName = "scene_bg/tuteng_bg.png");
        break;
        case xs.Constant_BgType_Beauty:
        // source line 199, bytecode pc 716
        (_fileName = "map_bg/920003.png");
        break;
    }
    // source line 204, bytecode pc 755
    (_bgView = xs.Factorys.Sprite.createWithFileName(_fileName));
    // source line 206, bytecode pc 790
    xs.Tools.UI.addSpriteAsBg(parent, _bgView);
    // source line 208, bytecode pc 794
    return _bgView;
});
// source line 213, bytecode pc 224
(xs.Tools.UI.addSpriteAsBg = function(parent, sprite) {
    var scaleBg;
    // source line 214, bytecode pc 26
    (scaleBg = (1136 / sprite.getContentSize().width));
    // source line 226, bytecode pc 45
    sprite.setScale(scaleBg);
    // source line 229, bytecode pc 103
    xs.Utils.Node.attachNodes(parent, sprite, { desc: "c", sc: true });
});
// source line 234, bytecode pc 250
(xs.Tools.UI.addChapterBg = function(parent, bgSprite) {
    // source line 235, bytecode pc 38
    bgSprite.setScale((1136 / bgSprite.getContentSize().width));
    // source line 236, bytecode pc 78
    bgSprite.setAnchorPoint(cc.p(0.5, 1));
    // source line 239, bytecode pc 136
    xs.Utils.Node.attachNodes(parent, bgSprite, { desc: "ct", sc: true });
});
// source line 244, bytecode pc 276
(xs.Tools.UI.addContentBg = function(father, isContentHigher) {
    var visibleSize, visibleOrigin, higher, cbg, dimian, dmSize, dmScale;
    // source line 245, bytecode pc 24
    (visibleSize = xs.director.getVisibleSize());
    // source line 246, bytecode pc 49
    (visibleOrigin = xs.director.getVisibleOrigin());
    // source line 248, bytecode pc 54
    (higher = 0);
    if ((isContentHigher === true)) {
        // source line 250, bytecode pc 70
        (higher = 30);
    }
    // source line 254, bytecode pc 126
    (cbg = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.bg_dimian_bg.frameName));
    // source line 255, bytecode pc 184
    cbg.setPreferredSize(cc.size(visibleSize.width, ((visibleSize.height - 150) + higher)));
    // source line 257, bytecode pc 268
    cbg.setPosition(cc.p((visibleOrigin.x + (visibleSize.width / 2)), (((visibleOrigin.y + (visibleSize.height / 2)) - 55) + (higher / 2))));
    // source line 258, bytecode pc 287
    father.addChild(cbg);
    // source line 261, bytecode pc 343
    (dimian = cc.Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.bg_dimian.frameName));
    // source line 262, bytecode pc 361
    (dmSize = dimian.getContentSize());
    // source line 263, bytecode pc 382
    (dmScale = (visibleSize.width / dmSize.width));
    // source line 264, bytecode pc 401
    dimian.setScaleX(dmScale);
    // source line 266, bytecode pc 479
    dimian.setPosition(cc.p((visibleOrigin.x + (visibleSize.width / 2)), (((visibleOrigin.y + visibleSize.height) - 120) + higher)));
    // source line 267, bytecode pc 498
    father.addChild(dimian);
    // source line 270, bytecode pc 554
    (dimian = cc.Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.bg_dimian.frameName));
    // source line 272, bytecode pc 572
    (dmSize = dimian.getContentSize());
    // source line 273, bytecode pc 593
    (dmScale = (visibleSize.width / dmSize.width));
    // source line 274, bytecode pc 612
    dimian.setScaleX(dmScale);
    // source line 276, bytecode pc 677
    dimian.setPosition(cc.p((visibleOrigin.x + (visibleSize.width / 2)), (visibleOrigin.y + 30)));
    // source line 277, bytecode pc 696
    father.addChild(dimian);
});
// source line 280, bytecode pc 302
(xs.Tools.UI.removeOut = function(node) {
    var pos;
    // source line 281, bytecode pc 16
    node.setVisible(false);
    // source line 282, bytecode pc 34
    (pos = node.getPosition());
    // source line 283, bytecode pc 88
    node.setPosition(cc.p((pos.x - 1136), pos.y));
});
// source line 285, bytecode pc 328
(xs.Tools.UI.removeIn = function(node) {
    var pos;
    // source line 286, bytecode pc 16
    node.setVisible(true);
    // source line 287, bytecode pc 34
    (pos = node.getPosition());
    // source line 288, bytecode pc 88
    node.setPosition(cc.p((pos.x + 1136), pos.y));
});
// source line 292, bytecode pc 354
(xs.Tools.UI.setButtonTitle = function(button, title) {
    var _stateArr, i;
    if (!title) {
        // source line 294, bytecode pc 17
        (title = "Undefine");
    }
    // source line 299, bytecode pc 68
    (_stateArr = [ cc.CONTROL_STATE_NORMAL, cc.CONTROL_STATE_HIGHLIGHTED, cc.CONTROL_STATE_DISABLED ]);
    // source line 301, bytecode pc 73
    (i = 0);
    while ((i < _stateArr.length)) {
        // source line 302, bytecode pc 106
        button.setTitleForState(title, _stateArr[i]);
        // source line 301, bytecode pc 120
        (i = (+i + 1));
    }
});
// source line 307, bytecode pc 380
(xs.Tools.UI.getAttrIconSprite = function(attrFiled) {
    var spriteName;
    // source line 308, bytecode pc 8
    (spriteName = "");
    // source line 309, bytecode pc 12
    switch (attrFiled) {
        case "attr_hp":
        // source line 311, bytecode pc 66
        (spriteName = "Cmn01_xue1.png");
        break;
        case "attr_attack":
        // source line 314, bytecode pc 80
        (spriteName = "Cmn01_gong1.png");
        break;
        case "attr_defense":
        // source line 317, bytecode pc 94
        (spriteName = "Cmn01_fang1.png");
        break;
        case "attr_wisdom":
        // source line 320, bytecode pc 108
        (spriteName = "Cmn01_zhi1.png");
        break;
        default:
        break;
    }
    // source line 323, bytecode pc 139
    return cc.Sprite.createWithSpriteFrameName(spriteName);
});
// source line 327, bytecode pc 406
(xs.Tools.UI.getArrowIcon = function(bRise) {
    var spriteName;
    // source line 328, bytecode pc 8
    (spriteName = "");
    if (bRise) {
        // source line 330, bytecode pc 25
        (spriteName = "Cmn01_upup.png");
    } else {
        // source line 332, bytecode pc 39
        (spriteName = "Cmn01_down.png");
    }
    // source line 334, bytecode pc 65
    return cc.Sprite.createWithSpriteFrameName(spriteName);
});
// source line 339, bytecode pc 432
(xs.Tools.UI.createGradeSmallIcon = function(grade) {
    var icon;
    // source line 341, bytecode pc 54
    (icon = xs.Factorys.Sprite.create("Cmn02_quality", "Cmn02", [ grade ]));
    // source line 342, bytecode pc 75
    icon.setScale(0.7);
    // source line 344, bytecode pc 79
    return icon;
});
// source line 350, bytecode pc 458
(xs.Tools.UI.createEffectTypeSmallIcon = function(type) {
    var name;
    // source line 351, bytecode pc 4
    (name = null);
    // source line 352, bytecode pc 8
    switch (type) {
        case xs.Constant_AttrType_Atk:
        // source line 355, bytecode pc 97
        (name = "icon_atk1");
        break;
        case xs.Constant_AttrType_Def:
        // source line 360, bytecode pc 111
        (name = "icon_def1");
        break;
        case xs.Constant_AttrType_Hp:
        // source line 365, bytecode pc 125
        (name = "icon_hp1");
        break;
        case xs.Constant_AttrType_Int:
        // source line 370, bytecode pc 139
        (name = "icon_int1");
        break;
        case xs.Constant_AttrType_FightPoint:
        // source line 375, bytecode pc 153
        (name = "icon_zhan1");
        break;
        default:
        // source line 380, bytecode pc 187
        this.error((("equipment type : " + type) + "Error!"));
        break;
    }
    // source line 383, bytecode pc 224
    return xs.Factorys.Sprite.create(name, "Cmn01");
});
// source line 388, bytecode pc 484
(xs.Tools.UI.createOrbitSmallIcon = function(orbit) {
    // source line 389, bytecode pc 42
    return xs.Factorys.Sprite.create(("Cmn02_country_" + orbit), "Cmn02");
});
// source line 394, bytecode pc 510
(xs.Tools.UI.changeLabelVertical = function(label, params) {
    var _styleID, _labelTtf, _oldSize, _newSize, _addSize;
    // source line 395, bytecode pc 22
    (_styleID = (params.styleString || "LS_wujiangInf2"));
    // source line 396, bytecode pc 56
    (_labelTtf = xs.Factorys.Label.createByStyleId(_styleID));
    if (params.width) {
        // source line 398, bytecode pc 112
        _labelTtf.setDimensions(cc.size(params.width, 0));
    } else {
        // source line 401, bytecode pc 171
        _labelTtf.setDimensions(cc.size(label.getContentSize().width, 0));
    }
    // source line 403, bytecode pc 201
    _labelTtf.setString(label.getString());
    // source line 405, bytecode pc 219
    (_oldSize = label.getContentSize());
    // source line 406, bytecode pc 237
    (_newSize = _labelTtf.getContentSize());
    if ((_oldSize.height >= _newSize.height)) {
        // source line 408, bytecode pc 280
        return cc.size(0, 0);
    }
    // source line 411, bytecode pc 299
    label.setContentSize(_newSize);
    // source line 412, bytecode pc 318
    label.setDimensions(_newSize);
    // source line 416, bytecode pc 358
    (_addSize = cc.size(0, (_newSize.height - _oldSize.height)));
    // source line 418, bytecode pc 362
    return _addSize;
});
// source line 421, bytecode pc 536
(xs.Tools.UI.ShowObjProperty = function(Obj) {
    var PropertyList, PropertyCount;
    // source line 422, bytecode pc 8
    (PropertyList = "");
    // source line 423, bytecode pc 13
    (PropertyCount = 0);
    for (var i in Obj) {
        if ((typeof(Obj[i]) != "function")) {
            // source line 426, bytecode pc 121
            (PropertyList = ((((PropertyList + i) + xs.Tools.String.createString("auto_name_233")) + Obj[i]) + "\r\n"));
        } else {
            // source line 428, bytecode pc 172
            (PropertyList = ((PropertyList + i) + xs.Tools.String.createString("auto_name_234")));
        }
    }
    // source line 431, bytecode pc 207
    xs.log(("ShowObjProperty\r\n " + PropertyList));
});
// source line 436, bytecode pc 562
(xs.Tools.UI.showDropItemDetail = function(dropItem) {
    var refGeneral;
    // source line 437, bytecode pc 8
    switch (dropItem.type) {
        case xs.Constant_AddType_General:
        // source line 441, bytecode pc 131
        xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: dropItem, type: "achieve_nothave" });
        break;
        case xs.Constant_AddType_GeneralSoul:
        // source line 445, bytecode pc 181
        (refGeneral = xs.Models.General.createWithBase(dropItem.getId()));
        // source line 448, bytecode pc 239
        xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: refGeneral, type: "achieve_nothave" });
        break;
        case xs.Constant_AddType_Equipment:
        // source line 454, bytecode pc 298
        xs.Views.Mgr.showDialogByName("DetailDialogEquip", { equipData: dropItem, flag: false });
        break;
        case xs.Constant_AddType_Skill:
        // source line 460, bytecode pc 357
        xs.Views.Mgr.showDialogByName("DetailDialogSkill", { skillData: dropItem, flag: false });
        break;
        default:
        break;
    }
});
// source line 466, bytecode pc 588
(xs.Tools.UI.deleteBlankSpace = function(str) {
    var _text;
    // source line 467, bytecode pc 17
    (_text = (str || ""));
    if ((_text != "")) {
        /* TODO_BYTECODE pc=43 opcode=regexp reason=regexp_object_literal_not_dumped */
        // source line 469, bytecode pc 61
        (_text = str.replace(undefined /* TODO_BYTECODE pc=43 opcode=regexp reason=regexp_object_literal_not_dumped */, ""));
    }
    // source line 471, bytecode pc 65
    return _text;
});
// source line 475, bytecode pc 614
(xs.Tools.UI.FilteringSensitiveWords = function(str) {
    var _text, preErect, _foundString, _resultString, _flag, _reg, _replaceText, i;
    // source line 476, bytecode pc 26
    xs.log(("xs.Tools.UI.FilteringSensitiveWords " + str));
    if ((xs.dog_check === true)) {
        // source line 479, bytecode pc 47
        return str;
    }
    // source line 481, bytecode pc 81
    (_text = xs.Tools.UI.deleteBlankSpace(str));
    if ((_text.length == 0)) {
        // source line 482, bytecode pc 100
        return _text;
    }
    // source line 484, bytecode pc 115
    (preErect = function(mStr) {
    var ret;
    // source line 485, bytecode pc 6
    (ret = mStr);
    if ((mStr.charAt(0) == "|")) {
        // source line 487, bytecode pc 62
        (ret = mStr.substring(1, mStr.length));
        // source line 488, bytecode pc 81
        return preErect(ret);
    } else {
        if ((mStr.charAt(0) == "")) {
            // source line 490, bytecode pc 115
            return null;
        }
    }
    // source line 492, bytecode pc 119
    return ret;
});
    // source line 494, bytecode pc 137
    (_text = preErect(_text));
    // source line 495, bytecode pc 211
    (_foundString = xs.JsbConnecter.getInstance().invoke("Trie", "queryString", xs.Utils.parseStringSafe(_text)));
    // source line 496, bytecode pc 220
    (_resultString = "");
    // source line 497, bytecode pc 225
    (_flag = false);
    while ((_foundString && (_foundString.length > 0))) {
        // source line 499, bytecode pc 236
        (_flag = true);
        // source line 500, bytecode pc 260
        (_reg = new RegExp(_foundString, "g"));
        // source line 501, bytecode pc 269
        (_replaceText = "？");
        // source line 502, bytecode pc 283
        (i = (_foundString.length - 1));
        while ((i >= 0)) {
            // source line 503, bytecode pc 302
            (_replaceText = (_replaceText + "？"));
            // source line 502, bytecode pc 316
            (i = (+i - 1));
        }
        // source line 505, bytecode pc 354
        (_text = _text.replace(_reg, _replaceText));
        // source line 506, bytecode pc 381
        xs.log(("替换后的字符串为：" + _text));
        // source line 507, bytecode pc 455
        (_foundString = xs.JsbConnecter.getInstance().invoke("Trie", "queryString", xs.Utils.parseStringSafe(_text)));
    }
    // source line 509, bytecode pc 487
    (_resultString = _text);
    if ((_flag == true)) {
        // source line 511, bytecode pc 557
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_235"));
    }
    // source line 513, bytecode pc 584
    xs.log(("xs.Tools.UI.FilteringSensitiveWords end " + _resultString));
    // source line 514, bytecode pc 588
    return _resultString;
});
// source line 517, bytecode pc 640
(xs.Tools.UI.IsHaveSensitiveWords = function(str) {
    var _text, preErect, _foundString, _resultString, _flag, _reg, _replaceText, i;
    // source line 518, bytecode pc 26
    xs.log(("xs.Tools.UI.IsHaveSensitiveWords " + str));
    // source line 520, bytecode pc 44
    (_text = (str || ""));
    if ((_text.length == 0)) {
        // source line 521, bytecode pc 63
        return _text;
    }
    // source line 524, bytecode pc 78
    (preErect = function(mStr) {
    var ret;
    // source line 525, bytecode pc 6
    (ret = mStr);
    if ((mStr.charAt(0) == "|")) {
        // source line 527, bytecode pc 62
        (ret = mStr.substring(1, mStr.length));
        // source line 528, bytecode pc 81
        return preErect(ret);
    } else {
        if ((mStr.charAt(0) == "")) {
            // source line 530, bytecode pc 115
            return null;
        }
    }
    // source line 532, bytecode pc 119
    return ret;
});
    // source line 534, bytecode pc 100
    (_text = preErect(_text));
    // source line 536, bytecode pc 174
    (_foundString = xs.JsbConnecter.getInstance().invoke("Trie", "queryString", xs.Utils.parseStringSafe(_text)));
    // source line 537, bytecode pc 183
    (_resultString = "");
    // source line 538, bytecode pc 188
    (_flag = false);
    while ((_foundString && (_foundString.length > 0))) {
        // source line 540, bytecode pc 199
        (_flag = true);
        // source line 541, bytecode pc 223
        (_reg = new RegExp(_foundString, "g"));
        // source line 542, bytecode pc 232
        (_replaceText = "？");
        // source line 543, bytecode pc 246
        (i = (_foundString.length - 1));
        while ((i >= 0)) {
            // source line 544, bytecode pc 265
            (_replaceText = (_replaceText + "？"));
            // source line 543, bytecode pc 279
            (i = (+i - 1));
        }
        // source line 546, bytecode pc 317
        (_text = _text.replace(_reg, _replaceText));
        // source line 547, bytecode pc 344
        xs.log(("替换后的字符串为：" + _text));
        // source line 548, bytecode pc 418
        (_foundString = xs.JsbConnecter.getInstance().invoke("Trie", "queryString", xs.Utils.parseStringSafe(_text)));
    }
    // source line 550, bytecode pc 450
    (_resultString = _text);
    if ((_flag == true)) {
    }
    // source line 556, bytecode pc 464
    return _flag;
});
// source line 560, bytecode pc 666
(xs.Tools.UI.generalHintIcon = function(hintNum) {
    var iconBg, numSprite;
    if ((hintNum > 99)) {
        // source line 562, bytecode pc 46
        (hintNum = xs.Tools.String.createString("str_Store_moat"));
    }
    // source line 565, bytecode pc 88
    (iconBg = xs.Factorys.Sprite.create("Cmn01_Hint_NumBg", "Cmn01"));
    // source line 566, bytecode pc 128
    (numSprite = xs.Factorys.Label.createByStyleIdWithString("LS_cardLv", hintNum));
    // source line 568, bytecode pc 180
    xs.Utils.Node.attachNodes(iconBg, numSprite, { desc: "c" });
    // source line 570, bytecode pc 184
    return iconBg;
});
// source line 574, bytecode pc 692
(xs.Tools.UI.showGoldNotEnough = function() {
    var dialog;
    if ((xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getChargeCount() > 0)) {
        // source line 584, bytecode pc 221
        (dialog = xs.Views.Mgr.showDialogByName("common", {
    title: "1070910046",
    content: "1070910046",
    leftText: xs.Tools.String.createString("1070610006"),
    rightText: xs.Tools.String.createString("1070610022"),
    leftCB: function() {
    // source line 582, bytecode pc 26
    xs.Views.Mgr.hideDialog();
},
    rightCB: function() {
    // source line 585, bytecode pc 32
    xs.Views.Mgr.showDialogByName("ChargeDialog");
}
}));
        // source line 587, bytecode pc 239
        (dialog = dialog.getRealDialog());
        // source line 588, bytecode pc 287
        dialog.setContentText(xs.Tools.String.createString("auto_name_236"));
        // source line 589, bytecode pc 335
        dialog.setTitleByString(xs.Tools.String.createString("auto_name_237"));
    } else {
        // source line 591, bytecode pc 386
        xs.Views.Mgr.showDialogByName("FirstChargeDialog", { fromGoldNotEnough: true });
    }
});
// source line 596, bytecode pc 718
(xs.Tools.UI.getObjectByLsName = function(lsName) {
    var lsObject, ttfConfigObject;
    // source line 598, bytecode pc 27
    (lsObject = xs.Cfg.System.sgs_config_ls[lsName]);
    if (lsObject.fontId) {
        // source line 601, bytecode pc 73
        (ttfConfigObject = xs.Cfg.System.sgs_config_ttf[lsObject.fontId]);
        // source line 603, bytecode pc 77
        return ttfConfigObject;
    }
    // source line 605, bytecode pc 79
    return null;
});
