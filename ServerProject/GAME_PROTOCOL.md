# 游戏内协议与新手流程分析（版本 723 / 资源号 775）

模块化的全量协议参考在 [docs/](docs/README.md)：全部 240 个端点、
逐字段带 `文件:行号` 证据、`cmn` 数据模型全集、战斗与引导机制说明。
本文的流程叙述与 docs/ 的端点参考互补。

本文是对客户端可观察行为的兼容性档案，不是官方协议规范，也不声称完整复原了原版服务端。项目 ReconstructedJS/ 是从 SpiderMonkey v22 字节码反汇编后近似恢复的 JavaScript，不是官方源码。当前原版游戏服务器已关闭，无法取得原始成功抓包；文中没有把本地模拟回包写成原服报文。

## 证据等级与适用范围

| 标记 | 含义 | 能支持的结论 |
|---|---|---|
| 客户端字节码恢复 | 从原包 jsc 字节码反汇编并恢复调用 | 客户端请求字段、响应字段读取、状态迁移和界面依赖 |
| APK/本地资源 | 随包配置、剧情、图片和战斗脚本 | 本地关卡、剧情和固定教程战斗的内容 |
| 客户端消费契约 | 沿响应调用链确认字段被实际读取 | 重建回包的最低结构；不代表原服所有字段 |
| 本地离线验证 | 用重建服务生成回包并观察客户端 | 只能证明客户端接受测试回包 |
| 原服抓包 | 原始服务器成功响应 | 本轮不可用，原版服务器已经关闭 |

本轮范围为选区后进入游戏、user.login、新手教程状态、内置战斗、普通副本战斗、招募、礼包、编队、装备和收益展示。这里记录客户端侧可恢复的协议，不从客户端推断原服务端随机算法。

## 总体流程

    选择区并进入
      → user.login
      → cmn + map_info + wine_info 初始化
      → 读取 user_info.freshman_step
      → 本地 NewGuideCfg 决定教程步骤
      → 固定脚本新手战斗（不请求游戏服）
      → 初始武将、改名、普通副本
      → dungeon.fight（服务端提供战斗动作及结算）
      → 招募、编队、第二关、第二次副本
      → item.use、装备

客户端战斗表现与权威结果是分开的：普通战斗的动作流用于播放，fight_result.success、星级、收益和持久化状态由响应给出；客户端没有从动作或最终 HP 重新推导结果。

## user.login

游戏服请求路径：

    /?do=user.login

登录场景显式提交以下字段（app_indentify 是恢复代码中的原拼写）：

    {
      "account_uid": "账号服返回的账号标识",
      "app_indentify": "产品标识",
      "forcepush": true,
      "server_params": {},
      "token": "选服响应中的 token",
      "cfg_version": "客户端配置版本",
      "server_id": "所选区 ID"
    }

server_id 由公共请求包装器追加。一般游戏请求还会追加 user_id、毫秒时间戳 time、token、user_auth。新手教程进行中时，只有当前步骤恰为以下里程碑才附加 step：

    10000 20000 30000 40000 50000 60000 70000 80000

登录成功后，客户端先由通用数据层应用 cmn，随后 init_Login 更新 map_info、wine_info 和认证数据；headers.js 再读取玩家 freshman_step 并启动新手引导，或进入 MainMenuScene。完整原服响应没有成功样本，兼容实现至少需要准备核心结构：

    {
      "result": true,
      "cmn": {
        "user_info": {},
        "general_info": {"update_list": [], "del_list": []},
        "team_info": [],
        "combat_info": [],
        "item_info": {"update_list": [], "del_list": []}
      },
      "map_info": {"chapter_list": [], "chapter_details": []},
      "wine_info": {}
    }

这是核心消费路径的示意，不是完整或经过原服验证的 user.login 样本。具体玩家状态还可能要求其他 cmn 数据表。

## cmn 公共增量数据

每个成功业务响应会先交给 GameData.Mgr.updateRespData。cmn 缺省时按空对象处理。客户端数据描述表登记的更新类型如下：

| 更新类型 | 客户端合并语义 | 已确认的键 |
|---|---|---|
| Map | 按 pk_id 更新或新增，按 del_list 删除 | general_info、general_soul_info、skill_info、equipment_info、item_info、equipment_piece_info、atlas_info、skill_piece_info、gem_info、magic_info、godness_info、meridian_info、evolution_info |
| Replace | 整个数组重新构造并替换 | combat_info、team_info、buddy_info |
| Singleton | 调用模型 update 合并 | user_info、push、adInfo、union_info、unionWar |

Map 的形状：

    {"update_list": [{"pk_id": "玩家实体主键", "...": "模型字段"}], "del_list": ["玩家实体主键"]}

