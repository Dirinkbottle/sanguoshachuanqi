// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/main.js:1
// source line 328, bytecode pc 0
var reStr;
// source line 9, bytecode pc 25
require("Core/headers.js");
// source line 10, bytecode pc 48
cc.log("main.js begin");
// source line 13, bytecode pc 80
xsc.require([ "Update/headers.js" ]);
// source line 18, bytecode pc 141
(xsc.app_account_sys = xs.JsbConnecter.getInstance().invoke("Build", "getAccountSysCode", ""));
// source line 19, bytecode pc 202
(xsc.app_indentify = xs.JsbConnecter.getInstance().invoke("Build", "getProjCode", ""));
// source line 21, bytecode pc 263
(xsc.app_channel = xs.JsbConnecter.getInstance().invoke("Cfg", "getChannelId", ""));
// source line 26, bytecode pc 324
(xsc.res = xs.JsbConnecter.getInstance().invoke("Cfg", "getResScaleTag", ""));
// source line 27, bytecode pc 385
(xsc.frameSize = xs.JsbConnecter.getInstance().invoke("Director", "getFrameSize", ""));
// source line 29, bytecode pc 444
(xsc.weiduan = ((xsc.app_indentify == xsc.Const_Proj_Code_226Small_Channel_Android) || (xsc.app_indentify == xsc.Const_Proj_Code_226Small_Channel_Ios)));
// source line 33, bytecode pc 565
(xsc.frameSize = cc.size(xsc.parseInt(xsc.frameSize.split("|")[0]), xsc.parseInt(xsc.frameSize.split("|")[1])));
if (((xsc.app_indentify == xsc.Const_Proj_Code_Develop) || ((xsc.app_indentify == xsc.Const_Proj_Code_TestOnline) || ((xsc.app_indentify == xsc.Const_Proj_Code_226_TestOnline) || (xsc.app_indentify == xsc.Const_Proj_Code_226_TW_TestOnline))))) {
    // source line 43, bytecode pc 696
    xsc.director.setDisplayStats(true);
} else {
    // source line 45, bytecode pc 725
    xsc.director.setDisplayStats(false);
}
// source line 50, bytecode pc 786
(xsc.searchPathRoot = xs.JsbConnecter.getInstance().invoke("Cfg", "getResPath", ""));
// source line 51, bytecode pc 820
xsc.dump("getResPath", xsc.searchPathRoot);
// source line 53, bytecode pc 876
xsc.dump("getSearchPaths", cc.FileUtils.getInstance().getSearchPaths());
// source line 56, bytecode pc 897
(xs.invoke_setDesignResolutionSize_once = (function() {
    var _winSize, _radio, _policy, _policyName, _scaleX, _scaleY, _fixScale;
    // source line 58, bytecode pc 13
    (_winSize = xsc.frameSize);
    // source line 60, bytecode pc 34
    (_radio = (_winSize.width / _winSize.height));
    // source line 65, bytecode pc 97
    xsc.dump("radio and size", { radio: _radio, winSize: JSON.stringify(_winSize) });
    // source line 69, bytecode pc 102
    (_policy = null);
    if ((((xsc.sw_min / xsc.sh_max) <= _radio) && (_radio <= (xsc.sw_max / xsc.sh_min)))) {
        // source line 74, bytecode pc 186
        (_policy = cc.RESOLUTION_POLICY.NOBORDER);
        // source line 75, bytecode pc 195
        (_policyName = "NOBORDER");
        // source line 77, bytecode pc 218
        (_scaleX = (xsc.sw_max / _winSize.width));
        // source line 78, bytecode pc 241
        (_scaleY = (xsc.sh_max / _winSize.height));
        // source line 81, bytecode pc 268
        (_fixScale = ((_scaleY < _scaleX) ? _scaleY : _scaleX));
        if (((_winSize.width < xsc.sw_min) || (_winSize.height < xsc.sh_min))) {
        } else {
            if (((_winSize.width > xsc.sw_max) || (_winSize.height > xsc.sh_max))) {
            } else {
                if ((_fixScale > 1)) {
                    // source line 92, bytecode pc 391
                    (_fixScale = 1);
                }
            }
        }
        // source line 97, bytecode pc 414
        (xsc.sw = (_winSize.width * _fixScale));
        // source line 98, bytecode pc 437
        (xsc.sh = (_winSize.height * _fixScale));
        if ((xsc.res === "s")) {
            // source line 102, bytecode pc 486
            xsc.director.setContentScaleFactor(0.75);
            // source line 103, bytecode pc 509
            xsc.log("setContentScaleFactor 0.75");
        } else {
            if ((xsc.res === "n")) {
                // source line 105, bytecode pc 559
                xsc.director.setContentScaleFactor(1);
                // source line 106, bytecode pc 582
                xsc.log("setContentScaleFactor 1");
            } else {
                // source line 108, bytecode pc 623
                xsc.assert(false, "xsc.res error", xsc.res);
            }
        }
    } else {
        // source line 113, bytecode pc 647
        (_policy = cc.RESOLUTION_POLICY.SHOW_ALL);
        // source line 114, bytecode pc 656
        (_policyName = "SHOW_ALL");
        if (((xsc.sw_min / xsc.sh_max) > _radio)) {
            // source line 119, bytecode pc 707
            (xsc.sw = xsc.sw_min);
            // source line 120, bytecode pc 728
            (xsc.sh = xsc.sh_max);
        } else {
            // source line 124, bytecode pc 754
            (xsc.sw = xsc.sw_max);
            // source line 125, bytecode pc 775
            (xsc.sh = xsc.sh_min);
        }
    }
    // source line 134, bytecode pc 843
    xsc.dump("setDesignResolutionSize", { _policyName: _policyName, sw: xsc.sw, sh: xsc.sh });
    // source line 140, bytecode pc 891
    xsc.eglview.setDesignResolutionSize(xsc.sw, xsc.sh, _policy);
}).call(void 0));
// source line 212, bytecode pc 1005
(xs.readAndWriteSqlByWeiduan = {
    cfg: { retainListForStr: "" },
    _getWeiduanStr: function() {
    // source line 155, bytecode pc 5
    return "weiDuanFirst";
},
    isUpdateWeiduan: function() {
    var _result, _data, _empty;
    // source line 161, bytecode pc 4
    (_result = null);
    // source line 162, bytecode pc 33
    (_data = this.getItem(this._getWeiduanStr()));
    if ((_data == "")) {
        // source line 166, bytecode pc 56
        (_empty = "no");
        // source line 168, bytecode pc 86
        this.setItem(this._getWeiduanStr(), _empty);
        // source line 169, bytecode pc 93
        (_data = _empty);
    }
    // source line 174, bytecode pc 103
    return (_data == "ok");
},
    setWeiduanUpSql: function() {
    var mStr;
    // source line 180, bytecode pc 8
    (mStr = "ok");
    // source line 182, bytecode pc 38
    this.setItem(this._getWeiduanStr(), mStr);
},
    setItem: function(key, value) {
    // source line 188, bytecode pc 29
    sys.localStorage.setItem(key, value);
},
    getItem: function(key) {
    // source line 193, bytecode pc 25
    return sys.localStorage.getItem(key);
},
    isInList: function(mChil, mList) {
    var x;
    for (var x in mList) {
        if (!((mChil == mList[x]))) continue;
        // source line 202, bytecode pc 33
        return true;
    }
    // source line 206, bytecode pc 45
    return false;
},
    clearXS: function() {
    var mStr, i, retainStr, retainList;
    // source line 213, bytecode pc 8
    (mStr = "");
    for (var i in xs) {
        // source line 217, bytecode pc 43
        (mStr = (mStr + (i + ",")));
    }
    // source line 222, bytecode pc 82
    (mStr = mStr.substring(0, (mStr.length - 1)));
    // source line 224, bytecode pc 91
    (retainStr = "");
    if ((this.cfg.retainListForStr == "")) {
        // source line 226, bytecode pc 120
        (retainStr = mStr);
        // source line 227, bytecode pc 135
        (this.cfg.retainListForStr = retainStr);
    } else {
        // source line 230, bytecode pc 155
        (retainStr = this.cfg.retainListForStr);
    }
    // source line 234, bytecode pc 179
    (retainList = retainStr.split(","));
    for (var i in xs) {
        if (!(!this.isInList(i, retainList))) continue;
        // source line 240, bytecode pc 250
        cc.log(("delObj:" + i));
        // source line 241, bytecode pc 261
        (xs[i] = null);
    }
}
});
// source line 251, bytecode pc 1021
(xs.main_game = function() {
    if ((xsc.weiduan && xs.readAndWriteSqlByWeiduan)) {
        // source line 253, bytecode pc 52
        xs.readAndWriteSqlByWeiduan.clearXS();
    }
    // source line 259, bytecode pc 73
    (xs.sw = xsc.sw);
    // source line 260, bytecode pc 94
    (xs.sh = xsc.sh);
    // source line 262, bytecode pc 115
    (xs.app_account_sys = xsc.app_account_sys);
    // source line 263, bytecode pc 136
    (xs.app_indentify = xsc.app_indentify);
    // source line 265, bytecode pc 157
    (xs.res = xsc.res);
    // source line 266, bytecode pc 178
    (xs.frameSize = xsc.frameSize);
    // source line 267, bytecode pc 199
    (xs.weiduan = xsc.weiduan);
    // source line 269, bytecode pc 211
    (xs.isAdult = false);
    // source line 271, bytecode pc 224
    (xs.adultNum = 3);
    // source line 272, bytecode pc 236
    (xs.adultShowTime = 0);
    // source line 273, bytecode pc 250
    (xs.adultIntervalTime = 3600);
    // source line 275, bytecode pc 262
    (xs.isMobile = false);
    // source line 277, bytecode pc 274
    (xs.isTaskGoScene = false);
    // source line 280, bytecode pc 295
    require("Core/headers.js");
    // source line 284, bytecode pc 316
    require("headers.js");
    // source line 286, bytecode pc 343
    xs.Debug.Logger.SendLog();
    // source line 289, bytecode pc 378
    xs.Factorys.Sprite.load("Cmn01", true);
    // source line 290, bytecode pc 413
    xs.Factorys.Sprite.load("Cmn02", true);
    // source line 291, bytecode pc 448
    xs.Factorys.Sprite.load("Cmn03", true);
    if ((xs.Profile.UserCfg.isVoiceOn_Bg() === true)) {
        // source line 296, bytecode pc 508
        xs.Tools.Audio.turnOn_Bg();
    }
    if ((xs.Profile.UserCfg.isVoiceOn_Eff() === true)) {
        // source line 299, bytecode pc 568
        xs.Tools.Audio.turnOn_Eff();
    }
    if ((xs.Profile.UserCfg.isMemMode_UseMoreMem() === true)) {
        // source line 302, bytecode pc 628
        xs.Tools.Sys.turnOn_UseMoreMem();
    } else {
        // source line 305, bytecode pc 660
        xs.Tools.Sys.turnOff_UseMoreMem();
    }
    if ((xs.loadTest === true)) {
        // source line 310, bytecode pc 700
        cc.log("xs.loadTest === true, use main_test.js ");
        // source line 311, bytecode pc 721
        require("test/main_test.js");
    } else {
        // source line 314, bytecode pc 749
        cc.log("xs.loadTest === false,goto LoginScene ");
        // source line 315, bytecode pc 782
        xs.Scene.Mgr.changeSceneByName("LoginScene");
    }
});
if ((xsc.app_indentify == xsc.Const_Proj_Code_Develop)) {
    // source line 324, bytecode pc 1064
    xs.main_game();
} else {
    if ((xsc.weiduan && (xs.readAndWriteSqlByWeiduan ? !xs.readAndWriteSqlByWeiduan.isUpdateWeiduan() : false))) {
        // source line 328, bytecode pc 1194
        (reStr = xs.JsbConnecter.getInstance().invoke("Kefu", "onActionWithService", "11111|testname"));
        if ((reStr == "err")) {
            // source line 330, bytecode pc 1227
            xs.main_game();
        }
    } else {
        if (((xsc.app_indentify == xsc.Const_Proj_Code_TestOnline) || ((xsc.app_indentify == xsc.Const_Proj_Code_Official_Fst) || ((xsc.app_indentify == xsc.Const_Proj_Code_Official_Fst_Ios) || ((xsc.app_indentify == xsc.Const_Proj_Code_Official_Fst_Android) || ((xsc.app_indentify == xsc.Const_Proj_Code_Channel_Normal_Android) || ((xsc.app_indentify == xsc.Const_Proj_Code_Channel_Normal_Android2) || (xsc.app_indentify == xsc.Const_Proj_Code_AppStore_Ios)))))))) {
            // source line 347, bytecode pc 1437
            xs.main_game();
        } else {
            // source line 352, bytecode pc 1491
            xsc.Scene.Mgr.changeScene(xs.UpdateScene.create());
        }
    }
}
// source line 356, bytecode pc 1514
cc.log("main.js end");
