# 交给执行 AI：按游玩顺序重建《三国杀传奇》完整游戏服务端

你在 `/home/inkbottle/othersrc/android_playground/sgscq-reconstruction` 工作。目标是以 `ServerProject/docs/` 的**客户端协议证据**为依据，继续完善现有 `ServerProject/`，做出支撑重建客户端**所有可用游戏功能**的、持久化且健壮的服务器。不要只交文档或一堆空成功响应。以用户实际能玩通的纵向流程交付，最后再完成全端点覆盖。保持 Rust/Axum/SQLite 现有技术栈，除非有经测试证明必须更换的原因。

用户已决定客户端剔除废弃渠道、广告、支付、统计和数据收集。服务端同样不重建原厂渠道认证、真实货币支付、广告追踪与遥测；**账号、选服、游戏内经济与所有游戏玩法仍要实现**。支付相关接口如果客户端还会触及，应明确声明功能不可用，并关闭对应 UI/能力，绝不能伪造支付成功或发货。

## 一、先读资料：这是客户端消费契约，不是原服源码

先阅读 `ServerProject/docs/README.md`、`00-methodology.md`、`01-transport.md` 到 `09-config-fields.md`、`90-blackbox.md`，再读 `endpoint-index.md`、`data-model.md`、`request-fields.md`、`response-fields.md`、`ref/*.md`、`protocol-inventory.json`、`config-domains.json`，以及 `ServerProject/PROTOCOL.md` 和 `GAME_PROTOCOL.md`。重要结论汇总如下，实施前仍须按当前文件核验：

| 范围 | 已有证据与实现含义 |
|---|---|
| 协议规模 | 当前机器清单有 **244 个 `do=` 动作、243 个 URL 键、236 个 `Tools/Net.js` 封装、642 个静态调用点、81 个模型、30 个 GameData 管理器**；`ref/` 当前有 **52 个业务域参考页**。文档首页仍写旧的 392 调用点、49 页等数字；先重跑提取器并对账，不得直接用旧数字作验收。 |
| 传输 | 普通业务请求是 HTTP GET，`do=` 在路径查询串，JSON 参数在 `data=`；常见模式有 `ingor_encrypt=1`（原拼写）、`zlib=1`、`sign=MD5(未编码 JSON + 客户端常量)`。公共字段可含 `user_id`、毫秒 `time`、`token`、`user_auth`、教程里程碑 `step`。`versionPlus.check` 的 URL/编码规则不同，须单独处理。签名盐公开在客户端，**签名不能代替身份认证**。`zlib=1` 对响应的实际影响要通过客户端/设备验证，不能只凭参数名推断。 |
| 响应 | 客户端先看 `result` 真值，成功后合并 `cmn`，再调业务回调；失败读 `error_code`、`msg`。`cmn` 的 Map 用 `update_list`/`del_list` 按玩家实体 `pk_id` 合并；Replace 整表替换；Singleton 更新对象。`add_list` 负责展示奖励，**库存/进度必须由同次事务持久化并用 `cmn` 反映**。`user_level_up_info` 等根字段可能触发 RandEvent 并延迟业务回调。 |
| 首次进主城 | `user.login` 响应里的 `cmn.user_info.freshman_step` 控制教程恢复；`map_info`、`wine_info`、`user_auth` 在登录处理链中使用。**第一次成功响应就要有形状正确的 `cmn.push`**：至少 `climb/training/vipstore/ladderstore` 各含 `num`，`party` 为数组；缺失会在主城构造时抛异常。这是已发现的客户端约束，见 `07-push.md`。 |
| 教程 | 细粒度步骤存客户端本地；服务端只在 10000、20000、…、80000 八个里程碑随业务请求收到 `step`。`00301` 的开场新手战斗由 `Cfg/Fight/NewPlayerFight.js` 本地脚本播放，**不请求服务器**。第一次普通副本战斗才走 `dungeon.fight`。 |
| 战斗 | `fight_info` 是可播放动作流，`fight_result` 是独立的权威结算；胜负、星级、掉落不会由客户端从动作流重算。服务端要保证两者一致，且同一结算中的体力、经验、道具、地图进度原子更新。`fight_info` 的完整字段和战斗入口见 `06-fight.md`、`GAME_PROTOCOL.md`。 |
| 静态配置 | 包内配置域见 `08-config-domains.md` / `config-domains.json`：当前统计 51 张配置表，约 50 条可由服务端覆盖的配置路径。`sgs_map_conf` 在包内为空；章节与关卡数据可能必须由服务端设计/下发。配置 ID 与玩家实体 `pk_id` 不得混用。缺表、空表及配置版本应显式处理，不能随意填数字。 |
| 证据边界 | **原运营服已停服，没有原服成功回包样本**。文档可证明客户端会发送、读取什么，不能证明原版招募概率、伤害、掉落、风控、token 算法、数值平衡。你设计这些规则时标为“本地重建设计”，存版本和依据；不得称其为“原版算法”。重建 JS 是近似反编译，遇到字段/控制流疑点，应与原 `.jsc`、资源和设备日志交叉验证。 |

