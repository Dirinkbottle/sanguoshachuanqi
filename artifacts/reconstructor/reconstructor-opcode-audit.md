# 重建器 opcode 语义审计

审计对象：`tools/reconstruct_js.py`（栈式 VM 模拟器 + 结构化控制流重建）
权威依据：`toolchain/SpiderMonkey-v22/js/src/` 下的 `jsinterp.cpp`、`jsopcode.tbl`、`jsopcode.cpp`、`jsinterpinlines.h`、`frontend/BytecodeEmitter.cpp`
语料：`Recovered/**/*.disasm.txt`（836 个模块，2,261,953 条指令，128 种 opcode）

> **审计版本**：审计过程中 `tools/reconstruct_js.py` 被另一个代理改写过（mtime 2026-09-25 23:30:26，git 工作区 `+42/-2`，新增 `_fold_postfix_incdec`）。
> 本报告所有行号均对应**改写后**的版本：`1718` 行，md5 `942468c053c1d2329ea0fb5deca20b20`，git HEAD `5fd11836`。
> 所有"重建输出"证据都是把当前版本 import 进内存后渲染得到的（未写任何文件）；仓库中已落盘的 `ReconstructedJS/**` 是 15:45 由旧版本生成的，不含最新的 localinc 修复。
> 除本报告外，审计过程未修改仓库中任何文件。

---

## 覆盖情况

### 语料规模

| 项 | 数 |
|---|---|
| 模块（disasm 文件） | 836 |
| 指令总数 | 2,261,953 |
| 实际出现的 opcode 种类 | 128 |
| `jsopcode.tbl` 里的 opcode 总数 | 231（其中 JOF_DECOMPOSE 28 种） |
| 重建器 `SUPPORTED_OPS` 名单大小 | 132 |

### 按分发路径分类（语料实际出现的 128 种）

| 分发类别 | opcode 种数 | 指令数 | 占比 | 判定 |
|---|---|---|---|---|
| `_execute` 有专门处理器 | 88 | 1,938,386 | 85.7% | 见"已核对无误" |
| `VM.run` 结构化（goto/ifeq/ifne/or/and/tableswitch） | 6 | 20,164 | 0.9% | 正确 |
| 结构化助手（try/catch、for-in、switch、setrval 终点；经 `_try_layout`/`_find_forin`/`_emit_switch`/`_emit_conditional_switch`） | 12 种（try/exception/enterblock/leaveblock/iter/iternext/moreiter/enditer/condswitch/case/default/setrval） | 2,437（其中真正结构化的 2,381） | 0.1% | 正确（未识别的落入可见 TODO） |
| `JOF_DECOMPOSE` 无操作码（**正确忽略**） | 13 | 1,220 | 0.05% | 正确，见下方"关键背景" |
| `SIMPLE_IGNORED`（notearg/loophead/loopentry/lineno/nop/endinit/stop/retrval） | 8 | 299,745 | 13.3% | 逐个核对安全 |
| 落到 `_todo`：`toid` | 1 | 1 | — | **真·未实现**（D4） |

另外有若干 opcode 在重建器里有处理器但语料中**一次都没出现**（`getgname/callgname/bindgname/setgname/setintrinsic/getintrinsic/callintrinsic/setconst/defconst/newobject/object/enterwith/leavewith/enumelem/gosub/retsub/finally/throwing/callee/bindintrinsic/forname/forprop/forlocal` 等），其中 `setconst` 的实现是错的（D3，纯潜在）。

### 未处理 / 仅忽略清单（全树可见 TODO 统计，来自 836 个 `*.recovery.json` 聚合）

```
leaveblock 82, regexp 16, tableswitch 15, ifeq 4, try 3, enditer 2, setrval 1, toid 1   （共 124 处标记）
```

