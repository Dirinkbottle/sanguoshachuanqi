// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Tools/CmdShell.js:1
// source line 13, bytecode pc 62
(xs.Tools.CmdShell = (xs.Tools.CmdShell || {
    name: "xs.Tools.CmdShell ",
    doShell: function(cmd_string) {
    var _str_shell, skillName;
    if (!cmd_string) {
        // source line 16, bytecode pc 10
        return false;
    }
    if (((cmd_string.indexOf("cmd ") == 0) || (cmd_string.indexOf("Cmd ") == 0))) {
        // source line 23, bytecode pc 86
        (_str_shell = cmd_string.slice(4));
        // source line 25, bytecode pc 113
        xs.log("Shell", _str_shell);
        if ((_str_shell.indexOf("debug") >= 0)) {
            // source line 28, bytecode pc 173
            xs.Scene.Mgr.changeSceneByName("DebugScene");
            // source line 29, bytecode pc 175
            return true;
        }
        if ((_str_shell.indexOf("error") >= 0)) {
            // source line 33, bytecode pc 225
            xs.error("error test");
            // source line 34, bytecode pc 227
            return true;
        }
        if ((_str_shell.indexOf("update cfg") >= 0)) {
            // source line 42, bytecode pc 281
            xs.Tools.Net.requestSGSConfig();
            // source line 43, bytecode pc 283
            return true;
        }
        if ((_str_shell.indexOf("skill ") >= 0)) {
            // source line 51, bytecode pc 339
            (skillName = _str_shell.slice("skill ".length));
            // source line 53, bytecode pc 366
            xs.log("skillName", skillName);
            // source line 57, bytecode pc 403
            xs.Tools.Scene.gotoSkillPreviewFight(skillName, function() {
    // source line 58, bytecode pc 26
    xs.Scene.Mgr.gotoLastSceneSafe();
});
            // source line 61, bytecode pc 405
            return true;
        }
    }
    // source line 68, bytecode pc 407
    return false;
}
}));
