// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Debug/alias.js:1
// source line 7, bytecode pc 25
(xs.dump = xs.Debug.dump);
// source line 8, bytecode pc 51
(xs.log = xs.Debug.log);
// source line 9, bytecode pc 77
(xs.assert = xs.Debug.assert);
// source line 10, bytecode pc 103
(xs.warn = xs.Debug.warn);
// source line 11, bytecode pc 129
(xs.info = xs.Debug.info);
// source line 12, bytecode pc 155
(xs.warnException = xs.Debug.warnException);
// source line 19, bytecode pc 181
(xs.markFuncBegin = xs.Debug.markFuncBegin);
// source line 20, bytecode pc 207
(xs.markFuncEnd = xs.Debug.markFuncEnd);
// source line 23, bytecode pc 223
(xs.MilliSecondLog = function(Str) {
    var Time;
    // source line 24, bytecode pc 13
    (Time = new Date());
    // source line 25, bytecode pc 55
    xs.log(((Str + " MilliSecond is ") + Time.getTime()));
});
// source line 30, bytecode pc 244
(xs.log_cmn = xs.dump);
// source line 31, bytecode pc 270
(xs.log_zj = xs.Debug.emptyFunc);
// source line 32, bytecode pc 296
(xs.log_hsq = xs.Debug.emptyFunc);
// source line 33, bytecode pc 322
(xs.log_dqy = xs.Debug.emptyFunc);
// source line 34, bytecode pc 348
(xs.log_xjf = xs.Debug.emptyFunc);
// source line 35, bytecode pc 374
(xs.log_zjj = xs.Debug.emptyFunc);
// source line 36, bytecode pc 400
(xs.log_zx = xs.Debug.emptyFunc);
// source line 37, bytecode pc 426
(xs.log_gl = xs.Debug.emptyFunc);
// source line 38, bytecode pc 452
(xs.log_hch = xs.Debug.emptyFunc);
// source line 39, bytecode pc 478
(xs.log_zhz = xs.Debug.emptyFunc);
// source line 40, bytecode pc 504
(xs.log_th = xs.Debug.emptyFunc);
// source line 41, bytecode pc 530
(xs.log_ck = xs.Debug.emptyFunc);
// source line 42, bytecode pc 556
(xs.log_gpf = xs.Debug.emptyFunc);
// source line 43, bytecode pc 582
(xs.log_zls = xs.Debug.emptyFunc);
// source line 44, bytecode pc 608
(xs.log_guide = xs.Debug.emptyFunc);
if ((xs.useLog !== true)) {
    // source line 49, bytecode pc 651
    (xs.dump = xs.Debug.emptyFunc);
    // source line 50, bytecode pc 677
    (xs.log = xs.Debug.emptyFunc);
    // source line 51, bytecode pc 703
    (xs.log_zhz = xs.Debug.emptyFunc);
    // source line 52, bytecode pc 729
    (xs.MilliSecondLog = xs.Debug.emptyFunc);
}
