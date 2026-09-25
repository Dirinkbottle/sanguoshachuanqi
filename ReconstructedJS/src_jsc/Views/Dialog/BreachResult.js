// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/BreachResult.js:1
// source line 308, bytecode pc 1712
(xs.Views.Dialog.BreachResult = (xs.Views.Dialog.BreachResult || xs.Views.HungerLayer.extend({
    name: "BreachResult",
    init: function(data) {
    var model, card, ganodermaNum, hpPulus, attackPlus, defencePulus, intelligencePulus;
    if (!this._super()) {
        // source line 12, bytecode pc 19
        return false;
    }
    // source line 14, bytecode pc 40
    (model = (data.param || data));
    // source line 15, bytecode pc 62
    (this.m_maiLiItemNum = (data.num || 0));
    // source line 17, bytecode pc 98
    (this.ccbNode = xs.ccb_reader.load("ccb3/0_7_9_TransmissionResult.ccbi", this));
    // source line 18, bytecode pc 141
    this.ccbNode.setContentSize(cc.size(897, 558));
    // source line 19, bytecode pc 188
    this.ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 20, bytecode pc 247
    xs.Utils.Node.attachNodes(this, this.ccbNode, { desc: "c", sc: true });
    // source line 23, bytecode pc 311
    (card = xs.Utils.replaceGeneralCard(this.ccbNode, this.cfg.card.tag, model.createCardView()));
    // source line 25, bytecode pc 319
    (this.m_title = null);
    // source line 26, bytecode pc 327
    (this.m_name = null);
    // source line 27, bytecode pc 335
    (this.m_expStr = null);
    // source line 28, bytecode pc 343
    (this.m_breachLevel_old = null);
    // source line 29, bytecode pc 351
    (this.m_breachLevel_new = null);
    // source line 30, bytecode pc 359
    (this.m_generalLevel_old = null);
    // source line 31, bytecode pc 367
    (this.m_generalLevel_new = null);
    // source line 33, bytecode pc 375
    (this.m_hp = null);
    // source line 34, bytecode pc 383
    (this.m_attack = null);
    // source line 35, bytecode pc 391
    (this.m_def = null);
    // source line 36, bytecode pc 399
    (this.m_int = null);
    // source line 38, bytecode pc 407
    (this.m_hp_plus = null);
    // source line 39, bytecode pc 415
    (this.m_attack_plus = null);
    // source line 40, bytecode pc 423
    (this.m_def_plus = null);
    // source line 41, bytecode pc 431
    (this.m_int_plus = null);
    // source line 43, bytecode pc 439
    (this.m_closeBtn = null);
    // source line 44, bytecode pc 447
    (this.m_confirmBtn = null);
    // source line 45, bytecode pc 455
    (this.m_arrows1 = null);
    // source line 46, bytecode pc 463
    (this.m_arrows2 = null);
    // source line 47, bytecode pc 471
    (this.m_arrows3 = null);
    // source line 48, bytecode pc 479
    (this.m_arrows4 = null);
    // source line 49, bytecode pc 487
    (this.m_arrows11 = null);
    // source line 50, bytecode pc 495
    (this.m_arrows12 = null);
    // source line 51, bytecode pc 503
    (this.m_arrows13 = null);
    // source line 52, bytecode pc 511
    (this.m_arrows14 = null);
    // source line 55, bytecode pc 559
    xs.Utils.UI.replaceCcbByCfg(this.ccbNode, this.cfg.ccbCfg, this);
    // source line 57, bytecode pc 600
    (this.infoRegionCcb = this.ccbNode.getChildByTag(this.cfg.infoRegion.tag));
    // source line 58, bytecode pc 621
    this.infoRegionCcb.setZOrder(2);
    // source line 59, bytecode pc 669
    xs.Utils.UI.replaceCcbByCfg(this.infoRegionCcb, this.cfg.ccbCfg_info, this);
    // source line 61, bytecode pc 710
    (this.m_arrow = this.infoRegionCcb.getChildByTag(this.cfg.arrow.tag));
    if ((model.name === "xs.Models.BreachModel")) {
        // source line 66, bytecode pc 753
        this.m_title.setStringById("1070910035");
        // source line 68, bytecode pc 789
        (this.ccbNode_plug = xs.ccb_reader.load("ccb3/0_7_9_Breach.ccbi", this));
        // source line 69, bytecode pc 810
        this.ccbNode_plug.setZOrder(3);
        // source line 70, bytecode pc 901
        xs.Utils.Node.attachNodes(this.ccbNode, this.ccbNode_plug, { desc: "cb", offset: cc.p(-55, 95), sc: false });
        // source line 73, bytecode pc 962
        xs.Utils.setCcbLabel(this.ccbNode_plug, this.cfg.lastSoulNum.tag, model.getLastSoulNum());
        // source line 74, bytecode pc 1023
        xs.Utils.setCcbLabel(this.ccbNode_plug, this.cfg.nextSoulNum.tag, model.getNextBreachSoulNum());
    } else {
        if ((model.name === "xs.Models.TransmissionModel")) {
            // source line 78, bytecode pc 1071
            this.m_title.setStringById("1071110031");
            // source line 80, bytecode pc 1107
            (this.ccbNode_plug = xs.ccb_reader.load("ccb3/0_7_9_Transmission.ccbi", this));
            // source line 81, bytecode pc 1128
            this.ccbNode_plug.setZOrder(3);
            // source line 82, bytecode pc 1219
            xs.Utils.Node.attachNodes(this.ccbNode, this.ccbNode_plug, { desc: "cb", offset: cc.p(-55, 95), sc: false });
            // source line 84, bytecode pc 1227
            (this.m_talentPoint = null);
            // source line 85, bytecode pc 1235
            (this.m_talentPointPlus = null);
            // source line 86, bytecode pc 1243
            (this.m_ganodermaStr = null);
            // source line 87, bytecode pc 1251
            (this.m_ganodermaNum = null);
            // source line 89, bytecode pc 1259
            (this.m_MeridianPoint = null);
            // source line 90, bytecode pc 1285
            (this.m_ccbNode_1 = this.ccbNode_plug.getChildByTag(1));
            // source line 91, bytecode pc 1312
            (this.m_ccbNode_2 = this.ccbNode_plug.getChildByTag(2));
            // source line 92, bytecode pc 1339
            (this.m_ccbNode_up = this.ccbNode_plug.getChildByTag(21));
            // source line 93, bytecode pc 1366
            (this.m_ccbNode_down = this.ccbNode_plug.getChildByTag(22));
            // source line 94, bytecode pc 1414
            xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode_1, this.cfg.ccbCfg_transmission_1, this);
            // source line 95, bytecode pc 1462
            xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode_2, this.cfg.ccbCfg_transmission_2, this);
            // source line 96, bytecode pc 1510
            xs.Utils.UI.replaceCcbByCfg(this.ccbNode_plug, this.cfg.ccbCfg_transmission, this);
            if ((model.getSacrificeType() == xs.Models.ItemGrade_Master)) {
                // source line 98, bytecode pc 1565
                this.m_ccbNode_1.setVisible(false);
                // source line 99, bytecode pc 1585
                this.m_ccbNode_2.setVisible(true);
                // source line 100, bytecode pc 1605
                this.m_ccbNode_down.setVisible(false);
                // source line 101, bytecode pc 1656
                this.m_TalentStr.setString(xs.Tools.String.createString("str_Worship_TalentBackValue"));
                // source line 102, bytecode pc 1689
                this.m_TalentNum.setString(model.getTalentPoint());
            } else {
                // source line 104, bytecode pc 1714
                this.m_ccbNode_1.setVisible(true);
                // source line 105, bytecode pc 1734
                this.m_ccbNode_2.setVisible(false);
                // source line 107, bytecode pc 1785
                this.m_ganodermaStr.setString(xs.Tools.String.createString("str_Worship_backValue"));
                // source line 108, bytecode pc 1803
                (ganodermaNum = model.getGanodermaBackNum());
                // source line 109, bytecode pc 1825
                this.m_ganodermaNum.setString(ganodermaNum);
                if ((ganodermaNum >= 0)) {
                    // source line 111, bytecode pc 1855
                    this.m_ccbNode_down.setVisible(false);
                } else {
                    // source line 113, bytecode pc 1880
                    this.m_ccbNode_up.setVisible(false);
                }
            }
            // source line 118, bytecode pc 1916
            this.m_MeridianPoint.setString(this.m_maiLiItemNum.toString());
            // source line 119, bytecode pc 1949
            this.m_talentPoint.setString(model.getTalentPoint());
            // source line 120, bytecode pc 1982
            this.m_talentPointPlus.setString(model.getTalentPointPlus());
        }
    }
    // source line 127, bytecode pc 2033
    this.m_expStr.setString(xs.Factorys.String.create("1071110027"));
    // source line 132, bytecode pc 2070
    this.m_closeBtn.setOnClickCallBack(function() {
    // source line 131, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this));
    // source line 137, bytecode pc 2107
    this.m_confirmBtn.setOnClickCallBack(function() {
    // source line 136, bytecode pc 26
    xs.Views.Mgr.hideDialog();
}.bind(this));
    // source line 140, bytecode pc 2140
    this.m_name.setString(model.getGeneralName());
    // source line 142, bytecode pc 2201
    xs.Utils.replaceGradeIcon(this.infoRegionCcb, this.cfg.gradeIcon.tag, model.getGeneralGrade());
    if ((model.name === "xs.Models.BreachModel")) {
        // source line 145, bytecode pc 2253
        this.m_generalLevel_old.setString(model.getGeneralLevel());
        // source line 146, bytecode pc 2273
        this.m_arrow.setVisible(false);
        // source line 147, bytecode pc 2293
        this.m_generalLevel_new.setVisible(false);
    } else {
        if ((model.name === "xs.Models.TransmissionModel")) {
            // source line 149, bytecode pc 2337
            this.m_arrow.setVisible(true);
            // source line 150, bytecode pc 2357
            this.m_generalLevel_new.setVisible(true);
            // source line 151, bytecode pc 2390
            this.m_generalLevel_old.setString(model.getGeneralOldLevel());
            // source line 152, bytecode pc 2423
            this.m_generalLevel_new.setString(model.getGeneralNewLevel());
        }
    }
    // source line 156, bytecode pc 2462
    this.m_breachLevel_new.setString((model.getBreachNewLevel() + ""));
    // source line 157, bytecode pc 2501
    this.m_breachLevel_old.setString((model.getBreachOldLevel() + ""));
    // source line 160, bytecode pc 2534
    this.m_hp.setString(model.getHp());
    // source line 161, bytecode pc 2567
    this.m_attack.setString(model.getAttack());
    // source line 162, bytecode pc 2600
    this.m_def.setString(model.getDefence());
    // source line 163, bytecode pc 2633
    this.m_int.setString(model.getIntelligence());
    // source line 165, bytecode pc 2651
    (hpPulus = model.getHpPlus());
    // source line 166, bytecode pc 2669
    (attackPlus = model.getAttackPlus());
    // source line 167, bytecode pc 2687
    (defencePulus = model.getDefencePlus());
    // source line 168, bytecode pc 2705
    (intelligencePulus = model.getIntelligencePlus());
    // source line 170, bytecode pc 2727
    this.m_hp_plus.setString(hpPulus);
    // source line 171, bytecode pc 2749
    this.m_attack_plus.setString(attackPlus);
    // source line 172, bytecode pc 2771
    this.m_def_plus.setString(defencePulus);
    // source line 173, bytecode pc 2793
    this.m_int_plus.setString(intelligencePulus);
    // source line 175, bytecode pc 2822
    xs.log_hsq("model.getHpPlus()", (hpPulus >= 0));
    // source line 176, bytecode pc 2851
    xs.log_hsq("model.getAttackPlus()", (attackPlus >= 0));
    // source line 177, bytecode pc 2880
    xs.log_hsq("model.getDefencePlus()", (defencePulus >= 0));
    // source line 178, bytecode pc 2909
    xs.log_hsq("parseInt(model.getIntelligencePlus()", (intelligencePulus >= 0));
    if ((hpPulus >= 0)) {
        // source line 180, bytecode pc 2939
        this.m_arrows1.setVisible(true);
        // source line 181, bytecode pc 2959
        this.m_arrows11.setVisible(false);
        // source line 182, bytecode pc 2982
        xs.log_hsq("getHpPlus >0");
    } else {
        // source line 186, bytecode pc 3007
        this.m_arrows1.setVisible(false);
        // source line 187, bytecode pc 3027
        this.m_arrows11.setVisible(true);
        // source line 188, bytecode pc 3050
        xs.log_hsq("getHpPlus <0");
    }
    if ((attackPlus >= 0)) {
        // source line 191, bytecode pc 3080
        this.m_arrows2.setVisible(true);
        // source line 192, bytecode pc 3100
        this.m_arrows12.setVisible(false);
    } else {
        // source line 195, bytecode pc 3125
        this.m_arrows2.setVisible(false);
        // source line 196, bytecode pc 3145
        this.m_arrows12.setVisible(true);
    }
    if ((defencePulus >= 0)) {
        // source line 202, bytecode pc 3175
        this.m_arrows3.setVisible(true);
        // source line 203, bytecode pc 3195
        this.m_arrows13.setVisible(false);
    } else {
        // source line 207, bytecode pc 3220
        this.m_arrows3.setVisible(false);
        // source line 208, bytecode pc 3240
        this.m_arrows13.setVisible(true);
    }
    if ((intelligencePulus >= 0)) {
        // source line 211, bytecode pc 3270
        this.m_arrows4.setVisible(true);
        // source line 212, bytecode pc 3290
        this.m_arrows14.setVisible(false);
    } else {
        // source line 215, bytecode pc 3315
        this.m_arrows4.setVisible(false);
        // source line 216, bytecode pc 3335
        this.m_arrows14.setVisible(true);
    }
    // source line 220, bytecode pc 3368
    (this.progressTimer = xs.Views.NormalProgressTimer.create());
    // source line 221, bytecode pc 3421
    xs.Utils.replaceNode(this.infoRegionCcb, this.cfg.progressBg.tag, this.progressTimer);
    // source line 222, bytecode pc 3440
    this.setExpShow(30, 100);
    // source line 224, bytecode pc 3442
    return true;
},
    setExpShow: function(hava, total) {
    if (this.progressTimer) {
        // source line 230, bytecode pc 36
        this.progressTimer.setExpShow(hava, total);
    }
},
    setBaseTouchPriority: function(priority) {
    // source line 235, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 236, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 237, bytecode pc 71
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.closeBtn.priority));
    // source line 238, bytecode pc 113
    this.m_confirmBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.confirmBtn.priority));
},
    cfg: {
        card: { tag: 10 },
        gradeIcon: { tag: 20 },
        progressBg: { tag: 26 },
        arrow: { tag: 27 },
        infoRegion: { tag: 14 },
        closeBtn: { priority: -1 },
        confirmBtn: { priority: -1 },
        ccbCfg: [
            { tag: 13, type: "ls", name: "m_title", id: "LS_popUI1" },
            { tag: 11, type: "btn", name: "m_closeBtn", id: "Btn_Close" },
            { tag: 12, type: "btn", name: "m_confirmBtn", id: "Btn_Confirm" }
        ],
        ccbCfg_info: [
            { tag: 21, type: "ls", name: "m_name", id: "LS_wujiangInf1" },
            { tag: 23, type: "ls", name: "m_breachLevel_old", id: "LS_Lv" },
            { tag: 24, type: "ls", name: "m_breachLevel_new", id: "LS_Lv" },
            { tag: 25, type: "ls", name: "m_generalLevel_old", id: "LS_Lv" },
            { tag: 28, type: "ls", name: "m_generalLevel_new", id: "LS_Lv" },
            { tag: 32, type: "ls", name: "m_hp", id: "LS_mainUI4" },
            { tag: 33, type: "ls", name: "m_attack", id: "LS_mainUI4" },
            { tag: 34, type: "ls", name: "m_def", id: "LS_mainUI4" },
            { tag: 35, type: "ls", name: "m_int", id: "LS_mainUI4" },
            { tag: 36, type: "ls", name: "m_hp_plus", id: "LS_mainUI4" },
            { tag: 37, type: "ls", name: "m_attack_plus", id: "LS_mainUI4" },
            { tag: 38, type: "ls", name: "m_def_plus", id: "LS_mainUI4" },
            { tag: 39, type: "ls", name: "m_int_plus", id: "LS_mainUI4" },
            { tag: 40, type: "ls", name: "m_expStr", id: "LS_wujiangInf2" },
            { tag: 201, name: "m_arrows1" },
            { tag: 202, name: "m_arrows2" },
            { tag: 203, name: "m_arrows3" },
            { tag: 204, name: "m_arrows4" },
            { tag: 211, name: "m_arrows11" },
            { tag: 212, name: "m_arrows12" },
            { tag: 213, name: "m_arrows13" },
            { tag: 214, name: "m_arrows14" }
        ],
        ccbCfg_transmission: [
            { tag: 60, type: "ls", name: "m_MeridianPoint", id: "LS_mainUI4" },
            { tag: 10, type: "ls", name: "m_talentPoint", id: "LS_mainUI4" },
            { tag: 11, type: "ls", name: "m_talentPointPlus", id: "LS_mainUI4" }
        ],
        ccbCfg_transmission_1: [
            { tag: 2, type: "ls", name: "m_ganodermaNum", id: "LS_mainUI4" },
            {
                tag: 1,
                type: "ls",
                name: "m_ganodermaStr",
                id: "LS_wujiangInf2",
                stringId: "str_Worship_backValue"
            }
        ],
        ccbCfg_transmission_2: [
            { tag: 2, type: "ls", name: "m_TalentNum", id: "LS_mainUI4" },
            {
                tag: 1,
                type: "ls",
                name: "m_TalentStr",
                id: "LS_wujiangInf2",
                stringId: "str_Worship_TalentBackValue"
            }
        ],
        lastSoulNum: { tag: 11 },
        nextSoulNum: { tag: 12 }
    }
})));
// source line 314, bytecode pc 1743
(xs.Views.Dialog.BreachResult.create = function(data) {
    var ret;
    // source line 315, bytecode pc 28
    (ret = new xs.Views.Dialog.BreachResult());
    if ((ret && ret.init(data))) {
        // source line 317, bytecode pc 64
        return ret;
    }
    // source line 319, bytecode pc 66
    return null;
});
// source line 324, bytecode pc 1823
xs.Views.Mgr.registerDialog("BreachResult", { "class": xs.Views.Dialog.BreachResult, styleType: xs.Constant_DlgStyleType_Large });
