# 登录前协议分析（版本 723，资源号 775）

游戏内的新手教程、招募、副本战斗和收益字段见 [GAME_PROTOCOL.md](GAME_PROTOCOL.md)。

本文之后的**模块化全量协议档案**在 [docs/](docs/README.md)：244 个 `do=` 动作、
逐字段带 `文件:行号` 证据的端点参考、`cmn` 数据模型全集、传输层与封套说明。
本文保留其叙述价值；逐字段可核对的部分以 docs/ 为准。原版游戏服务器目前已关闭，因此该档案按客户端字节码、资源和本地离线验证整理，不包含原服成功抓包或不可观察的原版服务端算法。

证据等级：**字节码**指从原包 `Resources/assets/src_jsc/*.jsc` 反汇编再恢复的调用与字段；**实机**指 `artifacts/device-validation/rebuilt-723-startup.log` 的真实请求；**模拟**指为了在本地验证界面而设计的响应值，尚无原服务端报文佐证。`ReconstructedJS/` 是近似恢复的代码，不等同于原始源码。本轮未取得原服成功响应，也未证实完整服务端协议。

## 从开机到选服

1. 原版 C++ `LogoScene` 先显示边锋过场，再运行恢复的 `main.js`；实机日志中可见 `LogoScene::showLogoBegin`、`showLogoFinished`。`50004` 启用原版 `UpdateScene`，发出 `versionPlus.check`。[更新请求代码](../ReconstructedJS/src_jsc/Update/UpdateScene.js)（字节码 + 实机）
2. 更新回包 `result: false` 且 `is_cpp_update: false` 时，原版状态机转向 `Step_Update_EnterLogin` 并启动 `main_game`。其余下载字段虽被读取，不进入这条分支；本地回包回显资源号 775。（字节码；具体响应值为模拟）
3. `LoginScene_BfSdk` 在发布模式的首次启动展示原版玩家协议，调用 `menu.notice` 获取正文；协议关闭后展示原版账号/游客登录弹窗。[登录场景](../ReconstructedJS/src_jsc/Scene/Login/LoginScene_BfSdk.js)、[公告弹窗](../ReconstructedJS/src_jsc/Views/Dialog/AnnouncementDialog.js)（字节码）
4. 原版注册/登录按钮调用 `JsbConnecter.invoke("BfSdk", "regis"/"login", "账号|密码")`；原版 `cpp2jsb.js` 接收 `and_bfsdk_register`/`and_bfsdk_login` 成功或失败回调。因渠道 SDK 已移除，本地桥接把按钮请求通过 HTTP POST 送到 Rust 账号服务，再触发**相同的原版回调**。这只注册本地账号，并不能使用运营方的旧边锋账号。（原版按钮/回调为字节码；HTTP 桥接为本地设计）
5. 原版账号登录成功回调携带 `sessionKey`，随后用 `logintype:2`、`extra.sessionId` 调 `account.index`；服务端验证会话后返回服务区。游客 `logintype:1` 默认被服务端拒绝，可在配置中放开。成功回包经 `Views.Mgr` 的 `result` 判断，填充 `UserCfg` 和 `UserLoginInfo`；原版 `ServerSelectView` 读取 `server_list` 和 `server_logined_list`，按两列排版。选中某个服务区写入 `server_title/server_url/server_id`。[取服](../ReconstructedJS/src_jsc/Tools/Net.js)、[弹窗](../ReconstructedJS/src_jsc/Views/ServerSelectView.js)（字节码）
6. 点击“进入游戏”向选中 `server_url` 发 `user.login`；本地实现会创建或恢复账号 × 区服角色快照、教程里程碑、地图和酒馆状态。服务区列表仍使用本地 `servers.json`，不调用已下线的渠道服。（协议字段为字节码证据；响应值为本地设计）

## HTTP 契约

原版更新/选服/公告为 HTTP GET，`do` 指定动作；`data` 为 JSON 对象。`Views.Mgr` 的常规请求对 JSON 做 URL 编码，追加 `ingor_encrypt=1`、`sign`，可能还有 `zlib=1`；服务端当前忽略签名并兼容这些参数。原版更新检查直接拼接未编码 JSON，尾随 `client_update_ver=2`；实机此前观测到：

```text
http://cqzj.sanguosha.com/sanguosha_anysdk_2.2.6/index.php?do=versionPlus.check&data={"cpp_version":"775","app_indentify":"50004","resource_version":"775","channel":"120009","deviceId":""}&client_update_ver=2
```

