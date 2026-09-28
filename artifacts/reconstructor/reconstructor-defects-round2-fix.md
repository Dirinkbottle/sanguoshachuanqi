# 第二轮重建器缺陷修复

**范围**：`tools/reconstruct_js.py`（全部结构性修复都在这里）；新增 `tools/check_regexp_literals.js`（S4 专项断言）。
**未改动**：`Recovered/`（输入）、`ServerProject/`、`tools/jsc_disasm.cpp`（原因见 S4）、`tools/source_patches.py`（本轮无需新增条目）。
**依据**：`artifacts/reconstructor-semantic-scan.md` 的 S1–S6；语义权威 `toolchain/SpiderMonkey-v22/js/src/jsinterp.cpp` / `jsopcode.cpp` / `jsopcode.tbl`。
**做法**：每类先定位重建器的丢弃点，再按解释器语义修，然后全树重跑（重建 836、校验、node --check、凭据往返、补丁检查）确认无回归。

---

## 逐项修复

### S1 二次转义（1157 个含 \xHH / \v / \' 的 atom）

**根因**
- 位置：`tools/reconstruct_js.py` 的 `parse_quoted()`（修改前 241–248 行）。
- 反汇编侧：`js_Disassemble1` 打印 JOF_ATOM 走 `ToDisassemblySource` → `QuoteString`
  （`jsopcode.cpp:581-588`、`jsopcode.cpp:976-1047`），输出的是 **JavaScript 源码形态**：
  码元 < 0x100 用 `\xHH`、其余用 `\uXXXX`，再加 `js_EscapeMap` 的
  `\b \f \n \r \t \v \" \' \\`。
- 重建侧：`parse_quoted()` 直接把这个显示文本交给 `json.loads()`。纯 `\uXXXX` 的串能解出来
  （所以 3.4 万条纯中文串一直是对的），但只要出现 `\xHH`（例如「·」U+00B7）、`\v` 或 `\'`，
  `json.loads` 就抛异常，`except` 分支 `return match.group(0)[1:-1]` 把**仍然带转义的显示文本**
  当成了 atom 的值，随后 `js_string()` 又转义一次 —— 运行期字符串变成「反斜杠 + u795E」的字面文本。
- 结论：**不是反汇编器打印错，是重建器缺一个 JS 转义解码器**。修在重建器一侧即可，不需要动 `Recovered/`。

**修复内容与依据**
- 新增 `decode_js_escapes()`（现 260–296 行）：按 `QuoteString` 的输出规则，把 JS 专有转义翻成
  JSON 拼写后再解析 —— `\xHH` → `\u00HH`，`\v` → `\u000B`，`\'` → `'`；
  其余（`\b \f \n \r \t \" \\`、`\uXXXX`）JSON 本就接受。这样代理对（`\uD83D\uDE00`）仍按
  `json.loads` 的规则合并，不会写出非法 UTF-8。
- `parse_quoted()`（现 299–307 行）改为 `json.loads('"' + decode_js_escapes(literal) + '"')`，
  失败时仍回落到原文本（保持原有保守行为）。

**验证（修前 → 修后）**
- `data_cn_jsc/plan/sgs_i18n.js:25`
  - 修前：`"13100201": { i18n_id: "13100201", i18n_sb: "\\u795E\\xB7\\u5415\\u8499" },`
  - 修后：`"13100201": { i18n_id: "13100201", i18n_sb: "神·吕蒙" },`
- `src_jsc/Cfg/String.js:64`
  - 修前：`RefiningSkill_title: { format: "\\u70BC\\u5316$0\\u9636\\xB7$1" },`
  - 修后：`RefiningSkill_title: { format: "炼化$0阶·$1" },`
- `data_cn_jsc/plan/sgs_generals.js:3412`
  - 修前：`voice_file: "eff_shen\\xB7zhaoyun",` → 修后：`voice_file: "eff_shen·zhaoyun",`
- **穷举不回归证明**：遍历 `Recovered` 全部 `string` 指令（412,056 条），
  旧路径 `json.loads` 成功的 410,899 条里，新解码器结果与旧值 **0 处不同**；
  旧路径回落的 1,157 条正是 S1 缺陷，现已全部正确解码（含 `\v`、`\'` 各一例）。
- **端到端**：用 node 加载重建后的 `sgs_i18n.js`，把 37,838 条 `(i18n_id, i18n_sb)` 与从反汇编流独立解出的
  37,838 对逐一比对，**0 处不一致**（其中 641 条含 U+00B7）；唯一仍带反斜杠的条目
  `auto_name_234 = "方法\r\n"`（反斜杠 + r + 换行）经反汇编确认为原子本来的内容，不是缺陷。
