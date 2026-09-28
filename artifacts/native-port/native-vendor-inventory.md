# 原厂引擎私货清点与可复原性评估

> 调查对象
> - **原版**：`reference-apks/sgscq-original-patched.apk` 内 `lib/armeabi/libcocos2djs.so`（已解到 `/tmp/origso/lib/armeabi/libcocos2djs.so`）
>   md5 `a80edf208422df9b436f56b6391ce182`，12,692,880 B，ELF32 ARM EABI5，gold 链接，已 strip，`SYMBOLIC|BIND_NOW`
> - **自建**：`ClientProject/proj.android/libs/armeabi-v7a/libcocos2djs.so`（差集基于 2026-09-25 23:38 那次构建；23:55 又重建过一次，md5 `7f19b7659fe371be1eccd08890e60c14`，本报告关心的符号集合两版一致，只有地址变化）
> - 全部原始数据留在 `/tmp/natdiff/`（`orig_only_syms.txt`、`orig_only_by_bucket.txt`、`orig_vendor_block.txt`、`pcrel_hits3.txt` 等），仓库内只新增本报告。

---

## 结论摘要

**能不能把私货一次性找全？——能。** 原版 .so 虽然 strip 过，但它用默认可见性导出全部符号（27,485 个动态符号，含完整 C++ 修饰名），加上 0xacd160–0xad0400 一段连续的自有字符串表、`.ARM.exidx`（20,357 个函数边界）、`.init_array`（375 项）三个正交证据源，私货可以被**穷尽枚举并逐项落位**：9 个大类、约 2,300 个真实符号、27 个 `JsbConnecter` 分派类名、90 条 `(类,方法)` 原生桥接口、4 个 Java 类的 JNI 方法名与签名。剩下约 1,500 个"原版有、自建没有"的符号是编译差异噪声（模板实例、ABI 垫片、第三方库版本），可按规则识别剔除，不会误报。

**能不能完整复原？——大部分能"拿回"，少部分只能重写。** 约 90% 的私货是**服务型**的（日志、渠道配置、设备信息、统计上报、社交/支付桥、远程资源管理器），它们全部躺在原版 .so 里，**换回原版 .so 就能一次性拿回，且不需要动一行 C++**；这部分逐条验证了 ABI、JNI 惰性解析、明文 `.js` 加载兼容性与反向差集，结论是**可行**，主要代价是 +2.7MB 体积、丢掉我们自加的 AppDelegate 补丁（需在 assets 侧补回）。剩下的是**行为型**私货：`BFCardView / BFSortTableWidget / BFWebView / BFControlSlider` 这类带渲染与手势逻辑的自绘控件，以及 umeng/TalkingData/Testin 这些把第三方 SDK 整个编进来的库，JS 无法忠实重现，只能逆向重写 C++——`BFButton` 已经这样做成了。夹在中间的一小撮（`retainSpriteFramesWithFile` 这种纯数据操作）**确实可以 JS 等价实现**，可行做法和它的两个坑写在 §4.2。

---

## 一、方法快照（可复现）

```bash
ORIG=/tmp/origso/lib/armeabi/libcocos2djs.so
OURS=ClientProject/proj.android/libs/armeabi-v7a/libcocos2djs.so
readelf -sW "$ORIG" > orig.syms.txt ; readelf -sW "$OURS" > ours.syms.txt
nm -D --defined-only "$ORIG" > orig.nm.txt ; nm -D --defined-only "$OURS" > ours.nm.txt
strings -a -t x -n 3 "$ORIG" > orig.strings.addr.txt
c++filt < orig.nm.txt > orig.all.demangled.txt   # 再对集合求差
```

三个关键判据（用来区分**私货**与**编译噪声**）：

1. **符号名归一化**：剥掉 `non-virtual thunk to` / `guard variable for` / `vtable for` 等前缀后取 `Class::method` 做键。原版独有 3,950 个符号中，578 个只是修饰差异（模板实参、thunk），不是缺失。
2. **工具链指纹**：原版 `.comment` = `GCC 4.9 20140827`（NDK r10e，主代码）+ `GCC 4.6.x-google 20120106` + 大量 `GCC 4.4.3`（第三方预编译 .a）；自建 = `GCC 4.8` + `GCC 4.9 20140827`。**主代码同一代编译器**，所以"优化等级/内联差异"不是主要噪声源，差集可信度高。
3. **第三方库版本指纹**：`libwebsocket_*`（原版）vs `libwebsocket_* + lws_*`、`png_*` 新版函数、`Camellia_* / dtls1_*`（openssl 版本）——这些属于"自建有、原版没有"的噪声，不是功能差异。

ABI 属性对照（`readelf -A`）：

| | 原版 | 自建 |
|---|---|---|
| Tag_CPU_arch | v6 / Thumb-1 / VFPv2 | v7 / Thumb-2 / VFPv3-D16 |
| ELF flags | 0x5000000 (EABI5) | 0x5000000 (EABI5) |
| DT_NEEDED | libGLESv2, liblog, libz, libdl, libstdc++, libm, libc | 同（仅顺序不同） |
| .text | 8.31 MB | 6.32 MB |

---

## 二、私货清点表

计数为**去重后的符号名**。

### 2.1 总账

| 桶 | 符号数 | 性质 |
|---|---:|---|
| umeng / MobClickCpp 全家桶 | 1,555 | **真私货**（整库静态链接） |
| 未归类（绝大部分是 CSJson 模板 / `std::_Deque_*` 实例） | 607 | 混合：约 200 真私货 + 约 400 噪声 |
| thirdparty（CSJson / rapidjson / tinyxml2 / cocos2d::extension 模板） | 431 | 一半真私货（CSJson 是自加库）、一半模板噪声 |
| vendor-other（BF*、Statistic、ShareSdkHelp、sgsTrie、GlobalMethod、Testin、TalkingData、C2DXAliPay…） | 284 | **真私货** |
| stdlib / ABI / typeinfo / vtable 模板 | 263 | 噪声 |
| jsb-vendor（`js_xs_sanguosha_*`、`JSB_*Delegate`、`Jsb::*`、`Java_*`） | 175 | **真私货** |
| cocos2d-core 被 patch 的方法 | 125 | 其中约 35 真 patch，其余是 `std::deque` / `_Rb_tree` 模板噪声 |
| `xs::sanguosha`（XSAssetsMgr / Product / Debug） | 40 | **真私货** |
| box2d | 16 | 噪声（内联/裁剪差异） |

### 2.2 被 patch 的 cocos2d 核心（**"帧丢失"事故的根因**）

