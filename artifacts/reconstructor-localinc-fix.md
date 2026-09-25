# 重建器后缀自增（localinc）语句化缺陷：定位与修复

对象仓库：`/home/inkbottle/othersrc/android_playground/sgscq-reconstruction`
改动文件：`tools/reconstruct_js.py`（重建器）；产物 `ReconstructedJS/`（重新生成）
反汇编输入 `Recovered/` 与 `ServerProject/` 未做任何修改。

## 0. 结论速览

| 项目 | 修复前（HEAD 提交态 / 原始重建器输出） | 修复后 |
|---|---|---|
| `Base64WithUtf8.encode("abc")` | `"YmM="`（首字符丢失） | `"YWJj"`（标准 base64） |
| 全树表达式位置 `X++`/`X--` | 0 处 | 25 处（11 个文件） |
| 全树语句形式 `X++;`/`X--;` | 0 处 | 1082 处 |
| 全树 `(X = (+X ± 1))` 语句 | 1211 处（280 文件） | 105 处（44 文件，均为前缀 `++i` 语义等价形态） |
| “自增被前移、旧值被重读”的语义错误点 | 19 处 | 0 处 |
| `node --check` 通过率 | 836/836 | 836/836 |
| `check_credential_roundtrip.js` | 依赖人工手改 Base64.js 才通过 | 重建器直接产出，全部 OK |

## 1. 现象

修复前的重建器对 `Recovered/src_jsc/Utils/Base64.js.disasm.txt` 的 encode/decode 循环输出：

```js
// source line 21, bytecode pc 92
(i = (+i + 1));                       // 自增被“语句化并前移”
// source line 21, bytecode pc 100
(chr1 = input.charCodeAt(+i));        // 读的是自增后的 i，input[0] 被跳过
```

原句是 `chr1 = input.charCodeAt(i++);`。实测：原始重建器输出 `encode("abc") === "YmM="`（= `"bc"` 的 base64），
`decode(encode("abc"))` 得到乱码；修复后为 `"YWJj"`，往返一致。

## 2. 根因

### 2.1 字节码事实：v22 的融合自增 opcode 在解释器里是空操作，真正执行的是它后面那份“展开序列”

```
Recovered/src_jsc/Utils/Base64.js.disasm.txt（encode 循环，文件第 202-216 行）
00068:  21  getarg 0
00071:  21  dup
00072:  21  callprop "charCodeAt"
00077:  21  swap
00078:  21  notearg
00079:  21  localinc 11          <-- JOF_DECOMPOSE 融合 opcode
00082:  21  getlocal 8           <-- 展开序列开始（11 字节）
00085:  21  pos
00086:  21  dup
00087:  21  one
00088:  21  add
00089:  21  setlocal 8
00092:  21  pop                  <-- 丢弃 (i = +i + 1) 的赋值结果，旧值 +i 留在栈上
00093:  21  notearg
00094:  21  call 1               <-- 消费旧值 +i：等价于 input.charCodeAt(i++)
```

SpiderMonkey v22 源码（toolchain 内）给出的语义是：

- `js/src/jsopcode.tbl:246`：`JSOP_LOCALINC ... JOF_LOCAL|JOF_NAME|JOF_INC|JOF_POST|JOF_TMPSLOT3|JOF_DECOMPOSE`
  （全部 28 个 inc/dec opcode 都带 `JOF_DECOMPOSE`）。
- `js/src/jsinterp.cpp:2192-2205`：`BEGIN_CASE(JSOP_LOCALINC) { /* No-op */ } END_CASE(JSOP_LOCALINC)`，
  `ARGINC/INCARG/INCLOCAL/DECLOCAL...` 同样是 `/* No-op */`。**融合 opcode 运行期不做任何事**，执行的是紧随其后的展开序列。
- `js/src/frontend/BytecodeEmitter.cpp:943-981 (EmitVarIncDec)`：先发融合 opcode，再发
  `GETLOCAL/GETARG, POS, [DUP], ONE, ADD|SUB, SETLOCAL/SETARG, [POP]`，最后 `UpdateDecomposeLength()`
  （`BytecodeEmitter.cpp:196-201`，把展开长度写进 opcode 的最后一字节；`jsopcode.h:411 GetDecomposeLength()` 读的正是这一字节）。

**因此 `localinc 11` 里的 11 不是局部变量槽号，而是展开序列的字节长度**，变量槽号只存在于展开序列里。
全树实测（`Recovered/`，13 种 inc/dec opcode、共 1220 处）：

