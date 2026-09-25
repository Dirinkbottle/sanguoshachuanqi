// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Factorys/Skill/Part.js:1
// source line 7, bytecode pc 11
(xs.tmpCount = 0);
// source line 426, bytecode pc 118
(xs.Factorys.Skill.Part = {
    _extendPart: function(child) {
    // source line 14, bytecode pc 46
    return xs.Factorys.Skill.extend(xs.Cfg.Skill, child);
},
    _getLoopCtrl: function(_cfgPart) {
    if (_cfgPart.property) {
        // source line 26, bytecode pc 26
        return _cfgPart.property.loopCtrl;
    } else {
        // source line 29, bytecode pc 33
        return null;
    }
},
    _getIgnoreEvents: function(_cfgPart) {
    if (_cfgPart.property) {
        // source line 35, bytecode pc 26
        return _cfgPart.property.ignore;
    } else {
        // source line 38, bytecode pc 33
        return null;
    }
},
    _getTriggerEvents: function(_cfgPart) {
    if (_cfgPart.property) {
        // source line 44, bytecode pc 26
        return _cfgPart.property.trigger;
    } else {
        // source line 47, bytecode pc 33
        return null;
    }
},
    create: function(input, cfg, baseTag, baseDuration) {
    var _skillPartTag, _cfgPart, _para, _duration, _input, _effectType, _effectDuration, _loopNum, _loopActions, _loop_i, _SpawnArray, listenersArrAll, listenersMap, _i, _j, _m, _n, _mo, _no, _itemCfg, _itemTag, _loopNumFrom, _loopNumTo, _loopNumFromOther, _loopNumToOther, totalCnt, cnt, _tmpListenerMap, _itemAction, _listenEvent, tmpAction, _actionActions, _ret, _property, _tmpActions, i;
    // source line 61, bytecode pc 28
    this.log((baseTag + "-part/create"), "begin");
    // source line 63, bytecode pc 35
    (_skillPartTag = baseTag);
    // source line 64, bytecode pc 42
    (_cfgPart = cfg);
    // source line 65, bytecode pc 54
    (_para = input.para);
    // source line 70, bytecode pc 81
    xs.assert(_cfgPart, "createSkillPartAction error");
    // source line 71, bytecode pc 101
    (_cfgPart = this._extendPart(_cfgPart));
    // source line 75, bytecode pc 140
    (_duration = xs.Factorys.Skill.makeValidDuration(_cfgPart.duration));
    // source line 76, bytecode pc 151
    (_duration = (_duration * baseDuration));
    // source line 78, bytecode pc 158
    (_input = input);
    // source line 80, bytecode pc 170
    (_input.cfg = _cfgPart);
    // source line 81, bytecode pc 185
    (_input.itemViews = {});
    // source line 82, bytecode pc 200
    (_input.listeners = {});
    // source line 83, bytecode pc 215
    (_input.listenerActions = {});
    // source line 84, bytecode pc 240
    (_input.part_ignore_events = this._getIgnoreEvents(_cfgPart));
    // source line 85, bytecode pc 265
    (_input.part_trigger_events = this._getTriggerEvents(_cfgPart));
    // source line 92, bytecode pc 295
    this.onPartPreEvent(_input, _cfgPart.pre, _para);
    // source line 95, bytecode pc 320
    this.log("onPartPreEvent", "over");
    // source line 104, bytecode pc 348
    (_effectType = (_input.effectType || xs.Constant_EffectPlayType_Normal));
    // source line 105, bytecode pc 367
    (_effectDuration = (_input.effectDuration || 1));
    // source line 107, bytecode pc 386
    (_loopNum = (_input.loopNum || 1));
    if ((this._getLoopCtrl(_cfgPart) === "n-1")) {
        // source line 111, bytecode pc 422
        (_loopNum = (_loopNum - 1));
    } else {
        if ((this._getLoopCtrl(_cfgPart) === "n-2")) {
            // source line 114, bytecode pc 464
            (_loopNum = (_loopNum - 2));
        } else {
            if ((this._getLoopCtrl(_cfgPart) === "n-3")) {
                // source line 117, bytecode pc 506
                (_loopNum = (_loopNum - 3));
            } else {
                if ((this._getLoopCtrl(_cfgPart) === "n-4")) {
                    // source line 120, bytecode pc 548
                    (_loopNum = (_loopNum - 4));
                } else {
                    if ((this._getLoopCtrl(_cfgPart) === "n")) {
                    } else {
                        if ((this._getLoopCtrl(_cfgPart) === "floor((n-1)/2)")) {
                            // source line 127, bytecode pc 641
                            (_loopNum = xs.floor(((_loopNum - 1) / 2)));
                        } else {
                            if ((this._getLoopCtrl(_cfgPart) === "floor((n-1)/2)*2")) {
                                // source line 131, bytecode pc 705
                                (_loopNum = (xs.floor(((_loopNum - 1) / 2)) * 2));
                            } else {
                                if ((this._getLoopCtrl(_cfgPart) === "2n+1")) {
                                } else {
                                    // source line 138, bytecode pc 747
                                    (_loopNum = 1);
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    // source line 143, bytecode pc 756
    (_loopActions = []);
    // source line 147, bytecode pc 761
    (_loop_i = 0);
    while ((_loop_i < _loopNum)) {
        // source line 152, bytecode pc 776
        (_SpawnArray = []);
        // source line 156, bytecode pc 785
        (listenersArrAll = []);
        // source line 157, bytecode pc 795
        (listenersMap = {});
        // source line 163, bytecode pc 800
        (_i = null);
        // source line 164, bytecode pc 805
        (_j = null);
        // source line 165, bytecode pc 810
        (_m = 0);
        // source line 166, bytecode pc 815
        (_n = 0);
        // source line 167, bytecode pc 820
        (_mo = 0);
        // source line 168, bytecode pc 825
        (_no = 0);
        for (var _i in _cfgPart.items) {
            if (!(((_i !== null) && _cfgPart.items.hasOwnProperty(_i)))) continue;
            // source line 173, bytecode pc 901
            (_itemCfg = _cfgPart.items[_i]);
            // source line 174, bytecode pc 918
            (_itemTag = ((baseTag + ".") + _i));
            if ((_itemCfg === null)) {
            } else {
                // source line 183, bytecode pc 960
                xs.assert(_itemCfg, "createSkillPartAction item error");
                // source line 184, bytecode pc 999
                (_itemCfg = xs.Factorys.Skill.Item.extendItem(_itemCfg));
                // source line 187, bytecode pc 1035
                xs.assert(_itemCfg.property, "_item.property is null", _itemCfg);
                // source line 188, bytecode pc 1071
                xs.assert(_itemCfg.timelines, "_item.timelines is null", _itemCfg);
                // source line 190, bytecode pc 1107
                xs.Factorys.Skill.Item.checkProperty(_itemCfg);
                // source line 194, bytecode pc 1151
                (_input.scope = xs.Factorys.Skill.Item.getParamsScope(_itemCfg));
                // source line 197, bytecode pc 1175
                (_loopNumFrom = (_para.fromViews.length || 1));
                // source line 198, bytecode pc 1199
                (_loopNumTo = (_para.toViews.length || 1));
                // source line 199, bytecode pc 1204
                (_loopNumFromOther = 1);
                // source line 200, bytecode pc 1209
                (_loopNumToOther = 1);
                if ((_input.scope === "from")) {
                    // source line 205, bytecode pc 1233
                    (_loopNumTo = 1);
                } else {
                    if ((_input.scope === "to")) {
                        // source line 208, bytecode pc 1262
                        (_loopNumFrom = 1);
                    } else {
                        if ((_input.scope === "once")) {
                            // source line 211, bytecode pc 1291
                            (_loopNumTo = 1);
                            // source line 212, bytecode pc 1296
                            (_loopNumFrom = 1);
                        } else {
                            if ((_input.scope === "fromOther")) {
                                // source line 215, bytecode pc 1344
                                (_loopNumFromOther = (_para.fromViews.length || 1));
                            } else {
                                if ((_input.scope === "toOther")) {
                                    // source line 218, bytecode pc 1392
                                    (_loopNumToOther = (_para.toViews.length || 1));
                                }
                            }
                        }
                    }
                }
                // source line 221, bytecode pc 1397
                (totalCnt = 0);
                if (((_loopNumTo > 1) && (_loopNumFrom == 1))) {
                    // source line 223, bytecode pc 1425
                    (totalCnt = _loopNumTo);
                } else {
                    if (((_loopNumFrom > 1) && (_loopNumTo == 1))) {
                        // source line 225, bytecode pc 1458
                        (totalCnt = _loopNumFrom);
                    }
                }
                // source line 227, bytecode pc 1463
                (cnt = 0);
                // source line 229, bytecode pc 1468
                (_m = 0);
                while ((_m < _loopNumFrom)) {
                    if ((listenersMap[_m] === undefined)) {
                        // source line 232, bytecode pc 1505
                        (listenersMap[_m] = []);
                    }
                    // source line 235, bytecode pc 1510
                    (_n = 0);
                    while ((_n < _loopNumTo)) {
                        if ((listenersMap[_m][_n] === undefined)) {
                            // source line 238, bytecode pc 1555
                            (listenersMap[_m][_n] = []);
                        }
                        // source line 241, bytecode pc 1560
                        (_mo = 0);
                        while ((_mo < _loopNumFromOther)) {
                            if ((listenersMap[_m][_n][_mo] === undefined)) {
                                // source line 243, bytecode pc 1613
                                (listenersMap[_m][_n][_mo] = []);
                            }
                            // source line 245, bytecode pc 1618
                            (_no = 0);
                            while ((_no < _loopNumToOther)) {
                                // source line 246, bytecode pc 1633
                                (cnt = (cnt + 1));
                                if ((listenersMap[_m][_n][_mo][_no] === undefined)) {
                                    // source line 248, bytecode pc 1688
                                    (listenersMap[_m][_n][_mo][_no] = []);
                                }
                                // source line 251, bytecode pc 1711
                                (_tmpListenerMap = listenersMap[_m][_n][_mo][_no]);
                                // source line 253, bytecode pc 1723
                                (_input.listeners = _tmpListenerMap);
                                // source line 255, bytecode pc 1735
                                (_input.idxFrom = _m);
                                // source line 256, bytecode pc 1747
                                (_input.idxTo = _n);
                                // source line 257, bytecode pc 1759
                                (_input.idxFromOther = _mo);
                                // source line 258, bytecode pc 1771
                                (_input.idxToOther = _no);
                                // source line 260, bytecode pc 1783
                                (_input.loopIdx = _loop_i);
                                // source line 262, bytecode pc 1814
                                (_input.sideFrom = _input.para.fromSides[_input.idxFrom]);
                                // source line 263, bytecode pc 1845
                                (_input.sideTo = _input.para.toSides[_input.idxTo]);
                                // source line 264, bytecode pc 1876
                                (_input.sideFromOther = _input.para.fromSides[_input.idxFromOther]);
                                // source line 265, bytecode pc 1907
                                (_input.sideToOther = _input.para.toSides[_input.idxToOther]);
                                // source line 267, bytecode pc 1938
                                (_input.tmpIdxFrom = _input.para.fromIdxs[_input.idxFrom]);
                                // source line 268, bytecode pc 1969
                                (_input.tmpIdxTo = _input.para.toIdxs[_input.idxTo]);
                                // source line 270, bytecode pc 2000
                                (_input.tmpViewFrom = _input.para.fromViews[_input.idxFrom]);
                                // source line 271, bytecode pc 2031
                                (_input.tmpViewTo = _input.para.toViews[_input.idxTo]);
                                // source line 272, bytecode pc 2062
                                (_input.tmpViewFromOther = _input.para.fromViews[_input.idxFromOther]);
                                // source line 273, bytecode pc 2093
                                (_input.tmpViewToOther = _input.para.toViews[_input.idxToOther]);
                                // source line 276, bytecode pc 2148
                                (_itemAction = xs.Factorys.Skill.Item.create(_i, _itemCfg, _input, _duration, _skillPartTag));
                                if (_itemAction) {
                                    if ((_itemCfg.property.isListener === true)) {
                                        // source line 284, bytecode pc 2200
                                        (_listenEvent = (_itemCfg.property.listenEvent || 0));
                                        // source line 285, bytecode pc 2238
                                        xs.assert((_listenEvent !== 0), "need listenEvent", _itemCfg.property);
                                        if (((_tmpListenerMap[_listenEvent] === null) || (_tmpListenerMap[_listenEvent] === undefined))) {
                                            // source line 288, bytecode pc 2284
                                            (_tmpListenerMap[_listenEvent] = []);
                                        }
                                        // source line 290, bytecode pc 2307
                                        _tmpListenerMap[_listenEvent].push(_itemAction);
                                    } else {
                                        if ((_effectType == xs.Constant_EffectPlayType_Single_Random)) {
                                            if ((cnt > 1)) {
                                                // source line 298, bytecode pc 2348
                                                (tmpAction = _itemAction);
                                                // source line 315, bytecode pc 2437
                                                (_itemAction = xs.Utils.Action.combineSequence([ cc.DelayTime.create(((_effectDuration * (cnt - 1)) / xs.fps)), tmpAction ]));
                                            }
                                        }
                                        // source line 324, bytecode pc 2456
                                        _SpawnArray.push(_itemAction);
                                    }
                                }
                                // source line 245, bytecode pc 2471
                                _no++;
                            }
                            // source line 241, bytecode pc 2499
                            _mo++;
                        }
                        // source line 235, bytecode pc 2527
                        _n++;
                    }
                    // source line 229, bytecode pc 2555
                    _m++;
                }
            }
        }
        // source line 333, bytecode pc 2610
        (_actionActions = xs.Utils.Action.combineSpawn(_SpawnArray));
        if ((listenersArrAll.length > 0)) {
            // source line 348, bytecode pc 2725
            (_actionActions = xs.Utils.Action.combineSequence([
    _actionActions,
    cc.CallFunc.create(function(sender, data) {
    var i;
    // source line 340, bytecode pc 4
    (i = 0);
    while ((i < this.length)) {
        // source line 342, bytecode pc 27
        this[i].release();
        // source line 343, bytecode pc 81
        xs.log("xs.tmpCount", xs.tmpCount--);
        // source line 340, bytecode pc 96
        i++;
    }
}.bind(listenersArrAll), xs.unuse_this)
]));
        }
        // source line 353, bytecode pc 2744
        _loopActions.push(_actionActions);
        // source line 147, bytecode pc 2759
        _loop_i++;
    }
    // source line 361, bytecode pc 2795
    (_cfgPart = (_cfgPart || {}));
    // source line 362, bytecode pc 2819
    (_property = (_cfgPart.property || {}));
    if (_property.delaySpawn) {
        // source line 370, bytecode pc 2841
        (_tmpActions = []);
        // source line 371, bytecode pc 2846
        (i = 0);
        while ((i < _loopActions.length)) {
            // source line 376, bytecode pc 2953
            _tmpActions.push(xs.Utils.Action.combineSequence([ cc.DelayTime.create(((_property.delaySpawn * i) * baseDuration)), _loopActions[i] ]));
            // source line 371, bytecode pc 2968
            i++;
        }
        // source line 382, bytecode pc 3020
        (_ret = xs.Utils.Action.combineSpawn(_tmpActions));
    } else {
        // source line 386, bytecode pc 3059
        (_ret = xs.Utils.Action.combineSequence(_loopActions));
    }
    // source line 390, bytecode pc 3092
    this.log((baseTag + "-part/create"), ("end:" + _ret));
    // source line 392, bytecode pc 3096
    return _ret;
},
    onPartPreEvent: function(input, pre, para) {
    var i, _tmp;
    // source line 404, bytecode pc 24
    this.log("onPartPreEvent", "begin");
    if (pre) {
        // source line 406, bytecode pc 37
        (i = 0);
        while ((i < pre.length)) {
            // source line 407, bytecode pc 54
            (_tmp = pre[i]);
            // source line 408, bytecode pc 79
            this.onEvent(input, _tmp, para);
            // source line 406, bytecode pc 94
            i++;
        }
    }
    // source line 411, bytecode pc 137
    this.log("onPartPreEvent", "end");
},
    hideBackupIcon: function(para, input) {
    // source line 415, bytecode pc 24
    this.log("hideBackupIcon", "begin");
    // source line 422, bytecode pc 49
    this.log("hideBackupIcon", "end");
},
    onEvent: function(input, event, para) {
    var _view, _func, _method, _argsArray;
    // source line 428, bytecode pc 4
    (_view = null);
    if (((event.who === undefined) || (event.who === null))) {
        // source line 430, bytecode pc 44
        (_view = this);
    } else {
        // source line 433, bytecode pc 92
        (_view = xs.Factorys.Skill.getViewByName(input, event.who));
    }
    if (!_view) {
        // source line 437, bytecode pc 103
        return void 0;
    }
    // source line 440, bytecode pc 134
    xs.assert(_view, "_view cant find ", event);
    // source line 443, bytecode pc 150
    (_func = _view[event.type]);
    // source line 444, bytecode pc 185
    xs.assert(_func, "func undefine", event, _view);
    // source line 447, bytecode pc 207
    (_method = _func.bind(_view));
    if ((event.args.length === 0)) {
        // source line 457, bytecode pc 236
        _method();
    } else {
        if ((event.args[0] === "$model")) {
            // source line 462, bytecode pc 284
            _method(para.model, input);
        } else {
            if ((event.args[0] === "$para")) {
                // source line 465, bytecode pc 327
                _method(para, input);
            } else {
                // source line 470, bytecode pc 385
                (_argsArray = xs.Factorys.Skill.makeArgsArray(event.args, para.model.params));
                if ((event.args.length === 1)) {
                    // source line 475, bytecode pc 420
                    _method(_argsArray[0]);
                } else {
                    if ((event.args.length === 2)) {
                        // source line 478, bytecode pc 467
                        _method(_argsArray[0], _argsArray[1]);
                    } else {
                        // source line 481, bytecode pc 506
                        xs.assert(false, "not support,too many args", event.args);
                    }
                }
            }
        }
    }
}
});
