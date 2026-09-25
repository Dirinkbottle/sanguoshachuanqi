// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/SkillRefining/SkillRefiningLayer.js:1
// source line 517, bytecode pc 749
(xs.Views.SkillRefiningLayer = cc.Layer.extend({
    name: "xs.Views.SkillRefiningLayer",
    ccbCfg_BuaGua: [],
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
        { tag: 24, type: "btn", name: "m_lianhuaButton", id: "Btn_btn1", stringId: "Lianhua" }
    ],
    ctor: function() {
    var self;
    // source line 25, bytecode pc 12
    this._super();
    // source line 26, bytecode pc 17
    (self = this);
    // source line 27, bytecode pc 47
    cc.associateWithNative(this, cc.Layer);
},
    init: function() {
    var visibleSize, mainMenuWidth;
    if (!this._super()) {
        // source line 31, bytecode pc 19
        return false;
    }
    // source line 34, bytecode pc 27
    (this.m_lb_title = null);
    // source line 35, bytecode pc 35
    (this.m_lb_jiacheng = null);
    // source line 36, bytecode pc 43
    (this.m_lb_xuqiu = null);
    // source line 37, bytecode pc 51
    (this.m_lb_addition = null);
    // source line 40, bytecode pc 59
    (this.m_first_Need = null);
    // source line 41, bytecode pc 67
    (this.m_first_Have = null);
    // source line 42, bytecode pc 75
    (this.m_second_Need = null);
    // source line 43, bytecode pc 83
    (this.m_second_Have = null);
    // source line 44, bytecode pc 91
    (this.m_third_Need = null);
    // source line 45, bytecode pc 99
    (this.m_third_Have = null);
    // source line 48, bytecode pc 107
    (this.m_first_icon = null);
    // source line 49, bytecode pc 115
    (this.m_second_icon = null);
    // source line 50, bytecode pc 123
    (this.m_third_icon = null);
    // source line 52, bytecode pc 131
    (this.m_lianhuaButton = null);
    // source line 53, bytecode pc 139
    (this.m_addButton = null);
    // source line 55, bytecode pc 147
    (this.show = null);
    // source line 57, bytecode pc 155
    (this.step = 0);
    // source line 58, bytecode pc 163
    (this.isSelected = false);
    // source line 59, bytecode pc 171
    (this.m_selectSkillId = null);
    // source line 61, bytecode pc 183
    (this.m_lightStars = []);
    // source line 62, bytecode pc 195
    (this.m_lightLines = []);
    // source line 64, bytecode pc 207
    (this.m_needList = []);
    // source line 65, bytecode pc 219
    (this.m_haveList = []);
    // source line 66, bytecode pc 231
    (this.m_iconsList = []);
    // source line 68, bytecode pc 296
    (this.m_userVipGrade = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerVipLevel());
    // source line 70, bytecode pc 350
    (this.arrayPieces = xs.Profile.GameData.Mgr.getInstance().EquipmentPieces.getAll());
    // source line 71, bytecode pc 404
    (this.arraySouls = xs.Profile.GameData.Mgr.getInstance().GeneralSouls.getAll());
    // source line 73, bytecode pc 429
    (visibleSize = xs.director.getVisibleSize());
    // source line 74, bytecode pc 453
    (mainMenuWidth = xs.Views.MainMenuView.Width);
    // source line 76, bytecode pc 504
    (this.ccbNode_BuaGua = xs.ccb_reader.load(xs.Cfg.CCBI.SkillRefiningBaGua, this));
    // source line 79, bytecode pc 588
    xs.Utils.Node.attachNodes(this, this.ccbNode_BuaGua, { desc: "lb", offset: cc.p(0, 0), sc: true });
    // source line 80, bytecode pc 631
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode_BuaGua, this.ccbCfg_BuaGua, this);
    // source line 82, bytecode pc 682
    (this.ccbNode_Infor = xs.ccb_reader.load(xs.Cfg.CCBI.SkillRefiningInfor, this));
    // source line 83, bytecode pc 725
    this.ccbNode_Infor.setContentSize(cc.size(400, 640));
    // source line 84, bytecode pc 768
    this.ccbNode_Infor.setAnchorPoint(cc.p(1, 0.5));
    // source line 90, bytecode pc 874
    xs.Utils.Node.attachNodes(this, this.ccbNode_Infor, {
    desc: "lb",
    offset: { x: ((visibleSize.width - mainMenuWidth) + 50), y: (visibleSize.height / 2) },
    sc: true
});
    // source line 92, bytecode pc 917
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode_Infor, this.ccbCfg_Infor, this);
    // source line 93, bytecode pc 937
    this.ccbNode_Infor.setVisible(false);
    // source line 95, bytecode pc 988
    (this.ccbNode_Show = xs.ccb_reader.load(xs.Cfg.CCBI.SkillRefiningShow, this));
    // source line 96, bytecode pc 1031
    this.ccbNode_Show.setContentSize(cc.size(400, 640));
    // source line 97, bytecode pc 1074
    this.ccbNode_Show.setAnchorPoint(cc.p(1, 0.5));
    // source line 103, bytecode pc 1180
    xs.Utils.Node.attachNodes(this, this.ccbNode_Show, {
    desc: "lb",
    offset: { x: ((visibleSize.width - mainMenuWidth) + 50), y: (visibleSize.height / 2) },
    sc: true
});
    // source line 106, bytecode pc 1218
    (this.m_RefiningSkillShowTableView = xs.Views.Table.RefiningSkillShowTableView.create());
    // source line 111, bytecode pc 1307
    xs.Utils.Node.attachNodes(this.ccbNode_Show, this.m_RefiningSkillShowTableView, { desc: "lb", sc: true, offset: { x: 20, y: 50 } });
    // source line 113, bytecode pc 1327
    this.m_RefiningSkillShowTableView.setVisible(true);
    // source line 114, bytecode pc 1347
    this.m_RefiningSkillShowTableView.setKeepOldOffsetFlag(true);
    // source line 117, bytecode pc 1398
    this.m_lb_jiacheng.setString(xs.Tools.String.createString("refine_jiacheng"));
    // source line 118, bytecode pc 1449
    this.m_lb_addition.setString(xs.Tools.String.createString("refine_uptext"));
    // source line 119, bytecode pc 1500
    this.m_lb_xuqiu.setString(xs.Tools.String.createString("refine_xuqiu"));
    // source line 121, bytecode pc 1539
    (this.m_needVip = xs.Tools.CfgData.getGlobalConf("SkillRefineUnlockVipLevel"));
    // source line 124, bytecode pc 1566
    (this.m_first_icon = this.ccbNode_Infor.getChildByTag(21));
    // source line 125, bytecode pc 1593
    (this.m_second_icon = this.ccbNode_Infor.getChildByTag(22));
    // source line 126, bytecode pc 1620
    (this.m_third_icon = this.ccbNode_Infor.getChildByTag(23));
    // source line 127, bytecode pc 1645
    this.m_iconsList.push(this.m_first_icon);
    // source line 128, bytecode pc 1670
    this.m_iconsList.push(this.m_second_icon);
    // source line 129, bytecode pc 1695
    this.m_iconsList.push(this.m_third_icon);
    // source line 131, bytecode pc 1720
    this.m_needList.push(this.m_first_Need);
    // source line 132, bytecode pc 1745
    this.m_needList.push(this.m_second_Need);
    // source line 133, bytecode pc 1770
    this.m_needList.push(this.m_third_Need);
    // source line 134, bytecode pc 1795
    this.m_haveList.push(this.m_first_Have);
    // source line 135, bytecode pc 1820
    this.m_haveList.push(this.m_second_Have);
    // source line 136, bytecode pc 1845
    this.m_haveList.push(this.m_third_Have);
    // source line 139, bytecode pc 1889
    (this.m_instructionBtn = xs.Tools.Views.Btn.createInstruction("skill_refine_info"));
    // source line 140, bytecode pc 1977
    xs.Utils.Node.attachNodes(this, this.m_instructionBtn, { desc: "lb", offset: cc.p(60, 110), sc: true }, null);
    // source line 142, bytecode pc 2031
    (this.m_addButton = xs.Views.Btn.createInvisibleWithParent(this.ccbNode_BuaGua.getChildByTag(101)));
    // source line 143, bytecode pc 2069
    this.m_addButton.setOnClickCallBack(this.selectButtonCallback.bind(this));
    // source line 145, bytecode pc 2107
    this.m_lianhuaButton.setOnClickCallBack(this.lianhuaCallback.bind(this));
    // source line 147, bytecode pc 2141
    this.ccbNode_Infor.getChildByTag(12).setVisible(false);
    // source line 148, bytecode pc 2154
    this.initStarsAndButton();
    // source line 151, bytecode pc 2156
    return true;
},
    initStarsAndButton: function() {
    var allshows, i, _arm1, show, array, str, titleStr;
    // source line 154, bytecode pc 53
    (allshows = [ "jin", "mu", "shui", "huo", "tu" ]);
    // source line 156, bytecode pc 58
    (i = 0);
    while ((i < 5)) {
        // source line 161, bytecode pc 101
        (this.m_lightStars[i] = xs.Factorys.Sprite.createDummy());
        // source line 163, bytecode pc 142
        (_arm1 = xs.Views.Armature.AutoAudioArmature.create("Arm_AwakeBox_Light"));
        // source line 164, bytecode pc 182
        _arm1.playAniById("Baox_Jx_bj_ani", { speed: 1, loop: true });
        // source line 165, bytecode pc 224
        xs.Utils.Node.attachNodes(this.m_lightStars[i], _arm1);
        // source line 167, bytecode pc 268
        (show = xs.Factorys.Sprite.create(allshows[i], "SkillRefiningScene"));
        // source line 168, bytecode pc 310
        xs.Utils.Node.attachNodes(this.m_lightStars[i], show);
        // source line 170, bytecode pc 380
        xs.Utils.Node.replaceChildSafe(this.ccbNode_BuaGua, this.ccbNode_BuaGua.getChildByTag((81 + i)), this.m_lightStars[i]);
        // source line 172, bytecode pc 404
        this.m_lightStars[i].setVisible(false);
        // source line 176, bytecode pc 439
        (this.m_lightLines[i] = this.ccbNode_BuaGua.getChildByTag((91 + i)));
        // source line 177, bytecode pc 463
        this.m_lightLines[i].setZOrder(1);
        // source line 178, bytecode pc 487
        this.m_lightLines[i].setVisible(false);
        // source line 156, bytecode pc 502
        i++;
    }
    // source line 181, bytecode pc 523
    (array = []);
    // source line 182, bytecode pc 557
    (array[0] = xs.Tools.String.convNumberString(1));
    // source line 183, bytecode pc 568
    (array[1] = "金");
    // source line 184, bytecode pc 604
    (str = xs.Tools.String.createString("RefiningSkill_title"));
    // source line 185, bytecode pc 642
    (titleStr = xs.Tools.String.replaceStringByArray(str, array));
    // source line 186, bytecode pc 664
    this.m_lb_title.setString(titleStr);
    // source line 188, bytecode pc 669
    (i = 0);
    while ((i < 3)) {
        // source line 190, bytecode pc 699
        this.m_needList[i].setVisible(false);
        // source line 191, bytecode pc 723
        this.m_haveList[i].setVisible(false);
        // source line 192, bytecode pc 747
        this.m_iconsList[i].setVisible(false);
        // source line 188, bytecode pc 762
        i++;
    }
    // source line 196, bytecode pc 794
    this.updateStars(this.step);
    // source line 197, bytecode pc 814
    this.updateRefiningInfor(this.step);
},
    updateStars: function(step, isup) {
    var allshows, i, arr;
    if (isup) {
        // source line 202, bytecode pc 152
        this.m_lightStars[(step - 1)].runAction(cc.Sequence.create(cc.Blink.create(0.4, 2), cc.Hide.create(), cc.FadeIn.create(1), cc.Show.create()));
        if ((step == 3)) {
            // source line 204, bytecode pc 297
            this.m_lightLines[3].runAction(cc.Sequence.create(cc.Hide.create(), cc.EaseBackIn.create(cc.FadeIn.create(2)), cc.Show.create()));
            // source line 205, bytecode pc 431
            this.m_lightLines[4].runAction(cc.Sequence.create(cc.Hide.create(), cc.EaseBackIn.create(cc.FadeIn.create(2)), cc.Show.create()));
        } else {
            if ((step == 4)) {
                // source line 207, bytecode pc 580
                this.m_lightLines[0].runAction(cc.Sequence.create(cc.Hide.create(), cc.EaseBackIn.create(cc.FadeIn.create(2)), cc.Show.create()));
            } else {
                if ((step == 5)) {
                    // source line 209, bytecode pc 729
                    this.m_lightLines[1].runAction(cc.Sequence.create(cc.Hide.create(), cc.EaseBackIn.create(cc.FadeIn.create(2)), cc.Show.create()));
                    // source line 210, bytecode pc 863
                    this.m_lightLines[2].runAction(cc.Sequence.create(cc.Hide.create(), cc.EaseBackIn.create(cc.FadeIn.create(2)), cc.Show.create()));
                }
            }
        }
        if ((this.show != null)) {
            // source line 214, bytecode pc 894
            this.show.stopAllAction();
            // source line 215, bytecode pc 928
            xs.Utils.Node.removeFromParentSafe(this.show);
            // source line 216, bytecode pc 936
            (this.show = null);
        }
        // source line 219, bytecode pc 990
        (allshows = [ "jin", "mu", "shui", "huo", "tu" ]);
        // source line 220, bytecode pc 1039
        (this.show = xs.Factorys.Sprite.create(allshows[(step - 1)], "SkillRefiningScene"));
        // source line 225, bytecode pc 1125
        xs.Utils.Node.attachNodes(this, this.show, { desc: "lb", sc: true, offset: { x: 260, y: 330 } });
        // source line 231, bytecode pc 1281
        this.show.runAction(cc.Sequence.create(cc.Spawn.create(cc.ScaleTo.create(1, 3), cc.FadeOut.create(1)), cc.CallFunc.create(function() {
    // source line 229, bytecode pc 33
    xs.Utils.Node.removeFromParentSafe(this.show);
    // source line 230, bytecode pc 41
    (this.show = null);
}.bind(this), this)));
    } else {
        // source line 234, bytecode pc 1291
        (i = 0);
        while ((i < 5)) {
            if ((i < step)) {
                // source line 236, bytecode pc 1333
                this.m_lightStars[i].setVisible(true);
            } else {
                // source line 238, bytecode pc 1362
                this.m_lightStars[i].setVisible(false);
            }
            // source line 234, bytecode pc 1377
            i++;
        }
        // source line 242, bytecode pc 1398
        (arr = []);
        if ((step == 3)) {
            // source line 244, bytecode pc 1427
            arr.push(3);
            // source line 244, bytecode pc 1445
            arr.push(4);
        } else {
            if ((step == 4)) {
                // source line 246, bytecode pc 1478
                arr.push(0);
                // source line 246, bytecode pc 1496
                arr.push(3);
                // source line 246, bytecode pc 1514
                arr.push(4);
            } else {
                if ((step == 5)) {
                    // source line 248, bytecode pc 1547
                    arr.push(0);
                    // source line 248, bytecode pc 1564
                    arr.push(1);
                    // source line 248, bytecode pc 1582
                    arr.push(2);
                    // source line 248, bytecode pc 1600
                    arr.push(3);
                    // source line 248, bytecode pc 1618
                    arr.push(4);
                }
            }
        }
        // source line 250, bytecode pc 1623
        (i = 0);
        while ((i < 5)) {
            if (arr.inArray(i)) {
                // source line 252, bytecode pc 1676
                this.m_lightLines[i].setVisible(true);
            } else {
                // source line 254, bytecode pc 1705
                this.m_lightLines[i].setVisible(false);
            }
            // source line 250, bytecode pc 1720
            i++;
        }
    }
},
    updateRefiningInfor: function(step) {
    var allsteps, array, str, titleStr, RefineInfos, i, clickRefineInfo, data;
    if (((step >= 5) || !this.isSelected)) {
        // source line 262, bytecode pc 43
        this.m_lianhuaButton.setEnabled(false);
        // source line 263, bytecode pc 49
        (step = 4);
    } else {
        // source line 265, bytecode pc 74
        this.m_lianhuaButton.setEnabled(true);
        if ((step >= 2)) {
            if ((this.m_userVipGrade < this.m_needVip)) {
                // source line 268, bytecode pc 123
                this.m_lianhuaButton.setEnabled(false);
                // source line 269, bytecode pc 157
                this.ccbNode_Infor.getChildByTag(12).setVisible(true);
            }
        }
    }
    if (this.isSelected) {
        // source line 275, bytecode pc 222
        (allsteps = [ "金", "木", "水", "火", "土" ]);
        // source line 276, bytecode pc 231
        (array = []);
        // source line 277, bytecode pc 269
        (array[0] = xs.Tools.String.convNumberString((step + 1)));
        // source line 278, bytecode pc 282
        (array[1] = allsteps[step]);
        // source line 280, bytecode pc 318
        (str = xs.Tools.String.createString("RefiningSkill_title"));
        // source line 281, bytecode pc 356
        (titleStr = xs.Tools.String.replaceStringByArray(str, array));
        // source line 282, bytecode pc 378
        this.m_lb_title.setString(titleStr);
        // source line 285, bytecode pc 394
        (RefineInfos = this.refinedata[(step + 1)]);
        // source line 287, bytecode pc 399
        (i = 0);
        while ((i < 3)) {
            // source line 289, bytecode pc 416
            (clickRefineInfo = RefineInfos[i]);
            if (clickRefineInfo) {
                // source line 295, bytecode pc 473
                (data = { id: clickRefineInfo.item_id, num: clickRefineInfo.item_num, type: clickRefineInfo.item_type });
                // source line 298, bytecode pc 494
                this.switchCreateIcon(data, i);
                // source line 299, bytecode pc 518
                this.m_needList[i].setVisible(true);
                // source line 300, bytecode pc 542
                this.m_haveList[i].setVisible(true);
                // source line 301, bytecode pc 566
                this.m_iconsList[i].setVisible(true);
            } else {
                // source line 303, bytecode pc 595
                this.m_needList[i].setVisible(false);
                // source line 304, bytecode pc 619
                this.m_haveList[i].setVisible(false);
                // source line 305, bytecode pc 643
                this.m_iconsList[i].setVisible(false);
            }
            // source line 287, bytecode pc 658
            i++;
        }
    }
},
    switchCreateIcon: function(data, i) {
    var type;
    // source line 313, bytecode pc 26
    (type = Number(data.type));
    // source line 314, bytecode pc 30
    switch (type) {
        case 7:
        /* TODO_BYTECODE pc=30 opcode=tableswitch reason=tableswitch_target_invalid */
        break;
        case 5:
        // source line 317, bytecode pc 79
        this.createItemIcon(data, i);
        break;
        case 6:
        // source line 322, bytecode pc 105
        this.createGeneralsSoulIcon(data, i);
        break;
        case 8:
        // source line 327, bytecode pc 131
        this.createEquipmentFragmentIcon(data, i);
        break;
        default:
        // source line 331, bytecode pc 157
        this.createItemIcon(data, i);
        break;
    }
},
    createItemIcon: function(data, idex) {
    var model, head, array, str, introduction, goodNum, _array, _str, haveNum;
    // source line 339, bytecode pc 38
    (model = xs.Models.Item.createWithBase(data.id));
    // source line 340, bytecode pc 56
    (head = model.createIcon_Grade());
    // source line 341, bytecode pc 105
    xs.Utils.Node.replaceChildSafe(this.ccbNode_Infor, this.m_iconsList[idex], head);
    // source line 342, bytecode pc 119
    (this.m_iconsList[idex] = head);
    // source line 345, bytecode pc 128
    (array = []);
    // source line 346, bytecode pc 148
    (array[0] = model.getNameString());
    // source line 347, bytecode pc 162
    (array[1] = data.num);
    // source line 348, bytecode pc 198
    (str = xs.Tools.String.createString("MiracleWeapon_1"));
    // source line 349, bytecode pc 236
    (introduction = xs.Tools.String.replaceStringByArray(str, array));
    // source line 351, bytecode pc 262
    this.m_needList[idex].setString(introduction);
    // source line 354, bytecode pc 322
    (goodNum = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(data.id));
    // source line 356, bytecode pc 331
    (_array = []);
    // source line 357, bytecode pc 351
    (_array[0] = goodNum.toString());
    // source line 358, bytecode pc 387
    (_str = xs.Tools.String.createString("MiracleWeapon_have"));
    // source line 359, bytecode pc 425
    (haveNum = xs.Tools.String.replaceStringByArray(_str, _array));
    // source line 361, bytecode pc 451
    this.m_haveList[idex].setString(haveNum);
},
    createEquipmentFragmentIcon: function(data, idex) {
    var equipmentlId, model, equipData, head, array, str, introduction, EquipmentPieceNum, i, _array, _str, haveNum;
    // source line 367, bytecode pc 11
    (equipmentlId = data.id);
    // source line 368, bytecode pc 62
    (model = xs.Models.Equipment.createWithBase(equipmentlId.toString()));
    // source line 369, bytecode pc 107
    (equipData = xs.Models.EquipmentPiece.createWithBase(equipmentlId.toString()));
    // source line 370, bytecode pc 125
    (head = equipData.createIcon_Grade());
    // source line 375, bytecode pc 159
    head.setOnClickCallBack(function() {
    // source line 373, bytecode pc 53
    xs.Views.Mgr.showDialogByName("EquipNoPanel", { equipData: model });
}.bind(this));
    // source line 377, bytecode pc 208
    xs.Utils.Node.replaceChildSafe(this.ccbNode_Infor, this.m_iconsList[idex], head);
    // source line 378, bytecode pc 222
    (this.m_iconsList[idex] = head);
    // source line 381, bytecode pc 231
    (array = []);
    // source line 382, bytecode pc 251
    (array[0] = equipData.getNameString());
    // source line 383, bytecode pc 265
    (array[1] = data.num);
    // source line 384, bytecode pc 301
    (str = xs.Tools.String.createString("MiracleWeapon_3"));
    // source line 385, bytecode pc 339
    (introduction = xs.Tools.String.replaceStringByArray(str, array));
    // source line 386, bytecode pc 365
    this.m_needList[idex].setString(introduction);
    // source line 389, bytecode pc 370
    (EquipmentPieceNum = 0);
    // source line 390, bytecode pc 375
    (i = 0);
    while ((i < this.arrayPieces.length)) {
        if ((this.arrayPieces[i].pk_id == data.id)) {
            // source line 393, bytecode pc 429
            (EquipmentPieceNum = this.arrayPieces[i].num);
            break;
        }
        // source line 390, bytecode pc 449
        i++;
    }
    // source line 399, bytecode pc 479
    (_array = []);
    // source line 400, bytecode pc 499
    (_array[0] = EquipmentPieceNum.toString());
    // source line 401, bytecode pc 535
    (_str = xs.Tools.String.createString("MiracleWeapon_have"));
    // source line 402, bytecode pc 573
    (haveNum = xs.Tools.String.replaceStringByArray(_str, _array));
    // source line 403, bytecode pc 599
    this.m_haveList[idex].setString(haveNum);
},
    createGeneralsSoulIcon: function(data, idex) {
    var generalId, equipData, model, head, array, str, introduction, EquipmentPieceNum, i, _array, _str, haveNum;
    // source line 409, bytecode pc 11
    (generalId = data.id);
    // source line 410, bytecode pc 62
    (equipData = xs.Models.General.createWithBase(generalId.toString()));
    // source line 411, bytecode pc 107
    (model = xs.Models.GeneralSoul.createWithBase(generalId.toString()));
    // source line 412, bytecode pc 125
    (head = model.createIcon_Grade());
    // source line 419, bytecode pc 159
    head.setOnClickCallBack(function() {
    // source line 417, bytecode pc 63
    xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: equipData, type: "achieve_nothave" });
}.bind(this));
    // source line 421, bytecode pc 208
    xs.Utils.Node.replaceChildSafe(this.ccbNode_Infor, this.m_iconsList[idex], head);
    // source line 422, bytecode pc 222
    (this.m_iconsList[idex] = head);
    // source line 425, bytecode pc 231
    (array = []);
    // source line 426, bytecode pc 251
    (array[0] = model.getNameString());
    // source line 427, bytecode pc 265
    (array[1] = data.num);
    // source line 428, bytecode pc 301
    (str = xs.Tools.String.createString("MiracleWeapon_2"));
    // source line 429, bytecode pc 339
    (introduction = xs.Tools.String.replaceStringByArray(str, array));
    // source line 431, bytecode pc 365
    this.m_needList[idex].setString(introduction);
    // source line 435, bytecode pc 370
    (EquipmentPieceNum = 0);
    // source line 436, bytecode pc 375
    (i = 0);
    while ((i < this.arraySouls.length)) {
        if ((this.arraySouls[i].pk_id == data.id)) {
            // source line 439, bytecode pc 429
            (EquipmentPieceNum = this.arraySouls[i].num);
            break;
        }
        // source line 436, bytecode pc 449
        i++;
    }
    // source line 444, bytecode pc 479
    (_array = []);
    // source line 445, bytecode pc 499
    (_array[0] = EquipmentPieceNum.toString());
    // source line 447, bytecode pc 535
    (_str = xs.Tools.String.createString("MiracleWeapon_have"));
    // source line 448, bytecode pc 573
    (haveNum = xs.Tools.String.replaceStringByArray(_str, _array));
    // source line 449, bytecode pc 599
    this.m_haveList[idex].setString(haveNum);
},
    selectButtonCallback: function() {
    // source line 454, bytecode pc 32
    xs.Views.Mgr.showDialogByName("RefiningSkillDialog");
},
    selectSkill: function(data) {
    // source line 458, bytecode pc 7
    (this.isSelected = true);
    // source line 459, bytecode pc 27
    this.ccbNode_Infor.setVisible(true);
    // source line 460, bytecode pc 47
    this.ccbNode_Show.setVisible(false);
    // source line 462, bytecode pc 81
    xs.Utils.Node.safeRemoveChild(this.m_addButton);
    // source line 464, bytecode pc 102
    (this.m_addButton = data.createIcon_Select());
    // source line 465, bytecode pc 140
    this.m_addButton.setOnClickCallBack(this.selectButtonCallback.bind(this));
    // source line 466, bytecode pc 247
    xs.Utils.Node.attachNodes(this.ccbNode_BuaGua.getChildByTag(101), this.m_addButton, { desc: "lb", offset: cc.p(30, 30), sc: true }, null);
    // source line 468, bytecode pc 262
    (this.step = data.advanced_level);
    // source line 470, bytecode pc 277
    (this.m_selectSkillId = data.pk_id);
    // source line 472, bytecode pc 330
    (this.refinedata = xs.Tools.CfgData.readRecordByTypeAndKey(xs.Constant_CfgDataType_Skill_refine_conf, data.id));
    // source line 474, bytecode pc 350
    this.updateStars(this.step);
    // source line 475, bytecode pc 370
    this.updateRefiningInfor(this.step);
},
    lianhuaCallback: function() {
    if ((this.step < 5)) {
        // source line 505, bytecode pc 135
        xs.Tools.Net.requestSkillRefine({
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    user_skill_id: this.m_selectSkillId
}, function(data) {
    if ((data.result == true)) {
        // source line 490, bytecode pc 41
        this.step++;
        // source line 491, bytecode pc 63
        this.updateStars(this.step, true);
        // source line 492, bytecode pc 83
        this.updateRefiningInfor(this.step);
    }
}, function(data) {
    if (("e_skill_refine_1007" == data.error_code)) {
        // source line 498, bytecode pc 78
        xs.Views.Mgr.showToast(xs.Tools.String.createString("RefiningNotFill"));
    } else {
        // source line 500, bytecode pc 143
        xs.Views.Mgr.showToast(xs.Tools.String.createString("RefiningFailed"));
    }
    // source line 503, bytecode pc 145
    return true;
}, this);
    }
},
    onEnter: function() {
    // source line 510, bytecode pc 12
    this._super();
    // source line 511, bytecode pc 59
    xs.Utils.Notify.addObserver(this, this.selectSkill, xs.Constant_Notify_Event_SkillSelect);
},
    onExit: function() {
    // source line 514, bytecode pc 12
    this._super();
    // source line 515, bytecode pc 52
    xs.Utils.Notify.removeObserver(this, xs.Constant_Notify_Event_SkillSelect);
},
    setBaseTouchPriority: function(priority) {
    // source line 518, bytecode pc 9
    (this.m_baseTouchPriority = priority);
}
}));
// source line 521, bytecode pc 775
(xs.Views.SkillRefiningLayer.create = function(param) {
    var view;
    // source line 522, bytecode pc 23
    (view = new xs.Views.SkillRefiningLayer());
    if ((view && view.init(param))) {
        // source line 524, bytecode pc 59
        return view;
    }
    // source line 526, bytecode pc 84
    xs.assert(false, "xs.Views.SkillRefiningLayer.create error!");
    // source line 527, bytecode pc 86
    return null;
});
