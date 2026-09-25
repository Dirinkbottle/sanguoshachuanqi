// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Tools/Sort.js:1
// source line 177, bytecode pc 132
(xs.Tools.Sort = (xs.Tools.Sort || {
    by: function(_arguments) {
    // source line 16, bytecode pc 7
    (this.n = 0);
    if (((_arguments == xs.Constant_SortType_Skill_Default_Reverse) || ((_arguments == xs.Constant_SortType_GeneralSoul_Default_Reverse) || ((_arguments == xs.Constant_SortType_Equipment_Default_Reverse) || ((_arguments == xs.Constant_SortType_EquipmentPiece_Default_Reverse) || (_arguments == xs.Constant_SortType_General_Default_Reverse)))))) {
        // source line 22, bytecode pc 159
        xs.warn("use the arr.reverse() function instead");
    }
    // source line 79, bytecode pc 178
    return function(o, p) {
    var i, _argument, _order_by, _condition_type, _condition_name, a, b;
    // source line 27, bytecode pc 26
    this.n++;
    // source line 28, bytecode pc 31
    (i = 0);
    while ((i < _arguments.length)) {
        if ((o && p)) {
            // source line 30, bytecode pc 73
            (_argument = _arguments[i][0]);
            // source line 31, bytecode pc 103
            (_order_by = (_arguments[i][1] || "asc"));
            // source line 32, bytecode pc 134
            (_condition_type = (_arguments[i][2] || "model"));
            // source line 33, bytecode pc 163
            (_condition_name = (_condition_type && _arguments[i][3]));
            if ((_condition_type == "model")) {
                if (!o[_argument]) {
                    // source line 40, bytecode pc 223
                    this.error("the sort conditions is error", _arguments[i]);
                }
                // source line 45, bytecode pc 245
                (a = o[_argument]());
                // source line 46, bytecode pc 262
                (b = p[_argument]());
            } else {
                if (!xs.Profile.GameData.Mgr.getInstance()[_condition_name][_argument]) {
                    // source line 53, bytecode pc 345
                    this.error("the sort conditions is error", _arguments[i]);
                }
                // source line 57, bytecode pc 403
                (a = xs.Profile.GameData.Mgr.getInstance()[_condition_name][_argument](o));
                // source line 58, bytecode pc 456
                (b = xs.Profile.GameData.Mgr.getInstance()[_condition_name][_argument](p));
            }
            if ((a === b)) {
            }
            if ((_order_by == "asc")) {
                // source line 68, bytecode pc 508
                return ((a < b) ? -1 : 1);
            } else {
                // source line 70, bytecode pc 534
                return ((a < b) ? 1 : -1);
            }
        } else {
            // source line 74, bytecode pc 558
            this.error("xs.Tools.Sort error");
        }
        // source line 28, bytecode pc 573
        i++;
    }
    // source line 78, bytecode pc 599
    return 0;
}.bind(this);
},
    byEquFate: function(generalModel) {
    // source line 87, bytecode pc 5
    return function(o, p) {
    var a, b;
    // source line 88, bytecode pc 64
    (a = xs.Profile.GameData.Mgr.getInstance().Fate.isHasFateWithEquId(generalModel, o));
    // source line 89, bytecode pc 129
    (b = xs.Profile.GameData.Mgr.getInstance().Fate.isHasFateWithEquId(generalModel, p));
    if ((a === b)) {
        // source line 91, bytecode pc 143
        return 0;
    }
    // source line 93, bytecode pc 164
    return ((a < b) ? 1 : -1);
}
},
    bySkillFate: function(generalModel) {
    // source line 101, bytecode pc 5
    return function(o, p) {
    var a, b;
    // source line 102, bytecode pc 64
    (a = xs.Profile.GameData.Mgr.getInstance().Fate.isHasFateWithSkillId(generalModel, o));
    // source line 103, bytecode pc 129
    (b = xs.Profile.GameData.Mgr.getInstance().Fate.isHasFateWithSkillId(generalModel, p));
    if ((a === b)) {
        // source line 105, bytecode pc 143
        return 0;
    }
    // source line 107, bytecode pc 164
    return ((a < b) ? 1 : -1);
}
},
    byGeneralFate: function(generalModel) {
    // source line 116, bytecode pc 5
    return function(o, p) {
    var a, b;
    // source line 117, bytecode pc 64
    (a = xs.Profile.GameData.Mgr.getInstance().Fate.isHasFateWithGeneralId(generalModel, o));
    // source line 118, bytecode pc 129
    (b = xs.Profile.GameData.Mgr.getInstance().Fate.isHasFateWithGeneralId(generalModel, p));
    if ((a === b)) {
        // source line 120, bytecode pc 143
        return 0;
    }
    // source line 122, bytecode pc 164
    return ((a < b) ? 1 : -1);
}
},
    bySkillCanBeSet: function(generalModel, pos) {
    // source line 130, bytecode pc 5
    return function(o, p) {
    var a, b;
    // source line 131, bytecode pc 85
    (a = xs.Profile.GameData.Mgr.getInstance().Generals.isThisSkillCanBeSet(generalModel, o.getPkId(), pos));
    // source line 132, bytecode pc 171
    (b = xs.Profile.GameData.Mgr.getInstance().Generals.isThisSkillCanBeSet(generalModel, p.getPkId(), pos));
    if ((a === b)) {
        // source line 134, bytecode pc 185
        return 0;
    }
    // source line 136, bytecode pc 206
    return ((a < b) ? 1 : -1);
}
},
    byLieutenantCanBeSet: function(generalModel, pos) {
    // source line 144, bytecode pc 5
    return function(o, p) {
    var a, b;
    // source line 145, bytecode pc 85
    (a = xs.Profile.GameData.Mgr.getInstance().Generals.isThisLieutenantCanBeSet(generalModel, o.getPkId(), pos));
    // source line 146, bytecode pc 171
    (b = xs.Profile.GameData.Mgr.getInstance().Generals.isThisLieutenantCanBeSet(generalModel, p.getPkId(), pos));
    if ((a === b)) {
        // source line 148, bytecode pc 185
        return 0;
    }
    // source line 150, bytecode pc 206
    return ((a < b) ? 1 : -1);
}
},
    byGradeAndId_generals_order_asc: function(a, b) {
    if ((a.getGrade() === b.getGrade())) {
        // source line 159, bytecode pc 63
        return (a.getId() > b.getId());
    } else {
        // source line 162, bytecode pc 98
        return (a.getSortGrade() < b.getSortGrade());
    }
},
    byGradeAndId_generals_order_desc: function(a, b) {
    if ((a.getGrade() === b.getGrade())) {
        // source line 170, bytecode pc 63
        return (a.getId() < b.getId());
    } else {
        // source line 173, bytecode pc 98
        return (a.getGrade() > b.getGrade());
    }
},
    randomsort: function(a, b) {
    // source line 178, bytecode pc 35
    return ((Math.random() > 0.5) ? -1 : 1);
}
}));
