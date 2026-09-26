# gameconfig — 服务端启动所需的游戏数据

服务端直接消费这套数据来组装协议响应（地图 `map.getUserMap` / 登录 `map_info` /
对酒 `wine_info`）。**缺失或损坏会直接导致启动失败**，不存在回退。

## 文件清单与来源

| 文件 | 内容 | 来源（原始位置） | sha256 |
|---|---|---|---|
| `chapter_battle_layouts.json` | 全章节布局：背景图、起点、路径、奖励、每关敌人/金币/建议等级 | 离线服 `game_data.bin` 解密产物 `recovered-data/game_data_json/chapter_battle_layouts.json`（离线服作者从客户端 JSC 提取的章节结构；敌人/背景/路径真实，资源数值为离线服占位） | `2f19774ec42c2b5c56e4b77cc05bb80a05f1ca35a4f3d78215db5d3e53c1e4ba` |
| `dungeon_enemies.json` | 每关敌将映射（用于关卡头像 `dungeon_card`） | 同上，`recovered-data/game_data_json/dungeon_enemies.json`（离线服从 `sgs_dungeon_plot_dialog.jsc` 对话数据提取） | `121fc77d9960afab771742bb8af9b21de666a4ad15cf1623021f4afdeef95458` |
| `wine_pool.json` | 离线服对酒奖励表（`x0.f1032g` 的 197 行混合奖励条目） | 离线服 `classes.dex` 反编译常量表 `recovered-data/dex_rules/x0.f1032g.json`（已用 DEX 字符串池独立校验 402/402） | `b0eb484594429406a697a1d7c189eeae4cc1072cb947ccf3869b092dfbaacb54` |

`wine_pool.json` 保持 DEX 原始数据不变。每行第二列是奖励类型，第三列是对应奖励 ID；
服务端组装客户端 `show_general_list` 时只取 `type=6` 的武将条目。`type=7/8`
是其他奖励，不能当成武将 ID 下发。配套客户端 `9.17.0.89-build211-arm64` 的
`sgs_generals.jsc` 与当前客户端配置逐字节相同：type 6 的 63 个 ID 均存在，type
7/8 的 ID 不属于武将配置表。

## 如何重新生成

三份文件都来自离线服 APK（`ServerProject/tmp/offlineserver.apk`，sha256
`c48b01b98479687d3d4d0142d377a74391fe8e0be6b2db5eef72eca250bba001`）：

```sh
# 1) 解密内置数据包，得到 game_data_json/（含前两个文件）
python3 tools/extract_offlineserver_data.py --apk ServerProject/tmp/offlineserver.apk

# 2) 提取 DEX 常量表，得到 dex_rules/x0.f1032g.json，再改名成 wine_pool.json
python3 tools/extract_offlineserver_dex_rules.py --apk ServerProject/tmp/offlineserver.apk --verify
cp ServerProject/recovered-data/dex_rules/x0.f1032g.json ServerProject/gameconfig/wine_pool.json

# 3) 复制其余两个文件
cp ServerProject/recovered-data/game_data_json/chapter_battle_layouts.json ServerProject/gameconfig/
cp ServerProject/recovered-data/game_data_json/dungeon_enemies.json ServerProject/gameconfig/
```

复制后核对上方 sha256。

## 修改约定

- 只放服务端真正读到的文件，别把整个 `recovered-data/` 拷进来。
- 这些文件是**数据**不是代码：不要手改数值来"修 bug"。若某字段与客户端不符，
  先回上游（`recovered-data/`、客户端 JSC）核对来源，再决定是否更新。
