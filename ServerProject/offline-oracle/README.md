# 离线服源码对照库

来源：`../tmp/offlineserver.apk`，当前保存了一份 JADX 的 Java 输出 (`java/`)
和 apktool 的原始 smali (`smali/`)。这些文件是**反编译结果**，不应误称为厂商
原始 Java 源码。保留混淆类名是为了让 Java、smali 和 APK 的类名一一对应。

查协议动作先看 [完整入口索引](../docs/original-behavior-inventory.md)，再打开对应
Java 位置。JADX 在长方法里提示过 duplicated blocks、type inference failed，
涉及条件、循环和回包时按同名 smali 核对。修 Rust 服务端时，先从该入口找到
它调用的规则和配置表，写覆盖整张表的测试，再改业务逻辑。

| 语义名 | 反编译类与方法 | 已确认职责 |
| --- | --- | --- |
| 地图与章节处理 | `java/handler/w.java` 的 `b0` | `map.getUserMap`、`chapter.getChapterInfo`、`dungeon.fightBefore`、`dungeon.fight`、`dungeon.openBox` 的入口与回包 |
| 地图构造 | `java/h5.java` 的 `o`、`h`、`l` | 54 普通章和 54 精英章，关卡及宝箱字段 |
| 原始布局 | `java/w1.java` 的 `x0`、`p0` | `start/path` 网格连线、普通和隐藏宝箱锚点 |
| 地图 ID 转换 | `java/h5.java` 的 `H0`、`Z0` | `501` ↔ `500001`，`10501` ↔ `10500001` |
| 战斗数值 | `java/handler/x.java` 的 `B`、`C`、`h` | 体力、玩家经验、武将经验的计算 |
| 酒馆 | `java/handler/x0.java` | 酒馆展示、招募与冷却 |
| 玩家与登录 | `java/handler/d.java` | 登录快照、账号和玩家相关入口 |

这个表是可验证的**语义别名**，没有改动任何反编译文件中的标识符。尚未确认的
方法不赋语义名。游戏数据另见 `../gameconfig/` 与 `../recovered-data/`；它们和
此 APK 是不同来源，字段不能凭同名推定等价。