| 符号 | 原版 | 自建 | JS 调用点 | 影响 | 复原策略 | 难度 |
|---|---|---|---|---|---|---|
| `CCSpriteFrameCache::retainSpriteFramesWithDictionary(CCDictionary*)` | 有 | 无 | 经 `invoke("SpriteFrameCache","retainSpriteFramesWithFile")` 间接调用：`Factorys/Sprite.js:140` | 换将时 `removeUnusedSpriteFrames()` 按 `retainCount()==1` 清帧 → `updateSkin` 建卡面失败 → 战斗卡面错乱 | (1) 换回原版 .so 直接拿回；(2) **JS 可等价实现**（§4.2）；(3) 自建库加 C++ 补丁（**已在进行**：`Classes/Native/SpriteFrameRetention.cpp`） | 中 |
| `CCSpriteFrameCache::releaseSpriteFramesWithDictionary` | 有 | 无 | `Factorys/Sprite.js:177` | 与上配对，不释放会泄漏纹理 | 同上 | 中 |
| `CCSpriteFrameCache::changeRcOfSpriteFramesWithFile(char const*, bool)` | 有 | 无 | 无直接 JS 调用点（被上面两个内层调用） | 私有实现细节 | 同上 | 中 |
| `CCSpriteFrameCache::dumpInfo()` | 有 | 无 | `Tools/Sys.js:143` → `invoke("Debug","dumpSpriteFrameCache")` | 仅调试打印 | 换 .so 或忽略 | 低 |
| `CCTexture2D::retain()` | 有 | 无 | 无 | 厂商重载（统计纹理计数），调试/诊断用 | 换 .so | 低 |
| `CCTextureCache::releaseTextureForKey(char const*)` | 有 | 无 | 无 | 资源释放 API | 换 .so | 低 |
| `cocos2d::gCountTexture2D / gObjCount_Scene / gObjCount_*` | 有 | 无 | 无 | 内存诊断全局量 | 换 .so | 低 |
| `CCFileUtils::DeEncrypt(unsigned char*, int)` / `cocos2d::DeEncrypt` | 有 | 无 | 无 | **资源解密钩子**；当前资源是明文故无关，将来用加密包体必须有 | 换 .so | 低（当前） |
| `CCFileUtils::string_replace(...)` | 有 | 无 | 无 | 厂商加的路径工具 | 换 .so | 低 |
| `CCDictionary::releaseObjectForKey / removeAndFreeObjectForElememt` | 有 | 无 | 无 | 私有容器 API | 换 .so | 低 |
| `CCScheduler::performFunctionInCocosThread(...)` / `...NoParent(...)` | 有 | 无 | 无 | 厂商加的跨线程回调（`Jsb::dispatchResponseCallbacks` 用） | 换 .so | 低 |
| `CCScheduler::seekNodeByAddress(CCNode*, int)` | 有 | 无 | 无 | 调试 | 换 .so | 低 |
| `CCDirector::setNextNotificationNode()` | 有 | 无 | 无 | 厂商生命周期补丁 | 换 .so | 低 |
| `LogoScene::setFinishCallback(CCObject*, void (CCObject::*)(CCObject*))` | 有 | 无 | 无（引擎内部） | 启动 Logo 流程 | 换 .so（自建库另有自己的 `LogoScene.cpp`） | 低 |
| `NewPuzzleActivity(JniMethodInfo_&)` | 有 | 无 | 经 `getOpenUDID()` 使用 | 拼图活动 JNI | 换 .so | 低 |
| `bind_menu_item<CCMenuItemAtlasFont/Font/Image/Label/Sprite>` 模板实例 | 有 | 无 | 无（`cc.MenuItem*.create` 走它） | 模板只是**未导出**，功能在 | 噪声 | — |
| `CCJSONConverter::*`（10 个） | 有 | 无 | 无直接 JS 调用点（`Statistic` / `Jsb::` 内部用） | C++↔JSON | 换 .so | 低 |

> 注：`retainSpriteFramesWithFile` 本身**不是符号**，它是 `JsbConnecter::invoke_Class_SpriteFrameCache` 里做字符串比较用的字面量（.rodata 偏移 `0xacd7a7`）。"原版 1 / 自建 0"是**字符串计数**，不是符号计数。

### 2.3 自建 JSB 类与注册函数（xs.sanguosha.*）

| 符号 | 原版 | 自建 | JS 调用点 | 影响 | 复原策略 | 难度 |
|---|---|---|---|---|---|---|
| `js_register_xs_sanguosha_BFButton` + 8 个 `js_xs_sanguosha_BFButton_*` | 有 | **功能有、符号不可见**（我们的实现是 `static`，见 §3.4） | `Libs/Views/Button/common.js:5,7`（`xs.BFButton.extend`） | 按钮基类；已可用 | 已完成 | — |
| `js_register_xs_sanguosha_BFCardView` + 13 个 wrapper | 有 | 无 | `Views/CardNavigateView.js:58`（`xs.BFCardView.create`） | **卡牌滑动容器**；缺失 → 换将/卡组界面不可用 | 只能逆向重写 C++（渲染 + CCTableView 子类 + 回调） | 高 |
| `js_register_xs_sanguosha_BFControlSlider` + 6 个 wrapper | 有 | 无 | `Views/CardNavigateView.js:48` | 卡牌进度滑条 | 只能重写 C++（JS 用 CCControlSlider 近似会丢事件语义） | 中高 |
| `js_register_xs_sanguosha_BFSortTableWidget` + 9 个 wrapper（含 BFSortTableView 7 个） | 有 | 无 | `Views/SortController.js:45` | 排序/筛选列表控件 | 只能重写 C++ | 高 |
| `js_register_xs_sanguosha_BFWebView` + 9 个 wrapper + BFWebViewImp 12 个 | 有 | 无 | `Views/Dialog/PublicNotice.js:32`（`new xs.BFWebView()`） | Android WebView 容器（公告/客服页），**必须原生** | 只能重写 C++ + Java 侧 WebView_* 方法 | 高 |
| `js_register_xs_sanguosha_JsbConnecter` + 7 个 wrapper + JsbConnecter 19 个方法 | 有 | 无（JS 有等价 facade） | 36 个文件 174 处 `xs.JsbConnecter`；90 条 `invoke("类","方法")` | **整个原生桥**；目前由 `Resources/assets/jsb_compat.js` 顶替 | 换回原版 .so（一次全拿回）或继续在 JS 侧补 | 中（换 .so）/ 高（JS 补全） |
| `JSB_XS_TableViewDataSource/Delegate`、`JSB_XS_BFCardViewDelegate`、`JSB_XS_SortWidgetDelegate`、`JSB_BFWebViewDelegate`（29 个） | 有 | 无 | 由上面 4 个控件的 JS 回调驱动 | 控件 ↔ JS 回调桥 | 随控件一起重写 | 高 |

### 2.4 原生桥接口面（`JsbConnecter::invoke` 完整分发表）

从 .rodata 0xacd160–0xad0400 连续块提取（`/tmp/natdiff/orig_vendor_block.txt`）。**分派类名（27 个）**：`Log, Debug, Director, SpriteFrameCache, ArmDataMgr, Platform, Build, Cfg, Trie, Utils, Statistic, StatisticV2, BfSdk, Feedback, UserInfo, Thirdpay, AppStore, ThirdSdk, App, Share, AssetsMgr, GlobalMethod, TalkingDataAppCpaHelp, AdmobHelp, Get3rdChName, TestinHelp, EasySdk`（另有 `JsbConnecter` 自身）。

