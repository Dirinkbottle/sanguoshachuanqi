// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Utils/Node.js:1
// source line 1, bytecode pc 42
(xs.Utils.Node = (xs.Utils.Node || {}));
// source line 3, bytecode pc 68
(xs.Utils.Node.makeOriginal = function(node) {
    // source line 5, bytecode pc 41
    xs.assert(!node.original, "original already exist", node.name);
    // source line 7, bytecode pc 56
    (node.original = {});
    // source line 8, bytecode pc 84
    (node.original.pos = node.getPosition());
    // source line 9, bytecode pc 112
    (node.original.rotX = node.getRotationX());
    // source line 10, bytecode pc 140
    (node.original.rotY = node.getRotationY());
    // source line 11, bytecode pc 168
    (node.original.scaleX = node.getScaleX());
    // source line 12, bytecode pc 196
    (node.original.scaleY = node.getScaleY());
    // source line 13, bytecode pc 224
    (node.original.zOrder = node.getZOrder());
    // source line 14, bytecode pc 252
    (node.original.visible = node.isVisible());
});
// source line 17, bytecode pc 94
(xs.Utils.Node.makeEffectNodeOriginal = function(node) {
    // source line 19, bytecode pc 41
    xs.assert(!node.originalEffectNode, "original already exist", node.name);
    // source line 21, bytecode pc 56
    (node.originalEffectNode = {});
    // source line 22, bytecode pc 84
    (node.originalEffectNode.pos = node.getPosition());
    // source line 23, bytecode pc 112
    (node.originalEffectNode.rotX = node.getRotationX());
    // source line 24, bytecode pc 140
    (node.originalEffectNode.rotY = node.getRotationY());
    // source line 25, bytecode pc 168
    (node.originalEffectNode.scaleX = node.getScaleX());
    // source line 26, bytecode pc 196
    (node.originalEffectNode.scaleY = node.getScaleY());
    // source line 27, bytecode pc 224
    (node.originalEffectNode.zOrder = node.getZOrder());
    // source line 28, bytecode pc 252
    (node.originalEffectNode.visible = node.isVisible());
});
// source line 33, bytecode pc 120
(xs.Utils.Node.getRealSize = function(node) {
    // source line 35, bytecode pc 22
    this.assert(node, "node is null");
    // source line 39, bytecode pc 109
    return cc.size((node.getContentSize().width * node.getScaleX()), (node.getContentSize().height * node.getScaleY()));
});
// source line 44, bytecode pc 146
(xs.Utils.Node.createRoundSprite = function(srcSprite) {
    var _size, _mask, _rt, _ret;
    // source line 46, bytecode pc 22
    this.assert(srcSprite, "srcSprite is null");
    // source line 51, bytecode pc 42
    (_size = this.getRealSize(srcSprite));
    // source line 53, bytecode pc 96
    this.assert(((_size.width >= 1) && (_size.height >= 1)), "_size need at least 1,1 ", _size, srcSprite);
    // source line 60, bytecode pc 133
    srcSprite.setBlendFunc(gl.ONE_MINUS_DST_ALPHA, gl.ZERO);
    // source line 63, bytecode pc 175
    (_mask = xs.Factorys.Sprite.create("Cmn01_card_round_mask", "Cmn01"));
    // source line 66, bytecode pc 218
    (_rt = cc.RenderTexture.create(_size.width, _size.height));
    // source line 68, bytecode pc 233
    _rt.begin();
    // source line 71, bytecode pc 269
    _mask.setPosition(cc.p(0, 0));
    // source line 72, bytecode pc 305
    _mask.setAnchorPoint(cc.p(0, 0));
    // source line 73, bytecode pc 320
    _mask.visit();
    // source line 74, bytecode pc 338
    _mask.setRotation(90);
    // source line 75, bytecode pc 381
    _mask.setPosition(cc.p(0, _size.height));
    // source line 76, bytecode pc 396
    _mask.visit();
    // source line 77, bytecode pc 415
    _mask.setRotation(180);
    // source line 78, bytecode pc 465
    _mask.setPosition(cc.p(_size.width, _size.height));
    // source line 79, bytecode pc 480
    _mask.visit();
    // source line 80, bytecode pc 499
    _mask.setRotation(270);
    // source line 81, bytecode pc 542
    _mask.setPosition(cc.p(_size.width, 0));
    // source line 82, bytecode pc 557
    _mask.visit();
    // source line 84, bytecode pc 593
    srcSprite.setAnchorPoint(cc.p(0, 0));
    // source line 85, bytecode pc 629
    srcSprite.setPosition(cc.p(0, 0));
    // source line 86, bytecode pc 644
    srcSprite.visit();
    // source line 88, bytecode pc 659
    _rt.end();
    // source line 91, bytecode pc 710
    (_ret = cc.Sprite.createWithTexture(_rt.getSprite().getTexture()));
    // source line 92, bytecode pc 727
    _ret.setFlipY(true);
    // source line 94, bytecode pc 731
    return _ret;
});
// source line 97, bytecode pc 172
(xs.Utils.Node.createCircleSprite = function(srcSprite, maskName, area, size) {
    var _mask, _rt, _ret;
    if ((maskName && area)) {
        // source line 109, bytecode pc 58
        (_mask = xs.Factorys.Sprite.create(maskName, area));
    } else {
        // source line 113, bytecode pc 105
        (_mask = xs.Factorys.Sprite.create("Cmn01_head_circle_mask", "Cmn01"));
    }
    if (size) {
        // source line 126, bytecode pc 160
        (_rt = cc.RenderTexture.create(size.w, size.h));
    } else {
        // source line 129, bytecode pc 242
        (_rt = cc.RenderTexture.create(xs.Cfg.Resource.HeadChapter.w, xs.Cfg.Resource.HeadChapter.h));
    }
    // source line 131, bytecode pc 320
    _rt.setPosition(cc.p((_rt.getContentSize().width / 2), (_rt.getContentSize().height / 2)));
    // source line 133, bytecode pc 357
    srcSprite.setBlendFunc(gl.ONE_MINUS_DST_ALPHA, gl.ZERO);
    // source line 135, bytecode pc 372
    _rt.begin();
    // source line 136, bytecode pc 450
    _mask.setPosition(cc.p((_mask.getContentSize().width / 2), (_mask.getContentSize().height / 2)));
    // source line 137, bytecode pc 494
    _mask.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 138, bytecode pc 509
    _mask.visit();
    // source line 140, bytecode pc 587
    srcSprite.setPosition(cc.p((srcSprite.getContentSize().width / 2), (srcSprite.getContentSize().height / 2)));
    // source line 141, bytecode pc 631
    srcSprite.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 142, bytecode pc 646
    srcSprite.visit();
    // source line 143, bytecode pc 661
    _rt.end();
    // source line 145, bytecode pc 712
    (_ret = cc.Sprite.createWithTexture(_rt.getSprite().getTexture()));
    // source line 146, bytecode pc 729
    _ret.setFlipY(true);
    // source line 148, bytecode pc 733
    return _ret;
});
// source line 151, bytecode pc 198
(xs.Utils.Node.makeDebugPoint = function(node, c4f0, c4f1) {
    var _color0, _color1, _debugZeroPoint, _anchorPoint, _size;
    if (xs.useDebugPoint) {
        // source line 155, bytecode pc 51
        (_color0 = (c4f0 || cc.c4f(1, 0, 0, 1)));
        // source line 156, bytecode pc 88
        (_color1 = (c4f1 || cc.c4f(0, 1, 0, 1)));
        // source line 161, bytecode pc 113
        (_debugZeroPoint = cc.DrawNode.create());
        // source line 162, bytecode pc 151
        _debugZeroPoint.setContentSize(cc.size(7, 7));
        // source line 166, bytecode pc 194
        _debugZeroPoint.drawDot(cc.p(0, 0), 7, _color0);
        // source line 168, bytecode pc 211
        _debugZeroPoint.setVisible(true);
        // source line 173, bytecode pc 262
        node.addChild(_debugZeroPoint, xs.Cfg.DebugZOrder, xs.Cfg.DebugTag);
        // source line 177, bytecode pc 287
        (_anchorPoint = cc.DrawNode.create());
        // source line 178, bytecode pc 325
        _anchorPoint.setContentSize(cc.size(5, 5));
        // source line 182, bytecode pc 368
        _anchorPoint.drawDot(cc.p(0, 0), 5, _color1);
        // source line 184, bytecode pc 385
        _anchorPoint.setVisible(true);
        // source line 188, bytecode pc 403
        (_size = node.getContentSize());
        // source line 191, bytecode pc 493
        _anchorPoint.setPosition(cc.p((_size.width * node.getAnchorPoint().x), (_size.height * node.getAnchorPoint().y)));
        // source line 197, bytecode pc 544
        node.addChild(_anchorPoint, xs.Cfg.DebugZOrder, xs.Cfg.DebugTag);
    }
});
// source line 203, bytecode pc 224
(xs.Utils.Node.makeDebugBoundRect = function(node, c4f0) {
    var _color0, _color1, _nodeSize, _drawRectNode;
    // source line 207, bytecode pc 18
    this.markFuncBegin("makeDebugBoundRect");
    if (xs.useDebugBoundRect) {
        // source line 213, bytecode pc 61
        (_color0 = cc.c4f(0, 0, 0, 0));
        // source line 214, bytecode pc 98
        (_color1 = (c4f0 || cc.c4f(0, 0, 1, 1)));
        // source line 216, bytecode pc 116
        (_nodeSize = node.getContentSize());
        // source line 221, bytecode pc 141
        (_drawRectNode = cc.DrawNode.create());
        // source line 222, bytecode pc 160
        _drawRectNode.setContentSize(_nodeSize);
        // source line 232, bytecode pc 316
        _drawRectNode.drawPoly([
    cc.p(0, 0),
    cc.p(0, _nodeSize.height),
    cc.p(_nodeSize.width, _nodeSize.height),
    cc.p(_nodeSize.width, 0)
], _color0, 2, _color1);
        // source line 234, bytecode pc 333
        _drawRectNode.setVisible(true);
        // source line 239, bytecode pc 384
        node.addChild(_drawRectNode, xs.Cfg.DebugZOrder, xs.Cfg.DebugTag);
    }
    // source line 243, bytecode pc 403
    this.markFuncEnd("makeDebugBoundRect");
});
// source line 251, bytecode pc 250
(xs.Utils.Node.setCenterOfParent = function(node) {
    var _parent, _pos;
    // source line 253, bytecode pc 17
    (_parent = node.getParent());
    // source line 255, bytecode pc 51
    (_pos = xs.Utils.Node.getPointOfNodeCenter(_parent));
    // source line 257, bytecode pc 70
    node.setPosition(_pos);
});
// source line 262, bytecode pc 276
(xs.Utils.Node.getPointOfScreenCenter = function() {
    var _sizeAll, _oriPoint;
    // source line 264, bytecode pc 24
    (_sizeAll = xs.director.getVisibleSize());
    // source line 265, bytecode pc 49
    (_oriPoint = xs.director.getVisibleOrigin());
    // source line 269, bytecode pc 108
    return cc.p((_oriPoint.x + (_sizeAll.width / 2)), (_oriPoint.y + (_sizeAll.height / 2)));
});
// source line 274, bytecode pc 302
(xs.Utils.Node.getPointOfScreen = function(desc) {
    var _sizeAll, _oriPoint, _pos;
    // source line 276, bytecode pc 24
    (_sizeAll = xs.director.getVisibleSize());
    // source line 277, bytecode pc 49
    (_oriPoint = xs.director.getVisibleOrigin());
    if ((desc === "c")) {
        // source line 281, bytecode pc 111
        (_pos = cc.p((_sizeAll.width / 2), (_sizeAll.height / 2)));
    } else {
        if ((desc.contains("c") && desc.contains("l"))) {
            // source line 284, bytecode pc 201
            (_pos = cc.p(0, (_sizeAll.height / 2)));
        } else {
            if ((desc.contains("c") && desc.contains("r"))) {
                // source line 287, bytecode pc 298
                (_pos = cc.p(_sizeAll.width, (_sizeAll.height / 2)));
            } else {
                if ((desc.contains("c") && desc.contains("t"))) {
                    // source line 290, bytecode pc 395
                    (_pos = cc.p((_sizeAll.width / 2), _sizeAll.height));
                } else {
                    if ((desc.contains("c") && desc.contains("b"))) {
                        // source line 293, bytecode pc 485
                        (_pos = cc.p((_sizeAll.width / 2), 0));
                    } else {
                        if ((desc.contains("l") && desc.contains("t"))) {
                            // source line 296, bytecode pc 572
                            (_pos = cc.p(0, _sizeAll.height));
                        } else {
                            if ((desc.contains("r") && desc.contains("t"))) {
                                // source line 299, bytecode pc 666
                                (_pos = cc.p(_sizeAll.width, _sizeAll.height));
                            } else {
                                if ((desc.contains("l") && desc.contains("b"))) {
                                    // source line 302, bytecode pc 746
                                    (_pos = cc.p(0, 0));
                                } else {
                                    if ((desc.contains("r") && desc.contains("b"))) {
                                        // source line 305, bytecode pc 833
                                        (_pos = cc.p(_sizeAll.width, 0));
                                    } else {
                                        // source line 309, bytecode pc 867
                                        xs.assert(false, "unknow desc", desc);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    // source line 314, bytecode pc 920
    return cc.p((_oriPoint.x + _pos.x), (_oriPoint.y + _pos.y));
});
// source line 319, bytecode pc 328
(xs.Utils.Node.getPointOfNodeCenter = function(node) {
    var _size;
    // source line 321, bytecode pc 17
    (_size = node.getContentSize());
    // source line 322, bytecode pc 58
    return cc.p((_size.width / 2), (_size.height / 2));
});
// source line 327, bytecode pc 354
(xs.Utils.Node.getPointOfNodeCenterLeft = function(node) {
    var _size;
    // source line 329, bytecode pc 17
    (_size = node.getContentSize());
    // source line 330, bytecode pc 48
    return cc.p(0, (_size.height / 2));
});
// source line 334, bytecode pc 380
(xs.Utils.Node.getPointOfNodeCenterTop = function(node) {
    var _size;
    // source line 336, bytecode pc 17
    (_size = node.getContentSize());
    // source line 337, bytecode pc 55
    return cc.p((_size.width / 2), _size.height);
});
// source line 341, bytecode pc 406
(xs.Utils.Node.getPointOfNodeCenterRight = function(node) {
    var _size;
    // source line 343, bytecode pc 17
    (_size = node.getContentSize());
    // source line 344, bytecode pc 55
    return cc.p(_size.width, (_size.height / 2));
});
// source line 348, bytecode pc 432
(xs.Utils.Node.getPointOfNodeCenterBot = function(node) {
    var _size;
    // source line 350, bytecode pc 17
    (_size = node.getContentSize());
    // source line 351, bytecode pc 48
    return cc.p((_size.width / 2), 0);
});
// source line 356, bytecode pc 458
(xs.Utils.Node.getPointOfNodeLeftTop = function(node) {
    var _size;
    // source line 358, bytecode pc 17
    (_size = node.getContentSize());
    // source line 359, bytecode pc 45
    return cc.p(0, _size.height);
});
// source line 363, bytecode pc 484
(xs.Utils.Node.getPointOfNodeLeftBot = function(node) {
    // source line 366, bytecode pc 20
    return cc.p(0, 0);
});
// source line 370, bytecode pc 510
(xs.Utils.Node.getPointOfNodeRightTop = function(node) {
    var _size;
    // source line 372, bytecode pc 17
    (_size = node.getContentSize());
    // source line 373, bytecode pc 52
    return cc.p(_size.width, _size.height);
});
// source line 377, bytecode pc 536
(xs.Utils.Node.getPointOfNodeRightBot = function(node) {
    var _size;
    // source line 379, bytecode pc 17
    (_size = node.getContentSize());
    // source line 380, bytecode pc 45
    return cc.p(_size.width, 0);
});
// source line 394, bytecode pc 562
(xs.Utils.Node.attachNodes = function(parentNode, childNode, posDesc, cfgObj) {
    var _pos;
    // source line 396, bytecode pc 35
    xsc.Debug.assert(parentNode, "attachNodes,need parentNode", childNode);
    // source line 397, bytecode pc 71
    xsc.Debug.assert(childNode, "attachNodes,need childNode", parentNode);
    // source line 399, bytecode pc 112
    xsc.Debug.assert(parentNode.addChild, "parentNode.addChild error", parentNode);
    if (((posDesc === null) || ((posDesc === undefined) || (posDesc.pc !== true)))) {
        // source line 402, bytecode pc 172
        parentNode.addChild(childNode);
    }
    if (posDesc) {
        // source line 406, bytecode pc 218
        (_pos = xs.Utils.Node.getPointByPosDesc(parentNode, posDesc));
        // source line 407, bytecode pc 237
        childNode.setPosition(_pos);
    }
    if (cfgObj) {
        // source line 412, bytecode pc 269
        childNode.setZOrder(cfgObj.zOrder);
        // source line 413, bytecode pc 293
        childNode.setTag(cfgObj.tag);
    }
});
// source line 417, bytecode pc 588
(xs.Utils.Node.createAttachNodesAction = function(parentNode, childNode, posDesc, cfgObj) {
    var arguments;
    // source line 417, bytecode pc 4
    (arguments = arguments);
    // source line 429, bytecode pc 47
    return cc.CallFunc.create(function() {
    if (!this[1].getParent()) {
        // source line 425, bytecode pc 64
        xs.Utils.Node.attachNodes(this[0], this[1], this[2], this[3]);
    }
}.bind(arguments));
});
// source line 434, bytecode pc 614
(xs.Utils.Node.createRemoveSelfAction = function(childNode) {
    var arguments;
    // source line 434, bytecode pc 4
    (arguments = arguments);
    // source line 442, bytecode pc 47
    return cc.CallFunc.create(function() {
    var _childNode;
    // source line 437, bytecode pc 6
    (_childNode = this[0]);
    if (_childNode) {
        // source line 439, bytecode pc 31
        _childNode.removeFromParent(true);
        // source line 440, bytecode pc 36
        (_childNode = null);
    }
}.bind(arguments));
});
// source line 446, bytecode pc 640
(xs.Utils.Node.removeFromParentSafe = function(childNode) {
    if (childNode) {
        // source line 448, bytecode pc 24
        childNode.removeFromParent(true);
    }
});
// source line 452, bytecode pc 666
(xs.Utils.Node.setVisibleSafe = function(node, flag) {
    if (node) {
        // source line 454, bytecode pc 26
        node.setVisible(flag);
    }
});
// source line 458, bytecode pc 692
(xs.Utils.Node.createDelayAction = function(dp, func) {
    // source line 460, bytecode pc 28
    xs.assert((dp !== 0), "createDelayAction dp 0");
    // source line 465, bytecode pc 119
    return xs.Utils.Action.combineSequence([ cc.DelayTime.create(dp), cc.CallFunc.create(func) ]);
});
// source line 475, bytecode pc 718
(xs.Utils.Node.getPointByPosDesc = function(parentNode, posDesc) {
    var _pos, _base;
    // source line 476, bytecode pc 23
    (_pos = cc.p(0, 0));
    if (posDesc) {
        // source line 480, bytecode pc 57
        (_base = (posDesc.base || posDesc.desc));
        if ((posDesc.sc === true)) {
            // source line 484, bytecode pc 92
            (_pos = this.getPointOfScreen(_base));
        } else {
            if ((_base === "c")) {
                // source line 490, bytecode pc 131
                (_pos = this.getPointOfNodeCenter(parentNode));
            } else {
                if ((_base.contains("c") && _base.contains("l"))) {
                    // source line 493, bytecode pc 207
                    (_pos = this.getPointOfNodeCenterLeft(parentNode));
                } else {
                    if ((_base.contains("c") && _base.contains("r"))) {
                        // source line 496, bytecode pc 283
                        (_pos = this.getPointOfNodeCenterRight(parentNode));
                    } else {
                        if ((_base.contains("c") && _base.contains("t"))) {
                            // source line 499, bytecode pc 359
                            (_pos = this.getPointOfNodeCenterTop(parentNode));
                        } else {
                            if ((_base.contains("c") && _base.contains("b"))) {
                                // source line 502, bytecode pc 435
                                (_pos = this.getPointOfNodeCenterBot(parentNode));
                            } else {
                                if ((_base.contains("l") && _base.contains("t"))) {
                                    // source line 505, bytecode pc 511
                                    (_pos = this.getPointOfNodeLeftTop(parentNode));
                                } else {
                                    if ((_base.contains("r") && _base.contains("t"))) {
                                        // source line 508, bytecode pc 587
                                        (_pos = this.getPointOfNodeRightTop(parentNode));
                                    } else {
                                        if ((_base.contains("l") && _base.contains("b"))) {
                                            // source line 511, bytecode pc 663
                                            (_pos = this.getPointOfNodeLeftBot(parentNode));
                                        } else {
                                            if ((_base.contains("r") && _base.contains("b"))) {
                                                // source line 514, bytecode pc 739
                                                (_pos = this.getPointOfNodeRightBot(parentNode));
                                            } else {
                                                // source line 518, bytecode pc 773
                                                xs.assert(false, "unknow desc", posDesc);
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
        if (_pos) {
            if (posDesc.offset) {
                if (posDesc.offset.x) {
                    // source line 528, bytecode pc 841
                    (_pos.x = (_pos.x + posDesc.offset.x));
                }
                if (posDesc.offset.y) {
                    // source line 532, bytecode pc 888
                    (_pos.y = (_pos.y + posDesc.offset.y));
                }
            }
        }
    }
    // source line 539, bytecode pc 892
    return _pos;
});
// source line 543, bytecode pc 744
(xs.Utils.Node.attachBgSprite = function(layer, sprite, cfgObj) {
    var _scale_x, _scale_y;
    // source line 545, bytecode pc 33
    (_scale_x = (xs.sw / sprite.getContentSize().width));
    // source line 546, bytecode pc 67
    (_scale_y = (xs.sh / sprite.getContentSize().height));
    // source line 548, bytecode pc 106
    sprite.setScale(((_scale_x > _scale_y) ? _scale_x : _scale_y));
    // source line 550, bytecode pc 168
    xs.Utils.Node.attachNodes(layer, sprite, { desc: "c", sc: true }, cfgObj);
});
// source line 560, bytecode pc 770
(xs.Utils.Node.safeRemoveChild = function(child) {
    if (child) {
        try {
            // source line 563, bytecode pc 25
            child.removeFromParent(true);
            // source line 564, bytecode pc 30
            (child = null);
        } catch (e) {
            // source line 566, bytecode pc 71
            xs.Debug.warnException(e);
            /* TODO_BYTECODE pc=72 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
        }
    }
});
// source line 570, bytecode pc 811
(xs.Utils.Node.removeChildSafe = xs.Utils.Node.safeRemoveChild);
// source line 574, bytecode pc 837
(xs.Utils.Node.fastSetVisible = function(node, visible) {
    if ((node.isVisible() !== visible)) {
        // source line 576, bytecode pc 41
        node.setVisible(visible);
    }
});
// source line 582, bytecode pc 863
(xs.Utils.Node.replaceChildSafe = function(parent, oldChild, newChild) {
    var _parent, _z, _tag, _pos;
    // source line 584, bytecode pc 6
    (_parent = parent);
    // source line 585, bytecode pc 11
    (_z = null);
    // source line 586, bytecode pc 16
    (_tag = null);
    if (oldChild) {
        // source line 589, bytecode pc 42
        (_pos = oldChild.getPosition());
        // source line 590, bytecode pc 60
        (_tag = oldChild.getTag());
        // source line 591, bytecode pc 78
        (_z = oldChild.getZOrder());
        // source line 592, bytecode pc 109
        xs.Utils.Node.safeRemoveChild(oldChild);
        // source line 593, bytecode pc 128
        newChild.setPosition(_pos);
        // source line 594, bytecode pc 147
        newChild.setZOrder(_tag);
        // source line 595, bytecode pc 166
        newChild.setTag(_z);
    }
    // source line 602, bytecode pc 231
    xs.Utils.Node.attachNodes(_parent, newChild, false, { zOrder: _z, tag: _tag });
    // source line 603, bytecode pc 238
    (oldChild = newChild);
    // source line 605, bytecode pc 242
    return oldChild;
});
// source line 608, bytecode pc 889
(xs.Utils.Node.initByViewCfg = function(node, viewCfg) {
    if (viewCfg) {
        if (viewCfg.rotY) {
            // source line 612, bytecode pc 44
            node.setRotationY(viewCfg.rotY);
        }
        if (viewCfg.scale) {
            // source line 615, bytecode pc 81
            node.setScale(viewCfg.scale);
        }
        if (viewCfg.scaleX) {
            // source line 618, bytecode pc 118
            node.setScaleX(viewCfg.scaleX);
        }
        if (viewCfg.scaleY) {
            // source line 621, bytecode pc 155
            node.setScaleY(viewCfg.scaleY);
        }
        if (viewCfg.skewX) {
            // source line 625, bytecode pc 192
            node.setSkewX(viewCfg.skewX);
        }
        if (viewCfg.skewY) {
            // source line 628, bytecode pc 229
            node.setSkewY(viewCfg.skewY);
        }
        if (viewCfg.pos) {
            // source line 632, bytecode pc 266
            node.setPosition(viewCfg.pos);
        }
        if (viewCfg.opacity) {
            // source line 636, bytecode pc 303
            node.setOpacity(viewCfg.opacity);
        }
    }
});
// source line 641, bytecode pc 915
(xs.Utils.Node.createEffectActionSelf = function(root, event) {
    var _ret;
    // source line 645, bytecode pc 4
    (_ret = null);
    if ((event === xs.Constant_NodeEffectEvent_Revert)) {
        if (!root.originalEffectNode) {
            // source line 651, bytecode pc 42
            (_ret = null);
        } else {
            // source line 654, bytecode pc 81
            (_ret = xs.Utils.Node._createEffectActionSelf_Revert(root));
        }
    } else {
        if ((root.getEffectTypeByEvent(event) === xs.Constant_NodeEffectType_MoveOut)) {
            if (!root.originalEffectNode) {
                // source line 664, bytecode pc 165
                xs.Utils.Node.makeEffectNodeOriginal(root);
            }
            // source line 666, bytecode pc 199
            (_ret = xs.Utils.Node._createEffectActionSelf_MoveOut(root));
        } else {
            if ((root.getEffectTypeByEvent(event) === xs.Constant_NodeEffectType_Hide)) {
                if (!root.originalEffectNode) {
                    // source line 671, bytecode pc 283
                    xs.Utils.Node.makeEffectNodeOriginal(root);
                }
                // source line 673, bytecode pc 317
                (_ret = xs.Utils.Node._createEffectActionSelf_Hide(root));
            }
        }
    }
    // source line 679, bytecode pc 326
    return _ret;
});
// source line 683, bytecode pc 941
(xs.Utils.Node._createEffectActionSelf_Revert = function(root) {
    var _original, _action0, _action1;
    // source line 685, bytecode pc 11
    (_original = root.originalEffectNode);
    // source line 688, bytecode pc 38
    xs.assert(_original, "need root originalEffectNode");
    // source line 693, bytecode pc 104
    (_action0 = cc.TargetedAction.create(root, cc.MoveTo.create(0.5, _original.pos)));
    // source line 696, bytecode pc 136
    (_action0 = cc.EaseIn.create(_action0, 5));
    // source line 700, bytecode pc 226
    (_action1 = cc.TargetedAction.create(root, (_original.visible ? cc.Show.create() : cc.Hide.create())));
    // source line 706, bytecode pc 273
    return xs.Utils.Action.combineSpawn([ _action0, _action1 ]);
});
// source line 712, bytecode pc 967
(xs.Utils.Node._createEffectActionSelf_MoveOut = function(root) {
    var _visibleSize, _pos, _absX, _absY, _moveByX, _moveByY, _actionMoveBy;
    // source line 714, bytecode pc 24
    (_visibleSize = xs.director.getVisibleSize());
    // source line 716, bytecode pc 42
    (_pos = root.getPosition());
    // source line 718, bytecode pc 93
    (_absX = xs.Utils.Math.abs(((_visibleSize.width / 2) - _pos.x)));
    // source line 719, bytecode pc 144
    (_absY = xs.Utils.Math.abs(((_visibleSize.height / 2) - _pos.y)));
    // source line 721, bytecode pc 149
    (_moveByX = 0);
    // source line 722, bytecode pc 154
    (_moveByY = 0);
    if ((_pos.x > (_visibleSize.width / 2))) {
        // source line 726, bytecode pc 191
        (_moveByX = _visibleSize.width);
    } else {
        // source line 731, bytecode pc 209
        (_moveByX = -_visibleSize.width);
    }
    if ((_pos.y > (_visibleSize.height / 2))) {
        // source line 737, bytecode pc 246
        (_moveByY = _visibleSize.height);
    } else {
        // source line 741, bytecode pc 264
        (_moveByY = -_visibleSize.height);
    }
    if ((_absX > _absY)) {
        // source line 745, bytecode pc 281
        (_moveByY = 0);
    } else {
        // source line 748, bytecode pc 291
        (_moveByX = 0);
    }
    // source line 755, bytecode pc 369
    (_actionMoveBy = cc.TargetedAction.create(root, cc.MoveBy.create(1, cc.p(_moveByX, _moveByY))));
    // source line 758, bytecode pc 398
    return cc.EaseIn.create(_actionMoveBy, 5);
});
// source line 763, bytecode pc 993
(xs.Utils.Node._createEffectActionSelf_Hide = function(root) {
    // source line 767, bytecode pc 47
    return cc.TargetedAction.create(root, cc.Hide.create());
});
// source line 774, bytecode pc 1019
(xs.Utils.Node.createEffectAction = function(root, event) {
    var _childs, _actions, i, _tmpChild, _actionSelf;
    // source line 775, bytecode pc 17
    (_childs = root.getChildren());
    // source line 777, bytecode pc 26
    (_actions = []);
    // source line 778, bytecode pc 31
    (i = 0);
    while ((i < _childs.length)) {
        // source line 779, bytecode pc 48
        (_tmpChild = _childs[i]);
        // source line 780, bytecode pc 98
        _actions.push(xs.Utils.Node.createEffectAction(_tmpChild, event));
        // source line 778, bytecode pc 112
        (i = (+i + 1));
    }
    // source line 783, bytecode pc 169
    (_actionSelf = xs.Utils.Node.createEffectActionSelf(root, event));
    // source line 788, bytecode pc 243
    return xs.Utils.Action.combineSpawn([ xs.Utils.Action.combineSpawn(_actions), _actionSelf ]);
});
