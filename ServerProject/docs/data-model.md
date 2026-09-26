# cmn 数据模型全集

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


每个成功响应都可以携带 cmn。客户端在 `ReconstructedJS/src_jsc/Profile/GameData/common.js:281` 里按固定描述表把 cmn.<键> 合并进模型。

## 描述表（21 项）

| cmn 键 | 模型 | 合并语义 | 索引属性 | 证据 |
|---|---|---|---|---|
| `user_info` | `xs.Models.Player` | `Singleton` | `m_player` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:11` |
| `general_info` | `xs.Models.General` | `Map` | `m_generals` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:21` |
| `general_soul_info` | `xs.Models.GeneralSoul` | `Map` | `m_general_souls` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:31` |
| `skill_info` | `xs.Models.Skill` | `Map` | `m_skills` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:41` |
| `equipment_info` | `xs.Models.Equipment` | `Map` | `m_equs` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:51` |
| `item_info` | `xs.Models.Item` | `Map` | `m_items` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:61` |
| `combat_info` | `xs.Models.Combat` | `Replace` | `m_combats` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:71` |
| `team_info` | `xs.Models.TeamGeneral` | `Replace` | `m_team_general` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:80` |
| `equipment_piece_info` | `xs.Models.EquipmentPiece` | `Map` | `m_equ_pieces` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:90` |
| `atlas_info` | `xs.Models.Atlas` | `Map` | `m_atlas` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:100` |
| `skill_piece_info` | `xs.Models.SkillPiece` | `Map` | `m_skill_pieces` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:110` |
| `push` | `xs.Models.PushInfo` | `Singleton` | `m_push` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:120` |
| `adInfo` | `xs.Models.AdInfo` | `Singleton` | `m_adInfo` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:130` |
| `union_info` | `xs.Models.Union` | `Singleton` | `m_union` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:140` |
| `buddy_info` | `xs.Models.BuddyGeneral` | `Replace` | `m_buddy_general` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:150` |
| `unionWar` | `xs.Models.UnionWar` | `Singleton` | `m_unionWar` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:160` |
| `gem_info` | `xs.Models.Gems` | `Map` | `m_gem` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:170` |
| `magic_info` | `xs.Models.MagicalEqu` | `Map` | `m_magicalEqus` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:180` |
| `godness_info` | `xs.Models.Goddess` | `Map` | `m_goddess` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:190` |
| `meridian_info` | `xs.Models.MeridianTop` | `Map` | `m_meridianTop` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:200` |
| `evolution_info` | `xs.Models.EvolutionInfo` | `Map` | `m_evolutionInfo` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:210` |

## 全局键

这些键不经描述表，直接在 updateCmnData 开头被读取：

- `cmn.general_skin`
- `cmn.server_version`
- `cmn.cfg_version`
- `cmn.opt_cfg_version`
- `cmn.server_time`
- `cmn.offset_time`

## 响应根上的旁路键

updateOtherData 在 cmn 之外直接读取下列根字段（仅在 result:true 后执行）：

- `user_level_up_info`
- `meeting_info`
- `surrender_info`
- `refresh_info`

## 各模型读取的载荷字段

字段来自各模型 loadJson/update/createWithJson 中对载荷的读取。这是客户端**会读**的字段，不代表服务端**只发**这些字段。

### `xs.Models.AdInfo`

- 文件：`Models/AdInfo.js`
- 方法：`init`, `update`, `getActivitiesShowList`, `gettips_list`, `create`

| 字段 | 证据 |
|---|---|
| `ad_list` | `ReconstructedJS/src_jsc/Models/AdInfo.js:13 (update)` |
| `tips_list` | `ReconstructedJS/src_jsc/Models/AdInfo.js:13 (update)` |

### `xs.Models.Add`

- 文件：`Models/Add.js`
- 方法：`init`, `loadJson`, `_createModel`, `createHeadView`, `createIcon_NumAndName`, `getNameString`, `getTxtLabString`, `getShowNumString`, `getAddType`, `getAddNum`, `getAddLevel`, `getAddId`, `getCreateViewObj`, `getGradeForSort`, `getTypeSort`, `create`, `_createView`

| 字段 | 证据 |
|---|---|
| `type` | `ReconstructedJS/src_jsc/Models/Add.js:65 (loadJson)` |
| `num` | `ReconstructedJS/src_jsc/Models/Add.js:65 (loadJson)` |
| `level` | `ReconstructedJS/src_jsc/Models/Add.js:65 (loadJson)` |
| `id` | `ReconstructedJS/src_jsc/Models/Add.js:65 (loadJson)` |

### `xs.Models.AddShowList`

- 文件：`Models/AddShowList.js`
- 方法：`init`, `loadJson`, `createItemShowList`, `create`

| 字段 | 证据 |
|---|---|
| `length` | `ReconstructedJS/src_jsc/Models/AddShowList.js:14 (loadJson)` |

### `xs.Models.Atlas`

- 文件：`Models/Atlas.js`
- 方法：`init`, `loadJson`, `setGeneralGrade`, `getGeneralGrade`, `setPkId`, `getPkId`, `setType`, `getType`, `setAtlasStatus`, `getAtlasStatus`, `setGeneralStatus`, `getGeneralStatus`, `createIcon_Grade`, `createIcon_GradeAndName`, `createIconAndName`, `getModel`, `getGrade`, `getId`, `getWarlordGeneralId`, `getOrder`, `createWithJson`

| 字段 | 证据 |
|---|---|
| `pk_id` | `ReconstructedJS/src_jsc/Models/Atlas.js:35 (loadJson)` |
| `atlas_status` | `ReconstructedJS/src_jsc/Models/Atlas.js:35 (loadJson)` |
| `general_status` | `ReconstructedJS/src_jsc/Models/Atlas.js:35 (loadJson)` |
| `type` | `ReconstructedJS/src_jsc/Models/Atlas.js:35 (loadJson)` |
| `general_grade` | `ReconstructedJS/src_jsc/Models/Atlas.js:35 (loadJson)` |

### `xs.Models.Base`

- 文件：`Models/Base.js`
- 方法：`init`, `isNew`, `setIsNew`, `registerCaches`, `clearCache`, `loadJson`, `getNotifyCenter`

静态提取未解析到直接字段读取。

### `xs.Models.BaseCfg`

- 文件：`Models/BaseCfg.js`
- 方法：`init`, `setId`, `getId`, `readBaseData`, `loadJson`, `getBaseDataRef`, `getNameString`, `getDescString`

| 字段 | 证据 |
|---|---|
| `id` | `ReconstructedJS/src_jsc/Models/BaseCfg.js:40 (loadJson)` |

### `xs.Models.BaseUpgradeCfg`

- 文件：`Models/UpgradeCfg/BaseUpgradeCfg.js`
- 方法：`init`, `setLevel`, `getLevel`, `setType`, `getType`, `getTypeDataRef`, `getLevelDataRef`, `readBaseData`, `getMaxLevelDataRef`, `getMaxLevel`, `getNum`, `getMeltID`, `getNumTotal`, `getNextLevelNeed`

静态提取未解析到直接字段读取。

### `xs.Models.BreachModel`

- 文件：`Models/BreachModel.js`
- 方法：`init`, `getGeneralName`, `getGeneralId`, `getGeneralLevel`, `getGeneralGrade`, `getGeneralOldLevel`, `getGeneralNewLevel`, `getBreachOldLevel`, `getBreachNewLevel`, `getBreachLevelString_preLevel`, `getBreachLevelString`, `getHp`, `getAttack`, `getDefence`, `getIntelligence`, `getHpPlus`, `getAttackPlus`, `getDefencePlus`, `getIntelligencePlus`, `createCardView`, `getBreachLevelStringByLevel`, `getLastSoulNum`, `getNextBreachSoulNum`, `create`

| 字段 | 证据 |
|---|---|
| `info.general_level_now` | `ReconstructedJS/src_jsc/Models/BreachModel.js:7 (init)` |
| `info.general_level_before` | `ReconstructedJS/src_jsc/Models/BreachModel.js:7 (init)` |
| `info.insight_level_before` | `ReconstructedJS/src_jsc/Models/BreachModel.js:7 (init)` |
| `info.insight_level_now` | `ReconstructedJS/src_jsc/Models/BreachModel.js:7 (init)` |
| `info.attr_hp` | `ReconstructedJS/src_jsc/Models/BreachModel.js:7 (init)` |
| `info.attr_attack` | `ReconstructedJS/src_jsc/Models/BreachModel.js:7 (init)` |
| `info.attr_defense` | `ReconstructedJS/src_jsc/Models/BreachModel.js:7 (init)` |
| `info.attr_wisdom` | `ReconstructedJS/src_jsc/Models/BreachModel.js:7 (init)` |

### `xs.Models.BuddyGeneral`

- 文件：`Models/BuddyGeneral.js`
- 方法：`init`, `loadJson`, `getGeneralPkId`, `getGeneralPos`, `getIdxInTeam`, `createWithJson`, `createWithBase`

| 字段 | 证据 |
|---|---|
| `pk_id` | `ReconstructedJS/src_jsc/Models/BuddyGeneral.js:14 (loadJson)` |
| `position` | `ReconstructedJS/src_jsc/Models/BuddyGeneral.js:14 (loadJson)` |

### `xs.Models.Card`

- 文件：`Models/Card.js`
- 方法：`init`, `isDefault`, `setNum`, `getNum`, `isIgnoreByFilter`, `getGrade`, `getSortGrade`, `getStyleId`, `getStyleDesc`, `getObrit`, `getStyleModel`, `createHeadView`, `createCardView`, `createCard_Grade`, `createIcon_Grade`, `createIcon_GradeAndLv`, `createIcon_GradeAndLvAndFate`, `createIcon_GradeAndLvAndName`, `createIcon_GradeAndNameOrLv`, `createIcon_GradeAndNum`, `createIcon_GradeAndNumAndName`, `createIcon_GradeAndName`, `createIcon_GradeAndNameAndEqued`, `loadJson`, `setExp`, `getExp`, `setPkId`, `getPkId`, `getCardType`, `setCardType`, `getGetTime`, `setGetTime`, `setLevel`, `getLevel`, `getSource`, `clearResCache`, `getRes`, `getFightBase`, `getFightStep`, `getNextLevel`, `isMaxLv`, `getCurLevelExpPer`, `createGradeSmallIcon`, `createOrbitSmallIcon`, `createEffectTypeSmallIcon`, `getTotalExp`, `getMaxLevel`, `getUpgradeCoinNeed`, `getUpgradeExpNeed`, `getEatedProExp`, `getPrice`, `_getUpgradeExpCfgObj`, `_getEatedExpCfgObj`, `_getSellCfgObj`, `_getUpgradeCoinCfgObj`, `isAwaked`, `print`

| 字段 | 证据 |
|---|---|
| `pk_id` | `ReconstructedJS/src_jsc/Models/Card.js:201 (loadJson)` |
| `card_type` | `ReconstructedJS/src_jsc/Models/Card.js:201 (loadJson)` |
| `get_time` | `ReconstructedJS/src_jsc/Models/Card.js:201 (loadJson)` |
| `level` | `ReconstructedJS/src_jsc/Models/Card.js:201 (loadJson)` |
| `exp` | `ReconstructedJS/src_jsc/Models/Card.js:201 (loadJson)` |

### `xs.Models.Chapter`

- 文件：`Models/Chapter.js`
- 方法：`init`, `updateInfo`, `updateDetail`, `initDungeons`, `getDungeons`, `getDungeonByPos`, `getChapterId`, `getName`, `isCanShow`, `isCanIn`, `isBuffer`, `getNextDungeon`, `getNextDungeonsById`, `getChapterBg`, `getChapterBgId`, `getDungeonById`, `getBossDungeonId`, `create`

| 字段 | 证据 |
|---|---|
| `map_id` | `ReconstructedJS/src_jsc/Models/Chapter.js:13 (init)` |
| `map_name` | `ReconstructedJS/src_jsc/Models/Chapter.js:13 (init)` |
| `can_show` | `ReconstructedJS/src_jsc/Models/Chapter.js:13 (init)` |
| `can_in` | `ReconstructedJS/src_jsc/Models/Chapter.js:13 (init)` |
| `map_bgimage` | `ReconstructedJS/src_jsc/Models/Chapter.js:33 (updateDetail)` |
| `dungeon_info` | `ReconstructedJS/src_jsc/Models/Chapter.js:33 (updateDetail)` |
| `length` | `ReconstructedJS/src_jsc/Models/Chapter.js:47 (initDungeons)` |

### `xs.Models.Chat`

- 文件：`Models/Chat.js`
- 方法：`init`, `load`, `getCellHeight`, `refresh`, `createWithData`

| 字段 | 证据 |
|---|---|
| `user_id` | `ReconstructedJS/src_jsc/Models/Chat.js:29 (load)` |
| `channel` | `ReconstructedJS/src_jsc/Models/Chat.js:29 (load)` |
| `vip_level` | `ReconstructedJS/src_jsc/Models/Chat.js:29 (load)` |
| `nickname` | `ReconstructedJS/src_jsc/Models/Chat.js:29 (load)` |
| `message` | `ReconstructedJS/src_jsc/Models/Chat.js:29 (load)` |

### `xs.Models.ChatMessageManager`

- 文件：`Models/ChatMessageManager.js`
- 方法：`init`, `onExit`, `requestNewMsgFromServer`, `requestNewMsgFromServer_Success`, `checkQueueMax`, `removeAllQueue`, `showLanternMessage`, `getMessageAtIndex0`, `removeMessageAtIndex0`, `requestMsgFromLantern`, `_lanternCD_Over`, `getCanLanternRequest`, `getLastLanternMsg`, `getInstance`

| 字段 | 证据 |
|---|---|
| `length` | `ReconstructedJS/src_jsc/Models/ChatMessageManager.js:63 (requestNewMsgFromServer_Success)` |

### `xs.Models.Combat`

- 文件：`Models/Combat.js`
- 方法：`init`, `loadJson`, `getCurLevelUpgradeCfg`, `getUpgradeCfgByLevel`, `isOpen`, `getType`, `setLevelUpStatus`, `getLevelUpStatus`, `createTypeIcon`, `createCard_CardExp`, `getUpgradeExpNeed`, `getMaxLevel`, `getTotalExpByLevel`, `getExtraBuff`, `getNextLevelExtraBuff`, `getTotalExp`, `getOpenLevel`, `createWithJson`

| 字段 | 证据 |
|---|---|
| `combat_type` | `ReconstructedJS/src_jsc/Models/Combat.js:32 (loadJson)` |
| `open_level` | `ReconstructedJS/src_jsc/Models/Combat.js:32 (loadJson)` |
| `is_open` | `ReconstructedJS/src_jsc/Models/Combat.js:32 (loadJson)` |

### `xs.Models.CombatUpgradeCfg`

- 文件：`Models/UpgradeCfg/CombatUpgradeCfg.js`
- 方法：`getExtraBuff`, `getNum`, `getNumTotal`, `createWithBase`

静态提取未解析到直接字段读取。

### `xs.Models.CultureMedicine`

- 文件：`Models/CultureMedicine.js`
- 方法：`init`, `getName`, `getUpAttrField`, `getUpAttrVal`, `getDownAttrField`, `getDownAttrVal`, `create`

| 字段 | 证据 |
|---|---|
| `item_name` | `ReconstructedJS/src_jsc/Models/CultureMedicine.js:7 (init)` |
| `culture_attr` | `ReconstructedJS/src_jsc/Models/CultureMedicine.js:7 (init)` |

### `xs.Models.DailyAdventure`

- 文件：`Models/DailyAdventure.js`
- 方法：`init`, `getIsAdventureUp`, `createUpBtn`, `_getDay`, `create`

静态提取未解析到直接字段读取。

### `xs.Models.DataWrapped`

- 文件：`Models/DataWrapped.js`
- 方法：`init`, `getModelOri`, `getModelExt`, `create`

静态提取未解析到直接字段读取。

### `xs.Models.Dungeon`

- 文件：`Models/Dungeon.js`
- 方法：`init`, `initDropInfo`, `createView`, `createRoadAni`, `getStarView`, `isCanIn`, `isCanShow`, `getId`, `getBossCardId`, `getCostPower`, `getPos`, `getGrade`, `getDungeonTimes`, `getPlayedTimes`, `setPlayedTimes`, `getName`, `getSuggestLevel`, `getDropCoin`, `getFightStar`, `getUserExp`, `getGeneralExp`, `isPlayed`, `getDropInfo`, `getDirections`, `getType`, `getResetChgTimesPrice`, `getTotalCDPrice`, `isCanPlay`, `isNewest`, `isCanMulitiKill`, `isCanKill`, `getMultiKillTimes`, `getMultiKillTimesAll`, `getModelName`, `getPlotDialogArr`, `getPlot`, `getUnlockedIds`, `getRecoveryBuyTimes`, `create`

| 字段 | 证据 |
|---|---|
| `dungeon_id` | `ReconstructedJS/src_jsc/Models/Dungeon.js:27 (init)` |
| `dungeon_position` | `ReconstructedJS/src_jsc/Models/Dungeon.js:27 (init)` |
| `dungeon_name` | `ReconstructedJS/src_jsc/Models/Dungeon.js:27 (init)` |
| `dungeon_card` | `ReconstructedJS/src_jsc/Models/Dungeon.js:27 (init)` |
| `dungeon_grade` | `ReconstructedJS/src_jsc/Models/Dungeon.js:27 (init)` |
| `dungeon_suggest_level` | `ReconstructedJS/src_jsc/Models/Dungeon.js:27 (init)` |
| `dungeon_power` | `ReconstructedJS/src_jsc/Models/Dungeon.js:27 (init)` |
| `dungeon_user_exp` | `ReconstructedJS/src_jsc/Models/Dungeon.js:27 (init)` |
| `dungeon_general_exp` | `ReconstructedJS/src_jsc/Models/Dungeon.js:27 (init)` |
| `dungeon_coin` | `ReconstructedJS/src_jsc/Models/Dungeon.js:27 (init)` |
| `dungeon_times` | `ReconstructedJS/src_jsc/Models/Dungeon.js:27 (init)` |
| `user_dungeon_times` | `ReconstructedJS/src_jsc/Models/Dungeon.js:27 (init)` |
| `num_item_price` | `ReconstructedJS/src_jsc/Models/Dungeon.js:27 (init)` |
| `can_show` | `ReconstructedJS/src_jsc/Models/Dungeon.js:27 (init)` |
| `can_in` | `ReconstructedJS/src_jsc/Models/Dungeon.js:27 (init)` |
| `star_level` | `ReconstructedJS/src_jsc/Models/Dungeon.js:27 (init)` |
| `direction` | `ReconstructedJS/src_jsc/Models/Dungeon.js:27 (init)` |
| `is_newest` | `ReconstructedJS/src_jsc/Models/Dungeon.js:27 (init)` |
| `type` | `ReconstructedJS/src_jsc/Models/Dungeon.js:27 (init)` |
| `unlocked_id` | `ReconstructedJS/src_jsc/Models/Dungeon.js:27 (init)` |
| `elite_buy_times` | `ReconstructedJS/src_jsc/Models/Dungeon.js:27 (init)` |
| `dungeon_drop` | `ReconstructedJS/src_jsc/Models/Dungeon.js:27 (init)` |
| `length` | `ReconstructedJS/src_jsc/Models/Dungeon.js:79 (initDropInfo)` |

### `xs.Models.EatedExpUpgradeCfg`

- 文件：`Models/UpgradeCfg/EatedExpUpgradeCfg.js`
- 方法：`createWithBase`

静态提取未解析到直接字段读取。

### `xs.Models.Equipment`

- 文件：`Models/Equipment.js`
- 方法：`init`, `loadJson`, `setBoreList`, `getBoreList`, `getBoreSpriteNameByType`, `getGemsIdsInEquipment`, `getGemsFightPoint`, `setRefineLevelForPreview`, `recoveryRefineLevel`, `setRefineLevel`, `getRefineLevel`, `isMaxLv`, `isRefineMaxLv`, `setRefineExp`, `getRefineExp`, `getUpgradeRefineExpNeed`, `getTotalRefineExpByLevel`, `getCurRefineLevelExpPer`, `getMaxRefineLevel`, `getTotalRefineExp`, `getEatedRefineExp`, `setGeneralPkId`, `getGeneralPkId`, `isVersion`, `isEquipped`, `isCanBeSold`, `getCurLevelUpgradeCfg`, `getUpgradeCfgByLevel`, `getEffectValue`, `getNextLevelEffectValue`, `getEffectValueBase`, `getEffectValueStep`, `getPrice`, `getMeltRefineStoneId`, `getMeltRefineStoneNum`, `getEffectType`, `getPosType`, `getAttrNaked`, `getAttrRefineAdd_100Percent`, `getAttr`, `getAttrWithGems`, `getEquipTypeToString`, `getEquipStyleToString`, `getComposePieceNum`, `getPieceDesc`, `getPiecePrice`, `getBoreNum`, `getGemNum`, `createRefineLvToString`, `getMaxLevel`, `getNextLevelNeedMoney`, `createPartView`, `createHeadView_General_Equ_Skill`, `createCard`, `createCard_Detail`, `createCard_Strengthen`, `createCard_CardExp`, `createIcon_Select`, `createIcon_GradeAndLvAndName`, `createIcon_GradeAndNameOrLv`, `createIcon_GradeAndLv`, `createIcon_GradeAndLvBoreGem`, `createWithBase`, `createWithJson`

| 字段 | 证据 |
|---|---|
| `general_pk_id` | `ReconstructedJS/src_jsc/Models/Equipment.js:49 (loadJson)` |
| `refine_level` | `ReconstructedJS/src_jsc/Models/Equipment.js:49 (loadJson)` |
| `refine_exp` | `ReconstructedJS/src_jsc/Models/Equipment.js:49 (loadJson)` |
| `bore_list` | `ReconstructedJS/src_jsc/Models/Equipment.js:49 (loadJson)` |

### `xs.Models.EquipmentCfg`

- 文件：`Models/UpgradeCfg/EquipmentCfg.js`
- 方法：`init`, `readBaseData`, `setType`, `getTypeDataRef`, `getLevelDataRef`, `getMaxLevel`, `createWithBase`

静态提取未解析到直接字段读取。

### `xs.Models.EquipmentExchange`

- 文件：`Models/EquipmentExchange.js`
- 方法：`init`, `loadJson`, `getItem`, `getDiscountGoldSoul`, `getDiscountSilverSoul`, `createWithJson`

| 字段 | 证据 |
|---|---|
| `pk_id` | `ReconstructedJS/src_jsc/Models/EquipmentExchange.js:18 (loadJson)` |
| `item_id` | `ReconstructedJS/src_jsc/Models/EquipmentExchange.js:18 (loadJson)` |
| `discount_gold_soul` | `ReconstructedJS/src_jsc/Models/EquipmentExchange.js:18 (loadJson)` |
| `discount_silver_soul` | `ReconstructedJS/src_jsc/Models/EquipmentExchange.js:18 (loadJson)` |

### `xs.Models.EquipmentPiece`

- 文件：`Models/EquipmentPiece.js`
- 方法：`init`, `isPiece`, `getPkId`, `loadJson`, `loadBase`, `getId`, `getNameString`, `createPartView`, `createHeadView_General_Equ_Skill`, `createHeadView`, `createCardView`, `getComposePieceNum`, `canCompose`, `getPieceDesc`, `getPiecePrice`, `getEffectType`, `createIcon_Grade`, `createIcon_GradeAndName`, `getGrade`, `getPosType`, `getEquipmentModel`, `createWithJson`, `createWithBase`

| 字段 | 证据 |
|---|---|
| `num` | `ReconstructedJS/src_jsc/Models/EquipmentPiece.js:27 (loadJson)` |
| `pk_id` | `ReconstructedJS/src_jsc/Models/EquipmentPiece.js:27 (loadJson)` |
| `id` | `ReconstructedJS/src_jsc/Models/EquipmentPiece.js:27 (loadJson)` |

### `xs.Models.EvolutionInfo`

- 文件：`Models/EvolutionInfo.js`
- 方法：`init`, `loadCfg`, `loadData`, `loadJson`, `getOpenRules`, `getOpenResource`, `getBuffInfo`, `getStatusAwake`, `getEvolutionLevel`, `getEvolutionSubLevel`, `getGeneralId`, `initCachePoint`, `createCard_General`, `getCacheGeneralModel`, `getChacheMagicalModel`, `checkOpenRule`, `getRuleViewParams`, `isCanAwake`, `getBuffConf`, `getBuffConfs`, `getBuffConfItemViewData`, `getAllYuanVaule`, `getBuffConfsView`, `createWithBase`, `createWithJson`

| 字段 | 证据 |
|---|---|
| `pk_id` | `ReconstructedJS/src_jsc/Models/EvolutionInfo.js:71 (loadJson)` |
| `evolution_id` | `ReconstructedJS/src_jsc/Models/EvolutionInfo.js:71 (loadJson)` |
| `general_id` | `ReconstructedJS/src_jsc/Models/EvolutionInfo.js:71 (loadJson)` |
| `evolution_level` | `ReconstructedJS/src_jsc/Models/EvolutionInfo.js:71 (loadJson)` |
| `sub_level` | `ReconstructedJS/src_jsc/Models/EvolutionInfo.js:71 (loadJson)` |
| `fate_ids` | `ReconstructedJS/src_jsc/Models/EvolutionInfo.js:71 (loadJson)` |
| `status` | `ReconstructedJS/src_jsc/Models/EvolutionInfo.js:71 (loadJson)` |
| `surrender_status` | `ReconstructedJS/src_jsc/Models/EvolutionInfo.js:71 (loadJson)` |
| `getId` | `ReconstructedJS/src_jsc/Models/EvolutionInfo.js:156 (checkOpenRule)` |
| `getBreachLevel` | `ReconstructedJS/src_jsc/Models/EvolutionInfo.js:156 (checkOpenRule)` |
| `toString` | `ReconstructedJS/src_jsc/Models/EvolutionInfo.js:355 (getBuffConf)` |
| `buff_type` | `ReconstructedJS/src_jsc/Models/EvolutionInfo.js:382 (getBuffConfItemViewData)` |
| `buff_effect` | `ReconstructedJS/src_jsc/Models/EvolutionInfo.js:382 (getBuffConfItemViewData)` |
| `buff_desc` | `ReconstructedJS/src_jsc/Models/EvolutionInfo.js:382 (getBuffConfItemViewData)` |

### `xs.Models.Fate`

- 文件：`Models/Fate.js`
- 方法：`init`, `getLimit`, `getType`, `getAdditionType`, `getStringFromAdditionType`, `getTypeFromFateObject`, `getNameStringFromFateType`, `isConnectWithId`, `getDescString`, `getFateObject`, `createWithBase`

静态提取未解析到直接字段读取。

### `xs.Models.Feast`

- 文件：`Models/Feast.js`
- 方法：`init`, `loadJson`, `isFeastOpen`, `isEatAble`, `getNum`, `schedule_update_all`, `create`, `activityDay`, `isAble`, `isOpen`, `instanceId`, `needGold`, `leftChance`, `getIsDraw`, `presentTime`, `getInstanceId`, `getInstanceBg`, `getRewardList`, `isStartTime`, `getContinueTime`, `getPresentTime`, `getIsFree`, `getGeneras`, `getGeneraGoals`, `getGeneraSays`, `getEnables`, `isPlay`, `getResult`, `getChestList`, `getFreeTimes`, `getRefreshTiems`, `getOpenTimes`, `getFestivalInfo`, `getBossInfo`, `getAwardInfo`, `getKillInfo`, `getBeauty`, `getCmn`, `getBeautyInfo`, `getBeautyRecord`, `getUserBeautyInfo`, `getTalentInfo`

| 字段 | 证据 |
|---|---|
| `length` | `ReconstructedJS/src_jsc/Models/Feast.js:90 (loadJson)` |

### `xs.Models.Fight`

- 文件：`Models/TmpInfo/Fight.js`
- 方法：`init`, `getGoddessRounds`, `getToList`, `getGoddessRoundsByData`, `getInfoBySide`, `getCardsSizeBySide`, `getBackupsSizeBySide`, `getMode`, `setRoundCur`, `getRoundCur`, `getRoundMax`, `getFstSide`, `getBackUpNumCur`, `getBackUpNumMax`, `canSkip`, `getCardModelBySideAndOffset`, `getBackupModelBySideAndOffset`, `_getCardIdxBySideAndOffset`, `_getBackupIdxBySideAndOffset`, `getSideByIdx`, `getOffsetByIdx`, `getCardModelByIdx`, `setCardModelByIdx`, `update_cards_idx`, `_getSpeedInfos`, `changeSpeed`, `setSpeedIdx`, `getSpeed`, `getNewPlayerSpeed`, `getSpeedVoiceType`, `getSpeedIdx`, `getSpeedTag`, `getSpeedText`, `create`

| 字段 | 证据 |
|---|---|
| `openType` | `ReconstructedJS/src_jsc/Models/TmpInfo/Fight.js:8 (init)` |
| `fightData.getFightProcess` | `ReconstructedJS/src_jsc/Models/TmpInfo/Fight.js:8 (init)` |
| `storyData` | `ReconstructedJS/src_jsc/Models/TmpInfo/Fight.js:8 (init)` |
| `fightData.isSuccess` | `ReconstructedJS/src_jsc/Models/TmpInfo/Fight.js:8 (init)` |
| `leaveIdx` | `ReconstructedJS/src_jsc/Models/TmpInfo/Fight.js:445 (update_cards_idx)` |
| `backupIdx` | `ReconstructedJS/src_jsc/Models/TmpInfo/Fight.js:445 (update_cards_idx)` |

### `xs.Models.FightInfo`

- 文件：`Models/Fight/FightInfo.js`
- 方法：`init`, `loadJson`, `isShowFightResult`, `initFightResultInfo`, `getGeneralExpAndLevelChangeInfo`, `getGeneralExpChangeByIdx`, `getGeneralLevelChangeByIdx`, `getGeneralLevelNowByIdx`, `isGeneralLevelup`, `getFightProcess`, `setFightProcess`, `getStarLevel`, `isSuccess`, `getRounds`, `getRemainderGeneralPer`, `getUserExp`, `getFortune`, `getGeneralExp`, `getDropCoin`, `getDropItems`, `getFightType`, `getLadderUpTo`, `getSalary`, `getPoint`, `getHonor`, `getMaxIntegration`, `getTotalProgress`, `getTotalIntegration`, `getFightPlayer`, `getIntegration`, `create`, `getFightInfos`

| 字段 | 证据 |
|---|---|
| `fight_info` | `ReconstructedJS/src_jsc/Models/Fight/FightInfo.js:41 (loadJson)` |
| `fight_result` | `ReconstructedJS/src_jsc/Models/Fight/FightInfo.js:41 (loadJson)` |
| `player_info` | `ReconstructedJS/src_jsc/Models/Fight/FightInfo.js:60 (initFightResultInfo)` |
| `fight_calculate_info.star_level` | `ReconstructedJS/src_jsc/Models/Fight/FightInfo.js:60 (initFightResultInfo)` |
| `success` | `ReconstructedJS/src_jsc/Models/Fight/FightInfo.js:60 (initFightResultInfo)` |
| `fight_calculate_info.rounds` | `ReconstructedJS/src_jsc/Models/Fight/FightInfo.js:60 (initFightResultInfo)` |
| `fight_calculate_info.residue_team_num` | `ReconstructedJS/src_jsc/Models/Fight/FightInfo.js:60 (initFightResultInfo)` |
| `fight_calculate_info.residue_team_percent` | `ReconstructedJS/src_jsc/Models/Fight/FightInfo.js:60 (initFightResultInfo)` |
| `show_general_info` | `ReconstructedJS/src_jsc/Models/Fight/FightInfo.js:60 (initFightResultInfo)` |
| `fight_calculate_info.up_rank` | `ReconstructedJS/src_jsc/Models/Fight/FightInfo.js:60 (initFightResultInfo)` |
| `add_list` | `ReconstructedJS/src_jsc/Models/Fight/FightInfo.js:60 (initFightResultInfo)` |
| `add_list.length` | `ReconstructedJS/src_jsc/Models/Fight/FightInfo.js:60 (initFightResultInfo)` |
| `drop_info.user_exp` | `ReconstructedJS/src_jsc/Models/Fight/FightInfo.js:60 (initFightResultInfo)` |
| `drop_info.general_exp` | `ReconstructedJS/src_jsc/Models/Fight/FightInfo.js:60 (initFightResultInfo)` |
| `drop_info.user_coin` | `ReconstructedJS/src_jsc/Models/Fight/FightInfo.js:60 (initFightResultInfo)` |
| `drop_info.fortune` | `ReconstructedJS/src_jsc/Models/Fight/FightInfo.js:60 (initFightResultInfo)` |
| `drop_info.rank_salary` | `ReconstructedJS/src_jsc/Models/Fight/FightInfo.js:60 (initFightResultInfo)` |
| `drop_info.reward_honor` | `ReconstructedJS/src_jsc/Models/Fight/FightInfo.js:60 (initFightResultInfo)` |
| `drop_info.point` | `ReconstructedJS/src_jsc/Models/Fight/FightInfo.js:60 (initFightResultInfo)` |
| `fight_calculate_info.extra_integration` | `ReconstructedJS/src_jsc/Models/Fight/FightInfo.js:60 (initFightResultInfo)` |
| `fight_calculate_info.max_total_integration` | `ReconstructedJS/src_jsc/Models/Fight/FightInfo.js:60 (initFightResultInfo)` |
| `fight_calculate_info.point_progress` | `ReconstructedJS/src_jsc/Models/Fight/FightInfo.js:60 (initFightResultInfo)` |
| `fight_calculate_info.total_integration` | `ReconstructedJS/src_jsc/Models/Fight/FightInfo.js:60 (initFightResultInfo)` |
| `fight_type` | `ReconstructedJS/src_jsc/Models/Fight/FightInfo.js:60 (initFightResultInfo)` |

### `xs.Models.FightRoundItem`

- 文件：`Models/Fight/FightRoundItem.js`
- 方法：`toDebugString`, `doShow`, `doShowBySkillName`, `createPara`, `doShowNvsN`, `doShowStory`, `init`, `getSkill`

| 字段 | 证据 |
|---|---|
| `createSkillAction` | `ReconstructedJS/src_jsc/Models/Fight/FightRoundItem.js:36 (doShowBySkillName)` |
| `runAction` | `ReconstructedJS/src_jsc/Models/Fight/FightRoundItem.js:36 (doShowBySkillName)` |
| `model.cards_size0` | `ReconstructedJS/src_jsc/Models/Fight/FightRoundItem.js:43 (createPara)` |
| `model.cards_size1` | `ReconstructedJS/src_jsc/Models/Fight/FightRoundItem.js:43 (createPara)` |
| `getModel` | `ReconstructedJS/src_jsc/Models/Fight/FightRoundItem.js:43 (createPara)` |
| `cardViews` | `ReconstructedJS/src_jsc/Models/Fight/FightRoundItem.js:43 (createPara)` |
| `backupViews` | `ReconstructedJS/src_jsc/Models/Fight/FightRoundItem.js:43 (createPara)` |
| `getOpenTypeSkillName` | `ReconstructedJS/src_jsc/Models/Fight/FightRoundItem.js:43 (createPara)` |
| `getNear` | `ReconstructedJS/src_jsc/Models/Fight/FightRoundItem.js:43 (createPara)` |
| `num` | `ReconstructedJS/src_jsc/Models/Fight/FightRoundItem.js:222 (init)` |
| `from` | `ReconstructedJS/src_jsc/Models/Fight/FightRoundItem.js:222 (init)` |
| `to` | `ReconstructedJS/src_jsc/Models/Fight/FightRoundItem.js:222 (init)` |
| `skill` | `ReconstructedJS/src_jsc/Models/Fight/FightRoundItem.js:222 (init)` |
| `type` | `ReconstructedJS/src_jsc/Models/Fight/FightRoundItem.js:222 (init)` |
| `params` | `ReconstructedJS/src_jsc/Models/Fight/FightRoundItem.js:222 (init)` |
| `side` | `ReconstructedJS/src_jsc/Models/Fight/FightRoundItem.js:222 (init)` |
| `skillId` | `ReconstructedJS/src_jsc/Models/Fight/FightRoundItem.js:222 (init)` |
| `cnum` | `ReconstructedJS/src_jsc/Models/Fight/FightRoundItem.js:222 (init)` |
| `to.length` | `ReconstructedJS/src_jsc/Models/Fight/FightRoundItem.js:222 (init)` |

### `xs.Models.FightRoundList`

- 文件：`Models/Fight/FightRoundList.js`
- 方法：`ctor`, `init`, `push`, `getCurItem`, `nextIdx`, `_getListObjForFs`, `dispose_mo_kurou`, `_getListObjForTagList`, `dispose_luanwu`, `dispose_nuyan`, `dispose_kuanggu`, `dispose_jieyin`, `dispose_jiuyuan`, `dispose_lieren`, `dispose_general`, `getListForCfgByTag`, `getListForCfgByNoTagTo`, `getListForCfgByTagFrom`, `createWithFightItems`, `createWithStoryItems`

| 字段 | 证据 |
|---|---|
| `length` | `ReconstructedJS/src_jsc/Models/Fight/FightRoundList.js:35 (_getListObjForFs)` |
| `params.to` | `ReconstructedJS/src_jsc/Models/Fight/FightRoundList.js:63 (dispose_mo_kurou)` |
| `to` | `ReconstructedJS/src_jsc/Models/Fight/FightRoundList.js:63 (dispose_mo_kurou)` |
| `from` | `ReconstructedJS/src_jsc/Models/Fight/FightRoundList.js:63 (dispose_mo_kurou)` |
| `type` | `ReconstructedJS/src_jsc/Models/Fight/FightRoundList.js:63 (dispose_mo_kurou)` |
| `skillId` | `ReconstructedJS/src_jsc/Models/Fight/FightRoundList.js:63 (dispose_mo_kurou)` |
| `params.once` | `ReconstructedJS/src_jsc/Models/Fight/FightRoundList.js:63 (dispose_mo_kurou)` |
| `skill.replace` | `ReconstructedJS/src_jsc/Models/Fight/FightRoundList.js:205 (dispose_nuyan)` |
| `params.to.length` | `ReconstructedJS/src_jsc/Models/Fight/FightRoundList.js:437 (getListForCfgByTag)` |
| `params.from` | `ReconstructedJS/src_jsc/Models/Fight/FightRoundList.js:479 (getListForCfgByTagFrom)` |
| `params.from.length` | `ReconstructedJS/src_jsc/Models/Fight/FightRoundList.js:479 (getListForCfgByTagFrom)` |

### `xs.Models.FightStoryItem`

- 文件：`Models/FightStoryItem.js`
- 方法：`toDebugString`, `init`, `getType`, `getSite`, `getTalkerNameString`, `getContentString`, `canSkip`, `getTalkerResource`

静态提取未解析到直接字段读取。

### `xs.Models.Gems`

- 文件：`Models/Gems.js`
- 方法：`init`, `getQuantity`, `getUsedNum`, `loadJson`, `setLook`, `setNewStatus`, `setNoNew`, `getNewStatus`, `getStatus`, `getItemNum`, `getEffectValue`, `getEffectValueBase`, `getLevel`, `getPrice`, `getEffectType`, `getAttrNaked`, `getAttr`, `getEquipTypeToString`, `createHeadView_General_Equ_Skill`, `createIcon_Select`, `createIcon_GradeAndAttribute`, `createIcon_GradeAndName`, `createIcon_GradeAndLv`, `getLevelById`, `createWithBase`, `createWithJson`

| 字段 | 证据 |
|---|---|
| `used_num` | `ReconstructedJS/src_jsc/Models/Gems.js:46 (loadJson)` |
| `total_num` | `ReconstructedJS/src_jsc/Models/Gems.js:46 (loadJson)` |
| `id` | `ReconstructedJS/src_jsc/Models/Gems.js:251 (createWithJson)` |

### `xs.Models.General`

- 文件：`Models/General.js`
- 方法：`init`, `havaLieutenantAttrPlus`, `getLieutenantAttrPlusName`, `getLieutenantAttrPlusTypes`, `getLieutenantAttrPlusEffects`, `getCurLevelUpgradeCfg`, `getUpgradeCfgByLevel`, `getNaturalSkillPkId`, `getNaturalSkillId`, `getBreachLevelMax`, `isBreachToMax`, `getGanodermaNum`, `loadJson`, `getFates`, `isFateConnectWithSkillId`, `isFateConnectWithEquipmentId`, `isFateConnectWithGeneralId`, `setFightPoint`, `getFightPoint`, `getAttrNaked`, `getGeneralStatus`, `_getAttrBase`, `_getAttrStep`, `_getAttrOriginal_onlyLevel`, `_getAttrOriginal`, `getAttrAddValueByInsightLevel`, `getPropertyValueForLegacy`, `getAdditionalSkills`, `getNaturalSkillType`, `getNaturalSkillTypeToString`, `createNaturalSkillTypeIcon`, `getVoiceFileName`, `playAudioEffect`, `getEatedProExp`, `getProExp`, `getProCombatExp`, `getProLibateExp`, `getProLibateGanoderma`, `getProLibateSoulNum`, `getNextBreachNeedSoulNum`, `getCurBreachTotalUsedSoulNum`, `getBreachLevelUpgradeByGeneralPkId`, `getMaxBranchLevel`, `_getBreachLevelUpgradeBySoulNum`, `getLevelUpgradeByExp`, `getReincarnateNum`, `getObrit`, `setSide`, `getAlchemyInfo`, `getDevelopWords`, `createCard_Grade`, `createCard_FightSkin`, `createCard_Fight`, `createIcon_Fight`, `createIcon_Select`, `createIcon_CombatSelect`, `createIcon_Grade`, `createIcon_TeamBuild`, `setStatus`, `getStatus`, `createHeadViewWithStatus`, `createHeadBtnWithStatus`, `createPartView`, `createHeadView_General_Equ_Skill`, `checkAbleToBreach`, `getBreachLevel`, `getBreachStar`, `_processBreachLevel`, `_getBreachLevel`, `getTalentPoint`, `isSkillEmptyAtIndex`, `createCard_Toast`, `createCard_General`, `createCard_GeneralLvAndType`, `createCard_Detail`, `createCard_Chapter`, `isLieutenant`, `getMajorPkId`, `getLieutenantPosition`, `initDisplayProperty`, `isVersion`, `isCanAwaked`, `getRes`, `isNewRes`, `isAwaked`, `createWithBase`, `createWithJson`

| 字段 | 证据 |
|---|---|
| `ganoderma_num` | `ReconstructedJS/src_jsc/Models/General.js:179 (loadJson)` |
| `talent_point` | `ReconstructedJS/src_jsc/Models/General.js:179 (loadJson)` |
| `general_naturalskill_id` | `ReconstructedJS/src_jsc/Models/General.js:179 (loadJson)` |
| `culture_info` | `ReconstructedJS/src_jsc/Models/General.js:179 (loadJson)` |
| `attr_hp` | `ReconstructedJS/src_jsc/Models/General.js:179 (loadJson)` |
| `attr_attack` | `ReconstructedJS/src_jsc/Models/General.js:179 (loadJson)` |
| `attr_defense` | `ReconstructedJS/src_jsc/Models/General.js:179 (loadJson)` |
| `attr_wisdom` | `ReconstructedJS/src_jsc/Models/General.js:179 (loadJson)` |
| `base_hp` | `ReconstructedJS/src_jsc/Models/General.js:179 (loadJson)` |
| `base_attack` | `ReconstructedJS/src_jsc/Models/General.js:179 (loadJson)` |
| `base_defense` | `ReconstructedJS/src_jsc/Models/General.js:179 (loadJson)` |
| `base_wisdom` | `ReconstructedJS/src_jsc/Models/General.js:179 (loadJson)` |
| `ls_type` | `ReconstructedJS/src_jsc/Models/General.js:179 (loadJson)` |
| `ls_value` | `ReconstructedJS/src_jsc/Models/General.js:179 (loadJson)` |
| `insight_level` | `ReconstructedJS/src_jsc/Models/General.js:179 (loadJson)` |
| `major_pk_id` | `ReconstructedJS/src_jsc/Models/General.js:179 (loadJson)` |
| `position` | `ReconstructedJS/src_jsc/Models/General.js:179 (loadJson)` |
| `evolution_image_status` | `ReconstructedJS/src_jsc/Models/General.js:179 (loadJson)` |

### `xs.Models.GeneralExpCfg`

- 文件：`Models/UpgradeCfg/GeneralExpCfg.js`
- 方法：`createWithBase`

静态提取未解析到直接字段读取。

### `xs.Models.GeneralPreview`

- 文件：`Models/GeneralPreview.js`
- 方法：`init`, `loadJson`, `setGrade`, `getGrade`, `setPkId`, `getPkId`, `createIcon_Grade`, `createIcon_GradeAndName`, `createIconAndName`, `getModel`, `getId`, `getWarlordGeneralId`, `getOrder`, `createWithJson`

| 字段 | 证据 |
|---|---|
| `general_id` | `ReconstructedJS/src_jsc/Models/GeneralPreview.js:19 (loadJson)` |

### `xs.Models.GeneralSoul`

- 文件：`Models/GeneralSoul.js`
- 方法：`init`, `getPkId`, `loadJson`, `loadBase`, `getId`, `getNameString`, `isSoul`, `getProExp`, `getProCombatExp`, `createPartView`, `createHeadView_General_Equ_Skill`, `createHeadView`, `createCardView`, `createCard_General`, `getReincarnateNum`, `getGrade`, `getGeneralBreachStar`, `_setReferenceGeneralCache`, `_getReferenceGeneralCache`, `_delReferenceGeneralCache`, `checkSoulNumEnough`, `getBaseGeneralModel`, `createIcon_CombatSelect`, `createIcon_Grade`, `createIcon_GradeAndNum`, `createIcon_GradeAndNumAndName`, `createIcon_GradeAndName`, `createIcon_GradeAndLvAndName`, `createIcon_GradeAndNameOrLv`, `getCountry`, `getFightBase`, `getFightStep`, `getLevel`, `getRes`, `getNaturalSkillType`, `getNaturalSkillTypeToString`, `createWithJson`, `createWithBase`

| 字段 | 证据 |
|---|---|
| `num` | `ReconstructedJS/src_jsc/Models/GeneralSoul.js:28 (loadJson)` |
| `pk_id` | `ReconstructedJS/src_jsc/Models/GeneralSoul.js:28 (loadJson)` |
| `id` | `ReconstructedJS/src_jsc/Models/GeneralSoul.js:28 (loadJson)` |

### `xs.Models.GeneralTraining`

- 文件：`Models/GeneralTraining.js`
- 方法：`init`, `loadJson`, `getTrainingId`, `getGeneralId`, `getEndTime`, `getTrainingStatus`, `getExp`, `getMagatamaNumNeed`, `getSpeak`, `getEndSpeak`, `getDesc`, `getHeadSp`, `schedule_updateEndTime`, `unschedule`, `create`, `getPkId`, `getExtraExp`, `getBeforeLevel`, `getNowLevel`, `createWithJson`

| 字段 | 证据 |
|---|---|
| `user_training_id` | `ReconstructedJS/src_jsc/Models/GeneralTraining.js:36 (loadJson)` |
| `general_leader_id` | `ReconstructedJS/src_jsc/Models/GeneralTraining.js:36 (loadJson)` |
| `to_end_time` | `ReconstructedJS/src_jsc/Models/GeneralTraining.js:36 (loadJson)` |
| `training_status` | `ReconstructedJS/src_jsc/Models/GeneralTraining.js:36 (loadJson)` |
| `exp` | `ReconstructedJS/src_jsc/Models/GeneralTraining.js:36 (loadJson)` |
| `magatama_need` | `ReconstructedJS/src_jsc/Models/GeneralTraining.js:36 (loadJson)` |
| `speak_words_desc` | `ReconstructedJS/src_jsc/Models/GeneralTraining.js:36 (loadJson)` |
| `training_end_speak_words` | `ReconstructedJS/src_jsc/Models/GeneralTraining.js:36 (loadJson)` |
| `description` | `ReconstructedJS/src_jsc/Models/GeneralTraining.js:36 (loadJson)` |
| `card_name` | `ReconstructedJS/src_jsc/Models/GeneralTraining.js:36 (loadJson)` |

### `xs.Models.Goddess`

- 文件：`Models/Goddess.js`
- 方法：`init`, `loadJson`, `createHeadView`, `createHeadView_General_Equ_Skill`, `getBaseDataRef`, `_getGoddessId`, `getGrade`, `getPkId`, `getId`, `getResourceId`, `getShowSkin`, `getSkinList`, `getNextSkinID`, `getBigFighting`, `getSmallFighting`, `getBuffList`, `getIsFight`, `getDescString`, `getNameString`, `getFates`, `createCardAndName`, `createGoddessBigPic`, `createIconAndName`, `createPartView`, `readCfgData`, `createWithBase`, `createWithBaseSurface`, `createWithJson`

| 字段 | 证据 |
|---|---|
| `id` | `ReconstructedJS/src_jsc/Models/Goddess.js:41 (loadJson)` |
| `godness_id` | `ReconstructedJS/src_jsc/Models/Goddess.js:41 (loadJson)` |
| `pk_id` | `ReconstructedJS/src_jsc/Models/Goddess.js:41 (loadJson)` |
| `resource_id` | `ReconstructedJS/src_jsc/Models/Goddess.js:41 (loadJson)` |
| `show_skin` | `ReconstructedJS/src_jsc/Models/Goddess.js:41 (loadJson)` |
| `skin_list` | `ReconstructedJS/src_jsc/Models/Goddess.js:41 (loadJson)` |
| `is_fight` | `ReconstructedJS/src_jsc/Models/Goddess.js:41 (loadJson)` |
| `godness_fate_id` | `ReconstructedJS/src_jsc/Models/Goddess.js:41 (loadJson)` |
| `name` | `ReconstructedJS/src_jsc/Models/Goddess.js:294 (readCfgData)` |
| `desc` | `ReconstructedJS/src_jsc/Models/Goddess.js:294 (readCfgData)` |
| `show_fighting` | `ReconstructedJS/src_jsc/Models/Goddess.js:294 (readCfgData)` |
| `fighting` | `ReconstructedJS/src_jsc/Models/Goddess.js:294 (readCfgData)` |
| `buff` | `ReconstructedJS/src_jsc/Models/Goddess.js:294 (readCfgData)` |

### `xs.Models.GoddessFate`

- 文件：`Models/GoddessFate.js`
- 方法：`init`, `getLimit`, `getType`, `getAdditionType`, `getStringFromAdditionType`, `getTypeFromFateObject`, `getNameStringFromFateType`, `isConnectWithId`, `getDescString`, `getFateObject`, `createWithBase`

静态提取未解析到直接字段读取。

### `xs.Models.Good`

- 文件：`Models/Good.js`
- 方法：`init`, `loadJson`, `createHeadView`, `getItem`, `getItemId`, `getIsNotice`, `getItemTitle`, `getItemDesc`, `getVipLevel`, `getOriginalPrice`, `getPrice`, `getPurchaseNum`, `getPurchasedNum`, `isPurchased`, `getOpenTime`, `getCloseTime`, `updateCloseTime`, `getNameString`, `isAbleToBuy`, `getDescString`, `getCanBuyNum`, `getCurrencyType`, `getTagId`, `createWithJson`

| 字段 | 证据 |
|---|---|
| `pk_id` | `ReconstructedJS/src_jsc/Models/Good.js:40 (loadJson)` |
| `item_id` | `ReconstructedJS/src_jsc/Models/Good.js:40 (loadJson)` |
| `item_price` | `ReconstructedJS/src_jsc/Models/Good.js:40 (loadJson)` |
| `discount_price` | `ReconstructedJS/src_jsc/Models/Good.js:40 (loadJson)` |
| `purchase_num` | `ReconstructedJS/src_jsc/Models/Good.js:40 (loadJson)` |
| `purchased_num` | `ReconstructedJS/src_jsc/Models/Good.js:40 (loadJson)` |
| `vip_level` | `ReconstructedJS/src_jsc/Models/Good.js:40 (loadJson)` |
| `is_purchased` | `ReconstructedJS/src_jsc/Models/Good.js:40 (loadJson)` |
| `open_time` | `ReconstructedJS/src_jsc/Models/Good.js:40 (loadJson)` |
| `close_time` | `ReconstructedJS/src_jsc/Models/Good.js:40 (loadJson)` |
| `currency_type` | `ReconstructedJS/src_jsc/Models/Good.js:40 (loadJson)` |
| `tag_id` | `ReconstructedJS/src_jsc/Models/Good.js:40 (loadJson)` |
| `can_exchange` | `ReconstructedJS/src_jsc/Models/Good.js:40 (loadJson)` |
| `item_title` | `ReconstructedJS/src_jsc/Models/Good.js:40 (loadJson)` |
| `item_desc` | `ReconstructedJS/src_jsc/Models/Good.js:40 (loadJson)` |
| `is_notice` | `ReconstructedJS/src_jsc/Models/Good.js:40 (loadJson)` |
| `gift_pack` | `ReconstructedJS/src_jsc/Models/Good.js:40 (loadJson)` |

### `xs.Models.InsightGrowType`

- 文件：`Models/UpgradeCfg/InsightGrowType.js`
- 方法：`getEffectByAttrType_100Percent`, `getEffectByAttrType`, `createWithBase`

静态提取未解析到直接字段读取。

### `xs.Models.Item`

- 文件：`Models/Item.js`
- 方法：`init`, `loadJson`, `setItemNum`, `getItemNum`, `getNum`, `addItemNum`, `subItemNum`, `getItemId`, `getTagId`, `getGiftPack`, `getItemType`, `getOrder`, `getRelatedId`, `getBaseAddId`, `getBaseAddType`, `getBtnNameByIdx`, `getEffectValue_Equipment`, `getEffectValue`, `getExpPercent`, `getGanodermaPercent`, `getLegacyGrade`, `getEatedRefineExp`, `use`, `getEffectSkillId`, `createPartView`, `getStyleModel`, `createIcon`, `createIcon_Grade`, `createIcon_GradeAndNum`, `createIcon_GradeAndName`, `createIcon_GradeAndNumAndName`, `createIcon_GradeAndLvAndName`, `createIcon_GradeAndNameOrLv`, `createHeadViewAndState`, `setNewStatus`, `getNewStatus`, `createWithBase`, `createWithBaseAndNum`, `createWithJson`

| 字段 | 证据 |
|---|---|
| `pk_id` | `ReconstructedJS/src_jsc/Models/Item.js:277 (loadJson)` |
| `id` | `ReconstructedJS/src_jsc/Models/Item.js:277 (loadJson)` |
| `num` | `ReconstructedJS/src_jsc/Models/Item.js:277 (loadJson)` |
| `effect_time` | `ReconstructedJS/src_jsc/Models/Item.js:277 (loadJson)` |
| `tag_id` | `ReconstructedJS/src_jsc/Models/Item.js:277 (loadJson)` |
| `grade` | `ReconstructedJS/src_jsc/Models/Item.js:590 (createIcon)` |
| `name` | `ReconstructedJS/src_jsc/Models/Item.js:590 (createIcon)` |
| `lv` | `ReconstructedJS/src_jsc/Models/Item.js:590 (createIcon)` |

### `xs.Models.LadderModel`

- 文件：`Models/LadderModel.js`
- 方法：`init`, `initLadderTeam`, `getLadderTeam`, `getLadderTop`, `getLadderRank`, `getRankName`, `getCurRankSalary`, `getNextRankSalary`, `getTotalRankSalary`, `getTotalChallengeNum`, `getChallengeNum`, `getSelfIdx`, `getFocusIdx`, `isInTop10`, `create`

| 字段 | 证据 |
|---|---|
| `ladder_info` | `ReconstructedJS/src_jsc/Models/LadderModel.js:7 (init)` |
| `length` | `ReconstructedJS/src_jsc/Models/LadderModel.js:34 (initLadderTeam)` |

### `xs.Models.MagicalEqu`

- 文件：`Models/MagicalEqu.js`
- 方法：`init`, `loadJson`, `getMagicalName`, `getMagicalDesc`, `getOpenRules`, `getStatus`, `getGeneralId`, `getNormalStep`, `getNormalSubStep`, `getMagicalId`, `getNormalList`, `getNormalPoint`, `getEliteStep`, `getEliteSubStep`, `getEliteList`, `getElitePoint`, `createPartView`, `getEquipmentType`, `createCard_Detail`, `getRelationEquObj`, `getPointEffectValAllByType`, `getPointEffectFate`, `getSortGrade`, `createWithBase`, `createWithJson`

| 字段 | 证据 |
|---|---|
| `magic_id` | `ReconstructedJS/src_jsc/Models/MagicalEqu.js:50 (loadJson)` |
| `general_id` | `ReconstructedJS/src_jsc/Models/MagicalEqu.js:50 (loadJson)` |
| `magic_level` | `ReconstructedJS/src_jsc/Models/MagicalEqu.js:50 (loadJson)` |
| `magic_sub_level` | `ReconstructedJS/src_jsc/Models/MagicalEqu.js:50 (loadJson)` |
| `magic_vip_level` | `ReconstructedJS/src_jsc/Models/MagicalEqu.js:50 (loadJson)` |
| `is_open` | `ReconstructedJS/src_jsc/Models/MagicalEqu.js:50 (loadJson)` |
| `magic_name` | `ReconstructedJS/src_jsc/Models/MagicalEqu.js:50 (loadJson)` |
| `magic_desc` | `ReconstructedJS/src_jsc/Models/MagicalEqu.js:50 (loadJson)` |
| `resource_id` | `ReconstructedJS/src_jsc/Models/MagicalEqu.js:50 (loadJson)` |
| `open_condition` | `ReconstructedJS/src_jsc/Models/MagicalEqu.js:50 (loadJson)` |

### `xs.Models.MagicalEquPoint`

- 文件：`Models/MagicalEquPoint.js`
- 方法：`init`, `loadJson`, `getDesc`, `getConditionList`, `setLight`, `isLight`, `getIsNormal`, `getVipGrade`, `getEffectType`, `getEffectSubStep`, `getEffectVal`, `getBaseDataRef`, `createWithBase`, `createWithJson`

| 字段 | 证据 |
|---|---|
| `is_normal` | `ReconstructedJS/src_jsc/Models/MagicalEquPoint.js:28 (loadJson)` |
| `step` | `ReconstructedJS/src_jsc/Models/MagicalEquPoint.js:28 (loadJson)` |
| `sub_step` | `ReconstructedJS/src_jsc/Models/MagicalEquPoint.js:28 (loadJson)` |
| `magical_id` | `ReconstructedJS/src_jsc/Models/MagicalEquPoint.js:28 (loadJson)` |

### `xs.Models.MeltCfg`

- 文件：`Models/MeltCfg.js`
- 方法：`createWithBase`

静态提取未解析到直接字段读取。

### `xs.Models.Meridian`

- 文件：`Models/Meridian.js`
- 方法：`init`, `loadJson`, `getAllMeridianPointModels`, `setMeridianState`, `getMeridianState`, `getMeridianName`, `getMeridianBuffType`, `isHaveBuff`, `getbuffValueType`, `getbuffValue`, `getMeridianBuffValue`, `getMeridianBuffTypeStr`, `createWithJson`

| 字段 | 证据 |
|---|---|
| `meridianTop` | `ReconstructedJS/src_jsc/Models/Meridian.js:37 (loadJson)` |
| `meridian` | `ReconstructedJS/src_jsc/Models/Meridian.js:37 (loadJson)` |
| `meridianPoint` | `ReconstructedJS/src_jsc/Models/Meridian.js:37 (loadJson)` |
| `isHeightest` | `ReconstructedJS/src_jsc/Models/Meridian.js:37 (loadJson)` |

### `xs.Models.MeridianPoint`

- 文件：`Models/MeridianPoint.js`
- 方法：`init`, `loadJson`, `setMeridianPointState`, `getMeridianPointState`, `getMeridianPointName`, `getMeridianPointBuffType`, `getMeridianPointBuffValueNum`, `getMeridianPointBuffValue`, `getMeridianPointMaiLiItemNum`, `getMeridianPointBuffValueIcon`, `getLastData`, `getNextData`, `getLastMeridianPointName`, `getNextMeridianPointName`, `createDetailIcon`, `createWithJson`

| 字段 | 证据 |
|---|---|
| `meridianTop` | `ReconstructedJS/src_jsc/Models/MeridianPoint.js:36 (loadJson)` |
| `meridian` | `ReconstructedJS/src_jsc/Models/MeridianPoint.js:36 (loadJson)` |
| `meridianPoint` | `ReconstructedJS/src_jsc/Models/MeridianPoint.js:36 (loadJson)` |

### `xs.Models.MeridianTop`

- 文件：`Models/MeridianTop.js`
- 方法：`init`, `loadJson`, `getPkId`, `getMeridianItemNum`, `getIsHeightest`, `getMerdianTopLevel`, `getUserGeneralPkid`, `getMeridianTopGeneralLevel`, `getMeridianTopSkillName`, `getMeridianTopSkillDesc`, `getMeridianModel`, `getMeridianPointModel`, `getOneMeridianTopAllMeridiansModel`, `getAllHaveBuffMeridiansModel`, `getMeridianAndMeridianPointBuffValAll`, `getMeridianAndMeridianPointBuffValByType`, `createWithJson`

| 字段 | 证据 |
|---|---|
| `point_level` | `ReconstructedJS/src_jsc/Models/MeridianTop.js:37 (loadJson)` |
| `meridian_level` | `ReconstructedJS/src_jsc/Models/MeridianTop.js:37 (loadJson)` |
| `top_level` | `ReconstructedJS/src_jsc/Models/MeridianTop.js:37 (loadJson)` |
| `user_general_id` | `ReconstructedJS/src_jsc/Models/MeridianTop.js:37 (loadJson)` |
| `item_num` | `ReconstructedJS/src_jsc/Models/MeridianTop.js:37 (loadJson)` |
| `pk_id` | `ReconstructedJS/src_jsc/Models/MeridianTop.js:37 (loadJson)` |
| `toString` | `ReconstructedJS/src_jsc/Models/MeridianTop.js:158 (getOneMeridianTopAllMeridiansModel)` |

### `xs.Models.OtherPlayerInfo`

- 文件：`Models/OtherPlayerInfo.js`
- 方法：`init`, `getLadderRank`, `getPlayerId`, `getPlayerType`, `getLevel`, `getPlayerNick`, `getPlayerVipLevel`, `getRankName`, `isEnemy`, `getGeneralId`, `getGeneralModel`, `getFightSalary`, `setIsTop`, `isSelf`, `isTop`, `isCanChallenge`, `getProbability`, `createCardView`, `createCardView_Chart`, `create`

| 字段 | 证据 |
|---|---|
| `ladder_rank` | `ReconstructedJS/src_jsc/Models/OtherPlayerInfo.js:7 (init)` |
| `player_id` | `ReconstructedJS/src_jsc/Models/OtherPlayerInfo.js:7 (init)` |
| `player_type` | `ReconstructedJS/src_jsc/Models/OtherPlayerInfo.js:7 (init)` |
| `player_level` | `ReconstructedJS/src_jsc/Models/OtherPlayerInfo.js:7 (init)` |
| `nickname` | `ReconstructedJS/src_jsc/Models/OtherPlayerInfo.js:7 (init)` |
| `user_vip_level` | `ReconstructedJS/src_jsc/Models/OtherPlayerInfo.js:7 (init)` |
| `rank_name` | `ReconstructedJS/src_jsc/Models/OtherPlayerInfo.js:7 (init)` |
| `to_attack` | `ReconstructedJS/src_jsc/Models/OtherPlayerInfo.js:7 (init)` |
| `is_enemy` | `ReconstructedJS/src_jsc/Models/OtherPlayerInfo.js:7 (init)` |
| `general_id` | `ReconstructedJS/src_jsc/Models/OtherPlayerInfo.js:7 (init)` |
| `fight_salary` | `ReconstructedJS/src_jsc/Models/OtherPlayerInfo.js:7 (init)` |
| `prob_type` | `ReconstructedJS/src_jsc/Models/OtherPlayerInfo.js:7 (init)` |

### `xs.Models.Party`

- 文件：`Models/Party.js`
- 方法：`init`, `loadJson`, `getPartyEventNum`, `getPartyEventByIdx`, `removePartyByIdx`, `isStartTime`, `getContinueTime`, `adPresentTime`, `create`, `createWithJson`

| 字段 | 证据 |
|---|---|
| `length` | `ReconstructedJS/src_jsc/Models/Party.js:17 (loadJson)` |

### `xs.Models.Player`

- 文件：`Models/Player.js`
- 方法：`init`, `update`, `isFightSpeed3_unlock`, `getFightSpeed3UnlockVipLevel`, `createHeadIcon`, `getPlayerUpgradeCfg`, `schedule_updatePlayerTiLiAndJingLi`, `schedule_updateChaosCountDown`, `getPlayerMapStep`, `getPlayerDungeonStep`, `getPlayerEliteMapStep`, `getPlayerEliteDungeonStep`, `getPlayerName`, `getPlayerId`, `getPlayerSignature`, `setPlayerLevel`, `getPlayerLevel`, `getPlayerVipLevel`, `getPlayerNextVipLevel`, `getPlayerAbility`, `getPlayerAbilityChange`, `getPlayerYuanBao`, `getPlayerTongQian`, `getPlayerTongQianToString`, `getPlayerGoldSoul`, `getPlayerSilverSoul`, `getPlayerMagatamaNum`, `getPlayerGanodermaNum`, `addPlayerCurTiLi`, `getPlayerCurTiLi`, `getPlayerNextTiLiSec`, `setPlayerNextTiLiSec`, `getPlayerMaxTiLi`, `getPlayerCurQiLi`, `addPlayerCurQiLi`, `getPlayerNextQiLiSec`, `setPlayerNextQiLiSec`, `getPlayerMaxQiLi`, `getPlayerExp`, `getPlayerMaxExp`, `getPlayerCombatMaxLevel`, `setPlayerLastLoginTime_Local`, `getPlayerLastLoginTime_Local`, `getPlayerLastLoginTime`, `getTeamNumInfo`, `getPlayerFreshStep`, `setPlayerFreshStep`, `getIsBroadShowed`, `setIsBroadShowed`, `getPlayerVipFormat`, `getPlayerExpPercentage`, `getPlayerExpPercentageFormat`, `getPlayerTiLiPercentage`, `getPlayerJingLiPercentage`, `getPlayerNextTiLiRecoverTimeFormat`, `getPlayerNextJingLiRecoverTimeFormat`, `getPlayerAllTiLiRecoverTimeFormat`, `getPlayerAllJingLiRecoverTimeFormat`, `getTeamMaxLength`, `getCurTeamMaxLength`, `getPlayerLevelByTeamPos`, `getCurLieutenantMaxLength`, `getPlayerLevelByLieutenantPos`, `getChaosCountDown`, `getLadderRankSalary`, `getUserHonor`, `getLadderChallengeTimes`, `setLadderChallengeTimes`, `getItemConditionByItemId`, `getFirstChooseGeneral`, `getFirstWineGeneral`, `getCoolDownTime`, `getClearCDTimePrice`, `getBaseCDTime`, `getChargedYuanBao`, `getNextVipYuanBao`, `getChargeCount`, `getAccount_uid`, `_getAddictionStr`, `readAddictionSql`, `setAddictionSql`, `setLoginTimeToSql`, `btnCallback`, `setOnlineTimeToSql`, `updetaOnlineTime`, `getUnionWarSignUp`, `getUnionId`, `getUnionName`, `setUserRole`, `getUserRole`, `getUserDonate`, `setUserDonate`, `setDonateState`, `getDonateState`, `setDonateNum`, `getDonateNum`, `setPlayerSkin`, `getPlayerSkin`, `updateBaseUnionUserInfo`, `clearUnionUserInfo`, `hasUnion`, `getInstance`, `purgeInstance`

| 字段 | 证据 |
|---|---|
| `user_id` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `account_uid` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `user_nickname` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `user_level` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `user_experience` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `user_charge_count` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `user_vip_level` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `user_coin` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `user_gold` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `user_sign` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `item_count` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `user_power` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `user_power_date` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `user_energy` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `user_energy_date` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `gold_soul` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `sliver_soul` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `user_last_login_time` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `user_ability` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `ladder_rank_salary` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `user_honor` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `ladder_challenging_num` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `user_map_step` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `user_position_step` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `user_elite_map_step` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `user_elite_position_step` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `dungeon_cold_time` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `cd_item_price` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `base_cold_time` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `to_danger_time` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `current_charge_gold` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `count_charge_gold` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `freshman_step` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `first_choose_general` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `first_wine_general` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `triple_speed` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `triple_speed_vip_level` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `union_id` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `union_name` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `user_role` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `user_donate` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `donate_state` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `donate_num` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `union_war_sign_up` | `ReconstructedJS/src_jsc/Models/Player.js:113 (update)` |
| `union_info.union_id` | `ReconstructedJS/src_jsc/Models/Player.js:1136 (updateBaseUnionUserInfo)` |
| `union_info.union_name` | `ReconstructedJS/src_jsc/Models/Player.js:1136 (updateBaseUnionUserInfo)` |

### `xs.Models.PlayerAttr`

- 文件：`Models/PlayerAttr.js`
- 方法：`init`, `loadJson`, `getId`, `getId2Type`, `getNum`, `getGrade`, `getNameString`, `getTxtLabString`, `getNumPreString`, `createPartView`, `createIcon_Grade`, `createIcon_GradeAndNum`, `createIcon_GradeAndName`, `createIcon_GradeAndNumAndName`, `createWithJson`

| 字段 | 证据 |
|---|---|
| `id` | `ReconstructedJS/src_jsc/Models/PlayerAttr.js:18 (loadJson)` |
| `num` | `ReconstructedJS/src_jsc/Models/PlayerAttr.js:18 (loadJson)` |

### `xs.Models.PlayerUpgradeCfg`

- 文件：`Models/UpgradeCfg/PlayerUpgradeCfg.js`
- 方法：`readBaseData`, `getLevelDataRef`, `getNum`, `getMaxPower`, `getMaxEnergy`, `getTeamMaxNum`, `getEquipmentUpgradeTotalLevel`, `getCombatMaxLevel`, `createWithBase`

静态提取未解析到直接字段读取。

### `xs.Models.PushInfo`

- 文件：`Models/PushInfo.js`
- 方法：`init`, `update`, `getEvolutionChestInfo`, `getCopyInfo`, `getBeautyData`, `getPartyInfo`, `getPartyExchangeInfo`, `getFeastInfo`, `getTigerInfo`, `getWishinInfo`, `getIsWishin`, `getClimbTimes`, `getLadderWarNum`, `getLadderWarExchangeNum`, `getLocalLadderWarNum`, `getLocalLadderWarExchangeNum`, `getDecisiveBattleNum`, `getLocalDecisiveBattleNum`, `getTrainNum`, `getGiftCanBuyNum`, `getLadderExchangeNum_Salary`, `getLadderExchangeNum_Honor`, `getTaskNum`, `getNewUnionHitNum`, `getNewMailNum`, `addMailHit`, `getGemDiscount`, `create`

| 字段 | 证据 |
|---|---|
| `climb` | `ReconstructedJS/src_jsc/Models/PushInfo.js:54 (update)` |
| `training` | `ReconstructedJS/src_jsc/Models/PushInfo.js:54 (update)` |
| `vipstore` | `ReconstructedJS/src_jsc/Models/PushInfo.js:54 (update)` |
| `party` | `ReconstructedJS/src_jsc/Models/PushInfo.js:54 (update)` |
| `activity_exchange` | `ReconstructedJS/src_jsc/Models/PushInfo.js:54 (update)` |
| `timing_power` | `ReconstructedJS/src_jsc/Models/PushInfo.js:54 (update)` |
| `gamble` | `ReconstructedJS/src_jsc/Models/PushInfo.js:54 (update)` |
| `ladderstore` | `ReconstructedJS/src_jsc/Models/PushInfo.js:54 (update)` |
| `honorstore` | `ReconstructedJS/src_jsc/Models/PushInfo.js:54 (update)` |
| `system_email` | `ReconstructedJS/src_jsc/Models/PushInfo.js:54 (update)` |
| `friend_email` | `ReconstructedJS/src_jsc/Models/PushInfo.js:54 (update)` |
| `gift_email` | `ReconstructedJS/src_jsc/Models/PushInfo.js:54 (update)` |
| `event_email` | `ReconstructedJS/src_jsc/Models/PushInfo.js:54 (update)` |
| `pay_email` | `ReconstructedJS/src_jsc/Models/PushInfo.js:54 (update)` |
| `wishing` | `ReconstructedJS/src_jsc/Models/PushInfo.js:54 (update)` |
| `wishing.num` | `ReconstructedJS/src_jsc/Models/PushInfo.js:54 (update)` |
| `union_donate` | `ReconstructedJS/src_jsc/Models/PushInfo.js:54 (update)` |
| `task` | `ReconstructedJS/src_jsc/Models/PushInfo.js:54 (update)` |
| `depot_num` | `ReconstructedJS/src_jsc/Models/PushInfo.js:54 (update)` |
| `union_goods` | `ReconstructedJS/src_jsc/Models/PushInfo.js:54 (update)` |
| `worship` | `ReconstructedJS/src_jsc/Models/PushInfo.js:54 (update)` |
| `gem_discount` | `ReconstructedJS/src_jsc/Models/PushInfo.js:54 (update)` |
| `world_war` | `ReconstructedJS/src_jsc/Models/PushInfo.js:54 (update)` |
| `ladder_war` | `ReconstructedJS/src_jsc/Models/PushInfo.js:54 (update)` |
| `union_war_signup` | `ReconstructedJS/src_jsc/Models/PushInfo.js:54 (update)` |
| `worship_local` | `ReconstructedJS/src_jsc/Models/PushInfo.js:54 (update)` |
| `ladder_war_local` | `ReconstructedJS/src_jsc/Models/PushInfo.js:54 (update)` |
| `world_war_local` | `ReconstructedJS/src_jsc/Models/PushInfo.js:54 (update)` |
| `num` | `ReconstructedJS/src_jsc/Models/PushInfo.js:54 (update)` |

### `xs.Models.RandomNameCfg`

- 文件：`Models/RandomNameCfg.js`
- 方法：`init`, `setLevel`, `getLevel`, `setGrade`, `readBaseData`, `getGradeDataRef`, `getLevelDataRef`, `getMaxLevelDataRef`, `getMaxLevel`, `getExpNeed`, `getExpTotal`, `getEatedProdExp`, `getCoinNeed`, `getMaxLevelExpNeed`

静态提取未解析到直接字段读取。

### `xs.Models.Resource`

- 文件：`Models/Resource.js`
- 方法：`init`, `getHDUrl`, `getPaintingId`, `getIconCoordinate`, `getChartCardCoordinate`, `getPosOfWaist`, `getPosOfFoot`, `getChapterHeadCoordinateArray`, `createHeadSprite`, `createChapterHeadSprite`, `createOriginalSprite`, `getResFileName`, `getResFileName_Chapter`, `getResFileName_Fight`, `createBgSprite_Map`, `createBgSprite_Fight`, `createCard_LadderChart`, `_createOriginalSpriteByApType`, `createOriginalSprite_Waist`, `createOriginalSprite_Waist_Rotation`, `createOriginalSprite_Foot`, `createWithBase`

静态提取未解析到直接字段读取。

### `xs.Models.SellCfg`

- 文件：`Models/SellCfg.js`
- 方法：`createWithBase`

静态提取未解析到直接字段读取。

### `xs.Models.ShowData`

- 文件：`Models/ShowData.js`
- 方法：`init`, `getModel`, `getOriModel`, `isSelected`, `setSelectNum`, `getSelectNum`, `getMaxNum`, `setSelectMaxNum`, `setSelectMinNum`, `addSelectNum`, `subSelectNum`, `isAddSelectNumAble`, `isSubSelectNumAble`, `reset`, `create`

静态提取未解析到直接字段读取。

### `xs.Models.Skill`

- 文件：`Models/Skill.js`
- 方法：`init`, `loadJson`, `setExp`, `setIsNatural`, `setGeneralPkId`, `setSkillPos`, `getSkillPos`, `getGeneralPkId`, `setCanFit`, `getCanFit`, `isInborn`, `getAttrNaked`, `isUpgradeMaterialFor`, `isOnGeneral`, `getCurLevelUpgradeCfg`, `getUpgradeCfgByLevel`, `isMaxLv`, `getSkillType`, `getSkillTypeToString`, `createSkillTypeIcon`, `getSkillMajorProperty`, `createSkillMajorPropertyIcon`, `getEffectIds`, `getPassiveEffects`, `_getFightPoint`, `getAttrOffsetByAttrType`, `isIgnoreByFilter`, `getPosType`, `createPartView`, `createHeadView_General_Equ_Skill`, `createCard_Detail`, `createCard_CardExp`, `createIcon_Select`, `createIcon_GradeAndLvAndAdvancedLv`, `createIcon_GradeAndLvAndName`, `createIcon_GradeAndNameOrLv`, `getShortDesc`, `getPhaseDesc`, `getRangeDesc`, `isVersion`, `getSkillCode`, `getDescString`, `getComposePieceNum`, `getWarlordGeneralId`, `getExtraLevel`, `getAdvancedLevel`, `setAdvancedLevel`, `getMaxAdvancedLevel`, `getBaseDataRef`, `_clearCacheAtSetAdvancedLevel`, `createWithBase`, `createWithJson`

| 字段 | 证据 |
|---|---|
| `general_pk_id` | `ReconstructedJS/src_jsc/Models/Skill.js:52 (loadJson)` |
| `is_natural` | `ReconstructedJS/src_jsc/Models/Skill.js:52 (loadJson)` |
| `pos` | `ReconstructedJS/src_jsc/Models/Skill.js:52 (loadJson)` |
| `extra_level` | `ReconstructedJS/src_jsc/Models/Skill.js:52 (loadJson)` |
| `advanced_level` | `ReconstructedJS/src_jsc/Models/Skill.js:52 (loadJson)` |
| `exp` | `ReconstructedJS/src_jsc/Models/Skill.js:52 (loadJson)` |
| `getPkId` | `ReconstructedJS/src_jsc/Models/Skill.js:146 (isUpgradeMaterialFor)` |

### `xs.Models.SkillEffect`

- 文件：`Models/SkillEffect.js`
- 方法：`init`, `getValueBase`, `getValueStep`, `getSkillEffectTarget`, `getAttrType`, `getValueByLevel`, `getValueOffset`, `getValueType`, `isGain`, `createWithBase`

静态提取未解析到直接字段读取。

### `xs.Models.SkillExpCfg`

- 文件：`Models/SkillExpCfg.js`
- 方法：`createWithBase`

静态提取未解析到直接字段读取。

### `xs.Models.SkillPiece`

- 文件：`Models/SkillPiece.js`
- 方法：`init`, `isPiece`, `getPkId`, `loadJson`, `loadBase`, `getId`, `isExpBook`, `getSkillType`, `getNameString`, `createPartView`, `createHeadView_General_Equ_Skill`, `createHeadView`, `createCardView`, `getComposePieceNum`, `canCompose`, `getTeacher`, `createIcon_GradeAndDot`, `createIcon_Grade`, `createIcon_GradeAndName`, `createIcon_GradeAndPieceNameAndNumMax`, `createIcon_GradeAndNumMax`, `getGrade`, `createWithJson`, `createWithBase`

| 字段 | 证据 |
|---|---|
| `num` | `ReconstructedJS/src_jsc/Models/SkillPiece.js:27 (loadJson)` |
| `pk_id` | `ReconstructedJS/src_jsc/Models/SkillPiece.js:27 (loadJson)` |
| `id` | `ReconstructedJS/src_jsc/Models/SkillPiece.js:27 (loadJson)` |

### `xs.Models.Surrender`

- 文件：`Models/Surrender.js`
- 方法：`_getGeneralSurrenderDataRef`, `_getSurrenderDataRef`, `init`, `loadJson`, `_setGid`, `_getGid`, `_setSurrenderId`, `_getSurrenderId`, `getAchieveData`, `getSurrenderList`, `getAllStatus`, `createWithJson`, `create`

静态提取未解析到直接字段读取。

### `xs.Models.Task`

- 文件：`Models/Task.js`
- 方法：`init`, `getStatus`, `getTitle`, `getDesc`, `getTaskValue`, `getTaskObjectiveNum`, `getScene`, `getSortPriority`, `createWithData`

| 字段 | 证据 |
|---|---|
| `pk_id` | `ReconstructedJS/src_jsc/Models/Task.js:7 (init)` |
| `status` | `ReconstructedJS/src_jsc/Models/Task.js:7 (init)` |
| `task_value` | `ReconstructedJS/src_jsc/Models/Task.js:7 (init)` |
| `task_objective_num` | `ReconstructedJS/src_jsc/Models/Task.js:7 (init)` |
| `title` | `ReconstructedJS/src_jsc/Models/Task.js:7 (init)` |
| `desc` | `ReconstructedJS/src_jsc/Models/Task.js:7 (init)` |
| `icon` | `ReconstructedJS/src_jsc/Models/Task.js:7 (init)` |
| `icon_type` | `ReconstructedJS/src_jsc/Models/Task.js:7 (init)` |
| `scene` | `ReconstructedJS/src_jsc/Models/Task.js:7 (init)` |
| `reword_list` | `ReconstructedJS/src_jsc/Models/Task.js:7 (init)` |

### `xs.Models.TeamGeneral`

- 文件：`Models/TeamGeneral.js`
- 方法：`init`, `loadJson`, `getGeneralPkId`, `getGeneralPos`, `getIdxInTeam`, `createWithJson`, `createWithBase`

| 字段 | 证据 |
|---|---|
| `pk_id` | `ReconstructedJS/src_jsc/Models/TeamGeneral.js:24 (loadJson)` |
| `position` | `ReconstructedJS/src_jsc/Models/TeamGeneral.js:24 (loadJson)` |
| `general_hp` | `ReconstructedJS/src_jsc/Models/TeamGeneral.js:24 (loadJson)` |
| `general_attack` | `ReconstructedJS/src_jsc/Models/TeamGeneral.js:24 (loadJson)` |
| `general_defense` | `ReconstructedJS/src_jsc/Models/TeamGeneral.js:24 (loadJson)` |
| `general_wisdom` | `ReconstructedJS/src_jsc/Models/TeamGeneral.js:24 (loadJson)` |
| `general_fighting` | `ReconstructedJS/src_jsc/Models/TeamGeneral.js:24 (loadJson)` |

### `xs.Models.ToastResult`

- 文件：`Models/ToastResult.js`
- 方法：`init`, `create`

静态提取未解析到直接字段读取。

### `xs.Models.TransmissionModel`

- 文件：`Models/TransmissionModel.js`
- 方法：`init`, `getTalentPointPlus`, `getSacrificeType`, `getTalentPoint`, `getGanodermaBackNum`, `create`

| 字段 | 证据 |
|---|---|
| `info.talent_point` | `ReconstructedJS/src_jsc/Models/TransmissionModel.js:7 (init)` |
| `info.sacrifice_type` | `ReconstructedJS/src_jsc/Models/TransmissionModel.js:7 (init)` |
| `info.ganoderma` | `ReconstructedJS/src_jsc/Models/TransmissionModel.js:7 (init)` |
| `info.general_level_now` | `ReconstructedJS/src_jsc/Models/TransmissionModel.js:7 (init)` |
| `info.general_level_before` | `ReconstructedJS/src_jsc/Models/TransmissionModel.js:7 (init)` |

### `xs.Models.TreasureBox`

- 文件：`Models/TreasureBox.js`
- 方法：`init`, `createView`, `createBoxView`, `createHeadeIcon`, `createRoadAni`, `getStarStatusLabel`, `getPos`, `getType`, `getBoxStatus`, `setBoxStatus`, `isCanIn`, `getTreasureName`, `getModelName`, `getItemId`, `getId`, `create`

| 字段 | 证据 |
|---|---|
| `type` | `ReconstructedJS/src_jsc/Models/TreasureBox.js:7 (init)` |
| `name` | `ReconstructedJS/src_jsc/Models/TreasureBox.js:7 (init)` |
| `position` | `ReconstructedJS/src_jsc/Models/TreasureBox.js:7 (init)` |
| `open_need_star` | `ReconstructedJS/src_jsc/Models/TreasureBox.js:7 (init)` |
| `has_star` | `ReconstructedJS/src_jsc/Models/TreasureBox.js:7 (init)` |
| `direction` | `ReconstructedJS/src_jsc/Models/TreasureBox.js:7 (init)` |
| `can_open` | `ReconstructedJS/src_jsc/Models/TreasureBox.js:7 (init)` |
| `item_id` | `ReconstructedJS/src_jsc/Models/TreasureBox.js:7 (init)` |
| `box_id` | `ReconstructedJS/src_jsc/Models/TreasureBox.js:7 (init)` |
| `createPartView` | `ReconstructedJS/src_jsc/Models/TreasureBox.js:107 (createHeadeIcon)` |
| `getGrade` | `ReconstructedJS/src_jsc/Models/TreasureBox.js:107 (createHeadeIcon)` |

### `xs.Models.Union`

- 文件：`Models/Union.js`
- 方法：`init`, `loadJson`, `safeUpdate`, `clearUnionInfo`, `getUnionId`, `getUnionName`, `getUnionLevel`, `getLeaderNickname`, `getUnionExp`, `getUnionLevelUpExp`, `getUnionFightPoint`, `getUnionRank`, `chgMemberNum`, `getUserNum`, `getUserLimit`, `getUnionSign`, `getNotice`, `getUnionLog`, `create`, `getInstance`, `purgeInstance`

| 字段 | 证据 |
|---|---|
| `union_info` | `ReconstructedJS/src_jsc/Models/Union.js:47 (loadJson)` |
| `union_log` | `ReconstructedJS/src_jsc/Models/Union.js:47 (loadJson)` |

### `xs.Models.UnionMember`

- 文件：`Models/UnionMember.js`
- 方法：`init`, `loadJson`, `_getServerTime`, `getLogonTimeTypeToString`, `getUserRole`, `getPlayerApply`, `getUserRoleToString`, `getUserDonate`, `getTodayDonateNum`, `getTodayDonateType`, `getTodayDonateTypeToString`, `getPlayerName`, `getPlayerLevel`, `getVipLevel`, `getLadderRank`, `getUserId`, `getActive`, `getUnionJoinTimes`, `createWithJson`

| 字段 | 证据 |
|---|---|
| `user_id` | `ReconstructedJS/src_jsc/Models/UnionMember.js:26 (loadJson)` |
| `user_role` | `ReconstructedJS/src_jsc/Models/UnionMember.js:26 (loadJson)` |
| `user_vip_level` | `ReconstructedJS/src_jsc/Models/UnionMember.js:26 (loadJson)` |
| `fightPoint` | `ReconstructedJS/src_jsc/Models/UnionMember.js:26 (loadJson)` |
| `ladder_rank` | `ReconstructedJS/src_jsc/Models/UnionMember.js:26 (loadJson)` |
| `donationState` | `ReconstructedJS/src_jsc/Models/UnionMember.js:26 (loadJson)` |
| `user_nickname` | `ReconstructedJS/src_jsc/Models/UnionMember.js:26 (loadJson)` |
| `user_level` | `ReconstructedJS/src_jsc/Models/UnionMember.js:26 (loadJson)` |
| `user_donate` | `ReconstructedJS/src_jsc/Models/UnionMember.js:26 (loadJson)` |
| `user_last_login_time` | `ReconstructedJS/src_jsc/Models/UnionMember.js:26 (loadJson)` |
| `today_donate_num` | `ReconstructedJS/src_jsc/Models/UnionMember.js:26 (loadJson)` |
| `today_donate_type` | `ReconstructedJS/src_jsc/Models/UnionMember.js:26 (loadJson)` |
| `union_war_sign_up` | `ReconstructedJS/src_jsc/Models/UnionMember.js:26 (loadJson)` |
| `active` | `ReconstructedJS/src_jsc/Models/UnionMember.js:26 (loadJson)` |
| `uw_join_times` | `ReconstructedJS/src_jsc/Models/UnionMember.js:26 (loadJson)` |

### `xs.Models.UnionWar`

- 文件：`Models/UnionWar.js`
- 方法：`init`, `loadJson`, `getBattleInfoWithBattleId`, `getBattleInfoAll`, `reloadBattlePlayerNums`, `_setBattlePlayerNum`, `getBattlePlayerNum`, `_getAllFightPlayers`, `createFightPlayersTmp`, `saveFightPlayersTmp`, `clearFightPlayersTemp`, `clearFightPlayers`, `getAllFightPlayers_Temp`, `getPlayerListWithConditions`, `getPlayerListNotInPlayerId`, `_getPlayerListNotInPlayerId`, `changePlayerPos`, `getChangedInfo`, `setUnionWarId`, `getUnionWarId`, `setFightingProcess`, `getFightingProcess`, `getServerTime`, `getServerData`, `getUnionWarTime`, `getUnionWarResidueTime`, `_getLatelyShowTime`, `getUnionWarStageDetail`, `getUnionWarStage`, `_getOtherUnionWarStage`, `_stageInDictForTime`, `_stageInThisBout`, `isApplyStage`, `isApplyStageResidueTime`, `isActiveStatistical`, `initUnionWarEmbattleTimeCfg`, `accordTimeSort`, `timeSort`, `getUnionWarApplyTimeCfg`, `getUnionWarApplyTimeStart`, `getUnionWarApplyTimeEnd`, `getUnionWarBuZhenTimeStartThis`, `getUnionWarBuZhenTimeStartStride`, `getUnionWarTimeStartThis`, `getUnionWarTimeStartStride`, `isTimeAmong`, `isTimeAmongResidueTime`, `timeComparison`, `_getTimeFormat`, `getWarSumTime`, `getNewWarIsEnd`, `create`, `getInstance`, `purgeInstance`

| 字段 | 证据 |
|---|---|
| `info` | `ReconstructedJS/src_jsc/Models/UnionWar.js:51 (loadJson)` |
| `info.length` | `ReconstructedJS/src_jsc/Models/UnionWar.js:51 (loadJson)` |
| `inArray` | `ReconstructedJS/src_jsc/Models/UnionWar.js:231 (_getPlayerListNotInPlayerId)` |
| `getBattleId` | `ReconstructedJS/src_jsc/Models/UnionWar.js:250 (changePlayerPos)` |
| `getBattlePos` | `ReconstructedJS/src_jsc/Models/UnionWar.js:250 (changePlayerPos)` |
| `setBattleId` | `ReconstructedJS/src_jsc/Models/UnionWar.js:250 (changePlayerPos)` |
| `setBattlePos` | `ReconstructedJS/src_jsc/Models/UnionWar.js:250 (changePlayerPos)` |
| `getPlayerId` | `ReconstructedJS/src_jsc/Models/UnionWar.js:250 (changePlayerPos)` |
| `union_war_id` | `ReconstructedJS/src_jsc/Models/UnionWar.js:290 (setUnionWarId)` |
| `getUnionWarId` | `ReconstructedJS/src_jsc/Models/UnionWar.js:298 (setFightingProcess)` |
| `getBattleRounds` | `ReconstructedJS/src_jsc/Models/UnionWar.js:298 (setFightingProcess)` |
| `getTag` | `ReconstructedJS/src_jsc/Models/UnionWar.js:298 (setFightingProcess)` |
| `battle_formation_time` | `ReconstructedJS/src_jsc/Models/UnionWar.js:658 (timeSort)` |
| `substring` | `ReconstructedJS/src_jsc/Models/UnionWar.js:783 (_getTimeFormat)` |

### `xs.Models.UnionWarBattleFightInfo`

- 文件：`Models/UnionWarBattleFightInfo.js`
- 方法：`init`, `loadJson`, `setProcess`, `getProcess`, `getBattleId`, `getUnionWarId`, `getBattleRounds`, `getTag`, `getUnions`, `getUnionIdWithTeamNo`, `getUnionNameWithTeamNo`, `getEncounterWeekType`, `getEncounterServerType`, `setIsUserPlayed`, `getIsUserPlayed`, `setIsUserPlayingDetailProcess`, `getIsUserPlayingDetailProcess`, `getTeams`, `getTeam1`, `getTeam2`, `getKillNums`, `isPlayerFighted`, `isPlayerDead`, `isFightOver`, `getWinnerUnionIdx`, `getWinnerUnionName`, `getFight`, `getWinner`, `getPlayerVsList`, `createWithJson`

| 字段 | 证据 |
|---|---|
| `fight` | `ReconstructedJS/src_jsc/Models/UnionWarBattleFightInfo.js:36 (loadJson)` |
| `fight_winner` | `ReconstructedJS/src_jsc/Models/UnionWarBattleFightInfo.js:36 (loadJson)` |

### `xs.Models.UnionWarBattleInfo`

- 文件：`Models/UnionWarBattleInfo.js`
- 方法：`init`, `loadConfig`, `getBattleId`, `getBattleTitle`, `getBattleDesc`, `getBattleIntegral`, `getBattleMaxMemberNum`, `getBattleSort`, `createWithBattleId`

静态提取未解析到直接字段读取。

### `xs.Models.UnionWarFightingProcess`

- 文件：`Models/UnionWarFightingProcess.js`
- 方法：`init`, `loadJson`, `setOtherInfos`, `getUnionWarId`, `getBattleRounds`, `getTag`, `getUnionIdWithTeamNo`, `getUnionNameWithTeamNo`, `getUnions`, `getUserAll`, `setEncounterWeekType`, `getEncounterWeekType`, `getEncounterServerType`, `getBattleFightInfoWithBattleId`, `createWithJson`

| 字段 | 证据 |
|---|---|
| `user_all` | `ReconstructedJS/src_jsc/Models/UnionWarFightingProcess.js:30 (loadJson)` |
| `user_all.hasOwnProperty` | `ReconstructedJS/src_jsc/Models/UnionWarFightingProcess.js:30 (loadJson)` |
| `info` | `ReconstructedJS/src_jsc/Models/UnionWarFightingProcess.js:30 (loadJson)` |

### `xs.Models.UnionWarPlayer`

- 文件：`Models/UnionWarPlayer.js`
- 方法：`init`, `loadJson`, `createHeadIcon`, `createCard_Detail`, `createPartView`, `setNewBattleIdAndPos`, `getPlayerId`, `getPkId`, `getId`, `getShowPkId`, `getPlayerName`, `getFightPoint`, `setBattleId`, `getBattleId`, `setBattlePos`, `getBattlePos`, `setKillNum`, `getKillNum`, `setIsFighted`, `getIsFighted`, `setIsDeath`, `getIsDeath`, `createWithJson`

| 字段 | 证据 |
|---|---|
| `user_id` | `ReconstructedJS/src_jsc/Models/UnionWarPlayer.js:34 (loadJson)` |
| `user_nickname` | `ReconstructedJS/src_jsc/Models/UnionWarPlayer.js:34 (loadJson)` |
| `general_id` | `ReconstructedJS/src_jsc/Models/UnionWarPlayer.js:34 (loadJson)` |
| `fight_point` | `ReconstructedJS/src_jsc/Models/UnionWarPlayer.js:34 (loadJson)` |
| `battle_id` | `ReconstructedJS/src_jsc/Models/UnionWarPlayer.js:34 (loadJson)` |
| `pos` | `ReconstructedJS/src_jsc/Models/UnionWarPlayer.js:34 (loadJson)` |

### `xs.Models.UpgradeCoinCfg`

- 文件：`Models/UpgradeCfg/UpgradeCoinCfg.js`
- 方法：`createWithBase`

静态提取未解析到直接字段读取。

### `xs.Models.UpgradeExpCfg`

- 文件：`Models/UpgradeCfg/UpgradeExpCfg.js`
- 方法：`createWithBase`

静态提取未解析到直接字段读取。

### `xs.Models.VipCfg`

- 文件：`Models/VipCfg.js`
- 方法：`init`, `getTitle`, `getGiftId`, `getDescStringId`, `createWithBase`

静态提取未解析到直接字段读取。

### `xs.Models.WorshipEntry`

- 文件：`Models/WorshipEntry.js`
- 方法：`init`, `loadJson`, `getRankList`, `getAwardList`, `isInlist`, `getStatus`, `setStatus`, `createWithJson`

| 字段 | 证据 |
|---|---|
| `length` | `ReconstructedJS/src_jsc/Models/WorshipEntry.js:21 (loadJson)` |
| `rank_list` | `ReconstructedJS/src_jsc/Models/WorshipEntry.js:21 (loadJson)` |
| `award_list` | `ReconstructedJS/src_jsc/Models/WorshipEntry.js:21 (loadJson)` |
| `is_inlist` | `ReconstructedJS/src_jsc/Models/WorshipEntry.js:21 (loadJson)` |
| `status` | `ReconstructedJS/src_jsc/Models/WorshipEntry.js:21 (loadJson)` |

## Profile/GameData 管理器读取的字段

这些不是 cmn 描述表里的模型，而是 `Profile/GameData/*.js` 下的数据管理器。`map_info`、`wine_info` 这类**响应根字段**由它们直接消费。

### `Profile/GameData/Atlas.js`

- 方法：`init`, `getGeneralStatusById`, `getGeneral`, `getGoddess`, `getNumOfOwnGeneral`, `getEquipment`, `getOwnEquipment`, `getSkill`, `getOwnSkill`, `getByType`, `getByGrade`, `_getOwnNum`, `getById`, `create`

| 字段 | 证据 |
|---|---|
| `length` | `ReconstructedJS/src_jsc/Profile/GameData/Atlas.js:94 (_getOwnNum)` |
| `play_id` | `ReconstructedJS/src_jsc/Profile/GameData/Atlas.js:119 (create)` |

### `Profile/GameData/Base.js`

- 方法：`init`, `onClearCache_InFunc`, `_invokeFuncWithCache`, `_isCacheHint`, `_getCacheData`, `_setCacheData`, `getByPkId`, `getAllWithoutSort`, `_getWithIndex`, `getAllWithDefaultSort`, `getAll`, `getById`, `createWithBase`, `getAllClone`, `isThisPkIdExists`, `_initInstance`, `clearCache`

| 字段 | 证据 |
|---|---|
| `dataRef` | `ReconstructedJS/src_jsc/Profile/GameData/Base.js:11 (init)` |
| `apply` | `ReconstructedJS/src_jsc/Profile/GameData/Base.js:31 (_invokeFuncWithCache)` |
| `del` | `ReconstructedJS/src_jsc/Profile/GameData/Base.js:277 (clearCache)` |
| `del.inArray` | `ReconstructedJS/src_jsc/Profile/GameData/Base.js:277 (clearCache)` |
| `add` | `ReconstructedJS/src_jsc/Profile/GameData/Base.js:277 (clearCache)` |
| `add.length` | `ReconstructedJS/src_jsc/Profile/GameData/Base.js:277 (clearCache)` |
| `upd` | `ReconstructedJS/src_jsc/Profile/GameData/Base.js:277 (clearCache)` |

### `Profile/GameData/Buddy.js`

- 方法：`init`, `getCurBuddyMaxLength`, `getCurBuddyLength`, `getBuddyMaxLength`, `_updateNotice`, `getOpenZhaoLinNumByBuddyPos`, `getGeneralsInBuddy`, `isInBuddy`, `getBuddyGeneralInPos`, `getBuddyGeneralsWithoutEmptyPos`, `getBuddyGenerals`, `getBuddyGeneralsClone`, `isBuddyByGeneralPkId`, `getGeneral`, `create`

| 字段 | 证据 |
|---|---|
| `getGeneralPkId` | `ReconstructedJS/src_jsc/Profile/GameData/Buddy.js:183 (getGeneral)` |
| `play_id` | `ReconstructedJS/src_jsc/Profile/GameData/Buddy.js:196 (create)` |

### `Profile/GameData/CardShowData.js`

- 方法：`init`, `getGeneralShowData`, `getSoulShowData`, `getEquipShowData`, `getRefineStoneShowData`, `create`

| 字段 | 证据 |
|---|---|
| `play_id` | `ReconstructedJS/src_jsc/Profile/GameData/CardShowData.js:91 (create)` |

### `Profile/GameData/Combat.js`

- 方法：`init`, `getCombats`, `getCombatByType`, `getNotify`, `create`

| 字段 | 证据 |
|---|---|
| `play_id` | `ReconstructedJS/src_jsc/Profile/GameData/Combat.js:42 (create)` |

### `Profile/GameData/EquipmentPieces.js`

- 方法：`init`, `_updateNotice`, `create`

| 字段 | 证据 |
|---|---|
| `play_id` | `ReconstructedJS/src_jsc/Profile/GameData/EquipmentPieces.js:26 (create)` |

### `Profile/GameData/Equipments.js`

- 方法：`init`, `getWeaponByGeneralPkId`, `getArmorByGeneralPkId`, `getMountByGeneralPkId`, `getKitByGeneralPkId`, `_updateNotice`, `_getEquipmentGeneralPkIdAndPos`, `getEquimentByGeneralPkId`, `isGeneralPkIdEquipedEquipmentId`, `getWeapon`, `getArmor`, `getMount`, `getKit`, `_getEquipmentByPos`, `getWeaponListWithoutPkId`, `getArmorListWithoutPkId`, `getMountListWithoutPkId`, `getKitListWithoutPkId`, `getListWithoutPkId`, `getAllCanBeSold`, `getEquipmentUpgradeTotalLevel`, `getHasFateGeneral`, `getGeneral`, `isHaveEquipmentCanBeEaten`, `getEquipEnabledEps`, `getEpsDateForPkId`, `getGradeGodEps`, `getGradeGodEpsWithoutHole`, `getGradeGodEpsWithoutPkId`, `getGodEpsWithoutPkId`, `create`

| 字段 | 证据 |
|---|---|
| `getGeneralPkId` | `ReconstructedJS/src_jsc/Profile/GameData/Equipments.js:249 (getGeneral)` |
| `play_id` | `ReconstructedJS/src_jsc/Profile/GameData/Equipments.js:386 (create)` |

### `Profile/GameData/EvolutionInfos.js`

- 方法：`init`, `getByGeneralId`, `_updateNotice`, `checkAwakedByGeneralId`, `checkCanAwakeByGeneral`, `getAllGeneralCanAwakeNum`, `getAllGeneralAwake`, `create`

| 字段 | 证据 |
|---|---|
| `getId` | `ReconstructedJS/src_jsc/Profile/GameData/EvolutionInfos.js:54 (checkCanAwakeByGeneral)` |
| `play_id` | `ReconstructedJS/src_jsc/Profile/GameData/EvolutionInfos.js:146 (create)` |

### `Profile/GameData/Fate.js`

- 方法：`init`, `getEquipmentFateByTypeAndId`, `getSkillFateByTypeAndId`, `_clearFateByTypeAndId`, `_clearLightedInGeneral`, `_getFateByTypeAndId`, `getById`, `_getFateBelongsGeneralId`, `getAttrPer`, `getEffectPer`, `_countStepNum`, `isLightedInGeneral`, `isHasFateWithEquId`, `isHasFateWithSkillId`, `isHasFateWithGeneralId`, `create`

| 字段 | 证据 |
|---|---|
| `getAdditionType` | `ReconstructedJS/src_jsc/Profile/GameData/Fate.js:115 (getAttrPer)` |
| `getBaseDataRef` | `ReconstructedJS/src_jsc/Profile/GameData/Fate.js:124 (getEffectPer)` |
| `getLimit` | `ReconstructedJS/src_jsc/Profile/GameData/Fate.js:124 (getEffectPer)` |
| `getType` | `ReconstructedJS/src_jsc/Profile/GameData/Fate.js:164 (_countStepNum)` |
| `getId` | `ReconstructedJS/src_jsc/Profile/GameData/Fate.js:164 (_countStepNum)` |
| `isFateConnectWithEquipmentId` | `ReconstructedJS/src_jsc/Profile/GameData/Fate.js:264 (isHasFateWithEquId)` |
| `isFateConnectWithSkillId` | `ReconstructedJS/src_jsc/Profile/GameData/Fate.js:268 (isHasFateWithSkillId)` |
| `isFateConnectWithGeneralId` | `ReconstructedJS/src_jsc/Profile/GameData/Fate.js:272 (isHasFateWithGeneralId)` |
| `play_id` | `ReconstructedJS/src_jsc/Profile/GameData/Fate.js:278 (create)` |

### `Profile/GameData/Gems.js`

- 方法：`init`, `setAllGemsNoNew`, `getGemsWithPkId`, `getGemsListForType`, `create`

| 字段 | 证据 |
|---|---|
| `play_id` | `ReconstructedJS/src_jsc/Profile/GameData/Gems.js:76 (create)` |

### `Profile/GameData/GeneralSouls.js`

- 方法：`init`, `getReferenceGeneral`, `canReincarnate`, `canAbleToBreach`, `getAll_canReincarnate`, `getAll_breach`, `getAll_reincarnate`, `getSoulNumsByGeneralId`, `create`

| 字段 | 证据 |
|---|---|
| `_getReferenceGeneralCache` | `ReconstructedJS/src_jsc/Profile/GameData/GeneralSouls.js:20 (getReferenceGeneral)` |
| `getId` | `ReconstructedJS/src_jsc/Profile/GameData/GeneralSouls.js:20 (getReferenceGeneral)` |
| `_setReferenceGeneralCache` | `ReconstructedJS/src_jsc/Profile/GameData/GeneralSouls.js:20 (getReferenceGeneral)` |
| `getNum` | `ReconstructedJS/src_jsc/Profile/GameData/GeneralSouls.js:39 (canReincarnate)` |
| `getReincarnateNum` | `ReconstructedJS/src_jsc/Profile/GameData/GeneralSouls.js:39 (canReincarnate)` |
| `play_id` | `ReconstructedJS/src_jsc/Profile/GameData/GeneralSouls.js:172 (create)` |

### `Profile/GameData/Generals.js`

- 方法：`init`, `getLieutenantByPkId`, `getLieutenantByPkIdAndPos`, `getGeneralModelByPkid`, `getGeneralInAll`, `getGeneralNotInTeam`, `getGeneralNotInTeamAndNotInLieutenant`, `getGeneralNotInTeamAndNotInLieutenantAndNotBuddy`, `getListNotInTeamAndPkId`, `getListNotInTeamAndPkIdAndLevelGtOne`, `getListNotInTeamAndNotInLieutenantAndPkId`, `getListNotInTeamAndNotInLieutenantAndPkIdAndLevelGtOne`, `_getListNotInTeamAndPkId`, `_getListNotInTeamAndNotInLieutenantAndPkId`, `getByIdAndAutoCreate`, `getNaturalSkill`, `getAllSkills`, `getLieutenantSkills`, `getAllSkillsAndLieutenantSkills`, `isThisSkillCanBeSet`, `isThisLieutenantCanBeSet`, `isSurrender`, `_clearCache`, `_updateNotice`, `_clearCacheById`, `getAttr`, `_getAttrOffsetBySkill`, `_getFightPointOffsetBySkill`, `_getAttrOffsetByEqu`, `_getAttrOffsetByFate`, `_getAttrOffsetByGoddessFate`, `_getAttrOffsetByGoddess`, `_getAttrOffsetByLieutenantAttrPlus`, `_getAttrOffsetByFormula`, `_getEffectToGeneral`, `_getLieutenantAttrPlus`, `getReferenceSoul`, `haveEquipEnabledLieutenant`, `getAll_canBreach`, `isHaveCanBreachGeneral`, `getGeneralModelByGeneralId`, `create`

| 字段 | 证据 |
|---|---|
| `inArray` | `ReconstructedJS/src_jsc/Profile/GameData/Generals.js:278 (_getListNotInTeamAndPkId)` |
| `getNaturalSkillPkId` | `ReconstructedJS/src_jsc/Profile/GameData/Generals.js:329 (getNaturalSkill)` |
| `getNaturalSkillId` | `ReconstructedJS/src_jsc/Profile/GameData/Generals.js:329 (getNaturalSkill)` |
| `getPkId` | `ReconstructedJS/src_jsc/Profile/GameData/Generals.js:340 (getAllSkills)` |
| `getId` | `ReconstructedJS/src_jsc/Profile/GameData/Generals.js:481 (isSurrender)` |
| `getAttrNaked` | `ReconstructedJS/src_jsc/Profile/GameData/Generals.js:541 (getAttr)` |
| `getFates` | `ReconstructedJS/src_jsc/Profile/GameData/Generals.js:746 (_getAttrOffsetByFate)` |
| `length` | `ReconstructedJS/src_jsc/Profile/GameData/Generals.js:934 (haveEquipEnabledLieutenant)` |
| `play_id` | `ReconstructedJS/src_jsc/Profile/GameData/Generals.js:1031 (create)` |

### `Profile/GameData/Goddess.js`

- 方法：`init`, `getHaveGoddessNum`, `isHaveGoddess_GoddessId`, `getHaveGoddessSkinNum`, `getGoddessSkinListByGoddessId`, `getHaveGoddessSkinList`, `isStrongestInFight`, `getNotFightGoddessNum`, `_updateNotice`, `getFightGoddessID`, `getFightGoddess`, `getFateGoddess`, `isHaveGoddessBySkinId`, `create`

| 字段 | 证据 |
|---|---|
| `getSkinList` | `ReconstructedJS/src_jsc/Profile/GameData/Goddess.js:73 (getHaveGoddessSkinList)` |
| `play_id` | `ReconstructedJS/src_jsc/Profile/GameData/Goddess.js:236 (create)` |

### `Profile/GameData/GoddessFate.js`

- 方法：`init`, `_clearLightedInGeneral`, `getById`, `getAttrPer`, `getEffectPer`, `_countStepNum`, `isLightedInGoddess`, `create`

| 字段 | 证据 |
|---|---|
| `getAdditionType` | `ReconstructedJS/src_jsc/Profile/GameData/GoddessFate.js:35 (getAttrPer)` |
| `getBaseDataRef` | `ReconstructedJS/src_jsc/Profile/GameData/GoddessFate.js:44 (getEffectPer)` |
| `getLimit` | `ReconstructedJS/src_jsc/Profile/GameData/GoddessFate.js:44 (getEffectPer)` |
| `getType` | `ReconstructedJS/src_jsc/Profile/GameData/GoddessFate.js:84 (_countStepNum)` |
| `getId` | `ReconstructedJS/src_jsc/Profile/GameData/GoddessFate.js:114 (isLightedInGoddess)` |
| `play_id` | `ReconstructedJS/src_jsc/Profile/GameData/GoddessFate.js:154 (create)` |

### `Profile/GameData/Hint.js`

- 方法：`init`, `_generalsChange`, `_skillsChange`, `updateHintInfo`, `updateTeamHintInfo`, `_clearTeamInfo`, `_clearGeneralInfo`, `_clearEquipmentInfo`, `_clearChaosInfo`, `updateCampHintInfo`, `isTeamJoinEnabled`, `isEquipEnabled`, `campHintInfoCount`, `generalHintInfoCount`, `generalReinHintInfoCount`, `generalBreachHintInfoCount`, `equipmentHintInfoCount`, `resetBagHint`, `conBagHintInfoCount`, `bagHintInfoCount`, `gemBagHintInfoCount`, `GoddessHintCount`, `haveCampHintInfo`, `updatePvpHintInfo`, `ladderHintInfoCount`, `ladderHintInfoCount_salary`, `ladderHintInfoCount_honor`, `chaosHintInfoCount`, `climbHintInfoCount`, `hulaoBattleHintInfoCount`, `ladderWarCounts`, `ladderWarExchangeCounts`, `ladderWarInfoCount`, `localLadderWarCounts`, `localLadderWarExchangeCounts`, `localLadderWarInfoCount`, `decisiveBattleInfoCount`, `localDecisiveBattleInfoCount`, `havePvpHintInfo`, `updatePartyHintInfo`, `trainHintInfoCount`, `fstpayHintInfoCount`, `_otherPartyHintInfoCountByIdx`, `partyHintInfoCountByIdx`, `havePartyHintInfo`, `updateStoreHintInfo`, `toastHintInfoCount`, `giftHintInfoCount`, `haveStoreHintInfo`, `updateMenuHintInfo`, `getHintMailCount`, `awardHintInfoCount`, `normalMailCount`, `msgMailHintInfoCount`, `mailHintInfoCount`, `haveMenuHintInfo`, `getWishinHint`, `getHintUnionForType`, `unionHintInfoCount`, `haveUnionHintInfo`, `taskHintInfoCount`, `haveTaskHintInfo`, `create`

| 字段 | 证据 |
|---|---|
| `play_id` | `ReconstructedJS/src_jsc/Profile/GameData/Hint.js:576 (create)` |

### `Profile/GameData/Index.js`

- 方法：`init`, `createIndexAll`, `createIndex`, `updateIndex`, `findWithIndex`, `deleteIndex`, `deleteIndexAll`, `flush`, `create`

| 字段 | 证据 |
|---|---|
| `length` | `ReconstructedJS/src_jsc/Profile/GameData/Index.js:17 (createIndexAll)` |

### `Profile/GameData/Items.js`

- 方法：`init`, `setAllItemsNoNew`, `getByItemId`, `getIdsByType`, `chkById`, `getTotalNumById`, `getPriorityObjById`, `getGanodermaNum`, `getSmallBaoZiNum`, `getBigBaoZiNum`, `getMagatamaNum`, `getTenGlodNum`, `getGoldWineGlassNum`, `getSilverWineGlassNum`, `getCopperWineGlassNum`, `getRefineStones`, `isHaveRefineStone`, `getExpJuanZhou`, `isHaveExpJuanZhou`, `create`

| 字段 | 证据 |
|---|---|
| `length` | `ReconstructedJS/src_jsc/Profile/GameData/Items.js:71 (chkById)` |
| `play_id` | `ReconstructedJS/src_jsc/Profile/GameData/Items.js:206 (create)` |

### `Profile/GameData/LadderInfo.js`

- 方法：`init`, `update`, `getLadderInfo`, `setLastFightData`, `getLastFightData`, `clearLastFightData`, `create`

| 字段 | 证据 |
|---|---|
| `play_id` | `ReconstructedJS/src_jsc/Profile/GameData/LadderInfo.js:38 (create)` |

### `Profile/GameData/MagicalEqus.js`

- 方法：`init`, `getByGeneralId`, `_updateNotice`, `getIndexByGeneralId`, `create`

| 字段 | 证据 |
|---|---|
| `play_id` | `ReconstructedJS/src_jsc/Profile/GameData/MagicalEqus.js:64 (create)` |

### `Profile/GameData/Map.js`

- 方法：`init`, `update`, `getCurMap`, `setCurMapId`, `getCurMapId`, `getMapObjByMapId`, `getNextChapterId`, `getPrevChapterId`, `getNewestMapId`, `getNewestMap`, `nextIsNewest`, `isStepOver`, `isEliteMap`, `create`

| 字段 | 证据 |
|---|---|
| `chapter_list` | `ReconstructedJS/src_jsc/Profile/GameData/Map.js:22 (update)` |
| `chapter_details` | `ReconstructedJS/src_jsc/Profile/GameData/Map.js:22 (update)` |
| `chapter_list.length` | `ReconstructedJS/src_jsc/Profile/GameData/Map.js:22 (update)` |
| `play_id` | `ReconstructedJS/src_jsc/Profile/GameData/Map.js:339 (create)` |

### `Profile/GameData/MeridianTops.js`

- 方法：`init`, `getIsInTeamByGeneralId`, `getAllMeridianTopModel`, `getByGeneralPkId`, `create`

| 字段 | 证据 |
|---|---|
| `length` | `ReconstructedJS/src_jsc/Profile/GameData/MeridianTops.js:20 (getIsInTeamByGeneralId)` |
| `play_id` | `ReconstructedJS/src_jsc/Profile/GameData/MeridianTops.js:158 (create)` |

### `Profile/GameData/Mgr.js`

- 方法：`init`, `getDataRef`, `loadJson`, `onClearCacheAll_InFunc`, `setPlayId`, `getPlayId`, `_getPlayIdString`, `init_Login`, `updateRespDataAndClear`, `updateRespData`, `getBroadCastUrl`, `getHelpUrl`, `getDealUrl`, `getFeedbackBugUrl`, `getCustomerServiceUrl`, `getInstance`, `releaseInstance`

| 字段 | 证据 |
|---|---|
| `isAdult` | `ReconstructedJS/src_jsc/Profile/GameData/Mgr.js:122 (init_Login)` |
| `isMobile` | `ReconstructedJS/src_jsc/Profile/GameData/Mgr.js:122 (init_Login)` |
| `isShowBanShu` | `ReconstructedJS/src_jsc/Profile/GameData/Mgr.js:122 (init_Login)` |
| `is_use_keywords` | `ReconstructedJS/src_jsc/Profile/GameData/Mgr.js:122 (init_Login)` |
| `map_info` | `ReconstructedJS/src_jsc/Profile/GameData/Mgr.js:122 (init_Login)` |
| `wine_info` | `ReconstructedJS/src_jsc/Profile/GameData/Mgr.js:122 (init_Login)` |
| `user_auth` | `ReconstructedJS/src_jsc/Profile/GameData/Mgr.js:122 (init_Login)` |
| `isShowAmt` | `ReconstructedJS/src_jsc/Profile/GameData/Mgr.js:122 (init_Login)` |
| `isShowCDKey` | `ReconstructedJS/src_jsc/Profile/GameData/Mgr.js:122 (init_Login)` |
| `server_open` | `ReconstructedJS/src_jsc/Profile/GameData/Mgr.js:122 (init_Login)` |
| `isShowGem` | `ReconstructedJS/src_jsc/Profile/GameData/Mgr.js:122 (init_Login)` |
| `isShowMagic` | `ReconstructedJS/src_jsc/Profile/GameData/Mgr.js:122 (init_Login)` |
| `maxTeamNum` | `ReconstructedJS/src_jsc/Profile/GameData/Mgr.js:122 (init_Login)` |
| `isShowUnionWar` | `ReconstructedJS/src_jsc/Profile/GameData/Mgr.js:122 (init_Login)` |
| `festivalType` | `ReconstructedJS/src_jsc/Profile/GameData/Mgr.js:122 (init_Login)` |
| `rechargeRate` | `ReconstructedJS/src_jsc/Profile/GameData/Mgr.js:122 (init_Login)` |
| `customerServiceShowConf` | `ReconstructedJS/src_jsc/Profile/GameData/Mgr.js:122 (init_Login)` |

### `Profile/GameData/Player.js`

- 方法：`init`, `getPlayer`, `getPlayerOnlineTime`, `create`

| 字段 | 证据 |
|---|---|
| `play_id` | `ReconstructedJS/src_jsc/Profile/GameData/Player.js:38 (create)` |

### `Profile/GameData/SkillPieces.js`

- 方法：`init`, `_updateNotice`, `create`

| 字段 | 证据 |
|---|---|
| `play_id` | `ReconstructedJS/src_jsc/Profile/GameData/SkillPieces.js:27 (create)` |

### `Profile/GameData/Skills.js`

- 方法：`init`, `getSkillByGeneralPkId`, `getNaturalSkillByGeneralPkId`, `getSkillByGeneralPkIdAndPos`, `getNaturalSkill`, `isGeneralPkIdEquipedSkillId`, `getListWithoutNaturalSkillAndPkId`, `isTeamSkillMax`, `getAllSkillIsWorn`, `_updateNotice`, `isHaveSkillCanBeEaten`, `getAllSkillIsNotWorn`, `getAllSkillCanBeEaten`, `getHasFateGeneral`, `getGeneral`, `haveEquipEnabledSkill`, `create`

| 字段 | 证据 |
|---|---|
| `getGeneralPkId` | `ReconstructedJS/src_jsc/Profile/GameData/Skills.js:239 (getGeneral)` |
| `length` | `ReconstructedJS/src_jsc/Profile/GameData/Skills.js:250 (haveEquipEnabledSkill)` |
| `play_id` | `ReconstructedJS/src_jsc/Profile/GameData/Skills.js:286 (create)` |

### `Profile/GameData/Team.js`

- 方法：`init`, `getTeamTotalFighting`, `getTeamGeneralByPkId`, `getIsAllSkillsIsHighest`, `getNotAllEquipmentsStrongerIsHighest`, `getIsAllEquipmentsRefineIsHighest`, `getTeamLengthPercentageString`, `getCurTeamMaxLength`, `getCurTeamLength`, `getTeamMaxLength`, `getOpenLevelByTeamPos`, `getOpenLevelByLieutenantPos`, `getCurLieutenantMaxLength`, `getGeneralNumInTeam`, `getGeneralsInTeam`, `getGeneralsInTeamHulaoBattle`, `isInTeam`, `isInTeamOrInLieutenant_GeneralId`, `getInTeamPos`, `getTeamGeneralInPos`, `_getTeamGeneralsWithoutEmptyPos`, `_updateNotice`, `getTeamGenerals`, `getTeamGeneralsClone`, `getGeneral`, `create`

| 字段 | 证据 |
|---|---|
| `getGeneralPkId` | `ReconstructedJS/src_jsc/Profile/GameData/Team.js:404 (getGeneral)` |
| `play_id` | `ReconstructedJS/src_jsc/Profile/GameData/Team.js:417 (create)` |

### `Profile/GameData/ToastInfo.js`

- 方法：`init`, `update`, `getToastInfo`, `create`

| 字段 | 证据 |
|---|---|
| `play_id` | `ReconstructedJS/src_jsc/Profile/GameData/ToastInfo.js:36 (create)` |

### `Profile/GameData/Union.js`

- 方法：`init`, `getUnion`, `create`

| 字段 | 证据 |
|---|---|
| `play_id` | `ReconstructedJS/src_jsc/Profile/GameData/Union.js:22 (create)` |

### `Profile/GameData/UnionWar.js`

- 方法：`init`, `getUnionWar`, `create`

| 字段 | 证据 |
|---|---|
| `play_id` | `ReconstructedJS/src_jsc/Profile/GameData/UnionWar.js:22 (create)` |

### `Profile/GameData/common.js`

- 方法：`getDataDescByNameType`, `getDataByNameType`, `init`, `updateRespData`, `updateOtherData`, `updateCmnData`, `clearGeneralSoulCache`, `setItemStatus`, `getModelByTypeAndPkId`, `getModelsByTypeAndFilter`, `getModelsByTypeAndIndex`, `refreshCacheDataEveryDay`, `getNotifyCenter`, `_firstTimeInitCmnData`, `create`

| 字段 | 证据 |
|---|---|
| `user_level_up_info` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:302 (updateOtherData)` |
| `meeting_info` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:302 (updateOtherData)` |
| `surrender_info` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:302 (updateOtherData)` |
| `general_skin` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:373 (updateCmnData)` |
| `server_version` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:373 (updateCmnData)` |
| `cfg_version` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:373 (updateCmnData)` |
| `opt_cfg_version` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:373 (updateCmnData)` |
| `server_time` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:373 (updateCmnData)` |
| `offset_time` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:373 (updateCmnData)` |
| `getId` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:570 (clearGeneralSoulCache)` |
| `setNewStatus` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:585 (setItemStatus)` |
| `status` | `ReconstructedJS/src_jsc/Profile/GameData/common.js:667 (refreshCacheDataEveryDay)` |