| opcode | 打印出的操作数 | 出现次数 | 展开序列实测字节数 |
|---|---|---|---|
| `localinc` / `localdec` / `arginc` / `argdec`（后缀） | 恒为 `11` | 986 / 22 / 5 / 2 | 11 |
| `inclocal`（前缀） | 恒为 `9` | 105 | 9 |

这些后缀自增作用的变量槽实测为 0,1,2,…,25,35 不等，而打印值恒为 11 —— 证明确实是长度而非槽号。
（这也说明：`tools/reconstruct_js.py:849` 那个 `localinc` 分支即使被走到，也会因 `name_for_slot(body, op, 11)` 越界而给出 `__local_11++`。）

### 2.2 真正做改写的那一步：`Decompiler._execute()` 的 `decompose` 提前返回 + `_emit_discard()` 的就地语句化

重建器早于 inc/dec 分支处有一个针对 `JOF_DECOMPOSE` 的提前返回：

```python
# tools/reconstruct_js.py:681（修复前）
if spec and spec.get("decompose"):
    # See jsopcode.tbl JOF_DECOMPOSE and jsinterp.cpp's no-op cases.
    return
```

这个 return 本身**是对的**（融合 opcode 是空操作，展开序列才是真代码，`jsopcode.cpp:SimulateOp` 对 DECOMPOSE 也是直接返回）。
问题在于它把后面那个正确的后缀自增分支（原 812-827 行，产出 `i++`）变成了**永远不会执行的死代码**，
于是展开序列被当成普通栈操作逐条反编译。展开序列里的 `setlocal` 会产生赋值表达式 `(i = (+i + 1))`，
紧接着的 `pop` 走到：

```python
# tools/reconstruct_js.py:600-602（修复前，未改动）
def _emit_discard(self, vm, value, ins):
    if value.effect or value.kind in {"assignment", "call"}:
        self._stmt(vm, value.text, ins)     # 就地输出成语句
```

`_stmt()` 是**顺序追加**到 `vm.out` 的：赋值在 pc 92 的 `pop` 处立刻变成独立语句，
而赋值产生的“旧值”`+i` 还留在操作数栈上，直到 pc 94 的 `call 1` 才被消费。
重建器用**表达式文本**代替“值”，于是文本顺序变成：

```js
(i = (+i + 1));                     // 先自增
(chr1 = input.charCodeAt(+i));      // 再按新 i 取值 —— 语义被改写
```

即：**带副作用的表达式在 `pop` 处被语句化并前移到了它的消费者之前**，消费者重新读取了已被修改的变量。
这就是“语句化并前移”的确切位置：`_execute()` 的 `decompose` 提前返回（第 681 行）让 inc/dec 表达式永远不会生成，
`_emit_discard()/_stmt()`（修复前第 600-602 行）在 `pop` 处把它落成语句。

### 2.3 已排除的假设（按线索逐项核对）

- `notearg` 在 `SIMPLE_IGNORED` 里：**不是问题**。`notearg` 是参数边界标记、不带操作数，忽略它不会影响实参顺序；
  顺序由栈操作（`dup/swap/pick/call`）决定。修复后 `input.charCodeAt(i++)`、`xs.log("…", x--)` 等参数位置均正确。
- `call`/`callprop` 的参数弹出、`pick/swap` 语义：**正确**。`_call()` 按 `argc` 弹参、再弹 this/函数，
  与 v22 `JSOP_PICK` 的“把第 i+1 个元素移到栈顶”一致；属性/全局名后缀自增（`propinc`/`nameinc` 展开序列）在修复前后都能正确重建。
- `localinc` 分支本身（原 812-827 行）：**写法正确但不可达**（所有 inc/dec opcode 都带 `JOF_DECOMPOSE`，在它之前就 return 了）；
  且该分支用打印操作数当槽号，对这些 opcode 本来也拿不到正确变量名。
- 栈残留 flush 逻辑（`render_body()` 末尾）：只是兜底打 TODO，不参与此处改写。

## 3. 修复内容

修复思路：保留“跳过融合 opcode、反编译展开序列”的正确行为，在展开序列的 `pop` 处**把后缀自增/自减这个惯用法折叠回表达式**，
放回它本来所在的那个栈槽（旧值的位置），而不是落成语句前移。

