# Native-facing API inventory

> This is an evidence index for rebuilding JSB. Member-use paths come from approximate JS reconstructed from bytecode; they are candidates to validate, not proof that a clean native binding provides them.

- Reconstructed JavaScript inputs: **836**
- Distinct member chains observed: **670**
- Literal `JsbConnecter.invoke` pairs: **90**
- `cpp2jsb` callback labels: **31**
- JSB class/prototype names in oracle `.so`: **269**
- Oracle registration functions: **7**
- Oracle custom binding wrapper functions: **53**

## JS member-use candidates

The member chains below are direct syntactic observations. The JSON and CSV contain every chain with source locations; game logic, JSB helper code, and configuration are retained as separate source categories in the JSON.

### Source groups

| Source group | Distinct chains | Occurrences |
|---|---:|---:|
| `cocos_jsb_runtime` | 584 | 748 |
| `config` | 1 | 150 |
| `game_logic` | 143 | 5260 |

| Namespace | Distinct chains | Occurrences |
|---|---:|---:|
| `cc` | 490 | 5946 |
| `ccs` | 94 | 119 |
| `cp` | 85 | 90 |
| `jsb` | 1 | 3 |

### Most frequent observed chains

| Chain | Uses |
|---|---:|
| `cc.p` | 1870 |
| `cc.size` | 754 |
| `cc.associateWithNative` | 361 |
| `cc.c3b` | 239 |
| `cc.CallFunc.create` | 145 |
| `cc.Layer` | 134 |
| `cc.Layer.extend` | 89 |
| `cc.TABLEVIEW_FILL_TOPDOWN` | 88 |
| `cc.Class.extend` | 82 |
| `cc.TableViewCell.extend` | 78 |
| `cc.SCROLLVIEW_DIRECTION_VERTICAL` | 77 |
| `cc.Scene.extend` | 73 |
| `cc.TableView.create` | 71 |
| `cc.TableViewCell` | 68 |
| `cc.Scene` | 67 |
| `cc.Node` | 62 |
| `cc.log` | 59 |
| `cc.DelayTime.create` | 52 |
| `cc.Director.getInstance` | 52 |
| `cc.Node.extend` | 49 |
| `cc.MoveTo.create` | 47 |
| `cc.Scale9Sprite.createWithSpriteFrameName` | 44 |
| `cc.Node.create` | 43 |
| `cc.TableView` | 43 |
| `cc.BuilderReader.load` | 41 |
| `cc.ScaleTo.create` | 38 |
| `cc.TargetedAction.create` | 38 |
| `cc.MoveBy.create` | 36 |
| `cc.Sequence.create` | 35 |
| `cc.CONTROL_EVENT_TOUCH_UP_INSIDE` | 27 |

## Native bridge calls