协议文档的生成链为 `python3 tools/extract_protocol.py` → `python3 tools/build_protocol_docs.py`、`python3 tools/extract_config_domains.py` → `python3 tools/check_protocol_docs.py`。生成页不要手工改；改变提取逻辑后重生成并解释计数差异。每个已确认的端点和字段保留 `文件:行号` 证据；客户端没有读取的字段可按本地设计增加，但必须清楚标注。

## 二、继承当前服务器，先做真实基线

现有 `ServerProject/src/` 已有 `config`、`db`、`accounts`、`tutorial`、`player`、`protocol`、`api`、`logging` 分层；有 `/auth/register`、`/auth/login`（**本工程新增，不是原版 `do=` 协议**）、`versionPlus.check`、`menu.notice`、`account.index`、`user.login` 和教程中若干业务动作。`api/business.rs` 当前只分发 `user.chooseTeam`、`user.chgNickname`、`wine.wine`、`team.chgBattleTeam`、`dungeon.fight`、`item.use`、`general.setEquipment`、`user.getPushData`；其余多为明确的 `not_implemented`。`api/tests.rs` 已有教程链测试。这些是**代码盘点，不是质量保证**：例如改名当前回空 `cmn`，玩家实体表对静态配置 ID 设唯一约束，真实游戏是否允许多份同款实体需要核查。

先检查 `AGENTS.md`、`git status --short`、现有配置与数据库；记录当前 commit、未提交改动、监听端口、测试结果。不要清理/覆盖其他人的工作。运行 `cargo fmt --check`、`cargo test --locked`、`cargo clippy --all-targets --locked -- -D warnings`（已有基线失败也如实记录），并用现有测试中的完整教程请求序列建立 fixture。**不要为了让测试绿而修改断言以迁就错误实现。** 本地默认地址为 `127.0.0.1:18723`，客户端还依赖三次 XHR 尝试和只带关闭按钮的错误窗；服务端不能让失败请求意外返回空成功。`ServerProject/config.toml` 当前有 `show_credentials = true`，会打印明文口令；第一阶段应改成安全默认并测试脱敏，不能在交接日志里记录真实账号凭据。

## 三、工作总账：244 个动作逐一归类并验收

创建 `ServerProject/docs/implementation-matrix.csv`（或结构化 JSON 并生成 CSV），从机器清单**自动**导入全部动作，包括无静态调用点的动作。每行至少有：动作名、原路径和请求编码、调用场景/游玩阶段、客户端证据链接、请求字段、成功/失败响应消费字段、`cmn` 变化、静态配置依赖、持久化实体、当前实现状态、处理类别、测试 fixture、设备验证结果、风险和下一步。每轮实施后由工具比较这张矩阵与 `protocol-inventory.json`，使缺失、新增和重复项一眼可见。

