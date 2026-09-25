// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Debug/Logger.js:1
// source line 1, bytecode pc 42
(xs.Debug.Logger = (xs.Debug.Logger || {}));
// source line 6, bytecode pc 64
(xs.Debug.Logger._SGSLOGPRIORITY_OFFSET = 0);
// source line 8, bytecode pc 108
(xs.Debug.Logger._SGSVERBOSE = (2 + xs.Debug.Logger._SGSLOGPRIORITY_OFFSET));
// source line 9, bytecode pc 152
(xs.Debug.Logger._SGSDEBUG = (3 + xs.Debug.Logger._SGSLOGPRIORITY_OFFSET));
// source line 10, bytecode pc 196
(xs.Debug.Logger._SGSINFO = (4 + xs.Debug.Logger._SGSLOGPRIORITY_OFFSET));
// source line 11, bytecode pc 240
(xs.Debug.Logger._SGSWARN = (5 + xs.Debug.Logger._SGSLOGPRIORITY_OFFSET));
// source line 12, bytecode pc 284
(xs.Debug.Logger._SGSERROR = (6 + xs.Debug.Logger._SGSLOGPRIORITY_OFFSET));
// source line 15, bytecode pc 310
(xs.Debug.Logger._setLowestPriority = function(priority) {
    // source line 16, bytecode pc 70
    xs.JsbConnecter.getInstance().invoke("Log", "SGSCQLog_SetLowestPriority", xs.Utils.parseStringSafe(priority));
});
// source line 20, bytecode pc 336
(xs.Debug.Logger.setVerboseLog = function() {
    // source line 21, bytecode pc 47
    xs.Debug.Logger._setLowestPriority(xs.Debug.Logger._SGSVERBOSE);
});
// source line 23, bytecode pc 362
(xs.Debug.Logger.setDebugLog = function() {
    // source line 24, bytecode pc 47
    xs.Debug.Logger._setLowestPriority(xs.Debug.Logger._SGSDEBUG);
});
// source line 26, bytecode pc 388
(xs.Debug.Logger.setInfoLog = function() {
    // source line 27, bytecode pc 47
    xs.Debug.Logger._setLowestPriority(xs.Debug.Logger._SGSINFO);
});
// source line 29, bytecode pc 414
(xs.Debug.Logger.setWarnLog = function() {
    // source line 30, bytecode pc 47
    xs.Debug.Logger._setLowestPriority(xs.Debug.Logger._SGSWARN);
});
// source line 32, bytecode pc 440
(xs.Debug.Logger.setErrorLog = function() {
    // source line 33, bytecode pc 47
    xs.Debug.Logger._setLowestPriority(xs.Debug.Logger._SGSERROR);
});
// source line 39, bytecode pc 466
(xs.Debug.Logger.setLogFileName = function(fileName) {
    var _fileName, _cppVersion, _date;
    if (!xs.Debug.Logger._fileCreate) {
        // source line 42, bytecode pc 47
        (xs.Debug.Logger._fileCreate = true);
    } else {
        // source line 45, bytecode pc 54
        return void 0;
    }
    // source line 50, bytecode pc 63
    (_fileName = "");
    if (((fileName == null) || (fileName == "undefined"))) {
        // source line 54, bytecode pc 118
        (_cppVersion = xs.Tools.Jsb.getBuildVersion());
        // source line 55, bytecode pc 135
        (_fileName = ((_fileName + _cppVersion) + "_"));
        // source line 56, bytecode pc 159
        (_fileName = ((_fileName + xs.resVersion) + "_"));
        try {
            // source line 58, bytecode pc 232
            (_fileName = ((_fileName + xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId()) + "_"));
        } catch (e) {
            // source line 61, bytecode pc 270
            cc.log("无法获得玩家id");
            /* TODO_BYTECODE pc=271 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
        }
        // source line 63, bytecode pc 293
        (_date = new Date());
        // source line 64, bytecode pc 399
        (_fileName = (((((((((_fileName + _date.getFullYear()) + "_") + _date.getMonth()) + "_") + _date.getDate()) + "_") + _date.getHours()) + "_") + _date.getMinutes()));
        // source line 65, bytecode pc 412
        (_fileName = (_fileName + ".log"));
    } else {
        // source line 67, bytecode pc 424
        (_fileName = fileName);
    }
    // source line 69, bytecode pc 451
    cc.log(("Debug.Sgslog _fileName is " + _fileName));
    // source line 70, bytecode pc 522
    xs.JsbConnecter.getInstance().invoke("Log", "SGSCQLog_SetLogFileName", xs.Utils.parseStringSafe(_fileName));
});
// source line 75, bytecode pc 492
(xs.Debug.Logger.v = function(logStr) {
});
// source line 82, bytecode pc 518
(xs.Debug.Logger.d = function(logStr) {
});
// source line 87, bytecode pc 544
(xs.Debug.Logger.i = function(logStr) {
});
// source line 92, bytecode pc 570
(xs.Debug.Logger.w = function(logStr) {
});
// source line 97, bytecode pc 596
(xs.Debug.Logger.e = function(logStr) {
});
// source line 104, bytecode pc 622
(xs.Debug.Logger.SendLog = function() {
    // source line 105, bytecode pc 22
    cc.log("xs.Debug.Logger.SendLog");
    // source line 106, bytecode pc 73
    xs.JsbConnecter.getInstance().invoke("Log", "SGSCQLog_SendLogToUMENG", "");
});
// source line 110, bytecode pc 649
xs.Debug.Logger.setWarnLog();
