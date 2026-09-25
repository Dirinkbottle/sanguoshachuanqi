// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Views/Dialog/AnnouncementDialog.js:1
// source line 1, bytecode pc 25
(xs.Views.Dialog.ChangeLabelHeight = function(label, params) {
    var _platform, oldsize, labelWidth, labelHeight, fontsizeW, fontsizeH, param, labelStr, strRowNum, rowWidth, mChar, newLabelHeight, newsize, changeSize;
    // source line 2, bytecode pc 29
    (_platform = xs.Tools.Jsb.getPlatform());
    // source line 3, bytecode pc 34
    (oldsize = null);
    if ((typeof(label) == "number")) {
        // source line 5, bytecode pc 75
        (oldsize = { width: label, height: label });
    } else {
        // source line 7, bytecode pc 98
        (oldsize = label.getDimensions());
    }
    if (((oldsize.width == 0) || (oldsize.height == 0))) {
        // source line 10, bytecode pc 147
        (oldsize = label.getContentSize());
    }
    // source line 12, bytecode pc 159
    (labelWidth = oldsize.width);
    // source line 13, bytecode pc 171
    (labelHeight = oldsize.height);
    // source line 15, bytecode pc 189
    (fontsizeW = label.getFontSize());
    // source line 16, bytecode pc 207
    (fontsizeH = label.getFontSize());
    // source line 17, bytecode pc 226
    (param = (params || {}));
    if ((param.Fontsize != null)) {
        // source line 20, bytecode pc 253
        (fontsizeW = param.Fontsize);
        // source line 21, bytecode pc 265
        (fontsizeH = param.Fontsize);
    }
    if ((param.FontsizeH != null)) {
        // source line 24, bytecode pc 292
        (fontsizeH = param.FontsizeH);
    }
    if ((param.FontsizeW != null)) {
        // source line 27, bytecode pc 319
        (fontsizeW = param.FontsizeW);
    }
    if ((param.verticalSpace == null)) {
        if ((_platform == "android")) {
            // source line 32, bytecode pc 369
            (fontsizeH = (label.getFontSize() + 2));
        } else {
            // source line 34, bytecode pc 395
            (fontsizeH = (label.getFontSize() + 2));
        }
    } else {
        // source line 37, bytecode pc 416
        (fontsizeH = (fontsizeH + param.verticalSpace));
    }
    // source line 39, bytecode pc 434
    (labelStr = label.getString());
    // source line 40, bytecode pc 439
    (strRowNum = 0);
    // source line 41, bytecode pc 444
    (rowWidth = 0);
    // source line 42, bytecode pc 456
    (i = 0);
    while ((i < labelStr.length)) {
        // source line 43, bytecode pc 486
        (mChar = labelStr.charAt(i));
        // source line 47, bytecode pc 497
        (rowWidth = (rowWidth + fontsizeW));
        if (((mChar == "\n") || (mChar == "\r\n"))) {
            // source line 51, bytecode pc 540
            (strRowNum = (+strRowNum + 1));
            // source line 52, bytecode pc 546
            (rowWidth = 0);
        }
        if ((rowWidth > labelWidth)) {
            // source line 55, bytecode pc 572
            (strRowNum = (+strRowNum + 1));
            // source line 56, bytecode pc 578
            (rowWidth = 0);
            // source line 57, bytecode pc 607
            (i = (+i - 1));
        }
        // source line 42, bytecode pc 637
        (i = (+i + 1));
    }
    // source line 61, bytecode pc 672
    (strRowNum = (+strRowNum + 1));
    // source line 62, bytecode pc 678
    (newLabelHeight = 0);
    if ((strRowNum != 0)) {
        // source line 64, bytecode pc 698
        (newsize = {});
        // source line 65, bytecode pc 710
        (newsize.width = labelWidth);
        // source line 66, bytecode pc 743
        (newsize.height = Math.floor((strRowNum * fontsizeH)));
        // source line 69, bytecode pc 762
        label.setDimensions(newsize);
        // source line 70, bytecode pc 781
        label.setContentSize(newsize);
        // source line 71, bytecode pc 833
        (changeSize = cc.size(0, Math.floor((newsize.height - labelHeight))));
        // source line 73, bytecode pc 837
        return changeSize;
    }
    // source line 77, bytecode pc 858
    return cc.size(0, 0);
});
// source line 145, bytecode pc 274
(xs.Views.Dialog.AnnCell = cc.TableViewCell.extend({
    ccbCfg: [
        { tag: 1, name: "m_view" },
        { tag: 2, type: "ls", name: "m_title", id: "LS_bnt1", string: "" },
        { tag: 3, type: "ls", name: "m_txt", id: "LS_popUI2", string: "" }
    ],
    initWithData: function() {
    // source line 104, bytecode pc 7
    (this.m_title = null);
    // source line 105, bytecode pc 15
    (this.m_txt = null);
    // source line 106, bytecode pc 23
    (this.m_view = null);
    // source line 108, bytecode pc 36
    this.loadCCBI();
    // source line 111, bytecode pc 38
    return true;
},
    loadCCBI: function() {
    // source line 117, bytecode pc 50
    (this._ccbNode = xs.ccb_reader.load(xs.Cfg.CCBI.AnnCell, this));
    // source line 118, bytecode pc 86
    xs.Utils.Node.attachNodes(this, this._ccbNode);
    // source line 119, bytecode pc 129
    xs.Utils.UI.replaceCcbByCfg(this._ccbNode, this.ccbCfg, this);
    // source line 121, bytecode pc 170
    this.m_txt.setDimensions(cc.size(774, 0));
    // source line 122, bytecode pc 199
    this.m_txt.setHorizontalAlignment(cc.TEXT_ALIGNMENT_LEFT);
},
    update: function(data, idx) {
    // source line 126, bytecode pc 9
    (this.data = data);
    // source line 127, bytecode pc 19
    (this.idx = idx);
    // source line 130, bytecode pc 46
    this.m_title.setString(data.title);
    // source line 131, bytecode pc 96
    this.m_title.setPosition(cc.p(10, (data.height - 23)));
    // source line 133, bytecode pc 123
    this.m_txt.setString(data.content);
    // source line 134, bytecode pc 173
    this.m_txt.setPosition(cc.p(10, (data.height - 54)));
    // source line 136, bytecode pc 226
    this.m_view.setContentSize(cc.size(data.width, data.height));
},
    getViewSize: function() {
    var viewsize;
    // source line 140, bytecode pc 20
    (viewsize = this._ccbNode.getContentSize());
    // source line 142, bytecode pc 24
    return viewsize;
},
    setBaseTouchPriority: function(priority) {
    // source line 146, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 148, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
}
}));
// source line 154, bytecode pc 305
(xs.Views.Dialog.AnnCell.create = function() {
    var obj;
    // source line 155, bytecode pc 28
    (obj = new xs.Views.Dialog.AnnCell());
    if ((obj && obj.initWithData())) {
        // source line 157, bytecode pc 60
        return obj;
    }
    // source line 159, bytecode pc 62
    return null;
});
// source line 475, bytecode pc 602
(xs.Views.Dialog.Announcement = xs.Views.HungerLayer.extend({
    name: "Announcement",
    cfg: {
        closeBtn: { priority: -1 },
        scrollView: { priority: -1 },
        cfg_node: [ { tag: 1, type: "bs", name: "m_closeBtn", id: "BS_Close" } ]
    },
    ctor: function() {
    // source line 188, bytecode pc 12
    this._super();
    // source line 189, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    init: function(type) {
    // source line 198, bytecode pc 12
    this._super();
    // source line 200, bytecode pc 22
    (this.m_type = type);
    // source line 201, bytecode pc 30
    (this.m_closeBtn = null);
    // source line 202, bytecode pc 42
    (this.datalist = []);
    // source line 203, bytecode pc 55
    this.initDialog();
    if ((this.m_type == xs.Constant_SettingType_Help)) {
        // source line 208, bytecode pc 90
        this.readDataFromServer();
    } else {
        if ((this.m_type == xs.Constant_SettingType_CustomService)) {
            // source line 211, bytecode pc 130
            this.readDataFromServer();
        } else {
            if ((this.m_type == xs.Constant_SettingType_WanJiaXieYi)) {
                // source line 218, bytecode pc 170
                this.readDataFromServer();
            } else {
                if ((this.m_type == xs.Constant_SettingType_ZuiZhongXieYi)) {
                    // source line 220, bytecode pc 210
                    this.readDataFromLocalZuiZhongXieYi();
                } else {
                    if (xs.isShowAmt) {
                        // source line 224, bytecode pc 243
                        this.readDataFromServer();
                    } else {
                        // source line 227, bytecode pc 261
                        this.readDataFromLocal();
                    }
                }
            }
        }
    }
    // source line 230, bytecode pc 263
    return true;
},
    initDialog: function() {
    if (((this.m_type == xs.Constant_SettingType_Help) || ((this.m_type == xs.Constant_SettingType_CustomService) || ((this.m_type == xs.Constant_SettingType_WanJiaXieYi) || (this.m_type == xs.Constant_SettingType_ZuiZhongXieYi))))) {
        // source line 240, bytecode pc 149
        (this.m_bg = cc.Scale9Sprite.createWithSpriteFrameName(xs.Cfg.Sprite.Cmn01.popView_bg02.frameName));
        // source line 241, bytecode pc 188
        this.m_bg.setAnchorPoint(cc.p(0, 0));
        // source line 242, bytecode pc 231
        this.m_bg.setContentSize(cc.size(863, 606));
        // source line 246, bytecode pc 286
        (this.m_scrollView = cc.TableView.create(this, cc.size(795, 502)));
        // source line 247, bytecode pc 315
        this.m_scrollView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
        // source line 248, bytecode pc 356
        this.m_scrollView.setPosition(cc.p(34, 15));
        // source line 249, bytecode pc 376
        this.m_scrollView.setDelegate(this);
        // source line 250, bytecode pc 405
        this.m_scrollView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
        // source line 252, bytecode pc 444
        (this.m_closeBtn = xs.Views.Btn.createByStyleId("BS_Close"));
        // source line 253, bytecode pc 527
        xs.Utils.Node.attachNodes(this.m_bg, this.m_closeBtn, { desc: "rt", offset: { x: -40, y: -38 } });
        if ((this.m_type == xs.Constant_SettingType_CustomService)) {
            // source line 257, bytecode pc 621
            (this.m_headLabel = xs.Factorys.Label.createByStyleIdWithString("LS_huodong_title", xs.Tools.String.createString("btnStr_CustomService")));
        } else {
            if ((this.m_type == xs.Constant_SettingType_Help)) {
                // source line 260, bytecode pc 720
                (this.m_headLabel = xs.Factorys.Label.createByStyleIdWithString("LS_huodong_title", xs.Tools.String.createString("titleStr_Help")));
            } else {
                if ((this.m_type == xs.Constant_SettingType_WanJiaXieYi)) {
                    // source line 263, bytecode pc 819
                    (this.m_headLabel = xs.Factorys.Label.createByStyleIdWithString("LS_huodong_title", xs.Tools.String.createString("auto_name_316")));
                } else {
                    if ((this.m_type == xs.Constant_SettingType_ZuiZhongXieYi)) {
                        // source line 266, bytecode pc 918
                        (this.m_headLabel = xs.Factorys.Label.createByStyleIdWithString("LS_huodong_title", xs.Tools.String.createString("titleStr_ZuiZhongXieYi")));
                    }
                }
            }
        }
        // source line 269, bytecode pc 1000
        xs.Utils.Node.attachNodes(this.m_bg, this.m_headLabel, { desc: "ct", offset: { x: 0, y: -30 } });
    } else {
        // source line 275, bytecode pc 1056
        (this.m_bg = xs.ccb_reader.load(xs.Cfg.CCBI.Announcement, this));
        // source line 277, bytecode pc 1104
        xs.Utils.UI.replaceCcbByCfg(this.m_bg, this.cfg.cfg_node, this);
        // source line 282, bytecode pc 1159
        (this.m_scrollView = cc.TableView.create(this, cc.size(795, 430)));
        // source line 283, bytecode pc 1188
        this.m_scrollView.setDirection(cc.SCROLLVIEW_DIRECTION_VERTICAL);
        // source line 284, bytecode pc 1229
        this.m_scrollView.setPosition(cc.p(34, 15));
        // source line 285, bytecode pc 1249
        this.m_scrollView.setDelegate(this);
        // source line 286, bytecode pc 1278
        this.m_scrollView.setVerticalFillOrder(cc.TABLEVIEW_FILL_TOPDOWN);
    }
    // source line 290, bytecode pc 1362
    xs.Utils.Node.attachNodes(this, this.m_bg, { desc: "c", offset: { x: -431, y: -307 } });
    // source line 291, bytecode pc 1387
    this.m_bg.addChild(this.m_scrollView);
    // source line 293, bytecode pc 1425
    this.m_closeBtn.setOnClickCallBack(this.onCloseBtn.bind(this));
    // source line 294, bytecode pc 1453
    (this.m_time_begin = new Date().getTime());
    // source line 295, bytecode pc 1461
    (this.m_time_net = null);
    // source line 296, bytecode pc 1469
    (this.m_time_end = null);
},
    readDataFromServer: function() {
    // source line 365, bytecode pc 160
    xs.Tools.Net.requestAnnouncementRead({
    product_line: xs.app_indentify,
    channel_id: xs.Tools.Jsb.getChannelId(),
    type: this.m_type,
    server_id: xs.Profile.GameData.Player.g_serverId
}, function(params) {
    // source line 339, bytecode pc 27
    (this.m_time_net = new Date().getTime());
    try {
        // source line 342, bytecode pc 60
        (this.datalist = JSON.parse(params.notice));
        // source line 345, bytecode pc 78
        this.m_scrollView.reloadData();
        // source line 346, bytecode pc 106
        (this.m_time_end = new Date().getTime());
    } catch (e) {
        // source line 352, bytecode pc 144
        this.dump("params", params);
        // source line 353, bytecode pc 163
        this.log("公告json数据错误!!");
        // source line 354, bytecode pc 191
        this.log(("erro.name:" + e.message));
        /* TODO_BYTECODE pc=192 opcode=leaveblock reason=control_or_scope_semantics_not_structured */
    }
}.bind(this), function(params) {
    // source line 358, bytecode pc 26
    xs.dump("params", params);
    if ((params.error_code === "e_1005")) {
        // source line 360, bytecode pc 72
        xs.Views.Mgr.hideDialog();
        // source line 361, bytecode pc 74
        return true;
    }
    // source line 363, bytecode pc 76
    return true;
}.bind(this), this);
},
    tableCellTouched: function(table, cell) {
},
    tableCellSizeForIndex: function(table, idx) {
    var m_size, m_label;
    // source line 378, bytecode pc 4
    (m_size = null);
    if (!this.datalist[idx].height) {
        // source line 380, bytecode pc 61
        (m_label = xs.Factorys.Label.createByStyleId("LS_popUI2"));
        // source line 381, bytecode pc 99
        m_label.setDimensions(cc.size(774, 0));
        // source line 382, bytecode pc 125
        m_label.setHorizontalAlignment(cc.TEXT_ALIGNMENT_LEFT);
        // source line 383, bytecode pc 161
        m_label.setAnchorPoint(cc.p(0, 0));
        // source line 385, bytecode pc 192
        m_label.setString(this.datalist[idx].content);
        // source line 394, bytecode pc 239
        (m_size = cc.size(795, (m_label.getContentSize().height + 100)));
        // source line 397, bytecode pc 263
        (this.datalist[idx].width = m_size.width);
        // source line 398, bytecode pc 287
        (this.datalist[idx].height = m_size.height);
    } else {
        // source line 402, bytecode pc 344
        (m_size = cc.size(this.datalist[idx].width, this.datalist[idx].height));
    }
    // source line 405, bytecode pc 348
    return m_size;
},
    tableCellAtIndex: function(table, idx) {
    var cell;
    // source line 416, bytecode pc 17
    (cell = table.dequeueCell());
    if (!cell) {
        // source line 418, bytecode pc 61
        (cell = xs.Views.Dialog.AnnCell.create());
    }
    // source line 421, bytecode pc 91
    cell.update(this.datalist[idx], idx);
    // source line 423, bytecode pc 95
    return cell;
},
    numberOfCellsInTableView: function(table) {
    // source line 427, bytecode pc 11
    return this.datalist.length;
},
    readDataFromLocalZuiZhongXieYi: function() {
    // source line 438, bytecode pc 22
    xs.dump("-------zuizhongxieyi--2------");
    // source line 448, bytecode pc 334
    (this.datalist = [
    {
        title: "正文一",
        content: "本《最终用户使用许可协议》（以下称《协议》，包括《用户服务条款》、《用户须知》、《用户守则》、《版权声明》）是用户（个人或单一实体，以下或称\"您\"）与杭州边锋网络技术有限公司（以下简称\"杭州边锋\"）之间有关本公司运营的无线终端网络游戏（包括但不限于：安卓版、IOS版、WM版手机游戏、pad游戏、电视游戏等）软件产品（以下简称\"软件产品\"）使用的法律协议。\r\n本\"软件产品\"包括无线终端软件，并可能包括相关网络服务器、网站、电子媒体、印刷材料和\"联机\"或电子文档。您一旦复制、访问网站、充值、运行客户端软件或以其它方式使用\"软件产品\"，即表示您同意接受本《协议》各项条款的约束。如您不同意本《协议》中的条款，请不要以上述任何一种方式使用\"软件产品\"。\r\n杭州边锋在此特别提醒您认真阅读本协议的全部条款，特别是其中免除或者限制杭州边锋责任的免责声明条款（该等条款通常含有\"不负任何责任\"、\"无义务\"等词汇）以及用户须遵守的《用户服务条款》、《用户须知》、《用户守则》、《版权声明》中的条款和其它限制用户权利的条款（该等条款通常含有\"不得\"等词汇），这些条款应在中国法律所允许的范围内最大程度地适用。除非用户接受本协议的全部条款，否则无权复制、访问网站、充值、运行客户端软件或以其它方式使用\"软件产品\"。\r\n本协议（包括《用户服务条款》、《用户须知》、《用户守则》、《版权声明》）下的条款可由杭州边锋随时变更，用户须定期审阅本协议。协议条款一旦发生变动，杭州边锋将会在杭州边锋相关的页面上提示变更内容。变更后的协议一旦在相关的页面上公布即有效代替原来的协议。如用户不同意杭州边锋对本协议的所作的任何变更，用户应立即停止使用杭州边锋的软件产品。如用户在本协议变更后继续使用杭州边锋的软件产品，即视作用户已完全同意变更后的协议。\r\n杭州边锋特别申明，未成年人应在法定监护人的陪同下审阅和接受本协议。未成年人在使用边锋的服务前，应事先取得父母（监护人）的同意。若父母（监护人）希望未成年人（尤其是十岁以下子女）得以使用本服务，必须以法定监护人身份加以判断本服务是否符合于未成年人。未成年人用户应当在合理程度内使用\"软件产品\"及进行软件产品，不得因使用\"软件产品\"及进行软件产品而影响了日常的学习生活。用户理解杭州边锋无义务对本款前述事项进行任何形式的审查和确认。\r\n1. 许可权利的授予。本《协议》授予您下列权利：本软件产品无线终端客户端软件的运行。其他任何形式的未经许可的使用、访问、显示、运行以及转让，都将被视为对《协议》的侵犯。\r\n2. 依本合同规定，著作权人许可您可以通过官方网站许可的方式获取仅授权本产品的客户端软件在一台无线终端产品上使用。产品可以载入个人无线终端产品或永久存取装置的方式使用。依本合同第9条移转给他人时，使用者载入个人无线终端产品的部分应予以删除，不得留存使用。\r\n3. 禁止性行为或活动。\r\n3.1 禁止用户发生以下侵害网络游戏公平性的行为，包括但不限于：\r\n3.1.1 利用反向工程、编译或反向编译、反汇编等技术手段制作软件对游戏进行分析、修改、攻击，最终达到作弊的目的；\r\n3.1.2 使用任何外挂程序或游戏修改程序（本协议所称\"外挂程序\"是指独立于游戏软件之外的，能够在游戏运行的同时影响游戏操作的所有程序，包括但不限于模拟键盘鼠标操作、改变操作环境、修改数据等一切类型。如国家有管法律、法规及政府主管部门的规章或规范性文件规定的外挂定义与本协议有冲突，则以法律、法规、部门规章或规范性文件规定的为准），对网络游戏软件进行还原工程、编译、译码或修改，包括但不限于修改本软件所使用的任何专有通讯协议、对动态随机存取内存（RAM）中资料进行修改或锁定；\r\n3.1.3 使用异常的方法登录游戏、使用网络加速器等外挂软件或机器人程式等恶意破坏服务设施、扰乱正常服务秩序的行为；\r\n3.1.4 制作、传播或使用外挂、封包、加速软件，及其它各种作弊程序，或组织、教唆他人使用此类软件程序，或销售此类软件程序而为私人或组织谋取经济利益；\r\n3.1.5 使用任何方式或方法，试图攻击提供游戏服务的相关服务器、路由器、交换机以及其他设备，以达到非法获得或修改未经授权的数据资料、影响正常游戏服务，以及其他危害性目的的任何行为； \r\n3.1.6 利用软件产品系统可能存在的技术缺陷或漏洞而以各种形式为自己及他人牟利（包括但不限于复制游戏中的虚拟物品等）。\r\n3.2 一旦杭州边锋通过内部的监测程序发现或经其他用户举报而发现您有可能正在从事上述行为，则杭州边锋有权采取相应的措施进行弥补，该措施包括但不限于限制您帐号和游戏中角色的登陆、限制您在游戏中的活动、删除与复制有关的物品（包括复制出的虚拟物品和参与复制的虚拟物品）、删除您的帐号和要求您赔偿因您从事上述行为而给杭州边锋造成的损失等。\r\n4. 对反向工程(Reverse Engineering)、反向编译(Decompilation)、反汇编(Disassembly)的禁止。您不得对本\"软件产品\"进行反向工程(Reverse Engineering)、反向编译(Decompile)或反汇编(Disassemble)，您亦同意放弃行使适用法律允许上述活动之权利。\r\n5. 服务条款的确认和接纳。本\"软件产品\"的运营权归杭州边锋。杭州边锋提供的服务完全按照其发布的章程、服务条款和操作规则严格执行。您应该遵守杭州边锋制定的上述管理规定。如果您发生违反此类管理规定的行为，杭州边锋可终止本《协议》并停止您使用\"软件产品\"的权利。如此类情况发生，您必须立即销毁\"软件产品\"的所有副本及其所有组成部分。\r\n6. 用户必须提供的设备和须提供的信息。杭州边锋提供可使用的\"软件产品\"，并运用自己的网络系统通过国际互联网络（Internet）为用户提供服务。同时，用户必须：\r\n6.1 自行配备上网的所需设备， 包括个人无线终端产品、调制解调器或其他必备上网装置。\r\n6.2 自行负担个人上网所支付的与此服务有关的电话费用、网络费用。\r\n基于杭州边锋提供服务的重要性，用户应同意：\r\n6.2.1 提供详尽、准确的个人资料。\r\n6.2.2 不断更新注册资料，符合及时、详尽、准确的要求。\r\n6.2.3 牢记您填写的注册资料、历史信息。\r\n杭州边锋在为您提供相关客户服务的前提是您能表明您是帐号的所有人，这可能需要您提供相关信息（包括但不限于注册信息、历史密码等），如果用户没有牢记自己填写的注册资料及相关历史信息或未及时更新相关注册资料，您的相关问题（包括但不限于密码找回等）将得不到解决，对此杭州边锋不承担任何责任。\r\n"
    },
    {
        title: "正文二",
        content: "7. 拒绝提供担保。用户个人对网络服务的使用承担风险。杭州边锋对以下事宜不作任何类型的担保，不论是明确的或隐含的：\r\n7.1 本协议项下的\"软件产品\"及杭州边锋提供的相关服务将符合用户的要求；\r\n7.2 本协议项下的\"软件产品\"及杭州边锋提供的相关服务将不受不可抗力、计算机、无线终端产品病毒、黑客攻击、系统不稳定、用户所在位置、用户关机、电信部门原因及其他任何网络、技术、通信线路等外界或人为因素的影响；\r\n7.3访问网站、充值、运行客户端软件或以其它方式使用\"软件产品\"及/或接受杭州边锋提供的相关服务与任何其他软件不存在任何冲突；\r\n7.4 通过杭州边锋网站、游戏官方网站及其他相关网络上的链接和标签所指向的第三方的商业信誉及其提供服务的质量。\r\n8. 免除责任。杭州边锋对任何直接、间接、偶然、特殊及继起的损害不负责任，这些损害可能来自：不正当使用网络服务，非法使用网络服务或用户传送的信息有所变动等方面。用户明确同意其复制、访问网站、充值、运行客户端软件或以其它方式使用\"软件产品\"及/或接受杭州边锋提供的相关服务所存在的风险将完全由其自己承担。因其访问网站、充值、运行客户端软件或以其它方式使用\"软件产品\"及/或接受杭州边锋提供的相关服务而产生的一切后果也由其自己承担，杭州边锋对用户不承担任何责任。\r\n9. 使用者可以移转本产品和所授之权利（不包括用户的帐号、密码及软件产品中的虚拟物品等）予他人，但是移转时应连同所附产品使用手册、授权合同等一并移转，不得留存任一样使用。且该受让人接受本产品和所授之权利时即视同接受遵守本协议（包括《用户服务条款》、《用户须知》、《玩家守则》、《版权声明》）的全部条款。\r\n10. 除本合同有其他规定外，未经杭州边锋书面同意，使用者严格禁止有下列行为（无论是有偿的还是无偿的）：\r\n10.1 复制、翻拷、传播和在网络上陈列本产品的程序、使用手册和其它图文音像资料的全部或部分内容。\r\n10.2 公开展示和播放本产品的全部或部分内容。\r\n10.3 出租本产品于他人。\r\n10.4 对本产品的程序、图像、动画和音乐进行还原、反编译、反汇编、剪辑、翻译和改编等任何修改行为。\r\n10.5 修改或遮盖本产品程序、图像、动画、包装和手册等内容上的产品名称、公司标志、版权信息等内容。\r\n10.6 以本产品作为营业使用。\r\n10.7 其它违反著作权法、计算机软件保护条例和相关法规的行为。\r\n一旦用户有实施违反上述内容的行为，本产品的授权协议将立即停止。杭州边锋有权通过各种合法途径向因违反上述条款而对杭州边锋造成损害的用户追究法律责任。\r\n11. 违约赔偿\r\n11.1 用户同意保障和维护杭州边锋及其他用户的利益，如因用户违反有关法律、法规或本协议项下的任何条款而给杭州边锋造成损害，用户同意承担由此造成的损害赔偿责任，该等责任包括但不限于给杭州边锋造成的任何直接或间接损失。\r\n11.2 因用户违反有关法律、法规或本协议项下的任何条款导致任何第三方向杭州边锋主张任何索赔、要求或损失的，用户同意赔偿杭州边锋由此产生的任何直接或间接损失。\r\n12. 法律适用和争议解决\r\n12.1 本协议的订立、履行、解释及争议的解决均应适用中国法律。\r\n12.2 如双方就本协议内容或其执行发生任何争议，双方应尽量友好协商解决；协商不成时，任何一方均应向上海市浦东新区人民法院提起诉讼。\r\n13. 通知和送达。本协议项下杭州边锋的所有通知均可通过重要页面公告、电子邮件或常规的信件传送等方式进行；该等通知于发送之日视为已送达收件人。\r\n14. 其他规定\r\n14.1 本\"软件产品\"受著作权法及国际著作权条约和其它知识产权法和条约的保护；本\"软件产品\"只许可在给定范围和时间内使用，而不出售其原代码和其他任何相关知识产权权利。\r\n14.2 关于本\"软件产品\"的《用户服务条款》、《用户须知》、《玩家守则》、《版权声明》等文件均属于本《协议》不可分割的一部分，与本《协议》同样有效。\r\n14.3 本协议构成双方对本协议之约定事项及其他有关事宜的完整协议，除本协议规定的之外，未赋予本协议各方其他权利。\r\n14.4 如本协议中的任何条款无论因何种原因完全或部分无效或不具有执行力，在此情况下，该无效或不具有执行力的部分将被最接近原条款意图的一项有效并可执行的条款所替代，并且本协议的其余条款仍应有效并且有约束力。\r\n14.5 本协议中的标题仅为方便而设，不会对本协议的其他条款有限制作用，也不具有任何法律效力。\r\n杭州边锋网络技术有限公司\r\n"
    },
    {
        title: "用户服务条款一",
        content: "1. 释义：\r\n本服务条款系由用户与杭州边锋网络技术有限公司（本服务条款中简称为\"杭州边锋\"）之间就杭州边锋提供运营服务的本软件产品所订立的相关权利义务规范。因此，请于使用本软件产品（包括但不限于注册成为本软件产品用户或以安装、复制、访问网站、充值或以其它一切方式使用）前，确实详细阅读本服务条款的所有内容。\r\n2. 权利声明：\r\n本软件产品的所有相关著作权、专利权、商标、商业秘密及其它任何所有权或权利，均属杭州边锋或其原始授权人所有。非经杭州边锋或其原始授权人同意，任何人或用户均不得擅自下载、重制、传输、改作、编辑于任何为软件产品目的以外的使用或任何以获利为目的的使用，否则应负所有法律责任。本软件产品运营过程中产生并储存于杭州边锋数据库的任何数据信息（包括但不限于帐号数据信息、角色数据信息、等级物品数据信息等）的所有权均属于杭州边锋。用户在完全遵守协议（包括《最终用户使用许可协议》、《用户服务条款》、《用户须知》、《用户守则》和《版权声明》）下的各项条款的前提下，在正常使用本软件产品的过程中对属于其用户帐号的数据信息享有协议规定的使用权。\r\n3. 用户的基本义务：\r\n杭州边锋向用户提供本软件产品本身属于商业行为，用户有义务根据杭州边锋自主确定的收费项目（包括但不限于购买游戏内的虚拟道具的使用权以及接受其他增值服务等各类收费项目）及收费标准支付相应的费用，支付费用方式分为：先付后用及先用后付两种，如用户通过杭州边锋提供的先用后付方式使用了本软件产品游戏而延迟缴纳服务或不缴纳服务费用的，杭州边锋可终止向该用户提供所有服务、要求其支付未缴纳的服务费并保留要求其赔偿因此而产生的其他相关费用和损失的权利。\r\n4. 忠实登录个人资料并更新\r\n用户承诺以其真实身份注册成为杭州边锋的用户，并保证所提供的个人身份资料，信息真实、完整、有效，依据法律规定和本协议约定对所提供的信息承担相应的法律责任。用户以其真实身份注册成为杭州边锋用户后，需要修改所提供的个人身份资料信息的，请联系客服，杭州边锋应当及时、有效地为其提供该项服务。若用户所提供的资料与事实不符或所提供的资料业已变更而未更新或有任何误导之嫌导致杭州边锋无法为用户提供或进一步提供服务，杭州边锋不因此承担任何责任。\r\n5. 用户保管帐号及密码的义务\r\n5.1 杭州边锋有权审查用户注册所提供的身份信息是否真实、有效，并应积极地采取技术与管理等合理措施保障用户账号的安全、有效；用户有义务妥善保管其账号及密码，并正确、安全地使用其账号及密码。任何一方未尽上述义务导致账号密码遗失、账号被盗等情形而给用户和他人的民事权利造成损害的，应当承担由此产生的法律责任。\r\n5.2 用户对登录后所持账号产生的行为依法享有权利和承担责任。\r\n5.3 用户发现其账号或密码被他人非法使用或有使用异常的情况的，应及时根据杭州边锋公布的处理方式通知杭州边锋，并有权通知杭州边锋采取措施暂停该账号的登录和使用。\r\n5.4 杭州边锋根据用户的通知采取措施暂停用户账号的登录和使用的，杭州边锋应当要求用户提供并核实与其注册身份信息相一致的个人有效身份信息。\r\n5.4.1 杭州边锋核实用户所提供的个人有效身份信息与所注册的身份信息相一致的，应当及时采取措施暂停用户账号的登录和使用。\r\n5.4.2 杭州边锋违反5.4.1款项的约定，未及时采取措施暂停用户账号的登录和使用，因此而给用户造成损失的，应当承担其相应的法律责任。\r\n5.4.3 用户没有提供其个人有效身份证件或者用户提供的个人有效身份证件与所注册的身份信息不一致的，杭州边锋有权拒绝用户上述请求。\r\n5.5 用户为了维护其合法权益，向杭州边锋提供与所注册的身份信息相一致的个人有效身份信息时，杭州边锋应当为用户提供账号注册人证明、原始注册信息等必要的协助和支持，并根据需要向有关行政机关和司法机关提供相关证据信息资料。\r\n5.6本软件产品用户帐号的所有权归杭州边锋所有，用户注册成功后获得的是本软件产品用户帐号的使用权。用户有义务妥善保管在注册并使用本软件产品时获得的帐号及密码，并为此组帐号及密码登入系统后所开始的一连串行为或活动负责。鉴于网络服务的特殊性，杭州边锋不审核是否用户本人使用该组帐号及密码，仅审核帐号及密码是否与数据库中保存的一致，只要任何人输入的帐号及密码与数据库中保存的一致，即可凭借该组帐号及密码登陆游戏，所以即使用户认为其所有的帐号登陆游戏的行为并非其本人所为，杭州边锋将不承担因此而产生的任何责任。\r\n5.7 本软件产品的用户帐号的使用权属于最先注册人，任何用户不得以任何形式转让（包括但不限于买卖、赠与、互易、租赁、继承等）用户帐号或密码。如果杭州边锋发现使用者并非帐号最先注册人，杭州边锋可以不经通知该账户使用人而直接回收该帐号，同时不承担任何由此产生的法律责任。用户违反本条款规定而遭致的任何损失均由用户自行承担。经杭州边锋书面同意转让本软件产品用户帐号的行为不受本条款的限制。\r\n5.8若用户发现其所有的帐号或密码遭他人非法使用或有异常使用的情形，应立即通知杭州边锋并寻求可能的帮助，但鉴于是否用户本人使用其帐号难于判断，杭州边锋在无法确认是否为他人非法使用的时候将不能擅自取消该帐号进入游戏后已经实施的行为，对此用户表示谅解并承诺不要求杭州边锋承担任何责任。\r\n"
    },
    {
        title: "用户服务条款二",
        content: "6. 个人资料的保护及其限制\r\n6.1 杭州边锋要求用户提供与其个人身份有关的信息资料时，应当事先以明确而易见的方式向用户公开其隐私权保护政策和个人信息利用政策，并采取必要措施保护用户的个人信息资料的安全。\r\n6.2未经用户许可杭州边锋不得向任何第三方（6.3所列情况除外）提供、公开或共享用户注册资料中的姓名、个人有效身份证件号码、联系方式、家庭住址等个人身份信息，但下列情况除外：\r\n6.2.1 用户或用户监护人授权杭州边锋披露的；\r\n6.2.2 有关法律要求杭州边锋披露的；\r\n6.2.3 司法机关或行政机关基于法定程序要求杭州边锋提供的；\r\n6.2.4 杭州边锋为了维护自己合法权益而向用户提起诉讼或者仲裁时；\r\n6.2.5 应用户监护人的合法要求而提供用户个人身份信息时；\r\n6.2.6 杭州边锋为维护社会公众利益；时。 \r\n6.3 用户同意在杭州边锋与第三方合作向用户提供相关网络服务，且该第三方同意承担与杭州边锋同等的保护用户隐私的责任的情况下，允许杭州边锋将用户的注册资料等信息提供给该第三方。\r\n6.4 在不透露单个用户隐私资料的前提下，杭州边锋有权对整个用户数据库进行技术分析并对已进行分析、整理后的用户数据库进行商业上的利用。尽管杭州边锋对用户的隐私权保护做了极大的努力，但是仍然不能保证现有的安全技术措施使用户的技术信息等不受任何形式的损失。\r\n7. 用户使用软件产品的限制\r\n7.1 用户使用杭州边锋的软件产品，除应遵守法律、《最终用户使用许可协议》、本服务条款的规范外，并应遵守《用户须知》、《用户守则》和《版权声明》等其他规定，否则杭州边锋有权随时按照该守则处分或终止用户使用软件产品，由此造成的任何损失杭州边锋不负任何责任。\r\n7.2 杭州边锋严禁用户利用运行软件产品的机会做与游戏无关的行为，包括但不限于：\r\n7.2.1 为任何非法目的而使用网络服务系统；\r\n7.2.2 未经杭州边锋授权访问或试图访问和本软件产品及杭州边锋提供的相关网络服务相关的任何帐户、计算机、无线终端产品、无线终端或网络；\r\n7.2.3 未经杭州边锋授权利用本软件产品及杭州边锋提供的相关网络服务以任何方式收集任何其它用户的信息，包括但不限于用户的个人身份信息和通讯信息；\r\n7.2.4 下载、安装或使用未经杭州边锋授权开发并正式发布的其它任何由本软件产品衍生的软件；\r\n7.2.5 接收或下载由其他本软件产品用户传输的用户所知道或应当知道不能以此方式合法传播的任何材料；\r\n7.2.6 利用本软件产品及杭州边锋提供的相关网络服务进行任何可能对互联网的正常运转造成不利影响的行为，包括但不限于以任何方式传输含有计算机、无线终端产品病毒、破坏性程序的文件或其他任何可能对他人计算机、无线终端产品、无线终端或互联网的正常运转造成不利影响的软件或程序；\r\n7.2.7 利用本软件产品及杭州边锋提供的相关网络服务传输任何骚扰性的、中伤他人的、辱骂性的、恐吓性的、庸俗淫秽的或其他任何非法的信息资料；\r\n7.2.8 利用本软件产品及杭州边锋提供的相关网络服务进行任何不利于杭州边锋的行为；\r\n7.2.9 就杭州边锋及合作商业伙伴的服务、产品、业务咨询应采取相应机构提供的沟通渠道，在公众场合发布有关杭州边锋及相关服务的负面宣传。\r\n7.3 用户对杭州边锋游戏管理人员所进行的询问应据实澄清，否则杭州边锋有权随时终止用户使用软件产品；杭州边锋发现不法或可疑的行为者，杭州边锋有权随时通报司法或有权机关处理，并有权同时向该机关陈报用户的基本资料及行为供该等机关为调查。用户理解因此所产生生的任何不便，不得向杭州边锋请求任何损害或补偿。\r\n7.4 用户应就其在软件产品的行为或活动自负责任，杭州边锋仅提供软件产品予用户自行执行或与其它用户依照游戏设定的方式进行竞赛或游戏。考虑到网络的复杂性和特殊性，杭州边锋在此提醒用户须特别慎重对待软件产品的行为或活动或交易，杭州边锋申明对用户在软件产品的行为或活动或交易不负任何责任。\r\n"
    },
    {
        title: "用户服务条款三",
        content: "8. 服务的停止和更改\r\n8.1 发生下列情形之一时，杭州边锋有权停止或中断软件产品，并且不向任何人承担因此产生的任何责任：\r\n8.1.1 对于杭州边锋的网络设备进行必要的保养及施工；\r\n8.1.2 发生突发性的网络设备故障时；\r\n8.1.3 由于杭州边锋所用的网络通信设备由于任何原因停止，无法提供服务时；\r\n8.1.4 由于不可抗力因素致使杭州边锋无法提供软件产品服务；\r\n8.1.5 在根据用户使用游戏时间和/或道具模式作为收费项目的情况下，用户连续180天没有上线游戏（包括但不限于虽然上线游戏但只在免费期内游戏或未有消耗），则自第180天当天的24时起，杭州边锋有权采取措施取消该用户至最后一次游戏当日止帐号上剩余的游戏时间和/或价值，被取消的游戏时间和/或价值将不予任何补偿。但如果用户在杭州边锋取消上述游戏时间之日起的1个月内向其用户帐号充值人民币30元以上，则该帐号除拥有按照杭州边锋业务公告规定等同于该面额的相应之游戏时间和/或价值外，杭州边锋将另外赠送和上述取消措施中该用户被取消的游戏时间相等额的游戏时间和/或价值。\r\n8.1.6 用户连续360天没有上线游戏，则自第360天当天的24时起，杭州边锋有权采取措施删除该用户帐号在游戏数据库中的任何纪录（包括但不限于注册信息、角色信息、等级物品信息等）。\r\n8.1.7 在以用户购买虚拟道具的使用权或者以接受其他增值服务作为收费项目的情况下，如超出该虚拟道具的有效使用期限或增值服务的有效服务期限（不管用户是否已经实际使用或者享受服务），或者超出有效使用或服务次数，杭州边锋均有权采取措施取消用户对上述虚拟道具的使用权或者取消继续提供增值服务。上述虚拟道具的使用权以及增值服务的具体收费标准均由杭州边锋在其相关网站上颁布，用户有义务在选择前仔细阅读并确认理解，一旦用户选择购买相关虚拟道具使用权或者接受相关服务，则表明用户已经充分理解上述虚拟道具使用权或者相关增值服务的具体收费标准，并接受其价格。\r\n8.1.8 收费项目的改变是一种正常的商业行为，用户不得因为收费项目的改变而要求终止本协议。在杭州边锋收费项目发生改变后，用户按照一种项目预先支付但尚未消费完毕的金额，杭州边锋有权提供转换方式将上述金额转换成相应能够支付其他收费项目的金额，而用户不能因此而要求终止本协议或返还上述尚未消费完毕的金额。\r\n8.2 除8.1条规定之外，杭州边锋有权停止或更改各项服务内容或终止任一用户账户，但需在官方网站首页提前24小时通知，用户违反用户守则的处理不在此例。无论任何情形，杭州边锋就停止或更改或终止用户账户所可能产生的不便或损害，杭州边锋对用户本人或任何第三人均不负任何损害赔偿责任。\r\n8.3 用户应了解并同意，杭州边锋可能因公司本身、其它合作厂商或相关电信业者网络系统软硬件设备的故障、失灵、或人为操作的疏失而全部或一部分中断、暂时无法使用、迟延或因他人侵入杭州边锋系统篡改或伪造变造资料等，造成软件产品的停止或中断者，用户不得要求杭州边锋提供任何形式的补偿或赔偿。 \r\n8.4 用户了解并同意，本软件产品作为一款软件产品，必然有全面终止运营的情况发生，杭州边锋在发生以下情况下会终止运营本软件产品：(i) 应政府机关的命令终止运营； (ii) 游戏软件本身的技术问题导致无法继续运营。不管由于任何原因终止运营，杭州边锋均会提前60日通知用户，用户应采取相应措施自行处理游戏帐号（包括注销或停止使用该帐号）、游戏内虚拟物品等相关事宜。对于用户尚未使用的网络游戏虚拟货币及尚未失效的游戏服务，用户可向杭州边锋申请按用户购买时的比例，以法定货币退还用户或者用户接受的其他方式进行退换。用户不得以任何原因要求杭州边锋不得全面终止运营，也不得因全面终止运营而要求杭州边锋承担任何形式的赔偿或补偿责任（包括但不限于不再能继续使用游戏帐号、游戏内虚拟物品等）。\r\n9. 风险承担\r\n用户同意使用本软件产品软件是出于用户个人意愿，并愿自负任何风险，包括但不限于其因执行本软件产品或自行由本软件产品官方网站下载游戏或资料图片而导致用户或其所使用的计算机、无线终端产品、无线终端系统损害，或发生任何资料的流失等。\r\n"
    },
    {
        title: "用户服务条款四",
        content: "10. 责任的免除\r\n杭州边锋就本软件产品，不负任何明示或默示的担保责任，亦不保证本软件产品的稳定、安全、无误及不中断。用户应自行承担使用执行软件产品所有的风险及因此可能致生的损害，包括而不限于其因执行软件产品本软件产品或自行由本软件产品官方网站下载游戏或资料图片而导致用户或其所使用的计算机、无线终端产品、无线终端系统损害，或发生任何资料的流失等。\r\n11. 赔偿责任的排除及限制\r\n杭州边锋对于用户使用软件产品本软件产品或无法使用软件产品所致生的任何直接、间接、衍生的损害或所失利益不负任何损害赔偿责任。若依法无法完全排除损害赔偿责任时，用户不得以帐号或帐号内虚拟物品作为赔偿标准，杭州边锋的赔偿责任亦以用户使用该帐号进行软件产品所支付杭州边锋的对价为限（以杭州边锋提供的帐号内的消费内容记录为准）。\r\n12. 链接\r\n杭州边锋在其本软件产品官方网站的所有网页上所提供的所有链接，可能链接到其它个人、公司或组织的网站，提供该等网站的目的，是便利用户自行搜寻或取得信息，杭州边锋对于被链接的个人、公司或组织的网站所提供的产品、服务或信息，不担保其真实性、完整性、实时性或可信度。杭州边锋不承担用户与该等网站之间产生的任何法律责任。\r\n13. 杭州边锋的中止与终止权\r\n13.1 用户应切实遵守有关法律命令、《最终用户使用许可协议》、《用户服务条款》、《用户须知》、《用户守则》和《版权声明》的规定，杭州边锋对于用户是否违反《最终用户使用许可协议》、《用户服务条款》、《用户须知》、《用户守则》和《版权声明》的条款有最终决定权。若杭州边锋认定用户已违反法律法规或相关协议条款，用户同意杭州边锋可以随时终止用户的帐号及密码使用权。\r\n13.2 除本协议另有规定，杭州边锋在下列情况下亦拥有中止与终止权：\r\n13.2.1 用户有发布违法信息、严重违背社会公德、以及其他违反法律禁止性规定的行为，杭州边锋应当立即终止对用户提供服务。\r\n13.2.2 用户在接受杭州边锋服务时实施不正当行为的，杭州边锋有权终止对用户提供服务。该不正当行为的具体情形应当在本协议中有明确约定或属于杭州边锋事先明确告知的应被终止服务的禁止性行为，否则，杭州边锋不得终止对用户提供服务。\r\n13.2.3 用户提供虚假注册身份信息，或实施违反本协议的行为，杭州边锋有权中止对用户提供全部或部分服务；杭州边锋采取中止措施应当通知用户并告知中止期间，中止期间应该是合理的，中止期间届满杭州边锋应当及时恢复对用户的服务。\r\n13.2.4 杭州边锋根据本条约定中止或终止对用户提供部分或全部服务的，杭州边锋应负举证责任。\r\n14. 损害赔偿\r\n用户同意保障和维护杭州边锋及其他用户的利益，如因用户违反有关法律、法规或《最终用户使用许可协议》、《用户服务条款》、《用户须知》、《用户守则》和《版权声明》的任何条款而给杭州边锋造成损害，用户同意承担由此造成的损害赔偿责任，该等责任包括但不限于给杭州边锋造成的任何直接或间接损失。\r\n因用户违反有关法律、法规或《最终用户使用许可协议》、《用户服务条款》、《用户须知》、《用户守则》和《版权声明》的任何条款导致任何第三方向杭州边锋主张任何索赔、要求或损失的，用户同意赔偿杭州边锋由此产生的任何直接或间接损失（包括但不限于因进行民刑事行政程序所支出的律师费用）。\r\n15. 停止或变更服务\r\n15.1 杭州边锋保留取消或停止用户的资格或加以限制的权利。\r\n15.2 杭州边锋保留将来新增、修改或删除软件产品的全部或部分的权利，且不另行个别通知。\r\n15.3 任何时候（包括但不限于用户正在注册帐号或已经在游戏中运行等），如杭州边锋发现用户在游戏中注册或使用的帐号、角色、行会等一切自定义名称与其他用户相同而导致无法识别，杭州边锋有权要求用户修改上述名称，如用户在杭州边锋要求的时限内未予修改，则杭州边锋有权在用户自定义的名称后加注识别符号予以区别以确保游戏正常运行（例如用户希望或正在使用的角色名称为\"潇洒\"，但在同一组服务器中同样存在另外一个用户角色名为\"潇洒\"，则在用户不愿意修改名称的情况下，杭州边锋有权不经用户同意的情况在用户名称后加注识别符号后成为\"潇洒1\"、\"潇洒2\"等），用户保证无条件同意上述修改。\r\n16. 广告信息或促销计划\r\n杭州边锋的软件上可能刊登商业广告、或其它活动促销的广告。这些内容系广告商或商品服务提供者所为，杭州边锋仅提供刊登内容的媒介。用户通过杭州边锋或其所链接的网站所购买的服务或商品，其交易行为仅存于用户与该商品或服务的提供者之间，与杭州边锋无关，杭州边锋不承担用户与该商品或服务的提供者之间所产生的任何法律责任。\r\n17. 服务条款的修改\r\n由于用户及市场状况的不断变化，杭州边锋保留随时修改本服务条款的权利，修改本服务条款时，杭州边锋将于本软件产品官方网站首页公告修改的事实，而不另对用户进行个别通知。若用户不同意修改的内容，可停止使用杭州边锋的软件产品。若用户继续使用杭州边锋的软件产品，即视为用户业已接受杭州边锋所修订的内容。\r\n18.通知和送达。本协议项下杭州边锋的所有通知均可通过重要页面公告、电子邮件或常规的信件传送等方式进行；该等通知于发送之日视为已送达收件人。\r\n19. 个别条款的效力。如本协议中的任何条款无论因何种原因完全或部分无效或不具有执行力，在此情况下，该无效或不具有执行力的部分将被最接近原条款意图的一项有效并可执行的条款所替代，并且本协议的其余条款仍应有效并且有约束力。\r\n"
    },
    {
        title: "用户须知",
        content: "作为杭州边锋运营的众多优秀软件产品之一，本软件产品拥有完善的游戏机制和强壮的运行能力。为了各位用户能够更好的享受本软件产品中的每个精彩时刻，您应该遵守以下守则：\r\n一、 用户之间人人平等，这是我们对您进行服务的准则。我们努力使每个用户获得同等质量的服务，您也应该做到尊重其他用户的权利，不进行任何可能会侵害其他用户游戏质量的活动。\r\n二、 网络游戏基于人人互动才能精彩，为了使你在虚拟世界中拥有更多的朋友，请在游戏中注意言行举止，礼貌用语。对于语言污秽的用户，\"           \"管理小组在获得举报后将会采取禁言等措施进行管理。\r\n三、 公平游戏是享受游戏的前提，正如每一个人都知道的，任何程序都存在BUG，虽然我们已经解决了所有已知的BUG，但是不能排除其他BUG存在的可能性。作为游戏用户，应该能够在发现BUG时主动向\"         \"管理小组汇报。严禁利用任何BUG进行任何形式的获利，这些获利包括但不限于获得额外的经验值，道具物品等。一经发现，\"        \"管理小组将有权利对该用户处以相关处罚（包括但不限于游戏内的监禁及关闭账户等）。 \r\n四、 由于虚拟物品与现实财产之间的交易存在巨大风险（包括但不限于虚拟物品因系复制物品而可被删除、国家法律对虚拟物品的价值认定存在空白等），请用户慎重对待以真实货币或者财物与游戏内虚拟货币或者物品之间进行的交易行为，除非您在此类交易行为进行的过程中得到我们书面的明确说明、指导和确认，我们不会对这一类交易中产生的任何问题（包括但不限于物品非复制性的确认、用户诚信的确认等）进行支持或者保障。在任何情况下，您不得以从其他用户处获得虚拟物品或货币所付出的真实货币或财物金额要求杭州边锋赔偿。\r\n五、如果您选择进入能够进行自由对战的服务器，视为您同意在该游戏区中进行自由对战，并同意遵守自由对战的游戏规则。\r\n六、您理解并同意，杭州边锋有权利向您搜集必要的数据，以了解用户需求，不断提升服务质量。\r\n七、 为了保证游戏公平性，\"三国杀传奇\"管理将不会介入到任何用户之间纠纷中去。\r\n八、 每个用户均有请求游戏管理人员帮助的权利，但是，为了能够让更多的人获得帮助，每个用户应该自觉不与\"三国杀传奇\"管理人员闲聊。\"三国杀传奇\"管理人员有权利不回答与工作无关的闲聊话题。\r\n九、 每个用户均有监督\"三国杀传奇\"管理人员的权利，如果您发现游戏管理人员任何违规行为，均可以采用游戏提供的截图方式（保障图片真实性）获取现场，并立即致电400-7202-233，我们的纪律检查部门将会对该名游戏管理员进行检查。\r\n十、 理解并且遵守杭州边锋颁布的用户守则和服务承诺以及其他规定。\r\n"
    },
    {
        title: "用户守则",
        content: "请相信，因为用户违反下述守则而对用户的游戏角色采取限制措施，也是为了广大用户的最大利益。\r\n\r\n-- \"三国杀传奇\"管理小组\r\n一、GM（系指游戏管理人员）对用户违规行为的基本处理方法的释义\r\n◆　关闭聊天功能：强制暂停用户角色的在线对话功能，使用户角色无法与其它用户对话，直到本次处罚到期或取消\r\n◆　强制离线：强制将用户帐号注销，结束用户游戏程序的执行\r\n◆　监禁：强制将用户角色移置于独立不可出入的地图中直到本次处罚到期或取消\r\n◆　删除角色：强制删除用户的特定角色\r\n◆ 删除游戏帐号：强制删除用户游戏帐号及其游戏权利 \r\n二、正确处理好用户和用户之间的关系\r\n1、行为：辱骂、人身攻击其它用户，妨碍其他用户正常游戏。\r\n处罚措施：情节较轻者采取禁言，情节严重者监禁，再犯者暂停其帐号及各项服务。 \r\n2、行为：不断吵闹、重复发言多次、不断打广告、恶意刷屏等侵犯大多数用户权益；恶意封堵狭窄的路口给其他用户造成行动不便，以及其他恶意连续骚扰，或影响其它用户正常游戏，包括且不限于持续进行恶意PK行为者其它他人而影响他人进行游戏，不听劝阻。 \r\n处罚措施：将被关闭聊天功能、监禁直至封帐号。\r\n3、行为：以骚扰其它用户为目的而持续进行恶意PK行为且劝阻不听者。\r\n处罚措施：强行退出游戏并暂时封帐号。\r\n三、正确处理用户和游戏本身的关系\r\n1、行为：使用违反命名规则之角色名称：包括但不限于含有人身攻击、淫秽、辱骂、反动及其他危害本游戏形象、同GM服务角色名故意相似扰乱正常服务秩序以及国家利益和社会公德性质的文字。\r\n处罚措施：一经发现，立刻删除该角色，请您谨慎选择自己的角色名！ \r\n2、行为：利用各种方式攻击或入侵游戏服务器，或使用异常的方法登录本软件产品服务。\r\n处罚措施：直接删除该用户帐号，同时保留对此行为之一切法律追诉权。\r\n3、行为：恶性破坏我们的服务设施，包括但不限于：利用编译或反编译程序修改游戏资料、使用异常的方法登录游戏、使用网络加速器等外挂软件或机器人程式等恶意破坏服务设施、扰乱正常服务秩序的行为。 \r\n处罚措施：违反者将被取消继续进行游戏的权利。同时保留对此行为之一切法律追诉权\r\n4、行为：利用系统的BUG、漏洞为自己及他人牟利。\r\n处罚措施：一经发现或经用户举报查证属实后，提出严厉警告；经警告后再犯者停止其帐号\r\n5、行为：利用游戏提供的功能进行非法实物交易等违反国家法律法规的行为。\r\n处罚措施：上述行为一经发现，立即注销帐号，并交由国家有关机构处理。\r\n四、正确处理用户和GM的关系：\r\n1、行为：在游戏中无故呼叫管理员（GM），并且频繁地发骚扰信息给GM。\r\n处罚措施：处以该用户关闭聊天功能、监禁、暂停帐号。 \r\n2、行为：不服从管理员安排、对管理员辱骂\r\n处罚措施：处以监禁、停止帐号等处罚。\r\n3、行为：在游戏中假冒GM或其他客户服务人员。\r\n处罚措施：给予严重警告并做注销角色处理，如果多次发现将注销该帐号。\r\n五、其他\r\n1、声明：\r\n请用户遵守以上規定，若因违规而受到处分，导致充值卡使用日期等损失，由用户自行负责。本用户守则的最终解释权利归杭州边锋所有，并保留更新的权利，请用户经常察看，并严格遵守。GM将有权立即暂停任何可能危害游戏系统的游戏帐号上线权利而不先行告之，所有GM都将严格按照中立和公正原则，不偏袒、不徇私，所有GM都将严格按照本条例的规定，考量实际违规情况，对用户的违规行为进行处罚。 \r\n2、附则：\r\n本条例的修正、发布、解释权归于杭州边锋；用户使用本公司提供的在线游戏服务，即应当遵守本条例的规定；鼓励用户对本条例提出意见或建议。\r\n"
    },
    {
        title: "版权声明",
        content: "开发商：杭州边锋网络技术有限公司\r\n运营商： 杭州边锋网络技术有限公司\r\n本产品及使用说明书均受版权法保护，所有程序及图文内容非经著作权人书面许可，不得以任何方式做全部或局部复制、转载或修改。用户应按《最终用户使用许可协议》、《用户服务条款》、《用户须知》、《用户守则》和《版权声明》的规定使用本产品，违者将依法追究其责任。\r\n本产品及包装、手册上的所有相关产品名称、商标、品牌、画面均归原始授权人或杭州边锋拥有，是属于其各自所有者的财产。\r\n"
    },
    {
        title: "特别声明",
        content: "鉴于：我国《合同法》第39条规定：采用格式条款订立合同的，提供格式条款的一方应当遵循公平原则确定当事人之间的权利和义务，并采取合理的方式提请对方注意免除或者限制其责任的条款，按照对方的要求，对该条款予以说明。\r\n杭州边锋在此依法做出特别声明如下：\r\n法定的杭州边锋采取合理的方式提请用户注意的义务将通过如下方式实现：在本合同中杭州边锋以明确的足以引起用户注意的加重字体、斜体、下划线、颜色标记等合理方式提醒用户注意相关条款（需要强调的是，还包括用户应特别注意任何未明确标记的含有\"不承担\"、\"免责\"\"不得\"等形式用语的条款），该等条款的确认将导致用户在特定情况下的被动、不便、损失，包括但不限于本合同第 第5条、第6条、第12条等，请用户在确认同意本合同之前再次阅读上述条款。双方确认上述条款非属于《合同法》第40条规定的\"免除其责任、加重对方责任、排除对方主要权利的\"的条款，杭州边锋尊重用户的权利尤其是诉讼的权利，但作为全球运营的公司，杭州边锋在尊重用户诉讼权利的同时建议诉讼管辖地法院为上海市浦东新区人民法院，而用户选择同意合同并使用游戏即视为双方对此约定达成了一致意见。\r\n法定的杭州边锋的向用户说明这些条款的义务将通过如下方式实现：而用户如有任何需要说明条款的要求，请立即停止运行使用游戏，同时联系客服，若用户未联系客服而选择同意该协议，则双方在此确认杭州边锋已依法履行了根据用户要求对相关条款进行说明的法定义务，杭州边锋已给予用户充足的时间与充分的选择权来决定是否缔结本合同。\r\n鉴于杭州边锋已依法明确了上述条款、履行了格式条款制订方的义务，用户点击同意或下一步，将被视为且应当被视为用户已经完全注意并同意了本合同所有条款尤其是提醒用户注意的条款的合法性及有效性，用户不应当以杭州边锋未对格式条款以合理方式提醒用户注意或未根据用户要求尽到说明义务为理由而声称或要求法院或其它任何第三方确认相关条款非法或无效。\r\n杭州边锋网络技术有限公司\r\n"
    }
]);
    // source line 453, bytecode pc 357
    xs.dump("-------zuizhongxieyi--3------");
    // source line 454, bytecode pc 375
    this.m_scrollView.reloadData();
},
    readDataFromLocal: function() {
    // source line 457, bytecode pc 41
    (this.datalist = [ { title: "正文", content: "" } ]);
    // source line 460, bytecode pc 59
    this.m_scrollView.reloadData();
},
    onCloseBtn: function() {
    // source line 465, bytecode pc 26
    xs.Views.Mgr.hideDialog();
    if ((this.m_type == xs.Constant_SettingType_WanJiaXieYi)) {
        // source line 468, bytecode pc 99
        xs.Utils.Notify.postNotification(xs.Constant_Notify_Event_CloseWanJiaXieYi, { autoLogin: false });
    }
},
    onExit: function() {
    // source line 472, bytecode pc 12
    this._super();
},
    setBaseTouchPriority: function(priority) {
    // source line 476, bytecode pc 9
    (this.m_baseTouchPriority = priority);
    // source line 478, bytecode pc 29
    this.setTouchPriority(this.m_baseTouchPriority);
    // source line 479, bytecode pc 71
    this.m_closeBtn.setTouchPriority((this.m_baseTouchPriority + this.cfg.closeBtn.priority));
    // source line 480, bytecode pc 113
    this.m_scrollView.setTouchPriority((this.m_baseTouchPriority + this.cfg.scrollView.priority));
}
}));
// source line 485, bytecode pc 633
(xs.Views.Dialog.Announcement.create = function(type) {
    var ret;
    // source line 486, bytecode pc 28
    (ret = new xs.Views.Dialog.Announcement());
    if ((ret && ret.init(type))) {
        // source line 488, bytecode pc 64
        return ret;
    }
});
// source line 494, bytecode pc 713
xs.Views.Mgr.registerDialog("Announcement", { "class": xs.Views.Dialog.Announcement, styleType: xs.Constant_DlgStyleType_None });
