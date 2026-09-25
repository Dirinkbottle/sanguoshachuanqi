// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Profile/UserCfg.js:1
// source line 394, bytecode pc 704
(xs.Profile.UserCfg = (xs.Profile.UserCfg || {
    data: {},
    Cfg: {
        GameAddrIdx: { tag: "GameAddrIdx", player: false },
        FightSpeedIdx: { tag: "newFightSpeed", player: true },
        LoginAccount: { tag: "LoginAccount" },
        LoginPsw: { tag: "strLoginPsw" },
        VoiceOn_BG: { tag: "intVoiceOn_BG" },
        VoiceOn_Eff: { tag: "intVoiceOn_Eff" },
        LoginType: { tag: "intLoginType" },
        UseMoreMem: { tag: "intMemModeType" }
    },
    log: xs.Debug.emptyFunc,
    dump: xs.Debug.emptyFunc,
    _getTagByKey: function(key) {
    var _cfg, _tag;
    // source line 52, bytecode pc 13
    (_cfg = this.Cfg[key]);
    // source line 53, bytecode pc 40
    this.assert(_cfg, "need _cfg", key);
    // source line 55, bytecode pc 52
    (_tag = _cfg.tag);
    if ((_cfg.player === true)) {
        // source line 58, bytecode pc 80
        (_tag = (_tag + "_"));
        // source line 59, bytecode pc 136
        (_tag = (_tag + xs.gd_mgr.getInstance().Player.getPlayer().getPlayerId()));
    }
    // source line 61, bytecode pc 140
    return _tag;
},
    _setValueString: function(key, strValue) {
    var _key_in_db;
    if ((strValue !== this.data[key])) {
        // source line 68, bytecode pc 32
        (this.data[key] = strValue);
        // source line 70, bytecode pc 52
        (_key_in_db = this._getTagByKey(key));
        // source line 72, bytecode pc 87
        xs.Utils.LocalStore.setItem(_key_in_db, strValue);
    }
},
    _getValueString: function(key, strValueDef) {
    var _key_in_db, _value;
    if (((this.data[key] === null) || (this.data[key] === undefined))) {
        // source line 78, bytecode pc 58
        (_key_in_db = this._getTagByKey(key));
        // source line 80, bytecode pc 92
        (_value = xs.Utils.LocalStore.getItem(_key_in_db));
        if ((_value === "")) {
            // source line 82, bytecode pc 127
            this._setValueString(key, strValueDef);
            // source line 83, bytecode pc 131
            return strValueDef;
        }
        // source line 86, bytecode pc 145
        (this.data[key] = _value);
    }
    // source line 88, bytecode pc 156
    return this.data[key];
},
    _getValueInt: function(key, def) {
    var _key_in_db, _value;
    if (((this.data[key] === null) || (this.data[key] === undefined))) {
        // source line 95, bytecode pc 58
        (_key_in_db = this._getTagByKey(key));
        // source line 97, bytecode pc 92
        (_value = xs.Utils.LocalStore.getItem(_key_in_db));
        if ((_value === "")) {
            // source line 99, bytecode pc 127
            this._setValueInt(key, def);
            // source line 100, bytecode pc 131
            return def;
        }
        // source line 103, bytecode pc 194
        (this.data[key] = xs.Utils.parseIntSafe(xs.Utils.LocalStore.getItem(_key_in_db)));
    }
    // source line 108, bytecode pc 205
    return this.data[key];
},
    _setValueInt: function(key, intValue) {
    var _key_in_db;
    if ((intValue !== this.data[key])) {
        // source line 116, bytecode pc 32
        (this.data[key] = intValue);
        // source line 118, bytecode pc 52
        (_key_in_db = this._getTagByKey(key));
        // source line 120, bytecode pc 94
        xs.Utils.LocalStore.setItem(_key_in_db, this.data[key]);
    }
},
    _getValueBool: function(key, def) {
    var _intDef, _value;
    if ((def === true)) {
        // source line 131, bytecode pc 18
        (_intDef = 1);
    } else {
        // source line 133, bytecode pc 28
        (_intDef = 0);
    }
    // source line 136, bytecode pc 52
    (_value = this._getValueInt(key, _intDef));
    // source line 141, bytecode pc 58
    return (_value === 1);
},
    _setValueBool: function(key, bValue) {
    if ((bValue === false)) {
        // source line 147, bytecode pc 28
        this._setValueInt(key, 0);
    } else {
        // source line 149, bytecode pc 52
        this._setValueInt(key, 1);
    }
},
    isVoiceOn_Bg: function() {
    // source line 158, bytecode pc 24
    this.log("isVoiceOn_Bg", "111");
    // source line 159, bytecode pc 45
    return this._getValueBool("VoiceOn_BG", true);
},
    isVoiceOn_Eff: function() {
    // source line 162, bytecode pc 24
    this.log("isVoiceOn_Eff", "111");
    // source line 163, bytecode pc 45
    return this._getValueBool("VoiceOn_Eff", true);
},
    isMemMode_UseMoreMem: function() {
    var _ret;
    // source line 168, bytecode pc 23
    (_ret = this._getValueBool("UseMoreMem", false));
    // source line 169, bytecode pc 50
    xs.log_zj("isMemMode_UseMoreMem", _ret);
    // source line 170, bytecode pc 54
    return _ret;
},
    setVoiceOn_Bg: function(flag) {
    // source line 174, bytecode pc 22
    this._setValueBool("VoiceOn_BG", flag);
},
    setVoiceOn_Eff: function(flag) {
    // source line 177, bytecode pc 22
    this._setValueBool("VoiceOn_Eff", flag);
},
    setMemMode_UseMoreMem: function(flag) {
    // source line 180, bytecode pc 22
    this._setValueBool("UseMoreMem", flag);
},
    getGameAddr: function() {
    // source line 184, bytecode pc 6
    return this._addr;
},
    setGameAddr: function(addr) {
    // source line 188, bytecode pc 9
    (this._addr = addr);
},
    getFightSpeedIdx: function() {
    var _key_in_db, _value, def;
    if (((this.data.FightSpeedIdx === null) || (this.data.FightSpeedIdx === undefined))) {
        // source line 192, bytecode pc 62
        (_key_in_db = this._getTagByKey("FightSpeedIdx"));
        // source line 193, bytecode pc 96
        (_value = xs.Utils.LocalStore.getItem(_key_in_db));
        if ((_value === "")) {
            // source line 195, bytecode pc 140
            (def = xs.Profile.Permission.getUserStarSpeed());
            // source line 196, bytecode pc 163
            this._setValueInt("FightSpeedIdx", def);
            // source line 197, bytecode pc 167
            return def;
        }
        // source line 199, bytecode pc 204
        (this.data.FightSpeedIdx = xs.Utils.parseIntSafe(_value));
    }
    // source line 201, bytecode pc 216
    return this.data.FightSpeedIdx;
},
    setFightSpeedIdx: function(idx) {
    // source line 205, bytecode pc 22
    this._setValueInt("FightSpeedIdx", idx);
},
    setLoginType: function(loginType) {
    // source line 210, bytecode pc 22
    this._setValueInt("LoginType", loginType);
},
    getLoginType: function() {
    // source line 214, bytecode pc 29
    return this._getValueInt("LoginType", xs.Constant_LoginType_First);
},
    setLoginAccount: function(account) {
    if (!account) {
        // source line 220, bytecode pc 10
        return void 0;
    }
    // source line 222, bytecode pc 33
    this._setValueString("LoginAccount", account);
},
    getLoginAccount: function() {
    // source line 226, bytecode pc 24
    return this._getValueString("LoginAccount", "");
},
    setLoginPsw: function(psw) {
    var _psw;
    if (!psw) {
        // source line 232, bytecode pc 10
        return void 0;
    }
    // source line 234, bytecode pc 45
    (_psw = xs.Utils.rc4("bianfengsanguoshachuanqi", psw));
    // source line 235, bytecode pc 95
    this._setValueString("LoginPsw", xs.Utils.Base64WithUtf8.encode(_psw));
},
    getLoginPsw: function() {
    var psw;
    // source line 239, bytecode pc 27
    (psw = this._getValueString("LoginPsw", ""));
    // source line 240, bytecode pc 86
    return xs.Utils.rc4("bianfengsanguoshachuanqi", xs.Utils.Base64WithUtf8.decode(psw));
},
    setServerListData: function(serverListData) {
    // source line 246, bytecode pc 9
    (this.serverListData = serverListData);
},
    getServerListData: function() {
    // source line 250, bytecode pc 6
    return this.serverListData;
},
    getMailDBKey: function() {
    // source line 254, bytecode pc 5
    return "sgs_mail";
},
    setAccountUid: function(accountUid) {
    // source line 259, bytecode pc 9
    (this.m_accountUid = accountUid);
},
    getAccountUid: function() {
    if ((!xs.Utils.isEmpty(xs.cfg_account_uid) && !xs.release)) {
        // source line 264, bytecode pc 77
        xs.log("use the xs.cfg_account_uid");
        // source line 265, bytecode pc 88
        return xs.cfg_account_uid;
    }
    if (!xs.Utils.isEmpty(this.getDebugAccountUid())) {
        // source line 268, bytecode pc 151
        xs.log("use the local store account uid");
        // source line 269, bytecode pc 164
        return this.getDebugAccountUid();
    }
    // source line 271, bytecode pc 171
    return this.m_accountUid;
},
    getHulaoBattleHintDayInfor: function() {
    var myDay, m_account_uid, hulaoBattleKey, _result, _data, _empty, _str;
    // source line 275, bytecode pc 24
    (myDay = new Date().getDay());
    // source line 276, bytecode pc 86
    (m_account_uid = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getAccount_uid());
    // source line 277, bytecode pc 99
    (hulaoBattleKey = ("hulaoBattle_" + m_account_uid));
    // source line 278, bytecode pc 104
    (_result = null);
    // source line 279, bytecode pc 138
    (_data = xs.Utils.LocalStore.getItem(hulaoBattleKey));
    if ((_data == "")) {
        // source line 282, bytecode pc 161
        (_empty = "{\"mDay\":false,\"open\":true}");
        // source line 283, bytecode pc 196
        xs.Utils.LocalStore.setItem(hulaoBattleKey, _empty);
        // source line 284, bytecode pc 203
        (_data = _empty);
    }
    try {
        // source line 287, bytecode pc 228
        (_result = JSON.parse(_data));
    } catch (e) {
        // source line 290, bytecode pc 259
        (_result = { mDay: false });
        /* TODO_BYTECODE pc=260 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    if ((myDay != _result.mDay)) {
        // source line 293, bytecode pc 295
        (_result.mDay = 1);
        // source line 294, bytecode pc 305
        (_result.open = true);
        // source line 295, bytecode pc 329
        (_str = JSON.stringify(_result));
        // source line 296, bytecode pc 364
        xs.Utils.LocalStore.setItem(hulaoBattleKey, _str);
        // source line 297, bytecode pc 379
        this.setHuLaoBattle(true);
    } else {
        // source line 299, bytecode pc 406
        this.setHuLaoBattle(_result.open);
    }
},
    writeHulaoData: function(_bool) {
    var m_account_uid, hulaoBattleKey, myDay, _str;
    // source line 304, bytecode pc 16
    this.setHuLaoBattle(_bool);
    // source line 305, bytecode pc 78
    (m_account_uid = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getAccount_uid());
    // source line 306, bytecode pc 91
    (hulaoBattleKey = ("hulaoBattle_" + m_account_uid));
    // source line 307, bytecode pc 116
    (myDay = new Date().getDay());
    // source line 310, bytecode pc 159
    (_str = JSON.stringify({ mDay: myDay, open: _bool }));
    // source line 312, bytecode pc 194
    xs.Utils.LocalStore.setItem(hulaoBattleKey, _str);
},
    getHuLaoBattle: function() {
    // source line 315, bytecode pc 13
    return (this.m_hulao || false);
},
    setHuLaoBattle: function(_bool) {
    // source line 318, bytecode pc 9
    (this.m_hulao = _bool);
},
    setToken: function(token) {
    // source line 322, bytecode pc 9
    (this._token = token);
},
    getToken: function() {
    // source line 326, bytecode pc 6
    return this._token;
},
    setAuth: function(auth) {
    // source line 331, bytecode pc 9
    (this._auth = auth);
},
    getAuth: function() {
    // source line 335, bytecode pc 17
    return (this._auth || "");
},
    _getProductIdStr: function() {
    // source line 340, bytecode pc 5
    return "disposition";
},
    readProductIdSql: function() {
    var _result, _data, _empty;
    // source line 346, bytecode pc 4
    (_result = null);
    // source line 347, bytecode pc 47
    (_data = xs.Utils.LocalStore.getItem(this._getProductIdStr()));
    if ((_data == "")) {
        // source line 351, bytecode pc 70
        (_empty = "{\"productIid\":false}");
        // source line 353, bytecode pc 114
        xs.Utils.LocalStore.setItem(this._getProductIdStr(), _empty);
        // source line 354, bytecode pc 121
        (_data = _empty);
    }
    try {
        // source line 358, bytecode pc 146
        (_result = JSON.parse(_data));
    } catch (e) {
        // source line 364, bytecode pc 177
        (_result = { productIid: false });
        /* TODO_BYTECODE pc=178 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
    // source line 368, bytecode pc 195
    return _result.productIid;
},
    readProductId: function() {
    var mId;
    // source line 372, bytecode pc 47
    (mId = (this.readProductIdSql() ? this.readProductIdSql() : xs.app_indentify));
    // source line 373, bytecode pc 68
    xs.setServerAddrsMap(mId);
    // source line 374, bytecode pc 72
    return mId;
},
    setProductIdSql: function(mId) {
    var _productIid, _str;
    // source line 381, bytecode pc 6
    (_productIid = mId);
    // source line 382, bytecode pc 41
    (_str = JSON.stringify({ productIid: _productIid }));
    // source line 385, bytecode pc 85
    xs.Utils.LocalStore.setItem(this._getProductIdStr(), _str);
},
    setDebugAccountUid: function(account_uid) {
    // source line 391, bytecode pc 36
    xs.Utils.LocalStore.setItem("debug_account_uid", account_uid);
},
    getDebugAccountUid: function() {
    // source line 395, bytecode pc 32
    return xs.Utils.LocalStore.getItem("debug_account_uid");
}
}));
