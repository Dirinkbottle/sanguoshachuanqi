# `Models/Player.js`

- Original embedded path: `/home/inkbottle/othersrc/android_playground/sgscq-reconstruction/Resources/assets/src_jsc/Models/Player.jsc`
- XDR decode: `ok`; bytecode scripts: 109; instructions: 4058
- Full instruction listing: `src_jsc/Models/Player.js.disasm.txt`

This is a navigation outline generated from names and line metadata
retained in the compiled bytecode. It is not the original JavaScript text.

## Function bodies

| Original line | Object index | Recovered name |
|---:|---:|---|
| 37 | 0 | `init` |
| 106 | 1 | `update` |
| 202 | 2 | `isFightSpeed3_unlock` |
| 209 | 3 | `getFightSpeed3UnlockVipLevel` |
| 214 | 4 | `createHeadIcon` |
| 220 | 5 | `getPlayerUpgradeCfg` |
| 231 | 6 | `schedule_updatePlayerTiLiAndJingLi` |
| 275 | 7 | `schedule_updateChaosCountDown` |
| 290 | 8 | `getPlayerMapStep` |
| 294 | 9 | `getPlayerDungeonStep` |
| 299 | 10 | `getPlayerEliteMapStep` |
| 303 | 11 | `getPlayerEliteDungeonStep` |
| 308 | 12 | `getPlayerName` |
| 313 | 13 | `getPlayerId` |
| 318 | 14 | `getPlayerSignature` |
| 323 | 15 | `setPlayerLevel` |
| 331 | 16 | `getPlayerLevel` |
| 336 | 17 | `getPlayerVipLevel` |
| 341 | 18 | `getPlayerNextVipLevel` |
| 346 | 19 | `getPlayerAbility` |
| 350 | 20 | `getPlayerAbilityChange` |
| 354 | 21 | `getPlayerYuanBao` |
| 359 | 22 | `getPlayerTongQian` |
| 363 | 23 | `getPlayerTongQianToString` |
| 373 | 24 | `getPlayerGoldSoul` |
| 378 | 25 | `getPlayerSilverSoul` |
| 383 | 26 | `getPlayerMagatamaNum` |
| 394 | 27 | `getPlayerGanodermaNum` |
| 404 | 28 | `addPlayerCurTiLi` |
| 409 | 29 | `getPlayerCurTiLi` |
| 412 | 30 | `getPlayerNextTiLiSec` |
| 415 | 31 | `setPlayerNextTiLiSec` |
| 418 | 32 | `getPlayerMaxTiLi` |
| 421 | 33 | `getPlayerCurQiLi` |
| 424 | 34 | `addPlayerCurQiLi` |
| 428 | 35 | `getPlayerNextQiLiSec` |
| 431 | 36 | `setPlayerNextQiLiSec` |
| 436 | 37 | `getPlayerMaxQiLi` |
| 441 | 38 | `getPlayerExp` |
| 446 | 39 | `getPlayerMaxExp` |
| 451 | 40 | `getPlayerCombatMaxLevel` |
| 456 | 41 | `setPlayerLastLoginTime_Local` |
| 461 | 42 | `getPlayerLastLoginTime_Local` |
| 465 | 43 | `getPlayerLastLoginTime` |
| 476 | 44 | `getTeamNumInfo` |
| 500 | 45 | `getPlayerFreshStep` |
| 503 | 46 | `setPlayerFreshStep` |
| 508 | 47 | `getIsBroadShowed` |
| 511 | 48 | `setIsBroadShowed` |
| 519 | 49 | `getPlayerVipFormat` |
| 523 | 50 | `getPlayerExpPercentage` |
| 527 | 51 | `getPlayerExpPercentageFormat` |
| 531 | 52 | `getPlayerTiLiPercentage` |
| 535 | 53 | `getPlayerJingLiPercentage` |
| 539 | 54 | `getPlayerNextTiLiRecoverTimeFormat` |
| 543 | 55 | `getPlayerNextJingLiRecoverTimeFormat` |
| 548 | 56 | `getPlayerAllTiLiRecoverTimeFormat` |
| 554 | 57 | `getPlayerAllJingLiRecoverTimeFormat` |
| 560 | 58 | `getTeamMaxLength` |
| 581 | 59 | `getCurTeamMaxLength` |
| 603 | 60 | `getPlayerLevelByTeamPos` |
| 620 | 61 | `getCurLieutenantMaxLength` |
| 632 | 62 | `getPlayerLevelByLieutenantPos` |
| 647 | 63 | `getChaosCountDown` |
| 652 | 64 | `getLadderRankSalary` |
| 657 | 65 | `getUserHonor` |
| 662 | 66 | `getLadderChallengeTimes` |
| 666 | 67 | `setLadderChallengeTimes` |
| 672 | 68 | `getItemConditionByItemId` |
| 769 | 69 | `getFirstChooseGeneral` |
| 778 | 70 | `getFirstWineGeneral` |
| 786 | 71 | `getCoolDownTime` |
| 794 | 72 | `getClearCDTimePrice` |
| 798 | 73 | `getBaseCDTime` |
| 802 | 74 | `getChargedYuanBao` |
| 806 | 75 | `getNextVipYuanBao` |
| 811 | 76 | `getChargeCount` |
| 815 | 77 | `getAccount_uid` |
| 818 | 78 | `_getAddictionStr` |
| 826 | 79 | `readAddictionSql` |
| 844 | 80 | `setAddictionSql` |
| 848 | 81 | `setLoginTimeToSql` |
| 875 | 0 | `btnCallback` |
| 887 | 82 | `setOnlineTimeToSql` |
| 893 | 83 | `updetaOnlineTime` |
| 909 | 0 | `btnCallback` |
| 922 | 1 | `btnCallback` |
| 934 | 2 | `btnCallback` |
| 945 | 3 | `btnCallback` |
| 956 | 4 | `btnCallback` |
| 963 | 84 | `getUnionWarSignUp` |
| 968 | 85 | `getUnionId` |
| 973 | 86 | `getUnionName` |
| 977 | 87 | `setUserRole` |
| 981 | 88 | `getUserRole` |
| 986 | 89 | `getUserDonate` |
| 990 | 90 | `setUserDonate` |
| 994 | 91 | `setDonateState` |
| 997 | 92 | `getDonateState` |
| 1002 | 93 | `setDonateNum` |
| 1005 | 94 | `getDonateNum` |
| 1010 | 95 | `setPlayerSkin` |
| 1013 | 96 | `getPlayerSkin` |
| 1017 | 97 | `updateBaseUnionUserInfo` |
| 1025 | 98 | `clearUnionUserInfo` |
| 1035 | 99 | `hasUnion` |
| 1043 | 100 | `getInstance` |
| 1052 | 101 | `purgeInstance` |