```diff
--- a/tools/reconstruct_js.py
+++ b/tools/reconstruct_js.py
@@ -501,6 +501,9 @@ class Decompiler:
     SIMPLE_IGNORED = {"notearg", "loophead", "loopentry", "lineno", "nop", "endinit", "stop", "retrval"}
+    # JOF_DECOMPOSE inc/dec opcodes leave the old value on the operand stack and
+    # then assign; see _fold_postfix_incdec.
+    POSTFIX_INCDEC_RE = re.compile(r"^\((?P<target>.+) = \(\+(?P=target) (?P<sign>[+-]) 1\)\)$")
 
@@ -597,6 +600,32 @@ class Decompiler:
         return list(reversed(values))
 
+    def _fold_postfix_incdec(self, vm, value):
+        """Reassemble a decomposed postfix ++/-- at its JSOP_POP.
+
+        JOF_DECOMPOSE increment/decrement opcodes are no-ops for the v22
+        interpreter; the equivalent decomposed sequence that follows them is
+        what actually executes. For a postfix form that sequence is
+        GETLOCAL/GETARG, POS, DUP, ONE, ADD, SETLOCAL/SETARG, POP (and the
+        GETPROP/SETPROP or GETELEM/SETELEM variants), so the old value is
+        already on the operand stack when the assignment result is discarded.
+        Emitting that assignment as a statement here would move the side
+        effect in front of the consumer of the old value: for example
+        input.charCodeAt(i++) became i = i + 1; input.charCodeAt(i). Fold the
+        idiom back into the postfix expression instead; a plain statement
+        then falls out when the folded value is popped in turn.
+        """
+        if not value.effect or value.kind != "assignment":
+            return False
+        match = self.POSTFIX_INCDEC_RE.match(value.text)
+        if match is None or not vm.stack:
+            return False
+        previous = vm.stack[-1]
+        if previous.text != "+" + match.group("target") or previous.effect or previous.unknown:
+            return False
+        vm.stack[-1] = Expr(match.group("target") + ("++" if match.group("sign") == "+" else "--"), True, "expr")
+        return True
+
     def _emit_discard(self, vm, value, ins):
         if value.effect or value.kind in {"assignment", "call"}:
             self._stmt(vm, value.text, ins)
@@ -650,7 +679,12 @@ class Decompiler:
         if spec and spec.get("decompose"):
-            # See jsopcode.tbl JOF_DECOMPOSE and jsinterp.cpp's no-op cases.
+            # See jsopcode.tbl JOF_DECOMPOSE and jsinterp.cpp's no-op cases:
+            # the fused ++/-- opcode does nothing at run time and the
+            # equivalent decomposed sequence that follows it is the real
+            # code, so decode that sequence and let _fold_postfix_incdec
+            # reassemble the postfix form at its POP. The operand printed for
+            # these opcodes is the decomposed length, not the variable slot.
             return
@@ -804,12 +838,18 @@ class Decompiler:
         if op in {"pop", "popv"}:
-            self._emit_discard(vm, self._pop(vm, ins), ins); return
+            value = self._pop(vm, ins)
+            if not self._fold_postfix_incdec(vm, value):
+                self._emit_discard(vm, value, ins)
+            return
         if op == "popn":
             n = int(self.number(arg)); values = self._popn(vm, n, ins)
             for val in values: self._emit_discard(vm, val, ins)
             return
         if op in {"incarg", "arginc", ...}:
+            # Every inc/dec opcode in this build carries JOF_DECOMPOSE, so the
+            # early return above handles them; keep this branch for opcodes
+            # whose decomposed tail is absent.
             dec = "dec" in op
```

修复要点：

1. 只改 `pop`/`popv`（单个值被丢弃）这一条路径，`popn` 不动 —— `popn` 会先弹掉 n 个值，栈顶不再是被丢弃值的“下一个”，
   在那里折叠可能张冠李戴。
2. 折叠前置条件非常窄：被丢弃值必须是赋值表达式且文本严格匹配 `(T = (+T ± 1))`，同时**它下面紧邻的栈槽文本必须恰好是 `+T`**
   （来自展开序列的 `POS`），且该槽无副作用、非 unknown。这正是
   `GETLOCAL/GETARG/GETPROP/GETELEM → POS → DUP → ONE → ADD|SUB → SETLOCAL/… → POP` 的唯一特征，
   源代码里手写 `i = i + 1;` 不含 `DUP`，栈上没有对应的 `+i`，不会被误折叠。
