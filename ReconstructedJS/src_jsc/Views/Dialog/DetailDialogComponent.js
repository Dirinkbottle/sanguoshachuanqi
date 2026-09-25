// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/DetailDialogComponent.js:1
// source line 4, bytecode pc 16
(xs.DetailDialogComponent = {});
// source line 7, bytecode pc 37
(xs.DetailDialogComponent.CommonJumpCallback = function(param) {
    var result, funcParam, _charpterData, _dungonData, _flag, _updateMapInfo, _cfgData, _tmp, _id, _generalData, _nameArray, _equipData, tmpParam;
    // source line 9, bytecode pc 37
    xs.log("xs.DetailDialogComponent.CommonJumpCallback type is ", param.type);
    // source line 10, bytecode pc 47
    (result = {});
    // source line 11, bytecode pc 61
    (result.btnText = "default");
    // source line 12, bytecode pc 71
    (result.explanationText = null);
    // source line 14, bytecode pc 108
    switch (xs.Utils.parseIntSafe(param.type)) {
        case 1:
        // source line 17, bytecode pc 301
        (result._callback = function() {
    // source line 18, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 19, bytecode pc 59
    xs.Scene.Mgr.changeSceneByName("StoreScene");
});
        // source line 21, bytecode pc 342
        (result.btnText = xs.Tools.String.createString("auto_name_343"));
        // source line 22, bytecode pc 383
        (result.explanationText = xs.Tools.String.createString("detailDialog_type1"));
        break;
        case 2:
        // source line 26, bytecode pc 398
        (funcParam = {});
        // source line 27, bytecode pc 421
        (funcParam.map_id = param.map_id);
        // source line 28, bytecode pc 444
        (funcParam.dungeonId = param.dungeonId);
        // source line 30, bytecode pc 449
        (_charpterData = null);
        // source line 31, bytecode pc 454
        (_dungonData = null);
        // source line 32, bytecode pc 523
        (_flag = xs.Profile.GameData.Mgr.getInstance().Map.isStepOver(funcParam.map_id, funcParam.dungeonId));
        if (!xs.Utils.isEmpty(_flag)) {
            if (xs.Guide.GuideMgr.getIsOver()) {
                // source line 38, bytecode pc 600
                (_updateMapInfo = function(jsonObj) {
    // source line 39, bytecode pc 56
    xs.Profile.GameData.Mgr.getInstance().Map.update(jsonObj.map_info);
    // source line 40, bytecode pc 117
    (this.m_bInHardChapter = xs.Profile.GameData.Mgr.getInstance().Map.isEliteMap(this.map_id));
    // source line 41, bytecode pc 144
    xs.Views.Mgr.hideDialog();
    // source line 42, bytecode pc 179
    xs.Views.Mgr.showDialogByName("DungeonDetailB", this);
});
                // source line 46, bytecode pc 629
                (result._callback = function() {
    // source line 45, bytecode pc 56
    xs.Tools.Net.requireChapterInfo({ map_id: this.map_id }, _updateMapInfo, this);
}.bind(funcParam));
            } else {
                // source line 56, bytecode pc 663
                (result._callback = function() {
    // source line 51, bytecode pc 26
    xs.Views.Mgr.hideAllDialog();
    // source line 54, bytecode pc 88
    xs.Scene.Mgr.changeSceneByName("FightChapters", { mapId: this.map_id, dungeonId: this.dungeonId });
}.bind(funcParam));
            }
        } else {
            // source line 59, bytecode pc 696
            param.button.setEventOnDisable(true);
            // source line 60, bytecode pc 724
            param.button.setEnabled(false);
            // source line 61, bytecode pc 738
            (result._callback = function() {
    // source line 62, bytecode pc 59
    xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_344"));
});
        }
        // source line 65, bytecode pc 779
        (result.btnText = xs.Tools.String.createString("str_Training_goChapter"));
        // source line 67, bytecode pc 820
        (_cfgData = xs.Tools.CfgData.getCfgDataByType(xs.Constant_CfgDataType_MapAndDungon_Data));
        // source line 72, bytecode pc 867
        (_tmp = (xs.Tools.String.createString("auto_name_tongguan") || "error"));
        // source line 73, bytecode pc 923
        xs.log(("test auto_name_tongguan " + xs.Tools.String.createString("auto_name_tongguan")));
        // source line 74, bytecode pc 991
        xs.log(("test auto_name_tongguan2 " + xs.Tools.String.createString(_cfgData[funcParam.dungeonId].dungeon_name)));
        // source line 75, bytecode pc 1063
        xs.log((("test auto_name_tongguan3 " + _tmp) + xs.Tools.String.createString(_cfgData[funcParam.dungeonId].dungeon_name)));
        // source line 76, bytecode pc 1120
        (result.explanationText = (_tmp + xs.Tools.String.createString(_cfgData[funcParam.dungeonId].dungeon_name)));
        break;
        case 3:
        // source line 80, bytecode pc 1139
        (result._callback = function() {
    // source line 81, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 82, bytecode pc 59
    xs.Scene.Mgr.changeSceneByName("EquipmentScene");
});
        // source line 84, bytecode pc 1180
        (result.btnText = xs.Tools.String.createString("auto_name_345"));
        // source line 85, bytecode pc 1221
        (result.explanationText = xs.Tools.String.createString("detailDialog_type3"));
        break;
        case 4:
        // source line 89, bytecode pc 1240
        (result._callback = function() {
    // source line 91, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 92, bytecode pc 59
    xs.Scene.Mgr.changeSceneByName("BagScene");
});
        // source line 94, bytecode pc 1281
        (result.btnText = xs.Tools.String.createString("auto_name_346"));
        // source line 95, bytecode pc 1322
        (result.explanationText = xs.Tools.String.createString("detailDialog_type4"));
        break;
        case 5:
        // source line 99, bytecode pc 1341
        (result._callback = function() {
    // source line 100, bytecode pc 37
    xs.log(("param.type is " + param.type));
    if ((xs.Tools.Scene.gotoChaos() == true)) {
    }
});
        // source line 108, bytecode pc 1382
        (result.btnText = xs.Tools.String.createString("chaos_toSnatch"));
        // source line 109, bytecode pc 1423
        (result.explanationText = xs.Tools.String.createString("detailDialog_type5"));
        break;
        case 6:
        // source line 113, bytecode pc 1442
        (result._callback = function() {
    var _id, _generalData;
    // source line 114, bytecode pc 37
    xs.log(("param.type is " + param.type));
    // source line 116, bytecode pc 64
    xs.Views.Mgr.hideDialog();
    // source line 117, bytecode pc 102
    xs.log(("CommonJumpCallback " + param.pkid));
    if (param.pkid) {
        // source line 119, bytecode pc 161
        (_id = xs.Utils.parseIntSafe(param.pkid));
        if (((_id > 100000) && (_id < 200000))) {
            // source line 122, bytecode pc 233
            (_generalData = xs.Models.General.createWithBase(param.pkid));
            // source line 125, bytecode pc 291
            xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: _generalData, type: "achieve_nothave" });
        } else {
            if (((_id > 200000) && (_id < 300000))) {
                // source line 131, bytecode pc 415
                xs.Views.Mgr.showDialogByName("DetailDialogEquip", { equipData: xs.Models.Equipment.createWithBase(param.pkid), flag: false });
            } else {
                if (((_id > 300000) && (_id < 400000))) {
                    // source line 137, bytecode pc 539
                    xs.Views.Mgr.showDialogByName("DetailDialogSkill", { skillData: xs.Models.Skill.createWithBase(param.pkid), flag: false });
                }
            }
        }
    }
});
        // source line 143, bytecode pc 1483
        (result.btnText = xs.Tools.String.createString("1071310074"));
        if (param.pkid) {
            // source line 147, bytecode pc 1542
            (_id = xs.Utils.parseIntSafe(param.pkid));
            if (((_id > 100000) && (_id < 200000))) {
                // source line 150, bytecode pc 1614
                (_generalData = xs.Models.General.createWithBase(param.pkid));
                // source line 152, bytecode pc 1690
                (result.explanationText = xs.Tools.String.createString("detailDialog_type7").convWithArgs([ _generalData.getNameString() ]));
            }
        }
        break;
        case 7:
        // source line 158, bytecode pc 1709
        (result._callback = function() {
    var _generalId, _allHaveGeneral, _haveFlag, i, _generalData;
    // source line 159, bytecode pc 37
    xs.log(("param.type is " + param.type));
    if (param.generalId) {
        // source line 162, bytecode pc 83
        xs.Views.Mgr.hideDialog();
        // source line 163, bytecode pc 101
        (_generalId = param.generalId);
        // source line 164, bytecode pc 152
        (_allHaveGeneral = xs.Profile.GameData.Mgr.getInstance().Atlas.getGeneral());
        // source line 165, bytecode pc 157
        (_haveFlag = false);
        // source line 166, bytecode pc 162
        (i = 0);
        while ((i < _allHaveGeneral.length)) {
            if ((_allHaveGeneral[i].getPkId() == _generalId)) {
                if ((_allHaveGeneral[i].getAtlasStatus() > 0)) {
                    // source line 170, bytecode pc 225
                    (_haveFlag = true);
                }
            }
            // source line 166, bytecode pc 239
            (i = (+i + 1));
        }
        // source line 174, bytecode pc 292
        (_generalData = xs.Models.General.createWithBase(_generalId));
        if (_generalData.isVersion()) {
            if (_haveFlag) {
                // source line 182, bytecode pc 377
                xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: _generalData, type: "achieve_have" });
            } else {
                // source line 187, bytecode pc 440
                xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: _generalData, type: "achieve_nothave" });
            }
        } else {
            // source line 191, bytecode pc 505
            xs.Views.Mgr.showToast(xs.Tools.String.createString("DetailDialog_ComJumpBack_1"));
            // source line 192, bytecode pc 507
            return void 0;
        }
    }
});
        // source line 197, bytecode pc 1750
        (result.btnText = xs.Tools.String.createString("auto_name_348"));
        if (param.generalId) {
            // source line 201, bytecode pc 1814
            (_generalData = xs.Models.General.createWithBase(param.generalId));
            // source line 203, bytecode pc 1890
            (result.explanationText = xs.Tools.String.createString("detailDialog_type8").convWithArgs([ _generalData.getNameString() ]));
        }
        break;
        case 8:
        // source line 208, bytecode pc 1909
        (result._callback = function() {
    // source line 209, bytecode pc 37
    xs.log(("param.type is " + param.type));
    if ((xs.Tools.Scene.gotoLadder() == true)) {
    }
});
        // source line 217, bytecode pc 1950
        (result.btnText = xs.Tools.String.createString("auto_name_351"));
        // source line 218, bytecode pc 1991
        (result.explanationText = xs.Tools.String.createString("auto_name_352"));
        break;
        case 9:
        // source line 222, bytecode pc 2010
        (result._callback = function() {
    // source line 223, bytecode pc 37
    xs.log(("param.type is " + param.type));
    if ((xs.Tools.Scene.gotoClimp() == true)) {
    }
});
        // source line 231, bytecode pc 2051
        (result.btnText = xs.Tools.String.createString("auto_name_353"));
        // source line 232, bytecode pc 2092
        (result.explanationText = xs.Tools.String.createString("auto_name_354"));
        break;
        case 10:
        // source line 236, bytecode pc 2111
        (result._callback = function() {
    // source line 237, bytecode pc 37
    xs.log(("param.type is " + param.type));
    // source line 239, bytecode pc 64
    xs.Views.Mgr.hideDialog();
    // source line 240, bytecode pc 97
    xs.Scene.Mgr.changeSceneByName("PartyMenuScene");
});
        // source line 242, bytecode pc 2152
        (result.btnText = xs.Tools.String.createString("auto_name_355"));
        // source line 243, bytecode pc 2193
        (result.explanationText = xs.Tools.String.createString("auto_name_356"));
        break;
        case 11:
        // source line 247, bytecode pc 2212
        (result._callback = function() {
    // source line 248, bytecode pc 37
    xs.log(("param.type is " + param.type));
    // source line 250, bytecode pc 64
    xs.Views.Mgr.hideDialog();
    // source line 251, bytecode pc 97
    xs.Scene.Mgr.changeSceneByName("AgaScene");
});
        // source line 253, bytecode pc 2253
        (result.btnText = xs.Tools.String.createString("auto_name_357"));
        if (param.generalId) {
            // source line 256, bytecode pc 2317
            (_generalData = xs.Models.General.createWithBase(param.generalId));
            // source line 258, bytecode pc 2393
            (result.explanationText = xs.Tools.String.createString("detailDialog_type12").convWithArgs([ _generalData.getNameString() ]));
        }
        break;
        case 12:
        // source line 263, bytecode pc 2412
        (result._callback = function() {
    // source line 264, bytecode pc 37
    xs.log(("param.type is " + param.type));
    // source line 266, bytecode pc 64
    xs.Views.Mgr.hideDialog();
    // source line 267, bytecode pc 97
    xs.Scene.Mgr.changeSceneByName("SkillScene");
});
        // source line 269, bytecode pc 2453
        (result.btnText = xs.Tools.String.createString("auto_name_358"));
        if ((param.param_value && (param.param_value.length > 0))) {
            // source line 272, bytecode pc 2566
            (result.explanationText = xs.Tools.String.createString("detailDialog_type13").convWithArgs(param.param_value));
        }
        break;
        case 13:
        // source line 277, bytecode pc 2585
        (result._callback = function() {
    // source line 278, bytecode pc 37
    xs.log(("param.type is " + param.type));
    // source line 280, bytecode pc 64
    xs.Views.Mgr.hideDialog();
    // source line 281, bytecode pc 97
    xs.Scene.Mgr.changeSceneByName("EquipmentScene");
});
        // source line 283, bytecode pc 2626
        (result.btnText = xs.Tools.String.createString("auto_name_359"));
        if ((param.param_value && (param.param_value.length > 0))) {
            // source line 285, bytecode pc 2739
            (result.explanationText = xs.Tools.String.createString("detailDialog_type14").convWithArgs(param.param_value));
        }
        break;
        case 14:
        // source line 290, bytecode pc 2758
        (result._callback = function() {
    // source line 291, bytecode pc 37
    xs.log(("param.type is " + param.type));
    // source line 293, bytecode pc 64
    xs.Views.Mgr.hideDialog();
    // source line 294, bytecode pc 97
    xs.Scene.Mgr.changeSceneByName("CombatScene");
});
        // source line 296, bytecode pc 2799
        (result.btnText = xs.Tools.String.createString("auto_name_360"));
        if ((param.param_value && (param.param_value.length > 0))) {
            // source line 299, bytecode pc 2912
            (result.explanationText = xs.Tools.String.createString("detailDialog_type15").convWithArgs(param.param_value));
        }
        break;
        case 15:
        // source line 304, bytecode pc 2931
        (result._callback = function() {
    // source line 305, bytecode pc 37
    xs.log(("param.type is " + param.type));
    // source line 307, bytecode pc 64
    xs.Views.Mgr.hideDialog();
    // source line 308, bytecode pc 97
    xs.Scene.Mgr.loadStatusAndClear("friendSearchKey");
    // source line 309, bytecode pc 130
    xs.Scene.Mgr.loadStatusAndClear("friendTableViewOffsetY");
    // source line 310, bytecode pc 163
    xs.Scene.Mgr.changeSceneByName("SocialScene");
});
        // source line 312, bytecode pc 2972
        (result.btnText = xs.Tools.String.createString("auto_name_361"));
        if ((param.param_value && (param.param_value.length > 0))) {
            // source line 314, bytecode pc 3085
            (result.explanationText = xs.Tools.String.createString("detailDialog_type16").convWithArgs(param.param_value));
        }
        break;
        case 16:
        // source line 319, bytecode pc 3104
        (result._callback = function() {
    var _id, _allHaveGeneral, _generalData, _haveFlag, i;
    // source line 320, bytecode pc 37
    xs.log(("param.type is " + param.type));
    // source line 322, bytecode pc 64
    xs.Views.Mgr.hideDialog();
    // source line 323, bytecode pc 102
    xs.log(("CommonJumpCallback " + param.pkid));
    if (param.pkid) {
        // source line 325, bytecode pc 161
        (_id = xs.Utils.parseIntSafe(param.pkid));
        if (((_id > 100000) && (_id < 200000))) {
            // source line 328, bytecode pc 239
            (_allHaveGeneral = xs.Profile.GameData.Mgr.getInstance().Atlas.getGeneral());
            // source line 329, bytecode pc 284
            (_generalData = xs.Models.General.createWithBase(param.pkid));
            if (_generalData.isVersion()) {
                // source line 331, bytecode pc 308
                (_haveFlag = false);
                // source line 332, bytecode pc 313
                (i = 0);
                while ((i < _allHaveGeneral.length)) {
                    if ((_allHaveGeneral[i].getPkId() == param.pkid)) {
                        if ((_allHaveGeneral[i].getAtlasStatus() > 0)) {
                            // source line 336, bytecode pc 387
                            (_haveFlag = true);
                        }
                    }
                    // source line 332, bytecode pc 401
                    (i = (+i + 1));
                }
                if (_haveFlag) {
                    // source line 346, bytecode pc 486
                    xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: _generalData, type: "achieve_have" });
                } else {
                    // source line 351, bytecode pc 549
                    xs.Views.Mgr.showDialogByName("DetailDialogGeneral", { generalData: _generalData, type: "achieve_nothave" });
                }
            } else {
                // source line 355, bytecode pc 614
                xs.Views.Mgr.showToast(xs.Tools.String.createString("DetailDialog_ComJumpBack_1"));
            }
        }
    }
});
        // source line 361, bytecode pc 3145
        (result.btnText = xs.Tools.String.createString("auto_name_362"));
        if (param.pkid) {
            // source line 365, bytecode pc 3209
            (_generalData = xs.Models.General.createWithBase(param.pkid));
            // source line 366, bytecode pc 3218
            (_nameArray = []);
            // source line 367, bytecode pc 3248
            _nameArray.push(_generalData.getNameString());
            // source line 368, bytecode pc 3304
            (result.explanationText = xs.Tools.String.createString("detailDialog_type17").convWithArgs(_nameArray));
        }
        break;
        case 17:
        // source line 373, bytecode pc 3323
        (result._callback = function() {
    var _id, _equipData;
    // source line 374, bytecode pc 37
    xs.log(("param.type is " + param.type));
    // source line 375, bytecode pc 75
    xs.log(("CommonJumpCallback " + param.pkid));
    // source line 377, bytecode pc 102
    xs.Views.Mgr.hideDialog();
    if (param.pkid) {
        // source line 379, bytecode pc 161
        (_id = xs.Utils.parseIntSafe(param.pkid));
        if (((_id > 200000) && (_id < 300000))) {
            // source line 382, bytecode pc 233
            (_equipData = xs.Models.Equipment.createWithBase(param.pkid));
            if (_equipData.isVersion()) {
                // source line 386, bytecode pc 306
                xs.Views.Mgr.showDialogByName("DetailDialogEquip", { equipData: _equipData, flag: false });
            } else {
                // source line 389, bytecode pc 371
                xs.Views.Mgr.showToast(xs.Tools.String.createString("DetailDialog_ComJumpBack_1"));
            }
        }
    }
});
        // source line 395, bytecode pc 3364
        (result.btnText = xs.Tools.String.createString("auto_name_363"));
        if (param.pkid) {
            // source line 398, bytecode pc 3428
            (_equipData = xs.Models.Equipment.createWithBase(param.pkid));
            // source line 399, bytecode pc 3484
            (result.explanationText = (xs.Tools.String.createString("auto_name_364") + _equipData.getNameString()));
        }
        break;
        case 18:
        // source line 404, bytecode pc 3503
        (result._callback = function() {
    var _id, _skillData;
    // source line 405, bytecode pc 37
    xs.log(("param.type is " + param.type));
    // source line 406, bytecode pc 75
    xs.log(("CommonJumpCallback " + param.pkid));
    // source line 408, bytecode pc 102
    xs.Views.Mgr.hideDialog();
    if (param.pkid) {
        // source line 410, bytecode pc 161
        (_id = xs.Utils.parseIntSafe(param.pkid));
        if (((_id > 300000) && (_id < 400000))) {
            // source line 413, bytecode pc 233
            (_skillData = xs.Models.Skill.createWithBase(param.pkid));
            if (_skillData.isVersion()) {
                // source line 418, bytecode pc 306
                xs.Views.Mgr.showDialogByName("DetailDialogSkill", { skillData: _skillData, flag: false });
            } else {
                // source line 423, bytecode pc 371
                xs.Views.Mgr.showToast(xs.Tools.String.createString("DetailDialog_ComJumpBack_1"));
            }
        }
    }
});
        // source line 428, bytecode pc 3544
        (result.btnText = xs.Tools.String.createString("auto_name_365"));
        if (param.pkid) {
            // source line 431, bytecode pc 3608
            (_equipData = xs.Models.Skill.createWithBase(param.pkid));
            // source line 432, bytecode pc 3664
            (result.explanationText = (xs.Tools.String.createString("auto_name_366") + _equipData.getNameString()));
        }
        break;
        case 19:
        // source line 437, bytecode pc 3683
        (result._callback = function() {
    var _result;
    // source line 438, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    // source line 439, bytecode pc 56
    (_result = xs.Profile.Permission.isUnLock_dailyTask());
    if (_result.result) {
        // source line 441, bytecode pc 102
        xs.Views.Mgr.showDialogByName("DailyTaskDialog");
    } else {
        // source line 444, bytecode pc 143
        xs.Views.Mgr.showToast(_result.desc);
    }
});
        // source line 447, bytecode pc 3724
        (result.btnText = xs.Tools.String.createString("btnStr_checkTask"));
        // source line 448, bytecode pc 3765
        (result.explanationText = xs.Tools.String.createString("general_byTask"));
        break;
        case 20:
        // source line 453, bytecode pc 3784
        (result._callback = function() {
    var List, data;
    // source line 454, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    if (xs.isShowMagic) {
        // source line 456, bytecode pc 92
        (List = xs.Profile.GameData.Mgr.getInstance().MagicalEqus.getAll());
        if ((List.length === 0)) {
            // source line 458, bytecode pc 167
            xs.Views.Mgr.showToast(xs.Tools.String.createString("MiracleWeapon_null"));
        } else {
            // source line 462, bytecode pc 196
            (data = { list: List, index: 0 });
            // source line 465, bytecode pc 233
            xs.Scene.Mgr.changeSceneByName("SelectMiracleWeaponsScene", data);
        }
    } else {
        // source line 468, bytecode pc 298
        xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_51"));
    }
});
        break;
        case 21:
        // source line 473, bytecode pc 3803
        (result._callback = function() {
    // source line 477, bytecode pc 52
    xs.Scene.Mgr.changeSceneByName("AgaScene", { selPageIndex: 3, cardIdx: 0 });
});
        break;
        case 22:
        // source line 483, bytecode pc 3818
        (tmpParam = {});
        // source line 484, bytecode pc 3841
        (tmpParam.generalId = param.generalId);
        // source line 488, bytecode pc 3870
        (result._callback = function() {
    // source line 486, bytecode pc 29
    xs.log_ck(("武将ID:" + this.generalId));
    // source line 487, bytecode pc 80
    xs.Scene.Mgr.changeSceneByName("AwakeScene", { generalId: this.generalId });
}.bind(tmpParam));
        break;
        case 23:
        // source line 491, bytecode pc 3889
        (result._callback = function() {
    // source line 492, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("AwakeBoxScene");
});
        break;
        case 24:
        // source line 497, bytecode pc 3908
        (result._callback = function() {
    // source line 498, bytecode pc 32
    xs.Scene.Mgr.changeSceneByName("FightChapters");
});
        break;
        case 100:
        break;
        default:
        // source line 509, bytecode pc 3932
        (result._callback = function() {
    // source line 510, bytecode pc 37
    xs.log(("param.type is " + param.type));
});
        break;
    }
    // source line 514, bytecode pc 3941
    return result;
});
// source line 531, bytecode pc 126
(xs.DetailDialogComponent.DWidget = xs.Views.HungerLayer.extend({
    loadCCBI: function() {
},
    loadData: function(params) {
},
    initWithData: function(params) {
    if (!this.init()) {
        // source line 526, bytecode pc 19
        return false;
    }
    // source line 527, bytecode pc 32
    this.loadCCBI();
    // source line 528, bytecode pc 49
    this.loadData(params);
    // source line 529, bytecode pc 51
    return true;
},
    getViewSize: function() {
    var viewsize;
    // source line 532, bytecode pc 20
    (viewsize = this._ccbNode.getContentSize());
    // source line 534, bytecode pc 24
    return viewsize;
}
}));
// source line 537, bytecode pc 152
(xs.DetailDialogComponent.DWidget.create = function(params) {
    var obj;
    // source line 538, bytecode pc 23
    (obj = new xs.DetailDialogComponent.DWidget());
    if ((obj && obj.initWithData(params))) {
        // source line 540, bytecode pc 59
        return obj;
    }
    // source line 542, bytecode pc 61
    return null;
});
// source line 548, bytecode pc 226
(xs.DetailDialogComponent.TWidgetCell = xs.Views.Table.MultiColumnTableViewCell.extend({
    name: "TWidgetCell",
    updateCell: function(data) {
    var i, _view;
    // source line 549, bytecode pc 12
    this.removeAllChildren();
    // source line 551, bytecode pc 17
    (i = 0);
    while ((i < data.length)) {
        if ((data[i].drawSelf != null)) {
            // source line 553, bytecode pc 64
            (_view = data[i].drawSelf());
            // source line 559, bytecode pc 185
            xs.Utils.Node.attachNodes(this, _view, {
    desc: "lb",
    sc: true,
    offset: { x: ((this._cellSize.width / 2) + (this._cellSize.width * i)), y: (this._cellSize.height / 2) }
});
        }
        // source line 551, bytecode pc 199
        (i = (+i + 1));
    }
}
}));
// source line 567, bytecode pc 252
(xs.DetailDialogComponent.TWidgetCell.create = function(cellData, cellSize) {
    var obj;
    // source line 568, bytecode pc 23
    (obj = new xs.DetailDialogComponent.TWidgetCell());
    // source line 569, bytecode pc 35
    (obj._cellSize = cellSize);
    if ((obj && obj.initWithData(cellData))) {
        // source line 571, bytecode pc 71
        return obj;
    }
    // source line 573, bytecode pc 94
    xs.error("xs.DetailDialogComponent.TWidgetCell create error");
    // source line 574, bytecode pc 96
    return null;
});
// source line 626, bytecode pc 397
(xs.DetailDialogComponent.TWidget = xs.Views.Table.MultiColumnTableView.extend({
    name: "TWidget",
    Cfg: { modelTypes: [] },
    refreshData: function() {
    // source line 586, bytecode pc 12
    (this.arrayModel = this._allCellData);
},
    onSortChg: function(sortedData) {
},
    createCell: function(idx) {
    var cell;
    // source line 593, bytecode pc 47
    (cell = xs.DetailDialogComponent.TWidgetCell.create(this.arrayModel[idx], this._cellSize));
    // source line 596, bytecode pc 51
    return cell;
},
    makeViewSize: function() {
    // source line 600, bytecode pc 6
    return this._viewSize;
},
    initWithData: function(params) {
    var param, tmpViewWidth, tmpViewHeight, i;
    // source line 603, bytecode pc 18
    (param = (params || {}));
    // source line 604, bytecode pc 45
    (this._allCellData = (param.allCellData || {}));
    // source line 605, bytecode pc 88
    (this._cellSize = (param.cellSize || cc.size(110, 120)));
    // source line 607, bytecode pc 103
    (tmpViewWidth = this._cellSize.width);
    // source line 608, bytecode pc 118
    (tmpViewHeight = this._cellSize.height);
    // source line 610, bytecode pc 123
    (i = 0);
    while ((i < this._allCellData.length)) {
        // source line 611, bytecode pc 150
        (tmpViewHeight = (this._cellSize.height * (i + 1)));
        // source line 610, bytecode pc 164
        (i = (+i + 1));
    }
    if ((this._allCellData[0] != null)) {
        // source line 615, bytecode pc 206
        (i = 0);
        while ((i < this._allCellData[0].length)) {
            // source line 616, bytecode pc 233
            (tmpViewWidth = (this._cellSize.width * (i + 1)));
            // source line 615, bytecode pc 247
            (i = (+i + 1));
        }
    }
    // source line 620, bytecode pc 302
    (this._viewSize = cc.size(tmpViewWidth, tmpViewHeight));
    // source line 623, bytecode pc 315
    this.init();
    // source line 624, bytecode pc 317
    return true;
},
    getViewSize: function() {
    // source line 627, bytecode pc 6
    return this._viewSize;
}
}));
// source line 630, bytecode pc 423
(xs.DetailDialogComponent.TWidget.create = function(params) {
    var ret;
    // source line 632, bytecode pc 23
    (ret = new xs.DetailDialogComponent.TWidget());
    if ((ret && ret.initWithData(params))) {
        // source line 634, bytecode pc 59
        return ret;
    }
    // source line 636, bytecode pc 78
    this.error("MultiColumnTableView.create:");
    // source line 637, bytecode pc 80
    return null;
});
// source line 645, bytecode pc 444
(xs.DetailDialogComponent.AlgorithmLT = function(node, diffsize) {
    var anchorP, differPos, oldpos, newpos;
    // source line 646, bytecode pc 17
    (anchorP = node.getAnchorPoint());
    // source line 648, bytecode pc 41
    (differPos = cc.p(0, 0));
    // source line 649, bytecode pc 59
    (oldpos = node.getPosition());
    // source line 650, bytecode pc 83
    (newpos = cc.p(0, 0));
    if (((anchorP.x == 0.5) && (anchorP.y == 0.5))) {
        // source line 652, bytecode pc 142
        (differPos.x = (diffsize.width / 2));
        // source line 653, bytecode pc 163
        (differPos.y = (-diffsize.height / 2));
    } else {
        if (((anchorP.x == 0) && (anchorP.y == 0))) {
            // source line 663, bytecode pc 234
            (differPos.y = diffsize.height);
        }
    }
    // source line 665, bytecode pc 324
    (newpos = cc.p(Math.floor((oldpos.x + differPos.x)), Math.floor((oldpos.y + differPos.y))));
    // source line 666, bytecode pc 343
    node.setPosition(newpos);
    // source line 667, bytecode pc 347
    return differPos;
});
// source line 671, bytecode pc 465
(xs.DetailDialogComponent.CNCSByDiffSize = function(node, diffsize) {
    var oldsize, newsize;
    // source line 672, bytecode pc 17
    (oldsize = node.getContentSize());
    // source line 673, bytecode pc 73
    (newsize = cc.size((oldsize.width + diffsize.width), (oldsize.height + diffsize.height)));
    // source line 674, bytecode pc 92
    node.setContentSize(newsize);
    if (node.setDimensions) {
        // source line 676, bytecode pc 124
        node.setDimensions(newsize);
    }
});
// source line 728, bytecode pc 647
(xs.DetailDialogComponent.DStyleA = xs.DetailDialogComponent.DWidget.extend({
    loadCCBI: function() {
    // source line 683, bytecode pc 50
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.DetailDialogStyleA, this));
    // source line 684, bytecode pc 86
    xs.Utils.Node.attachNodes(this, this._ccbNode);
    // source line 685, bytecode pc 94
    (this._titleLabel = null);
    // source line 686, bytecode pc 102
    (this._contentLabel = null);
    // source line 688, bytecode pc 145
    xs.Utils.UI.replaceCcbByCfg(this._ccbNode, this.ccbCfg, this);
    // source line 690, bytecode pc 172
    (this._bg = this._ccbNode.getChildByTag(100));
    // source line 691, bytecode pc 196
    (this._defaultSize = this._bg.getContentSize());
},
    loadData: function(params) {
    var param, _ttfObject, diffsize;
    // source line 694, bytecode pc 18
    (param = (params || {}));
    // source line 695, bytecode pc 56
    this._titleLabel.setString((param.titleText || "0"));
    // source line 696, bytecode pc 88
    xs.log(("createDStyleA contentText is " + param.contentText));
    // source line 697, bytecode pc 126
    this._contentLabel.setString((param.contentText || "0"));
    // source line 699, bytecode pc 170
    (_ttfObject = xs.Tools.UI.getObjectByLsName(this.ccbCfg[1].id));
    // source line 703, bytecode pc 247
    (diffsize = xs.Tools.UI.changeLabelVertical(this._contentLabel, { FontsizeW: _ttfObject.fontSize, FontsizeH: _ttfObject.fontSize, verticalSpace: 3 }));
    // source line 705, bytecode pc 280
    xs.DetailDialogComponent.AlgorithmLT(this._contentLabel, diffsize);
    // source line 707, bytecode pc 313
    xs.DetailDialogComponent.CNCSByDiffSize(this._bg, diffsize);
    // source line 708, bytecode pc 346
    xs.DetailDialogComponent.AlgorithmLT(this._bg, diffsize);
    // source line 710, bytecode pc 379
    xs.DetailDialogComponent.CNCSByDiffSize(this._ccbNode, diffsize);
    // source line 711, bytecode pc 412
    xs.DetailDialogComponent.AlgorithmLT(this._ccbNode, diffsize);
},
    getViewSize: function() {
    var viewsize;
    // source line 715, bytecode pc 20
    (viewsize = this._ccbNode.getContentSize());
    // source line 717, bytecode pc 24
    return viewsize;
},
    ccbCfg: [
        { tag: 1, type: "ls", name: "_titleLabel", id: "LS_wujiangInf1" },
        { tag: 2, type: "ls", name: "_contentLabel", id: "LS_wujiangInf2" }
    ]
}));
// source line 731, bytecode pc 668
(xs.DetailDialogComponent.createDStyleA = function(params) {
    var obj;
    // source line 732, bytecode pc 23
    (obj = new xs.DetailDialogComponent.DStyleA());
    if ((obj && obj.initWithData(params))) {
        // source line 734, bytecode pc 59
        return obj;
    }
    // source line 736, bytecode pc 61
    return null;
});
// source line 814, bytecode pc 887
(xs.DetailDialogComponent.DStyleB = xs.DetailDialogComponent.DWidget.extend({
    loadCCBI: function() {
    // source line 742, bytecode pc 50
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.AchievementGeneralSkillInfo, this));
    // source line 743, bytecode pc 86
    xs.Utils.Node.attachNodes(this, this._ccbNode);
    // source line 744, bytecode pc 94
    (this._titleLabel = null);
    // source line 745, bytecode pc 102
    (this._contentLabel = null);
    // source line 747, bytecode pc 145
    xs.Utils.UI.replaceCcbByCfg(this._ccbNode, this.ccbCfg, this);
    // source line 749, bytecode pc 172
    (this._contentSprite = this._ccbNode.getChildByTag(3));
    // source line 750, bytecode pc 199
    (this._bg = this._ccbNode.getChildByTag(100));
    // source line 751, bytecode pc 223
    (this._defaultSize = this._bg.getContentSize());
},
    loadData: function(params) {
    var param, _skillName, head, pos, diffsize;
    // source line 754, bytecode pc 24
    (param = (params || {}));
    // source line 755, bytecode pc 68
    this._titleLabel.setString((param.titleText || "0"));
    // source line 756, bytecode pc 112
    this._contentLabel.setString((param.contentText || "0"));
    // source line 757, bytecode pc 141
    (_skillName = param.skillData.getNameString());
    // source line 758, bytecode pc 175
    this._skillNameLabel.setString((("【" + _skillName) + "】"));
    if ((param.skillData != null)) {
        // source line 762, bytecode pc 225
        (head = param.skillData.createIcon_GradeAndLvAndAdvancedLv());
        // source line 763, bytecode pc 246
        head.setOnClickCallBack(function() {
    // source line 767, bytecode pc 64
    xs.Views.Mgr.showDialogByName("DetailDialogSkill", { skillData: param.skillData, flag: false });
});
        // source line 771, bytecode pc 284
        head.setTouchPriority((param.touchPriority || -1));
        // source line 772, bytecode pc 305
        (pos = this._contentSprite.getPosition());
        // source line 773, bytecode pc 339
        xs.Utils.Node.safeRemoveChild(this._contentSprite);
        // source line 774, bytecode pc 358
        head.setPosition(pos);
        // source line 775, bytecode pc 368
        (this._contentSprite = head);
        // source line 776, bytecode pc 404
        xs.Utils.Node.attachNodes(this, this._contentSprite);
    }
    // source line 780, bytecode pc 454
    (diffsize = xs.Tools.UI.changeLabelVertical(this._contentLabel, { verticalSpace: 1 }));
    // source line 787, bytecode pc 487
    xs.DetailDialogComponent.AlgorithmLT(this._contentLabel, diffsize);
    // source line 789, bytecode pc 520
    xs.DetailDialogComponent.CNCSByDiffSize(this._bg, diffsize);
    // source line 790, bytecode pc 553
    xs.DetailDialogComponent.AlgorithmLT(this._bg, diffsize);
    // source line 792, bytecode pc 586
    xs.DetailDialogComponent.CNCSByDiffSize(this._ccbNode, diffsize);
    // source line 793, bytecode pc 619
    xs.DetailDialogComponent.AlgorithmLT(this._ccbNode, diffsize);
    if ((param.skillData != null)) {
        // source line 796, bytecode pc 673
        xs.DetailDialogComponent.AlgorithmLT(this._contentSprite, diffsize);
    }
},
    ccbCfg: [
        { tag: 1, type: "ls", name: "_titleLabel", id: "LS_wujiangInf1" },
        { tag: 2, type: "ls", name: "_contentLabel", id: "LS_wujiangInf2" },
        { tag: 4, type: "ls", name: "_skillNameLabel", id: "LS_wujiangInf2" }
    ]
}));
// source line 817, bytecode pc 908
(xs.DetailDialogComponent.createDStyleB = function(params) {
    var obj;
    // source line 818, bytecode pc 23
    (obj = new xs.DetailDialogComponent.DStyleB());
    if ((obj && obj.initWithData(params))) {
        // source line 820, bytecode pc 59
        return obj;
    }
    // source line 822, bytecode pc 61
    return null;
});
// source line 851, bytecode pc 1080
(xs.DetailDialogComponent.DStyleC = xs.DetailDialogComponent.DWidget.extend({
    ccbCfg: [
        { tag: 1, type: "ls", name: "_titleLabel", id: "LS_paihangNomb" },
        { tag: 2, type: "ls", name: "_contentLabel", id: "LS_jinengInf1" }
    ],
    loadCCBI: function() {
    // source line 841, bytecode pc 50
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.DetailDialogStyleC, this));
    // source line 842, bytecode pc 86
    xs.Utils.Node.attachNodes(this, this._ccbNode);
    // source line 843, bytecode pc 112
    (this._titleLabel = this._ccbNode.getChildByTag(1));
    // source line 844, bytecode pc 139
    (this._contentLabel = this._ccbNode.getChildByTag(2));
    // source line 845, bytecode pc 166
    (this._bg = this._ccbNode.getChildByTag(100));
    // source line 846, bytecode pc 190
    (this._defaultSize = this._bg.getContentSize());
    // source line 849, bytecode pc 233
    xs.Utils.UI.replaceCcbByCfg(this._ccbNode, this.ccbCfg, this);
},
    loadData: function(params) {
    var param, _params, diffsize;
    // source line 852, bytecode pc 18
    (param = (params || {}));
    // source line 854, bytecode pc 56
    this._titleLabel.setString((param.titleText || "0"));
    // source line 855, bytecode pc 94
    this._contentLabel.setString((param.contentText || "0"));
    // source line 862, bytecode pc 104
    (_params = {});
    // source line 863, bytecode pc 115
    (_params.FontsizeH = 24);
    // source line 864, bytecode pc 126
    (_params.FontsizeW = 24);
    // source line 865, bytecode pc 137
    (_params.verticalSpace = 2);
    // source line 866, bytecode pc 151
    (_params.styleString = "LS_jinengInf1");
    // source line 867, bytecode pc 174
    xs.log("xs.DetailDialogComponent.DStyleC ");
    // source line 869, bytecode pc 215
    (diffsize = xs.Tools.UI.changeLabelVertical(this._contentLabel, _params));
    // source line 871, bytecode pc 248
    xs.DetailDialogComponent.AlgorithmLT(this._contentLabel, diffsize);
    // source line 873, bytecode pc 281
    xs.DetailDialogComponent.CNCSByDiffSize(this._bg, diffsize);
    // source line 874, bytecode pc 314
    xs.DetailDialogComponent.AlgorithmLT(this._bg, diffsize);
    // source line 876, bytecode pc 342
    xs.DetailDialogComponent.CNCSByDiffSize(this, diffsize);
    // source line 878, bytecode pc 375
    xs.DetailDialogComponent.AlgorithmLT(this._ccbNode, diffsize);
    // source line 879, bytecode pc 408
    xs.DetailDialogComponent.CNCSByDiffSize(this._ccbNode, diffsize);
}
}));
// source line 887, bytecode pc 1101
(xs.DetailDialogComponent.createDStyleC = function(params) {
    var obj;
    // source line 888, bytecode pc 23
    (obj = new xs.DetailDialogComponent.DStyleC());
    if ((obj && obj.initWithData(params))) {
        // source line 890, bytecode pc 59
        return obj;
    }
    // source line 892, bytecode pc 61
    return null;
});
// source line 912, bytecode pc 1226
(xs.DetailDialogComponent.DStyleD = xs.DetailDialogComponent.DWidget.extend({
    loadCCBI: function() {
    // source line 898, bytecode pc 50
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.DetailDialogStyleD, this));
    // source line 899, bytecode pc 86
    xs.Utils.Node.attachNodes(this, this._ccbNode);
    // source line 900, bytecode pc 94
    (this._titleLabel = null);
    // source line 901, bytecode pc 137
    xs.Utils.UI.replaceCcbByCfg(this._ccbNode, this.ccbCfg, this);
},
    loadData: function(params) {
    var param;
    // source line 904, bytecode pc 18
    (param = (params || {}));
    // source line 906, bytecode pc 56
    this._titleLabel.setString((param.titleText || "0"));
},
    ccbCfg: [ { tag: 1, type: "ls", name: "_titleLabel", id: "LS_wujiangInf1" } ]
}));
// source line 915, bytecode pc 1247
(xs.DetailDialogComponent.createDStyleD = function(params) {
    var obj;
    // source line 916, bytecode pc 23
    (obj = new xs.DetailDialogComponent.DStyleD());
    if ((obj && obj.initWithData(params))) {
        // source line 918, bytecode pc 59
        return obj;
    }
    // source line 920, bytecode pc 61
    return null;
});
// source line 940, bytecode pc 1372
(xs.DetailDialogComponent.DStyleE = xs.DetailDialogComponent.DWidget.extend({
    loadCCBI: function() {
    // source line 926, bytecode pc 50
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.DetailDialogStyleE, this));
    // source line 927, bytecode pc 86
    xs.Utils.Node.attachNodes(this, this._ccbNode);
    // source line 928, bytecode pc 94
    (this._titleLabel = null);
    // source line 929, bytecode pc 137
    xs.Utils.UI.replaceCcbByCfg(this._ccbNode, this.ccbCfg, this);
},
    loadData: function(params) {
    var param;
    // source line 932, bytecode pc 18
    (param = (params || {}));
    // source line 934, bytecode pc 56
    this._titleLabel.setString((param.titleText || "0"));
},
    ccbCfg: [ { tag: 1, type: "ls", name: "_titleLabel", id: "LS_yuanfen" } ]
}));
// source line 943, bytecode pc 1393
(xs.DetailDialogComponent.createDStyleE = function(params) {
    var obj;
    // source line 944, bytecode pc 23
    (obj = new xs.DetailDialogComponent.DStyleE());
    if ((obj && obj.initWithData(params))) {
        // source line 946, bytecode pc 59
        return obj;
    }
    // source line 948, bytecode pc 61
    return null;
});
// source line 993, bytecode pc 1659
(xs.DetailDialogComponent.DStyleF = xs.DetailDialogComponent.DWidget.extend({
    loadCCBI: function() {
    // source line 954, bytecode pc 50
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.DetailDialogStyleF, this));
    // source line 955, bytecode pc 86
    xs.Utils.Node.attachNodes(this, this._ccbNode);
    // source line 956, bytecode pc 94
    (this._bloodLabel = null);
    // source line 957, bytecode pc 102
    (this._attackLabel = null);
    // source line 958, bytecode pc 110
    (this._defenseLabel = null);
    // source line 959, bytecode pc 118
    (this._intelligenceLabel = null);
    // source line 961, bytecode pc 161
    xs.Utils.UI.replaceCcbByCfg(this._ccbNode, this.ccbCfg, this);
    // source line 963, bytecode pc 204
    xs.Utils.UI.replaceCcbByCfg(this._ccbNode, this.ccbCfg, this);
},
    loadData: function(params) {
    var param;
    // source line 966, bytecode pc 18
    (param = (params || {}));
    // source line 968, bytecode pc 56
    this._bloodLabel.setString((param.bloodText || "0"));
    // source line 969, bytecode pc 94
    this._attackLabel.setString((param.attackText || "0"));
    // source line 970, bytecode pc 132
    this._defenseLabel.setString((param.defenseText || "0"));
    // source line 971, bytecode pc 170
    this._intelligenceLabel.setString((param.intelligenceText || "0"));
},
    ccbCfg: [
        { tag: 1, type: "ls", name: "_bloodLabel", id: "LS_shuxing1" },
        { tag: 2, type: "ls", name: "_attackLabel", id: "LS_shuxing1" },
        { tag: 3, type: "ls", name: "_defenseLabel", id: "LS_shuxing1" },
        { tag: 4, type: "ls", name: "_intelligenceLabel", id: "LS_shuxing1" }
    ]
}));
// source line 996, bytecode pc 1680
(xs.DetailDialogComponent.createDStyleF = function(params) {
    var obj;
    // source line 997, bytecode pc 23
    (obj = new xs.DetailDialogComponent.DStyleF());
    if ((obj && obj.initWithData(params))) {
        // source line 999, bytecode pc 59
        return obj;
    }
    // source line 1001, bytecode pc 61
    return null;
});
// source line 1049, bytecode pc 1805
(xs.DetailDialogComponent.DStyleG = xs.DetailDialogComponent.DWidget.extend({
    loadCCBI: function() {
    var pos;
    // source line 1009, bytecode pc 50
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.DetailDialogStyleG, this));
    // source line 1011, bytecode pc 86
    xs.Utils.Node.attachNodes(this, this._ccbNode);
    // source line 1012, bytecode pc 94
    (this._explanationLabel = null);
    // source line 1013, bytecode pc 137
    xs.Utils.UI.replaceCcbByCfg(this._ccbNode, this.ccbCfg, this);
    // source line 1015, bytecode pc 172
    (pos = this._ccbNode.getChildByTag(2).getPosition());
    // source line 1016, bytecode pc 206
    this._ccbNode.getChildByTag(2).setVisible(false);
    // source line 1017, bytecode pc 251
    (this._button = xs.Views.Btn.createWithStringId("Btn_btn1", ""));
    // source line 1018, bytecode pc 273
    this._button.setPosition(pos);
    // source line 1019, bytecode pc 314
    xs.Utils.Node.attachNodes(this._ccbNode, this._button);
},
    loadData: function(params) {
    var param, _result;
    // source line 1022, bytecode pc 18
    (param = (params || {}));
    // source line 1024, bytecode pc 56
    this._explanationLabel.setString((param.explanationText || "0"));
    // source line 1027, bytecode pc 107
    this._button.setString(xs.Tools.String.createString("surrender_str_btnCheck"));
    // source line 1028, bytecode pc 145
    this._button.setOnClickCallBack((param.callback || function() {
}));
    // source line 1031, bytecode pc 197
    this._button.setTouchPriority((xs.Cfg.Scene.CommonScene.Dialog.priority - 2));
    if ((param.type != null)) {
        // source line 1033, bytecode pc 227
        (param.button = this._button);
        // source line 1034, bytecode pc 244
        (param.generalId = params.param_value);
        // source line 1035, bytecode pc 273
        (_result = xs.DetailDialogComponent.CommonJumpCallback(param));
        // source line 1036, bytecode pc 300
        this._button.setOnClickCallBack(_result._callback);
        if (_result.explanationText) {
            // source line 1038, bytecode pc 340
            this._explanationLabel.setString(_result.explanationText);
        }
    }
},
    ccbCfg: [ { tag: 1, type: "ls", name: "_explanationLabel", id: "LS_jinengInf1" } ]
}));
// source line 1052, bytecode pc 1826
(xs.DetailDialogComponent.createDStyleG = function(params) {
    var obj;
    // source line 1053, bytecode pc 23
    (obj = new xs.DetailDialogComponent.DStyleG());
    if ((obj && obj.initWithData(params))) {
        // source line 1055, bytecode pc 59
        return obj;
    }
    // source line 1057, bytecode pc 61
    return null;
});
// source line 1135, bytecode pc 2140
(xs.DetailDialogComponent.DStyleH = xs.DetailDialogComponent.DWidget.extend({
    loadCCBI: function() {
    // source line 1063, bytecode pc 50
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.DetailDialogStyleH, this));
    // source line 1064, bytecode pc 86
    xs.Utils.Node.attachNodes(this, this._ccbNode);
    // source line 1065, bytecode pc 112
    (this._gradeIcon = this._ccbNode.getChildByTag(1));
    // source line 1066, bytecode pc 120
    (this._nameLabel = null);
    // source line 1067, bytecode pc 128
    (this._breachabel = null);
    // source line 1068, bytecode pc 136
    (this._jingyanLabel = null);
    // source line 1069, bytecode pc 144
    (this._expLabel = null);
    // source line 1070, bytecode pc 152
    (this._levelLabel = null);
    // source line 1072, bytecode pc 195
    xs.Utils.UI.replaceCcbByCfg(this._ccbNode, this.ccbCfg, this);
    // source line 1076, bytecode pc 222
    (this._expSprite = this._ccbNode.getChildByTag(6));
    // source line 1078, bytecode pc 242
    this._expSprite.setVisible(false);
    // source line 1079, bytecode pc 262
    this._expLabel.setVisible(false);
},
    loadData: function(params) {
    var param, pos, exp, needexp;
    // source line 1082, bytecode pc 18
    (param = (params || {}));
    // source line 1084, bytecode pc 45
    this._nameLabel.setString(param.nameText);
    // source line 1085, bytecode pc 72
    this._levelLabel.setString(param.levelText);
    // source line 1086, bytecode pc 110
    this._breachabel.setString(param.generalData.getBreachLevel());
    // source line 1087, bytecode pc 161
    this._jingyanLabel.setString(xs.Tools.String.createString("auto_name_367"));
    if ((param.generalData != null)) {
        // source line 1091, bytecode pc 197
        (pos = this._gradeIcon.getPosition());
        // source line 1092, bytecode pc 231
        xs.Utils.Node.safeRemoveChild(this._gradeIcon);
        // source line 1093, bytecode pc 284
        (this._gradeIcon = xs.Tools.UI.createGradeSmallIcon(param.generalData.getGrade()));
        // source line 1094, bytecode pc 306
        this._gradeIcon.setPosition(pos);
        // source line 1095, bytecode pc 347
        xs.Utils.Node.attachNodes(this._ccbNode, this._gradeIcon);
        // source line 1098, bytecode pc 368
        (pos = this._expSprite.getPosition());
        // source line 1099, bytecode pc 402
        xs.Utils.Node.safeRemoveChild(this.progressTimer);
        // source line 1100, bytecode pc 435
        (this.progressTimer = xs.Views.NormalProgressTimer.create());
        // source line 1101, bytecode pc 469
        this.setAnchorPoint(cc.p(0, 0));
        // source line 1102, bytecode pc 491
        this.progressTimer.setPosition(pos);
        // source line 1103, bytecode pc 532
        xs.Utils.Node.attachNodes(this._ccbNode, this.progressTimer);
        // source line 1105, bytecode pc 555
        (exp = param.generalData.getExp());
        // source line 1106, bytecode pc 578
        (needexp = param.generalData.getUpgradeExpNeed());
        // source line 1108, bytecode pc 604
        this.progressTimer.setExpShow(exp, needexp);
    }
},
    ccbCfg: [
        { tag: 2, type: "ls", name: "_nameLabel", id: "LS_wujiangInf1" },
        { tag: 4, type: "ls", name: "_levelLabel", id: "LS_Lv" },
        { tag: 3, type: "ls", name: "_breachabel", id: "LS_Lv" },
        { tag: 5, type: "ls", name: "_expLabel", id: "LS_EXPInf" },
        { tag: 7, type: "ls", name: "_jingyanLabel", id: "LS_wujiangInf2" }
    ]
}));
// source line 1138, bytecode pc 2161
(xs.DetailDialogComponent.createDStyleH = function(params) {
    var obj;
    // source line 1139, bytecode pc 23
    (obj = new xs.DetailDialogComponent.DStyleH());
    if ((obj && obj.initWithData(params))) {
        // source line 1141, bytecode pc 59
        return obj;
    }
    // source line 1143, bytecode pc 61
    return null;
});
// source line 1179, bytecode pc 2250
(xs.DetailDialogComponent.DStyleI = xs.DetailDialogComponent.DWidget.extend({
    loadCCBI: function() {
    // source line 1149, bytecode pc 50
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.DetailDialogStyleI, this));
    // source line 1150, bytecode pc 86
    xs.Utils.Node.attachNodes(this, this._ccbNode);
    // source line 1151, bytecode pc 113
    (this._bg = this._ccbNode.getChildByTag(100));
},
    loadData: function(params) {
    var param;
    // source line 1154, bytecode pc 18
    (param = (params || {}));
    // source line 1157, bytecode pc 33
    (this._data = param.generalData);
    // source line 1159, bytecode pc 53
    this.showWidget(this._data);
},
    showWidget: function(data) {
    var obj, _list;
    // source line 1162, bytecode pc 9
    (obj = {});
    // source line 1164, bytecode pc 21
    (obj.allCellData = data);
    // source line 1165, bytecode pc 53
    (obj.cellSize = cc.size(110, 130));
    // source line 1166, bytecode pc 87
    (_list = xs.DetailDialogComponent.TWidget.create(obj));
    // source line 1167, bytecode pc 115
    this.changeCCBNodeSize(_list.getViewSize());
    // source line 1171, bytecode pc 201
    xs.Utils.Node.attachNodes(this._ccbNode, _list, { desc: "lb", sc: true, offset: cc.p(0, 0) });
},
    changeCCBNodeSize: function(size) {
    var oldsize, newsize;
    // source line 1181, bytecode pc 20
    (oldsize = this._ccbNode.getContentSize());
    // source line 1182, bytecode pc 58
    (newsize = cc.size(oldsize.width, size.height));
    // source line 1183, bytecode pc 80
    this._ccbNode.setContentSize(newsize);
    // source line 1186, bytecode pc 102
    this._bg.setContentSize(newsize);
}
}));
// source line 1190, bytecode pc 2271
(xs.DetailDialogComponent.createDStyleI = function(params) {
    var obj;
    // source line 1191, bytecode pc 23
    (obj = new xs.DetailDialogComponent.DStyleI());
    if ((obj && obj.initWithData(params))) {
        // source line 1193, bytecode pc 59
        return obj;
    }
    // source line 1195, bytecode pc 61
    return null;
});
// source line 1233, bytecode pc 2443
(xs.DetailDialogComponent.DStyleJ = xs.DetailDialogComponent.DWidget.extend({
    loadCCBI: function() {
    // source line 1201, bytecode pc 50
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.DetailDialogStyleJ, this));
    // source line 1202, bytecode pc 86
    xs.Utils.Node.attachNodes(this, this._ccbNode);
    // source line 1203, bytecode pc 94
    (this._effectLabel = null);
    // source line 1204, bytecode pc 102
    (this._effectValueLabel = null);
    // source line 1205, bytecode pc 129
    (this._PropertyIcon = this._ccbNode.getChildByTag(2));
    // source line 1206, bytecode pc 172
    xs.Utils.UI.replaceCcbByCfg(this._ccbNode, this.ccbCfg, this);
},
    loadData: function(params) {
    var param, sprite;
    // source line 1210, bytecode pc 18
    (param = (params || {}));
    // source line 1212, bytecode pc 56
    this._effectLabel.setString((param.titleText || "0"));
    // source line 1213, bytecode pc 94
    this._effectValueLabel.setString((param.contentText || "0"));
    if ((param.effectType != null)) {
        // source line 1216, bytecode pc 148
        (sprite = xs.Tools.UI.createEffectTypeSmallIcon(param.effectType));
        // source line 1217, bytecode pc 184
        xs.Utils.replaceNode(this._ccbNode, 2, sprite);
    }
},
    ccbCfg: [
        { tag: 1, type: "ls", name: "_effectLabel", id: "LS_wujiangInf1" },
        { tag: 3, type: "ls", name: "_effectValueLabel", id: "LS_mainUI4" }
    ]
}));
// source line 1236, bytecode pc 2464
(xs.DetailDialogComponent.createDStyleJ = function(params) {
    var obj;
    // source line 1237, bytecode pc 23
    (obj = new xs.DetailDialogComponent.DStyleJ());
    if ((obj && obj.initWithData(params))) {
        // source line 1239, bytecode pc 59
        return obj;
    }
    // source line 1241, bytecode pc 61
    return null;
});
// source line 1285, bytecode pc 2543
(xs.DetailDialogComponent.DStyleK = xs.DetailDialogComponent.DWidget.extend({
    loadCCBI: function() {
    var pos;
    // source line 1247, bytecode pc 50
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.AchievementGeneralInfoButton, this));
    // source line 1248, bytecode pc 86
    xs.Utils.Node.attachNodes(this, this._ccbNode);
    // source line 1249, bytecode pc 120
    this._ccbNode.getChildByTag(2).setVisible(false);
    // source line 1250, bytecode pc 154
    this._ccbNode.getChildByTag(4).setVisible(false);
    // source line 1253, bytecode pc 189
    (pos = this._ccbNode.getChildByTag(3).getPosition());
    // source line 1254, bytecode pc 223
    this._ccbNode.getChildByTag(3).setVisible(false);
    // source line 1255, bytecode pc 295
    (this._button = xs.Views.Btn.create("Btn_btn2", xs.Tools.String.createString("auto_name_76")));
    // source line 1256, bytecode pc 317
    this._button.setPosition(pos);
    // source line 1257, bytecode pc 358
    xs.Utils.Node.attachNodes(this._ccbNode, this._button);
    // source line 1259, bytecode pc 392
    (pos = this._ccbNode.getChildByTag(1).getPosition());
    // source line 1260, bytecode pc 425
    this._ccbNode.getChildByTag(1).setVisible(false);
    // source line 1261, bytecode pc 470
    (this._button1 = xs.Views.Btn.createWithString("Btn_btn2", "yes"));
    // source line 1262, bytecode pc 492
    this._button1.setPosition(pos);
    // source line 1263, bytecode pc 533
    xs.Utils.Node.attachNodes(this._ccbNode, this._button1);
},
    loadData: function(params) {
    var param, defaultcall, _width;
    // source line 1266, bytecode pc 18
    (param = (params || {}));
    // source line 1267, bytecode pc 27
    (defaultcall = function() {
});
    // source line 1271, bytecode pc 92
    this._button1.setString((param.btnTextL || xs.Tools.String.createString("auto_name_146")));
    // source line 1272, bytecode pc 128
    this._button1.setOnClickCallBack((param.callbackLeft || defaultcall));
    // source line 1273, bytecode pc 193
    this._button.setString((param.btnTextR || xs.Tools.String.createString("auto_name_76")));
    // source line 1274, bytecode pc 229
    this._button.setOnClickCallBack((param.callbackRight || defaultcall));
    // source line 1276, bytecode pc 255
    (_width = this._ccbNode.getContentSize().width);
    // source line 1277, bytecode pc 283
    this._button.setPosition(((_width / 3) * 2));
    // source line 1278, bytecode pc 308
    this._button1.setPosition((_width / 3));
    // source line 1282, bytecode pc 360
    this._button.setTouchPriority((xs.Cfg.Scene.CommonScene.Dialog.priority - 2));
    // source line 1283, bytecode pc 412
    this._button1.setTouchPriority((xs.Cfg.Scene.CommonScene.Dialog.priority - 2));
},
    getButtonLeft: function() {
    // source line 1286, bytecode pc 6
    return this._button1;
}
}));
// source line 1289, bytecode pc 2564
(xs.DetailDialogComponent.createDStyleK = function(params) {
    var obj;
    // source line 1290, bytecode pc 23
    (obj = new xs.DetailDialogComponent.DStyleK());
    if ((obj && obj.initWithData(params))) {
        // source line 1292, bytecode pc 59
        return obj;
    }
    // source line 1294, bytecode pc 61
    return null;
});
// source line 1371, bytecode pc 2830
(xs.DetailDialogComponent.DStyleL = xs.DetailDialogComponent.DWidget.extend({
    loadCCBI: function() {
    // source line 1300, bytecode pc 50
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.AchievementGeneralFateInfo1, this));
    // source line 1301, bytecode pc 86
    xs.Utils.Node.attachNodes(this, this._ccbNode);
    // source line 1302, bytecode pc 94
    (this._nameLabel = null);
    // source line 1303, bytecode pc 102
    (this._generalLabel = null);
    // source line 1304, bytecode pc 129
    (this._gradeIcon = this._ccbNode.getChildByTag(3));
    // source line 1305, bytecode pc 137
    (this._percentLabel = null);
    // source line 1306, bytecode pc 164
    (this._titleBg = this._ccbNode.getChildByTag(100));
    // source line 1307, bytecode pc 207
    xs.Utils.UI.replaceCcbByCfg(this._ccbNode, this.ccbCfg, this);
    // source line 1309, bytecode pc 227
    this._gradeIcon.setVisible(false);
    // source line 1310, bytecode pc 251
    (this._gradeIconPos = this._gradeIcon.getPosition());
},
    loadData: function(params) {
    var param, value, data, addType, allYuanFenValue, diffsize;
    // source line 1313, bytecode pc 18
    (param = (params || {}));
    // source line 1315, bytecode pc 56
    this._nameLabel.setString((param.nameText || "test"));
    // source line 1316, bytecode pc 94
    this._generalLabel.setString((param.generalText || "test"));
    // source line 1317, bytecode pc 147
    (value = (xs.Utils.isSet(param.percentValue) ? param.percentValue : 0));
    // source line 1322, bytecode pc 193
    (value = xs.Utils.parseFloatSafe((value * 100).toFixed(2)));
    if ((param.data != null)) {
        // source line 1324, bytecode pc 220
        (data = param.data);
        // source line 1325, bytecode pc 238
        (addType = data.getAdditionType());
        // source line 1326, bytecode pc 272
        xs.Utils.Node.safeRemoveChild(this._PropertyIcon);
        // source line 1327, bytecode pc 309
        (this._PropertyIcon = xs.Tools.UI.createEffectTypeSmallIcon(addType));
        // source line 1328, bytecode pc 334
        this._PropertyIcon.setPosition(this._gradeIconPos);
        // source line 1329, bytecode pc 375
        xs.Utils.Node.attachNodes(this._ccbNode, this._PropertyIcon);
        // source line 1331, bytecode pc 394
        (allYuanFenValue = (data.allYuanFenValue || 0));
        // source line 1332, bytecode pc 405
        (value = (value + allYuanFenValue));
    }
    // source line 1336, bytecode pc 450
    this._percentLabel.setString(((("+" + value) + "%") || "test"));
    if (param.size) {
        // source line 1342, bytecode pc 547
        (diffsize = xs.Tools.UI.changeLabelVertical(this._generalLabel, { verticalSpace: 1, styleString: "LS_shangzhenInf", width: (param.size.width * 0.95) }));
        // source line 1344, bytecode pc 580
        xs.DetailDialogComponent.AlgorithmLT(this._generalLabel, diffsize);
        // source line 1346, bytecode pc 613
        xs.DetailDialogComponent.CNCSByDiffSize(this._ccbNode, diffsize);
        // source line 1347, bytecode pc 646
        xs.DetailDialogComponent.AlgorithmLT(this._ccbNode, diffsize);
        // source line 1349, bytecode pc 721
        this._titleBg.setContentSize(cc.size((param.size.width - 8), this._titleBg.getContentSize().height));
    }
},
    ccbCfg: [
        { tag: 1, type: "ls", name: "_nameLabel", id: "LS_yuanfenInf2" },
        { tag: 2, type: "ls", name: "_generalLabel", id: "LS_shangzhenInf" },
        { tag: 4, type: "ls", name: "_percentLabel", id: "LS_mainUI4" },
        { tag: 10, type: "ls", id: "LS_SXJC", stringId: "auto_name_368" }
    ]
}));
// source line 1375, bytecode pc 2851
(xs.DetailDialogComponent.createDStyleL = function(params) {
    var obj;
    // source line 1376, bytecode pc 23
    (obj = new xs.DetailDialogComponent.DStyleL());
    if ((obj && obj.initWithData(params))) {
        // source line 1378, bytecode pc 59
        return obj;
    }
    // source line 1380, bytecode pc 61
    return null;
});
// source line 1448, bytecode pc 3117
(xs.DetailDialogComponent.DStyleM = xs.DetailDialogComponent.DWidget.extend({
    loadCCBI: function() {
    // source line 1386, bytecode pc 50
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.AchievementGeneralFateInfo2, this));
    // source line 1387, bytecode pc 86
    xs.Utils.Node.attachNodes(this, this._ccbNode);
    // source line 1388, bytecode pc 94
    (this._nameLabel = null);
    // source line 1389, bytecode pc 102
    (this._generalLabel = null);
    // source line 1390, bytecode pc 129
    (this._gradeIcon = this._ccbNode.getChildByTag(3));
    // source line 1391, bytecode pc 137
    (this._percentLabel = null);
    // source line 1392, bytecode pc 164
    (this._titleBg = this._ccbNode.getChildByTag(100));
    // source line 1394, bytecode pc 207
    xs.Utils.UI.replaceCcbByCfg(this._ccbNode, this.ccbCfg, this);
    // source line 1396, bytecode pc 231
    (this._gradeIconPos = this._gradeIcon.getPosition());
},
    loadData: function(params) {
    var param, value, data, addType, diffsize;
    // source line 1399, bytecode pc 18
    (param = (params || {}));
    // source line 1401, bytecode pc 56
    this._nameLabel.setString((param.nameText || " "));
    // source line 1402, bytecode pc 94
    this._generalLabel.setString((param.generalText || " "));
    // source line 1403, bytecode pc 113
    (value = (param.percentValue || 0));
    // source line 1405, bytecode pc 159
    (value = xs.Utils.floorSafe((value * 100).toFixed(2)));
    // source line 1406, bytecode pc 204
    this._percentLabel.setString(((("+" + value) + "%") || "test"));
    if ((param.data != null)) {
        // source line 1408, bytecode pc 231
        (data = param.data);
        // source line 1409, bytecode pc 249
        (addType = data.getAdditionType());
        // source line 1410, bytecode pc 283
        xs.Utils.Node.safeRemoveChild(this._PropertyIcon);
        // source line 1411, bytecode pc 320
        (this._PropertyIcon = xs.Tools.UI.createEffectTypeSmallIcon(addType));
        // source line 1412, bytecode pc 345
        this._PropertyIcon.setPosition(this._gradeIconPos);
        // source line 1413, bytecode pc 386
        xs.Utils.Node.attachNodes(this._ccbNode, this._PropertyIcon);
    }
    if (param.size) {
        // source line 1419, bytecode pc 483
        (diffsize = xs.Tools.UI.changeLabelVertical(this._generalLabel, { verticalSpace: 1, styleString: "LS_shangzhenInf", width: (param.size.width * 0.95) }));
        // source line 1421, bytecode pc 516
        xs.DetailDialogComponent.AlgorithmLT(this._generalLabel, diffsize);
        // source line 1423, bytecode pc 549
        xs.DetailDialogComponent.CNCSByDiffSize(this._ccbNode, diffsize);
        // source line 1424, bytecode pc 582
        xs.DetailDialogComponent.AlgorithmLT(this._ccbNode, diffsize);
        // source line 1426, bytecode pc 657
        this._titleBg.setContentSize(cc.size((param.size.width - 8), this._titleBg.getContentSize().height));
    }
},
    ccbCfg: [
        { tag: 1, type: "ls", name: "_nameLabel", id: "LS_yuanfenInf1" },
        { tag: 2, type: "ls", name: "_generalLabel", id: "LS_shangzhenInf" },
        { tag: 4, type: "ls", name: "_percentLabel", id: "LS_mainUI4" },
        { tag: 10, type: "ls", id: "LS_yuanfenInf1", stringId: "auto_name_369" }
    ]
}));
// source line 1452, bytecode pc 3138
(xs.DetailDialogComponent.createDStyleM = function(params) {
    var obj;
    // source line 1453, bytecode pc 23
    (obj = new xs.DetailDialogComponent.DStyleM());
    if ((obj && obj.initWithData(params))) {
        // source line 1455, bytecode pc 59
        return obj;
    }
    // source line 1457, bytecode pc 61
    return null;
});
// source line 1576, bytecode pc 3257
(xs.DetailDialogComponent.DStyleN = xs.DetailDialogComponent.DWidget.extend({
    loadCCBI: function() {
    var pos;
    // source line 1463, bytecode pc 50
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.DetailDialogStyle11, this));
    // source line 1464, bytecode pc 86
    xs.Utils.Node.attachNodes(this, this._ccbNode);
    // source line 1466, bytecode pc 112
    (this._left = this._ccbNode.getChildByTag(1));
    // source line 1467, bytecode pc 139
    (this._middle = this._ccbNode.getChildByTag(2));
    // source line 1468, bytecode pc 166
    (this._right = this._ccbNode.getChildByTag(3));
    // source line 1474, bytecode pc 200
    (pos = this._ccbNode.getChildByTag(1).getPosition());
    // source line 1475, bytecode pc 233
    this._ccbNode.getChildByTag(1).setVisible(false);
    // source line 1476, bytecode pc 278
    (this._leftbutton = xs.Views.Btn.createWithString("Btn_btn2", "left"));
    // source line 1477, bytecode pc 300
    this._leftbutton.setPosition(pos);
    // source line 1478, bytecode pc 341
    xs.Utils.Node.attachNodes(this._ccbNode, this._leftbutton);
    // source line 1481, bytecode pc 376
    (pos = this._ccbNode.getChildByTag(2).getPosition());
    // source line 1482, bytecode pc 410
    this._ccbNode.getChildByTag(2).setVisible(false);
    // source line 1483, bytecode pc 455
    (this._middlebutton = xs.Views.Btn.createWithString("Btn_btn2", "middle"));
    // source line 1484, bytecode pc 477
    this._middlebutton.setPosition(pos);
    // source line 1485, bytecode pc 518
    xs.Utils.Node.attachNodes(this._ccbNode, this._middlebutton);
    // source line 1488, bytecode pc 553
    (pos = this._ccbNode.getChildByTag(3).getPosition());
    // source line 1489, bytecode pc 587
    this._ccbNode.getChildByTag(3).setVisible(false);
    // source line 1490, bytecode pc 632
    (this._rightbutton = xs.Views.Btn.createWithString("Btn_btn2", "right"));
    // source line 1491, bytecode pc 654
    this._rightbutton.setPosition(pos);
    // source line 1492, bytecode pc 695
    xs.Utils.Node.attachNodes(this._ccbNode, this._rightbutton);
    // source line 1494, bytecode pc 748
    this._rightbutton.setPosition(cc.p(pos.x, pos.y));
    // source line 1496, bytecode pc 783
    (pos = this._ccbNode.getChildByTag(4).getPosition());
    // source line 1497, bytecode pc 817
    this._ccbNode.getChildByTag(4).setVisible(false);
    // source line 1498, bytecode pc 862
    (this._unuse = xs.Views.Btn.createWithString("Btn_btn2", "unUse"));
    // source line 1499, bytecode pc 884
    this._unuse.setPosition(pos);
    // source line 1500, bytecode pc 925
    xs.Utils.Node.attachNodes(this._ccbNode, this._unuse);
},
    loadData: function(params) {
    var param, numButton, buttronArray, _width, _unitWidth, _edgeWidth, i;
    // source line 1505, bytecode pc 18
    (param = (params || {}));
    // source line 1508, bytecode pc 56
    this._leftbutton.setString((param.btnTextL || "left"));
    // source line 1509, bytecode pc 94
    this._middlebutton.setString((param.btnTextM || "middle"));
    // source line 1510, bytecode pc 132
    this._rightbutton.setString((param.btnTextR || "right"));
    // source line 1511, bytecode pc 170
    this._unuse.setString((param.btnTextUnUse || "unUse"));
    // source line 1513, bytecode pc 208
    this._leftbutton.setOnClickCallBack((param.callbackLeft || function() {
}));
    // source line 1514, bytecode pc 246
    this._middlebutton.setOnClickCallBack((param.callbackMiddle || function() {
}));
    // source line 1515, bytecode pc 284
    this._rightbutton.setOnClickCallBack((param.callbackRight || function() {
}));
    // source line 1516, bytecode pc 322
    this._unuse.setOnClickCallBack((param.callbackUnUse || function() {
}));
    // source line 1518, bytecode pc 328
    (numButton = 4);
    // source line 1519, bytecode pc 347
    (buttronArray = new buckets.LinkedList());
    // source line 1521, bytecode pc 369
    buttronArray.add(this._unuse);
    // source line 1522, bytecode pc 391
    buttronArray.add(this._leftbutton);
    // source line 1523, bytecode pc 413
    buttronArray.add(this._middlebutton);
    // source line 1524, bytecode pc 435
    buttronArray.add(this._rightbutton);
    if ((param.callbackUnUse == null)) {
        // source line 1527, bytecode pc 470
        this._unuse.setVisible(false);
        // source line 1528, bytecode pc 484
        (numButton = (+numButton - 1));
        // source line 1529, bytecode pc 507
        buttronArray.remove(this._unuse);
    }
    if ((param.callbackLeft == null)) {
        // source line 1532, bytecode pc 542
        this._leftbutton.setVisible(false);
        // source line 1533, bytecode pc 556
        (numButton = (+numButton - 1));
        // source line 1534, bytecode pc 579
        buttronArray.remove(this._leftbutton);
    }
    if ((param.callbackMiddle == null)) {
        // source line 1537, bytecode pc 614
        this._middlebutton.setVisible(false);
        // source line 1538, bytecode pc 628
        (numButton = (+numButton - 1));
        // source line 1539, bytecode pc 651
        buttronArray.remove(this._middlebutton);
    }
    if ((param.callbackRight == null)) {
        // source line 1542, bytecode pc 686
        this._rightbutton.setVisible(false);
        // source line 1543, bytecode pc 700
        (numButton = (+numButton - 1));
        // source line 1544, bytecode pc 723
        buttronArray.remove(this._rightbutton);
    }
    // source line 1546, bytecode pc 749
    (_width = this._ccbNode.getContentSize().width);
    // source line 1547, bytecode pc 785
    (_unitWidth = buttronArray.elementAtIndex(0).getContentSize().width);
    // source line 1548, bytecode pc 817
    (_edgeWidth = ((_width - (_unitWidth * buttronArray.size())) / (numButton + 1)));
    // source line 1549, bytecode pc 822
    (i = 0);
    while ((i < numButton)) {
        // source line 1551, bytecode pc 887
        buttronArray.elementAtIndex(i).setAnchorPoint(cc.p(0.5, 0.5));
        // source line 1552, bytecode pc 945
        buttronArray.elementAtIndex(i).setPositionX((((_edgeWidth + (_unitWidth / 2)) * (i + 1)) + ((i * _unitWidth) / 2)));
        // source line 1549, bytecode pc 959
        (i = (+i + 1));
    }
    // source line 1558, bytecode pc 1025
    this._leftbutton.setTouchPriority((xs.Cfg.Scene.CommonScene.Dialog.priority - 2));
    // source line 1559, bytecode pc 1077
    this._middlebutton.setTouchPriority((xs.Cfg.Scene.CommonScene.Dialog.priority - 2));
    // source line 1560, bytecode pc 1129
    this._rightbutton.setTouchPriority((xs.Cfg.Scene.CommonScene.Dialog.priority - 2));
    // source line 1561, bytecode pc 1181
    this._unuse.setTouchPriority((xs.Cfg.Scene.CommonScene.Dialog.priority - 2));
},
    getButtonLeft: function() {
    // source line 1564, bytecode pc 6
    return this._leftbutton;
},
    getButtonRight: function() {
    // source line 1567, bytecode pc 6
    return this._rightbutton;
},
    getButtonMiddle: function() {
    // source line 1570, bytecode pc 6
    return this._middlebutton;
},
    setButtonCallback: function(btn, callback) {
    // source line 1573, bytecode pc 16
    btn.setVisible(true);
    // source line 1574, bytecode pc 35
    btn.setOnClickCallBack(callback);
},
    getButtonUnUse: function() {
    // source line 1577, bytecode pc 6
    return this._unuse;
}
}));
// source line 1580, bytecode pc 3278
(xs.DetailDialogComponent.createDStyleN = function(params) {
    var obj;
    // source line 1581, bytecode pc 23
    (obj = new xs.DetailDialogComponent.DStyleN());
    if ((obj && obj.initWithData(params))) {
        // source line 1583, bytecode pc 59
        return obj;
    }
    // source line 1585, bytecode pc 61
    return null;
});
// source line 1722, bytecode pc 3498
(xs.DetailDialogComponent.DStyleO = xs.DetailDialogComponent.DWidget.extend({
    loadCCBI: function() {
    // source line 1591, bytecode pc 50
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.DetailDialogStyleO, this));
    // source line 1592, bytecode pc 86
    xs.Utils.Node.attachNodes(this, this._ccbNode);
    // source line 1593, bytecode pc 112
    (this._AchieveFlag = this._ccbNode.getChildByTag(1));
    // source line 1594, bytecode pc 139
    (this._Icon = this._ccbNode.getChildByTag(2));
    // source line 1595, bytecode pc 166
    (this._NameLab = this._ccbNode.getChildByTag(4));
    // source line 1596, bytecode pc 193
    (this._ProcessWidth = this._ccbNode.getChildByTag(3));
    // source line 1597, bytecode pc 220
    (this._DescLab = this._ccbNode.getChildByTag(5));
    // source line 1598, bytecode pc 247
    (this._processStatusStr = this._ccbNode.getChildByTag(6));
    // source line 1599, bytecode pc 274
    (this._jumpBtn = this._ccbNode.getChildByTag(7));
    // source line 1601, bytecode pc 317
    xs.Utils.UI.replaceCcbByCfg(this._ccbNode, this.ccbCfg, this);
    // source line 1603, bytecode pc 337
    this._AchieveFlag.setVisible(false);
    // source line 1606, bytecode pc 361
    this._ProcessWidth.setScaleX(0.01);
    // source line 1607, bytecode pc 381
    this._ProcessWidth.setVisible(false);
},
    loadData: function(params) {
    var param, _data, proScaleX, _progressed_num, _progress_num, proStatusStr, _itemNum, itemModel, pos, icon, _Source, _oldpos, _result;
    // source line 1610, bytecode pc 18
    (param = (params || {}));
    if ((param.surrenderData != null)) {
        // source line 1613, bytecode pc 45
        (_data = param.surrenderData);
        // source line 1615, bytecode pc 110
        this._NameLab.setString((xs.Factorys.String.create(_data.surrender_title) || " "));
        // source line 1616, bytecode pc 175
        this._DescLab.setString((xs.Factorys.String.create(_data.surrender_desc) || " "));
        // source line 1618, bytecode pc 207
        (proScaleX = ((_data.progressed_num / _data.progress_num) || 0.01));
        if ((_data.progressed_num > 0)) {
            // source line 1620, bytecode pc 242
            this._ProcessWidth.setVisible(true);
        }
        if ((proScaleX > 1)) {
            // source line 1623, bytecode pc 257
            (proScaleX = 1);
        }
        // source line 1625, bytecode pc 279
        this._ProcessWidth.setScaleX(proScaleX);
        // source line 1634, bytecode pc 291
        (_progressed_num = _data.progressed_num);
        // source line 1635, bytecode pc 303
        (_progress_num = _data.progress_num);
        if ((parseInt(_progressed_num) > parseInt(_progress_num))) {
            // source line 1637, bytecode pc 352
            (_progressed_num = _progress_num);
        }
        // source line 1639, bytecode pc 369
        (proStatusStr = ((_progressed_num + "/") + _progress_num));
        // source line 1640, bytecode pc 391
        this._processStatusStr.setString(proStatusStr);
    }
    if ((param.surrenderData.surrender_id != null)) {
        // source line 1645, bytecode pc 416
        (_itemNum = 1);
        if ((_data.govern != null)) {
            // source line 1647, bytecode pc 463
            (_itemNum = parseInt(_data.govern.num));
        }
        // source line 1651, bytecode pc 528
        (itemModel = xs.Models.PlayerAttr.createWithJson({ id: xs.Models.AddPlayerInfoType_TeamPoint, num: _itemNum }));
        // source line 1653, bytecode pc 549
        (pos = this._Icon.getPosition());
        // source line 1654, bytecode pc 567
        (icon = itemModel.createIcon_GradeAndNum());
        // source line 1655, bytecode pc 586
        icon.setPosition(pos);
        // source line 1656, bytecode pc 624
        xs.Utils.Node.attachNodes(this._ccbNode, icon);
        if ((_data.surrender_status == 1)) {
            // source line 1659, bytecode pc 656
            icon.setComplete(true);
        }
        // source line 1661, bytecode pc 675
        (_Source = param.surrenderData.source[0]);
        if (_Source) {
            // source line 1664, bytecode pc 704
            (_oldpos = this._jumpBtn.getPosition());
            // source line 1665, bytecode pc 743
            (this._jumpBtn = xs.Views.Btn.createByStyleId("BS_Btn3"));
            // source line 1667, bytecode pc 794
            this._jumpBtn.setString(xs.Tools.String.createString("surrender_str_btnCheck"));
            if ((param.index == 0)) {
                // source line 1669, bytecode pc 838
                this._jumpBtn.setGuideTag(xs.Constant_GuideTag_DlgDetail_Surrender);
            }
            // source line 1673, bytecode pc 860
            this._jumpBtn.setPosition(_oldpos);
            // source line 1674, bytecode pc 901
            xs.Utils.Node.attachNodes(this._ccbNode, this._jumpBtn);
            // source line 1675, bytecode pc 953
            this._jumpBtn.setTouchPriority((xs.Cfg.Scene.CommonScene.Dialog.priority - 2));
            // source line 1676, bytecode pc 970
            (param.type = _Source.source_type);
            // source line 1677, bytecode pc 985
            (param.button = this._jumpBtn);
            // source line 1678, bytecode pc 1002
            (param.map_id = _Source.map_id);
            // source line 1679, bytecode pc 1019
            (param.dungeonId = _Source.param_value);
            // source line 1680, bytecode pc 1036
            (param.pkid = _Source.param_value);
            // source line 1681, bytecode pc 1053
            (param.generalId = _Source.param_value);
            // source line 1683, bytecode pc 1082
            (_result = xs.DetailDialogComponent.CommonJumpCallback(param));
            // source line 1684, bytecode pc 1120
            this._jumpBtn.setOnClickCallBack((_result._callback || function() {
}));
        } else {
            // source line 1688, bytecode pc 1145
            this._jumpBtn.setVisible(false);
        }
    }
},
    ccbCfg: [
        { tag: 4, type: "ls", name: "_NameLab", id: "LS_wujiangInf1" },
        { tag: 5, type: "ls", name: "_DescLab", id: "LS_liebiaoInf" },
        { tag: 6, type: "ls", name: "_processStatusStr", id: "LS_EXPInf" }
    ]
}));
// source line 1725, bytecode pc 3519
(xs.DetailDialogComponent.createDStyleO = function(params) {
    var obj;
    // source line 1726, bytecode pc 23
    (obj = new xs.DetailDialogComponent.DStyleO());
    if ((obj && obj.initWithData(params))) {
        // source line 1728, bytecode pc 59
        return obj;
    }
    // source line 1730, bytecode pc 61
    return null;
});
// source line 1808, bytecode pc 3796
(xs.DetailDialogComponent.DStyleP = xs.DetailDialogComponent.DWidget.extend({
    loadCCBI: function() {
    var pos;
    // source line 1736, bytecode pc 50
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.DetailDialogStyleP, this));
    // source line 1737, bytecode pc 86
    xs.Utils.Node.attachNodes(this, this._ccbNode);
    // source line 1738, bytecode pc 129
    xs.Utils.UI.replaceCcbByCfg(this._ccbNode, this.ccbCfg, this);
    // source line 1740, bytecode pc 156
    (this._NotAchieveFlag = this._ccbNode.getChildByTag(3));
    // source line 1741, bytecode pc 183
    (this._AchieveFlag = this._ccbNode.getChildByTag(4));
    // source line 1742, bytecode pc 209
    (this._Icon = this._ccbNode.getChildByTag(1));
    // source line 1743, bytecode pc 236
    (this._NameLab = this._ccbNode.getChildByTag(2));
    // source line 1744, bytecode pc 263
    (this._DescLab = this._ccbNode.getChildByTag(5));
    // source line 1745, bytecode pc 305
    this._DescLab.setDimensions(cc.size(340, 55));
    // source line 1746, bytecode pc 326
    (pos = this._DescLab.getPosition());
    // source line 1747, bytecode pc 382
    this._DescLab.setPosition(cc.p(pos.x, (pos.y - 10)));
    // source line 1752, bytecode pc 402
    this._AchieveFlag.setVisible(false);
    // source line 1753, bytecode pc 422
    this._Icon.setVisible(false);
},
    loadData: function(params) {
    var param, itemModel, pos, head, btn;
    // source line 1756, bytecode pc 18
    (param = (params || {}));
    if ((param.itemid != null)) {
        // source line 1758, bytecode pc 72
        (itemModel = xs.Models.Item.createWithBase(param.itemid));
        // source line 1761, bytecode pc 116
        this._NameLab.setString((itemModel.getNameString() || " "));
        // source line 1762, bytecode pc 160
        this._DescLab.setString((itemModel.getDescString() || " "));
        if ((param.status == 1)) {
            // source line 1765, bytecode pc 195
            this._AchieveFlag.setVisible(true);
            // source line 1766, bytecode pc 215
            this._NotAchieveFlag.setVisible(false);
        }
        // source line 1769, bytecode pc 236
        (pos = this._Icon.getPosition());
        // source line 1774, bytecode pc 254
        (head = itemModel.createHeadView());
        // source line 1775, bytecode pc 288
        (btn = xs.Views.Btn.createInvisibleWithChild(head));
        // source line 1776, bytecode pc 307
        btn.setPosition(pos);
        // source line 1777, bytecode pc 356
        btn.setTouchPriority((xs.Cfg.Scene.CommonScene.Dialog.priority - 3));
        // source line 1778, bytecode pc 393
        btn.setOnClickCallBack(this.detailCallback.bind(itemModel));
        // source line 1779, bytecode pc 410
        btn.setSwallowTouch(false);
        // source line 1780, bytecode pc 427
        btn.setZoomOnTouchDown(false);
        // source line 1781, bytecode pc 465
        xs.Utils.Node.attachNodes(this._ccbNode, btn);
    }
},
    detailCallback: function() {
    // source line 1787, bytecode pc 45
    xs.Views.Mgr.showDialogByName("priviewGiftPackDialog", this.getId());
},
    ccbCfg: [
        { tag: 2, type: "ls", name: "_NameLab", id: "LS_wujiangInf1" },
        { tag: 5, type: "ls", name: "_DescLab", id: "LS_liebiaoInf" },
        { tag: 3, type: "ls", id: "LS_weidacheng", stringId: "auto_name_370" },
        { tag: 4, type: "ls", id: "LS_SXJC", stringId: "auto_name_100" }
    ]
}));
// source line 1812, bytecode pc 3817
(xs.DetailDialogComponent.createDStyleP = function(params) {
    var obj;
    // source line 1813, bytecode pc 23
    (obj = new xs.DetailDialogComponent.DStyleP());
    if ((obj && obj.initWithData(params))) {
        // source line 1815, bytecode pc 59
        return obj;
    }
    // source line 1817, bytecode pc 61
    return null;
});
// source line 1909, bytecode pc 3990
(xs.DetailDialogComponent.DStyleSwitch = xs.DetailDialogComponent.DWidget.extend({
    loadCCBI: function() {
    // source line 1825, bytecode pc 50
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.DetailDialogStyle3, this));
    // source line 1826, bytecode pc 86
    xs.Utils.Node.attachNodes(this, this._ccbNode);
    // source line 1828, bytecode pc 113
    (this._Icon = this._ccbNode.getChildByTag(2));
    // source line 1829, bytecode pc 140
    (this._NameLab = this._ccbNode.getChildByTag(4));
    // source line 1831, bytecode pc 167
    (this._DescLab = this._ccbNode.getChildByTag(5));
    // source line 1833, bytecode pc 194
    (this._jumpBtn = this._ccbNode.getChildByTag(7));
    // source line 1835, bytecode pc 237
    xs.Utils.UI.replaceCcbByCfg(this._ccbNode, this.ccbCfg, this);
    // source line 1838, bytecode pc 257
    this._Icon.setVisible(false);
},
    loadData: function(params) {
    var param, itemModel, pos, head, _oldpos;
    // source line 1844, bytecode pc 18
    (param = (params || {}));
    if ((param.itemid != null)) {
        // source line 1846, bytecode pc 72
        (itemModel = xs.Models.Item.createWithBase(param.itemid));
        // source line 1847, bytecode pc 96
        (param.status = (param.status || 0));
        // source line 1851, bytecode pc 117
        (pos = this._Icon.getPosition());
        // source line 1852, bytecode pc 135
        (head = itemModel.createHeadView());
        // source line 1853, bytecode pc 154
        head.setPosition(pos);
        // source line 1854, bytecode pc 192
        xs.Utils.Node.attachNodes(this._ccbNode, head);
        // source line 1856, bytecode pc 213
        (_oldpos = this._jumpBtn.getPosition());
        // source line 1857, bytecode pc 252
        (this._jumpBtn = xs.Views.Btn.createByStyleId("BS_Btn3"));
        // source line 1858, bytecode pc 303
        this._jumpBtn.setString(xs.Tools.String.createString("txt_chenfu_switch"));
        // source line 1859, bytecode pc 325
        this._jumpBtn.setPosition(_oldpos);
        // source line 1860, bytecode pc 366
        xs.Utils.Node.attachNodes(this._ccbNode, this._jumpBtn);
        // source line 1861, bytecode pc 418
        this._jumpBtn.setTouchPriority((xs.Cfg.Scene.CommonScene.Dialog.priority - 2));
        if ((param.status == 0)) {
            // source line 1865, bytecode pc 484
            this._NameLab.setString(xs.Tools.String.createString("txt_chenfu_normal"));
            // source line 1866, bytecode pc 535
            this._DescLab.setString(xs.Tools.String.createString("txt_chenfu_normal_content"));
            // source line 1867, bytecode pc 544
            (this.type = 100);
        } else {
            // source line 1871, bytecode pc 600
            this._NameLab.setString(xs.Tools.String.createString("txt_chenfu_awake"));
            // source line 1872, bytecode pc 651
            this._DescLab.setString(xs.Tools.String.createString("txt_chenfu_awake_content"));
            // source line 1873, bytecode pc 660
            (this.type = 101);
        }
        // source line 1878, bytecode pc 675
        (this.listener = param.listener);
        if (this.listener) {
            // source line 1894, bytecode pc 723
            this._jumpBtn.setOnClickCallBack(function() {
    if ((this.type == 100)) {
        // source line 1884, bytecode pc 33
        this.listener.onSwitchSurrender(true);
    } else {
        if ((this.type == 101)) {
            // source line 1889, bytecode pc 72
            this.listener.onSwitchSurrender(false);
        }
    }
}.bind(this));
        }
    }
},
    ccbCfg: [
        { tag: 4, type: "ls", name: "_NameLab", id: "LS_wujiangInf1" },
        { tag: 5, type: "ls", name: "_DescLab", id: "LS_liebiaoInf" }
    ]
}));
// source line 1912, bytecode pc 4011
(xs.DetailDialogComponent.createDStyleSwitch = function(params) {
    var obj;
    // source line 1913, bytecode pc 23
    (obj = new xs.DetailDialogComponent.DStyleSwitch());
    if ((obj && obj.initWithData(params))) {
        // source line 1915, bytecode pc 59
        return obj;
    }
    // source line 1917, bytecode pc 61
    return null;
});
// source line 2036, bytecode pc 4100
(xs.DetailDialogComponent.DStyleQ = xs.DetailDialogComponent.DWidget.extend({
    loadCCBI: function() {
    // source line 1924, bytecode pc 50
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.DetailDialogStyleI, this));
    // source line 1925, bytecode pc 86
    xs.Utils.Node.attachNodes(this, this._ccbNode);
    // source line 1926, bytecode pc 113
    (this._bg = this._ccbNode.getChildByTag(100));
},
    loadData: function(params) {
    var param;
    // source line 1929, bytecode pc 18
    (param = (params || {}));
    // source line 1932, bytecode pc 44
    (this._data = (param.fateData || []));
    // source line 1933, bytecode pc 59
    (this._generalData = param.generalData);
    // source line 1934, bytecode pc 74
    (this._otherPlayerId = param.otherPlayerId);
    // source line 1935, bytecode pc 89
    (this._otherPlayerData = param.otherPlayerData);
    // source line 1936, bytecode pc 134
    (this._scrollViewSize = cc.size(490, ((61 * this._data.length) + 15)));
    // source line 1946, bytecode pc 154
    this.showWidget(this._data);
},
    showWidget: function(data) {
    var fateArray, height, _arrView, _instance, evolutionItem, allYuanFenValue, i, _percentValue, _flag, tmpView, fateInfo;
    // source line 1949, bytecode pc 6
    (fateArray = data);
    // source line 1950, bytecode pc 11
    (height = 0);
    // source line 1951, bytecode pc 20
    (_arrView = []);
    // source line 1953, bytecode pc 69
    (_instance = xs.Profile.GameData.Mgr.getInstance(this._otherPlayerId, this._otherPlayerData));
    // source line 1954, bytecode pc 110
    (evolutionItem = _instance.EvolutionInfos.getByGeneralId(this._generalData.getId()));
    // source line 1955, bytecode pc 115
    (allYuanFenValue = 0);
    if (evolutionItem) {
        // source line 1958, bytecode pc 141
        (allYuanFenValue = evolutionItem.getAllYuanVaule());
    }
    // source line 1962, bytecode pc 146
    (i = 0);
    while ((i < data.length)) {
        // source line 1964, bytecode pc 209
        (_percentValue = _instance.Fate.getAttrPer(fateArray[i], fateArray[i].getAdditionType(), this._generalData));
        // source line 1967, bytecode pc 236
        xs.log_dqy(("_percentValue is " + _percentValue));
        // source line 1970, bytecode pc 274
        (_flag = _instance.Fate.isLightedInGeneral(fateArray[i], this._generalData));
        // source line 1973, bytecode pc 294
        (fateArray[i].allYuanFenValue = allYuanFenValue);
        if (_flag) {
            // source line 1978, bytecode pc 324
            (fateInfo = fateArray[i].getDescString());
            if ((allYuanFenValue > 0)) {
                // source line 1981, bytecode pc 357
                (fateInfo = (((fateInfo + "(+") + allYuanFenValue) + "%)"));
            }
            // source line 1987, bytecode pc 451
            (tmpView = xs.DetailDialogComponent.createDStyleL({
    nameText: fateArray[i].getNameString(),
    generalText: fateInfo,
    percentValue: _percentValue,
    data: fateArray[i],
    size: this._scrollViewSize
}));
        } else {
            // source line 1999, bytecode pc 478
            (fateInfo = fateArray[i].getDescString());
            if ((allYuanFenValue > 0)) {
                // source line 2001, bytecode pc 511
                (fateInfo = (((fateInfo + "(+") + allYuanFenValue) + "%)"));
            }
            // source line 2008, bytecode pc 605
            (tmpView = xs.DetailDialogComponent.createDStyleM({
    nameText: fateArray[i].getNameString(),
    generalText: fateInfo,
    percentValue: _percentValue,
    data: fateArray[i],
    size: this._scrollViewSize
}));
        }
        // source line 2018, bytecode pc 632
        (height = (height + tmpView.getViewSize().height));
        // source line 2019, bytecode pc 651
        _arrView.push(tmpView);
        // source line 1962, bytecode pc 665
        (i = (+i + 1));
    }
    // source line 2023, bytecode pc 741
    (this._scrollViewSize = cc.size(this._scrollViewSize.width, ((height + (this._data.length * 5)) + 15)));
    // source line 2024, bytecode pc 781
    (this._scrollView = xs.Views.ScrollView.create(this._scrollViewSize));
    // source line 2025, bytecode pc 821
    this._scrollView.setPosition(cc.p(0, 10));
    // source line 2026, bytecode pc 862
    xs.Utils.Node.attachNodes(this._ccbNode, this._scrollView);
    // source line 2030, bytecode pc 867
    (i = 0);
    while ((i < _arrView.length)) {
        // source line 2031, bytecode pc 899
        this._scrollView.addChildrenView(_arrView[i]);
        // source line 2030, bytecode pc 913
        (i = (+i + 1));
    }
    // source line 2034, bytecode pc 952
    this.changeCCBNodeSize(this._scrollViewSize);
},
    changeCCBNodeSize: function(size) {
    // source line 2040, bytecode pc 21
    this._ccbNode.setContentSize(size);
    // source line 2043, bytecode pc 43
    this._bg.setContentSize(size);
}
}));
// source line 2047, bytecode pc 4121
(xs.DetailDialogComponent.createDStyleQ = function(params) {
    var obj;
    // source line 2048, bytecode pc 23
    (obj = new xs.DetailDialogComponent.DStyleQ());
    if ((obj && obj.initWithData(params))) {
        // source line 2050, bytecode pc 59
        return obj;
    }
    // source line 2052, bytecode pc 61
    return null;
});
// source line 2129, bytecode pc 4210
(xs.DetailDialogComponent.DStyleQ1 = xs.DetailDialogComponent.DWidget.extend({
    loadCCBI: function() {
    // source line 2057, bytecode pc 50
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.DetailDialogStyleI, this));
    // source line 2058, bytecode pc 86
    xs.Utils.Node.attachNodes(this, this._ccbNode);
    // source line 2059, bytecode pc 113
    (this._bg = this._ccbNode.getChildByTag(100));
},
    loadData: function(params) {
    var param;
    // source line 2062, bytecode pc 18
    (param = (params || {}));
    // source line 2063, bytecode pc 44
    (this._data = (param.fateData || []));
    // source line 2064, bytecode pc 59
    (this._generalData = param.generalData);
    // source line 2065, bytecode pc 74
    (this._otherPlayerId = param.otherPlayerId);
    // source line 2066, bytecode pc 89
    (this._otherPlayerData = param.otherPlayerData);
    // source line 2067, bytecode pc 134
    (this._scrollViewSize = cc.size(490, ((61 * this._data.length) + 15)));
    // source line 2069, bytecode pc 154
    this.showWidget(this._data);
},
    showWidget: function(data) {
    var fateArray, height, _arrView, i, _instance, _percentValue, _flag, _isHaveThisGoddess, tmpView;
    // source line 2072, bytecode pc 6
    (fateArray = data);
    // source line 2073, bytecode pc 11
    (height = 0);
    // source line 2074, bytecode pc 20
    (_arrView = []);
    // source line 2075, bytecode pc 25
    (i = 0);
    while ((i < data.length)) {
        // source line 2076, bytecode pc 80
        (_instance = xs.Profile.GameData.Mgr.getInstance(this._otherPlayerId, this._otherPlayerData));
        // source line 2077, bytecode pc 137
        (_percentValue = _instance.GoddessFate.getAttrPer(fateArray[i], fateArray[i].getAdditionType(), this._generalData));
        // source line 2078, bytecode pc 175
        (_flag = _instance.GoddessFate.isLightedInGoddess(fateArray[i], this._generalData));
        // source line 2079, bytecode pc 216
        (_isHaveThisGoddess = _instance.Goddess.isHaveGoddess_GoddessId(this._generalData.getId()));
        // source line 2080, bytecode pc 243
        xs.log_zhz("_isHaveThisGoddess", _isHaveThisGoddess);
        if (_isHaveThisGoddess) {
            if (_flag) {
                // source line 2088, bytecode pc 368
                (tmpView = xs.DetailDialogComponent.createDStyleL({
    nameText: fateArray[i].getNameString(),
    generalText: fateArray[i].getDescString(),
    percentValue: _percentValue,
    data: fateArray[i],
    size: this._scrollViewSize
}));
            } else {
                // source line 2097, bytecode pc 482
                (tmpView = xs.DetailDialogComponent.createDStyleM({
    nameText: fateArray[i].getNameString(),
    generalText: fateArray[i].getDescString(),
    percentValue: _percentValue,
    data: fateArray[i],
    size: this._scrollViewSize
}));
            }
        } else {
            // source line 2106, bytecode pc 596
            (tmpView = xs.DetailDialogComponent.createDStyleM({
    nameText: fateArray[i].getNameString(),
    generalText: fateArray[i].getDescString(),
    percentValue: _percentValue,
    data: fateArray[i],
    size: this._scrollViewSize
}));
        }
        // source line 2111, bytecode pc 627
        (height = (height + tmpView.getViewSize().height));
        // source line 2112, bytecode pc 646
        _arrView.push(tmpView);
        // source line 2075, bytecode pc 660
        (i = (+i + 1));
    }
    // source line 2116, bytecode pc 736
    (this._scrollViewSize = cc.size(this._scrollViewSize.width, ((height + (this._data.length * 5)) + 15)));
    // source line 2117, bytecode pc 776
    (this._scrollView = xs.Views.ScrollView.create(this._scrollViewSize));
    // source line 2118, bytecode pc 816
    this._scrollView.setPosition(cc.p(0, 10));
    // source line 2119, bytecode pc 857
    xs.Utils.Node.attachNodes(this._ccbNode, this._scrollView);
    // source line 2123, bytecode pc 862
    (i = 0);
    while ((i < _arrView.length)) {
        // source line 2124, bytecode pc 894
        this._scrollView.addChildrenView(_arrView[i]);
        // source line 2123, bytecode pc 908
        (i = (+i + 1));
    }
    // source line 2127, bytecode pc 947
    this.changeCCBNodeSize(this._scrollViewSize);
},
    changeCCBNodeSize: function(size) {
    // source line 2133, bytecode pc 21
    this._ccbNode.setContentSize(size);
    // source line 2136, bytecode pc 43
    this._bg.setContentSize(size);
}
}));
// source line 2140, bytecode pc 4231
(xs.DetailDialogComponent.createDStyleQ1 = function(params) {
    var obj;
    // source line 2141, bytecode pc 23
    (obj = new xs.DetailDialogComponent.DStyleQ1());
    if ((obj && obj.initWithData(params))) {
        // source line 2143, bytecode pc 59
        return obj;
    }
    // source line 2145, bytecode pc 61
    return null;
});
// source line 2267, bytecode pc 4757
(xs.DetailDialogComponent.DStyleR = xs.DetailDialogComponent.DWidget.extend({
    loadCCBI: function() {
    // source line 2150, bytecode pc 50
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.DialogDetailStyleR, this));
    // source line 2151, bytecode pc 86
    xs.Utils.Node.attachNodes(this, this._ccbNode);
    // source line 2152, bytecode pc 129
    xs.Utils.UI.replaceCcbByCfg(this._ccbNode, this.ccbCfg, this);
    // source line 2153, bytecode pc 153
    (this._viewSize = this._ccbNode.getContentSize());
},
    loadData: function(params) {
    var _data, _dataNowTupo, _dataNextTupo, addType, _shuxing1IconPos1, _shuxing2IconPos2, _allChildren, j, _oldpos;
    // source line 2157, bytecode pc 50
    this._SkillNameLab1.setString(xs.Tools.String.createString("auto_name_371"));
    if ((params.generalData != null)) {
        // source line 2159, bytecode pc 77
        (_data = params.generalData);
        if ((_data.havaLieutenantAttrPlus() == true)) {
            // source line 2164, bytecode pc 143
            this._SkillNameLab2.setString((("【" + _data.getLieutenantAttrPlusName()) + "】"));
            // source line 2167, bytecode pc 163
            (_dataNowTupo = _data.getLieutenantAttrPlusEffects(true));
            // source line 2169, bytecode pc 196
            this._nowEffectNum.setString(_data.getBreachLevel());
            // source line 2171, bytecode pc 235
            this._shuxing1Num.setString((("+" + _data.ls_value) + "%"));
            // source line 2173, bytecode pc 255
            (_dataNextTupo = _data.getLieutenantAttrPlusEffects(false));
            if (_dataNextTupo) {
                // source line 2177, bytecode pc 298
                this._nextEffectNum.setString((_data.getBreachLevel() + 1));
                // source line 2178, bytecode pc 337
                this._shuxing2Num.setString((("+" + _dataNextTupo.firstAttr) + "%"));
            }
            // source line 2181, bytecode pc 360
            (addType = _data.getLieutenantAttrPlusTypes().firstAttrType);
            // source line 2182, bytecode pc 381
            (_shuxing1IconPos1 = this._shuxing1.getPosition());
            // source line 2183, bytecode pc 415
            xs.Utils.Node.safeRemoveChild(this._shuxing1);
            // source line 2184, bytecode pc 474
            (this._shuxing1Icon = xs.Tools.UI.createEffectTypeSmallIcon(xs.Utils.parseIntSafe(addType)));
            // source line 2185, bytecode pc 496
            this._shuxing1Icon.setPosition(_shuxing1IconPos1);
            // source line 2186, bytecode pc 537
            xs.Utils.Node.attachNodes(this._ccbNode, this._shuxing1Icon);
            // source line 2189, bytecode pc 585
            xs.log(((("xs.DetailDialogComponent.DStyleR:" + _data.isBreachToMax()) + ",") + _dataNextTupo));
            if ((!_data.isBreachToMax() && _dataNextTupo)) {
                // source line 2191, bytecode pc 635
                (_shuxing2IconPos2 = this._shuxing2.getPosition());
                // source line 2192, bytecode pc 669
                xs.Utils.Node.safeRemoveChild(this._shuxing2);
                // source line 2193, bytecode pc 728
                (this._shuxing2Icon = xs.Tools.UI.createEffectTypeSmallIcon(xs.Utils.parseIntSafe(addType)));
                // source line 2194, bytecode pc 750
                this._shuxing2Icon.setPosition(_shuxing2IconPos2);
                // source line 2195, bytecode pc 791
                xs.Utils.Node.attachNodes(this._ccbNode, this._shuxing2Icon);
            } else {
                // source line 2197, bytecode pc 816
                this._node2.setVisible(false);
                // source line 2198, bytecode pc 850
                this._ccbNode.getChildByTag(102).setVisible(false);
                // source line 2199, bytecode pc 884
                this._ccbNode.getChildByTag(103).setVisible(false);
                // source line 2200, bytecode pc 904
                this._nextEffectNum.setVisible(false);
                // source line 2201, bytecode pc 938
                this._ccbNode.getChildByTag(104).setVisible(false);
                // source line 2202, bytecode pc 972
                this._ccbNode.getChildByTag(5).setVisible(false);
                // source line 2203, bytecode pc 1006
                this._ccbNode.getChildByTag(7).setVisible(false);
                // source line 2204, bytecode pc 1040
                this._ccbNode.getChildByTag(106).setVisible(false);
                // source line 2207, bytecode pc 1056
                (_allChildren = this.getChildren());
                // source line 2208, bytecode pc 1061
                (j = 0);
                while ((j < _allChildren.length)) {
                    // source line 2210, bytecode pc 1089
                    (_oldpos = _allChildren[j].getPosition());
                    // source line 2211, bytecode pc 1146
                    _allChildren[j].setPosition(cc.p(_oldpos.x, (_oldpos.y - 38)));
                    // source line 2208, bytecode pc 1160
                    (j = (+j + 1));
                }
                // source line 2213, bytecode pc 1229
                (this._viewSize = cc.size(this._viewSize.width, (this._viewSize.height - 38)));
            }
        }
    }
},
    getViewSize: function() {
    // source line 2219, bytecode pc 6
    return this._viewSize;
},
    ccbCfg: [
        { tag: 1, type: "ls", name: "_SkillNameLab1", id: "LS_wujiangInf1" },
        { tag: 8, type: "ls", name: "_SkillNameLab2", id: "LS_wujiangInf2" },
        { tag: 2, type: "ls", name: "_nowEffectNum", id: "LS_Lv" },
        { tag: 3, type: "ls", name: "_nextEffectNum", id: "LS_Lv" },
        { tag: 4, name: "_shuxing1" },
        { tag: 5, name: "_shuxing2" },
        { tag: 6, name: "_shuxing1Num" },
        { tag: 7, name: "_shuxing2Num" },
        { tag: 101, name: "_node2" },
        { tag: 102, type: "ls", name: "_EffectNameLab2", id: "LS_paihangNomb", stringId: "auto_name_372" },
        { tag: 202, type: "ls", name: "_EffectNameLab1", id: "LS_paihangNomb", stringId: "auto_name_373" }
    ]
}));
// source line 2271, bytecode pc 4778
(xs.DetailDialogComponent.createDStyleR = function(params) {
    var obj;
    // source line 2272, bytecode pc 23
    (obj = new xs.DetailDialogComponent.DStyleR());
    if ((obj && obj.initWithData(params))) {
        // source line 2274, bytecode pc 59
        return obj;
    }
    // source line 2276, bytecode pc 61
    return null;
});
// source line 2327, bytecode pc 5069
(xs.DetailDialogComponent.EStyleGemsEqu = xs.DetailDialogComponent.DWidget.extend({
    loadCCBI: function() {
    // source line 2283, bytecode pc 50
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.GemseEquDetailsCell, this));
    // source line 2284, bytecode pc 92
    this._ccbNode.setContentSize(cc.size(460, 110));
    // source line 2285, bytecode pc 128
    xs.Utils.Node.attachNodes(this, this._ccbNode);
    // source line 2286, bytecode pc 171
    xs.Utils.UI.replaceCcbByCfg(this._ccbNode, this.ccbCfg, this);
},
    loadData: function(params) {
    var mHoleSp;
    // source line 2289, bytecode pc 44
    (mHoleSp = xs.Factorys.Sprite.create(params.bore_sprite, "Cmn03"));
    // source line 2290, bytecode pc 91
    xs.Utils.replaceNode(this._ccbNode, this.ccbCfg[0].tag, mHoleSp);
    if ((params.gemsData != null)) {
        // source line 2293, bytecode pc 150
        this._GemsEffectNum.setString(("+" + params.gemsData.getEffectValueBase()));
        // source line 2294, bytecode pc 188
        this._GemsName.setString(params.gemsData.getNameString());
        // source line 2295, bytecode pc 252
        xs.Utils.replaceNode(this._ccbNode, this.ccbCfg[2].tag, params.gemsData.createEffectTypeSmallIcon());
        // source line 2296, bytecode pc 315
        xs.Utils.replaceNode(this._ccbNode, this.ccbCfg[0].tag, params.gemsData.createIcon_GradeAndAttribute());
    } else {
        // source line 2298, bytecode pc 371
        this._GemsName.setString(xs.Tools.String.createString("gems_str_no_fit"));
        // source line 2299, bytecode pc 410
        this._GemsName.setPositionY((this._GemsName.getPositionY() - 20));
        // source line 2301, bytecode pc 430
        this._GemsEffectBGImg.setVisible(false);
        // source line 2302, bytecode pc 450
        this._GemsEffectType.setVisible(false);
        // source line 2303, bytecode pc 470
        this._GemsEffectNum.setVisible(false);
    }
},
    ccbCfg: [
        { tag: 1, name: "_GemsIcon" },
        { tag: 2, type: "ls_ext", name: "_GemsName", ids: [ "LS_paihangNomb", "LS_yishangzhen" ] },
        { tag: 5, type: "ls", name: "_GemsEffectType", id: "LS_Lv" },
        { tag: 6, type: "ls", name: "_GemsEffectNum", id: "LS_Lv" },
        { tag: 3, name: "_GemsEffectBGImg" }
    ]
}));
// source line 2339, bytecode pc 5090
(xs.DetailDialogComponent.createEStyleGemsEqu = function(params) {
    var obj;
    // source line 2340, bytecode pc 23
    (obj = new xs.DetailDialogComponent.EStyleGemsEqu());
    if ((obj && obj.initWithData(params))) {
        // source line 2342, bytecode pc 59
        return obj;
    }
    // source line 2344, bytecode pc 61
    return null;
});