* `leaveblock` 82 处：作用域语义未结构化，仅注释（栈高度用立即数补偿，是对的）。
* `regexp` 16 处：**工具缺口**——反汇编器（`tools/jsc_disasm.cpp` 用 `JS_DumpBytecode`）不导出 script 的 regexp 表，重建器无从恢复字面量，只能落 `undefined /* TODO */`。不是处理器语义错误。
* `tableswitch` 15 处 / `ifeq` 4 处 / `try` 3 处 / `enditer` 2 处 / `setrval` 1 处：都是结构化匹配失败的回退，有可见标记。全树 `try` 112 处中 109 处、`iter` 106 处全部、`condswitch` 153 处全部成功结构化。
* 另有 2 个函数体未被任何 LAMBDA/DEFFUN 边引用（`detachedFunctionBodies=2`，以 `/* TODO_BYTECODE detached_function_object=... */` 注释留在输出里）。

---

## 关键背景：JOF_DECOMPOSE 自增/自减族在 v22 里是**空操作**

这条决定了下面 D2 与"localinc 修复"的正确做法，先记证据：

* `jsinterp.cpp:2160-2215`：`INCELEM/DECELEM/ELEMINC/ELEMDEC/INCPROP/.../LOCALINC/LOCALDEC/INCLOCAL/DECLOCAL/INCARG/...` 全部是 `/* No-op */`，**不碰操作数栈**。
* `jsopcode.cpp:1718-1719`（`SimulateOp`）：`if (cs->format & JOF_DECOMPOSE) return pcdepth;` —— 反编译器也按 0/0 建模。
* `frontend/BytecodeEmitter.cpp:943-982`（`EmitVarIncDec`）：先 `EmitVarOp(op)` 发出这个"标记"，随后 `bce->stackDepth--`（抵消标记名义上的 def=1），再发出**真正的展开序列** `GETLOCAL; POS; [DUP]; ONE; ADD|SUB; SETLOCAL; [POP]`。
* `frontend/BytecodeEmitter.cpp:196-201`（`UpdateDecomposeLength`）：`bce->code(start)[-1] = end - start;` —— 把展开序列的**字节长度**写进标记的最后一个字节。`jsopcode.h:411` 注释确认：*"The last byte of a DECOMPOSE op stores the decomposed length."*
* 因此反汇编里这些标记的"操作数"是**展开长度，不是槽位**：实测 `localinc` 986 次全为 `11`，`localdec` 22 次全为 `11`，`inclocal` 105 次全为 `9`（前缀式展开 9 字节、后缀式 11 字节，与 `EmitVarIncDec` 完全吻合）。AwakeLayer.js pc 402 的 `localinc 11` 后面跟的是 `getlocal 8`（局部 8 = `i`），正说明该操作数不是槽位。

结论：重建器在 `reconstruct_js.py:681-688` 对这些 opcode 直接 `return`、并在 `stack_effect()` 里返回 `(0,0)`，**与 v22 语义一致，是正确的**。

---

## 缺陷清单（按严重度排序）

### D1. `delelem` 把对象与下标弹反了，`delete o[k]` 被重建为 `delete k[o]`（确凿，当前生效，6/6 处）

* **opcode**：`JSOP_DELELEM`（`jsopcode.tbl:126`：`use=2 def=1`）
* **证据**：`jsinterp.cpp:2114-2128`
  ```c
  BEGIN_CASE(JSOP_DELELEM)
  {
      /* Fetch the left part and resolve it to a non-null object. */
      RootedObject &obj = rootObject0;
      FETCH_OBJECT(cx, -2, obj);          /* obj = sp[-2]  —— 对象在下 */
      RootedValue &propval = rootValue0;
      propval = regs.sp[-1];              /* id  = sp[-1]  —— 下标在上 */
      MutableHandleValue res = MutableHandleValue::fromMarkedLocation(&regs.sp[-2]);
      if (!JSObject::deleteByValue(cx, obj, propval, res, script->strict))
          goto error;
      regs.sp--;
  }
  ```
