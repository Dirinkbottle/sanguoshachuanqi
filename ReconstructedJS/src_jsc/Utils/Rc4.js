// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Utils/Rc4.js:1
// source line 1, bytecode pc 20
(xs.Utils.RC4 = function(key, str) {
    // source line 27, bytecode pc 29
    return xs.Utils.rc4(key, str);
});
// source line 30, bytecode pc 41
(xs.Utils.rc4 = function(key, str) {
    var s, j, x, res, i, y;
    // source line 32, bytecode pc 8
    (s = []);
    // source line 33, bytecode pc 13
    (j = 0);
    // source line 35, bytecode pc 26
    (res = "");
    // source line 36, bytecode pc 31
    (i = 0);
    while ((i < 256)) {
        // source line 37, bytecode pc 48
        (s[i] = i);
        // source line 36, bytecode pc 62
        (i = (+i + 1));
    }
    // source line 39, bytecode pc 81
    (i = 0);
    while ((i < 256)) {
        // source line 40, bytecode pc 134
        (j = (((j + s[i]) + key.charCodeAt((i % key.length))) % 256));
        // source line 41, bytecode pc 145
        (x = s[i]);
        // source line 42, bytecode pc 160
        (s[i] = s[j]);
        // source line 43, bytecode pc 171
        (s[j] = x);
        // source line 39, bytecode pc 185
        (i = (+i + 1));
    }
    // source line 45, bytecode pc 204
    (i = 0);
    // source line 46, bytecode pc 209
    (j = 0);
    // source line 47, bytecode pc 214
    (y = 0);
    while ((y < str.length)) {
        // source line 48, bytecode pc 233
        (i = ((i + 1) % 256));
        // source line 49, bytecode pc 252
        (j = ((j + s[i]) % 256));
        // source line 50, bytecode pc 263
        (x = s[i]);
        // source line 51, bytecode pc 278
        (s[i] = s[j]);
        // source line 52, bytecode pc 289
        (s[j] = x);
        // source line 53, bytecode pc 356
        (res = (res + String.fromCharCode((str.charCodeAt(y) ^ s[((s[i] + s[j]) % 256)]))));
        // source line 47, bytecode pc 370
        (y = (+y + 1));
    }
    // source line 55, bytecode pc 393
    return res;
});