**方法名按类归组**（节选）：

| 类 | 方法（原版字面量） | JS 调用点 |
|---|---|---|
| Build | getBuildTarget / getBuildType / getUseJsc / getBuildVersion / getOriResCode / getProjCode / getCocos2dDebugLevel / getAccountSysCode / getMacroList | `Tools/Jsb.js:17,22,100,105,112`、`main.js:13,15`、`Tools/Sys.js:26,32` |
| Cfg | getResPath / getResScaleTag / getOpenUDID / getIDFA / getMacAddress / getUpdateCheckUrl / mkdir / mkDir / setIdleTimerDisabled / unZipFile / getChannelId / getMacroStr / getVersionName / getVersionCode / getDeviceId / getDeviceType / getDeviceOS / getDeviceMobile / getDeviceOSVer / getDevicePixel / getDeviceNetwork / getDeviceCarrier / getMetaDataByKey | `Tools/Jsb.js:45,53,61,69,84,88,92,122`、`Core/Tools/Jsb.js:8-40`、`Tools/Net.js:1507,1544,1634`、`Scene/Debug/DebugScene.js:99` |
| Log | SGSCQLog / SGSCQLog_SetLowestPriority / SGSCQLog_SetLogFileName / SGSCQLog_SendLogToUMENG | `Debug/Logger.js:21,88,110` |
| Utils | md5file / getFileDataSize / deleteDir | `Tools/Jsb.js:133`、`Core/Tools/Jsb.js:93`、`Utils/FileSys.js:22,28` |
| Trie | setTrie / queryString / AddString / setTrieMaxlen | `Tools/Jsb.js:117`、`Tools/UI.js:530,555,601,626` |
| SpriteFrameCache | retainSpriteFramesWithFile / releaseSpriteFramesWithFile | `Factorys/Sprite.js:140,177` |
| Statistic / StatisticV2 | statistic / reportLog / event | `Tools/Statistic.js:67,80,162`、`Utils/Statistic.js:112,117`、`Core/Tools/Statistic.js:17` |
| BfSdk | login / regis / loginByHistory / test / requestTelBinding / checkBindingCode | `Tools/Jsb.js:127`、`Scene/Login/LoginScene_BfSdk.js:511,974`、`Views/Dialog/BindingTelDialog.js:114,129` |
| ThirdSdk / Thirdpay / AppStore / Alipay | isLogined / isSupportFunction / doThirdAction / login / thirdSubMitInfo / third_pay / pay / pay_ext / finishTransaction | `Scene/Login/LoginScene_ThirdSdk*.js`、`Views/Table/ChargeItemTableView.js:156,280,288,299,318`、`Views/Dialog/CheckOrderDialog.js:100,108,116` |
| Share | shareToWX / shareToSina / setWallPaper / savePhoto / showShareMenu | `Views/HDShowViews.js:60,77,100,126` |
| GlobalMethod | exitGame / exitGameWithUserClick / gameMain / visitStore / visitUrl / showMessageBox_Android / getGeTuiCID / gotoUpdateScene / getWeiDuan / initDesignResolutionSize / initSearchPath / handle_signal / isArriveGuideStepDemo | `AnySdk/AnySdkCallback.js:27,41,85,146,152`、`Tools/Net.js:1695`、`Core/Tools/Jsb.js:48,52` |
| AssetsMgr | init / startDownloadThread / startUncompressThread / setConnectionTimeout / setOperationTimeout / setDownloadRangeByString / release | `Core/Tools/Jsb.js:57,64,68,72,76,81,87` |
| TalkingDataAppCpaHelp | onRegister / onLogin / onPay / onCustEventWithIdx / getAppKey | `Tools/TalkingDataAppCpa.js:12,20,31,35`、`Tools/Jsb.js:96` |
| TestinHelp | setUserInfo / leaveBreadcrumb / reportException / setLocalDebug | `Scene/Login/headers.js:26,29` |
| Debug | dumpSpriteFrameCache | `Tools/Sys.js:143` |
| App / Platform / Director | exit / getBuildTarget / getFrameSize / getWinSize | `Tools/Jsb.js:37,80`、`main.js:21`、`Core/Utils/headers.js:197` |
| Feedback / Kefu / AdmobHelp / Get3rdChName / EasySdkMgr / UserInfo | enter / onActionWithService / showBanner / hideBanner / Get3rdChName / getModuleVersion / submitUserInfo | `Scene/Setting/SettingScene.js:435`、`main.js:271`、`Profile/Account.js:50,57`、`Views/Table/ChargeItemTableView.js:47,170`、`Tools/Jsb.js:171` |

> **两处对不上，已记录**：JS 里有 `invoke("Alipay","pay")` 与 `invoke("Kefu","onActionWithService")`，但原版 .so 里**根本没有** `Alipay` / `Kefu` 这两个字面量。最可能的解释是这两条分派被平台条件编译掉了（`Alipay.pay` 只在 `_platform === "ios"` 分支调用，见 `Views/Table/ChargeItemTableView.js:280`；`Kefu` 是微端）。**这是推断不是结论**；若为其它机制，JS 兜底需单独处理这两个类名。

### 2.5 JNI / Java 侧接口

| Java 类 | 原版 .so 里的引用 | 在自建 APK 里 | 结论 |
|---|---|---|---|
| `org/cocos2dx/lib/Cocos2dx*` | 17 个 `Java_org_cocos2dx_lib_*` 导出 | 在（自建 .so 同样导出） | 无害 |
| `com/bf/sgscq/SanguoshaDemo` | 3 个 `Java_com_bf_sgscq_SanguoshaDemo_WebViewDid*Load` 导出；**225 个函数**查它的方法（`WebView_*` 7 个、`bfsdk_test/login/register/loginByHistory`、`BFgetSmsCaptcha`、`BFbindMobile`、`sgsActivity_getMetaDataByKey`、`getProductID`、`getChannelID`、`getChannelName`…） | **类在，但这些方法一个都没有**（`ClientProject/proj.android/src/com/bf/sgscq/SanguoshaDemo.java`） | 换回原版后走"方法不存在"降级分支（§3.2） |
| `com/bf/xs/Jsb` | 5 个 `Java_com_bf_xs_Jsb_onCmn*/onTest*/onExecuteScript` 导出（Java→native 回调） | 类不存在 → 回调不触发；由 `jsb_compat.js` 在 JS 侧模拟 | 换回原版后若 JS 仍走 `xs.onCmnSuccess` 需保留 JS 实现 |
| `cn/sharesdk/ShareSDKUtils` | `onJavaCallback` 导出 + `initSDK/stopSDK/setPlatformConfig/authorize/removeAccount/isValid/showUser/share/onekeyShare` | **已移除** | 惰性解析 |
| `com/testin/agent/TestinAgent` | `initTestinAgent/reportException/setUserInfo/setLocalDebug/leaveBreadcrumb` | **已移除** | 惰性解析 |
| `com/umeng/mobclickcpp/MobClickCppHelper` | 经 `umeng::excuteJavaLongGetter/StringGetter` 取设备属性 | **已移除** | 惰性解析 |
| `com/umeng/mobclickcpp/Cocos2dxHelper` | 3 个 `Java_com_umeng_mobclickcpp_Cocos2dxHelper_*` 导出 | **已移除** | 只是导出，没人调用即无害 |

