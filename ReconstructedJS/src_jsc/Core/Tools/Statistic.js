// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Core/Tools/Statistic.js:1
// source line 7, bytecode pc 36
(xs.Core.Tools.Statistic = {
    event: function(eventID, label) {
    var _label, _params;
    // source line 9, bytecode pc 17
    (_label = (label || ""));
    // source line 11, bytecode pc 26
    (_params = "");
    // source line 12, bytecode pc 43
    (_params = (_params + (eventID + "|")));
    // source line 13, bytecode pc 54
    (_params = (_params + _label));
    // source line 15, bytecode pc 103
    xs.JsbConnecter.getInstance().invoke("StatisticV2", "event", _params);
}
});
