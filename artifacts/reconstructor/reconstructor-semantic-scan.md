# 全树语义对拍报告

**范围**：`Recovered/**/*.disasm.txt`（836 个，SpiderMonkey v22 XDR 反汇编，工具 `tools/jsc_disasm`）↔ `ReconstructedJS/**/*.js`（836 个）。

**方法**：不读重建器源码，纯经验对拍。工具（一次性脚本，均在 `/tmp`）：
1. 反汇编解析器（函数元数据 `nargs/bindings/arg[]/local[]`、指令流、TRY-NOTE）；
2. 栈效应模拟器（nuses/ndefs 取自 `jsopcode.tbl`，逐 opcode 追踪压栈值的"消费者"）；
3. JS 词法器（跳过注释/字符串/正则，统计运算符、字面量、function 边界、形参与 var）；
4. 以 `// source line L, bytecode pc P` 注解做"重建语句 ↔ 脚本"对齐，逐函数对拍（4156 对函数）。

**两条必须记住的语义事实**（本次审计的关键，否则会误判）：
- **JOF_DECOMPOSE 标记是空操作**：`jsinterp.cpp` 中 `localinc/localdec/inclocal/arginc/propinc/... ` 全部是 `/* No-op */`，真正语义在其后的展开序列（`get;pos;[dup;]one;add/sub;set;[pop]`）。所以 `localinc 11` 里打印的 **11 是展开长度而不是槽位号**（`GetDecomposeLength` 覆盖了低字节），不能拿它做下标检查。
- **tableswitch 表项 0 表示"走 default"**：`jsinterp.cpp` 中 `if (off) len = off;` —— 表项 0 时保留 default 偏移。0 **不是**"非法目标"。

**快照与时效**：审计期间重建器正在被另一个代理反复重跑（`ReconstructedJS` 全树在 23:30、23:38 被重写）。主分析基于 **23:31:05 快照**（`/tmp/rd_snap/Recovered_2331`、`/tmp/rd_snap/ReconstructedJS_2331`），全部结论已在 **23:42–23:50 的活动工作树**上复核；下文行号均为活动树行号。23:31→23:50 期间有 2 处被修好（见"确认无误"），其余仍然存在。全树 836 个文件均可被 `node --check` 解析——所有缺陷都是"照样能解析、照样像那么回事"的静默走样。

---

## 对拍指标总表

| 指标 | 字节码计数 | 重建计数 | 差值 | 是否异常 |
|---|---|---|---|---|
| 自增/自减（DECOMPOSE 标记全族） | 1220 | 内联 `++`/`--` 1094 + 赋值式 `(X=(+X±1))` 112 + 人工确认等价 14 | 0 | 否（逐站点核对 1220/1220） |
| `notearg` 后接"非压栈"指令 | 0 / 123104 | — | 0 | 否 |
| `lt` ↔ JS `<` | 1414 | 1413 | −1 | 否（缺口落在被丢弃区域） |
| `le` ↔ JS `<=` | 240 | 240 | 0 | 否 |
| `gt` ↔ JS `>` | 560 | 558 | −2 | 否（其中 1 处即 S3 的 HintModel 丢条件） |
| `ge` ↔ JS `>=` | 392 | 392 | 0 | 否 |
| `eq` ↔ JS `==` | 1716 | 1715 | −1 | 否 |
| `ne` ↔ JS `!=` | 428 | 428 | 0 | 否 |
| `stricteq` ↔ JS `===` | 1571 | 1567 | −4 | 否（3 处在同名函数去重里，1 处在丢条件处） |
| `strictne` ↔ JS `!==` | 295 | 295 | 0 | 否 |
| `in` 运算符 | 1 | 1 | 0 | 否（JS 另多 106 个 `in`，来自 106 个 `iter` 的 for-in） |
| `instanceof` | 56 | 56 | 0 | 否 |
| 字符串 `string` 常量 | 178324 | 178324（逐函数对拍 4156 对，丢失 0） | 0 | **异常：1158 个被二次转义，运行期值被改写（S1）** |
| 正则 `regexp` 常量 | 16 | 4 处被重建为 `undefined` 字面量（15 个 TDO 位置） | −12 | **异常（S4）** |
| 函数形参+局部变量名多重集 | 12787 个脚本 | JS function 逐一对拍 | 12 个文件有差异 | 否（同一对象字面量内同名函数被合并，保留"后者生效"的实现） |
| `getarg/setarg` 最大下标 vs `nargs` | 0 越界 | — | 0 | 否 |
| `getlocal/setlocal` 最大下标 vs `local[]` | 0 越界（已剔除 DECOMPOSE 伪操作数） | — | 0 | 否 |
| `try`/`exception` ↔ JS `try`/`catch` | 112 / 112 | 109 / 109 | −3 | **异常：3 处 try/catch 整块丢弃（S5）** |
| `case`/`default` ↔ JS | 1176 / 153 | 1568 / 226 | +392 / +73 | 否（tableswitch 的 case 不经 `case` 指令） |
| `return`(+retrval) ↔ JS `return` | 7750 (+41) | 7786 | +36 | 否（函数末尾补 `return`） |
| `tableswitch` 表项为 0 的 case 值 | 14 个 switch / 28 个值 / 14 个文件 | 全部被写成"空 case + break" | — | **异常（S2）** |
| 条件跳转被整条丢弃 | 4 处（`conditional_target_outside_region`） | 4 处 | — | **异常（S3）** |
| `TODO_BYTECODE` 标记总数 | — | 143（regexp 30、tableswitch 15、条件 4、栈残留 3、stack_merge 1、函数丢失 2、控制/作用域 88） | — | 见缺陷清单 |

