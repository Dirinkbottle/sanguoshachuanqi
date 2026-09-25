# 08 · 静态配置域与协议 ID

> 本页由 `tools/extract_config_domains.py` 生成。
> 协议里的 ID 字段（`dungeon_id`、`general_id`、`item_id` 等）是本地配置表的键。
> 原版运营服务器已停服，**不存在原服抓包**；本页只记录随包配置与客户端的查表方式。

## 8.1 访问层：`Tools/CfgData.js`

客户端不直接散查配置表，而是走 `xs.Tools.CfgData` 的 `readRecordByType*` 系列，用一个 `Constant_CfgDataType_*` 常量选中具体表：

| CfgDataType 常量 | → 配置表 | 表文件 | 记录数 | 证据 |
|---|---|---|---|---|
| `CfgDataType_CombatLevel` | `sgs_combat_level_conf` | `ReconstructedJS/data_cn_jsc/plan/sgs_combat_level_conf.js` | 4 | `ReconstructedJS/src_jsc/Tools/CfgData.js:86` |
| `CfgDataType_Equipment` | `sgs_equipments` | `ReconstructedJS/data_cn_jsc/plan/sgs_equipments.js` | 134 | `ReconstructedJS/src_jsc/Tools/CfgData.js:89` |
| `CfgDataType_Equipment_Upgrade` | `sgs_equipment_upgrade_conf` | `（未在包内找到）` | — | `ReconstructedJS/src_jsc/Tools/CfgData.js:92` |
| `CfgDataType_General` | `sgs_generals` | `ReconstructedJS/data_cn_jsc/plan/sgs_generals.js` | 278 | `ReconstructedJS/src_jsc/Tools/CfgData.js:95` |
| `CfgDataType_GeneralLevel` | `sgs_general_level_conf` | `（未在包内找到）` | — | `ReconstructedJS/src_jsc/Tools/CfgData.js:98` |
| `CfgDataType_General_Insight` | `sgs_general_insight_conf` | `（未在包内找到）` | — | `ReconstructedJS/src_jsc/Tools/CfgData.js:101` |
| `CfgDataType_Skill` | `sgs_skills` | `ReconstructedJS/data_cn_jsc/plan/sgs_skills.js` | 239 | `ReconstructedJS/src_jsc/Tools/CfgData.js:104` |
| `CfgDataType_Skill_Upgrade` | `sgs_skill_upgrade_conf` | `（未在包内找到）` | — | `ReconstructedJS/src_jsc/Tools/CfgData.js:107` |
| `CfgDataType_Fate` | `sgs_fates` | `ReconstructedJS/data_cn_jsc/plan/sgs_fates.js` | 1782 | `ReconstructedJS/src_jsc/Tools/CfgData.js:110` |
| `CfgDataType_Map` | `sgs_map_conf` | `ReconstructedJS/data_cn_jsc/plan/sgs_map_conf.js` | 0 | `ReconstructedJS/src_jsc/Tools/CfgData.js:113` |
| `CfgDataType_Res` | `sgs_resource` | `ReconstructedJS/data_cn_jsc/plan/sgs_resource.js` | 1131 | `ReconstructedJS/src_jsc/Tools/CfgData.js:116` |
| `CfgDataType_i18n` | `sgs_i18n` | `ReconstructedJS/data_cn_jsc/plan/sgs_i18n.js` | None | `ReconstructedJS/src_jsc/Tools/CfgData.js:119` |
| `CfgDataType_Item` | `sgs_item` | `ReconstructedJS/data_cn_jsc/plan/sgs_item.js` | 4886 | `ReconstructedJS/src_jsc/Tools/CfgData.js:122` |
| `CfgDataType_Kits` | `sgs_kits` | `（未在包内找到）` | — | `ReconstructedJS/src_jsc/Tools/CfgData.js:125` |
| `CfgDataType_Vip` | `sgs_vip_level_conf` | `ReconstructedJS/data_cn_jsc/plan/sgs_vip_level_conf.js` | 16 | `ReconstructedJS/src_jsc/Tools/CfgData.js:128` |
| `CfgDataType_SkillEffect` | `sgs_skill_effect` | `ReconstructedJS/data_cn_jsc/plan/sgs_skill_effect.js` | 113 | `ReconstructedJS/src_jsc/Tools/CfgData.js:131` |
| `CfgDataType_Player_Upgrade` | `sgs_user_level_conf` | `ReconstructedJS/data_cn_jsc/plan/sgs_user_level_conf.js` | 130 | `ReconstructedJS/src_jsc/Tools/CfgData.js:134` |
| `CfgDataType_Random_Name` | `sgs_random_name` | `ReconstructedJS/data_cn_jsc/plan/sgs_random_name.js` | None | `ReconstructedJS/src_jsc/Tools/CfgData.js:137` |
| `CfgDataType_Eated_Exp` | `sgs_eated_exp_conf` | `ReconstructedJS/data_cn_jsc/plan/sgs_eated_exp_conf.js` | None | `ReconstructedJS/src_jsc/Tools/CfgData.js:140` |
| `CfgDataType_Upgrade_Coin` | `sgs_upgrade_coin_conf` | `ReconstructedJS/data_cn_jsc/plan/sgs_upgrade_coin_conf.js` | None | `ReconstructedJS/src_jsc/Tools/CfgData.js:143` |
| `CfgDataType_Upgrade_Exp` | `sgs_upgrade_exp_conf` | `ReconstructedJS/data_cn_jsc/plan/sgs_upgrade_exp_conf.js` | None | `ReconstructedJS/src_jsc/Tools/CfgData.js:146` |
| `CfgDataType_Sell` | `sgs_sell_conf` | `ReconstructedJS/data_cn_jsc/plan/sgs_sell_conf.js` | None | `ReconstructedJS/src_jsc/Tools/CfgData.js:149` |
| `CfgDataType_General_Insight_GrowType` | `sgs_insight_grow_type` | `ReconstructedJS/data_cn_jsc/plan/sgs_insight_grow_type.js` | None | `ReconstructedJS/src_jsc/Tools/CfgData.js:152` |
| `CfgDataType_Surrender` | `sgs_surrender` | `ReconstructedJS/data_cn_jsc/plan/sgs_surrender.js` | 948 | `ReconstructedJS/src_jsc/Tools/CfgData.js:155` |
| `CfgDataType_General_Surrender` | `sgs_general_surrender` | `ReconstructedJS/data_cn_jsc/plan/sgs_general_surrender.js` | 270 | `ReconstructedJS/src_jsc/Tools/CfgData.js:158` |
| `CfgDataType_Plot_Conf` | `sgs_dungeon_plot_conf` | `ReconstructedJS/data_cn_jsc/plan/sgs_dungeon_plot_conf.js` | 343 | `ReconstructedJS/src_jsc/Tools/CfgData.js:161` |
| `CfgDataType_Plot_Dialog` | `sgs_dungeon_plot_dialog` | `ReconstructedJS/data_cn_jsc/plan/sgs_dungeon_plot_dialog.js` | 742 | `ReconstructedJS/src_jsc/Tools/CfgData.js:164` |
| `CfgDataType_Global` | `sgs_global_conf` | `ReconstructedJS/data_cn_jsc/plan/sgs_global_conf.js` | None | `ReconstructedJS/src_jsc/Tools/CfgData.js:167` |
| `CfgDataType_Equ_Refine_GrowType` | `sgs_refine_conf` | `ReconstructedJS/data_cn_jsc/plan/sgs_refine_conf.js` | None | `ReconstructedJS/src_jsc/Tools/CfgData.js:170` |
| `CfgDataType_LieutennantAttrPlus` | `sgs_lieutenant_skill` | `ReconstructedJS/data_cn_jsc/plan/sgs_lieutenant_skill.js` | 6 | `ReconstructedJS/src_jsc/Tools/CfgData.js:173` |
| `CfgDataType_Buddy` | `sgs_buddy_conf` | `ReconstructedJS/data_cn_jsc/plan/sgs_buddy_conf.js` | 24 | `ReconstructedJS/src_jsc/Tools/CfgData.js:176` |
| `CfgDataType_UnionWar_Battle` | `sgs_union_war_battle_conf` | `ReconstructedJS/data_cn_jsc/plan/sgs_union_war_battle_conf.js` | 6 | `ReconstructedJS/src_jsc/Tools/CfgData.js:179` |
| `CfgDataType_MapAndDungon_Data` | `sgs_dungeon_conf` | `ReconstructedJS/data_cn_jsc/plan/sgs_dungeon_conf.js` | 1339 | `ReconstructedJS/src_jsc/Tools/CfgData.js:182` |
| `CfgDataType_Gem` | `sgs_gem` | `ReconstructedJS/data_cn_jsc/plan/sgs_gem.js` | 36 | `ReconstructedJS/src_jsc/Tools/CfgData.js:185` |
| `CfgDataType_MagicalEquPoint` | `sgs_magic_buff_conf` | `ReconstructedJS/data_cn_jsc/plan/sgs_magic_buff_conf.js` | 47 | `ReconstructedJS/src_jsc/Tools/CfgData.js:188` |
| `CfgDataType_Skill_Advanced` | `sgs_skill_advanced_conf` | `ReconstructedJS/data_cn_jsc/plan/sgs_skill_advanced_conf.js` | 46 | `ReconstructedJS/src_jsc/Tools/CfgData.js:192` |
| `CfgDataType_Decisive` | `sgs_world_war_schedule` | `ReconstructedJS/data_cn_jsc/plan/sgs_world_war_schedule.js` | 20 | `ReconstructedJS/src_jsc/Tools/CfgData.js:196` |
| `CfgDataType_Goddess` | `sgs_godness` | `ReconstructedJS/data_cn_jsc/plan/sgs_godness.js` | 11 | `ReconstructedJS/src_jsc/Tools/CfgData.js:200` |
| `CfgDataType_GoddessSurface` | `sgs_godness_skin` | `ReconstructedJS/data_cn_jsc/plan/sgs_godness_skin.js` | 11 | `ReconstructedJS/src_jsc/Tools/CfgData.js:204` |
| `CfgDataType_HulaoReward` | `sgs_hulao_reward_conf` | `ReconstructedJS/data_cn_jsc/plan/sgs_hulao_reward_conf.js` | 6 | `ReconstructedJS/src_jsc/Tools/CfgData.js:208` |
| `CfgDataType_Melt` | `sgs_melt_conf` | `ReconstructedJS/data_cn_jsc/plan/sgs_melt_conf.js` | None | `ReconstructedJS/src_jsc/Tools/CfgData.js:212` |
| `CfgDataType_Upgrade_Guide` | `sgs_function_level_conf` | `ReconstructedJS/data_cn_jsc/plan/sgs_function_level_conf.js` | 16 | `ReconstructedJS/src_jsc/Tools/CfgData.js:215` |
| `CfgDataType_MeridianTop` | `sgs_meridian_top_conf` | `ReconstructedJS/data_cn_jsc/plan/sgs_meridian_top_conf.js` | 8 | `ReconstructedJS/src_jsc/Tools/CfgData.js:219` |
| `CfgDataType_Meridian` | `sgs_meridian_conf` | `ReconstructedJS/data_cn_jsc/plan/sgs_meridian_conf.js` | 8 | `ReconstructedJS/src_jsc/Tools/CfgData.js:223` |
| `CfgDataType_MeridianPoint` | `sgs_meridian_point_conf` | `ReconstructedJS/data_cn_jsc/plan/sgs_meridian_point_conf.js` | 8 | `ReconstructedJS/src_jsc/Tools/CfgData.js:227` |
| `CfgDataType_GoddessFate` | `sgs_godness_fates` | `ReconstructedJS/data_cn_jsc/plan/sgs_godness_fates.js` | 19 | `ReconstructedJS/src_jsc/Tools/CfgData.js:231` |
| `CfgDataType_SkillMelt` | `sgs_skill_melt_conf` | `ReconstructedJS/data_cn_jsc/plan/sgs_skill_melt_conf.js` | None | `ReconstructedJS/src_jsc/Tools/CfgData.js:235` |
| `CfgDataType_Evolution` | `sgs_evolution` | `ReconstructedJS/data_cn_jsc/plan/sgs_evolution.js` | 31 | `ReconstructedJS/src_jsc/Tools/CfgData.js:239` |
| `CfgDataType_Evolution_open_conf` | `sgs_evolution_open_conf` | `ReconstructedJS/data_cn_jsc/plan/sgs_evolution_open_conf.js` | 31 | `ReconstructedJS/src_jsc/Tools/CfgData.js:243` |
| `CfgDataType_Evolution_buff_conf` | `sgs_evolution_buff_conf` | `ReconstructedJS/data_cn_jsc/plan/sgs_evolution_buff_conf.js` | 31 | `ReconstructedJS/src_jsc/Tools/CfgData.js:247` |
| `CfgDataType_Evolution_surrender` | `sgs_evolution_surrender` | `ReconstructedJS/data_cn_jsc/plan/sgs_evolution_surrender.js` | 31 | `ReconstructedJS/src_jsc/Tools/CfgData.js:251` |
| `CfgDataType_Beauty` | `sgs_beauty_conf_detail` | `ReconstructedJS/data_cn_jsc/plan/sgs_beauty_conf_detail.js` | 5 | `ReconstructedJS/src_jsc/Tools/CfgData.js:255` |
| `CfgDataType_Skill_refine_conf` | `sgs_skill_refine_conf` | `ReconstructedJS/data_cn_jsc/plan/sgs_skill_refine_conf.js` | 6 | `ReconstructedJS/src_jsc/Tools/CfgData.js:259` |

