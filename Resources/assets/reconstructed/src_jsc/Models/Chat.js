// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Models/Chat.js:1
// source line 69, bytecode pc 93
(xs.Models.Chat = cc.Class.extend({
    name: "xs.Models.Chat",
    init: function() {
    // source line 9, bytecode pc 7
    (this.user_id = null);
    // source line 10, bytecode pc 15
    (this.channel = null);
    // source line 11, bytecode pc 23
    (this.channelName = null);
    // source line 12, bytecode pc 31
    (this.vip_level = 0);
    // source line 13, bytecode pc 39
    (this.nickname = null);
    // source line 14, bytecode pc 47
    (this.message = null);
    // source line 16, bytecode pc 57
    (this.cellWidth = 780);
    // source line 17, bytecode pc 65
    (this.cellHeight = 0);
    // source line 18, bytecode pc 74
    (this.lineDistance = 10);
    // source line 20, bytecode pc 76
    return true;
},
    load: function(jsonData) {
    // source line 24, bytecode pc 14
    (this.user_id = jsonData.user_id);
    // source line 25, bytecode pc 29
    (this.channel = jsonData.channel);
    // source line 26, bytecode pc 44
    (this.vip_level = jsonData.vip_level);
    // source line 27, bytecode pc 59
    (this.nickname = jsonData.nickname);
    // source line 28, bytecode pc 74
    (this.message = jsonData.message);
    // source line 30, bytecode pc 81
    switch (this.channel) {
        case 6:
        /* TODO_BYTECODE pc=81 opcode=tableswitch reason=tableswitch_target_invalid */
        break;
        case 1:
        // source line 32, bytecode pc 160
        (this.channelName = xs.Tools.String.createString("auto_name_12"));
        break;
        case 2:
        // source line 35, bytecode pc 204
        (this.channelName = xs.Tools.String.createString("btnStr_union"));
        break;
        case 3:
        // source line 38, bytecode pc 248
        (this.channelName = xs.Tools.String.createString("btnStr_prvChar"));
        break;
        case 4:
        // source line 41, bytecode pc 292
        (this.channelName = xs.Tools.String.createString("auto_name_13"));
        break;
        case 5:
        // source line 44, bytecode pc 336
        (this.channelName = xs.Tools.String.createString("titleStr_Notice"));
        break;
        case 7:
        // source line 47, bytecode pc 380
        (this.channelName = xs.Tools.String.createString("titleStr_duiJiu"));
        break;
        default:
        // source line 50, bytecode pc 424
        (this.channelName = xs.Tools.String.createString("auto_name_14"));
        break;
    }
    // source line 55, bytecode pc 438
    (this.cellHeight = -1);
},
    getCellHeight: function() {
    if ((this.cellHeight != -1)) {
        // source line 60, bytecode pc 20
        return this.cellHeight;
    } else {
        // source line 63, bytecode pc 46
        (this.cellHeight = this.refresh(null));
        // source line 64, bytecode pc 53
        return this.cellHeight;
    }
},
    refresh: function(cell) {
    var cellHeight, contentLabel, bqBG, bq;
    // source line 70, bytecode pc 4
    (cellHeight = 0);
    if ((this.channel == 4)) {
        // source line 75, bytecode pc 65
        (contentLabel = xs.Factorys.Label.createByStyleIdWithString("LS_liaotian_xitonghua", this.message));
    } else {
        // source line 79, bytecode pc 113
        (contentLabel = xs.Factorys.Label.createByStyleIdWithString("LS_liaotian_5", this.message));
    }
    // source line 82, bytecode pc 151
    contentLabel.setDimensions(cc.size(680, 0));
    // source line 83, bytecode pc 177
    contentLabel.setHorizontalAlignment(cc.TEXT_ALIGNMENT_LEFT);
    // source line 84, bytecode pc 213
    contentLabel.setAnchorPoint(cc.p(0, 0));
    // source line 85, bytecode pc 257
    contentLabel.setPosition(cc.p(100, (0 + this.lineDistance)));
    if ((cell != null)) {
        // source line 88, bytecode pc 302
        xs.Utils.Node.attachNodes(cell, contentLabel);
    }
    // source line 90, bytecode pc 343
    (cellHeight = (cellHeight + ((contentLabel.getContentSize().height + this.lineDistance) + this.lineDistance)));
    // source line 93, bytecode pc 385
    (bqBG = xs.Factorys.Sprite.create("DlgCmn_liaotianhengtiao", "DlgCmn"));
    // source line 94, bytecode pc 425
    bqBG.setAnchorPoint(cc.p(0, 0.5));
    // source line 95, bytecode pc 487
    bqBG.setPosition(cc.p(10, (cellHeight + (bqBG.getContentSize().height / 2))));
    if ((cell != null)) {
        // source line 97, bytecode pc 532
        xs.Utils.Node.attachNodes(cell, bqBG);
    }
    if ((this.channel == 4)) {
        // source line 103, bytecode pc 618
        (bq = xs.Views.Label.LabelExt.createWithStyles([ "LS_liaotian_3", "LS_qianghua_done", "LS_liaotian_4" ]));
    } else {
        if ((this.channel == 1)) {
            // source line 107, bytecode pc 704
            (bq = xs.Views.Label.LabelExt.createWithStyles([ "LS_liaotian_shijie", "LS_qianghua_done", "LS_liaotian_4" ]));
        } else {
            // source line 111, bytecode pc 777
            (bq = xs.Views.Label.LabelExt.createWithStyles([ "LS_liaotian_3", "LS_qianghua_done", "LS_liaotian_4" ]));
        }
    }
    // source line 114, bytecode pc 817
    bq.setAnchorPoint(cc.p(0, 0.5));
    // source line 115, bytecode pc 879
    bq.setPosition(cc.p(10, (cellHeight + (bqBG.getContentSize().height / 2))));
    // source line 118, bytecode pc 1034
    bq.setStringByStrings([
    (("【" + this.channelName) + "】"),
    ((this.vip_level == 0) ? "" : (xs.Tools.String.createString("auto_name_vip") + this.vip_level)),
    ((this.channel == 5) ? "" : (("【" + this.nickname) + "】:"))
]);
    // source line 119, bytecode pc 1057
    bq.setFontScaleAtIndex(1, 0.5);
    if ((cell != null)) {
        // source line 121, bytecode pc 1102
        xs.Utils.Node.attachNodes(cell, bq);
    }
    // source line 123, bytecode pc 1129
    (cellHeight = (cellHeight + bqBG.getContentSize().height));
    if ((cell == null)) {
        // source line 126, bytecode pc 1143
        return cellHeight;
    }
}
}));
// source line 132, bytecode pc 119
(xs.Models.Chat.createWithData = function(jsonData) {
    var _ret;
    // source line 133, bytecode pc 23
    (_ret = new xs.Models.Chat());
    if ((_ret && _ret.init())) {
        if (jsonData) {
            // source line 136, bytecode pc 78
            _ret.load(jsonData);
        }
        // source line 138, bytecode pc 82
        return _ret;
    }
    // source line 140, bytecode pc 84
    return null;
});