### 2.6 其它真实私货

| 类别 | 代表符号 | JS 调用点 | 复原策略 |
|---|---|---|---|
| 统计/日志 | `Statistic`(39)、`StatisticV2`、`SGSCQLog*`、`GlobalMethod::*` | 见 2.4 | 换 .so 全拿回；纯 JS 只能"静默丢弃" |
| 资源更新 | `xs::XSAssetsMgr`(19)、`xs::XSAssetsMgrJsb`、`xs::curlfunc_assetsManager*`、`xs::threadfunc_assetsManager*`、`cocos2d::extension::CURLRaii` | `Core/Tools/Jsb.js:57-87`、AssetsMgr 6 条 | 换 .so；JS 无法等价（多线程 + curl + 解压） |
| 产品/渠道配置 | `xs::Product::productInit/getArea/getProductUrlByKey/getResSearchRoot/getTalkingDataAppCpaKey/getTestInKey/isTestOnline/readJsonFromFile`、`XS_*_USE` 开关字符串 | `main.js`、`Core/Tools/ProductSys.js` | 换 .so |
| 社交/支付桥 | `cn::sharesdk::C2DXShareSDK::*`(14)、`ShareSdkHelp`(13)、`C2DXAliPaySDK`(3) | `Views/HDShowViews.js`、`Views/Table/ChargeItemTableView.js` | 换 .so（Java 类缺失 → 降级） |
| 统计 SDK 桥 | `TalkingDataAppCpaHelp`(11)、`TestinHelp`(6)、`TestinCrashHelper`(6)、`TestinJSExcetionHandler`(2)、`BfsdkHelper`(11) | 见 2.4 | 换 .so |
| 本地通知 | `BFLocalNotificationHelp::createLocalNotificationFromServer/removeAllLocalNotification` | 无 JS 调用点 | 换 .so |
| 字符串 Trie | `sgsTrie::Trie::*`(19) | `Tools/UI.js:530,555,601,626`（敏感词过滤） | 换 .so；**JS 也可等价实现**（纯算法） |
| JSON | `CSJson::*`(216) | 无直接调用点 | 换 .so 或忽略 |
| umeng 分析 SDK | 1,555 个符号（`umeng::MobClickCpp` / `MobClickCache` / `UmPlatformAndroid` / `UmHttpClient` / `md5wrapper`…） | 经 `Statistic::_umengStatistics` / `Log.SGSCQLog_SendLogToUMENG` 间接 | 只能换 .so |
| 构建来源（字符串） | `jni/../../Classes/App/Product.cpp`、`jni/../../Classes/Statistic/Statistic.cpp`、`jni/../../Classes/scripting/bindings/generated/jsb_xs_sanguosha_auto.cpp`、`.../jsb_xs_sanguosha_manual.cpp`、`/Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/proj.android.3rd.SgscqFst_50004/...` | — | 佐证私货源码树叫 Classes/，绑定由 bindings-generator 生成 |

### 2.7 明确的**噪声**（不要当私货）

| 现象 | 证据 | 判据 |
|---|---|---|
| `std::_Deque_iterator<...>` / `std::_Rb_tree<...>` / `std::__introsort_loop` 等约 600 个 | 原版独有但只是模板实例化点不同 | 同一 `Class::method` 在自建里以别的修饰名存在 |
| `b2Simplex::ReadCache` 等 16 个 box2d | 内联深度差异 | 头文件内联函数 |
| `cocos2d::CCBezierTo::CCBezierTo()` 等构造函数 | 原版 out-of-line，自建内联 | 同上 |
| `png_*`（新）、`libwebsocket_*` vs `lws_*`、`Camellia_*`、`dtls1_*`、`ASN1_*` | 自建用的第三方预编译 .a 版本更新 | 第三方库版本指纹 |
| `__aeabi_*`、`__cxa_*`、`_Unwind_*` | libgcc/libstdc++ 版本差异 | ABI 垫片 |
| `typeinfo / vtable / guard variable` | 同名类在两边导出策略差异 | 归一化后同名 |

---

## 三、换回原版 .so 的可行性

### 3.1 ABI

**事实**

- 原版是 `lib/armeabi/libcocos2djs.so`，原 APK `native-code: 'armeabi'`、`minSdkVersion=8`；自建打的是 `lib/armeabi-v7a/`，`minSdkVersion=21` / `targetSdkVersion=28`。
- 原版 `.ARM.attributes` 是 `ARM v6 / Thumb-1 / VFPv2`（既不是 ARMv5TE 也不是硬浮点；`Tag_ABI_VFP_args` 缺失 → softfp，与自建一致），ELF flags 与自建同为 EABI5。
- **目标设备支持 armeabi**：`artifacts/native-recovery/device-bfbutton-real-so.log:1231` 里 nativeloader 为**本游戏包**计算的库搜索路径是
  `library_path=<extracted>/lib/arm:...base.apk!/lib/armeabi-v7a:...base.apk!/lib/armeabi`
  ——`lib/arm`（armeabi / armeabi-v7a 共用的抽取目录）与 `apk!/lib/armeabi` 说明设备的 `SUPPORTED_ABIS` 含 armeabi，且 App 以 32 位模式运行（Xiaomi `annibale`，model `2510DRK44C`）。设备当前不在线（`adb devices` 为空），这是**日志证据**而非现场复测。
- 原版 .so 的 `DT_NEEDED` 与自建完全相同（7 个系统库），**不依赖任何被删掉的第三方 .so**。
- `ClientProject/tools/verify_client_apk.py` 里那条禁止 `lib/armeabi/*.so` 的断言是**本项目自己的策略**（防止"自建库"路线被旧库悄悄顶替），**不是 Android 或打包器限制**。

**结论**

1. **能放 `lib/armeabi/`**：设备侧 `apk!/lib/armeabi` 在搜索路径里，armeabi 库可 dlopen。只需调整那条断言（改成"允许，但必须校验哈希/符号"）。
2. **也能只改路径放 `lib/armeabi-v7a/`**：Android linker **不校验**目录名与 `.ARM.attributes` 是否匹配，只按包管理器选中的 ABI 目录找文件；ARMv6+VFPv2 指令是 ARMv7 的真子集，在任何 armv7 设备上都能跑。**风险**：目录名会对外宣称"我要 v7a"，若将来某台只支持 armeabi 的老设备会被错判不兼容——但那种设备本来也跑不动当前的 v7a 包。**两种放法对现役设备等价，放 `armeabi/` 语义更诚实。**
3. **64 位限制**：与本方案无关。当前包只有 32 位库；Play 的 64 位要求只影响上架，不影响侧载。纯 64 位设备（无 AArch32）上 armeabi 与 armeabi-v7a 同样不可用。
4. **extractNativeLibs**：`targetSdkVersion=28`，日志显示走"抽取到 `/data/app/.../lib/arm/`"路径（`Load .../lib/arm/libcocos2djs.so`），不是直接从 APK mmap，因此没有页对齐/未压缩对齐的额外约束。