* **重建器**：`reconstruct_js.py:872-873`
  ```python
  if op == "delelem":
      key, obj = self._popn(vm, 2, ins); vm.stack.append(Expr("delete {}[{}]".format(obj.text, key.text), True, "expr")); return
  ```
  而 `_popn`（`reconstruct_js.py:597-601`）返回的是**自底向上**顺序（`list(reversed(values))`），即返回 `[sp[-2], sp[-1]]`。于是 `key` 拿到 sp[-2]（对象）、`obj` 拿到 sp[-1]（下标），格式化时又写成 `obj.text[key.text]` → 整体反了。同文件里 `getelem` 用的 `key, obj = self._pop(...), self._pop(...)`（722 行）是对的，只有用 `_popn` 的两处写错。
* **后果**：`delete 对象[下标]` 被重建为 `delete 下标[对象]`；如果下标是数字/字符串，运行时会静默删错属性或抛错。
* **影响面**：全树 `delelem` 共 6 条指令，**6 处全错**（已用当前版本渲染复核输出）：

  | 文件 | 字节码（obj 先入栈） | 现输出（错） | 应为 |
  |---|---|---|---|
  | `src_jsc/Profile/GameData/Index.js` pc 9 | `this.getprop index; getarg 0` | `delete indexKey[this.index];` | `delete this.index[indexKey];` |
  | `src_jsc/Profile/GameData/common.js` pc 694 | `getlocal 13; getlocal 12` | `delete _del[_objMap];` | `delete _objMap[_del];` |
  | `src_jsc/Core/Cocos2d-x/jsb_cocos2d_studio.js` pc 152 | `this.getprop _eventTriggers; getarg 0` | `delete event[this._eventTriggers];` | `delete this._eventTriggers[event];` |
  | `src_jsc/Core/Cocos2d-x/jsb_cocos2d.js` pc 86 | `name _windowTimeFunHash; getarg 0` | `delete intervalId[_windowTimeFunHash];` | `delete _windowTimeFunHash[intervalId];` |
  | `src_jsc/Utils/buckets.js` pc 69 | `this.getprop table; getlocal 0` | `delete k[this.table];` | `delete this.table[k];` |
  | `src_jsc/Models/MagicalEqu.js` pc 91 | `getarg 0 (_fate_arr); getlocal 1 (temp)` | `delete temp[_fate_arr];` | `delete _fate_arr[temp];` |

* **修复建议**：`obj, key = self._popn(vm, 2, ins)`（或改成两次 `_pop`：`key = self._pop(...); obj = self._pop(...)`），保持 `delete {obj}[{key}]`。同一个错误模式还出现在 D2。

### D2. 自增/自减的 `elem` 族同样弹反（确凿代码错误；当前不可达，但被刻意保留为回退分支）

* **opcode**：`JSOP_INCELEM / JSOP_DECELEM / JSOP_ELEMINC / JSOP_ELEMDEC`（`jsopcode.tbl:132,134,136,138`；`jsinterp.cpp:2160-2165` = no-op）
* **证据**：标记本身是空操作（见"关键背景"），真正的展开序列按 `(obj, id)` 顺序访问元素——与 `JSOP_GETELEM`（`jsinterp.cpp:2268-2280`：`lval=sp[-2]=obj, rval=sp[-1]=id`）一致；实机字节码 `FightScene.js` pc 67-82 `eleminc; toid; dup2; getelem; pos; dup; one; add; pick 3; pick 3; pick 2; setelem` 也证实对象在栈底。
* **重建器**：`reconstruct_js.py:861-862`
  ```python
  elif "elem" in op:
      key, obj = self._popn(vm, 2, ins); target = "{}[{}]".format(obj.text, key.text)
  ```
  → 与 D1 同样的 `_popn` 反转。