---

## 缺陷清单（按严重度排序）

### S1. `\uXXXX`/`\xHH` 转义被二次转义，字符串运行期值被改写（1158 处）

- **文件**：`ReconstructedJS/data_cn_jsc/plan/sgs_i18n.js`（1157 处，如 **L25**）；`ReconstructedJS/src_jsc/Cfg/String.js` **L64**；`ReconstructedJS/data_cn_jsc/plan/sgs_generals.js` **L3412**
- **字节码**（`Recovered/data_cn_jsc/plan/sgs_i18n.js.disasm.txt:171`）：反汇编器把非 ASCII 打成转义形式
  ```
  00628:   1  string "\u795E\xB7\u5415\u8499"
  ```
  （`Recovered/src_jsc/Cfg/String.js.disasm.txt:286`：`string "\u70BC\u5316$0\u9636\xB7$1"`；`Recovered/data_cn_jsc/plan/sgs_generals.js.disasm.txt:8746`：`string "eff_shen\xB7zhaoyun"`）
- **重建结果**：
  ```js
  "13100201": { i18n_id: "13100201", i18n_sb: "\\u795E\\xB7\\u5415\\u8499" },   // sgs_i18n.js:25
  RefiningSkill_title: { format: "\\u70BC\\u5316$0\\u9636\\xB7$1" },          // Cfg/String.js:64
  voice_file: "eff_shen\\xB7zhaoyun",                                             // sgs_generals.js:3412
  ```
- **为什么是错的**：JS 源里 `"\\u795E"` 是"反斜杠 + u795E"共 6 个字符，运行期值不再是"神"。`node -e 'console.log(JSON.stringify("\\u795E"))'` → `"\\u795E"`，而字节码的 atom 值是 `神·吕蒙`。**凡是含 `·`(U+00B7) 等 `\xHH` 转义的 atom 都踩中**：只含 `\uXXXX`（纯 CJK）的字符串重建正确（同文件 L6 `"神秘武将"` 正常），一旦混入 `\xHH` 整串就被原样二次转义。
- **同类影响面**：全树 1158 个字面量、3 个文件（sgs_i18n 1157 / sgs_generals 1 / Cfg/String 1）。`xs.Cfg.System.sgs_i18n` 由 `ReconstructedJS/src_jsc/Tools/CfgData.js:121` 读取，是全部 UI 文案表：这 1157 条（神·吕蒙、魔·貂蝉、神·周瑜魂魄…）会**直接显示成 `\u795E\xB7...` 乱码**。
- **严重度**：严重（大面积、玩家可见的数据错乱）

### S2. tableswitch 表项 0（=跳 default）被当成"非法目标"，case 变空（14 个 switch / 28 个 case 值 / 14 个文件）