| Native class | Method | Uses | Evidence |
|---|---|---:|---|
| `AdmobHelp` | `hideBanner` | 1 | `src_jsc/Profile/Account.js:57` |
| `AdmobHelp` | `showBanner` | 1 | `src_jsc/Profile/Account.js:50` |
| `Alipay` | `pay` | 1 | `src_jsc/Views/Table/ChargeItemTableView.js:280` |
| `Alipay` | `pay_ext` | 1 | `src_jsc/Views/Table/ChargeItemTableView.js:299` |
| `App` | `exit` | 2 | `src_jsc/Core/Utils/headers.js:197`, `src_jsc/Tools/Jsb.js:80` |
| `AppStore` | `finishTransaction` | 3 | `src_jsc/Views/Dialog/CheckOrderDialog.js:100`, `src_jsc/Views/Dialog/CheckOrderDialog.js:108`, `src_jsc/Views/Dialog/CheckOrderDialog.js:116` |
| `AppStore` | `init` | 1 | `src_jsc/Scene/Main/MainMenuScene.js:650` |
| `AppStore` | `pay` | 1 | `src_jsc/Views/Table/ChargeItemTableView.js:156` |
| `AssetsMgr` | `init` | 1 | `src_jsc/Core/Tools/Jsb.js:57` |
| `AssetsMgr` | `release` | 1 | `src_jsc/Core/Tools/Jsb.js:76` |
| `AssetsMgr` | `setConnectionTimeout` | 1 | `src_jsc/Core/Tools/Jsb.js:68` |
| `AssetsMgr` | `setDownloadRangeByString` | 1 | `src_jsc/Core/Tools/Jsb.js:64` |
| `AssetsMgr` | `setOperationTimeout` | 1 | `src_jsc/Core/Tools/Jsb.js:72` |
| `AssetsMgr` | `startDownloadThread` | 1 | `src_jsc/Core/Tools/Jsb.js:81` |
| `AssetsMgr` | `startUncompressThread` | 1 | `src_jsc/Core/Tools/Jsb.js:87` |
| `BfSdk` | `checkBindingCode` | 1 | `src_jsc/Views/Dialog/BindingTelDialog.js:129` |
| `BfSdk` | `login` | 2 | `src_jsc/Tools/Jsb.js:127`, `src_jsc/Views/Dialog/BindingDialog.js:250` |
| `BfSdk` | `loginByHistory` | 2 | `src_jsc/Scene/Login/LoginScene_AnySdk.js:639`, `src_jsc/Scene/Login/LoginScene_BfSdk.js:511` |
| `BfSdk` | `regis` | 2 | `src_jsc/Scene/Login/LoginScene_BfSdk.js:974`, `src_jsc/Views/Dialog/BindingDialog.js:295` |
| `BfSdk` | `requestTelBinding` | 1 | `src_jsc/Views/Dialog/BindingTelDialog.js:114` |
| `Build` | `getAccountSysCode` | 2 | `src_jsc/Tools/Jsb.js:112`, `src_jsc/main.js:13` |
| `Build` | `getBuildType` | 2 | `src_jsc/Tools/Jsb.js:100`, `src_jsc/Tools/Sys.js:26` |
| `Build` | `getBuildVersion` | 2 | `src_jsc/AnySdk/AnySdkHelp_js.js:13`, `src_jsc/Tools/Jsb.js:17` |
| `Build` | `getCocos2dDebugLevel` | 1 | `src_jsc/Tools/Jsb.js:105` |
| `Build` | `getOriResCode` | 2 | `src_jsc/Core/Tools/Jsb.js:44`, `src_jsc/Tools/Jsb.js:22` |
| `Build` | `getProjCode` | 1 | `src_jsc/main.js:15` |
| `Build` | `getUseJsc` | 1 | `src_jsc/Tools/Sys.js:32` |
| `Cfg` | `getChannelId` | 2 | `src_jsc/Tools/Jsb.js:45`, `src_jsc/main.js:17` |
| `Cfg` | `getChannelName` | 1 | `src_jsc/Tools/Jsb.js:53` |
| `Cfg` | `getDeviceCarrier` | 1 | `src_jsc/Core/Tools/Jsb.js:36` |
| `Cfg` | `getDeviceId` | 1 | `src_jsc/Core/Tools/Jsb.js:8` |
| `Cfg` | `getDeviceMobile` | 1 | `src_jsc/Core/Tools/Jsb.js:20` |
| `Cfg` | `getDeviceNetwork` | 1 | `src_jsc/Core/Tools/Jsb.js:32` |
| `Cfg` | `getDeviceOS` | 1 | `src_jsc/Core/Tools/Jsb.js:16` |
| `Cfg` | `getDeviceOSVer` | 1 | `src_jsc/Core/Tools/Jsb.js:24` |
| `Cfg` | `getDevicePixel` | 1 | `src_jsc/Core/Tools/Jsb.js:28` |
| `Cfg` | `getDeviceType` | 1 | `src_jsc/Core/Tools/Jsb.js:12` |
| `Cfg` | `getIDFA` | 1 | `src_jsc/Tools/Jsb.js:88` |
| `Cfg` | `getMacAddress` | 1 | `src_jsc/Tools/Jsb.js:92` |
| `Cfg` | `getMacroStr` | 1 | `src_jsc/Scene/Debug/DebugScene.js:99` |
| `Cfg` | `getOpenUDID` | 1 | `src_jsc/Tools/Jsb.js:84` |
| `Cfg` | `getResPath` | 1 | `src_jsc/main.js:34` |
| `Cfg` | `getResScaleTag` | 1 | `src_jsc/main.js:19` |
| `Cfg` | `getVersionCode` | 1 | `src_jsc/Tools/Jsb.js:69` |
| `Cfg` | `getVersionName` | 1 | `src_jsc/Tools/Jsb.js:61` |
| `Cfg` | `mkdir` | 12 | `src_jsc/Core/Tools/Jsb.js:40`, `src_jsc/Models/HD.js:19`, `src_jsc/Tools/Jsb.js:122`, `src_jsc/Tools/Net.js:1507`, … +8 |
| `Cfg` | `unZipFile` | 2 | `src_jsc/Tools/Net.js:1544`, `src_jsc/Tools/Net.js:1634` |
| `Debug` | `dumpSpriteFrameCache` | 1 | `src_jsc/Tools/Sys.js:143` |
| `Director` | `getFrameSize` | 1 | `src_jsc/main.js:21` |
| `EasySdkMgr` | `getModuleVersion` | 1 | `src_jsc/Tools/Jsb.js:171` |
| `Feedback` | `enter` | 1 | `src_jsc/Scene/Setting/SettingScene.js:435` |
| `Get3rdChName` | `Get3rdChName` | 2 | `src_jsc/Views/Table/ChargeItemTableView.js:47`, `src_jsc/Views/Table/ChargeItemTableView.js:170` |
| `GlobalMethod` | `exitGame` | 2 | `src_jsc/AnySdk/AnySdkCallback.js:27`, `src_jsc/AnySdk/AnySdkCallback.js:85` |
| `GlobalMethod` | `exitGameWithUserClick` | 1 | `src_jsc/cpp2jsb.js:233` |
| `GlobalMethod` | `getGeTuiCID` | 1 | `src_jsc/Tools/Net.js:1695` |
| `GlobalMethod` | `showMessageBox_Android` | 3 | `src_jsc/AnySdk/AnySdkCallback.js:41`, `src_jsc/AnySdk/AnySdkCallback.js:146`, `src_jsc/AnySdk/AnySdkCallback.js:152` |
| `GlobalMethod` | `visitStore` | 1 | `src_jsc/Core/Tools/Jsb.js:52` |
| `GlobalMethod` | `visitUrl` | 1 | `src_jsc/Core/Tools/Jsb.js:48` |
| `Kefu` | `onActionWithService` | 1 | `src_jsc/main.js:271` |
| `Log` | `SGSCQLog_SendLogToUMENG` | 1 | `src_jsc/Debug/Logger.js:110` |
| `Log` | `SGSCQLog_SetLogFileName` | 1 | `src_jsc/Debug/Logger.js:88` |
| `Log` | `SGSCQLog_SetLowestPriority` | 1 | `src_jsc/Debug/Logger.js:21` |
| `Platform` | `getBuildTarget` | 1 | `src_jsc/Tools/Jsb.js:37` |
| `Share` | `savePhoto` | 1 | `src_jsc/Views/HDShowViews.js:126` |
| `Share` | `setWallPaper` | 1 | `src_jsc/Views/HDShowViews.js:100` |
| `Share` | `shareToSina` | 1 | `src_jsc/Views/HDShowViews.js:60` |
| `Share` | `shareToWX` | 1 | `src_jsc/Views/HDShowViews.js:77` |
| `SpriteFrameCache` | `releaseSpriteFramesWithFile` | 1 | `src_jsc/Factorys/Sprite.js:177` |
| `SpriteFrameCache` | `retainSpriteFramesWithFile` | 1 | `src_jsc/Factorys/Sprite.js:140` |
| `Statistic` | `reportLog` | 1 | `src_jsc/Tools/Statistic.js:162` |
| `Statistic` | `statistic` | 10 | `src_jsc/Tools/Statistic.js:67`, `src_jsc/Tools/Statistic.js:80`, `src_jsc/Utils/Statistic.js:112`, `src_jsc/Utils/Statistic.js:117`, … +6 |
| `StatisticV2` | `event` | 1 | `src_jsc/Core/Tools/Statistic.js:17` |
| `TalkingDataAppCpaHelp` | `getAppKey` | 1 | `src_jsc/Tools/Jsb.js:96` |
| `TalkingDataAppCpaHelp` | `onCustEventWithIdx` | 1 | `src_jsc/Tools/TalkingDataAppCpa.js:35` |
| `TalkingDataAppCpaHelp` | `onLogin` | 1 | `src_jsc/Tools/TalkingDataAppCpa.js:20` |
| `TalkingDataAppCpaHelp` | `onPay` | 1 | `src_jsc/Tools/TalkingDataAppCpa.js:31` |
| `TalkingDataAppCpaHelp` | `onRegister` | 1 | `src_jsc/Tools/TalkingDataAppCpa.js:12` |
| `TestinHelp` | `setUserInfo` | 2 | `src_jsc/Scene/Login/headers.js:26`, `src_jsc/Scene/Login/headers.js:29` |
| `ThirdSdk` | `doThirdAction` | 8 | `src_jsc/Scene/Setting/SettingScene.js:244`, `src_jsc/Scene/Setting/SettingScene.js:486`, `src_jsc/Views/Dialog/FGLoginDialog.js:59`, `src_jsc/Views/Dialog/FGLoginDialog.js:71`, … +4 |
| `ThirdSdk` | `isLogined` | 10 | `src_jsc/Scene/Login/LoginScene_ThirdGuestSdk.js:181`, `src_jsc/Scene/Login/LoginScene_ThirdGuestSdk.js:213`, `src_jsc/Scene/Login/LoginScene_ThirdGuestSdk.js:313`, `src_jsc/Scene/Login/LoginScene_ThirdSdk.js:208`, … +6 |
| `ThirdSdk` | `isSupportFunction` | 8 | `src_jsc/Scene/Login/LoginScene_ThirdGuestSdk.js:118`, `src_jsc/Scene/Login/LoginScene_ThirdGuestSdk.js:120`, `src_jsc/Scene/Login/LoginScene_ThirdSdk.js:135`, `src_jsc/Tools/Jsb.js:152`, … +4 |
| `ThirdSdk` | `login` | 4 | `src_jsc/Scene/Login/LoginScene_ThirdGuestSdk.js:318`, `src_jsc/Scene/Login/LoginScene_ThirdSdk.js:336`, `src_jsc/Scene/Setting/SettingScene.js:494`, `src_jsc/Tools/Jsb.js:139` |
| `ThirdSdk` | `thirdSubMitInfo` | 2 | `src_jsc/Scene/Login/headers.js:39`, `src_jsc/Tools/Jsb.js:156` |
| `Thirdpay` | `third_pay` | 2 | `src_jsc/Views/Table/ChargeItemTableView.js:288`, `src_jsc/Views/Table/ChargeItemTableView.js:318` |
| `Trie` | `queryString` | 4 | `src_jsc/Tools/UI.js:530`, `src_jsc/Tools/UI.js:555`, `src_jsc/Tools/UI.js:601`, `src_jsc/Tools/UI.js:626` |
| `Trie` | `setTrie` | 1 | `src_jsc/Tools/Jsb.js:117` |
| `UserInfo` | `(empty)` | 4 | `src_jsc/Profile/GameData/common.js:322`, `src_jsc/Scene/Login/headers.js:97`, `src_jsc/Views/Dialog/SpecificDialog.js:871`, `src_jsc/cpp2jsb.js:252` |
| `Utils` | `deleteDir` | 2 | `src_jsc/Core/Utils/headers.js:263`, `src_jsc/Utils/FileSys.js:28` |
| `Utils` | `getFileDataSize` | 2 | `src_jsc/Core/Utils/headers.js:257`, `src_jsc/Utils/FileSys.js:22` |
| `Utils` | `md5file` | 2 | `src_jsc/Core/Tools/Jsb.js:93`, `src_jsc/Tools/Jsb.js:133` |