* **后果**：一旦可达，`x[i]++` 会被写成 `i[x]++`。
* **影响面**：当前 **0 处生效**——实测全量渲染 836 个模块，`INCDEC` 处理器入口被 1217 条指令命中，全部在 `681-688` 的 `JOF_DECOMPOSE` 分支提前返回（1217 = 语料中该 24 个 opcode 的出现总数，与分类统计吻合）。但 `reconstruct_js.py:850-852` 的注释明确写着 *"keep this branch for opcodes whose decomposed tail is absent"*，即作者有意保留它作为回退 → 是一颗定时炸弹。
* **修复建议**：
  1. 至少把顺序改成 `obj, key = self._popn(vm, 2, ins)`；
  2. 更稳妥的是意识到**这个分支整体是死代码且语义重复**：展开序列（真正的自增）已经在字节码里，一旦让该分支生效就会把自增做两遍（一次作为表达式文本、一次作为展开序列），并再次引入"旧值被文本重读"的时序问题。若某天真要支持"没有展开尾巴"的标记，应只改文本、不要改变量。

### D3. `setconst` 多弹一个操作数（确凿代码错误；本语料 0 处）

* **opcode**：`JSOP_SETCONST`（`jsopcode.tbl:102`：`use=1 def=1`）
* **证据**：`jsinterp.cpp:1746-1762`
  ```c
  BEGIN_CASE(JSOP_SETCONST)
  {
      ...
      RootedValue &rval = rootValue0;
      rval = regs.sp[-1];          /* 只读 sp[-1] */
      ... defineProperty(varObj, name, rval, ...) ...
  }                                 /* 既不弹栈，也不碰 sp[-2]；值留在栈上作为结果 */
  END_CASE(JSOP_SETCONST);
  ```
* **重建器**：`reconstruct_js.py:790-798`
  ```python
  if op in {"setprop", "setgname", "setintrinsic", "setconst"}:
      value = self._pop(vm, ins)
      if op == "setprop":
          obj = self._pop(vm, ins); ...
      else:
          target = self._pop(vm, ins)      # <-- setconst 不该有这一弹
          text = "({} = {})".format(...)
  ```
  对 `setgname`（`use=2`，见 `jsinterp.cpp:2239-2253`）和 `setintrinsic`（`use=2`，`jsinterp.cpp:2227-2237`）这一弹是对的，`setconst` 不是。
* **后果**：模拟栈净变化 `-1`（应为 0），后续每条指令都会拿到错位的操作数，直到出现 `stack underflow` 占位符——一处静默的连锁错误。
* **影响面**：0 处（全树 `setconst` / `defconst` 出现次数均为 0；全量插桩计数 `setconst=0, setintrinsic=0, setgname=0`）。纯潜在缺陷。
* **修复建议**：把 `setconst` 拆出来单独处理：弹 1 个值、压回 `(NAME = value)`，或直接输出 `/* TODO_BYTECODE const_binding=NAME */` 并保持 1 弹 1 压。

### D4. `toid` 未实现，唯一的 `x[i]++` 站点丢掉下标（确凿；1 处，有可见标记）

* **opcode**：`JSOP_TOID`（`jsopcode.tbl:534`：`use=1 def=1`）
* **证据**：`jsinterp.cpp:2131-2146`
  ```c
  BEGIN_CASE(JSOP_TOID)
  {
      /*
       * Increment or decrement requires use to lookup the same property twice,
       * but we need to avoid the observable stringification the second time.
       * There must be an object value below the id, which will not be popped.
       */
      objval = regs.sp[-2]; idval = regs.sp[-1];
      MutableHandleValue res = MutableHandleValue::fromMarkedLocation(&regs.sp[-1]);
      if (!ToIdOperation(cx, script, regs.pc, objval, idval, res)) goto error;
  }   /* 就地转换 sp[-1]，高度不变 */
  ```