| 动作 / 原主机路径 | 请求 `data`（字节码） | 客户端必读响应字段（字节码） | 本地模拟 |
|---|---|---|---|
| `versionPlus.check` / `cqzj.sanguosha.com/sanguosha_anysdk_2.2.6/index.php` | `cpp_version`, `app_indentify`, `resource_version`, `channel`, `deviceId` | `result`, `resource_version`, `resource_version_show`, `download_url`, `filesize`, `md5`, `tips`, `is_cpp_update`; 有更新时还读 `cpp_update_fun` | 返回 `result:false`, `is_cpp_update:false`，表示无更新。**尚未捕获原服回包**。 |
| `menu.notice` / `wypwd.sanguosha.com/public/sanguosha_account/index.php` | `product_line`, `channel_id`, `type`, `server_id`，加基础参数 | `result:true`，`notice` 是一个 **JSON 编码的字符串**；解码后为具有 `title`, `content` 的数组 | 显示标明本地重建的说明，**不是原运营方玩家协议正文**。 |
| `account.index` / `wypwd.sanguosha.com/public/sanguosha_account/index.php` | `uid`, `logintype:1`（游客），`app_indentify`, `extra:[]`, `channel`, `channel_id`, `data_acquire:{channel,platform,udid}`，加基础参数 | `result:true`, `account_info.account_uid`, `server_list`, `server_logined_list`, `server_params`, `token`, `user_auth`；每个服务区读 `server_title`, `server_url`, `server_id`, `server_status` | 根据 `servers.json` 生成 N 个服务区；游客 ID 为本地哈希，`server_logined_list` 为空；**无原服字段值样本**。 |

账号取服时 `logintype:2`，`uid:"123"`（原版固定值），`extra:{sessionId:...}`，不能信任 `uid` 来识别账号。本地服务按会话哈希查询 SQLite，过期或无效时只返回 `result:false`；游客默认也返回 `result:false`。原版登录按钮之前的本地桥接接口如下，均是**新设计**，不是原运营方协议：

| 路径 | 请求 | 成功 | 可预期错误 |
|---|---|---|---|
| `POST /auth/register` | `{"username":"...","password":"..."}` | `{"result":true}`，原版注册成功回调后关闭注册框 | `{"result":false,"error_code":"registration_failed","msg":"..."}` |
| `POST /auth/login` | 相同 JSON | `{"result":true,"sessionKey":"..."}`，进入原版 `and_bfsdk_login` 回调 | `{"result":false,"error_code":"login_failed","msg":"..."}` |
| `POST /auth/logout` | `{"sessionKey":"..."}` | `{"result":true}`；撤销对应本地会话 | 无效令牌也按幂等成功处理 |

预期的认证失败使用 HTTP 200 加 `result:false`，因为当前旧版原生 XHR 对非 2xx 直接丢弃回调。JSON 响应中的非 ASCII 字符会转义为 `\uXXXX`，避免此设备上旧 JSB 把原始 UTF-8 当 Latin-1 渲染。更新请求在**仅访问本地服务时** URL 编码 `data` 参数，以兼容 Rust HTTP 解析器；解码后 JSON 内容不变。

`server_status` 由原版视图按字符串 `"1"`（满）、`"2"`（新）、`"3"`（爆满）、`"4"`（维护）决定标签；配置中的每个 `server_url` 都落到 `/game/{server_id}/index.php`，由游戏服校验区服、会话和账号归属。

## 新手教程状态闭环

里程碑同步只解决"服务端记住走到哪一步"，不足以让教程跑通：客户端在若干步骤上会**直接解引用服务端下发的实体**。
本地服务因此补上了按账号 + 按区服的玩家状态存储（`src/player.rs`、`src/db.rs`），以及教程业务闭环（`src/api/business.rs`）。

### 客户端真正需要什么

