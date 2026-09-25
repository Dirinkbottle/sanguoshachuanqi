// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/Account/AccountInfo.js:1
// source line 7, bytecode pc 42
(xs.Models.Account = (xs.Models.Account || {}));
// source line 9, bytecode pc 68
(xs.Models.Account.AccountInfo = function() {
    // source line 10, bytecode pc 7
    (this.token = null);
    // source line 11, bytecode pc 15
    (this.account_id = null);
    // source line 13, bytecode pc 27
    (this.setToken = function(token) {
    // source line 14, bytecode pc 9
    (this.token = token);
});
    // source line 17, bytecode pc 39
    (this.setAccountId = function(account_id) {
    // source line 18, bytecode pc 9
    (this.account_id = account_id);
});
    // source line 21, bytecode pc 51
    (this.getToken = function() {
    // source line 22, bytecode pc 6
    return this.token;
});
    // source line 25, bytecode pc 63
    (this.getAccountId = function() {
    if ((!xs.Utils.isEmpty(xs.cfg_account_uid) && !xs.release)) {
        // source line 28, bytecode pc 65
        return xs.cfg_account_uid;
    }
    if (!xs.Utils.isEmpty(this.getDebugAccountUid())) {
        // source line 32, bytecode pc 118
        return this.getDebugAccountUid();
    }
    // source line 34, bytecode pc 125
    return this.account_id;
});
    // source line 36, bytecode pc 75
    (this.getDebugAccountUid = function() {
    // source line 37, bytecode pc 32
    return xs.Utils.LocalStore.getItem("debug_account_uid");
});
});
// source line 41, bytecode pc 94
(xs.Models.Account.GameServerInfo = function() {
    // source line 44, bytecode pc 7
    (this.cur_server_info = null);
    // source line 45, bytecode pc 15
    (this.curServer = null);
    // source line 47, bytecode pc 27
    (this.setInfo = function(info) {
    // source line 49, bytecode pc 28
    xs.log_zj("GameServerInfo-setInfo", info, 1);
    // source line 65, bytecode pc 38
    (this.info = info);
});
    // source line 68, bytecode pc 39
    (this.getInfo = function() {
    // source line 69, bytecode pc 6
    return this.info;
});
    // source line 72, bytecode pc 51
    (this.setCurServer = function(curServer, isHistory) {
    // source line 73, bytecode pc 9
    (this.curServer = curServer);
    // source line 74, bytecode pc 19
    (this.curServer_isHistory = isHistory);
});
    // source line 77, bytecode pc 63
    (this.getCurServerInfo = function() {
    var _serverList, _serverListLogined, _cur_server_info;
    // source line 80, bytecode pc 14
    (_serverList = this.info.server_list);
    // source line 82, bytecode pc 29
    (_serverListLogined = this.info.server_logined_list);
    // source line 84, bytecode pc 34
    (_cur_server_info = null);
    if ((!this.curServer && (this.curServer != 0))) {
        if ((_serverListLogined.length === 0)) {
            // source line 89, bytecode pc 84
            (_cur_server_info = _serverList[0]);
        } else {
            // source line 91, bytecode pc 98
            (_cur_server_info = _serverListLogined[0]);
        }
    } else {
        if (this.curServer_isHistory) {
            // source line 96, bytecode pc 128
            (_cur_server_info = _serverListLogined[this.curServer]);
        } else {
            // source line 99, bytecode pc 147
            (_cur_server_info = _serverList[this.curServer]);
        }
    }
    // source line 103, bytecode pc 157
    (this.cur_server_info = _cur_server_info);
    // source line 105, bytecode pc 164
    return this.cur_server_info;
});
    // source line 108, bytecode pc 75
    (this.getCurServerName = function() {
    // source line 109, bytecode pc 17
    return this.getCurServerInfo().server_title;
});
    // source line 112, bytecode pc 87
    (this.getCurServerId = function() {
    // source line 113, bytecode pc 17
    return this.getCurServerInfo().server_id;
});
});