- 双转义序列计数：修前 14,676 处（3 文件）→ 修后 **0**；全树只有这 3 个文件发生变化，与审计影响面吻合。

### S4 正则字面量（16 个 regexp 常量 / 15 个使用位置 / 6 文件）

**根因**：`_execute()` 里 `if op == "regexp": self._todo(vm, ins, "regexp_object_literal_not_dumped")`
—— 直接把常量丢掉，只在栈上留 `undefined` 占位，于是产生 `input.replace(undefined, "")`、
`undefined.test(...)` 这类「能通过 node --check、看着正常」的走样代码。

**修复内容与依据（先试了「让反汇编器导出正则表」，结论是不必改 C++）**
- `js_Disassemble1` 对 JOF_REGEXP 走 `ToDisassemblySource`（`jsopcode.cpp:616-623`），
  打印的是 `RegExp.prototype.toSource` 形态的**可直接再解析的字面量**
  （例：`/[^A-Za-z0-9\+\/\=]/g`、`/\r\n/g`）。也就是说正则表**本来就导出在 `Recovered/` 里**，
  只是重建器没读；因此不需要改 `jsc_disasm.cpp`、更不需要重跑 `Recovered/`（后者会违反「不改 Recovered/」）。
- 新增 `regexp_literal()`（现 310–327 行）：按 toSource 的规则取**最后一个** `/` 作为分隔符，
  解析出 body/flags 并原样还原成字面量（body 内的 `\/` 保持原样，仍是合法正则）。
- `_execute()` 的 `regexp` 分支（现 982–989 行）改为把字面量直接压栈；并把 `regexp` 加进
  `SUPPORTED_OPS`（计入 recovery 统计），解析失败时仍回落 TODO。

**验证（修前 → 修后）**
- `src_jsc/Utils/Base64.js`（凭据存取路径，必须修）
  - 修前 63/99/218/256 行：`(input = input.replace(undefined /* TODO_BYTECODE pc=53 opcode=regexp reason=regexp_object_literal_not_dumped */, ""));`
    / `(string = string.replace(undefined /* ... */, "\n"));`
  - 修后 62/97/215/252 行：`(input = input.replace(/[^A-Za-z0-9\+\/\=]/g, ""));`
    / `(string = string.replace(/\r\n/g, "\n"));`
- `src_jsc/Core/Cocos2d-x/jsb_cocos2d.js:823`：`undefined.test(function(){...})`（必然 TypeError）→
  `(fnTest = (/xyz/.test(function() {}) ? /\b_super\b/ : /.*/));`
- 其余：`Prototype/String.js:64 → this.replace(/\|/gi, "")`、`Tools/UI.js:488 → str.replace(/(^\s*)/g, "")`、
  `Utils/Md5.js:156 → string.replace(/\r\n/g, "\n")`、`jsb_debugger.js` 6 处全部恢复。
- 全树：16/16 个字面量出现在对应重建文件；`regexp_object_literal_not_dumped` 标记 30 → **0**；
  正则位置上的 `undefined` 0 处；recovery JSON 里 `regexp` 未解析 16 → **0**。

**新增断言（证明它能抓住 S4，而不是又一个盲区）**：`tools/check_regexp_literals.js`
1. 源文本断言：`Base64.js` 含 `/[^A-Za-z0-9\+\/\=]/g` 与 `/\r\n/g` 两个字面量；
2. 全树断言：没有 `.replace|.test|.match|.search(undefined` 残留；
3. 行为断言（构造脏输入）：
   - `decode("YWJj!!") === "abc"`（非法字符必须被清洗）；
   - `decode("YW Jj\n") === "abc"`（空白必须被清洗）；
   - `decode("undefinedYWJ") !== decode("YWJ")`（旧实现的 `replace(undefined, "")` 会把输入里
     字面量的 "undefined" 子串删掉，这条正是那颗定时炸弹）；
   - `_utf8_encode("a\r\nb")` 往返后为 `"a\nb"`（CRLF 归一化生效）。
- **证据**：`BASE_DIR=/tmp/before_ReconstructedJS node tools/check_regexp_literals.js`
  → **7 项 FAIL，exit 1**（其中第 3 组 4 条里 3 条失败、第 1/2 组全失败）；
  修后 `node tools/check_regexp_literals.js` → **all OK，exit 0**。