| 步骤 | 请求 | 客户端对响应的硬性要求 | 证据 |
|---|---|---|---|
| 10000 | `user.chooseTeam` | 无（回调忽略响应），但玩家必须有武将 | `Scene/GeneralSelect/GeneralSelectScene.js:225` |
| 20000 | `user.chgNickname` | 无 | `Views/ChangeName.js:99` |
| 30000 | `dungeon.fight` | `fight_info` + `fight_result.success` + `map_info` | `Views/Dialog/DungeonDetail.js:321` |
| 40000 | `wine.wine` | `reward_info.general[0].id` **非空**，且该实体已在 `cmn.general_info` 落地 | `Scene/Store/ToastView.js:462` |
| 50000 | `team.chgBattleTeam` | 无（回调忽略响应），但槽位实体必须属于本账号 | `Scene/TeamBuild/TeamBuildScene.js:1190` |
| 60000 | `dungeon.fight` | 同 30000；之后背包必须有礼包、装备页必须有装备 | `Scene/Bag/BagScene.js:50`、`Views/Table/EquipmentTableView.js:12` |
| 70000 | `item.use` | `add_list` 非空（奖励弹窗） | `Tools/Net.js:63-131` |
| 80000 | `general.setEquipment` | 无（回调忽略响应），但装备归属要经 `cmn.equipment_info` 一致 | `Scene/TeamBuild/TeamBuildScene.js:1259` |

第 40000 步是此前半成品状态下**必然报错**的位置：`reward_info.general` 为空数组时，
`ToastResultView.init` 取 `reward_info.general[0].id` 会拿到 `undefined`，
再用它查 `Generals.getById(...)[0]` 得到空，随后调用 `createCard_Toast()` 抛异常。

### 服务端做了什么

- **存储**：同一 SQLite 使用 `accounts / sessions / tutorial_progress / player_profiles / player_generals / player_items / player_equipment / player_team / player_dungeons / player_counters / resource_ledger / request_dedup / fight_records / wine_state / schema_migrations` 等表，玩家表按 `(principal, server_id, ...)` 隔离。
- **实体主键**：每玩家一个计数器，从 900000000 起递增。客户端只把 `pk_id` 当不透明字符串比较或查表，
  但为了不和随包配置的六位数字 ID 混淆，重建值刻意取更大的数字段。
- **幂等**：成功的写请求在 24 小时内按“动作 + 规范化请求 JSON”指纹重放原回包；同款武将允许有多个不同 `pk_id`，重复通关的普通收益正常结算，礼包与装备只在首次通关发放。
- **拒绝而非假装成功**：未重建的端点返回 `not_implemented`，且**不写里程碑**。
  只有业务处理成功后才落 `step`，所以被拒绝的请求不会把教程推进过去。
- **归属校验**：`team.chgBattleTeam` 与 `general.setEquipment` 都要求目标实体属于当前账号 + 当前区服，
  否则返回 `invalid_general` / `invalid_equipment` 且不落库。

### 发放内容是本重建工程的设计

`config.toml` 的 `[tutorial]` 集中保存新手流程中所有本地设计规则：起始资源、关卡、消耗、奖励、招募次数/价格、发放内容和战斗动画数值。**这些不能证明是原版服务端规则**——原服的新手余额、随机池、概率、掉落与伤害不可观测。客户端可核对的值由测试直接与随包数据比对：新手初始武将列表来自 `sgs_global_conf.js`，章节回退 ID 来自 `Tools/CfgData.js`，等级 1 体力/气力上限来自 `sgs_user_level_conf.js`，被引用的武将/礼包/装备 ID 必须存在于对应配置表。

| 配置项 | 默认值 | 来源表 |
|---|---|---|
| `recruit_general_id` | `100000` | `sgs_generals.js`（278 条） |
| `gift_item_id` | `410001` | `sgs_item.js`（`item_type = "1"` 礼包，3091 条） |
| `equipment_id` | `200000` | `sgs_equipments.js`（134 条） |
| `first_dungeon_id` / `second_dungeon_id` | `50000101` / `50000102` | 地图表在客户端包内为空；这是本地创建的关卡 ID。章节 ID `500001` 匹配客户端回退配置。 |
| `starting_power` / `starting_energy` | `150` / `12` | 默认取客户端等级 1 `max_power` / `max_energy`；原服实际初始余额未知。 |
| 关卡卡面、评级、建议等级、扫荡价格 | `dungeon_card_id`, `dungeon_grade`, `dungeon_suggest_level`, `dungeon_item_price` | 地图服务端数据缺失时的本地显示值，全部可在 `[tutorial]` 调整。 |
| `dungeon_power_cost` / 副本奖励 | `5` / `100` 铜钱、`10` 玩家经验、`10` 武将经验 | 本地兼容规则，不是原服数值。 |
| 酒馆价格、免费次数 | `[tutorial]` 可配置 | 本地兼容规则；目前只开放金酒杯单抽。 |