pk_id 是玩家拥有的实体主键，不能用静态配置 ID 一概代替。业务变更需要通过 cmn 落地；奖励界面的 add_list 主要用于展示，不能代替完整持久化状态。

通用层还识别 cmn.general_skin、server_version、cfg_version、opt_cfg_version、server_time、offset_time。缺省 offset_time 时客户端使用 8 小时默认偏移。其余字段按具体界面调用路径补足。

## 新手教程状态与里程碑同步

细粒度步骤由客户端 GuideMgr 保存在本地键 NewGuideStep_{player_id}，本地步骤号不是每步都请求服务器。登录时客户端读取 user_info.freshman_step，将其交给 GuideMgr.setServerStep，随后按照 Cfg/Guide.js 恢复教程。

只有公共请求包装器发现当前步骤正好等于以下值时才上报 step：

    10000 20000 30000 40000 50000 60000 70000 80000

兼容服务端可以在业务成功处理时保存携带的里程碑，并在下一次 user.login 的 cmn.user_info.freshman_step 返回它。该结论来自客户端同步机制，不能证明原服务端数据库字段的具体实现。

## 新手主线状态机

下表概括本地 NewGuideCfg 主序列。*_before、剧情和镂空指引由客户端控制；带有业务动作的步骤在对应成功回调后推进。

| 步骤 | 客户端行为或业务动作 |
|---|---|
| 0 → 00101 | 开场 CG |
| 00113 | 切到主界面 |
| 00201 | 开场剧情 99000201 |
| 00301 → 00302 | 播放内置新手战斗及战后遮罩 |
| 00335 | 战后剧情 99000335 |
| 10000 | 选择初始武将并同步里程碑 |
| 10101、10201 | 返回主界面并播放剧情 |
| 20000 | 打开改名框，改名成功后推进 |
| 20201、20202、20204 | 引导打开第一章和第一关入口 |
| 30000 | 第一关战斗按钮步骤 |
| 30001、30002 | 首战前后入口引导 |
| 30101、30102 | 剧情及酒馆入口 |
| 40000 | 首次招募；wine.wine 成功后推进 |
| 40001–40105 | 招募页剧情、金色单抽和结果后续 |
| 50000 | 编队武将替换；请求 team.chgBattleTeam |
| 50101–50103 | 军营剧情与第二关入口 |
| 60000 | 第二关普通副本战斗入口 |
| 60001、60002、60101、60102 | 第二战后剧情、提示和背包入口 |
| 60103、60104 | 打开背包并选择礼包 |
| 70000 | 使用礼包；item.use 成功显示奖励后推进 |
| 70001、70101–70104 | 背包剧情及选择装备槽 |
| 80000 | 装备成功后推进；接口为 general.setEquipment |
| 80101–80103 | 最后剧情、遮罩和引导广告弹窗，随后结束 |

Guide.js 中 80101_before.nextStep 指向 70101，而 80000.nextStep 直接指向 80101。前者与正常链路看似不一致；由于文件是字节码近似恢复结果，记录为恢复疑点，不把它当成已确认的服务端行为。

## 剧情资源

对白来自 ReconstructedJS/data_cn_jsc/plan/sgs_dungeon_plot_dialog.js 和 sgs_i18n.js。开场是玩家发现自己穿越到三国杀世界，神秘人说明世界危机；首战剧情是被篡改的赤壁之战，最终吴蜀联盟败北。后续依次引导选择初始武将、取名、迎战、招募忠臣、编队、第二战、领取礼包和装备宝马。

storyId 和对白属于本地资源，不代表服务端网络请求。

## 内置新手战斗

Cfg/Fight/NewPlayerFight.js 提供整场教程战斗脚本，不发 dungeon.fight 请求。静态统计：

    14 名武将
    首发 3 对 3
    双方各 4 名援军
    83 条动作
    7 个 Round 标记
    12 段战斗内剧情
    62 条 type=0 战斗动作

末尾动作的 params.once.event 含 finish，由固定脚本结束战斗并进入下一教程阶段。因此这场战斗的动作顺序可从客户端资源恢复；没有该战斗的服务端收益协议证据。

## 地图结构与首章约束

登录初始化和副本成功响应中的 map_info 交给 Profile.GameData.Map.update。核心形状：

    {"chapter_list": [], "chapter_details": []}

章节概要至少消费：

    map_id, map_name, map_type, can_show, can_in

map_type 的字符串值 "1" 表示普通，"2" 表示精英。章节详情至少消费：

    map_id, map_name, map_bgimage, can_in, dungeon_info[]

