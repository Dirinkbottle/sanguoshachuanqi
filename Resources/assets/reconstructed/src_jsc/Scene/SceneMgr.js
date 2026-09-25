// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Scene/SceneMgr.js:1
// source line 7, bytecode pc 20
(xs.Scene.SceneJsMgr = function() {
    // source line 8, bytecode pc 12
    (this.m_map_loaded = {});
    // source line 9, bytecode pc 25
    (this.m_map_regis = {});
});
// source line 29, bytecode pc 87
(xs.Scene.SceneJsMgr.prototype = {
    register: function(moduleJsName, fileHeader) {
    // source line 16, bytecode pc 13
    (this.m_map_regis[moduleJsName] = fileHeader);
},
    _isLoaded: function(moduleJsName) {
    // source line 20, bytecode pc 10
    return this.m_map_loaded[moduleJsName];
},
    lazyInit: function(moduleJsName) {
    if (!this._isLoaded(moduleJsName)) {
        // source line 25, bytecode pc 38
        this._load(moduleJsName);
    }
},
    _load: function(moduleJsName) {
    var _js_header;
    // source line 31, bytecode pc 13
    (_js_header = this.m_map_regis[moduleJsName]);
    if (_js_header) {
        // source line 35, bytecode pc 33
        (this.m_map_loaded[moduleJsName] = true);
        if (xs.Utils.isArray(_js_header)) {
            // source line 38, bytecode pc 89
            xs.Utils.require(_js_header);
        } else {
            // source line 41, bytecode pc 129
            xs.Utils.require([ _js_header ]);
        }
    }
}
});
// source line 53, bytecode pc 128
(xs.Scene.SceneJsMgr.mgr = new xs.Scene.SceneJsMgr());
// source line 783, bytecode pc 711
(xs.Scene.SceneMgr = cc.Class.extend({
    name: "xs.Scene.SceneMgr ",
    Cfg: { Tags: { Scene: "Scene", Dialog: "Dialog" } },
    last: {
        saveArguments: function(args) {
    // source line 73, bytecode pc 9
    (this.arguments = args);
},
        getLastSceneName: function() {
    var _name;
    if (this.arguments) {
        // source line 79, bytecode pc 22
        (_name = this.arguments[0]);
        // source line 80, bytecode pc 26
        return _name;
    } else {
        // source line 83, bytecode pc 33
        return null;
    }
}
    },
    lastNet: {
        saveArguments: function(args) {
    // source line 92, bytecode pc 9
    (this.arguments = args);
}
    },
    registerMap: { Scene: {}, Dialog: {} },
    status: {},
    history: {
        last: {
            name: null,
            type: null,
            param: null,
            update: function(name, type, param) {
    // source line 114, bytecode pc 9
    (this.name = name);
    // source line 115, bytecode pc 19
    (this.type = type);
    // source line 116, bytecode pc 29
    (this.param = param);
}
        },
        names_main: [],
        names_sub: [],
        paramMap: {},
        clear_Main: function() {
    // source line 130, bytecode pc 11
    (this.names_main = []);
},
        clear_Sub: function() {
    // source line 134, bytecode pc 11
    (this.names_sub = []);
},
        clearLoopNames_sub: function(name) {
    var _idx;
    // source line 140, bytecode pc 24
    (_idx = this.names_sub.indexOf(name));
    if ((_idx >= 0)) {
        // source line 143, bytecode pc 62
        (this.names_sub = this.names_sub.slice(_idx));
    }
},
        getLastSubType: function() {
    var i, _name;
    // source line 150, bytecode pc 16
    (i = (this.names_sub.length - 1));
    while ((i >= 0)) {
        // source line 151, bytecode pc 36
        (_name = this.names_sub[i]);
        if ((xs.Scene.Mgr._getSceneRegisInfo(_name).type === xs.Constant_SceneType_Cmn)) {
        } else {
            // source line 157, bytecode pc 133
            return xs.Scene.Mgr._getSceneRegisInfo(_name).type;
        }
        // source line 150, bytecode pc 147
        (i = (+i - 1));
    }
},
        popSceneInfo: function() {
    var _name;
    // source line 166, bytecode pc 4
    (_name = null);
    if ((this.names_sub.length > 0)) {
        if ((this.names_sub.length >= 2)) {
            // source line 171, bytecode pc 59
            this.names_sub.pop();
            // source line 172, bytecode pc 80
            (_name = this.names_sub.pop());
        } else {
            // source line 175, bytecode pc 103
            this.names_sub.pop();
            // source line 176, bytecode pc 124
            (_name = this.names_main.pop());
        }
    } else {
        if ((this.names_main.length > 0)) {
            // source line 180, bytecode pc 165
            this.names_main.pop();
            // source line 181, bytecode pc 186
            (_name = this.names_main.pop());
        } else {
            // source line 184, bytecode pc 193
            return null;
        }
    }
    if (_name) {
        // source line 190, bytecode pc 231
        return { name: _name, param: this.paramMap[_name] }
    } else {
        // source line 194, bytecode pc 249
        return this.popSceneInfo();
    }
},
        add: function(name, param) {
    var _type, _lastSubType;
    if ((name !== this.last.name)) {
        // source line 204, bytecode pc 58
        (_type = xs.Scene.Mgr._getSceneRegisInfo(name).type);
        if ((_type === xs.Constant_SceneType_Main)) {
            if ((this.names_main.length >= 3)) {
                // source line 209, bytecode pc 114
                this.names_main.pop();
            }
            // source line 212, bytecode pc 127
            this.clear_Sub();
            // source line 214, bytecode pc 149
            this.names_main.push(name);
        } else {
            if ((_type === xs.Constant_SceneType_Cmn)) {
                // source line 219, bytecode pc 190
                this.clearLoopNames_sub(name);
                // source line 222, bytecode pc 212
                this.names_sub.push(name);
            } else {
                if ((_type === xs.Constant_SceneType_None)) {
                    // source line 225, bytecode pc 238
                    return void 0;
                } else {
                    // source line 229, bytecode pc 259
                    (_lastSubType = this.getLastSubType());
                    if ((_lastSubType === _type)) {
                        // source line 233, bytecode pc 288
                        this.clearLoopNames_sub(name);
                    } else {
                        // source line 237, bytecode pc 306
                        this.clear_Sub();
                    }
                    // source line 241, bytecode pc 328
                    this.names_sub.push(name);
                }
            }
        }
        // source line 244, bytecode pc 342
        (this.paramMap[name] = param);
        // source line 246, bytecode pc 372
        this.last.update(name, _type, param);
    }
}
    },
    lock: function() {
    // source line 259, bytecode pc 7
    (this.m_isLock = true);
},
    unlock: function() {
    // source line 266, bytecode pc 7
    (this.m_isLock = false);
},
    isLocked: function() {
    // source line 270, bytecode pc 6
    return this.m_isLock;
},
    getCurSceneName: function() {
    var _ret;
    // source line 279, bytecode pc 23
    (_ret = this.history.last.name);
    // source line 280, bytecode pc 27
    return _ret;
},
    gotoLastScene: function() {
    var _lastSceneInfo;
    if ((this.m_isLock_gotoLastScene === true)) {
        // source line 291, bytecode pc 31
        this.log("m_isLock_gotoLastScene ignore");
        // source line 292, bytecode pc 33
        return void 0;
    }
    // source line 294, bytecode pc 41
    (this.m_isLock_gotoLastScene = true);
    try {
        // source line 297, bytecode pc 63
        (_lastSceneInfo = this.history.popSceneInfo());
        if (_lastSceneInfo) {
            // source line 300, bytecode pc 116
            xs.Scene.Mgr.changeSceneByName(_lastSceneInfo.name, _lastSceneInfo.param);
        } else {
            // source line 303, bytecode pc 150
            xs.warn("_lastSceneInfo", "_lastSceneInfo null");
        }
    } catch (e) {
        // source line 307, bytecode pc 186
        xs.warnException(e);
        /* TODO_BYTECODE pc=187 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 310, bytecode pc 203
    (this.m_isLock_gotoLastScene = false);
},
    gotoLastSceneSafe: function() {
    var _lastSceneInfo;
    if ((this.m_isLock_gotoLastScene === true)) {
        // source line 319, bytecode pc 31
        this.log("m_isLock_gotoLastScene ignore");
        // source line 320, bytecode pc 33
        return void 0;
    }
    // source line 322, bytecode pc 41
    (this.m_isLock_gotoLastScene = true);
    try {
        // source line 325, bytecode pc 63
        (_lastSceneInfo = this.history.popSceneInfo());
        if (_lastSceneInfo) {
            // source line 328, bytecode pc 116
            xs.Scene.Mgr.changeSceneByName(_lastSceneInfo.name, _lastSceneInfo.param);
        } else {
            // source line 331, bytecode pc 154
            xs.Profile.UserCfg.setLoginAccount("cmd ");
            // source line 332, bytecode pc 187
            xs.Scene.Mgr.changeSceneByName("LoginScene");
        }
    } catch (e) {
        // source line 337, bytecode pc 223
        xs.warnException(e);
        /* TODO_BYTECODE pc=224 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 340, bytecode pc 240
    (this.m_isLock_gotoLastScene = false);
},
    loadStatus: function(key, defValue) {
    var _defValue;
    // source line 353, bytecode pc 13
    (_defValue = (defValue || null));
    // source line 354, bytecode pc 33
    return (this.status[key] || _defValue);
},
    loadStatusAndClear: function(key, defValue) {
    var _ret;
    // source line 365, bytecode pc 23
    (_ret = this.loadStatus(key, defValue));
    // source line 366, bytecode pc 40
    this._clearStatus(key);
    // source line 367, bytecode pc 44
    return _ret;
},
    saveStatus: function(key, value) {
    // source line 377, bytecode pc 13
    (this.status[key] = value);
},
    _clearStatus: function(key) {
    // source line 385, bytecode pc 11
    (this.status[key] = null);
},
    removeAllStatus: function() {
    var i;
    // source line 392, bytecode pc 16
    (i = (this.status.length - 1));
    while ((i >= 0)) {
        // source line 393, bytecode pc 34
        (this.status[i] = null);
        // source line 392, bytecode pc 48
        (i = (+i - 1));
    }
},
    registerScene: function(name, info) {
    // source line 403, bytecode pc 37
    this.register(this.Cfg.Tags.Scene, name, info);
},
    register: function(area, name, info) {
    // source line 413, bytecode pc 17
    (this.registerMap[area][name] = info);
},
    changeScene: function(scene) {
    if (xs.director.getRunningScene()) {
        // source line 434, bytecode pc 51
        xs.director.replaceScene(scene);
    } else {
        // source line 437, bytecode pc 82
        xs.director.runWithScene(scene);
    }
    // source line 439, bytecode pc 86
    return scene;
},
    reloadScene: function() {
    // source line 446, bytecode pc 31
    this.changeSceneByName.apply(this, this.last.arguments);
},
    _getRegisInfo: function(area, name) {
    var _cfg;
    // source line 458, bytecode pc 31
    (_cfg = xs.Scene.Mgr.registerMap[area][name]);
    // source line 460, bytecode pc 56
    xs.dump(name, _cfg);
    // source line 463, bytecode pc 108
    xs.assert(_cfg, ("_cfg name error:" + name), xs.Scene.Mgr.registerMap);
    // source line 464, bytecode pc 144
    xs.assert(_cfg.type, "_cfg type need:", name);
    // source line 466, bytecode pc 148
    return _cfg;
},
    _getSceneRegisInfo: function(name) {
    // source line 477, bytecode pc 33
    return this._getRegisInfo(this.Cfg.Tags.Scene, name);
},
    _func_cleanUp_recursion: function(node) {
    var _childs, i, _tmpChild;
    if (node) {
        if ((node.onCleanUpBeforeSceneExit !== undefined)) {
            // source line 488, bytecode pc 41
            node.onCleanUpBeforeSceneExit();
        }
        // source line 492, bytecode pc 59
        (_childs = node.getChildren());
        // source line 493, bytecode pc 64
        (i = 0);
        while ((i < _childs.length)) {
            // source line 495, bytecode pc 81
            (_tmpChild = _childs[i]);
            if ((_tmpChild.onCleanUpBeforeSceneExit !== undefined)) {
                // source line 498, bytecode pc 132
                xs.log_zj("onCleanUpBeforeSceneExit", _tmpChild.name);
                // source line 499, bytecode pc 147
                _tmpChild.onCleanUpBeforeSceneExit();
            }
            // source line 493, bytecode pc 161
            (i = (+i + 1));
        }
    }
},
    changeSceneByName: function(name, param) {
    var _scene_old, _nameLastScene, _lastSceneCfg, _sceneCfg, _preload, _arrayAreaNames, i, _areaNewScene, _i, _factory, _arrayAreaNames_last, _scene, _loadFuncs, _funcName, scene, arguments;
    // source line 511, bytecode pc 4
    (arguments = arguments);
    if ((this.isLocked() === true)) {
        // source line 516, bytecode pc 52
        xs.log("changeSceneByName", "changeSceneByName ignore");
        // source line 517, bytecode pc 54
        return void 0;
    }
    // source line 519, bytecode pc 67
    this.lock();
    // source line 521, bytecode pc 103
    xs.Scene.SceneJsMgr.mgr.lazyInit(name);
    // source line 526, bytecode pc 126
    this.markFuncBegin("changeSceneByName", name);
    // source line 530, bytecode pc 151
    (_scene_old = xs.director.getRunningScene());
    if ((name !== "LoginScene")) {
        // source line 534, bytecode pc 182
        this._func_cleanUp_recursion(_scene_old);
    }
    // source line 540, bytecode pc 203
    (_nameLastScene = this.last.getLastSceneName());
    // source line 541, bytecode pc 208
    (_lastSceneCfg = null);
    // source line 542, bytecode pc 230
    this.last.saveArguments(arguments);
    // source line 543, bytecode pc 256
    this.history.add(name, param);
    // source line 547, bytecode pc 276
    (_sceneCfg = this._getSceneRegisInfo(name));
    if (_nameLastScene) {
        // source line 555, bytecode pc 308
        (_lastSceneCfg = this._getSceneRegisInfo(_nameLastScene));
        // source line 557, bytecode pc 331
        (_arrayAreaNames = (_lastSceneCfg.area || []));
        // source line 558, bytecode pc 336
        (i = 0);
        while ((i < _arrayAreaNames.length)) {
            // source line 560, bytecode pc 365
            (_areaNewScene = (_sceneCfg.area || []));
            if (_areaNewScene.hasItem(_arrayAreaNames[i])) {
            } else {
                // source line 565, bytecode pc 434
                xs.Factorys.Sprite.unload(_arrayAreaNames[i], true);
            }
            // source line 558, bytecode pc 448
            (i = (+i + 1));
        }
        // source line 569, bytecode pc 479
        (_preload = _lastSceneCfg.preLoad);
        if (_preload) {
            for (var _i in _preload) {
                if (!(_preload.hasOwnProperty(_i))) continue;
                // source line 573, bytecode pc 531
                (i = 0);
                while ((i < _preload[_i].length)) {
                    // source line 574, bytecode pc 555
                    (_factory = xs.Factorys[_i]);
                    if (_factory) {
                        if ((_factory.unload_preload !== undefined)) {
                            // source line 578, bytecode pc 609
                            _factory.unload_preload(_preload[_i][i]);
                        } else {
                            // source line 581, bytecode pc 647
                            xs.warn("SceneMgr", ("unknow unload_preload:" + _i));
                        }
                    } else {
                        // source line 585, bytecode pc 685
                        xs.warn("SceneMgr", ("unknow _factoryName:" + _i));
                    }
                    // source line 573, bytecode pc 699
                    (i = (+i + 1));
                }
            }
        }
    }
    // source line 593, bytecode pc 757
    xs.Tools.Sys.free_when_change_scene_before_new();
    if (_sceneCfg.area) {
        // source line 598, bytecode pc 775
        (i = 0);
        while ((i < _sceneCfg.area.length)) {
            // source line 600, bytecode pc 822
            (_arrayAreaNames_last = (_lastSceneCfg ? (_lastSceneCfg.area || []) : []));
            if (_arrayAreaNames_last.hasItem(_sceneCfg.area[i])) {
                // source line 604, bytecode pc 890
                xs.log(("xs.Factorys.Sprite.load ignore :" + _sceneCfg.area[i]));
            } else {
                // source line 607, bytecode pc 937
                xs.Factorys.Sprite.load(_sceneCfg.area[i], true);
            }
            // source line 598, bytecode pc 951
            (i = (+i + 1));
        }
    }
    // source line 613, bytecode pc 1007
    xs.Views.Mgr.lastView.clearAll();
    // source line 615, bytecode pc 1012
    (_scene = null);
    if (_sceneCfg.ccbFile) {
        // source line 622, bytecode pc 1059
        (_scene = xs.ccb_reader.loadAsScene(_sceneCfg.ccbFile));
    } else {
        // source line 625, bytecode pc 1107
        xs.assert((_sceneCfg["class"].create != undefined), "Scene need static func: create");
        // source line 626, bytecode pc 1134
        (_scene = _sceneCfg["class"].create(param));
        // source line 627, bytecode pc 1146
        (_scene.name = name);
    }
    // source line 630, bytecode pc 1177
    xs.assert(_scene, "change by name _scene error", _sceneCfg);
    // source line 632, bytecode pc 1187
    (this.mSceneNext = _scene);
    // source line 637, bytecode pc 1210
    (_loadFuncs = (_sceneCfg.loadFuncs || []));
    // source line 638, bytecode pc 1215
    (i = 0);
    while ((i < _loadFuncs.length)) {
        // source line 639, bytecode pc 1232
        (_funcName = _loadFuncs[i]);
        // source line 640, bytecode pc 1246
        _scene[_funcName]();
        // source line 638, bytecode pc 1260
        (i = (+i + 1));
    }
    if (_sceneCfg.audio) {
        if (_sceneCfg.audio.bgId) {
            // source line 648, bytecode pc 1348
            xs.audio.playMusic(_sceneCfg.audio.bgId, true);
        } else {
            // source line 652, bytecode pc 1375
            xs.audio.stopMusic();
        }
    } else {
        // source line 656, bytecode pc 1410
        xs.audio.playMusic("Audio_BG_Default", true);
    }
    // source line 662, bytecode pc 1422
    (_preload = _sceneCfg.preLoad);
    if (_preload) {
        for (var _i in _preload) {
            if (!(_preload.hasOwnProperty(_i))) continue;
            // source line 665, bytecode pc 1474
            (i = 0);
            while ((i < _preload[_i].length)) {
                // source line 666, bytecode pc 1498
                (_factory = xs.Factorys[_i]);
                if (_factory) {
                    if ((_factory.preload !== undefined)) {
                        // source line 671, bytecode pc 1552
                        _factory.preload(_preload[_i][i]);
                    } else {
                        // source line 674, bytecode pc 1590
                        xs.warn("SceneMgr", ("unknow preload:" + _i));
                    }
                } else {
                    // source line 678, bytecode pc 1628
                    xs.warn("SceneMgr", ("unknow _factoryName:" + _i));
                }
                // source line 665, bytecode pc 1642
                (i = (+i + 1));
            }
        }
    }
    // source line 685, bytecode pc 1715
    xs.director.getScheduler().unscheduleCallbackForTarget(this, this._schedule_clearCache_tex);
    // source line 686, bytecode pc 1771
    xs.director.getScheduler().scheduleCallbackForTarget(this, this._schedule_clearCache_tex, 10, cc.REPEAT_FOREVER);
    // source line 689, bytecode pc 1798
    xs.Views.Mgr.init();
    // source line 691, bytecode pc 1832
    xs.Views.Mgr.initLoadingLayer(this.mSceneNext);
    // source line 692, bytecode pc 1866
    xs.Views.Mgr.initHungerMask(this.mSceneNext);
    // source line 693, bytecode pc 1900
    xs.Views.Mgr.initDialogMask(this.mSceneNext);
    // source line 694, bytecode pc 1934
    xs.Views.Mgr.initHollowOutLayer(this.mSceneNext);
    // source line 696, bytecode pc 1957
    (scene = this.changeScene(this.mSceneNext));
    // source line 698, bytecode pc 1984
    xs.Tools.Sys.free_when_change_scene_after_new();
    // source line 700, bytecode pc 1997
    this.unlock();
    // source line 702, bytecode pc 2020
    this.markFuncEnd("changeSceneByName", name);
    // source line 703, bytecode pc 2024
    return scene;
},
    clearAll: function() {
    var _scene_old, _nameLastScene, _arrayAreaNames, i;
    // source line 708, bytecode pc 24
    (_scene_old = xs.director.getRunningScene());
    // source line 709, bytecode pc 41
    this._func_cleanUp_recursion(_scene_old);
    // source line 711, bytecode pc 62
    (_nameLastScene = this.last.getLastSceneName());
    // source line 713, bytecode pc 94
    xs.Views.Mgr.lastView.clearAll();
    if (_nameLastScene) {
        // source line 719, bytecode pc 129
        (_lastSceneCfg = this._getSceneRegisInfo(_nameLastScene));
        // source line 721, bytecode pc 154
        (_arrayAreaNames = (_lastSceneCfg.area || []));
        // source line 722, bytecode pc 159
        (i = 0);
        while ((i < _arrayAreaNames.length)) {
            // source line 723, bytecode pc 202
            xs.Factorys.Sprite.unload(_arrayAreaNames[i], true);
            // source line 722, bytecode pc 216
            (i = (+i + 1));
        }
    }
    // source line 727, bytecode pc 262
    xs.Tools.Sys.free_when_change_scene_before_new();
},
    _lazyInitScene: function(name) {
    if (name) {
    }
},
    _schedule_clearCache_tex: function() {
    // source line 747, bytecode pc 29
    this.log(("_schedule_clearCache_tex at " + new Date()));
    // source line 748, bytecode pc 56
    xs.Tools.Sys.free_when_change_scene_after_1_frame();
    // source line 749, bytecode pc 98
    xs.director.getScheduler().unscheduleCallbackForTarget(this, this._schedule_clearCache_tex);
},
    getRunningScene: function() {
    // source line 767, bytecode pc 21
    return xs.director.getRunningScene();
},
    displayLoadingLayer: function() {
    // source line 775, bytecode pc 18
    this.error("unuse");
    // source line 776, bytecode pc 51
    xs.Views.Mgr.showNotificationByName("Loading");
},
    dismissLoadingLayer: function() {
    // source line 784, bytecode pc 18
    this.error("unuse");
    // source line 785, bytecode pc 51
    xs.Views.Mgr.showNotificationByName("EmptyNode");
}
}));
// source line 794, bytecode pc 747
(xs.Scene.Mgr = new xs.Scene.SceneMgr());