### 3.2 JNI 依赖：**全部惰性解析**（附依据）

**依据 1 —— `JNI_OnLoad` 只有 24 字节。** 反汇编（`arm-linux-androideabi-objdump -d -M force-thumb`，`0x24fb1c`）：

```asm
JNI_OnLoad:
  push {r4, lr}
  mov  r4, r0                            ; r4 = JavaVM*
  blx  <cocos2d JniHelper::setJavaVM>    ; ARM veneer @0x643a20
  mov  r0, r4
  bl   umeng::MobClickJniHelper::setJavaVM(JavaVM*)   ; @0x3d772c
  ldr  r0, [pc, #4]                      ; r0 = 0x00010004
  pop  {r4, pc}                          ; return JNI_VERSION_1_4
```

只有两次 `setJavaVM`，**没有任何 FindClass、没有 RegisterNatives**。`umeng::MobClickJniHelper::setJavaVM` 只转发到 `umeng::JniHelper::setJavaVM`（`0x3f2f5c`），后者只做"存 VM 指针 + pthread_key_create"，**不解析任何类**。

**依据 2 —— 没有批量注册。** 全库 `nm -D` 里不存在 `RegisterNatives` 相关的导入/导出；Android 上 JNI 一律走 JNIEnv 函数表，所以 `.dynsym` 里连 `FindClass` 都没有（调用落在 `IonVeneer` 那段 ARM 预编译代码里）。

**依据 3 —— 四个 Java 类名只被"按需入口"引用，且没有一处落在静态初始化里。** 用 `.ARM.exidx` 还原出 **20,357 个函数边界**，与 `.init_array` 的 **375 个条目**求交：

| 类名 | 引用函数数 | 引用函数（节选） | 落在 `.init_array`？ |
|---|---:|---|---|
| `cn/sharesdk/ShareSDKUtils` | 2 | `initShareSDK`(0x25bd3c)、`getMethod`(0x25be48) | **否** |
| `com/testin/agent/TestinAgent` | 3 | `TestinCrashHelper::initTestinAgent / reportException / setUserInfo` | **否** |
| `com/umeng/mobclickcpp/MobClickCppHelper` | 2 | `umeng::excuteJavaLongGetter`(0x3dcf4c)、`excuteJavaStringGetter`(0x3dcfc4) | **否** |
| `com/bf/sgscq/SanguoshaDemo` | 225 | `JsbConnecter::invoke*`、`GlobalMethod::*`、`Statistic::*`、`BFWebViewImp::*`、`BfsdkHelper::*`… | **否** |

（319 处类名引用命中 0 处在 `.init_array` 覆盖的函数里。）

**依据 4 —— 查找失败是"降级返回"而非 abort。** 反汇编 `getOpenUDID()`（`0x259cc4`）：

```asm
getOpenUDID:
  bl   NewPuzzleActivity(JniMethodInfo&)   ; 填 methodInfo（内含 FindClass/GetMethodID）
  blx  <JniHelper::getMethodInfo>          ; 真正解析
  cmp  r0, #0
  beq  .Lend                               ; ← 解析失败：直接返回，不调用
  ...  CallObjectMethod ...
.Lend:
  pop  {r4, pc}
```

配套字符串印证同一模式：`jni:WebView_addWebView method is not exist!`、`func bfsdk_login is not exist`、`err,android has no getIDFA`、`Statistic::getDeviceId error` 等，全是"找不到就报错字符串然后继续"。

**判断**：**换回原版 .so 不会因三个被删的 Java 类而在启动时崩溃。** 这三类的解析都发生在"第一次真正调用该 SDK 功能"时，而当前 JS 路径（`ThirdSdk.isSupportFunction` 返回 false、`BfSdk` 走本地账号服务）基本不会触发；即便触发也只是打一行错误日志。

**残留风险（未验证）**：`FindClass` 失败会抛 `NoClassDefFoundError`，若厂商 helper 没有 `ExceptionClear()`，pending exception 会残留到下一次 JNI 调用。这属于"可能产生怪日志/怪返回值"，不是"必崩"，**我没有在设备上复现**。

### 3.3 引擎兼容性：原版 .so **能正常加载明文 .js**

**这是本次调查最关键的一条，结论肯定，依据是反汇编而不是猜测。**

原版 `ScriptingCore::runScript`（`0x2705b4`，540 字节）控制流：

```
if (!path) { CCLOG("(ScriptingCore::runScript path false:%s", path); return false; }   // 厂商加的日志
fullPath = CCFileUtils::sharedFileUtils()->fullPathForFilename(path);
if (!global) global = this->global_;  if (!cx) cx = this->cx_;
JS::CompileOptions options(cx);
options.setUTF8(true); options.setFileAndLine(fullPath.c_str(), 1);
JSScript* script = NULL;
if (<全局标志字节 != 0>) {                                  // 厂商新增的前置开关
    const char* content = CCString::createWithContentsOfFile(path);              // 0x644b84
    if (content) script = JS::Compile(cx, global, options, content, strlen(content));  // 0x270642
}
// —— 下面是 2.2.6 原生的 .jsc 优先 / .js 回退 ——
std::string p(path); size_t pos = p.rfind('.');              // 0x270656，RemoveFileExt 被内联
std::string jscPath = (pos!=npos ? p.substr(0,pos) : p) + ".jsc";    // 字面量 ".jsc" @0xad0378
data = fileUtils->getFileData(jscPath, "rb", &len);
if (data && !script) { script = JS_DecodeScript(cx, data, len, NULL, NULL); delete[] data; }   // 0x2706c2
if (!script) {
    ReportException(cx);                                     // JS_IsExceptionPending / Report / Clear
    CCString* content = CCString::createWithContentsOfFile(path);                 // 0x2706ec
    if (content) script = JS::Compile(cx, global, options, content->getCString(), strlen(...)); // 0x270718
}
if (script) { filename_script[path]=script; JSAutoCompartment ac(cx,global);
              evaluatedOK = JS_ExecuteScript(...); if (!evaluatedOK) CCLog("(evaluatedOK == JS_FALSE)"); }
```

与**自建库**（stock 2.2.6，`ScriptingCore.cpp:490-548`）反汇编逐条对齐：`CompileOptions` → `JS_DecodeScript` → `JS_IsExceptionPending / JS_ReportPendingException / JS_ClearPendingException` → `CCString::createWithContentsOfFile` → `strlen` → `JS::Compile(..., const char*, unsigned int)` → `map::operator[]` → `JSAutoCompartment` → `JS_ExecuteScript` → `CCLog` —— **调用序列完全一致**，原版只多了一个被全局标志门控的"先编译明文 .js"前置分支。

