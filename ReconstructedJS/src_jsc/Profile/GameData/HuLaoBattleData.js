// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/GameData/HuLaoBattleData.js:1
// source line 16, bytecode pc 93
(xs.Profile.GameData.HuLaoBattleData = (xs.Profile.GameData.HuLaoBattleData || {
    name: "xs.Profile.GameData.HuLaoBattleData",
    _GarrisonLayoutData: {},
    getGarrisonLayoutData: function(type) {
    if (this._GarrisonLayoutData[type]) {
        // source line 10, bytecode pc 25
        return this._GarrisonLayoutData[type];
    }
    // source line 12, bytecode pc 32
    return {}
},
    setGarrisonLayoutData: function(data, type) {
    // source line 17, bytecode pc 13
    (this._GarrisonLayoutData[type] = data);
}
}));