- **文件**：`src_jsc/Models/Chat.js:42`、`src_jsc/Models/ChatMessageManager.js:89`、`src_jsc/Core/Cocos2d-x/jsb_cocos2d.js:195`、`src_jsc/Scene/SubMenu/GeneralMenuScene.js:262`、`src_jsc/Scene/Beauty/BeautyScene.js`、`src_jsc/Scene/Copy/{Copy,DuanWuCopy,LabourlCopy,MemorialCopy,PlantCopy,PublicCopy}Scene.js`、`src_jsc/Views/Awake/AwakeLayer.js`、`src_jsc/Views/MiracleWeapons/MiracleWeaponLayer.js`、`src_jsc/Views/SkillRefining/SkillRefiningLayer.js`
- **字节码**（`Recovered/src_jsc/Models/Chat.js.disasm.txt:142`）：
  ```
  00081:  30  tableswitch defaultOffset 305 low 1 high 7
      1: 41   2: 85   3: 129  4: 173  5: 217  6: 0   7: 261
  ```
  `jsinterp.cpp` 的 `JSOP_TABLESWITCH`：`int32_t off = GET_JUMP_OFFSET(pc2); if (off) len = off;` —— **表项 0 表示沿用 default 偏移**（这里 default 目标 81+305=386，即 `channelName = createString("auto_name_14")`）。
- **重建结果**（`Chat.js:41-44`）：
  ```js
  switch (this.channel) {
      case 6:
      /* TODO_BYTECODE pc=81 opcode=tableswitch reason=tableswitch_target_invalid */
      break;                      // ← 空 case：什么也不做
  ```
- **为什么是错的**：原语义下 `channel === 6` 会落到 default 分支执行 `this.channelName = xs.Tools.String.createString("auto_name_14")`；重建后直接 break，`channelName` 保持 `undefined`。正确写法是把该 case 标签并到 `default:` 上（`case 6: default:`）。
- **同类影响面**（14 switch / 28 值）：
  - `Chat.js` case 6 → 频道名丢失（**功能**）；
  - `GeneralMenuScene.js` case 7 → 跳过 default 的 `if (hintNum > 0) {...generalHintIcon...}` 红点逻辑（**功能**）；
  - `jsb_cocos2d.js` `cc.c3b` case 2 → 不再 `throw "unknown argument type"`，改为返回 `undefined`（**功能**）；
  - 6 个 `*CopyScene.js` + `AwakeLayer.js` + `MiracleWeaponLayer.js` + `SkillRefiningLayer.js` 的 `switchCreateIcon` → default 只有 `xs.warn("this.switchCreateIcon tag error! ")`，丢的是日志（**轻微**）；
  - `ChatMessageManager.js` case 6 → default 本来就是空的 `break`（**无影响**）。
- **严重度**：严重（3 处功能静默改变）＋轻微（日志类）

### S3. 条件跳转整条被丢弃，受保护代码变成无条件执行（4 处 / 3 文件）

- **文件**：`ReconstructedJS/src_jsc/Models/HintModel.js:151`、`ReconstructedJS/src_jsc/Models/Item.js:537`、`ReconstructedJS/src_jsc/Models/Item.js:641`、`ReconstructedJS/src_jsc/Views/Dialog/FightResult.js:344`
- **字节码 / 重建对照（HintModel.js，最典型）**：
  ```
  1452: 137  getlocal       15
  1455: 137  length         "length"
  1460: 137  zero
  1461: 137  gt                       ; equipMents_enabled.length > 0
  1462: 137  ifeq           1492 (+30) ; 不成立 → 1492（equipEnable=false）
  1467: 138  ...                      ; epHintInfo[i] = { equipEnable: true }
  ```
  ```js
  (equipMents_enabled = xs.Profile...getEquipEnabledEps(pos));
  /* TODO_BYTECODE pc=1462 opcode=ifeq reason=conditional_target_outside_region */
  (epHintInfo[i] = { equipEnable: true });     // ← 守卫条件被删掉，变成无条件
  } else {
      (epHintInfo[i] = { equipEnable: false });
  ```