3. 折叠后把旧值槽替换成 `T++`/`T--`（`effect=True`）：
   - 值被使用时，它就留在表达式里（`input.charCodeAt(i++)`）；
   - 独立成句时，随后那次语句级 `pop` 会通过 `_emit_discard()` 输出 `T++;`（比原来的 `(T = (+T + 1));` 更贴近原句）；
   - 前缀形式（`++i`，展开序列无 `DUP`）不满足前置条件，保持原有的 `(i = (+i + 1))` 赋值表达式形态（语义等价）。

Base64 修复前后（相同字节码）：

```js
// 修复前（原始重建器输出）                          // 修复后
(i = (+i + 1));                                      (chr1 = input.charCodeAt(i++));
(chr1 = input.charCodeAt(+i));                        (chr2 = input.charCodeAt(i++));
(i = (+i + 1));                                      (chr3 = input.charCodeAt(i++));
(chr2 = input.charCodeAt(+i));
...
```

## 4. 验证结果

三条命令的实际输出（在仓库根目录执行）：

```console
$ python3 tools/reconstruct_js.py
reconstructed 836/836 modules
weighted recovery rate: 100.00%
outputs: 836 (JS + recovery JSON) under .../ReconstructedJS

$ python3 tools/validate_reconstructed.py
modules: 836 / 836
JavaScript parse: 836/836 files
dependency closure: 815/815 known edges
weighted opcode translation: 100.00%
manual review modules: 83
report: .../ReconstructedJS/validation_report.json

$ node tools/check_credential_roundtrip.js
=== 1) Base64WithUtf8 自身往返 ===
  "abc" -> b64="YWJj" -> "abc"  OK
  "aéb" -> b64="YcOpYg==" -> "aéb"  OK
  "\u0000ÿ" -> b64="AMO/woA=" -> "\u0000ÿ"  OK
=== 2) _utf8_encode / _utf8_decode 往返（RC4 输出就是 0-255 的字符） ===
  256 个单字节字符中往返失败: 0
=== 3) 完整口令往返（setLoginPsw -> 存储 -> getLoginPsw） ===
  "hunter2" -> 存储 "fF3CtsOww6bCnlw=" -> 还原 "hunter2"  OK
  "MySecret-123" -> 存储 "WVHCi8Ohw6DCngs8eMOtUMKP" -> 还原 "MySecret-123"  OK
  "passw0rd!@#$%^&*()" -> 存储 "..." -> 还原 "passw0rd!@#$%^&*()"  OK
  "密码abc123" -> 存储 "5a+S56CpwrnDpsOgw51cew==" -> 还原 "密码abc123"  OK
=== 4) 和参考 RC4 对比（密钥 + 输入相同） ===
  rc4 与参考实现不一致的样本: 0 / 4
```

补充验证：

- `node --check` 全树：修复前 836/836，修复后 **836/836**（通过率未下降，无回归）。
- 直接对照同一个重建文件：原始重建器输出 `encode("abc") === "YmM="`、`decode(encode("abc")) === "耀"`；
  修复后 `encode("abc") === "YWJj"`、往返一致；另测 `"" / "a" / "ab" / "abcd" / "aéb"` 均与 node 的
  `Buffer.toString("base64")` 完全一致。
- 修复前后 `validate_reconstructed.py` 的 836/836 解析、815/815 依赖边、100.00% opcode 翻译、83 个待人工复核模块完全一致。

### 4.1 关于人工手改文件的保留

重跑 `tools/reconstruct_js.py` 会覆盖整个 `ReconstructedJS/`。经与重建器原始输出逐文件比对，提交态里除
`ReconstructedJS/src_jsc/Utils/Base64.js` 外还有 2 个手工修复过的文件：

- `ReconstructedJS/src_jsc/Scene/Login/LoginScene_AnySdk.js`
- `ReconstructedJS/src_jsc/Scene/Login/LoginScene_BfSdk.js`

（登录框回填/凭据暂存的手工修补）。为避免把这两处手工成果一并冲掉，重建后用
`git merge-file`（base = 修复前重建器原始输出，ours = 修复后重建输出，theirs = 提交态文件）做了三方合并，
两处手工修改无冲突地保留，同时带上了本次的自增修复；两个文件 `node --check` 通过。
`Base64.js` 则完全由修复后的重建器产出，不再需要手工补丁。

## 5. 全树统计（修复前 → 修复后）

统计口径：`ReconstructedJS/**/*.js`，836 个文件；排除行注释与字符串字面量里的伪匹配。

