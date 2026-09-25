# 03 · 更新检查与账号服

证据：**字节码**。更新检查在 `Update/UpdateScene.js`，账号服在
`Scene/Login/` 与 `Tools/Net.js`。

这一层跑在游戏服之前：先问更新，再拿公告，再登录账号，再选区，最后才连游戏服。

## 3.1 更新检查 `versionPlus.check`

这不是 `Cfg/Url.js` 里的条目，而是 `Update/UpdateScene.js` 里**直接拼完整 URL** 的请求。

### 主机选择

`Update/UpdateScene.js:448-577` 的 `_getUpdateCheckUrl` 按 `xsc.app_indentify` 查表：

| 产品号常量 | 主机 | 动作名前缀 |
|---|---|---|
| `Const_Proj_Code_Channel_Normal_Android%2` | `cqzj.sanguosha.com/sanguosha_anysdk` | `version` |
| `Const_Proj_Code_AppStore_Ios` | `cqzj.sanguosha.com/sanguosha_ios` | `version` |
| `Const_Proj_Code_Official_Fst%*` | `cqzj.sanguosha.com/sanguosha_new` | `version` |
| `Const_Proj_Code_TestOnline` | `cqzj.sanguosha.com/sanguosha_testonline` | `version` |
| `Const_Proj_Code_226_Official_*` | `cqzj.sanguosha.com/sanguosha_new_2.2.6` | `versionPlus` |
| `Const_Proj_Code_226_Channel_*` | `cqzj.sanguosha.com/sanguosha_anysdk_2.2.6` | `versionPlus` |
| `Const_Proj_Code_226_AppStore_Ios` | `cqzj.sanguosha.com/sanguosha_ios_2.2.6` | `versionPlus` |
| `Const_Proj_Code_226_AppStore_IosAsylum` | `cqzj.sanguosha.com/sanguosha_iosAsylum_2.2.6` | `versionPlus` |
| `Const_Proj_Code_226_Pioneer_*` | `cqzj.sanguosha.com/sanguosha_pioneer_2.2.6` | `versionPlus` |
| `Const_Proj_Code_226_TestOnline` | `cqzj.sanguosha.com/sanguosha_testonline_2.2.6` | `versionPlus` |
| `Const_Proj_Code_226Small_Channel_*` | `cqzj.sanguosha.com/sanguosha_small_2.2.6` | `versionPlus` |
| `Const_Proj_Code_226_ApplicationOfTreasure_*` | `cqzj.sanguosha.com/sanguosha_yyb_2.2.6` | `versionPlus` |
| `Const_Proj_Code_226_TW_TestOnline` | `cqoverdownload.sanguosha.com/upd/sanguosha_testonline` | `versionPlus` |
| `Const_Proj_Code_226_TW_Ios%2FAndroid` | `cqoverdownload.sanguosha.com/upd/sanguosha_traditional` | `versionPlus` |
| `Const_Proj_Code_226Small_TW_Android` | `cqoverdownload.sanguosha.com/upd/sanguosha_traditional_small` | `versionPlus` |
| 其它 | `xxxxx`（占位，不可用） | 未设置 |

### URL 形状

`Update/UpdateScene.js:567-577`：

```text
http://{updateAddr}/index.php?do={verApiName}.check&data={JSON}&client_update_ver=2
```

注意两点与业务请求不同：

1. `data=` 是**未编码**的 JSON（`UpdateScene.js:573`）。
2. 末尾直接跟 `&client_update_ver=2`。
3. **没有** `ingor_encrypt` / `sign` / `token` 等公共字段。

### 请求字段

`Update/UpdateScene.js:686-692`：

```json
{
  "cpp_version":      "xsc.Tools.Jsb.getOriResCode()",
  "app_indentify":    "xsc.app_indentify",
  "resource_version": "this._getCheckCode()",
  "channel":          "xsc.app_channel",
  "deviceId":         "xsc.Tools.Jsb.getDeviceId()"
}
```

### 响应字段

`Update/UpdateScene.js:696-737` 读取：