**推论**：
- 我们 APK 里 `assets/src_jsc/**` 只有明文 .js（原始 .jsc 被隔离在 `assets/bytecode_oracle/`），因此 `getFileData("….jsc")` 返回 NULL，直接落到明文编译分支——**这正是当前自建库在跑的那条路**，原版 .so 会走出同一条路。
- XDR 版本不构成问题：只有同名 .jsc 存在时才 `JS_DecodeScript`。
- 原版字符串表里有 `.jsc`、`(ScriptingCore::runScript path false:%s`、`src_jsc/main.js`（0xacd401），说明启动脚本名与当前一致。

### 3.4 反向差集（自建有、原版没有的）

JSB wrapper 层面（`js_*`，demangle 后）：原版 3,969 / 自建 3,907，**自建独有仅 7 个**，全部是 cocostudio 的"二进制 / 脚本对象字典"绑定：

| 自建独有 | 原版 | 换库会不会丢 | 影响 |
|---|---|---|---|
| `js_cocos2dx_studio_ActionManager_initWithBinary` | 无 | 丢 | 无：`Resources/assets/jsb_cocos2d_studio.js` 与重建 JS 都**没有**引用它（已逐词 grep） |
| `js_cocos2dx_studio_ActionObject_initWithBinary` | 无 | 丢 | 无 |
| `js_cocos2dx_studio_GUIReader_widgetFromBinaryFile` | 无 | 丢 | 无（注意 C++ 侧 `GUIReader::widgetFromBinaryFile` 原版是**有的**，只是没生成 JS wrapper） |
| `js_cocos2dx_studio_Widget_getScriptObjectDict / setScriptObjectDict` | 无 | 丢 | 无 |
| `js_cocos2dx_studio_CCArmatureAnimation_getScriptObjectDict / setScriptObjectDict` | 无 | 丢 | 无 |

→ **换回原版 .so 不会因为"我们多出来的绑定"丢功能。**

其余 486 个"自建独有"去重符号全部是：第三方库版本差（libpng / libwebsockets / openssl）、内联差异，以及**我们自己加的东西**：

| 我们自己加的 | 换回原版会丢什么 | 补救 |
|---|---|---|
| `AppDelegate` 里三条 `CCFileUtils::addSearchPath`（`src_jsc`、`res_n_main/medium`、`res_n_main/medium/tex`） | 资源/JS 找不到 | 原版 `GlobalMethod::initSearchPath` + `xs::Product::getResSearchRoot` 会自己设路径（字符串 `src_jsc`、`res_n_`、`/medium`、`ExcuteDir775` 都在），**需实测确认命中 assets 布局** |
| `runScript("jsb_compat.js")` 注入 | JS 侧 `xs.JsbConnecter` facade 不再需要（原生就有），**但必须停止注入**，否则 `xs.JsbConnecter = {...}` 会**覆盖原生类** | 条件化 `AppDelegate.cpp:74` 或删除该文件 |
| `register_all_xs_sanguosha`（手写 BFButton JSB） | 原版有**全部** BF* 原生 JSB，比我们的全 | 无需补救 |
| `Classes/Native/SpriteFrameRetention.cpp`（`xs.retainSpriteFramesWithFile`） | 原版 JsbConnecter 原生支持 retain/release，JS 不需要这个函数 | `jsb_compat.js:60` 的分支改成走原生 |
| `LOCAL_REBUILD` 日志 / `runGameMain()` | 无功能影响 | — |

### 3.5 结论与风险

| 维度 | 结论 |
|---|---|
| ABI | 可行（armeabi 可放 `lib/armeabi/`；或仅改路径放 `lib/armeabi-v7a/`，对现役设备等价） |
| JNI | 启动不崩（全部惰性 + 失败降级），仅会有"方法不存在"日志 |
| 引擎 | 明文 .js 加载路径与原版 .so 完全一致 |
| 反向丢功能 | 无（自建独有只有 7 个无人调用的 cocostudio wrapper） |
| **主要风险 1** | 丢掉 AppDelegate 自加逻辑（搜索路径、jsb_compat 注入）。搜索路径若不命中会退化成"资源全找不到"——**必须设备实测**，静态只能证明原版有等价机制，不能证明它命中我们的 assets 目录名 |
| **主要风险 2** | `jsb_compat.js` 覆盖原生 `xs.JsbConnecter`（静态可判定，改一行即可） |
| **主要风险 3** | 原版是**改过的 2.2.6**，个别行为可能与 stock 不同。可用"670 条 JS 成员链 × 原版导出符号/字符串表"静态交叉检查兜底 |
| 次要风险 | 体积 +2.7MB；`verify_client_apk.py` 断言需调整；原版 `handle_signal` 信号处理路径未验证 |

---

## 四、逐项复原策略

### 4.1 可以直接拿回（换回原版 .so 即可）

**判据**：功能完全在原生侧、JS 只是调用方、无我们自己补丁的依赖。

`JsbConnecter` 全部 90 条接口及背后实现（Build / Cfg / Log / Utils / Trie / Statistic / StatisticV2 / BfSdk / ThirdSdk / Thirdpay / AppStore / Share / AssetsMgr / GlobalMethod / TalkingDataAppCpaHelp / TestinHelp / AdmobHelp / Get3rdChName / Feedback / App / Platform / Director / Debug / SpriteFrameCache / EasySdk）、`xs::XSAssetsMgr` 远程更新链、`xs::Product` 渠道配置、`SGSCQLog*` 日志、`umeng / TalkingData / Testin / ShareSDK / AliPay` 桥、`sgsTrie::Trie`、`CCSpriteFrameCache` 的 retain/release/changeRc/dumpInfo、`CCTexture2D::retain` 与 `CCTextureCache::releaseTextureForKey`、`CCFileUtils::DeEncrypt`、`CCScheduler::performFunctionInCocosThread`、`CSJson`、`BFLocalNotificationHelp`、以及 `BFCardView / BFControlSlider / BFSortTableWidget / BFWebView / BFButton` 的**原生实现**（原版都有，比我们手写的全）。

> 注意这是"整体打包"策略：**要么全拿回，要么全不拿**，不能只挑一项。

### 4.2 可在 JS 侧等价实现（逐项判断）