类别建议为 `GAMEPLAY_REQUIRED`、`CLIENT_BOOTSTRAP`、`LOCAL_REPLACEMENT`、`LEGACY_DISABLED`、`DEAD_OR_UNREACHABLE`、`UNKNOWN`。只有找到客户端路径与影响证据后才能判定 `LEGACY_DISABLED` 或 `DEAD_OR_UNREACHABLE`；未知项不计入完成。所有游戏玩法端点最终都要有真正的状态变化/查询语义和成功、失败测试。不能为了凑 244 个处理分支而对未知动作返回 `{"result":true,"cmn":{}}`。不在 `do=` 清单里的 `/auth/*`、配置 ZIP 下载、WebSocket/通知等按独立通道登记，避免“244 个都覆盖”却漏掉登录和配置路径。

## 四、数据库大致规划：分组由此确定，细节由你设计

继续使用 SQLite 起步，按**账号 × 区服 × 玩家**隔离。下表只规定责任边界，不规定列名、每条外键或精确表数；你要依据 `data-model.md`、`ref/*.md` 和配置表自己补齐字段、关系、唯一约束、迁移与索引，并给出 ER 图或表关系说明。不要直接把 `cmn` JSON 当唯一真相，也不要为了“纯关系化”拆出几百张无意义小表。客户端 Map/Replace/Singleton 是**响应合并语义**，不强制等于 SQL 表组织。

| 数据分组 | 主要职责与建议的概念表 |
|---|---|
| 身份和服务区 | `accounts`、`sessions`、`zones` 或只读区服配置、`players`/区服角色。区分账号 ID、角色 ID、客户端 `user_id`，认证凭据仅存哈希。保留注册/登录/注销、会话过期与多区服隔离。 |
| 进度和经济 | `guide_progress`、`map_progress`/`dungeon_progress`、`wallet` 或玩家资源余额、`resource_ledger`、`request_dedup`。记录体力、货币、星级、关卡次数/宝箱；经济变化可审计，重复请求不重复扣款/发奖。 |
| 持有实体与编队 | `player_generals`、`player_skills`、`player_equipment`、`player_items`、碎片/将魂、宝石/法宝等资产及 `team_slots`/副将关系。静态配置 ID 对应模板，玩家实体 `pk_id` 对应具体拥有物；**不要未经证据就禁止同配置 ID 拥有多份**。 |
| 战斗与养成 | `fight_records`/结算快照、招募/保底计数、技能升级、强化/熔炼/炼化、培养、进化、经脉、美人、神女等模块状态。共享战斗/奖励规则可复用，持久化按功能分开。 |
| 活动与日常 | `tasks`/领取状态、邮件与附件、签到或活动进度、商店库存/刷新计时、心愿/秘境/酒馆等计数。以服务端时间为准，避免客户端时钟决定奖励。 |
| 社交与竞赛 | 好友/仇敌/申请、聊天、排行榜/赛季、联盟成员与权限/仓库、公会战、天梯、跨服战、虎牢关等；需要跨玩家事务或可靠事件记录。单人链打通后再实现。 |
| 配置与运维 | `schema_migrations`、游戏规则版本/配置包元数据、必要的后台作业状态。与游戏无关的设备标识、广告画像、统计埋点不建表。 |

每个写操作明确事务边界：校验归属和余额 → 消耗/变更/发奖 → 教程里程碑 → 去重记录/结果快照，要么全部提交，要么全部回滚。当前处理器在业务返回后另写里程碑，需审计是否跨事务。客户端 XHR 可能自动重试三次，**可重试的修改动作必须幂等**；同一请求重复到达应返回同一业务结果，不重复招募、领奖、扣体力、发装备，同时不能把玩家随后故意再点一次误判为重试。设计有界请求身份/去重窗口，说明旧协议缺少显式 request ID 时的判定策略及局限。使用迁移版本和备份验证，把现有玩家数据迁到新结构；不要只靠 `CREATE TABLE IF NOT EXISTS` 处理字段变更。具体字段、外键、关系基数与索引由你在实施相应模块时确定并测试。

