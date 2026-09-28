# 00 · 方法与证据边界

## 前提：原服不可观测

《三国杀传奇》原版运营服务器已经停服。这意味着：

- **不存在**原服成功响应样本，也**不可能**再取得抓包；
- 任何声称「原服返回如下 JSON」的写法都是伪造；
- 因此本档案只记录**客户端侧可证明的事实**：客户端会发什么、会读什么、读到之后做什么。

服务端算法（概率、伤害、掉落、校验、风控）不在可恢复范围内，
逐条列在 [90-blackbox.md](90-blackbox.md)。

## 证据等级

| 级别 | 含义 | 能支持什么结论 |
|---|---|---|
| **字节码** | 从 APK 内 `.jsc` 反汇编、再近似重建的 JavaScript | 请求字段、响应字段读取、调用点、状态迁移 |
| **资源** | 随包配置与文本（`Recovered/data_cn_jsc`、`Resources/assets`） | 本地关卡、剧情、固定教程战斗的静态内容 |
| **实机** | `artifacts/device-validation/` 下与本重建服务交互的日志 | 客户端确实发出了某请求、确实接受了某回包 |
| **本地设计** | 本重建工程**新增**的接口与行为 | 只说明本地实现，不能当作原版协议 |
| **原服** | 原版运营服务器 | **本轮不可用，永久不可用** |

重建代码 `ReconstructedJS/` 是**近似**恢复，不是原始源码。控制流复杂、
异常作用域或未支持字节码的位置会留下 `TODO_BYTECODE` 标记。
所以本档案里「未解析」是一个合法且常见的结论。

## 不编造原则

1. 每个端点、每个字段、每个调用点都带 `文件:行号` 证据。
   `tools/extract_protocol.py` 只输出它能证明的东西。
2. 提取器解析不到的，写「未解析」或「静态遍历未发现调用点」，
   不用「大概是」「应该是」补全。
3. 响应示例只写**客户端消费契约**（它会读哪些键），
   不写「服务端应该返回」的完整报文。契约示例明确标注为示意。
4. 本地重建服务产生的回包一律标注为本地模拟，与原服无关。
5. 恢复疑点单独成节，不混入结论。

## 本档案的结构

- 叙述性模块（本目录根下的 `0x-*.md`）：机制、流程、跨域约定。
- 参考性模块（`ref/*.md`、`*-fields.md`、`data-model.md`、`endpoint-index.md`）：逐端点全量清单，全部自动生成。
- 机器可读清单 `protocol-inventory.json`：供工具消费。

## 可复现性

```sh
cd sgscq-reconstruction

# 1) 从重建 JS 提取协议清单（每个字段带 file:line 证据）
python3 tools/extract_protocol.py
#    -> ServerProject/docs/protocol-inventory.json
#    输出：actions 244 / url keys 243 / net functions 236 / call sites 642
#          / models 81 / gamedata managers 30

# 2) 从清单生成模块化参考文档
python3 tools/build_protocol_docs.py
#    -> ServerProject/docs/ref/*.md + endpoint-index.md + data-model.md
#       + request-fields.md + response-fields.md

# 3) 从随包配置提取 ID 域（哪些配置表、哪些可由服务端下发）
python3 tools/extract_config_domains.py
#    -> ServerProject/docs/config-domains.json + 08-config-domains.md

# 4) 校验文档链接与锚点
python3 tools/check_protocol_docs.py
```

重建 JS 本身的重跑方式见 [../../README.md](../../README.md)。

## 提取器做什么

`tools/extract_protocol.py` 是一个纯静态、确定性的扫描器：

| 步骤 | 输入 | 输出 |
|---|---|---|
| 1 | `Cfg/Url.js` | 逻辑键 → 路径 → `do=` 动作 |
| 2 | `Tools/Net.js` | `request*` 封装 → URL 键、封装内注入的字段 |
| 3 | 全部 `*.js` | 调用点、调用者所在函数、请求对象字面量 |
| 3b | 同上 | 裸标识符实参 → 回溯该函数内对该对象的字段赋值 |
| 4 | 响应回调 / 委托链 | 响应变量上的点号路径、响应交给的模型 |
| 5 | `Profile/GameData/common.js` + `Models/*.js` | `cmn` 描述表与模型载荷字段 |

步骤 4 会跟随最多两跳委托（`xs.A.B.f(jsonObj)`、`f(jsonObj)`、`.apply(this,[jsonObj])`），
因为不少响应处理器只是转发到 `xs.Scene.Login.*` 或 `init_Login` 这类真正读取字段的函数。
回调位置按封装**声明的形参名**判定，不假定它一定是第二个实参——
`requestDecisiveBattleMainInfor(param, local, callback, target)` 就是第三个。
回调是局部变量时（`tmpfunc = function(data){...}`、`_cb = (param.cb || function(data){...})`）
也会在该函数的词法作用域内解析出函数体。

## 已知的提取局限

以下是**方法**局限，不是游戏事实，写在这里以免被误读成协议空缺：

- `Tools/Net.js` 里 236 个封装中，部分封装的 `url_keys` 为空（例如走完整 URL 的配置下载），
  这些动作不在 `do=` 索引内。
- 响应字段只在「回调直接读取响应根变量」时被记录。
  经由 `cmn` 落地的状态**不会**出现在响应根字段表里（这是正常且重要的结构事实）。
- 未恢复的控制流（`TODO_BYTECODE`）可能隐藏少量调用点；
  `endpoint-index.md` 末尾列出了「封装存在但静态遍历无调用点」的动作。
- 动态构造的 URL 键（模板字符串拼 `do=`）不会被识别。