## 8.2 全部本地配置表

下表覆盖 `data_cn_jsc/plan/` 下恢复出的全部表。`服务端可替换`一列来自 `ReconstructedJS/src_jsc/Cfg/headers.js:45`：这些表在包内提供一份，但设计上允许由服务端下发覆盖（见 8.3）。

三种形状：

- `keyed`：数字/ID 键的字典，第一层是记录，第二层是字段（如 `sgs_generals`）
- `flat`：语义名直接做第一层，没有记录层（如 `sgs_global_conf`）
- `array`：记录数组，没有键（如 `sgs_user_level_conf`）

| 配置表 | 形状 | 记录数 | 字段数 | 键/字段样例 | 服务端可替换 |
|---|---|---|---|---|---|
| `cfg_evolution_total_buff` | object | 31 | 0 | `52111006`, `52111013`, `52111024` | 否 |
| `sgs_beauty_conf_detail` | object | 5 | 12 | `1`, `2`, `3` | 是 |
| `sgs_buddy_conf` | object | 24 | 1 | `1`, `11`, `21` | 是 |
| `sgs_combat_level_conf` | object | 4 | 3 | `1`, `2`, `3` | 是 |
| `sgs_config_btn` | flat | —（扁平） | 4 | `btn_id`, `btn_id2` | 是 |
| `sgs_config_label` | object | 197 | 2 | `1`, `10`, `100` | 是 |
| `sgs_dungeon_conf` | object | 1339 | 1 | `501001`, `501002`, `501003` | 是 |
| `sgs_dungeon_plot_conf` | object | 343 | 1 | `501003`, `501004`, `501005` | 是 |
| `sgs_dungeon_plot_dialog` | object | 742 | 7 | `50100301`, `50100302`, `50100401` | 是 |
| `sgs_eated_exp_conf` | flat | —（扁平） | 45 | `shenwujiang_zhanji`, `shencailiao_jinengshengji`, `jincailiao_jinengshengji` | 是 |
| `sgs_equipments` | object | 134 | 28 | `200000`, `211001`, `211002` | 是 |
| `sgs_evolution` | object | 31 | 8 | `111006`, `111013`, `111024` | 是 |
| `sgs_evolution_buff_conf` | object | 31 | 5 | `52131008`, `52121006`, `52131013` | 是 |
| `sgs_evolution_open_conf` | object | 31 | 5 | `52131008`, `52121006`, `52131013` | 是 |
| `sgs_evolution_surrender` | object | 31 | 3 | `121006`, `131008`, `141003` | 是 |
| `sgs_fates` | object | 1782 | 10 | `400000`, `400001`, `400002` | 是 |
| `sgs_function_level_conf` | object | 16 | 7 | `5`, `6`, `8` | 是 |
| `sgs_gem` | object | 36 | 10 | `601001`, `601002`, `601003` | 是 |
| `sgs_general_surrender` | object | 270 | 3 | `111003`, `111007`, `111009` | 是 |
| `sgs_generals` | object | 278 | 48 | `100000`, `111001`, `111003` | 是 |
| `sgs_global_conf` | flat | —（扁平） | 71 | `autoCultivateVipLevel`, `CfgVersion`, `Chaos_Unlock_Level` | 是 |
| `sgs_godness` | object | 11 | 10 | `11100001`, `11100002`, `11100003` | 是 |
| `sgs_godness_fates` | object | 19 | 10 | `411000101`, `411000102`, `411000103` | 是 |
| `sgs_godness_skin` | object | 11 | 4 | `11100001`, `11100002`, `11100003` | 是 |
| `sgs_hulao_reward_conf` | object | 6 | 0 | `1`, `2`, `3` | 是 |
| `sgs_i18n` | flat | —（扁平） | 37850 | `10000001`, `11200801`, `11301001` | 是 |
| `sgs_insight_grow_type` | flat | —（扁平） | 18 | `shen_tupo_up`, `shen_tupo_gong_up`, `shen_tupo_fang_up` | 是 |
| `sgs_item` | object | 4886 | 18 | `111001`, `111003`, `111004` | 是 |
| `sgs_lieutenant_skill` | object | 6 | 8 | `1`, `2`, `3` | 是 |
| `sgs_magic_buff_conf` | object | 47 | 5 | `800001`, `800002`, `800003` | 是 |
| `sgs_map_conf` | array | **0（包内为空）** | 0 | — | 是 |
| `sgs_melt_conf` | flat | —（扁平） | 13 | `tongcailiao_jinglian`, `xiayincailiao_jinglian`, `zhongyincailiao_jinglian` | 是 |
| `sgs_meridian_conf` | object | 8 | 8 | `1`, `2`, `3` | 是 |
| `sgs_meridian_point_conf` | object | 8 | 9 | `1`, `2`, `3` | 是 |
| `sgs_meridian_top_conf` | object | 8 | 3 | `1`, `2`, `3` | 是 |
| `sgs_random_name` | flat | —（扁平） | 2 | `first_name`, `second_name` | 是 |
| `sgs_refine_conf` | flat | —（扁平） | 12 | `shangshen_jinglian_up`, `zhongshen_jinglian_up`, `xiashen_jinglian_up` | 是 |
| `sgs_resource` | object | 1131 | 12 | `100000`, `111001`, `111003` | 是 |
| `sgs_sell_conf` | flat | —（扁平） | 28 | `shenwuqi_suipianchushou`, `yinzuoqi_suipianchushou`, `shenwuqi_chushou` | 是 |
| `sgs_skill_advanced_conf` | object | 46 | 36 | `311004`, `321010`, `321014` | 是 |
| `sgs_skill_effect` | object | 113 | 6 | `30000011`, `30210111`, `30210211` | 是 |
| `sgs_skill_melt_conf` | flat | —（扁平） | 8 | `shencailiao_jinengshengji`, `jincailiao_jinengshengji`, `yincailiao_jinengshengji` | 是 |
| `sgs_skill_refine_conf` | object | 6 | 6 | `331012`, `341003`, `311012` | 是 |
| `sgs_skills` | object | 239 | 31 | `100001`, `100002`, `100003` | 是 |
| `sgs_surrender` | object | 948 | 17 | `81100101`, `81100102`, `81100103` | 是 |
| `sgs_union_war_battle_conf` | object | 6 | 6 | `1`, `2`, `3` | 是 |
| `sgs_upgrade_coin_conf` | flat | —（扁平） | 15 | `shenwuqi_qianghua`, `shenfangju_qianghua`, `shenjinnang_qianghua` | 是 |
| `sgs_upgrade_exp_conf` | flat | —（扁平） | 36 | `player_exp`, `shenguo_exp`, `shangshen_exp` | 是 |
| `sgs_user_level_conf` | array | 130 | 17 | `    {`, `    {`, `    {` | 是 |
| `sgs_vip_level_conf` | object | 16 | 17 | `-1`, `0`, `1` | 是 |
| `sgs_world_war_schedule` | object | 20 | 4 | `1`, `2`, `3` | 是 |