| 字段 | 用途 |
|---|---|
| `resource_version` | 新资源号 |
| `resource_version_show` | 展示用版本名 |
| `download_url` | 下载地址 |
| `filesize` | 大小（`parseInt`） |
| `md5` | 校验值 |
| `tips` | 下载提示文案 |
| `is_cpp_update` | 是否要求整包更新 |
| `file_name` | 下载文件名，**缺省为 `"unknow"`** |
| `cpp_update_fun.type` / `.val` / `.url` | 整包更新方式（跳商店或跳 WebView） |
| `result` | 真值 → 走下载流程；假值 → 直接进登录 |

关键分支（`UpdateScene.js:720-737`）：

- `is_cpp_update` 为真 → 整包更新状态机，`type` 决定跳商店还是开 WebView。
- 否则 `result == true` → 资源下载流程。
- 否则 → `Step_Update_EnterLogin`，启动 `main_game`。

XBHR 失败时（`UpdateScene.js:738-746`）也会进入登录，错误信息暂存到 `xs.pendingUpdateXhrError`。

**没有原服回包样本**：这条请求的响应值只能从客户端读取行为反推键名，
真实取值、`result` 的原始语义和下载服务器行为均不可恢复。

## 3.2 公告 `menu.notice`

| 项 | 值 | 证据 |
|---|---|---|
| 路径 | `/index.php?do=menu.notice` | `Cfg/Url.js:65` |
| 封装 | `requestAnnouncementRead` | `Tools/Net.js` |
| 调用点 | `Views/Dialog/AnnouncementDialog.js:313` `readDataFromServer` | — |
| 请求字段 | `product_line`, `channel_id`, `type`, `server_id` | `AnnouncementDialog.js` |
| 响应字段 | `notice` | `AnnouncementDialog.js` |

`notice` 是一个 **JSON 编码的字符串**，解码后才是带 `title` / `content` 的数组
（见 [../PROTOCOL.md](../PROTOCOL.md)）。原文正文不可恢复。

## 3.3 账号取服 `account.index`

| 项 | 值 | 证据 |
|---|---|---|
| 路径 | `/index.php?do=account.index` | `Cfg/Url.js:120` |
| 封装 | `requestGetServerList` | `Tools/Net.js` |
| 主机 | `ServerAddrsMap.NormalServer.domain` | `Cfg/Url.js:272-320` |

请求字段（字节码）：`uid`, `logintype`, `app_indentify`, `extra`, `sessionId`, `session`。

响应字段（字节码）：`server_list`, `server_logined_list`,
`account_info.account_uid`, `server_params`, `token`, `user_auth`。

每个服务区条目消费 `server_title`, `server_url`, `server_id`, `server_status`；
`server_status` 按字符串 `"1"`（满）、`"2"`（新）、`"3"`（爆满）、`"4"`（维护）取标签
（见 [../PROTOCOL.md](../PROTOCOL.md) 与 `Views/ServerSelectView.js`）。

三种登录来源都走同一响应处理：`LoginScene_AnySdk.js:440`（AnySDK）、`:685`（游客）、`:701`（边锋）。

**原服字段值无样本**：`token` / `user_auth` 的产生与校验方式不可恢复。

## 3.4 账号绑定与实名

| 动作 | 路径 | 封装 | 请求字段 | 证据 |
|---|---|---|---|---|
| `account.bindWithBf` | `/index.php?do=account.bindWithBf` | `requestBindingBFAccount` | `uid`, `sessionId` | `Views/Dialog/BindingDialog.js:318` |
| `account.bindWithFacebook` | `/index.php?do=account.bindWithFacebook` | `requestBindingFBAccount` | `uid`, `sessionId` | `Scene/Setting/SettingScene.js:233` |
| `account.bindWithEasysdk` | `/index.php?do=account.bindWithEasysdk` | `requestBindingEasyAccount` | `uid`, `easy_uid`, `session_id` | `Scene/Setting/SettingScene.js:259` |
| `account.chgAccountInfo` | `/index.php?do=account.chgAccountInfo` | `requestRecordPhoneNum` | `uid`, `mobile_num` | `Views/Dialog/BindingTelDialog.js:131` |
| `idcard.save` | `/index.php?do=idcard.save` | `requestAutonymApprove` | `user_id`, `user_name`, `idcard` | `Views/Dialog/IdCardBindingDialog.js:171` |
| `idcard.getCode` | `/?do=idcard.getCode` | `requestAuthenticationCode` | `user_id`, `mobile` | `Views/Dialog/VerificationTelDialog.js:114` |
| `idcard.saveMobile` | `/?do=idcard.saveMobile` | `requestSaveMoblieTel` | `user_id`, `mobile`, `mobile_code` | `Views/Dialog/VerificationTelDialog.js:136` |

