// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/TeamIconButton.js:1
// source line 146, bytecode pc 251
(xs.Views.TeamIconButton = cc.Node.extend({
    ctor: function() {
    // source line 15, bytecode pc 12
    this._super();
    // source line 16, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    cfg: { GemLightZOrder: 12 },
    init: function(playerId, playerData) {
    if (!this._super()) {
        // source line 23, bytecode pc 19
        return false;
    }
    // source line 26, bytecode pc 29
    (this.m_playerId = playerId);
    // source line 27, bytecode pc 39
    (this.m_playerData = playerData);
    // source line 29, bytecode pc 47
    (this.m_innerBtn = null);
    // source line 30, bytecode pc 55
    (this.m_nameLab = null);
    // source line 31, bytecode pc 63
    (this.m_placeIcon = null);
    // source line 32, bytecode pc 71
    (this.m_icon = null);
    // source line 33, bytecode pc 79
    (this.m_selector = null);
    // source line 34, bytecode pc 88
    (this.m_index = -1);
    // source line 35, bytecode pc 96
    (this.m_data = null);
    // source line 36, bytecode pc 104
    (this.b_isLocked = false);
    // source line 37, bytecode pc 112
    (this.m_lockIcon = null);
    // source line 38, bytecode pc 120
    (this.m_lockLv = 0);
    // source line 40, bytecode pc 157
    this.setContentSize(cc.size(100, 130));
    // source line 42, bytecode pc 202
    (this.m_innerBtn = xs.Views.Btn.create("Btn_TeamIconButton", ""));
    // source line 43, bytecode pc 222
    this.m_innerBtn.setZoomOnTouchDown(false);
    // source line 44, bytecode pc 260
    this.m_innerBtn.setOnClickCallBack(this.innerBtnCallback.bind(this));
    // source line 45, bytecode pc 301
    this.m_innerBtn.setPosition(cc.p(50, 80));
    // source line 46, bytecode pc 337
    xs.Utils.Node.attachNodes(this, this.m_innerBtn);
    // source line 48, bytecode pc 382
    (this.m_nameLab = xs.Factorys.LabelTTF.create("", "TTF_Font_TeamIconName"));
    // source line 49, bytecode pc 423
    this.m_nameLab.setPosition(cc.p(50, 16));
    // source line 50, bytecode pc 459
    xs.Utils.Node.attachNodes(this, this.m_nameLab);
    // source line 52, bytecode pc 504
    (this.m_lockIcon = xs.Factorys.Sprite.create("icon_touxiangSuo", "Cmn01"));
    // source line 53, bytecode pc 545
    this.m_lockIcon.setPosition(cc.p(50, 80));
    // source line 54, bytecode pc 566
    this.m_lockIcon.setZOrder(2);
    // source line 55, bytecode pc 602
    xs.Utils.Node.attachNodes(this, this.m_lockIcon);
    // source line 57, bytecode pc 644
    this.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 58, bytecode pc 646
    return true;
},
    setIconName: function(name) {
    // source line 61, bytecode pc 21
    this.m_nameLab.setString(name);
},
    setBtnText: function(txt) {
    // source line 64, bytecode pc 21
    this.m_innerBtn.setString(txt);
},
    setTouchPriority: function(priority) {
    // source line 67, bytecode pc 21
    this.m_innerBtn.setTouchPriority(priority);
},
    getTouchPriority: function() {
    // source line 70, bytecode pc 17
    return this.m_innerBtn.getTouchPriority();
},
    setEnabled: function(enabled) {
    // source line 73, bytecode pc 21
    this.m_innerBtn.setEnabled(enabled);
},
    setIndex: function(index, isUpdate) {
    if ((this.m_index != index)) {
        // source line 77, bytecode pc 24
        (this.m_index = index);
        if (((isUpdate == null) || (isUpdate == true))) {
            // source line 79, bytecode pc 58
            this.updateView();
        }
    }
},
    setLockLv: function(level) {
    // source line 84, bytecode pc 9
    (this.m_lockLv = level);
},
    getLockLv: function() {
    // source line 87, bytecode pc 6
    return this.m_lockLv;
},
    setIsLocked: function(locked, isUpdate) {
    if ((this.b_isLocked != locked)) {
        // source line 91, bytecode pc 24
        (this.b_isLocked = locked);
        if (((isUpdate == null) || (isUpdate == true))) {
            // source line 93, bytecode pc 58
            this.updateView();
        }
    }
},
    getIsLocked: function() {
    // source line 98, bytecode pc 6
    return this.b_isLocked;
},
    setEquipEnabled: function(equipEnabled, isUpdate) {
    if ((this.b_equipEnabled !== equipEnabled)) {
        // source line 103, bytecode pc 24
        (this.b_equipEnabled = equipEnabled);
        if (((isUpdate == null) || (isUpdate == true))) {
            // source line 105, bytecode pc 58
            this.updateView();
        }
    }
},
    setData: function(data, isUpdate) {
    // source line 111, bytecode pc 9
    (this.m_data = data);
    if (((isUpdate == null) || (isUpdate == true))) {
        // source line 113, bytecode pc 43
        this.updateView();
    }
},
    getData: function() {
    // source line 117, bytecode pc 6
    return this.m_data;
},
    setCallback: function(selector, target) {
    // source line 120, bytecode pc 24
    (this.m_selector = selector.bind(target));
},
    innerBtnCallback: function() {
    if (this.m_selector) {
        // source line 124, bytecode pc 37
        this.m_selector(this.m_index, this.m_data);
    }
},
    openLieutenantSkillNameShow: function() {
    var skill;
    if (this.m_data) {
        if (!this.lieutenantSkillLabel) {
            // source line 132, bytecode pc 61
            (this.lieutenantSkillLabel = xs.Factorys.Label.createByStyleId("LS_Nomb1"));
            // source line 133, bytecode pc 82
            this.lieutenantSkillLabel.setZOrder(10);
            // source line 134, bytecode pc 161
            xs.Utils.Node.attachNodes(this, this.lieutenantSkillLabel, { desc: "cb", offset: cc.p(0, 45) });
        }
        // source line 137, bytecode pc 233
        (skill = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData).Generals.getNaturalSkill(this.m_data));
        // source line 138, bytecode pc 314
        this.lieutenantSkillLabel.setString(((skill.getNameString() + xs.Tools.String.createString("auto_name_Lv")) + skill.getLevel()));
    } else {
        if (this.lieutenantSkillLabel) {
            // source line 141, bytecode pc 348
            this.lieutenantSkillLabel.removeFromParent();
            // source line 142, bytecode pc 356
            (this.lieutenantSkillLabel = null);
        }
    }
},
    updateView: function() {
    var pIconFrameName, fistBoreType, AllBoreOneProperty, i, _obj;
    // source line 147, bytecode pc 33
    xs.Utils.Node.safeRemoveChild(this.m_placeIcon);
    // source line 148, bytecode pc 41
    (this.m_placeIcon = null);
    // source line 150, bytecode pc 50
    (pIconFrameName = "icon_kongTouxiang");
    // source line 151, bytecode pc 57
    switch (this.m_index) {
        case 1:
        // source line 153, bytecode pc 110
        (pIconFrameName = "icon_kongTouxiang");
        // source line 154, bytecode pc 123
        this.openLieutenantSkillNameShow();
        break;
        case 2:
        // source line 157, bytecode pc 137
        (pIconFrameName = "icon_kongTouxiang");
        // source line 158, bytecode pc 150
        this.openLieutenantSkillNameShow();
        break;
        case 3:
        // source line 161, bytecode pc 164
        (pIconFrameName = "icon_kongJineng");
        break;
        case 4:
        // source line 164, bytecode pc 178
        (pIconFrameName = "icon_kongJineng");
        break;
        case 5:
        // source line 167, bytecode pc 192
        (pIconFrameName = "icon_kongJinnang");
        break;
        case 6:
        // source line 170, bytecode pc 206
        (pIconFrameName = "icon_kongZuoqi");
        break;
        case 7:
        // source line 173, bytecode pc 220
        (pIconFrameName = "icon_kongFangju");
        break;
        case 8:
        // source line 176, bytecode pc 234
        (pIconFrameName = "icon_kongWuqi");
        break;
        default:
        break;
    }
    // source line 181, bytecode pc 282
    (this.m_placeIcon = xs.Factorys.Sprite.create(pIconFrameName, "Cmn01"));
    // source line 182, bytecode pc 323
    this.m_placeIcon.setPosition(cc.p(50, 80));
    // source line 183, bytecode pc 359
    xs.Utils.Node.attachNodes(this, this.m_placeIcon);
    // source line 185, bytecode pc 393
    xs.Utils.Node.safeRemoveChild(this.m_icon);
    // source line 186, bytecode pc 401
    (this.m_icon = null);
    if (this.b_isLocked) {
        // source line 189, bytecode pc 448
        xs.Utils.Node.fastSetVisible(this.m_lockIcon, true);
    } else {
        // source line 191, bytecode pc 489
        xs.Utils.Node.fastSetVisible(this.m_lockIcon, false);
    }
    if (this.m_gemLightArm) {
        // source line 196, bytecode pc 518
        this.m_gemLightArm.removeFromParent();
        // source line 197, bytecode pc 526
        (this.m_gemLightArm = null);
    }
    if (this.m_data) {
        if ((this.m_data.m_bore_list && (this.m_data.m_bore_list.length != 0))) {
            // source line 202, bytecode pc 599
            (fistBoreType = this.m_data.m_bore_list[0].bore_type);
            // source line 203, bytecode pc 604
            (AllBoreOneProperty = 1);
            // source line 204, bytecode pc 609
            (i = 1);
            while ((i < this.m_data.m_bore_list.length)) {
                if ((this.m_data.m_bore_list[i].bore_type == fistBoreType)) {
                    // source line 206, bytecode pc 659
                    AllBoreOneProperty++;
                }
                // source line 204, bytecode pc 674
                i++;
            }
            if ((AllBoreOneProperty == 5)) {
                if (!this.m_gemLightArm) {
                    // source line 211, bytecode pc 767
                    (this.m_gemLightArm = xs.Views.Armature.AutoAudioArmature.create("GemLight"));
                    // source line 212, bytecode pc 808
                    this.m_gemLightArm.setPosition(cc.p(50, 80));
                    // source line 213, bytecode pc 838
                    this.m_gemLightArm.setZOrder(this.cfg.GemLightZOrder);
                    // source line 214, bytecode pc 881
                    this.m_gemLightArm.playAniById("ani_gemlight", { loop: true, speed: 1 });
                    // source line 215, bytecode pc 917
                    xs.Utils.Node.attachNodes(this, this.m_gemLightArm);
                }
            }
        }
        // source line 226, bytecode pc 945
        (_obj = { grade: true, lv: true, name: true });
        // source line 228, bytecode pc 952
        switch (this.m_index) {
            case 1:
            case 2:
            // source line 232, bytecode pc 1006
            (_obj.breach_lv = true);
            // source line 233, bytecode pc 1016
            (_obj.lv = false);
            // source line 234, bytecode pc 1026
            (_obj.skill_type_lieutenant = true);
            break;
            case 3:
            case 4:
            // source line 240, bytecode pc 1041
            (_obj.skill_type = true);
            // source line 241, bytecode pc 1051
            (_obj.advancedLv = true);
            break;
            case 5:
            case 6:
            case 7:
            case 8:
            // source line 248, bytecode pc 1066
            (_obj.refine_lv = true);
            // source line 249, bytecode pc 1076
            (_obj.boreAndGemNum = true);
            break;
            default:
            break;
        }
        // source line 252, bytecode pc 1123
        (this.m_icon = xs.Views.Icon.IconStyleA.create(_obj));
        // source line 253, bytecode pc 1148
        this.m_icon.reloadData(this.m_data);
        // source line 254, bytecode pc 1184
        this.m_icon.setPosition(this.m_innerBtn.getPosition());
        // source line 255, bytecode pc 1224
        xs.Utils.Node.attachNodes(this, this.m_icon, null, null);
    }
    if (this.b_equipEnabled) {
        if (!this.m_equipEnabledIcon) {
            // source line 262, bytecode pc 1292
            (this.m_equipEnabledIcon = xs.Factorys.Sprite.create("icon_lt_equipEnabled", "Cmn02"));
            // source line 263, bytecode pc 1331
            this.m_equipEnabledIcon.setAnchorPoint(cc.p(0, 1));
            // source line 264, bytecode pc 1352
            this.m_equipEnabledIcon.setZOrder(10);
            // source line 266, bytecode pc 1431
            xs.Utils.Node.attachNodes(this, this.m_equipEnabledIcon, { desc: "lt", offset: cc.p(0, 2) });
            // source line 269, bytecode pc 1476
            (this.m_equipEnabledIconBtm = xs.Factorys.Sprite.create("icon_lt_equipEnabled_btm", "Cmn02"));
            // source line 270, bytecode pc 1497
            this.m_equipEnabledIconBtm.setZOrder(-1);
            // source line 271, bytecode pc 1517
            this.m_equipEnabledIconBtm.setOpacity(0);
            // source line 273, bytecode pc 1596
            xs.Utils.Node.attachNodes(this, this.m_equipEnabledIconBtm, { desc: "c", offset: cc.p(0, 15) });
        }
        // source line 276, bytecode pc 1614
        this.m_equipEnabledIconBtm.stopAllActions();
        // source line 277, bytecode pc 1634
        this.m_equipEnabledIconBtm.setOpacity(0);
        // source line 281, bytecode pc 1744
        this.m_equipEnabledIconBtm.runAction(cc.RepeatForever.create(cc.Sequence.create(cc.FadeIn.create(1), cc.FadeOut.create(1))));
    } else {
        if (this.m_equipEnabledIcon) {
            // source line 286, bytecode pc 1778
            this.m_equipEnabledIcon.removeFromParent();
            // source line 287, bytecode pc 1786
            (this.m_equipEnabledIcon = null);
        }
        if (this.m_equipEnabledIconBtm) {
            // source line 290, bytecode pc 1815
            this.m_equipEnabledIconBtm.removeFromParent();
            // source line 291, bytecode pc 1823
            (this.m_equipEnabledIconBtm = null);
        }
    }
}
}));
// source line 297, bytecode pc 277
(xs.Views.TeamIconButton.create = function(playerId, playerData) {
    var btn;
    // source line 298, bytecode pc 23
    (btn = new xs.Views.TeamIconButton());
    if ((btn && btn.init(playerId, playerData))) {
        // source line 300, bytecode pc 63
        return btn;
    }
    // source line 302, bytecode pc 86
    xs.warn("xs.Views.TeamIconButton.create error!");
    // source line 303, bytecode pc 88
    return null;
});
