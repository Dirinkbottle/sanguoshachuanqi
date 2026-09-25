// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Factorys/Skill/Item/Timeline.js:1
// source line 758, bytecode pc 141
(xs.Factorys.Skill.Item.Timeline = {
    createNormalAction: function(ActionName, duration, args) {
    var _class, arguments;
    // source line 15, bytecode pc 4
    (arguments = arguments);
    // source line 16, bytecode pc 17
    (_class = cc[ActionName]);
    // source line 18, bytecode pc 48
    xs.assert(_class, "unkown ActionName", arguments);
    if ((args === undefined)) {
        // source line 22, bytecode pc 81
        return _class.create(duration);
    } else {
        if ((args.length === 1)) {
            // source line 25, bytecode pc 126
            return _class.create(duration, args[0]);
        } else {
            if ((args.length === 2)) {
                // source line 28, bytecode pc 178
                return _class.create(duration, args[0], args[1]);
            } else {
                if ((args.length === 3)) {
                    // source line 31, bytecode pc 237
                    return _class.create(duration, args[0], args[1], args[2]);
                } else {
                    if ((args.length === 4)) {
                        // source line 34, bytecode pc 303
                        return _class.create(duration, args[0], args[1], args[2], args[3]);
                    } else {
                        // source line 37, bytecode pc 341
                        xs.assert(null, "args error", args, ActionName);
                    }
                }
            }
        }
    }
},
    createExtraAction: function(_action, _input) {
    var _ret, _class, _args;
    // source line 52, bytecode pc 6
    (_ret = _action);
    if (((_input === null) || (_input === undefined))) {
    } else {
        if (_input.type) {
            // source line 59, bytecode pc 67
            (_class = cc[_input.type]);
            // source line 60, bytecode pc 98
            xs.assert(_action, "extra error", _input);
            // source line 62, bytecode pc 110
            (_args = _input.args);
            // source line 64, bytecode pc 141
            xs.assert(_args, "need args", _input);
            if (_args) {
                // source line 67, bytecode pc 177
                (_ret = _class.create(_action, _args[0]));
            }
        }
    }
    // source line 73, bytecode pc 187
    (_class = null);
    // source line 74, bytecode pc 192
    (_args = null);
    // source line 77, bytecode pc 196
    return _ret;
},
    getTlTarget: function(input, tl, baseTag) {
    var _tl, _ret, _funcName;
    // source line 95, bytecode pc 6
    (_tl = tl);
    // source line 97, bytecode pc 11
    (_ret = null);
    if (((_tl.target != null) && (_tl.target != undefined))) {
        if (_tl.target.func) {
            // source line 104, bytecode pc 81
            (_funcName = _tl.target.func);
            // source line 106, bytecode pc 117
            (_ret = input.itemView[_funcName].apply(input.itemView));
        }
    }
    // source line 111, bytecode pc 121
    return _ret;
},
    createArmFrameEventEvents: function(cfgEvents, listeners) {
    var _events, _i, _actionNames, _actions, _j, _name, _actionSpawn;
    // source line 135, bytecode pc 9
    (_events = {});
    for (var _i in cfgEvents) {
        if (!(cfgEvents.hasOwnProperty(_i))) continue;
        // source line 139, bytecode pc 64
        (_actionNames = cfgEvents[_i].actions);
        // source line 140, bytecode pc 73
        (_actions = []);
        for (var _j in _actionNames) {
            if (!(_actionNames.hasOwnProperty(_j))) continue;
            // source line 143, bytecode pc 123
            (_name = _actionNames[_j]);
            // source line 144, bytecode pc 146
            _actions.push(listeners[_name]);
        }
        // source line 147, bytecode pc 188
        (_actionSpawn = xs.Utils.Action.combineSpawn(_actions));
        if (!(_actionSpawn)) continue;
        // source line 149, bytecode pc 207
        (_events[_i] = _actionSpawn);
        // source line 150, bytecode pc 222
        _actionSpawn.retain();
    }
    // source line 153, bytecode pc 234
    return _events;
},
    createTlActionByParams: function(input, tl, baseTag, lastAction, baseDuration) {
    var _tl, _property, _tag, _tl_duration, _base_duration, _duration, _ret, _target, _control, _tmpActions, i, parentView, sprite, _animation, _tmpPara, _controlPoint_0, _controlPoint_1, _pos, _args, _tmpArgs, _jump, _func, _retExtra;
    // source line 158, bytecode pc 24
    this.markFuncBegin("createTlActionByParams", "begin");
    // source line 160, bytecode pc 31
    (_tl = tl);
    // source line 161, bytecode pc 48
    (_property = input.item.property);
    // source line 164, bytecode pc 64
    (_tag = (baseTag + tl.type));
    // source line 167, bytecode pc 103
    (_tl_duration = xs.Factorys.Skill.makeValidDuration(_tl.dp));
    // source line 168, bytecode pc 137
    (_base_duration = xs.Factorys.Skill.makeValidDuration(baseDuration));
    // source line 169, bytecode pc 148
    (_duration = (_tl_duration * _base_duration));
    // source line 170, bytecode pc 153
    (_ret = null);
    // source line 171, bytecode pc 181
    (_target = this.getTlTarget(input, tl, baseTag));
    if (((_tl.type === "createPlayAction") || (_tl.type === "PlayAnimation"))) {
        // source line 178, bytecode pc 257
        xs.assert((_duration > 0), "_duration must > 0", _duration, tl);
        // source line 179, bytecode pc 308
        xs.assert(input.item.property.armatureId, "input.item.armatureId need", input.item);
        // source line 180, bytecode pc 358
        xs.assert((tl.aniId || tl.aniIds), "tl.aniId or aniIds need", tl);
        // source line 183, bytecode pc 376
        (_control = { speed: _duration });
        if (tl.aniIds) {
            // source line 186, bytecode pc 398
            (_tmpActions = []);
            // source line 187, bytecode pc 403
            (i = 0);
            while ((i < tl.aniIds.length)) {
                // source line 188, bytecode pc 463
                _tmpActions.push(input.itemView.createPlayAction(tl.aniIds[i], _control, null));
                // source line 187, bytecode pc 478
                i++;
            }
            // source line 190, bytecode pc 535
            (_ret = xs.Utils.Action.combineSequence(_tmpActions));
        } else {
            // source line 193, bytecode pc 578
            (_ret = input.itemView.createPlayAction(tl.aniId, _control, null));
        }
    } else {
        if ((_tl.type === "AddWeiWuFlag")) {
            // source line 253, bytecode pc 655
            (parentView = xs.Factorys.Skill.getViewByName(input, input.item.property.parent));
            // source line 256, bytecode pc 697
            (sprite = xs.Factorys.Sprite.create("weiwu", "Cmn02"));
            // source line 257, bytecode pc 724
            xs.assert(sprite, "sprite no exist!  PlayBackupAnimate");
            // source line 259, bytecode pc 799
            xs.Utils.Node.attachNodes(parentView, sprite, { desc: "c" }, { zOrder: 997, tag: 998 });
        } else {
            if ((_tl.type === "RemoveWeiWuFlag")) {
                // source line 261, bytecode pc 876
                (parentView = xs.Factorys.Skill.getViewByName(input, input.item.property.parent));
                // source line 262, bytecode pc 898
                (sprite = parentView.getChildByTag(998));
                if (sprite) {
                    // source line 264, bytecode pc 937
                    xs.Utils.Node.removeFromParentSafe(sprite);
                }
            } else {
                if ((_tl.type === "Play")) {
                    // source line 320, bytecode pc 1057
                    (_ret = cc.CallFunc.create(function(sender, __data) {
    var _this, _animation, _speed, _loop, _durationTo;
    // source line 273, bytecode pc 4
    (_this = this);
    // source line 276, bytecode pc 22
    (_animation = sender.getAnimation());
    // source line 278, bytecode pc 41
    (_speed = (_this.speed || 1));
    // source line 280, bytecode pc 71
    _animation.setSpeedScale((xs.ani_scale / _speed));
    // source line 285, bytecode pc 97
    (_loop = ((_this.loop === true) ? 1 : 0));
    // source line 287, bytecode pc 103
    (_durationTo = -1);
    if (((_this.name != null) && (_this.name != undefined))) {
        // source line 290, bytecode pc 173
        _animation.play(_this.name, _durationTo, -1, _loop);
    } else {
        if (((_this.idx != null) && (_this.idx != undefined))) {
            // source line 293, bytecode pc 248
            _animation.playByIndex(_this.idx, _durationTo, -1, _loop);
        } else {
            // source line 296, bytecode pc 282
            xs.assert(false, "play animation need idx or name", _this);
        }
    }
}.bind({ loop: tl.loop, name: tl.name, idx: tl.index, speed: _duration })));
                    // source line 324, bytecode pc 1094
                    xs.assert((_duration > 0), "_duration must > 0", _duration, tl);
                } else {
                    if ((_tl.type === "Animate")) {
                        // source line 328, bytecode pc 1153
                        xs.assert(_duration, "miss dp", _tl, _property);
                        // source line 329, bytecode pc 1203
                        xs.assert(input.animate, "animate is null", input.item, input.params);
                        // source line 331, bytecode pc 1237
                        (_animation = input.animate.getAnimation().clone());
                        if ((_tl.loop >= 1)) {
                            // source line 334, bytecode pc 1276
                            _animation.setLoops(_tl.loop);
                        }
                        // source line 336, bytecode pc 1315
                        _animation.setDelayPerUnit((_duration / _animation.getFrames().length));
                        // source line 338, bytecode pc 1344
                        (_ret = cc.Animate.create(_animation));
                    } else {
                        if (("Move" === _tl.type)) {
                            // source line 343, bytecode pc 1397
                            (_tmpPara = this.makeMovePositionByParams(input, _tl.dst_pos));
                            // source line 347, bytecode pc 1430
                            (_ret = cc.MoveBy.create(_duration, _tmpPara));
                            // source line 349, bytecode pc 1435
                            (_tmpPara = null);
                        } else {
                            if (("Bezier" === _tl.type)) {
                                // source line 356, bytecode pc 1488
                                (_tmpPara = this.makeMovePositionByParams(input, _tl.dst_pos));
                                // source line 359, bytecode pc 1505
                                (_controlPoint_0 = _tl.dst_pos.controlPoint_0);
                                // source line 360, bytecode pc 1522
                                (_controlPoint_1 = _tl.dst_pos.controlPoint_1);
                                // source line 365, bytecode pc 1578
                                (_ret = cc.BezierBy.create(_duration, [ _controlPoint_0, _controlPoint_1, _tmpPara ]));
                            } else {
                                if (("Rotate" === _tl.type)) {
                                    // source line 371, bytecode pc 1631
                                    (_tmpPara = this.makeRotateAngleByParams(input, _tl.rot));
                                    // source line 375, bytecode pc 1664
                                    (_ret = cc.RotateBy.create(_duration, _tmpPara));
                                    // source line 378, bytecode pc 1669
                                    (_tmpPara = null);
                                } else {
                                    if (("DelayTime|FadeIn|FadeOut".indexOf(_tl.type) >= 0)) {
                                        // source line 383, bytecode pc 1735
                                        (_ret = this.createNormalAction(_tl.type, _duration));
                                    } else {
                                        if (("ScaleBy|ScaleTo|MoveBy|MoveTo|DelayTime|TintBy|TintTo|RotateBy|RotateTo|FadeTo".indexOf(_tl.type) >= 0)) {
                                            // source line 386, bytecode pc 1803
                                            xs.assert(_duration, "miss dp", _tl);
                                            if (((_tl.type === "MoveTo") && _tl.dst_pos)) {
                                                // source line 389, bytecode pc 1865
                                                (_pos = this.makePos(input, _tl.dst_pos));
                                                // source line 393, bytecode pc 1907
                                                (_ret = this.createNormalAction(_tl.type, _duration, [ _pos ]));
                                            } else {
                                                if (((_tl.type === "ScaleTo") && _tl.dst)) {
                                                    // source line 396, bytecode pc 1974
                                                    (_args = this.makeScaleArgsArray(input, _tl.dst));
                                                    // source line 400, bytecode pc 2007
                                                    (_ret = this.createNormalAction(_tl.type, _duration, _args));
                                                } else {
                                                    // source line 403, bytecode pc 2048
                                                    xs.assert(_tl.args, "need args", _tl);
                                                    // source line 404, bytecode pc 2086
                                                    (_ret = this.createNormalAction(_tl.type, _duration, _tl.args));
                                                }
                                            }
                                        } else {
                                            if (("JumpBy".indexOf(_tl.type) >= 0)) {
                                                // source line 410, bytecode pc 2154
                                                xs.assert(_duration, "miss dp", _tl);
                                                // source line 411, bytecode pc 2177
                                                (_tmpArgs = _tl.args.concat());
                                                // source line 413, bytecode pc 2196
                                                (_jump = (_tl.loop || 1));
                                                // source line 414, bytecode pc 2215
                                                _tmpArgs.push(_jump);
                                                // source line 415, bytecode pc 2248
                                                (_ret = this.createNormalAction(_tl.type, _duration, _tmpArgs));
                                                // source line 416, bytecode pc 2253
                                                (_tmpArgs = null);
                                            } else {
                                                if (("Show|Hide".indexOf(_tl.type) >= 0)) {
                                                    if (("Show|Hide".indexOf(_tl.type) >= 0)) {
                                                    } else {
                                                        // source line 423, bytecode pc 2361
                                                        xs.assert(null, "unkown _tl.type", _tl.type);
                                                    }
                                                    // source line 425, bytecode pc 2390
                                                    (_ret = cc[_tl.type].create());
                                                } else {
                                                    if ((_tl.type.indexOf("Reverse") >= 0)) {
                                                        // source line 430, bytecode pc 2462
                                                        xs.assert(lastAction, "_lastAction error ", input, lastAction);
                                                        // source line 432, bytecode pc 2480
                                                        (_ret = lastAction.reverse());
                                                        // source line 434, bytecode pc 2499
                                                        _ret.setDuration(_duration);
                                                    } else {
                                                        if (("createAction" === tl.type)) {
                                                            // source line 440, bytecode pc 2559
                                                            xs.assert(_tl.name, "need _tl.name", _tl);
                                                            // source line 441, bytecode pc 2580
                                                            (_func = input.itemView[_tl.name]);
                                                            // source line 442, bytecode pc 2611
                                                            xs.assert(_func, "createActions error,need _func ", _tl);
                                                            // source line 443, bytecode pc 2637
                                                            this.log(_tag, _tl.name);
                                                            // source line 452, bytecode pc 2709
                                                            (_ret = _func.apply(input.itemView, [ { data: _tl.data, input: input, dp: _duration } ]));
                                                        } else {
                                                            // source line 479, bytecode pc 2743
                                                            xs.assert(false, "unknow tl type", _tl);
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
    // source line 485, bytecode pc 2748
    (_retExtra = null);
    if (((_ret !== null) && (_ret !== undefined))) {
        // source line 487, bytecode pc 2802
        (_retExtra = this.createExtraAction(_ret, _tl.extra));
        // source line 488, bytecode pc 2807
        (_ret = null);
    } else {
        // source line 491, bytecode pc 2819
        (_retExtra = _ret);
    }
    if (((_target !== null) && (_target !== undefined))) {
        // source line 497, bytecode pc 2877
        (_retExtra = cc.TargetedAction.create(_target, _retExtra));
        // source line 499, bytecode pc 2882
        (_target = null);
    }
    // source line 502, bytecode pc 2907
    this.markFuncEnd("createTlActionByParams", "end");
    // source line 518, bytecode pc 2911
    return _retExtra;
},
    _makePos_use_creater: function(input, posCfg, _needRevertX) {
    var _creater;
    // source line 534, bytecode pc 32
    (_creater = xs.Skill.Impl.Creater[posCfg.creater]);
    // source line 536, bytecode pc 59
    this.assert(_creater, "find creater failed", posCfg);
    if (_creater) {
        // source line 544, bytecode pc 116
        return _creater.apply(this, [ { input: input, needRevertX: _needRevertX } ]);
    }
    // source line 549, bytecode pc 137
    return cc.p(0, 0);
},
    makePos: function(input, posCfg) {
    var _posCfg, _ret, _needRevertX, _baseView, _toView, _fromView, _distance, _offset;
    // source line 555, bytecode pc 24
    this.log("makePos", "begin");
    // source line 558, bytecode pc 31
    (_posCfg = posCfg);
    // source line 561, bytecode pc 58
    (_posCfg = (_posCfg || cc.POINT_ZERO));
    // source line 565, bytecode pc 97
    (_needRevertX = xs.Factorys.Skill.Item.needRevertX(input));
    if (_posCfg.creater) {
        // source line 569, bytecode pc 138
        (_ret = this._makePos_use_creater(input, posCfg, _needRevertX));
    } else {
        if (_posCfg.base) {
            if ((_posCfg.base === "from_ori")) {
                // source line 576, bytecode pc 215
                (_baseView = xs.Factorys.Skill.getViewByName(input, "from"));
                // source line 577, bytecode pc 242
                xs.assert(_baseView, "_baseView is null,from_ori");
                // source line 578, bytecode pc 259
                (_ret = _baseView.original.pos);
            } else {
                if ((_posCfg.base === "to_ori")) {
                    // source line 581, bytecode pc 323
                    (_baseView = xs.Factorys.Skill.getViewByName(input, "to"));
                    // source line 582, bytecode pc 350
                    xs.assert(_baseView, "_baseView is null,to_ori");
                    // source line 583, bytecode pc 367
                    (_ret = _baseView.original.pos);
                } else {
                    if ((_posCfg.base === "c")) {
                        // source line 589, bytecode pc 423
                        xs.assert(input.parentView, "c need parent");
                        // source line 591, bytecode pc 462
                        (_ret = xs.Utils.Node.getPointOfNodeCenter(input.parentView));
                    } else {
                        if ((_posCfg.base === "from_touch")) {
                            // source line 596, bytecode pc 526
                            (_toView = xs.Factorys.Skill.getViewByName(input, "to"));
                            // source line 597, bytecode pc 566
                            (_fromView = xs.Factorys.Skill.getViewByName(input, "from"));
                            // source line 600, bytecode pc 602
                            xs.assert((_toView && _fromView), "from_touch is null");
                            // source line 602, bytecode pc 648
                            (_distance = ((_fromView.getBodySize().width + _toView.getBodySize().width) / 2));
                            // source line 606, bytecode pc 729
                            (_ret = cc.p((_toView.getPosition().x + ((_needRevertX ? 1 : -1) * _distance)), _toView.getPosition().y));
                        } else {
                            // source line 610, bytecode pc 777
                            (_baseView = xs.Factorys.Skill.getViewByName(input, _posCfg.base));
                            if (!_baseView) {
                                // source line 614, bytecode pc 811
                                return cc.p(3000, 3000);
                            }
                            // source line 617, bytecode pc 842
                            xs.assert(_baseView, "unknow _baseView", _posCfg);
                            // source line 618, bytecode pc 860
                            (_ret = _baseView.getPosition());
                        }
                    }
                }
            }
            if (_posCfg.offset) {
                // source line 627, bytecode pc 878
                (_offset = null);
                if (_needRevertX) {
                    // source line 630, bytecode pc 937
                    (_offset = cc.p((_posCfg.offset.x * -1), _posCfg.offset.y));
                } else {
                    // source line 633, bytecode pc 954
                    (_offset = _posCfg.offset);
                }
                // source line 635, bytecode pc 982
                (_ret = cc.pAdd(_ret, _offset));
            }
        } else {
            // source line 643, bytecode pc 1034
            xs.assert((_posCfg.x !== undefined), "not a pos", _posCfg);
            // source line 644, bytecode pc 1076
            xs.assert((_posCfg.y !== undefined), "not a pos", _posCfg);
            if (_needRevertX) {
                // source line 647, bytecode pc 1125
                (_ret = cc.p((_posCfg.x * -1), _posCfg.y));
            } else {
                // source line 650, bytecode pc 1137
                (_ret = _posCfg);
            }
        }
    }
    // source line 657, bytecode pc 1162
    this.log("makePos", "end");
    // source line 659, bytecode pc 1166
    return _ret;
},
    makeScaleArgsArray: function(input, dst) {
    var _dstCfg, _ret, _baseView;
    // source line 664, bytecode pc 18
    (_dstCfg = (dst || {}));
    // source line 665, bytecode pc 37
    (_ret = [ 1, 1 ]);
    if (_dstCfg.base) {
        // source line 669, bytecode pc 55
        (_baseView = null);
        if ((_dstCfg.base === "from_ori")) {
            // source line 672, bytecode pc 114
            (_baseView = xs.Factorys.Skill.getViewByName(input, "from"));
        } else {
            if ((_dstCfg.base === "to_ori")) {
                // source line 675, bytecode pc 178
                (_baseView = xs.Factorys.Skill.getViewByName(input, "to"));
            } else {
                if ((_dstCfg.base === "c")) {
                } else {
                    if ((_dstCfg.base === "from_touch")) {
                    }
                }
            }
        }
        // source line 687, bytecode pc 258
        xs.assert(_baseView, "_baseView 2334123");
        // source line 691, bytecode pc 277
        (_ret[0] = _baseView.original.scaleX);
        // source line 692, bytecode pc 296
        (_ret[1] = _baseView.original.scaleY);
    } else {
        // source line 697, bytecode pc 343
        xs.assert((_dstCfg.scaleX !== undefined), "not a scale", _dstCfg);
        // source line 698, bytecode pc 385
        xs.assert((_dstCfg.scaleY !== undefined), "not a scale", _dstCfg);
        // source line 699, bytecode pc 399
        (_ret[0] = _dstCfg.scaleX);
        // source line 700, bytecode pc 413
        (_ret[1] = _dstCfg.scaleY);
    }
    // source line 704, bytecode pc 417
    return _ret;
},
    makeRotateAngleByParams: function(input, rotCfg) {
    var _needRevertX, _angle;
    // source line 715, bytecode pc 38
    (_needRevertX = xs.Factorys.Skill.Item.needRevertX(input));
    if (_needRevertX) {
        // source line 719, bytecode pc 60
        (_angle = (rotCfg * -1));
    } else {
        // source line 722, bytecode pc 72
        (_angle = rotCfg);
    }
    // source line 725, bytecode pc 76
    return _angle;
},
    makeMovePositionByParams: function(input, posCfg) {
    var _dstPoint, _ret;
    // source line 730, bytecode pc 24
    this.log("makeMovePositionByParams", "begin");
    // source line 731, bytecode pc 48
    (_dstPoint = this.makePos(input, posCfg));
    // source line 735, bytecode pc 92
    (_ret = cc.pSub(_dstPoint, input.itemView.getPosition()));
    // source line 737, bytecode pc 97
    (_dstPoint = null);
    // source line 739, bytecode pc 122
    this.log("makeMovePositionByParams", "end");
    // source line 741, bytecode pc 126
    return _ret;
},
    createTlAction: function(input, tls, tag, lastAction, baseDuration) {
    var _ret, _lastAction, _arrActions, _j, _tl, _tlTag, _type;
    // source line 760, bytecode pc 28
    this.log((tag + "-createTlAction"), "begin");
    // source line 763, bytecode pc 39
    (_lastAction = lastAction);
    if (((tls.type !== undefined) && ((tls.type !== "Sequence") && (tls.type !== "Spawn")))) {
        // source line 768, bytecode pc 134
        (_ret = this.createTlActionByParams(input, tls, tag, _lastAction, baseDuration));
    } else {
        // source line 772, bytecode pc 148
        (_arrActions = []);
        for (var _j in tls) {
            if (!((_j && (("type|repeat".indexOf(_j) < 0) && tls.hasOwnProperty(_j))))) continue;
            // source line 778, bytecode pc 261
            xs.assert((_j != "hasItemString"), "hasItemString found", tls);
            // source line 779, bytecode pc 298
            xs.assert((_j != "prototype"), "prototype found", tls);
            // source line 782, bytecode pc 309
            (_tl = tls[_j]);
            if ((_tl === null)) {
            } else {
                // source line 788, bytecode pc 341
                (_tlTag = ((tag + ".") + _j));
                // source line 797, bytecode pc 377
                (_lastAction = this.createTlAction(input, _tl, _tlTag, _lastAction, baseDuration));
                if (((_lastAction != null) && (_lastAction != undefined))) {
                    // source line 802, bytecode pc 421
                    _arrActions.push(_lastAction);
                }
                continue;
            }
        }
        // source line 812, bytecode pc 468
        (_type = xs.Factorys.Skill.makeValidSetType(tls));
        // source line 814, bytecode pc 506
        (_ret = xs.Utils.Action.combine(_arrActions, _type));
    }
    if ((_ret && (tls.repeat >= 2))) {
        // source line 825, bytecode pc 569
        (_ret = cc.Repeat.create(_ret, tls.repeat));
    }
    // source line 828, bytecode pc 602
    this.log((tag + "-createTlAction"), ("end " + _ret));
    // source line 829, bytecode pc 606
    return _ret;
}
});
