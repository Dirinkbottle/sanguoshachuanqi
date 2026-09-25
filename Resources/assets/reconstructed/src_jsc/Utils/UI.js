// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Utils/UI.js:1
// source line 9, bytecode pc 42
(xs.Utils.UI = (xs.Utils.UI || {}));
// source line 56, bytecode pc 68
(xs.Utils.UI.replaceCcbByCfgEntity = function(nodeCCB, cfgEntity, target) {
    var _replaceNode, _node, _type, _string, _horizontal, _vertical, _dimensions, _anrchorPoint, _position, _zOrder, isExist;
    // source line 60, bytecode pc 31
    xs.assert(cfgEntity.tag, "replaceCcbByCfgEntity need a tag!");
    // source line 62, bytecode pc 58
    (_replaceNode = nodeCCB.getChildByTag(cfgEntity.tag));
    // source line 63, bytecode pc 63
    (_node = null);
    // source line 66, bytecode pc 99
    xs.assert(_replaceNode, "ccb tag not exist", cfgEntity.tag);
    if (cfgEntity.type) {
        // source line 72, bytecode pc 124
        (_type = cfgEntity.type);
        if ((_type === "label_ttf")) {
            // source line 76, bytecode pc 170
            xs.assert(cfgEntity.id, "replaceCcbByCfgEntity labelTTF need an id!");
            if (cfgEntity.stringId) {
                // source line 79, bytecode pc 231
                (_node = xs.Factorys.LabelTTF.createWithStringId(cfgEntity.stringId, cfgEntity.id));
            } else {
                // source line 81, bytecode pc 241
                (_string = null);
                if (cfgEntity.string) {
                    // source line 83, bytecode pc 266
                    (_string = cfgEntity.string);
                } else {
                    // source line 85, bytecode pc 280
                    (_string = "");
                }
                // source line 87, bytecode pc 323
                (_node = xs.Factorys.LabelTTF.create(_string, cfgEntity.id));
            }
            // source line 90, bytecode pc 341
            (_horizontal = _replaceNode.getHorizontalAlignment());
            // source line 91, bytecode pc 359
            (_vertical = _replaceNode.getVerticalAlignment());
            // source line 92, bytecode pc 378
            _node.setHorizontalAlignment(_horizontal);
            // source line 93, bytecode pc 397
            _node.setVerticalAlignment(_vertical);
        } else {
            if ((_type === "label_bmf")) {
                // source line 98, bytecode pc 448
                xs.assert(cfgEntity.id, "replaceCcbByCfgEntity labelBMF need an id!");
                if (cfgEntity.stringId) {
                    // source line 101, bytecode pc 509
                    (_node = xs.Factorys.LabelBMFont.createWithStringId(cfgEntity.stringId, cfgEntity.id));
                } else {
                    // source line 103, bytecode pc 519
                    (_string = null);
                    if (cfgEntity.string) {
                        // source line 105, bytecode pc 544
                        (_string = cfgEntity.string);
                    } else {
                        // source line 107, bytecode pc 558
                        (_string = "");
                    }
                    // source line 109, bytecode pc 601
                    (_node = xs.Factorys.LabelBMFont.create(_string, cfgEntity.id));
                }
            } else {
                if ((_type === "label")) {
                    if (cfgEntity.stringId) {
                        // source line 115, bytecode pc 681
                        (_node = xs.Factorys.Label.createWithStringId(cfgEntity.id, cfgEntity.stringId));
                    } else {
                        // source line 117, bytecode pc 691
                        (_string = null);
                        if (cfgEntity.string) {
                            // source line 119, bytecode pc 716
                            (_string = cfgEntity.string);
                        } else {
                            // source line 121, bytecode pc 730
                            (_string = "");
                        }
                        // source line 123, bytecode pc 773
                        (_node = xs.Factorys.Label.createWithString(cfgEntity.id, _string));
                    }
                    // source line 126, bytecode pc 791
                    (_horizontal = _replaceNode.getHorizontalAlignment());
                    // source line 127, bytecode pc 809
                    (_vertical = _replaceNode.getVerticalAlignment());
                    // source line 128, bytecode pc 827
                    (_dimensions = _replaceNode.getDimensions());
                    // source line 129, bytecode pc 846
                    _node.setHorizontalAlignment(_horizontal);
                    // source line 130, bytecode pc 865
                    _node.setVerticalAlignment(_vertical);
                    // source line 131, bytecode pc 884
                    _node.setDimensions(_dimensions);
                } else {
                    if ((_type === "ls")) {
                        // source line 143, bytecode pc 942
                        (_node = xs.Factorys.Label.createByStyleId(cfgEntity.id));
                        if ((_replaceNode.getHorizontalAlignment && _node.setHorizontalAlignment)) {
                            // source line 147, bytecode pc 987
                            (_horizontal = _replaceNode.getHorizontalAlignment());
                            // source line 148, bytecode pc 1006
                            _node.setHorizontalAlignment(_horizontal);
                        }
                        if ((_replaceNode.getVerticalAlignment && _node.setVerticalAlignment)) {
                            // source line 153, bytecode pc 1051
                            (_vertical = _replaceNode.getVerticalAlignment());
                            // source line 154, bytecode pc 1070
                            _node.setVerticalAlignment(_vertical);
                        }
                        if ((_replaceNode.getDimensions && _node.setDimensions)) {
                            // source line 159, bytecode pc 1115
                            (_dimensions = _replaceNode.getDimensions());
                            // source line 160, bytecode pc 1134
                            _node.setDimensions(_dimensions);
                        }
                        if (cfgEntity.stringId) {
                            // source line 164, bytecode pc 1171
                            _node.setStringById(cfgEntity.stringId);
                        } else {
                            if (cfgEntity.string) {
                                // source line 167, bytecode pc 1213
                                _node.setString(cfgEntity.string);
                            } else {
                                if (cfgEntity.stringKey) {
                                    // source line 169, bytecode pc 1270
                                    (_string = xs.Tools.String.createString(cfgEntity.stringKey));
                                    // source line 170, bytecode pc 1289
                                    _node.setString(_string);
                                }
                            }
                        }
                    } else {
                        if ((_type === "ls_ext")) {
                            // source line 186, bytecode pc 1340
                            this.assert(cfgEntity.ids, "need cfgEntity.ids", cfgEntity);
                            // source line 188, bytecode pc 1384
                            (_node = xs.Views.Label.LabelExt.createWithStyles(cfgEntity.ids));
                        } else {
                            if ((_type === "bs")) {
                                // source line 203, bytecode pc 1442
                                (_node = xs.Views.Btn.createByStyleId(cfgEntity.id));
                                if (cfgEntity.stringId) {
                                    // source line 206, bytecode pc 1479
                                    _node.setStringById(cfgEntity.stringId);
                                } else {
                                    if (cfgEntity.string) {
                                        // source line 209, bytecode pc 1521
                                        _node.setString(cfgEntity.string);
                                    }
                                }
                            } else {
                                if ((_type === "btn")) {
                                    if (cfgEntity.id) {
                                        if (cfgEntity.stringId) {
                                            // source line 216, bytecode pc 1614
                                            (_node = xs.Views.Btn.createWithStringId(cfgEntity.id, cfgEntity.stringId));
                                        } else {
                                            if (cfgEntity.string) {
                                                // source line 220, bytecode pc 1680
                                                (_node = xs.Views.Btn.createWithString(cfgEntity.id, cfgEntity.string));
                                            } else {
                                                // source line 223, bytecode pc 1724
                                                (_node = xs.Views.Btn.create(cfgEntity.id));
                                            }
                                        }
                                    } else {
                                        // source line 226, bytecode pc 1752
                                        xs.warn("replaceCcbByCfgEntity Button miss id!");
                                    }
                                } else {
                                    if ((_type === "sprite")) {
                                        if (cfgEntity.id) {
                                            // source line 235, bytecode pc 1841
                                            (_node = xs.Factorys.Sprite.create(cfgEntity.id, cfgEntity.area, cfgEntity.params));
                                        }
                                    } else {
                                        // source line 243, bytecode pc 1874
                                        this.error("_type error", _type);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        // source line 246, bytecode pc 1892
        (_anrchorPoint = _replaceNode.getAnchorPoint());
        // source line 247, bytecode pc 1910
        (_position = _replaceNode.getPosition());
        // source line 248, bytecode pc 1928
        (_zOrder = _replaceNode.getZOrder());
        // source line 250, bytecode pc 1933
        (isExist = true);
        if (!_node) {
            // source line 252, bytecode pc 1949
            (_node = _replaceNode);
            // source line 253, bytecode pc 1954
            (isExist = false);
        }
        // source line 256, bytecode pc 1978
        _node.setTag(cfgEntity.tag);
        // source line 257, bytecode pc 2011
        _node.setZOrder((cfgEntity.zOrder || _zOrder));
        // source line 258, bytecode pc 2030
        _node.setAnchorPoint(_anrchorPoint);
        // source line 259, bytecode pc 2049
        _node.setPosition(_position);
        if (cfgEntity.offset) {
            // source line 262, bytecode pc 2140
            _node.setPosition(cc.p((_position.x + cfgEntity.offset.x), (_position.y + cfgEntity.offset.y)));
        }
        if (isExist) {
            // source line 265, bytecode pc 2183
            xs.Utils.Node.attachNodes(nodeCCB, _node);
            // source line 266, bytecode pc 2214
            xs.Utils.Node.safeRemoveChild(_replaceNode);
        }
    } else {
        // source line 273, bytecode pc 2226
        (_node = _replaceNode);
    }
    if (target) {
        if (cfgEntity.name) {
            // source line 281, bytecode pc 2263
            (target[cfgEntity.name] = _node);
        }
    }
});
// source line 288, bytecode pc 94
(xs.Utils.UI.replaceCcbByCfg = function(nodeCCB, cfg, target) {
    var i;
    // source line 289, bytecode pc 26
    xs.assert(cfg, "replace cfg can not undefined!");
    // source line 290, bytecode pc 31
    (i = 0);
    while ((i < cfg.length)) {
        // source line 291, bytecode pc 80
        xs.Utils.UI.replaceCcbByCfgEntity(nodeCCB, cfg[i], target);
        // source line 290, bytecode pc 93
        (i = (+i + 1));
    }
});