| 项 | 能否 JS 等价 | 具体做法 | 理由 |
|---|---|---|---|
| `retainSpriteFramesWithFile` / `releaseSpriteFramesWithFile` | **能**（前提是用对 API） | `var text = cc.FileUtils.getInstance().getStringFromFile(plist)` → 正则取出 `<key>名字</key>` → `var f = cc.SpriteFrameCache.getInstance().spriteFrameByName(name); f.retain()`，把 f 存进 `xs.__retained[plist]` 数组避免重复 retain；release 时 `f.release()` 并清表 | `register_cocos2dx_js_extensions` 把 `js_cocos2dx_retain/release` 挂在 **jsb_CCSpriteFrame_prototype** 上（`cocos2d_specifics.cpp:3591/3592`），`js_cocos2dx_retain` 就是对 `proxy->ptr` 调 `CCObject::retain()`；`js_cocos2dx_CCFileUtils_getStringFromFile` 与 `js_cocos2dx_CCSpriteFrameCache_spriteFrameByName` 在原版和自建里**都存在** |
| **重要纠正** | — | **"在 JS 数组里放 SpriteFrame 对象"本身不会增加 C++ retainCount。** `js_get_or_create_proxy`（`cocos2d_specifics.hpp:62`）只建 proxy + `JS_AddObjectRoot`，**不调 retain()**；生成的 `spriteFrameByName` 绑定（`generated/jsb_cocos2dx_auto.cpp`）也不 retain。要真正加引用计数**必须显式调 `.retain()`** | 这正是"帧被清掉"无法仅靠"持有对象"解决的问题 |
| 上述 JS 路线的两个坑 | — | (1) `js_get_or_create_proxy` 对每个新 proxy 做 `JS_AddObjectRoot`，几百个帧会永久驻留 JS 根集合（2.2.x 已知行为）→ 内存只增不减；(2) 需自己解析 plist 文本，遇到变体格式会脆 | 正因如此，**C++ 补丁（`SpriteFrameRetention.cpp`，正在进行）比 JS 版更贴近原语义**：直接 `createWithContentsOfFileThreadSafe` + 遍历 `frames` 字典 + `spriteFrameByName(name)->retain()`，与原版 `retainSpriteFramesWithDictionary` 等价，且不产生 JS 根 |
| `Trie.queryString` / `setTrie`（敏感词） | 能，但没必要 | 纯算法，JS 可实现 trie；调用点只有 4 处（`Tools/UI.js:530,555,601,626`），失败只是过滤不生效 | 换 .so 更省 |
| `Cfg.device*` 系列（getDeviceId / OS / Pixel / Network / Carrier…） | 能（已部分实现） | `jsb_compat.js` 已返回常量；真值可用现有 JS 环境近似（拿不到 TelephonyManager 真值） | 精度降级，业务可接受 |
| `Build.getUseJsc / getCocos2dDebugLevel / getProjCode` 等构建常量 | 能（已实现） | `jsb_compat.js` 已给出 775 / 0 / 50004 等 | 只是常量 |
| `Log.SGSCQLog_*` | 能（降级版） | JS 侧写 console 或丢弃 | 日志不外发即可 |
| `Share.*` / `TestinHelp.*` / `TalkingData*` / `Admob*` | 能"安全地不做" | `jsb_compat.js` 已返回中性值 | 本来就是可选服务 |
| `BFCardView / BFSortTableWidget / BFControlSlider` | **不能忠实等价** | 它们是 CCTableView 子类 + 自定义触摸/惯性/缩放逻辑，JS 侧只能用 `cc.TableView` 拼近似物，手感与回调时序对不上（`onFirstIdx / onSelectCell / setCellScaleValue` 等语义） | 见 4.3 |
| `BFWebView` | 不能 | 本质是 Android WebView 的原生容器，JS 无法创建/定位/转发触摸 | 见 4.3 |
| `BFLocalNotificationHelp` | 不能 | 需要 AlarmManager / 通知权限 | 见 4.3 |
| `AssetsMgr` 更新链 | 不能 | 多线程 + curl + 解压 + md5 | 见 4.3 |

### 4.3 只能逆向 / 重写 C++

| 项 | 为什么 JS 不行 | 已知可用的逆向材料 | 难度 |
|---|---|---|---|
| `BFCardView`（16 个方法） | 自绘卡牌滑动视图，含惯性、吸附、`minContainerOffset` 重写、cell 缩放 | 原版符号名全在（`adjustFirstCell / adjustOffset / onSliderValueChange / setCellScaleValue`…），可逐函数 Ghidra 反编译 | 高 |
| `BFSortTableWidget` + `BFSortTableView`（23 个） | 排序列表，依赖 `CCTableView::setFillOrder`、`CCScrollView::hasVisibleParents` 等**同为私货**的引擎 patch | 同上 | 高 |
| `BFWebView` + `BFWebViewImp`（22 个） | 必须经 JNI 调 Java WebView | 字符串表已给出**完整 JNI 契约**：`WebView_addWebView`、`WebView_loadUrl`、`WebView_removeWebView`、`WebView_setTouchEnable (Z)V`、`WebView_setPosition (II)V`、`WebView_setContentSize`、`WebView_setVisible`；Java 侧需自补这些方法 | 高（要同时写 C++ 与 Java） |
| `BFControlSlider`（8 个） | 触摸 + 值通知语义 | 符号名全 | 中高 |
| `umeng / MobClickCpp` | 整库 1,555 个符号，不可能重写 | 只能换 .so | — |
| `CSJson` / `CCTexture2D::retain` 等小工具 | 太大 / 无必要 | 换 .so | — |

**已做到的先例**：`BFButton`（`Classes/Native/BFButton.cpp` + `sgscq_custom_jsb.cpp`）——先例证明这条路可行，也说明每个控件都是几百行级别的逆向工作。

---

## 五、推荐方案与验证步骤

### 5.1 推荐排序

**第 0 步（立刻、零风险、不依赖设备）——补 JS 侧的洞，保持"自建库"路线可跑**
1. `retainSpriteFramesWithFile`：保留已在做的 C++ 补丁（`SpriteFrameRetention.cpp`），它是**原语义的忠实等价**；若想先快速验证，也可在 `jsb_compat.js` 里按 §4.2 的 `getStringFromFile + spriteFrameByName + .retain()` 写法补纯 JS 版（**不要**只把对象放进数组，那样不涨引用计数）。
2. `jsb_compat.js` 的默认分支现在是 `return ""`。逐一核对 90 条调用点里哪些用 `"err"` 做判据（`Tools/Jsb.js:22` 的 `getOriResCode`、`main.js:271` 的 Kefu），需要返回 `"err"` 的必须显式返回，否则会走进错误分支。
3. `Kefu` / `Alipay` 两个类名在原版字符串表里不存在（§2.4），要么按平台条件分支解释，要么在 JS 兜底里单独处理。

**第 1 步（并行、静态可完成）——为"换回原版 .so"做无设备验证**
1. 新增 `verify_vendor_native.py`（先不动 `verify_client_apk.py`）：对打包进去的 .so 断言
   - `sha256 == a80edf…`（原版）或自建白名单；
   - `DT_NEEDED` 集合 == 7 个系统库；
   - 导出符号**金标子集**必须存在：`_ZN7cocos2d18CCSpriteFrameCache32retainSpriteFramesWithDictionaryEPNS_12CCDictionaryE`、`_ZN12JsbConnecter6invokeERKSsS1_S1_`、`_ZN10BFWebViewImp6createEv`、`_ZN9Statistic4initEv`、`_ZN2xs12XSAssetsMgr8downloadEv`、umeng 相关 ≥1500 个；
   - `.ARM.attributes` 的 `Tag_CPU_arch`；
   - `readelf -d` 无 TEXTREL。
