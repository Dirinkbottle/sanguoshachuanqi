// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Table/Cell/ReplaceCardCell.js:1
// source line 175, bytecode pc 158
(xs.Views.Table.Cell.ReplaceGeneralCell = xs.Views.Table.Cell.BaseCmnStyleCCell.extend({
    init: function() {
    if (!this._super()) {
        // source line 15, bytecode pc 19
        return false;
    }
    // source line 17, bytecode pc 27
    (this.m_onGeneralData = null);
    // source line 18, bytecode pc 36
    (this.m_spGuideTag = -1);
    // source line 19, bytecode pc 74
    this.m_btn.setOnClickCallBack(this.btnCallback.bind(this));
    // source line 20, bytecode pc 94
    this.m_btn.setEventOnDisable(true);
    // source line 22, bytecode pc 96
    return true;
},
    formatCell: function() {
    // source line 25, bytecode pc 12
    this._super();
    // source line 27, bytecode pc 32
    this.m_icon.setVisible(true);
    // source line 28, bytecode pc 52
    this.m_gradeIcon.setVisible(true);
    // source line 29, bytecode pc 72
    this.m_nameLab.setVisible(true);
    // source line 30, bytecode pc 92
    this.m_fightBg.setVisible(true);
    // source line 31, bytecode pc 112
    this.m_fightIcon.setVisible(true);
    // source line 32, bytecode pc 132
    this.m_fightLab.setVisible(true);
    // source line 33, bytecode pc 152
    this.m_atkLab.setVisible(true);
    // source line 35, bytecode pc 172
    this.m_btn.setVisible(true);
    // source line 36, bytecode pc 192
    this.m_alterLab.setVisible(true);
    // source line 37, bytecode pc 212
    this.m_atkIcon.setVisible(false);
    // source line 38, bytecode pc 232
    this.m_nameSmalLab.setVisible(false);
    // source line 39, bytecode pc 252
    this.m_nameSmalTypeIcon.setVisible(false);
},
    setOnGeneralData: function(data) {
    // source line 43, bytecode pc 9
    (this.m_onGeneralData = data);
    // source line 44, bytecode pc 22
    this.updateCell();
},
    updateCell: function() {
    var icon, btn, gradeIcon, general, equLab, str;
    // source line 47, bytecode pc 12
    this._super();
    if (this.m_cellData) {
        if (this.m_icon) {
            // source line 51, bytecode pc 54
            this.m_icon.setVisible(true);
        }
        if (this.m_iconBtn) {
            // source line 54, bytecode pc 85
            this.m_iconBtn.setVisible(true);
        }
        // source line 56, bytecode pc 105
        this.m_gradeIcon.setVisible(true);
        // source line 57, bytecode pc 125
        this.m_nameLab.setVisible(true);
        // source line 58, bytecode pc 145
        this.m_fightBg.setVisible(true);
        // source line 59, bytecode pc 165
        this.m_fightIcon.setVisible(true);
        // source line 60, bytecode pc 185
        this.m_fightLab.setVisible(true);
        // source line 61, bytecode pc 205
        this.m_atkLab.setVisible(true);
        // source line 63, bytecode pc 225
        this.m_btn.setVisible(true);
        // source line 64, bytecode pc 245
        this.m_bg.setVisible(true);
        // source line 65, bytecode pc 265
        this.m_alterLab.setVisible(false);
        // source line 66, bytecode pc 285
        this.m_alterBg.setVisible(false);
        // source line 67, bytecode pc 305
        this.m_atkIcon.setVisible(false);
        // source line 68, bytecode pc 325
        this.m_nameSmalLab.setVisible(false);
        // source line 69, bytecode pc 345
        this.m_nameSmalTypeIcon.setVisible(false);
        // source line 71, bytecode pc 366
        (icon = this.m_cellData.createIcon_GradeAndLv());
        // source line 72, bytecode pc 388
        icon.reloadData(this.m_cellData);
        // source line 74, bytecode pc 422
        (btn = xs.Views.Btn.createInvisibleWithChild(icon));
        if (this.m_icon) {
            // source line 76, bytecode pc 466
            btn.setPosition(this.m_icon.getPosition());
        }
        if (this.m_iconBtn) {
            // source line 79, bytecode pc 510
            btn.setPosition(this.m_iconBtn.getPosition());
        }
        // source line 81, bytecode pc 548
        xs.Utils.Node.attachNodes(this.m_ccbNode, btn);
        // source line 82, bytecode pc 582
        xs.Utils.Node.safeRemoveChild(this.m_iconBtn);
        // source line 83, bytecode pc 592
        (this.m_iconBtn = btn);
        // source line 84, bytecode pc 630
        this.m_iconBtn.setOnClickCallBack(this.iconBtnCallback.bind(this));
        // source line 85, bytecode pc 650
        this.m_iconBtn.setSwallowTouch(false);
        // source line 86, bytecode pc 670
        this.m_iconBtn.setZoomOnTouchDown(false);
        // source line 88, bytecode pc 704
        xs.Utils.Node.safeRemoveChild(this.m_icon);
        // source line 89, bytecode pc 712
        (this.m_icon = null);
        // source line 91, bytecode pc 733
        (gradeIcon = this.m_cellData.createGradeSmallIcon());
        // source line 92, bytecode pc 766
        gradeIcon.setPosition(this.m_gradeIcon.getPosition());
        // source line 93, bytecode pc 804
        xs.Utils.Node.attachNodes(this.m_ccbNode, gradeIcon);
        // source line 94, bytecode pc 838
        xs.Utils.Node.safeRemoveChild(this.m_gradeIcon);
        // source line 95, bytecode pc 848
        (this.m_gradeIcon = gradeIcon);
        // source line 98, bytecode pc 853
        (general = null);
        if (this.m_cellData.isLieutenant()) {
            // source line 101, bytecode pc 944
            (general = xs.Profile.GameData.Mgr.getInstance().Generals.getByPkId(this.m_cellData.getMajorPkId()));
            // source line 102, bytecode pc 971
            xs.assert(general, "Assistant major general missing!");
        }
        // source line 104, bytecode pc 992
        (equLab = this.m_nameLab.getNext());
        if (!equLab) {
            // source line 106, bytecode pc 1037
            (equLab = xs.Factorys.Label.createByStyleId("LS_yishangzhen"));
            // source line 107, bytecode pc 1059
            this.m_nameLab.setNext(equLab);
        }
        // source line 109, bytecode pc 1068
        (str = "");
        if (general) {
            // source line 112, bytecode pc 1147
            (str = xs.Tools.String.createString("str_ReplaceDialog_equAt").convWithArgs([ general.getNameString() ]));
        } else {
            if (xs.Profile.GameData.Mgr.getInstance().Buddy.isInBuddy(this.m_cellData.getPkId())) {
                // source line 117, bytecode pc 1258
                (str = xs.Tools.String.createString("str_ReplaceDialog_buddy"));
            }
        }
        // source line 120, bytecode pc 1277
        equLab.setString(str);
        // source line 121, bytecode pc 1295
        this.m_nameLab.refreshLayout();
        // source line 123, bytecode pc 1331
        this.m_nameLab.setString(this.m_cellData.getNameString());
        // source line 125, bytecode pc 1400
        this.m_fightLab.setString(xs.Utils.floorSafe(this.m_cellData.getAttrNaked(xs.Constant_AttrType_FightPoint)));
    } else {
        // source line 128, bytecode pc 1429
        this.m_nameLab.setString("");
        // source line 129, bytecode pc 1453
        this.m_fightLab.setString("");
        if (this.m_icon) {
            // source line 132, bytecode pc 1484
            this.m_icon.setVisible(false);
        }
        if (this.m_iconBtn) {
            // source line 135, bytecode pc 1515
            this.m_iconBtn.setVisible(false);
        }
        // source line 137, bytecode pc 1535
        this.m_gradeIcon.setVisible(false);
        // source line 138, bytecode pc 1555
        this.m_nameLab.setVisible(false);
        // source line 139, bytecode pc 1575
        this.m_fightBg.setVisible(false);
        // source line 140, bytecode pc 1595
        this.m_fightIcon.setVisible(false);
        // source line 141, bytecode pc 1615
        this.m_fightLab.setVisible(false);
        // source line 142, bytecode pc 1635
        this.m_atkLab.setVisible(false);
        // source line 143, bytecode pc 1655
        this.m_propertyBg.setVisible(false);
        // source line 144, bytecode pc 1675
        this.m_btn.setVisible(false);
        // source line 145, bytecode pc 1695
        this.m_bg.setVisible(false);
        // source line 146, bytecode pc 1715
        this.m_alterLab.setVisible(true);
        // source line 147, bytecode pc 1735
        this.m_alterBg.setVisible(true);
        // source line 148, bytecode pc 1755
        this.m_atkIcon.setVisible(false);
        // source line 149, bytecode pc 1775
        this.m_nameSmalLab.setVisible(false);
        // source line 150, bytecode pc 1795
        this.m_nameSmalTypeIcon.setVisible(false);
    }
    if (!xs.Guide.GuideMgr.getIsOver()) {
        // source line 155, bytecode pc 1852
        this.m_btn.setGuideTag(this.m_spGuideTag);
    }
},
    btnCallback: function() {
    if (this.m_listener) {
        // source line 161, bytecode pc 35
        this.m_listener.ReplaceCardCell_btnCallback(this.m_cellData);
    }
},
    iconBtnCallback: function() {
    if (this.m_listener) {
        // source line 166, bytecode pc 35
        this.m_listener.ReplaceCardCell_iconBtnCallback(this.m_cellData);
    }
},
    setBtnString: function(str) {
    // source line 170, bytecode pc 21
    this.m_btn.setString(str);
},
    setBtnSpecialEnabled: function(enabled) {
    // source line 173, bytecode pc 22
    this.m_btn.setEnabled(!enabled);
},
    setSpGuideTag: function(tag) {
    // source line 176, bytecode pc 9
    (this.m_spGuideTag = tag);
    // source line 177, bytecode pc 22
    this.updateCell();
}
}));
// source line 182, bytecode pc 194
(xs.Views.Table.Cell.ReplaceGeneralCell.create = function() {
    var cell;
    // source line 183, bytecode pc 33
    (cell = new xs.Views.Table.Cell.ReplaceGeneralCell());
    if ((cell && cell.init())) {
        // source line 185, bytecode pc 65
        return cell;
    }
    // source line 187, bytecode pc 88
    xs.warn("xs.Views.Table.Cell.ReplaceGeneralCell create error!");
    // source line 188, bytecode pc 90
    return null;
});
// source line 371, bytecode pc 353
(xs.Views.Table.Cell.ReplaceHULaoBattleGeneralCell = xs.Views.Table.Cell.BaseCmnStyleCCell.extend({
    init: function() {
    if (!this._super()) {
        // source line 195, bytecode pc 19
        return false;
    }
    // source line 197, bytecode pc 27
    (this.m_onGeneralData = null);
    // source line 198, bytecode pc 36
    (this.m_spGuideTag = -1);
    // source line 199, bytecode pc 74
    this.m_btn.setOnClickCallBack(this.btnCallback.bind(this));
    // source line 200, bytecode pc 94
    this.m_btn.setEventOnDisable(true);
    // source line 204, bytecode pc 102
    (this.m_general_Data = null);
    // source line 205, bytecode pc 110
    (this.m_fight = null);
    // source line 207, bytecode pc 112
    return true;
},
    formatCell: function() {
    // source line 210, bytecode pc 12
    this._super();
    // source line 212, bytecode pc 32
    this.m_icon.setVisible(true);
    // source line 213, bytecode pc 52
    this.m_gradeIcon.setVisible(true);
    // source line 214, bytecode pc 72
    this.m_nameLab.setVisible(true);
    // source line 215, bytecode pc 92
    this.m_fightBg.setVisible(true);
    // source line 216, bytecode pc 112
    this.m_fightIcon.setVisible(true);
    // source line 217, bytecode pc 132
    this.m_fightLab.setVisible(true);
    // source line 218, bytecode pc 152
    this.m_atkLab.setVisible(true);
    // source line 220, bytecode pc 172
    this.m_btn.setVisible(true);
    // source line 221, bytecode pc 192
    this.m_alterLab.setVisible(true);
    // source line 222, bytecode pc 212
    this.m_atkIcon.setVisible(false);
    // source line 223, bytecode pc 232
    this.m_nameSmalLab.setVisible(false);
    // source line 224, bytecode pc 252
    this.m_nameSmalTypeIcon.setVisible(false);
},
    setOnGeneralData: function(data) {
    // source line 228, bytecode pc 9
    (this.m_onGeneralData = data);
    // source line 229, bytecode pc 22
    this.updateCell();
},
    updateCell: function() {
    var icon, btn, gradeIcon, equLab;
    // source line 232, bytecode pc 12
    this._super();
    if (this.m_cellData) {
        // source line 235, bytecode pc 79
        (this.m_general_Data = xs.Models.General.createWithBase(this.m_cellData.general_id.toString()));
        // source line 236, bytecode pc 109
        this.m_general_Data.setLevel(this.m_cellData.general_level);
        // source line 237, bytecode pc 127
        (this.m_fight = this.m_cellData.fighting);
        if (this.m_icon) {
            // source line 240, bytecode pc 158
            this.m_icon.setVisible(true);
        }
        if (this.m_iconBtn) {
            // source line 243, bytecode pc 189
            this.m_iconBtn.setVisible(true);
        }
        // source line 245, bytecode pc 209
        this.m_gradeIcon.setVisible(true);
        // source line 246, bytecode pc 229
        this.m_nameLab.setVisible(true);
        // source line 247, bytecode pc 249
        this.m_fightBg.setVisible(true);
        // source line 248, bytecode pc 269
        this.m_fightIcon.setVisible(true);
        // source line 249, bytecode pc 289
        this.m_fightLab.setVisible(true);
        // source line 250, bytecode pc 309
        this.m_atkLab.setVisible(true);
        // source line 252, bytecode pc 329
        this.m_btn.setVisible(true);
        // source line 253, bytecode pc 349
        this.m_bg.setVisible(true);
        // source line 254, bytecode pc 369
        this.m_alterLab.setVisible(false);
        // source line 255, bytecode pc 389
        this.m_alterBg.setVisible(false);
        // source line 256, bytecode pc 409
        this.m_atkIcon.setVisible(false);
        // source line 257, bytecode pc 429
        this.m_nameSmalLab.setVisible(false);
        // source line 258, bytecode pc 449
        this.m_nameSmalTypeIcon.setVisible(false);
        // source line 260, bytecode pc 470
        (icon = this.m_general_Data.createIcon_GradeAndLv());
        // source line 261, bytecode pc 492
        icon.reloadData(this.m_general_Data);
        if ((this.m_cellData.current_hp == 0)) {
            // source line 265, bytecode pc 527
            icon.setDarkMask(true);
            // source line 266, bytecode pc 547
            this.m_btn.setEventOnDisable(false);
            // source line 267, bytecode pc 567
            this.m_btn.setEnabled(false);
        } else {
            // source line 269, bytecode pc 589
            icon.setDarkMask(false);
            // source line 270, bytecode pc 609
            this.m_btn.setEventOnDisable(true);
            // source line 271, bytecode pc 629
            this.m_btn.setEnabled(true);
        }
        // source line 275, bytecode pc 663
        (btn = xs.Views.Btn.createInvisibleWithChild(icon));
        if (this.m_icon) {
            // source line 277, bytecode pc 707
            btn.setPosition(this.m_icon.getPosition());
        }
        if (this.m_iconBtn) {
            // source line 280, bytecode pc 751
            btn.setPosition(this.m_iconBtn.getPosition());
        }
        // source line 282, bytecode pc 789
        xs.Utils.Node.attachNodes(this.m_ccbNode, btn);
        // source line 283, bytecode pc 823
        xs.Utils.Node.safeRemoveChild(this.m_iconBtn);
        // source line 284, bytecode pc 833
        (this.m_iconBtn = btn);
        // source line 285, bytecode pc 871
        this.m_iconBtn.setOnClickCallBack(this.iconBtnCallback.bind(this));
        // source line 286, bytecode pc 891
        this.m_iconBtn.setSwallowTouch(false);
        // source line 287, bytecode pc 911
        this.m_iconBtn.setZoomOnTouchDown(false);
        // source line 289, bytecode pc 945
        xs.Utils.Node.safeRemoveChild(this.m_icon);
        // source line 290, bytecode pc 953
        (this.m_icon = null);
        // source line 292, bytecode pc 974
        (gradeIcon = this.m_general_Data.createGradeSmallIcon());
        // source line 293, bytecode pc 1007
        gradeIcon.setPosition(this.m_gradeIcon.getPosition());
        // source line 294, bytecode pc 1045
        xs.Utils.Node.attachNodes(this.m_ccbNode, gradeIcon);
        // source line 295, bytecode pc 1079
        xs.Utils.Node.safeRemoveChild(this.m_gradeIcon);
        // source line 296, bytecode pc 1089
        (this.m_gradeIcon = gradeIcon);
        // source line 299, bytecode pc 1110
        (equLab = this.m_nameLab.getNext());
        if (!equLab) {
            // source line 301, bytecode pc 1155
            (equLab = xs.Factorys.Label.createByStyleId("LS_yishangzhen"));
            // source line 302, bytecode pc 1177
            this.m_nameLab.setNext(equLab);
        }
        if (this.m_cellData.isFight) {
            // source line 306, bytecode pc 1253
            equLab.setString((("(" + xs.Tools.String.createString("inTeam")) + ")"));
        } else {
            if ((this.m_cellData.current_hp == 0)) {
                // source line 311, bytecode pc 1324
                equLab.setString(xs.Tools.String.createString("GarrisonLayout15"));
            } else {
                // source line 313, bytecode pc 1350
                equLab.setString("");
            }
        }
        // source line 317, bytecode pc 1368
        this.m_nameLab.refreshLayout();
        // source line 319, bytecode pc 1404
        this.m_nameLab.setString(this.m_general_Data.getNameString());
        // source line 321, bytecode pc 1429
        this.m_fightLab.setString(this.m_fight);
    } else {
        // source line 324, bytecode pc 1458
        this.m_nameLab.setString("");
        // source line 325, bytecode pc 1482
        this.m_fightLab.setString("");
        if (this.m_icon) {
            // source line 328, bytecode pc 1513
            this.m_icon.setVisible(false);
        }
        if (this.m_iconBtn) {
            // source line 331, bytecode pc 1544
            this.m_iconBtn.setVisible(false);
        }
        // source line 333, bytecode pc 1564
        this.m_gradeIcon.setVisible(false);
        // source line 334, bytecode pc 1584
        this.m_nameLab.setVisible(false);
        // source line 335, bytecode pc 1604
        this.m_fightBg.setVisible(false);
        // source line 336, bytecode pc 1624
        this.m_fightIcon.setVisible(false);
        // source line 337, bytecode pc 1644
        this.m_fightLab.setVisible(false);
        // source line 338, bytecode pc 1664
        this.m_atkLab.setVisible(false);
        // source line 339, bytecode pc 1684
        this.m_propertyBg.setVisible(false);
        // source line 340, bytecode pc 1704
        this.m_btn.setVisible(false);
        // source line 341, bytecode pc 1724
        this.m_bg.setVisible(false);
        // source line 342, bytecode pc 1744
        this.m_alterLab.setVisible(true);
        // source line 343, bytecode pc 1764
        this.m_alterBg.setVisible(true);
        // source line 344, bytecode pc 1784
        this.m_atkIcon.setVisible(false);
        // source line 345, bytecode pc 1804
        this.m_nameSmalLab.setVisible(false);
        // source line 346, bytecode pc 1824
        this.m_nameSmalTypeIcon.setVisible(false);
    }
    if (!xs.Guide.GuideMgr.getIsOver()) {
        // source line 351, bytecode pc 1881
        this.m_btn.setGuideTag(this.m_spGuideTag);
    }
},
    btnCallback: function() {
    if (this.m_listener) {
        // source line 357, bytecode pc 35
        this.m_listener.ReplaceCardCell_btnCallback(this.m_cellData);
    }
},
    iconBtnCallback: function() {
    if (this.m_listener) {
        // source line 362, bytecode pc 35
        this.m_listener.ReplaceCardCell_iconBtnCallback(this.m_cellData);
    }
},
    setBtnString: function(str) {
    // source line 366, bytecode pc 21
    this.m_btn.setString(str);
},
    setBtnSpecialEnabled: function(enabled) {
    // source line 369, bytecode pc 22
    this.m_btn.setEnabled(!enabled);
},
    setSpGuideTag: function(tag) {
    // source line 372, bytecode pc 9
    (this.m_spGuideTag = tag);
    // source line 373, bytecode pc 22
    this.updateCell();
}
}));
// source line 378, bytecode pc 389
(xs.Views.Table.Cell.ReplaceHULaoBattleGeneralCell.create = function() {
    var cell;
    // source line 379, bytecode pc 33
    (cell = new xs.Views.Table.Cell.ReplaceHULaoBattleGeneralCell());
    if ((cell && cell.init())) {
        // source line 381, bytecode pc 65
        return cell;
    }
    // source line 383, bytecode pc 88
    xs.warn("xs.Views.Table.Cell.ReplaceHULaoBattleGeneralCell create error!");
    // source line 384, bytecode pc 90
    return null;
});
// source line 593, bytecode pc 548
(xs.Views.Table.Cell.ReplaceGeneralSkillCell = xs.Views.Table.Cell.BaseCmnStyleCCell.extend({
    init: function() {
    if (!this._super()) {
        // source line 392, bytecode pc 19
        return false;
    }
    // source line 394, bytecode pc 27
    (this.m_onGeneralData = null);
    // source line 395, bytecode pc 36
    (this.m_spGuideTag = -1);
    // source line 396, bytecode pc 74
    this.m_btn.setOnClickCallBack(this.btnCallback.bind(this));
    // source line 397, bytecode pc 94
    this.m_btn.setEventOnDisable(true);
    // source line 399, bytecode pc 96
    return true;
},
    formatCell: function() {
    // source line 402, bytecode pc 12
    this._super();
    // source line 404, bytecode pc 32
    this.m_icon.setVisible(true);
    // source line 405, bytecode pc 52
    this.m_gradeIcon.setVisible(true);
    // source line 406, bytecode pc 72
    this.m_nameLab.setVisible(true);
    // source line 407, bytecode pc 92
    this.m_fightBg.setVisible(false);
    // source line 408, bytecode pc 112
    this.m_fightIcon.setVisible(false);
    // source line 409, bytecode pc 132
    this.m_fightLab.setVisible(false);
    // source line 410, bytecode pc 152
    this.m_atkLab.setVisible(true);
    // source line 412, bytecode pc 172
    this.m_btn.setVisible(true);
    // source line 413, bytecode pc 192
    this.m_alterLab.setVisible(true);
    // source line 414, bytecode pc 212
    this.m_atkIcon.setVisible(true);
    // source line 415, bytecode pc 232
    this.m_nameSmalLab.setVisible(true);
    // source line 416, bytecode pc 252
    this.m_nameSmalTypeIcon.setVisible(true);
},
    setOnGeneralData: function(data) {
    // source line 420, bytecode pc 9
    (this.m_onGeneralData = data);
    // source line 421, bytecode pc 22
    this.updateCell();
},
    updateCell: function() {
    var icon, btn, isFateOn, teamGenerals, i, general, gradeIcon, equLab, str, skillTypeIcon, skillData, skillName, newNameSmalTypeIcon;
    // source line 424, bytecode pc 12
    this._super();
    if (this.m_cellData) {
        if (this.m_icon) {
            // source line 428, bytecode pc 54
            this.m_icon.setVisible(true);
        }
        if (this.m_iconBtn) {
            // source line 431, bytecode pc 85
            this.m_iconBtn.setVisible(true);
        }
        // source line 433, bytecode pc 105
        this.m_gradeIcon.setVisible(true);
        // source line 434, bytecode pc 125
        this.m_nameLab.setVisible(true);
        // source line 435, bytecode pc 145
        this.m_fightBg.setVisible(false);
        // source line 436, bytecode pc 165
        this.m_fightIcon.setVisible(false);
        // source line 437, bytecode pc 185
        this.m_fightLab.setVisible(false);
        // source line 438, bytecode pc 205
        this.m_atkLab.setVisible(true);
        // source line 440, bytecode pc 225
        this.m_btn.setVisible(true);
        // source line 441, bytecode pc 245
        this.m_bg.setVisible(true);
        // source line 442, bytecode pc 265
        this.m_alterLab.setVisible(false);
        // source line 443, bytecode pc 285
        this.m_alterBg.setVisible(false);
        // source line 444, bytecode pc 305
        this.m_atkIcon.setVisible(true);
        // source line 445, bytecode pc 325
        this.m_nameSmalLab.setVisible(true);
        // source line 446, bytecode pc 345
        this.m_nameSmalTypeIcon.setVisible(true);
        // source line 448, bytecode pc 366
        (icon = this.m_cellData.createIcon_GradeAndLv());
        // source line 449, bytecode pc 388
        icon.reloadData(this.m_cellData);
        // source line 451, bytecode pc 422
        (btn = xs.Views.Btn.createInvisibleWithChild(icon));
        if (this.m_icon) {
            // source line 453, bytecode pc 466
            btn.setPosition(this.m_icon.getPosition());
        }
        if (this.m_iconBtn) {
            // source line 456, bytecode pc 510
            btn.setPosition(this.m_iconBtn.getPosition());
        }
        // source line 458, bytecode pc 548
        xs.Utils.Node.attachNodes(this.m_ccbNode, btn);
        // source line 459, bytecode pc 582
        xs.Utils.Node.safeRemoveChild(this.m_iconBtn);
        // source line 460, bytecode pc 592
        (this.m_iconBtn = btn);
        // source line 461, bytecode pc 630
        this.m_iconBtn.setOnClickCallBack(this.iconBtnCallback.bind(this));
        // source line 462, bytecode pc 650
        this.m_iconBtn.setSwallowTouch(false);
        // source line 463, bytecode pc 670
        this.m_iconBtn.setZoomOnTouchDown(false);
        // source line 465, bytecode pc 704
        xs.Utils.Node.safeRemoveChild(this.m_icon);
        // source line 466, bytecode pc 712
        (this.m_icon = null);
        // source line 469, bytecode pc 717
        (isFateOn = false);
        // source line 470, bytecode pc 768
        (teamGenerals = xs.Profile.GameData.Mgr.getInstance().Team.getGeneralsInTeam());
        // source line 471, bytecode pc 773
        (i = 0);
        while ((i < teamGenerals.length)) {
            // source line 472, bytecode pc 790
            (general = teamGenerals[i]);
            // source line 473, bytecode pc 826
            (isFateOn = general.isFateConnectWithGeneralId(this.m_cellData.getId()));
            if (isFateOn) {
                // source line 475, bytecode pc 853
                icon.setFateOn(isFateOn);
                break;
            }
            // source line 471, bytecode pc 871
            (i = (+i + 1));
        }
        // source line 480, bytecode pc 910
        (gradeIcon = this.m_cellData.createGradeSmallIcon());
        // source line 481, bytecode pc 943
        gradeIcon.setPosition(this.m_gradeIcon.getPosition());
        // source line 482, bytecode pc 981
        xs.Utils.Node.attachNodes(this.m_ccbNode, gradeIcon);
        // source line 483, bytecode pc 1015
        xs.Utils.Node.safeRemoveChild(this.m_gradeIcon);
        // source line 484, bytecode pc 1025
        (this.m_gradeIcon = gradeIcon);
        // source line 487, bytecode pc 1030
        (general = null);
        if (this.m_cellData.isLieutenant()) {
            // source line 490, bytecode pc 1121
            (general = xs.Profile.GameData.Mgr.getInstance().Generals.getByPkId(this.m_cellData.getMajorPkId()));
            // source line 491, bytecode pc 1148
            xs.assert(general, "Assistant major general missing!");
        }
        // source line 493, bytecode pc 1169
        (equLab = this.m_nameLab.getNext());
        if (!equLab) {
            // source line 495, bytecode pc 1214
            (equLab = xs.Factorys.Label.createByStyleId("LS_yishangzhen"));
            // source line 496, bytecode pc 1236
            this.m_nameLab.setNext(equLab);
        }
        // source line 498, bytecode pc 1245
        (str = "");
        if (general) {
            // source line 501, bytecode pc 1324
            (str = xs.Tools.String.createString("str_ReplaceDialog_equAt").convWithArgs([ general.getNameString() ]));
        } else {
            if (xs.Profile.GameData.Mgr.getInstance().Buddy.isInBuddy(this.m_cellData.getPkId())) {
                // source line 506, bytecode pc 1435
                (str = xs.Tools.String.createString("str_ReplaceDialog_buddy"));
            }
        }
        // source line 509, bytecode pc 1454
        equLab.setString(str);
        // source line 510, bytecode pc 1472
        this.m_nameLab.refreshLayout();
        // source line 512, bytecode pc 1508
        this.m_nameLab.setString(this.m_cellData.getNameString());
        // source line 517, bytecode pc 1544
        this.m_atkLab.setString(this.m_cellData.getNaturalSkillTypeToString());
        // source line 519, bytecode pc 1565
        (skillTypeIcon = this.m_cellData.createNaturalSkillTypeIcon());
        // source line 520, bytecode pc 1598
        skillTypeIcon.setPosition(this.m_atkIcon.getPosition());
        // source line 521, bytecode pc 1636
        xs.Utils.Node.attachNodes(this.m_ccbNode, skillTypeIcon);
        // source line 522, bytecode pc 1670
        xs.Utils.Node.safeRemoveChild(this.m_atkIcon);
        // source line 523, bytecode pc 1680
        (this.m_atkIcon = skillTypeIcon);
        // source line 526, bytecode pc 1738
        (skillData = xs.Profile.GameData.Mgr.getInstance().Generals.getNaturalSkill(this.m_cellData));
        // source line 527, bytecode pc 1756
        (skillName = skillData.getNameString());
        // source line 528, bytecode pc 1790
        this.m_nameSmalLab.setString((("【" + skillName) + "】"));
        // source line 530, bytecode pc 1808
        (newNameSmalTypeIcon = skillData.createSkillMajorPropertyIcon());
        if (newNameSmalTypeIcon) {
            // source line 532, bytecode pc 1854
            xs.Utils.Node.attachNodes(this.m_ccbNode, newNameSmalTypeIcon);
            // source line 533, bytecode pc 1888
            xs.Utils.Node.safeRemoveChild(this.m_nameSmalTypeIcon);
            // source line 534, bytecode pc 1898
            (this.m_nameSmalTypeIcon = newNameSmalTypeIcon);
            // source line 537, bytecode pc 1998
            this.m_nameSmalTypeIcon.setPosition(cc.p(((this.m_nameSmalLab.getPositionX() + (this.m_nameSmalLab.getContentSize().width / 2)) + 10), this.m_nameSmalLab.getPositionY()));
        } else {
            // source line 542, bytecode pc 2023
            this.m_nameSmalTypeIcon.setVisible(false);
        }
    } else {
        // source line 545, bytecode pc 2052
        this.m_nameLab.setString("");
        // source line 546, bytecode pc 2076
        this.m_fightLab.setString("");
        // source line 547, bytecode pc 2100
        this.m_nameSmalLab.setString("");
        if (this.m_icon) {
            // source line 550, bytecode pc 2131
            this.m_icon.setVisible(false);
        }
        if (this.m_iconBtn) {
            // source line 553, bytecode pc 2162
            this.m_iconBtn.setVisible(false);
        }
        // source line 555, bytecode pc 2182
        this.m_gradeIcon.setVisible(false);
        // source line 556, bytecode pc 2202
        this.m_nameLab.setVisible(false);
        // source line 557, bytecode pc 2222
        this.m_fightBg.setVisible(false);
        // source line 558, bytecode pc 2242
        this.m_fightIcon.setVisible(false);
        // source line 559, bytecode pc 2262
        this.m_fightLab.setVisible(false);
        // source line 560, bytecode pc 2282
        this.m_atkLab.setVisible(false);
        // source line 561, bytecode pc 2302
        this.m_propertyBg.setVisible(false);
        // source line 562, bytecode pc 2322
        this.m_btn.setVisible(false);
        // source line 563, bytecode pc 2342
        this.m_bg.setVisible(false);
        // source line 564, bytecode pc 2362
        this.m_alterLab.setVisible(true);
        // source line 565, bytecode pc 2382
        this.m_alterBg.setVisible(true);
        // source line 566, bytecode pc 2402
        this.m_atkIcon.setVisible(false);
        // source line 567, bytecode pc 2422
        this.m_nameSmalLab.setVisible(false);
        // source line 568, bytecode pc 2442
        this.m_nameSmalTypeIcon.setVisible(false);
    }
    if (!xs.Guide.GuideMgr.getIsOver()) {
        // source line 573, bytecode pc 2499
        this.m_btn.setGuideTag(this.m_spGuideTag);
    }
},
    btnCallback: function() {
    if (this.m_listener) {
        // source line 579, bytecode pc 35
        this.m_listener.ReplaceCardCell_btnCallback(this.m_cellData);
    }
},
    iconBtnCallback: function() {
    if (this.m_listener) {
        // source line 584, bytecode pc 35
        this.m_listener.ReplaceCardCell_iconBtnCallback(this.m_cellData);
    }
},
    setBtnString: function(str) {
    // source line 588, bytecode pc 21
    this.m_btn.setString(str);
},
    setBtnSpecialEnabled: function(enabled) {
    // source line 591, bytecode pc 22
    this.m_btn.setEnabled(!enabled);
},
    setSpGuideTag: function(tag) {
    // source line 594, bytecode pc 9
    (this.m_spGuideTag = tag);
    // source line 595, bytecode pc 22
    this.updateCell();
}
}));
// source line 600, bytecode pc 584
(xs.Views.Table.Cell.ReplaceGeneralSkillCell.create = function() {
    var cell;
    // source line 601, bytecode pc 33
    (cell = new xs.Views.Table.Cell.ReplaceGeneralSkillCell());
    if ((cell && cell.init())) {
        // source line 603, bytecode pc 65
        return cell;
    }
    // source line 605, bytecode pc 88
    xs.warn("xs.Views.Table.Cell.ReplaceGeneralCell create error!");
    // source line 606, bytecode pc 90
    return null;
});
// source line 778, bytecode pc 743
(xs.Views.Table.Cell.ReplaceEquipmentCell = xs.Views.Table.Cell.BaseCmnStyleCCell.extend({
    init: function() {
    if (!this._super()) {
        // source line 615, bytecode pc 19
        return false;
    }
    // source line 617, bytecode pc 27
    (this.m_onGeneralData = null);
    // source line 618, bytecode pc 36
    (this.m_spGuideTag = -1);
    // source line 619, bytecode pc 74
    this.m_btn.setOnClickCallBack(this.btnCallback.bind(this));
    // source line 620, bytecode pc 94
    this.m_btn.setEventOnDisable(true);
    // source line 622, bytecode pc 96
    return true;
},
    formatCell: function() {
    // source line 625, bytecode pc 12
    this._super();
    // source line 627, bytecode pc 32
    this.m_icon.setVisible(true);
    // source line 628, bytecode pc 52
    this.m_gradeIcon.setVisible(true);
    // source line 629, bytecode pc 72
    this.m_nameLab.setVisible(true);
    // source line 630, bytecode pc 92
    this.m_fightBg.setVisible(true);
    // source line 631, bytecode pc 112
    this.m_fightIcon.setVisible(true);
    // source line 632, bytecode pc 132
    this.m_fightLab.setVisible(true);
    // source line 634, bytecode pc 152
    this.m_propertyIcon.setVisible(true);
    // source line 635, bytecode pc 172
    this.m_propertyLab.setVisible(true);
    // source line 636, bytecode pc 192
    this.m_btn.setVisible(true);
    // source line 637, bytecode pc 212
    this.m_alterLab.setVisible(true);
},
    setOnGeneralData: function(data) {
    // source line 641, bytecode pc 9
    (this.m_onGeneralData = data);
    // source line 642, bytecode pc 22
    this.updateCell();
},
    updateCell: function() {
    var icon, btn, isFateOn, gradeIcon, propertyIcon, general, equLab, str;
    // source line 645, bytecode pc 12
    this._super();
    if (this.m_cellData) {
        if (this.m_icon) {
            // source line 649, bytecode pc 54
            this.m_icon.setVisible(true);
        }
        if (this.m_iconBtn) {
            // source line 652, bytecode pc 85
            this.m_iconBtn.setVisible(true);
        }
        // source line 654, bytecode pc 105
        this.m_gradeIcon.setVisible(true);
        // source line 655, bytecode pc 125
        this.m_nameLab.setVisible(true);
        // source line 656, bytecode pc 145
        this.m_fightBg.setVisible(true);
        // source line 657, bytecode pc 165
        this.m_fightIcon.setVisible(true);
        // source line 658, bytecode pc 185
        this.m_fightLab.setVisible(true);
        // source line 659, bytecode pc 205
        this.m_propertyBg.setVisible(true);
        // source line 660, bytecode pc 225
        this.m_propertyIcon.setVisible(true);
        // source line 661, bytecode pc 245
        this.m_propertyLab.setVisible(true);
        // source line 662, bytecode pc 265
        this.m_btn.setVisible(true);
        // source line 663, bytecode pc 285
        this.m_bg.setVisible(true);
        // source line 664, bytecode pc 305
        this.m_alterLab.setVisible(false);
        // source line 665, bytecode pc 325
        this.m_alterBg.setVisible(false);
        // source line 668, bytecode pc 346
        (icon = this.m_cellData.createIcon_GradeAndLvBoreGem());
        // source line 669, bytecode pc 368
        icon.reloadData(this.m_cellData);
        // source line 670, bytecode pc 402
        (btn = xs.Views.Btn.createInvisibleWithChild(icon));
        if (this.m_icon) {
            // source line 672, bytecode pc 446
            btn.setPosition(this.m_icon.getPosition());
        }
        if (this.m_iconBtn) {
            // source line 675, bytecode pc 490
            btn.setPosition(this.m_iconBtn.getPosition());
        }
        // source line 677, bytecode pc 528
        xs.Utils.Node.attachNodes(this.m_ccbNode, btn);
        // source line 678, bytecode pc 562
        xs.Utils.Node.safeRemoveChild(this.m_iconBtn);
        // source line 679, bytecode pc 572
        (this.m_iconBtn = btn);
        // source line 680, bytecode pc 610
        this.m_iconBtn.setOnClickCallBack(this.iconBtnCallback.bind(this));
        // source line 681, bytecode pc 630
        this.m_iconBtn.setSwallowTouch(false);
        // source line 682, bytecode pc 650
        this.m_iconBtn.setZoomOnTouchDown(false);
        // source line 684, bytecode pc 684
        xs.Utils.Node.safeRemoveChild(this.m_icon);
        // source line 685, bytecode pc 692
        (this.m_icon = null);
        // source line 688, bytecode pc 697
        (isFateOn = false);
        if (this.m_onGeneralData) {
            // source line 690, bytecode pc 747
            (isFateOn = this.m_onGeneralData.isFateConnectWithEquipmentId(this.m_cellData.getId()));
        }
        // source line 692, bytecode pc 766
        icon.setFateOn(isFateOn);
        // source line 695, bytecode pc 787
        (gradeIcon = this.m_cellData.createGradeSmallIcon());
        // source line 696, bytecode pc 820
        gradeIcon.setPosition(this.m_gradeIcon.getPosition());
        // source line 697, bytecode pc 858
        xs.Utils.Node.attachNodes(this.m_ccbNode, gradeIcon);
        // source line 698, bytecode pc 892
        xs.Utils.Node.safeRemoveChild(this.m_gradeIcon);
        // source line 699, bytecode pc 902
        (this.m_gradeIcon = gradeIcon);
        // source line 701, bytecode pc 950
        (propertyIcon = xs.Tools.UI.createEffectTypeSmallIcon(this.m_cellData.getEffectType()));
        // source line 702, bytecode pc 983
        propertyIcon.setPosition(this.m_propertyIcon.getPosition());
        // source line 703, bytecode pc 1021
        xs.Utils.Node.attachNodes(this.m_ccbNode, propertyIcon);
        // source line 704, bytecode pc 1055
        xs.Utils.Node.safeRemoveChild(this.m_propertyIcon);
        // source line 705, bytecode pc 1065
        (this.m_propertyIcon = propertyIcon);
        // source line 709, bytecode pc 1101
        this.m_nameLab.setString(this.m_cellData.getNameString());
        // source line 713, bytecode pc 1159
        (general = xs.Profile.GameData.Mgr.getInstance().Equipments.getGeneral(this.m_cellData));
        // source line 714, bytecode pc 1180
        (equLab = this.m_nameLab.getNext());
        if (!equLab) {
            // source line 716, bytecode pc 1225
            (equLab = xs.Factorys.Label.createByStyleId("LS_yishangzhen"));
            // source line 717, bytecode pc 1247
            this.m_nameLab.setNext(equLab);
        }
        if (general) {
            // source line 720, bytecode pc 1326
            (str = xs.Tools.String.createString("str_ReplaceDialog_equAt").convWithArgs([ general.getNameString() ]));
            // source line 721, bytecode pc 1345
            equLab.setString(str);
        } else {
            // source line 723, bytecode pc 1371
            equLab.setString("");
        }
        // source line 725, bytecode pc 1389
        this.m_nameLab.refreshLayout();
        // source line 728, bytecode pc 1458
        this.m_fightLab.setString(xs.Utils.floorSafe(this.m_cellData.getAttrNaked(xs.Constant_AttrType_FightPoint)));
        // source line 730, bytecode pc 1516
        this.m_propertyLab.setString(xs.Utils.floorSafe(this.m_cellData.getEffectValue()));
    } else {
        // source line 733, bytecode pc 1545
        this.m_nameLab.setString("");
        // source line 734, bytecode pc 1569
        this.m_fightLab.setString("");
        // source line 735, bytecode pc 1593
        this.m_propertyLab.setString("");
        if (this.m_icon) {
            // source line 738, bytecode pc 1624
            this.m_icon.setVisible(false);
        }
        if (this.m_iconBtn) {
            // source line 741, bytecode pc 1655
            this.m_iconBtn.setVisible(false);
        }
        // source line 743, bytecode pc 1675
        this.m_gradeIcon.setVisible(false);
        // source line 744, bytecode pc 1695
        this.m_nameLab.setVisible(false);
        // source line 745, bytecode pc 1715
        this.m_fightBg.setVisible(false);
        // source line 746, bytecode pc 1735
        this.m_fightIcon.setVisible(false);
        // source line 747, bytecode pc 1755
        this.m_fightLab.setVisible(false);
        // source line 748, bytecode pc 1775
        this.m_propertyBg.setVisible(false);
        // source line 749, bytecode pc 1795
        this.m_propertyIcon.setVisible(false);
        // source line 750, bytecode pc 1815
        this.m_propertyLab.setVisible(false);
        // source line 751, bytecode pc 1835
        this.m_btn.setVisible(false);
        // source line 752, bytecode pc 1855
        this.m_bg.setVisible(false);
        // source line 753, bytecode pc 1875
        this.m_alterLab.setVisible(true);
        // source line 754, bytecode pc 1895
        this.m_alterBg.setVisible(true);
    }
    if (!xs.Guide.GuideMgr.getIsOver()) {
        // source line 758, bytecode pc 1952
        this.m_btn.setGuideTag(this.m_spGuideTag);
    }
},
    btnCallback: function() {
    if (this.m_listener) {
        // source line 764, bytecode pc 35
        this.m_listener.ReplaceCardCell_btnCallback(this.m_cellData);
    }
},
    iconBtnCallback: function() {
    if (this.m_listener) {
        // source line 769, bytecode pc 35
        this.m_listener.ReplaceCardCell_iconBtnCallback(this.m_cellData);
    }
},
    setBtnString: function(str) {
    // source line 773, bytecode pc 21
    this.m_btn.setString(str);
},
    setBtnSpecialEnabled: function(enabled) {
    // source line 776, bytecode pc 22
    this.m_btn.setEnabled(!enabled);
},
    setSpGuideTag: function(tag) {
    // source line 779, bytecode pc 9
    (this.m_spGuideTag = tag);
    // source line 780, bytecode pc 22
    this.updateCell();
}
}));
// source line 785, bytecode pc 779
(xs.Views.Table.Cell.ReplaceEquipmentCell.create = function() {
    var cell;
    // source line 786, bytecode pc 33
    (cell = new xs.Views.Table.Cell.ReplaceEquipmentCell());
    if ((cell && cell.init())) {
        // source line 788, bytecode pc 65
        return cell;
    }
    // source line 790, bytecode pc 88
    xs.warn("xs.Views.Table.Cell.ReplaceEquipmentCell create error!");
    // source line 791, bytecode pc 90
    return null;
});
// source line 993, bytecode pc 938
(xs.Views.Table.Cell.ReplaceSkillCell = xs.Views.Table.Cell.BaseCmnStyleCCell.extend({
    init: function() {
    if (!this._super()) {
        // source line 799, bytecode pc 19
        return false;
    }
    // source line 802, bytecode pc 27
    (this.m_onGeneralData = null);
    // source line 803, bytecode pc 36
    (this.m_spGuideTag = -1);
    // source line 804, bytecode pc 74
    this.m_btn.addOnClickCallBack(this.btnCallback.bind(this));
    // source line 805, bytecode pc 94
    this.m_btn.setEventOnDisable(true);
    // source line 807, bytecode pc 96
    return true;
},
    formatCell: function() {
    // source line 810, bytecode pc 12
    this._super();
    // source line 812, bytecode pc 32
    this.m_icon.setVisible(true);
    // source line 813, bytecode pc 52
    this.m_gradeIcon.setVisible(true);
    // source line 814, bytecode pc 72
    this.m_nameLab.setVisible(true);
    // source line 815, bytecode pc 92
    this.m_fightBg.setVisible(true);
    // source line 816, bytecode pc 112
    this.m_fightIcon.setVisible(true);
    // source line 817, bytecode pc 132
    this.m_fightLab.setVisible(true);
    // source line 818, bytecode pc 152
    this.m_atkLab.setVisible(true);
    // source line 820, bytecode pc 172
    this.m_btn.setVisible(true);
    // source line 821, bytecode pc 192
    this.m_alterLab.setVisible(true);
    // source line 822, bytecode pc 212
    this.m_atkIcon.setVisible(true);
    // source line 823, bytecode pc 232
    this.m_nameSmalLab.setVisible(false);
    // source line 824, bytecode pc 252
    this.m_nameSmalTypeIcon.setVisible(true);
},
    setOnGeneralData: function(data) {
    // source line 828, bytecode pc 9
    (this.m_onGeneralData = data);
    // source line 829, bytecode pc 22
    this.updateCell();
},
    updateCell: function() {
    var icon, btn, isFateOn, gradeIcon, general, skillTypeIcon, newNameSmalTypeIcon, equLab, str;
    // source line 832, bytecode pc 12
    this._super();
    if (this.m_cellData) {
        if (this.m_icon) {
            // source line 836, bytecode pc 54
            this.m_icon.setVisible(true);
        }
        if (this.m_iconBtn) {
            // source line 839, bytecode pc 85
            this.m_iconBtn.setVisible(true);
        }
        // source line 841, bytecode pc 105
        this.m_gradeIcon.setVisible(true);
        // source line 842, bytecode pc 125
        this.m_nameLab.setVisible(true);
        // source line 843, bytecode pc 145
        this.m_fightBg.setVisible(true);
        // source line 844, bytecode pc 165
        this.m_fightIcon.setVisible(true);
        // source line 845, bytecode pc 185
        this.m_fightLab.setVisible(true);
        // source line 846, bytecode pc 205
        this.m_atkLab.setVisible(true);
        // source line 848, bytecode pc 225
        this.m_btn.setVisible(true);
        // source line 849, bytecode pc 245
        this.m_bg.setVisible(true);
        // source line 850, bytecode pc 265
        this.m_alterLab.setVisible(false);
        // source line 851, bytecode pc 285
        this.m_alterBg.setVisible(false);
        // source line 852, bytecode pc 305
        this.m_atkIcon.setVisible(true);
        // source line 853, bytecode pc 325
        this.m_nameSmalLab.setVisible(false);
        // source line 854, bytecode pc 345
        this.m_nameSmalTypeIcon.setVisible(true);
        // source line 856, bytecode pc 368
        xs.log("createIcon");
        // source line 857, bytecode pc 389
        (icon = this.m_cellData.createIcon_Select());
        // source line 858, bytecode pc 411
        icon.reloadData(this.m_cellData);
        // source line 859, bytecode pc 445
        (btn = xs.Views.Btn.createInvisibleWithChild(icon));
        if (this.m_icon) {
            // source line 861, bytecode pc 489
            btn.setPosition(this.m_icon.getPosition());
        }
        if (this.m_iconBtn) {
            // source line 864, bytecode pc 533
            btn.setPosition(this.m_iconBtn.getPosition());
        }
        // source line 866, bytecode pc 571
        xs.Utils.Node.attachNodes(this.m_ccbNode, btn);
        // source line 867, bytecode pc 605
        xs.Utils.Node.safeRemoveChild(this.m_iconBtn);
        // source line 868, bytecode pc 615
        (this.m_iconBtn = btn);
        // source line 869, bytecode pc 653
        this.m_iconBtn.setOnClickCallBack(this.iconBtnCallback.bind(this));
        // source line 870, bytecode pc 673
        this.m_iconBtn.setSwallowTouch(false);
        // source line 871, bytecode pc 693
        this.m_iconBtn.setZoomOnTouchDown(false);
        // source line 873, bytecode pc 727
        xs.Utils.Node.safeRemoveChild(this.m_icon);
        // source line 874, bytecode pc 735
        (this.m_icon = null);
        // source line 877, bytecode pc 740
        (isFateOn = false);
        if (this.m_onGeneralData) {
            // source line 879, bytecode pc 790
            (isFateOn = this.m_onGeneralData.isFateConnectWithSkillId(this.m_cellData.getId()));
        }
        // source line 881, bytecode pc 809
        icon.setFateOn(isFateOn);
        // source line 884, bytecode pc 830
        (gradeIcon = this.m_cellData.createGradeSmallIcon());
        // source line 885, bytecode pc 863
        gradeIcon.setPosition(this.m_gradeIcon.getPosition());
        // source line 886, bytecode pc 901
        xs.Utils.Node.attachNodes(this.m_ccbNode, gradeIcon);
        // source line 887, bytecode pc 935
        xs.Utils.Node.safeRemoveChild(this.m_gradeIcon);
        // source line 888, bytecode pc 945
        (this.m_gradeIcon = gradeIcon);
        // source line 891, bytecode pc 981
        this.m_nameLab.setString(this.m_cellData.getNameString());
        // source line 893, bytecode pc 1039
        (general = xs.Profile.GameData.Mgr.getInstance().Skills.getGeneral(this.m_cellData));
        // source line 895, bytecode pc 1108
        this.m_fightLab.setString(xs.Utils.floorSafe(this.m_cellData.getAttrNaked(xs.Constant_AttrType_FightPoint)));
        // source line 898, bytecode pc 1144
        this.m_atkLab.setString(this.m_cellData.getSkillTypeToString());
        // source line 901, bytecode pc 1165
        (skillTypeIcon = this.m_cellData.createSkillTypeIcon());
        // source line 902, bytecode pc 1198
        skillTypeIcon.setPosition(this.m_atkIcon.getPosition());
        // source line 903, bytecode pc 1236
        xs.Utils.Node.attachNodes(this.m_ccbNode, skillTypeIcon);
        // source line 904, bytecode pc 1270
        xs.Utils.Node.safeRemoveChild(this.m_atkIcon);
        // source line 905, bytecode pc 1280
        (this.m_atkIcon = skillTypeIcon);
        // source line 909, bytecode pc 1301
        (newNameSmalTypeIcon = this.m_cellData.createSkillMajorPropertyIcon());
        if (newNameSmalTypeIcon) {
            // source line 911, bytecode pc 1347
            xs.Utils.Node.attachNodes(this.m_ccbNode, newNameSmalTypeIcon);
            // source line 912, bytecode pc 1381
            xs.Utils.Node.safeRemoveChild(this.m_nameSmalTypeIcon);
            // source line 913, bytecode pc 1391
            (this.m_nameSmalTypeIcon = newNameSmalTypeIcon);
            // source line 918, bytecode pc 1508
            this.m_nameSmalTypeIcon.setPosition(cc.p(((this.m_nameLab.getPositionX() + this.m_nameLab.getContentSize().width) + (newNameSmalTypeIcon.getContentSize().width / 2)), this.m_nameLab.getPositionY()));
        } else {
            // source line 922, bytecode pc 1533
            this.m_nameSmalTypeIcon.setVisible(false);
        }
        // source line 926, bytecode pc 1554
        (equLab = this.m_nameLab.getNext());
        if (!equLab) {
            // source line 928, bytecode pc 1599
            (equLab = xs.Factorys.Label.createByStyleId("LS_yishangzhen"));
            // source line 929, bytecode pc 1621
            this.m_nameLab.setNext(equLab);
        }
        if (general) {
            // source line 932, bytecode pc 1700
            (str = xs.Tools.String.createString("str_ReplaceDialog_equAt").convWithArgs([ general.getNameString() ]));
            if (newNameSmalTypeIcon) {
                // source line 934, bytecode pc 1721
                (str = ("   " + str));
            }
            // source line 936, bytecode pc 1740
            equLab.setString(str);
        } else {
            // source line 938, bytecode pc 1766
            equLab.setString("");
        }
        // source line 940, bytecode pc 1784
        this.m_nameLab.refreshLayout();
        // source line 942, bytecode pc 1808
        this.m_nameSmalLab.setString("");
    } else {
        // source line 945, bytecode pc 1837
        this.m_nameLab.setString("");
        // source line 946, bytecode pc 1861
        this.m_fightLab.setString("");
        // source line 947, bytecode pc 1885
        this.m_atkLab.setString("");
        // source line 948, bytecode pc 1909
        this.m_nameSmalLab.setString("");
        if (this.m_icon) {
            // source line 951, bytecode pc 1940
            this.m_icon.setVisible(false);
        }
        if (this.m_iconBtn) {
            // source line 954, bytecode pc 1971
            this.m_iconBtn.setVisible(false);
        }
        // source line 956, bytecode pc 1991
        this.m_gradeIcon.setVisible(false);
        // source line 957, bytecode pc 2011
        this.m_nameLab.setVisible(false);
        // source line 958, bytecode pc 2031
        this.m_fightBg.setVisible(false);
        // source line 959, bytecode pc 2051
        this.m_fightIcon.setVisible(false);
        // source line 960, bytecode pc 2071
        this.m_fightLab.setVisible(false);
        // source line 961, bytecode pc 2091
        this.m_atkLab.setVisible(false);
        // source line 962, bytecode pc 2111
        this.m_propertyBg.setVisible(false);
        // source line 963, bytecode pc 2131
        this.m_btn.setVisible(false);
        // source line 964, bytecode pc 2151
        this.m_bg.setVisible(false);
        // source line 965, bytecode pc 2171
        this.m_alterLab.setVisible(true);
        // source line 966, bytecode pc 2191
        this.m_alterBg.setVisible(true);
        // source line 967, bytecode pc 2211
        this.m_atkIcon.setVisible(false);
        // source line 968, bytecode pc 2231
        this.m_nameSmalLab.setVisible(false);
        // source line 969, bytecode pc 2251
        this.m_nameSmalTypeIcon.setVisible(false);
    }
    if (!xs.Guide.GuideMgr.getIsOver()) {
        // source line 973, bytecode pc 2308
        this.m_btn.setGuideTag(this.m_spGuideTag);
    }
},
    btnCallback: function() {
    if (this.m_listener) {
        // source line 979, bytecode pc 35
        this.m_listener.ReplaceCardCell_btnCallback(this.m_cellData);
    }
},
    iconBtnCallback: function() {
    if (this.m_listener) {
        // source line 984, bytecode pc 35
        this.m_listener.ReplaceCardCell_iconBtnCallback(this.m_cellData);
    }
},
    setBtnString: function(str) {
    // source line 988, bytecode pc 21
    this.m_btn.setString(str);
},
    setBtnSpecialEnabled: function(enabled) {
    // source line 991, bytecode pc 22
    this.m_btn.setEnabled(!enabled);
},
    setSpGuideTag: function(tag) {
    // source line 994, bytecode pc 9
    (this.m_spGuideTag = tag);
    // source line 995, bytecode pc 22
    this.updateCell();
}
}));
// source line 1000, bytecode pc 974
(xs.Views.Table.Cell.ReplaceSkillCell.create = function() {
    var cell;
    // source line 1001, bytecode pc 33
    (cell = new xs.Views.Table.Cell.ReplaceSkillCell());
    if ((cell && cell.init())) {
        // source line 1003, bytecode pc 65
        return cell;
    }
    // source line 1005, bytecode pc 88
    xs.warn("xs.Views.Table.Cell.ReplaceEquipmentCell create error!");
    // source line 1006, bytecode pc 90
    return null;
});
// source line 1168, bytecode pc 1133
(xs.Views.Table.Cell.ReplaceBattlePlayerCell = xs.Views.Table.Cell.BaseCmnStyleCCell.extend({
    init: function() {
    if (!this._super()) {
        // source line 1014, bytecode pc 19
        return false;
    }
    // source line 1016, bytecode pc 27
    (this.m_onGeneralData = null);
    // source line 1017, bytecode pc 36
    (this.m_spGuideTag = -1);
    // source line 1018, bytecode pc 74
    this.m_btn.setOnClickCallBack(this.btnCallback.bind(this));
    // source line 1019, bytecode pc 94
    this.m_btn.setEventOnDisable(true);
    // source line 1021, bytecode pc 96
    return true;
},
    formatCell: function() {
    // source line 1024, bytecode pc 12
    this._super();
    // source line 1026, bytecode pc 32
    this.m_icon.setVisible(true);
    // source line 1027, bytecode pc 52
    this.m_gradeIcon.setVisible(true);
    // source line 1028, bytecode pc 72
    this.m_nameLab.setVisible(true);
    // source line 1029, bytecode pc 92
    this.m_fightBg.setVisible(true);
    // source line 1030, bytecode pc 112
    this.m_fightIcon.setVisible(true);
    // source line 1031, bytecode pc 132
    this.m_fightLab.setVisible(true);
    // source line 1032, bytecode pc 152
    this.m_atkLab.setVisible(true);
    // source line 1034, bytecode pc 172
    this.m_btn.setVisible(true);
    // source line 1035, bytecode pc 192
    this.m_alterLab.setVisible(true);
    // source line 1036, bytecode pc 212
    this.m_atkIcon.setVisible(false);
    // source line 1037, bytecode pc 232
    this.m_nameSmalLab.setVisible(false);
    // source line 1038, bytecode pc 252
    this.m_nameSmalTypeIcon.setVisible(false);
},
    setOnGeneralData: function(data) {
    // source line 1042, bytecode pc 9
    (this.m_onGeneralData = data);
    // source line 1043, bytecode pc 22
    this.updateCell();
},
    updateCell: function() {
    var icon, equLab, battleInfo, str;
    // source line 1046, bytecode pc 12
    this._super();
    if (this.m_cellData) {
        if (this.m_icon) {
            // source line 1050, bytecode pc 54
            this.m_icon.setVisible(true);
        }
        if (this.m_iconBtn) {
            // source line 1053, bytecode pc 85
            this.m_iconBtn.setVisible(true);
        }
        // source line 1055, bytecode pc 105
        this.m_gradeIcon.setVisible(false);
        // source line 1056, bytecode pc 125
        this.m_nameLab.setVisible(true);
        // source line 1057, bytecode pc 145
        this.m_fightBg.setVisible(true);
        // source line 1058, bytecode pc 165
        this.m_fightIcon.setVisible(true);
        // source line 1059, bytecode pc 185
        this.m_fightLab.setVisible(true);
        // source line 1060, bytecode pc 205
        this.m_atkLab.setVisible(true);
        // source line 1062, bytecode pc 225
        this.m_btn.setVisible(true);
        // source line 1063, bytecode pc 245
        this.m_bg.setVisible(true);
        // source line 1064, bytecode pc 265
        this.m_alterLab.setVisible(false);
        // source line 1065, bytecode pc 285
        this.m_alterBg.setVisible(false);
        // source line 1066, bytecode pc 305
        this.m_atkIcon.setVisible(false);
        // source line 1067, bytecode pc 325
        this.m_nameSmalLab.setVisible(false);
        // source line 1068, bytecode pc 345
        this.m_nameSmalTypeIcon.setVisible(false);
        // source line 1071, bytecode pc 366
        (icon = this.m_cellData.createHeadIcon());
        // source line 1072, bytecode pc 399
        icon.setPosition(this.m_icon.getPosition());
        // source line 1073, bytecode pc 437
        xs.Utils.Node.attachNodes(this.m_ccbNode, icon);
        // source line 1089, bytecode pc 471
        xs.Utils.Node.safeRemoveChild(this.m_icon);
        // source line 1090, bytecode pc 481
        (this.m_icon = icon);
        // source line 1106, bytecode pc 502
        (equLab = this.m_nameLab.getNext());
        if (!equLab) {
            // source line 1108, bytecode pc 547
            (equLab = xs.Factorys.Label.createByStyleId("LS_yishangzhen"));
            // source line 1109, bytecode pc 569
            this.m_nameLab.setNext(equLab);
        }
        // source line 1111, bytecode pc 649
        (battleInfo = xs.Profile.GameData.Mgr.getInstance().UnionWar.getUnionWar().getBattleInfoWithBattleId(this.m_cellData.getBattleId()));
        // source line 1112, bytecode pc 679
        (str = (("(" + battleInfo.getBattleTitle()) + ")"));
        // source line 1113, bytecode pc 698
        equLab.setString(str);
        // source line 1114, bytecode pc 716
        this.m_nameLab.refreshLayout();
        // source line 1115, bytecode pc 758
        this.m_nameLab.setString(("" + this.m_cellData.getPlayerName()));
        // source line 1116, bytecode pc 800
        this.m_fightLab.setString(("" + this.m_cellData.getFightPoint()));
        // source line 1118, bytecode pc 836
        this.m_nameLab.setPosition(this.m_gradeIcon.getPosition());
    } else {
        // source line 1121, bytecode pc 865
        this.m_nameLab.setString("");
        // source line 1122, bytecode pc 889
        this.m_fightLab.setString("");
        if (this.m_icon) {
            // source line 1125, bytecode pc 920
            this.m_icon.setVisible(false);
        }
        if (this.m_iconBtn) {
            // source line 1128, bytecode pc 951
            this.m_iconBtn.setVisible(false);
        }
        // source line 1130, bytecode pc 971
        this.m_gradeIcon.setVisible(false);
        // source line 1131, bytecode pc 991
        this.m_nameLab.setVisible(false);
        // source line 1132, bytecode pc 1011
        this.m_fightBg.setVisible(false);
        // source line 1133, bytecode pc 1031
        this.m_fightIcon.setVisible(false);
        // source line 1134, bytecode pc 1051
        this.m_fightLab.setVisible(false);
        // source line 1135, bytecode pc 1071
        this.m_atkLab.setVisible(false);
        // source line 1136, bytecode pc 1091
        this.m_propertyBg.setVisible(false);
        // source line 1137, bytecode pc 1111
        this.m_btn.setVisible(false);
        // source line 1138, bytecode pc 1131
        this.m_bg.setVisible(false);
        // source line 1139, bytecode pc 1151
        this.m_alterLab.setVisible(true);
        // source line 1140, bytecode pc 1171
        this.m_alterBg.setVisible(true);
        // source line 1141, bytecode pc 1191
        this.m_atkIcon.setVisible(false);
        // source line 1142, bytecode pc 1211
        this.m_nameSmalLab.setVisible(false);
        // source line 1143, bytecode pc 1231
        this.m_nameSmalTypeIcon.setVisible(false);
    }
    if (!xs.Guide.GuideMgr.getIsOver()) {
        // source line 1148, bytecode pc 1288
        this.m_btn.setGuideTag(this.m_spGuideTag);
    }
},
    btnCallback: function() {
    if (this.m_listener) {
        // source line 1154, bytecode pc 35
        this.m_listener.ReplaceCardCell_btnCallback(this.m_cellData);
    }
},
    iconBtnCallback: function() {
    if (this.m_listener) {
        // source line 1159, bytecode pc 35
        this.m_listener.ReplaceCardCell_iconBtnCallback(this.m_cellData);
    }
},
    setBtnString: function(str) {
    // source line 1163, bytecode pc 21
    this.m_btn.setString(str);
},
    setBtnSpecialEnabled: function(enabled) {
    // source line 1166, bytecode pc 22
    this.m_btn.setEnabled(!enabled);
},
    setSpGuideTag: function(tag) {
    // source line 1169, bytecode pc 9
    (this.m_spGuideTag = tag);
    // source line 1170, bytecode pc 22
    this.updateCell();
}
}));
// source line 1175, bytecode pc 1169
(xs.Views.Table.Cell.ReplaceBattlePlayerCell.create = function() {
    var cell;
    // source line 1176, bytecode pc 33
    (cell = new xs.Views.Table.Cell.ReplaceBattlePlayerCell());
    if ((cell && cell.init())) {
        // source line 1178, bytecode pc 65
        return cell;
    }
    // source line 1180, bytecode pc 88
    xs.warn("xs.Views.Table.Cell.ReplaceBattlePlayerCell create error!");
    // source line 1181, bytecode pc 90
    return null;
});