- 说明：`tools/check_credential_roundtrip.js` 修前修后都全 OK —— 印证了任务里说的盲区（干净 base64 没有非法字符要清）。

### S3 条件跳转整条被丢弃（4 处 / 3 文件，conditional_target_outside_region）

**根因**：`VM.run()` 的条件分支里 `if target_idx > stop:` 直接写 TODO 并把条件丢弃
（修改前 1437–1440 行）。触发条件是**子区域被启发式边界切短**：
- `HintModel.js`：内层 `ifeq 1492` 位于外层 if/else 的 then 子区间 [482,514) 内，目标 515 就是外层的 else 起点；
- `Item.js` 两处、`FightResult.js`：守卫位于 condswitch 的 default 分支（区域 end 被算成 586 / 248 / 1700），
  而 `ifeq` 的目标（587 / 249 / 1706）落在**外层区域**里。
丢掉条件后受保护代码变成无条件执行（JSOP_IFEQ/JSOP_IFNE 只有测试成立才跳转，见 `jsinterp.cpp:1573-1600`）。

**修复内容与依据**
- `VM.run()` 增加 `escape_stop` 参数 + `self.boundary`（现 1296–1310 行）：它表示「本 run 所属外层区域的结尾」。
- 条件分支新增「区域逃逸」处理（现 1487–1557 行）：当 `target_idx > stop` 但 `target_idx < escape_stop` 时，
  用外层边界去做 `_find_else()` 与 then/else 子 run；找不到 else 结构就退化为守卫形式
  `if (cond) { ... }`（FightResult 就是这样，循环头 `goto` 在子 run 里被 `_find_loop` 正常识别成 while）。
  只有当目标连外层边界都超出时才保留原 TODO（现在全树 0 处）。
- 子区域 run 只在边界确实是「启发式切口」的地方才获得 escape 能力：if/else 的 then/else 子 run
  与 switch 的 case 分支（现 1685、1755 行传 `escape_stop=vm.boundary`）；while/do-while/for-in/try 的子 run 不传，保持硬边界。
- 逃逸会越过本区域的 `stop`，因此 `VM` 记录 `end_index`，两个 switch 发射器用
  `furthest = max(end_idx, 各分支 end_index)` 作为 `switchNextIndex`（现 1674/1696、1743/1764 行），
  避免父级从旧位置重新渲染被吞掉的指令。
- 因为「`target_idx > stop`」与旧 TODO 的触发条件完全等价，这条改动只可能作用在原 4 处，不会波及其它文件。

**验证（修前 → 修后）**
- `src_jsc/Models/HintModel.js:151`
  - 修前：`(equipMents_enabled = ...);` + `/* TODO_BYTECODE pc=1462 opcode=ifeq reason=conditional_target_outside_region */` + 无条件执行 `(epHintInfo[i] = { equipEnable: true });`
  - 修后：
    `if ((equipMents_enabled.length > 0)) { (epHintInfo[i] = { equipEnable: true }); } else { (epHintInfo[i] = { equipEnable: false }); break; }`
    外层 else 同时保留 `(epHintInfo[i] = { equipEnable: false }); break;`（与字节码一致：0 长度时 equipEnable=false）。 
- `src_jsc/Models/Item.js:537 / 645`
  - 修前：`default:` 后紧跟 TODO，再无条件执行 `switch (this.getStyleId())`
  - 修后：`if (((this.getItemType() === xs.Models.ItemType_Gift) || (this.getItemType() === xs.Models.ItemType_Box))) { switch (this.getStyleId()) { ... } } else { _model = this; } else { _class = xs.Views.Icon.IconStyleB; }`
- `src_jsc/Views/Dialog/FightResult.js:344`
  - 修前：TODO 后无条件 `this.hideDropIcon(); dropItems = ...; i = 0;`
  - 修后：`if (this.sucess) { this.hideDropIcon(); (dropItems = this.infoModel.getDropItems()); (i = 0); while ((i < dropItems.length)) { ... } }`
- 全树 `conditional_target_outside_region` 标记 4 → **0**；顺带消失的还有 FightResult 的
  `unconsumed_operand_stack` 残留（3 → 2）。

### S2 tableswitch 表项 0 = 走 default（14 个 switch / 28 个 case 值 / 14 文件）