普通关卡节点字段：

    type="dungeon", dungeon_id, dungeon_position, dungeon_name,
    dungeon_card, dungeon_grade, dungeon_suggest_level, dungeon_power,
    dungeon_user_exp, dungeon_general_exp, dungeon_coin, dungeon_times,
    user_dungeon_times, num_item_price, can_show, can_in, star_level,
    direction[], is_newest, unlocked_id, elite_buy_times, dungeon_drop[]

宝箱节点字段：

    type="box", name, position, open_need_star, has_star,
    direction[], can_open, item_id, box_id

客户端 DungeonView 对 map_id == "500001" 分配教程引导标签，因此离线兼容的第一普通章节应优先使用 500001，除非后续资源分析证明其他值。

## 首次招募：wine.wine

路径：

    /index.php?do=wine.wine

新手点击金色单抽时显式参数：

    {"type": 2, "ignoreRandEvent": true}

如果玩家有金酒杯道具，再传 user_item_id。ignoreRandEvent 是客户端本地控制字段，通用请求序列化前会删除；网络层由 requireToast 加 forcepush=true。

成功回包被 ToastView.onToastResult 消费，最低结构：

    {
      "result": true,
      "cmn": {},
      "user_wine_info": {},
      "reward_info": {
        "general": [{"id": "基础武将配置 ID", "type": "...", "num": 1}],
        "general_soul": [{"id": "...", "num": 1, "status": true}]
      }
    }

客户端结果视图访问 reward_info.general[0]，随后按该基础武将 ID 查询玩家武将模型。因此 general 至少需要是非空数组，真实拥有的武将实体还要通过 cmn.general_info.update_list 落地。general_soul 被结果视图遍历；没有将魂时宜返回空数组。type == "2" 会进入转换为将魂的显示分支，但招募池和转换规则无法由客户端证明。

user_wine_info 由酒馆状态模型更新，与登录响应中的 wine_info 使用同一类结构。客户端当前使用字段：

    gold_info.free_end_time
    gold_info.free_times
    gold_price
    silver_info.free_end_time
    silver_info.free_times
    silver_price
    copper_info.free_end_time
    copper_info.free_times
    copper_price
    need_times
    first_time_consume_gold
    multi_price
    show_general_list[]

字段的真实值、刷新规则、保底和概率表没有原服响应样本。

## 普通副本：dungeon.fight

路径：

    /?do=dungeon.fight

显式请求参数：

    {"dungeon_id": "关卡 ID", "check_troop": 2, "forcepush": true}

通用层追加玩家身份和认证字段。客户端成功回调先应用 cmn，再更新 map_info、创建 FightInfo、读取 fight_result.success、播放动作流并显示结算。dungeon.fightBefore 在 URL 和 Net 层有定义，但当前静态代码未发现普通副本或新手主链调用点；只能记录为“接口存在，未发现调用”。

响应根结构的最低客户端契约：

    {
      "result": true,
      "cmn": {},
      "map_info": {"chapter_list": [], "chapter_details": []},
      "fight_info": {"init": {}, "rounds": []},
      "fight_result": {}
    }

fight_info.init 客户端字段：

    first, info[], cards[], cards_size0, cards_size1,
    backups_size0, backups_size1, roundMax, skipRounds, roundCur,
    godness_0, godness_1

双方 info[] 至少读取 userName、teamPoint、teamLeader、evolution_image_status。每张初始卡牌至少读取 id、hpCur、hpMax、name、evolution_image_status。

每个动作消费：

    num, from[], to[], skill, type, params, side, skillId, cnum

type=0 是普通动作，type=1 是战斗剧情动作。from/to 是卡牌或援军索引列表。已确认的事件名包括 death、backup、ghost、finish、cure。替补进场动作形如：

    {
      "skill": "enter",
      "params": {"pre": {"leaveIdx": 4, "backupIdx": 10}}
    }

客户端把动作参数中的 hpCur、hpMax 写回临时战斗模型。它负责展示而非重演权威战斗；服务端需要提供可播放动作序列，客户端没有通用伤害公式校验动作和胜负。

## 战斗结果与收益

胜负直接取自 fight_result.success。结算视图读取 fight_type、player_info、fight_calculate_info、drop_info、add_list 和 show_general_info。

fight_calculate_info 已确认字段：

    star_level
    rounds
    residue_team_num
    residue_team_percent
    up_rank
    extra_integration
    max_total_integration
    point_progress
    total_integration

drop_info 已确认字段：

    user_exp
    general_exp
    user_coin
    fortune
    rank_salary
    reward_honor
    point

add_list 是奖励条目数组，基础条目形状为 {"type": 0, "id": "...", "num": 1}；部分模型还消费 level。show_general_info[] 按上阵武将顺序给出经验和等级变化，至少读取 exp、level_before、level_now。

