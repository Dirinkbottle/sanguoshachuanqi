// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/HintModel.js:1
// source line 165, bytecode pc 120
(xs.Models.HintCampTeam = cc.Class.extend({
    name: "xs.Models.HintCampTeam",
    equipEnableModel: { equipEnable: false },
    init: function() {
    var posCount, generals_notAtTeam, teamGenerals, i, hintInfo, temp;
    // source line 22, bytecode pc 13
    (posCount = xs.Constant_Team_Max);
    // source line 24, bytecode pc 64
    (generals_notAtTeam = xs.Profile.GameData.Mgr.getInstance().Generals.getGeneralNotInTeamAndNotInLieutenant());
    // source line 26, bytecode pc 115
    (teamGenerals = xs.Profile.GameData.Mgr.getInstance().Team.getTeamGenerals());
    // source line 27, bytecode pc 136
    (this.hintInfos = new Array(posCount));
    // source line 29, bytecode pc 141
    (i = 0);
    while ((i < posCount)) {
        // source line 32, bytecode pc 181
        (hintInfo = { joinEnable: false, equipHintInfo: new Array(8) });
        // source line 34, bytecode pc 195
        (this.hintInfos[i] = hintInfo);
        // source line 29, bytecode pc 209
        (i = (+i + 1));
    }
    // source line 36, bytecode pc 228
    (i = 0);
    while ((i < posCount)) {
        if ((teamGenerals[i] && teamGenerals[i].general_pk_id)) {
            // source line 39, bytecode pc 282
            (temp = (teamGenerals[i].general_position - 1));
            // source line 40, bytecode pc 307
            this.update(teamGenerals[i], temp);
        } else {
            if (((generals_notAtTeam.length > 0) && (i < teamGenerals.length))) {
                // source line 44, bytecode pc 363
                (temp = (teamGenerals[i].general_position - 1));
                // source line 45, bytecode pc 380
                (this.hintInfos[temp].joinEnable = true);
            } else {
                // source line 47, bytecode pc 402
                (this.hintInfos[i].joinEnable = false);
            }
        }
        // source line 36, bytecode pc 416
        (i = (+i + 1));
    }
    // source line 52, bytecode pc 432
    return true;
},
    update: function(general, pos) {
    var equipedSkills, lieutenant_1, lieutenant_2, skillTypes_eliminated, i, naturalSkill, epHintInfo, level, lockLv_first, lockLv_second, Lieutenant, haveEquipEnabledLieutenant, skill, haveEquipeEnabledSkill, equipMent, equipMents_enabled;
    // source line 59, bytecode pc 59
    (equipedSkills = xs.Profile.GameData.Mgr.getInstance().Skills.getSkillByGeneralPkId(general.general_pk_id));
    // source line 62, bytecode pc 130
    (lieutenant_1 = xs.Profile.GameData.Mgr.getInstance().Generals.getLieutenantByPkIdAndPos(general.general_pk_id, xs.Constant_Lieutenant_Pos_First));
    // source line 63, bytecode pc 201
    (lieutenant_2 = xs.Profile.GameData.Mgr.getInstance().Generals.getLieutenantByPkIdAndPos(general.general_pk_id, xs.Constant_Lieutenant_Pos_Second));
    // source line 66, bytecode pc 215
    (skillTypes_eliminated = new Array());
    // source line 67, bytecode pc 220
    (i = 0);
    while ((i < equipedSkills.length)) {
        // source line 68, bytecode pc 260
        skillTypes_eliminated.push(equipedSkills[i].getSkillType());
        // source line 67, bytecode pc 274
        (i = (+i + 1));
    }
    if (lieutenant_1) {
        // source line 71, bytecode pc 356
        (naturalSkill = xs.Profile.GameData.Mgr.getInstance().Generals.getNaturalSkill(lieutenant_1));
        // source line 72, bytecode pc 386
        skillTypes_eliminated.push(naturalSkill.getSkillType());
    }
    if (lieutenant_2) {
        // source line 76, bytecode pc 449
        (naturalSkill = xs.Profile.GameData.Mgr.getInstance().Generals.getNaturalSkill(lieutenant_2));
        // source line 77, bytecode pc 479
        skillTypes_eliminated.push(naturalSkill.getSkillType());
    }
    // source line 80, bytecode pc 498
    (epHintInfo = this.hintInfos[pos].equipHintInfo);
    // source line 81, bytecode pc 503
    (i = 0);
    while ((i < epHintInfo.length)) {
        // source line 83, bytecode pc 513
        switch (i) {
            case 0:
            case 1:
            // source line 87, bytecode pc 619
            (level = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerLevel());
            // source line 88, bytecode pc 681
            (lockLv_first = xs.Profile.GameData.Mgr.getInstance().Team.getOpenLevelByLieutenantPos(xs.Constant_Lieutenant_Pos_First));
            // source line 89, bytecode pc 743
            (lockLv_second = xs.Profile.GameData.Mgr.getInstance().Team.getOpenLevelByLieutenantPos(xs.Constant_Lieutenant_Pos_Second));
            // source line 91, bytecode pc 748
            (Lieutenant = null);
            if ((i === 1)) {
                // source line 93, bytecode pc 829
                (Lieutenant = xs.Profile.GameData.Mgr.getInstance().Generals.getLieutenantByPkIdAndPos(general.general_pk_id, xs.Constant_Lieutenant_Pos_First));
            } else {
                // source line 95, bytecode pc 905
                (Lieutenant = xs.Profile.GameData.Mgr.getInstance().Generals.getLieutenantByPkIdAndPos(general.general_pk_id, xs.Constant_Lieutenant_Pos_Second));
            }
            // source line 98, bytecode pc 960
            (haveEquipEnabledLieutenant = xs.Profile.GameData.Mgr.getInstance().Generals.haveEquipEnabledLieutenant(skillTypes_eliminated));
            if ((!Lieutenant && haveEquipEnabledLieutenant)) {
                // source line 101, bytecode pc 998
                (epHintInfo[i] = { equipEnable: true });
                if ((((i === 0) && (level < lockLv_second)) || ((i === 1) && (level < lockLv_first)))) {
                    // source line 104, bytecode pc 1065
                    (epHintInfo[i] = { equipEnable: false });
                }
                break;
            }
            // source line 108, bytecode pc 1090
            (epHintInfo[i] = { equipEnable: false });
            break;
            case 2:
            // source line 114, bytecode pc 1166
            (skill = xs.Profile.GameData.Mgr.getInstance().Skills.getSkillByGeneralPkIdAndPos(general.general_pk_id, xs.Constant_Skill_Pos_Second));
            if (!skill) {
                // source line 116, bytecode pc 1230
                (haveEquipeEnabledSkill = xs.Profile.GameData.Mgr.getInstance().Skills.haveEquipEnabledSkill(skillTypes_eliminated));
                if (haveEquipeEnabledSkill) {
                    // source line 118, bytecode pc 1258
                    (epHintInfo[i] = { equipEnable: true });
                    break;
                }
            }
            // source line 122, bytecode pc 1283
            (epHintInfo[i] = { equipEnable: false });
            break;
            case 3:
            // source line 126, bytecode pc 1308
            (epHintInfo[i] = { equipEnable: false });
            break;
            case 4:
            case 5:
            case 6:
            case 7:
            // source line 133, bytecode pc 1323
            (pos = (8 - i));
            // source line 134, bytecode pc 1387
            (equipMent = xs.Profile.GameData.Mgr.getInstance().Equipments._getEquipmentGeneralPkIdAndPos(general.general_pk_id, pos));
            if (!equipMent) {
                // source line 136, bytecode pc 1451
                (equipMents_enabled = xs.Profile.GameData.Mgr.getInstance().Equipments.getEquipEnabledEps(pos));
                /* TODO_BYTECODE pc=1462 opcode=ifeq reason=conditional_target_outside_region */
                // source line 138, bytecode pc 1486
                (epHintInfo[i] = { equipEnable: true });
            } else {
                // source line 142, bytecode pc 1511
                (epHintInfo[i] = { equipEnable: false });
                break;
            }
            break;
            default:
            break;
        }
        // source line 81, bytecode pc 1530
        (i = (+i + 1));
    }
},
    _isJoinEnabled: function(posIdx) {
    // source line 153, bytecode pc 15
    return this.hintInfos[posIdx].joinEnable;
},
    _isEquipEnabled: function(generalPosIdx, equipIdx) {
    if ((this.hintInfos[generalPosIdx] && this.hintInfos[generalPosIdx].equipHintInfo[equipIdx])) {
        // source line 159, bytecode pc 64
        return this.hintInfos[generalPosIdx].equipHintInfo[equipIdx].equipEnable;
    }
    // source line 161, bytecode pc 66
    return false;
},
    _getHintCount: function() {
    var count, i, equipHintInfo, j;
    // source line 166, bytecode pc 4
    (count = 0);
    // source line 167, bytecode pc 9
    (i = 0);
    while ((i < this.hintInfos.length)) {
        if (this.hintInfos[i].joinEnable) {
            // source line 169, bytecode pc 49
            (count = (+count + 1));
        }
        // source line 172, bytecode pc 69
        (equipHintInfo = this.hintInfos[i].equipHintInfo);
        // source line 173, bytecode pc 74
        (j = 0);
        while ((j < equipHintInfo.length)) {
            if ((equipHintInfo[j] && equipHintInfo[j].equipEnable)) {
                // source line 175, bytecode pc 124
                (count = (+count + 1));
            }
            // source line 173, bytecode pc 139
            (j = (+j + 1));
        }
        // source line 167, bytecode pc 172
        (i = (+i + 1));
    }
    // source line 179, bytecode pc 198
    return count;
}
}));
// source line 183, bytecode pc 146
(xs.Models.HintCampTeam.create = function() {
    var ret;
    // source line 184, bytecode pc 23
    (ret = new xs.Models.HintCampTeam());
    if ((ret && ret.init())) {
        // source line 186, bytecode pc 55
        return ret;
    }
    // source line 188, bytecode pc 57
    return null;
});
// source line 232, bytecode pc 240
(xs.Models.HintCampGeneral = cc.Class.extend({
    name: "xs.Models.HintCampGeneral",
    init: function() {
    var souls, i, _general;
    // source line 198, bytecode pc 7
    (this.reincarnationHintCount = 0);
    // source line 199, bytecode pc 15
    (this.breachHintCount = 0);
    // source line 202, bytecode pc 66
    (souls = xs.Profile.GameData.Mgr.getInstance().GeneralSouls.getAll());
    // source line 203, bytecode pc 71
    (i = 0);
    while ((i < souls.length)) {
        // source line 205, bytecode pc 136
        (_general = xs.Profile.GameData.Mgr.getInstance().GeneralSouls.getReferenceGeneral(souls[i]));
        if (_general) {
            if ((souls[i].checkSoulNumEnough() && (((souls[i].getGrade() === xs.Constant_Grade_God) || (souls[i].getGrade() === xs.Constant_Grade_Demon)) && !_general.isBreachToMax()))) {
                // source line 212, bytecode pc 284
                (this.breachHintCount = (+this.breachHintCount + 1));
            }
        } else {
            if ((souls[i].getNum() >= souls[i].getReincarnateNum())) {
                // source line 217, bytecode pc 358
                (this.reincarnationHintCount = (+this.reincarnationHintCount + 1));
            }
        }
        // source line 203, bytecode pc 373
        (i = (+i + 1));
    }
    // source line 221, bytecode pc 394
    return true;
},
    _getHintCount: function() {
    // source line 225, bytecode pc 13
    return (this.reincarnationHintCount + this.breachHintCount);
},
    _getReincarnationHintCount: function() {
    // source line 229, bytecode pc 6
    return this.reincarnationHintCount;
},
    _getBreachHintCount: function() {
    // source line 233, bytecode pc 6
    return this.breachHintCount;
}
}));
// source line 238, bytecode pc 266
(xs.Models.HintCampGeneral.create = function() {
    var ret;
    // source line 239, bytecode pc 23
    (ret = new xs.Models.HintCampGeneral());
    if ((ret && ret.init())) {
        // source line 241, bytecode pc 55
        return ret;
    }
    // source line 243, bytecode pc 57
    return null;
});
// source line 255, bytecode pc 340
(xs.Models.HintCampEquipment = cc.Class.extend({
    name: "xs.Models.HintCampEquipment",
    init: function() {
    // source line 252, bytecode pc 1
    return true;
},
    _getHintCount: function() {
    var equipmentPiece, i;
    // source line 256, bytecode pc 7
    (this.hintCount = 0);
    // source line 258, bytecode pc 58
    (equipmentPiece = xs.Profile.GameData.Mgr.getInstance().EquipmentPieces.getAll());
    // source line 259, bytecode pc 63
    (i = 0);
    while ((i < equipmentPiece.length)) {
        if (equipmentPiece[i].canCompose()) {
            // source line 261, bytecode pc 118
            (this.hintCount = (+this.hintCount + 1));
        }
        // source line 259, bytecode pc 133
        (i = (+i + 1));
    }
    // source line 264, bytecode pc 159
    return this.hintCount;
}
}));
// source line 270, bytecode pc 366
(xs.Models.HintCampEquipment.create = function() {
    var ret;
    // source line 271, bytecode pc 23
    (ret = new xs.Models.HintCampEquipment());
    if ((ret && ret.init())) {
        // source line 273, bytecode pc 55
        return ret;
    }
    // source line 275, bytecode pc 57
    return null;
});
// source line 353, bytecode pc 460
(xs.Models.HintCampBag = cc.Class.extend({
    name: "xs.Models.HintCampBag",
    init: function() {
    var items, i, gems;
    // source line 283, bytecode pc 7
    (this.hintCount = 0);
    // source line 284, bytecode pc 15
    (this.gemHintNum = 0);
    // source line 287, bytecode pc 66
    (items = xs.Profile.GameData.Mgr.getInstance().Items.getAll());
    // source line 289, bytecode pc 71
    (i = 0);
    while ((i < items.length)) {
        if (items[i].getNewStatus()) {
            // source line 291, bytecode pc 126
            (this.hintCount = (+this.hintCount + 1));
        }
        // source line 289, bytecode pc 141
        (i = (+i + 1));
    }
    // source line 330, bytecode pc 183
    xs.log_hsq("HintCampBagHintCampBag");
    // source line 332, bytecode pc 234
    (gems = xs.Profile.GameData.Mgr.getInstance().Gems.getAll());
    // source line 333, bytecode pc 239
    (i = 0);
    while ((i < gems.length)) {
        if (gems[i].getStatus()) {
            // source line 335, bytecode pc 294
            (this.gemHintNum = (+this.gemHintNum + 1));
        }
        // source line 333, bytecode pc 309
        (i = (+i + 1));
    }
    // source line 342, bytecode pc 330
    return true;
},
    _getHintCount: function() {
    // source line 346, bytecode pc 13
    return (this.hintCount + this.gemHintNum);
},
    _getConBagHintCount: function() {
    // source line 350, bytecode pc 6
    return this.hintCount;
},
    _getGemBagHintCount: function() {
    // source line 354, bytecode pc 6
    return this.gemHintNum;
}
}));
// source line 360, bytecode pc 486
(xs.Models.HintCampBag.create = function() {
    var ret;
    // source line 361, bytecode pc 23
    (ret = new xs.Models.HintCampBag());
    if ((ret && ret.init())) {
        // source line 363, bytecode pc 55
        return ret;
    }
    // source line 365, bytecode pc 57
    return null;
});
// source line 386, bytecode pc 560
(xs.Models.HintPvpChaos = cc.Class.extend({
    name: "xs.Models.HintPvpChaos",
    init: function() {
    var skillPieces, i;
    // source line 374, bytecode pc 7
    (this.hintCount = 0);
    // source line 376, bytecode pc 58
    (skillPieces = xs.Profile.GameData.Mgr.getInstance().SkillPieces.getAll());
    // source line 377, bytecode pc 63
    (i = 0);
    while ((i < skillPieces.length)) {
        if (skillPieces[i].canCompose()) {
            // source line 379, bytecode pc 118
            (this.hintCount = (+this.hintCount + 1));
        }
        // source line 377, bytecode pc 133
        (i = (+i + 1));
    }
    // source line 383, bytecode pc 154
    return true;
},
    _getHintCount: function() {
    // source line 387, bytecode pc 6
    return this.hintCount;
}
}));
// source line 391, bytecode pc 586
(xs.Models.HintPvpChaos.create = function() {
    var ret;
    // source line 392, bytecode pc 23
    (ret = new xs.Models.HintPvpChaos());
    if ((ret && ret.init())) {
        // source line 394, bytecode pc 55
        return ret;
    }
    // source line 396, bytecode pc 57
    return null;
});
// source line 415, bytecode pc 660
(xs.Models.HintStoreToast = cc.Class.extend({
    name: "xs.Models.HintStoreToast",
    init: function() {
    // source line 410, bytecode pc 7
    (this.hintCount = 0);
    // source line 412, bytecode pc 9
    return true;
},
    _getHintCount: function() {
    if (xs.Profile.GameData.Mgr.getInstance().ToastInfo.getToastInfo()) {
        // source line 418, bytecode pc 116
        (this.hintCount = xs.Profile.GameData.Mgr.getInstance().ToastInfo.getToastInfo().getTotalToastTimes());
    }
    // source line 420, bytecode pc 123
    return this.hintCount;
}
}));
// source line 424, bytecode pc 686
(xs.Models.HintStoreToast.create = function() {
    var ret;
    // source line 425, bytecode pc 23
    (ret = new xs.Models.HintStoreToast());
    if ((ret && ret.init())) {
        // source line 427, bytecode pc 55
        return ret;
    }
    // source line 429, bytecode pc 57
    return null;
});