**根因**：`_emit_switch()` 把表项视为「pc + off」，off == 0 时目标变成 tableswitch 自己
（`_target_index(body, ins.pc) == idx`），嵌套重入后判为 `tableswitch_target_invalid`，
于是表项对应的 case 被写成「空 case + break」。而解释器语义是：
`jsinterp.cpp:2580-2612` 先把 default 偏移装进 `len`，仅当表项非 0 时才覆盖
（`int32_t off = GET_JUMP_OFFSET(pc2); if (off) len = off;`）—— **表项 0 表示沿用 default 目标**。

**修复内容与依据**
- `off == 0` 的表项目标改写为 `default_pc`（现 1700–1716 行，注释引用 jsinterp.cpp:2580-2612）。
  这样该 case 的标签会落在 default 分支上，输出形如 `case 6:` + `default:`。
- 同时把目标合法性判断从 `x >= stop` 放宽为 `x > stop`（现 1718–1721 行）：default 目标**正好等于区域结尾**
  是合法的 switch join（default 分支为空、直接掉出 switch），这正是 S6 那条 tableswitch 被整块丢掉的原因。

**验证（修前 → 修后）**
- `src_jsc/Models/Chat.js:41-44`
  - 修前：`case 6:` / `/* TODO_BYTECODE pc=81 opcode=tableswitch reason=tableswitch_target_invalid */` / `break;`
  - 修后：`case 6:` / `default:` / `(this.channelName = xs.Tools.String.createString("auto_name_14"));` / `break;`
- `src_jsc/Core/Cocos2d-x/jsb_cocos2d.js` 的 `cc.c3b` case 2 重新落到含 `throw "unknown argument type"` 的 default 分支；
  `GeneralMenuScene.js` 的 case 7 与 default 合并后 red-dot 逻辑（`if (hintNum > 0) { ... generalHintIcon ... }`）恢复执行。
- **机械核对**：从反汇编里抽出 14 个含 0 表项的 tableswitch（28 个 0 值），逐个确认对应 case 标签的下一个标签就是
  `default:` —— **28/28 通过**（修前 0/28，全部是空 case + break）。
- 全树 `tableswitch_target_invalid` / `tableswitch_table_missing` 标记 15 → **0**。

### S5 try/catch 整块删除（3 处）

**根因**：`_try_layout()` 依赖 `JSOP_TRY` 操作数里的跳转目标。`jsopcode.cpp:550-562` 只在
`note.start == loc + 1` 时才补打这个目标，而这个条件等价于 `script->main() == script->code`；
**带 arguments/var 前导码的函数**（deval 的 main=11、Cfg/String 的 main=5、Mgr._showViewByName 的 main=5）打印出来就是光秃秃的
`try`，重建器拿不到 handler，于是整块 try/catch 被删成一行 TODO。

**修复内容与依据**
- 解析器记录 `main:` 标签所在指令的 pc（`Body.main_pc`，现 145 行；解析见 234–244 行）。
  JSTRY 的 start/length **是相对 main() 的**：`jsinterp.cpp:3274` 用
  `regs.pc = script->main() + tn->start + tn->length` 进入 handler。
- `_try_layout()`（现 1013–1040 行）先用 `body.main_pc + note.start == try_pc + 1` 找到这条 try 的
  catch note，再用 `main_pc + start + length` 算出 handler 的绝对 pc；main==0 时与旧行为完全一致（互为校验）。
- 顺带修了 catch 入口的取值：`enterblock; exception; <store>; pop` 里的 store 现在统一跳过
  （`setlocal/setarg/setaliasedvar/setname/setgname`，现 1067–1088 行）。deval 用的是
  `setaliasedvar "e"`，旧代码不认，新代码若照旧执行会读空栈产生 `e = undefined`，
  反而让 `e.message` 抛 TypeError；这条是 S5 修复过程中自测发现的连带问题，一并修掉。

**验证（修前 → 修后）**
- `src_jsc/Core/Cocos2d-x/jsb_debugger.js`（deval）
  - 修前 161 行：`/* TODO_BYTECODE pc=63 opcode=try reason=control_or_scope_semantics_not_structured */`，
    `eval` 的异常直接逃出函数，调用方拿不到结构化返回值；
  - 修后 158–172 行：`try { ... return {commandname:"deval", success:true, stringResult:stringreport} } catch (e) { return {commandname:"deval", success:false, stringResult:("exception:\n" + e.message)} }`
- `src_jsc/Cfg/String.js:81` → 模块包装恢复为
  `try { (xs.Cfg.String = mString); } catch (e) { (module.exports.String = mString); }`
- `src_jsc/Views/Mgr.js:574`（`_showViewByName`）→
  `try { ... (_dlg.callfunc_unload = _cfg["class"].unload); } catch (e) { xs.Debug.warnException(e); this.hideDialog(); this.hideRandEventDialog(); }`