- **为什么是错的**：`ifeq` 被丢弃而不是把判断渲染出来，于是"条件不成立"这条路径消失。HintModel 里当装备位没有任何已启用装备（`length === 0`）时，原逻辑写 `equipEnable=false`，重建后写 `true`（提示图标错）。`FightResult.js` 是 `if (this.sucess) { this.hideDropIcon(); dropItems = ...; i = 0; }` 的守卫被删，失败结算时也会执行丢弃物逻辑（`dropItems` 可能保持 undefined，随后 `do{...dropItems[i]...}while` 直接 TypeError）。`Item.js` 两处是 `getStyleModel/createIcon` 的 default 分支里 `if (getItemType()===Gift || ===Box)` 守卫被删，内层 `switch(getStyleId())` 变成无条件执行 → `_model/_class` 被错误赋值。
- **同类影响面**：全树 4 处（reason=`conditional_target_outside_region`），全部为同一机制。
- **严重度**：严重（静默走错分支 / 潜在 TypeError）

### S4. 正则字面量被替换成 `undefined`（15 个表达式位置 / 6 文件）

- **文件与位置**（活动树行号）：`src_jsc/Utils/Base64.js:63,99,218,256`、`src_jsc/Prototype/String.js:65`、`src_jsc/Tools/UI.js:489`、`src_jsc/Utils/Md5.js:157`、`src_jsc/Core/Cocos2d-x/jsb_debugger.js:27,77,159,255,290,608`、`src_jsc/Core/Cocos2d-x/jsb_cocos2d.js:823`
- **字节码**（例）：
  ```
  Recovered/src_jsc/Utils/Base64.js.disasm.txt:  00053:  46  regexp /[^A-Za-z0-9\+\/\=]/g
  Recovered/src_jsc/Utils/Base64.js.disasm.txt:  00011:  69  regexp /\r\n/g
  ```
- **重建结果**：
  ```js
  (input  = input.replace(undefined, ""));      // Base64.js:63 / 218 —— 应为 /[^A-Za-z0-9+/=]/g
  (string = string.replace(undefined, "\n"));   // Base64.js:99 / 256 —— 应为 /\r\n/g
  return this.replace(undefined, "");           // Prototype/String.js:65 —— removeSlash
  if (undefined.test(function() {...}))         // jsb_cocos2d.js:823 —— 必然 TypeError
  ```
- **为什么是错的**：`String.prototype.replace(undefined, x)` 会把 `undefined` 当成**字符串 "undefined"** 去替换第一处匹配（不是正则、也不是报错），所以解码前的非法字符清洗、`_utf8_encode` 的 CRLF 归一化全部失效；`undefined.test(...)` 则直接抛 `TypeError`。代码照样解析、看起来还像正常的 replace 调用。
- **同类影响面**：15 处（30 个 `regexp_object_literal_not_dumped` 标记 = 每处一条独立注释 + 一条行内注释），6 个文件。其中 `Utils/Base64.js` 的 4 处会进入**网络收发包**路径。
- **严重度**：致命（jsb_cocos2d 的 `undefined.test`）／严重（Base64/UI/String 的静默失效）

### S5. try/catch 整块丢弃（3 处）

- **文件**：`src_jsc/Core/Cocos2d-x/jsb_debugger.js:161`（`deval`）、`src_jsc/Cfg/String.js:81`、`src_jsc/Views/Mgr.js:574`（`_showViewByName`）
- **字节码**（jsb_debugger `deval`，obj=6）：`00063: try` … `00195: enterblock` … `00200: exception` … `00211: newinit`/`00232: string "exception:\n"`/`00237: getaliasedvar "e"`/`00246: getprop "message"`/`00251: add`/`00252: initprop "stringResult"`
- **重建结果**（`jsb_debugger.js:161-174`）：
  ```js
  /* TODO_BYTECODE pc=63 opcode=try reason=control_or_scope_semantics_not_structured */
  (devalReturn = eval(md[1]));
  if (devalReturn) { ... return { commandname: "deval", success: true, ... } }
  ```
  —— 整个 catch 分支（返回 `{commandname:"deval", success:false, stringResult:"exception:\n"+e.message}`）没有生成，`eval` 抛出的异常会直接逃出函数。
- **为什么是错的**：这不是"结构化失败被降级"，而是**异常处理被删除**：调用方原本总能拿到结构化返回值，现在会收到异常。
- **同类影响面**：3 处（全树 112 个 `try` 中其余 109 个都正确生成了 `try/catch`，差值 −3 与标记数完全吻合）。
- **严重度**：严重