客户端将 success、star_level 和给定收益用于 UI，不会依据最终 HP 计算胜负、星数或掉落。玩家库存、等级和地图进度应同时通过同一响应的 cmn 更新；只返回 add_list 可能只能显示奖励，不能保证模型状态已经改变。

## 教程中的其他业务请求

### 换队：team.chgBattleTeam

路径：

    /index.php?do=team.chgBattleTeam

50000 更换编队武将时提交：

    {"team_id": 1, "team_position": 1, "general_id": "玩家武将实体 pk_id"}

team_position 由客户端当前列表索引加一得到。成功回调推进 50000；响应应通过 cmn.team_info 和相关实体数据反映保存后的编队。

### 使用礼包：item.use

路径：

    /index.php?do=item.use

请求：

    {"user_item_id": "礼包玩家道具 pk_id", "item_num": 1, "forcepush": true}

UseItemSuccess 将 add_list 交给原版奖励弹窗，并在弹窗挂载回调中推进 70000。奖励元素通用字段为 type、id、num，level 可选，UI/模型缺省按 1 处理。礼包消耗和所得物品需要通过 cmn.item_info 等模型更新落地。

### 装备：general.setEquipment

路径：

    /index.php?do=general.setEquipment

80000 装备步骤提交：

    {"user_general_id": "玩家武将实体 pk_id", "new_equipment_id": "玩家装备实体 pk_id"}

成功回调才调用 GuideMgr.endStepBySequence(["80000"])。这是装备槽变更，不是再次换队；响应需要通过 cmn.general_info、cmn.equipment_info 等状态保持装备归属一致。

## 明确不可从客户端恢复的原服务端黑盒

原服关闭且没有成功响应样本时，以下内容不能还原为原版算法：

- 酒馆武将池、概率、保底计数、随机数策略和服务端合法性校验；
- 普通副本敌方组队、AI、伤害与触发算法、动作流生成和防作弊校验；
- 关卡掉落概率、星级评价、经验/金币收益、体力扣减、次数限制和奖励幂等；
- 玩家升级与成长计算、章节和宝箱解锁的服务端权威实现；
- server_params、token、user_auth 的原版签名、校验和账号服信任关系；
- 风控、封禁、异常检测、并发请求顺序和数据库事务边界；
- 当前场景没有消费的可选响应字段及其运营配置值。

这些内容以后可以在重建服务端中作为新规则重新设计，但不能标注为原版算法复原。协议形状兼容也不等于游戏规则、经济平衡或安全语义等价。

## 后续离线验证

原服抓包已不可行，不再把原服成功报文作为前提。可以按以下顺序推进：

1. 继续静态追踪请求发起点、URL、显式字段、公共字段包装、成功回调和模型读取，并给字段补源文件/行号。
2. 从 APK 本地配置提取关卡、武将、装备、道具、剧情和 NewPlayerFight 固定脚本，把静态配置与玩家实体状态分开。
3. 在重建服务端构造最小回包，按 user.login → 首战前状态 → dungeon.fight → wine.wine → team.chgBattleTeam → dungeon.fight → item.use → general.setEquipment 的顺序离线驱动客户端。
4. 每次记录客户端是否成功解析、转场和更新 cmn，并把请求/响应保存为本地 fixture。
5. 将 fixture 标为“本地客户端兼容性已验证”，把被原服黑盒遮蔽的规则单独版本化为重建设计。

## 静态分析入口

- ReconstructedJS/src_jsc/Scene/Login/LoginScene_BfSdk.js、Scene/Login/headers.js
- ReconstructedJS/src_jsc/Tools/Net.js、Views/Mgr.js
- ReconstructedJS/src_jsc/Profile/GameData/common.js、Profile/GameData/Mgr.js
- ReconstructedJS/src_jsc/Models/Player.js、Profile/GameData/Map.js
- ReconstructedJS/src_jsc/Models/Chapter.js、Models/Dungeon.js、Models/TreasureBox.js
- ReconstructedJS/src_jsc/Cfg/Guide.js、Guide/GuideMgr.js
- ReconstructedJS/src_jsc/Cfg/Fight/NewPlayerFight.js
- ReconstructedJS/src_jsc/Models/Fight/FightInfo.js、Models/Fight/FightRoundItem.js、Models/TmpInfo/Fight.js
- ReconstructedJS/src_jsc/Views/Dialog/DungeonDetail.js、Views/Dialog/FightResult.js
- ReconstructedJS/src_jsc/Scene/Store/ToastView.js、Scene/Store/StoreScene.js
- ReconstructedJS/src_jsc/Scene/Bag/BagScene.js、Scene/TeamBuild/TeamBuildScene.js