- 全树：`opcode=try` 的 TODO 3 → **0**；`try {` / `catch (e)` 计数 109/109 → **112/112**
  （与字节码 112 条 JSTRY_CATCH 完全吻合）；新产生的 `expression_stack_underflow` 0 处。

### S6 闭包整体丢失（HulaoBattleMainView 2 个函数对象）

**根因**：**不是独立的闭包问题**，而是同一个 tableswitch 判定缺陷的下游后果。
`setHulaoData` 的 `tableswitch`（pc 238）default 目标正好等于 else 区域的结尾（643 = 区域 stop），
旧判断 `x >= stop` 判它非法 → 整个 switch 被 TODO 吞掉 → 分支里的两个 lambda（字节码 offset 337 / 450）
从未被渲染，`render_body()` 末尾就把它们登记成 `detached_function_object`，
连带 4 个字符串常量（`HulaoBattle_btn_battle`、`HulaoBattle_btn_reward`、`LS_SXJC`、`HulaoBattle_label_finish`）一起消失。

**修复内容与依据**：S2 的 `x > stop` 放宽（default 目标 == 区域结尾是合法的 switch join）。
**验证（修前 → 修后）**
- 修前 `HulaoBattleMainView.js:95-96`：
  `/* TODO_BYTECODE detached_function_object=1 name=_anonymous_ see recovery outline */` 两行；
- 修后：switch 的 4 个分支完整还原，包含
  `this.m_battleBtn.setOnClickCallBack(function() { this.goToGarrisonLayoutDialog({ stage: this.m_stage, mode: this.m_mode }); }.bind(this));`
  （第 97 行）与 reward 分支的回调，4 个字符串常量全部回归；
- 全树 `detached_function_object` 标记 2 → **0**，`manualReviewRecommended` 模块数 83 → 77。

---

## 没能修好的

本轮 6 类全部修好（S1/S2/S3/S4/S5/S6 的 TODO 标记全树归零，唯一例外是 S3 那条被完全删除的条件判断已恢复为真实 if）。
下面是**不属于 S1–S6、本轮未处理**的残留，逐条给建议：

1. **`control_or_scope_semantics_not_structured` 87 处**（84 × `leaveblock`、2 × `enditer`、1 × `setrval`）。
   审计 S7 已判定 `leaveblock` 只是块作用域收尾记账、不影响行为；`enditer/setrval` 是函数末尾 return 记账，
   重建器已用 `terminalReturnPcs` 处理了绝大多数。**建议**：不动，或在专门一轮里把「块内 let 变量取值」逐点验证后再决定是否结构化。
2. **`unconsumed_operand_stack` 2 处**（`Models/Skill.js:366`、`Profile/GameData/Generals.js:700`）。
   审计 S7：函数末尾残留栈值，函数体本身完整。FightResult 那处已随 S3 修好（3 → 2）。
   **建议**：需要先判定残留值是「被丢弃的表达式结果」还是「漏掉的赋值」，属于新一类缺陷，本轮不动。
3. **recovery 统计里仍有 5 条未解析指令**（`enditer` 2、`retrval` 1、`setrval` 1、`toid` 1）。
   这些是「函数未被渲染」或指标口径问题，不是新缺陷；其中 `toid` 其实已在 `_execute()` 里显式空操作处理，
   只是没写进 `SUPPORTED_OPS`，属于统计口径小瑕疵。**建议**：把 `toid` 补进 `SUPPORTED_OPS`
   （纯统计、零行为风险，本轮为避免范围外改动未做）。
4. 审计「存疑」里的数字字面量逐值对拍、273 个文件的逐函数对齐，本轮没有触碰——那是验证工具的工作，不是重建器缺陷。

## 验证总表

### 任务给定的 5 条基线（修前 → 修后）

| # | 命令 | 修前 | 修后 |
|---|---|---|---|
| 1 | `python3 tools/reconstruct_js.py` | 836/836 模块；weighted recovery rate **100.00%**（实际 2261885/2261953 = 0.999970） | 836/836 模块；weighted recovery rate **100.00%**（实际 2261948/2261953 = 0.999998，+63 条指令被翻译） |
| 2 | `python3 tools/validate_reconstructed.py` | modules 836/836；JavaScript parse 836/836；dependency closure 815/815；manual review 83 | modules 836/836；JavaScript parse 836/836；dependency closure 815/815；**manual review 77** |
| 3 | `node --check` 全树（for 循环逐个） | 836/836 解析通过，0 失败 | **836/836 解析通过，0 失败** |
| 4 | `node tools/check_credential_roundtrip.js` | 全部 OK（4/4 口令往返 + 256 单字节往返 + RC4 与参考 0/4 不一致） | **全部 OK**（同上，逐行输出一致） |
| 5 | `python3 tools/source_patches.py --check` | source patches: 0 applied, 4 already, 0 problem(s) | **0 applied, 4 already, 0 problem(s)** |

