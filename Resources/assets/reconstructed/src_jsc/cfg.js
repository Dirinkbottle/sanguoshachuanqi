// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/cfg.js:1
// source line 7, bytecode pc 22
cc.log("public cfg.js begin");
// source line 44, bytecode pc 38
(xs.resVersion = "9.17.1.02");
// source line 47, bytecode pc 50
(xs.release = true);
// source line 51, bytecode pc 78
(xs.useObfuscate = (xs.release && false));
// source line 53, bytecode pc 106
(xs.use_statistic_params = (xs.release || false));
// source line 55, bytecode pc 136
(xs.loadTest = ((xs.release === false) && true));
// source line 57, bytecode pc 166
(xs.useAudio = ((xs.release === true) || false));
// source line 59, bytecode pc 196
(xs.useLog = ((xs.release !== true) && true));
// source line 61, bytecode pc 226
(xs.useMark = ((xs.useLog === true) && false));
// source line 63, bytecode pc 256
(xs.useDebugBoundRect = ((xs.release !== true) && false));
// source line 64, bytecode pc 286
(xs.useDebugPoint = ((xs.release !== true) && false));
// source line 66, bytecode pc 316
(xs.useDlgEffect = ((xs.release === true) || true));
// source line 68, bytecode pc 346
(xs.skipFightIfErr = ((xs.release === true) || true));
// source line 70, bytecode pc 376
(xs.fightSkipAlways = ((xs.release !== true) && true));
// source line 72, bytecode pc 388
(xs.purgeSceneCache = true);
// source line 74, bytecode pc 418
(xs.dungeonPlotAlways = ((xs.release !== true) && false));
// source line 75, bytecode pc 448
(xs.dungeonPlot_skip = ((xs.release !== true) && true));
// source line 78, bytecode pc 478
(xs.assertExit = ((xs.release !== true) && true));
// source line 80, bytecode pc 506
(xs.guideOpen = (xs.release || true));
// source line 81, bytecode pc 536
(xs.guideAlways = ((xs.release !== true) && false));
// source line 83, bytecode pc 566
(xs.guide_sub_always = ((xs.release !== true) && false));
// source line 84, bytecode pc 596
(xs.guide_debug = ((xs.release !== true) && false));
// source line 85, bytecode pc 624
(xs.guide_sub_surrender_debug = (xs.guide_debug && false));
// source line 87, bytecode pc 652
(xs.leadGuideOpen = (xs.release || true));
// source line 89, bytecode pc 682
(xs.dumpMemInfo = ((xs.release !== true) && false));
// source line 91, bytecode pc 712
(xs.dog_check = ((xs.release !== true) && false));
// source line 93, bytecode pc 724
(xs.use_sensitive_mask = true);
// source line 95, bytecode pc 754
(xs.useSkillPreview = ((xs.release !== true) && false));
// source line 97, bytecode pc 766
(xs.cfg_exception_dialog_use = true);
// source line 106, bytecode pc 796
(xs.urlEncrypt = ((xs.release === true) && false));
// source line 109, bytecode pc 808
(xs.zlib = true);
// source line 112, bytecode pc 820
(xs.urlSign = true);
// source line 114, bytecode pc 850
(xs.urlPageLoad = ((xs.release === true) || true));
// source line 117, bytecode pc 880
(xs.useToken = ((xs.release === true) || false));
// source line 120, bytecode pc 910
(xs.cfg_use_report_log = ((xs.release === true) && true));
// source line 122, bytecode pc 940
(xs.team_build_v2 = ((xs.release !== true) && false));
// source line 124, bytecode pc 970
(xs.cfg_update_scene_test_res_code = ((xs.release !== true) && false));
// source line 126, bytecode pc 982
(xs.Main_Btn_State = true);
if (!xs.release) {
    // source line 130, bytecode pc 1014
    (xs.cfg_account_uid = "");
}
// source line 134, bytecode pc 1026
(xs.isShowAmt = true);
// source line 135, bytecode pc 1038
(xs.isShowCDKey = true);
// source line 136, bytecode pc 1050
(xs.isWanPuActive = false);
// source line 137, bytecode pc 1062
(xs.isVersionForPublish = true);
// source line 140, bytecode pc 1074
(xs.isSpecialTime = true);
// source line 141, bytecode pc 1086
(xs.temp_3rd = true);
// source line 143, bytecode pc 1109
cc.log("public cfg.js end");
