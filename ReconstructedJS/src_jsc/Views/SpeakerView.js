// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/SpeakerView.js:1
// source line 37, bytecode pc 83
(xs.Views.SpeakerView = cc.Node.extend({
    ctor: function() {
    // source line 11, bytecode pc 12
    this._super();
    // source line 12, bytecode pc 42
    cc.associateWithNative(this, cc.Node);
},
    init: function() {
    if (!this._super()) {
        // source line 16, bytecode pc 19
        return false;
    }
    // source line 19, bytecode pc 27
    (this.m_ccbNode = null);
    // source line 20, bytecode pc 35
    (this.m_speakLab = null);
    // source line 22, bytecode pc 86
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.Speaker, this));
    // source line 23, bytecode pc 122
    xs.Utils.Node.attachNodes(this, this.m_ccbNode);
    // source line 25, bytecode pc 149
    (this.m_bg = this.m_ccbNode.getChildByTag(11));
    // source line 27, bytecode pc 211
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, xs.Views.SpeakerView.cfg.ccbCfg, this);
    // source line 29, bytecode pc 213
    return true;
},
    say: function(words) {
    // source line 33, bytecode pc 21
    this.m_speakLab.setString(words);
},
    setDirector: function(bLeftToRight) {
    if (!bLeftToRight) {
        // source line 39, bytecode pc 30
        this.m_bg.setRotationY(180);
    }
}
}));
// source line 44, bytecode pc 109
(xs.Views.SpeakerView.create = function() {
    var view;
    // source line 45, bytecode pc 23
    (view = new xs.Views.SpeakerView());
    if ((view && view.init())) {
        // source line 47, bytecode pc 55
        return view;
    }
    // source line 49, bytecode pc 78
    xs.warn("xs.Views.SpeakerView.create error!");
    // source line 50, bytecode pc 80
    return null;
});
// source line 55, bytecode pc 193
(xs.Views.SpeakerView.cfg = { ccbCfg: [ { name: "m_speakLab", tag: 10, type: "ls", id: "LS_mainUI3" } ] });
