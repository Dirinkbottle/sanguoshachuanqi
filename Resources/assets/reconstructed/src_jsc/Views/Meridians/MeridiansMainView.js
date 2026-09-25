// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Meridians/MeridiansMainView.js:1
// source line 524, bytecode pc 1546
(xs.Views.MeridiansMainView = cc.Layer.extend({
    name: "xs.Views.MeridiansMainView",
    ctor: function() {
    // source line 7, bytecode pc 12
    this._super();
    // source line 8, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    ccbCfg: [
        { tag: 3, type: "ls", name: "m_meridiansName", id: "LS_chooseServer", zOrder: 2 },
        { tag: 4, type: "ls", name: "m_meridiansEffect", id: "LS_fightUI1", zOrder: 2 },
        { tag: 25, type: "ls", name: "m_meridiansHaved", id: "LS_piaozi", zOrder: 3 },
        { tag: 26, type: "ls", name: "m_meridiansNow", id: "LS_piaozi", zOrder: 3 },
        { tag: 27, type: "ls", name: "m_meridiansWillHave", id: "LS_piaozi", zOrder: 3 },
        { tag: 29, type: "ls", name: "m_nowEffect", id: "LS_Lv", zOrder: 2 },
        { tag: 7, type: "ls", name: "m_xue", id: "LS_mainUI4", zOrder: 3 },
        { tag: 9, type: "ls", name: "m_gong", id: "LS_mainUI4", zOrder: 3 },
        { tag: 11, type: "ls", name: "m_fang", id: "LS_mainUI4", zOrder: 3 },
        { tag: 13, type: "ls", name: "m_zhi", id: "LS_mainUI4", zOrder: 3 },
        { tag: 14, type: "ls", id: "LS_EXPInf", stringId: "MeridiansMain_2", zOrder: 2 },
        { tag: 17, type: "ls", id: "LS_EXPInf", stringId: "MeridiansMain_3", zOrder: 2 },
        { tag: 16, type: "ls", name: "m_useMeridians", id: "LS_Lv", zOrder: 2 },
        { tag: 19, type: "ls", name: "m_haveMeridians", id: "LS_Lv", zOrder: 2 },
        { tag: 32, type: "ls", name: "m_oneLayer", id: "LS_zhanchang_zi2" },
        { tag: 34, type: "ls", name: "m_oneLayer", id: "LS_zhanchang_zi2" },
        { tag: 36, type: "ls", name: "m_oneLayer", id: "LS_zhanchang_zi2" },
        { tag: 38, type: "ls", name: "m_oneLayer", id: "LS_zhanchang_zi2" },
        { tag: 40, type: "ls", name: "m_oneLayer", id: "LS_zhanchang_zi2" },
        { tag: 42, type: "ls", name: "m_oneLayer", id: "LS_zhanchang_zi2" },
        { tag: 44, type: "ls", name: "m_oneLayer", id: "LS_zhanchang_zi2" },
        { tag: 46, type: "ls", name: "m_oneLayer", id: "LS_zhanchang_zi2" },
        { tag: 20, type: "btn", name: "m_lookMeridians", id: "Btn_btn1", stringId: "MeridiansMain_8" },
        { tag: 21, type: "btn", name: "m_touchMeridians", id: "Btn_btn1", stringId: "MeridiansMain_9" },
        {
            tag: 99,
            type: "btn",
            name: "m_touchAllMeridians",
            id: "Btn_btn1",
            stringId: "str_MeridiansBtnAll"
        }
    ],
    init: function(data) {
    var visibleSize;
    if (!this._super()) {
        // source line 45, bytecode pc 19
        return false;
    }
    // source line 48, bytecode pc 27
    (this.m_ccbNode = null);
    // source line 49, bytecode pc 35
    (this.m_meridiansName = null);
    // source line 50, bytecode pc 43
    (this.m_meridiansEffect = null);
    // source line 51, bytecode pc 51
    (this.m_meridiansHaved = null);
    // source line 52, bytecode pc 59
    (this.m_meridiansNow = null);
    // source line 53, bytecode pc 67
    (this.m_meridiansWillHave = null);
    // source line 54, bytecode pc 75
    (this.m_nowEffect = null);
    // source line 55, bytecode pc 83
    (this.m_xue = null);
    // source line 56, bytecode pc 91
    (this.m_gong = null);
    // source line 57, bytecode pc 99
    (this.m_fang = null);
    // source line 58, bytecode pc 107
    (this.m_zhi = null);
    // source line 59, bytecode pc 115
    (this.m_useMeridians = null);
    // source line 60, bytecode pc 123
    (this.m_haveMeridians = null);
    // source line 62, bytecode pc 131
    (this.m_lookMeridians = null);
    // source line 63, bytecode pc 139
    (this.m_touchMeridians = null);
    // source line 64, bytecode pc 147
    (this.m_touchAllMeridians = null);
    // source line 65, bytecode pc 155
    (this.m_left_Button = null);
    // source line 66, bytecode pc 163
    (this.m_right_Button = null);
    // source line 67, bytecode pc 171
    (this.m_MeridianPointBuffIcon = null);
    // source line 68, bytecode pc 179
    (this.m_meridianTopData = null);
    // source line 70, bytecode pc 187
    (this.m_pageIdex = 1);
    // source line 73, bytecode pc 211
    this.setTouchMode(cc.TOUCH_ONE_BY_ONE);
    // source line 74, bytecode pc 226
    this.setTouchEnabled(true);
    // source line 76, bytecode pc 236
    (this.m_data = data);
    // source line 77, bytecode pc 254
    (this.m_dataLen = this.m_data.length);
    // source line 78, bytecode pc 262
    (this.m_meridianTopData = null);
    // source line 81, bytecode pc 287
    (visibleSize = xs.director.getVisibleSize());
    // source line 83, bytecode pc 338
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.MeridiansMainView, this));
    // source line 84, bytecode pc 381
    this.m_ccbNode.setContentSize(cc.size(960, 640));
    // source line 85, bytecode pc 428
    this.m_ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 91, bytecode pc 551
    xs.Utils.Node.attachNodes(this, this.m_ccbNode, {
    desc: "lb",
    offset: { x: ((visibleSize.width - xs.Views.MainMenuView.Width) / 2), y: (visibleSize.height / 2) },
    sc: true
});
    // source line 92, bytecode pc 594
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg, this);
    // source line 96, bytecode pc 618
    (this.m_meridiansHavedPoint = this.m_meridiansHaved.getPosition());
    // source line 97, bytecode pc 642
    (this.m_meridiansNowPoint = this.m_meridiansNow.getPosition());
    // source line 98, bytecode pc 666
    (this.m_meridiansWillHavePoint = this.m_meridiansWillHave.getPosition());
    // source line 100, bytecode pc 693
    (this.m_meridianPointPic_1 = this.m_ccbNode.getChildByTag(22));
    // source line 101, bytecode pc 720
    (this.m_meridianPointPic_2 = this.m_ccbNode.getChildByTag(23));
    // source line 102, bytecode pc 747
    (this.m_meridianPointPic_3 = this.m_ccbNode.getChildByTag(24));
    // source line 104, bytecode pc 771
    (this.m_meridianPointPicPoint_1 = this.m_meridianPointPic_1.getPosition());
    // source line 105, bytecode pc 795
    (this.m_meridianPointPicPoint_2 = this.m_meridianPointPic_2.getPosition());
    // source line 106, bytecode pc 819
    (this.m_meridianPointPicPoint_3 = this.m_meridianPointPic_3.getPosition());
    // source line 112, bytecode pc 846
    (this.m_MeridianPointBuffIcon = this.m_ccbNode.getChildByTag(28));
    // source line 113, bytecode pc 867
    this.m_MeridianPointBuffIcon.setZOrder(3);
    // source line 116, bytecode pc 894
    (this.m_generalIcon = this.m_ccbNode.getChildByTag(2));
    // source line 117, bytecode pc 914
    this.m_generalIcon.setZOrder(1);
    // source line 122, bytecode pc 984
    (this.m_itemMeridianNum = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_Meridian));
    // source line 123, bytecode pc 1020
    this.m_haveMeridians.setString(this.m_itemMeridianNum.toString());
    // source line 127, bytecode pc 1058
    this.m_lookMeridians.setOnClickCallBack(this.lookMeridiansCallBack.bind(this));
    // source line 128, bytecode pc 1079
    this.m_lookMeridians.setZOrder(2);
    // source line 129, bytecode pc 1117
    this.m_touchMeridians.setOnClickCallBack(this.touchMeridiansCallBack.bind(this));
    // source line 130, bytecode pc 1138
    this.m_touchMeridians.setZOrder(2);
    // source line 131, bytecode pc 1176
    this.m_touchAllMeridians.setOnClickCallBack(this.touchAllMeridiansCallBack.bind(this));
    // source line 132, bytecode pc 1197
    this.m_touchAllMeridians.setZOrder(2);
    // source line 135, bytecode pc 1223
    (this.m_pic_1 = this.m_ccbNode.getChildByTag(1));
    // source line 136, bytecode pc 1244
    this.m_pic_1.setZOrder(2);
    // source line 137, bytecode pc 1271
    (this.m_pic_2 = this.m_ccbNode.getChildByTag(22));
    // source line 138, bytecode pc 1292
    this.m_pic_2.setZOrder(3);
    // source line 139, bytecode pc 1319
    (this.m_pic_3 = this.m_ccbNode.getChildByTag(23));
    // source line 140, bytecode pc 1340
    this.m_pic_3.setZOrder(3);
    // source line 141, bytecode pc 1367
    (this.m_pic_4 = this.m_ccbNode.getChildByTag(24));
    // source line 142, bytecode pc 1388
    this.m_pic_4.setZOrder(3);
    // source line 143, bytecode pc 1415
    (this.m_pic_5 = this.m_ccbNode.getChildByTag(5));
    // source line 144, bytecode pc 1436
    this.m_pic_5.setZOrder(2);
    // source line 145, bytecode pc 1463
    (this.m_pic_6 = this.m_ccbNode.getChildByTag(6));
    // source line 146, bytecode pc 1484
    this.m_pic_6.setZOrder(3);
    // source line 147, bytecode pc 1511
    (this.m_pic_7 = this.m_ccbNode.getChildByTag(8));
    // source line 148, bytecode pc 1532
    this.m_pic_7.setZOrder(3);
    // source line 149, bytecode pc 1559
    (this.m_pic_8 = this.m_ccbNode.getChildByTag(10));
    // source line 150, bytecode pc 1580
    this.m_pic_8.setZOrder(3);
    // source line 151, bytecode pc 1607
    (this.m_pic_9 = this.m_ccbNode.getChildByTag(12));
    // source line 152, bytecode pc 1628
    this.m_pic_9.setZOrder(3);
    // source line 153, bytecode pc 1655
    (this.m_pic_10 = this.m_ccbNode.getChildByTag(15));
    // source line 154, bytecode pc 1676
    this.m_pic_10.setZOrder(2);
    // source line 155, bytecode pc 1703
    (this.m_pic_11 = this.m_ccbNode.getChildByTag(18));
    // source line 156, bytecode pc 1724
    this.m_pic_11.setZOrder(2);
    // source line 160, bytecode pc 1746
    (this.m_meridianTopData = this.m_data[(this.m_pageIdex - 1)]);
    // source line 161, bytecode pc 1766
    this.updateThisView(this.m_meridianTopData);
    // source line 164, bytecode pc 1768
    return true;
},
    CreateActionWithMeridianPointName: function() {
    var _icon, meridianPointModel, _label, picMoveBy_1, picMoveBy_2, picMoveBy_3, nameMoveBy_1, nameMoveBy_2, nameMoveBy_3;
    // source line 168, bytecode pc 47
    (_icon = xs.Factorys.Sprite.create("jingmai_weizhi", "MeridiansMainScene"));
    // source line 169, bytecode pc 93
    _icon.setPosition(cc.p(620, 324));
    // source line 170, bytecode pc 117
    _icon._setZOrder(2);
    // source line 171, bytecode pc 145
    this.m_ccbNode.addChild(_icon);
    // source line 173, bytecode pc 166
    (meridianPointModel = this.m_meridianTopData.getMeridianPointModel());
    // source line 174, bytecode pc 223
    (_label = xs.Factorys.Label.createByStyleIdWithString("LS_piaozi", meridianPointModel.getNextMeridianPointName()));
    // source line 175, bytecode pc 247
    _label._setZOrder(2);
    // source line 176, bytecode pc 293
    _label.setPosition(cc.p(620, 360));
    // source line 177, bytecode pc 321
    this.m_ccbNode.addChild(_label);
    // source line 180, bytecode pc 359
    (picMoveBy_1 = cc.MoveTo.create(0.5, this.m_meridianPointPicPoint_1));
    // source line 181, bytecode pc 397
    (picMoveBy_2 = cc.MoveTo.create(0.5, this.m_meridianPointPicPoint_2));
    // source line 182, bytecode pc 435
    (picMoveBy_3 = cc.MoveTo.create(0.5, this.m_meridianPointPicPoint_3));
    // source line 184, bytecode pc 473
    (nameMoveBy_1 = cc.MoveTo.create(0.5, this.m_meridiansHavedPoint));
    // source line 185, bytecode pc 511
    (nameMoveBy_2 = cc.MoveTo.create(0.5, this.m_meridiansNowPoint));
    // source line 186, bytecode pc 549
    (nameMoveBy_3 = cc.MoveTo.create(0.5, this.m_meridiansWillHavePoint));
    // source line 188, bytecode pc 569
    this.m_meridiansHaved.setVisible(false);
    // source line 190, bytecode pc 591
    this.m_meridianPointPic_2.runAction(picMoveBy_1);
    // source line 191, bytecode pc 613
    this.m_meridianPointPic_3.runAction(picMoveBy_2);
    // source line 192, bytecode pc 638
    _icon.runAction(picMoveBy_3);
    // source line 194, bytecode pc 660
    this.m_meridiansNow.runAction(nameMoveBy_1);
    // source line 195, bytecode pc 682
    this.m_meridiansWillHave.runAction(nameMoveBy_2);
    // source line 213, bytecode pc 770
    _label.runAction(cc.Sequence.create(nameMoveBy_3, cc.CallFunc.create(function() {
    // source line 198, bytecode pc 19
    this.updateThisView(this.m_meridianTopData);
    // source line 199, bytecode pc 79
    xs.Views.Mgr.showToast(xs.Tools.String.createString("MeridiansMain_18"));
    // source line 201, bytecode pc 104
    this.m_meridiansNow.setPosition(this.m_meridiansNowPoint);
    // source line 202, bytecode pc 129
    this.m_meridiansWillHave.setPosition(this.m_meridiansWillHavePoint);
    // source line 204, bytecode pc 154
    this.m_meridianPointPic_2.setPosition(this.m_meridianPointPicPoint_2);
    // source line 205, bytecode pc 179
    this.m_meridianPointPic_3.setPosition(this.m_meridianPointPicPoint_3);
    // source line 208, bytecode pc 199
    this.m_meridiansHaved.setVisible(true);
    // source line 210, bytecode pc 236
    xs.Utils.Node.removeFromParentSafe(_icon);
    // source line 211, bytecode pc 273
    xs.Utils.Node.removeFromParentSafe(_label);
}.bind(this))));
},
    CreateInstructionButton: function() {
    var visibleSize, arm_left, arm_right, _ret;
    // source line 219, bytecode pc 24
    (visibleSize = xs.director.getVisibleSize());
    // source line 221, bytecode pc 65
    (arm_left = xs.Views.Armature.AutoAudioArmature.create("Arm_guideArrow"));
    // source line 222, bytecode pc 105
    arm_left.playAniById("guide", { loop: true, speed: 1 });
    // source line 223, bytecode pc 146
    (arm_right = xs.Views.Armature.AutoAudioArmature.create("Arm_guideArrow"));
    // source line 224, bytecode pc 186
    arm_right.playAniById("guide", { loop: true, speed: 1 });
    // source line 225, bytecode pc 223
    (this.m_right_Button = xs.Views.Btn.createInvisibleWithChild(arm_right));
    // source line 226, bytecode pc 250
    this.m_right_Button.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 227, bytecode pc 288
    this.m_right_Button.setOnClickCallBack(this.rightButtonCallback.bind(this));
    // source line 233, bytecode pc 411
    xs.Utils.Node.attachNodes(this, this.m_right_Button, {
    desc: "lb",
    offset: { x: ((visibleSize.width - xs.Views.MainMenuView.Width) - 80), y: (visibleSize.height / 2) },
    sc: true
});
    // source line 236, bytecode pc 448
    (this.m_left_Button = xs.Views.Btn.createInvisibleWithChild(arm_left));
    // source line 237, bytecode pc 475
    this.m_left_Button.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 238, bytecode pc 513
    this.m_left_Button.setOnClickCallBack(this.leftButtonCallback.bind(this));
    // source line 239, bytecode pc 535
    this.m_left_Button.setRotationY(180);
    // source line 245, bytecode pc 628
    xs.Utils.Node.attachNodes(this, this.m_left_Button, { desc: "lb", offset: { x: 80, y: (visibleSize.height / 2) }, sc: true });
    // source line 248, bytecode pc 648
    this.m_left_Button.setVisible(false);
    if ((this.m_dataLen == 1)) {
        // source line 250, bytecode pc 681
        this.m_right_Button.setVisible(false);
    }
    // source line 254, bytecode pc 727
    (_ret = xs.Views.Button.Factory.Audio.create("Btn_Instruction"));
    // source line 255, bytecode pc 751
    _ret.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 257, bytecode pc 772
    _ret.setOnClickCallBack(function() {
    // source line 258, bytecode pc 49
    xs.Views.Mgr.showDialogByName("InstructionDialog", { key: "MeridiansMain_26" });
});
    // source line 265, bytecode pc 885
    xs.Utils.Node.attachNodes(this, _ret, {
    desc: "lt",
    offset: { x: ((visibleSize.width - xs.Views.MainMenuView.Width) - 80), y: -100 },
    sc: true
}, null);
    // source line 267, bytecode pc 918
    (this.m_mainMenu = xs.Views.MainMenuView.createWithBack());
    // source line 268, bytecode pc 945
    this.m_mainMenu.setBaseTouchPriority((this.m_baseTouchPriority - 1));
    // source line 269, bytecode pc 984
    this.m_mainMenu.setAnchorPoint(cc.p(1, 0));
    // source line 273, bytecode pc 1069
    xs.Utils.Node.attachNodes(this, this.m_mainMenu, { desc: "rb", sc: true }, xs.Cfg.Scene.SkillScene.mainmenu);
},
    updateThisView: function(data) {
    var _GameDataGenerals, generalModel, meridianModel, generalIcon, meridianPointModel, icon;
    // source line 277, bytecode pc 39
    (_GameDataGenerals = xs.Profile.GameData.Mgr.getInstance().Generals);
    // source line 278, bytecode pc 72
    (generalModel = _GameDataGenerals.getGeneralModelByPkid(data.getUserGeneralPkid()));
    // source line 280, bytecode pc 90
    (meridianModel = data.getMeridianModel());
    // source line 282, bytecode pc 119
    (generalIcon = generalModel.getRes().createOriginalSprite_Foot());
    // source line 283, bytecode pc 164
    xs.Utils.Node.replaceChildSafe(this.m_ccbNode, this.m_generalIcon, generalIcon);
    // source line 284, bytecode pc 174
    (this.m_generalIcon = generalIcon);
    // source line 287, bytecode pc 207
    this.m_meridiansName.setString(meridianModel.getMeridianName());
    // source line 289, bytecode pc 255
    this.m_meridiansEffect.setString((meridianModel.getMeridianBuffTypeStr() + meridianModel.getMeridianBuffValue()));
    // source line 291, bytecode pc 273
    (meridianPointModel = data.getMeridianPointModel());
    // source line 293, bytecode pc 306
    this.m_meridiansHaved.setString(meridianPointModel.getLastMeridianPointName());
    // source line 295, bytecode pc 339
    this.m_meridiansNow.setString(meridianPointModel.getMeridianPointName());
    // source line 297, bytecode pc 372
    this.m_meridiansWillHave.setString(meridianPointModel.getNextMeridianPointName());
    // source line 299, bytecode pc 405
    this.m_nowEffect.setString(meridianPointModel.getMeridianPointBuffValue());
    // source line 301, bytecode pc 423
    (icon = meridianPointModel.getMeridianPointBuffValueIcon());
    // source line 302, bytecode pc 468
    xs.Utils.Node.replaceChildSafe(this.m_ccbNode, this.m_MeridianPointBuffIcon, icon);
    // source line 303, bytecode pc 478
    (this.m_MeridianPointBuffIcon = icon);
    // source line 305, bytecode pc 514
    (this.m_needItemMeridianNum = parseInt(meridianPointModel.getMeridianPointMaiLiItemNum()));
    // source line 306, bytecode pc 547
    this.m_useMeridians.setString(meridianPointModel.getMeridianPointMaiLiItemNum());
    // source line 309, bytecode pc 599
    this.m_xue.setString(("" + this.getOriginalByType(generalModel, xs.Constant_AttrType_Hp)));
    // source line 310, bytecode pc 651
    this.m_gong.setString(("" + this.getOriginalByType(generalModel, xs.Constant_AttrType_Atk)));
    // source line 311, bytecode pc 703
    this.m_fang.setString(("" + this.getOriginalByType(generalModel, xs.Constant_AttrType_Def)));
    // source line 312, bytecode pc 755
    this.m_zhi.setString(("" + this.getOriginalByType(generalModel, xs.Constant_AttrType_Int)));
    // source line 315, bytecode pc 772
    this.updateMeridianTopSkillState(data);
},
    getOriginalByType: function(generalModel, type) {
    var _val, _obj_meridian;
    // source line 319, bytecode pc 4
    (_val = 0);
    // source line 320, bytecode pc 70
    (_obj_meridian = xs.Profile.GameData.Mgr.getInstance().MeridianTops.getByGeneralPkId(generalModel.getPkId()));
    if (_obj_meridian) {
        // source line 322, bytecode pc 104
        (_val = (_val + _obj_meridian.getMeridianAndMeridianPointBuffValByType(type)));
    }
    // source line 325, bytecode pc 141
    return xs.Utils.parseIntSafe(_val).toString();
},
    updateMeridianTopSkillState: function(data) {
    var meridianTopLevel, i, iconTag, icon, label, meridianTop, _icon;
    // source line 329, bytecode pc 32
    (meridianTopLevel = parseInt(data.getMerdianTopLevel()));
    // source line 331, bytecode pc 37
    (i = 1);
    while ((i <= 8)) {
        // source line 332, bytecode pc 58
        (iconTag = (31 + ((i - 1) * 2)));
        // source line 333, bytecode pc 83
        (icon = this.m_ccbNode.getChildByTag(iconTag));
        // source line 334, bytecode pc 110
        (label = this.m_ccbNode.getChildByTag((iconTag + 1)));
        if ((i > meridianTopLevel)) {
            if (icon) {
                // source line 337, bytecode pc 147
                icon.setVisible(false);
            }
            if (label) {
                // source line 340, bytecode pc 172
                label.setVisible(false);
            }
        } else {
            if ((i <= meridianTopLevel)) {
                if (icon) {
                    // source line 346, bytecode pc 214
                    icon.setVisible(true);
                }
                if (label) {
                    // source line 349, bytecode pc 239
                    label.setVisible(true);
                    // source line 350, bytecode pc 257
                    label.setZOrder(3);
                    // source line 354, bytecode pc 333
                    (meridianTop = xs.Models.MeridianTop.createWithJson({ top_level: i.toString(), meridian_level: "1", point_level: "1" }));
                    // source line 356, bytecode pc 363
                    label.setString(meridianTop.getMeridianTopSkillName());
                }
                // source line 358, bytecode pc 368
                (_icon = null);
                if ((i == meridianTopLevel)) {
                    if (data.getIsHeightest()) {
                        // source line 361, bytecode pc 441
                        (_icon = xs.Factorys.Sprite.create("jingmai_yiyou", "MeridiansMainScene"));
                    } else {
                        // source line 363, bytecode pc 488
                        (_icon = xs.Factorys.Sprite.create("jingmai_weizhi", "MeridiansMainScene"));
                    }
                } else {
                    // source line 366, bytecode pc 535
                    (_icon = xs.Factorys.Sprite.create("jingmai_yiyou", "MeridiansMainScene"));
                }
                // source line 368, bytecode pc 577
                xs.Utils.Node.replaceChildSafe(this.m_ccbNode, icon, _icon);
                // source line 369, bytecode pc 584
                (icon = _icon);
            }
        }
        // source line 331, bytecode pc 599
        i++;
    }
},
    rightButtonCallback: function() {
    if ((this.m_pageIdex == this.m_dataLen)) {
        // source line 377, bytecode pc 19
        return void 0;
    }
    // source line 379, bytecode pc 46
    this.m_pageIdex++;
    if ((this.m_pageIdex == 1)) {
        // source line 381, bytecode pc 79
        this.m_left_Button.setVisible(false);
        // source line 382, bytecode pc 99
        this.m_right_Button.setVisible(true);
    } else {
        if ((this.m_pageIdex == this.m_dataLen)) {
            // source line 386, bytecode pc 142
            this.m_left_Button.setVisible(true);
            // source line 387, bytecode pc 162
            this.m_right_Button.setVisible(false);
        } else {
            // source line 390, bytecode pc 187
            this.m_left_Button.setVisible(true);
            // source line 391, bytecode pc 207
            this.m_right_Button.setVisible(true);
        }
    }
    if (this.m_data[(this.m_pageIdex - 1)]) {
        // source line 395, bytecode pc 249
        (this.m_meridianTopData = this.m_data[(this.m_pageIdex - 1)]);
        // source line 396, bytecode pc 269
        this.updateThisView(this.m_meridianTopData);
    }
},
    leftButtonCallback: function() {
    if ((this.m_pageIdex == 1)) {
        // source line 402, bytecode pc 14
        return void 0;
    }
    // source line 404, bytecode pc 41
    this.m_pageIdex--;
    if ((this.m_pageIdex == 1)) {
        // source line 406, bytecode pc 74
        this.m_left_Button.setVisible(false);
        // source line 407, bytecode pc 94
        this.m_right_Button.setVisible(true);
    } else {
        if ((this.m_pageIdex == this.m_dataLen)) {
            // source line 411, bytecode pc 137
            this.m_left_Button.setVisible(true);
            // source line 412, bytecode pc 157
            this.m_right_Button.setVisible(false);
        } else {
            // source line 415, bytecode pc 182
            this.m_left_Button.setVisible(true);
            // source line 416, bytecode pc 202
            this.m_right_Button.setVisible(true);
        }
    }
    if (this.m_data[(this.m_pageIdex - 1)]) {
        // source line 419, bytecode pc 244
        (this.m_meridianTopData = this.m_data[(this.m_pageIdex - 1)]);
        // source line 420, bytecode pc 264
        this.updateThisView(this.m_meridianTopData);
    }
},
    touchAllMeridiansCallBack: function() {
    if ((this.m_needItemMeridianNum > this.m_itemMeridianNum)) {
        // source line 426, bytecode pc 77
        xs.Views.Mgr.showToast(xs.Tools.String.createString("MeridiansMain_20"));
        // source line 427, bytecode pc 79
        return void 0;
    }
    if (this.m_meridianTopData.getIsHeightest()) {
        // source line 431, bytecode pc 134
        xs.Views.Mgr.showToastByStringId("MeridiansMain_23");
        // source line 432, bytecode pc 136
        return void 0;
    }
    // source line 454, bytecode pc 287
    xs.Tools.Net.requestMultiLightMeridian({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    user_general_id: this.m_meridianTopData.getUserGeneralPkid()
}, function(data) {
    // source line 443, bytecode pc 53
    (this.m_data = xs.Profile.GameData.Mgr.getInstance().MeridianTops.getAllMeridianTopModel());
    // source line 444, bytecode pc 71
    (this.m_dataLen = this.m_data.length);
    // source line 445, bytecode pc 93
    (this.m_meridianTopData = this.m_data[(this.m_pageIdex - 1)]);
    // source line 447, bytecode pc 106
    this.CreateActionWithMeridianPointName();
    // source line 450, bytecode pc 176
    (this.m_itemMeridianNum = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_Meridian));
    // source line 451, bytecode pc 212
    this.m_haveMeridians.setString(this.m_itemMeridianNum.toString());
}.bind(this)).bind(this);
},
    touchMeridiansCallBack: function() {
    if ((this.m_needItemMeridianNum > this.m_itemMeridianNum)) {
        // source line 460, bytecode pc 77
        xs.Views.Mgr.showToast(xs.Tools.String.createString("MeridiansMain_20"));
        // source line 461, bytecode pc 79
        return void 0;
    }
    if (this.m_meridianTopData.getIsHeightest()) {
        // source line 464, bytecode pc 134
        xs.Views.Mgr.showToastByStringId("MeridiansMain_23");
        // source line 465, bytecode pc 136
        return void 0;
    }
    // source line 486, bytecode pc 287
    xs.Tools.Net.requestLightMeridian({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    user_general_id: this.m_meridianTopData.getUserGeneralPkid()
}, function(data) {
    // source line 475, bytecode pc 53
    (this.m_data = xs.Profile.GameData.Mgr.getInstance().MeridianTops.getAllMeridianTopModel());
    // source line 476, bytecode pc 71
    (this.m_dataLen = this.m_data.length);
    // source line 477, bytecode pc 93
    (this.m_meridianTopData = this.m_data[(this.m_pageIdex - 1)]);
    // source line 479, bytecode pc 106
    this.CreateActionWithMeridianPointName();
    // source line 482, bytecode pc 176
    (this.m_itemMeridianNum = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(xs.Models.ItemID_Meridian));
    // source line 483, bytecode pc 212
    this.m_haveMeridians.setString(this.m_itemMeridianNum.toString());
}.bind(this)).bind(this);
},
    lookMeridiansCallBack: function() {
    // source line 489, bytecode pc 39
    xs.Views.Mgr.showDialogByName("MeridiansDetailDialog", this.m_meridianTopData);
},
    onTouchBegan: function(touch, e) {
    // source line 492, bytecode pc 20
    (this.m_touchBeganPos = touch.getLocation());
    // source line 493, bytecode pc 28
    (this.b_touchMoved = false);
    // source line 494, bytecode pc 30
    return true;
},
    onTouchMoved: function(touch, e) {
    var touchMovedPos;
    // source line 497, bytecode pc 17
    (touchMovedPos = touch.getLocation());
    if (((Math.abs((touchMovedPos.x - this.m_touchBeganPos.x)) > 30) || (Math.abs((touchMovedPos.y - this.m_touchBeganPos.y)) > 30))) {
        // source line 500, bytecode pc 116
        (this.b_touchMoved = true);
    }
},
    onTouchEnded: function(touch, e) {
    var touchEndedPos;
    // source line 504, bytecode pc 17
    (touchEndedPos = touch.getLocation());
    if (this.b_touchMoved) {
        if (((touchEndedPos.x - this.m_touchBeganPos.x) > 100)) {
            // source line 507, bytecode pc 69
            this.leftButtonCallback();
        }
        if (((touchEndedPos.x - this.m_touchBeganPos.x) < -100)) {
            // source line 510, bytecode pc 110
            this.rightButtonCallback();
        }
    } else {
        // source line 513, bytecode pc 117
        return void 0;
    }
},
    onEnter: function() {
    // source line 519, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 522, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 525, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 526, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 527, bytecode pc 56
    this.m_lookMeridians.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 528, bytecode pc 83
    this.m_touchMeridians.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 529, bytecode pc 110
    this.m_touchAllMeridians.setTouchPriority((this.m_baseTouchPriority - 1));
    // source line 530, bytecode pc 123
    this.CreateInstructionButton();
}
}));
// source line 533, bytecode pc 1572
(xs.Views.MeridiansMainView.create = function(data) {
    var view;
    // source line 534, bytecode pc 23
    (view = new xs.Views.MeridiansMainView());
    if ((view && view.init(data))) {
        // source line 536, bytecode pc 59
        return view;
    }
    // source line 538, bytecode pc 84
    xs.assert(false, "xs.Views.MeridiansMainView.create error!");
    // source line 539, bytecode pc 86
    return null;
});
