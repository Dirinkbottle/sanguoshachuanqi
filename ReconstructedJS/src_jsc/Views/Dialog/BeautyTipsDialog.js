// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/BeautyTipsDialog.js:1
// source line 144, bytecode pc 405
(xs.Views.Dialog.BeautyTipsDialog = xs.Views.HungerLayer.extend({
    name: "BeautyTipsDialog",
    init: function(params) {
    if (!this._super()) {
        // source line 7, bytecode pc 19
        return false;
    }
    // source line 10, bytecode pc 27
    (this.m_closeBtn = null);
    // source line 11, bytecode pc 35
    (this.m_tips_title = null);
    // source line 12, bytecode pc 43
    (this.m_now_level = null);
    // source line 13, bytecode pc 51
    (this.m_now_value = null);
    // source line 14, bytecode pc 59
    (this.m_next_level = null);
    // source line 15, bytecode pc 67
    (this.m_next_value = null);
    // source line 17, bytecode pc 77
    (this.m_data = params);
    // source line 19, bytecode pc 128
    (this.m_ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.BeautyTips, this));
    // source line 20, bytecode pc 171
    this.m_ccbNode.setContentSize(cc.size(511, 338));
    // source line 21, bytecode pc 218
    this.m_ccbNode.setAnchorPoint(cc.p(0.5, 0.5));
    // source line 22, bytecode pc 277
    xs.Utils.Node.attachNodes(this, this.m_ccbNode, { desc: "c", sc: true });
    // source line 24, bytecode pc 325
    xs.Utils.UI.replaceCcbByCfg(this.m_ccbNode, this.cfg.tipsCfg, this);
    // source line 27, bytecode pc 349
    this.m_closeBtn.setOnClickCallBack(function() {
    // source line 28, bytecode pc 26
    xs.Views.Mgr.hideDialog();
});
    // source line 32, bytecode pc 362
    this.update();
    // source line 34, bytecode pc 364
    return true;
},
    update: function() {
    var idx, title, nowLevel, nowValue, nextLevel, nextValue, itemInfo;
    if (!this.m_data) {
        // source line 55, bytecode pc 13
        return void 0;
    }
    // source line 57, bytecode pc 28
    (idx = this.m_data.index);
    // source line 58, bytecode pc 53
    (nextValue = " ");
    // source line 59, bytecode pc 74
    (title = (nowLevel = (nowValue = (nextLevel = (nextValue = "")))));
    // source line 60, bytecode pc 151
    xs.log((((((((((((" update idx：" + idx) + " title: ") + title) + " nowLevel: ") + nowLevel) + " nowValue: ") + nowValue) + " nextLevel: ") + nextLevel) + " nextValue: ") + nextValue));
    // source line 62, bytecode pc 155
    switch (idx) {
        case 0:
        // source line 65, bytecode pc 215
        (title = xs.Tools.String.createString("BeautyTips8"));
        // source line 66, bytecode pc 277
        (nowLevel = xs.Tools.String.createStringWithArgsArray("BeautyTips1", [ this.m_data.nowData.talent_level ]));
        // source line 67, bytecode pc 339
        (nowValue = xs.Tools.String.createStringWithArgsArray("BeautyTips3", [ this.m_data.nowData.beauty_currency ]));
        if ((this.m_data.nextData != null)) {
            // source line 69, bytecode pc 393
            (nextLevel = xs.Tools.String.createString("BeautyTips2"));
            // source line 70, bytecode pc 455
            (nextValue = xs.Tools.String.createStringWithArgsArray("BeautyTips3", [ this.m_data.nextData.beauty_currency ]));
        } else {
            // source line 72, bytecode pc 496
            (nextValue = xs.Tools.String.createString("BeautyTips5"));
        }
        break;
        case 1:
        // source line 76, bytecode pc 537
        (title = xs.Tools.String.createString("BeautyTips9"));
        // source line 77, bytecode pc 599
        (nowLevel = xs.Tools.String.createStringWithArgsArray("BeautyTips1", [ this.m_data.nowData.talent_level ]));
        // source line 78, bytecode pc 661
        (nowValue = xs.Tools.String.createStringWithArgsArray("BeautyTips4", [ this.m_data.nowData.box_num ]));
        if ((this.m_data.nextData != null)) {
            // source line 80, bytecode pc 715
            (nextLevel = xs.Tools.String.createString("BeautyTips2"));
            // source line 81, bytecode pc 777
            (nextValue = xs.Tools.String.createStringWithArgsArray("BeautyTips4", [ this.m_data.nextData.box_num ]));
        } else {
            // source line 83, bytecode pc 818
            (nextValue = xs.Tools.String.createString("BeautyTips5"));
        }
        break;
        case 2:
        // source line 87, bytecode pc 859
        (title = xs.Tools.String.createString("BeautyTips10"));
        // source line 88, bytecode pc 926
        (itemInfo = xs.Profile.GameData.Mgr.getInstance().Items.createWithBase(xs.Models.ItemID_BeautyBox));
        // source line 89, bytecode pc 988
        (nowLevel = xs.Tools.String.createStringWithArgsArray("BeautyTips1", [ this.m_data.nowData.talent_level ]));
        // source line 90, bytecode pc 1068
        (nowValue = xs.Tools.String.createStringWithArgsArray("BeautyTips7", [ itemInfo.getNameString(), this.m_data.nowData.box_detail ]));
        if ((this.m_data.nextData != null)) {
            // source line 93, bytecode pc 1122
            (nextLevel = xs.Tools.String.createString("BeautyTips2"));
            // source line 95, bytecode pc 1202
            (nextValue = xs.Tools.String.createStringWithArgsArray("BeautyTips7", [ itemInfo.getNameString(), this.m_data.nextData.box_detail ]));
        } else {
            // source line 97, bytecode pc 1243
            (nextValue = xs.Tools.String.createString("BeautyTips5"));
        }
        break;
        default:
        break;
    }
    // source line 104, bytecode pc 1330
    xs.log((((((((((((" update idx：" + idx) + " title: ") + title) + " nowLevel: ") + nowLevel) + " nowValue: ") + nowValue) + " nextLevel: ") + nextLevel) + " nextValue: ") + nextValue));
    // source line 106, bytecode pc 1352
    this.m_tips_title.setString(title);
    // source line 107, bytecode pc 1374
    this.m_now_level.setString(nowLevel);
    // source line 108, bytecode pc 1396
    this.m_now_value.setString(nowValue);
    // source line 109, bytecode pc 1418
    this.m_next_level.setString(nextLevel);
    // source line 110, bytecode pc 1440
    this.m_next_value.setString(nextValue);
},
    getTalentTxt: function(level) {
    var txt;
    // source line 114, bytecode pc 28
    (level = (parseInt(level) || 1));
    // source line 115, bytecode pc 64
    (txt = xs.Tools.String.createString("BeautyTips11"));
    if ((level > 1)) {
        // source line 117, bytecode pc 114
        (txt = (txt + xs.Tools.String.createString("BeautyTips12")));
    }
    if ((level > 2)) {
        // source line 120, bytecode pc 165
        (txt = (txt + xs.Tools.String.createString("BeautyTips13")));
    }
    if ((level > 3)) {
        // source line 123, bytecode pc 216
        (txt = (txt + xs.Tools.String.createString("BeautyTips14")));
    }
    if ((level > 4)) {
        // source line 126, bytecode pc 267
        (txt = (txt + xs.Tools.String.createString("BeautyTips15")));
    }
    // source line 129, bytecode pc 271
    return txt;
},
    setBaseTouchPriority: function(priority) {
    // source line 132, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 133, bytecode pc 36
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority - 1));
},
    cfg: {
        tipsCfg: [
            { tag: 24, type: "btn", name: "m_closeBtn", id: "Btn_Close" },
            { tag: 1, type: "ls", name: "m_tips_title", id: "LS_hongyan_tips_name" },
            { tag: 10, type: "ls", name: "m_now_level", id: "LS_hongyan_txt" },
            { tag: 11, type: "ls", name: "m_now_value", id: "LS_hongyan_txt" },
            { tag: 13, type: "ls", name: "m_next_level", id: "LS_hongyan_txt" },
            { tag: 14, type: "ls", name: "m_next_value", id: "LS_hongyan_txt" }
        ]
    }
}));
// source line 149, bytecode pc 436
(xs.Views.Dialog.BeautyTipsDialog.create = function(params) {
    var ret;
    // source line 150, bytecode pc 28
    (ret = new xs.Views.Dialog.BeautyTipsDialog());
    if ((ret && ret.init(params))) {
        // source line 152, bytecode pc 64
        return ret;
    }
    // source line 154, bytecode pc 66
    return null;
});
// source line 159, bytecode pc 516
xs.Views.Mgr.registerDialog("BeautyTipsDialog", { "class": xs.Views.Dialog.BeautyTipsDialog, styleType: xs.Constant_DlgStyleType_Small });
