// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Factorys/Skill/Skill.js:1
// source line 899, bytecode pc 201
(xs.Factorys.Skill = {
    name: "xs.Factorys.Skill",
    getItemStack: function(input) {
    var _stackAll, _scope, _ret;
    // source line 22, bytecode pc 11
    (_stackAll = input.queue);
    if (!_stackAll) {
        // source line 26, bytecode pc 22
        return null;
    }
    // source line 29, bytecode pc 34
    (_scope = input.scope);
    if (!_stackAll[_scope]) {
        // source line 34, bytecode pc 49
        return null;
    }
    // source line 37, bytecode pc 54
    (_ret = null);
    if ((_scope === "from")) {
        // source line 39, bytecode pc 79
        (_ret = _stackAll[_scope]);
        // source line 40, bytecode pc 95
        (_ret = _ret[input.idxFrom]);
    } else {
        if ((_scope === "to")) {
            // source line 43, bytecode pc 125
            (_ret = _stackAll[_scope]);
            // source line 44, bytecode pc 141
            (_ret = _ret[input.idxTo]);
        } else {
            if ((_scope === "other")) {
                // source line 47, bytecode pc 171
                (_ret = _stackAll[_scope]);
                // source line 48, bytecode pc 190
                this.error("no use 12312");
            } else {
                // source line 51, bytecode pc 224
                xs.assert(false, "scope err", _scope);
            }
        }
    }
    // source line 58, bytecode pc 259
    xs.assert(_ret, "_scope err", _scope, _stackAll);
    // source line 60, bytecode pc 263
    return _ret;
},
    getParams: function(input) {
    var _paramsAll, _scope, _ret;
    // source line 65, bytecode pc 24
    this.log("getParams", "begin");
    // source line 67, bytecode pc 46
    (_paramsAll = input.para.model.params);
    if (!_paramsAll) {
        // source line 72, bytecode pc 57
        return null;
    }
    // source line 75, bytecode pc 69
    (_scope = input.scope);
    // source line 79, bytecode pc 100
    xs.assert(_scope, "check input,need scope", input);
    if (!_paramsAll[_scope]) {
        // source line 87, bytecode pc 115
        return null;
    }
    // source line 90, bytecode pc 120
    (_ret = null);
    if ((_scope === "from")) {
        // source line 92, bytecode pc 154
        (_ret = _paramsAll[_scope][input.idxFrom]);
    } else {
        if ((_scope === "to")) {
            // source line 95, bytecode pc 193
            (_ret = _paramsAll[_scope][input.idxTo]);
        } else {
            if ((_scope === "from_to")) {
                // source line 98, bytecode pc 241
                (_ret = _paramsAll[_scope][input.idxFrom][input.idxTo]);
            } else {
                if ((_scope === "once")) {
                    // source line 101, bytecode pc 271
                    (_ret = _paramsAll[_scope]);
                } else {
                    if ((_scope === "fromOther")) {
                        // source line 104, bytecode pc 301
                        (_ret = _paramsAll[_scope]);
                    } else {
                        if ((_scope === "toOther")) {
                            // source line 107, bytecode pc 331
                            (_ret = _paramsAll[_scope]);
                        } else {
                            // source line 110, bytecode pc 361
                            xs.assert(false, "_area err");
                        }
                    }
                }
            }
        }
    }
    // source line 116, bytecode pc 386
    this.log("getParams", "end");
    // source line 118, bytecode pc 390
    return _ret;
},
    getViewByName: function(input, name) {
    var _para, _ret;
    // source line 130, bytecode pc 24
    this.log("getViewByName", "begin");
    // source line 132, bytecode pc 36
    (_para = input.para);
    if ((name === "from")) {
        // source line 137, bytecode pc 101
        xs.assert((input.idxFrom !== undefined), "input.idxFrom", input.idxFrom);
        // source line 138, bytecode pc 122
        (_ret = _para.fromViews[input.idxFrom]);
        // source line 140, bytecode pc 167
        xs.assert(_ret, "unknow view name : from ", _para.fromViews, input.idxFrom);
        if (!_ret) {
            // source line 143, bytecode pc 178
            return null;
        }
    } else {
        if ((name === "to")) {
            // source line 148, bytecode pc 239
            xs.assert((input.idxTo !== undefined), "input.idxTo ", name);
            // source line 149, bytecode pc 260
            (_ret = _para.toViews[input.idxTo]);
            if (!_ret) {
                // source line 152, bytecode pc 271
                return null;
            }
        } else {
            if ((name === "to_body_s")) {
                // source line 156, bytecode pc 332
                xs.assert((input.idxTo !== undefined), "input.idxTo", name);
                // source line 157, bytecode pc 364
                (_ret = _para.toViews[input.idxTo].getBodyStatic());
            } else {
                if ((name === "from_body_s")) {
                    // source line 160, bytecode pc 430
                    xs.assert((input.idxFrom !== undefined), "input.idxFrom", input.idxFrom);
                    // source line 161, bytecode pc 462
                    (_ret = _para.fromViews[input.idxFrom].getBodyStatic());
                } else {
                    if ((name === "to_body_m")) {
                        // source line 164, bytecode pc 523
                        xs.assert((input.idxTo !== undefined), "input.idxTo", name);
                        // source line 165, bytecode pc 555
                        (_ret = _para.toViews[input.idxTo].getBodyMove());
                    } else {
                        if ((name === "from_body_m")) {
                            // source line 168, bytecode pc 621
                            xs.assert((input.idxFrom !== undefined), "input.idxFrom", input.idxFrom);
                            // source line 169, bytecode pc 653
                            (_ret = _para.fromViews[input.idxFrom].getBodyMove());
                        } else {
                            if ((name === "from_node_rgba")) {
                                // source line 172, bytecode pc 719
                                xs.assert((input.idxFrom !== undefined), "input.idxFrom", input.idxFrom);
                                // source line 173, bytecode pc 751
                                (_ret = _para.fromViews[input.idxFrom].getNodeRGBA());
                            } else {
                                if ((name === "to_node_rgba")) {
                                    // source line 176, bytecode pc 812
                                    xs.assert((input.idxTo !== undefined), "input.idxTo", name);
                                    // source line 177, bytecode pc 844
                                    (_ret = _para.toViews[input.idxTo].getNodeRGBA());
                                } else {
                                    if ((name === "from_hp")) {
                                        // source line 180, bytecode pc 895
                                        (_ret = _para.fromViews[input.idxFrom].getHp());
                                    } else {
                                        if ((name === "to_hp")) {
                                            // source line 183, bytecode pc 946
                                            (_ret = _para.toViews[input.idxTo].getHp());
                                        } else {
                                            if ((name === "from_bak_bg")) {
                                                // source line 186, bytecode pc 984
                                                (_ret = _para.env.backupBgs[0]);
                                            } else {
                                                if ((name === "to_bak_bg")) {
                                                    // source line 189, bytecode pc 1022
                                                    (_ret = _para.env.backupBgs[1]);
                                                } else {
                                                    if ((name === "near")) {
                                                        // source line 192, bytecode pc 1064
                                                        (_ret = _para.env.getNear());
                                                    } else {
                                                        if ((name === "center")) {
                                                            // source line 195, bytecode pc 1106
                                                            (_ret = _para.env.getCenter());
                                                            // source line 196, bytecode pc 1120
                                                            (_ret.name = "center");
                                                        } else {
                                                            if ((name === "vs")) {
                                                                // source line 199, bytecode pc 1156
                                                                (_ret = _para.env.vs);
                                                                // source line 200, bytecode pc 1170
                                                                (_ret.name = "vs");
                                                            } else {
                                                                if ((name === "mid")) {
                                                                    // source line 203, bytecode pc 1212
                                                                    (_ret = _para.env.getMid());
                                                                } else {
                                                                    if ((name === "far")) {
                                                                        // source line 206, bytecode pc 1254
                                                                        (_ret = _para.env.getFar());
                                                                    } else {
                                                                        if ((name === "from_userInfo")) {
                                                                            // source line 209, bytecode pc 1298
                                                                            (_ret = _para.env.getUserInfos()[0]);
                                                                        } else {
                                                                            if ((name === "to_userInfo")) {
                                                                                // source line 212, bytecode pc 1342
                                                                                (_ret = _para.env.getUserInfos()[1]);
                                                                            } else {
                                                                                if ((name === "roundInfo")) {
                                                                                    // source line 215, bytecode pc 1384
                                                                                    (_ret = _para.env.getRoundInfo());
                                                                                } else {
                                                                                    if ((name === "fightStar")) {
                                                                                        // source line 218, bytecode pc 1426
                                                                                        (_ret = _para.env.getFightStar());
                                                                                    } else {
                                                                                        if ((name === "views")) {
                                                                                            // source line 221, bytecode pc 1457
                                                                                            (_ret = _para.env);
                                                                                        } else {
                                                                                            if ((name === "env")) {
                                                                                                // source line 224, bytecode pc 1488
                                                                                                (_ret = _para.env);
                                                                                            } else {
                                                                                                if ((name === "bg")) {
                                                                                                    // source line 227, bytecode pc 1530
                                                                                                    (_ret = _para.env.getBg());
                                                                                                } else {
                                                                                                    if ((name === "black_bg")) {
                                                                                                        // source line 230, bytecode pc 1572
                                                                                                        (_ret = _para.env.getBlackBg());
                                                                                                    } else {
                                                                                                        if ((name === "bg_blood")) {
                                                                                                            // source line 233, bytecode pc 1614
                                                                                                            (_ret = _para.env.getBg_Blood());
                                                                                                        } else {
                                                                                                            // source line 245, bytecode pc 1635
                                                                                                            (_ret = input.itemViews[name]);
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    // source line 251, bytecode pc 1675
    xs.assert(_ret, "unknow view name 111", name, _para.toViews);
    // source line 255, bytecode pc 1700
    this.log("getViewByName", "end");
    // source line 257, bytecode pc 1704
    return _ret;
},
    makeArgsArray: function(args, model) {
    var _retArr, _model, i, value;
    // source line 262, bytecode pc 24
    this.log("makeArgsArray", "begin");
    // source line 265, bytecode pc 33
    (_retArr = []);
    // source line 266, bytecode pc 40
    (_model = model);
    if (((_model === undefined) || (_model === null))) {
        // source line 270, bytecode pc 75
        (_model = {});
    }
    // source line 274, bytecode pc 128
    xs.assert(xs.Utils.isArray(args), "args is not a array", args);
    if (((args.hasItemString() === false) || (_model.length === 0))) {
        // source line 276, bytecode pc 172
        (_retArr = args);
    } else {
        // source line 279, bytecode pc 182
        (i = 0);
        while ((i < args.length)) {
            if ((xs.Utils.isString(args[i]) && (args[i].charAt(0) === "$"))) {
                // source line 281, bytecode pc 282
                (value = _model[args[i].slice(1)]);
                if ((value === undefined)) {
                    // source line 283, bytecode pc 305
                    (value = "");
                    // source line 284, bytecode pc 338
                    xs.warn("cfg", ("args undefined found,need check cfg:" + args));
                }
                // source line 286, bytecode pc 357
                _retArr.push(value);
                // source line 287, bytecode pc 362
                (value = null);
            } else {
                // source line 290, bytecode pc 390
                _retArr.push(args[i]);
            }
            // source line 279, bytecode pc 405
            i++;
        }
    }
    // source line 296, bytecode pc 448
    this.log("makeArgsArray", "end");
    // source line 300, bytecode pc 452
    return _retArr;
},
    makeValidDuration: function(duration) {
    var _ret;
    // source line 304, bytecode pc 4
    (_ret = 1);
    if ((duration === 0)) {
        // source line 307, bytecode pc 16
        return 0;
    }
    if (((duration !== null) && (duration !== undefined))) {
        // source line 312, bytecode pc 48
        (_ret = duration);
    }
    // source line 314, bytecode pc 52
    return _ret;
},
    makeValidSetType: function(cfg) {
    // source line 323, bytecode pc 44
    return ((cfg.type === "Spawn") ? cc.Spawn : cc.Sequence);
},
    getType: function(para) {
    var _fromNum, _toNum;
    // source line 331, bytecode pc 4
    (_fromNum = 1);
    // source line 332, bytecode pc 9
    (_toNum = 1);
    if ((para.fromViews.length > 1)) {
        // source line 335, bytecode pc 46
        (_fromNum = para.fromViews.length);
    }
    if ((para.toViews.length > 1)) {
        // source line 338, bytecode pc 83
        (_toNum = para.toViews.length);
    }
    if ((_fromNum === 1)) {
        // source line 342, bytecode pc 119
        return ((_toNum === 1) ? "1vs1" : "1vsN");
    } else {
        // source line 345, bytecode pc 150
        return ((_toNum === 1) ? "Nvs1" : "NvsN");
    }
},
    createSkill: function(input, cfg, baseTag, baseDuration) {
    var _ret, _skillCfg, _baseDuration, _duration, _tag, _partCfg, _setClass, _actionParts, _i;
    // source line 360, bytecode pc 28
    this.log((baseTag + "-createSkill"), "begin");
    // source line 362, bytecode pc 51
    this.markFuncBegin((baseTag + "-createSkill"));
    // source line 364, bytecode pc 56
    (_ret = null);
    if (cfg) {
        // source line 367, bytecode pc 71
        (_skillCfg = cfg);
        // source line 368, bytecode pc 91
        (_baseDuration = this.makeValidDuration(baseDuration));
        // source line 369, bytecode pc 116
        (_duration = this.makeValidDuration(_skillCfg.duration));
        // source line 370, bytecode pc 127
        (_duration = (_duration * _baseDuration));
        if (xs.Utils.isString(_skillCfg)) {
            // source line 376, bytecode pc 174
            (_tag = ((baseTag + "-") + _skillCfg));
            // source line 379, bytecode pc 202
            (_partCfg = xs.Cfg.Skill.part[_skillCfg]);
            // source line 381, bytecode pc 233
            xs.assert(_partCfg, "unknow part name ", _skillCfg);
            // source line 383, bytecode pc 260
            xs.log_ck("createSkill", _skillCfg);
            // source line 390, bytecode pc 311
            (_ret = xs.Factorys.Skill.Part.create(input, _partCfg, _tag, _duration));
        } else {
            // source line 396, bytecode pc 336
            (_setClass = this.makeValidSetType(_skillCfg));
            // source line 397, bytecode pc 345
            (_actionParts = []);
            for (var _i in _skillCfg) {
                if (!(((_i !== null) && _skillCfg.hasOwnProperty(_i)))) continue;
                // source line 401, bytecode pc 428
                xs.assert((_i != "hasItemString"), "hasItemString found in createSkill 11");
                if ((_i === "type")) {
                } else {
                    if ((_i === "duration")) {
                    } else {
                        if ((_i === "extend")) {
                        } else {
                            if ((_i === "params")) {
                            } else {
                                // source line 418, bytecode pc 540
                                xs.Skill.Impl.updateParams(_skillCfg.params);
                                if (_skillCfg.params) {
                                    // source line 423, bytecode pc 591
                                    (input.effectType = (_skillCfg.params.effectType || xs.Constant_EffectPlayType_Normal));
                                    // source line 424, bytecode pc 620
                                    (input.effectDuration = (_skillCfg.params.effectDuration || 1));
                                } else {
                                    // source line 428, bytecode pc 644
                                    (input.effectType = xs.Constant_EffectPlayType_Normal);
                                    // source line 429, bytecode pc 654
                                    (input.effectDuration = 1);
                                }
                                // source line 439, bytecode pc 712
                                _actionParts.push(this.createSkill(input, _skillCfg[_i], ((baseTag + "-") + _i), _duration));
                            }
                        }
                    }
                }
            }
            // source line 445, bytecode pc 758
            (_ret = xs.Utils.Action.combine(_actionParts, _setClass));
        }
    } else {
        // source line 449, bytecode pc 768
        (_ret = null);
    }
    // source line 452, bytecode pc 797
    this.log((baseTag + "-createSkill"), "end");
    // source line 454, bytecode pc 820
    this.markFuncEnd((baseTag + "-createSkill"));
    // source line 456, bytecode pc 824
    return _ret;
},
    getSkillProperty_HpsType: function(skillCfg) {
    var _ret;
    // source line 466, bytecode pc 4
    (_ret = 1);
    if (skillCfg.property) {
        if (skillCfg.property.hps) {
            if (skillCfg.property.hps.type) {
                // source line 471, bytecode pc 77
                return skillCfg.property.hps.type;
            }
        }
    }
    // source line 476, bytecode pc 88
    return xs.Constant_FightScene_HpsType_Default;
},
    makeSkillHpQueue: function(input, hpsType) {
    var _paramsAll, _arr, scopeNameArr, _tmp, i, _scopeName, _scope, j, _param, _ret, _hp, _loopNum, _criticalNum, _hpValue, k, _num_loop, _power_loop, _power_over, _cake_loop, _cake_over, _criticalValue, _commonNum, _commonHpValue, _residueCriticalNum, _residueLoopNum, loopIdx, isCritical;
    // source line 483, bytecode pc 24
    this.log("makeSkillHps", "begin");
    // source line 487, bytecode pc 46
    (_paramsAll = input.para.model.params);
    if (!_paramsAll) {
        // source line 490, bytecode pc 57
        return null;
    }
    // source line 493, bytecode pc 102
    (_arr = [ _paramsAll.from, _paramsAll.to, _paramsAll.other ]);
    // source line 495, bytecode pc 138
    (scopeNameArr = [ "from", "to", "other" ]);
    // source line 500, bytecode pc 157
    (input.queue = {});
    // source line 507, bytecode pc 162
    (i = 0);
    while ((i < scopeNameArr.length)) {
        // source line 509, bytecode pc 179
        (_scopeName = scopeNameArr[i]);
        // source line 511, bytecode pc 190
        (_scope = _paramsAll[_scopeName]);
        if (((_scope === undefined) || (_scope === null))) {
        } else {
            // source line 519, bytecode pc 238
            (input.queue[_scopeName] = []);
            // source line 523, bytecode pc 243
            (j = 0);
            while ((j < _scope.length)) {
                // source line 525, bytecode pc 264
                (_tmp = _arr[i][j]);
                // source line 527, bytecode pc 275
                (_param = _scope[j]);
                // source line 532, bytecode pc 295
                (_ret = { hp: [] });
                // source line 535, bytecode pc 314
                (_hp = (_param.hp || 0));
                // source line 536, bytecode pc 333
                (_loopNum = (input.loopNum || 1));
                // source line 537, bytecode pc 352
                (_criticalNum = (input.criticalNum || 0));
                if ((hpsType === xs.Constant_FightScene_HpsType_Average)) {
                    // source line 542, bytecode pc 382
                    (_hpValue = (_hp / _loopNum));
                    // source line 543, bytecode pc 406
                    (_hpValue = Math.round(_hpValue));
                    if ((_hpValue <= 0)) {
                        // source line 546, bytecode pc 421
                        (_hpValue = 1);
                    }
                    // source line 549, bytecode pc 426
                    (k = 0);
                    while ((k < _loopNum)) {
                        // source line 550, bytecode pc 456
                        _ret.hp.push(_hpValue);
                        // source line 549, bytecode pc 471
                        k++;
                    }
                } else {
                    if ((hpsType === xs.Constant_FightScene_HpsType_Test)) {
                        // source line 556, bytecode pc 513
                        (k = 0);
                        while ((k < _loopNum)) {
                            // source line 557, bytecode pc 548
                            _ret.hp.push(((k + 1) * 100));
                            // source line 558, bytecode pc 577
                            _ret.hp.push(((k + 1) * 100));
                            // source line 556, bytecode pc 592
                            k++;
                        }
                    } else {
                        if ((hpsType === xs.Constant_FightScene_HpsType_Loop2Finish1)) {
                            // source line 564, bytecode pc 648
                            (_hp = (_param.hp || 0));
                            // source line 566, bytecode pc 660
                            (_num_loop = ((_loopNum - 1) * 2));
                            // source line 567, bytecode pc 669
                            (_power_loop = 0.5);
                            // source line 568, bytecode pc 678
                            (_power_over = 0.5);
                            // source line 570, bytecode pc 689
                            (_cake_loop = (_power_loop * _hp));
                            // source line 571, bytecode pc 700
                            (_cake_over = (_power_over * _hp));
                            if ((_cake_loop == 0)) {
                                // source line 573, bytecode pc 715
                                (_cake_loop = 1);
                            }
                            if ((_cake_over == 0)) {
                                // source line 574, bytecode pc 730
                                (_cake_over = 1);
                            }
                            // source line 576, bytecode pc 735
                            (k = 0);
                            while ((k < _num_loop)) {
                                // source line 577, bytecode pc 786
                                _ret.hp.push(xs.ceil((_cake_loop / _num_loop)));
                                // source line 576, bytecode pc 801
                                k++;
                            }
                            // source line 580, bytecode pc 855
                            _ret.hp.push(xs.ceil(_cake_over));
                        } else {
                            if ((hpsType === xs.Constant_FightScene_HpsType_Critical)) {
                                // source line 585, bytecode pc 898
                                (_hp = (_param.hp || 0));
                                // source line 587, bytecode pc 907
                                (_criticalValue = 1.3);
                                // source line 589, bytecode pc 918
                                (_commonNum = (_loopNum - _criticalNum));
                                // source line 591, bytecode pc 954
                                (_commonHpValue = Math.round((_hp / ((_criticalValue * _criticalNum) + _commonNum))));
                                if ((_commonHpValue <= 0)) {
                                    // source line 593, bytecode pc 969
                                    (_commonHpValue = 1);
                                }
                                // source line 596, bytecode pc 976
                                (_residueCriticalNum = _criticalNum);
                                // source line 597, bytecode pc 983
                                (_residueLoopNum = _loopNum);
                                // source line 598, bytecode pc 1010
                                xs.log_hsq("_residueCriticalNum", _residueCriticalNum);
                                // source line 600, bytecode pc 1015
                                (loopIdx = 0);
                                while ((loopIdx < _loopNum)) {
                                    // source line 601, bytecode pc 1045
                                    (isCritical = this.isCriticalForProbability((_residueCriticalNum / _residueLoopNum)));
                                    if (isCritical) {
                                        // source line 604, bytecode pc 1068
                                        _residueCriticalNum--;
                                        // source line 605, bytecode pc 1113
                                        _ret.hp.push(Math.round((_commonHpValue * _criticalValue)));
                                    } else {
                                        // source line 608, bytecode pc 1142
                                        _ret.hp.push(_commonHpValue);
                                    }
                                    // source line 610, bytecode pc 1157
                                    _residueLoopNum--;
                                    // source line 600, bytecode pc 1172
                                    loopIdx++;
                                }
                                // source line 614, bytecode pc 1217
                                xs.log_hsq("_rethp11", _ret.hp);
                            } else {
                                // source line 619, bytecode pc 1251
                                xs.assert(false, "hpsType err", hpsType);
                            }
                        }
                    }
                }
                // source line 622, bytecode pc 1271
                (input.queue[_scopeName][j] = _ret);
                // source line 523, bytecode pc 1286
                j++;
            }
        }
        // source line 507, bytecode pc 1319
        i++;
    }
    // source line 629, bytecode pc 1369
    xs.log_zj("hpStack", input.queue);
},
    isCriticalForProbability: function(probability) {
    if (((probability >= 0) && (probability <= 1))) {
        // source line 635, bytecode pc 53
        return ((Math.random() < probability) ? true : false);
    } else {
        // source line 637, bytecode pc 85
        xs.warn("isCriticalForProbability 暴击概率出错 probability:", probability);
    }
    // source line 639, bytecode pc 87
    return false;
},
    getSkillLoopNum: function(skillCfg) {
    var _ret;
    // source line 665, bytecode pc 4
    (_ret = 1);
    if (skillCfg.property) {
        // source line 668, bytecode pc 41
        (_ret = (skillCfg.property.loopNum || 1));
    }
    // source line 677, bytecode pc 45
    return _ret;
},
    getSkillCLoopNum: function(skillCfg) {
    var _ret;
    // source line 681, bytecode pc 4
    (_ret = 1);
    if (skillCfg.property) {
        // source line 684, bytecode pc 41
        (_ret = (skillCfg.property.criticalNum || 0));
    }
    // source line 693, bytecode pc 45
    return _ret;
},
    create: function(para) {
    var _skillTag, _durationAllSkillBase, _durationSpeed, _durationAllSkill, _cfgSkill, _retArray, _input, _hpType, _ret;
    // source line 699, bytecode pc 18
    this.markFuncBegin("create");
    // source line 701, bytecode pc 35
    (_skillTag = para.model.skill);
    // source line 703, bytecode pc 64
    this.log((_skillTag + "-create"), "begin");
    // source line 705, bytecode pc 93
    this.markFuncBegin((_skillTag + "-create"), "00");
    // source line 709, bytecode pc 130
    (_durationAllSkillBase = this.makeValidDuration(xs.Cfg.Skill.duration));
    // source line 710, bytecode pc 166
    (_durationSpeed = this.makeValidDuration(para.env.getSpeed()));
    // source line 711, bytecode pc 177
    (_durationAllSkill = (_durationSpeed * _durationAllSkillBase));
    if ((para.model.skill == "enyuan")) {
        // source line 715, bytecode pc 220
        (para.model.skill = "enyuan_v5_1");
    }
    // source line 717, bytecode pc 257
    xs.log("------ skill name : ", para.model.skill);
    // source line 718, bytecode pc 290
    (_cfgSkill = xs.Cfg.Skill[para.model.skill]);
    if (!_cfgSkill) {
        if (xs.skipFightIfErr) {
            // source line 723, bytecode pc 345
            throw { msg: ("unknow Skill name:" + para.model.skill) }
        } else {
            // source line 727, bytecode pc 391
            xs.assert(_cfgSkill, "unknow SkillName ", para.model.skill);
        }
    }
    // source line 733, bytecode pc 420
    this.markFuncBegin((_skillTag + "-create"), "01");
    // source line 734, bytecode pc 441
    this.markFuncBegin("create", 1);
    // source line 739, bytecode pc 461
    (_cfgSkill = this.extendSkill(_cfgSkill));
    // source line 743, bytecode pc 490
    this.log((_skillTag + "-create"), "end");
    // source line 745, bytecode pc 499
    (_retArray = []);
    // source line 747, bytecode pc 521
    this.markFuncBegin("create", 2);
    // source line 759, bytecode pc 539
    (_input = { para: para });
    // source line 763, bytecode pc 588
    (_input.loopNum = (_input.para.model.num || this.getSkillLoopNum(_cfgSkill)));
    // source line 766, bytecode pc 637
    (_input.criticalNum = (_input.para.model.cnum || this.getSkillCLoopNum(_cfgSkill)));
    // source line 777, bytecode pc 664
    xs.Skill.Impl.init();
    // source line 779, bytecode pc 684
    (_hpType = this.getSkillProperty_HpsType(_cfgSkill));
    // source line 780, bytecode pc 705
    this.makeSkillHpQueue(_input, _hpType);
    // source line 782, bytecode pc 727
    this.markFuncBegin("create", 3);
    // source line 790, bytecode pc 784
    _retArray.push(this.createSkill(_input, _cfgSkill, _skillTag, this.makeValidDuration(_durationAllSkill)));
    // source line 795, bytecode pc 806
    this.markFuncBegin("create", 4);
    // source line 797, bytecode pc 828
    this.markFuncBegin("create", 5);
    // source line 799, bytecode pc 862
    (_ret = xs.Utils.Action.combineSequence(_retArray));
    // source line 801, bytecode pc 881
    this.markFuncEnd("create");
    // source line 803, bytecode pc 885
    return _ret;
},
    getExtendObj: function(scope, childDesc) {
    var _arrChild, _root, i, _childKey, _oriRoot, useSuperExtend;
    // source line 816, bytecode pc 23
    (_arrChild = childDesc.split("."));
    // source line 818, bytecode pc 58
    xs.assert(scope, "getExtendObj error1", scope, childDesc);
    // source line 820, bytecode pc 65
    (_root = scope);
    // source line 822, bytecode pc 70
    (i = 0);
    while ((i < _arrChild.length)) {
        // source line 823, bytecode pc 87
        (_childKey = _arrChild[i]);
        // source line 824, bytecode pc 94
        (_oriRoot = _root);
        // source line 825, bytecode pc 105
        (_root = _root[_childKey]);
        // source line 829, bytecode pc 140
        xs.assert(_root, ("getExtendObj error:" + childDesc), _childKey);
        // source line 822, bytecode pc 155
        i++;
    }
    // source line 832, bytecode pc 178
    (useSuperExtend = true);
    if ((useSuperExtend === true)) {
        // source line 835, bytecode pc 212
        (_root = this.extend(scope, _root));
    }
    // source line 838, bytecode pc 216
    return _root;
},
    extend: function(scope, child) {
    var _extend, _diff, i, _tmpExtend, _base, _baseCopy;
    // source line 849, bytecode pc 26
    xs.assert(scope, " input.skills must exist");
    // source line 850, bytecode pc 53
    xs.assert(child, " input.child must exist");
    // source line 852, bytecode pc 72
    (_extend = (child.extend || null));
    if ((_extend === null)) {
        // source line 855, bytecode pc 86
        return child;
    }
    if (!xs.Utils.isArray(_extend)) {
        // source line 859, bytecode pc 141
        (_extend = [].concat(_extend));
    }
    // source line 864, bytecode pc 148
    (_diff = child);
    // source line 870, bytecode pc 153
    (i = 0);
    while ((i < _extend.length)) {
        // source line 871, bytecode pc 170
        (_tmpExtend = _extend[i]);
        // source line 877, bytecode pc 194
        (_base = this.getExtendObj(scope, _tmpExtend));
        // source line 885, bytecode pc 201
        (_baseCopy = _base);
        // source line 887, bytecode pc 234
        (_diff = xs.Utils.cloneWithDiff(_baseCopy, _diff));
        // source line 870, bytecode pc 249
        i++;
    }
    // source line 892, bytecode pc 272
    (_extend = null);
    // source line 896, bytecode pc 276
    return _diff;
},
    extendSkill: function(child) {
    // source line 901, bytecode pc 32
    return this.extend(xs.Cfg.Skill, child);
}
});