### S6. 闭包整体丢失（2 个函数）

- **文件**：`ReconstructedJS/src_jsc/Views/HulaoBattle/HulaoBattleMainView.js:95-96`
- **重建结果**：
  ```js
  this.setRewardData(this.m_stage);
  /* TODO_BYTECODE detached_function_object=1 name=_anonymous_ see recovery outline */
  /* TODO_BYTECODE detached_function_object=2 name=_anonymous_ see recovery outline */
  ```
- **为什么是错的**：这两个函数对象在字节码里有实现（同文件另有 4 个字符串常量随之消失：`HulaoBattle_btn_battle`/`HulaoBattle_btn_reward`/`LS_SXJC`/`HulaoBattle_label_finish`，见文件级字面量比对），重建后在 JS 里完全不存在，相关回调/属性不会被定义或传入。
- **同类影响面**：2 处（全树仅此文件）。
- **严重度**：严重（功能丢失）

### S7. 轻微/无影响项

- `unconsumed_operand_stack`（3 处：`Models/Skill.js:366`、`Profile/GameData/Generals.js:700`、`Views/Dialog/FightResult.js:411`）：函数末尾残留栈值，重建只加了一行 TODO 注释，函数体本身完整。
- `stack_merge_pc_91`（1 处：`Core/Cocos2d-x/jsb_cocos2d.js:830`）：`fnTest = undefined`，配合 `Prototype/String.js` 侧的 `create` 逻辑一起坏掉，但同属引擎初始化，不影响业务脚本。
- `leaveblock`（82 处标记）：只是块作用域收尾记账，未生成语句不会改变行为。
- **同名函数去重**（12 个文件）：同一对象字面量里重复定义的同名函数（如 `createIcon_GradeAndName`×2、`scrollViewDidScroll`×1 对、`getGrade`×2）被合并成一个。逐个核对：要么两份实现逐指令相同，要么保留的正是字节码中**后出现**（即运行期生效）的那份（如 `Models/GeneralPreview.js` 保留 `return this.model.getGrade();`，`Models/Card.js` 保留 srcline 251 的版本），因此语义等价。

---

## 确认无误的部分

1. **已知 base64 缺陷已修**：`Utils/Base64.js` 的 6 处 `charCodeAt(i++)`/`charAt(i++)` 全部是"先取旧值、后自增"的正确形态（含 `Base64WithUtf8`/`Base64`/`Utf16ToUtf8` 三份实现）。
2. **自增/自减全族 1220/1220 等价**：1094 处内联 `++`/`--`、112 处 `(X = (+X ± 1))`、其余 14 处经人工核对（do-while 条件 `while ((i-- > len))`、`while ((limit-- <= 0))`、for 循环更新语句等）。后置自增参与更大表达式时（`step * tmp++`、`input.charCodeAt(i++)`、`xs.log("x", o.count--)`）也是内联 `++`，不再前移；前缀自增用于取模赋值时写成 `this.x = ((this.x = (+this.x + 1)) % N)`，内层赋值表达式返回新值，与 `(++this.x) % N` 等价。
3. **比较运算符无方向/严格性错误**：逐 opcode 全树差额仅 −8（`lt −1/gt −2/eq −1/stricteq −4`，均落在被丢弃区域），`le/ge/ne/strictne/instanceof` 差 0；逐函数对拍 4156 对里只有 3 处非 for-in 差异，均非运算符改写（2 处是 S7 的同名去重、1 处是 S3 的丢条件）。
4. **`notearg` 语义正确**：123104 个 `notearg` 之后全部是"压入一个值"的指令（`call/this/string/getlocal/name/getarg/newinit/int8/...`），**没有一处**跟跳转/分支类指令（未对齐/未解析的脚本数为 0）。
5. **字符串字面量不丢**：逐函数对拍 4156 对（对齐可靠的文件），字节码 `string` 常量与 JS 字符串字面量多重集**丢失 0**（S1 是"值被改写"而非"丢失"，故不出现在该指标里，靠文件级集合比对 + 人工确认发现）。
6. **函数形参/局部变量一致**：`;; function metadata` 的 `args`/`locals` 名字多重集与 JS `function(...)` 形参 + 顶部 `var` 声明多重集一致，仅 12 个文件因同名去重不同（已核对为等价）；`getarg/setarg/getlocal/setlocal` 下标无越界（`localinc 11`/`inclocal 9` 这类伪操作数已排除）。
7. **属性/元素访问顺序**：`getprop→dup;callprop;swap;notearg;…;call N`（callee/this/args 约定）、`getelem/setelem/initprop/initelem` 的 obj/key/val 顺序抽样核对与重建一致（如 `this.m_plugins[type] = plugin`、`data.rect = cc.rect(0,0,0,0)`）。
8. **审计期间被修好的 2 处**（23:31 快照有、23:50 活动树已无）：`Scene/Fight/FightScene.js` 的 `toid` 索引（原 `deathNum[undefined]++`，现 `deathNum[((side===0)?input.sideFrom:input.sideTo)]++`）与同文件的 `eleminc/post` 自增形态。若以 23:31 快照为准，这两处应计入缺陷；以当前活动树为准则已消失。

