// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Tools/Party.js:1
// source line 97, bytecode pc 172
(xs.Tools.Party = (xs.Tools.Party || {
    getPartyNum: function() {
    // source line 14, bytecode pc 116
    return ((((((((this.getTrainingNum() + this.getTigerNum()) + this.getWishingNum()) + this.getFstChargeNum()) + this.getFeastNum()) + this.getPartyEventNum()) + this.getMonthCardNum()) + this.getRechargeDoubleNum()) + this.getDouble11());
},
    getTigerNum: function() {
    var _isFeastOpen, _numFeast;
    // source line 19, bytecode pc 56
    (_isFeastOpen = xs.Profile.GameData.PushInfo.getInstance().getTigerInfo().isOpen());
    // source line 20, bytecode pc 75
    (_numFeast = (_isFeastOpen ? 1 : 0));
    // source line 21, bytecode pc 79
    return _numFeast;
},
    getWishingNum: function() {
    var _isFeastOpen, _numFeast;
    // source line 26, bytecode pc 56
    (_isFeastOpen = xs.Profile.GameData.PushInfo.getInstance().getWishinInfo().isOpen());
    // source line 27, bytecode pc 75
    (_numFeast = (_isFeastOpen ? 1 : 0));
    // source line 28, bytecode pc 79
    return _numFeast;
},
    getMonthCardNum: function() {
    var _numFstCharge;
    // source line 33, bytecode pc 4
    (_numFstCharge = 1);
    // source line 37, bytecode pc 8
    return _numFstCharge;
},
    getRechargeDoubleNum: function() {
    var _numFstCharge;
    // source line 42, bytecode pc 4
    (_numFstCharge = 0);
    if ((xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getChargeCount() < 1174)) {
        // source line 44, bytecode pc 76
        (_numFstCharge = 1);
    }
    // source line 46, bytecode pc 80
    return _numFstCharge;
},
    getFstChargeNum: function() {
    var _numFstCharge;
    // source line 52, bytecode pc 4
    (_numFstCharge = 0);
    if ((xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getChargeCount() <= 0)) {
        // source line 54, bytecode pc 74
        (_numFstCharge = 1);
    }
    // source line 56, bytecode pc 78
    return _numFstCharge;
},
    getFeastNum: function() {
    var _isFeastOpen, _numFeast;
    // source line 61, bytecode pc 56
    (_isFeastOpen = xs.Profile.GameData.PushInfo.getInstance().getFeastInfo().isFeastOpen());
    // source line 62, bytecode pc 75
    (_numFeast = (_isFeastOpen ? 1 : 0));
    // source line 63, bytecode pc 79
    return _numFeast;
},
    getDouble11: function() {
    var _isFeastOpen, _numFeast;
    // source line 68, bytecode pc 56
    (_isFeastOpen = xs.Profile.GameData.PushInfo.getInstance().getPartyExchangeInfo().isStartTime());
    // source line 69, bytecode pc 75
    (_numFeast = (_isFeastOpen ? 1 : 0));
    // source line 70, bytecode pc 79
    return _numFeast;
},
    getPartyEventNum: function() {
    var _partyInfo, _numParty;
    // source line 75, bytecode pc 45
    (_partyInfo = xs.Profile.GameData.PushInfo.getInstance().getPartyInfo());
    // source line 76, bytecode pc 63
    (_numParty = _partyInfo.getPartyEventNum());
    // source line 78, bytecode pc 67
    return _numParty;
},
    getTrainingNum: function() {
    // source line 82, bytecode pc 1
    return 1;
},
    getTrainingIdx: function() {
    var _idx_training;
    // source line 86, bytecode pc 30
    (_idx_training = ((this.getTrainingNum() > 0) ? 0 : -1));
    // source line 87, bytecode pc 34
    return _idx_training;
},
    getFstChargeIdx: function() {
    var _idx_fstcharge;
    // source line 93, bytecode pc 56
    (_idx_fstcharge = ((this.getFstChargeNum() > 0) ? ((this.getTrainingNum() + this.getFstChargeNum()) - 1) : -1));
    // source line 94, bytecode pc 60
    return _idx_fstcharge;
},
    getFeastIdx: function() {
    var _idx_feast;
    // source line 100, bytecode pc 69
    (_idx_feast = ((this.getFeastNum() > 0) ? (((this.getTrainingNum() + this.getFstChargeNum()) + this.getFeastNum()) - 1) : -1));
    // source line 101, bytecode pc 73
    return _idx_feast;
}
}));