包内为**空表**的配置共 1 个：`sgs_map_conf`。

这一点很重要：这些表在 `files_generated_by_server` 名单里，说明它们的实际内容由服务端下发，包内只是占位。客户端在这类表上查不到记录是**预期行为**，不是恢复缺失。

## 8.3 服务端可替换的配置清单

`Cfg/headers.js` 里 `xs.Cfg.System.files_generated_by_server` 列出 50 个路径，登录出错码 `e_10011` 触发的 `requestSGSConfig` 会按 `download_url` 拉取新版本覆盖它们。

下载机制（URL 拼接、二进制落盘、原生解压、覆盖目录）见 [03-update-and-account.md §3.7](03-update-and-account.md)。
这是本协议里**唯一一条配置下发通道**：配置不走 `cmn`，而是走文件替换。

- `sgs_combat_level_conf.js`
- `sgs_config_btn.js`
- `sgs_config_label.js`
- `sgs_dungeon_plot_conf.js`
- `sgs_dungeon_plot_dialog.js`
- `sgs_eated_exp_conf.js`
- `sgs_equipments.js`
- `sgs_fates.js`
- `sgs_general_surrender.js`
- `sgs_generals.js`
- `sgs_global_conf.js`
- `sgs_i18n.js`
- `sgs_insight_grow_type.js`
- `sgs_item.js`
- `sgs_map_conf.js`
- `sgs_random_name.js`
- `sgs_refine_conf.js`
- `sgs_resource.js`
- `sgs_sell_conf.js`
- `sgs_skill_effect.js`
- `sgs_skills.js`
- `sgs_surrender.js`
- `sgs_upgrade_coin_conf.js`
- `sgs_upgrade_exp_conf.js`
- `sgs_user_level_conf.js`
- `sgs_vip_level_conf.js`
- `sgs_lieutenant_skill.js`
- `sgs_buddy_conf.js`
- `sgs_dungeon_conf.js`
- `sgs_union_war_battle_conf.js`
- `sgs_gem.js`
- `sgs_skill_advanced_conf.js`
- `sgs_magic_buff_conf.js`
- `sgs_world_war_schedule.js`
- `sgs_godness.js`
- `sgs_godness_skin.js`
- `sgs_hulao_reward_conf.js`
- `sgs_melt_conf.js`
- `sgs_function_level_conf.js`
- `sgs_meridian_top_conf.js`
- `sgs_meridian_conf.js`
- `sgs_meridian_point_conf.js`
- `sgs_godness_fates.js`
- `sgs_skill_melt_conf.js`
- `sgs_evolution.js`
- `sgs_evolution_open_conf.js`
- `sgs_evolution_buff_conf.js`
- `sgs_evolution_surrender.js`
- `sgs_beauty_conf_detail.js`
- `sgs_skill_refine_conf.js`

