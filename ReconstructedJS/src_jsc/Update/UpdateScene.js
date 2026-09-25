// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Update/UpdateScene.js:1
// source line 7, bytecode pc 32
(xs.UpdateScene = (xs.UpdateScene || {}));
// source line 1213, bytecode pc 901
(xs.UpdateScene.UpdateSceneLayer = cc.Layer.extend({
    name: "UpdateSceneLayer",
    log: xsc.Debug.log,
    dump: xsc.Debug.dump,
    error: xsc.Debug.error,
    Step_Init: 0,
    Step_Check_Version: 1,
    Step_Clear_Writeable_Dir: 2,
    Step_Request_Update_Info: 3,
    Step_Request_Update_Info_Waiting: 4,
    Step_Check_Update: 5,
    Step_Update_Cpp: 100,
    Step_Update_Cpp_Confirm_Waiting: 101,
    Step_Update_Js: 200,
    Step_Update_Js_Confirm_Waiting: 201,
    Step_Download_New: 250,
    Step_Downloading: 251,
    Step_Download_MD5check: 300,
    Step_Uncompress_Begin: 400,
    Step_Uncompressing: 401,
    Step_Update_EnterLogin: 1000,
    Step_Reset: 1500,
    Step_None: 2000,
    Const_CppUpdateType_Unknow: 0,
    Const_CppUpdateType_Tip: 1,
    Const_CppUpdateType_BySelf: 2,
    Const_CppUpdateType_WebView: 3,
    Const_Task_ErrorCode_None: 0,
    Const_Task_ErrorCode_CreateFile: 1,
    Const_Task_ErrorCode_Download: 2,
    Const_Task_ErrorCode_Uncompress: 3,
    Const_Task_ErrorCode_Download_Operation_Timeout: 4,
    Event_Msg: 1,
    Event_ServerTip: 2,
    Event_Progress: 3,
    Event_DownloadSuccess: 4,
    Event_UncompressSuccess: 5,
    Event_Error: 6,
    ctor: function() {
    // source line 81, bytecode pc 12
    this._super();
    // source line 82, bytecode pc 42
    cc.associateWithNative(this, cc.Layer);
},
    Cfg: {
        Sprite: {
            Single01: {
                MainMorning_bg: { fileName: "tex/scene_bg/MainMorning_bg.png" },
                MainNightfall_bg: { fileName: "tex/scene_bg/MainNightfall_bg.png" },
                MainNight_bg: { fileName: "tex/scene_bg/MainNight_bg.png" }
            },
            Update: {
                plist: "tex/Update.plist",
                Update_PrgBg: { frameName: "Update_ProgressBG01.png" },
                Update_PrgFrame: { frameName: "Update_ProgressBG02.png" },
                Update_PrgMid: { frameName: "Update_ProgressStatus.png" },
                Update_PrgLight: { frameName: "Update_ProgressPoint.png" }
            }
        }
    },
    _addIndexBgSprite: function(parent) {
    var date, hour, _fileName, _bgView, scaleBg;
    // source line 126, bytecode pc 13
    (date = new Date());
    // source line 127, bytecode pc 31
    (hour = date.getHours());
    if (((hour >= 5) && (hour < 17))) {
        // source line 131, bytecode pc 88
        (_fileName = this.Cfg.Sprite.Single01.MainMorning_bg.fileName);
    } else {
        if (((hour >= 17) && (hour < 19))) {
            // source line 133, bytecode pc 146
            (_fileName = this.Cfg.Sprite.Single01.MainNightfall_bg.fileName);
        } else {
            // source line 135, bytecode pc 181
            (_fileName = this.Cfg.Sprite.Single01.MainNight_bg.fileName);
        }
    }
    // source line 138, bytecode pc 215
    (_bgView = xsc.Factorys.Sprite.createWithFileName(_fileName));
    // source line 140, bytecode pc 242
    (scaleBg = (1136 / _bgView.getContentSize().width));
    // source line 141, bytecode pc 261
    _bgView.setScale(scaleBg);
    // source line 142, bytecode pc 287
    _bgView.setAnchorPoint(xsc.ap_bc);
    // source line 149, bytecode pc 356
    xsc.attachNodes(parent, _bgView, { desc: "bc", offset: { y: -347 }, sc: true });
    // source line 152, bytecode pc 360
    return _bgView;
},
    init: function() {
    var _gameNameView, _sprite_bg, _sprite_mid, _prgTimer, _sprite_light, _sprite_frame, _labelVerDesc;
    if (!this._super()) {
        // source line 158, bytecode pc 19
        return false;
    }
    // source line 161, bytecode pc 27
    (this.m_ver_code_new = null);
    // source line 162, bytecode pc 35
    (this.m_download_url = null);
    // source line 163, bytecode pc 43
    (this.m_filesize = null);
    // source line 164, bytecode pc 51
    (this.m_filemd5 = null);
    // source line 165, bytecode pc 59
    (this.m_download_tips = null);
    // source line 166, bytecode pc 67
    (this.m_is_cpp_update = null);
    // source line 169, bytecode pc 92
    (this.m_cpp_update = { type: null, msg: null });
    // source line 174, bytecode pc 107
    this._addIndexBgSprite(this);
    // source line 177, bytecode pc 143
    (_gameNameView = xsc.Factorys.Sprite.createWithFileName("tex/logo/logo_title5_2.png"));
    // source line 178, bytecode pc 169
    _gameNameView.setAnchorPoint(xsc.ap_c);
    // source line 182, bytecode pc 225
    xsc.Utils.Node.attachNodes(this, _gameNameView, { desc: "c", sc: true });
    // source line 186, bytecode pc 289
    (this.m_label_msg = cc.LabelTTF.create("", xsc.Tools.ProductSys.getOurttf(), 34));
    // source line 187, bytecode pc 335
    this.m_label_msg.setColor(cc.c3b(255, 229, 8));
    // source line 188, bytecode pc 379
    this.m_label_msg.enableStroke(cc.c3b(0, 0, 0), 2);
    // source line 195, bytecode pc 510
    this.m_label_msg.runAction(cc.RepeatForever.create(cc.Sequence.create(cc.DelayTime.create(10), cc.JumpBy.create(0.5, cc.POINT_ZERO, 60, 1))));
    // source line 206, bytecode pc 577
    xsc.attachNodes(this, this.m_label_msg, { desc: "c", offset: { y: -100 }, sc: true });
    // source line 211, bytecode pc 641
    (this.m_label_tip = cc.LabelTTF.create("", xsc.Tools.ProductSys.getOurttf(), 34));
    // source line 212, bytecode pc 687
    this.m_label_tip.setColor(cc.c3b(255, 229, 8));
    // source line 213, bytecode pc 731
    this.m_label_tip.enableStroke(cc.c3b(0, 0, 0), 2);
    // source line 221, bytecode pc 801
    xsc.attachNodes(this, this.m_label_tip, { desc: "c", offset: { y: -230 }, sc: true });
    // source line 226, bytecode pc 858
    (_sprite_bg = xsc.Factorys.Sprite.createWithSpriteFrameName(this.Cfg.Sprite.Update.Update_PrgBg.frameName));
    // source line 234, bytecode pc 925
    xsc.attachNodes(this, _sprite_bg, { desc: "c", offset: { y: -134 }, sc: true });
    // source line 237, bytecode pc 935
    (this.m_sprite_prg_bg = _sprite_bg);
    // source line 238, bytecode pc 955
    this.m_sprite_prg_bg.setVisible(false);
    // source line 240, bytecode pc 1012
    (_sprite_mid = xsc.Factorys.Sprite.createWithSpriteFrameName(this.Cfg.Sprite.Update.Update_PrgMid.frameName));
    // source line 242, bytecode pc 1041
    (_prgTimer = cc.ProgressTimer.create(_sprite_mid));
    // source line 243, bytecode pc 1067
    _prgTimer.setType(cc.PROGRESS_TIMER_TYPE_BAR);
    // source line 244, bytecode pc 1103
    _prgTimer.setMidpoint(cc.p(0, 0));
    // source line 245, bytecode pc 1139
    _prgTimer.setBarChangeRate(cc.p(1, 0));
    // source line 253, bytecode pc 1206
    xsc.attachNodes(this, _prgTimer, { desc: "c", offset: { y: -134 }, sc: true });
    // source line 256, bytecode pc 1216
    (this.m_prg = _prgTimer);
    // source line 258, bytecode pc 1273
    (_sprite_light = xsc.Factorys.Sprite.createWithSpriteFrameName(this.Cfg.Sprite.Update.Update_PrgLight.frameName));
    // source line 259, bytecode pc 1334
    _sprite_light.setPosition(cc.p(20, ((_sprite_light.getContentSize().height / 2) - 5)));
    // source line 261, bytecode pc 1391
    (_sprite_frame = xsc.Factorys.Sprite.createWithSpriteFrameName(this.Cfg.Sprite.Update.Update_PrgFrame.frameName));
    // source line 269, bytecode pc 1458
    xsc.attachNodes(this, _sprite_frame, { desc: "c", offset: { y: -134 }, sc: true });
    // source line 279, bytecode pc 1527
    xsc.attachNodes(_sprite_frame, _sprite_light, { desc: "c", offset: { y: -134 }, sc: true });
    // source line 283, bytecode pc 1537
    (this.m_sprite_prg_frame = _sprite_frame);
    // source line 284, bytecode pc 1557
    this.m_sprite_prg_frame.setVisible(false);
    // source line 287, bytecode pc 1618
    (_labelVerDesc = cc.LabelTTF.create("", xsc.Tools.ProductSys.getOurttf(), 25));
    // source line 288, bytecode pc 1664
    _labelVerDesc.setFontFillColor(cc.c3b(255, 232, 186), true);
    // source line 300, bytecode pc 1744
    _labelVerDesc.setString((xs.Core.Tools.String.createString("auto_name_version") + xsc.Tools.Jsb.getOriResCode()));
    // source line 301, bytecode pc 1770
    _labelVerDesc.setHorizontalAlignment(xsc.AlignH_Left);
    // source line 302, bytecode pc 1796
    _labelVerDesc.setVerticalAlignment(xsc.AlignV_Bottom);
    // source line 303, bytecode pc 1822
    _labelVerDesc.setAnchorPoint(xsc.ap_lb);
    // source line 305, bytecode pc 1891
    xsc.attachNodes(this, _labelVerDesc, { sc: true, desc: "lb", offset: { x: 0, y: 0 } });
    // source line 307, bytecode pc 1924
    (this.m_notify = xsc.Utils.Notify.create());
    // source line 314, bytecode pc 1986
    xsc.Cpp2Jsb.registerCallBack([ "AssetsMgr" ], "onDownloadProgress", function() {
    var arguments;
    // source line 312, bytecode pc 4
    (arguments = arguments);
    // source line 313, bytecode pc 54
    this.m_notify.postNotification(this.Event_Progress, { cur: arguments[2], max: 100 });
}.bind(this));
    // source line 322, bytecode pc 2048
    xsc.Cpp2Jsb.registerCallBack([ "AssetsMgr" ], "onDownloadSuccess", function() {
    // source line 321, bytecode pc 26
    this.m_notify.postNotification(this.Event_DownloadSuccess, null);
}.bind(this));
    // source line 330, bytecode pc 2110
    xsc.Cpp2Jsb.registerCallBack([ "AssetsMgr" ], "onUncompressSuccess", function() {
    // source line 329, bytecode pc 26
    this.m_notify.postNotification(this.Event_UncompressSuccess, null);
}.bind(this));
    // source line 371, bytecode pc 2172
    xsc.Cpp2Jsb.registerCallBack([ "AssetsMgr" ], "onError", function(nameClass, nameFunc, codeErr) {
    var _err_code;
    // source line 337, bytecode pc 23
    (_err_code = xsc.parseInt(codeErr));
    // source line 344, bytecode pc 27
    switch (_err_code) {
        case this.Const_Task_ErrorCode_None:
        default:
        // source line 347, bytecode pc 114
        xsc.error("onError", _err_code);
        break;
        case this.Const_Task_ErrorCode_CreateFile:
        // source line 350, bytecode pc 139
        this._setStep0(this.Step_Update_EnterLogin);
        break;
        case this.Const_Task_ErrorCode_Download:
        // source line 355, bytecode pc 164
        this.m_sprite_prg_bg.setVisible(false);
        // source line 356, bytecode pc 184
        this.m_sprite_prg_frame.setVisible(false);
        // source line 357, bytecode pc 204
        this.m_prg.setPercentage(0);
        // source line 358, bytecode pc 224
        this._setStep0(this.Step_Update_Js_Confirm_Waiting);
        break;
        case this.Const_Task_ErrorCode_Uncompress:
        // source line 362, bytecode pc 249
        this._setStep0(this.Step_Update_EnterLogin);
        break;
        case this.Const_Task_ErrorCode_Download_Operation_Timeout:
        // source line 365, bytecode pc 274
        this._setStep0(this.Step_Download_New);
        break;
    }
}.bind(this));
    // source line 375, bytecode pc 2187
    this.setTouchEnabled(true);
    // source line 376, bytecode pc 2211
    this.setTouchMode(cc.TOUCH_ONE_BY_ONE);
    // source line 382, bytecode pc 2213
    return true;
},
    _onEvent_Msg: function(msg) {
    // source line 391, bytecode pc 21
    this.m_label_msg.setString(msg);
},
    _onEvent_ServerTip: function(msg) {
    // source line 395, bytecode pc 22
    this.dump("_onEvent_ServerTip", msg);
    // source line 396, bytecode pc 44
    this.m_label_tip.setString(msg);
},
    _onEvent_Progress: function(obj) {
    var _s, _s_all, _prg, _str0, _str1;
    // source line 417, bytecode pc 48
    (_s = ((((this.m_filesize_downloaded + (this.m_filesize_need_download * (obj.cur / obj.max))) / 1024) / 1024) + ""));
    // source line 418, bytecode pc 72
    (_s_all = (((this.m_filesize / 1024) / 1024) + ""));
    // source line 431, bytecode pc 86
    (_prg = ((_s / _s_all) * 100));
    // source line 432, bytecode pc 108
    this.m_prg.setPercentage(_prg);
    // source line 434, bytecode pc 140
    (_str0 = xsc.Utils.parseFloatDotLimit(_s, 100));
    // source line 435, bytecode pc 172
    (_str1 = xsc.Utils.parseFloatDotLimit(_s_all, 100));
    // source line 441, bytecode pc 275
    this._postNotifyMsg(((((xs.Core.Tools.String.createString("auto_name_238") + _str0) + xs.Core.Tools.String.createString("auto_name_239")) + _str1) + "M"));
},
    _onEvent_DownloadSuccess: function() {
    // source line 446, bytecode pc 24
    this.log("_onEvent_DownloadSuccess", "begin");
    // source line 448, bytecode pc 44
    this._setStep0(this.Step_Download_MD5check);
    // source line 450, bytecode pc 69
    this.log("_onEvent_DownloadSuccess", "end");
},
    _onEvent_UncompressSuccess: function() {
    // source line 454, bytecode pc 24
    this.log("_onEvent_UncompressSuccess", "begin");
    // source line 456, bytecode pc 56
    this.log("_onEvent_UncompressSuccess", ("new res version is:" + this.m_ver_code_new));
    // source line 458, bytecode pc 90
    xsc.Utils.LocalStore.writeCurResCode(this.m_ver_code_new);
    // source line 460, bytecode pc 110
    this._setStep0(this.Step_Update_EnterLogin);
    // source line 461, bytecode pc 135
    this.log("_onEvent_UncompressSuccess", "end");
},
    onEnterTransitionDidFinish: function() {
    // source line 465, bytecode pc 12
    this._super();
    // source line 468, bytecode pc 46
    this.m_notify.addObserver(this, this._onEvent_Msg, this.Event_Msg);
    // source line 469, bytecode pc 80
    this.m_notify.addObserver(this, this._onEvent_ServerTip, this.Event_ServerTip);
    // source line 470, bytecode pc 114
    this.m_notify.addObserver(this, this._onEvent_Progress, this.Event_Progress);
    // source line 471, bytecode pc 148
    this.m_notify.addObserver(this, this._onEvent_DownloadSuccess, this.Event_DownloadSuccess);
    // source line 472, bytecode pc 182
    this.m_notify.addObserver(this, this._onEvent_UncompressSuccess, this.Event_UncompressSuccess);
    // source line 475, bytecode pc 195
    (this.m_step0 = this.Step_Init);
    // source line 476, bytecode pc 208
    this._startUpdate();
},
    onExitTransitionDidStart: function() {
    // source line 483, bytecode pc 24
    this.log("onExitTransitionDidStart", "begin");
    // source line 485, bytecode pc 51
    this.m_notify.removeObserver(this, this.Event_Msg);
    // source line 486, bytecode pc 78
    this.m_notify.removeObserver(this, this.Event_ServerTip);
    // source line 487, bytecode pc 105
    this.m_notify.removeObserver(this, this.Event_Progress);
    // source line 488, bytecode pc 132
    this.m_notify.removeObserver(this, this.Event_DownloadSuccess);
    // source line 489, bytecode pc 159
    this.m_notify.removeObserver(this, this.Event_UncompressSuccess);
    // source line 491, bytecode pc 184
    this.log("onExitTransitionDidStart", "end");
},
    _setStep0: function(step) {
    var _msg;
    // source line 495, bytecode pc 9
    (this.m_step0 = step);
    // source line 497, bytecode pc 49
    xsc.Tools.Statistic.event(("update_step_" + this.m_step0));
    // source line 499, bytecode pc 54
    (_msg = null);
    // source line 502, bytecode pc 58
    switch (step) {
        case this.Step_Init:
        // source line 504, bytecode pc 291
        (_msg = xs.Core.Tools.String.createString("auto_name_240"));
        break;
        case this.Step_Check_Version:
        // source line 507, bytecode pc 337
        (_msg = xs.Core.Tools.String.createString("auto_name_241"));
        break;
        case this.Step_Clear_Writeable_Dir:
        // source line 510, bytecode pc 383
        (_msg = xs.Core.Tools.String.createString("auto_name_242"));
        break;
        case this.Step_Request_Update_Info:
        // source line 513, bytecode pc 429
        (_msg = xs.Core.Tools.String.createString("auto_name_243"));
        break;
        case this.Step_Request_Update_Info_Waiting:
        // source line 516, bytecode pc 475
        (_msg = xs.Core.Tools.String.createString("auto_name_244"));
        break;
        case this.Step_Check_Update:
        // source line 519, bytecode pc 521
        (_msg = xs.Core.Tools.String.createString("auto_name_245"));
        break;
        case this.Step_Update_Cpp:
        // source line 522, bytecode pc 567
        (_msg = xs.Core.Tools.String.createString("auto_name_246"));
        break;
        case this.Step_Update_Js:
        // source line 525, bytecode pc 613
        (_msg = xs.Core.Tools.String.createString("auto_name_240"));
        break;
        case this.Step_Download_New:
        // source line 528, bytecode pc 659
        (_msg = xs.Core.Tools.String.createString("auto_name_247"));
        break;
        case this.Step_Downloading:
        // source line 531, bytecode pc 705
        (_msg = xs.Core.Tools.String.createString("auto_name_248"));
        break;
        case this.Step_Download_MD5check:
        // source line 534, bytecode pc 751
        (_msg = xs.Core.Tools.String.createString("auto_name_249"));
        break;
        case this.Step_Uncompress_Begin:
        // source line 537, bytecode pc 797
        (_msg = xs.Core.Tools.String.createString("auto_name_250"));
        break;
        case this.Step_Uncompressing:
        // source line 540, bytecode pc 843
        (_msg = xs.Core.Tools.String.createString("auto_name_251"));
        break;
        case this.Step_Update_EnterLogin:
        // source line 543, bytecode pc 889
        (_msg = xs.Core.Tools.String.createString("auto_name_252"));
        break;
        case this.Step_Reset:
        case this.Step_Update_Js_Confirm_Waiting:
        case this.Step_Update_Cpp_Confirm_Waiting:
        break;
        default:
        // source line 550, bytecode pc 944
        (_msg = (xs.Core.Tools.String.createString("auto_name_253") + step));
        break;
    }
    if ((_msg === null)) {
        // source line 555, bytecode pc 969
        (_msg = this.m_last_msg);
    } else {
        // source line 558, bytecode pc 984
        (this.m_last_msg = _msg);
    }
    // source line 560, bytecode pc 1001
    this._postNotifyMsg(_msg);
},
    _setCheckCode: function(code) {
    // source line 569, bytecode pc 9
    (this.m_check_code = code);
},
    _getCheckCode: function() {
    // source line 573, bytecode pc 6
    return this.m_check_code;
},
    _clear_writable_dir: function() {
    var _dir_update_res;
    // source line 580, bytecode pc 15
    (_dir_update_res = this._getUpdateResourcesDir());
    if (xsc.Utils.FileSys.isFileExist(_dir_update_res)) {
        // source line 583, bytecode pc 81
        xsc.Utils.FileSys.deleteDir(_dir_update_res);
    }
},
    _clear_download_dir: function() {
    // source line 590, bytecode pc 22
    xsc.log("_clear_download_dir");
    // source line 592, bytecode pc 62
    xsc.Utils.FileSys.deleteDir(this._getUpdateDownloadDir());
    // source line 595, bytecode pc 102
    xsc.Tools.Jsb.mkdir(this._getUpdateDownloadDir());
},
    _getUpdateCheckUrl: function(obj) {
    var _value, _updateAddr, _verApiName, _tmp;
    // source line 601, bytecode pc 13
    (_value = xsc.app_indentify);
    // source line 604, bytecode pc 22
    (_updateAddr = "xxxxx");
    if (((_value == xsc.Const_Proj_Code_Channel_Normal_Android) || (_value == xsc.Const_Proj_Code_Channel_Normal_Android2))) {
        // source line 609, bytecode pc 74
        (_updateAddr = "cqzj.sanguosha.com/sanguosha_anysdk");
        // source line 610, bytecode pc 83
        (_verApiName = "version");
    } else {
        if ((_value == xsc.Const_Proj_Code_AppStore_Ios)) {
            // source line 613, bytecode pc 116
            (_updateAddr = "cqzj.sanguosha.com/sanguosha_ios");
            // source line 614, bytecode pc 125
            (_verApiName = "version");
        } else {
            if (((_value == xsc.Const_Proj_Code_Official_Fst) || ((_value == xsc.Const_Proj_Code_Official_Fst_Ios) || (_value == xsc.Const_Proj_Code_Official_Fst_Android)))) {
                // source line 619, bytecode pc 198
                (_updateAddr = "cqzj.sanguosha.com/sanguosha_new");
                // source line 620, bytecode pc 207
                (_verApiName = "version");
            } else {
                if ((_value == xsc.Const_Proj_Code_TestOnline)) {
                    // source line 624, bytecode pc 240
                    (_updateAddr = "cqzj.sanguosha.com/sanguosha_testonline");
                    // source line 625, bytecode pc 249
                    (_verApiName = "version");
                } else {
                    if (((_value == xsc.Const_Proj_Code_226_Official_Ios) || (_value == xsc.Const_Proj_Code_226_Official_Android))) {
                        // source line 632, bytecode pc 302
                        (_updateAddr = "cqzj.sanguosha.com/sanguosha_new_2.2.6");
                        // source line 633, bytecode pc 311
                        (_verApiName = "versionPlus");
                    } else {
                        if (((_value == xsc.Const_Proj_Code_226_Channel_Ios) || (_value == xsc.Const_Proj_Code_226_Channel_Android))) {
                            // source line 638, bytecode pc 364
                            (_updateAddr = "cqzj.sanguosha.com/sanguosha_anysdk_2.2.6");
                            // source line 639, bytecode pc 373
                            (_verApiName = "versionPlus");
                        } else {
                            if ((_value == xsc.Const_Proj_Code_226_AppStore_Ios)) {
                                // source line 643, bytecode pc 406
                                (_updateAddr = "cqzj.sanguosha.com/sanguosha_ios_2.2.6");
                                // source line 644, bytecode pc 415
                                (_verApiName = "versionPlus");
                            } else {
                                if ((_value == xsc.Const_Proj_Code_226_AppStore_IosAsylum)) {
                                    // source line 648, bytecode pc 448
                                    (_updateAddr = "cqzj.sanguosha.com/sanguosha_iosAsylum_2.2.6");
                                    // source line 649, bytecode pc 457
                                    (_verApiName = "versionPlus");
                                } else {
                                    if (((_value == xsc.Const_Proj_Code_226_Pioneer_Ios) || (_value == xsc.Const_Proj_Code_226_Pioneer_Android))) {
                                        // source line 654, bytecode pc 510
                                        (_updateAddr = "cqzj.sanguosha.com/sanguosha_pioneer_2.2.6");
                                        // source line 655, bytecode pc 519
                                        (_verApiName = "versionPlus");
                                    } else {
                                        if ((_value == xsc.Const_Proj_Code_226_TestOnline)) {
                                            // source line 659, bytecode pc 552
                                            (_updateAddr = "cqzj.sanguosha.com/sanguosha_testonline_2.2.6");
                                            // source line 660, bytecode pc 561
                                            (_verApiName = "versionPlus");
                                        } else {
                                            if (((_value == xsc.Const_Proj_Code_226Small_Channel_Android) || (_value == xsc.Const_Proj_Code_226Small_Channel_Ios))) {
                                                // source line 665, bytecode pc 614
                                                (_updateAddr = "cqzj.sanguosha.com/sanguosha_small_2.2.6");
                                                // source line 666, bytecode pc 623
                                                (_verApiName = "versionPlus");
                                            } else {
                                                if (((_value == xsc.Const_Proj_Code_226_ApplicationOfTreasure_Ios) || (_value == xsc.Const_Proj_Code_226_ApplicationOfTreasure_Android))) {
                                                    // source line 671, bytecode pc 676
                                                    (_updateAddr = "cqzj.sanguosha.com/sanguosha_yyb_2.2.6");
                                                    // source line 672, bytecode pc 685
                                                    (_verApiName = "versionPlus");
                                                } else {
                                                    if ((_value == xsc.Const_Proj_Code_226_TW_TestOnline)) {
                                                        // source line 677, bytecode pc 718
                                                        (_updateAddr = "cqoverdownload.sanguosha.com/upd/sanguosha_testonline");
                                                        // source line 678, bytecode pc 727
                                                        (_verApiName = "versionPlus");
                                                    } else {
                                                        if (((_value == xsc.Const_Proj_Code_226_TW_Ios) || (_value == xsc.Const_Proj_Code_226_TW_Android))) {
                                                            // source line 683, bytecode pc 780
                                                            (_updateAddr = "cqoverdownload.sanguosha.com/upd/sanguosha_traditional");
                                                            // source line 684, bytecode pc 789
                                                            (_verApiName = "versionPlus");
                                                        } else {
                                                            if ((_value == xsc.Const_Proj_Code_226Small_TW_Android)) {
                                                                // source line 690, bytecode pc 822
                                                                (_updateAddr = "cqoverdownload.sanguosha.com/upd/sanguosha_traditional_small");
                                                                // source line 691, bytecode pc 831
                                                                (_verApiName = "versionPlus");
                                                            } else {
                                                                // source line 695, bytecode pc 859
                                                                xsc.error("not support yet");
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    // source line 698, bytecode pc 868
    (_tmp = "http://");
    // source line 699, bytecode pc 879
    (_tmp = (_tmp + _updateAddr));
    // source line 700, bytecode pc 902
    (_tmp = (_tmp + (("/index.php?do=" + _verApiName) + ".check&data=")));
    // source line 701, bytecode pc 930
    (_tmp = (_tmp + JSON.stringify(obj)));
    // source line 702, bytecode pc 943
    (_tmp = (_tmp + "&client_update_ver=2"));
    // source line 704, bytecode pc 947
    return _tmp;
},
    onTouchBegan: function(touch, e) {
    // source line 708, bytecode pc 22
    xsc.log("onTouchBegan");
    // source line 709, bytecode pc 24
    return true;
},
    onTouchMoved: function(touch, e) {
},
    onTouchEnded: function(touch, e) {
    // source line 716, bytecode pc 29
    xsc.log("onTouchEnded", this.m_step0);
    if ((this.m_step0 == this.Step_Update_Js_Confirm_Waiting)) {
        // source line 719, bytecode pc 67
        this._postNotifyServerTip(this.m_download_tips);
        // source line 720, bytecode pc 87
        this._setStep0(this.Step_Download_New);
    } else {
        if ((this.m_step0 == this.Step_Update_Cpp_Confirm_Waiting)) {
            if ((this.m_cpp_update.type == this.Const_CppUpdateType_BySelf)) {
                // source line 725, bytecode pc 158
                this._postNotifyServerTip(this.m_cpp_update.msg);
                // source line 726, bytecode pc 185
                xsc.Tools.Jsb.visitStore();
            } else {
                if ((this.m_cpp_update.type == this.Const_CppUpdateType_WebView)) {
                    // source line 729, bytecode pc 238
                    this._postNotifyServerTip(this.m_cpp_update.msg);
                    // source line 730, bytecode pc 277
                    xsc.Tools.Jsb.visitUrl(this.m_cpp_update.url);
                }
            }
        }
    }
},
    _update_Step_Check_Version: function() {
    var _res_code, _ori_code, _code, _needClear;
    // source line 739, bytecode pc 53
    (_res_code = (xsc.parseInt(xsc.Utils.LocalStore.readCurResCode()) || 0));
    // source line 741, bytecode pc 83
    (_ori_code = xsc.Tools.Jsb.getOriResCode());
    // source line 746, bytecode pc 129
    xsc.dump("check_code", { ori: _ori_code, res: _res_code });
    // source line 751, bytecode pc 138
    (_needClear = false);
    if (((_res_code !== null) && ((_res_code !== undefined) && (_res_code !== "")))) {
        if ((xsc.parseInt(_res_code) > xsc.parseInt(_ori_code))) {
            // source line 756, bytecode pc 231
            (_code = _res_code);
        } else {
            if ((xsc.parseInt(_res_code) < xsc.parseInt(_ori_code))) {
                // source line 760, bytecode pc 289
                (_code = _ori_code);
                // source line 761, bytecode pc 294
                (_needClear = true);
                if ((_res_code == 0)) {
                    // source line 765, bytecode pc 335
                    xsc.Utils.LocalStore.writeCurResCode(_ori_code);
                }
            } else {
                // source line 769, bytecode pc 347
                (_code = _ori_code);
            }
        }
    } else {
        // source line 774, bytecode pc 359
        (_code = _ori_code);
    }
    // source line 777, bytecode pc 376
    this._setCheckCode(_code);
    if (_needClear) {
        // source line 780, bytecode pc 404
        this._setStep0(this.Step_Clear_Writeable_Dir);
    } else {
        // source line 783, bytecode pc 429
        this._setStep0(this.Step_Request_Update_Info);
    }
},
    update: function(fDelta) {
    var _step0, _url, _file_path, _file_name, _file_full_name, _size_m_need_dl, _md5;
    if (((this.m_step0 !== this.Step_Reset) && (this.m_step0 !== this.Step_Request_Update_Info_Waiting))) {
        if ((this.m_step0 !== this.m_step0_last)) {
            // source line 795, bytecode pc 67
            (this.m_step0_last = this.m_step0);
        }
    }
    // source line 800, bytecode pc 77
    (_step0 = this.m_step0);
    // source line 802, bytecode pc 104
    xsc.log(("_step0:" + _step0));
    // source line 804, bytecode pc 108
    switch (_step0) {
        case this.Step_Init:
        // source line 806, bytecode pc 331
        this._setStep0(this.Step_Check_Version);
        break;
        case this.Step_Check_Version:
        // source line 809, bytecode pc 349
        this._update_Step_Check_Version();
        break;
        case this.Step_Clear_Writeable_Dir:
        // source line 812, bytecode pc 367
        this._clear_writable_dir();
        // source line 814, bytecode pc 387
        this._setStep0(this.Step_Request_Update_Info);
        break;
        case this.Step_Request_Update_Info:
        // source line 825, bytecode pc 524
        (_url = this._getUpdateCheckUrl({
    cpp_version: xsc.Tools.Jsb.getOriResCode(),
    app_indentify: xsc.app_indentify,
    resource_version: this._getCheckCode(),
    channel: xsc.app_channel,
    deviceId: xsc.Tools.Jsb.getDeviceId()
}));
        // source line 830, bytecode pc 551
        xsc.log("url:", _url);
        // source line 880, bytecode pc 620
        xsc.Utils.Net.reqAsync(_url, function(responseText) {
    var _data;
    // source line 836, bytecode pc 23
    (_data = JSON.parse(responseText));
    // source line 837, bytecode pc 46
    this.dump("checkUpdate resp", _data);
    // source line 840, bytecode pc 61
    (this.m_ver_code_new = _data.resource_version);
    // source line 841, bytecode pc 76
    (this.m_ver_name_new = _data.resource_version_show);
    // source line 842, bytecode pc 91
    (this.m_download_url = _data.download_url);
    // source line 843, bytecode pc 123
    (this.m_filesize = xsc.parseInt(_data.filesize));
    // source line 844, bytecode pc 138
    (this.m_filemd5 = _data.md5);
    // source line 845, bytecode pc 153
    (this.m_download_tips = _data.tips);
    // source line 846, bytecode pc 168
    (this.m_is_cpp_update = _data.is_cpp_update);
    // source line 847, bytecode pc 194
    (this.m_dl_file_name_short = (_data.file_name || "unknow"));
    // source line 848, bytecode pc 204
    (this.m_resp = _data);
    if (this.m_is_cpp_update) {
        // source line 855, bytecode pc 321
        (this.m_cpp_update = {
    type: xsc.parseInt(_data.cpp_update_fun.type),
    msg: (_data.cpp_update_fun.val || ""),
    url: (_data.cpp_update_fun.url || "")
});
        // source line 858, bytecode pc 341
        this._setStep0(this.Step_Check_Update);
    } else {
        if ((_data.result == true)) {
            // source line 866, bytecode pc 381
            this._setStep0(this.Step_Check_Update);
        } else {
            // source line 871, bytecode pc 406
            this._setStep0(this.Step_Update_EnterLogin);
        }
    }
}.bind(this), function(responseText) {
    // source line 878, bytecode pc 26
    xsc.error("checkUpdateFail", responseText);
    // source line 879, bytecode pc 46
    this._setStep0(this.Step_Update_EnterLogin);
}.bind(this));
        // source line 882, bytecode pc 640
        this._setStep0(this.Step_Request_Update_Info_Waiting);
        break;
        case this.Step_Check_Update:
        if (this.m_is_cpp_update) {
            // source line 887, bytecode pc 681
            this._postNotifyServerTip(this.m_cpp_update.msg);
            // source line 888, bytecode pc 701
            this._setStep0(this.Step_Update_Cpp);
        } else {
            // source line 891, bytecode pc 726
            this._postNotifyServerTip(this.m_download_tips);
            // source line 892, bytecode pc 746
            this._setStep0(this.Step_Update_Js);
        }
        break;
        case this.Step_Update_Js_Confirm_Waiting:
        // source line 899, bytecode pc 831
        this.m_label_msg.setString(xs.Core.Tools.String.createString("auto_name_254").replace("$1", this._str_size_m_need_dl));
        break;
        case this.Step_Update_Cpp:
        // source line 905, bytecode pc 848
        switch (this.m_cpp_update.type) {
            case this.Const_CppUpdateType_Tip:
            // source line 908, bytecode pc 922
            this._postNotifyServerTip(this.m_cpp_update.msg);
            // source line 909, bytecode pc 942
            this._setStep0(this.Step_Reset);
            break;
            case this.Const_CppUpdateType_BySelf:
            // source line 912, bytecode pc 967
            this._setStep0(this.Step_Update_Cpp_Confirm_Waiting);
            break;
            case this.Const_CppUpdateType_WebView:
            // source line 915, bytecode pc 992
            this._setStep0(this.Step_Update_Cpp_Confirm_Waiting);
            break;
            case this.Const_CppUpdateType_Unknow:
            default:
            // source line 920, bytecode pc 1048
            this._postNotifyServerTip(xs.Core.Tools.String.createString("auto_name_255"));
            // source line 921, bytecode pc 1068
            this._setStep0(this.Step_Reset);
            break;
        }
        break;
        case this.Step_Update_Cpp_Confirm_Waiting:
        break;
        case this.Step_Update_Js:
        // source line 937, bytecode pc 1123
        xsc.Tools.Jsb.mkdir(this._getUpdateDir());
        // source line 938, bytecode pc 1163
        xsc.Tools.Jsb.mkdir(this._getUpdateDownloadDir());
        // source line 939, bytecode pc 1203
        xsc.Tools.Jsb.mkdir(this._getUpdateResourcesDir());
        // source line 941, bytecode pc 1219
        (_file_path = this._getUpdateDownloadDir());
        // source line 946, bytecode pc 1268
        (_file_name = (((((("" + this.m_check_code) + "_") + this.m_ver_code_new) + "_") + this.m_filemd5) + this.m_dl_file_name_short));
        // source line 948, bytecode pc 1279
        (_file_full_name = (_file_path + _file_name));
        // source line 953, bytecode pc 1289
        (this.m_filePath = _file_path);
        // source line 954, bytecode pc 1299
        (this.m_fileName = _file_name);
        // source line 955, bytecode pc 1313
        (this.m_file_full_name = (_file_path + _file_name));
        // source line 958, bytecode pc 1353
        (this.m_filesize_downloaded = xsc.Utils.FileSys.getFileDataSize(this.m_file_full_name));
        // source line 959, bytecode pc 1373
        (this.m_filesize_need_download = (this.m_filesize - this.m_filesize_downloaded));
        // source line 966, bytecode pc 1436
        xsc.dump("range", {
    m_filesize_downloaded: this.m_filesize_downloaded,
    m_filesize: this.m_filesize,
    m_filesize_need_download: this.m_filesize_need_download
});
        // source line 971, bytecode pc 1460
        (_size_m_need_dl = (((this.m_filesize_need_download / 1024) / 1024) + ""));
        // source line 972, bytecode pc 1495
        (this._str_size_m_need_dl = xsc.Utils.parseFloatDotLimit(_size_m_need_dl, 100));
        // source line 978, bytecode pc 1561
        xsc.Tools.Jsb.AssetsMgr.init(this.m_download_url, this.m_filePath, this.m_fileName, this._getUpdateResourcesDir());
        if (cc.FileUtils.getInstance().isFileExist(_file_full_name)) {
            // source line 984, bytecode pc 1622
            this._setStep0(this.Step_Update_Js_Confirm_Waiting);
        } else {
            // source line 988, bytecode pc 1647
            this._setStep0(this.Step_Update_Js_Confirm_Waiting);
        }
        break;
        case this.Step_Download_New:
        // source line 994, bytecode pc 1672
        this.m_sprite_prg_frame.setVisible(true);
        // source line 995, bytecode pc 1692
        this.m_sprite_prg_bg.setVisible(true);
        // source line 997, bytecode pc 1732
        (this.m_filesize_downloaded = xsc.Utils.FileSys.getFileDataSize(this.m_file_full_name));
        // source line 998, bytecode pc 1752
        (this.m_filesize_need_download = (this.m_filesize - this.m_filesize_downloaded));
        // source line 1005, bytecode pc 1815
        xsc.dump("range", {
    m_filesize_downloaded: this.m_filesize_downloaded,
    m_filesize: this.m_filesize,
    m_filesize_need_download: this.m_filesize_need_download
});
        if ((this.m_filesize_need_download == 0)) {
            // source line 1012, bytecode pc 1848
            this._setStep0(this.Step_Download_MD5check);
        } else {
            if ((this.m_filesize_need_download < 0)) {
                // source line 1018, bytecode pc 1879
                this._clear_download_dir();
                // source line 1021, bytecode pc 1899
                this._setStep0(this.Step_Download_New);
            } else {
                // source line 1031, bytecode pc 1950
                xsc.Tools.Jsb.AssetsMgr.setDownloadRange(this.m_filesize_downloaded, this.m_filesize);
                // source line 1035, bytecode pc 1985
                xsc.Tools.Jsb.AssetsMgr.setConnectionTimeout(15);
                // source line 1042, bytecode pc 2053
                xsc.Tools.Jsb.AssetsMgr.setOperationTimeout(((xsc.app_indentify == xsc.Const_Proj_Code_226_TestOnline) ? 5 : 120));
                // source line 1046, bytecode pc 2085
                xsc.Tools.Jsb.AssetsMgr.startDownloadThread();
                // source line 1047, bytecode pc 2105
                this._setStep0(this.Step_Downloading);
            }
        }
        break;
        case this.Step_Downloading:
        break;
        case this.Step_Download_MD5check:
        // source line 1058, bytecode pc 2157
        (_md5 = xsc.Tools.Jsb.Utils.md5file(this.m_file_full_name));
        // source line 1060, bytecode pc 2183
        this.log("this.m_filemd5", this.m_filemd5);
        // source line 1061, bytecode pc 2213
        this.log(("_md5 - download - " + this.m_file_full_name), _md5);
        if ((_md5 === this.m_filemd5)) {
            // source line 1066, bytecode pc 2248
            this._setStep0(this.Step_Uncompress_Begin);
        } else {
            // source line 1070, bytecode pc 2287
            xsc.error("md5 check err,skip update", this.m_fileName, _md5);
            // source line 1073, bytecode pc 2300
            this._clear_download_dir();
            // source line 1075, bytecode pc 2320
            this._setStep0(this.Step_Update_EnterLogin);
        }
        break;
        case this.Step_Uncompress_Begin:
        // source line 1082, bytecode pc 2377
        xsc.Tools.Jsb.AssetsMgr.startUncompressThread(this.m_file_full_name, this._getUpdateResourcesDir());
        // source line 1084, bytecode pc 2397
        this._setStep0(this.Step_Uncompressing);
        break;
        case this.Step_Uncompressing:
        break;
        case this.Step_Update_EnterLogin:
        // source line 1092, bytecode pc 2439
        xsc.Tools.Jsb.AssetsMgr.release();
        // source line 1094, bytecode pc 2452
        this._gotoLogin();
        break;
        case this.Step_Request_Update_Info_Waiting:
        break;
        case this.Step_Reset:
        break;
        case this.Step_None:
        default:
        // source line 1106, bytecode pc 2496
        this.error("step err", _step0, "test");
        break;
    }
},
    _getUpdateDownloadDir: function() {
    var _ret;
    // source line 1114, bytecode pc 19
    (_ret = this._getUpdateDir());
    // source line 1115, bytecode pc 32
    (_ret = (_ret + "/Download/"));
    // source line 1118, bytecode pc 36
    return _ret;
},
    _getUpdateResourcesDir: function() {
    var _ret;
    // source line 1137, bytecode pc 19
    (_ret = this._getUpdateDir());
    // source line 1141, bytecode pc 32
    (_ret = (_ret + "/ExcuteDir"));
    // source line 1142, bytecode pc 66
    (_ret = (_ret + xsc.Tools.Jsb.getOriResCode()));
    // source line 1144, bytecode pc 79
    (_ret = (_ret + "/"));
    // source line 1146, bytecode pc 83
    return _ret;
},
    _getUpdateDir: function() {
    var _ret;
    // source line 1153, bytecode pc 39
    (_ret = cc.FileUtils.getInstance().getWritablePath());
    // source line 1159, bytecode pc 52
    (_ret = (_ret + "Sanguosha"));
    // source line 1163, bytecode pc 56
    return _ret;
},
    _gotoLogin: function() {
    // source line 1168, bytecode pc 21
    xs.UpdateScene.unload();
    // source line 1170, bytecode pc 38
    xs.main_game();
},
    _postNotifyMsg: function(strMsg) {
    // source line 1174, bytecode pc 23
    this._postNotify(this.Event_Msg, strMsg);
},
    _postNotifyServerTip: function(strMsg) {
    // source line 1178, bytecode pc 23
    this._postNotify(this.Event_ServerTip, strMsg);
},
    _postNotifyProgress: function(obj) {
    // source line 1182, bytecode pc 23
    this._postNotify(this.Event_Progress, obj);
},
    _postNotify: function(event, obj) {
    // source line 1186, bytecode pc 25
    this.m_notify.postNotification(event, obj);
},
    _startUpdate: function() {
    if (!this.m_is_update_running) {
        // source line 1198, bytecode pc 24
        this.scheduleUpdate();
        // source line 1199, bytecode pc 32
        (this.m_is_update_running = true);
    }
},
    _stopUpdate: function() {
    // source line 1207, bytecode pc 12
    this.unscheduleUpdate();
    // source line 1208, bytecode pc 20
    (this.m_is_update_running = false);
},
    onExit: function() {
    // source line 1214, bytecode pc 12
    this._super();
}
}));
// source line 1218, bytecode pc 922
(xs.UpdateScene.load = function() {
    // source line 1220, bytecode pc 32
    xsc.Factorys.Sprite.load("Update.plist");
    // source line 1221, bytecode pc 65
    xsc.Factorys.Sprite.load("0_6_4_DengluScene01.plist");
});
// source line 1224, bytecode pc 943
(xs.UpdateScene.unload = function() {
    // source line 1226, bytecode pc 32
    xsc.Factorys.Sprite.unload("Update.plist");
    // source line 1227, bytecode pc 65
    xsc.Factorys.Sprite.unload("0_6_4_DengluScene01.plist");
});
// source line 1230, bytecode pc 964
(xs.UpdateScene.create = function() {
    var _layer, _scene;
    // source line 1233, bytecode pc 21
    xs.UpdateScene.load();
    // source line 1235, bytecode pc 45
    (_layer = new xs.UpdateScene.UpdateSceneLayer());
    if ((_layer && _layer.init())) {
        // source line 1238, bytecode pc 92
        (_scene = new cc.Scene());
        // source line 1240, bytecode pc 111
        _scene.addChild(_layer);
        // source line 1241, bytecode pc 115
        return _scene;
    }
    // source line 1243, bytecode pc 117
    return null;
});
