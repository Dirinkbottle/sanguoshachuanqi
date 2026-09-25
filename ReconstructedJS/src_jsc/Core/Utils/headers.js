// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Core/Utils/headers.js:1
// source line 336, bytecode pc 328
(xs.Core.Utils = {
    Node: {
        getPointOfScreenCenter: function() {
    var _sizeAll, _oriPoint;
    // source line 15, bytecode pc 24
    (_sizeAll = xsc.director.getVisibleSize());
    // source line 16, bytecode pc 49
    (_oriPoint = xsc.director.getVisibleOrigin());
    // source line 20, bytecode pc 108
    return cc.p((_oriPoint.x + (_sizeAll.width / 2)), (_oriPoint.y + (_sizeAll.height / 2)));
},
        _getPointOfScreen: function(desc) {
    var _sizeAll, _oriPoint, _pos;
    // source line 26, bytecode pc 24
    (_sizeAll = xsc.director.getVisibleSize());
    // source line 27, bytecode pc 49
    (_oriPoint = xsc.director.getVisibleOrigin());
    if ((desc === "c")) {
        // source line 31, bytecode pc 111
        (_pos = cc.p((_sizeAll.width / 2), (_sizeAll.height / 2)));
    } else {
        if ((desc.contains("c") && desc.contains("l"))) {
            // source line 34, bytecode pc 201
            (_pos = cc.p(0, (_sizeAll.height / 2)));
        } else {
            if ((desc.contains("c") && desc.contains("r"))) {
                // source line 37, bytecode pc 298
                (_pos = cc.p(_sizeAll.width, (_sizeAll.height / 2)));
            } else {
                if ((desc.contains("c") && desc.contains("t"))) {
                    // source line 40, bytecode pc 395
                    (_pos = cc.p((_sizeAll.width / 2), _sizeAll.height));
                } else {
                    if ((desc.contains("c") && desc.contains("b"))) {
                        // source line 43, bytecode pc 485
                        (_pos = cc.p((_sizeAll.width / 2), 0));
                    } else {
                        if ((desc.contains("l") && desc.contains("t"))) {
                            // source line 46, bytecode pc 572
                            (_pos = cc.p(0, _sizeAll.height));
                        } else {
                            if ((desc.contains("r") && desc.contains("t"))) {
                                // source line 49, bytecode pc 666
                                (_pos = cc.p(_sizeAll.width, _sizeAll.height));
                            } else {
                                if ((desc.contains("l") && desc.contains("b"))) {
                                    // source line 52, bytecode pc 746
                                    (_pos = cc.p(0, 0));
                                } else {
                                    if ((desc.contains("r") && desc.contains("b"))) {
                                        // source line 55, bytecode pc 833
                                        (_pos = cc.p(_sizeAll.width, 0));
                                    } else {
                                        // source line 59, bytecode pc 867
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
    // source line 64, bytecode pc 920
    return cc.p((_oriPoint.x + _pos.x), (_oriPoint.y + _pos.y));
},
        _getPointByPosDesc: function(node, desc) {
    var _sizeAll, _pos;
    // source line 69, bytecode pc 17
    (_sizeAll = node.getContentSize());
    if ((desc === "c")) {
        // source line 73, bytecode pc 79
        (_pos = cc.p((_sizeAll.width / 2), (_sizeAll.height / 2)));
    } else {
        if ((desc.contains("c") && desc.contains("l"))) {
            // source line 76, bytecode pc 169
            (_pos = cc.p(0, (_sizeAll.height / 2)));
        } else {
            if ((desc.contains("c") && desc.contains("r"))) {
                // source line 79, bytecode pc 266
                (_pos = cc.p(_sizeAll.width, (_sizeAll.height / 2)));
            } else {
                if ((desc.contains("c") && desc.contains("t"))) {
                    // source line 82, bytecode pc 363
                    (_pos = cc.p((_sizeAll.width / 2), _sizeAll.height));
                } else {
                    if ((desc.contains("c") && desc.contains("b"))) {
                        // source line 85, bytecode pc 453
                        (_pos = cc.p((_sizeAll.width / 2), 0));
                    } else {
                        if ((desc.contains("l") && desc.contains("t"))) {
                            // source line 88, bytecode pc 540
                            (_pos = cc.p(0, _sizeAll.height));
                        } else {
                            if ((desc.contains("r") && desc.contains("t"))) {
                                // source line 91, bytecode pc 634
                                (_pos = cc.p(_sizeAll.width, _sizeAll.height));
                            } else {
                                if ((desc.contains("l") && desc.contains("b"))) {
                                    // source line 94, bytecode pc 714
                                    (_pos = cc.p(0, 0));
                                } else {
                                    if ((desc.contains("r") && desc.contains("b"))) {
                                        // source line 97, bytecode pc 801
                                        (_pos = cc.p(_sizeAll.width, 0));
                                    } else {
                                        // source line 101, bytecode pc 835
                                        xsc.assert(false, "unknow desc", desc);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    // source line 104, bytecode pc 839
    return _pos;
},
        getPointByPosDesc: function(parentNode, posDesc) {
    var _pos, _base;
    // source line 109, bytecode pc 23
    (_pos = cc.p(0, 0));
    if (posDesc) {
        // source line 113, bytecode pc 57
        (_base = (posDesc.base || posDesc.desc));
        if ((posDesc.sc === true)) {
            // source line 116, bytecode pc 106
            (_pos = xsc.Utils.Node._getPointOfScreen(_base));
        } else {
            // source line 119, bytecode pc 145
            (_pos = xsc.Utils.Node._getPointByPosDesc(_base));
        }
        if ((_pos && posDesc.offset)) {
            if (posDesc.offset.x) {
                // source line 124, bytecode pc 214
                (_pos.x = (_pos.x + posDesc.offset.x));
            }
            if (posDesc.offset.y) {
                // source line 128, bytecode pc 261
                (_pos.y = (_pos.y + posDesc.offset.y));
            }
        }
    }
    // source line 132, bytecode pc 265
    return _pos;
},
        attachNodes: function(parentNode, childNode, posDesc, cfgObj) {
    var _pos;
    // source line 139, bytecode pc 35
    xsc.Debug.assert(parentNode, "attachNodes,need parentNode", childNode);
    // source line 140, bytecode pc 71
    xsc.Debug.assert(childNode, "attachNodes,need childNode", parentNode);
    // source line 142, bytecode pc 112
    xsc.Debug.assert(parentNode.addChild, "parentNode.addChild error", parentNode);
    if (((posDesc === null) || ((posDesc === undefined) || (posDesc.pc !== true)))) {
        // source line 145, bytecode pc 172
        parentNode.addChild(childNode);
    }
    if (posDesc) {
        // source line 149, bytecode pc 218
        (_pos = xsc.Utils.Node.getPointByPosDesc(parentNode, posDesc));
        // source line 150, bytecode pc 237
        childNode.setPosition(_pos);
    }
    if (cfgObj) {
        // source line 155, bytecode pc 269
        childNode.setZOrder(cfgObj.zOrder);
        // source line 156, bytecode pc 293
        childNode.setTag(cfgObj.tag);
    }
}
    },
    LocalStore: {
        _getResKey: function() {
    // source line 163, bytecode pc 38
    return (("v_" + xsc.Tools.Jsb.getOriResCode()) + "_res_code");
},
        writeCurResCode: function(code) {
    // source line 166, bytecode pc 38
    sys.localStorage.setItem(this._getResKey(), code);
},
        readCurResCode: function() {
    // source line 169, bytecode pc 51
    return xsc.parseInt(sys.localStorage.getItem(this._getResKey()));
}
    },
    Sys: {
        exit: function() {
    // source line 175, bytecode pc 50
    xs.JsbConnecter.getInstance().invoke("App", "exit", "0");
}
    },
    Math: {
        floorSafe: function(value) {
    try {
        // source line 183, bytecode pc 21
        return Math.floor(value);
    } catch (e) {
        // source line 185, bytecode pc 73
        xsc.warn("Math.floor", ((e + "|") + value));
        // source line 186, bytecode pc 75
        return 0;
    }
},
        roundSafe: function(value) {
    try {
        // source line 193, bytecode pc 21
        return Math.round(value);
    } catch (e) {
        // source line 195, bytecode pc 73
        xsc.warn("Math.round", ((e + "|") + value));
        // source line 196, bytecode pc 75
        return 0;
    }
},
        ceilSafe: function(value) {
    try {
        // source line 203, bytecode pc 21
        return Math.ceil(value);
    } catch (e) {
        // source line 205, bytecode pc 73
        xsc.warn("Math.ceilSafe", ((e + "|") + value));
        // source line 206, bytecode pc 75
        return 0;
    }
}
    },
    Notify: {
        create: function() {
    // source line 213, bytecode pc 15
    return new cc.NotificationCenter();
}
    },
    FileSys: {
        isFileExist: function(data) {
    // source line 220, bytecode pc 36
    return cc.FileUtils.getInstance().isFileExist(data);
},
        getSearchPaths: function() {
    // source line 224, bytecode pc 32
    return cc.FileUtils.getInstance().getSearchPaths();
},
        setSearchPaths: function(array) {
    // source line 228, bytecode pc 36
    return cc.FileUtils.getInstance().setSearchPaths(array);
},
        getFileDataSize: function(fileNameFull) {
    var _ret;
    // source line 232, bytecode pc 51
    (_ret = xs.JsbConnecter.getInstance().invoke("Utils", "getFileDataSize", fileNameFull));
    // source line 233, bytecode pc 92
    return ((_ret == "err") ? 0 : xsc.parseInt(_ret));
},
        deleteDir: function(dirNameFull) {
    // source line 237, bytecode pc 48
    xs.JsbConnecter.getInstance().invoke("Utils", "deleteDir", dirNameFull);
}
    },
    Net: {
        reqAsync: function(url, readyFunc, errFunc, type, responseType) {
    var _type, _responseType, _request;
    // source line 251, bytecode pc 17
    (_type = (type || "GET"));
    // source line 252, bytecode pc 41
    (_responseType = (responseType || "text"));
    // source line 256, bytecode pc 61
    (_request = new XMLHttpRequest());
    // source line 258, bytecode pc 92
    _request.open(_type, url, true);
    // source line 259, bytecode pc 113
    _request.send();
    // source line 260, bytecode pc 133
    (_request.func = function() {
    if (((_request.readyState == 4) && (_request.status == 200))) {
        if ((_responseType == "text")) {
            // source line 268, bytecode pc 93
            this.ready(_request.responseText);
        } else {
            if ((_responseType == "arraybuffer")) {
                // source line 271, bytecode pc 141
                this.ready(_request);
            }
        }
    } else {
        if ((_responseType == "text")) {
            // source line 282, bytecode pc 194
            this.error(_request.responseText);
        } else {
            if ((_responseType == "arraybuffer")) {
                if ((this.error != null)) {
                    // source line 287, bytecode pc 260
                    this.error(_request.response);
                }
            } else {
                // source line 290, bytecode pc 284
                this.log("err_000");
            }
        }
    }
});
    // source line 297, bytecode pc 196
    (_request.onreadystatechange = _request.func.bind({ ready: readyFunc, error: errFunc }));
}
    },
    parseIntSafe: function(value) {
    try {
        // source line 305, bytecode pc 19
        return parseInt(value);
    } catch (e) {
        // source line 307, bytecode pc 76
        xsc.Debug.warn("parseInt", ((e + "|") + value));
        // source line 308, bytecode pc 78
        return 0;
    }
},
    parseFloatSafe: function(value) {
    try {
        // source line 314, bytecode pc 19
        return parseFloat(value);
    } catch (e) {
        // source line 316, bytecode pc 76
        xsc.Debug.warn("parseFloatSafe", ((e + "|") + value));
        // source line 317, bytecode pc 78
        return 0;
    }
},
    parseStringSafe: function(value) {
    try {
        // source line 323, bytecode pc 10
        return ("" + value);
    } catch (e) {
        // source line 325, bytecode pc 62
        xsc.warn("parseStringSafe", ((e + "|") + value));
        // source line 326, bytecode pc 68
        return "";
    }
},
    parseFloatDotLimit: function(valueFloat, dotlimit) {
    try {
        // source line 338, bytecode pc 29
        return (Math.round((valueFloat * dotlimit)) / dotlimit);
    } catch (e) {
        // source line 340, bytecode pc 83
        xsc.warn("parseFloatDotLimit", ((e + "|") + value));
        // source line 341, bytecode pc 85
        return 0;
    }
}
});
