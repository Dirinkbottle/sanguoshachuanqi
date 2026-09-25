// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Core/Cocos2d-x/jsb_debugger.js:1
// source line 4, bytecode pc 0
var textCommandProcessor;
// source line 288, bytecode pc 5
var jsonResponder;
// source line 327, bytecode pc 10
var textResponder;
// source line 421, bytecode pc 15
var breakpointHandler;
// source line 434, bytecode pc 20
var stepFunction;
// source line 455, bytecode pc 25
var debugObject;
// source line 1, bytecode pc 46
(dbg = {});
// source line 2, bytecode pc 62
(dbg.log = log);
// source line 4, bytecode pc 79
(textCommandProcessor = {});
// source line 6, bytecode pc 95
(textCommandProcessor["break"] = function(str) {
    var md, scripts, tmpScript, breakLine, off, n;
    /* TODO_BYTECODE pc=11 opcode=regexp reason=regexp_object_literal_not_dumped */
    // source line 7, bytecode pc 23
    (md = str.match(undefined /* TODO_BYTECODE pc=11 opcode=regexp reason=regexp_object_literal_not_dumped */));
    if (!md) {
        // source line 12, bytecode pc 65
        return { commandname: "break", success: false, stringResult: "command could not be parsed" }
    }
    // source line 15, bytecode pc 86
    (scripts = dbg.scripts[md[2]]);
    // source line 16, bytecode pc 91
    (tmpScript = null);
    if (scripts) {
        // source line 18, bytecode pc 127
        (breakLine = parseInt(md[3], 10));
        // source line 19, bytecode pc 133
        (off = -1);
        // source line 20, bytecode pc 138
        (n = 0);
        while ((n < scripts.length)) {
            // source line 21, bytecode pc 177
            (offsets = scripts[n].getLineOffsets(breakLine));
            if ((offsets.length > 0)) {
                // source line 23, bytecode pc 205
                (off = offsets[0]);
                // source line 24, bytecode pc 216
                (tmpScript = scripts[n]);
                break;
            }
            // source line 20, bytecode pc 235
            (n = (+n + 1));
        }
        if ((off >= 0)) {
            // source line 29, bytecode pc 289
            tmpScript.setBreakpoint(off, breakpointHandler);
            // source line 33, bytecode pc 331
            return { commandname: "break", success: true, jsfilename: md[2], breakpointlinenumber: breakLine }
        } else {
            // source line 37, bytecode pc 369
            return { commandname: "break", success: false, stringResult: "no valid offsets at that line" }
        }
    } else {
        // source line 43, bytecode pc 418
        return { commandname: "break", success: false, jsfilename: md[2], stringResult: "Invalid script name" }
    }
});
// source line 47, bytecode pc 111
(textCommandProcessor.info = function(str) {
    var report, md;
    // source line 48, bytecode pc 8
    (report = "");
    /* TODO_BYTECODE pc=20 opcode=regexp reason=regexp_object_literal_not_dumped */
    // source line 50, bytecode pc 32
    (md = str.match(undefined /* TODO_BYTECODE pc=20 opcode=regexp reason=regexp_object_literal_not_dumped */));
    if (md) {
        // source line 52, bytecode pc 53
        (report = (report + "info - NYI"));
        // source line 53, bytecode pc 72
        (report = (report + ("\nmd[0] = " + md[0])));
        // source line 54, bytecode pc 91
        (report = (report + ("\nmd[1] = " + md[1])));
        // source line 58, bytecode pc 122
        return { commandname: "info", success: true, stringResult: report }
    } else {
        // source line 62, bytecode pc 158
        return { commandname: "info", success: false, stringResult: report }
    }
});
// source line 66, bytecode pc 127
(textCommandProcessor.clear = function(str) {
    var report;
    // source line 67, bytecode pc 8
    (report = "");
    // source line 69, bytecode pc 21
    (report = (report + "clearing all breakpoints"));
    // source line 71, bytecode pc 43
    dbg.dbg.clearAllBreakpoints();
    // source line 74, bytecode pc 74
    return { commandname: "clear", success: true, stringResult: report }
});
// source line 77, bytecode pc 143
(textCommandProcessor.scripts = function(str) {
    var report;
    // source line 78, bytecode pc 8
    (report = "List of available scripts\n");
    // source line 79, bytecode pc 60
    (report = (report + Object.keys(dbg.scripts).join("\n")));
    // source line 83, bytecode pc 91
    return { commandname: "scripts", success: true, stringResult: report }
});
// source line 86, bytecode pc 159
(textCommandProcessor.step = function(str, frame, script) {
    if (frame) {
        // source line 88, bytecode pc 55
        (dbg.breakLine = (script.getOffsetLine(frame.offset) + 1));
        // source line 89, bytecode pc 75
        (frame.onStep = function() {
    // source line 90, bytecode pc 39
    stepFunction(frame, frame.script);
    // source line 91, bytecode pc 45
    return undefined;
});
        // source line 93, bytecode pc 87
        (stop = true);
        // source line 94, bytecode pc 102
        _unlockVM();
        // source line 98, bytecode pc 135
        return { commandname: "step", success: true, stringResult: "" }
    } else {
        // source line 102, bytecode pc 173
        return { commandname: "step", success: false, stringResult: "" }
    }
});
// source line 106, bytecode pc 175
(textCommandProcessor["continue"] = function(str, frame, script) {
    if (frame) {
        // source line 108, bytecode pc 21
        (frame.onStep = undefined);
        // source line 109, bytecode pc 33
        (dbg.breakLine = 0);
    }
    // source line 111, bytecode pc 45
    (stop = true);
    // source line 112, bytecode pc 60
    _unlockVM();
    // source line 116, bytecode pc 93
    return { commandname: "continue", success: true, stringResult: "" }
});
// source line 119, bytecode pc 191
(textCommandProcessor.deval = function(str, frame, script) {
    var md, devalReturn, stringreport, arguments;
    // source line 119, bytecode pc 10
    (arguments = arguments);
    /* TODO_BYTECODE pc=28 opcode=regexp reason=regexp_object_literal_not_dumped */
    // source line 121, bytecode pc 46
    (md = str.match(undefined /* TODO_BYTECODE pc=28 opcode=regexp reason=regexp_object_literal_not_dumped */));
    if (md[1]) {
        /* TODO_BYTECODE pc=63 opcode=try reason=control_or_scope_semantics_not_structured */
        // source line 124, bytecode pc 102
        (devalReturn = eval(md[1]));
        if (devalReturn) {
            // source line 126, bytecode pc 152
            (stringreport = debugObject(devalReturn, true));
            // source line 129, bytecode pc 189
            return { commandname: "deval", success: true, stringResult: stringreport }
        }
    } else {
        // source line 139, bytecode pc 309
        return { commandname: "deval", success: false, stringResult: "could not parse script to evaluate" }
    }
});
// source line 144, bytecode pc 207
(textCommandProcessor.eval = function(str, frame, script) {
    var stringToEval, evalResult, stringreport;
    if (!frame) {
        // source line 148, bytecode pc 41
        return { commandname: "eval", success: false, stringResult: "no frame to eval in" }
    }
    // source line 151, bytecode pc 62
    (stringToEval = str.substring(4));
    if (stringToEval) {
        try {
            // source line 155, bytecode pc 105
            (evalResult = frame.eval((("JSON.stringify(eval(" + stringToEval) + "));")));
            if ((evalResult && evalResult["return"])) {
                // source line 157, bytecode pc 139
                (stringreport = evalResult["return"]);
                // source line 161, bytecode pc 170
                return { commandname: "eval", success: true, stringResult: stringreport }
            } else {
                if ((evalResult && evalResult["throw"])) {
                    // source line 165, bytecode pc 244
                    return {
    commandname: "eval",
    success: false,
    stringResult: ("got exception: " + evalResult["throw"].message)
}
                } else {
                    // source line 169, bytecode pc 282
                    return { commandname: "eval", success: false, stringResult: "invalid return from eval" }
                }
            }
        } catch (e) {
            // source line 172, bytecode pc 324
            dbg.log(("exception = " + e));
            // source line 175, bytecode pc 361
            return { commandname: "eval", success: false, stringResult: ("Exception : " + e) }
        }
    }
});
// source line 180, bytecode pc 223
(textCommandProcessor.line = function(str, frame, script) {
    if (frame) {
        try {
            // source line 185, bytecode pc 59
            return { commandname: "line", success: true, stringResult: script.getOffsetLine(frame.offset) }
        } catch (e) {
            // source line 189, bytecode pc 111
            return { commandname: "line", success: false, stringResult: ("exception " + e) }
        }
    }
    // source line 196, bytecode pc 157
    return { commandname: "line", success: false, stringResult: "NOLINE" }
});
// source line 199, bytecode pc 239
(textCommandProcessor.backtrace = function(str, frame, script) {
    var result, cur, stack;
    if (!frame) {
        // source line 203, bytecode pc 41
        return { commandname: "backtrace", success: false, stringResult: "no valid frame" }
    }
    // source line 206, bytecode pc 50
    (result = "");
    // source line 207, bytecode pc 57
    (cur = frame);
    // source line 208, bytecode pc 118
    (stack = [ ((cur.script.url + ":") + cur.script.getOffsetLine(cur.offset)) ]);
    while ((cur = cur.older)) {
        // source line 210, bytecode pc 188
        stack.push(((cur.script.url + ":") + cur.script.getOffsetLine(cur.offset)));
    }
    // source line 212, bytecode pc 233
    (result = (result + stack.join("\n")));
    // source line 216, bytecode pc 264
    return { commandname: "backtrace", success: true, stringResult: result }
});
// source line 219, bytecode pc 255
(textCommandProcessor.uiresponse = function(str) {
    var subcommandstring, response;
    /* TODO_BYTECODE pc=33 opcode=regexp reason=regexp_object_literal_not_dumped */
    // source line 220, bytecode pc 51
    (subcommandstring = str.substring("uiresponse".length).replace(undefined /* TODO_BYTECODE pc=33 opcode=regexp reason=regexp_object_literal_not_dumped */, ""));
    // source line 221, bytecode pc 60
    (response = "");
    // source line 222, bytecode pc 64
    switch (subcommandstring) {
        case "json":
        // source line 224, bytecode pc 105
        (dbg.responder = jsonResponder);
        // source line 225, bytecode pc 118
        (response = (response + "DEBUGGER UI : responding with json messages"));
        break;
        case "plaintext":
        // source line 228, bytecode pc 139
        (dbg.responder = textResponder);
        // source line 229, bytecode pc 152
        (response = (response + "DEBUGGER UI : responding with plaintext messages"));
        break;
        default:
        break;
    }
    // source line 237, bytecode pc 190
    return { commandname: "uiresponse", success: true, stringResult: "" }
});
// source line 240, bytecode pc 271
(textCommandProcessor.help = function() {
    // source line 241, bytecode pc 14
    _printHelp();
    // source line 245, bytecode pc 47
    return { commandname: "help", success: true, stringResult: "" }
});
// source line 248, bytecode pc 287
(textCommandProcessor.getCommandProcessor = function(str) {
    var md;
    /* TODO_BYTECODE pc=11 opcode=regexp reason=regexp_object_literal_not_dumped */
    // source line 250, bytecode pc 23
    (md = str.match(undefined /* TODO_BYTECODE pc=11 opcode=regexp reason=regexp_object_literal_not_dumped */));
    if (!md) {
        // source line 252, bytecode pc 34
        return null;
    }
    // source line 254, bytecode pc 40
    switch (md[0]) {
        case "b":
        case "break":
        // source line 257, bytecode pc 206
        return textCommandProcessor["break"];
        case "info":
        // source line 259, bytecode pc 217
        return textCommandProcessor.info;
        case "clear":
        // source line 261, bytecode pc 228
        return textCommandProcessor.clear;
        case "scripts":
        // source line 263, bytecode pc 239
        return textCommandProcessor.scripts;
        case "s":
        case "step":
        // source line 266, bytecode pc 250
        return textCommandProcessor.step;
        case "c":
        case "continue":
        // source line 269, bytecode pc 261
        return textCommandProcessor["continue"];
        case "deval":
        // source line 271, bytecode pc 272
        return textCommandProcessor.deval;
        case "eval":
        // source line 273, bytecode pc 283
        return textCommandProcessor.eval;
        case "line":
        // source line 275, bytecode pc 294
        return textCommandProcessor.line;
        case "bt":
        // source line 277, bytecode pc 305
        return textCommandProcessor.backtrace;
        case "uiresponse":
        // source line 279, bytecode pc 316
        return textCommandProcessor.uiresponse;
        case "help":
        // source line 281, bytecode pc 327
        return textCommandProcessor.help;
        default:
        // source line 283, bytecode pc 329
        return null;
    }
});
// source line 288, bytecode pc 304
(jsonResponder = {});
// source line 290, bytecode pc 320
(jsonResponder.write = function(str) {
    // source line 291, bytecode pc 18
    _bufferWrite(str);
    // source line 292, bytecode pc 39
    _bufferWrite("\n");
    // source line 293, bytecode pc 74
    _bufferWrite(String.fromCharCode(23));
});
// source line 296, bytecode pc 336
(jsonResponder.onBreakpoint = function(filename, linenumber) {
    var response;
    // source line 300, bytecode pc 56
    (response = { from: "server", why: "onBreakpoint", data: { jsfilename: filename, linenumber: linenumber } });
    // source line 302, bytecode pc 90
    this.write(JSON.stringify(response));
});
// source line 305, bytecode pc 352
(jsonResponder.onStep = function(filename, linenumber) {
    var response;
    // source line 309, bytecode pc 56
    (response = { from: "server", why: "onStep", data: { jsfilename: filename, linenumber: linenumber } });
    // source line 311, bytecode pc 90
    this.write(JSON.stringify(response));
});
// source line 314, bytecode pc 368
(jsonResponder.commandResponse = function(commandresult) {
    var response;
    // source line 317, bytecode pc 37
    (response = { from: "server", why: "commandresponse", data: commandresult });
    // source line 319, bytecode pc 71
    this.write(JSON.stringify(response));
});
// source line 322, bytecode pc 384
(jsonResponder.commandNotFound = function() {
});
// source line 327, bytecode pc 401
(textResponder = {});
// source line 329, bytecode pc 417
(textResponder.write = function(str) {
    // source line 330, bytecode pc 18
    _bufferWrite(str);
    // source line 331, bytecode pc 39
    _bufferWrite("\n");
    // source line 332, bytecode pc 74
    _bufferWrite(String.fromCharCode(23));
});
// source line 335, bytecode pc 433
(textResponder.onBreakpoint = function(filename, linenumber) {
    var shortFilename, response;
    // source line 336, bytecode pc 40
    (shortFilename = filename.substring((filename.lastIndexOf("/") + 1)));
    // source line 337, bytecode pc 63
    (response = ((("Breakpoint hit at " + shortFilename) + " line number : ") + linenumber));
    // source line 338, bytecode pc 80
    this.write(response);
});
// source line 341, bytecode pc 449
(textResponder.onStep = function(filename, linenumber) {
    var shortFilename, response;
    // source line 342, bytecode pc 40
    (shortFilename = filename.substring((filename.lastIndexOf("/") + 1)));
    // source line 343, bytecode pc 63
    (response = ((("Stopped at " + shortFilename) + " line number : ") + linenumber));
    // source line 344, bytecode pc 80
    this.write(response);
});
// source line 347, bytecode pc 465
(textResponder.commandResponse = function(commandresult) {
    var response;
    // source line 348, bytecode pc 8
    (response = "");
    try {
        // source line 351, bytecode pc 18
        switch (commandresult.commandname) {
            case "break":
            if (!commandresult.success) {
                // source line 354, bytecode pc 169
                (response = (response + ("ERROR : " + commandresult.stringResult)));
            }
            break;
            case "info":
            if (!commandresult.success) {
                // source line 359, bytecode pc 210
                (response = (response + ("ERROR : " + commandresult.stringResult)));
            }
            break;
            case "clear":
            break;
            case "scripts":
            if ((true === commandresult.success)) {
                // source line 366, bytecode pc 251
                (response = (response + commandresult.stringResult));
            }
            break;
            case "step":
            if (!commandresult.success) {
                // source line 371, bytecode pc 292
                (response = (response + ("ERROR : step failed " + commandresult.stringResult)));
            }
            break;
            case "continue":
            if (!commandresult.success) {
                // source line 376, bytecode pc 333
                (response = (response + ("ERROR : continue failed " + commandresult.stringResult)));
            }
            break;
            case "deval":
            if ((true === commandresult.success)) {
                // source line 381, bytecode pc 369
                (response = (response + commandresult.stringResult));
            } else {
                // source line 383, bytecode pc 396
                (response = (response + ("ERROR : deval failed " + commandresult.stringResult)));
            }
            break;
            case "eval":
            if ((true === commandresult.success)) {
                // source line 388, bytecode pc 432
                (response = (response + commandresult.stringResult));
            } else {
                // source line 390, bytecode pc 459
                (response = (response + ("ERROR : eval failed " + commandresult.stringResult)));
            }
            break;
            case "line":
            if ((true === commandresult.success)) {
                // source line 395, bytecode pc 495
                (response = (response + commandresult.stringResult));
            } else {
                // source line 397, bytecode pc 522
                (response = (response + ("ERROR : " + commandresult.stringResult)));
            }
            break;
            case "backtrace":
            if ((true === commandresult.success)) {
                // source line 402, bytecode pc 558
                (response = (response + commandresult.stringResult));
            } else {
                // source line 404, bytecode pc 585
                (response = (response + ("ERROR : " + commandresult.stringResult)));
            }
            break;
            case "help":
            break;
            default:
            break;
        }
    } catch (e) {
        // source line 411, bytecode pc 627
        (response = (response + ("\nException logging response " + e)));
        /* TODO_BYTECODE pc=628 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 414, bytecode pc 653
    this.write(response);
});
// source line 417, bytecode pc 481
(textResponder.commandNotFound = function() {
    // source line 418, bytecode pc 14
    _printCommandNotFound();
});
// source line 422, bytecode pc 508
(breakpointHandler = {
    hit: function(frame) {
    var script;
    try {
        // source line 424, bytecode pc 65
        dbg.responder.onBreakpoint(frame.script.url, frame.script.getOffsetLine(frame.offset));
    } catch (e) {
        // source line 426, bytecode pc 107
        dbg.log(("exception " + e));
        /* TODO_BYTECODE pc=108 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 429, bytecode pc 128
    (script = frame.script);
    // source line 430, bytecode pc 156
    _lockVM(frame, frame.script);
}
});
// source line 434, bytecode pc 524
(stepFunction = function(frame, script) {
    var curLine;
    if ((dbg.breakLine > 0)) {
        // source line 436, bytecode pc 43
        (curLine = script.getOffsetLine(frame.offset));
        if ((curLine < dbg.breakLine)) {
            // source line 438, bytecode pc 64
            return void 0;
        } else {
            try {
                // source line 441, bytecode pc 135
                dbg.responder.onStep(frame.script.url, frame.script.getOffsetLine(frame.offset));
            } catch (e) {
                // source line 443, bytecode pc 177
                dbg.log(("exception " + e));
                /* TODO_BYTECODE pc=178 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
            }
            // source line 446, bytecode pc 209
            _lockVM(frame, script);
        }
    } else {
        // source line 451, bytecode pc 237
        dbg.log("invalid state onStep");
    }
});
// source line 455, bytecode pc 540
(debugObject = function(r, isNormal) {
    var stringres, props, desc;
    // source line 456, bytecode pc 8
    (stringres = "");
    try {
        // source line 458, bytecode pc 33
        (stringres = (stringres + (("* " + typeof(r)) + "\n")));
        if ((typeof(r) != "object")) {
            // source line 460, bytecode pc 71
            (stringres = (stringres + (("~> " + r) + "\n")));
        } else {
            if (isNormal) {
                // source line 464, bytecode pc 112
                (props = Object.keys(r));
            } else {
                // source line 466, bytecode pc 135
                (props = r.getOwnPropertyNames());
            }
            for (var k in props) {
                // source line 469, bytecode pc 188
                (desc = r.getOwnPropertyDescriptor(props[k]));
                // source line 470, bytecode pc 217
                (stringres = (stringres + (("~> " + props[k]) + " = ")));
                if (desc.value) {
                    // source line 472, bytecode pc 252
                    (stringres = (stringres + ("" + desc.value)));
                } else {
                    if (desc.get) {
                        // source line 474, bytecode pc 298
                        (stringres = (stringres + ("" + desc.get())));
                    } else {
                        // source line 476, bytecode pc 316
                        (stringres = (stringres + "undefined (no value or getter)"));
                    }
                }
                // source line 478, bytecode pc 329
                (stringres = (stringres + "\n"));
            }
        }
        // source line 482, bytecode pc 341
        return stringres;
    } catch (e) {
        // source line 484, bytecode pc 366
        return ("Exception when accessing object properties = " + e);
    }
});
// source line 488, bytecode pc 552
(dbg.breakLine = 0);
// source line 490, bytecode pc 564
(this.processInput = function(inputstr, frame, script) {
    var command_func, command_return, commands_array, _command, i, _output;
    // source line 493, bytecode pc 16
    (commands_array = []);
    if (!inputstr) {
        // source line 498, bytecode pc 35
        return void 0;
    }
    /* TODO_BYTECODE pc=47 opcode=regexp reason=regexp_object_literal_not_dumped */
    // source line 502, bytecode pc 65
    (inputstr = inputstr.replace(undefined /* TODO_BYTECODE pc=47 opcode=regexp reason=regexp_object_literal_not_dumped */, ""));
    // source line 505, bytecode pc 89
    (commands_array = inputstr.split("\n"));
    // source line 516, bytecode pc 94
    (i = 0);
    while ((i < commands_array.length)) {
        if ((i in commands_array)) {
            // source line 518, bytecode pc 123
            (_command = commands_array[i]);
            if ((_command === "")) {
            } else {
                // source line 525, bytecode pc 166
                (command_func = dbg.getCommandProcessor(_command));
                if (!command_func) {
                    // source line 528, bytecode pc 198
                    dbg.log("did not find a command processor!");
                    // source line 529, bytecode pc 220
                    dbg.responder.commandNotFound();
                } else {
                    try {
                        // source line 532, bytecode pc 250
                        (command_return = command_func(_command, frame, script));
                        if ((true === command_return.success)) {
                            // source line 534, bytecode pc 291
                            dbg.responder.commandResponse(command_return);
                        } else {
                            // source line 536, bytecode pc 328
                            dbg.log(("command failed. return value = " + command_return.stringResult));
                            // source line 537, bytecode pc 354
                            dbg.responder.commandResponse(command_return);
                        }
                    } catch (e) {
                        // source line 540, bytecode pc 402
                        dbg.log((("Exception in command processing. e =\n" + e) + "\n"));
                        // source line 543, bytecode pc 439
                        (_output = { success: false, commandname: command_func.name, stringResult: e });
                        // source line 544, bytecode pc 465
                        dbg.responder.commandResponse(_output);
                        /* TODO_BYTECODE pc=466 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
                    }
                }
            }
        }
        // source line 516, bytecode pc 488
        (i = (+i + 1));
    }
});
// source line 552, bytecode pc 580
(_printCommandNotFound = function() {
    var str;
    // source line 553, bytecode pc 8
    (str = "ERROR : command not found!\n");
    // source line 554, bytecode pc 27
    _bufferWrite(str);
});
// source line 557, bytecode pc 596
(_printHelp = function() {
    var help;
    // source line 558, bytecode pc 8
    (help = "break filename:numer\tAdds a breakpoint at a given filename and line number\nclear\tClear all breakpoints\nc / continue\tContinues the execution\ns / step\tStep\nbt\tBacktrace\nscripts\tShow the scripts\nline\tShows current line\neval js_command\tEvaluates JS code\ndeval js_command\tEvaluates JS Debugger command\nuiresponse [json|plaintext] Switch between JSON and plaintext output from the debugger\n");
    // source line 568, bytecode pc 27
    _bufferWrite(help);
});
// source line 571, bytecode pc 612
(dbg.scripts = []);
// source line 573, bytecode pc 628
(dbg.onNewScript = function(script) {
    var last, children, arr;
    // source line 575, bytecode pc 39
    (last = script.url.split("/").pop());
    // source line 577, bytecode pc 57
    (children = script.getChildScripts());
    // source line 578, bytecode pc 88
    (arr = [ script ].concat(children));
    // source line 589, bytecode pc 106
    (dbg.scripts[last] = arr);
});
// source line 592, bytecode pc 644
(dbg.onError = function(frame, report) {
    if ((dbg.socket && report)) {
        // source line 594, bytecode pc 79
        _socketWrite(dbg.socket, ((("!! exception @ " + report.file) + ":") + report.line));
    }
    // source line 596, bytecode pc 102
    dbg.log("!! exception");
});
// source line 599, bytecode pc 656
(this._prepareDebugger = function(global) {
    var tmp;
    // source line 600, bytecode pc 17
    (tmp = new Debugger(global));
    // source line 601, bytecode pc 36
    (tmp.onNewScript = dbg.onNewScript);
    // source line 602, bytecode pc 55
    (tmp.onDebuggerStatement = dbg.onDebuggerStatement);
    // source line 603, bytecode pc 74
    (tmp.onError = dbg.onError);
    // source line 604, bytecode pc 88
    (dbg.dbg = tmp);
    // source line 607, bytecode pc 109
    (dbg.getCommandProcessor = textCommandProcessor.getCommandProcessor);
    // source line 610, bytecode pc 125
    (dbg.responder = textResponder);
});
// source line 613, bytecode pc 668
(this._startDebugger = function(global, files, startFunc) {
    var i;
    for (var i in files) {
        try {
            // source line 617, bytecode pc 51
            global.eval((("require('" + files[i]) + "');"));
        } catch (e) {
            // source line 619, bytecode pc 97
            dbg.log(("[DBG] error evaluating file: " + files[i]));
            /* TODO_BYTECODE pc=98 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
        }
    }
    if (startFunc) {
        // source line 625, bytecode pc 141
        global.eval(startFunc);
    }
});