体力和气力字段不能混用：客户端 `getPlayerCurTiLi()` 返回 `user_power`，`getPlayerCurQiLi()` 返回 `user_energy`；`Dungeon` 从 `dungeon_power` 读取体力消耗。因此副本会从持久化的 `user_power` 扣体力，保留 `user_energy`。旧实现用队伍人数合成 `user_power` 并扣 `user_energy`，schema v4 已修正这两个问题。

第 10000 步的武将不需要配置：客户端自己从 `FreshmanChooseGeneralId`（`["121018","131006","141007","121013"]`）里选一个，
把**静态配置 ID** 发上来，服务端按它建实体。

### 地图也是服务端数据

`sgs_map_conf.js` 在包内是**空数组**，且在 `Cfg/headers.js` 的服务端下发清单里，
所以章节与关卡 ID 本来就由服务端提供。重建服务端给出第一章 `500001` 与两个关卡
`50000101` / `50000102`；选 `500001` 的依据是
`Views/Dialog/DungeonView.js` 把教程引导标签绑定在该 map id 上（见 [GAME_PROTOCOL.md](GAME_PROTOCOL.md)）。

### 测试

`cargo test --locked` 当前为 22 项，其中 `full_tutorial_walkthrough_creates_the_state_each_step_consumes`
按 10000 → 20000 → 30000 → 40000 → 50000 → 60000 → 70000 → 80000 的顺序走完整条链，
断言每一步消费的状态确实存在、越权请求被拒、重复通关不重复发放、重连后进度与实体都还在。

## 运行与验证

在 `sgscq-reconstruction/ServerProject` 下运行 `cargo run --release -- config.toml`。`config.toml` 配置监听端口、SQLite 文件、服务区配置路径、游客开关（默认 `false`）和会话寿命；`servers.json` 增删区域、设置状态。配置更改后重启进程生效。SQLite 自动创建于 `data/accounts.sqlite3`，首次创建的数据目录为权限 0700，数据库为 0600；不要删除它。`cargo test` 运行账号持久化和 HTTP 链路测试。

服务默认仅监听 `127.0.0.1:18723`，USB 调试运行 `adb reverse tcp:18723 tcp:18723` 后安装 `ClientProject/proj.android/sgscq-rebuilt.apk`；拔掉 ADB 或重启会失去这条端口映射。若修改端口，还须同步客户端 `Resources/assets/jsb_compat.js` 中的 `reconstructionServerHost` 并重建 APK。当前阶段 1–6 的实机验证状态见 [server-implementation-progress.md](docs/server-implementation-progress.md)。

### 请求日志

`config.toml` 的 `[log]` 段控制请求日志，默认 `full`：

| 级别 | 输出 |
|---|---|
| `off` | 不记录 |
| `summary` | 每个请求一行：UTC 时间、请求号、状态码、`result`、动作、耗时、失败时的 `error_code`/`msg` |
| `full` | 原样打印请求 `data`、请求体和完整响应体，不截断 |

日志不做字段脱敏；`full` 会显示原始请求参数及完整响应，查询串本身不打印，`data` 以单独字段输出。日志装在最外层中间件上，所以 404 和非法 JSON 也会留痕。

把服务端和 `adb logcat` 的时间轴对齐，就能看出客户端在两边各自走到哪一步。`full` 日志可能包含账号口令、会话值和玩家输入内容：

```sh
cargo run --release -- config.toml | tee /tmp/server.log
adb logcat -d > /tmp/device.log
```

通过玩家协议弹窗后在原版账号弹窗注册新账号，再输入该账号密码登录，点击“更换服务区”查看和切换 N 个区域。原版账号框仍在，原版流程不再自动重放保存的账号密码，旧的本地密码记录在弹窗初始化时清空。游客默认不可取服。**这是本地新账号体系，不是对运营方原有账号的迁移或认证。**服务端使用 Argon2id + 随机盐保存密码哈希；随机会话只在 SQLite 中保存 SHA-256 哈希，有效期由配置控制；连续错误 5 次冻结该账号 5 分钟。只允许在回环地址 + ADB 映射使用：当前 Android 链路为明文 HTTP，不能直接暴露到局域网或公网；部署到其他网络前必须增加 TLS、请求限流与运维备份。当前只完成新手纵向链的首关、副本、单抽、礼包和装备；实现范围及未验证项见进度文档，不代表 244 个动作都已可用。

局限：原版 CDN 是否在线未确定；更新页曾在 `Step_Request_Update_Info_Waiting` 长时间等待，旧主机不可达、超时和 JS 恢复偏差尚未分别确认。玩家协议全文和原账号服报文尚未抓取；上表不能视为官方协议规范。