2. **JS API 覆盖交叉检查（最有价值的一条）**：把 `ReconstructedJS/**/*.js` 里所有 `xs.JsbConnecter…invoke("X","Y")`（90 条，已收录于 `Recovered/native_api_inventory.md`）与 `cc.*` 成员链（670 条）跟原版 .so 的**字符串表 + 符号表**求差，输出"换回后可能失效"的清单。若为空集，"换库不丢功能"在静态层面即成立。
3. 静态确认 `jsb_compat.js` 与原生 `xs.JsbConnecter` 的冲突并给出改法（条件化 `AppDelegate.cpp:74`，或把 `jsb_compat.js` 改成"仅当 `xs.JsbConnecter` 不存在时才定义"）。

**第 2 步（有设备时，一次实验定案）——换库回归**
1. 用原版 .so 替换（**建议放 `lib/armeabi/`** 并改掉那条断言；或改名放 `lib/armeabi-v7a/`），重打包。
2. 启动 60 秒抓 logcat，检查（全部是**不需要人工看图**的判据）：
   - 出现 `Get data from file(jsb_compat.jsc) failed!` 与 `Get data from file(src_jsc/main.jsc) failed!` → 证明原版 .so 走了**明文 .js 回退**（§3.3 的运行时确认）；
   - 出现 `LogoScene::showLogoBegin / showLogoFinished`（原版专有日志）→ 证明是原版引擎在跑；
   - 出现 `JsbConnecter::invoke end` / `#### SendToBF` → 原生桥在工作；
   - 没有 `Fatal signal` / `tombstone` / `E AndroidRuntime`；
   - `func bfsdk_login is not exist` 这类**允许出现**（降级路径的预期日志）。
3. 与 `artifacts/device-validation/original-patched-startup.log`（原版 APK 在 15:52 的启动日志）做差异对比，作为"原版行为基线"。

**第 3 步（只有第 2 步失败或不允许换库时）——回到自建库逐项重写**
顺序：`BFCardView` → `BFControlSlider` → `BFSortTableWidget` → `BFWebView`（含 Java）→ 其余服务型（`Statistic` / umeng 建议直接放弃，`AssetsMgr` 保留 `jsb_compat.js` 的中性返回）。

### 5.2 为什么这样排

- 第 0 步不需要设备与重打包，且**无论最后选哪条路都不浪费**（JS 补丁在两条路上都是兜底）。
- 第 1 步全是静态检查，能在没有设备时把"换库会不会丢功能"从"感觉可行"变成"有清单、有金标"。
- 第 2 步是**唯一的运行时不确定性**（vendor 的搜索路径是否命中我们的 assets 布局），一次实验就能定案，成本最低。
- 第 3 步最贵（每个控件几百行逆向），只有"换库"被证伪时才值得走。

---

## 六、无法复原或不确定的

| 项 | 状态 | 说明 |
|---|---|---|
| `Kefu`、`Alipay` 两个分派类名 | **不确定** | 原版 .so 字符串表里完全没有；推测是 iOS/微端条件编译，未证实。若为其它机制，JS 兜底需单独处理 |
| `JsbConnecter::invoke` 中 `ArmDataMgr` 类 | 部分不明 | `invoke_Class_ArmDataMgr` 存在，但 `ArmDataMgr` 的方法名没有出现在字符串块里（可能由 Cfg 复用）；JS 侧也未见调用点 |
| 厂商的 Java 侧实现 | **不可复原** | `com.bf.sgscq.SanguoshaDemo` 的 `WebView_* / bfsdk_* / sgsActivity_*` 等 14+ 个方法在现有 Java 源码里不存在，也没有原始 smali 作对照。`BFWebView` 要复原就必须连 Java 一起补写 |
| umeng / TalkingData / Testin / ShareSDK 的真实行为 | **不可复原** | 第三方闭源 SDK；只能"换回原版 .so 并接受 Java 侧缺失→降级"，或彻底不做 |
| `CCFileUtils::DeEncrypt` 的密钥/算法 | **未知** | 有符号、有调用框架，但当前资源是明文，暂不影响；将来用加密资源包必须逆向 |
| `CCScheduler::performFunctionInCocosThread` 的原版语义 | 不确定 | 参数表带 6 个 std::string，与 stock 2.2.6 不同；只在 `Jsb::dispatchResponseCallbacks` 用到，换库后自动一致，自建库要复刻需先逆向 |
| 原版 .so 在**纯 64 位设备** | 不可用 | armeabi / armeabi-v7a 都跑不了；与方案无关，但要知道边界 |
| `FindClass` 失败后的 pending exception 行为 | 未实测 | §3.2 的"降级不崩"是静态结论；建议第 2 步实验时专门 grep `NoClassDefFoundError` 与 `JNI DETECTED ERROR` |

---

## 七、总结

**私货能找全。** 原版 .so 虽被 strip，但默认可见性导出了全部 C++ 修饰名，配合自有字符串块（0xacd160–0xad0400）、`.ARM.exidx` 函数边界和 `.init_array`，三源交叉可以做到**穷尽清点且不误报**：9 大类、约 2,300 个真实符号、27 个原生桥分派类、90 条 `(类,方法)` 接口、4 个 Java 类的 JNI 契约；余下约 1,500 个差异符号可判定为模板实例/内联/第三方库版本噪声（判据是"归一化后同名"、"同为 GCC 4.9 一代编译器"、"预编译 .a 的 GCC 4.4.3 指纹"）。

**复原程度分三档。** 约 90% 的服务型私货（日志、渠道、设备、统计、社交支付桥、远程更新、`JsbConnecter` 全部 90 条）**换回原版 .so 即可一次拿回**，且逐条验证过：ABI 可行（设备日志证明支持 armeabi，且 linker 不校验目录名与 `.ARM.attributes` 的一致性）、**JNI 全部惰性解析**（`JNI_OnLoad` 只有 24 字节、只调 `setJavaVM`；319 处 Java 类名引用 0 处落在 `.init_array`；`getOpenUDID` 的失败路径是 `beq` 直接返回）、**明文 .js 一定能加载**（原版 `runScript` 与 stock 2.2.6 的 `JS_DecodeScript → .js 回退` 调用序列逐条对齐）、反向差集为空（自建独有的 7 个 cocostudio wrapper 无人调用）。

**推荐先走"换回原版 .so"这条路，但用静态金标把它变成可验证的工程决策而不是赌博**：先补 JS 侧兜底（零成本）→ 再写无设备的符号/字符串金标校验 + JS 成员链覆盖交叉检查 → 最后用一次设备实验回答唯一剩下的问题（原版 `GlobalMethod::initSearchPath` 是否命中我们的 assets 布局）。只有这次实验失败，才值得投入数周去逆向重写 `BFCardView / BFSortTableWidget / BFWebView / BFControlSlider` 这些带渲染与手势逻辑的控件——它们（外加闭源的 umeng / TalkingData / Testin / ShareSDK）是本项目里**唯一真正无法忠实复原**的部分。