另有 3 个美术配置由客户端侧生成：

- `sgs_config_ttf.js`
- `sgs_config_ls.js`
- `sgs_config_bmf.js`

## 8.4 声明清单与包内文件的交叉核对

| 核对项 | 结果 |
|---|---|
| `files_generated_by_server` 声明数 | 50 |
| 包内 `data_cn_jsc/plan` 文件数 | 51 |
| 声明了但包内没有 | 无 |
| 包内有但未声明 | `cfg_evolution_total_buff` |
| `CfgData` 指向但**全树无文件** | `sgs_equipment_upgrade_conf`, `sgs_general_insight_conf`, `sgs_general_level_conf`, `sgs_kits`, `sgs_skill_upgrade_conf` |

最后一行是**客户端侧可证实的现象**：这些常量在 `CfgData.js` 的 switch 里有分支，但对应的 `sgs_*.js` 既不在包内，也不在服务端下发清单里。运行时这些分支会拿到 `undefined`。

这不代表原版服务端会补发它们——清单里没有。列在这里是为了避免后续实现把「配置文件缺失」误当成「协议字段缺失」。

有 2 个表**没有任何字母键**：`cfg_evolution_total_buff`, `sgs_hulao_reward_conf`。

这不是提取缺失——它们的键全是数字（`cfg_evolution_total_buff` 形如 `"52111006"` → `"1"` → `{"7": 10}`），或是位置数组（`sgs_hulao_reward_conf` 形如 `"1": ["791815","item_name1","2"]`）。位置含义只能从消费代码推断，不能从键名读出。

