// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Tools/Ml.js:1
// source line 45, bytecode pc 41
(xs.Tools.Ml = {
    createString: function(stringId, language) {
    var _language, _dataCfg, _record, _result, defaultKey, valueDef;
    // source line 12, bytecode pc 27
    (_language = (language || xs.Cfg.ClientLanguage));
    // source line 15, bytecode pc 68
    (_dataCfg = xs.Tools.CfgData.getCfgDataByType(xs.Constant_CfgDataType_i18n));
    // source line 18, bytecode pc 79
    (_record = _dataCfg[stringId]);
    // source line 20, bytecode pc 88
    (_result = "");
    if (_record) {
        // source line 26, bytecode pc 107
        (_result = _record[_language]);
    } else {
        if (xs.Cfg.String[stringId]) {
            // source line 28, bytecode pc 164
            (_result = xs.Cfg.String[stringId].format);
        } else {
            // source line 30, bytecode pc 210
            (defaultKey = xs.Tools.CfgData.getDefaultKey(xs.Constant_CfgDataType_i18n));
            // source line 31, bytecode pc 221
            (valueDef = _dataCfg[defaultKey]);
            // source line 33, bytecode pc 275
            xs.warn(((((("_record not found! type=" + xs.Constant_CfgDataType_i18n) + " key=") + stringId) + " use defaultKey=") + defaultKey));
            // source line 34, bytecode pc 304
            (_result = (valueDef ? valueDef[_language] : " "));
        }
    }
    if ((!_result && (_result != ""))) {
        // source line 39, bytecode pc 365
        xs.warn("xs.Tools.Ml", ((stringId + "|") + _language));
        // source line 40, bytecode pc 371
        return "DefaultString";
    }
    // source line 42, bytecode pc 375
    return _result;
},
    createStringWithArgsArray: function(stringId, argsArray) {
    var _argsArray, _ret, i, _arg;
    // source line 47, bytecode pc 17
    (_argsArray = (argsArray || []));
    // source line 49, bytecode pc 66
    xs.assert(xs.Utils.isArray(_argsArray), "createWithArgs need array");
    // source line 51, bytecode pc 86
    (_ret = this.createString(stringId));
    // source line 53, bytecode pc 91
    (i = 0);
    while ((i < _argsArray.length)) {
        // source line 54, bytecode pc 108
        (_arg = _argsArray[i]);
        // source line 56, bytecode pc 142
        (_ret = _ret.replace(("$" + (i + 1)), _arg));
        // source line 53, bytecode pc 156
        (i = (+i + 1));
    }
    // source line 60, bytecode pc 179
    return _ret;
}
});
