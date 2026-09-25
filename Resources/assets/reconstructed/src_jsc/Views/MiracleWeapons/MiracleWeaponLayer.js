// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/MiracleWeapons/MiracleWeaponLayer.js:1
// source line 1008, bytecode pc 1648
(xs.Views.MiracleWeaponLayer = cc.Layer.extend({
    name: "xs.Views.MiracleWeaponLayer",
    ccbCfg_BuaGua: [
        { tag: 51, type: "ls", name: "m_lb_xue", id: "LS_yuanfenInf1" },
        { tag: 52, type: "ls", name: "m_lb_gong", id: "LS_yuanfenInf1" },
        { tag: 53, type: "ls", name: "m_lb_fang", id: "LS_yuanfenInf1" },
        { tag: 54, type: "ls", name: "m_lb_zhi", id: "LS_yuanfenInf1" },
        {
            tag: 99,
            type: "ls",
            name: "m_jiacheng",
            id: "LS_mainUI4",
            stringId: "MiracleWeapon_weaponJiacheng"
        },
        {
            tag: 80,
            type: "btn",
            name: "m_xiangqingButton",
            id: "Btn_btn1",
            stringId: "MiracleWeapon_xiangqing"
        },
        { tag: 100, type: "ls", name: "m_SubStepName_1", id: "LS_Nomb1" },
        { tag: 101, type: "ls", name: "m_SubStepName_2", id: "LS_Nomb1" },
        { tag: 102, type: "ls", name: "m_SubStepName_3", id: "LS_Nomb1" },
        { tag: 103, type: "ls", name: "m_SubStepName_4", id: "LS_Nomb1" },
        { tag: 104, type: "ls", name: "m_SubStepName_5", id: "LS_Nomb1" },
        { tag: 105, type: "ls", name: "m_SubStepName_6", id: "LS_Nomb1" },
        { tag: 106, type: "ls", name: "m_SubStepName_7", id: "LS_Nomb1" },
        { tag: 107, type: "ls", name: "m_SubStepName_8", id: "LS_Nomb1" },
        { tag: 108, type: "ls", name: "m_SubStepName_9", id: "LS_Nomb1" },
        { tag: 109, type: "ls", name: "m_SubStepName_10", id: "LS_Nomb1" },
        { tag: 110, type: "ls", name: "m_SubStepName_11", id: "LS_green" }
    ],
    ccbCfg_Infor: [
        { tag: 1, type: "ls", name: "m_lb_title", id: "LS_huodong_title" },
        { tag: 2, type: "ls", name: "m_lb_jiacheng", id: "LS_mainUI4" },
        { tag: 3, type: "ls", name: "m_lb_addition", id: "LS_gouyu" },
        { tag: 5, type: "ls", name: "m_lb_xuqiu", id: "LS_mainUI4" },
        { tag: 6, type: "ls", name: "m_first_Need", id: "LS_qiangduo_Inf" },
        { tag: 7, type: "ls", name: "m_first_Have", id: "LS_gouyu" },
        { tag: 8, type: "ls", name: "m_second_Need", id: "LS_qiangduo_Inf" },
        { tag: 9, type: "ls", name: "m_second_Have", id: "LS_gouyu" },
        { tag: 10, type: "ls", name: "m_third_Need", id: "LS_qiangduo_Inf" },
        { tag: 11, type: "ls", name: "m_third_Have", id: "LS_gouyu" },
        {
            tag: 24,
            type: "btn",
            name: "m_duanzaoButton",
            id: "Btn_btn1",
            stringId: "MiracleWeapon_forging"
        }
    ],
    ctor: function() {
    // source line 47, bytecode pc 12
    this._super();
    // source line 48, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(param) {
    var visibleSize, mainMenuWidth, i, numStr, StepStr, _numStr, _StepStr, starBtn, arm_left, arm_right, nextBtn, lastBtn, EquType, weaponPic, spFrame, grade;
    if (!this._super()) {
        // source line 52, bytecode pc 19
        return false;
    }
    // source line 54, bytecode pc 27
    (this.m_lb_xue = null);
    // source line 55, bytecode pc 35
    (this.m_lb_gong = null);
    // source line 56, bytecode pc 43
    (this.m_lb_fang = null);
    // source line 57, bytecode pc 51
    (this.m_lb_zhi = null);
    // source line 59, bytecode pc 59
    (this.m_lb_title = null);
    // source line 60, bytecode pc 67
    (this.m_lb_jiacheng = null);
    // source line 61, bytecode pc 75
    (this.m_lb_xuqiu = null);
    // source line 62, bytecode pc 83
    (this.m_lb_addition = null);
    // source line 65, bytecode pc 91
    (this.m_first_Need = null);
    // source line 66, bytecode pc 99
    (this.m_first_Have = null);
    // source line 67, bytecode pc 107
    (this.m_second_Need = null);
    // source line 68, bytecode pc 115
    (this.m_second_Have = null);
    // source line 69, bytecode pc 123
    (this.m_third_Need = null);
    // source line 70, bytecode pc 131
    (this.m_third_Have = null);
    // source line 73, bytecode pc 139
    (this.m_first_icon = null);
    // source line 74, bytecode pc 147
    (this.m_second_icon = null);
    // source line 75, bytecode pc 155
    (this.m_third_icon = null);
    // source line 77, bytecode pc 163
    (this.m_duanzaoButton = null);
    // source line 78, bytecode pc 171
    (this.m_xiangqingButton = null);
    // source line 81, bytecode pc 179
    (this.m_MiracleWeaponInfor = null);
    // source line 82, bytecode pc 187
    (this.m_weaponOnHundredInforList = null);
    // source line 84, bytecode pc 195
    (this.m_WeaponPic = null);
    // source line 86, bytecode pc 203
    (this.m_vipLightStar = null);
    // source line 87, bytecode pc 211
    (this.m_vipDarkStar = null);
    // source line 90, bytecode pc 219
    (this.m_SubStepName_11 = null);
    // source line 92, bytecode pc 231
    (this.m_lightStars = []);
    // source line 93, bytecode pc 243
    (this.m_darkStars = []);
    // source line 95, bytecode pc 255
    (this.m_conditionArray = []);
    // source line 96, bytecode pc 267
    (this.m_haveArray = []);
    // source line 98, bytecode pc 277
    (this.m_MiracleWeaponInfor = param);
    // source line 100, bytecode pc 289
    (this.m_needList = []);
    // source line 101, bytecode pc 301
    (this.m_haveList = []);
    // source line 102, bytecode pc 313
    (this.m_iconsList = []);
    // source line 104, bytecode pc 321
    (this.m_vipInforStep = null);
    // source line 105, bytecode pc 329
    (this.m_vipInforSubStep = null);
    // source line 107, bytecode pc 394
    (this.m_userVipGrade = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerVipLevel());
    // source line 109, bytecode pc 418
    (this.m_weaponOnHundredInforList = this.m_MiracleWeaponInfor.getNormalList());
    // source line 110, bytecode pc 442
    (this.m_weaponVIPInforList = this.m_MiracleWeaponInfor.getEliteList());
    // source line 112, bytecode pc 466
    (this.m_weaponId = this.m_MiracleWeaponInfor.getMagicalId());
    // source line 114, bytecode pc 520
    (this.arrayPieces = xs.Profile.GameData.Mgr.getInstance().EquipmentPieces.getAll());
    // source line 115, bytecode pc 574
    (this.arraySouls = xs.Profile.GameData.Mgr.getInstance().GeneralSouls.getAll());
    // source line 117, bytecode pc 582
    (this.m_PagePosition = 0);
    // source line 118, bytecode pc 590
    (this.m_ClickPosition = 0);
    // source line 120, bytecode pc 598
    (this.m_fixedStep = 0);
    // source line 121, bytecode pc 606
    (this.m_fixedSubStep = 0);
    // source line 122, bytecode pc 614
    (this.m_fixedVipStep = 0);
    // source line 123, bytecode pc 622
    (this.m_clickIsVip = 0);
    // source line 127, bytecode pc 647
    (visibleSize = xs.director.getVisibleSize());
    // source line 128, bytecode pc 671
    (mainMenuWidth = xs.Views.MainMenuView.Width);
    // source line 130, bytecode pc 722
    (this.ccbNode_BuaGua = xs.ccb_reader.load(xs.Cfg.CCBI.MiracleWeaponsBaGua, this));
    // source line 133, bytecode pc 825
    xs.Utils.Node.attachNodes(this, this.ccbNode_BuaGua, { desc: "lb", offset: cc.p(0, 0), sc: true }, { zOrder: 0, tag: 1 });
    // source line 134, bytecode pc 868
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode_BuaGua, this.ccbCfg_BuaGua, this);
    // source line 136, bytecode pc 919
    (this.ccbNode_Infor = xs.ccb_reader.load(xs.Cfg.CCBI.MiracleWeaponsInfor, this));
    // source line 137, bytecode pc 962
    this.ccbNode_Infor.setContentSize(cc.size(400, 640));
    // source line 138, bytecode pc 1005
    this.ccbNode_Infor.setAnchorPoint(cc.p(1, 0.5));
    // source line 144, bytecode pc 1111
    xs.Utils.Node.attachNodes(this, this.ccbNode_Infor, {
    desc: "lb",
    offset: { x: ((visibleSize.width - mainMenuWidth) + 50), y: (visibleSize.height / 2) },
    sc: true
});
    // source line 145, bytecode pc 1154
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode_Infor, this.ccbCfg_Infor, this);
    // source line 147, bytecode pc 1205
    this.m_lb_jiacheng.setString(xs.Tools.String.createString("MiracleWeapon_jiacheng"));
    // source line 148, bytecode pc 1256
    this.m_lb_xuqiu.setString(xs.Tools.String.createString("MiracleWeapon_xuqiu"));
    // source line 150, bytecode pc 1283
    (this.m_first_icon = this.ccbNode_Infor.getChildByTag(21));
    // source line 151, bytecode pc 1310
    (this.m_second_icon = this.ccbNode_Infor.getChildByTag(22));
    // source line 152, bytecode pc 1337
    (this.m_third_icon = this.ccbNode_Infor.getChildByTag(23));
    // source line 153, bytecode pc 1362
    this.m_iconsList.push(this.m_first_icon);
    // source line 154, bytecode pc 1387
    this.m_iconsList.push(this.m_second_icon);
    // source line 155, bytecode pc 1412
    this.m_iconsList.push(this.m_third_icon);
    // source line 157, bytecode pc 1437
    this.m_needList.push(this.m_first_Need);
    // source line 158, bytecode pc 1462
    this.m_needList.push(this.m_second_Need);
    // source line 159, bytecode pc 1487
    this.m_needList.push(this.m_third_Need);
    // source line 160, bytecode pc 1512
    this.m_haveList.push(this.m_first_Have);
    // source line 161, bytecode pc 1537
    this.m_haveList.push(this.m_second_Have);
    // source line 162, bytecode pc 1562
    this.m_haveList.push(this.m_third_Have);
    // source line 166, bytecode pc 1600
    this.m_duanzaoButton.setOnClickCallBack(this.duanZaoCallback.bind(this));
    // source line 169, bytecode pc 1638
    this.m_xiangqingButton.setOnClickCallBack(this.xiangqingCallback.bind(this));
    // source line 173, bytecode pc 1665
    (this.m_left_Button = this.ccbNode_BuaGua.getChildByTag(61));
    // source line 174, bytecode pc 1692
    (this.m_right_Button = this.ccbNode_BuaGua.getChildByTag(62));
    // source line 176, bytecode pc 1719
    (this.m_vipLightStar = this.ccbNode_BuaGua.getChildByTag(30));
    // source line 177, bytecode pc 1746
    (this.m_vipDarkStar = this.ccbNode_BuaGua.getChildByTag(10));
    // source line 178, bytecode pc 1767
    this.m_vipLightStar.setZOrder(2);
    // source line 179, bytecode pc 1787
    this.m_vipDarkStar.setZOrder(1);
    // source line 183, bytecode pc 1792
    (i = 1);
    while ((i <= 10)) {
        if (this[("m_SubStepName_" + i)]) {
            // source line 185, bytecode pc 1848
            (numStr = xs.Tools.String.convNumberString(i));
            // source line 186, bytecode pc 1897
            (StepStr = xs.Tools.String.createStringWithArgsArray("MiracleWeaponInfor_3", [ numStr ]));
            // source line 187, bytecode pc 1924
            this[("m_SubStepName_" + i)].setString(StepStr);
            // source line 188, bytecode pc 1950
            this[("m_SubStepName_" + i)].setZOrder(2);
        }
        // source line 183, bytecode pc 1965
        i++;
    }
    // source line 192, bytecode pc 2010
    (_numStr = xs.Tools.String.convNumberString(11));
    // source line 193, bytecode pc 2059
    (_StepStr = xs.Tools.String.createStringWithArgsArray("MiracleWeaponInfor_3", [ _numStr ]));
    // source line 194, bytecode pc 2081
    this.m_SubStepName_11.setString(_StepStr);
    // source line 195, bytecode pc 2102
    this.m_SubStepName_11.setZOrder(2);
    // source line 198, bytecode pc 2139
    (starBtn = xs.Views.Btn.createInvisibleWithParent(this.m_vipDarkStar));
    // source line 199, bytecode pc 2192
    starBtn.setOnClickCallBack(this.ClickStarCallback.bind({ self: this, tag: 11 }));
    // source line 201, bytecode pc 2233
    (arm_left = xs.Views.Armature.AutoAudioArmature.create("Arm_guideArrow"));
    // source line 202, bytecode pc 2273
    arm_left.playAniById("guide", { loop: true, speed: 1 });
    // source line 203, bytecode pc 2314
    (arm_right = xs.Views.Armature.AutoAudioArmature.create("Arm_guideArrow"));
    // source line 204, bytecode pc 2354
    arm_right.playAniById("guide", { loop: true, speed: 1 });
    // source line 205, bytecode pc 2388
    (nextBtn = xs.Views.Btn.createInvisibleWithChild(arm_right));
    // source line 206, bytecode pc 2423
    nextBtn.setOnClickCallBack(this.rightButtonCallback.bind(this));
    // source line 207, bytecode pc 2457
    (lastBtn = xs.Views.Btn.createInvisibleWithChild(arm_left));
    // source line 208, bytecode pc 2492
    lastBtn.setOnClickCallBack(this.leftButtonCallback.bind(this));
    // source line 209, bytecode pc 2511
    lastBtn.setRotationY(180);
    // source line 210, bytecode pc 2556
    xs.Utils.Node.replaceChildSafe(this.ccbNode_BuaGua, this.m_left_Button, lastBtn);
    // source line 211, bytecode pc 2566
    (this.m_left_Button = lastBtn);
    // source line 212, bytecode pc 2611
    xs.Utils.Node.replaceChildSafe(this.ccbNode_BuaGua, this.m_right_Button, nextBtn);
    // source line 213, bytecode pc 2621
    (this.m_right_Button = nextBtn);
    // source line 217, bytecode pc 2648
    (this.m_WeaponPic = this.ccbNode_BuaGua.getChildByTag(88));
    // source line 219, bytecode pc 2669
    (EquType = this.m_MiracleWeaponInfor.getEquipmentType());
    if (((EquType == xs.Models.Equipment_Type_Atk) || (EquType == xs.Models.Equipment_Type_Def))) {
        // source line 221, bytecode pc 2745
        (weaponPic = this.m_MiracleWeaponInfor.createPartView("equ1"));
        // source line 223, bytecode pc 2790
        xs.Utils.Node.replaceChildSafe(this.ccbNode_BuaGua, this.m_WeaponPic, weaponPic);
        // source line 224, bytecode pc 2800
        (this.m_WeaponPic = weaponPic);
        // source line 225, bytecode pc 2820
        this.m_WeaponPic.setZOrder(1);
    } else {
        // source line 227, bytecode pc 2852
        (weaponPic = this.m_MiracleWeaponInfor.createPartView("equ1"));
        // source line 228, bytecode pc 2873
        weaponPic.setScale(0.8);
        // source line 229, bytecode pc 2918
        xs.Utils.Node.replaceChildSafe(this.ccbNode_BuaGua, this.m_WeaponPic, weaponPic);
        // source line 230, bytecode pc 2928
        (this.m_WeaponPic = weaponPic);
        // source line 231, bytecode pc 2948
        this.m_WeaponPic.setZOrder(1);
        // source line 233, bytecode pc 2975
        (spFrame = this.m_MiracleWeaponInfor.createPartView("equ2"));
        // source line 234, bytecode pc 3008
        spFrame.setPosition(this.m_WeaponPic.getPosition());
        // source line 235, bytecode pc 3030
        this.ccbNode_BuaGua.addChild(spFrame);
        // source line 236, bytecode pc 3051
        spFrame.setScale(0.8);
        // source line 237, bytecode pc 3068
        spFrame.setZOrder(1);
    }
    // source line 242, bytecode pc 3112
    (this.m_instructionBtn = xs.Tools.Views.Btn.createInstruction("MiracleWeapon_Instruction"));
    // source line 243, bytecode pc 3200
    xs.Utils.Node.attachNodes(this, this.m_instructionBtn, { desc: "lb", offset: cc.p(60, 110), sc: true }, null);
    // source line 250, bytecode pc 3239
    (this.m_step = Number(this.m_MiracleWeaponInfor.getNormalStep()));
    // source line 251, bytecode pc 3278
    (this.m_subStep = Number(this.m_MiracleWeaponInfor.getNormalSubStep()));
    // source line 253, bytecode pc 3308
    (grade = this.getNextGrade(this.m_step, this.m_subStep));
    // source line 256, bytecode pc 3323
    (this.m_fixedStep = grade.Step);
    // source line 257, bytecode pc 3338
    (this.m_fixedSubStep = grade.subStep);
    // source line 259, bytecode pc 3377
    (this.m_fixedVipStep = Number(this.m_MiracleWeaponInfor.getEliteStep()));
    // source line 261, bytecode pc 3392
    (this.m_PagePosition = grade.Step);
    // source line 262, bytecode pc 3407
    (this.m_ClickPosition = grade.subStep);
    // source line 266, bytecode pc 3427
    this.setVipPointVisiable(this.m_fixedStep);
    // source line 267, bytecode pc 3454
    this.updateWeaponInfor(this.m_fixedStep, this.m_fixedSubStep);
    // source line 268, bytecode pc 3467
    this.initStarsAndButton();
    if (((this.m_step == 10) && (this.m_subStep == 10))) {
        // source line 271, bytecode pc 3516
        this.m_duanzaoButton.setEnabled(false);
    } else {
        // source line 274, bytecode pc 3541
        this.m_duanzaoButton.setEnabled(true);
    }
    // source line 277, bytecode pc 3543
    return true;
},
    getNextGrade: function(step, substep) {
    var grade;
    // source line 282, bytecode pc 4
    (grade = null);
    if ((substep == 10)) {
        if ((step != 10)) {
            // source line 286, bytecode pc 41
            step++;
            // source line 287, bytecode pc 46
            (substep = 1);
        }
    } else {
        // source line 290, bytecode pc 66
        substep++;
    }
    // source line 294, bytecode pc 92
    (grade = { Step: step, subStep: substep });
    // source line 298, bytecode pc 96
    return grade;
},
    setVipPointVisiable: function(step) {
    var vipGrade;
    if ((step <= this.m_fixedVipStep)) {
        // source line 303, bytecode pc 34
        this.m_vipLightStar.setVisible(true);
        // source line 304, bytecode pc 54
        this.m_vipDarkStar.setVisible(true);
        // source line 305, bytecode pc 74
        this.m_SubStepName_11.setVisible(true);
    } else {
        // source line 308, bytecode pc 106
        (vipGrade = this.m_weaponVIPInforList[(step - 1)].getVipGrade());
        if ((this.m_userVipGrade >= Number(vipGrade))) {
            // source line 312, bytecode pc 156
            this.m_vipDarkStar.setVisible(true);
            // source line 313, bytecode pc 176
            this.m_vipLightStar.setVisible(false);
            // source line 314, bytecode pc 196
            this.m_SubStepName_11.setVisible(true);
        } else {
            // source line 317, bytecode pc 221
            this.m_vipLightStar.setVisible(false);
            // source line 318, bytecode pc 241
            this.m_vipDarkStar.setVisible(false);
            // source line 319, bytecode pc 261
            this.m_SubStepName_11.setVisible(false);
        }
    }
},
    initStarsAndButton: function() {
    var i, starBtn, lightStarsNum;
    // source line 328, bytecode pc 4
    (i = 0);
    while ((i < 10)) {
        // source line 329, bytecode pc 45
        (this.m_lightStars[i] = this.ccbNode_BuaGua.getChildByTag((20 + i)));
        // source line 330, bytecode pc 70
        this.m_lightStars[i].setZOrder(2);
        // source line 331, bytecode pc 94
        this.m_lightStars[i].setVisible(false);
        // source line 332, bytecode pc 126
        (this.m_darkStars[i] = this.ccbNode_BuaGua.getChildByTag(i));
        // source line 333, bytecode pc 150
        this.m_darkStars[i].setZOrder(1);
        // source line 335, bytecode pc 191
        (starBtn = xs.Views.Btn.createInvisibleWithParent(this.m_darkStars[i]));
        // source line 336, bytecode pc 247
        starBtn.setOnClickCallBack(this.ClickStarCallback.bind({ self: this, tag: (i + 1) }));
        // source line 328, bytecode pc 262
        i++;
    }
    // source line 341, bytecode pc 284
    (lightStarsNum = this.m_subStep);
    if (((this.m_subStep == 10) && (this.m_step != 10))) {
        // source line 344, bytecode pc 318
        (lightStarsNum = 0);
    }
    // source line 348, bytecode pc 323
    (i = 0);
    while ((i < Number(lightStarsNum))) {
        // source line 349, bytecode pc 353
        this.m_lightStars[i].setVisible(true);
        // source line 348, bytecode pc 368
        i++;
    }
    if ((this.m_fixedStep == 1)) {
        // source line 355, bytecode pc 429
        this.m_left_Button.setVisible(false);
        // source line 356, bytecode pc 449
        this.m_right_Button.setVisible(false);
    } else {
        if ((this.m_PagePosition == 1)) {
            // source line 360, bytecode pc 487
            this.m_left_Button.setVisible(false);
            // source line 361, bytecode pc 507
            this.m_right_Button.setVisible(true);
        } else {
            if ((this.m_PagePosition == this.m_fixedStep)) {
                // source line 365, bytecode pc 550
                this.m_left_Button.setVisible(true);
                // source line 366, bytecode pc 570
                this.m_right_Button.setVisible(false);
            } else {
                // source line 369, bytecode pc 595
                this.m_left_Button.setVisible(true);
                // source line 370, bytecode pc 615
                this.m_right_Button.setVisible(true);
            }
        }
    }
},
    ClickStarCallback: function() {
    var tag, self;
    // source line 376, bytecode pc 9
    (tag = this.tag);
    // source line 377, bytecode pc 19
    (self = this.self);
    // source line 379, bytecode pc 29
    (this.m_ClickPosition = tag);
    // source line 381, bytecode pc 57
    self.updateWeaponInfor(self.m_PagePosition, tag);
    // source line 382, bytecode pc 85
    self.setForgeButtonStatus(self.m_PagePosition, tag);
},
    setForgeButtonStatus: function(step, subStep) {
    if (((step == this.m_fixedStep) && (subStep == this.m_fixedSubStep))) {
        if (((step != 10) || (subStep != 10))) {
            // source line 390, bytecode pc 61
            (this.m_clickIsVip = 0);
            // source line 391, bytecode pc 81
            this.m_duanzaoButton.setEnabled(true);
        }
    } else {
        if ((subStep == 11)) {
            if ((step < this.m_fixedStep)) {
                if ((this.m_fixedVipStep == (step - 1))) {
                    // source line 398, bytecode pc 137
                    (this.m_clickIsVip = 1);
                    // source line 399, bytecode pc 157
                    this.m_duanzaoButton.setEnabled(true);
                } else {
                    // source line 402, bytecode pc 182
                    this.m_duanzaoButton.setEnabled(false);
                }
            } else {
                if (((this.m_step == 10) && (this.m_subStep == 10))) {
                    if ((this.m_fixedVipStep == 9)) {
                        // source line 410, bytecode pc 238
                        (this.m_clickIsVip = 1);
                        // source line 411, bytecode pc 258
                        this.m_duanzaoButton.setEnabled(true);
                    } else {
                        // source line 413, bytecode pc 283
                        this.m_duanzaoButton.setEnabled(false);
                    }
                } else {
                    // source line 416, bytecode pc 308
                    this.m_duanzaoButton.setEnabled(false);
                }
            }
        } else {
            // source line 421, bytecode pc 333
            this.m_duanzaoButton.setEnabled(false);
        }
    }
},
    rightButtonCallback: function() {
    // source line 428, bytecode pc 26
    this.m_PagePosition++;
    if ((this.m_PagePosition == 1)) {
        // source line 431, bytecode pc 59
        this.m_left_Button.setVisible(false);
        // source line 432, bytecode pc 79
        this.m_right_Button.setVisible(true);
    } else {
        if ((this.m_PagePosition == this.m_fixedStep)) {
            // source line 436, bytecode pc 122
            this.m_left_Button.setVisible(true);
            // source line 437, bytecode pc 142
            this.m_right_Button.setVisible(false);
        } else {
            // source line 440, bytecode pc 167
            this.m_left_Button.setVisible(true);
            // source line 441, bytecode pc 187
            this.m_right_Button.setVisible(true);
        }
    }
    // source line 445, bytecode pc 207
    this.updateStars(this.m_PagePosition);
    // source line 447, bytecode pc 215
    (this.m_ClickPosition = 1);
    // source line 448, bytecode pc 237
    this.updateWeaponInfor(this.m_PagePosition, 1);
    // source line 450, bytecode pc 259
    this.setForgeButtonStatus(this.m_PagePosition, 1);
},
    leftButtonCallback: function() {
    // source line 455, bytecode pc 26
    this.m_PagePosition--;
    if ((this.m_PagePosition == 1)) {
        // source line 458, bytecode pc 59
        this.m_left_Button.setVisible(false);
        // source line 459, bytecode pc 79
        this.m_right_Button.setVisible(true);
    } else {
        if ((this.m_PagePosition == this.m_fixedStep)) {
            // source line 463, bytecode pc 122
            this.m_left_Button.setVisible(true);
            // source line 464, bytecode pc 142
            this.m_right_Button.setVisible(false);
        } else {
            // source line 467, bytecode pc 167
            this.m_left_Button.setVisible(true);
            // source line 468, bytecode pc 187
            this.m_right_Button.setVisible(true);
        }
    }
    // source line 471, bytecode pc 207
    this.updateStars(this.m_PagePosition);
    // source line 473, bytecode pc 216
    (this.m_ClickPosition = 10);
    // source line 474, bytecode pc 239
    this.updateWeaponInfor(this.m_PagePosition, 10);
    // source line 475, bytecode pc 262
    this.setForgeButtonStatus(this.m_PagePosition, 10);
},
    updateStars: function(page) {
    var i, lightStarsNum;
    // source line 482, bytecode pc 4
    (i = 0);
    while ((i < this.m_lightStars.length)) {
        // source line 483, bytecode pc 34
        this.m_lightStars[i].setVisible(false);
        // source line 482, bytecode pc 49
        i++;
    }
    // source line 487, bytecode pc 75
    (lightStarsNum = 0);
    if (((this.m_subStep == 10) && (this.m_step == 10))) {
        // source line 490, bytecode pc 114
        (lightStarsNum = this.m_subStep);
    } else {
        if ((page == this.m_fixedStep)) {
            if ((this.m_subStep != 10)) {
                // source line 495, bytecode pc 158
                (lightStarsNum = this.m_subStep);
            }
        } else {
            // source line 499, bytecode pc 169
            (lightStarsNum = 10);
        }
    }
    // source line 503, bytecode pc 174
    (i = 0);
    while ((i < lightStarsNum)) {
        // source line 504, bytecode pc 204
        this.m_lightStars[i].setVisible(true);
        // source line 503, bytecode pc 219
        i++;
    }
    // source line 508, bytecode pc 249
    this.setVipPointVisiable(page);
},
    forgeSuccessAndUpdate: function(data) {
    var grade;
    // source line 513, bytecode pc 36
    (this.m_MiracleWeaponInfor = xs.Models.MagicalEqu.createWithJson(data));
    // source line 514, bytecode pc 90
    (this.arrayPieces = xs.Profile.GameData.Mgr.getInstance().EquipmentPieces.getAll());
    // source line 515, bytecode pc 144
    (this.arraySouls = xs.Profile.GameData.Mgr.getInstance().GeneralSouls.getAll());
    // source line 517, bytecode pc 183
    (this.m_step = Number(this.m_MiracleWeaponInfor.getNormalStep()));
    // source line 518, bytecode pc 222
    (this.m_subStep = Number(this.m_MiracleWeaponInfor.getNormalSubStep()));
    // source line 519, bytecode pc 261
    (this.m_fixedVipStep = Number(this.m_MiracleWeaponInfor.getEliteStep()));
    // source line 522, bytecode pc 291
    (grade = this.getNextGrade(this.m_step, this.m_subStep));
    // source line 525, bytecode pc 306
    (this.m_fixedStep = grade.Step);
    // source line 526, bytecode pc 321
    (this.m_fixedSubStep = grade.subStep);
    // source line 529, bytecode pc 360
    (this.m_fixedVipStep = Number(this.m_MiracleWeaponInfor.getEliteStep()));
    if (this.m_clickIsVip) {
        // source line 534, bytecode pc 384
        (this.m_PagePosition = this.m_vipInforStep);
        // source line 535, bytecode pc 397
        (this.m_ClickPosition = this.m_vipInforSubStep);
    } else {
        // source line 538, bytecode pc 417
        (this.m_PagePosition = grade.Step);
        // source line 539, bytecode pc 432
        (this.m_ClickPosition = grade.subStep);
    }
    if ((this.m_fixedStep == 1)) {
        // source line 546, bytecode pc 465
        this.m_left_Button.setVisible(false);
        // source line 547, bytecode pc 485
        this.m_right_Button.setVisible(false);
    } else {
        if ((this.m_PagePosition == 1)) {
            // source line 551, bytecode pc 523
            this.m_left_Button.setVisible(false);
            // source line 552, bytecode pc 543
            this.m_right_Button.setVisible(true);
        } else {
            if ((this.m_PagePosition == this.m_fixedStep)) {
                // source line 556, bytecode pc 586
                this.m_left_Button.setVisible(true);
                // source line 557, bytecode pc 606
                this.m_right_Button.setVisible(false);
            } else {
                // source line 560, bytecode pc 631
                this.m_left_Button.setVisible(true);
                // source line 561, bytecode pc 651
                this.m_right_Button.setVisible(true);
            }
        }
    }
    if ((this.m_clickIsVip == 0)) {
        if (((this.m_step == 10) && (this.m_subStep == 10))) {
            // source line 569, bytecode pc 753
            xs.Views.Mgr.showToast(xs.Tools.String.createString("MiracleWeapon_highest"));
            // source line 570, bytecode pc 773
            this.m_duanzaoButton.setEnabled(false);
        } else {
            // source line 573, bytecode pc 838
            xs.Views.Mgr.showToast(xs.Tools.String.createString("MiracleWeapon_ForgeSuccess"));
            // source line 574, bytecode pc 865
            this.setForgeButtonStatus(this.m_PagePosition, this.m_ClickPosition);
        }
    } else {
        // source line 577, bytecode pc 930
        xs.Views.Mgr.showToast(xs.Tools.String.createString("MiracleWeapon_ForgeSuccess"));
        // source line 578, bytecode pc 957
        this.setForgeButtonStatus(this.m_PagePosition, this.m_ClickPosition);
    }
    // source line 581, bytecode pc 977
    this.updateStars(this.m_PagePosition);
    // source line 582, bytecode pc 1004
    this.updateWeaponInfor(this.m_PagePosition, this.m_ClickPosition);
},
    duanZaoCallback: function() {
    var conditionNum, i;
    // source line 586, bytecode pc 4
    (conditionNum = 0);
    // source line 587, bytecode pc 9
    (i = 0);
    while ((i < 3)) {
        if ((this.m_haveArray[i] >= this.m_conditionArray[i])) {
            // source line 591, bytecode pc 56
            conditionNum++;
        }
        // source line 587, bytecode pc 71
        i++;
    }
    if ((conditionNum == 3)) {
        // source line 622, bytecode pc 227
        xs.Tools.Net.requestMiracleWeaponForge({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    magic_id: this.m_weaponId,
    is_vip: this.m_clickIsVip
}, function(data) {
    var list;
    if ((data.result == true)) {
        if (data.cmn.magic_info.update_list[0]) {
            // source line 609, bytecode pc 63
            (list = data.cmn.magic_info.update_list[0]);
            if ((list.length != 0)) {
                // source line 612, bytecode pc 95
                this.forgeSuccessAndUpdate(list);
            }
        }
    }
}, function(data) {
}, this);
    } else {
        // source line 628, bytecode pc 292
        xs.Views.Mgr.showToast(xs.Tools.String.createString("MiracleWeapon_disableForge"));
    }
},
    xiangqingCallback: function() {
    // source line 634, bytecode pc 39
    xs.Views.Mgr.showDialogByName("MiracleWeaponInforDialog", this.m_MiracleWeaponInfor);
},
    onEnter: function() {
    // source line 638, bytecode pc 12
    this._super();
},
    onExit: function() {
    // source line 641, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 644, bytecode pc 9
    (this.m_baseTouchPriority = priority);
},
    updateWeaponInfor: function(step, subStep) {
    var grade, clickWeaponInfor, conditionList, array, str, titleStr, i, conditionListLength, data, gongInfor, fangInfor, xueInfor, zhiInfor, gong, fang, xue, zhi;
    // source line 652, bytecode pc 17
    (grade = ((((step - 1) * 10) + subStep) - 1));
    // source line 653, bytecode pc 31
    (clickWeaponInfor = this.m_weaponOnHundredInforList[grade]);
    // source line 656, bytecode pc 36
    (conditionList = null);
    if ((subStep == 11)) {
        // source line 661, bytecode pc 57
        (this.m_vipInforStep = step);
        // source line 662, bytecode pc 67
        (this.m_vipInforSubStep = subStep);
        // source line 665, bytecode pc 91
        this.m_lb_title.setString("");
        // source line 669, bytecode pc 141
        this.setEveryClickAddition(this.m_weaponVIPInforList[(step - 1)].getEffectType(), this.m_weaponVIPInforList[(step - 1)]);
        // source line 672, bytecode pc 168
        (conditionList = this.m_weaponVIPInforList[(step - 1)].getConditionList());
    } else {
        // source line 677, bytecode pc 182
        (array = []);
        // source line 678, bytecode pc 218
        (array[0] = xs.Tools.String.convNumberString(step));
        // source line 679, bytecode pc 254
        (array[1] = xs.Tools.String.convNumberString(subStep));
        // source line 681, bytecode pc 290
        (str = xs.Tools.String.createString("MiracleWeapon_title"));
        // source line 682, bytecode pc 328
        (titleStr = xs.Tools.String.replaceStringByArray(str, array));
        // source line 683, bytecode pc 350
        this.m_lb_title.setString(titleStr);
        // source line 687, bytecode pc 382
        this.setEveryClickAddition(clickWeaponInfor.getEffectType(), clickWeaponInfor);
        // source line 690, bytecode pc 400
        (conditionList = clickWeaponInfor.getConditionList());
    }
    // source line 694, bytecode pc 405
    (i = 0);
    while ((i < 3)) {
        // source line 695, bytecode pc 435
        this.m_needList[i].setVisible(true);
        // source line 696, bytecode pc 459
        this.m_haveList[i].setVisible(true);
        // source line 697, bytecode pc 483
        this.m_iconsList[i].setVisible(true);
        // source line 694, bytecode pc 498
        i++;
    }
    // source line 700, bytecode pc 522
    (conditionListLength = conditionList.length);
    // source line 701, bytecode pc 527
    (i = 0);
    while ((i < 3)) {
        if ((i < conditionListLength)) {
            if ((conditionList[i][0] && (conditionList[i][0] != "0"))) {
                // source line 709, bytecode pc 633
                (data = { id: conditionList[i][0], num: conditionList[i][1], type: conditionList[i][2] });
                // source line 712, bytecode pc 654
                this.switchCreateIcon(data, i);
            } else {
                // source line 715, bytecode pc 671
                (this.m_haveArray[i] = 0);
                // source line 716, bytecode pc 683
                (this.m_conditionArray[i] = 0);
                // source line 718, bytecode pc 707
                this.m_needList[i].setVisible(false);
                // source line 719, bytecode pc 731
                this.m_haveList[i].setVisible(false);
                // source line 720, bytecode pc 755
                this.m_iconsList[i].setVisible(false);
            }
        } else {
            // source line 725, bytecode pc 772
            (this.m_haveArray[i] = 0);
            // source line 726, bytecode pc 784
            (this.m_conditionArray[i] = 0);
            // source line 728, bytecode pc 808
            this.m_needList[i].setVisible(false);
            // source line 729, bytecode pc 832
            this.m_haveList[i].setVisible(false);
            // source line 730, bytecode pc 856
            this.m_iconsList[i].setVisible(false);
        }
        // source line 701, bytecode pc 871
        i++;
    }
    // source line 741, bytecode pc 919
    (gongInfor = { type: "1", Step: step, SubStep: subStep });
    // source line 747, bytecode pc 955
    (fangInfor = { type: "2", Step: step, SubStep: subStep });
    // source line 753, bytecode pc 991
    (xueInfor = { type: "3", Step: step, SubStep: subStep });
    // source line 759, bytecode pc 1027
    (zhiInfor = { type: "4", Step: step, SubStep: subStep });
    // source line 764, bytecode pc 1047
    (gong = this.getJiachengByTypeAndGrade(gongInfor));
    // source line 765, bytecode pc 1067
    (fang = this.getJiachengByTypeAndGrade(fangInfor));
    // source line 766, bytecode pc 1087
    (xue = this.getJiachengByTypeAndGrade(xueInfor));
    // source line 767, bytecode pc 1107
    (zhi = this.getJiachengByTypeAndGrade(zhiInfor));
    // source line 770, bytecode pc 1129
    this.m_lb_xue.setString(xue);
    // source line 771, bytecode pc 1151
    this.m_lb_gong.setString(gong);
    // source line 772, bytecode pc 1173
    this.m_lb_fang.setString(fang);
    // source line 773, bytecode pc 1195
    this.m_lb_zhi.setString(zhi);
},
    setEveryClickAddition: function(type, data) {
    var str, array, yuanfenArray, replaceStr;
    // source line 779, bytecode pc 4
    (str = null);
    // source line 780, bytecode pc 23
    switch (Number(type)) {
        case 1:
        // source line 783, bytecode pc 103
        (str = xs.Tools.String.createString("MiracleWeapon_gongjia"));
        break;
        case 2:
        // source line 787, bytecode pc 144
        (str = xs.Tools.String.createString("MiracleWeapon_fangjia"));
        break;
        case 3:
        // source line 791, bytecode pc 185
        (str = xs.Tools.String.createString("MiracleWeapon_xuejia"));
        break;
        case 4:
        // source line 795, bytecode pc 226
        (str = xs.Tools.String.createString("MiracleWeapon_zhijia"));
        break;
        case 5:
        // source line 799, bytecode pc 267
        (str = xs.Tools.String.createString("MiracleWeapon_jinengjia"));
        break;
        case 6:
        // source line 803, bytecode pc 308
        (str = xs.Tools.String.createString("MiracleWeapon_jinengjinjie"));
        break;
        case 7:
        // source line 807, bytecode pc 349
        (str = xs.Tools.String.createString("MiracleWeapon_yuanfenType"));
        break;
        case 8:
        // source line 811, bytecode pc 390
        (str = xs.Tools.String.createString("MiracleWeapon_tianfudian"));
        break;
        default:
        // source line 815, bytecode pc 418
        xs.warn("createWeaponIntroByType type is erro");
        break;
    }
    if ((type != 7)) {
        // source line 821, bytecode pc 443
        (array = []);
        // source line 822, bytecode pc 463
        (array[0] = data.getEffectVal());
        // source line 825, bytecode pc 516
        this.m_lb_addition.setString(xs.Tools.String.replaceStringByArray(str, array));
    } else {
        // source line 829, bytecode pc 539
        (yuanfenArray = data.getEffectVal());
        // source line 831, bytecode pc 548
        (array = []);
        // source line 832, bytecode pc 597
        (array[0] = xs.Models.Fate.createWithBase(yuanfenArray[0]).getNameString());
        // source line 833, bytecode pc 646
        (array[1] = xs.Models.Fate.createWithBase(yuanfenArray[1]).getNameString());
        // source line 835, bytecode pc 684
        (replaceStr = xs.Tools.String.replaceStringByArray(str, array));
        if ((replaceStr.length > 14)) {
            // source line 838, bytecode pc 747
            (replaceStr = ((replaceStr.substr(0, 13) + "\n") + replaceStr.substr(13)));
        }
        // source line 841, bytecode pc 769
        this.m_lb_addition.setString(replaceStr);
    }
},
    getJiachengByTypeAndGrade: function(data) {
    var num, step_int, subStep_int, grade, i, step_effectVal, sub_effectVal;
    // source line 848, bytecode pc 4
    (num = 0);
    // source line 849, bytecode pc 31
    (step_int = Number(data.Step));
    // source line 850, bytecode pc 58
    (subStep_int = Number(data.SubStep));
    // source line 852, bytecode pc 63
    (grade = null);
    if ((subStep_int == 11)) {
        // source line 856, bytecode pc 98
        (grade = ((((this.m_step - 1) * 10) + this.m_subStep) - 1));
        // source line 858, bytecode pc 103
        (i = 0);
        while ((i < step_int)) {
            if ((this.m_weaponVIPInforList[i].getEffectType() == data.type)) {
                // source line 861, bytecode pc 169
                (step_effectVal = this.m_weaponVIPInforList[i].getEffectVal());
                // source line 862, bytecode pc 195
                (num = (num + Number(step_effectVal)));
            }
            // source line 858, bytecode pc 210
            i++;
        }
    } else {
        // source line 868, bytecode pc 246
        (grade = ((((step_int - 1) * 10) + subStep_int) - 1));
        // source line 870, bytecode pc 251
        (i = 0);
        while ((i < this.m_fixedVipStep)) {
            if ((this.m_weaponVIPInforList[i].getEffectType() == data.type)) {
                // source line 873, bytecode pc 317
                (step_effectVal = this.m_weaponVIPInforList[i].getEffectVal());
                // source line 874, bytecode pc 343
                (num = (num + Number(step_effectVal)));
            }
            // source line 870, bytecode pc 358
            i++;
        }
    }
    // source line 880, bytecode pc 379
    (i = 0);
    while ((i <= grade)) {
        if ((this.m_weaponOnHundredInforList[i].getEffectType() == data.type)) {
            // source line 884, bytecode pc 445
            (sub_effectVal = this.m_weaponOnHundredInforList[i].getEffectVal());
            // source line 885, bytecode pc 471
            (num = (num + Number(sub_effectVal)));
        }
        // source line 880, bytecode pc 486
        i++;
    }
    // source line 891, bytecode pc 503
    return num;
},
    switchCreateIcon: function(data, i) {
    var type;
    // source line 896, bytecode pc 26
    (type = Number(data.type));
    // source line 897, bytecode pc 30
    switch (type) {
        case 7:
        /* TODO_BYTECODE pc=30 opcode=tableswitch reason=tableswitch_target_invalid */
        break;
        case 5:
        // source line 900, bytecode pc 79
        this.createItemIcon(data, i);
        break;
        case 6:
        // source line 905, bytecode pc 105
        this.createGeneralsSoulIcon(data, i);
        break;
        case 8:
        // source line 910, bytecode pc 131
        this.createEquipmentFragmentIcon(data, i);
        break;
        default:
        // source line 914, bytecode pc 159
        xs.warn("this.switchCreateIcon tag error! ");
        break;
    }
},
    createItemIcon: function(data, idex) {
    var model, head, array, str, introduction, goodNum, _array, _str, haveNum;
    // source line 923, bytecode pc 18
    (this.m_conditionArray[idex] = data.num);
    // source line 928, bytecode pc 57
    (model = xs.Models.Item.createWithBase(data.id));
    // source line 929, bytecode pc 75
    (head = model.createIcon_Grade());
    // source line 930, bytecode pc 124
    xs.Utils.Node.replaceChildSafe(this.ccbNode_Infor, this.m_iconsList[idex], head);
    // source line 931, bytecode pc 138
    (this.m_iconsList[idex] = head);
    // source line 934, bytecode pc 147
    (array = []);
    // source line 935, bytecode pc 167
    (array[0] = model.getNameString());
    // source line 936, bytecode pc 181
    (array[1] = data.num);
    // source line 937, bytecode pc 217
    (str = xs.Tools.String.createString("MiracleWeapon_1"));
    // source line 938, bytecode pc 255
    (introduction = xs.Tools.String.replaceStringByArray(str, array));
    // source line 940, bytecode pc 281
    this.m_needList[idex].setString(introduction);
    // source line 943, bytecode pc 341
    (goodNum = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(data.id));
    // source line 946, bytecode pc 355
    (this.m_haveArray[idex] = goodNum);
    // source line 948, bytecode pc 364
    (_array = []);
    // source line 949, bytecode pc 384
    (_array[0] = goodNum.toString());
    // source line 950, bytecode pc 420
    (_str = xs.Tools.String.createString("MiracleWeapon_have"));
    // source line 951, bytecode pc 458
    (haveNum = xs.Tools.String.replaceStringByArray(_str, _array));
    // source line 953, bytecode pc 484
    this.m_haveList[idex].setString(haveNum);
},
    createEquipmentFragmentIcon: function(data, idex) {
    var equipmentlId, model, equipData, head, array, str, introduction, EquipmentPieceNum, i, _array, _str, haveNum;
    // source line 961, bytecode pc 18
    (this.m_conditionArray[idex] = data.num);
    // source line 964, bytecode pc 30
    (equipmentlId = data.id);
    // source line 965, bytecode pc 81
    (model = xs.Models.Equipment.createWithBase(equipmentlId.toString()));
    // source line 966, bytecode pc 126
    (equipData = xs.Models.EquipmentPiece.createWithBase(equipmentlId.toString()));
    // source line 967, bytecode pc 144
    (head = equipData.createIcon_Grade());
    // source line 972, bytecode pc 178
    head.setOnClickCallBack(function() {
    // source line 970, bytecode pc 53
    xs.Views.Mgr.showDialogByName("EquipNoPanel", { equipData: model });
}.bind(this));
    // source line 974, bytecode pc 227
    xs.Utils.Node.replaceChildSafe(this.ccbNode_Infor, this.m_iconsList[idex], head);
    // source line 975, bytecode pc 241
    (this.m_iconsList[idex] = head);
    // source line 978, bytecode pc 250
    (array = []);
    // source line 979, bytecode pc 270
    (array[0] = equipData.getNameString());
    // source line 980, bytecode pc 284
    (array[1] = data.num);
    // source line 981, bytecode pc 320
    (str = xs.Tools.String.createString("MiracleWeapon_3"));
    // source line 982, bytecode pc 358
    (introduction = xs.Tools.String.replaceStringByArray(str, array));
    // source line 983, bytecode pc 384
    this.m_needList[idex].setString(introduction);
    // source line 986, bytecode pc 389
    (EquipmentPieceNum = 0);
    // source line 987, bytecode pc 394
    (i = 0);
    while ((i < this.arrayPieces.length)) {
        if ((this.arrayPieces[i].pk_id == data.id)) {
            // source line 990, bytecode pc 448
            (EquipmentPieceNum = this.arrayPieces[i].num);
            break;
        }
        // source line 987, bytecode pc 468
        i++;
    }
    // source line 995, bytecode pc 503
    (this.m_haveArray[idex] = EquipmentPieceNum);
    // source line 998, bytecode pc 512
    (_array = []);
    // source line 999, bytecode pc 532
    (_array[0] = EquipmentPieceNum.toString());
    // source line 1000, bytecode pc 568
    (_str = xs.Tools.String.createString("MiracleWeapon_have"));
    // source line 1001, bytecode pc 606
    (haveNum = xs.Tools.String.replaceStringByArray(_str, _array));
    // source line 1002, bytecode pc 632
    this.m_haveList[idex].setString(haveNum);
},
    createGeneralsSoulIcon: function(data, idex) {
    var generalId, equipData, model, head, array, str, introduction, EquipmentPieceNum, i, _array, _str, haveNum;
    // source line 1011, bytecode pc 18
    (this.m_conditionArray[idex] = data.num);
    // source line 1014, bytecode pc 30
    (generalId = data.id);
    // source line 1015, bytecode pc 81
    (equipData = xs.Models.General.createWithBase(generalId.toString()));
    // source line 1016, bytecode pc 126
    (model = xs.Models.GeneralSoul.createWithBase(generalId.toString()));
    // source line 1017, bytecode pc 144
    (head = model.createIcon_Grade());
    // source line 1024, bytecode pc 178
    head.setOnClickCallBack(function() {
    // source line 1022, bytecode pc 63
    xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: equipData, type: "achieve_nothave" });
}.bind(this));
    // source line 1026, bytecode pc 227
    xs.Utils.Node.replaceChildSafe(this.ccbNode_Infor, this.m_iconsList[idex], head);
    // source line 1027, bytecode pc 241
    (this.m_iconsList[idex] = head);
    // source line 1030, bytecode pc 250
    (array = []);
    // source line 1031, bytecode pc 270
    (array[0] = model.getNameString());
    // source line 1032, bytecode pc 284
    (array[1] = data.num);
    // source line 1033, bytecode pc 320
    (str = xs.Tools.String.createString("MiracleWeapon_2"));
    // source line 1034, bytecode pc 358
    (introduction = xs.Tools.String.replaceStringByArray(str, array));
    // source line 1036, bytecode pc 384
    this.m_needList[idex].setString(introduction);
    // source line 1040, bytecode pc 389
    (EquipmentPieceNum = 0);
    // source line 1041, bytecode pc 394
    (i = 0);
    while ((i < this.arraySouls.length)) {
        if ((this.arraySouls[i].pk_id == data.id)) {
            // source line 1044, bytecode pc 448
            (EquipmentPieceNum = this.arraySouls[i].num);
            break;
        }
        // source line 1041, bytecode pc 468
        i++;
    }
    // source line 1050, bytecode pc 503
    (this.m_haveArray[idex] = EquipmentPieceNum);
    // source line 1052, bytecode pc 512
    (_array = []);
    // source line 1053, bytecode pc 532
    (_array[0] = EquipmentPieceNum.toString());
    // source line 1055, bytecode pc 568
    (_str = xs.Tools.String.createString("MiracleWeapon_have"));
    // source line 1056, bytecode pc 606
    (haveNum = xs.Tools.String.replaceStringByArray(_str, _array));
    // source line 1057, bytecode pc 632
    this.m_haveList[idex].setString(haveNum);
}
}));
// source line 1062, bytecode pc 1674
(xs.Views.MiracleWeaponLayer.create = function(param) {
    var view;
    // source line 1063, bytecode pc 23
    (view = new xs.Views.MiracleWeaponLayer());
    if ((view && view.init(param))) {
        // source line 1065, bytecode pc 59
        return view;
    }
    // source line 1067, bytecode pc 84
    xs.assert(false, "xs.Views.MiracleWeaponLayer.create error!");
    // source line 1068, bytecode pc 86
    return null;
});
