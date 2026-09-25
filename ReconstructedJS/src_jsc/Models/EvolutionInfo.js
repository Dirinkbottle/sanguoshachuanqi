// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/EvolutionInfo.js:1
// source line 497, bytecode pc 358
(xs.Models.EvolutionInfo = xs.Models.Base.extend({
    name: "xs.Models.EvolutionInfo",
    CfgDataType: xs.Constant_CfgDataType_Evolution,
    ResType: xs.Constant_ResType_Evolution,
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    init: function() {
    if (!this._super()) {
        // source line 20, bytecode pc 19
        return false;
    }
    // source line 23, bytecode pc 27
    (this.pk_id = 0);
    // source line 25, bytecode pc 35
    (this.evolution_id = 0);
    // source line 27, bytecode pc 43
    (this.general_id = 0);
    // source line 29, bytecode pc 51
    (this.evolution_level = 0);
    // source line 31, bytecode pc 59
    (this.sub_level = 0);
    // source line 35, bytecode pc 72
    (this.fate_ids = {});
    // source line 37, bytecode pc 89
    (this.statusAwake = xs.Constant_Evolution_Status_Close);
    // source line 39, bytecode pc 97
    (this.surrender_status = 0);
    // source line 46, bytecode pc 105
    (this.open_rules = null);
    // source line 47, bytecode pc 113
    (this.cfgInfo = null);
    // source line 48, bytecode pc 121
    (this.cfgBuffInfo = null);
    // source line 53, bytecode pc 129
    (this.generalModel = null);
    // source line 54, bytecode pc 137
    (this.magicalModel = null);
    // source line 58, bytecode pc 139
    return true;
},
    loadCfg: function(generalId) {
    var info;
    // source line 64, bytecode pc 40
    (info = xs.Tools.CfgData.readRecordByTypeAndKeyNoDefault(this.CfgDataType, generalId));
    if (((info != null) && (info.evolution_id != null))) {
        // source line 69, bytecode pc 83
        (this.statusAwake = xs.Constant_Evolution_Status_Unable);
        // source line 70, bytecode pc 93
        (this.cfgInfo = info);
        // source line 71, bytecode pc 111
        (this.evolution_id = this.cfgInfo.evolution_id);
        // source line 74, bytecode pc 162
        (this.open_rules = xs.Tools.CfgData.readRecordByTypeAndKey(xs.Constant_CfgDataType_Evolution_open_conf, this.evolution_id));
        // source line 78, bytecode pc 213
        (this.cfgBuffInfo = xs.Tools.CfgData.readRecordByTypeAndKey(xs.Constant_CfgDataType_Evolution_buff_conf, this.evolution_id));
    } else {
        // source line 83, bytecode pc 235
        (this.statusAwake = xs.Constant_Evolution_Status_Close);
    }
},
    loadData: function(generalId) {
    // source line 89, bytecode pc 9
    (this.general_id = generalId);
    // source line 90, bytecode pc 29
    this.loadCfg(this.general_id);
},
    loadJson: function(json) {
    // source line 97, bytecode pc 16
    this._super(json);
    // source line 99, bytecode pc 39
    xs.log_ck("觉醒 loadJson");
    // source line 100, bytecode pc 66
    xs.log_ck(("json:" + json));
    // source line 101, bytecode pc 85
    dump(json);
    // source line 103, bytecode pc 100
    (this.pk_id = json.pk_id);
    // source line 104, bytecode pc 115
    (this.evolution_id = json.evolution_id);
    // source line 105, bytecode pc 130
    (this.general_id = json.general_id);
    // source line 107, bytecode pc 150
    this.loadCfg(this.general_id);
    // source line 109, bytecode pc 180
    (this.evolution_level = parseInt(json.evolution_level));
    // source line 110, bytecode pc 210
    (this.sub_level = parseInt(json.sub_level));
    if (json.fate_ids) {
        // source line 112, bytecode pc 260
        (this.fate_ids = xs.Utils.parseJSON(json.fate_ids));
    }
    // source line 113, bytecode pc 290
    (this.statusAwake = parseInt(json.status));
    // source line 115, bytecode pc 305
    (this.surrender_status = json.surrender_status);
},
    getOpenRules: function() {
    // source line 121, bytecode pc 6
    return this.open_rules;
},
    getOpenResource: function() {
    if ((this.checkOpenCache == null)) {
        // source line 126, bytecode pc 31
        (this.checkOpenCache = this.checkOpenRule());
    }
    // source line 131, bytecode pc 161
    return [
    { num: this.checkOpenCache.type3.condition, type: "6", id: this.checkOpenCache.type3.object_id },
    { num: this.checkOpenCache.type4.condition, type: "5", id: this.checkOpenCache.type4.object_id }
];
},
    getBuffInfo: function() {
    // source line 137, bytecode pc 6
    return this.cfgBuffInfo;
},
    getStatusAwake: function() {
    // source line 141, bytecode pc 6
    return this.statusAwake;
},
    getEvolutionLevel: function() {
    // source line 150, bytecode pc 6
    return this.evolution_level;
},
    getEvolutionSubLevel: function() {
    // source line 154, bytecode pc 6
    return this.sub_level;
},
    getGeneralId: function() {
    // source line 160, bytecode pc 6
    return this.general_id;
},
    initCachePoint: function(magicalModel) {
    // source line 163, bytecode pc 60
    (this.generalModel = xs.Profile.GameData.Mgr.getInstance().Generals.getGeneralModelByGeneralId(this.general_id));
    // source line 164, bytecode pc 70
    (this.magicalModel = magicalModel);
    // source line 165, bytecode pc 89
    (this.checkOpenCache = this.checkOpenRule());
},
    createCard_General: function(viewCfg) {
    // source line 170, bytecode pc 21
    return this.generalModel.createCard_General(viewCfg);
},
    getCacheGeneralModel: function() {
    // source line 173, bytecode pc 6
    return this.generalModel;
},
    getChacheMagicalModel: function() {
    // source line 176, bytecode pc 6
    return this.magicalModel;
},
    checkOpenRule: function(generalModel, magicalModel) {
    var openRules, result, i, ruleItem, generalId;
    if ((this.getStatusAwake() == xs.Constant_Evolution_Status_Unable)) {
        // source line 182, bytecode pc 52
        (generalModel = (generalModel || this.getCacheGeneralModel()));
        // source line 183, bytecode pc 77
        (magicalModel = (magicalModel || this.getChacheMagicalModel()));
        if (((generalModel == null) || (magicalModel == null))) {
            // source line 185, bytecode pc 100
            return null;
        }
        // source line 187, bytecode pc 116
        (openRules = this.getOpenRules());
        // source line 188, bytecode pc 126
        (result = {});
        // source line 189, bytecode pc 141
        (result.type1 = {});
        // source line 190, bytecode pc 156
        (result.type2 = {});
        // source line 191, bytecode pc 171
        (result.type3 = {});
        // source line 192, bytecode pc 186
        (result.type4 = {});
        if (((openRules != null) && (openRules.length > 0))) {
            // source line 195, bytecode pc 217
            (i = 0);
            while ((i < openRules.length)) {
                // source line 197, bytecode pc 234
                (ruleItem = openRules[i]);
                // source line 198, bytecode pc 252
                (generalId = generalModel.getId());
                // source line 200, bytecode pc 261
                switch (ruleItem.type) {
                    case "1":
                    // source line 204, bytecode pc 328
                    (result.type1.object_id = ruleItem.object_id);
                    // source line 205, bytecode pc 365
                    (result.type1.condition = parseInt(ruleItem.condition));
                    // source line 206, bytecode pc 393
                    (result.type1.user_condition = generalModel.getBreachLevel());
                    // source line 207, bytecode pc 415
                    (result.type1.condition_desc = ruleItem.condition_desc);
                    // source line 208, bytecode pc 456
                    (result.type1.enable = (result.type1.user_condition >= result.type1.condition));
                    break;
                    case "2":
                    // source line 212, bytecode pc 483
                    (result.type2.object_id = ruleItem.object_id);
                    // source line 213, bytecode pc 520
                    (result.type2.condition = parseInt(ruleItem.condition));
                    // source line 215, bytecode pc 566
                    (result.type2.user_condition = ((magicalModel.getNormalStep() * 100) + magicalModel.getNormalSubStep()));
                    // source line 216, bytecode pc 588
                    (result.type2.condition_desc = ruleItem.condition_desc);
                    // source line 217, bytecode pc 629
                    (result.type2.enable = (result.type2.user_condition >= result.type2.condition));
                    break;
                    case "3":
                    // source line 221, bytecode pc 656
                    (result.type3.object_id = ruleItem.object_id);
                    // source line 222, bytecode pc 693
                    (result.type3.condition = parseInt(ruleItem.condition));
                    // source line 225, bytecode pc 763
                    (result.type3.user_condition = xs.Profile.GameData.Mgr.getInstance().GeneralSouls.getSoulNumsByGeneralId(ruleItem.object_id));
                    // source line 226, bytecode pc 785
                    (result.type3.condition_desc = ruleItem.condition_desc);
                    // source line 227, bytecode pc 826
                    (result.type3.enable = (result.type3.user_condition >= result.type3.condition));
                    break;
                    case "4":
                    // source line 230, bytecode pc 853
                    (result.type4.object_id = ruleItem.object_id);
                    // source line 231, bytecode pc 890
                    (result.type4.condition = parseInt(ruleItem.condition));
                    // source line 232, bytecode pc 960
                    (result.type4.user_condition = xs.Profile.GameData.Mgr.getInstance().Items.getTotalNumById(ruleItem.object_id));
                    // source line 233, bytecode pc 1001
                    (result.type4.enable = (result.type4.user_condition >= result.type4.condition));
                    // source line 234, bytecode pc 1023
                    (result.type4.condition_desc = ruleItem.condition_desc);
                    break;
                    default:
                    break;
                }
                // source line 195, bytecode pc 1043
                i++;
            }
        }
        // source line 242, bytecode pc 1065
        return result;
    }
    // source line 245, bytecode pc 1067
    return null;
},
    getRuleViewParams: function() {
    var result, ruleViewParams, heroName, data, param, itemData;
    // source line 249, bytecode pc 9
    (result = this.checkOpenCache);
    if ((result != null)) {
        // source line 254, bytecode pc 29
        (ruleViewParams = {});
        // source line 255, bytecode pc 50
        (heroName = this.generalModel.getNameString());
        // source line 256, bytecode pc 55
        (data = null);
        // source line 257, bytecode pc 60
        (param = null);
        // source line 259, bytecode pc 75
        (ruleViewParams.type1 = {});
        if ((result.type1.object_id != null)) {
            // source line 262, bytecode pc 107
            (data = result.type1);
            // source line 263, bytecode pc 119
            (param = ruleViewParams.type1);
            // source line 264, bytecode pc 131
            (param.data = data);
            // source line 265, bytecode pc 148
            (param.tEnable = data.enable);
            // source line 266, bytecode pc 197
            (param.rule = xs.Tools.String.createString(result.type1.condition_desc));
            // source line 268, bytecode pc 229
            (param.result = ((data.user_condition + "/") + data.condition));
        }
        // source line 270, bytecode pc 244
        (ruleViewParams.type2 = {});
        if ((result.type2.object_id != null)) {
            // source line 273, bytecode pc 276
            (data = result.type2);
            // source line 274, bytecode pc 288
            (param = ruleViewParams.type2);
            // source line 275, bytecode pc 300
            (param.data = data);
            // source line 276, bytecode pc 317
            (param.tEnable = data.enable);
            // source line 277, bytecode pc 366
            (param.rule = xs.Tools.String.createString(result.type2.condition_desc));
            // source line 281, bytecode pc 471
            (param.result = xs.Tools.String.createString("evolution_open_type2_result").convWithArgs([ Math.floor((data.user_condition / 100)), (data.user_condition % 100) ]));
        }
        // source line 283, bytecode pc 486
        (ruleViewParams.type3 = {});
        if ((result.type3.object_id != null)) {
            // source line 286, bytecode pc 518
            (data = result.type3);
            // source line 287, bytecode pc 530
            (param = ruleViewParams.type3);
            // source line 288, bytecode pc 542
            (param.data = data);
            // source line 289, bytecode pc 559
            (param.tEnable = data.enable);
            // source line 290, bytecode pc 608
            (param.rule = xs.Tools.String.createString(result.type3.condition_desc));
            // source line 293, bytecode pc 640
            (param.result = ((data.user_condition + "/") + data.condition));
        }
        // source line 295, bytecode pc 655
        (ruleViewParams.type4 = {});
        if ((result.type4.object_id != null)) {
            // source line 300, bytecode pc 687
            (data = result.type4);
            // source line 301, bytecode pc 699
            (param = ruleViewParams.type4);
            // source line 302, bytecode pc 711
            (param.data = data);
            // source line 305, bytecode pc 750
            (itemData = xs.Models.Item.createWithBase(data.object_id));
            // source line 308, bytecode pc 767
            (param.tEnable = data.enable);
            // source line 310, bytecode pc 816
            (param.rule = xs.Tools.String.createString(result.type4.condition_desc));
            // source line 322, bytecode pc 848
            (param.result = ((data.user_condition + "/") + data.condition));
        }
        // source line 324, bytecode pc 852
        return ruleViewParams;
    }
    // source line 326, bytecode pc 854
    return null;
},
    isCanAwake: function(generalModel, magicalModel) {
    var result;
    // source line 329, bytecode pc 4
    (result = null);
    if (((generalModel == null) && (magicalModel == null))) {
        // source line 331, bytecode pc 35
        (result = this.checkOpenCache);
    } else {
        // source line 333, bytecode pc 64
        (result = this.checkOpenRule(generalModel, magicalModel));
    }
    if ((result != null)) {
        if ((result.type1.enable && (result.type2.enable && (result.type3.enable && result.type4.enable)))) {
            // source line 338, bytecode pc 151
            return true;
        }
    }
    // source line 341, bytecode pc 153
    return false;
},
    getBuffConf: function(level, sublevel) {
    var key1, key2, cfgBuffInfo_level;
    if (((this.cfgBuffInfo == null) || ((level == null) || (sublevel == null)))) {
        // source line 346, bytecode pc 36
        return null;
    }
    // source line 347, bytecode pc 54
    (key1 = level.toString());
    // source line 348, bytecode pc 72
    (key2 = sublevel.toString());
    // source line 349, bytecode pc 86
    (cfgBuffInfo_level = this.cfgBuffInfo[key1]);
    if ((cfgBuffInfo_level != null)) {
        // source line 352, bytecode pc 104
        return cfgBuffInfo_level[key2];
    }
    // source line 355, bytecode pc 106
    return null;
},
    getBuffConfs: function(level) {
    if ((this.cfgBuffInfo == null)) {
        // source line 360, bytecode pc 14
        return null;
    }
    // source line 362, bytecode pc 16
    return null;
},
    getBuffConfItemViewData: function(info, enable) {
    var data;
    if ((info != null)) {
        // source line 368, bytecode pc 14
        (data = null);
        // source line 369, bytecode pc 23
        switch (info.buff_type) {
            case "1":
            // source line 371, bytecode pc 148
            (data = {});
            // source line 372, bytecode pc 171
            (data.png = [ "icon_atk1" ]);
            // source line 373, bytecode pc 194
            (data.plist = [ "Cmn01" ]);
            // source line 374, bytecode pc 206
            (data.enable = enable);
            // source line 375, bytecode pc 238
            (data.txt = [ ("+" + info.buff_effect) ]);
            // source line 376, bytecode pc 261
            (data.txtType = [ "LS_Lv" ]);
            // source line 377, bytecode pc 286
            (data.array = [ 10, 0 ]);
            // source line 378, bytecode pc 318
            (data.valueAtk = parseInt(info.buff_effect));
            break;
            case "2":
            // source line 381, bytecode pc 333
            (data = {});
            // source line 382, bytecode pc 356
            (data.png = [ "icon_def1" ]);
            // source line 383, bytecode pc 379
            (data.plist = [ "Cmn01" ]);
            // source line 384, bytecode pc 391
            (data.enable = enable);
            // source line 385, bytecode pc 423
            (data.txt = [ ("+" + info.buff_effect) ]);
            // source line 386, bytecode pc 446
            (data.txtType = [ "LS_Lv" ]);
            // source line 387, bytecode pc 471
            (data.array = [ 10, 0 ]);
            // source line 388, bytecode pc 503
            (data.valueDef = parseInt(info.buff_effect));
            break;
            case "3":
            // source line 391, bytecode pc 518
            (data = {});
            // source line 392, bytecode pc 541
            (data.png = [ "icon_hp1" ]);
            // source line 393, bytecode pc 564
            (data.plist = [ "Cmn01" ]);
            // source line 394, bytecode pc 576
            (data.enable = enable);
            // source line 395, bytecode pc 608
            (data.txt = [ ("+" + info.buff_effect) ]);
            // source line 396, bytecode pc 631
            (data.txtType = [ "LS_Lv" ]);
            // source line 397, bytecode pc 656
            (data.array = [ 10, 0 ]);
            // source line 398, bytecode pc 688
            (data.valueHp = parseInt(info.buff_effect));
            break;
            case "4":
            // source line 401, bytecode pc 703
            (data = {});
            // source line 402, bytecode pc 726
            (data.png = [ "icon_int1" ]);
            // source line 403, bytecode pc 749
            (data.plist = [ "Cmn01" ]);
            // source line 404, bytecode pc 761
            (data.enable = enable);
            // source line 405, bytecode pc 793
            (data.txt = [ ("+" + info.buff_effect) ]);
            // source line 406, bytecode pc 816
            (data.txtType = [ "LS_Lv" ]);
            // source line 407, bytecode pc 841
            (data.array = [ 10, 0 ]);
            // source line 408, bytecode pc 873
            (data.valueInt = parseInt(info.buff_effect));
            break;
            case "5":
            case "6":
            case "11":
            // source line 414, bytecode pc 888
            (data = {});
            // source line 415, bytecode pc 900
            (data.enable = enable);
            // source line 416, bytecode pc 959
            (data.txt = [ xs.Tools.String.createString(("evolution_buff_type" + info.buff_type)) ]);
            // source line 417, bytecode pc 982
            (data.txtType = [ "LS_jinengInf1" ]);
            // source line 418, bytecode pc 1001
            (data.array = [ 0 ]);
            break;
            case "7":
            case "8":
            case "9":
            // source line 423, bytecode pc 1016
            (data = {});
            // source line 424, bytecode pc 1028
            (data.enable = enable);
            // source line 426, bytecode pc 1116
            (data.txt = [
    xs.Tools.String.createString(("evolution_buff_type" + info.buff_type)).convWithArgs([ info.buff_effect ])
]);
            // source line 427, bytecode pc 1139
            (data.txtType = [ "LS_jinengInf1" ]);
            // source line 428, bytecode pc 1158
            (data.array = [ 0 ]);
            break;
            case "10":
            // source line 431, bytecode pc 1173
            (data = {});
            // source line 432, bytecode pc 1185
            (data.enable = enable);
            // source line 433, bytecode pc 1244
            (data.txt = [ xs.Tools.String.createString("evolution_buff_type10"), "+1" ]);
            // source line 434, bytecode pc 1276
            (data.txtType = [ "LS_jinengInf1", "LS_Lv" ]);
            // source line 435, bytecode pc 1300
            (data.array = [ 0, 1 ]);
            break;
            default:
            // source line 438, bytecode pc 1315
            (data = {});
            // source line 439, bytecode pc 1327
            (data.enable = enable);
            // source line 440, bytecode pc 1353
            (data.txt = [ info.buff_desc ]);
            // source line 441, bytecode pc 1376
            (data.txtType = [ "LS_jinengInf1" ]);
            // source line 442, bytecode pc 1395
            (data.array = [ 0 ]);
            break;
        }
        // source line 448, bytecode pc 1404
        return data;
    }
    // source line 451, bytecode pc 1406
    return null;
},
    getAllYuanVaule: function() {
    var value, i, j, infos, infoArray, z, info;
    // source line 457, bytecode pc 4
    (value = 0);
    // source line 458, bytecode pc 9
    (i = 1);
    while ((i <= 7)) {
        // source line 460, bytecode pc 20
        (j = 1);
        while ((j <= this.evolution_level)) {
            if (((j == this.evolution_level) && (i > this.sub_level))) {
                break;
            }
            // source line 468, bytecode pc 87
            (infos = this.cfgBuffInfo[j.toString()]);
            if (infos) {
                // source line 471, bytecode pc 117
                (infoArray = infos[i.toString()]);
                if ((infoArray.length >= 1)) {
                    // source line 475, bytecode pc 137
                    (z = 0);
                    while ((z < infoArray.length)) {
                        // source line 477, bytecode pc 154
                        (info = infoArray[z]);
                        if ((info.buff_type == "9")) {
                            // source line 484, bytecode pc 204
                            (value = (value + parseInt(info.buff_effect)));
                        }
                        // source line 475, bytecode pc 219
                        z++;
                    }
                }
            }
            // source line 460, bytecode pc 252
            j++;
        }
        // source line 458, bytecode pc 283
        i++;
    }
    // source line 495, bytecode pc 299
    return value;
},
    getBuffConfsView: function(level, sublevel) {
    var key1, key2, cfgBuffInfo_level, viewData, hp, atk, def, int, i, enable, infoArray, j, itemViewData, callBackData;
    if ((this.cfgBuffInfo == null)) {
        // source line 499, bytecode pc 14
        return null;
    }
    if (((this.cfgBuffInfo == null) || ((level == null) || (sublevel == null)))) {
        // source line 501, bytecode pc 51
        return null;
    }
    // source line 502, bytecode pc 69
    (key1 = level.toString());
    // source line 503, bytecode pc 87
    (key2 = sublevel.toString());
    // source line 504, bytecode pc 101
    (cfgBuffInfo_level = this.cfgBuffInfo[key1]);
    if ((cfgBuffInfo_level != null)) {
        // source line 508, bytecode pc 120
        (viewData = []);
        // source line 509, bytecode pc 125
        (hp = 0);
        // source line 510, bytecode pc 130
        (atk = 0);
        // source line 511, bytecode pc 135
        (def = 0);
        // source line 512, bytecode pc 140
        (int = 0);
        // source line 513, bytecode pc 145
        (i = 1);
        while ((i <= 7)) {
            // source line 515, bytecode pc 156
            (enable = false);
            if ((sublevel >= i)) {
                // source line 518, bytecode pc 173
                (enable = true);
            }
            // source line 521, bytecode pc 195
            (infoArray = cfgBuffInfo_level[i.toString()]);
            if ((infoArray.length >= 1)) {
                // source line 526, bytecode pc 215
                (j = 0);
                while ((j < infoArray.length)) {
                    // source line 529, bytecode pc 249
                    (itemViewData = this.getBuffConfItemViewData(infoArray[j], enable));
                    if ((itemViewData != null)) {
                        // source line 532, bytecode pc 278
                        viewData.push(itemViewData);
                        if (enable) {
                            // source line 535, bytecode pc 309
                            (hp = (hp + (itemViewData.valueHp || 0)));
                            // source line 536, bytecode pc 332
                            (atk = (atk + (itemViewData.valueAtk || 0)));
                            // source line 537, bytecode pc 355
                            (def = (def + (itemViewData.valueDef || 0)));
                            // source line 538, bytecode pc 378
                            (int = (int + (itemViewData.valueInt || 0)));
                        }
                    }
                    // source line 526, bytecode pc 393
                    j++;
                }
            }
            // source line 513, bytecode pc 426
            i++;
        }
        if ((viewData.length > 0)) {
            // source line 554, bytecode pc 463
            (callBackData = {});
            // source line 555, bytecode pc 475
            (callBackData.hp = hp);
            // source line 556, bytecode pc 487
            (callBackData.atk = atk);
            // source line 557, bytecode pc 499
            (callBackData.def = def);
            // source line 558, bytecode pc 511
            (callBackData.int = int);
            // source line 559, bytecode pc 523
            (callBackData.viewData = viewData);
            // source line 560, bytecode pc 527
            return callBackData;
        }
    }
    // source line 566, bytecode pc 529
    return null;
}
}));
// source line 572, bytecode pc 384
(xs.Models.EvolutionInfo.createWithBase = function(general_id) {
    var info;
    // source line 574, bytecode pc 26
    xs.log_ck(("EvolutionInfo createWithBase:" + general_id));
    // source line 575, bytecode pc 50
    (info = new xs.Models.EvolutionInfo());
    if ((info && info.init())) {
        // source line 577, bytecode pc 97
        info.loadData(general_id);
        // source line 578, bytecode pc 101
        return info;
    }
    // source line 580, bytecode pc 103
    return null;
});
// source line 584, bytecode pc 410
(xs.Models.EvolutionInfo.createWithJson = function(json) {
    var info;
    // source line 585, bytecode pc 23
    (info = new xs.Models.EvolutionInfo());
    if ((info && info.init())) {
        // source line 587, bytecode pc 70
        info.loadJson(json);
        // source line 588, bytecode pc 74
        return info;
    }
    // source line 590, bytecode pc 97
    xs.warn("xs.Models.EvolutionInfo.createWithJson");
    // source line 591, bytecode pc 99
    return null;
});
