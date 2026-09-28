# 09 · 配置字段语义与缺失表（第三方数据交叉验证）

本页把 [08-config-domains.md](08-config-domains.md) 里只有名字的字段补上**含义**，
并记录本包缺失的那几张表的形状。

## 9.1 数据来源与可信度

| 项 | 值 |
|---|---|
| 站点 | [mercury233.me/sgscq](https://mercury233.me/sgscq/)（作者：波罗丁牌灭火器） |
| 内容 | 武将 / 技能 / 装备 / 神兵 / 升级 数据表 |
| 自述来源 | "从三国杀传奇最新版客户端提取的数据" |
| 版本 | 2018-01-31 正式服，更新至 2019-01-13 最终版 |
| 性质 | **第三方**，非官方；作者自己标注"仅供参考" |

它与本仓库的 APK（版本 723 / 资源号 775）**不是同一个构建**，而且更新。
所以它单独不构成关于我们这份包的证据。

本页只使用**逐条比对后确认一致**的部分：拿它的中文列名去解释我们的字段，
前提是两边在 id 与数值上对得上。核对脚本：
`tools/crosscheck_config_site.py`（可重跑，会缓存页面到 `/tmp/sgscq-site`）。

## 9.2 交叉验证矩阵

| 我们的表 | 站点表 | 站点行数 | 包内记录 | 按 id 匹配 | 字段一致 |
|---|---|---|---|---|---|
| `sgs_generals` | `generals` | 278 | 278 | 278 | **8/8 字段各 278/278** |
| `sgs_skills` | `skills` | 239 | 239 | 239 | 枚举 100% 纯净 |
| `sgs_equipments` | `equips` | 134 | 134 | 134 | 枚举 100% 纯净 |
| `sgs_user_level_conf` | `player-levels` | 130 | 130 | 130 | `exp_need` **130/130** |
| `sgs_upgrade_exp_conf` | `general-levels` | 520 | 520×9 条曲线 | — | 4 条神档曲线各 **520/520** |
| `sgs_upgrade_exp_conf.shen_jinengshengji` | `skill-levels` | 30 | 30 | — | **30/30** |
| `sgs_upgrade_coin_conf` | `equip-levels` | 450 | 450×13 | — | **3600/3600**（8 列 × 450 级） |
| `sgs_magic_buff_conf` | `buffs` | 47 个神兵 | 47 | 47 | id 全覆盖 |

「8/8 字段各 278/278」的意思是：278 条武将记录，每一条的 8 个属性字段**逐字符相同**。
这已经排除了"版本不同所以数值有漂移"的可能——至少这几张表两边同源。

后三行的对应关系见 §9.4：站点把它们做成独立页面，看起来像是补上了本包缺失的表，
实际不是。

## 9.3 已确认的字段语义

### 武将属性与成长（`sgs_generals.js`）

| 我们的字段 | 站点列名 | 一致率 |
|---|---|---|
| `general_hp` | 血 | 278/278 |
| `general_attack` | 攻 | 278/278 |
| `general_defense` | 防 | 278/278 |
| `general_wisdom` | 智 | 278/278 |
| `general_hp_step` | 血成长 | 278/278 |
| `general_attack_step` | 攻成长 | 278/278 |
| `general_defense_step` | 防成长 | 278/278 |
| `general_wisdom_step` | 智成长 | 278/278 |

`*_step` 是**每级成长值**，不是总值。样例：

```text
id=111001 神·曹操   血 480.00  攻 225.00  防 165.00  智 160.00
                    成长 18.60 / 9.30 / 7.60 / 6.50
id=111003 曹操      血 323.10  攻 133.59  防 155.35  智 130.59
                    成长 14.27 / 5.65 / 6.59 / 5.65
```

这两行在站点与包内**完全相同**，可以直接用 `tools/crosscheck_config_site.py` 复现。

### 技能类型（`sgs_skills.js` 的 `skill_type`）

239/239 条一一对应，**没有一条落在别的类别里**，所以映射是确定的：

| `skill_type` | 含义 | 条数 |
|---|---|---|
| `0` | 坑（未完成，站点单独归类） | 14 |
| `1` | 攻击 | 69 |
| `2` | 控场 | 54 |
| `3` | 卖血 | 42 |
| `4` | 被动 | 60 |

### 装备部位（`sgs_equipments.js`）

`equipment_type` 与 `equipment_pos` 在这 134 条里**取值完全相同**：

| 取值 | 含义 | 条数 |
|---|---|---|
| `1` | 武器 | 36 |
| `2` | 防具 | 33 |
| `3` | 坐骑 | 36 |
| `4` | 锦囊 | 29 |

### 装备的品质与部位编码在字符串里

`sgs_equipments.js` 的 `upgrade_coin_type` / `sell_type` 不是数字枚举，
而是 `{品质}{部位}_{动作}` 形式的语义键。这与 `sgs_upgrade_coin_conf` /
`sgs_sell_conf` 的键**同名**：

| 品质 | 部位 | 强化键 | 出售键 |
|---|---|---|---|
| 神 | 武器 / 防具 / 坐骑 / 锦囊 | `shen{wuqi,fangju,zuoqi,jinnang}_qianghua` | `..._chushou` |
| 金 | 同上 | `jin...` | `..._chushou` |
| 银 | 同上 | `yin...` | `..._chushou` |
| 铜 | 不分部位 | `tongzhuangbei_qianghua` | `tongzhuangbei_chushou` |

`sgs_upgrade_coin_conf` 恰好 13 个键 = 神金各 4 + 银 4 + 铜 1；
`sgs_sell_conf` 26 个键 = 13 个 `_chushou` + 13 个 `_suipianchushou`（碎片）。
站点 `equip-levels` 表的列名（神武器 / 神防具 / … / 金锦囊）正是这套编码，
反过来印证了名称的含义。

## 9.4 站点的等级表其实都是我们**已有**的表

这里要更正一个先前的判断。站点把四张等级表列成独立页面，初看像是补上了本包缺失的
`sgs_general_level_conf` / `sgs_skill_upgrade_conf` / `sgs_equipment_upgrade_conf`。
**逐列比对后不成立**：四张表全都对应我们包里已有的表。

| 站点表 | 行数 | 实际对应 | 比对结果 |
|---|---|---|---|
| `player-levels` | 130 | `sgs_user_level_conf` | 第 1 列 = `exp_need`，**130/130** |
| `general-levels` | 520 | `sgs_upgrade_exp_conf` | 第 1/3/5/7 列 = `shangshen_exp` / `zhongshen_exp` / `xiashen_exp` / `lieshen_exp` 的 `num`，各 **520/520** |
| `skill-levels` | 30 | `sgs_upgrade_exp_conf` | 第 1 列 = `shen_jinengshengji.num`，**30/30** |
| `equip-levels` | 450 | `sgs_upgrade_coin_conf` | 站点「等级 N」= 包内键 `"N-1"`，450 个点全部一致 |

栏目与我们有 520 条记录的四个数组一一对应，是判定 `general-levels` 归属的关键：
它不是缺失的那张按品质分档的武将等级表，而就是 `sgs_upgrade_exp_conf` 里的四条经验曲线。

`equip-levels` 同理：站点「等级 450」= 包内 `shenwuqi_qianghua["449"]`，数值 2359741122.72
（站点显示取整为 2359741122），450 个点无一处不符。

### 那三张表为什么不在包里

`sgs_upgrade_exp_conf` 承载了等级曲线，说明那三张表的功能已经被它取代。直接证据在客户端里：

```js
// ReconstructedJS/src_jsc/Models/UpgradeCfg/GeneralExpCfg.js:10
xs.assert(false, "xs.Models.GeneralExpCfg.createWithBase error this file will be remove");
```

这条断言字符串是**打包时就在字节码里的**——`GeneralExpCfg`（读 `sgs_general_level_conf` 的模型）
已被标记为待移除。`Tools/CfgData.js` 里仍保留指向旧表的 `case` 分支，但对应的文件
既不在包内、也不在服务端下发清单里，可以解释为**已废弃的表**，而不是"我们没恢复出来"。

因此这三张表不需要从站点补：我们要么已经有等价数据（`sgs_upgrade_exp_conf`），
要么它本来就是死分支。

## 9.5 站点上确实没有的东西

- 本包缺失的 5 张表里，`sgs_general_insight_conf`（武将突破）与 `sgs_kits`（礼包）
  站上没有；另外 3 张见 §9.4，是我们已有的表的另一种呈现。
- 站点不含任何**协议**内容：没有 `do=` 端点、没有请求/响应字段。它是配置数据站，
  与 [endpoint-index.md](endpoint-index.md) 的 244 个动作没有交集。
- 站点「限时日历」页作者标注为**手动整理**，不是客户端提取。

## 9.6 边界

- 站点是**第三方整理**，作者自述"仅供参考"，且来自**比我们更新的构建**。
  本页只在逐条比对通过的地方引用它。
- 「字段语义」是**可读性补充**，不改变任何协议结论：客户端读什么字段、
  什么时机读，仍然以 [08-config-domains.md](08-config-domains.md) 与
  [ref/](ref/) 里的字节码证据为准。
- 9.4 里那三张表的数据**不在本仓库**。要用它们得另行取得并核对；
  本页只记录"它们是什么形状"，不复制其数值。
- 数值（成长、经验曲线、消耗）属于游戏平衡，不是协议。
  原服的掉落、概率与校验仍然是 [90-blackbox.md](90-blackbox.md) 里的黑盒。