包内还有 1 个**空脚本**——脚本体里没有任何赋值，反汇编只有一条 `stop`：`sgs_upgrade_guide_conf`。

它们在 `Recovered/data_cn_jsc/plan/*.disasm.txt` 里可独立核对，是**发布内容为空**，不是解码失败。

## 8.5 谁在消费这些表

按 `Constant_CfgDataType_*` 统计的调用点数：

| CfgDataType | 配置表 | 调用点 | 示例位置 |
|---|---|---|---|
| `Constant_CfgDataType_Vip` | `sgs_vip_level_conf` | 7 | `Views/Dialog/ChargeDialog.js:166` |
| `Constant_CfgDataType_Global` | `sgs_global_conf` | 7 | `Views/Gems/GemsSophisticationView.js:237` |
| `Constant_CfgDataType_Plot_Dialog` | `sgs_dungeon_plot_dialog` | 5 | `Models/Dungeon.js:554` |
| `Constant_CfgDataType_Player_Upgrade` | `sgs_user_level_conf` | 5 | `Models/Player.js:604` |
| `Constant_CfgDataType_SkillMelt` | `sgs_skill_melt_conf` | 4 | `Views/Table/Cell/SkillMeltTableCell.js:295` |
| `Constant_CfgDataType_Skill_refine_conf` | `sgs_skill_refine_conf` | 3 | `Views/SkillRefining/RefiningSkillShowTableView.js:33` |
| `Constant_CfgDataType_LieutennantAttrPlus` | `sgs_lieutenant_skill` | 3 | `Models/General.js:80` |
| `Constant_CfgDataType_Decisive` | `sgs_world_war_schedule` | 2 | `Views/DecisiveBattle/DecisiveBattlePreviewView.js:251` |
| `Constant_CfgDataType_Gem` | `sgs_gem` | 2 | `Views/Gems/GemsComposeView.js:87` |
| `Constant_CfgDataType_Buddy` | `sgs_buddy_conf` | 2 | `Profile/GameData/Buddy.js:26` |
| `Constant_CfgDataType_Plot_Conf` | `sgs_dungeon_plot_conf` | 2 | `Models/Dungeon.js:538` |
| `Constant_CfgDataType_Skill_Advanced` | `sgs_skill_advanced_conf` | 2 | `Models/Skill.js:516` |
| `Constant_CfgDataType_Surrender` | `sgs_surrender` | 2 | `Models/TmpInfo/Achieve.js:40` |
| `Constant_CfgDataType_i18n` | `sgs_i18n` | 2 | `Tools/Ml.js:11` |
| `Constant_CfgDataType_Random_Name` | `sgs_random_name` | 2 | `Tools/Model.js:121` |
| `Constant_CfgDataType_MapAndDungon_Data` | `sgs_dungeon_conf` | 1 | `Views/Dialog/DetailDialogComponent.js:86` |
| `Constant_CfgDataType_Fate` | `sgs_fates` | 1 | `Profile/GameData/Fate.js:64` |
| `Constant_CfgDataType_General` | `sgs_generals` | 1 | `Profile/GameData/Fate.js:103` |
| `Constant_CfgDataType_GoddessSurface` | `sgs_godness_skin` | 1 | `Profile/GameData/Goddess.js:63` |
| `Constant_CfgDataType_Evolution_open_conf` | `sgs_evolution_open_conf` | 1 | `Models/EvolutionInfo.js:57` |
| `Constant_CfgDataType_Evolution_buff_conf` | `sgs_evolution_buff_conf` | 1 | `Models/EvolutionInfo.js:59` |
| `Constant_CfgDataType_Goddess` | `sgs_godness` | 1 | `Models/Goddess.js:105` |
| `Constant_CfgDataType_Meridian` | `sgs_meridian_conf` | 1 | `Models/Meridian.js:23` |
| `Constant_CfgDataType_MeridianPoint` | `sgs_meridian_point_conf` | 1 | `Models/MeridianPoint.js:22` |
| `Constant_CfgDataType_MeridianTop` | `sgs_meridian_top_conf` | 1 | `Models/MeridianTop.js:33` |
| `Constant_CfgDataType_Skill` | `sgs_skills` | 1 | `Models/Skill.js:97` |
| `Constant_CfgDataType_UnionWar_Battle` | `sgs_union_war_battle_conf` | 1 | `Models/UnionWarBattleInfo.js:29` |
| `Constant_CfgDataType_Beauty` | `sgs_beauty_conf_detail` | 1 | `Scene/Beauty/BeautyScene.js:781` |

