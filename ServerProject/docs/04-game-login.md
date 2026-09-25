# 04 · 游戏服登录与会话

证据：**字节码**。入口是 `Tools/Net.js:338` 的 `requestLogin`，
响应处理链是 `Scene/Login/LoginScene_*.js` → `Scene/Login/headers.js` → `Profile/GameData/Mgr.js:122`。

## 4.1 请求 `user.login`

| 项 | 值 | 证据 |
|---|---|---|
| 路径 | `/?do=user.login` | `Cfg/Url.js:20` |
| 封装 | `requestLogin` | `Tools/Net.js:338` |
| 主机 | 选中的游戏服 `server_url` | 选服响应回填 |

调用点在各个 SDK 变体的 `onStartLogin` 里，字段完全一致：

```json
{
  "account_uid":   "xs.Profile.UserCfg.getAccountUid()",
  "app_indentify": "xs.Profile.UserCfg.readProductId()",
  "forcepush":     true,
  "server_params": "this.m_userLoginInfo.serverParams",
  "token":         "this.token",
  "cfg_version":   "cfgVersion"
}
```

证据：`Scene/Login/LoginScene_AnySdk.js:318`、`LoginScene_BfSdk.js:239`、
`LoginScene_ThirdSdk.js:264`、`LoginScene_ThirdGuestSdk.js:241`、
`LoginScene_EasySdk.js:181`、`LoginScene_EasyGuestSdk.js:231`。

封装另外注入 `server_id = xs.Profile.GameData.Player.g_serverId`（`Tools/Net.js:340`）。
再叠加 [01-transport.md](01-transport.md#公共参数) 的公共字段（`user_id`、`time`、
`token`、`user_auth`、教程期间的 `step`）。

## 4.2 响应字段

从调用点跟两跳委托后可证明的根字段：

| 字段 | 读取位置 | 用途 |
|---|---|---|
| `user_auth` | `Profile/GameData/Mgr.js:172` | 存入 `UserCfg.setAuth`，后续请求带上 |
| `map_info` | `Profile/GameData/Mgr.js:159` | `GameData.Map.update` |
| `wine_info` | `Profile/GameData/Mgr.js:161` | `GameData.ToastInfo.update` |
| `isAdult` / `isMobile` | `Mgr.js:125/127` | 全局标记（有默认值 `false`） |
| `isShowBanShu` | `Mgr.js:129` | 版本展示标记 |
| `is_use_keywords` | `Mgr.js:130` | 真值时启用原生敏感词过滤 |
| `isShowAmt` / `isShowCDKey` | `Mgr.js:162-169` | 充值/兑换码入口显隐（可为 `null` 则不改） |
| `server_open` / `isShowGem` / `isShowMagic` / `maxTeamNum` / `isShowUnionWar` / `festivalType` / `rechargeRate` | `Mgr.js:171-198` | 功能开关，全部**可为 null 且不改动默认值** |
| `customerServiceShowConf` | `Mgr.js:201-219` | 渠道列表，命中当前渠道则隐藏客服 |
| `EasyAppKeyBase64` | `Scene/Login/LoginScene_EasyGuestSdk.js:231` | EasySDK 专用 |

除此之外的全部玩家状态都在 `cmn` 里——`user_info`、`general_info`、`team_info` 等，
见 [data-model.md](data-model.md)。**不要**把这些塞进响应根。

字段缺省语义很重要：`Mgr.js` 里绝大多数开关写成
`if (jsonObj.X != null) { xs.X = jsonObj.X }`，
即**不发送就保持默认**，不是"必须发送"。但 `map_info` 与 `wine_info` 是无条件传入的
（`update` 内部各自处理空值），`user_auth` 也是无条件写入。

## 4.3 错误分支

| 条件 | 客户端行为 | 证据 |
|---|---|---|
| `result:false` 且 `error_code == "e_10011"` | 用 `params.download_url` 调 `requestSGSConfig` 下载服务端配置，成功后重发登录 | `LoginScene_BfSdk.js:249-262` |
| 其它 `result:false` | errFunc 返回 `false` → 弹通用错误框 | `Views/Mgr.js:287-303` |
| 客户端的游客登录 | `logintype:1` 走账号服；本重建服务端默认拒绝 | [../PROTOCOL.md](../PROTOCOL.md) |

`requestSGSConfig`（`Tools/Net.js:1564`）是**完整 URL 下载**，不走 `do=` 动作表，
它把 `download_url` 指向的服务端生成配置拉下来（`Scene/Login/LoginScene_*.js` 各处一致）。

## 4.4 登录后

`Scene/Login/headers.js:43-87` 决定去向：

```text
xs.guideOpen 为真
  ├─ GuideMgr.setUseCfg(NewGuideCfg)
  ├─ freshStep = Player.getPlayerFreshStep()   <- 来自 cmn.user_info
  ├─ GuideMgr.setServerStep(freshStep)
  ├─ 教程未结束 -> GuideMgr.start()            (或微端升级分支)
  └─ 教程已结束 -> changeSceneByName("MainMenuScene")
```

`xs.guideOpen` 默认 `xs.release || true`（`cfg.js:41`），即发布包恒为真。

## 4.5 会话令牌

`addBaseParam` 每个请求带 `token` 与 `user_auth`（`Tools/Net.js:317-319`）。
`token` 受到 `xs.useToken` 开关控制（`cfg.js:71`）：关闭时发送空串。
两者都来自选服响应（`account.index`），**原服的签发与校验算法不可恢复**，
列入 [90-blackbox.md](90-blackbox.md)。

## 4.6 逐端点参考

- 账号与选服：[ref/account.md](ref/account.md)
- 玩家与会话：[ref/user.md](ref/user.md)