## C++ to JS callback labels

- `3rd_logoutSuccess` — `src_jsc/cpp2jsb.js:164`
- `BFbindMobileFail` — `src_jsc/cpp2jsb.js:411`
- `BFbindMobileSucess` — `src_jsc/cpp2jsb.js:195`
- `ali_pay` — `src_jsc/cpp2jsb.js:143`, `src_jsc/cpp2jsb.js:372`
- `and_Thirdsdk_login` — `src_jsc/cpp2jsb.js:95`, `src_jsc/cpp2jsb.js:330`
- `and_ali_pay` — `src_jsc/cpp2jsb.js:144`, `src_jsc/cpp2jsb.js:373`
- `and_bfsdk_login` — `src_jsc/cpp2jsb.js:76`, `src_jsc/cpp2jsb.js:266`
- `and_bfsdk_register` — `src_jsc/cpp2jsb.js:119`, `src_jsc/cpp2jsb.js:353`
- `anySdk_onClickExit` — `src_jsc/cpp2jsb.js:223`
- `anySdk_onDestroy` — `src_jsc/cpp2jsb.js:236`
- `anysdk_accountSwitchSuccess` — `src_jsc/cpp2jsb.js:168`
- `anysdk_loginCancel` — `src_jsc/cpp2jsb.js:176`
- `anysdk_loginFail` — `src_jsc/cpp2jsb.js:306`
- `anysdk_logoutSuccess` — `src_jsc/cpp2jsb.js:160`
- `anysdk_payFaild` — `src_jsc/cpp2jsb.js:375`
- `anysdk_paySuccess` — `src_jsc/cpp2jsb.js:146`
- `appStore_checkTransaction` — `src_jsc/cpp2jsb.js:205`
- `errorDialog` — `src_jsc/cpp2jsb.js:112`
- `game_exit` — `src_jsc/cpp2jsb.js:246`
- `getSmsCaptchaFail` — `src_jsc/cpp2jsb.js:396`
- `getSmsCaptchaSuccess` — `src_jsc/cpp2jsb.js:184`
- `google_payFaild` — `src_jsc/cpp2jsb.js:376`
- `google_paySuccess` — `src_jsc/cpp2jsb.js:147`
- `ios_BFbindMobileFail` — `src_jsc/cpp2jsb.js:410`
- `ios_BFbindMobileSucess` — `src_jsc/cpp2jsb.js:194`
- `ios_ali_pay` — `src_jsc/cpp2jsb.js:145`, `src_jsc/cpp2jsb.js:374`
- `ios_bfsdk_login` — `src_jsc/cpp2jsb.js:75`, `src_jsc/cpp2jsb.js:265`
- `ios_bfsdk_register` — `src_jsc/cpp2jsb.js:118`, `src_jsc/cpp2jsb.js:352`
- `ios_getSmsCaptchaFail` — `src_jsc/cpp2jsb.js:395`
- `ios_getSmsCaptchaSuccess` — `src_jsc/cpp2jsb.js:183`
- `logoutSuccessAndShowTipsSuccess` — `src_jsc/cpp2jsb.js:240`

