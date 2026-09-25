// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/Mail.js:1
// source line 1, bytecode pc 0
var JsonToString;
// source line 1, bytecode pc 20
(JsonToString = function(O) {
    var S, J, i;
    // source line 3, bytecode pc 8
    (S = []);
    if ((Object.prototype.toString.apply(O) === "[object Array]")) {
        // source line 6, bytecode pc 58
        (i = 0);
        while ((i < O.length)) {
            // source line 7, bytecode pc 102
            S.push(JsonToString(O[i]));
            // source line 6, bytecode pc 117
            i++;
        }
        // source line 8, bytecode pc 171
        (J = (("[" + S.join(",")) + "]"));
    } else {
        if ((Object.prototype.toString.apply(O) === "[object Object]")) {
            for (var i in O) {
                if (!O.hasOwnProperty(i)) {
                } else {
                    if ((typeof(O[i]) == "string")) {
                        // source line 17, bytecode pc 308
                        (O[i] = (("\"" + O[i]) + "\""));
                    } else {
                        if ((typeof(O[i]) == "object")) {
                            // source line 20, bytecode pc 347
                            (O[i] = O[i]);
                        } else {
                            // source line 22, bytecode pc 384
                            xs.log(("O[i] is not string or object! error " + typeof(O[i])));
                        }
                    }
                    // source line 25, bytecode pc 429
                    S.push((((("\"" + i) + "\"") + ":") + O[i]));
                }
            }
            // source line 27, bytecode pc 473
            (J = (("{" + S.join(",")) + "}"));
        }
    }
    // source line 29, bytecode pc 477
    return J;
});
// source line 273, bytecode pc 324
(xs.Models.MailModel = cc.Class.extend({
    name: "MailModel",
    ctor: function() {
    // source line 34, bytecode pc 22
    xs.log("MailModel ctor");
},
    init: function(params) {
    // source line 38, bytecode pc 7
    (this._loginFlag = false);
    // source line 40, bytecode pc 15
    (this._newSystemOrPlayerFlag = false);
    // source line 41, bytecode pc 23
    (this._newRewardFlag = false);
    // source line 43, bytecode pc 31
    (this._maxMailId = 0);
    // source line 45, bytecode pc 39
    (this._mailData = null);
    // source line 47, bytecode pc 47
    (this._newSystemMailNum = 0);
    // source line 48, bytecode pc 55
    (this._newUserMailNum = 0);
    // source line 51, bytecode pc 85
    xs.dump("this._localData ", this._localData);
    // source line 53, bytecode pc 127
    (this._keyValueDict = this._setDict(this._localData, new buckets.Dictionary()));
    // source line 56, bytecode pc 139
    (this.s_mailTypeGift = "gift");
    // source line 57, bytecode pc 151
    (this.s_mailTypeNormalSystem = "normalSystem");
    // source line 58, bytecode pc 163
    (this.s_mailFriendApply = "friendApply");
    // source line 59, bytecode pc 175
    (this.s_mailNormalUser = "normalUser");
    // source line 60, bytecode pc 187
    (this.s_mailEvent = "event");
    // source line 65, bytecode pc 189
    return true;
},
    queryMailList: function() {
    // source line 70, bytecode pc 48
    xs.Tools.Net.requestMail({ forcepush: true }, this.onResponse, this);
},
    loginQueryMailList: function() {
    if ((this._loginFlag == false)) {
        // source line 74, bytecode pc 20
        (this._loginFlag = true);
        // source line 76, bytecode pc 43
        xs.log("MailModel loginQueryMailList");
    }
},
    onResponse: function(data) {
    var _mailData, _result;
    // source line 80, bytecode pc 14
    this._setLoginFlag(true);
    // source line 82, bytecode pc 26
    (_mailData = data.email_list);
    // source line 83, bytecode pc 43
    this.setServiceData(_mailData);
    // source line 86, bytecode pc 80
    this._setNewSystemOrPlayerMailFlag(this._analyzeDataSystemOrPlayerFlag(_mailData, this._keyValueDict));
    // source line 87, bytecode pc 100
    (_result = this.analyzeDataRewardFlag(_mailData));
    // source line 88, bytecode pc 127
    cc.log(("onResponse _result is " + _result));
    // source line 90, bytecode pc 144
    this.setNewRewardFlag(_result);
    if ((this._callBack != null)) {
        // source line 92, bytecode pc 170
        this._callBack();
    }
    // source line 96, bytecode pc 218
    xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
},
    setResponseCallback: function(callback) {
    // source line 99, bytecode pc 9
    (this._callBack = callback);
},
    allMailBeRead: function(data, dict) {
    if (this.analyzeDataAndStorageOnDict(data, dict)) {
        // source line 105, bytecode pc 39
        this._setNewSystemOrPlayerMailFlag(true);
        // source line 107, bytecode pc 54
        this._setNewSystemMailNum(0);
        // source line 108, bytecode pc 69
        this._setNewUserMailNum(0);
    }
    // source line 111, bytecode pc 117
    xs.Profile.GameData.Mgr.getInstance().Hint.updateHintInfo();
},
    getMailData: function() {
    // source line 114, bytecode pc 6
    return this._mailData;
},
    getMailDict: function() {
    // source line 117, bytecode pc 6
    return this._keyValueDict;
},
    setNewRewardFlag: function(flag) {
    // source line 120, bytecode pc 9
    (this._newRewardFlag = flag);
},
    _setNewSystemOrPlayerMailFlag: function(flag) {
    // source line 123, bytecode pc 9
    (this._newSystemOrPlayerFlag = flag);
},
    getNewRewardFlag: function() {
    // source line 126, bytecode pc 6
    return this._newRewardFlag;
},
    getNewSystemOrPlayerMailFlag: function() {
    // source line 129, bytecode pc 29
    xs.log(("getNewSystemOrPlayerMailFlag " + this._newSystemOrPlayerFlag));
    // source line 130, bytecode pc 36
    return this._newSystemOrPlayerFlag;
},
    _setLoginFlag: function(flag) {
    // source line 133, bytecode pc 9
    (this._loginFlag = flag);
},
    setServiceData: function(data) {
    // source line 137, bytecode pc 9
    (this._mailData = data);
},
    _setDict: function(data, dict) {
    var i, _pkid;
    // source line 140, bytecode pc 13
    (i = (data.length - 1));
    while ((i >= 0)) {
        // source line 141, bytecode pc 35
        (_pkid = data[i].pk_id);
        if ((_pkid != null)) {
            // source line 143, bytecode pc 72
            dict.set(_pkid, data[i]);
        }
        // source line 140, bytecode pc 87
        i--;
    }
    // source line 147, bytecode pc 102
    return dict;
},
    analyzeDataRewardFlag: function(data) {
    var result, i;
    // source line 151, bytecode pc 4
    (result = false);
    if (data) {
        // source line 153, bytecode pc 26
        (i = (data.length - 1));
        while ((i >= 0)) {
            if ((data[i].email_type == this.s_mailTypeGift)) {
                if ((data[i].is_attach_get == 0)) {
                    // source line 156, bytecode pc 80
                    (result = true);
                    break;
                }
            }
            // source line 153, bytecode pc 100
            i--;
        }
    }
    // source line 162, bytecode pc 115
    return result;
},
    _analyzeDataSystemOrPlayerFlag: function(data, dict) {
    var result, _systemMailnum, _userMailnum, i, _pkid;
    // source line 166, bytecode pc 26
    xs.dump("_analyzeDataSystemOrPlayerFlag is ", data);
    // source line 167, bytecode pc 31
    (result = false);
    // source line 168, bytecode pc 36
    (_systemMailnum = 0);
    // source line 169, bytecode pc 41
    (_userMailnum = 0);
    // source line 170, bytecode pc 55
    (i = (data.length - 1));
    while ((i >= 0)) {
        // source line 171, bytecode pc 77
        (_pkid = data[i].pk_id);
        if (((_pkid != null) && (data[i].email_type != this.s_mailTypeGift))) {
            if ((dict.get(_pkid) == null)) {
                // source line 175, bytecode pc 142
                (result = true);
                if (((data[i].email_type == this.s_mailTypeNormalSystem) || (data[i].email_type == this.s_mailEvent))) {
                    // source line 177, bytecode pc 200
                    (_systemMailnum = (_systemMailnum + 1));
                }
                if (((data[i].email_type == this.s_mailFriendApply) || (data[i].email_type == this.s_mailNormalUser))) {
                    // source line 180, bytecode pc 258
                    (_userMailnum = (_userMailnum + 1));
                }
            }
        }
        // source line 170, bytecode pc 273
        i--;
    }
    // source line 186, bytecode pc 321
    xs.log(((("_analyzeDataSystemOrPlayerFlag " + _systemMailnum) + ",") + _userMailnum));
    // source line 187, bytecode pc 338
    this._setNewSystemMailNum(_systemMailnum);
    // source line 188, bytecode pc 355
    this._setNewUserMailNum(_userMailnum);
    // source line 189, bytecode pc 382
    xs.log(("mail _analyzeDataSystemOrPlayerFlag is " + result));
    // source line 190, bytecode pc 386
    return result;
},
    analyzeDataAndStorageOnDict: function(data, dict) {
    var result, i, _pkid, _json;
    // source line 195, bytecode pc 4
    (result = false);
    // source line 196, bytecode pc 18
    (i = (data.length - 1));
    while ((i >= 0)) {
        // source line 197, bytecode pc 40
        (_pkid = data[i].pk_id);
        if (((_pkid != null) && (data[i].email_type != this.s_mailTypeGift))) {
            if ((dict.get(_pkid) == null)) {
                // source line 202, bytecode pc 120
                (_json = { pk_id: "0" });
                // source line 204, bytecode pc 143
                (_json.pk_id = _pkid.toString());
                // source line 205, bytecode pc 166
                dict.set(_pkid, _json);
                // source line 206, bytecode pc 171
                (result = true);
            }
        }
        // source line 196, bytecode pc 186
        i--;
    }
    // source line 210, bytecode pc 224
    xs.dump("analyzeDataAndStorageOnDict ", dict);
    // source line 211, bytecode pc 228
    return result;
},
    getMailDBKey: function() {
    var player;
    // source line 252, bytecode pc 50
    (player = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer());
    // source line 253, bytecode pc 78
    return (player.getPlayerId() + this._getMailDBKeySuffix());
},
    _getMailDBKeySuffix: function() {
    // source line 257, bytecode pc 5
    return "_sgs_mail_7";
},
    getNewSystemMailNum: function() {
    // source line 260, bytecode pc 29
    xs.log(("getNewSystemMailNum num " + this._newSystemMailNum));
    // source line 261, bytecode pc 36
    return this._newSystemMailNum;
},
    _setNewSystemMailNum: function(num) {
    // source line 264, bytecode pc 26
    xs.log(("_setNewSystemMailNum " + num));
    // source line 266, bytecode pc 36
    (this._newSystemMailNum = num);
},
    getNewUserMailNum: function() {
    // source line 270, bytecode pc 29
    xs.log(("getNewUserMailNum num " + this._newUserMailNum));
    // source line 271, bytecode pc 36
    return this._newUserMailNum;
},
    _setNewUserMailNum: function(num) {
    // source line 274, bytecode pc 26
    xs.log(("_setNewUserMailNum " + num));
    // source line 276, bytecode pc 36
    (this._newUserMailNum = num);
}
}));
// source line 280, bytecode pc 350
(xs.Models.MailModel.create = function(params) {
    var obj;
    // source line 281, bytecode pc 23
    (obj = new xs.Models.MailModel());
    if ((obj && obj.init(params))) {
        // source line 283, bytecode pc 59
        return obj;
    }
    // source line 285, bytecode pc 82
    xs.log("Create xs.Models.MailModel error");
    // source line 286, bytecode pc 84
    return null;
});
// source line 289, bytecode pc 376
(xs.Models.MailModel.getInstance = function() {
    var param;
    if ((xs.Models.MailModel.s_MailModel == null)) {
        // source line 292, bytecode pc 36
        (param = {});
        // source line 293, bytecode pc 87
        (xs.Models.MailModel.s_MailModel = xs.Models.MailModel.create(param));
    }
    // source line 295, bytecode pc 108
    return xs.Models.MailModel.s_MailModel;
});
