// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/AnySdk/AnySdkConst.js:1
// source line 2, bytecode pc 0
var Plugin_type;
// source line 13, bytecode pc 5
var AdsResultCode;
// source line 24, bytecode pc 10
var AdsPos;
// source line 34, bytecode pc 15
var AdsType;
// source line 42, bytecode pc 20
var PayResultCode;
// source line 55, bytecode pc 25
var PushActionResultCode;
// source line 60, bytecode pc 30
var ShareResultCode;
// source line 68, bytecode pc 35
var SocialRetCode;
// source line 82, bytecode pc 40
var UserActionResultCode;
// source line 105, bytecode pc 45
var ToolBarPlace;
// source line 115, bytecode pc 50
var AccountType;
// source line 125, bytecode pc 55
var AccountOperate;
// source line 131, bytecode pc 60
var AccountGender;
// source line 137, bytecode pc 65
var TaskType;
// source line 9, bytecode pc 134
(Plugin_type = {
    kPluginAds: 1,
    kPluginAnalytics: 2,
    kPluginIAP: 3,
    kPluginShare: 4,
    kPluginUser: 5,
    kPluginSocial: 6,
    kPluginPush: 7
});
// source line 21, bytecode pc 205
(AdsResultCode = {
    kAdsReceived: 0,
    kAdsShown: 1,
    kAdsDismissed: 2,
    kPointsSpendSucceed: 3,
    kPointsSpendFailed: 4,
    kNetworkError: 5,
    kUnknownError: 6,
    kOfferWallOnPointsChanged: 7
});
// source line 31, bytecode pc 269
(AdsPos = {
    kPosCenter: 0,
    kPosTop: 1,
    kPosTopLeft: 2,
    kPosTopRight: 3,
    kPosBottom: 4,
    kPosBottomLeft: 5,
    kPosBottomRight: 6
});
// source line 38, bytecode pc 312
(AdsType = { AD_TYPE_BANNER: 0, AD_TYPE_FULLSCREEN: 1, AD_TYPE_MOREAPP: 2, AD_TYPE_OFFERWALL: 3 });
// source line 51, bytecode pc 390
(PayResultCode = {
    kPaySuccess: 0,
    kPayFail: 1,
    kPayCancel: 2,
    kPayNetworkError: 3,
    kPayProductionInforIncomplete: 4,
    kPayInitSuccess: 5,
    kPayInitFail: 6,
    kPayNowPaying: 7,
    kPayRechareSuccess: 8
});
// source line 56, bytecode pc 413
(PushActionResultCode = { kPushReceiveMessage: 0 });
// source line 64, bytecode pc 456
(ShareResultCode = { kShareSuccess: 0, kShareFail: 1, kShareCancel: 2, kShareNetworkError: 3 });
// source line 78, bytecode pc 528
(SocialRetCode = {
    kScoreSubmitSucceed: 1,
    kScoreSubmitfail: 2,
    kAchUnlockSucceed: 3,
    kAchUnlockFail: 4,
    kSocialSignInSucceed: 5,
    kSocialSignInFail: 6,
    kSocialSignOutSucceed: 7,
    kSocialSignOutFail: 8
});
// source line 100, bytecode pc 669
(UserActionResultCode = {
    kInitSuccess: 0,
    kInitFail: 1,
    kLoginSuccess: 2,
    kLoginNetworkError: 3,
    kLoginNoNeed: 4,
    kLoginFail: 5,
    kLoginCancel: 6,
    kLogoutSuccess: 7,
    kLogoutFail: 8,
    kPlatformEnter: 9,
    kPlatformBack: 10,
    kPausePage: 11,
    kExitPage: 12,
    kAntiAddictionQuery: 13,
    kRealNameRegister: 14,
    kAccountSwitchSuccess: 15,
    kAccountSwitchFail: 16,
    kOpenShop: 17
});
// source line 111, bytecode pc 727
(ToolBarPlace = {
    kToolBarTopLeft: 1,
    kToolBarTopRight: 2,
    kToolBarMidLeft: 3,
    kToolBarMidRight: 4,
    kToolBarBottomLeft: 5,
    kToolBarBottomRight: 6
});
// source line 122, bytecode pc 791
(AccountType = { ANONYMOUS: 0, REGISTED: 1, SINA_WEIBO: 2, TENCENT_WEIBO: 3, QQ: 4, QQ_WEIBO: 5, ND91: 6 });
// source line 128, bytecode pc 827
(AccountOperate = { LOGIN: 0, LOGOUT: 1, REGISTER: 2 });
// source line 134, bytecode pc 863
(AccountGender = { MALE: 0, FEMALE: 1, UNKNOWN: 2 });
// source line 143, bytecode pc 920
(TaskType = { GUIDE_LINE: 0, MAIN_LINE: 1, BRANCH_LINE: 2, DAILY: 3, ACTIVITY: 4, OTHER: 5 });
