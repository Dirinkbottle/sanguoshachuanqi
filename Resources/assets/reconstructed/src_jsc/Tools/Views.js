// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Tools/Views.js:1
// source line 11, bytecode pc 63
(xs.Tools.Views = (xs.Tools.Views || {
    Btn: {
        createInstruction: function(key) {
    var _ret;
    // source line 12, bytecode pc 45
    (_ret = xs.Views.Button.Factory.Audio.create("Btn_Instruction"));
    // source line 17, bytecode pc 81
    _ret.setOnClickCallBack(function() {
    var _key;
    // source line 15, bytecode pc 4
    (_key = this);
    // source line 16, bytecode pc 52
    xs.Views.Mgr.showDialogByName("InstructionDialog", { key: _key });
}.bind(key));
    // source line 19, bytecode pc 85
    return _ret;
}
    }
}));