补充（修前 → 修后，同一脚本口径）：

| 指标 | 修前 | 修后 |
|---|---|---|
| TODO 原因计数 | conditional_target_outside_region 4；regexp_object_literal_not_dumped 30；tableswitch_target_invalid 15；control_or_scope 88；unconsumed_operand_stack 3 | **conditional 0；regexp 0；tableswitch 0**；control_or_scope 87；unconsumed_operand_stack 2 |
| `try { / catch (e)` 计数 | 109 / 109 | **112 / 112**（= 字节码 112 条 JSTRY_CATCH） |
| 二次转义序列（`\\u` / `\\x`） | 14,676 处 / 3 文件 | **0** |
| recovery JSON 未解析 opcode 指令数 | 63 条（23 种，含 regexp 16、try 3、tableswitch 1） | **5 条**（enditer 2、retrval 1、setrval 1、toid 1） |
| 变更文件数（相对修前快照，排除自动生成的 report/json） | — | 27 个，逐个核对都在 S1–S6 影响面内，无额外文件 |
| 重跑确定性 | — | 连跑两次 `diff -rq` 完全一致 |

### S4 新断言（必须修前失败、修后通过）

命令：`node tools/check_regexp_literals.js`（可用 `BASE_DIR=` 指向任意快照）

| 断言 | 修前（BASE_DIR=/tmp/before_ReconstructedJS） | 修后 |
|---|---|---|
| Base64.js 含 `/[^A-Za-z0-9\+\/\=]/g` | FAIL | OK |
| Base64.js 含 `/\r\n/g` | FAIL | OK |
| 全树无 `replace/test/match/search(undefined` | FAIL（列出 jsb_debugger.js:27 等） | OK |
| `decode("YWJj!!") === "abc"` | FAIL（got `"abc\uf000"`） | OK |
| `decode("YW Jj\n") === "abc"` | FAIL（got `"a\u0000"`） | OK |
| `decode("undefinedYWJ") !== decode("YWJ")` | FAIL（两者都等于 `"ab@"`，"undefined" 被当替换目标删掉） | OK |
| `_utf8_encode` 把 CRLF 归一化成 LF | FAIL（得到 `"a\r\nb"`） | OK |
| 退出码 | **1（7 项失败）** | **0（all OK）** |

## 新增的 source_patches 条目

**无。** 本轮 6 类缺陷全部在 `tools/reconstruct_js.py` 里结构性修好（S1 解码器、S4 字面量还原、
S2 表项语义、S3 区域逃逸、S5 TRY-NOTE↔main()、S6 随之修复），重建器每次重跑都会重新产出正确结果，
不存在「必须靠 `source_patches.py` 才能保住」的手改。`source_patches.py --check` 仍是
`0 applied, 4 already, 0 problem(s)`，原有 4 条登录相关补丁未受影响。

## 一句话总结

S1（1157 个 atom 二次转义）、S2（14 个 tableswitch / 28 个 case 值被写成空 case）、S3（4 处条件跳转整条丢弃）、
S4（16 个正则字面量变 undefined）、S5（3 处 try/catch 被删）、S6（HulaoBattleMainView 2 个闭包丢失）**六类全部修好**：
对应的 TODO 标记全树归零，`sgs_i18n.js:25` 从 `"\\u795E\\xB7\\u5415\\u8499"` 变回 `"神·吕蒙"`，
`Base64.js` 的非法字符清洗与 CRLF 归一化恢复，`try/catch` 计数 109 → 112 与字节码完全对齐；
5 条基线（836/836 重建、836/836 解析 + 815/815 依赖闭包、836/836 node --check、凭据往返全 OK、
source patches 0/4/0）**全部保持通过且无回归**，另新增的 S4 断言在修前快照上 7 项失败、修后全部通过，
证明了该缺陷不再是验证盲区；未修好的只有不属于 S1–S6 的 S7 类残留（87 条块作用域记账、2 处函数末尾栈残留、
5 条统计口径未解析指令），已在上一节逐条给出原因与建议。