这些动作的响应根字段在静态提取中**没有被读取**（`idcard.saveMobile` 除外，它读 `result`）。
业务结果走 `cmn` 与错误码 `e_1000`（`Views/Dialog/IdCardBindingDialog.js:189`）。

## 3.5 推送与激活

| 动作 | 路径 | 封装 | 触发时机 | 证据 |
|---|---|---|---|---|
| `notify.activate` | `/?do=notify.activate` | `requestCheckWanPuActive` | 登录初始化、升级弹窗出现时 | `Profile/GameData/Mgr.js:139`, `Views/Dialog/UsrUpgrade.js:128` |
| `user.save` | `/index.php?do=user.save` | `requestGeTuiSave` | 登录初始化 | `Profile/GameData/Mgr.js:137` |

两者都没有显式请求字段与响应字段读取——是**纯副作用调用**。

## 3.6 配置下发通道 `map.getConfig`

这是本协议里**唯一一条把服务端内容落到客户端的通道**，值得单列。

它不是 `Cfg/Url.js` 里的条目，也不是独立的 `Tools/Net.js` 封装——
URL 在函数体里就地拼接（`Tools/Net.js:1523` 与 `Tools/Net.js:1620` 附近）：

```text
http://{游戏服 domain}/{param.download_url}      (requestSGSConfig, 正式路径)
{param.url 或默认 dev 主机}/?do=map.getConfig&data={"is_download":"1","time":<毫秒>}
                                                 (requestSGSConfigForTest)
```

### 触发链

```text
user.login 返回 result:false 且 error_code == "e_10011"
  -> 取 params.download_url
  -> xs.Tools.Net.requestSGSConfig({ download_url: ... }, ok, err, this)
  -> GET http://{domain}/{download_url}   responseType = "arraybuffer"
  -> data.writeDataToFile({可写目录}/Sanguosha/ExcuteDir{resCode}/_jsc/data_cn_jsc/plan/download.zip)
  -> 原生 Cfg.unZipFile("zip|目标目录")
  -> 成功后回调里 xs.Tools.Sys.requireCfgFilesGeneratedByServer() 并重发 user.login
```

证据：`Scene/Login/LoginScene_BfSdk.js:249-262`（其余五个 SDK 变体同形）、
`Tools/Net.js:1564-1656`（`requestSGSConfig`）。

### 关键细节

| 细节 | 值 | 证据 |
|---|---|---|
| 响应类型 | `arraybuffer`（二进制，不是 JSON） | `Tools/Net.js:1656` |
| 落盘文件名 | `download.zip` | `Tools/Net.js:1519` |
| 解压 | 原生 `Cfg.unZipFile`，参数 `"zip路径|目标目录"` | `Tools/Net.js:1544` |
| 目标目录 | `{可写路径}/Sanguosha/ExcuteDir{resCode}/_jsc/data_cn_jsc/plan` | `Tools/Net.js:1507-1517` |
| 覆盖范围 | `Cfg/headers.js` 里 `files_generated_by_server` 的 50 个路径 | `Cfg/headers.js:45-96` |
| 测试函数默认主机 | `http://10.225.254.48:8090/sanguosha_new`（开发内网） | `Tools/Net.js:1521` |
| 请求字段（测试路径） | `is_download="1"`, `time` | `Tools/Net.js:1523` |

`download_url` 是**相对路径**（拼在游戏服 domain 之后），不是完整 URL。
这一点从 `Tools/Net.js` 的拼接方式可直接读出。

配置表的清单与交叉核对见 [08-config-domains.md](08-config-domains.md)。

## 3.7 本地新增（非原版协议）

`/auth/register` 与 `/auth/login` 是本重建工程为替代已移除的边锋 SDK 而新增的 HTTP 接口，
**不属于原版协议**，详见 [../PROTOCOL.md](../PROTOCOL.md)。
不要把它们与上面任何 `do=` 动作混为一谈。