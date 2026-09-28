# 栈效应理解错误

**类别**：对 `nuses`/`ndefs` 的理解偏差 · **严重度**：潜在（当前 0 处触发）
**状态**：✅ 已修（防御性）

这类缺陷的可怕之处不在当下，而在**一旦语料变化就会被激活**。
两者当前在全树都**没有触发**，但修掉它们的成本极低。

判据全部来自 `toolchain/SpiderMonkey-v22/js/src/jsopcode.tbl` 的
`OPDEF(name, val, str, image, length, nuses, ndefs, ...)` 三件套。

## `setconst`：多弹了一个操作数

```
jsopcode.tbl:102
OPDEF(JSOP_SETCONST, 14, "setconst", NULL, 5, 1, 1, 3, JOF_ATOM|JOF_NAME|JOF_SET)
                                            ^  ^
                                        nuses=1 ndefs=1
```

**`nuses=1`**：栈上只有值，没有作用域对象。
这正是 `setconst` 与 `setname`/`setgname`/`setintrinsic` 的分水岭——后三者都是 `nuses=2`
（它们要额外压一个作用域对象）：

```
jsopcode.tbl:266  JSOP_SETNAME      ... 5, 2, 1
jsopcode.tbl:372  JSOP_SETINTRINSIC ... 5, 2, 1
jsopcode.tbl:392  JSOP_SETGNAME     ... 5, 2, 1
```

错误实现（修复前）把四者归为一组，统一弹两次：

```python
if op in {"setprop", "setgname", "setintrinsic", "setconst"}:
    value = self._pop(vm, ins)
    ...
    else:
        target = self._pop(vm, ins)      # ← setconst 不该走到这里
```

对 `setconst` 而言这是**净 -1** 的栈错位，会让后续每一个操作数都取错槽位。

修复：把 `setconst` 单独拆出来，只弹值，变量名直接取 atom
（`reconstruct_js.py:796`）。

**影响面：0 处**。全量插桩确认语料中 `setconst`/`defconst`/`setgname`/`setintrinsic`
各出现 0 次。纯防御性修复。

## `initprop`：非字面量目标时压错了东西

```
jsopcode.tbl:227
OPDEF(JSOP_INITPROP, 93, "initprop", NULL, 5, 2, 1, 3, JOF_ATOM|JOF_PROP|JOF_SET|JOF_DETECTING)
                                               ^  ^
                                           nuses=2 ndefs=1
```

弹 2（对象、值）、压 1。关键在于**压回去的是哪个**：按 `jsinterp.cpp:2920-2946`，
结果就是 `sp[-2]` 那个**对象本身**，属性赋值只是副作用。

重建器对字面量对象走的是折叠路径（把属性直接塞进 `obj.data` 字典），是对的；
但 `else` 分支压的是**赋值表达式**：

```python
# 修复前
vm.stack.append(Expr("({} = {})".format(prop_access(obj.text, prop), value.text), True, "assignment"))
```

后果：接下来的 `initprop`/`endinit` 会把一个赋值表达式当对象用。

修复（`reconstruct_js.py:755-771`）：把赋值**作为语句**发出去，然后把原对象压回栈：

```python
self._stmt(vm, "{} = {}".format(prop_access(obj.text, prop), value.text), ins)
vm.stack.append(obj)
```

**影响面：0 处**。全量插桩 `initprop_nonliteral=0`（451,189 条 `initprop` 全部走字面量折叠）。

## 教训

按 `nuses`/`ndefs` 给 opcode **分组处理**是重建器最容易出事的地方：
分组省事，但会把"看起来像"的 opcode 归到一起，而它们的栈效应往往不同。
审计时的检查手法很简单——**把每组里每个 opcode 的 `nuses`/`ndefs` 抄出来排一行看是否一致**，
不一致的就必须拆开。
