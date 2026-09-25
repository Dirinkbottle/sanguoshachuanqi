// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Mgr.js:1
// source line 1621, bytecode pc 901
(xs.Views.Mgr = (xs.Views.Mgr || {
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    name: "xs.Views.Mgr",
    Cfg: { Tags: { Dialog: "Dialog", NotificationNode: "NotificationNode" } },
    Const: {
        Type_CmnView_LoadingLayer: 0,
        Type_CmnView_HungerMask: 1,
        Type_CmnView_DialogMask: 2,
        Type_CmnView_HollowOutLayer: 3
    },
    lastNet: {
        saveArguments: function(args) {
    // source line 38, bytecode pc 9
    (this.arguments = args);
}
    },
    lastView: {
        log: xs.Debug.emptyFunc,
        dump: xs.Debug.emptyFunc,
        m_laststacks: [ [], [], [], [], [] ],
        _getStackByType: function(type) {
    // source line 57, bytecode pc 10
    return this.m_laststacks[type];
},
        clearAll: function() {
    // source line 61, bytecode pc 23
    this.clear(xs.Constant_ViewType_None);
    // source line 62, bytecode pc 47
    this.clear(xs.Constant_ViewType_Dlg);
    // source line 63, bytecode pc 71
    this.clear(xs.Constant_ViewType_RandEvent);
    // source line 64, bytecode pc 95
    this.clear(xs.Constant_ViewType_HollowOut);
    // source line 65, bytecode pc 119
    this.clear(xs.Constant_ViewType_Story);
},
        clear: function(type) {
    // source line 69, bytecode pc 15
    (this.m_laststacks[type] = []);
},
        getStackLength: function(type) {
    // source line 73, bytecode pc 21
    return this._getStackByType(type).length;
},
        getStackTop: function(type) {
    var _stack, _ret;
    // source line 77, bytecode pc 19
    (_stack = this._getStackByType(type));
    // source line 78, bytecode pc 24
    (_ret = null);
    if ((_stack.length >= 1)) {
        // source line 80, bytecode pc 67
        this.log("getStackTop", _stack.length);
        // source line 81, bytecode pc 85
        (_ret = _stack[(_stack.length - 1)]);
    }
    // source line 83, bytecode pc 89
    return _ret;
},
        popArguments: function(type) {
    var _stack, _ret;
    // source line 88, bytecode pc 19
    (_stack = this._getStackByType(type));
    // source line 89, bytecode pc 37
    (_ret = _stack.pop());
    // source line 91, bytecode pc 60
    this._dumpStack("after popArguments", type);
    // source line 93, bytecode pc 64
    return _ret;
},
        pushArguments: function(type, args, dlgRef) {
    var _stack, _length;
    // source line 98, bytecode pc 19
    (_stack = this._getStackByType(type));
    // source line 99, bytecode pc 57
    (_length = _stack.push([ args, dlgRef ]));
    // source line 103, bytecode pc 80
    this._dumpStack("after pushArguments", type);
},
        _dumpStack: function(tag, type) {
    var _stack, i, _tmp;
    // source line 109, bytecode pc 19
    (_stack = this._getStackByType(type));
    if ((_stack.length === 0)) {
        // source line 112, bytecode pc 61
        this.log(tag, ("stack is empty:" + type));
    }
    // source line 115, bytecode pc 66
    (i = 0);
    while ((i < _stack.length)) {
        // source line 116, bytecode pc 83
        (_tmp = _stack[i]);
        // source line 117, bytecode pc 134
        this.log((((((tag + "-") + i) + "(") + type) + ")"), _tmp[0][1]);
        // source line 115, bytecode pc 149
        i++;
    }
}
    },
    getLastViewName: function() {
    var _ret;
    // source line 124, bytecode pc 31
    (_ret = this.lastView.getStackTop(xs.Constant_ViewType_Dlg));
    if (!_ret) {
        // source line 127, bytecode pc 46
        return "";
    }
    // source line 130, bytecode pc 54
    return _ret[0][1];
},
    registerMap: { Dialog: {}, NotificationNode: {} },
    registerDialog: function(name, info) {
    // source line 142, bytecode pc 37
    this.register(this.Cfg.Tags.Dialog, name, info);
},
    registerNotificationNode: function(name, info) {
    // source line 145, bytecode pc 37
    this.register(this.Cfg.Tags.NotificationNode, name, info);
},
    register: function(area, name, info) {
    var _area;
    // source line 150, bytecode pc 13
    (_area = this.registerMap[area]);
    // source line 152, bytecode pc 36
    this.assert(_area, "need _area");
    if (_area[name]) {
        // source line 155, bytecode pc 85
        xs.warn(((("register failed:" + area) + " | ") + name));
    } else {
        // source line 158, bytecode pc 101
        (_area[name] = info);
    }
},
    _reqUrlWithLoading: function(apiUrl, param, readyFunc, errFunc, useLoading, bUseAddr, tag) {
    var _tag, _param, _isClearCache, _ignoreRandEvent, _paramStr, _paramStrForSign, _url_sign, _test, _url, _readyFunc, _errFunc;
    // source line 166, bytecode pc 17
    (_tag = (tag || "unknow"));
    // source line 168, bytecode pc 36
    (_param = (param || {}));
    // source line 170, bytecode pc 41
    (_isClearCache = true);
    if ((apiUrl == xs.Cfg.Url.GetMessage)) {
        // source line 173, bytecode pc 75
        (_isClearCache = false);
    }
    // source line 180, bytecode pc 86
    (_ignoreRandEvent = false);
    if ((xs.Utils.isSet(_param.ignoreRandEvent) && (_param.ignoreRandEvent === true))) {
        // source line 182, bytecode pc 148
        (_ignoreRandEvent = true);
    }
    // source line 185, bytecode pc 157
    delete _param.ignoreRandEvent;
    if (xs.use_statistic_params) {
        // source line 188, bytecode pc 207
        (_param.statistic = xs.Tools.Statistic.createStatisticParam());
    }
    // source line 191, bytecode pc 231
    (_paramStr = JSON.stringify(_param));
    // source line 193, bytecode pc 238
    (_paramStrForSign = _paramStr);
    if (xs.urlEncrypt) {
        // source line 204, bytecode pc 347
        (_paramStr = xs.Utils.Base64.encode(xs.Utils.rc4(xs.Constant_RC4_KEY, xs.Utils.Utf16ToUtf8.utf8_encode(_paramStr))));
        // source line 207, bytecode pc 369
        (_paramStr = encodeURIComponent(_paramStr));
    } else {
        // source line 209, bytecode pc 396
        (_paramStr = encodeURIComponent(_paramStr));
        // source line 210, bytecode pc 409
        (_paramStr = (_paramStr + "&ingor_encrypt=1"));
    }
    if (xs.zlib) {
        // source line 213, bytecode pc 437
        (_paramStr = (_paramStr + "&zlib=1"));
    }
    // source line 218, bytecode pc 451
    (_url_sign = xs.Constant_DEFAULT_URL_SIGN_KEY);
    if (xs.urlSign) {
        // source line 220, bytecode pc 506
        (_url_sign = xs.Utils.MD5((_paramStrForSign + xs.Constant_URL_SIGN_KEY)));
    }
    // source line 222, bytecode pc 523
    (_paramStr = (_paramStr + ("&sign=" + _url_sign)));
    if (!xs.urlEncrypt) {
        if ((bUseAddr === true)) {
            // source line 228, bytecode pc 576
            (_test = ((("http://" + apiUrl) + "&data=") + _paramStrForSign));
        } else {
            // source line 232, bytecode pc 636
            (_test = (((("http://" + xs.Profile.UserCfg.getGameAddr().domain) + apiUrl) + "&data=") + _paramStrForSign));
        }
        // source line 234, bytecode pc 649
        (_test = (_test + "&ingor_encrypt=1"));
        // source line 236, bytecode pc 666
        (_test = (_test + ("&sign=" + _url_sign)));
        // source line 238, bytecode pc 693
        xs.log_cmn("request", _test);
    }
    if ((bUseAddr === true)) {
        // source line 245, bytecode pc 730
        (_url = ((("http://" + apiUrl) + "&data=") + _paramStr));
    } else {
        // source line 249, bytecode pc 790
        (_url = (((("http://" + xs.Profile.UserCfg.getGameAddr().domain) + apiUrl) + "&data=") + _paramStr));
    }
    if ((tag === "requestCheckTransactionReceipt")) {
        // source line 264, bytecode pc 841
        xs.Tools.Statistic.trackBugEvent("bug_track_003_encode", _url);
        // source line 265, bytecode pc 878
        xs.Tools.Statistic.trackBugEvent("bug_track_003", _test);
    }
    if (useLoading) {
        // source line 270, bytecode pc 899
        this.displayLoadingLayer();
    }
    // source line 414, bytecode pc 971
    (_readyFunc = function(responseText) {
    var data, isSuccess, _modelMap, _isFinish, _msg, _msgString;
    try {
        if (this.useLoading) {
            // source line 278, bytecode pc 38
            xs.Views.Mgr.dismissLoadingLayer();
        }
        // source line 281, bytecode pc 43
        (data = null);
        try {
            // source line 283, bytecode pc 68
            (data = JSON.parse(responseText));
        } catch (e) {
            // source line 287, bytecode pc 139
            this.warn("reqUrlWithLoading", (xs.Tools.String.createString("auto_name_291") + responseText));
            /* TODO_BYTECODE pc=140 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
        }
        if (data) {
            // source line 293, bytecode pc 168
            (isSuccess = data.result);
            if (isSuccess) {
                // source line 297, bytecode pc 205
                xs.log_cmn("response", "success");
                // source line 301, bytecode pc 210
                (_modelMap = null);
                // source line 306, bytecode pc 260
                (_modelMap = xs.Profile.GameData.Mgr.getInstance().updateRespData(data));
                if ((!xs.Utils.isEmpty(_modelMap.RandEvent) && !_ignoreRandEvent)) {
                    // source line 310, bytecode pc 337
                    this.log("response111", "success");
                    if (this.readyFunc) {
                        // source line 326, bytecode pc 399
                        (_modelMap.lastFunc = function() {
    var _func, _param;
    // source line 316, bytecode pc 9
    (_func = this.func);
    // source line 317, bytecode pc 19
    (_param = this.param);
    // source line 319, bytecode pc 32
    _func(_param);
    // source line 322, bytecode pc 65
    xs.Views.Mgr.hideDialogByName("RandEvent");
}.bind({ func: this.readyFunc, param: data }));
                    }
                    // source line 330, bytecode pc 436
                    xs.Views.Mgr.showDialogByName("RandEvent", _modelMap);
                } else {
                    if (this.readyFunc) {
                        if (_ignoreRandEvent) {
                            // source line 340, bytecode pc 487
                            this.readyFunc(data, _modelMap);
                        } else {
                            // source line 343, bytecode pc 509
                            this.readyFunc(data);
                        }
                    }
                }
            } else {
                // source line 353, bytecode pc 567
                xs.log("response", ((("出错了,error_code:" + data.error_code) + " msg:") + data.msg));
                // source line 358, bytecode pc 572
                (_isFinish = false);
                if (this.errFunc) {
                    // source line 360, bytecode pc 603
                    (_isFinish = this.errFunc(data));
                }
                if ((_isFinish !== true)) {
                    // source line 366, bytecode pc 625
                    (_msg = data.msg);
                    // source line 373, bytecode pc 632
                    (_msgString = _msg);
                    if ((xs.release === true)) {
                        // source line 378, bytecode pc 719
                        xs.Views.Mgr.showNetLogicErrMsg(xs.Tools.String.createString("auto_name_292"), ("" + _msgString));
                    } else {
                        // source line 384, bytecode pc 815
                        xs.Views.Mgr.showNetLogicErrMsg(xs.Tools.String.createString("auto_name_292"), (((("" + _msgString) + "(") + data.error_code) + ")"));
                    }
                }
            }
        } else {
            // source line 393, bytecode pc 825
            (_isFinish = false);
            if (this.errFunc) {
                // source line 395, bytecode pc 856
                (_isFinish = this.errFunc(responseText));
            }
            if ((_isFinish !== true)) {
                // source line 398, bytecode pc 959
                xs.Views.Mgr.showNetLogicErrMsg(xs.Tools.String.createString("auto_name_293"), xs.Tools.String.createString("auto_name_294"));
            }
        }
    } catch (e) {
        // source line 405, bytecode pc 1001
        xs.warnException("net_readyFunc", e);
        /* TODO_BYTECODE pc=1002 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
}.bind({ readyFunc: readyFunc, errFunc: errFunc, useLoading: useLoading, isClearCache: _isClearCache }).bind(this));
    // source line 416, bytecode pc 1009
    (_readyFunc = xs.Tools.Net.createPageEndWrappedFunc(_tag, _readyFunc));
    // source line 436, bytecode pc 1052
    (_errFunc = function(responseText) {
    var _isFinish;
    if (this.useLoading) {
        // source line 420, bytecode pc 37
        xs.Views.Mgr.dismissLoadingLayer();
    }
    // source line 423, bytecode pc 70
    xs.warn("response", ("responseText:" + responseText));
    // source line 425, bytecode pc 75
    (_isFinish = false);
    if (this.errFunc) {
        // source line 428, bytecode pc 106
        (_isFinish = this.errFunc(responseText));
    }
    if ((_isFinish !== true)) {
        // source line 432, bytecode pc 149
        xs.Views.Mgr.showDialogByName("NetConnectErr");
    }
}.bind({ errFunc: errFunc, useLoading: useLoading }));
    // source line 439, bytecode pc 1090
    (_errFunc = xs.Tools.Net.createPageEndWrappedFunc(_tag, _errFunc));
    // source line 441, bytecode pc 1121
    xs.Tools.Statistic.beginLogPageView(_tag);
    // source line 442, bytecode pc 1160
    xs.Utils.Net.reqAsync(_url, _readyFunc, _errFunc);
},
    getRunningScene: function() {
    // source line 446, bytecode pc 21
    return xs.director.getRunningScene();
},
    getRegisInfo: function(area, name) {
    var _cfg, arguments;
    // source line 449, bytecode pc 4
    (arguments = arguments);
    // source line 451, bytecode pc 36
    (_cfg = xs.Views.Mgr.registerMap[area][name]);
    // source line 457, bytecode pc 88
    xs.assert(_cfg, "_cfg name error1", arguments, xs.Views.Mgr.registerMap);
    // source line 459, bytecode pc 92
    return _cfg;
},
    getDialogRegisInfo: function(name) {
    // source line 464, bytecode pc 33
    return this.getRegisInfo(this.Cfg.Tags.Dialog, name);
},
    getNotificationNodeInfo: function(name) {
    // source line 467, bytecode pc 33
    return this.getRegisInfo(this.Cfg.Tags.NotificationNode, name);
},
    reqUrl: function(url, param, readyFunc, errFunc, useLoading, bUseAddr, tag) {
    var _param, _useLoading, arguments;
    // source line 472, bytecode pc 4
    (arguments = arguments);
    // source line 473, bytecode pc 38
    (_param = xs.Tools.Net.addBaseParam(param));
    // source line 475, bytecode pc 60
    this.lastNet.saveArguments(arguments);
    // source line 478, bytecode pc 65
    (_useLoading = null);
    if ((useLoading == null)) {
        // source line 481, bytecode pc 80
        (_useLoading = true);
    } else {
        // source line 484, bytecode pc 92
        (_useLoading = useLoading);
    }
    // source line 488, bytecode pc 133
    this._reqUrlWithLoading(url, _param, readyFunc, errFunc, _useLoading, bUseAddr, tag);
},
    reqLastUrl: function() {
    // source line 492, bytecode pc 31
    this.reqUrl.apply(this, this.lastNet.arguments);
},
    reqDownload: function(url, readyFunc, errFunc) {
    var tmpReadyFunc, newreadyFunc, newErrFunc;
    // source line 498, bytecode pc 12
    this.displayLoadingLayer();
    // source line 499, bytecode pc 25
    (tmpReadyFunc = readyFunc);
    // source line 503, bytecode pc 47
    (newreadyFunc = function(data) {
    // source line 501, bytecode pc 12
    this.dismissLoadingLayer();
    // source line 502, bytecode pc 31
    readyFunc(data);
}.bind(this));
    // source line 507, bytecode pc 78
    (newErrFunc = (errFunc || function() {
    // source line 505, bytecode pc 12
    this.dismissLoadingLayer();
    // source line 506, bytecode pc 91
    this.showNetLogicErrMsg(xs.Tools.String.createString("auto_name_295"), xs.Tools.String.createString("auto_name_296"));
}.bind(this)));
    // source line 508, bytecode pc 129
    xs.Utils.Net.reqAsync(url, newreadyFunc, newErrFunc, "GET", "arraybuffer");
},
    showNetLogicErrMsg: function(strTitle, strContent) {
    // source line 522, bytecode pc 41
    this.showDialogByName("NetLogicErr", { strTitle: strTitle, strContent: strContent });
},
    init: function() {
    var loadingLayer, _dlgHungerMask;
    // source line 539, bytecode pc 12
    (this.m_cmnViews = {});
    // source line 542, bytecode pc 42
    (loadingLayer = xs.Views.LoadingView.create());
    // source line 543, bytecode pc 88
    loadingLayer.setTag(xs.Cfg.Scene.CommonScene.Loading.tag);
    // source line 544, bytecode pc 134
    loadingLayer.setZOrder(xs.Cfg.Scene.CommonScene.Loading.zOrder);
    // source line 545, bytecode pc 180
    loadingLayer.setBaseTouchPriority(xs.Cfg.Scene.CommonScene.Loading.priority);
    // source line 547, bytecode pc 202
    (this.m_cmnViews[this.Const.Type_CmnView_LoadingLayer] = loadingLayer);
    // source line 551, bytecode pc 232
    (_dlgHungerMask = xs.Views.HungerLayer.create());
    // source line 552, bytecode pc 254
    (this.m_cmnViews[this.Const.Type_CmnView_HungerMask] = _dlgHungerMask);
    // source line 553, bytecode pc 283
    (this.m_cmnViews[this.Const.Type_CmnView_HungerMask].name = "HungerLayer_dlgHungerMask");
    // source line 556, bytecode pc 323
    (this.m_cmnViews[this.Const.Type_CmnView_DialogMask] = cc.LayerColor.create());
    // source line 557, bytecode pc 352
    (this.m_cmnViews[this.Const.Type_CmnView_DialogMask].name = "LayerColor_DialogMask");
    // source line 560, bytecode pc 404
    (this.m_cmnViews[this.Const.Type_CmnView_HollowOutLayer] = xs.Views.HollowOutLayer.create({}));
    // source line 561, bytecode pc 433
    (this.m_cmnViews[this.Const.Type_CmnView_HollowOutLayer].name = "HollowOutLayer_HollowOutLayer");
},
    purge: function() {
    // source line 579, bytecode pc 7
    (this.m_cmnViews = null);
},
    _getCmnViewByType: function(type) {
    // source line 583, bytecode pc 10
    return this.m_cmnViews[type];
},
    removeCmnViewsFromParent: function() {
    // source line 588, bytecode pc 45
    xs.Utils.Node.removeFromParentSafe(this.m_cmnViews[this.Const.Type_CmnView_LoadingLayer]);
    // source line 589, bytecode pc 91
    xs.Utils.Node.removeFromParentSafe(this.m_cmnViews[this.Const.Type_CmnView_HungerMask]);
    // source line 590, bytecode pc 137
    xs.Utils.Node.removeFromParentSafe(this.m_cmnViews[this.Const.Type_CmnView_DialogMask]);
    // source line 591, bytecode pc 183
    xs.Utils.Node.removeFromParentSafe(this.m_cmnViews[this.Const.Type_CmnView_HollowOutLayer]);
},
    initLoadingLayer: function(scene) {
    // source line 601, bytecode pc 30
    xs.Tools.UI.addLoadingLayer(scene);
},
    displayLoadingLayer: function() {
    var scene, loadingLayer;
    // source line 606, bytecode pc 18
    this.log("displayLoadingLayer");
    // source line 608, bytecode pc 48
    (scene = xs.Scene.Mgr.getRunningScene());
    if ((scene === null)) {
        // source line 610, bytecode pc 81
        xs.warn("displayLoadingLayer scene is null!");
        // source line 611, bytecode pc 83
        return void 0;
    }
    // source line 613, bytecode pc 132
    (loadingLayer = scene.getChildByTag(xs.Cfg.Scene.CommonScene.Loading.tag));
    if (loadingLayer) {
        // source line 616, bytecode pc 157
        loadingLayer.setVisible(true);
        // source line 617, bytecode pc 172
        loadingLayer.playLoadingStartActions();
    }
},
    dismissLoadingLayer: function() {
    var scene, loadingLayer;
    // source line 625, bytecode pc 29
    (scene = xs.Scene.Mgr.getRunningScene());
    // source line 626, bytecode pc 78
    (loadingLayer = scene.getChildByTag(xs.Cfg.Scene.CommonScene.Loading.tag));
    if (loadingLayer) {
        // source line 628, bytecode pc 101
        loadingLayer.dismissSelf();
    }
},
    displayLoadingLayer_ext: function() {
    var scene, loadingLayer;
    // source line 634, bytecode pc 22
    xs.log("displayLoadingLayer_ext");
    // source line 635, bytecode pc 52
    (scene = xs.Scene.Mgr.getRunningScene());
    if ((scene === null)) {
        // source line 637, bytecode pc 85
        xs.warn("displayLoadingLayer scene is null!");
        // source line 638, bytecode pc 87
        return void 0;
    }
    // source line 640, bytecode pc 117
    (loadingLayer = xs.Views.LoadingView.create());
    // source line 641, bytecode pc 163
    loadingLayer.setTag(xs.Cfg.Scene.CommonScene.Loading_ext.tag);
    // source line 642, bytecode pc 209
    loadingLayer.setZOrder(xs.Cfg.Scene.CommonScene.Loading_ext.zOrder);
    // source line 643, bytecode pc 255
    loadingLayer.setBaseTouchPriority(xs.Cfg.Scene.CommonScene.Loading_ext.priority);
    // source line 644, bytecode pc 290
    xs.Utils.Node.attachNodes(scene, loadingLayer);
    // source line 645, bytecode pc 307
    loadingLayer.setVisible(true);
    // source line 646, bytecode pc 322
    loadingLayer.playLoadingStartActions();
},
    dismissLoadingLayer_ext: function() {
    var scene, loadingLayer_ext;
    // source line 651, bytecode pc 18
    this.log("dismissLoadingLayer_ext");
    // source line 653, bytecode pc 48
    (scene = xs.Scene.Mgr.getRunningScene());
    // source line 654, bytecode pc 97
    (loadingLayer_ext = scene.getChildByTag(xs.Cfg.Scene.CommonScene.Loading_ext.tag));
    if (loadingLayer_ext) {
        // source line 656, bytecode pc 136
        xs.Utils.Node.safeRemoveChild(loadingLayer_ext);
    }
},
    showDialogByNameWithStack: function() {
    var arguments;
    // source line 660, bytecode pc 4
    (arguments = arguments);
    // source line 661, bytecode pc 28
    this.showDialogByName.apply(this, arguments);
},
    _showViewByName: function(viewType, name, params) {
    var _cfg, args, i, _dlg, _createFunc, _scene, arguments;
    // source line 665, bytecode pc 4
    (arguments = arguments);
    // source line 669, bytecode pc 24
    (_cfg = this.getDialogRegisInfo(name));
    // source line 671, bytecode pc 56
    this.assert(_cfg["class"], "_cfg.class is undefined", arguments);
    // source line 675, bytecode pc 65
    (args = []);
    // source line 676, bytecode pc 71
    (i = 2);
    while ((i < arguments.length)) {
        // source line 677, bytecode pc 100
        args.push(arguments[i]);
        // source line 676, bytecode pc 113
        (i = (+i + 1));
    }
    // source line 680, bytecode pc 136
    (_dlg = null);
    /* TODO_BYTECODE pc=137 opcode=try reason=control_or_scope_semantics_not_structured */
    if (_cfg["class"].load) {
        // source line 685, bytecode pc 175
        _cfg["class"].load();
    }
    // source line 687, bytecode pc 192
    (_createFunc = _cfg["class"].create);
    if (_createFunc) {
        // source line 689, bytecode pc 226
        (_dlg = _createFunc.apply(_dlg, args));
    } else {
        // source line 692, bytecode pc 248
        (_dlg = new _cfg["class"]());
        // source line 693, bytecode pc 276
        _dlg.init.apply(_dlg, args);
    }
    // source line 697, bytecode pc 298
    (_dlg.callfunc_unload = _cfg["class"].unload);
    if (xs.Utils.isEmpty(_dlg)) {
        // source line 708, bytecode pc 406
        return null;
    }
    // source line 712, bytecode pc 418
    (_dlg.dlg_name = name);
    // source line 714, bytecode pc 445
    xs.log_zj(("创建了一个dlg,但是没有 attach:" + name));
    // source line 717, bytecode pc 468
    xs.log_zj("尝试关闭上一个dlg");
    // source line 718, bytecode pc 485
    this._hideViewByType(viewType);
    if ((viewType === xs.Constant_ViewType_Dlg)) {
        // source line 721, bytecode pc 530
        this._getDialogHungerMask().setVisible(true);
    }
    // source line 726, bytecode pc 560
    this.lastView.pushArguments(viewType, arguments, _dlg);
    if (_cfg.dlgType) {
        // source line 729, bytecode pc 602
        _dlg.setTag(_cfg.dlgType.tag);
        // source line 730, bytecode pc 631
        _dlg.setZOrder(_cfg.dlgType.zOrder);
        // source line 731, bytecode pc 660
        _dlg.setBaseTouchPriority(_cfg.dlgType.priority);
    } else {
        // source line 734, bytecode pc 711
        _dlg.setTag(xs.Cfg.Scene.CommonScene.Dialog.tag);
        // source line 735, bytecode pc 757
        _dlg.setZOrder(xs.Cfg.Scene.CommonScene.Dialog.zOrder);
        // source line 736, bytecode pc 803
        _dlg.setBaseTouchPriority(xs.Cfg.Scene.CommonScene.Dialog.priority);
    }
    // source line 741, bytecode pc 819
    (_scene = this.getRunningScene());
    if ((viewType !== xs.Constant_ViewType_Dlg)) {
        // source line 744, bytecode pc 865
        xs.log_zj(("不是一般dialog,立刻attach到场景上：" + name));
        // source line 747, bytecode pc 900
        xs.Utils.Node.attachNodes(_scene, _dlg);
        if ((params && params.callfuncAfterAttach)) {
            // source line 750, bytecode pc 937
            params.callfuncAfterAttach();
        }
        // source line 753, bytecode pc 964
        xs.log_zj(("attach到场景上动画流程开始：" + name));
        // source line 754, bytecode pc 987
        this._runChangeDlgVisibleAction(_dlg, true, true, false);
        // source line 755, bytecode pc 1014
        xs.log_zj(("attach到场景上动画流程结束，延迟事件马上启动：" + name));
    } else {
        // source line 762, bytecode pc 1042
        xs.log_zj("ok??");
        // source line 764, bytecode pc 1059
        _dlg.setVisible(false);
        // source line 765, bytecode pc 1094
        xs.Utils.Node.attachNodes(_scene, _dlg);
        if ((params && params.callfuncAfterAttach)) {
            // source line 768, bytecode pc 1131
            params.callfuncAfterAttach();
        }
        // source line 771, bytecode pc 1154
        this._runChangeDlgVisibleAction(_dlg, true, false, false);
    }
    // source line 807, bytecode pc 1158
    return _dlg;
},
    showDialogByName: function(name, arg0, arg1, arg2) {
    var _cfg, _viewType, args, i, arguments;
    // source line 812, bytecode pc 4
    (arguments = arguments);
    // source line 814, bytecode pc 24
    (_cfg = this.getDialogRegisInfo(name));
    // source line 817, bytecode pc 52
    (_viewType = (_cfg.viewType || xs.Constant_ViewType_Dlg));
    // source line 819, bytecode pc 68
    (args = [ _viewType ]);
    // source line 821, bytecode pc 73
    (i = 0);
    while ((i < arguments.length)) {
        // source line 822, bytecode pc 102
        args.push(arguments[i]);
        // source line 821, bytecode pc 115
        (i = (+i + 1));
    }
    // source line 825, bytecode pc 160
    xs.log_zj("showDialogByName", name);
    // source line 828, bytecode pc 184
    return this._showViewByName.apply(this, args);
},
    showDialogNextFrame: function() {
},
    _myreleaseViewByType: function(viewType) {
    var _argsCur;
    // source line 853, bytecode pc 22
    (viewType = (viewType || xs.Constant_ViewType_Dlg));
    // source line 855, bytecode pc 47
    (_argsCur = this.lastView.popArguments(viewType));
    if (_argsCur) {
        if ((this.lastView.getStackLength(viewType) >= 1)) {
            // source line 860, bytecode pc 110
            xs.log(("_releaseViewByType 1111 begin: " + viewType));
            // source line 861, bytecode pc 135
            this._runChangeDlgVisibleAction(_argsCur[1], false, true, true);
            // source line 862, bytecode pc 162
            xs.log(("_releaseViewByType 1111 end: " + viewType));
        } else {
            // source line 866, bytecode pc 192
            this._runChangeDlgVisibleAction(_argsCur[1], false, false, true);
        }
    }
},
    _releaseViewByType: function(viewType) {
    var _argsCur, _argsLast;
    // source line 881, bytecode pc 24
    (_argsCur = this.lastView.popArguments(viewType));
    if (_argsCur) {
        if ((this.lastView.getStackLength(viewType) >= 1)) {
            // source line 886, bytecode pc 87
            xs.log(("_releaseViewByType 1111 begin: " + viewType));
            // source line 887, bytecode pc 112
            this._runChangeDlgVisibleAction(_argsCur[1], false, true, true);
            // source line 888, bytecode pc 139
            xs.log(("_releaseViewByType 1111 end: " + viewType));
        } else {
            // source line 892, bytecode pc 169
            this._runChangeDlgVisibleAction(_argsCur[1], false, false, true);
        }
    }
    if ((this.lastView.getStackLength(viewType) >= 1)) {
        // source line 899, bytecode pc 222
        (_argsLast = this.lastView.getStackTop(viewType));
        if (_argsLast) {
            // source line 904, bytecode pc 249
            _argsLast[1].setVisible(true);
            if (_argsLast[1].updateDialog) {
                // source line 906, bytecode pc 281
                _argsLast[1].updateDialog();
            }
            // source line 908, bytecode pc 306
            this._runChangeDlgVisibleAction(_argsLast[1], true, false, false);
        }
    } else {
        if ((viewType === xs.Constant_ViewType_Dlg)) {
            // source line 914, bytecode pc 356
            this._getDialogHungerMask().setVisible(false);
        }
    }
},
    _runChangeDlgVisibleAction: function(dlg, visible, quickHide, bRemove) {
    var _dlg, _mask, _dpScale, _actionShowOrHide, _actionBlackMask, _cfg, _sizeContent;
    // source line 930, bytecode pc 12
    (_dlg = dlg);
    // source line 932, bytecode pc 28
    (_mask = this.getDialogMask());
    // source line 933, bytecode pc 45
    _mask.setVisible(true);
    // source line 935, bytecode pc 50
    (_dpScale = 1);
    // source line 937, bytecode pc 55
    (_actionShowOrHide = null);
    // source line 938, bytecode pc 60
    (_actionBlackMask = null);
    // source line 940, bytecode pc 91
    (_cfg = this.getDialogRegisInfo(_dlg.dlg_name));
    if (visible) {
        // source line 945, bytecode pc 123
        (_sizeContent = _dlg.getContentSize());
        // source line 946, bytecode pc 155
        _dlg.setAnchorPoint(xs.ap_c);
        // source line 947, bytecode pc 178
        _dlg.setVisible(false);
        if (((_cfg.styleType === xs.Constant_DlgStyleType_Small) || (_cfg.styleType === xs.Constant_DlgStyleType_Large))) {
            // source line 953, bytecode pc 250
            xs.log_zj("this is not a normal dlg, show 延迟");
            // source line 963, bytecode pc 404
            (_actionBlackMask = xs.Utils.Action.combineSequence([
    cc.CallFunc.create(function() {
    // source line 959, bytecode pc 14
    this.setOpacity(0);
}.bind(_mask)),
    cc.Show.create(),
    cc.FadeTo.create(((4 / xs.fps) * _dpScale), 143)
]));
            // source line 985, bytecode pc 848
            (_actionShowOrHide = xs.Utils.Action.combineSequence([
    cc.Hide.create(),
    cc.MoveBy.create(0, cc.p(0, 600)),
    cc.Show.create(),
    cc.MoveBy.create((4 / xs.fps), cc.p(0, -620)),
    cc.MoveBy.create((3 / xs.fps), cc.p(0, 35)),
    cc.MoveBy.create((3 / xs.fps), cc.p(0, -20)),
    cc.MoveBy.create((2 / xs.fps), cc.p(0, 10)),
    cc.MoveBy.create((2 / xs.fps), cc.p(0, -5))
]));
        } else {
            // source line 991, bytecode pc 876
            xs.log_zj("this is a normal dlg, show立即");
            // source line 992, bytecode pc 899
            _dlg.setVisible(true);
        }
    } else {
        if (((_cfg.styleType === xs.Constant_DlgStyleType_Small) || (_cfg.styleType === xs.Constant_DlgStyleType_Large))) {
            // source line 1005, bytecode pc 1055
            (_actionBlackMask = xs.Utils.Action.combineSequence([ cc.FadeTo.create((3 / xs.fps), 0), cc.Hide.create() ]));
            // source line 1009, bytecode pc 1089
            this.assert(_dlg.dlg_name, "_dlg need dlg_name");
            if (quickHide) {
                // source line 1013, bytecode pc 1120
                xs.log_zj("直接关闭 1");
                // source line 1015, bytecode pc 1143
                _dlg.setVisible(false);
                // source line 1016, bytecode pc 1160
                _mask.setVisible(false);
                if (bRemove) {
                    // source line 1018, bytecode pc 1205
                    xs.Utils.Node.safeRemoveChild(_dlg);
                    if (_dlg.callfunc_unload) {
                        // source line 1020, bytecode pc 1245
                        _dlg.callfunc_unload();
                    }
                    // source line 1022, bytecode pc 1256
                    (_dlg = null);
                }
            } else {
                if (bRemove) {
                    // source line 1040, bytecode pc 1524
                    (_actionShowOrHide = xs.Utils.Action.combineSequence([
    cc.MoveBy.create((2 / xs.fps), cc.p(0, -10)),
    cc.MoveBy.create((3 / xs.fps), cc.p(0, 660)),
    cc.Hide.create(),
    xs.Utils.Node.createRemoveSelfAction(_dlg),
    cc.CallFunc.create(function() {
    // source line 1041, bytecode pc 22
    xs.log_zj("延时关闭 1");
    if (_dlg.callfunc_unload) {
        // source line 1043, bytecode pc 62
        _dlg.callfunc_unload();
    }
})
]));
                } else {
                    // source line 1057, bytecode pc 1744
                    (_actionShowOrHide = xs.Utils.Action.combineSequence([
    cc.MoveBy.create((2 / xs.fps), cc.p(0, -10)),
    cc.MoveBy.create((3 / xs.fps), cc.p(0, 660)),
    cc.Hide.create(),
    cc.CallFunc.create(function() {
    // source line 1058, bytecode pc 22
    xs.log_zj("延时关闭 2");
})
]));
                }
            }
        } else {
            // source line 1068, bytecode pc 1772
            xs.log_zj("直接关闭 2");
            // source line 1070, bytecode pc 1797
            _dlg.setVisible(visible);
            if (bRemove) {
                // source line 1072, bytecode pc 1842
                xs.Utils.Node.safeRemoveChild(_dlg);
                if (_dlg.callfunc_unload) {
                    // source line 1074, bytecode pc 1882
                    _dlg.callfunc_unload();
                }
            }
        }
    }
    if (_actionShowOrHide) {
        if (_actionBlackMask) {
            // source line 1088, bytecode pc 1992
            _dlg.runAction(xs.Utils.Action.combineSpawn([ _actionShowOrHide, cc.TargetedAction.create(_mask, _actionBlackMask) ]));
        } else {
            // source line 1093, bytecode pc 2016
            _mask.setVisible(visible);
            // source line 1098, bytecode pc 2077
            _dlg.runAction(xs.Utils.Action.combineSpawn([ _actionShowOrHide ]));
        }
    } else {
        // source line 1104, bytecode pc 2101
        _mask.setVisible(visible);
    }
    if (((_cfg.styleType === xs.Constant_DlgStyleType_Small) || (_cfg.styleType === xs.Constant_DlgStyleType_Large))) {
        if ((_actionShowOrHide === null)) {
            // source line 1113, bytecode pc 2179
            _mask.setVisible(visible);
        }
    }
},
    _hideViewByType: function(type) {
    var _top;
    // source line 1128, bytecode pc 24
    (_top = this.lastView.getStackTop(type));
    if (_top) {
        if ((type === xs.Constant_ViewType_Dlg)) {
            // source line 1132, bytecode pc 77
            this._getDialogHungerMask().setVisible(false);
        }
        // source line 1135, bytecode pc 100
        xs.log_zj("发现上一个dlg,开始关闭过程");
        // source line 1136, bytecode pc 123
        this._runChangeDlgVisibleAction(_top[1], false, true);
        // source line 1137, bytecode pc 146
        xs.log_zj("发现上一个dlg,结束关闭过程，异步事件即将发生");
    } else {
        // source line 1140, bytecode pc 174
        xs.log_zj("没有发现上一个dlg");
    }
},
    hideAllDialog: function() {
    var _tmp, count, _view;
    // source line 1147, bytecode pc 24
    this.log("hideAllDialog", "begin");
    // source line 1149, bytecode pc 56
    (_tmp = this.lastView.popArguments(xs.Constant_ViewType_Dlg));
    // source line 1150, bytecode pc 61
    (count = 0);
    while (_tmp) {
        // source line 1153, bytecode pc 93
        this._getDialogHungerMask().setVisible(false);
        if (_tmp) {
            // source line 1158, bytecode pc 110
            (_view = _tmp[1]);
            if ((count === 0)) {
                // source line 1161, bytecode pc 143
                xs.log_zj("_runChangeDlgVisibleAction 333 begin");
                // source line 1162, bytecode pc 166
                this._runChangeDlgVisibleAction(_view, false, false, true);
                // source line 1163, bytecode pc 189
                xs.log_zj("_runChangeDlgVisibleAction 333 end");
            } else {
                // source line 1166, bytecode pc 225
                xs.Utils.Node.safeRemoveChild(_view);
            }
            // source line 1169, bytecode pc 257
            (_tmp = this.lastView.popArguments(xs.Constant_ViewType_Dlg));
            // source line 1170, bytecode pc 272
            count++;
        } else {
            break;
        }
    }
},
    hideDialog: function() {
    // source line 1183, bytecode pc 24
    this.log("hideDialog", "called");
    // source line 1185, bytecode pc 48
    this._releaseViewByType(xs.Constant_ViewType_Dlg);
},
    hideRandEventDialog: function() {
    // source line 1190, bytecode pc 23
    this._releaseViewByType(xs.Constant_ViewType_RandEvent);
},
    hideDialogByName: function(name) {
    var _cfg, _viewType;
    // source line 1195, bytecode pc 26
    xs.log_zj("hideDialogByName", name);
    // source line 1197, bytecode pc 46
    (_cfg = this.getDialogRegisInfo(name));
    // source line 1198, bytecode pc 74
    (_viewType = (_cfg.viewType || xs.Constant_ViewType_Dlg));
    // source line 1209, bytecode pc 91
    this._releaseViewByType(_viewType);
},
    _createHideDialogAction: function(_dlg) {
    // source line 1229, bytecode pc 135
    return xs.Utils.Action.combineSequence([
    cc.ScaleTo.create(0.5, 0.001, 0.001),
    cc.CallFunc.create(function() {
    var _dlg;
    // source line 1223, bytecode pc 6
    (_dlg = this[1]);
    if (_dlg) {
        // source line 1225, bytecode pc 31
        _dlg.setVisible(false);
    }
}.bind([ this, _dlg ]))
]);
},
    initFlutterView: function(scene) {
},
    showFontView: function(str, styleId, pos, speedScale) {
    var _speedScale, scene, lab, _str, _lab_width, _node, _attachAction, moveUp, scale, delay, fadeOut, spawn, sequence;
    // source line 1248, bytecode pc 14
    (_speedScale = (speedScale || 4));
    // source line 1250, bytecode pc 32
    (str = (str || " "));
    // source line 1252, bytecode pc 55
    this.markFuncBegin("showFontView", str);
    // source line 1255, bytecode pc 85
    (scene = xs.Scene.Mgr.getRunningScene());
    // source line 1257, bytecode pc 119
    (lab = xs.Factorys.Label.createByStyleId(styleId));
    if (((str.length > 18) && (str.indexOf("\n") < 0))) {
        // source line 1264, bytecode pc 214
        (_str = ((str.substring(0, 18) + "\n") + str.substring(18)));
    } else {
        // source line 1267, bytecode pc 226
        (_str = str);
    }
    // source line 1271, bytecode pc 245
    lab.setString(_str);
    // source line 1273, bytecode pc 268
    (_lab_width = lab.getContentSize().width);
    // source line 1275, bytecode pc 299
    (_node = cc.Node.create());
    // source line 1276, bytecode pc 351
    _node.setZOrder(xs.Cfg.Scene.CommonScene.FlutterText.zOrder);
    // source line 1277, bytecode pc 403
    _node.setTag(xs.Cfg.Scene.CommonScene.FlutterText.tag);
    // source line 1282, bytecode pc 494
    xs.Utils.Node.attachNodes(_node, lab, { desc: "c", offset: cc.p(0, 150), sc: false });
    if (pos) {
        // source line 1288, bytecode pc 525
        lab.setPosition(pos);
        // source line 1290, bytecode pc 569
        (_attachAction = xs.Utils.Node.createAttachNodesAction(scene, _node));
    } else {
        // source line 1300, bytecode pc 641
        (_attachAction = xs.Utils.Node.createAttachNodesAction(scene, _node, { desc: "c", sc: true }));
    }
    // source line 1308, bytecode pc 694
    (moveUp = cc.MoveBy.create(0.3, cc.p(0, 50)));
    // source line 1309, bytecode pc 731
    (scale = cc.ScaleTo.create(0.3, 1.2));
    // source line 1310, bytecode pc 766
    (delay = cc.DelayTime.create((0.2 * _speedScale)));
    // source line 1311, bytecode pc 797
    (fadeOut = cc.FadeOut.create(0.2));
    // source line 1315, bytecode pc 847
    (spawn = xs.Utils.Action.combineSpawn([ moveUp, scale ]));
    // source line 1329, bytecode pc 944
    (sequence = xs.Utils.Action.combineSequence([
    _attachAction,
    spawn,
    delay,
    fadeOut,
    cc.CallFunc.create(function() {
    // source line 1327, bytecode pc 36
    xs.Utils.Node.safeRemoveChild(_node);
}, this)
]));
    // source line 1335, bytecode pc 995
    scene.runAction(cc.TargetedAction.create(_node, sequence));
    // source line 1338, bytecode pc 1018
    this.markFuncEnd("showFlutterView", str);
},
    showFlutterView: function(str, styleId, pos, speedScale) {
    var _speedScale, scene, lab, _str, _lab_width, _node, _toast_bg, _toast_bg_width, _attachAction, moveUp, scale, delay, fadeOut, spawn, sequence;
    // source line 1346, bytecode pc 14
    (_speedScale = (speedScale || 4));
    // source line 1348, bytecode pc 32
    (str = (str || " "));
    // source line 1350, bytecode pc 55
    this.markFuncBegin("showFlutterView", str);
    // source line 1353, bytecode pc 85
    (scene = xs.Scene.Mgr.getRunningScene());
    // source line 1355, bytecode pc 119
    (lab = xs.Factorys.Label.createByStyleId(styleId));
    if (((str.length > 18) && (str.indexOf("\n") < 0))) {
        // source line 1362, bytecode pc 214
        (_str = ((str.substring(0, 18) + "\n") + str.substring(18)));
    } else {
        // source line 1365, bytecode pc 226
        (_str = str);
    }
    // source line 1369, bytecode pc 245
    lab.setString(_str);
    // source line 1371, bytecode pc 268
    (_lab_width = lab.getContentSize().width);
    // source line 1373, bytecode pc 299
    (_node = cc.Node.create());
    // source line 1374, bytecode pc 351
    _node.setZOrder(xs.Cfg.Scene.CommonScene.FlutterText.zOrder);
    // source line 1375, bytecode pc 403
    _node.setTag(xs.Cfg.Scene.CommonScene.FlutterText.tag);
    // source line 1376, bytecode pc 445
    (_toast_bg = xs.Factorys.Sprite.create("Cmn01_Toast_bg", "Cmn01"));
    // source line 1377, bytecode pc 468
    (_toast_bg_width = _toast_bg.getContentSize().width);
    if ((_lab_width > _toast_bg_width)) {
        // source line 1380, bytecode pc 503
        _toast_bg.setScaleX((_lab_width / _toast_bg_width));
    }
    // source line 1386, bytecode pc 592
    xs.Utils.Node.attachNodes(_node, _toast_bg, { desc: "c", offset: cc.p(0, 0), sc: false });
    // source line 1392, bytecode pc 681
    xs.Utils.Node.attachNodes(_node, lab, { desc: "c", offset: cc.p(0, 0), sc: false });
    if (pos) {
        // source line 1398, bytecode pc 712
        lab.setPosition(pos);
        // source line 1400, bytecode pc 756
        (_attachAction = xs.Utils.Node.createAttachNodesAction(scene, _node));
    } else {
        // source line 1410, bytecode pc 828
        (_attachAction = xs.Utils.Node.createAttachNodesAction(scene, _node, { desc: "c", sc: true }));
    }
    // source line 1418, bytecode pc 881
    (moveUp = cc.MoveBy.create(0.3, cc.p(0, 50)));
    // source line 1419, bytecode pc 918
    (scale = cc.ScaleTo.create(0.3, 1.2));
    // source line 1420, bytecode pc 953
    (delay = cc.DelayTime.create((0.2 * _speedScale)));
    // source line 1421, bytecode pc 984
    (fadeOut = cc.FadeOut.create(0.2));
    // source line 1425, bytecode pc 1034
    (spawn = xs.Utils.Action.combineSpawn([ moveUp, scale ]));
    // source line 1439, bytecode pc 1131
    (sequence = xs.Utils.Action.combineSequence([
    _attachAction,
    spawn,
    delay,
    fadeOut,
    cc.CallFunc.create(function() {
    // source line 1437, bytecode pc 36
    xs.Utils.Node.safeRemoveChild(_node);
}, this)
]));
    // source line 1445, bytecode pc 1182
    scene.runAction(cc.TargetedAction.create(_node, sequence));
    // source line 1448, bytecode pc 1205
    this.markFuncEnd("showFlutterView", str);
},
    showToast: function(string, control) {
    if (control) {
        // source line 1457, bytecode pc 41
        this.showFlutterView(string, "LS_piaozi", null, control.speedScale);
    } else {
        // source line 1460, bytecode pc 71
        this.showFlutterView(string, "LS_piaozi", null);
    }
},
    showToastByStringKey: function(key) {
    // source line 1466, bytecode pc 43
    this.showToast(xs.Tools.String.createString(key));
},
    showToastByStringId: function(stringId, params, control) {
    var _string, arguments;
    // source line 1469, bytecode pc 4
    (arguments = arguments);
    if ((arguments.length === 1)) {
        // source line 1471, bytecode pc 28
        (params = []);
    }
    // source line 1473, bytecode pc 66
    (_string = xs.Tools.String.createStringWithArgsArray(stringId, params));
    // source line 1474, bytecode pc 87
    this.showToast(_string, control);
},
    showNotificationByName: function(name) {
    var _cfg, _notf, args, i, arguments;
    // source line 1479, bytecode pc 4
    (arguments = arguments);
    // source line 1480, bytecode pc 24
    (_cfg = this.getNotificationNodeInfo(name));
    // source line 1482, bytecode pc 62
    this.assert((_cfg["class"] != undefined), " class", arguments);
    // source line 1483, bytecode pc 79
    (_notf = new _cfg["class"]());
    // source line 1486, bytecode pc 88
    (args = []);
    // source line 1487, bytecode pc 93
    (i = 1);
    while ((i < arguments.length)) {
        // source line 1488, bytecode pc 122
        args.push(arguments[i]);
        // source line 1487, bytecode pc 135
        (i = (+i + 1));
    }
    // source line 1490, bytecode pc 181
    _notf.init.apply(_notf, args);
    // source line 1493, bytecode pc 207
    xs.director.setNotificationNode(_notf);
},
    initHungerMask: function(scene) {
    var _scene, _dlgMask;
    // source line 1501, bytecode pc 6
    (_scene = scene);
    // source line 1503, bytecode pc 55
    (_dlgMask = _scene.getChildByTag(xs.Cfg.Scene.CommonScene.DialogHungerMask.tag));
    if (!_dlgMask) {
        // source line 1507, bytecode pc 92
        (_dlgMask = this._getCmnViewByType(this.Const.Type_CmnView_HungerMask));
        // source line 1508, bytecode pc 109
        _dlgMask.setVisible(false);
        // source line 1509, bytecode pc 126
        _dlgMask.setTouchEnabled(true);
        // source line 1510, bytecode pc 172
        _dlgMask.setTouchPriority(xs.Cfg.Scene.CommonScene.DialogHungerMask.priority);
        // source line 1512, bytecode pc 250
        xs.Utils.Node.attachNodes(_scene, _dlgMask, { base: "lb" }, xs.Cfg.Scene.CommonScene.DialogHungerMask);
    } else {
        // source line 1516, bytecode pc 274
        this.error("initHungerMask");
    }
    // source line 1520, bytecode pc 278
    return _dlgMask;
},
    _getDialogHungerMask: function() {
    var _scene, _dlgMask;
    // source line 1524, bytecode pc 29
    (_scene = xs.Scene.Mgr.getRunningScene());
    // source line 1525, bytecode pc 78
    (_dlgMask = _scene.getChildByTag(xs.Cfg.Scene.CommonScene.DialogHungerMask.tag));
    // source line 1527, bytecode pc 82
    return _dlgMask;
},
    getDialogMask: function() {
    var _scene, _dlgMask;
    // source line 1533, bytecode pc 29
    (_scene = xs.Scene.Mgr.getRunningScene());
    // source line 1535, bytecode pc 78
    (_dlgMask = _scene.getChildByTag(xs.Cfg.Scene.CommonScene.DialogMask.tag));
    // source line 1539, bytecode pc 82
    return _dlgMask;
},
    initDialogMask: function(scene) {
    var _scene, _dlgMask;
    // source line 1544, bytecode pc 6
    (_scene = scene);
    // source line 1546, bytecode pc 55
    (_dlgMask = _scene.getChildByTag(xs.Cfg.Scene.CommonScene.DialogMask.tag));
    if (!_dlgMask) {
        try {
            // source line 1552, bytecode pc 93
            (_dlgMask = this._getCmnViewByType(this.Const.Type_CmnView_DialogMask));
            // source line 1553, bytecode pc 110
            _dlgMask.setVisible(false);
            // source line 1554, bytecode pc 148
            _dlgMask.setColor(cc.c3b(0, 0, 0));
            // source line 1555, bytecode pc 165
            _dlgMask.setOpacity(0);
            // source line 1556, bytecode pc 182
            _dlgMask.setTouchEnabled(true);
        } catch (e) {
            // source line 1561, bytecode pc 218
            xs.warnException(e);
            /* TODO_BYTECODE pc=219 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
        }
        // source line 1564, bytecode pc 305
        xs.Utils.Node.attachNodes(_scene, _dlgMask, { base: "lb" }, xs.Cfg.Scene.CommonScene.DialogMask);
        // source line 1565, bytecode pc 351
        _dlgMask.setTouchPriority(xs.Cfg.Scene.CommonScene.DialogMask.priority);
        // source line 1567, bytecode pc 368
        _dlgMask.setVisible(false);
    } else {
        // source line 1570, bytecode pc 392
        this.error("initDialogMask");
    }
    // source line 1573, bytecode pc 396
    return _dlgMask;
},
    initHollowOutLayer: function(scene) {
    var _scene, _dlgMask, hollowOutLayer;
    // source line 1577, bytecode pc 6
    (_scene = scene);
    // source line 1579, bytecode pc 55
    (_dlgMask = _scene.getChildByTag(xs.Cfg.Scene.CommonScene.HollowOutLayer.tag));
    // source line 1581, bytecode pc 79
    this.assert(!_dlgMask, "initHollowOutLayer");
    // source line 1583, bytecode pc 107
    (hollowOutLayer = this._getCmnViewByType(this.Const.Type_CmnView_HollowOutLayer));
    // source line 1584, bytecode pc 153
    hollowOutLayer.setTouchPriority(xs.Cfg.Scene.CommonScene.HollowOutLayer.priority);
    // source line 1585, bytecode pc 170
    hollowOutLayer.setVisible(false);
    // source line 1586, bytecode pc 233
    xs.Utils.Node.attachNodes(_scene, hollowOutLayer, null, xs.Cfg.Scene.CommonScene.HollowOutLayer);
    // source line 1591, bytecode pc 237
    return hollowOutLayer;
},
    showHollowOutLayer: function(data, fatherScene) {
    var scene, _dlgMask;
    // source line 1596, bytecode pc 4
    (scene = null);
    if (fatherScene) {
        // source line 1598, bytecode pc 19
        (scene = fatherScene);
    } else {
        // source line 1600, bytecode pc 54
        (scene = xs.Scene.Mgr.getRunningScene());
    }
    if ((scene === null)) {
        // source line 1603, bytecode pc 87
        xs.warn("showHollowOutLayer scene is null!");
        // source line 1604, bytecode pc 89
        return void 0;
    }
    // source line 1607, bytecode pc 138
    (_dlgMask = scene.getChildByTag(xs.Cfg.Scene.CommonScene.HollowOutLayer.tag));
    // source line 1609, bytecode pc 164
    this.assert(_dlgMask, scene.name);
    // source line 1611, bytecode pc 183
    _dlgMask.reloadData(data);
    // source line 1612, bytecode pc 200
    _dlgMask.setVisible(true);
},
    hideHollowOutLayer: function(fatherScene) {
    var scene, hollowOutLayer;
    // source line 1622, bytecode pc 4
    (scene = null);
    if (fatherScene) {
        // source line 1624, bytecode pc 19
        (scene = fatherScene);
    } else {
        // source line 1626, bytecode pc 54
        (scene = xs.Scene.Mgr.getRunningScene());
    }
    if ((scene === null)) {
        // source line 1629, bytecode pc 87
        xs.warn("hideHollowOutLayer scene is null!");
        // source line 1630, bytecode pc 89
        return void 0;
    }
    // source line 1634, bytecode pc 138
    (hollowOutLayer = scene.getChildByTag(xs.Cfg.Scene.CommonScene.HollowOutLayer.tag));
    if ((hollowOutLayer == null)) {
        // source line 1636, bytecode pc 150
        return void 0;
    }
    // source line 1639, bytecode pc 176
    this.assert(hollowOutLayer, scene.name);
    // source line 1642, bytecode pc 193
    hollowOutLayer.setVisible(false);
}
}));
