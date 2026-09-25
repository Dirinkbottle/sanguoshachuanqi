# 三国杀传奇 —— 客户端协议档案（模块化）

本目录是对 **《三国杀传奇》Android 客户端（版本 723 / 资源号 775）** 网络协议的静态恢复档案。
内容全部来自 APK 内 SpiderMonkey v22 字节码的反汇编与近似重建，或来自随包资源；
**没有任何一条来自原版运营服务器的抓包**——原服已停服，抓包不可行，本档案也不声称掌握了原服实现。

## 阅读顺序

| 模块 | 内容 |
|---|---|
| [00-methodology.md](00-methodology.md) | 恢复方法、证据等级、本文档不做什么 |
| [01-transport.md](01-transport.md) | HTTP 传输层：URL 组装、编码、签名、压缩、缓存 |
| [02-envelope.md](02-envelope.md) | 请求/响应封套：公共字段、`result`/`error_code`、`cmn` 增量、RandEvent |
| [03-update-and-account.md](03-update-and-account.md) | 更新检查与账号服（选服、公告、绑定、实名、推送） |
| [04-game-login.md](04-game-login.md) | 游戏服登录 `user.login` 与会话 |
| [05-guide.md](05-guide.md) | 新手引导里程碑与服务端同步点 |
| [06-fight.md](06-fight.md) | 战斗响应形状（`fight_info` / `fight_result`）与全部战斗入口 |
| [07-push.md](07-push.md) | 红点推送 `cmn.push` 与 42 个动作的 `forcepush` 约定 |
| [08-config-domains.md](08-config-domains.md) | 协议 ID 对应的本地配置域、访问层与服务端下发清单 |
| [09-config-fields.md](09-config-fields.md) | 配置字段的中文语义（第三方数据交叉验证）与本包缺失的表 |
| [90-blackbox.md](90-blackbox.md) | 明确无法从客户端恢复的原服黑盒 |

## 全量参考（自动生成）

| 文件 | 内容 |
|---|---|
| [endpoint-index.md](endpoint-index.md) | 全部 244 个 `do=` 动作总索引 |
| [data-model.md](data-model.md) | `cmn` 数据模型全集、81 个模型的字段表、30 个 `Profile/GameData` 管理器 |
| [request-fields.md](request-fields.md) | 全部显式请求字段总表 |
| [response-fields.md](response-fields.md) | 全部响应根字段总表 |
| [ref/](ref/) | 按业务域拆分的 49 个端点参考页 |
| [config-domains.json](config-domains.json) | 机器可读配置域清单 |
| [protocol-inventory.json](protocol-inventory.json) | 机器可读协议清单（含每条证据的 `文件:行号`） |

## 与既有文档的关系

- [../PROTOCOL.md](../PROTOCOL.md)：登录前流程与本重建工程的服务端说明（偏叙述，含本地新增接口）。
- [../GAME_PROTOCOL.md](../GAME_PROTOCOL.md)：新手教程、首个副本、招募、编队、装备的逐步流程分析。
- 本目录：**以端点为单位**的全量协议参考，以及模块化的机制说明。

两份既有文档保留其叙述价值；本目录是它们的机器可核对底座。

## 规模

| 指标 | 数量 |
|---|---|
| `do=` 动作 | 244（240 来自 `Cfg/Url.js`，4 个内联拼接 URL） |
| `Cfg/Url.js` URL 键 | 243 |
| `Tools/Net.js` 请求封装 | 236 |
| 静态可解析调用点 | 392 |
| `cmn` 数据描述符 | 21 |
| 提取出字段表的模型 | 81 |
| `Profile/GameData` 管理器 | 30 |
| 显式请求字段 | 174 |
| 响应根字段 | 122 |
| 本地配置表 | 51（1 张包内为空、1 个空脚本） |
| `CfgData` 类型 → 配置表映射 | 53 |

## 重新生成

```sh
python3 tools/extract_protocol.py        # ReconstructedJS/src_jsc -> docs/protocol-inventory.json
python3 tools/build_protocol_docs.py     # inventory -> docs/ref/*.md, docs/*.md
python3 tools/extract_config_domains.py  # data_cn_jsc/plan -> docs/config-domains.json, docs/08-config-domains.md
python3 tools/check_protocol_docs.py     # 校验全部相对链接与锚点
```

自动生成的文件带页首说明；不要手工编辑它们，改提取器后重新生成。
（`01`–`07`、`90` 是手写模块；`08` 与 `ref/`、`*-fields.md`、`data-model.md`、`endpoint-index.md` 是生成的。）

## 提取覆盖度（自查）

| 项 | 数量 | 说明 |
|---|---|---|
| 调用点 | 392 | 全部带 `文件:行号` |
| 能解析出请求字段的调用点 | 360 | 其余 32 个按原因分类，见下 |
| 能解析出响应读取的调用点 | 260 | 其余 127 个的处理器确实不读响应根字段（状态走 `cmn`），5 个封装没有回调参数 |
| 处理器解析失败 | 0 | 5 个封装没有回调参数，不是解析失败 |
| 请求字段无法确定的调用点 | 0 | 见下表 |

32 个「无请求字段」的调用点，全部有可核对的原因：

| 原因 | 数量 | 含义 |
|---|---|---|
| `empty-object` | 15 | 调用点显式发送 `{}`，只带公共字段 |
| `no-request-argument` | 10 | 封装本身没有请求参数（`user.getPushData`） |
| `none` | 5 | 调用点不传任何参数（`notify.activate`、`user.save`） |
| `null-literal` | 2 | 调用点传 `null`，不发 `data` |

「未解析」在本档案里是允许的结论，但本轮**没有剩下任何未解析的调用点**：
剩下的空位都有明确、可核对的理由。

## 一条硬规则

本档案里的每个字段、每个端点、每个调用点都必须能指回一个 `文件:行号`。
静态提取没解析出来的，写成「未解析」或「静态遍历未发现」，**不补猜**。
参见 [00-methodology.md](00-methodology.md)。