* **重建器**：没有分支，落到 `reconstruct_js.py:892` 的 `self._todo(vm, ins, "opcode_handler_not_implemented")` → `_todo` 把 sp[-1] 换成 `undefined /* TODO_BYTECODE ... */`（栈高度保持 1 弹 1 压，这一点没错）。
* **后果**：`x[i]++` 变成 `x[undefined /* TODO */]++`。渲染证据（当前版本，`src_jsc/Scene/Fight/FightScene.js`，源码第 2312 行，`updateDeathNum`）：
  ```js
  /* TODO_BYTECODE pc=69 opcode=toid reason=opcode_handler_not_implemented */
  this.model.deathNum[undefined /* TODO_BYTECODE pc=69 opcode=toid reason=opcode_handler_not_implemented */]++;
  ```
  （该处原始语义是 `this.model.deathNum[side]++`；`side` 由前面的三元表达式算出。）
* **影响面**：1 处（全树唯一 `toid`）。标记可见，不是静默错误。
* **修复建议**：加一个恒等处理器——`val = self._pop(vm, ins)` 然后 `vm.stack.append(val)`（TOID 只影响运行时的二次字符串化，源码级重建不需要表达）。这同时会把上面那行还原成 `this.model.deathNum[(side === 0) ? input.sideFrom : input.sideTo]++`。

### D5. 非字面量目标的 `initprop` 把"赋值表达式"当对象压栈（确凿代码错误；本语料 0 处）

* **opcode**：`JSOP_INITPROP`（`jsopcode.tbl:227`：`use=2 def=1`）
* **证据**：`jsinterp.cpp:2920-2946`：`rval=sp[-1]; obj=sp[-2]; DefineNativeProperty(...); regs.sp--;` → 结果是**对象本身**留在 sp[-2] 位置，供后续 INITPROP / ENDINIT / SETPROP 继续使用。
* **重建器**：`reconstruct_js.py:755-766`，当 `obj.kind` 不是 `object/array` 时走 `else` 分支：
  ```python
  else:
      vm.stack.append(Expr("({} = {})".format(prop_access(obj.text, prop), value.text), True, "assignment"))
  ```
  压入的是**赋值表达式**（其值是被赋的值，不是对象），而 VM 期望这里还是那个对象。
* **后果**：接下来的 `initprop/initelem/setprop/endinit` 会把赋值表达式当对象用，产出 `(a.b = v).c = w` 这种语义错误的链式表达式（并可能进一步错位）。
* **影响面**：0 处。全量插桩显示 `initprop_nonliteral = 0`（451,189 条 `initprop` 全部命中字面量折叠分支；语料里 122,380 条 `newinit` 全是 `newinit 1`=Object）。纯潜在缺陷。
* **修复建议**：`else` 分支也应压回对象：先输出一行 `(obj.prop = value);`（或 TODO 注释），然后 `vm.stack.append(obj)`。

---

## 已核对无误的 opcode

逐条对照 `jsinterp.cpp` 的 `CASE`（及 `jsopcode.tbl` 的 use/def）核对过，结论：**栈序、弹压个数、副作用时机均正确**。列出的行号是重建器当前版本。

