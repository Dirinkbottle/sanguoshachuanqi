# 单机服务器数据恢复索引

## 已保存的数据

- `game_data_json/`：从 `assets/encrypted/game_data.bin` 解密出的 59 份 JSON，共 15,278,738 字节；原始解密 ZIP 为 `server_game_data.decrypted.zip`。
- `limited_shop_config/`：独立解密出的限时商店配置和 manifest；原始解密 ZIP 为 `limited_shop_config.decrypted.zip`。
- `apk_assets/`：APK 内未加密资源，包括 atlas 可见性配置、服务器公钥，以及客户端 hotfix/自动引导补丁 ZIP 和解包内容。
- `dex_rules/`：从服务器 DEX 中恢复的 84 张静态数组表，`manifest.json` 记录类、字段、行数和来源；字符串表校验 402 个数组字面量，缺失 0 个。
- `dex_strings.txt`：服务器 DEX 的 10,909 个字符串。
- `decompiled/`：地图/战斗、酒馆、活动、节庆、数据装载、奖励处理等相关类的 JADX 输出。`decompiled/manifest.json` 记录源 APK 和逐类哈希。
- `extraction-manifest.json`：加密包、来源 APK/客户端版本及解密文件哈希清单。

## 关卡、地图和掉落

- `game_data_json/chapter_battle_layouts.json` 含 108 个章节配置、1,339 个节点：1,231 个普通战斗节点、108 个 Boss 节点。
- 其中 665 个节点带固定奖励，共 792 条奖励记录。记录有 `type`、`id`、`num`，没有逐物品百分比字段；敌人、金币和推荐等级也保存在同一节点中。
- `game_data_json/dungeons.json` 有 1,339 个副本名称/编号映射；`dungeon_enemies.json` 保存敌人与章节关联；`combat_levels.json` 有 1,560 条战斗等级数据。
- `handler/w.java`（路由识别约第 1257 行，地图响应约第 3252 行）实现 `map.getUserMap`、`chapter.getChapterInfo`、`dungeon.fight*`、`dungeon.multiKill*` 和 `dungeon.openBox` 等处理。地图响应由玩家进度和章节配置合成。
- 同一战斗处理器的奖励 helper（约第 2874 行）会从记录的 `drop_rate`、`dropRate`、`rate`、`prob`、`probability` 或 `chance` 字段读取概率，并把值限制到 5–30；没有这些字段时默认 30，强制奖励分支则跳过随机判断。当前章节固定奖励记录没有上述概率字段，所以 APK 中没有恢复出逐道具的原始爆率表。
- 战斗结算还调用 `cloud/m0.java` 的 `X2` 等逻辑生成动态奖励。应将固定节点奖励、通用随机逻辑和运行时生成奖励分开看，不能把通用默认值当成每种物品的官方爆率。

## 酒馆/对酒

- `dex_rules/x0.f1032g.json` 保留 `handler.x0` 中 197 行的对酒/奖池条目；同类文件还包括 `f1029d`、`f1030e` 和 `f1031f`，保留原始数组与值。
- `f1032g` 行的第二列区分奖励类型，第三列不是无条件的武将 ID。与客户端 `sgs_generals` 配置交叉核对后，type `6` 的 63 个不同 ID 都是武将；type `7/8` 的其余奖励 ID 不在武将表中。服务端预览列表只能从 type `6` 生成，原始恢复表不应被裁剪或手改。
- `decompiled/handler/x0.java` 保存酒馆接口实现。可从 `wine.wineInfo`、`wine.wine`、`wine.wineGeneralInfo` 路由（约第 2115 行起）追踪花费、免费次数、保底及武将列表。
- 源码存在两套返回默认值：`handler.x0` 的一条路径使用金/银/铜 268/100/10、十连 2680、保底次数 5；`h5.java` 的另一条 toast 配置使用 100/50/20、十连 900。它们属于不同 handler/生成路径，尚不能仅凭常量断言客户端实际走哪条；两份源码和数组都已保留，后续应结合请求路由调用点核实。

## 活动、礼包和商店

- `decompiled/handler/c.java` 保留登录签到、累计登录、每日检查、等级武将、通关副本、收集神将和开服充值礼包等活动组装逻辑及静态奖励数组。`dex_rules/c.f780b.json` 有 7 行，`c.f781c.json` 有 56 行对应奖励表。
- `decompiled/handler/d1.java` 保留 festival 路由及节庆逻辑，覆盖积分、露珠、领奖和战斗等请求名。它包含代码内置的样例值/日期；这些值不能等同于原运营服实时下发的活动排期。
- 59 份 JSON 中没有独立的 `activities.json`。活动可恢复的部分来自服务器 DEX 代码和静态奖励表；实时活动开关、服务器排期或远端运营配置不在此 APK 静态包内。
- `gift_box_contents.json` 有 3,078 个礼包 ID 与完整 `add_list`；`items.json` 有 5,018 个物品定义。礼包内容与物品基础定义可按 ID 对照。
- 限时商店配置单独位于 `limited_shop_config/limited_shop_config.json`，包含常规/特殊排期、商品目录、定价和折扣活动，不混在 `game_data_json/` 中。

## 来源和限制

- 服务器 APK：`ServerProject/tmp/offlineserver.apk`，SHA-256 为 `c48b01b98479687d3d4d0142d377a74391fe8e0be6b2db5eef72eca250bba001`。
- 配套客户端是已连接设备上的 `com.bf.sgscqtv.x64`，版本 `9.17.0.89-build211-arm64`；其地图、副本、物品等关键 JSC 与仓库中对应资源哈希相同，详见 `README.md` 和 `extraction-manifest.json`。
- JADX 是反编译结果，不是原始源码。`decompiled/handler/d.java` 和 `handler/d1.java` 各有一个 JADX 未能还原的方法，清单中列出；其余相关静态数组仍由 DEX 提取器从 APK 代码恢复并保留。
- 所有 JSON、ZIP、APK 资源和 DEX 字符串均为原始未脱敏内容。重新解密命令见上级 `README.md`；静态 DEX 表可用 `tools/extract_offlineserver_dex_rules.py` 重提取。
