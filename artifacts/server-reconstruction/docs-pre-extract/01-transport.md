# 01 · HTTP 传输层

证据：全部为**字节码**。核心实现是 `Views/Mgr.js` 的 `reqUrl` / `_reqUrlWithLoading`
与 `Tools/Net.js` 的 `addBaseParam`。

## URL 形状

所有业务请求都是 **HTTP GET**，动作放在 `do=` 查询参数里，参数整体放在 `data=` 里：

```text
http://{domain}{相对路径}&data={编码后的参数}&ingor_encrypt=1[&zlib=1]&sign={签名}
```

组装代码：`ReconstructedJS/src_jsc/Views/Mgr.js:139-238`

- 相对路径来自 `Cfg/Url.js`；有的以 `/` 开头（`/index.php?do=...`），
  有的直接是 `?do=...`，两种拼接结果都靠 `{domain}{path}&data=` 统一。
- `domain` 有三个来源：
  1. 选服后保存的游戏服地址（`xs.Profile.UserCfg.getGameAddr().domain`）；
  2. 账号/公告服地址表 `xs.Cfg.Url.ServerAddrsMap`（`Cfg/Url.js:272-320`）；
  3. 更新检查用完整主机（见 [03-update-and-account.md](03-update-and-account.md)）。

### 主机表（`ServerAddrsMap`）

按产品号与地区选择，`Cfg/Url.js:272-320`：

| 键 | 国内正式 | 台湾 | 开发 | 测试线 |
|---|---|---|---|---|
| `NormalServer` | `wypwd.sanguosha.com/public/sanguosha_account` | `cqoverwypwd.sanguosha.com/public/sanguosha_account` | `203.88.162.96:8081/test/sanguosha_account` | `10.225.254.113/test/sanguosha_account` |
| `PublicTip` | 同上 | 同上 | 同上 | 同上 |
| `Clock` | 同上 | 同上 | 同上 | 同上 |
| `WanPu` | `wypwd.sanguosha.com/public/wanpu` | 同左 | 同左 | 同左 |
| `GeTui` | `wypwd.sanguosha.com/public/getui` | 同左 | 同左 | `10.225.254.113/test/getui` |

更新检查另有独立主机表和 `GameAddrs` 列表，见 `Cfg/Url.js:9-18`。

## 参数编码

在 `Views/Mgr.js:164-213`：

1. `_paramStr = JSON.stringify(param)`
2. 若 `xs.urlEncrypt` 为真：`Base64(rc4(Constant_RC4_KEY, utf8(paramStr)))` 后 `encodeURIComponent`
3. 否则：`encodeURIComponent(paramStr)` 后追加 `&ingor_encrypt=1`（注意原拼写 `ingor`）
4. 若 `xs.zlib` 为真：再追加 `&zlib=1`
5. 追加 `&sign=` + 签名

`cfg.js:63-71` 的默认开关：

| 开关 | 默认表达式 | 说明 |
|---|---|---|
| `xs.urlEncrypt` | `(xs.release === true) && false` | 恢复配置下为假，走第 3 步 |
| `xs.zlib` | `true` | 恒为真 |
| `xs.urlSign` | `true` | 恒为真 |
| `xs.useToken` | `(xs.release === true) || false` | 决定是否带真实 token |
| `xs.use_statistic_params` | `xs.release || false` | 决定是否附 `statistic` |

## 签名

`Views/Mgr.js:183-189`：

```text
urlSign 为真：sign = MD5( 未编码的 JSON 串 + Constant_URL_SIGN_KEY )
urlSign 为假：sign = Constant_DEFAULT_URL_SIGN_KEY
```

密钥常量在 `Cfg/Constant.js:1619-1623`：

| 常量 | 值 | 用途 |
|---|---|---|
| `Constant_RC4_KEY` | `a21asdf23423ass456as4d2f12732asgghhjgfj` | URL 加密模式的 RC4 密钥 |
| `Constant_URL_SIGN_KEY` | `lW7xE3S2s5AEpZg2JAc1XAVsxABZZ5YP` | 签名盐 |
| `Constant_DEFAULT_URL_SIGN_KEY` | `Gs7MlXAZiI2YlbUYyZiSZBPQdQg1RuN` | 不签名时直接使用的固定 sign |

这两个密钥在 APK 内是明文常量——是**客户端侧可提取事实**，不代表原服如何校验。

## 调试变体（不影响线上请求）

`Views/Mgr.js:190-206` 在 `!xs.urlEncrypt` 时另外拼一条 `_test` 字符串：
`data=` 用**未编码** JSON，末尾同样带 `ingor_encrypt=1` 与 `sign`，
只交给 `xs.log_cmn("request", ...)`。这解释了为何实机日志里能直接读到可读 JSON。
线上真正发出的是 `_url`（`Views/Mgr.js:207-213`），其中 `data=` 是编码后的。

## 公共参数

两个地方会追加身份字段：

**`Tools/Net.js:308-336` 的 `addBaseParam`**

| 字段 | 取值来源 |
|---|---|
| `user_id` | `Player.getPlayer().getPlayerId()` |
| `time` | `new Date().getTime()`（毫秒） |
| `token` | `xs.useToken ? UserCfg.getToken() : ""` |
| `user_auth` | `UserCfg.getAuth()` |
| `step` | **仅当**当前引导步骤恰为 10000/20000/…/80000 之一时附加 |

**`Views/Mgr.js:398` 的 `reqUrl`** 会再调用一次 `addBaseParam`。
个别封装还会在 URL 层注入字段（例如 `requestLogin` 注入 `server_id`，见 `Tools/Net.js:340`）。

## 缓存

`Views/Mgr.js:146-150`：`_isClearCache` 默认为真，**只有** `chat.getMessage` 设为假
（聊天轮询不能吃缓存）。该标志被绑定进响应包装闭包（`Views/Mgr.js:322`）。

## 底层调用

最终通过 `xs.Utils.Net.reqAsync(url, readyFunc, errFunc)` 发出（`Views/Mgr.js:368`）。
`Utils/Net.js:7` 显示它是原生实现的薄封装。每个请求前后有统计埋点：
`xs.Tools.Statistic.beginLogPageView(tag)` / `endLogPageView(tag)`，tag 就是封装名。