| 类别 | opcode | 重建器 | 权威语义 |
|---|---|---|---|
| 取属性 | `getprop/getxprop/length/callprop` | 716-720（弹 1 压 1） | `jsinterp.cpp:2213-2225` 四者同组，就地替换 sp[-1]；`tbl:425,456,516` use=1 def=1。CALLPROP 只压方法，`this` 由编译器用 `DUP/CALLPROP/SWAP` 保留（语料实测如此），重建器把 `swap/pick/dup` 处理对了，故 `a.b(c)` 形状正确 |
| 取元素 | `getelem/callelem` | 721-723（`key,obj=pop,pop`） | `jsinterp.cpp:2268-2280`：obj=sp[-2]、id=sp[-1]，`res` 写回 sp[-2] 后 `sp--` |
| 存属性 | `setprop` | 790-794 | `jsinterp.cpp:2255-2266`：lval=sp[-2]、rval=sp[-1]，结果写回 sp[-2] |
| 存元素 | `setelem` | 812-814（弹 val,key,obj） | `jsinterp.cpp:2282-2294`：`FETCH_OBJECT(-3)`、`FETCH_ELEMENT_ID(-2)`、`value=sp[-1]` |
| 名字赋值 | `setname` / `bindname` | 803-807 / 713-715 | `jsinterp.cpp:2239-2253`（scope=sp[-2]、value=sp[-1]）；`1792-1807` BINDNAME 压作用域对象（重建器只借用名字文本，栈高度 0→1 一致） |
| 槽位赋值 | `setlocal/setarg/setaliasedvar` | 808-811 / 799-802 | `jsinterp.cpp:2699-2704`、`2672-2680`、`2654-2659`：都只写 sp[-1]，不弹（use=1 def=1 即"值留在栈上"） |
| 字面量初始化 | `initprop` / `initelem` / `initelem_array` | 755-766 / 767-789 | `jsinterp.cpp:2920-2946`（obj=sp[-2],val=sp[-1]）、`2948-2962`（obj=sp[-3],id=sp[-2],val=sp[-1]）、`2964+`（obj=sp[-2],val=sp[-1]） |
| 对象/数组字面量 | `newinit` / `newarray` / `endinit` | 724-736 / 675-678 | `jsinterp.cpp:2859-2892`：NEWINIT 立即数 = JSProtoKey（1=Object，3=Array），NEWARRAY 立即数 = 长度；`tbl` ENDINIT use=0 def=0（重建器只做文本化，不动栈） |
| 调用 | `call/new/eval/funcall/funapply` | 648-670 | `jsinterp.cpp:2312-2345`：`CallArgsFromSp(argc, sp)` ⇒ 布局 `[callee, this, arg0..argN]`；重建器 `args=_popn(argc); this=_pop; fun=_pop` 与之一致。语料实测：属性调用带 `DUP;CALLPROP;SWAP`，本地调用带 `CALLLOCAL;UNDEFINED`，名字调用带 `CALLNAME;IMPLICITTHIS`，`new` 前有显式 `undefined` 槽 → 全部还原正确 |
| 名字取用 | `name/callname/implicitthis/getaliasedvar/callaliasedvar` | 697-704 | `jsinterp.cpp:2463-2495`：各压 1；`implicitthis` 压的是"隐式 this 值"，重建器标成 `this` 并被 `_call` 识别为无显式 this 的调用 |
| 参数对象 | `arguments` | 705-706 | `jsinterp.cpp:2617-2625` 压 1 |
| 栈操作 | `dup/dup2/swap/pick` | 822-837 | `jsinterp.cpp:1709-1744`：DUP 复制栈顶；DUP2 压 `lref,rref,lref,rref`；SWAP 交换 sp[-2]/sp[-1]；PICK `i` 取 **sp[-(i+1)]** 移到栈顶（重建器 `vm.stack[-n-1]` 完全一致，边界 `n < len` 也与断言 `depth>=i+1` 等价） |
| 一元 | `not/neg/pos/bitnot/typeof/typeofexpr/void` | 815-817 | `jsinterp.cpp:2037-2070`、`2148-2158`：1 弹 1 压 |
| 二元 | `add/sub/…/in/instanceof` | 818-821 | `jsinterp.cpp:1809-2035`：一律 `sp[-2] OP sp[-1]`，重建器 `right,left=pop,pop`（先弹的给 right）→ `(left OP right)` 顺序正确。注：比较类 opcode 会被 `TRY_BRANCH_AFTER_COND`（`1622-1636`）与后继 `IFEQ/IFNE` 融合（比较后直接跳转并跳过该分支指令），总栈效果与"压布尔再被 ifeq 弹掉"完全相同，因此重建器"比较压值 + ifeq 弹值"的建模在栈与控制流上都等价 |
| 删除 | `delname/delprop` | 868-871 | `jsinterp.cpp:2072-2098`（DELNAME 0 弹 1 压）、`2100-2112`（DELPROP 1 弹 1 压） |
| 函数字面量 | `lambda/deffun` | 741-754 | `jsinterp.cpp:2728+`：DEFFUN 只定义、**不碰栈**（tbl use=0 def=0）；LAMBDA 压 1。重建器 deffun 走语句、lambda 走表达式，正确 |
| 声明 | `defvar/defconst` | 878-884 | `jsinterp.cpp:2706-2726`：均 0 弹 0 压。defconst 只留 TODO 注释（缺 `const` 声明，但本语料 0 处） |
| 控制转移 | `goto/ifeq/ifne/or/and/tableswitch` | `VM.run` 1119-1380 | `jsinterp.cpp:1563-1613`：DEFAULT 先 `sp--` 再跳；IFEQ 假跳、IFNE 真跳；OR 真值跳且**保留值**、AND 假值跳且保留值。重建器对"落到 fall-through 区"与"跳到 target 区"的 then/else 归属、以及 while/do-while 的取反（1250、1298、1143、918 行）逐条核对，方向都对 |
| switch | `condswitch/case/default` | `_emit_conditional_switch` | `jsinterp.cpp:1885-1895`：`STRICT_EQUALITY_OP` 只 `sp--` 一次（弹 case 值、**保留判别式**），命中时再 `sp--` 并跳转；DEFAULT（1563-1565）弹出判别式后跳。重建器在候选值模拟时按 `base_stack + [discriminant]` 建模、按 `use=2 def=1`/`use=1 def=0` 结算，并处理了"共享 default 汇合点"，与语义一致 |
| for-in | `iter/iternext/moreiter/enditer` | `_find_forin` + `VM.run` 1190-1217 | `jsinterp.cpp:1661-1707`：ITER 就地换迭代器、MOREITER 压布尔、ITERNEXT 压下一个键、ENDITER 弹迭代器。106 处 `iter` 全部匹配成功，flags 全为 `1`（JSITER_ENUMERATE → 普通 `for in`）；`bindname/pick 1/setname/pop` 与 `setlocal/pop` 两种绑定形态都被正确吸收 |
| try/catch | `try/exception/enterblock/leaveblock` | `_try_layout` + `VM.run` 1167-1189 | `jsinterp.cpp:3057-3063` EXCEPTION 压 1；catch 入口形态 `ENTERBLOCK; EXCEPTION; SETLOCAL; POP` 与实现一致；109/112 处结构化成功 |
| 返回 | `setrval/retrval/stop/return/throw` | `VM.run` 1150-1166 + 874-877 | `jsinterp.cpp:1475-1478`、`1502-1507`；重建器把 `setrval … retrval`（含中间 `leaveblock/leaveforletin`）识别为 `return`，41 处全部命中 |
| 显式忽略集 | `notearg/loophead/loopentry/lineno/nop/endinit/stop/retrval` | 679-680 | 逐个核对：全部 use=0 def=0（`tbl`：nop:81、endinit:226、loophead:262、lineno:286、retrval:388、stop:450、loopentry:540、notearg:543），忽略不改变语义；`stop` 是脚本末尾、`retrval` 由返回识别逻辑消费 |

