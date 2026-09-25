// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Factorys/Skill/Item/Item.js:1
// source line 1316, bytecode pc 306
(xs.Factorys.Skill.Item = {
    checkProperty: function(item) {
    // source line 18, bytecode pc 73
    xs.assert((item.property && (item.property.type && item.property.belong)), " check item.property ", item);
},
    getParentView: function(input) {
    var _ret;
    // source line 24, bytecode pc 24
    this.log("getParentView", "begin");
    // source line 26, bytecode pc 29
    (_ret = null);
    if (input.item.property.parent) {
        // source line 29, bytecode pc 105
        (_ret = xs.Factorys.Skill.getViewByName(input, input.item.property.parent));
    } else {
        // source line 35, bytecode pc 163
        (_ret = xs.Factorys.Skill.getViewByName(input, input.item.property.type));
        // source line 36, bytecode pc 190
        (_ret = (_ret && _ret.getParent()));
    }
    // source line 39, bytecode pc 215
    this.log("getParentView", "end");
    // source line 41, bytecode pc 219
    return _ret;
},
    isTemp: function(_item) {
    var _ret;
    // source line 50, bytecode pc 24
    this.log("isTemp", "begin");
    if (((_item.property.belong === null) || (_item.property.belong === undefined))) {
        // source line 54, bytecode pc 78
        (_ret = false);
    } else {
        if ((_item.property.belong.indexOf("tmp") >= 0)) {
            // source line 57, bytecode pc 125
            (_ret = true);
        } else {
            // source line 60, bytecode pc 135
            (_ret = false);
        }
    }
    // source line 62, bytecode pc 184
    this.log("isTemp", ((("end:" + _ret) + " ") + _item.property.belong));
    // source line 64, bytecode pc 188
    return _ret;
},
    isStatus: function(_item) {
    var _ret;
    // source line 71, bytecode pc 1
    return false;
    // source line 74, bytecode pc 26
    this.log("isStatus", "begin");
    if (((_item.property.belong === null) || (_item.property.belong === undefined))) {
        // source line 79, bytecode pc 80
        (_ret = false);
    } else {
        if ((_item.property.belong.indexOf("status") >= 0)) {
            // source line 82, bytecode pc 127
            (_ret = true);
        } else {
            // source line 85, bytecode pc 137
            (_ret = false);
        }
    }
    // source line 88, bytecode pc 186
    this.log("isStatus", ((("end:" + _ret) + " ") + _item.property.belong));
    // source line 90, bytecode pc 190
    return _ret;
},
    isBelongFrom: function(_item) {
    // source line 97, bytecode pc 32
    return (_item.property.belong.indexOf("from") >= 0);
},
    isBelongTo: function(_item) {
    // source line 101, bytecode pc 32
    return (_item.property.belong.indexOf("to") >= 0);
},
    isBelongTmp: function(_item) {
    // source line 105, bytecode pc 30
    return _item.property.belong.indexOf("tmp");
},
    getParamsScope: function(item) {
    var _ret;
    // source line 112, bytecode pc 24
    this.log("getParamsScope", "begin");
    if ((item.property.belong.indexOf("once") >= 0)) {
        // source line 116, bytecode pc 74
        (_ret = "once");
    } else {
        if ((item.property.belong === "tmp")) {
            // source line 119, bytecode pc 112
            (_ret = "from_to");
        } else {
            if ((item.property.belong.indexOf("fromOther") >= 0)) {
                // source line 122, bytecode pc 163
                (_ret = "fromOther");
            } else {
                if ((item.property.belong.indexOf("toOther") >= 0)) {
                    // source line 125, bytecode pc 214
                    (_ret = "toOther");
                } else {
                    if ((item.property.belong.indexOf("from") >= 0)) {
                        // source line 128, bytecode pc 265
                        (_ret = "from");
                    } else {
                        if ((item.property.belong.indexOf("to") >= 0)) {
                            // source line 131, bytecode pc 316
                            (_ret = "to");
                        } else {
                            // source line 134, bytecode pc 350
                            xs.assert(false, "unknow belong", item);
                        }
                    }
                }
            }
        }
    }
    // source line 136, bytecode pc 379
    this.log("getParamsScope", ("end:" + _ret));
    // source line 137, bytecode pc 383
    return _ret;
},
    makeMirror: function(_input) {
    var _params, _event, _mirror, _src, _ret, i, j, _diff;
    // source line 154, bytecode pc 33
    (_params = xs.Factorys.Skill.getParams(_input));
    if (((_params === null) || (_params === undefined))) {
        // source line 157, bytecode pc 67
        return _input.item;
    }
    // source line 160, bytecode pc 86
    (_event = (_params.event || null));
    if ((_event === null)) {
        // source line 163, bytecode pc 105
        return _input.item;
    }
    // source line 166, bytecode pc 134
    (_mirror = (_input.item.property.mirror || null));
    if ((_mirror === null)) {
        // source line 169, bytecode pc 153
        return _input.item;
    }
    // source line 172, bytecode pc 165
    (_src = _input.item);
    // source line 174, bytecode pc 172
    (_ret = _src);
    // source line 176, bytecode pc 177
    (i = 0);
    while ((i < _mirror.length)) {
        // source line 177, bytecode pc 188
        (j = 0);
        while ((j < _event.length)) {
            if ((_mirror[i] === _event[j])) {
                // source line 182, bytecode pc 234
                (_diff = _input.item[_event[j]]);
                // source line 184, bytecode pc 278
                xs.assert(_diff, "check item ,is mirror cfg exist?", _input.item, _event[j]);
                // source line 190, bytecode pc 311
                (_ret = xs.Utils.cloneWithDiff(_src, _diff));
                // source line 192, bytecode pc 316
                (_src = null);
                // source line 195, bytecode pc 320
                return _ret;
            }
            // source line 177, bytecode pc 335
            j++;
        }
        // source line 176, bytecode pc 368
        i++;
    }
    // source line 199, bytecode pc 390
    return _ret;
},
    extendItem: function(child) {
    // source line 203, bytecode pc 46
    return xs.Factorys.Skill.extend(xs.Cfg.Skill, child);
},
    modifyBones_newway: function(input, arm, bonesCfg) {
    var i;
    if (bonesCfg) {
        // source line 208, bytecode pc 12
        (i = 0);
        while ((i < bonesCfg.length)) {
            // source line 209, bytecode pc 47
            this.modifyBone_newway(input, arm, bonesCfg[i]);
            // source line 208, bytecode pc 62
            i++;
        }
    }
},
    modifyBone_newway: function(input, arm, boneCfg) {
    var _skin;
    if ((boneCfg.ope === "changeDisplay")) {
        // source line 217, bytecode pc 50
        this.assert(boneCfg.key, "modifyBone_newway", boneCfg);
        // source line 219, bytecode pc 79
        (_skin = this.createSkin(input, boneCfg.skin));
        // source line 221, bytecode pc 107
        arm.replaceSkinByBoneKey(boneCfg.key, _skin);
    } else {
        if ((boneCfg.ope === "remove")) {
            // source line 225, bytecode pc 157
            arm.removeBoneByBoneKey(boneCfg.key, true);
        } else {
            // source line 228, bytecode pc 185
            this.error("need boneCfg.ope", boneCfg);
        }
    }
},
    createSkin: function(input, skinCfg) {
    var _ret;
    if ((skinCfg.type === "text")) {
        // source line 249, bytecode pc 39
        return this.createText(input, skinCfg);
    } else {
        if ((skinCfg.type === "sprite")) {
            // source line 252, bytecode pc 84
            return this.createSprite(input, skinCfg);
        } else {
            if ((skinCfg.type === "label")) {
                // source line 263, bytecode pc 134
                (_ret = this.createLabel(input, skinCfg, false));
                // source line 265, bytecode pc 138
                return _ret;
            } else {
                // source line 268, bytecode pc 166
                this.error("createSkin error", skinCfg);
            }
        }
    }
},
    initSpriteByProperty: function(input, property, _sprite) {
    var _needRevertX, _property, _pos;
    // source line 284, bytecode pc 38
    (_needRevertX = xs.Factorys.Skill.Item.needRevertX(input));
    // source line 286, bytecode pc 45
    (_property = property);
    if (_property.flipX) {
        // source line 289, bytecode pc 75
        _sprite.setFlipX(true);
    }
    if (_property.flipY) {
        // source line 292, bytecode pc 105
        _sprite.setFlipY(true);
    }
    if (_property.anchor) {
        // source line 296, bytecode pc 142
        _sprite.setAnchorPoint(_property.anchor);
    }
    if (_property.c3b) {
        // source line 300, bytecode pc 179
        _sprite.setColor(_property.c3b);
    }
    if (_property.size) {
        // source line 304, bytecode pc 216
        _sprite.setContentSize(_property.size);
    }
    if (_property.rotation) {
        // source line 309, bytecode pc 277
        _sprite.setRotation((_needRevertX ? (_property.rotation * -1) : _property.rotation));
    }
    if (_property.rotationY) {
        // source line 314, bytecode pc 314
        _sprite.setRotationY(_property.rotationY);
    }
    if ((_needRevertX && (_property.ui !== true))) {
        // source line 319, bytecode pc 372
        _sprite.setRotationY((_sprite.getRotationY() + 180));
    }
    if (_property.scale) {
        // source line 326, bytecode pc 409
        _sprite.setScale(_property.scale);
    } else {
        if (_property.scaleSize) {
            // source line 337, bytecode pc 476
            _sprite.setScaleX((_property.scaleSize.width / _sprite.getContentSize().width));
            // source line 338, bytecode pc 525
            _sprite.setScaleY((_property.scaleSize.height / _sprite.getContentSize().height));
        }
    }
    if (_property.pos) {
        // source line 344, bytecode pc 572
        (_pos = this.Timeline.makePos(input, _property.pos));
        // source line 350, bytecode pc 591
        _sprite.setPosition(_pos);
    }
    if (_property.opacity) {
        // source line 355, bytecode pc 628
        _sprite.setOpacity(_property.opacity);
    }
},
    createTextString: function(input, text, params) {
    var _input, _ret, _argsArray, _stack, _mIdx, _value, arguments;
    // source line 377, bytecode pc 4
    (arguments = arguments);
    // source line 379, bytecode pc 29
    this.log("createTextString", "begin");
    // source line 381, bytecode pc 36
    (_input = input);
    // source line 384, bytecode pc 67
    xs.assert(text, "createTextString error", arguments);
    // source line 385, bytecode pc 117
    xs.assert((text.text || text.textId), "createTextString error", arguments);
    // source line 387, bytecode pc 129
    (_ret = text.text);
    if (text.textId) {
        // source line 389, bytecode pc 181
        (_ret = xs.Factorys.String.create(text.textId));
    }
    if (text.args) {
        // source line 394, bytecode pc 237
        (_argsArray = xs.Factorys.Skill.makeArgsArray(text.args, params));
        // source line 395, bytecode pc 259
        (_ret = _ret.convWithArgs(_argsArray));
    } else {
        if (text.getter) {
            if ((text.getter.type === "queue")) {
                // source line 401, bytecode pc 342
                xs.assert(text.getter.name, "need text.getter.scope", text);
                // source line 403, bytecode pc 368
                (_stack = _input.itemStack[text.getter.name]);
                // source line 405, bytecode pc 380
                (_mIdx = _input.loopIdx);
                if ((_mIdx >= _stack.length)) {
                    // source line 407, bytecode pc 402
                    (_mIdx = 0);
                }
                // source line 409, bytecode pc 420
                (_value = (_stack[_mIdx] || 0));
                // source line 411, bytecode pc 447
                xs.log_hsq("_value112", _value);
                // source line 412, bytecode pc 474
                xs.log_hsq("__stack", _stack);
                // source line 416, bytecode pc 505
                (_ret = _ret.convWithArgs([ _value ]));
            } else {
                // source line 419, bytecode pc 551
                xs.assert(text.getter.type, "need text.getter.type", text);
            }
        } else {
            // source line 423, bytecode pc 581
            xs.assert(false, "need text.args or text.getter");
        }
    }
    // source line 426, bytecode pc 606
    this.log("createTextString", "end");
    // source line 428, bytecode pc 610
    return _ret;
},
    create: function(itemKey, item, input, dp, baseTag) {
    var _item, _input, _para, _itemTag, _tlActionArray, _needRevertZOrder, _needRemoveFromParent, _isItemTemp, _isItemStatus, _parentView, ___itemView, _itemView, _animate, _ret, _retTargeted;
    // source line 436, bytecode pc 6
    (_item = item);
    // source line 437, bytecode pc 13
    (_input = input);
    // source line 438, bytecode pc 25
    (_para = input.para);
    // source line 440, bytecode pc 42
    (_itemTag = ((baseTag + ".") + itemKey));
    // source line 442, bytecode pc 54
    (_input.item = _item);
    // source line 443, bytecode pc 66
    (_input.itemKey = itemKey);
    // source line 445, bytecode pc 105
    (_input.params = xs.Factorys.Skill.getParams(_input));
    // source line 449, bytecode pc 144
    (_input.itemStack = xs.Factorys.Skill.getItemStack(_input));
    // source line 458, bytecode pc 153
    (_tlActionArray = []);
    // source line 461, bytecode pc 158
    (_needRevertZOrder = false);
    // source line 462, bytecode pc 163
    (_needRemoveFromParent = false);
    // source line 466, bytecode pc 207
    (_input.item = xs.Factorys.Skill.Item.makeMirror(_input));
    if ((xs.Factorys.Skill.Item._isItemTriggered(_input.part_trigger_events, _input.item, _input.params) === false)) {
        // source line 474, bytecode pc 295
        this.log(_itemTag, "not triggered ");
        // source line 475, bytecode pc 327
        this.dump((_itemTag + "-_input.params"), _input.params);
        // source line 476, bytecode pc 329
        return null;
    }
    if (xs.Factorys.Skill.Item._isItemIgnored(_input.part_ignore_events, _input.item, _input.params)) {
        // source line 481, bytecode pc 415
        this.log(_itemTag, "ignored");
        // source line 482, bytecode pc 447
        this.dump((_itemTag + "-_input.params"), _input.params);
        // source line 483, bytecode pc 449
        return null;
    }
    // source line 487, bytecode pc 493
    (_isItemTemp = xs.Factorys.Skill.Item.isTemp(_input.item));
    // source line 488, bytecode pc 537
    (_isItemStatus = xs.Factorys.Skill.Item.isStatus(_input.item));
    // source line 493, bytecode pc 585
    (_parentView = xs.Factorys.Skill.Item.getParentView(_input, _input.itemViews));
    // source line 494, bytecode pc 597
    (_input.parentView = _parentView);
    // source line 497, bytecode pc 609
    (_input.speed_radio = dp);
    // source line 498, bytecode pc 648
    (___itemView = xs.Factorys.Skill.Item.createItemViewByParams(_input));
    // source line 502, bytecode pc 660
    (_itemView = ___itemView.view);
    // source line 503, bytecode pc 672
    (_animate = ___itemView.animate);
    if (!_itemView) {
        // source line 506, bytecode pc 683
        return void 0;
    }
    // source line 510, bytecode pc 704
    (_input.itemViews[_input.itemKey] = _itemView);
    // source line 511, bytecode pc 716
    (_input.itemView = _itemView);
    // source line 512, bytecode pc 728
    (_input.animate = _animate);
    if ((_isItemTemp || _isItemStatus)) {
        if (!_parentView) {
            // source line 520, bytecode pc 756
            return null;
        }
        // source line 523, bytecode pc 801
        xs.assert(_parentView, "check [property.parent]", item.property.parent, _para);
        // source line 563, bytecode pc 886
        _tlActionArray.push(cc.CallFunc.create(function(sender, ___child) {
    var _parentView, _itemView;
    // source line 529, bytecode pc 6
    (_parentView = this[0]);
    // source line 530, bytecode pc 13
    (_itemView = this[1]);
    // source line 532, bytecode pc 30
    _itemView.setVisible(false);
    if (_itemView.getParent()) {
        // source line 541, bytecode pc 79
        _itemView.getParent().removeChild(_itemView);
        // source line 543, bytecode pc 110
        xs.tmpRemoveCount++;
        // source line 546, bytecode pc 144
        xs.log("xs.tmpRemoveCount", xs.tmpRemoveCount);
        // source line 552, bytecode pc 255
        _parentView.addChild(_itemView, xs.Cfg.Constant.Scene.FightDemo.Center.Card.Tmp.zOrder, xs.Cfg.Constant.Scene.FightDemo.Center.Card.Tmp.tag);
    } else {
        // source line 559, bytecode pc 371
        _parentView.addChild(_itemView, xs.Cfg.Constant.Scene.FightDemo.Center.Card.Tmp.zOrder, xs.Cfg.Constant.Scene.FightDemo.Center.Card.Tmp.tag);
    }
}.bind([ _parentView, _itemView ]), xs.unuse_this));
        // source line 567, bytecode pc 893
        (_needRemoveFromParent = _isItemTemp);
    } else {
        if ((((_input.item.property.type === "from") || (_input.item.property.type === "from_body_m")) && ((_input.tmpViewFrom !== undefined) && (_input.tmpViewTo !== undefined)))) {
            // source line 578, bytecode pc 1029
            xs.assert(_input.tmpViewTo, "_input.tmpViewTo error");
            // source line 631, bytecode pc 1121
            _tlActionArray.push(cc.CallFunc.create(function(sender, zOrder) {
    var _parentView, _itemView, _input, _tmp, _zFixOffset, i, _tmpView, _z;
    // source line 590, bytecode pc 6
    (_parentView = this[0]);
    // source line 591, bytecode pc 13
    (_itemView = this[1]);
    // source line 592, bytecode pc 21
    (_input = this[2]);
    if ((_input.sideFrom === _input.sideTo)) {
        // source line 597, bytecode pc 45
        return void 0;
    }
    // source line 603, bytecode pc 65
    (_tmp = (_itemView.getZOrder() + 1));
    // source line 607, bytecode pc 84
    _itemView.setZOrder(_tmp);
    // source line 612, bytecode pc 127
    (_zFixOffset = ((_input.tmpViewTo.original.zOrder + 1) - _input.tmpViewFrom.original.zOrder));
    // source line 618, bytecode pc 132
    (i = 0);
    while ((i < 3)) {
        // source line 619, bytecode pc 173
        (_tmpView = _input.para.env.cardViews[_input.sideFrom][i]);
        if (_tmpView) {
            // source line 621, bytecode pc 202
            (_z = (_tmpView.original.zOrder + _zFixOffset));
            // source line 622, bytecode pc 221
            _tmpView._setZOrder(_z);
        }
        // source line 618, bytecode pc 236
        i++;
    }
}.bind([ _parentView, _itemView, _input ]), xs.unuse_this));
            // source line 634, bytecode pc 1126
            (_needRevertZOrder = true);
        }
    }
    // source line 644, bytecode pc 1206
    _tlActionArray.push(xs.Factorys.Skill.Item.Timeline.createTlAction(_input, _input.item.timelines, _itemTag, null, dp));
    if (_needRemoveFromParent) {
        // source line 663, bytecode pc 1299
        _tlActionArray.push(cc.CallFunc.create(function(sender, child) {
    if (this[1].getParent()) {
        // source line 658, bytecode pc 39
        this[0].removeChild(this[1], true);
        // source line 659, bytecode pc 70
        xs.tmpRemoveCount--;
    }
}.bind([ _parentView, _itemView ]), xs.unuse_this));
    }
    if (_needRevertZOrder) {
        // source line 683, bytecode pc 1371
        _tlActionArray.push(cc.CallFunc.create(function(sender, zOrder) {
    var i, _tmpView;
    // source line 673, bytecode pc 4
    (i = 0);
    while ((i < 3)) {
        // source line 674, bytecode pc 41
        (_tmpView = this.para.env.cardViews[this.sideFrom][i]);
        if (_tmpView) {
            // source line 677, bytecode pc 78
            _tmpView._setZOrder(_tmpView.original.zOrder);
        }
        // source line 673, bytecode pc 93
        i++;
    }
}.bind(_input), xs));
    }
    // source line 688, bytecode pc 1403
    xs.assert(_tlActionArray.length, "sfsdfsdf");
    // source line 691, bytecode pc 1408
    (_ret = null);
    // source line 692, bytecode pc 1413
    (_retTargeted = null);
    // source line 705, bytecode pc 1451
    (_retTargeted = xs.Utils.Action.combineSequenceWithTarget(_tlActionArray, _itemView));
    // source line 710, bytecode pc 1455
    return _retTargeted;
},
    createCardIconSprite: function(input) {
    var _idx, _cardModel, _clipNode, _cardSprite;
    // source line 715, bytecode pc 11
    (_idx = input.tmpIdxFrom);
    // source line 721, bytecode pc 54
    (_cardModel = input.para.env.getModel().getCardModelByIdx(_idx));
    // source line 724, bytecode pc 90
    (_clipNode = xs.Views.SpriteClippingNode.createWithFileName("bak/ss_bg_stencil.png"));
    // source line 726, bytecode pc 119
    (_cardSprite = _cardModel.getResInfo().createSprite());
    // source line 729, bytecode pc 163
    _cardSprite.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 730, bytecode pc 184
    _cardSprite.setScale(2.5);
    // source line 733, bytecode pc 235
    xs.Utils.makeDebugPoint(_cardSprite, cc.c4f(1, 0, 0, 1));
    // source line 737, bytecode pc 313
    xs.Utils.Node.attachNodes(_clipNode.clip, _cardSprite, { desc: "c", offset: { x: -260 } });
    // source line 741, bytecode pc 317
    return _clipNode;
},
    createSprite: function(input, property) {
    var _ret, _info, _cardId, _generalModel, _idxs, _model;
    // source line 747, bytecode pc 4
    (_ret = null);
    if (property.spriteId) {
        // source line 750, bytecode pc 56
        (_ret = xs.Factorys.Sprite.createWithDefaultArea(property.spriteId));
    } else {
        if (property.info) {
            // source line 753, bytecode pc 103
            (_ret = this[property.info.func](input));
        } else {
            if ((property.teamLeader === true)) {
                // source line 758, bytecode pc 161
                (_info = (input.para.env.model.info || []));
                // source line 762, bytecode pc 225
                (_cardId = ((input.para.env.model.info[property.side] || {}).teamLeader || "teamLeader_null"));
                // source line 765, bytecode pc 259
                (_generalModel = xs.Models.General.createWithBase(_cardId));
                // source line 766, bytecode pc 324
                (_generalModel.evolution_image_status = ((input.para.env.model.info[property.side] || {}).evolution_image_status || false));
                // source line 768, bytecode pc 353
                (_ret = _generalModel.getRes().createOriginalSprite_Waist());
            } else {
                if ((property.tos === true)) {
                    // source line 772, bytecode pc 390
                    (_idxs = input.para.toIdxs);
                    // source line 774, bytecode pc 436
                    (_model = input.para.env.model.getCardModelByIdx(_idxs[property.idx]));
                    // source line 777, bytecode pc 448
                    (_cardId = _model.id);
                    // source line 779, bytecode pc 482
                    (_generalModel = xs.Models.General.createWithBase(_cardId));
                    // source line 781, bytecode pc 511
                    (_ret = _generalModel.getRes().createOriginalSprite_Waist());
                } else {
                    // source line 784, bytecode pc 545
                    xs.assert(false, "need spriteId or createFunc", property);
                }
            }
        }
    }
    // source line 787, bytecode pc 576
    xs.assert(_ret, "_itemView must exist", property);
    // source line 789, bytecode pc 601
    this.initSpriteByProperty(input, property, _ret);
    // source line 791, bytecode pc 605
    return _ret;
},
    createParticle: function(input, property) {
    var _ret;
    // source line 796, bytecode pc 4
    (_ret = null);
    if (property.particleId) {
        // source line 799, bytecode pc 56
        (_ret = xs.Factorys.Particle.create(property.particleId));
    } else {
        // source line 802, bytecode pc 90
        xs.assert(false, "need particleId", property);
    }
    // source line 805, bytecode pc 121
    xs.assert(_ret, "_itemView must exist", property);
    // source line 807, bytecode pc 146
    this.initSpriteByProperty(input, property, _ret);
    // source line 810, bytecode pc 150
    return _ret;
},
    createText: function(input, property) {
    var _para, _text, _modelSkill, _string, _info, _teamPoint, _ret;
    // source line 815, bytecode pc 11
    (_para = input.para);
    // source line 816, bytecode pc 20
    (_text = "");
    if (property.text) {
        // source line 822, bytecode pc 71
        (_text = this.createTextString(input, property.text, input.params));
    } else {
        if ((property.skillName === true)) {
            if (_para.model.skillId) {
                // source line 830, bytecode pc 153
                (_modelSkill = xs.Models.Skill.createWithBase(_para.model.skillId));
                // source line 831, bytecode pc 171
                (_string = _modelSkill.getNameString());
                // source line 832, bytecode pc 178
                (_text = _string);
            } else {
                // source line 835, bytecode pc 212
                xs.warn("Skill/Item", "need skillId");
                // source line 836, bytecode pc 221
                (_text = "");
            }
        } else {
            if ((property.teamPoint === true)) {
                // source line 842, bytecode pc 290
                (_info = (_para.env.model.getInfoBySide(property.side) || {}));
                // source line 843, bytecode pc 309
                (_teamPoint = (_info.teamPoint || 0));
                // source line 845, bytecode pc 322
                (_text = ("" + _teamPoint));
            } else {
                // source line 848, bytecode pc 356
                xs.assert(false, "need text|skillName|teamPoint", property);
            }
        }
    }
    // source line 851, bytecode pc 361
    (_ret = null);
    if ((property.fntType === "ttf")) {
        // source line 854, bytecode pc 423
        (_ret = xs.Factorys.LabelTTF.create(_text, property.fntId));
    } else {
        // source line 858, bytecode pc 471
        (_ret = xs.Factorys.LabelBMFont.create(_text, property.fntId));
    }
    // source line 861, bytecode pc 501
    this.initSpriteByProperty(input, input.item, _ret);
    // source line 863, bytecode pc 505
    return _ret;
},
    createStrParamArray: function(input, property) {
    var _input, _para, _ret, _stack, _mIdx, _value, _string, _modelSkill;
    // source line 868, bytecode pc 6
    (_input = input);
    // source line 870, bytecode pc 18
    (_para = _input.para);
    // source line 872, bytecode pc 27
    (_ret = []);
    if (property.args) {
        // source line 880, bytecode pc 88
        (_ret = xs.Factorys.Skill.makeArgsArray(property.args, input.params));
    } else {
        if ((property.getter.type === "queue")) {
            // source line 884, bytecode pc 158
            xs.assert(property.getter.name, "queue ,need property.getter.name", property);
            // source line 886, bytecode pc 184
            (_stack = _input.itemStack[property.getter.name]);
            // source line 887, bytecode pc 196
            (_mIdx = _input.loopIdx);
            if ((_mIdx >= _stack.length)) {
                // source line 889, bytecode pc 218
                (_mIdx = 0);
            }
            // source line 892, bytecode pc 236
            (_value = (_stack[_mIdx] || 0));
            // source line 894, bytecode pc 263
            xs.log_hsq("stack after shift,in item", _value);
            // source line 897, bytecode pc 282
            _ret.push(_value);
        } else {
            if ((property.getter.type === "skillName")) {
                // source line 901, bytecode pc 320
                (_string = "");
                if (_para.model.skillId) {
                    // source line 903, bytecode pc 382
                    (_modelSkill = xs.Models.Skill.createWithBase(_para.model.skillId));
                    // source line 904, bytecode pc 400
                    (_string = _modelSkill.getNameString());
                } else {
                    // source line 907, bytecode pc 434
                    xs.warn("Skill/Item", "need skillId");
                }
                // source line 910, bytecode pc 453
                _ret.push(_string);
            } else {
                // source line 913, bytecode pc 499
                xs.assert(property.getter.type, "need text.getter.type", property);
            }
        }
    }
    // source line 916, bytecode pc 503
    return _ret;
},
    createLabel: function(input, property, initProperty) {
    var _ret, _paramArray, _info, _userName, _teamPoint;
    // source line 928, bytecode pc 4
    (_ret = null);
    if (property.ls) {
        // source line 932, bytecode pc 56
        (_ret = xs.Factorys.Label.createByStyleId(property.ls));
    } else {
        if (property.id) {
            // source line 935, bytecode pc 113
            (_ret = xs.Factorys.Label.createByLabelId(property.id));
        } else {
            // source line 938, bytecode pc 141
            this.error("createLabel error", property);
        }
    }
    // source line 941, bytecode pc 146
    (_paramArray = null);
    if (property.getter) {
        if ((property.getter.type === "userName")) {
            // source line 947, bytecode pc 242
            (_info = (input.para.env.model.getInfoBySide(property.getter.side) || {}));
            // source line 948, bytecode pc 265
            (_userName = (_info.userName || "need userName"));
            // source line 950, bytecode pc 281
            (_paramArray = [ _userName ]);
        } else {
            if ((property.getter.type === "teamPoint")) {
                // source line 954, bytecode pc 369
                (_info = (input.para.env.model.getInfoBySide(property.getter.side) || {}));
                // source line 955, bytecode pc 388
                (_teamPoint = (_info.teamPoint || 0));
                // source line 957, bytecode pc 404
                (_paramArray = [ _teamPoint ]);
            }
        }
    }
    if ((_paramArray === null)) {
        // source line 962, bytecode pc 438
        (_paramArray = this.createStrParamArray(input, property));
    }
    if (property.stringId) {
        // source line 970, bytecode pc 479
        _ret.setStringById(property.stringId, _paramArray);
    } else {
        // source line 973, bytecode pc 503
        _ret.setStringParams(_paramArray);
    }
    if (((property.alignH !== null) && (property.alignH !== undefined))) {
        // source line 979, bytecode pc 562
        _ret.setAlignH(property.alignH);
    }
    if (((property.alignV !== null) && (property.alignV !== undefined))) {
        // source line 987, bytecode pc 621
        _ret.setAlignV(property.alignV);
    }
    if ((initProperty === true)) {
        // source line 1005, bytecode pc 656
        this.initSpriteByProperty(input, property, _ret);
    }
    // source line 1016, bytecode pc 660
    return _ret;
},
    createItemViewByParams: function(input) {
    var _itemView, _animate, _property, _para, _armature, _animateAll, colorLayer, _originalCard, m_armId;
    // source line 1028, bytecode pc 24
    this.log("createItemViewByParams", "begin");
    // source line 1032, bytecode pc 29
    (_itemView = null);
    // source line 1033, bytecode pc 34
    (_animate = null);
    // source line 1034, bytecode pc 51
    (_property = input.item.property);
    // source line 1035, bytecode pc 63
    (_para = input.para);
    if ((_property.type === "armature_fight")) {
        // source line 1041, bytecode pc 118
        xs.assert(_property.armatureId, " need _property.armatureId", _property);
        // source line 1043, bytecode pc 168
        (_armature = xs.Views.Armature.FightArmature.create(_property.armatureId, null, input));
        // source line 1045, bytecode pc 175
        (_itemView = _armature);
        // source line 1047, bytecode pc 200
        this.initSpriteByProperty(input, _property, _itemView);
        // source line 1049, bytecode pc 230
        this.modifyBones_newway(input, _itemView, _property.bones);
    } else {
        if ((_property.type === "armature")) {
            // source line 1054, bytecode pc 290
            xs.assert(_property.armatureId, " need _property.armatureId", _property);
            // source line 1056, bytecode pc 340
            (_armature = xs.Views.Armature.AutoAudioArmature.create(_property.armatureId, null, input));
            // source line 1058, bytecode pc 347
            (_itemView = _armature);
            // source line 1060, bytecode pc 372
            this.initSpriteByProperty(input, _property, _itemView);
            // source line 1062, bytecode pc 402
            this.modifyBones_newway(input, _itemView, _property.bones);
        } else {
            if ((_property.type === "animate")) {
                // source line 1068, bytecode pc 465
                (_animateAll = xs.Factorys.Animate.create(_property.animateId));
                // source line 1071, bytecode pc 493
                (_animateAll.sprite.name = ("_itemView sprite " + _property.animateId));
                // source line 1072, bytecode pc 521
                (_animateAll.animate.name = ("_itemView animate" + _property.animateId));
                // source line 1074, bytecode pc 533
                (_itemView = _animateAll.sprite);
                // source line 1075, bytecode pc 545
                (_animate = _animateAll.animate);
                // source line 1077, bytecode pc 576
                xs.assert(_animate, "_animate is null, why ?", input);
                // source line 1079, bytecode pc 601
                this.initSpriteByProperty(input, _property, _itemView);
            } else {
                if ((_property.type === "text")) {
                    // source line 1082, bytecode pc 649
                    (_itemView = this.createText(input, _property));
                } else {
                    if ((_property.type === "node_color")) {
                        // source line 1097, bytecode pc 735
                        (colorLayer = cc.LayerColor.create(cc.c4b(255, 255, 255, 255), 0, 0));
                        // source line 1103, bytecode pc 742
                        (_itemView = colorLayer);
                        // source line 1105, bytecode pc 767
                        this.initSpriteByProperty(input, _property, _itemView);
                    } else {
                        if ((_property.type === "sprite")) {
                            // source line 1108, bytecode pc 815
                            (_itemView = this.createSprite(input, _property));
                        } else {
                            if ((_property.type === "from_ghost")) {
                                // source line 1113, bytecode pc 879
                                (_originalCard = xs.Factorys.Skill.getViewByName(input, "from"));
                                if (_originalCard) {
                                    // source line 1116, bytecode pc 905
                                    (_itemView = _originalCard.createGhostView());
                                    // source line 1117, bytecode pc 919
                                    (_itemView.name = "ghostView");
                                    // source line 1118, bytecode pc 944
                                    this.initSpriteByProperty(input, _property, _itemView);
                                }
                            } else {
                                if ((_property.type === "from_ghostOther")) {
                                    // source line 1126, bytecode pc 1008
                                    (_originalCard = xs.Factorys.Skill.getViewByName(input, "from"));
                                    // source line 1129, bytecode pc 1020
                                    (m_armId = _property.armatureId);
                                    if (_originalCard) {
                                        // source line 1134, bytecode pc 1050
                                        (_itemView = _originalCard.createGhostViewOther(m_armId));
                                        // source line 1135, bytecode pc 1064
                                        (_itemView.name = "ghostView");
                                        // source line 1136, bytecode pc 1089
                                        this.initSpriteByProperty(input, _property, _itemView);
                                    }
                                } else {
                                    if ((_property.type === "particle")) {
                                        // source line 1142, bytecode pc 1137
                                        (_itemView = this.createParticle(input, _property));
                                    } else {
                                        // source line 1145, bytecode pc 1185
                                        (_itemView = xs.Factorys.Skill.getViewByName(input, _property.type));
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    // source line 1149, bytecode pc 1220
    xs.assert(_itemView, "_itemView must exist", _property, _para);
    // source line 1152, bytecode pc 1249
    this.log("createItemViewByParams", ("end " + _itemView));
    // source line 1158, bytecode pc 1272
    return { view: _itemView, animate: _animate }
},
    needRevertX: function(input) {
    var _isBelongFrom, _isBelongTo, _isBelongTmp, _fromSide, _toSide;
    // source line 1192, bytecode pc 43
    (_isBelongFrom = xs.Factorys.Skill.Item.isBelongFrom(input.item));
    // source line 1193, bytecode pc 87
    (_isBelongTo = xs.Factorys.Skill.Item.isBelongTo(input.item));
    // source line 1194, bytecode pc 131
    (_isBelongTmp = xs.Factorys.Skill.Item.isBelongTmp(input.item));
    // source line 1196, bytecode pc 157
    (_fromSide = input.para.fromSides[input.idxFrom]);
    // source line 1197, bytecode pc 183
    (_toSide = input.para.toSides[input.idxTo]);
    if ((_isBelongFrom && (_fromSide === 1))) {
        // source line 1202, bytecode pc 204
        return true;
    }
    if ((_isBelongTo && (_toSide === 0))) {
        // source line 1206, bytecode pc 225
        return true;
    }
    if ((_isBelongTmp && ((_fromSide === 1) && (_toSide === 0)))) {
        // source line 1210, bytecode pc 257
        return true;
    }
    // source line 1222, bytecode pc 259
    return false;
},
    _isItemIgnored: function(ignoreEventsPart, item, params) {
    var _item_ignore;
    // source line 1237, bytecode pc 16
    (_item_ignore = item.property.ignore);
    if ((this.__isItemIgnored_byProperty(_item_ignore, params) === true)) {
        // source line 1240, bytecode pc 45
        return true;
    }
    if ((this.__isItemIgnored_byProperty(ignoreEventsPart, params) === true)) {
        // source line 1247, bytecode pc 74
        return true;
    }
    // source line 1250, bytecode pc 76
    return false;
},
    _isItemTriggered: function(triggerEventsPart, item, params) {
    var _item_trigger;
    // source line 1256, bytecode pc 16
    (_item_trigger = item.property.trigger);
    if ((this.__isItemTriggered_byProperty(_item_trigger, params) === false)) {
        // source line 1259, bytecode pc 45
        return false;
    }
    if ((this.__isItemTriggered_byProperty(triggerEventsPart, params) === false)) {
        // source line 1263, bytecode pc 74
        return false;
    }
    // source line 1266, bytecode pc 76
    return true;
},
    __isItemIgnored_byProperty: function(ignoreEvents, params) {
    var _ret, _ignore, i;
    // source line 1272, bytecode pc 24
    this.log("__isItemIgnored_byItemProperty", "begin");
    // source line 1277, bytecode pc 29
    (_ret = false);
    // source line 1279, bytecode pc 43
    (_ignore = (ignoreEvents || null));
    if ((_ignore === true)) {
        // source line 1282, bytecode pc 58
        (_ret = true);
    } else {
        if (((params === null) || (params === undefined))) {
            // source line 1285, bytecode pc 93
            (_ret = false);
        } else {
            // source line 1289, bytecode pc 103
            (_ret = false);
            if (((params.event === null) || ((params.event === undefined) || (_ignore === null)))) {
                // source line 1295, bytecode pc 154
                (_ret = false);
            } else {
                // source line 1298, bytecode pc 164
                (i = 0);
                while ((i < params.event.length)) {
                    if ((_ignore.indexOf(params.event[i]) >= 0)) {
                        // source line 1300, bytecode pc 209
                        (_ret = true);
                        break;
                    }
                    // source line 1298, bytecode pc 229
                    i++;
                }
            }
        }
    }
    // source line 1308, bytecode pc 281
    this.log("__isItemIgnored_byItemProperty", ("end:" + _ret));
    // source line 1309, bytecode pc 285
    return _ret;
},
    __isItemTriggered_byProperty: function(triggerEvents, params) {
    var _ret, _trigger, i;
    // source line 1318, bytecode pc 24
    this.log("__isItemTriggered_byProperty", "begin");
    // source line 1319, bytecode pc 63
    this.dump("__isItemTriggered_byProperty", [ triggerEvents, params ]);
    // source line 1321, bytecode pc 68
    (_ret = false);
    // source line 1323, bytecode pc 75
    (_trigger = triggerEvents);
    if (((_trigger === null) || (_trigger === undefined))) {
        // source line 1326, bytecode pc 105
        (_trigger = true);
    }
    if ((_trigger === null)) {
        // source line 1335, bytecode pc 120
        (_ret = true);
    } else {
        if ((_trigger === true)) {
            // source line 1338, bytecode pc 140
            (_ret = true);
        } else {
            if ((_trigger === false)) {
                // source line 1341, bytecode pc 160
                (_ret = false);
            } else {
                if (((params === null) || (params === undefined))) {
                    // source line 1345, bytecode pc 195
                    (_ret = false);
                } else {
                    if (((params.event === null) || (params.event === undefined))) {
                        // source line 1352, bytecode pc 240
                        (_ret = false);
                    } else {
                        // source line 1355, bytecode pc 250
                        (i = 0);
                        while ((i < params.event.length)) {
                            if ((_trigger.indexOf(params.event[i]) >= 0)) {
                                // source line 1357, bytecode pc 295
                                (_ret = true);
                                break;
                            }
                            // source line 1355, bytecode pc 315
                            i++;
                        }
                    }
                }
            }
        }
    }
    // source line 1364, bytecode pc 367
    this.log("__isItemTriggered_byProperty", ("end:" + _ret));
    // source line 1367, bytecode pc 371
    return _ret;
}
});
// source line 1372, bytecode pc 318
(xs.tmpRemoveCount = 0);
