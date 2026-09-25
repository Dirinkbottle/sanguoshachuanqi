// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/ChatMessageManager.js:1
// source line 209, bytecode pc 237
(xs.Models.ChatMessageManager = cc.Class.extend({
    name: "xs.Models.ChatMessageManager",
    cfg: {
        maxQueueCount: 40,
        onceLanternShowTime: 5,
        onceLanternRequestTime: 30,
        onceLanternRequestTimeAdd: 60,
        onceLanternRequestTimeMax: 300,
        requestLimit: 20
    },
    init: function() {
    // source line 18, bytecode pc 16
    (this.lanternMsgQueue = new Array());
    // source line 20, bytecode pc 33
    (this.worldMsgQueue = new Array());
    // source line 22, bytecode pc 50
    (this.guildMsgQueue = new Array());
    // source line 24, bytecode pc 67
    (this.privateMsgQueue = new Array());
    // source line 26, bytecode pc 84
    (this.duijiuMsgQueue = new Array());
    // source line 28, bytecode pc 92
    (this.canLanternRequest = true);
    // source line 30, bytecode pc 104
    (this.lastLanternMsg = "");
    // source line 32, bytecode pc 122
    (this.onceLanternRequestTime = this.cfg.onceLanternRequestTime);
    // source line 35, bytecode pc 164
    xs.director.getScheduler().unscheduleCallbackForTarget(this, this.showLanternMessage);
    // source line 36, bytecode pc 229
    xs.director.getScheduler().scheduleCallbackForTarget(this, this.showLanternMessage, this.cfg.onceLanternShowTime, cc.REPEAT_FOREVER);
    // source line 38, bytecode pc 231
    return true;
},
    onExit: function() {
    // source line 42, bytecode pc 41
    xs.director.getScheduler().unscheduleCallbackForTarget(this, this.showLanternMessage);
    // source line 43, bytecode pc 83
    xs.director.getScheduler().unscheduleCallbackForTarget(this, this._lanternCD_Over);
    // source line 44, bytecode pc 96
    this._super();
},
    requestNewMsgFromServer: function(isShowNow) {
    // source line 66, bytecode pc 174
    xs.Views.Mgr.reqUrl(xs.Cfg.Url.GetMessage, {
    user_id: xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId(),
    limit: this.cfg.requestLimit,
    token: ""
}, function(resData) {
    var _isShowNow;
    if (resData) {
        // source line 59, bytecode pc 42
        (_isShowNow = ((isShowNow != null) ? isShowNow : false));
        // source line 60, bytecode pc 68
        this.requestNewMsgFromServer_Success(resData.chat_msg, _isShowNow);
    }
}.bind(this), null, false, null, "requestNewMsgFromServer");
},
    requestNewMsgFromServer_Success: function(chat_msgArr, isShowNow) {
    var tmpWorldArray, tmpGuildArray, tmpPrivateArray, tmpDuijiuArray, i, chatModel;
    if (((chat_msgArr == null) || (chat_msgArr.length == 0))) {
        // source line 74, bytecode pc 50
        (this.onceLanternRequestTime = (this.onceLanternRequestTime + this.cfg.onceLanternRequestTimeAdd));
        if ((this.onceLanternRequestTime > this.cfg.onceLanternRequestTimeMax)) {
            // source line 76, bytecode pc 91
            (this.onceLanternRequestTime = this.cfg.onceLanternRequestTimeMax);
        }
    } else {
        // source line 80, bytecode pc 114
        (this.onceLanternRequestTime = this.cfg.onceLanternRequestTime);
        // source line 83, bytecode pc 128
        (tmpWorldArray = new Array());
        // source line 84, bytecode pc 142
        (tmpGuildArray = new Array());
        // source line 85, bytecode pc 156
        (tmpPrivateArray = new Array());
        // source line 86, bytecode pc 170
        (tmpDuijiuArray = new Array());
        // source line 87, bytecode pc 175
        (i = 0);
        while ((i < chat_msgArr.length)) {
            // source line 88, bytecode pc 219
            (chatModel = xs.Models.Chat.createWithData(chat_msgArr[i]));
            // source line 89, bytecode pc 228
            switch (chatModel.channel) {
                case 6:
                /* TODO_BYTECODE pc=228 opcode=tableswitch reason=tableswitch_target_invalid */
                break;
                case 1:
                case 4:
                case 5:
                // source line 93, bytecode pc 287
                tmpWorldArray.push(chatModel);
                break;
                case 2:
                // source line 96, bytecode pc 311
                tmpGuildArray.push(chatModel);
                break;
                case 3:
                // source line 99, bytecode pc 335
                tmpPrivateArray.push(chatModel);
                break;
                case 7:
                // source line 102, bytecode pc 359
                tmpDuijiuArray.push(chatModel);
                break;
                default:
                break;
            }
            // source line 87, bytecode pc 384
            i++;
        }
        // source line 110, bytecode pc 430
        (this.worldMsgQueue = this.worldMsgQueue.concat(tmpWorldArray));
        // source line 111, bytecode pc 458
        (this.guildMsgQueue = this.guildMsgQueue.concat(tmpGuildArray));
        // source line 112, bytecode pc 486
        (this.privateMsgQueue = this.privateMsgQueue.concat(tmpPrivateArray));
        // source line 113, bytecode pc 514
        (this.duijiuMsgQueue = this.duijiuMsgQueue.concat(tmpDuijiuArray));
        // source line 115, bytecode pc 575
        xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_WorldMessage, { chatModelArray: tmpWorldArray, isShowNow: isShowNow });
        // source line 116, bytecode pc 636
        xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_GuildMessage, { chatModelArray: tmpGuildArray, isShowNow: isShowNow });
        // source line 117, bytecode pc 697
        xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_PrivateMessage, { chatModelArray: tmpPrivateArray, isShowNow: isShowNow });
        // source line 118, bytecode pc 758
        xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_DuijiuMessage, { chatModelArray: tmpDuijiuArray, isShowNow: isShowNow });
        // source line 121, bytecode pc 790
        xs.log(("chat list 7 :" + tmpDuijiuArray.length));
        // source line 125, bytecode pc 818
        (this.lanternMsgQueue = this.lanternMsgQueue.concat(tmpWorldArray));
        // source line 128, bytecode pc 831
        this.checkQueueMax();
    }
},
    checkQueueMax: function() {
    if ((this.worldMsgQueue.length > this.cfg.maxQueueCount)) {
        // source line 134, bytecode pc 71
        this.worldMsgQueue.splice(0, (this.worldMsgQueue.length - this.cfg.maxQueueCount));
    }
    if ((this.guildMsgQueue.length > this.cfg.maxQueueCount)) {
        // source line 138, bytecode pc 143
        this.guildMsgQueue.splice(0, (this.guildMsgQueue.length - this.cfg.maxQueueCount));
    }
    if ((this.privateMsgQueue.length > this.cfg.maxQueueCount)) {
        // source line 142, bytecode pc 215
        this.privateMsgQueue.splice(0, (this.privateMsgQueue.length - this.cfg.maxQueueCount));
    }
    if ((this.duijiuMsgQueue.length > this.cfg.maxQueueCount)) {
        // source line 146, bytecode pc 287
        this.duijiuMsgQueue.splice(0, (this.duijiuMsgQueue.length - this.cfg.maxQueueCount));
    }
},
    removeAllQueue: function() {
    // source line 151, bytecode pc 31
    this.worldMsgQueue.splice(0, this.worldMsgQueue.length);
    // source line 152, bytecode pc 63
    this.guildMsgQueue.splice(0, this.guildMsgQueue.length);
    // source line 153, bytecode pc 95
    this.privateMsgQueue.splice(0, this.privateMsgQueue.length);
    // source line 154, bytecode pc 127
    this.duijiuMsgQueue.splice(0, this.duijiuMsgQueue.length);
},
    showLanternMessage: function() {
    // source line 160, bytecode pc 50
    xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_LanternMessage, this.getMessageAtIndex0());
    // source line 162, bytecode pc 63
    this.removeMessageAtIndex0();
},
    getMessageAtIndex0: function() {
    var chatModel, message;
    if ((this.lanternMsgQueue.length > 0)) {
        // source line 168, bytecode pc 29
        (chatModel = this.lanternMsgQueue[0]);
        // source line 172, bytecode pc 102
        (message = ((((("【" + chatModel.channelName) + "】") + chatModel.nickname) + ((chatModel.channel == 1) ? ": " : "")) + chatModel.message));
        // source line 173, bytecode pc 118
        (this.lastLanternMsg = ("" + message));
        // source line 174, bytecode pc 122
        return message;
    } else {
        // source line 177, bytecode pc 129
        return null;
    }
},
    removeMessageAtIndex0: function() {
    if ((this.lanternMsgQueue.length >= 1)) {
        // source line 185, bytecode pc 35
        this.lanternMsgQueue.shift();
        // source line 186, bytecode pc 37
        return true;
    } else {
        // source line 189, bytecode pc 44
        return false;
    }
},
    requestMsgFromLantern: function() {
    // source line 195, bytecode pc 14
    this.requestNewMsgFromServer(false);
    // source line 196, bytecode pc 22
    (this.canLanternRequest = false);
    // source line 197, bytecode pc 82
    xs.director.getScheduler().scheduleCallbackForTarget(this, this._lanternCD_Over, this.onceLanternRequestTime, cc.REPEAT_FOREVER);
},
    _lanternCD_Over: function() {
    // source line 201, bytecode pc 41
    xs.director.getScheduler().unscheduleCallbackForTarget(this, this._lanternCD_Over);
    // source line 202, bytecode pc 49
    (this.canLanternRequest = true);
},
    getCanLanternRequest: function() {
    // source line 206, bytecode pc 6
    return this.canLanternRequest;
},
    getLastLanternMsg: function() {
    // source line 210, bytecode pc 6
    return this.lastLanternMsg;
}
}));
// source line 218, bytecode pc 259
(xs.Models.ChatMessageManager._instance = null);
// source line 219, bytecode pc 285
(xs.Models.ChatMessageManager.getInstance = function() {
    if ((xs.Models.ChatMessageManager._instance == null)) {
        // source line 221, bytecode pc 67
        (xs.Models.ChatMessageManager._instance = new xs.Models.ChatMessageManager());
        // source line 222, bytecode pc 99
        xs.Models.ChatMessageManager._instance.init();
    }
    // source line 224, bytecode pc 120
    return xs.Models.ChatMessageManager._instance;
});