结构化助手的额外抽样验证：
* do-while 路径（`VM.run` 的 `_find_do_loop` 分支）**故意跳过循环首指令**（`run(i+1, back_idx, …)`）。全量扫描 1246 个 do-while 候选，被跳过的首指令 1246/1246 都是 `loophead`（空操作），因此安全。
* 全量指标（836 个 recovery.json 聚合）：`stackUnderflows=0`、`stackUnknownEffects=0`、`residualValues=3`、`stackMergeConflicts=5`、`try/endif/ifeq` 等回退标记共 124 个 —— 说明重建器的栈模拟整体自洽，未处理处都留下了可见标记。

---

## 待验证

1. **`_emit_discard` 的"副作用提前"是普遍模式，不止 inc/dec**（无确凿错误样本）。`_emit_discard`（629-631）在 `pop` 处才把带 `effect` 的值打印成语句，而栈上剩下的旧值往往以**表达式文本**形式在更晚的位置被重新求值。已知受害形态就是 localinc（另一个代理正在修）。同源风险点：`a || (x = 1, y)` 之类短路右侧的 `out` 会被 `or/and` 分支（现在的 `VM.run` `or/and` 处理）提前铺到表达式之前。需要专门构造样例才能定罪，本报告不列为确凿缺陷。
2. **`dup` 使用 `copy.deepcopy`**（823-824）：真实 DUP 复制的是同一个值的引用，重建器复制的是 Expr 对象。若某处 DUP 出两份后只对其一写入 `data`（对象字面量折叠），两份文本会不一致。本语料未发现受害样本（`endinit` 只改 `text`，INITPROP 折叠只改 `data`），未验证。
3. **全局名 for-in 变量被渲染成 `for (var x in …)`**：4 处 `bindname/pick/setname` 形态（`jsb_debugger.js`、`UI.js`、`MagicalEqu.js` 在函数体内，`main.debug.js` 在全局）。函数体内加 `var` 会新建一个局部绑定，而原语义写的是外层/全局名——属于保真度问题而非 opcode 语义错误，影响 ≤3 处。
4. **3 处 try/catch 未结构化**（`String.js`、`jsb_debugger.js`、`Mgr.js`）与 **2 个 detached 函数体**：只影响覆盖率（有可见标记），未深究是否 `_try_layout` 的启发式过严。
5. **`regexp` 16 处**：需要扩展 `tools/jsc_disasm.cpp` 导出 script 的 regexp 表才能恢复，重建器侧无能为力。
6. **CFG 分析里的 20 处 `stack-height merge` 异常**（`cfg_analysis`，来自 recovery.json 聚合）与 VM 侧 5 处 merge conflict：诊断工具与执行器口径不同，未逐块核对。

