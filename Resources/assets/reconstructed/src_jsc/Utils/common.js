// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Utils/common.js:1
// source line 1, bytecode pc 20
(xs.Utils.getType = function(object) {
    var _t;
    // source line 3, bytecode pc 110
    return (((_t = typeof(object)) == "object") ? (((object == null) && "null") || Object.prototype.toString.call(object).slice(8, -1)) : _t).toLowerCase();
});
// source line 6, bytecode pc 41
(xs.Utils.isArray = function(value) {
    // source line 11, bytecode pc 36
    return (Object.prototype.toString.apply(value) === "[object Array]");
});
// source line 15, bytecode pc 62
(xs.Utils.isFunc = function(obj) {
    if ((typeof(obj) === "function")) {
        // source line 19, bytecode pc 16
        return true;
    } else {
        if ((typeof(obj) === "native code")) {
            // source line 22, bytecode pc 38
            return true;
        }
    }
    // source line 24, bytecode pc 40
    return false;
});
// source line 27, bytecode pc 83
(xs.Utils.isString = function(value) {
    // source line 28, bytecode pc 31
    return (xs.Utils.getType(value) === "string");
});
// source line 31, bytecode pc 104
(xs.Utils.isNumber = function(value) {
    // source line 32, bytecode pc 31
    return (xs.Utils.getType(value) === "number");
});
// source line 36, bytecode pc 125
(xs.Utils.getString = function(obj, str) {
    if (xs.Utils.isString(obj[str])) {
        // source line 38, bytecode pc 41
        return obj[str];
    } else {
        if (xs.Utils.isNumber(obj[str])) {
            // source line 40, bytecode pc 99
            return obj[str].toString();
        } else {
            if ((obj[str] === null)) {
                // source line 42, bytecode pc 151
                xs.warn((("xs.Utils.getString " + str) + " is null!"));
                // source line 43, bytecode pc 157
                return "";
            } else {
                if ((obj[str] === undefined)) {
                    // source line 45, bytecode pc 213
                    xs.warn((("xs.Utils.getString " + str) + " is undefined!"));
                    // source line 46, bytecode pc 219
                    return "";
                }
            }
        }
    }
});
// source line 50, bytecode pc 146
(xs.Utils.parseJSON = function(jsonString) {
    var arguments;
    // source line 50, bytecode pc 10
    (arguments = arguments);
    // source line 52, bytecode pc 50
    return eval((("(" + jsonString) + ")"));
});
// source line 55, bytecode pc 167
(xs.Utils.parseFloatDotLimit = function(valueFloat, dotlimit) {
    // source line 57, bytecode pc 28
    return (Math.round((valueFloat * dotlimit)) / dotlimit);
});
// source line 60, bytecode pc 188
(xs.Utils.parseFloatSafe = function(value) {
    try {
        // source line 62, bytecode pc 19
        return parseFloat(value);
    } catch (e) {
        // source line 64, bytecode pc 71
        xs.warn("parseFloatSafe", ((e + "|") + value));
        // source line 65, bytecode pc 73
        return 0;
    }
});
// source line 69, bytecode pc 209
(xs.Utils.parseIntSafe = function(value) {
    try {
        // source line 71, bytecode pc 19
        return parseInt(value);
    } catch (e) {
        // source line 73, bytecode pc 71
        xs.warn("parseInt", ((e + "|") + value));
        // source line 74, bytecode pc 73
        return 0;
    }
});
// source line 78, bytecode pc 230
(xs.Utils.parseStringSafe = function(value) {
    try {
        // source line 80, bytecode pc 10
        return ("" + value);
    } catch (e) {
        // source line 82, bytecode pc 62
        xs.warn("parseStringSafe", ((e + "|") + value));
        // source line 83, bytecode pc 68
        return "";
    }
});
// source line 89, bytecode pc 251
(xs.Utils.floorSafe = function(value) {
    try {
        // source line 91, bytecode pc 21
        return Math.floor(value);
    } catch (e) {
        // source line 93, bytecode pc 73
        xs.warn("Math.floor", ((e + "|") + value));
        // source line 94, bytecode pc 75
        return 0;
    }
});
// source line 99, bytecode pc 272
(xs.Utils.roundSafe = function(value) {
    try {
        // source line 101, bytecode pc 21
        return Math.round(value);
    } catch (e) {
        // source line 103, bytecode pc 73
        xs.warn("Math.round", ((e + "|") + value));
        // source line 104, bytecode pc 75
        return 0;
    }
});
// source line 109, bytecode pc 293
(xs.Utils.ceilSafe = function(value) {
    try {
        // source line 111, bytecode pc 21
        return Math.ceil(value);
    } catch (e) {
        // source line 113, bytecode pc 73
        xs.warn("Math.round", ((e + "|") + value));
        // source line 114, bytecode pc 75
        return 0;
    }
});
// source line 120, bytecode pc 314
(xs.Utils.extendScope = function(scope, diff) {
    var _i;
    for (var _i in diff) {
        if (!(diff.hasOwnProperty(_i))) continue;
        // source line 123, bytecode pc 87
        xs.assert((scope[_i] === undefined), "extendScope error", _i, scope[_i]);
        // source line 124, bytecode pc 102
        (scope[_i] = diff[_i]);
    }
});
// source line 129, bytecode pc 335
(xs.Utils.clone = function(obj) {
    var ret, i;
    if ((typeof(obj) !== "object")) {
        // source line 131, bytecode pc 18
        return obj;
    }
    if ((obj === null)) {
        // source line 134, bytecode pc 32
        return obj;
    }
    // source line 137, bytecode pc 37
    (ret = null);
    if (xs.Utils.isArray(obj)) {
        // source line 139, bytecode pc 76
        (ret = []);
    } else {
        // source line 141, bytecode pc 91
        (ret = {});
    }
    for (var i in obj) {
        if (!(obj.hasOwnProperty(i))) continue;
        // source line 148, bytecode pc 167
        (ret[i] = xs.Utils.clone(obj[i]));
    }
    // source line 154, bytecode pc 179
    return ret;
});
// source line 159, bytecode pc 356
(xs.Utils.cloneWithDiff = function(obj, diff) {
    var re, i, j;
    if ((diff === undefined)) {
        // source line 164, bytecode pc 39
        return xs.Utils.clone(obj);
    }
    if ((diff === null)) {
        // source line 168, bytecode pc 73
        return xs.Utils.clone(null);
    }
    if (xs.Utils.isString(diff)) {
        // source line 172, bytecode pc 129
        return xs.Utils.clone(diff);
    }
    if (((obj === undefined) || (obj === null))) {
        // source line 178, bytecode pc 180
        return xs.Utils.clone(diff);
    }
    if ((typeof(obj) !== "object")) {
        // source line 182, bytecode pc 221
        return xs.Utils.clone(diff);
    }
    // source line 185, bytecode pc 231
    (re = {});
    if ((obj.constructor == Array)) {
        // source line 187, bytecode pc 259
        (re = []);
    }
    for (var i in obj) {
        if (!(obj.hasOwnProperty(i))) continue;
        // source line 192, bytecode pc 335
        xs.assert((i !== "hasItemString"), "hasItemString found in cloneWithDiff", obj);
        // source line 193, bytecode pc 372
        xs.assert((i !== "prototype"), "prototype found in cloneWithDiff ", obj);
        // source line 194, bytecode pc 417
        (re[i] = xs.Utils.cloneWithDiff(obj[i], diff[i]));
    }
    for (var j in diff) {
        if (!((re[j] === undefined))) continue;
        // source line 202, bytecode pc 496
        (re[j] = xs.Utils.clone(diff[j]));
    }
    // source line 206, bytecode pc 508
    return re;
});
// source line 213, bytecode pc 377
(xs.Utils.convertSecondToTime = function(second) {
    var hour, min, sec;
    // source line 214, bytecode pc 25
    (hour = parseInt((second / 3600)));
    // source line 215, bytecode pc 57
    (hour = ((hour >= 10) ? hour : ("0" + hour)));
    // source line 216, bytecode pc 85
    (min = (parseInt((second / 60)) % 60));
    // source line 217, bytecode pc 117
    (min = ((min >= 10) ? min : ("0" + min)));
    // source line 218, bytecode pc 127
    (sec = (second % 60));
    // source line 219, bytecode pc 159
    (sec = ((sec >= 10) ? sec : ("0" + sec)));
    // source line 221, bytecode pc 183
    return ((((hour + ":") + min) + ":") + sec);
});
// source line 226, bytecode pc 398
(xs.Utils.replaceNode = function(ccbNode, nodeTag, newNode, noReplaceAnchor) {
    var oldNode;
    // source line 227, bytecode pc 21
    (oldNode = ccbNode.getChildByTag(nodeTag));
    // source line 228, bytecode pc 52
    xs.assert(oldNode, ("xs.Utils.replaceNode oldNode error! tag = " + nodeTag));
    // source line 229, bytecode pc 90
    xs.Utils.replaceNodeWithOldNode(ccbNode, oldNode, newNode, noReplaceAnchor);
});
// source line 232, bytecode pc 419
(xs.Utils.replaceNodeWithScale = function(ccbNode, nodeTag, newNode, noReplaceAnchor, noReplaceScale) {
    var oldNode;
    // source line 233, bytecode pc 21
    (oldNode = ccbNode.getChildByTag(nodeTag));
    // source line 234, bytecode pc 52
    xs.assert(oldNode, ("xs.Utils.replaceNode oldNode error! tag = " + nodeTag));
    // source line 235, bytecode pc 94
    xs.Utils.replaceNodeWithOldNode(ccbNode, oldNode, newNode, noReplaceAnchor, noReplaceScale);
});
// source line 239, bytecode pc 440
(xs.Utils.replaceNodeWithOldNode = function(ccbNode, oldNode, newNode, noReplaceAnchor, noReplaceScale) {
    var newNodeAnchor;
    // source line 241, bytecode pc 26
    xs.assert(oldNode, "xs.Utils.replaceNode oldNode error!");
    // source line 242, bytecode pc 53
    xs.assert(newNode, "xs.Utils.replaceNode newNode error!");
    // source line 244, bytecode pc 71
    (newNodeAnchor = newNode.getAnchorPoint());
    // source line 246, bytecode pc 101
    newNode.setPosition(oldNode.getPosition());
    // source line 247, bytecode pc 131
    newNode.setAnchorPoint(oldNode.getAnchorPoint());
    // source line 248, bytecode pc 161
    newNode.setTag(oldNode.getTag());
    // source line 249, bytecode pc 191
    newNode.setZOrder(oldNode.getZOrder());
    // source line 250, bytecode pc 206
    oldNode.removeFromParent();
    // source line 251, bytecode pc 225
    ccbNode.addChild(newNode);
    if (noReplaceAnchor) {
        // source line 253, bytecode pc 252
        newNode.setAnchorPoint(newNodeAnchor);
    }
    if (noReplaceScale) {
        // source line 256, bytecode pc 290
        newNode.setScale(oldNode.getScale());
    }
});
// source line 260, bytecode pc 461
(xs.Utils.replaceGeneralCard = function(target, tag, newCard) {
    var oldCard;
    // source line 261, bytecode pc 21
    (oldCard = target.getChildByTag(tag));
    // source line 263, bytecode pc 69
    xs.assert(((oldCard !== null) && (oldCard !== undefined)), "oldCard is null!", oldCard);
    // source line 264, bytecode pc 117
    xs.assert(((newCard !== null) && (newCard !== undefined)), "newCard is null!", newCard);
    // source line 266, bytecode pc 147
    newCard.setPosition(oldCard.getPosition());
    // source line 267, bytecode pc 166
    target.addChild(newCard);
    // source line 268, bytecode pc 181
    oldCard.removeFromParent();
    // source line 270, bytecode pc 185
    return newCard;
});
// source line 276, bytecode pc 482
(xs.Utils.replaceButton = function(ccbNode, btnTag, btnCfgOrBtnObj, btnName, btnPreferrSize) {
    var oldBtn, newBtn, arguments;
    // source line 276, bytecode pc 4
    (arguments = arguments);
    // source line 277, bytecode pc 26
    (oldBtn = ccbNode.getChildByTag(btnTag));
    // source line 279, bytecode pc 61
    xs.assert(oldBtn, "xs.Utils.replaceButton tag error", oldBtn, btnTag);
    // source line 281, bytecode pc 66
    (newBtn = null);
    if ((arguments.length == 3)) {
        // source line 283, bytecode pc 89
        (newBtn = btnCfgOrBtnObj);
    } else {
        // source line 285, bytecode pc 132
        (newBtn = xs.Views.Btn.createWithString(btnCfgOrBtnObj, btnName));
        // source line 286, bytecode pc 151
        newBtn.setString(btnName);
    }
    // source line 288, bytecode pc 181
    newBtn.setPosition(oldBtn.getPosition());
    if ((btnPreferrSize != null)) {
        // source line 291, bytecode pc 238
        xs.log(((("btnPreferrSize:" + btnPreferrSize.width) + ",") + btnPreferrSize.height));
        // source line 292, bytecode pc 257
        newBtn.setPreferredSize(btnPreferrSize);
    }
    // source line 294, bytecode pc 274
    oldBtn.removeFromParent(true);
    // source line 295, bytecode pc 293
    newBtn.setTag(btnTag);
    // source line 296, bytecode pc 312
    ccbNode.addChild(newBtn);
    // source line 298, bytecode pc 316
    return newBtn;
});
// source line 302, bytecode pc 503
(xs.Utils.replaceIcon = function(ccbNode, iconTag, newIcon) {
    var oldIcon;
    // source line 303, bytecode pc 21
    (oldIcon = ccbNode.getChildByTag(iconTag));
    if (oldIcon) {
        // source line 305, bytecode pc 59
        newIcon.setPosition(oldIcon.getPosition());
        // source line 306, bytecode pc 78
        newIcon.setTag(iconTag);
        // source line 307, bytecode pc 95
        oldIcon.removeFromParent(true);
        // source line 308, bytecode pc 114
        ccbNode.addChild(newIcon);
    }
    // source line 310, bytecode pc 118
    return newIcon;
});
// source line 313, bytecode pc 524
(xs.Utils.setNodeVisible = function(ccbNode, tag, visible) {
    var node;
    // source line 314, bytecode pc 21
    (node = ccbNode.getChildByTag(tag));
    if (node) {
        // source line 317, bytecode pc 48
        node.setVisible(visible);
    }
    // source line 319, bytecode pc 52
    return node;
});
// source line 324, bytecode pc 545
(xs.Utils.replaceIcon_direct = function(ccbNode, oldIcon, newIcon) {
    if (oldIcon) {
        // source line 326, bytecode pc 37
        newIcon.setPosition(oldIcon.getPosition());
        // source line 327, bytecode pc 67
        newIcon.setTag(oldIcon.getTag());
        // source line 328, bytecode pc 84
        oldIcon.removeFromParent(true);
        // source line 329, bytecode pc 103
        ccbNode.addChild(newIcon);
    }
    // source line 331, bytecode pc 107
    return newIcon;
});
// source line 335, bytecode pc 566
(xs.Utils.replaceGradeIcon = function(ccbNode, iconTag, grade) {
    var oldIcon, newIcon;
    // source line 336, bytecode pc 21
    (oldIcon = ccbNode.getChildByTag(iconTag));
    // source line 337, bytecode pc 55
    (newIcon = xs.Tools.UI.createGradeSmallIcon(grade));
    // source line 338, bytecode pc 88
    xs.assert((oldIcon !== null), "replaceGradeIcon oldIcon error!", oldIcon);
    if (oldIcon) {
        // source line 340, bytecode pc 126
        newIcon.setPosition(oldIcon.getPosition());
        // source line 341, bytecode pc 145
        newIcon.setTag(iconTag);
        // source line 342, bytecode pc 162
        oldIcon.removeFromParent(true);
        // source line 343, bytecode pc 181
        ccbNode.addChild(newIcon);
    }
    // source line 345, bytecode pc 185
    return newIcon;
});
// source line 349, bytecode pc 587
(xs.Utils.setCcbLabel = function(ccbNode, labelTag, str) {
    var label;
    // source line 350, bytecode pc 21
    (label = ccbNode.getChildByTag(labelTag));
    // source line 351, bytecode pc 56
    xs.assert(label, "xs.Utils.setCcbLabel error!", label, labelTag);
    // source line 352, bytecode pc 75
    label.setString(str);
    // source line 353, bytecode pc 79
    return label;
});
// source line 357, bytecode pc 608
(xs.Utils.replaceLabel = function(ccbNode, labelTag, labelStyleIds, stringIds) {
    var oldLabel, newLabel;
    // source line 358, bytecode pc 21
    (oldLabel = ccbNode.getChildByTag(labelTag));
    // source line 359, bytecode pc 56
    xs.assert(oldLabel, "xs.Utils.replaceLabel error!", oldLabel, labelTag);
    // source line 361, bytecode pc 95
    (newLabel = xs.Views.Label.LabelExt.createWithStyles(labelStyleIds));
    if (stringIds) {
        // source line 363, bytecode pc 122
        newLabel.setStringByIds(stringIds);
    }
    // source line 366, bytecode pc 141
    newLabel.setTag(labelTag);
    // source line 367, bytecode pc 171
    newLabel.setAnchorPoint(oldLabel.getAnchorPoint());
    // source line 368, bytecode pc 201
    newLabel.setPosition(oldLabel.getPosition());
    // source line 369, bytecode pc 218
    oldLabel.removeFromParent(true);
    // source line 370, bytecode pc 237
    ccbNode.addChild(newLabel);
    // source line 372, bytecode pc 241
    return newLabel;
});
// source line 375, bytecode pc 629
(xs.Utils.replaceLabelWithString = function(ccbNode, labelTag, labelStyleIds, strings) {
    var oldLabel, newLabel;
    // source line 376, bytecode pc 21
    (oldLabel = ccbNode.getChildByTag(labelTag));
    // source line 377, bytecode pc 56
    xs.assert(oldLabel, "xs.Utils.replaceLabel error!", oldLabel, labelTag);
    // source line 382, bytecode pc 95
    (newLabel = xs.Views.Label.LabelExt.createWithStyles(labelStyleIds));
    if (strings) {
        // source line 384, bytecode pc 122
        newLabel.setStringByStrings(strings);
    }
    // source line 387, bytecode pc 141
    newLabel.setTag(labelTag);
    // source line 388, bytecode pc 171
    newLabel.setAnchorPoint(oldLabel.getAnchorPoint());
    // source line 389, bytecode pc 201
    newLabel.setPosition(oldLabel.getPosition());
    // source line 390, bytecode pc 218
    oldLabel.removeFromParent(true);
    // source line 391, bytecode pc 237
    ccbNode.addChild(newLabel);
    // source line 393, bytecode pc 241
    return newLabel;
});
// source line 397, bytecode pc 650
(xs.Utils.getChildByTag = function(ccbNode, tag) {
    var node;
    // source line 398, bytecode pc 21
    (node = ccbNode.getChildByTag(tag));
    // source line 399, bytecode pc 52
    xs.assert(node, "xs.Utils.getChildByTag error!", tag);
    // source line 400, bytecode pc 56
    return node;
});
// source line 405, bytecode pc 671
(xs.Utils.isSet = function(param) {
    if (((undefined == param) || (null == param))) {
        // source line 407, bytecode pc 26
        return false;
    }
    // source line 409, bytecode pc 28
    return true;
});
// source line 414, bytecode pc 692
(xs.Utils.isEmpty = function(param) {
    if (!xs.Utils.isSet(param)) {
        // source line 418, bytecode pc 32
        return true;
    }
    if ((((xs.Utils.getType(param) == "object") && xs.Utils.isEmptyObject(param)) || (((xs.Utils.getType(param) == "array") && (0 == param.length)) || (("" == param) || (0 == param))))) {
        // source line 425, bytecode pc 180
        return true;
    }
    // source line 428, bytecode pc 182
    return false;
});
// source line 432, bytecode pc 713
(xs.Utils.isEmptyObject = function(param) {
    var name;
    for (var name in param) {
        if (!(param.hasOwnProperty(name))) continue;
        // source line 434, bytecode pc 40
        return false;
    }
    // source line 436, bytecode pc 52
    return true;
});
// source line 440, bytecode pc 734
(xs.Utils.isJsonString = function(str) {
    try {
        // source line 442, bytecode pc 21
        JSON.parse(str);
    } catch (e) {
        // source line 444, bytecode pc 38
        return false;
    }
    // source line 446, bytecode pc 53
    return true;
});
// source line 450, bytecode pc 755
(xs.Utils.size = function(obj) {
    var _size, i;
    // source line 451, bytecode pc 4
    (_size = 0);
    for (var i in obj) {
        if (!(obj.hasOwnProperty(i))) continue;
        // source line 454, bytecode pc 57
        (_size = (+_size + 1));
    }
    // source line 457, bytecode pc 70
    return _size;
});
