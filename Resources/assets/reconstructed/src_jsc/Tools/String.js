// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Tools/String.js:1
// source line 148, bytecode pc 122
(xs.Tools.String = (xs.Tools.String || {
    name: "xs.Tools.String",
    convNumberString: function(valueInt) {
    var _ret;
    // source line 19, bytecode pc 7
    switch (valueInt) {
        case 0:
        // source line 21, bytecode pc 103
        (_ret = xs.Tools.Ml.createString("MiracleWeapon_zero"));
        break;
        case 1:
        // source line 24, bytecode pc 144
        (_ret = xs.Tools.Ml.createString("MiracleWeapon_one"));
        break;
        case 2:
        // source line 27, bytecode pc 185
        (_ret = xs.Tools.Ml.createString("MiracleWeapon_two"));
        break;
        case 3:
        // source line 30, bytecode pc 226
        (_ret = xs.Tools.Ml.createString("MiracleWeapon_three"));
        break;
        case 4:
        // source line 33, bytecode pc 267
        (_ret = xs.Tools.Ml.createString("MiracleWeapon_four"));
        break;
        case 5:
        // source line 36, bytecode pc 308
        (_ret = xs.Tools.Ml.createString("MiracleWeapon_five"));
        break;
        case 6:
        // source line 39, bytecode pc 349
        (_ret = xs.Tools.Ml.createString("MiracleWeapon_six"));
        break;
        case 7:
        // source line 42, bytecode pc 390
        (_ret = xs.Tools.Ml.createString("MiracleWeapon_seven"));
        break;
        case 8:
        // source line 45, bytecode pc 431
        (_ret = xs.Tools.Ml.createString("MiracleWeapon_eight"));
        break;
        case 9:
        // source line 48, bytecode pc 472
        (_ret = xs.Tools.Ml.createString("MiracleWeapon_nine"));
        break;
        case 10:
        // source line 51, bytecode pc 513
        (_ret = xs.Tools.Ml.createString("MiracleWeapon_ten"));
        break;
        case 11:
        // source line 54, bytecode pc 554
        (_ret = xs.Tools.Ml.createString("MiracleWeapon_eleven"));
        break;
        default:
        // source line 57, bytecode pc 568
        (_ret = "");
        // source line 58, bytecode pc 591
        this.warn(("convNumberString:" + valueInt));
        break;
    }
    // source line 67, bytecode pc 600
    return _ret;
},
    convSmartString: function(string) {
    var _ret, _modelGeneral, _nameStr;
    // source line 72, bytecode pc 6
    (_ret = string);
    if ((string.indexOf("$UserName") >= 0)) {
        // source line 74, bytecode pc 116
        (_ret = string.replace("$UserName", xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerName()));
    } else {
        if ((string.indexOf("$GeneralName_Fst") >= 0)) {
            // source line 80, bytecode pc 210
            (_modelGeneral = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getFirstWineGeneral());
            if (_modelGeneral) {
                // source line 82, bytecode pc 236
                (_nameStr = _modelGeneral.getNameString());
                // source line 83, bytecode pc 264
                (_ret = string.replace("$GeneralName_Fst", _nameStr));
            }
        } else {
            if ((string.indexOf("$GirlName") >= 0)) {
                // source line 90, bytecode pc 358
                (_modelGeneral = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getFirstChooseGeneral());
                if (_modelGeneral) {
                    // source line 92, bytecode pc 384
                    (_nameStr = _modelGeneral.getNameString());
                    // source line 93, bytecode pc 412
                    (_ret = string.replace("$GirlName", _nameStr));
                }
            }
        }
    }
    // source line 98, bytecode pc 416
    return _ret;
},
    replaceStringByArray: function(string, array) {
    var _ret, i, str;
    // source line 103, bytecode pc 6
    (_ret = string);
    // source line 105, bytecode pc 11
    (i = 0);
    while ((i < array.length)) {
        // source line 106, bytecode pc 30
        (str = ("$" + i));
        // source line 109, bytecode pc 60
        (_ret = string.replace(str, array[i]));
        // source line 110, bytecode pc 67
        (string = _ret);
        // source line 105, bytecode pc 82
        i++;
    }
    // source line 114, bytecode pc 104
    return _ret;
},
    _getCfg: function(key) {
    var _cfg;
    // source line 118, bytecode pc 22
    (_cfg = xs.Cfg.String[key]);
    // source line 122, bytecode pc 26
    return _cfg;
},
    createString: function(key, langage) {
    // source line 128, bytecode pc 34
    return xs.Tools.Ml.createString(key, langage);
},
    createStringWithArgsArray: function(key, argsArray, langage) {
    var _argsArray, _ret, i, _arg;
    // source line 134, bytecode pc 17
    (_argsArray = (argsArray || []));
    // source line 136, bytecode pc 66
    xs.assert(xs.Utils.isArray(_argsArray), "createWithArgs need array");
    // source line 138, bytecode pc 90
    (_ret = this.createString(key, langage));
    // source line 140, bytecode pc 95
    (i = 0);
    while ((i < _argsArray.length)) {
        // source line 141, bytecode pc 112
        (_arg = _argsArray[i]);
        // source line 142, bytecode pc 146
        (_ret = _ret.replace(("$" + (i + 1)), _arg));
        // source line 140, bytecode pc 161
        i++;
    }
    // source line 144, bytecode pc 183
    return _ret;
},
    formatFloatDotLimit: function(str, limit) {
    var _ret, _idx_dot;
    // source line 150, bytecode pc 6
    (_ret = str);
    // source line 152, bytecode pc 30
    (_idx_dot = str.indexOf("."));
    if (_idx_dot) {
        // source line 155, bytecode pc 68
        (_ret = str.substring(0, ((_idx_dot + limit) + 1)));
        while ((_ret.length < ((_idx_dot + limit) + 1))) {
            // source line 159, bytecode pc 87
            (_ret = (_ret + "0"));
        }
    } else {
        // source line 164, bytecode pc 129
        (_ret = (_ret + "."));
        while ((limit-- <= 0)) {
            // source line 167, bytecode pc 148
            (_ret = (_ret + "0"));
        }
    }
    // source line 170, bytecode pc 174
    return _ret;
}
}));