## 五、严格按游玩顺序实现纵向切片

每一阶段都要交付“请求到持久化到 `cmn` 到客户端可操作”的完整闭环，保留现有已通过的路径。阶段之间按依赖顺序推进；同阶段可调整小项，但要在进度报告说明理由。

| 阶段 | 玩家在游戏中的步骤 | 先完成的接口与状态 | 阶段验收 |
|---|---|---|---|
| 0. 协议与基线 | 启动当前客户端/服务端 | 完成矩阵、配置 ID 对照、HTTP 参数解析/签名兼容、ASCII JSON 返回、错误封套、账号身份校验、日志脱敏、迁移基线。`versionPlus.check` 的原样 JSON 与业务编码分开。 | 已有测试可重跑；错误请求不会被当作成功；敏感数据不进入日志。 |
| 1. 开机和选服 | 更新检查 → 公告 → 注册/登录 → 中间选服按钮 | `versionPlus.check`、`menu.notice`、本地 `/auth/*`、`account.index`，服务区列表、状态、地址、`token/user_auth`。游戏所需的账号流程替代渠道 SDK。 | 客户端出现真实登录与选服界面，能选区；重新登录同一区身份稳定，换区状态隔离。 |
| 2. 进入主城 | `user.login` → 初始化角色/地图/酒馆/红点 → 开场剧情 | 登录快照覆盖必要的 `cmn` 模型、`map_info`、`wine_info`、`freshman_step` 和首次 `cmn.push`；`user.getPushData`；配置 ID 与第一章入口。可用包内配置时先使用包内版本，确需 `map.getConfig` 时做有版本/哈希校验的下载。 | 新号和老号均能进主城，无 `pushData` 空值黑屏，重启后角色与进度不丢。 |
| 3. 教程前半 | 本地剧情 `99000201` → **内置**首战 `00301` → 选初始武将 → 改名 | 内置战斗由客户端负责，服务端不得伪造 `dungeon.fight`。实现 `user.chooseTeam`、`user.chgNickname` 的真实写库与响应，里程碑 10000/20000 的同步。 | 首战本地播放到结束；选择/改名后重新登录仍一致，昵称按客户端需要的根字段及 `cmn` 更新。 |
| 4. 第一副本 | 开地图/第一关 → 战斗 → 星级/掉落/解锁 | `map.getUserMap`、`dungeon.fight`，逐步扩展 `dungeon.fightBefore`（如果真实可达）、`dungeon.openBox`。从静态配置生成关卡/敌队；本地设计确定可播放动作流及独立结算，原子扣体力、发奖、改地图。 | 客户端完整播放、结算、返图；失败不发奖；重试不重复收益；`fight_info` 与 `fight_result` 一致。 |
| 5. 招募与编队 | 首次酒馆金色单抽 → 武将入库 → 更换上阵 → 第二关 | `wine.wine`、`wine.wineInfo`、`wine.wineGeneralInfo`、`team.chgBattleTeam` 与所需编队读接口，再次 `dungeon.fight`；里程碑 40000/50000/60000。 | `reward_info.general[0]` 能查到同响应 `cmn.general_info` 发的实体，编队变化与第二战可持续。招募规则标本地设计。 |
| 6. 背包和装备 | 打开背包 → 用礼包 → 穿装备 → 教程结束 | `item.getList`/必要背包查询、`item.use`、`general.setEquipment` 与所需装备状态；里程碑 70000/80000。 | 礼包只可消耗一次，奖励确实入库；装备归属和槽位一致；重启后教程完成且能自由操作。 |
| 7. 常规成长 | 玩家反复打图、扫荡、养将、强化装备、解锁新系统 | 先扩展 `map/dungeon`、`general/team/item/equipment/skill/combat`，再依等级/按钮实际解锁顺序做 `training`、`atlas`、`buddy`、`gem`、`magic`、`evolution`、`meridian`、`godness`、`beauty` 等。把共用消耗、奖励、战斗、权限规则提到小而清晰的服务层。 | 每个功能有一次成功、一次合法拒绝、一次重复/并发测试；不同角色/区服互不串数据。 |
| 8. 日常与经济 | 邮件、任务、活动、副本奖励、商店/兑换等 | `task/email/activity/festival/menu/mystery/wish/meeting/notify` 及游戏内商店、CDKey 等确实可用的接口；`forcepush` 的 42 个动作与 `cmn.push` 更新。真实货币的 `pay/payIos/product` 依用户决定禁用；不要让免费货币/道具商店随之失效。 | 红点、任务进度、邮件附件、活动冷却、购买/兑换在重登后保持一致；不能刷奖、负库存或重复领取。 |
| 9. 社交与竞赛 | 加好友、聊天、进联盟、挑战排行与各类 PvP/PvE | 按主城入口解锁顺序实现 `relationship/chat/union/rank/ladder/tower/hulao/warlord/ladderWar/ladderWarLocal/worldWar/worldWarLocal/unionWar` 等；多人共享状态有并发、权限与赛季规则。 | 至少两个真实账号互相操作；消息、联盟权限、匹配、战斗和结算可重连恢复，非法跨账号操作失败。 |
| 10. 长尾闭合 | 全部可用界面逐页检查 | 对 `ref/*.md` 剩余的每个玩法动作补齐；无调用点、内联 URL、配置下载、WebSocket/推送等分别复核。`LEGACY_DISABLED` 有安全结束流程，`UNKNOWN` 持续查证。 | 矩阵与清单逐项对账，所有游戏玩法端点有行为和测试；未实现项只能是经证明的废弃功能/不可达项，并在报告中明列。 |

