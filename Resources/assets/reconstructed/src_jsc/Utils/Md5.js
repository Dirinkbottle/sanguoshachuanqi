// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Utils/Md5.js:1
// source line 8, bytecode pc 20
(xs.Utils.MD5 = function(string) {
    var RotateLeft, AddUnsigned, F, G, H, I, FF, GG, HH, II, ConvertToWordArray, WordToHex, Utf8Encode, x, k, AA, BB, CC, DD, a, b, c, d, S11, S12, S13, S14, S21, S22, S23, S24, S31, S32, S33, S34, S41, S42, S43, S44, temp;
    // source line 10, bytecode pc 14
    (RotateLeft = function(lValue, iShiftBits) {
    // source line 11, bytecode pc 18
    return ((lValue << iShiftBits) | (lValue >>> (32 - iShiftBits)));
});
    // source line 14, bytecode pc 29
    (AddUnsigned = function(lX, lY) {
    var lX4, lY4, lX8, lY8, lResult;
    // source line 16, bytecode pc 32
    (lX8 = (lX & 2147483648));
    // source line 17, bytecode pc 45
    (lY8 = (lY & 2147483648));
    // source line 18, bytecode pc 58
    (lX4 = (lX & 1073741824));
    // source line 19, bytecode pc 71
    (lY4 = (lY & 1073741824));
    // source line 20, bytecode pc 94
    (lResult = ((lX & 1073741823) + (lY & 1073741823)));
    if ((lX4 & lY4)) {
        // source line 22, bytecode pc 124
        return (((lResult ^ 2147483648) ^ lX8) ^ lY8);
    }
    if ((lX4 | lY4)) {
        if ((lResult & 1073741824)) {
            // source line 26, bytecode pc 168
            return (((lResult ^ 3221225472) ^ lX8) ^ lY8);
        } else {
            // source line 28, bytecode pc 191
            return (((lResult ^ 1073741824) ^ lX8) ^ lY8);
        }
    } else {
        // source line 31, bytecode pc 208
        return ((lResult ^ lX8) ^ lY8);
    }
});
    // source line 35, bytecode pc 44
    (F = function(x, y, z) {
    // source line 35, bytecode pc 16
    return ((x & y) | (~x & z));
});
    // source line 36, bytecode pc 59
    (G = function(x, y, z) {
    // source line 36, bytecode pc 16
    return ((x & z) | (y & ~z));
});
    // source line 37, bytecode pc 74
    (H = function(x, y, z) {
    // source line 37, bytecode pc 11
    return ((x ^ y) ^ z);
});
    // source line 38, bytecode pc 89
    (I = function(x, y, z) {
    // source line 38, bytecode pc 12
    return (y ^ (x | ~z));
});
    // source line 40, bytecode pc 98
    (FF = function(a, b, c, d, x, s, ac) {
    // source line 41, bytecode pc 86
    (a = AddUnsigned(a, AddUnsigned(AddUnsigned(F(b, c, d), x), ac)));
    // source line 42, bytecode pc 128
    return AddUnsigned(RotateLeft(a, s), b);
});
    // source line 45, bytecode pc 107
    (GG = function(a, b, c, d, x, s, ac) {
    // source line 46, bytecode pc 86
    (a = AddUnsigned(a, AddUnsigned(AddUnsigned(G(b, c, d), x), ac)));
    // source line 47, bytecode pc 128
    return AddUnsigned(RotateLeft(a, s), b);
});
    // source line 50, bytecode pc 116
    (HH = function(a, b, c, d, x, s, ac) {
    // source line 51, bytecode pc 86
    (a = AddUnsigned(a, AddUnsigned(AddUnsigned(H(b, c, d), x), ac)));
    // source line 52, bytecode pc 128
    return AddUnsigned(RotateLeft(a, s), b);
});
    // source line 55, bytecode pc 125
    (II = function(a, b, c, d, x, s, ac) {
    // source line 56, bytecode pc 86
    (a = AddUnsigned(a, AddUnsigned(AddUnsigned(I(b, c, d), x), ac)));
    // source line 57, bytecode pc 128
    return AddUnsigned(RotateLeft(a, s), b);
});
    // source line 60, bytecode pc 134
    (ConvertToWordArray = function(string) {
    var lWordCount, lMessageLength, lNumberOfWords_temp1, lNumberOfWords_temp2, lNumberOfWords, lWordArray, lBytePosition, lByteCount;
    // source line 62, bytecode pc 15
    (lMessageLength = string.length);
    // source line 63, bytecode pc 25
    (lNumberOfWords_temp1 = (lMessageLength + 8));
    // source line 64, bytecode pc 42
    (lNumberOfWords_temp2 = ((lNumberOfWords_temp1 - (lNumberOfWords_temp1 % 64)) / 64));
    // source line 65, bytecode pc 54
    (lNumberOfWords = ((lNumberOfWords_temp2 + 1) * 16));
    // source line 66, bytecode pc 78
    (lWordArray = Array((lNumberOfWords - 1)));
    // source line 67, bytecode pc 83
    (lBytePosition = 0);
    // source line 68, bytecode pc 88
    (lByteCount = 0);
    while ((lByteCount < lMessageLength)) {
        // source line 70, bytecode pc 111
        (lWordCount = ((lByteCount - (lByteCount % 4)) / 4));
        // source line 71, bytecode pc 124
        (lBytePosition = ((lByteCount % 4) * 8));
        // source line 72, bytecode pc 162
        (lWordArray[lWordCount] = (lWordArray[lWordCount] | (string.charCodeAt(lByteCount) << lBytePosition)));
        // source line 73, bytecode pc 177
        lByteCount++;
    }
    // source line 75, bytecode pc 207
    (lWordCount = ((lByteCount - (lByteCount % 4)) / 4));
    // source line 76, bytecode pc 220
    (lBytePosition = ((lByteCount % 4) * 8));
    // source line 77, bytecode pc 243
    (lWordArray[lWordCount] = (lWordArray[lWordCount] | (128 << lBytePosition)));
    // source line 78, bytecode pc 260
    (lWordArray[(lNumberOfWords - 2)] = (lMessageLength << 3));
    // source line 79, bytecode pc 276
    (lWordArray[(lNumberOfWords - 1)] = (lMessageLength >>> 29));
    // source line 80, bytecode pc 280
    return lWordArray;
});
    // source line 83, bytecode pc 143
    (WordToHex = function(lValue) {
    var WordToHexValue, WordToHexValue_temp, lByte, lCount;
    // source line 84, bytecode pc 8
    (WordToHexValue = "");
    // source line 84, bytecode pc 17
    (WordToHexValue_temp = "");
    // source line 85, bytecode pc 30
    (lCount = 0);
    while ((lCount <= 3)) {
        // source line 86, bytecode pc 54
        (lByte = ((lValue >>> (lCount * 8)) & 255));
        // source line 87, bytecode pc 81
        (WordToHexValue_temp = ("0" + lByte.toString(16)));
        // source line 88, bytecode pc 118
        (WordToHexValue = (WordToHexValue + WordToHexValue_temp.substr((WordToHexValue_temp.length - 2), 2)));
        // source line 85, bytecode pc 133
        lCount++;
    }
    // source line 90, bytecode pc 149
    return WordToHexValue;
});
    // source line 93, bytecode pc 152
    (Utf8Encode = function(string) {
    var utftext, n, c;
    /* TODO_BYTECODE pc=11 opcode=regexp reason=regexp_object_literal_not_dumped */
    // source line 94, bytecode pc 29
    (string = string.replace(undefined /* TODO_BYTECODE pc=11 opcode=regexp reason=regexp_object_literal_not_dumped */, "\n"));
    // source line 95, bytecode pc 38
    (utftext = "");
    // source line 97, bytecode pc 43
    (n = 0);
    while ((n < string.length)) {
        // source line 99, bytecode pc 71
        (c = string.charCodeAt(n));
        if ((c < 128)) {
            // source line 102, bytecode pc 111
            (utftext = (utftext + String.fromCharCode(c)));
        } else {
            if (((c > 127) && (c < 2048))) {
                // source line 105, bytecode pc 175
                (utftext = (utftext + String.fromCharCode(((c >> 6) | 192))));
                // source line 106, bytecode pc 210
                (utftext = (utftext + String.fromCharCode(((c & 63) | 128))));
            } else {
                // source line 109, bytecode pc 250
                (utftext = (utftext + String.fromCharCode(((c >> 12) | 224))));
                // source line 110, bytecode pc 288
                (utftext = (utftext + String.fromCharCode((((c >> 6) & 63) | 128))));
                // source line 111, bytecode pc 323
                (utftext = (utftext + String.fromCharCode(((c & 63) | 128))));
            }
        }
        // source line 97, bytecode pc 338
        n++;
    }
    // source line 116, bytecode pc 360
    return utftext;
});
    // source line 119, bytecode pc 170
    (x = Array());
    // source line 121, bytecode pc 212
    (S11 = 7);
    // source line 121, bytecode pc 218
    (S12 = 12);
    // source line 121, bytecode pc 224
    (S13 = 17);
    // source line 121, bytecode pc 230
    (S14 = 22);
    // source line 122, bytecode pc 236
    (S21 = 5);
    // source line 122, bytecode pc 242
    (S22 = 9);
    // source line 122, bytecode pc 248
    (S23 = 14);
    // source line 122, bytecode pc 254
    (S24 = 20);
    // source line 123, bytecode pc 260
    (S31 = 4);
    // source line 123, bytecode pc 266
    (S32 = 11);
    // source line 123, bytecode pc 272
    (S33 = 16);
    // source line 123, bytecode pc 278
    (S34 = 23);
    // source line 124, bytecode pc 284
    (S41 = 6);
    // source line 124, bytecode pc 290
    (S42 = 10);
    // source line 124, bytecode pc 296
    (S43 = 15);
    // source line 124, bytecode pc 302
    (S44 = 21);
    // source line 126, bytecode pc 318
    (string = Utf8Encode(string));
    // source line 128, bytecode pc 334
    (x = ConvertToWordArray(string));
    // source line 130, bytecode pc 343
    (a = 1732584193);
    // source line 130, bytecode pc 352
    (b = 4023233417);
    // source line 130, bytecode pc 361
    (c = 2562383102);
    // source line 130, bytecode pc 370
    (d = 271733878);
    // source line 132, bytecode pc 375
    (k = 0);
    while ((k < x.length)) {
        // source line 133, bytecode pc 388
        (AA = a);
        // source line 133, bytecode pc 395
        (BB = b);
        // source line 133, bytecode pc 402
        (CC = c);
        // source line 133, bytecode pc 409
        (DD = d);
        // source line 134, bytecode pc 457
        (a = FF(a, b, c, d, x[(k + 0)], S11, 3614090360));
        // source line 135, bytecode pc 505
        (d = FF(d, a, b, c, x[(k + 1)], S12, 3905402710));
        // source line 136, bytecode pc 554
        (c = FF(c, d, a, b, x[(k + 2)], S13, 606105819));
        // source line 137, bytecode pc 603
        (b = FF(b, c, d, a, x[(k + 3)], S14, 3250441966));
        // source line 138, bytecode pc 652
        (a = FF(a, b, c, d, x[(k + 4)], S11, 4118548399));
        // source line 139, bytecode pc 701
        (d = FF(d, a, b, c, x[(k + 5)], S12, 1200080426));
        // source line 140, bytecode pc 750
        (c = FF(c, d, a, b, x[(k + 6)], S13, 2821735955));
        // source line 141, bytecode pc 799
        (b = FF(b, c, d, a, x[(k + 7)], S14, 4249261313));
        // source line 142, bytecode pc 848
        (a = FF(a, b, c, d, x[(k + 8)], S11, 1770035416));
        // source line 143, bytecode pc 897
        (d = FF(d, a, b, c, x[(k + 9)], S12, 2336552879));
        // source line 144, bytecode pc 946
        (c = FF(c, d, a, b, x[(k + 10)], S13, 4294925233));
        // source line 145, bytecode pc 995
        (b = FF(b, c, d, a, x[(k + 11)], S14, 2304563134));
        // source line 146, bytecode pc 1044
        (a = FF(a, b, c, d, x[(k + 12)], S11, 1804603682));
        // source line 147, bytecode pc 1093
        (d = FF(d, a, b, c, x[(k + 13)], S12, 4254626195));
        // source line 148, bytecode pc 1142
        (c = FF(c, d, a, b, x[(k + 14)], S13, 2792965006));
        // source line 149, bytecode pc 1191
        (b = FF(b, c, d, a, x[(k + 15)], S14, 1236535329));
        // source line 150, bytecode pc 1239
        (a = GG(a, b, c, d, x[(k + 1)], S21, 4129170786));
        // source line 151, bytecode pc 1288
        (d = GG(d, a, b, c, x[(k + 6)], S22, 3225465664));
        // source line 152, bytecode pc 1337
        (c = GG(c, d, a, b, x[(k + 11)], S23, 643717713));
        // source line 153, bytecode pc 1385
        (b = GG(b, c, d, a, x[(k + 0)], S24, 3921069994));
        // source line 154, bytecode pc 1434
        (a = GG(a, b, c, d, x[(k + 5)], S21, 3593408605));
        // source line 155, bytecode pc 1483
        (d = GG(d, a, b, c, x[(k + 10)], S22, 38016083));
        // source line 156, bytecode pc 1532
        (c = GG(c, d, a, b, x[(k + 15)], S23, 3634488961));
        // source line 157, bytecode pc 1581
        (b = GG(b, c, d, a, x[(k + 4)], S24, 3889429448));
        // source line 158, bytecode pc 1630
        (a = GG(a, b, c, d, x[(k + 9)], S21, 568446438));
        // source line 159, bytecode pc 1679
        (d = GG(d, a, b, c, x[(k + 14)], S22, 3275163606));
        // source line 160, bytecode pc 1728
        (c = GG(c, d, a, b, x[(k + 3)], S23, 4107603335));
        // source line 161, bytecode pc 1777
        (b = GG(b, c, d, a, x[(k + 8)], S24, 1163531501));
        // source line 162, bytecode pc 1826
        (a = GG(a, b, c, d, x[(k + 13)], S21, 2850285829));
        // source line 163, bytecode pc 1875
        (d = GG(d, a, b, c, x[(k + 2)], S22, 4243563512));
        // source line 164, bytecode pc 1924
        (c = GG(c, d, a, b, x[(k + 7)], S23, 1735328473));
        // source line 165, bytecode pc 1973
        (b = GG(b, c, d, a, x[(k + 12)], S24, 2368359562));
        // source line 166, bytecode pc 2022
        (a = HH(a, b, c, d, x[(k + 5)], S31, 4294588738));
        // source line 167, bytecode pc 2071
        (d = HH(d, a, b, c, x[(k + 8)], S32, 2272392833));
        // source line 168, bytecode pc 2120
        (c = HH(c, d, a, b, x[(k + 11)], S33, 1839030562));
        // source line 169, bytecode pc 2169
        (b = HH(b, c, d, a, x[(k + 14)], S34, 4259657740));
        // source line 170, bytecode pc 2217
        (a = HH(a, b, c, d, x[(k + 1)], S31, 2763975236));
        // source line 171, bytecode pc 2266
        (d = HH(d, a, b, c, x[(k + 4)], S32, 1272893353));
        // source line 172, bytecode pc 2315
        (c = HH(c, d, a, b, x[(k + 7)], S33, 4139469664));
        // source line 173, bytecode pc 2364
        (b = HH(b, c, d, a, x[(k + 10)], S34, 3200236656));
        // source line 174, bytecode pc 2413
        (a = HH(a, b, c, d, x[(k + 13)], S31, 681279174));
        // source line 175, bytecode pc 2461
        (d = HH(d, a, b, c, x[(k + 0)], S32, 3936430074));
        // source line 176, bytecode pc 2510
        (c = HH(c, d, a, b, x[(k + 3)], S33, 3572445317));
        // source line 177, bytecode pc 2559
        (b = HH(b, c, d, a, x[(k + 6)], S34, 76029189));
        // source line 178, bytecode pc 2608
        (a = HH(a, b, c, d, x[(k + 9)], S31, 3654602809));
        // source line 179, bytecode pc 2657
        (d = HH(d, a, b, c, x[(k + 12)], S32, 3873151461));
        // source line 180, bytecode pc 2706
        (c = HH(c, d, a, b, x[(k + 15)], S33, 530742520));
        // source line 181, bytecode pc 2755
        (b = HH(b, c, d, a, x[(k + 2)], S34, 3299628645));
        // source line 182, bytecode pc 2803
        (a = II(a, b, c, d, x[(k + 0)], S41, 4096336452));
        // source line 183, bytecode pc 2852
        (d = II(d, a, b, c, x[(k + 7)], S42, 1126891415));
        // source line 184, bytecode pc 2901
        (c = II(c, d, a, b, x[(k + 14)], S43, 2878612391));
        // source line 185, bytecode pc 2950
        (b = II(b, c, d, a, x[(k + 5)], S44, 4237533241));
        // source line 186, bytecode pc 2999
        (a = II(a, b, c, d, x[(k + 12)], S41, 1700485571));
        // source line 187, bytecode pc 3048
        (d = II(d, a, b, c, x[(k + 3)], S42, 2399980690));
        // source line 188, bytecode pc 3097
        (c = II(c, d, a, b, x[(k + 10)], S43, 4293915773));
        // source line 189, bytecode pc 3145
        (b = II(b, c, d, a, x[(k + 1)], S44, 2240044497));
        // source line 190, bytecode pc 3194
        (a = II(a, b, c, d, x[(k + 8)], S41, 1873313359));
        // source line 191, bytecode pc 3243
        (d = II(d, a, b, c, x[(k + 15)], S42, 4264355552));
        // source line 192, bytecode pc 3292
        (c = II(c, d, a, b, x[(k + 6)], S43, 2734768916));
        // source line 193, bytecode pc 3341
        (b = II(b, c, d, a, x[(k + 13)], S44, 1309151649));
        // source line 194, bytecode pc 3390
        (a = II(a, b, c, d, x[(k + 4)], S41, 4149444226));
        // source line 195, bytecode pc 3439
        (d = II(d, a, b, c, x[(k + 11)], S42, 3174756917));
        // source line 196, bytecode pc 3488
        (c = II(c, d, a, b, x[(k + 2)], S43, 718787259));
        // source line 197, bytecode pc 3537
        (b = II(b, c, d, a, x[(k + 9)], S44, 3951481745));
        // source line 198, bytecode pc 3563
        (a = AddUnsigned(a, AA));
        // source line 199, bytecode pc 3589
        (b = AddUnsigned(b, BB));
        // source line 200, bytecode pc 3615
        (c = AddUnsigned(c, CC));
        // source line 201, bytecode pc 3641
        (d = AddUnsigned(d, DD));
        // source line 132, bytecode pc 3651
        (k = (k + 16));
    }
    // source line 204, bytecode pc 3724
    (temp = (((WordToHex(a) + WordToHex(b)) + WordToHex(c)) + WordToHex(d)));
    // source line 206, bytecode pc 3739
    return temp.toLowerCase();
});