---

## 总结

当前版本（md5 `942468c053c1d2329ea0fb5deca20b20`）中，**确凿的 opcode 语义缺陷有 3 个是"活"的代码错误、2 个是纯潜在错误**：D1 是唯一在本语料真正生效的一个——`delelem` 用 `_popn` 拿到的是自底向上顺序，却按"先 id 后 obj"命名，导致全树 6/6 处 `delete o[k]` 被写成 `delete k[o]`（例如 `Index.js` 的 `delete indexKey[this.index]` 应为 `delete this.index[indexKey]`），这是**最严重的一个**，因为它静默产出可运行但语义相反的代码；D2 是与 D1 同源的 `elem` 自增/自减弹序反转，今天被 `JOF_DECOMPOSE` 提前返回挡住（实测 1217 条命中全部提前返回），但代码注释表明该分支被有意保留为回退，随时可能复活，且一旦复活还会把自增做两遍；D3（`setconst` 多弹一个操作数）与 D5（非字面量 `initprop` 把赋值表达式当对象压栈）在本语料各 0 处触发，属潜在定时炸弹；D4 是 `toid` 完全未实现，使全树唯一的 `x[i]++`（`FightScene.js:2312`）丢掉下标，但有可见 TODO 标记。其余 88 种有处理器的 opcode（占 85.7% 指令）经 `jsinterp.cpp` 逐条核对**栈序与语义正确**，包括最容易被写反的 `call/new` 参数顺序、`setelem/initelem/initprop` 的对象位置、`pick/dup2/swap`、比较类 opcode 与 `IFEQ/IFNE` 的融合、`CASE/DEFAULT` 的判别式保留，以及 `JOF_DECOMPOSE` 自增族的"空操作 + 展开序列"模型。