上述阶段的接口清单是**执行优先级**，不是说某域只需实现点名的几个动作。某场景使用的读接口、前置配置和失败分支，须在同一阶段完成。功能是否可达以当前客户端、`ref/` 证据和设备操作为准，不得为凑阶段假设一个 URL 的业务意义。首章 `500001`、教程关卡和奖励 ID 可参考 `GAME_PROTOCOL.md` 与现有 `config.toml`，但这些数值是本地重建设计/客户端引导锚点，必须验证配置引用存在。

## 六、实现质量与验证标准

### 架构与 KISS

- 保留路由、传输/认证、业务规则、持久化、协议序列化、静态配置加载的清楚边界。将当前单文件 `api/business.rs` 随阶段增长拆成小模块；避免 244 个动作全塞进一条 `match`、一个巨大玩家表、每个接口复制一份 `cmn` 拼装。也不要先造插件框架、分布式消息队列或通用规则 DSL。选能维护的最简单结构。
- 领域状态用明确的 Rust 类型和校验函数表示；在系统边界把旧客户端的松散 JSON 转成类型，在响应层集中生成兼容 JSON。对必须保留的奇怪字段名（`app_indentify`、`ingor_encrypt` 等）写注释解释来源。注释说明**为何这样做、客户端证据和本地设计边界**；避免逐行复述代码。对外的模块、关键事务、复杂规则写简短文档和例子。
- 错误需区分：输入非法、认证失败、权限不足、规则拒绝、服务内部故障。客户端正常业务拒绝按实机可接收的封套返回；对这版原生 XHR，非 2xx 可能不交给 JS 回调，须在真实设备上验证 HTTP 状态策略。未知 `do=` 一律明确失败，不给空成功。
- 随包配置做可复现加载与校验：ID 引用完整、版本固定、缺表有明确降级或阻塞。用整数表示货币；时间/跨天统一时区策略；随机规则可注入种子用于测试，正式请求用可靠随机源。不要把客户端可改的金币、奖励、战斗胜负当作权威输入。

