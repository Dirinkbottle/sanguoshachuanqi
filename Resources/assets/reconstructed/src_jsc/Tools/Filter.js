// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Tools/Filter.js:1
// source line 169, bytecode pc 182
(xs.Tools.Filter = (xs.Tools.Filter || {
    dump: xs.Debug.emptyFunc,
    generalByType: function(originalData, type) {
    var _arr_rs, i;
    // source line 17, bytecode pc 8
    (_arr_rs = []);
    // source line 18, bytecode pc 13
    (i = 0);
    while ((i < originalData.length)) {
        if ((originalData[i].getNaturalSkillType() == type)) {
            // source line 21, bytecode pc 69
            _arr_rs.push(originalData[i]);
        }
        // source line 18, bytecode pc 84
        i++;
    }
    // source line 24, bytecode pc 106
    return _arr_rs;
},
    generalByGrade: function(originalData, grade) {
    var _arr_rs, i;
    // source line 30, bytecode pc 8
    (_arr_rs = []);
    // source line 31, bytecode pc 13
    (i = 0);
    while ((i < originalData.length)) {
        if ((originalData[i].getGrade() == grade)) {
            // source line 34, bytecode pc 69
            _arr_rs.push(originalData[i]);
        }
        // source line 31, bytecode pc 84
        i++;
    }
    // source line 37, bytecode pc 106
    return _arr_rs;
},
    generalSurrenderStatus: function(originalData, type) {
    var _arr_rs, i;
    // source line 43, bytecode pc 8
    (_arr_rs = []);
    // source line 44, bytecode pc 13
    (i = 0);
    while ((i < originalData.length)) {
        if ((xs.Profile.GameData.Mgr.getInstance().Generals.isSurrender(originalData[i]) == type)) {
            // source line 47, bytecode pc 106
            _arr_rs.push(originalData[i]);
        }
        // source line 44, bytecode pc 121
        i++;
    }
    // source line 50, bytecode pc 143
    return _arr_rs;
},
    equipmentByPos: function(originalData, pos) {
    var _arr_rs, i;
    // source line 55, bytecode pc 8
    (_arr_rs = []);
    // source line 56, bytecode pc 13
    (i = 0);
    while ((i < originalData.length)) {
        if ((originalData[i].getPosType() == pos)) {
            // source line 58, bytecode pc 69
            _arr_rs.push(originalData[i]);
        }
        // source line 56, bytecode pc 84
        i++;
    }
    // source line 61, bytecode pc 106
    return _arr_rs;
},
    skillByType: function(originalData, type) {
    var _arr_rs, i;
    // source line 68, bytecode pc 8
    (_arr_rs = []);
    // source line 69, bytecode pc 13
    (i = 0);
    while ((i < originalData.length)) {
        if ((originalData[i].getSkillType() == type)) {
            // source line 71, bytecode pc 69
            _arr_rs.push(originalData[i]);
        }
        // source line 69, bytecode pc 84
        i++;
    }
    // source line 74, bytecode pc 106
    return _arr_rs;
},
    generalAtlasByType: function(originalData, type) {
    var _arr_rs, i;
    // source line 79, bytecode pc 8
    (_arr_rs = []);
    // source line 80, bytecode pc 13
    (i = 0);
    while ((i < originalData.length)) {
        if ((originalData[i].getModel().getNaturalSkillType() == type)) {
            // source line 82, bytecode pc 80
            _arr_rs.push(originalData[i]);
        }
        // source line 80, bytecode pc 95
        i++;
    }
    // source line 85, bytecode pc 117
    return _arr_rs;
},
    equipmentAtlasByPos: function(originalData, type) {
    var _arr_rs, i;
    // source line 90, bytecode pc 8
    (_arr_rs = []);
    // source line 91, bytecode pc 13
    (i = 0);
    while ((i < originalData.length)) {
        if ((originalData[i].getModel().getPosType() == type)) {
            // source line 95, bytecode pc 80
            _arr_rs.push(originalData[i]);
        }
        // source line 91, bytecode pc 95
        i++;
    }
    // source line 98, bytecode pc 117
    return _arr_rs;
},
    skillAtlasByType: function(originalData, type) {
    var _arr_rs, i;
    // source line 103, bytecode pc 8
    (_arr_rs = []);
    // source line 104, bytecode pc 13
    (i = 0);
    while ((i < originalData.length)) {
        if ((originalData[i].getModel().getSkillType() == type)) {
            // source line 107, bytecode pc 80
            _arr_rs.push(originalData[i]);
        }
        // source line 104, bytecode pc 95
        i++;
    }
    // source line 110, bytecode pc 117
    return _arr_rs;
},
    skillCanBeSet: function(originalData, general_pk_id, pos, type) {
    var _arr_rs, obj_general, i;
    // source line 119, bytecode pc 8
    (_arr_rs = []);
    // source line 120, bytecode pc 63
    (obj_general = xs.Profile.GameData.Mgr.getInstance().Generals.getByPkId(general_pk_id));
    // source line 121, bytecode pc 68
    (i = 0);
    while ((i < originalData.length)) {
        if ((xs.Profile.GameData.Mgr.getInstance().Generals.isThisSkillCanBeSet(obj_general, originalData[i].getPkId(), pos) === type)) {
            // source line 125, bytecode pc 180
            _arr_rs.push(originalData[i]);
        }
        // source line 121, bytecode pc 195
        i++;
    }
    // source line 128, bytecode pc 217
    return _arr_rs;
},
    lieutenantCanBeSet: function(originalData, general_pk_id, pos, type) {
    var _arr_rs, obj_general, i;
    // source line 133, bytecode pc 8
    (_arr_rs = []);
    // source line 134, bytecode pc 63
    (obj_general = xs.Profile.GameData.Mgr.getInstance().Generals.getByPkId(general_pk_id));
    // source line 135, bytecode pc 68
    (i = 0);
    while ((i < originalData.length)) {
        if ((xs.Profile.GameData.Mgr.getInstance().Generals.isThisLieutenantCanBeSet(obj_general, originalData[i].getPkId(), pos) === type)) {
            // source line 139, bytecode pc 180
            _arr_rs.push(originalData[i]);
        }
        // source line 135, bytecode pc 195
        i++;
    }
    // source line 142, bytecode pc 217
    return _arr_rs;
},
    battleAtlasByType: function(originalData, type) {
    var _arr_rs, i;
    // source line 147, bytecode pc 26
    xs.log_xjf(("battleAtlasByType,type = " + type));
    // source line 148, bytecode pc 35
    (_arr_rs = []);
    // source line 149, bytecode pc 40
    (i = 0);
    while ((i < originalData.length)) {
        // source line 150, bytecode pc 88
        xs.log_xjf(("originalData[i].getBattleId() = " + originalData[i].getBattleId()));
        if ((originalData[i].getBattleId() == type)) {
            // source line 152, bytecode pc 138
            _arr_rs.push(originalData[i]);
        }
        // source line 149, bytecode pc 153
        i++;
    }
    // source line 157, bytecode pc 175
    return _arr_rs;
},
    filterData: function(params) {
    var originalData, filterConditions, result, _rs, general_pk_id, pos, sortConditions;
    // source line 171, bytecode pc 11
    (originalData = params.data);
    // source line 172, bytecode pc 23
    (filterConditions = params.filterConditions);
    // source line 173, bytecode pc 35
    (result = params.result);
    // source line 174, bytecode pc 44
    (_rs = []);
    if ((result == xs.Constant_FilterResult_All)) {
        // source line 177, bytecode pc 70
        (_rs = originalData);
    } else {
        // source line 179, bytecode pc 79
        switch (filterConditions) {
            case xs.Constant_FilterType_Skill_Type:
            // source line 181, bytecode pc 302
            (_rs = xs.Tools.Filter.skillByType(originalData, result));
            break;
            case xs.Constant_FilterType_GeneralLieutenant_Type:
            case xs.Constant_FilterType_General_Type:
            // source line 186, bytecode pc 345
            (_rs = xs.Tools.Filter.generalByType(originalData, result));
            break;
            case xs.Constant_FilterType_Equipment_Pos:
            // source line 190, bytecode pc 388
            (_rs = xs.Tools.Filter.equipmentByPos(originalData, result));
            break;
            case xs.Constant_FilterType_Skill_IsCanBeSet:
            // source line 194, bytecode pc 405
            (general_pk_id = params.general_pk_id);
            // source line 195, bytecode pc 417
            (pos = params.pos);
            // source line 199, bytecode pc 463
            (_rs = xs.Tools.Filter.skillCanBeSet(originalData, general_pk_id, pos, result));
            break;
            case xs.Constant_FilterType_GeneralAtlas_Type:
            // source line 203, bytecode pc 506
            (_rs = xs.Tools.Filter.generalAtlasByType(originalData, result));
            break;
            case xs.Constant_FilterType_EquipmentAtLas_Pos:
            // source line 207, bytecode pc 549
            (_rs = xs.Tools.Filter.equipmentAtlasByPos(originalData, result));
            break;
            case xs.Constant_FilterType_SkillAtlas_Type:
            // source line 211, bytecode pc 592
            (_rs = xs.Tools.Filter.skillAtlasByType(originalData, result));
            break;
            case xs.Constant_FilterType_GeneralLieutenant_IsCanBeSet:
            // source line 215, bytecode pc 609
            (general_pk_id = params.general_pk_id);
            // source line 216, bytecode pc 621
            (pos = params.pos);
            // source line 217, bytecode pc 667
            (_rs = xs.Tools.Filter.lieutenantCanBeSet(originalData, general_pk_id, pos, result));
            break;
            case xs.Constant_FilterType_GeneralAtlas_IsSurrender:
            // source line 221, bytecode pc 710
            (_rs = xs.Tools.Filter.generalSurrenderStatus(originalData, result));
            break;
            case xs.Constant_FilterType_Battle_Id:
            // source line 224, bytecode pc 753
            (_rs = xs.Tools.Filter.battleAtlasByType(originalData, result));
            break;
            case xs.Constant_FilterType_General_Grade:
            // source line 227, bytecode pc 785
            xs.log_zhz("result", result);
            // source line 228, bytecode pc 823
            (_rs = xs.Tools.Filter.generalByGrade(originalData, result));
            break;
            default:
            break;
        }
    }
    // source line 235, bytecode pc 847
    (sortConditions = (params.sortConditions || null));
    if (!xs.Utils.isEmpty(sortConditions)) {
        // source line 239, bytecode pc 924
        _rs.sort(xs.Tools.Sort.by(sortConditions));
    }
    // source line 242, bytecode pc 928
    return _rs;
}
}));
