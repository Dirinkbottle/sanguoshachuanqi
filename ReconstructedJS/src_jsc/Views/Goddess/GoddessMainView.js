// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Goddess/GoddessMainView.js:1
// source line 564, bytecode pc 1081
(xs.Views.GoddessMainView = cc.Layer.extend({
    name: "xs.Views.GoddessMainView",
    ccbCfg_noSelect: [ { tag: 2, type: "ls", name: "m_noGoddess", id: "LS_danyao", stringId: "goddess_noSelect01" } ],
    ccbCfg_select: [
        { tag: 1, type: "ls", name: "m_zhanli", id: "LS_mainUI4" },
        { tag: 3, type: "ls", name: "m_goddessName", id: "LS_wujiangName" },
        { tag: 7, type: "ls", name: "m_jiacheng_1", id: "LS_mainUI4" },
        { tag: 20, type: "ls", name: "m_jiacheng_intro", id: "LS_fightUI1" },
        { tag: 10, type: "btn", name: "m_changeSkinButton", id: "Btn_btn1" },
        { tag: 11, type: "btn", name: "m_chuZhanButton", id: "Btn_btn1" },
        { name: "m_1cntLab", tag: 101, type: "ls", id: "LS_yuanfenInf2" },
        { name: "m_2cntLab", tag: 102, type: "ls", id: "LS_yuanfenInf2" },
        { name: "m_3cntLab", tag: 103, type: "ls", id: "LS_yuanfenInf2" },
        { name: "m_4cntLab", tag: 104, type: "ls", id: "LS_yuanfenInf2" },
        { name: "m_5cntLab", tag: 105, type: "ls", id: "LS_yuanfenInf2" },
        { name: "m_6cntLab", tag: 106, type: "ls", id: "LS_yuanfenInf2" },
        { name: "m_7cntLab", tag: 107, type: "ls", id: "LS_yuanfenInf2" },
        { name: "m_8cntLab", tag: 108, type: "ls", id: "LS_yuanfenInf2" },
        { name: "m_9cntLab", tag: 109, type: "ls", id: "LS_yuanfenInf2" },
        { name: "m_10cntLab", tag: 110, type: "ls", id: "LS_yuanfenInf2" }
    ],
    ctor: function() {
    // source line 31, bytecode pc 12
    this._super();
    // source line 32, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    var goddessBody_width, goddessBody_height, arm_left, arm_right, nextBtn, lastBtn;
    if (!this._super()) {
        // source line 36, bytecode pc 19
        return false;
    }
    // source line 38, bytecode pc 27
    (this.m_ccbNode = null);
    // source line 39, bytecode pc 35
    (this.m_noSelectLabel = null);
    // source line 40, bytecode pc 43
    (this.m_noSelectPic = null);
    // source line 41, bytecode pc 51
    (this.m_noSelectButton = null);
    // source line 42, bytecode pc 59
    (this.m_goddessView = null);
    // source line 45, bytecode pc 67
    (this.m_zhanli = null);
    // source line 46, bytecode pc 75
    (this.m_goddessName = null);
    // source line 47, bytecode pc 83
    (this.m_jiacheng_1 = null);
    // source line 48, bytecode pc 91
    (this.m_jiacheng01_pic = null);
    // source line 49, bytecode pc 99
    (this.m_changeSkinButton = null);
    // source line 50, bytecode pc 107
    (this.m_chuZhanButton = null);
    // source line 51, bytecode pc 115
    (this.m_jiacheng_intro = null);
    // source line 53, bytecode pc 123
    (this.m_chuZhanZhong = null);
    // source line 54, bytecode pc 131
    (this.m_leftButton = null);
    // source line 55, bytecode pc 139
    (this.m_rightButton = null);
    // source line 57, bytecode pc 147
    (this.m_chuZhanButtonPositionX = null);
    // source line 58, bytecode pc 155
    (this.m_jiacheng01Pic_position = null);
    // source line 59, bytecode pc 167
    (this.m_jiachengPicList = []);
    // source line 61, bytecode pc 175
    (this.m_middleData = null);
    // source line 63, bytecode pc 229
    (this.m_data = xs.Profile.GameData.Mgr.getInstance().Goddess.getAll());
    // source line 64, bytecode pc 285
    this.m_data.sort(xs.Tools.Sort.by(xs.Constant_SortType_Goddess_Default));
    // source line 66, bytecode pc 313
    (this.m_visibleSize = xs.director.getVisibleSize());
    // source line 68, bytecode pc 331
    (this.m_goddessNum = this.m_data.length);
    // source line 69, bytecode pc 339
    (this.m_nowPage = 0);
    if ((this.m_goddessNum == 0)) {
        // source line 73, bytecode pc 401
        (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.GoddessNoSelectView));
        // source line 74, bytecode pc 444
        this.m_ccbNode.setContentSize(cc.size(600, 520));
        // source line 75, bytecode pc 473
        this.m_ccbNode.setAnchorPoint(xs.ap_c);
        // source line 77, bytecode pc 516
        xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg_noSelect, this);
        // source line 80, bytecode pc 639
        xs.Utils.Node.attachNodes(this, this.m_ccbNode, {
    desc: "lb",
    offset: {
        x: ((this.m_visibleSize.width - xs.Views.MainMenuView.Width) / 2),
        y: (this.m_visibleSize.height / 2)
    }
});
        // source line 84, bytecode pc 678
        (this.m_noSelectLabel = xs.Factorys.Label.createByStyleId("LS_danyao"));
        // source line 85, bytecode pc 729
        this.m_noSelectLabel.setString(xs.Tools.String.createString("goddess_noSelect02"));
        // source line 91, bytecode pc 847
        xs.Utils.Node.attachNodes(this, this.m_noSelectLabel, {
    desc: "lb",
    sc: true,
    offset: { x: ((this.m_visibleSize.width - xs.Views.MainMenuView.Width) / 2), y: 150 }
});
        // source line 96, bytecode pc 873
        (this.m_noSelectPic = this.m_ccbNode.getChildByTag(1));
        // source line 97, bytecode pc 913
        (this.m_noSelectButton = xs.Views.Btn.createInvisibleWithParent(this.m_noSelectPic));
        // source line 98, bytecode pc 951
        this.m_noSelectButton.setOnClickCallBack(this.noSelectButtonCallBack.bind(this));
    } else {
        // source line 103, bytecode pc 975
        (goddessBody_width = (this.m_visibleSize.width - 400));
        // source line 104, bytecode pc 990
        (goddessBody_height = this.m_visibleSize.height);
        // source line 107, bytecode pc 1048
        (this.m_goddessView = xs.Views.ThreeIconShowView.create(cc.size(goddessBody_width, goddessBody_height)));
        // source line 109, bytecode pc 1068
        this.m_goddessView.setListener(this);
        // source line 110, bytecode pc 1097
        this.m_goddessView.setOffsetY(((goddessBody_height / 2) - 180));
        // source line 111, bytecode pc 1122
        this.m_goddessView.setDataSource(this.m_data);
        // source line 112, bytecode pc 1146
        this.m_goddessView.setMaxScale(0.86);
        // source line 118, bytecode pc 1230
        xs.Utils.Node.attachNodes(this, this.m_goddessView, { desc: "lb", sc: true, offset: { x: 150, y: 0 } });
        // source line 123, bytecode pc 1279
        (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.GoddessSelectView));
        // source line 125, bytecode pc 1322
        this.m_ccbNode.setContentSize(cc.size(960, 640));
        // source line 127, bytecode pc 1365
        xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.ccbCfg_select, this);
        // source line 128, bytecode pc 1443
        xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "lb", offset: cc.p(0, 0) });
        // source line 130, bytecode pc 1463
        this._amendCcbiPos(this.m_ccbNode);
        // source line 132, bytecode pc 1490
        (this.m_jiacheng_bg = this.m_ccbNode.getChildByTag(30));
        // source line 133, bytecode pc 1541
        this.m_jiacheng_intro.setString(xs.Tools.String.createString("goddess_jiacheng"));
        // source line 134, bytecode pc 1570
        this.m_jiacheng_intro.setAnchorPoint(xs.ap_lc);
        // source line 135, bytecode pc 1635
        this.m_jiacheng_intro.setPositionX(((this.m_jiacheng_bg.getPositionX() - (this.m_jiacheng_bg.getContentSize().width / 2)) + 20));
        // source line 137, bytecode pc 1662
        (this.m_chuZhanZhong = this.m_ccbNode.getChildByTag(2));
        // source line 138, bytecode pc 1689
        (this.m_leftButton = this.m_ccbNode.getChildByTag(4));
        // source line 139, bytecode pc 1716
        (this.m_rightButton = this.m_ccbNode.getChildByTag(5));
        // source line 141, bytecode pc 1743
        (this.m_jiacheng01_pic = this.m_ccbNode.getChildByTag(61));
        // source line 142, bytecode pc 1767
        (this.m_jiacheng01Pic_position = this.m_jiacheng01_pic.getPosition());
        // source line 145, bytecode pc 1808
        (arm_left = xs.Views.Armature.AutoAudioArmature.create("Arm_guideArrow"));
        // source line 146, bytecode pc 1848
        arm_left.playAniById("guide", { loop: true, speed: 1 });
        // source line 147, bytecode pc 1889
        (arm_right = xs.Views.Armature.AutoAudioArmature.create("Arm_guideArrow"));
        // source line 148, bytecode pc 1929
        arm_right.playAniById("guide", { loop: true, speed: 1 });
        // source line 149, bytecode pc 1963
        (nextBtn = xs.Views.Btn.createInvisibleWithChild(arm_right));
        // source line 150, bytecode pc 1998
        nextBtn.setOnClickCallBack(this.rightButtonCallback.bind(this));
        // source line 151, bytecode pc 2032
        (lastBtn = xs.Views.Btn.createInvisibleWithChild(arm_left));
        // source line 152, bytecode pc 2067
        lastBtn.setOnClickCallBack(this.leftButtonCallback.bind(this));
        // source line 153, bytecode pc 2086
        lastBtn.setRotationY(180);
        // source line 154, bytecode pc 2131
        xs.Utils.Node.replaceChildSafe(this.m_ccbNode, this.m_leftButton, lastBtn);
        // source line 155, bytecode pc 2141
        (this.m_leftButton = lastBtn);
        // source line 156, bytecode pc 2186
        xs.Utils.Node.replaceChildSafe(this.m_ccbNode, this.m_rightButton, nextBtn);
        // source line 157, bytecode pc 2196
        (this.m_rightButton = nextBtn);
        // source line 160, bytecode pc 2234
        this.m_changeSkinButton.setOnClickCallBack(this.changeSkinCallBack.bind(this));
        // source line 161, bytecode pc 2272
        this.m_chuZhanButton.setOnClickCallBack(this.goToFight.bind(this));
        // source line 163, bytecode pc 2323
        this.m_changeSkinButton.setString(xs.Tools.String.createString("goddess_changeSkin"));
        // source line 164, bytecode pc 2347
        (this.m_chuZhanButtonPositionX = this.m_chuZhanButton.getPositionX());
        if ((this.m_goddessNum == 1)) {
            // source line 169, bytecode pc 2380
            this.m_leftButton.setVisible(false);
            // source line 170, bytecode pc 2400
            this.m_rightButton.setVisible(false);
        } else {
            // source line 172, bytecode pc 2425
            this.m_rightButton.setVisible(true);
            // source line 173, bytecode pc 2445
            this.m_leftButton.setVisible(false);
        }
        // source line 175, bytecode pc 2458
        this.showNoFatesMessage();
        // source line 176, bytecode pc 2485
        this.updateView(this.m_data[this.m_nowPage]);
    }
    // source line 183, bytecode pc 2487
    return true;
},
    _amendCcbiPos: function(mCcbi) {
    var mChilds, mChildIdx, mChild, mOriginalPos;
    // source line 187, bytecode pc 17
    (mChilds = mCcbi.getChildren());
    if (mChilds) {
        for (var mChildIdx in mChilds) {
            // source line 190, bytecode pc 52
            (mChild = mChilds[mChildIdx]);
            if (!(mChild.getPosition)) continue;
            // source line 192, bytecode pc 83
            (mOriginalPos = mChild.getPosition());
            // source line 193, bytecode pc 115
            mChild.setPosition(this._ip4sPosTransform(mOriginalPos));
        }
    }
},
    _ip4sPosTransform: function(mPos) {
    var visibleSize, mScaleW, mScaleH;
    // source line 202, bytecode pc 24
    (visibleSize = xs.director.getVisibleSize());
    // source line 203, bytecode pc 40
    (mScaleW = (visibleSize.width / 960));
    // source line 204, bytecode pc 56
    (mScaleH = (visibleSize.height / 640));
    // source line 205, bytecode pc 99
    return cc.p((mPos.x * mScaleW), (mPos.y * mScaleH));
},
    updateView: function(data) {
    var buffList, firstPic, i, position, iconPicBg, iconPic, label, fates, isLightedInGoddess;
    // source line 211, bytecode pc 9
    (this.m_middleData = data);
    // source line 213, bytecode pc 53
    this.m_zhanli.setString((data.getBigFighting() || "0"));
    if (data.getIsFight()) {
        // source line 216, bytecode pc 123
        this.m_chuZhanButton.setString(xs.Tools.String.createString("goddess_NotgoToFight"));
        // source line 217, bytecode pc 143
        this.m_chuZhanZhong.setVisible(true);
    } else {
        // source line 219, bytecode pc 199
        this.m_chuZhanButton.setString(xs.Tools.String.createString("goddess_goToFight"));
        // source line 220, bytecode pc 219
        this.m_chuZhanZhong.setVisible(false);
    }
    // source line 223, bytecode pc 263
    this.m_goddessName.setString(data.getNameString().toWordBreak());
    // source line 226, bytecode pc 281
    (buffList = data.getBuffList());
    // source line 237, bytecode pc 320
    (firstPic = this.getJiaChangePicByType(Number(buffList[0][0])));
    // source line 238, bytecode pc 365
    xs.Utils.Node.replaceChildSafe(this.m_ccbNode, this.m_jiacheng01_pic, firstPic);
    // source line 239, bytecode pc 375
    (this.m_jiacheng01_pic = firstPic);
    // source line 240, bytecode pc 407
    this.m_jiacheng_1.setString(("+" + buffList[0][1]));
    // source line 244, bytecode pc 412
    (i = 0);
    while ((i < this.m_jiachengPicList.length)) {
        // source line 246, bytecode pc 456
        xs.Utils.Node.safeRemoveChild(this.m_jiachengPicList[i]);
        // source line 244, bytecode pc 471
        i++;
    }
    // source line 249, bytecode pc 504
    (this.m_jiachengPicList = []);
    // source line 251, bytecode pc 509
    (i = 0);
    while ((i < buffList.length)) {
        if ((i > 0)) {
            // source line 254, bytecode pc 545
            (position = this.getPositionByType(i));
            // source line 256, bytecode pc 587
            (iconPicBg = xs.Factorys.Sprite.create("smallIcon_fp_bg", "Cmn01"));
            // source line 262, bytecode pc 688
            xs.Utils.Node.attachNodes(this.m_ccbNode, iconPicBg, { desc: "lb", sc: true, offset: { x: (position.x + 50), y: position.y } });
            // source line 266, bytecode pc 729
            (iconPic = this.getJiaChangePicByType(Number(buffList[i][0])));
            // source line 272, bytecode pc 827
            xs.Utils.Node.attachNodes(this.m_ccbNode, iconPic, { desc: "lb", sc: true, offset: { x: position.x, y: position.y } });
            // source line 277, bytecode pc 863
            (label = xs.Factorys.Label.createByStyleId("LS_mainUI4"));
            // source line 278, bytecode pc 894
            label.setString(("+" + buffList[i][1]));
            // source line 279, bytecode pc 934
            label.setAnchorPoint(cc.p(0, 0.5));
            // source line 285, bytecode pc 1035
            xs.Utils.Node.attachNodes(this.m_ccbNode, label, { desc: "lb", sc: true, offset: { x: (position.x + 30), y: position.y } });
            // source line 290, bytecode pc 1057
            this.m_jiachengPicList.push(iconPicBg);
            // source line 291, bytecode pc 1079
            this.m_jiachengPicList.push(iconPic);
            // source line 292, bytecode pc 1101
            this.m_jiachengPicList.push(label);
        }
        // source line 251, bytecode pc 1116
        i++;
    }
    if ((data.getSkinList().length == 0)) {
        // source line 299, bytecode pc 1180
        this.m_changeSkinButton.setVisible(false);
        // source line 301, bytecode pc 1234
        this.m_chuZhanButton.setPositionX(((this.m_visibleSize.width - xs.Views.MainMenuView.Width) / 2));
    } else {
        // source line 305, bytecode pc 1259
        this.m_changeSkinButton.setVisible(true);
        // source line 307, bytecode pc 1284
        this.m_chuZhanButton.setPositionX(this.m_chuZhanButtonPositionX);
    }
    // source line 310, bytecode pc 1302
    (fates = data.getFates());
    if (xs.Utils.isEmpty(fates)) {
        // source line 312, bytecode pc 1352
        this.noGoddessFateTip.setVisible(true);
    } else {
        // source line 315, bytecode pc 1377
        this.noGoddessFateTip.setVisible(false);
    }
    // source line 317, bytecode pc 1382
    (i = 1);
    while ((i <= fates.length)) {
        // source line 318, bytecode pc 1467
        (isLightedInGoddess = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).GoddessFate.isLightedInGoddess(fates[(i - 1)], data));
        if (isLightedInGoddess) {
            // source line 324, bytecode pc 1591
            xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccbNode, {
    name: (("m_" + i) + "cntLab"),
    tag: this[(("m_" + i) + "cntLab")].getTag(),
    type: "ls",
    id: "LS_yuanfenInf2"
}, this);
        } else {
            // source line 330, bytecode pc 1712
            xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccbNode, {
    name: (("m_" + i) + "cntLab"),
    tag: this[(("m_" + i) + "cntLab")].getTag(),
    type: "ls",
    id: "LS_yuanfenInf1"
}, this);
        }
        // source line 332, bytecode pc 1762
        this[(("m_" + i) + "cntLab")].setString(fates[(i - 1)].getNameString());
        // source line 317, bytecode pc 1775
        (i = (+i + 1));
    }
    // source line 334, bytecode pc 1807
    (i = (fates.length + 1));
    while ((i < 11)) {
        // source line 339, bytecode pc 1929
        xs.Utils.UI.replaceCcbByCfgEntity(this.m_ccbNode, {
    name: (("m_" + i) + "cntLab"),
    tag: this[(("m_" + i) + "cntLab")].getTag(),
    type: "ls",
    id: "LS_yuanfenInf1"
}, this);
        // source line 340, bytecode pc 1964
        this[(("m_" + i) + "cntLab")].setString("");
        // source line 334, bytecode pc 1977
        (i = (+i + 1));
    }
},
    showNoFatesMessage: function() {
    if (!this.noGoddessFateTip) {
        // source line 345, bytecode pc 50
        (this.noGoddessFateTip = xs.Factorys.Label.createByStyleId("LS_danyao"));
        // source line 346, bytecode pc 101
        this.noGoddessFateTip.setString(xs.Tools.String.createString("noGoddessFateTip"));
        // source line 347, bytecode pc 137
        this.noGoddessFateTip.setPosition(this.m_jiacheng_bg.getPosition());
        // source line 348, bytecode pc 173
        xs.Utils.Node.attachNodes(this, this.noGoddessFateTip);
    }
},
    getPositionByType: function(idex) {
    if ((idex == 1)) {
        // source line 355, bytecode pc 54
        return cc.p((this.m_jiacheng01Pic_position.x + 150), this.m_jiacheng01Pic_position.y);
    } else {
        if ((idex == 2)) {
            // source line 359, bytecode pc 114
            return cc.p(this.m_jiacheng01Pic_position.x, (this.m_jiacheng01Pic_position.y - 36));
        } else {
            if ((idex == 3)) {
                // source line 363, bytecode pc 178
                return cc.p((this.m_jiacheng01Pic_position.x + 150), (this.m_jiacheng01Pic_position.y - 36));
            }
        }
    }
},
    getJiaChangePicByType: function(type) {
    var iconPic;
    // source line 367, bytecode pc 4
    (iconPic = null);
    // source line 368, bytecode pc 8
    switch (type) {
        case 1:
        // source line 371, bytecode pc 78
        (iconPic = xs.Factorys.Sprite.create("icon_atk1", "Cmn01"));
        break;
        case 2:
        // source line 376, bytecode pc 125
        (iconPic = xs.Factorys.Sprite.create("icon_def1", "Cmn01"));
        break;
        case 3:
        // source line 381, bytecode pc 172
        (iconPic = xs.Factorys.Sprite.create("icon_hp1", "Cmn01"));
        break;
        case 4:
        // source line 386, bytecode pc 219
        (iconPic = xs.Factorys.Sprite.create("icon_int1", "Cmn01"));
        break;
        default:
        // source line 391, bytecode pc 247
        this.assert("iconPic type erro", type);
        break;
    }
    // source line 396, bytecode pc 256
    return iconPic;
},
    onEnter: function() {
    // source line 401, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 404, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 407, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 408, bytecode pc 31
    this.setTouchPriority((this.m_baseTouchPriority - 1));
    if (xs.Utils.isEmpty(this.m_data)) {
        // source line 411, bytecode pc 118
        (this.m_data = xs.Profile.GameData.Mgr.getInstance().Goddess.getAll());
        // source line 412, bytecode pc 174
        this.m_data.sort(xs.Tools.Sort.by(xs.Constant_SortType_Goddess_Default));
    }
    if ((this.m_data.length == 0)) {
        // source line 415, bytecode pc 219
        this.m_noSelectButton.setTouchPriority((this.m_baseTouchPriority - 1));
    } else {
        // source line 418, bytecode pc 251
        this.m_changeSkinButton.setTouchPriority((this.m_baseTouchPriority - 1));
        // source line 419, bytecode pc 278
        this.m_chuZhanButton.setTouchPriority((this.m_baseTouchPriority - 1));
    }
},
    IconSwapView_swapAtIndex: function(idex) {
    // source line 424, bytecode pc 23
    this.updateView(this.m_data[idex]);
},
    noSelectButtonCallBack: function() {
},
    changeSkinCallBack: function() {
    var skin_id;
    // source line 432, bytecode pc 20
    (skin_id = this.m_middleData.getNextSkinID());
    // source line 448, bytecode pc 161
    xs.Tools.Net.requestGoddessChangeSkin({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    user_godness_id: this.m_middleData.getPkId(),
    godness_skin_id: skin_id
}, function(data) {
    if (data.result) {
        // source line 441, bytecode pc 45
        xs.Views.Mgr.showToastByStringKey("goddess_skinSuccess");
        // source line 443, bytecode pc 70
        this.m_goddessView.updataMiddleTile(this.m_data);
    }
}, function(data) {
}, this);
},
    goToFight: function() {
    var _goddess;
    // source line 452, bytecode pc 7
    (this.m_bef = 0);
    // source line 453, bytecode pc 58
    (_goddess = xs.Profile.GameData.Mgr.getInstance().Goddess.getFightGoddess());
    if (_goddess) {
        // source line 455, bytecode pc 87
        (this.m_bef = _goddess.getBigFighting());
    }
    if (this.m_middleData.getIsFight()) {
        // source line 478, bytecode pc 242
        xs.Tools.Net.requestGoddessCancelFight({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    user_godness_id: this.m_middleData.getPkId()
}, function(data) {
    if (data.result) {
        // source line 466, bytecode pc 32
        (this.m_middleData = this.m_data[this.m_nowPage]);
        // source line 469, bytecode pc 80
        xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
        // source line 470, bytecode pc 102
        this._showFightChange(this.m_bef, 0);
        // source line 472, bytecode pc 122
        this.m_chuZhanZhong.setVisible(false);
        // source line 473, bytecode pc 173
        this.m_chuZhanButton.setString(xs.Tools.String.createString("goddess_goToFight"));
    }
}, function(data) {
}, this);
    } else {
        // source line 503, bytecode pc 380
        xs.Tools.Net.requestGoddessGoToFight({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    user_godness_id: this.m_middleData.getPkId()
}, function(data) {
    if (data.result) {
        // source line 489, bytecode pc 32
        (this.m_middleData = this.m_data[this.m_nowPage]);
        // source line 492, bytecode pc 80
        xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
        // source line 494, bytecode pc 118
        this._showFightChange(this.m_bef, this.m_middleData.getBigFighting());
        // source line 497, bytecode pc 138
        this.m_chuZhanZhong.setVisible(true);
        // source line 498, bytecode pc 189
        this.m_chuZhanButton.setString(xs.Tools.String.createString("goddess_NotgoToFight"));
    }
}, function(data) {
}, this);
    }
},
    rightCallBack: function() {
    var maxPage;
    // source line 510, bytecode pc 26
    this.m_nowPage++;
    // source line 511, bytecode pc 38
    (maxPage = (this.m_goddessNum - 1));
    if ((this.m_nowPage == maxPage)) {
        // source line 513, bytecode pc 73
        this.m_leftButton.setVisible(true);
        // source line 514, bytecode pc 93
        this.m_rightButton.setVisible(false);
    } else {
        // source line 516, bytecode pc 118
        this.m_leftButton.setVisible(true);
        // source line 517, bytecode pc 138
        this.m_rightButton.setVisible(true);
    }
},
    leftCallBack: function() {
    // source line 524, bytecode pc 26
    this.m_nowPage--;
    if ((this.m_nowPage == 0)) {
        // source line 526, bytecode pc 59
        this.m_leftButton.setVisible(false);
        // source line 527, bytecode pc 79
        this.m_rightButton.setVisible(true);
    } else {
        // source line 529, bytecode pc 104
        this.m_leftButton.setVisible(true);
        // source line 530, bytecode pc 124
        this.m_rightButton.setVisible(true);
    }
},
    rightButtonCallback: function() {
    // source line 546, bytecode pc 17
    this.m_goddessView.nextTile();
},
    leftButtonCallback: function() {
    // source line 559, bytecode pc 17
    this.m_goddessView.lastTile();
},
    _showFightChange: function(bef, now) {
    var change, _style;
    // source line 565, bytecode pc 10
    (change = (now - bef));
    if ((change > 0)) {
        // source line 568, bytecode pc 37
        (change = ("+" + change));
        // source line 569, bytecode pc 46
        (_style = "LS_Fight_Cure");
    } else {
        if ((change < 0)) {
            // source line 572, bytecode pc 70
            (_style = "LS_Fight_Hurt");
        }
    }
    if ((change === 0)) {
        // source line 577, bytecode pc 140
        xs.Views.Mgr.showFlutterView(xs.Tools.String.createString("auto_name_210"));
    } else {
        // source line 583, bytecode pc 213
        xs.Views.Mgr.showFlutterView((xs.Tools.String.createString("auto_name_211") + change), _style);
    }
}
}));
// source line 590, bytecode pc 1107
(xs.Views.GoddessMainView.create = function() {
    var view;
    // source line 591, bytecode pc 23
    (view = new xs.Views.GoddessMainView());
    if ((view && view.init())) {
        // source line 593, bytecode pc 55
        return view;
    }
    // source line 595, bytecode pc 80
    xs.assert(false, "xs.Views.GoddessMainView.create error!");
    // source line 596, bytecode pc 82
    return null;
});
