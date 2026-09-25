// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Utils/Base64.js:1
// source line 1, bytecode pc 20
(xs.Utils.UTF16TO8 = function(string) {
    // source line 2, bytecode pc 30
    return xs.Utils.Base64WithUtf8._utf8_encode(string);
});
// source line 5, bytecode pc 41
(xs.Utils.UTF8TO16 = function(utftext) {
    // source line 6, bytecode pc 30
    return xs.Utils.Base64WithUtf8._utf8_decode(utftext);
});
// source line 89, bytecode pc 134
(xs.Utils.Base64WithUtf8 = (xs.Utils.Base64WithUtf8 || {
    _keyStr: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",
    encode: function(input) {
    var output, chr1, chr2, chr3, enc1, enc2, enc3, enc4, i;
    // source line 16, bytecode pc 8
    (output = "");
    // source line 18, bytecode pc 41
    (i = 0);
    // source line 19, bytecode pc 61
    (input = this._utf8_encode(input));
    while ((i < input.length)) {
        // 原句是 chr1 = input.charCodeAt(i++); —— 后缀自增必须先取旧值再自增。
        // 恢复时曾把自增提到取值之前，等于丢掉第一个字符并按错位读取。
        // source line 21, bytecode pc 92
        (chr1 = input.charCodeAt(+i));
        (i = (+i + 1));
        // source line 22, bytecode pc 125
        (chr2 = input.charCodeAt(+i));
        (i = (+i + 1));
        // source line 23, bytecode pc 158
        (chr3 = input.charCodeAt(+i));
        (i = (+i + 1));
        // source line 24, bytecode pc 176
        (enc1 = (chr1 >> 2));
        // source line 25, bytecode pc 196
        (enc2 = (((chr1 & 3) << 4) | (chr2 >> 4)));
        // source line 26, bytecode pc 216
        (enc3 = (((chr2 & 15) << 2) | (chr3 >> 6)));
        // source line 27, bytecode pc 226
        (enc4 = (chr3 & 63));
        if (isNaN(chr2)) {
            // source line 29, bytecode pc 258
            (enc3 = (enc4 = 64));
        } else {
            if (isNaN(chr3)) {
                // source line 31, bytecode pc 292
                (enc4 = 64);
            }
        }
        // source line 35, bytecode pc 387
        (output = ((((output + this._keyStr.charAt(enc1)) + this._keyStr.charAt(enc2)) + this._keyStr.charAt(enc3)) + this._keyStr.charAt(enc4)));
    }
    // source line 37, bytecode pc 409
    return output;
},
    decode: function(input) {
    var output, chr1, chr2, chr3, enc1, enc2, enc3, enc4, i;
    // source line 42, bytecode pc 8
    (output = "");
    // source line 45, bytecode pc 41
    (i = 0);
    // source line 46, bytecode pc 71
    (input = input.replace(/[^A-Za-z0-9+/=]/g, ""));
    while ((i < input.length)) {
        // 同 encode：后缀自增必须在取值之后。
        // source line 48, bytecode pc 116
        (enc1 = this._keyStr.indexOf(input.charAt(+i)));
        (i = (+i + 1));
        // source line 49, bytecode pc 167
        (enc2 = this._keyStr.indexOf(input.charAt(+i)));
        (i = (+i + 1));
        // source line 50, bytecode pc 218
        (enc3 = this._keyStr.indexOf(input.charAt(+i)));
        (i = (+i + 1));
        // source line 51, bytecode pc 269
        (enc4 = this._keyStr.indexOf(input.charAt(+i)));
        (i = (+i + 1));
        // source line 52, bytecode pc 298
        (chr1 = ((enc1 << 2) | (enc2 >> 4)));
        // source line 53, bytecode pc 318
        (chr2 = (((enc2 & 15) << 4) | (enc3 >> 2)));
        // source line 54, bytecode pc 335
        (chr3 = (((enc3 & 3) << 6) | enc4));
        // source line 55, bytecode pc 363
        (output = (output + String.fromCharCode(chr1)));
        if ((enc3 != 64)) {
            // source line 57, bytecode pc 402
            (output = (output + String.fromCharCode(chr2)));
        }
        if ((enc4 != 64)) {
            // source line 60, bytecode pc 441
            (output = (output + String.fromCharCode(chr3)));
        }
    }
    // source line 63, bytecode pc 479
    (output = this._utf8_decode(output));
    // source line 64, bytecode pc 483
    return output;
},
    _utf8_encode: function(string) {
    var utftext, n, c;
    // source line 69, bytecode pc 29
    (string = string.replace(/\r\n/g, "\n"));
    // source line 70, bytecode pc 38
    (utftext = "");
    // source line 71, bytecode pc 43
    (n = 0);
    while ((n < string.length)) {
        // source line 72, bytecode pc 71
        (c = string.charCodeAt(n));
        if ((c < 128)) {
            // source line 74, bytecode pc 111
            (utftext = (utftext + String.fromCharCode(c)));
        } else {
            if (((c > 127) && (c < 2048))) {
                // source line 76, bytecode pc 175
                (utftext = (utftext + String.fromCharCode(((c >> 6) | 192))));
                // source line 77, bytecode pc 210
                (utftext = (utftext + String.fromCharCode(((c & 63) | 128))));
            } else {
                // source line 79, bytecode pc 250
                (utftext = (utftext + String.fromCharCode(((c >> 12) | 224))));
                // source line 80, bytecode pc 288
                (utftext = (utftext + String.fromCharCode((((c >> 6) & 63) | 128))));
                // source line 81, bytecode pc 323
                (utftext = (utftext + String.fromCharCode(((c & 63) | 128))));
            }
        }
        // source line 71, bytecode pc 337
        (n = (+n + 1));
    }
    // source line 85, bytecode pc 360
    return utftext;
},
    _utf8_decode: function(utftext) {
    var string, i, c;
    // source line 90, bytecode pc 8
    (string = "");
    // source line 91, bytecode pc 13
    (i = 0);
    // source line 92, bytecode pc 38
    (c = (c1 = (c2 = 0)));
    while ((i < utftext.length)) {
        // source line 94, bytecode pc 66
        (c = utftext.charCodeAt(i));
        if ((c < 128)) {
            // source line 96, bytecode pc 106
            (string = (string + String.fromCharCode(c)));
            // source line 97, bytecode pc 120
            (i = (+i + 1));
        } else {
            if (((c > 191) && (c < 224))) {
                // source line 99, bytecode pc 182
                (c2 = utftext.charCodeAt((i + 1)));
                // source line 100, bytecode pc 225
                (string = (string + String.fromCharCode((((c & 31) << 6) | (c2 & 63)))));
                // source line 101, bytecode pc 235
                (i = (i + 2));
            } else {
                // source line 103, bytecode pc 271
                (c2 = utftext.charCodeAt((i + 1)));
                // source line 104, bytecode pc 303
                (c3 = utftext.charCodeAt((i + 2)));
                // source line 105, bytecode pc 358
                (string = (string + String.fromCharCode(((((c & 15) << 12) | ((c2 & 63) << 6)) | (c3 & 63)))));
                // source line 106, bytecode pc 368
                (i = (i + 3));
            }
        }
    }
    // source line 109, bytecode pc 390
    return string;
}
}));
// source line 143, bytecode pc 207
(xs.Utils.Base64 = (xs.Utils.Base64 || {
    _keyStr: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",
    encode: function(input) {
    var output, chr1, chr2, chr3, enc1, enc2, enc3, enc4, i;
    // source line 119, bytecode pc 8
    (output = "");
    // source line 121, bytecode pc 41
    (i = 0);
    while ((i < input.length)) {
        // 后缀自增必须先取旧值再自增；见 Base64WithUtf8.encode 的说明。
        // source line 123, bytecode pc 72
        (chr1 = input.charCodeAt(+i));
        (i = (+i + 1));
        // source line 124, bytecode pc 105
        (chr2 = input.charCodeAt(+i));
        (i = (+i + 1));
        // source line 125, bytecode pc 138
        (chr3 = input.charCodeAt(+i));
        (i = (+i + 1));
        // source line 126, bytecode pc 156
        (enc1 = (chr1 >> 2));
        // source line 127, bytecode pc 176
        (enc2 = (((chr1 & 3) << 4) | (chr2 >> 4)));
        // source line 128, bytecode pc 196
        (enc3 = (((chr2 & 15) << 2) | (chr3 >> 6)));
        // source line 129, bytecode pc 206
        (enc4 = (chr3 & 63));
        if (isNaN(chr2)) {
            // source line 131, bytecode pc 238
            (enc3 = (enc4 = 64));
        } else {
            if (isNaN(chr3)) {
                // source line 133, bytecode pc 272
                (enc4 = 64);
            }
        }
        // source line 137, bytecode pc 367
        (output = ((((output + this._keyStr.charAt(enc1)) + this._keyStr.charAt(enc2)) + this._keyStr.charAt(enc3)) + this._keyStr.charAt(enc4)));
    }
    // source line 139, bytecode pc 389
    return output;
},
    decode: function(input) {
    var output, chr1, chr2, chr3, enc1, enc2, enc3, enc4, i;
    // source line 144, bytecode pc 8
    (output = "");
    // source line 147, bytecode pc 41
    (i = 0);
    // source line 148, bytecode pc 71
    (input = input.replace(/[^A-Za-z0-9+/=]/g, ""));
    while ((i < input.length)) {
        // 同 encode。
        // source line 150, bytecode pc 116
        (enc1 = this._keyStr.indexOf(input.charAt(+i)));
        (i = (+i + 1));
        // source line 151, bytecode pc 167
        (enc2 = this._keyStr.indexOf(input.charAt(+i)));
        (i = (+i + 1));
        // source line 152, bytecode pc 218
        (enc3 = this._keyStr.indexOf(input.charAt(+i)));
        (i = (+i + 1));
        // source line 153, bytecode pc 269
        (enc4 = this._keyStr.indexOf(input.charAt(+i)));
        (i = (+i + 1));
        // source line 154, bytecode pc 298
        (chr1 = ((enc1 << 2) | (enc2 >> 4)));
        // source line 155, bytecode pc 318
        (chr2 = (((enc2 & 15) << 4) | (enc3 >> 2)));
        // source line 156, bytecode pc 335
        (chr3 = (((enc3 & 3) << 6) | enc4));
        // source line 157, bytecode pc 363
        (output = (output + String.fromCharCode(chr1)));
        if ((enc3 != 64)) {
            // source line 159, bytecode pc 402
            (output = (output + String.fromCharCode(chr2)));
        }
        if ((enc4 != 64)) {
            // source line 162, bytecode pc 441
            (output = (output + String.fromCharCode(chr3)));
        }
    }
    // source line 165, bytecode pc 463
    return output;
}
}));
// source line 195, bytecode pc 280
(xs.Utils.Utf16ToUtf8 = (xs.Utils.Utf16ToUtf8 || {
    _keyStr: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",
    utf8_encode: function(string) {
    var utftext, n, c;
    // source line 175, bytecode pc 29
    (string = string.replace(/\r\n/g, "\n"));
    // source line 176, bytecode pc 38
    (utftext = "");
    // source line 177, bytecode pc 43
    (n = 0);
    while ((n < string.length)) {
        // source line 178, bytecode pc 71
        (c = string.charCodeAt(n));
        if ((c < 128)) {
            // source line 180, bytecode pc 111
            (utftext = (utftext + String.fromCharCode(c)));
        } else {
            if (((c > 127) && (c < 2048))) {
                // source line 182, bytecode pc 175
                (utftext = (utftext + String.fromCharCode(((c >> 6) | 192))));
                // source line 183, bytecode pc 210
                (utftext = (utftext + String.fromCharCode(((c & 63) | 128))));
            } else {
                // source line 185, bytecode pc 250
                (utftext = (utftext + String.fromCharCode(((c >> 12) | 224))));
                // source line 186, bytecode pc 288
                (utftext = (utftext + String.fromCharCode((((c >> 6) & 63) | 128))));
                // source line 187, bytecode pc 323
                (utftext = (utftext + String.fromCharCode(((c & 63) | 128))));
            }
        }
        // source line 177, bytecode pc 337
        (n = (+n + 1));
    }
    // source line 191, bytecode pc 360
    return utftext;
},
    utf8_decode: function(utftext) {
    var string, i, c;
    // source line 196, bytecode pc 8
    (string = "");
    // source line 197, bytecode pc 13
    (i = 0);
    // source line 198, bytecode pc 38
    (c = (c1 = (c2 = 0)));
    while ((i < utftext.length)) {
        // source line 200, bytecode pc 66
        (c = utftext.charCodeAt(i));
        if ((c < 128)) {
            // source line 202, bytecode pc 106
            (string = (string + String.fromCharCode(c)));
            // source line 203, bytecode pc 120
            (i = (+i + 1));
        } else {
            if (((c > 191) && (c < 224))) {
                // source line 205, bytecode pc 182
                (c2 = utftext.charCodeAt((i + 1)));
                // source line 206, bytecode pc 225
                (string = (string + String.fromCharCode((((c & 31) << 6) | (c2 & 63)))));
                // source line 207, bytecode pc 235
                (i = (i + 2));
            } else {
                // source line 209, bytecode pc 271
                (c2 = utftext.charCodeAt((i + 1)));
                // source line 210, bytecode pc 303
                (c3 = utftext.charCodeAt((i + 2)));
                // source line 211, bytecode pc 358
                (string = (string + String.fromCharCode(((((c & 15) << 12) | ((c2 & 63) << 6)) | (c3 & 63)))));
                // source line 212, bytecode pc 368
                (i = (i + 3));
            }
        }
    }
    // source line 215, bytecode pc 390
    return string;
}
}));