---

## 存疑

1. **数字字面量未做逐值对拍**：JS 里 `{1: ...}`、数组下标、`initprop "1"` 等把数字当键/下标的情况与字节码的 `uint16/uint8/int8/string` 编码不一一对应（`data_cn_jsc/plan*` 数据表差异达数千），逐文件集合比对噪声过大，未能收敛。抽查（`Cfg/Scene.js` 的 1136/768/1024/960、各 `sgs_*` 表的 id）未发现改写，但**不能给出全树保证**。
2. **273/836 个文件无法建立可靠的逐函数对齐**（注解 pc 在多脚本间冲突、同名去重、主脚本归属），这些文件只做了文件级/全局对拍；缺陷 S1–S6 都是在这类文件里靠**定点人工核对**确认的，覆盖面足够，但"每个函数都逐条对拍过"这句话只对 4156 对函数成立。
3. **`tableswitch` 非 0 表项的落点只做了抽样核对**（Chat.js/c3b/CopyScene 等 3 个 switch 的 case→body 映射与反汇编目标地址一致），其余 11 个 switch 只验证了"0 表项"这一处异常，非 0 表项的目标是否对应正确的 body 未逐一验证。
4. **`control_or_scope_semantics_not_structured` 里的 82 个 `leaveblock`**：从语义上判断不影响行为，但没有做"块级作用域变量取值"级别的验证。
5. **`Utils/Base64.js` 的行为影响**：`input.replace(undefined, "")` 在常见 base64 输入下"恰好"无害（不含子串 "undefined" 时结果不变），只有在输入含该子串或需要真正清洗非法字符时才会暴露；因此它更像"定时炸弹"而不是必现 bug，但语义确实已改变。

---

## 总结

除已知的 base64 自增前移缺陷（现已修好）之外，本轮对拍确认了 **6 类、共 1210+ 处可证实的语义丢失**，涉及 **25 个脚本文件**：

- **最严重的是 S1**：`data_cn_jsc/plan/sgs_i18n.js` 等 3 个文件里 **1158 个字符串字面量被二次转义**（`\u795E\xB7...` 变成运行期字面文本），其中 1157 条是全部 UI 文案表的条目（神·吕蒙、魔·貂蝉……），会让这批文本直接显示成转义乱码；
- 其次是 **S2**（14 个 tableswitch 的 28 个"0 表项=走 default"被写成空 case，导致 `Chat`、`GeneralMenuScene`、`cc.c3b` 三处功能静默改变）和 **S3**（4 处条件跳转被整条丢弃，受保护代码变成无条件执行，`HintModel/FightResult/Item` 逻辑走错分支）；
- **S4**（15 处正则字面量变 `undefined`，含 Base64 解码清洗与 `\r\n` 归一化）与 **S5**（3 处 try/catch 整块删除）属同一"丢弃后不留可执行代码"的模式；**S6** 是 2 个闭包整体消失。

其余对拍指标（1220 个自增/自减、全部比较运算符、178324 个字符串常量的"有无"、函数形参/局部变量、`notearg`、属性访问顺序）**未发现除上述之外的语义走样**；所有缺陷都以 `TODO_BYTECODE` 注释或空壳语句的形式"看起来合理"，全部 836 个重建文件都能通过 `node --check`。
