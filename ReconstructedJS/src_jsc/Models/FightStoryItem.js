// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/FightStoryItem.js:1
// source line 144, bytecode pc 169
(xs.Models.FightStoryItem = cc.Class.extend({
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    model: null,
    toDebugString: function() {
    if ((xs.release === true)) {
        // source line 24, bytecode pc 22
        return "debug off";
    }
    // source line 31, bytecode pc 110
    return ((((((((" " + "[") + this.model.type) + "] ") + "[") + this.model.id) + "] ") + this.model.text.substr(0, 5)) + ";");
},
    init: function(data) {
    // source line 111, bytecode pc 31
    (this.model = xs.Utils.clone(data));
},
    getType: function() {
    // source line 117, bytecode pc 33
    return xs.Utils.parseIntSafe(this.model.type);
},
    getSite: function() {
    // source line 123, bytecode pc 33
    return xs.Utils.parseIntSafe(this.model.site);
},
    getTalkerNameString: function() {
    var _ret;
    // source line 128, bytecode pc 41
    (_ret = xs.Tools.Ml.createString(this.model.general_name));
    // source line 130, bytecode pc 75
    (_ret = xs.Tools.String.convSmartString(_ret));
    // source line 132, bytecode pc 94
    (_ret = (("【" + _ret) + "】"));
    // source line 133, bytecode pc 98
    return _ret;
},
    getContentString: function() {
    // source line 137, bytecode pc 38
    return xs.Tools.Ml.createString(this.model.dialog_desc);
},
    canSkip: function() {
    // source line 141, bytecode pc 13
    return (this.model.is_skip !== 0);
},
    getTalkerResource: function() {
    var _residMyGirl, _residMyFstGeneral, _ret, _myGirl, _myFstGeneral;
    // source line 149, bytecode pc 35
    (_residMyGirl = xs.Tools.CfgData.getGlobalConf("RES_ID_MY_GIRL"));
    // source line 150, bytecode pc 71
    (_residMyFstGeneral = xs.Tools.CfgData.getGlobalConf("RES_ID_MY_FST_GENERAL"));
    if ((this.model.resource_id == _residMyGirl)) {
        // source line 156, bytecode pc 157
        (_myGirl = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getFirstChooseGeneral());
        if (_myGirl) {
            // source line 158, bytecode pc 183
            (_ret = _myGirl.getRes());
        } else {
            // source line 161, bytecode pc 235
            (_ret = xs.Models.Resource.createWithBase("DefaultRes", xs.Constant_ResType_General));
        }
    } else {
        if ((this.model.resource_id == _residMyFstGeneral)) {
            // source line 165, bytecode pc 322
            (_myFstGeneral = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getFirstWineGeneral());
            if (_myFstGeneral) {
                // source line 167, bytecode pc 348
                (_ret = _myFstGeneral.getRes());
            } else {
                // source line 170, bytecode pc 400
                (_ret = xs.Models.Resource.createWithBase("DefaultRes", xs.Constant_ResType_General));
            }
        } else {
            // source line 174, bytecode pc 458
            (_ret = xs.Models.Resource.createWithBase(this.model.resource_id, xs.Constant_ResType_General));
        }
    }
    // source line 177, bytecode pc 462
    return _ret;
}
}));