| 指标 | 修复前 | 修复后 |
|---|---|---|
| 表达式位置 `X++`/`X--`（整句之外的用法） | 0 | **25**（11 个文件） |
| 语句形式 `X++;`/`X--;` | 0 | 1082 |
| `X++`/`X--` 合计 | 0 | 1107 |
| `(X = (+X ± 1))` 语句 | 1211（280 文件） | **105**（44 文件，前缀 `++i`/`--i`，语义等价） |
| “自增前移 + 旧值被重读”的语义错误点 | 19 | **0** |
| `node --check` 通过 | 836/836（100%） | 836/836（100%） |

修复的 19 个语义错误点（`X++` 现在回到了表达式里），例如：

| 文件 | 修复前 | 修复后 |
|---|---|---|
| `Utils/Base64.js` | `(i = (+i + 1)); (chr2 = input.charCodeAt(+i));` | `(chr1 = input.charCodeAt(i++));` |
| `Core/Cocos2d-x/jsb_cocos2d.js` | `(_windowTimeIntervalId = (+… + 1)); (this._intervalId = +_windowTimeIntervalId);` | `(this._intervalId = _windowTimeIntervalId++);` |
| `Factorys/Skill/Part.js` | `(xs.tmpCount = (+xs.tmpCount - 1)); xs.log("xs.tmpCount", +xs.tmpCount);` | `xs.log("xs.tmpCount", xs.tmpCount--);` |
| `Models/UnionWarBattleFightInfo.js` | `(pos1 = (+pos1 + 1)); user1.setBattlePos(+pos1);` | `user1.setBattlePos(pos1++);` |
| `Scene/Fight/FightScene.js` | `(this.m_npf_idx = (+this.m_npf_idx + 1)); …event_forNewPlayerFight(+this.m_npf_idx);` | `…event_forNewPlayerFight(this.m_npf_idx++);` |
| `Scene/NewPlayer/NewPlayerScene.js` | `(this.m_idx = (+this.m_idx + 1)); (_idx = +this.m_idx);` | `(_idx = this.m_idx++);` |
| `Views/CardListView.js` | `(this.control.count = (+this.control.count + 1)); this.dump("…", +this.control.count);` | `this.dump("this.control.count", this.control.count++);` |

其余为 `Scene/Party/RechargeRankDialog.js`、`Views/Table/Cell/TaskCell.js` 等共 19 处（清单可由
`(X = (+X ± 1));` 后紧跟 `+X` 的文本模式复现）。

## 6. 残留与边界

- 仍有 105 处 `(X = (+X ± 1))`：全部来自**前缀** `++i`/`--i` 的展开序列（`inclocal` 等，无 `DUP`），
  赋值表达式本身就是原句语义，属可接受形态，未强行改写以免引入新错误。
- 融合 opcode 打印的操作数是展开长度而非槽号：这是本项目字节码语料的实测结论（`localinc` 恒 11、`inclocal` 恒 9，
  与槽号无关）。因此该分支没有按“用操作数取变量名”来修，而是继续以展开序列为唯一事实来源。
- 本次修复只针对“后缀自增/自减在值位置”的求值顺序问题；重建器其余近似行为（`regexp` 字面量、
  控制流结构化 TODO 标记等）不变，`validate_reconstructed.py` 的 83 个待人工复核模块数量前后一致。

## 7. 一句话总结

重建器把 SpiderMonkey v22 的 `JOF_DECOMPOSE` 自增（`localinc` 等，解释器里是空操作、真正执行的是其后的展开序列）
当成普通栈操作逐条反编译，并让 `_emit_discard()` 在展开序列的 `pop` 处把 `(i = (+i + 1))` 就地落成语句、
前移到了仍在栈上等待消费的旧值之前，于是 `input.charCodeAt(i++)` 被重建成“先自增再取值”；
我在 `tools/reconstruct_js.py` 里新增 `_fold_postfix_incdec()`，在 `pop`/`popv` 处用严格特征
（赋值文本 `(T = (+T ± 1))` 且栈中下一槽恰为 `+T`）把该惯用法折叠回 `T++`/`T--` 表达式，重跑重建后
全树 1107 处后缀自增恢复成 `X++` 形态、19 处求值顺序错误归零、`(X = (+X ± 1))` 从 1211 降到 105，
`node --check` 依然 836/836、`validate_reconstructed.py` 各项指标不变、`check_credential_roundtrip.js` 全部 OK
（`encode("abc") === "YWJj"`，标准 base64 与往返均正确）。
