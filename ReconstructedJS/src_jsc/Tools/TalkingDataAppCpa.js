// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Tools/TalkingDataAppCpa.js:1
// source line 37, bytecode pc 82
(xs.Tools.TalkingDataAppCpa = (xs.Tools.TalkingDataAppCpa || {
    onRegister: function(account) {
    if (((account == null) || (account == ""))) {
        // source line 10, bytecode pc 54
        (account = xs.Tools.Jsb.getDeviceId());
    }
    // source line 12, bytecode pc 109
    xs.JsbConnecter.getInstance().invoke("TalkingDataAppCpaHelp", "onRegister", ("" + account));
},
    onLogin: function(account) {
    if (((account == null) || ((account == "") || (account == undefined)))) {
        // source line 17, bytecode pc 69
        (account = xs.Tools.Jsb.getDeviceId());
    }
    // source line 19, bytecode pc 124
    xs.JsbConnecter.getInstance().invoke("TalkingDataAppCpaHelp", "onLogin", ("" + account));
},
    onPay: function(account, orderId, amount, currencyType, payType) {
    var param;
    if (((account == null) || (account == ""))) {
        // source line 24, bytecode pc 54
        (account = xs.Tools.Jsb.getDeviceId());
    }
    // source line 31, bytecode pc 107
    (param = ((((((((("" + account) + "|") + orderId) + "|") + amount) + "|") + currencyType) + "|") + payType));
    // source line 33, bytecode pc 162
    xs.JsbConnecter.getInstance().invoke("TalkingDataAppCpaHelp", "onPay", ("" + param));
},
    onCustEventWithIdx: function(idx) {
    // source line 38, bytecode pc 54
    xs.JsbConnecter.getInstance().invoke("TalkingDataAppCpaHelp", "onCustEventWithIdx", ("" + idx));
}
}));
