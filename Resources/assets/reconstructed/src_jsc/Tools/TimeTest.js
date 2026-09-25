// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Tools/TimeTest.js:1
// source line 21, bytecode pc 72
(xs.Tools.TimeTest = (xs.Tools.TimeTest || {
    start: function(strTag) {
    // source line 7, bytecode pc 20
    (this.strTag = (strTag || ""));
    // source line 8, bytecode pc 48
    (this.startTime = new Date().getTime());
    // source line 9, bytecode pc 61
    (this.lastTimingTime = this.startTime);
    // source line 10, bytecode pc 91
    xs.log(("开始统计! startTime = " + this.startTime));
},
    timing: function(stepTag) {
    var timeNow, t;
    // source line 14, bytecode pc 24
    (timeNow = new Date().getTime());
    // source line 15, bytecode pc 38
    (t = (timeNow - this.lastTimingTime));
    // source line 16, bytecode pc 48
    (this.lastTimingTime = timeNow);
    // source line 18, bytecode pc 104
    xs.log((((((("记录!" + this.strTag) + ",tag = ") + stepTag) + ",距离上次 ") + t) + " 毫秒"));
},
    stop: function() {
    var sumTime;
    // source line 22, bytecode pc 16
    (sumTime = (this.lastTimingTime - this.startTime));
    // source line 23, bytecode pc 62
    xs.log((((("结束统计!" + this.strTag) + ",总时间 ") + sumTime) + " 毫秒"));
}
}));