### 必须实际运行的测试

1. **协议契约**：每个动作至少有请求解析和成功/失败响应 fixture；按客户端直接读取的字段路径断言 JSON 类型、默认值、`cmn` 合并语义。fixture 标为“本地兼容回包”，不能标为原服样本。检验 URL 编码、签名、特殊字符、压缩协商、ASCII JSON、`ignoreRandEvent` 不上网、动态/内联 URL。
2. **状态和经济**：新号、老号、跨区、断线重登；无权限实体 ID、无效配置 ID、余额不足、库存为零、重复领奖/招募/战斗、同一请求三次重试、两请求并发、事务中途失败回滚。检查 DB 真值和响应 `cmn` 一致，并验证不重复扣除或发放。
3. **游玩链**：维护一套按第 1–6 阶段顺序的 HTTP 集成测试和可重复的设备脚本/操作记录，不能只在测试里手写一个假 `user.login` 就宣称客户端可玩。测试先创建账号、选区，再完整经过教程、首副本、招募、第二战、礼包和装备；每个里程碑重登一次。另做“清除 APK 本地数据后，以**同账号、同区服**重新登录”的实机回归：首次里程碑前可重播纯本地剧情；已成功落库的里程碑须从服务端 `freshman_step` 恢复，完成教程后不得从头重播。对比不同账号与不同区服，防止把进度串用。后续每个系统至少有一个跨请求闭环和失败路径。
4. **可靠性与安全**：请求大小/JSON 深度限制、异常字符、无效会话、过期会话、跨用户/跨区写入、并发写锁、数据库迁移/恢复、服务重启、敏感字段日志脱敏。`show_credentials` 默认关闭且不能由完整请求日志绕过。给本地 HTTP 明确边界：默认只监听 loopback，通过 `adb reverse` 使用；若要对外开放，另设可信 TLS/鉴权边界。
5. **运行门槛**：`cargo fmt --check`、`cargo clippy --all-targets --locked -- -D warnings`、`cargo test --locked`、协议文档检查、覆盖矩阵脚本全部通过；保存命令与退出码。设备可用时启动实际服务，通过客户端登录/游玩并抓 logcat 与服务日志验证；设备不可用时写 `NOT DEVICE VERIFIED`，不要把模拟 HTTP 测试写成实机通过。不要反复截图浪费 token；以日志和可复现操作为主。

测试既要覆盖协议形状，也要覆盖状态变化；只断言 `result:true`、JSON 可解析或端点存在，不算业务验证。发现客户端字段读法与文档冲突时，先追踪原始 `.jsc` 与恢复器错误，修复提取/反编译链再更新文档，不要靠无依据加字段凑过去。

## 七、每阶段交付和最终完成定义

在 `ServerProject/docs/server-implementation-progress.md` 记录：阶段、端点矩阵变化、数据库迁移、规则设计版本、测试命令及结果、设备操作/日志、尚未验证的问题。每阶段提交能启动的服务端、迁移、必要配置、测试和简明说明；不要用“规划完毕”代替实现。数据模型设计文档列出概念实体关系、最终表与索引、迁移路径、事务边界；**具体字段和表间联系由你依据端点证据决定**。任何下载的新工具或源码记录版本、来源与用途，优先使用用户提供的 `arch-netns-shell p8` 高速代理。

最终报告列出机器清单动作总数、`GAMEPLAY_REQUIRED` 已实现/已测数、`LEGACY_DISABLED` 与 `DEAD_OR_UNREACHABLE` 逐项证据、未解决数；给出从源码构建、迁移空库/旧库、启动、创建账号、选服和游玩验证的准确命令。`UNKNOWN` 或有可达游戏动作返回 `not_implemented` 时，不得宣布“完整”。不能证明原版数值/算法的部分，明确给出本地设计、测试范围和未来可调参数。不要提交含真实口令、会话令牌或设备标识的日志/fixture。