## 8.6 绕过访问层的直接查表

| 配置表 | 次数 | 示例 |
|---|---|---|
| `sgs_item` | 4 | `Scene/Awake/AwakeBoxView.js:383  [id]` |
| `sgs_config_ls` | 2 | `Factorys/Label.js:25  [styleId]` |
| `sgs_config_ttf` | 2 | `Factorys/LabelTTF.js:75  [_fontId]` |
| `sgs_config_label` | 1 | `Factorys/Label.js:10  [labelId]` |
| `sgs_config_bmf` | 1 | `Factorys/LabelBMFont.js:89  [fontId]` |
| `sgs_dungeon_plot_dialog` | 1 | `Tools/Story.js:9  [storyId]` |

## 8.7 边界

这些表是**随包发布的静态内容**，不代表原服数据库结构，也不代表数值平衡。
表里的字段含义只从客户端读取行为可推断；真正的服务端取值与校验 见 [90-blackbox.md](90-blackbox.md)。

字段的**中文语义**（哪个字段是血/攻/防/智、枚举取值含义）见 [09-config-fields.md](09-config-fields.md)：那里用第三方数据做了逐条交叉验证——278 条武将 × 8 个属性字段全部一致，技能与装备的类型枚举 100% 纯净，四张等级表也都是本页已有的表。该页 §9.4 说明了为什么另外 3 张 CfgData 分支指向的表不需要补。