## Oracle-only registrations

These names were read from strings preserved in the original shared library. They need comparison against reconstructed JS use sites and historical Cocos bindings.

- `ActionManager` (class, prototype)
- `ActionObject` (class, prototype)
- `BFButton` (class, prototype)
- `BFCardView` (class, prototype)
- `BFControlSlider` (class, prototype)
- `BFSortTableWidget` (class, prototype)
- `BFWebView` (class, prototype)
- `Button` (class, prototype)
- `CCAction` (class, prototype)
- `CCActionCamera` (class, prototype)
- `CCActionEase` (class, prototype)
- `CCActionInstant` (class, prototype)
- `CCActionInterval` (class, prototype)
- `CCActionManager` (class, prototype)
- `CCActionTween` (class, prototype)
- `CCAnimate` (class, prototype)
- `CCAnimation` (class, prototype)
- `CCAnimationCache` (class, prototype)
- `CCAnimationFrame` (class, prototype)
- `CCApplication` (class, prototype)
- `CCArmature` (class, prototype)
- `CCArmatureAnimation` (class, prototype)
- `CCArmatureDataManager` (class, prototype)
- `CCAtlasNode` (class, prototype)
- `CCBAnimationManager` (class, prototype)
- `CCBReader` (class, prototype)
- `CCBaseData` (class, prototype)
- `CCBatchNode` (class, prototype)
- `CCBezierBy` (class, prototype)
- `CCBezierTo` (class, prototype)
- `CCBlink` (class, prototype)
- `CCBone` (class, prototype)
- `CCCallFunc` (class, prototype)
- `CCCamera` (class, prototype)
- `CCCardinalSplineBy` (class, prototype)
- `CCCardinalSplineTo` (class, prototype)
- `CCCatmullRomBy` (class, prototype)
- `CCCatmullRomTo` (class, prototype)
- `CCClippingNode` (class, prototype)
- `CCColliderFilter` (class, prototype)
- `CCComAttribute` (class, prototype)
- `CCComAudio` (class, prototype)
- `CCComController` (class, prototype)
- `CCComRender` (class, prototype)
- `CCComponent` (class, prototype)
- `CCControl` (class, prototype)
- `CCControlButton` (class, prototype)
- `CCControlColourPicker` (class, prototype)
- `CCControlHuePicker` (class, prototype)
- `CCControlPotentiometer` (class, prototype)
- `CCControlSaturationBrightnessPicker` (class, prototype)
- `CCControlSlider` (class, prototype)
- `CCControlStepper` (class, prototype)
- `CCControlSwitch` (class, prototype)
- `CCDelayTime` (class, prototype)
- `CCDirector` (class, prototype)
- `CCDisplayManager` (class, prototype)
- `CCDrawNode` (class, prototype)
- `CCEGLView` (class, prototype)
- `CCEGLViewProtocol` (class, prototype)
- `CCEaseBackIn` (class, prototype)
- `CCEaseBackInOut` (class, prototype)
- `CCEaseBackOut` (class, prototype)
- `CCEaseBounce` (class, prototype)
- `CCEaseBounceIn` (class, prototype)
- `CCEaseBounceInOut` (class, prototype)
- `CCEaseBounceOut` (class, prototype)
- `CCEaseElastic` (class, prototype)
- `CCEaseElasticIn` (class, prototype)
- `CCEaseElasticInOut` (class, prototype)
- `CCEaseElasticOut` (class, prototype)
- `CCEaseExponentialIn` (class, prototype)
- `CCEaseExponentialInOut` (class, prototype)
- `CCEaseExponentialOut` (class, prototype)
- `CCEaseIn` (class, prototype)
- `CCEaseInOut` (class, prototype)
- `CCEaseOut` (class, prototype)
- `CCEaseRateAction` (class, prototype)
- `CCEaseSineIn` (class, prototype)
- `CCEaseSineInOut` (class, prototype)
- `CCEaseSineOut` (class, prototype)
- `CCEditBox` (class, prototype)
- `CCFadeIn` (class, prototype)
- `CCFadeOut` (class, prototype)
- `CCFadeOutBLTiles` (class, prototype)
- `CCFadeOutDownTiles` (class, prototype)
- `CCFadeOutTRTiles` (class, prototype)
- `CCFadeOutUpTiles` (class, prototype)
- `CCFadeTo` (class, prototype)
- `CCFileUtils` (class, prototype)
- `CCFiniteTimeAction` (class, prototype)
- `CCFlipX` (class, prototype)
- `CCFlipX3D` (class, prototype)
- `CCFlipY` (class, prototype)
- `CCFlipY3D` (class, prototype)
- `CCFollow` (class, prototype)
- `CCGLProgram` (class, prototype)
- `CCGrid3D` (class, prototype)
- `CCGrid3DAction` (class, prototype)
- `CCGridAction` (class, prototype)
- `CCGridBase` (class, prototype)
- `CCHide` (class, prototype)
- `CCInputDelegate` (class, prototype)
- `CCJumpBy` (class, prototype)
- `CCJumpTiles3D` (class, prototype)
- `CCJumpTo` (class, prototype)
- `CCLabelAtlas` (class, prototype)
- `CCLabelBMFont` (class, prototype)
- `CCLabelTTF` (class, prototype)
- `CCLayer` (class, prototype)
- `CCLayerColor` (class, prototype)
- `CCLayerGradient` (class, prototype)
- `CCLayerMultiplex` (class, prototype)
- `CCLayerRGBA` (class, prototype)
- `CCLens3D` (class, prototype)
- `CCLiquid` (class, prototype)
- `CCMenu` (class, prototype)
- `CCMenuItem` (class, prototype)
- `CCMenuItemAtlasFont` (class, prototype)
- `CCMenuItemFont` (class, prototype)
- `CCMenuItemImage` (class, prototype)
- `CCMenuItemLabel` (class, prototype)
- `CCMenuItemSprite` (class, prototype)
- `CCMenuItemToggle` (class, prototype)
- `CCMotionStreak` (class, prototype)
- `CCMoveBy` (class, prototype)
- `CCMoveTo` (class, prototype)
- `CCNode` (class, prototype)
- `CCNodeRGBA` (class, prototype)
- `CCOrbitCamera` (class, prototype)
- `CCPageTurn3D` (class, prototype)
- `CCParallaxNode` (class, prototype)
- `CCParticleBatchNode` (class, prototype)
- `CCParticleExplosion` (class, prototype)
- `CCParticleFire` (class, prototype)
- `CCParticleFireworks` (class, prototype)
- `CCParticleFlower` (class, prototype)
- `CCParticleGalaxy` (class, prototype)
- `CCParticleMeteor` (class, prototype)
- `CCParticleRain` (class, prototype)
- `CCParticleSmoke` (class, prototype)
- `CCParticleSnow` (class, prototype)
- `CCParticleSpiral` (class, prototype)
- `CCParticleSun` (class, prototype)
- `CCParticleSystem` (class, prototype)
- `CCParticleSystemQuad` (class, prototype)
- `CCPlace` (class, prototype)
- `CCProgressFromTo` (class, prototype)
- `CCProgressTimer` (class, prototype)
- `CCProgressTo` (class, prototype)
- `CCRenderTexture` (class, prototype)
- `CCRepeat` (class, prototype)
- `CCRepeatForever` (class, prototype)
- `CCReuseGrid` (class, prototype)
- `CCRipple3D` (class, prototype)
- `CCRotateBy` (class, prototype)
- `CCRotateTo` (class, prototype)
- `CCScale9Sprite` (class, prototype)
- `CCScaleBy` (class, prototype)
- `CCScaleTo` (class, prototype)
- `CCScene` (class, prototype)
- `CCScheduler` (class, prototype)
- `CCScrollView` (class, prototype)
- `CCSequence` (class, prototype)
- `CCSet` (class, prototype)
- `CCShaderCache` (class, prototype)
- `CCShaky3D` (class, prototype)
- `CCShakyTiles3D` (class, prototype)
- `CCShatteredTiles3D` (class, prototype)
- `CCShow` (class, prototype)
- `CCShuffleTiles` (class, prototype)
- `CCSkewBy` (class, prototype)
- `CCSkewTo` (class, prototype)
- `CCSkin` (class, prototype)
- `CCSpawn` (class, prototype)
- `CCSpeed` (class, prototype)
- `CCSplitCols` (class, prototype)
- `CCSplitRows` (class, prototype)
- `CCSprite` (class, prototype)
- `CCSpriteBatchNode` (class, prototype)
- `CCSpriteFrame` (class, prototype)
- `CCSpriteFrameCache` (class, prototype)
- `CCStopGrid` (class, prototype)
- `CCTMXLayer` (class, prototype)
- `CCTMXLayerInfo` (class, prototype)
- `CCTMXMapInfo` (class, prototype)
- `CCTMXObjectGroup` (class, prototype)
- `CCTMXTiledMap` (class, prototype)
- `CCTMXTilesetInfo` (class, prototype)
- `CCTableView` (class, prototype)
- `CCTableViewCell` (class, prototype)
- `CCTargetedAction` (class, prototype)
- `CCTextFieldTTF` (class, prototype)
- `CCTexture2D` (class, prototype)
- `CCTextureCache` (class, prototype)
- `CCTileMapAtlas` (class, prototype)
- `CCTiledGrid3D` (class, prototype)
- `CCTiledGrid3DAction` (class, prototype)
- `CCTimer` (class, prototype)
- `CCTintBy` (class, prototype)
- `CCTintTo` (class, prototype)
- `CCToggleVisibility` (class, prototype)
- `CCTouch` (class, prototype)
- `CCTransitionCrossFade` (class, prototype)
- `CCTransitionEaseScene` (class, prototype)
- `CCTransitionFade` (class, prototype)
- `CCTransitionFadeBL` (class, prototype)
- `CCTransitionFadeDown` (class, prototype)
- `CCTransitionFadeTR` (class, prototype)
- `CCTransitionFadeUp` (class, prototype)
- `CCTransitionFlipAngular` (class, prototype)
- `CCTransitionFlipX` (class, prototype)
- `CCTransitionFlipY` (class, prototype)
- `CCTransitionJumpZoom` (class, prototype)
- `CCTransitionMoveInB` (class, prototype)
- `CCTransitionMoveInL` (class, prototype)
- `CCTransitionMoveInR` (class, prototype)
- `CCTransitionMoveInT` (class, prototype)
- `CCTransitionPageTurn` (class, prototype)
- `CCTransitionProgress` (class, prototype)
- `CCTransitionProgressHorizontal` (class, prototype)
- `CCTransitionProgressInOut` (class, prototype)
- `CCTransitionProgressOutIn` (class, prototype)
- `CCTransitionProgressRadialCCW` (class, prototype)
- `CCTransitionProgressRadialCW` (class, prototype)
- `CCTransitionProgressVertical` (class, prototype)
- `CCTransitionRotoZoom` (class, prototype)
- `CCTransitionScene` (class, prototype)
- `CCTransitionSceneOriented` (class, prototype)
- `CCTransitionShrinkGrow` (class, prototype)
- `CCTransitionSlideInB` (class, prototype)
- `CCTransitionSlideInL` (class, prototype)
- `CCTransitionSlideInR` (class, prototype)
- `CCTransitionSlideInT` (class, prototype)
- `CCTransitionSplitCols` (class, prototype)
- `CCTransitionSplitRows` (class, prototype)
- `CCTransitionTurnOffTiles` (class, prototype)
- `CCTransitionZoomFlipAngular` (class, prototype)
- `CCTransitionZoomFlipX` (class, prototype)
- `CCTransitionZoomFlipY` (class, prototype)
- `CCTurnOffTiles` (class, prototype)
- `CCTween` (class, prototype)
- `CCTwirl` (class, prototype)
- `CCWaves` (class, prototype)
- `CCWaves3D` (class, prototype)
- `CCWavesTiles3D` (class, prototype)
- `CheckBox` (class, prototype)
- `ColliderBody` (class, prototype)
- `GUIReader` (class, prototype)
- `ImageView` (class, prototype)
- `JsbConnecter` (class, prototype)
- `Label` (class, prototype)
- `LabelAtlas` (class, prototype)
- `LabelBMFont` (class, prototype)
- `Layout` (class, prototype)
- `LayoutParameter` (class, prototype)
- `LinearLayoutParameter` (class, prototype)
- `ListView` (class, prototype)
- `LoadingBar` (class, prototype)
- `PageView` (class, prototype)
- `RelativeLayoutParameter` (class, prototype)
- `SceneReader` (class, prototype)
- `ScrollView` (class, prototype)
- `SimpleAudioEngine` (class, prototype)
- `Slider` (class, prototype)
- `TextField` (class, prototype)
- `TouchGroup` (class, prototype)
- `UIHelper` (class, prototype)
- `Widget` (class, prototype)

