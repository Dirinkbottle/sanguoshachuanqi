// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/GameData/Gems.js:1
// source line 54, bytecode pc 198
(xs.Profile.GameData.Gems = xs.Profile.GameData.Base.extend({
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    name: "xs.Profile.GameData.Gems",
    nameType: xs.Constant_GameData_Gem,
    modelName: xs.Models.Gems,
    sortBy: xs.Constant_SortType_Equipment_Default,
    init: function(param) {
    // source line 21, bytecode pc 16
    this._super(param);
    // source line 22, bytecode pc 65
    this.dataRef.getNotifyCenter().addObserver(this, this.clearCache, xs.Constant_Notify_ModelChange_Gems_SortChange);
    // source line 23, bytecode pc 67
    return true;
},
    setAllGemsNoNew: function() {
    var allGems, mGemIdx, mGemMode;
    // source line 28, bytecode pc 15
    (allGems = this.getAll());
    for (var mGemIdx in allGems) {
        // source line 30, bytecode pc 42
        (mGemMode = allGems[mGemIdx]);
        if (!((typeof(mGemMode) != "function"))) continue;
        // source line 32, bytecode pc 72
        mGemMode.setNoNew();
    }
},
    getGemsWithPkId: function(gemPkId) {
    var mAllGems, mGemIdx, mGemDate;
    // source line 41, bytecode pc 15
    (mAllGems = this.getAll());
    // source line 43, bytecode pc 20
    (mGemIdx = 0);
    while ((mGemIdx < mAllGems.length)) {
        // source line 44, bytecode pc 37
        (mGemDate = mAllGems[mGemIdx]);
        if ((mGemDate.getPkId() == gemPkId)) {
            // source line 48, bytecode pc 64
            return mGemDate;
        }
        // source line 43, bytecode pc 79
        mGemIdx++;
    }
    // source line 51, bytecode pc 99
    return null;
},
    getGemsListForType: function(gemType) {
    var mList, mAllGems, mGemIdx, mGemDate;
    // source line 55, bytecode pc 8
    (mList = []);
    // source line 56, bytecode pc 24
    (mAllGems = this.getAll());
    // source line 57, bytecode pc 51
    xs.log_hsq("gemType", gemType);
    // source line 59, bytecode pc 56
    (mGemIdx = 0);
    while ((mGemIdx < mAllGems.length)) {
        // source line 60, bytecode pc 73
        (mGemDate = mAllGems[mGemIdx]);
        if ((mGemDate.getEffectType && (mGemDate.getEffectType() == gemType))) {
            // source line 64, bytecode pc 129
            mList.push(mGemDate);
        }
        // source line 59, bytecode pc 144
        mGemIdx++;
    }
    // source line 67, bytecode pc 166
    return mList;
}
}));
// source line 73, bytecode pc 229
(xs.Profile.GameData.Gems.create = function(param) {
    var _str, _cls_name, obj;
    // source line 75, bytecode pc 22
    xs.log_hsq("param222");
    // source line 76, bytecode pc 34
    (_str = param.play_id);
    // source line 77, bytecode pc 58
    (_cls_name = xs.Profile.GameData.Gems);
    // source line 78, bytecode pc 108
    (xs.Utils.isSet(_cls_name._instance) || (_cls_name._instance = []));
    if (_cls_name._instance[_str]) {
        // source line 81, bytecode pc 138
        return _cls_name._instance[_str];
    }
    // source line 84, bytecode pc 150
    (obj = new _cls_name());
    if ((obj && obj.init(param))) {
        // source line 86, bytecode pc 198
        (_cls_name._instance[_str] = obj);
        // source line 87, bytecode pc 202
        return obj;
    }
    // source line 90, bytecode pc 225
    xs.error("xs.Profile.GameData.Gems.create failed");
    // source line 91, bytecode pc 227
    return null;
});
