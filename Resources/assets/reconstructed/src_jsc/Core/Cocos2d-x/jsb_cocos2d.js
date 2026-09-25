// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Core/Cocos2d-x/jsb_cocos2d.js:1
// source line 5, bytecode pc 0
var cc;
// source line 6, bytecode pc 5
var window;
// source line 531, bytecode pc 10
var sys;
// source line 734, bytecode pc 15
var ConfigType;
// source line 739, bytecode pc 20
var __onParseConfig;
// source line 851, bytecode pc 25
var _windowTimeIntervalId;
// source line 852, bytecode pc 30
var _windowTimeFunHash;
// source line 853, bytecode pc 35
var WindowTimeFun;
// source line 878, bytecode pc 40
var setTimeout;
// source line 891, bytecode pc 45
var setInterval;
// source line 902, bytecode pc 50
var clearInterval;
// source line 909, bytecode pc 55
var clearTimeout;
// source line 5, bytecode pc 87
(cc = (cc || {}));
// source line 6, bytecode pc 110
(window = (window || this));
// source line 23, bytecode pc 202
(cc.TARGET_PLATFORM = {
    WINDOWS: 0,
    LINUX: 1,
    MACOS: 2,
    ANDROID: 3,
    IPHONE: 4,
    IPAD: 5,
    BLACKBERRY: 6,
    NACL: 7,
    EMSCRIPTEN: 8,
    MOBILE_BROWSER: 100,
    PC_BROWSER: 101
});
// source line 26, bytecode pc 214
(cc.LANGUAGE_ENGLISH = 0);
// source line 27, bytecode pc 226
(cc.LANGUAGE_CHINESE = 1);
// source line 28, bytecode pc 239
(cc.LANGUAGE_FRENCH = 2);
// source line 29, bytecode pc 252
(cc.LANGUAGE_ITALIAN = 3);
// source line 30, bytecode pc 265
(cc.LANGUAGE_GERMAN = 4);
// source line 31, bytecode pc 278
(cc.LANGUAGE_SPANISH = 5);
// source line 32, bytecode pc 291
(cc.LANGUAGE_RUSSIAN = 6);
// source line 33, bytecode pc 304
(cc.LANGUAGE_KOREAN = 7);
// source line 34, bytecode pc 317
(cc.LANGUAGE_JAPANESE = 8);
// source line 35, bytecode pc 330
(cc.LANGUAGE_HUNGARIAN = 9);
// source line 36, bytecode pc 343
(cc.LANGUAGE_PORTUGUESE = 10);
// source line 37, bytecode pc 356
(cc.LANGUAGE_ARABIC = 11);
// source line 39, bytecode pc 368
(cc.DIRECTOR_PROJECTION_2D = 0);
// source line 40, bytecode pc 380
(cc.DIRECTOR_PROJECTION_3D = 1);
// source line 42, bytecode pc 392
(cc.TEXTURE_PIXELFORMAT_RGBA8888 = 0);
// source line 43, bytecode pc 404
(cc.TEXTURE_PIXELFORMAT_RGB888 = 1);
// source line 44, bytecode pc 417
(cc.TEXTURE_PIXELFORMAT_RGB565 = 2);
// source line 45, bytecode pc 430
(cc.TEXTURE_PIXELFORMAT_A8 = 3);
// source line 46, bytecode pc 443
(cc.TEXTURE_PIXELFORMAT_I8 = 4);
// source line 47, bytecode pc 456
(cc.TEXTURE_PIXELFORMAT_AI88 = 5);
// source line 48, bytecode pc 469
(cc.TEXTURE_PIXELFORMAT_RGBA4444 = 6);
// source line 49, bytecode pc 482
(cc.TEXTURE_PIXELFORMAT_RGB5A1 = 7);
// source line 50, bytecode pc 495
(cc.TEXTURE_PIXELFORMAT_PVRTC4 = 8);
// source line 51, bytecode pc 508
(cc.TEXTURE_PIXELFORMAT_PVRTC4 = 9);
// source line 52, bytecode pc 529
(cc.TEXTURE_PIXELFORMAT_DEFAULT = cc.TEXTURE_PIXELFORMAT_RGBA8888);
// source line 54, bytecode pc 541
(cc.TEXT_ALIGNMENT_LEFT = 0);
// source line 55, bytecode pc 553
(cc.TEXT_ALIGNMENT_CENTER = 1);
// source line 56, bytecode pc 566
(cc.TEXT_ALIGNMENT_RIGHT = 2);
// source line 58, bytecode pc 578
(cc.VERTICAL_TEXT_ALIGNMENT_TOP = 0);
// source line 59, bytecode pc 590
(cc.VERTICAL_TEXT_ALIGNMENT_CENTER = 1);
// source line 60, bytecode pc 603
(cc.VERTICAL_TEXT_ALIGNMENT_BOTTOM = 2);
// source line 62, bytecode pc 615
(cc.IMAGE_FORMAT_JPEG = 0);
// source line 63, bytecode pc 627
(cc.IMAGE_FORMAT_PNG = 0);
// source line 65, bytecode pc 639
(cc.PROGRESS_TIMER_TYPE_RADIAL = 0);
// source line 66, bytecode pc 651
(cc.PROGRESS_TIMER_TYPE_BAR = 1);
// source line 68, bytecode pc 663
(cc.PARTICLE_TYPE_FREE = 0);
// source line 69, bytecode pc 675
(cc.PARTICLE_TYPE_RELATIVE = 1);
// source line 70, bytecode pc 688
(cc.PARTICLE_TYPE_GROUPED = 2);
// source line 71, bytecode pc 701
(cc.PARTICLE_DURATION_INFINITY = -1);
// source line 72, bytecode pc 713
(cc.PARTICLE_MODE_GRAVITY = 0);
// source line 73, bytecode pc 725
(cc.PARTICLE_MODE_RADIUS = 1);
// source line 74, bytecode pc 738
(cc.PARTICLE_START_SIZE_EQUAL_TO_END_SIZE = -1);
// source line 75, bytecode pc 751
(cc.PARTICLE_START_RADIUS_EQUAL_TO_END_RADIUS = -1);
// source line 77, bytecode pc 763
(cc.TOUCH_ALL_AT_ONCE = 0);
// source line 78, bytecode pc 775
(cc.TOUCH_ONE_BY_ONE = 1);
// source line 80, bytecode pc 791
(cc.TMX_TILE_HORIZONTAL_FLAG = 2147483648);
// source line 81, bytecode pc 807
(cc.TMX_TILE_VERTICAL_FLAG = 1073741824);
// source line 82, bytecode pc 823
(cc.TMX_TILE_DIAGONAL_FLAG = 536870912);
// source line 84, bytecode pc 835
(cc.TRANSITION_ORIENTATION_LEFT_OVER = 0);
// source line 85, bytecode pc 847
(cc.TRANSITION_ORIENTATION_RIGHT_OVER = 1);
// source line 86, bytecode pc 859
(cc.TRANSITION_ORIENTATION_UP_OVER = 0);
// source line 87, bytecode pc 871
(cc.TRANSITION_ORIENTATION_DOWN_OVER = 1);
// source line 89, bytecode pc 908
(cc.RED = { r: 255, g: 0, b: 0 });
// source line 90, bytecode pc 945
(cc.GREEN = { r: 0, g: 255, b: 0 });
// source line 91, bytecode pc 982
(cc.BLUE = { r: 0, g: 0, b: 255 });
// source line 92, bytecode pc 1017
(cc.BLACK = { r: 0, g: 0, b: 0 });
// source line 93, bytecode pc 1058
(cc.WHITE = { r: 255, g: 255, b: 255 });
// source line 94, bytecode pc 1097
(cc.YELLOW = { r: 255, g: 255, b: 0 });
// source line 96, bytecode pc 1126
(cc.POINT_ZERO = { x: 0, y: 0 });
// source line 105, bytecode pc 1142
(cc.REPEAT_FOREVER = 4294967295);
// source line 107, bytecode pc 1154
(cc.MENU_STATE_WAITING = 0);
// source line 108, bytecode pc 1166
(cc.MENU_STATE_TRACKING_TOUCH = 1);
// source line 109, bytecode pc 1179
(cc.MENU_HANDLER_PRIORITY = -128);
// source line 110, bytecode pc 1192
(cc.DEFAULT_PADDING = 5);
// source line 113, bytecode pc 1296
(cc._reuse_p = [ { x: 0, y: 0 }, { x: 0, y: 0 }, { x: 0, y: 0 }, { x: 0, y: 0 } ]);
// source line 114, bytecode pc 1308
(cc._reuse_p_index = 0);
// source line 115, bytecode pc 1337
(cc._reuse_size = { width: 0, height: 0 });
// source line 116, bytecode pc 1378
(cc._reuse_rect = { x: 0, y: 0, width: 0, height: 0 });
// source line 117, bytecode pc 1419
(cc._reuse_color3b = { r: 255, g: 255, b: 255 });
// source line 118, bytecode pc 1468
(cc._reuse_color4b = { r: 255, g: 255, b: 255, a: 255 });
// source line 119, bytecode pc 1516
(cc.log = (cc._cocosplayerLog || (cc.log || log)));
// source line 124, bytecode pc 1532
(cc.c3b = function(r, g, b) {
    var arguments;
    // source line 124, bytecode pc 4
    (arguments = arguments);
    // source line 126, bytecode pc 13
    switch (arguments.length) {
        case 2:
        /* TODO_BYTECODE pc=13 opcode=tableswitch reason=tableswitch_target_invalid */
        break;
        case 0:
        // source line 128, bytecode pc 66
        return { r: 0, g: 0, b: 0 }
        case 1:
        if ((r && (r instanceof cc.c3b))) {
            // source line 131, bytecode pc 140
            return { r: r.r, g: r.g, b: r.b }
        } else {
            // source line 133, bytecode pc 170
            return { r: 0, g: 0, b: 0 }
        }
        break;
        case 3:
        // source line 136, bytecode pc 201
        return { r: r, g: g, b: b }
        default:
        // source line 138, bytecode pc 207
        throw "unknown argument type";
        break;
    }
});
// source line 143, bytecode pc 1548
(cc.integerToColor3B = function(intValue) {
    var offset, retColor;
    // source line 144, bytecode pc 13
    (intValue = (intValue || 0));
    // source line 146, bytecode pc 20
    (offset = 255);
    // source line 147, bytecode pc 48
    (retColor = { r: 0, g: 0, b: 0 });
    // source line 148, bytecode pc 64
    (retColor.r = (intValue & offset));
    // source line 149, bytecode pc 83
    (retColor.g = ((intValue >> 8) & offset));
    // source line 150, bytecode pc 102
    (retColor.b = ((intValue >> 16) & offset));
    // source line 151, bytecode pc 106
    return retColor;
});
// source line 154, bytecode pc 1564
(cc._c3b = function(r, g, b) {
    // source line 156, bytecode pc 18
    (cc._reuse_color3b.r = r);
    // source line 157, bytecode pc 37
    (cc._reuse_color3b.g = g);
    // source line 158, bytecode pc 56
    (cc._reuse_color3b.b = b);
    // source line 159, bytecode pc 67
    return cc._reuse_color3b;
});
// source line 162, bytecode pc 1580
(cc.c3BEqual = function(color1, color2) {
    // source line 163, bytecode pc 63
    return ((color1.r === color2.r) && ((color1.g === color2.g) && (color1.b === color2.b)));
});
// source line 166, bytecode pc 1596
(cc.white = function() {
    // source line 167, bytecode pc 28
    return cc.c3b(255, 255, 255);
});
// source line 170, bytecode pc 1612
(cc.yellow = function() {
    // source line 171, bytecode pc 26
    return cc.c3b(255, 255, 0);
});
// source line 174, bytecode pc 1628
(cc.blue = function() {
    // source line 175, bytecode pc 24
    return cc.c3b(0, 0, 255);
});
// source line 178, bytecode pc 1644
(cc.green = function() {
    // source line 179, bytecode pc 24
    return cc.c3b(0, 255, 0);
});
// source line 182, bytecode pc 1660
(cc.red = function() {
    // source line 183, bytecode pc 24
    return cc.c3b(255, 0, 0);
});
// source line 186, bytecode pc 1676
(cc.magenta = function() {
    // source line 187, bytecode pc 26
    return cc.c3b(255, 0, 255);
});
// source line 190, bytecode pc 1692
(cc.black = function() {
    // source line 191, bytecode pc 22
    return cc.c3b(0, 0, 0);
});
// source line 194, bytecode pc 1708
(cc.orange = function() {
    // source line 195, bytecode pc 25
    return cc.c3b(255, 127, 0);
});
// source line 198, bytecode pc 1724
(cc.gray = function() {
    // source line 199, bytecode pc 28
    return cc.c3b(166, 166, 166);
});
// source line 205, bytecode pc 1740
(cc.c4b = function(r, g, b, a) {
    // source line 206, bytecode pc 38
    return { r: r, g: g, b: b, a: a }
});
// source line 209, bytecode pc 1756
(cc._c4b = function(r, g, b, a) {
    // source line 211, bytecode pc 18
    (cc._reuse_color4b.r = r);
    // source line 212, bytecode pc 37
    (cc._reuse_color4b.g = g);
    // source line 213, bytecode pc 56
    (cc._reuse_color4b.b = b);
    // source line 214, bytecode pc 75
    (cc._reuse_color4b.a = a);
    // source line 215, bytecode pc 86
    return cc._reuse_color4b;
});
// source line 218, bytecode pc 1777
(cc.c4 = cc.c4b);
// source line 219, bytecode pc 1798
(cc._c4 = cc._c4b);
// source line 221, bytecode pc 1814
(cc.c4f = function(r, g, b, a) {
    // source line 222, bytecode pc 38
    return { r: r, g: g, b: b, a: a }
});
// source line 225, bytecode pc 1830
(cc.c4FFromccc3B = function(c) {
    // source line 226, bytecode pc 57
    return cc.c4f((c.r / 255), (c.g / 255), (c.b / 255), 1);
});
// source line 229, bytecode pc 1846
(cc.c4FFromccc4B = function(c) {
    // source line 230, bytecode pc 68
    return cc.c4f((c.r / 255), (c.g / 255), (c.b / 255), (c.a / 255));
});
// source line 233, bytecode pc 1862
(cc.c4BFromccc4F = function(c) {
    // source line 234, bytecode pc 76
    return cc.c4f((0 | (c.r * 255)), (0 | (c.g * 255)), (0 | (c.b * 255)), (0 | (c.a * 255)));
});
// source line 237, bytecode pc 1878
(cc.c4FEqual = function(a, b) {
    // source line 238, bytecode pc 86
    return ((a.r == b.r) && ((a.g == b.g) && ((a.b == b.b) && (a.a == b.a))));
});
// source line 247, bytecode pc 1894
(cc.convertColor3BtoHexString = function(clr) {
    var hR, hG, hB, stClr;
    // source line 248, bytecode pc 25
    (hR = clr.r.toString(16));
    // source line 249, bytecode pc 51
    (hG = clr.g.toString(16));
    // source line 250, bytecode pc 77
    (hB = clr.b.toString(16));
    // source line 251, bytecode pc 188
    (stClr = ((("#" + ((clr.r < 16) ? ("0" + hR) : hR)) + ((clr.g < 16) ? ("0" + hG) : hG)) + ((clr.b < 16) ? ("0" + hB) : hB)));
    // source line 252, bytecode pc 192
    return stClr;
});
// source line 258, bytecode pc 1910
(cc.p = function(x, y) {
    // source line 260, bytecode pc 22
    return { x: x, y: y }
});
// source line 262, bytecode pc 1926
(cc._p = function(x, y) {
    var p;
    if ((cc._reuse_p_index == cc._reuse_p.length)) {
        // source line 265, bytecode pc 42
        (cc._reuse_p_index = 0);
    }
    // source line 267, bytecode pc 67
    (p = cc._reuse_p[cc._reuse_p_index]);
    // source line 268, bytecode pc 98
    cc._reuse_p_index++;
    // source line 269, bytecode pc 110
    (p.x = x);
    // source line 270, bytecode pc 122
    (p.y = y);
    // source line 271, bytecode pc 126
    return p;
});
// source line 274, bytecode pc 1942
(cc.pointEqualToPoint = function(point1, point2) {
    // source line 275, bytecode pc 40
    return ((point1.x == point2.x) && (point1.y == point2.y));
});
// source line 278, bytecode pc 1958
(cc.PointZero = function() {
    // source line 279, bytecode pc 20
    return cc.p(0, 0);
});
// source line 285, bytecode pc 1974
(cc._g = function(x, y) {
    // source line 287, bytecode pc 18
    (cc._reuse_grid.x = x);
    // source line 288, bytecode pc 37
    (cc._reuse_grid.y = y);
    // source line 289, bytecode pc 48
    return cc._reuse_grid;
});
// source line 295, bytecode pc 1990
(cc.size = function(w, h) {
    // source line 297, bytecode pc 22
    return { width: w, height: h }
});
// source line 299, bytecode pc 2006
(cc._size = function(w, h) {
    // source line 301, bytecode pc 18
    (cc._reuse_size.width = w);
    // source line 302, bytecode pc 37
    (cc._reuse_size.height = h);
    // source line 303, bytecode pc 48
    return cc._reuse_size;
});
// source line 305, bytecode pc 2022
(cc.sizeEqualToSize = function(size1, size2) {
    // source line 307, bytecode pc 40
    return ((size1.width == size2.width) && (size1.height == size2.height));
});
// source line 309, bytecode pc 2038
(cc.SizeZero = function() {
    // source line 310, bytecode pc 20
    return cc.size(0, 0);
});
// source line 316, bytecode pc 2054
(cc.rect = function(x, y, w, h) {
    // source line 318, bytecode pc 38
    return { x: x, y: y, width: w, height: h }
});
// source line 320, bytecode pc 2070
(cc._rect = function(x, y, w, h) {
    // source line 322, bytecode pc 18
    (cc._reuse_rect.x = x);
    // source line 323, bytecode pc 37
    (cc._reuse_rect.y = y);
    // source line 324, bytecode pc 56
    (cc._reuse_rect.width = w);
    // source line 325, bytecode pc 75
    (cc._reuse_rect.height = h);
    // source line 326, bytecode pc 86
    return cc._reuse_rect;
});
// source line 328, bytecode pc 2086
(cc.rectEqualToRect = function(rect1, rect2) {
    // source line 329, bytecode pc 86
    return ((rect1.x == rect2.x) && ((rect1.y == rect2.y) && ((rect1.width == rect2.width) && (rect1.height == rect2.height))));
});
// source line 332, bytecode pc 2102
(cc.rectContainsRect = function(rect1, rect2) {
    if (((rect1.x >= rect2.x) || ((rect1.y >= rect2.y) || (((rect1.x + rect1.width) <= (rect2.x + rect2.width)) || ((rect1.y + rect1.height) <= (rect2.y + rect2.height)))))) {
        // source line 336, bytecode pc 128
        return false;
    }
    // source line 337, bytecode pc 130
    return true;
});
// source line 340, bytecode pc 2118
(cc.rectGetMaxX = function(rect) {
    // source line 341, bytecode pc 17
    return (rect.x + rect.width);
});
// source line 344, bytecode pc 2134
(cc.rectGetMidX = function(rect) {
    // source line 345, bytecode pc 20
    return (rect.x + (rect.width / 2));
});
// source line 348, bytecode pc 2150
(cc.rectGetMinX = function(rect) {
    // source line 349, bytecode pc 8
    return rect.x;
});
// source line 352, bytecode pc 2166
(cc.rectGetMaxY = function(rect) {
    // source line 353, bytecode pc 17
    return (rect.y + rect.height);
});
// source line 356, bytecode pc 2182
(cc.rectGetMidY = function(rect) {
    // source line 357, bytecode pc 20
    return (rect.y + (rect.height / 2));
});
// source line 360, bytecode pc 2198
(cc.rectGetMinY = function(rect) {
    // source line 361, bytecode pc 8
    return rect.y;
});
// source line 364, bytecode pc 2214
(cc.rectContainsPoint = function(rect, point) {
    var ret;
    // source line 365, bytecode pc 4
    (ret = false);
    if (((point.x >= rect.x) && ((point.x <= (rect.x + rect.width)) && ((point.y >= rect.y) && (point.y <= (rect.y + rect.height)))))) {
        // source line 368, bytecode pc 118
        (ret = true);
    }
    // source line 370, bytecode pc 122
    return ret;
});
// source line 373, bytecode pc 2230
(cc.rectIntersectsRect = function(rectA, rectB) {
    var bool;
    // source line 378, bytecode pc 126
    (bool = !((rectA.x > (rectB.x + rectB.width)) || (((rectA.x + rectA.width) < rectB.x) || ((rectA.y > (rectB.y + rectB.height)) || ((rectA.y + rectA.height) < rectB.y)))));
    // source line 380, bytecode pc 130
    return bool;
});
// source line 383, bytecode pc 2246
(cc.rectUnion = function(rectA, rectB) {
    var rect;
    // source line 384, bytecode pc 27
    (rect = cc.rect(0, 0, 0, 0));
    // source line 385, bytecode pc 70
    (rect.x = Math.min(rectA.x, rectB.x));
    // source line 386, bytecode pc 113
    (rect.y = Math.min(rectA.y, rectB.y));
    // source line 387, bytecode pc 183
    (rect.width = (Math.max((rectA.x + rectA.width), (rectB.x + rectB.width)) - rect.x));
    // source line 388, bytecode pc 253
    (rect.height = (Math.max((rectA.y + rectA.height), (rectB.y + rectB.height)) - rect.y));
    // source line 389, bytecode pc 257
    return rect;
});
// source line 392, bytecode pc 2262
(cc.rectIntersection = function(rectA, rectB) {
    var intersection;
    // source line 396, bytecode pc 93
    (intersection = cc.rect(Math.max(rectA.x, rectB.x), Math.max(rectA.y, rectB.y), 0, 0));
    // source line 398, bytecode pc 163
    (intersection.width = (Math.min((rectA.x + rectA.width), (rectB.x + rectB.width)) - intersection.x));
    // source line 399, bytecode pc 233
    (intersection.height = (Math.min((rectA.y + rectA.height), (rectB.y + rectB.height)) - intersection.y));
    // source line 400, bytecode pc 237
    return intersection;
});
// source line 403, bytecode pc 2278
(cc.RectZero = function() {
    // source line 404, bytecode pc 24
    return cc.rect(0, 0, 0, 0);
});
// source line 478, bytecode pc 2652
(cc.VisibleRect = {
    _topLeft: cc.p(0, 0),
    _topRight: cc.p(0, 0),
    _top: cc.p(0, 0),
    _bottomLeft: cc.p(0, 0),
    _bottomRight: cc.p(0, 0),
    _bottom: cc.p(0, 0),
    _center: cc.p(0, 0),
    _left: cc.p(0, 0),
    _right: cc.p(0, 0),
    _width: 0,
    _height: 0,
    init: function(size) {
    var w, h;
    // source line 420, bytecode pc 14
    (this._width = size.width);
    // source line 421, bytecode pc 29
    (this._height = size.height);
    // source line 423, bytecode pc 39
    (w = this._width);
    // source line 424, bytecode pc 49
    (h = this._height);
    // source line 427, bytecode pc 64
    (this._topLeft.y = h);
    // source line 428, bytecode pc 79
    (this._topRight.x = w);
    // source line 429, bytecode pc 94
    (this._topRight.y = h);
    // source line 430, bytecode pc 112
    (this._top.x = (w / 2));
    // source line 431, bytecode pc 127
    (this._top.y = h);
    // source line 434, bytecode pc 142
    (this._bottomRight.x = w);
    // source line 435, bytecode pc 160
    (this._bottom.x = (w / 2));
    // source line 438, bytecode pc 178
    (this._center.x = (w / 2));
    // source line 439, bytecode pc 196
    (this._center.y = (h / 2));
    // source line 442, bytecode pc 214
    (this._left.y = (h / 2));
    // source line 445, bytecode pc 229
    (this._right.x = w);
    // source line 446, bytecode pc 247
    (this._right.y = (h / 2));
},
    getWidth: function() {
    // source line 449, bytecode pc 6
    return this._width;
},
    getHeight: function() {
    // source line 452, bytecode pc 6
    return this._height;
},
    topLeft: function() {
    // source line 455, bytecode pc 6
    return this._topLeft;
},
    topRight: function() {
    // source line 458, bytecode pc 6
    return this._topRight;
},
    top: function() {
    // source line 461, bytecode pc 6
    return this._top;
},
    bottomLeft: function() {
    // source line 464, bytecode pc 6
    return this._bottomLeft;
},
    bottomRight: function() {
    // source line 467, bytecode pc 6
    return this._bottomRight;
},
    bottom: function() {
    // source line 470, bytecode pc 6
    return this._bottom;
},
    center: function() {
    // source line 473, bytecode pc 6
    return this._center;
},
    left: function() {
    // source line 476, bytecode pc 6
    return this._left;
},
    right: function() {
    // source line 479, bytecode pc 6
    return this._right;
}
});
// source line 494, bytecode pc 2668
(cc.ArrayGetIndexOfObject = function(arr, findObj) {
    var i;
    // source line 495, bytecode pc 4
    (i = 0);
    while ((i < arr.length)) {
        if ((arr[i] == findObj)) {
            // source line 497, bytecode pc 30
            return i;
        }
        // source line 495, bytecode pc 45
        i++;
    }
    // source line 499, bytecode pc 66
    return -1;
});
// source line 509, bytecode pc 2684
(cc.ArrayContainsObject = function(arr, findObj) {
    // source line 510, bytecode pc 27
    return (cc.ArrayGetIndexOfObject(arr, findObj) != -1);
});
// source line 513, bytecode pc 2700
(cc.ArrayRemoveObject = function(arr, delObj) {
    var i;
    // source line 514, bytecode pc 4
    (i = 0);
    while ((i < arr.length)) {
        if ((arr[i] == delObj)) {
            // source line 516, bytecode pc 47
            arr.splice(i, 1);
        }
        // source line 514, bytecode pc 62
        i++;
    }
});
// source line 524, bytecode pc 2716
(cc.dump = function(obj) {
    var i;
    for (var i in obj) {
        // source line 527, bytecode pc 50
        cc.log(((i + " = ") + obj[i]));
    }
});
// source line 531, bytecode pc 2743
(sys = (sys || undefined));
// source line 532, bytecode pc 2759
(cc.dumpConfig = function() {
    if (sys) {
        // source line 535, bytecode pc 32
        cc.dump(sys);
        // source line 536, bytecode pc 60
        cc.dump(sys.capabilities);
    }
});
// source line 544, bytecode pc 2780
(cc.MenuItemToggle.create = function() {
    var n, args, obj, func, item, arguments;
    // source line 544, bytecode pc 4
    (arguments = arguments);
    // source line 546, bytecode pc 16
    (n = arguments.length);
    if (((typeof(arguments[(n - 2)]) === "function") || (typeof(arguments[(n - 1)]) === "function"))) {
        // source line 549, bytecode pc 94
        (args = Array.prototype.slice.call(arguments));
        // source line 550, bytecode pc 99
        (obj = null);
        if ((typeof(arguments[(n - 2)]) === "function")) {
            // source line 552, bytecode pc 139
            (obj = args.pop());
        }
        // source line 554, bytecode pc 157
        (func = args.pop());
        // source line 557, bytecode pc 193
        (item = cc.MenuItemToggle._create.apply(this, args));
        if ((obj !== null)) {
            // source line 561, bytecode pc 226
            item.setCallback(func, obj);
        } else {
            // source line 563, bytecode pc 250
            item.setCallback(func);
        }
        // source line 564, bytecode pc 254
        return item;
    } else {
        // source line 566, bytecode pc 292
        return cc.MenuItemToggle._create.apply(this, arguments);
    }
});
// source line 571, bytecode pc 2801
(cc.LabelAtlas.create = function(a, b, c, d, e) {
    var n, arguments;
    // source line 571, bytecode pc 4
    (arguments = arguments);
    // source line 573, bytecode pc 16
    (n = arguments.length);
    if ((n == 5)) {
        // source line 576, bytecode pc 82
        return cc.LabelAtlas._create(a, b, c, d, e.charCodeAt(0));
    } else {
        // source line 578, bytecode pc 120
        return cc.LabelAtlas._create.apply(this, arguments);
    }
});
// source line 582, bytecode pc 2832
(cc.LayerMultiplex.create = cc.LayerMultiplex.createWithArray);
// source line 591, bytecode pc 2848
(cc.associateWithNative = function(jsobj, superclass_or_instance) {
});
// source line 599, bytecode pc 2864
(cc.inherits = function(childCtor, parentCtor) {
    var tempCtor;
    // source line 601, bytecode pc 8
    (tempCtor = function() {
});
    // source line 602, bytecode pc 25
    (tempCtor.prototype = parentCtor.prototype);
    // source line 603, bytecode pc 42
    (childCtor.superClass_ = parentCtor.prototype);
    // source line 604, bytecode pc 59
    (childCtor.prototype = new tempCtor());
    // source line 605, bytecode pc 76
    (childCtor.prototype.constructor = childCtor);
});
// source line 612, bytecode pc 2880
(cc.base = function(me, opt_methodName, var_args) {
    var caller, args, foundCaller, ctor, arguments;
    // source line 612, bytecode pc 4
    (arguments = arguments);
    // source line 613, bytecode pc 21
    (caller = arguments.callee.caller);
    if (caller.superClass_) {
        // source line 616, bytecode pc 106
        (ret = caller.superClass_.constructor.apply(me, Array.prototype.slice.call(arguments, 1)));
        // source line 617, bytecode pc 112
        return ret;
    }
    // source line 620, bytecode pc 149
    (args = Array.prototype.slice.call(arguments, 2));
    // source line 621, bytecode pc 154
    (foundCaller = false);
    // source line 622, bytecode pc 166
    (ctor = me.constructor);
    while (ctor) {
        if ((ctor.prototype[opt_methodName] === caller)) {
            // source line 625, bytecode pc 198
            (foundCaller = true);
        } else {
            if (foundCaller) {
                // source line 627, bytecode pc 243
                return ctor.prototype[opt_methodName].apply(me, args);
            }
        }
        // source line 623, bytecode pc 274
        (ctor = (ctor.superClass_ && ctor.superClass_.constructor));
    }
    if ((me[opt_methodName] === caller)) {
        // source line 636, bytecode pc 336
        return me.constructor.prototype[opt_methodName].apply(me, args);
    } else {
        // source line 639, bytecode pc 362
        throw Error("cc.base called from a method of one name to a method of a different name");
    }
});
// source line 649, bytecode pc 2896
(cc.Class = function() {
});
// source line 650, bytecode pc 2917
(cc.Class.extend = function(prop) {
    var _super, prototype, name, Class, arguments;
    // source line 650, bytecode pc 4
    (arguments = arguments);
    // source line 685, bytecode pc 13
    (Class = function() {
    var arguments;
    // source line 685, bytecode pc 4
    (arguments = arguments);
    if ((!initializing && this.ctor)) {
        // source line 688, bytecode pc 51
        this.ctor.apply(this, arguments);
    }
});
    // source line 651, bytecode pc 29
    (_super = this.prototype);
    // source line 655, bytecode pc 41
    (initializing = true);
    // source line 656, bytecode pc 51
    (prototype = new this());
    // source line 657, bytecode pc 63
    (initializing = false);
    /* TODO_BYTECODE pc=69 opcode=regexp reason=regexp_object_literal_not_dumped */
    if (undefined /* TODO_BYTECODE pc=69 opcode=regexp reason=regexp_object_literal_not_dumped */.test(function() {
})) {
        /* TODO_BYTECODE pc=96 opcode=regexp reason=regexp_object_literal_not_dumped */
    } else {
        /* TODO_BYTECODE pc=106 opcode=regexp reason=regexp_object_literal_not_dumped */
    }
    // source line 658, bytecode pc 116
    (fnTest = undefined /* TODO_BYTECODE stack_merge_pc_91 */);
    for (var name in prop) {
        // source line 681, bytecode pc 249
        (prototype[name] = (((typeof(prop[name]) == "function") && ((typeof(_super[name]) == "function") && fnTest.test(prop[name]))) ? (function(name, fn) {
    // source line 666, bytecode pc 5
    return function() {
    var tmp, ret, arguments;
    // source line 666, bytecode pc 4
    (arguments = arguments);
    // source line 667, bytecode pc 14
    (tmp = this._super);
    // source line 671, bytecode pc 40
    (this._super = _super[name]);
    // source line 675, bytecode pc 70
    (ret = fn.apply(this, arguments));
    // source line 676, bytecode pc 80
    (this._super = tmp);
    // source line 678, bytecode pc 84
    return ret;
}
}).call(void 0, name, prop[name]) : prop[name]));
    }
    // source line 692, bytecode pc 269
    (Class.prototype = prototype);
    // source line 695, bytecode pc 286
    (Class.prototype.constructor = Class);
    // source line 698, bytecode pc 303
    (Class.extend = arguments.callee);
    // source line 700, bytecode pc 307
    return Class;
});
// source line 703, bytecode pc 2948
(cc.Node.extend = cc.Class.extend);
// source line 704, bytecode pc 2979
(cc.Layer.extend = cc.Class.extend);
// source line 705, bytecode pc 3010
(cc.LayerGradient.extend = cc.Class.extend);
// source line 706, bytecode pc 3041
(cc.LayerColor.extend = cc.Class.extend);
// source line 707, bytecode pc 3072
(cc.Sprite.extend = cc.Class.extend);
// source line 708, bytecode pc 3103
(cc.MenuItemFont.extend = cc.Class.extend);
// source line 709, bytecode pc 3134
(cc.Scene.extend = cc.Class.extend);
// source line 710, bytecode pc 3165
(cc.DrawNode.extend = cc.Class.extend);
// source line 715, bytecode pc 3214
(cc.Loader = cc.Class.extend({
    initWith: function(resources, selector, target) {
    if (selector) {
        // source line 717, bytecode pc 17
        (this._selector = selector);
        // source line 718, bytecode pc 27
        (this._target = target);
    }
    // source line 720, bytecode pc 52
    this._selector.call(this._target);
}
}));
// source line 724, bytecode pc 3235
(cc.Loader.preload = function(resources, selector, target) {
    if (!this._instance) {
        // source line 726, bytecode pc 33
        (this._instance = new cc.Loader());
    }
    // source line 728, bytecode pc 63
    this._instance.initWith(resources, selector, target);
    // source line 729, bytecode pc 70
    return this._instance;
});
// source line 732, bytecode pc 3256
(cc.LoaderScene = cc.Loader);
// source line 736, bytecode pc 3285
(ConfigType = { NONE: 0, COCOSTUDIO: 1 });
// source line 739, bytecode pc 3301
(__onParseConfig = function(type, str) {
    if ((type === ConfigType.COCOSTUDIO)) {
        // source line 741, bytecode pc 72
        ccs.TriggerMng.getInstance().parse(JSON.parse(str));
    }
});
// source line 845, bytecode pc 3691
(cc.VisibleRect = {
    _topLeft: cc.p(0, 0),
    _topRight: cc.p(0, 0),
    _top: cc.p(0, 0),
    _bottomLeft: cc.p(0, 0),
    _bottomRight: cc.p(0, 0),
    _bottom: cc.p(0, 0),
    _center: cc.p(0, 0),
    _left: cc.p(0, 0),
    _right: cc.p(0, 0),
    _width: 0,
    _height: 0,
    _isInitialized: false,
    init: function() {
    var director, origin, size, x, y, w, h, left, right, middle;
    // source line 759, bytecode pc 24
    (director = cc.Director.getInstance());
    // source line 760, bytecode pc 42
    (origin = director.getVisibleOrigin());
    // source line 761, bytecode pc 60
    (size = director.getVisibleSize());
    // source line 763, bytecode pc 75
    (this._width = size.width);
    // source line 764, bytecode pc 90
    (this._height = size.height);
    // source line 766, bytecode pc 102
    (x = origin.x);
    // source line 767, bytecode pc 114
    (y = origin.y);
    // source line 768, bytecode pc 124
    (w = this._width);
    // source line 769, bytecode pc 134
    (h = this._height);
    // source line 771, bytecode pc 146
    (left = origin.x);
    // source line 772, bytecode pc 167
    (right = (origin.x + size.width));
    // source line 773, bytecode pc 191
    (middle = (origin.x + (size.width / 2)));
    // source line 776, bytecode pc 232
    (this._top.y = (this._topLeft.y = (this._topRight.y = (y + h))));
    // source line 777, bytecode pc 247
    (this._topLeft.x = left);
    // source line 778, bytecode pc 262
    (this._top.x = middle);
    // source line 779, bytecode pc 277
    (this._topRight.x = right);
    // source line 783, bytecode pc 314
    (this._bottom.y = (this._bottomRight.y = (this._bottomLeft.y = y)));
    // source line 784, bytecode pc 329
    (this._bottomLeft.x = left);
    // source line 785, bytecode pc 344
    (this._bottom.x = middle);
    // source line 786, bytecode pc 359
    (this._bottomRight.x = right);
    // source line 789, bytecode pc 403
    (this._right.y = (this._left.y = (this._center.y = (y + (h / 2)))));
    // source line 790, bytecode pc 418
    (this._center.x = middle);
    // source line 793, bytecode pc 433
    (this._left.x = left);
    // source line 796, bytecode pc 448
    (this._right.x = right);
},
    lazyInit: function() {
    if (!this._isInitialized) {
        // source line 801, bytecode pc 24
        this.init();
        // source line 802, bytecode pc 32
        (this._isInitialized = true);
    }
},
    getWidth: function() {
    // source line 806, bytecode pc 12
    this.lazyInit();
    // source line 807, bytecode pc 19
    return this._width;
},
    getHeight: function() {
    // source line 810, bytecode pc 12
    this.lazyInit();
    // source line 811, bytecode pc 19
    return this._height;
},
    topLeft: function() {
    // source line 814, bytecode pc 12
    this.lazyInit();
    // source line 815, bytecode pc 19
    return this._topLeft;
},
    topRight: function() {
    // source line 818, bytecode pc 12
    this.lazyInit();
    // source line 819, bytecode pc 19
    return this._topRight;
},
    top: function() {
    // source line 822, bytecode pc 12
    this.lazyInit();
    // source line 823, bytecode pc 19
    return this._top;
},
    bottomLeft: function() {
    // source line 826, bytecode pc 12
    this.lazyInit();
    // source line 827, bytecode pc 19
    return this._bottomLeft;
},
    bottomRight: function() {
    // source line 830, bytecode pc 12
    this.lazyInit();
    // source line 831, bytecode pc 19
    return this._bottomRight;
},
    bottom: function() {
    // source line 834, bytecode pc 12
    this.lazyInit();
    // source line 835, bytecode pc 19
    return this._bottom;
},
    center: function() {
    // source line 838, bytecode pc 12
    this.lazyInit();
    // source line 839, bytecode pc 19
    return this._center;
},
    left: function() {
    // source line 842, bytecode pc 12
    this.lazyInit();
    // source line 843, bytecode pc 19
    return this._left;
},
    right: function() {
    // source line 846, bytecode pc 12
    this.lazyInit();
    // source line 847, bytecode pc 19
    return this._right;
}
});
// source line 851, bytecode pc 3703
(_windowTimeIntervalId = 0);
// source line 852, bytecode pc 3720
(_windowTimeFunHash = {});
// source line 860, bytecode pc 3791
(WindowTimeFun = cc.Class.extend({
    _code: null,
    _intervalId: 0,
    ctor: function(code) {
    // source line 857, bytecode pc 35
    (this._intervalId = _windowTimeIntervalId++);
    // source line 858, bytecode pc 45
    (this._code = code);
},
    fun: function() {
    var code;
    if (!this._code) {
        // source line 861, bytecode pc 13
        return void 0;
    }
    // source line 862, bytecode pc 23
    (code = this._code);
    if ((typeof(code) == "string")) {
        // source line 864, bytecode pc 62
        (Function(code)).call(void 0);
    } else {
        if ((typeof(code) == "function")) {
            // source line 867, bytecode pc 91
            code();
        }
    }
}
}));
// source line 878, bytecode pc 3807
(setTimeout = function(code, delay) {
    var target;
    // source line 879, bytecode pc 17
    (target = new WindowTimeFun(code));
    // source line 880, bytecode pc 88
    cc.Director.getInstance().getScheduler().scheduleCallbackForTarget(target, target.fun, (delay / 1000), 0, 0, false);
    // source line 881, bytecode pc 106
    (_windowTimeFunHash[target._intervalId] = target);
    // source line 882, bytecode pc 115
    return target._intervalId;
});
// source line 891, bytecode pc 3823
(setInterval = function(code, delay) {
    var target;
    // source line 892, bytecode pc 17
    (target = new WindowTimeFun(code));
    // source line 893, bytecode pc 97
    cc.Director.getInstance().getScheduler().scheduleCallbackForTarget(target, target.fun, (delay / 1000), cc.REPEAT_FOREVER, 0, false);
    // source line 894, bytecode pc 115
    (_windowTimeFunHash[target._intervalId] = target);
    // source line 895, bytecode pc 124
    return target._intervalId;
});
// source line 902, bytecode pc 3839
(clearInterval = function(intervalId) {
    var target;
    // source line 903, bytecode pc 12
    (target = _windowTimeFunHash[intervalId]);
    if (target) {
        // source line 905, bytecode pc 77
        cc.Director.getInstance().getScheduler().unscheduleCallbackForTarget(target, target.fun);
        // source line 906, bytecode pc 87
        delete _windowTimeFunHash[intervalId];
    }
});
// source line 909, bytecode pc 3855
(clearTimeout = clearInterval);