## Oracle custom wrapper functions

- `BFButton_ccTouchBegan`
- `BFButton_ccTouchEnded`
- `BFButton_ccTouchMoved`
- `BFButton_constructor`
- `BFButton_finalize`
- `BFButton_setEventOnDisable`
- `BFButton_setFilterMove`
- `BFButton_setSwallowTouch`
- `BFCardView_constructor`
- `BFCardView_finalize`
- `BFCardView_getCellsCount`
- `BFCardView_getNormalCellWidth`
- `BFCardView_minContainerOffset`
- `BFCardView_onSliderMoveEnded`
- `BFCardView_onSliderValueChange`
- `BFCardView_reloadData`
- `BFCardView_scrollViewDidScroll`
- `BFCardView_setCardViewSelIdx`
- `BFCardView_setCellScaleValue`
- `BFCardView_setNormalCellWidth`
- `BFCardView_setObserver`
- `BFCardView_setScrollSlider`
- `BFControlSlider_constructor`
- `BFControlSlider_create`
- `BFControlSlider_finalize`
- `BFControlSlider_setObserver`
- `BFControlSlider_setValue`
- `BFControlSlider_setValueNoNotify`
- `BFSortTableWidget_ccTouchBegan`
- `BFSortTableWidget_constructor`
- `BFSortTableWidget_create`
- `BFSortTableWidget_finalize`
- `BFSortTableWidget_getSelectIdx`
- `BFSortTableWidget_init`
- `BFSortTableWidget_setData`
- `BFSortTableWidget_setSelectIdx`
- `BFSortTableWidget_setTouchPriority`
- `BFWebView_constructor`
- `BFWebView_finalize`
- `BFWebView_init`
- `BFWebView_loadUrl`
- `BFWebView_setContentSize`
- `BFWebView_setIsNeedUpdatePos`
- `BFWebView_setPosition`
- `BFWebView_setTouchEnable`
- `BFWebView_setVisible`
- `JsbConnecter_finalize`
- `JsbConnecter_getClassTypeInfo`
- `JsbConnecter_getInstance`
- `JsbConnecter_getName`
- `JsbConnecter_init`
- `JsbConnecter_invoke`
- `JsbConnecter_setIdleTimerDisabled`

## Oracle native bridge symbols

- `Jsb::SendInformation(char const*)`
- `Jsb::dispatchResponseCallbacks(std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >)`
- `Jsb::onCmnFail(char const*, char const*, char const*, char const*, char const*, char const*)`
- `Jsb::onCmnSuccess(char const*, char const*, char const*, char const*, char const*, char const*)`
- `Jsb::onCmnSuccessCallback(std::basic_string<char, std::char_traits<char>, std::allocator<char> >)`
- `Jsb::onCpp2Jsb(char const*, char const*, char const*, char const*, char const*, char const*)`
- `Jsb::onCpp2Jsb_Core(char const*, char const*, char const*, char const*, char const*, char const*)`
- `Jsb::onEasySdkNotify_native(char const*, char const*, char const*, char const*, char const*, char const*, char const*, char const*)`
- `Jsb::onExecuteScript(char const*)`
- `Jsb::onTestFail(char const*, char const*, char const*, char const*, char const*, char const*)`
- `Jsb::onTestSuccess(char const*, char const*, char const*, char const*, char const*, char const*)`
- `Jsb::setCallback(char const*, char const*, char const*, char const*, char const*, char const*, char const*)`
- `JsbConnecter::SeparateParams(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)`
- `JsbConnecter::deleteDir(char const*)`
- `JsbConnecter::getClassTypeInfo()`
- `JsbConnecter::getClassTypeInfo()::id`
- `JsbConnecter::getInstance()`
- `JsbConnecter::getName()`
- `JsbConnecter::init()`
- `JsbConnecter::invoke(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)`
- `JsbConnecter::invoke_Class_ArmDataMgr(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)`
- `JsbConnecter::invoke_Class_Build(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)`
- `JsbConnecter::invoke_Class_Cfg(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)`
- `JsbConnecter::invoke_Class_Director(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)`
- `JsbConnecter::invoke_Class_Log(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)`
- `JsbConnecter::invoke_Class_Platform(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)`
- `JsbConnecter::invoke_Class_SpriteFrameCache(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)`
- `JsbConnecter::invoke_Class_Trie(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)`
- `JsbConnecter::invoke_Class_Utils(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)`
- `JsbConnecter::setIdleTimerDisabled(bool)`
- `JsbConnecter::unZipFile(char const*, char const*)`
- `guard variable for JsbConnecter::getClassTypeInfo()::id`
- `xs::XSAssetsMgrJsb::onError(xs::XSAssetsMgr::ErrorCode)`
- `xs::XSAssetsMgrJsb::onProgress(int)`
- `xs::XSAssetsMgrJsb::onSuccess(xs::XSAssetsMgr::SuccessType)`

## Generated files

- `native_api_inventory.json`: detailed evidence and file/line locations.
- `native_api_inventory.csv`: flat importable view.
- `native_api_inventory.md`: review summary.

Run `python3 tools/extract_native_api_inventory.py` from the project directory to refresh these files.
