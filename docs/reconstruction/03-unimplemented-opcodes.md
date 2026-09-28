# 未实现的 opcode 与静默降级

**类别**：功能缺口 · **严重度**：严重（占位符会污染实参）
**状态**：✅ 已修（`toid`）；其余为已知缺口

## 降级机制

重建器遇到没有处理器的 opcode 时，会走到底部的兜底分支：

```python
self._todo(vm, ins, "opcode_handler_not_implemented")
```

`_todo` 会在栈上压一个占位表达式，并在产物里留下 `/* TODO_BYTECODE ... */` 标记。
这个设计本身是**诚实**的——它不假装成功，产物里能看见标记。

但危险在于：**占位符是良构的 JS**。如果它恰好落在实参位置，
代码照样能通过 `node --check`，只是运行时算出一个 `undefined`。

## `toid`：从占位符到正确语义

权威语义：

```
// jsinterp.cpp:2131
BEGIN_CASE(JSOP_TOID)
    objval = regs.sp[-2];
    idval  = regs.sp[-1];
    // 就地转换 sp[-1]，对象在下面不动
END_CASE(JSOP_TOID)
```

`jsopcode.tbl`：`nuses=1, ndefs=1` → **净栈变化为 0**。

`toid` 出现的原因是解释器的注释写得很清楚：自增/自减需要**查两次同一个属性**，
但又要避免第二次再触发一次可观察的字符串化。所以先把下标转成 id 缓存住。

**为什么"什么都不做"就是忠实还原**：JS 源码里的 `x[i]` 本来就会做同样的转换，
所以保留下标原值、不生成任何代码，语义与字节码一致。

### 受害者

`Scene/Fight/FightScene.js` 源码 2312 行的 `this.model.deathNum[side]++`，
修复前被重建为：

```js
this.model.deathNum[undefined /*TODO pc=69 toid*/]++;
```

修复后（`FightScene.js:1889`）：

```js
this.model.deathNum[((side === 0) ? input.sideFrom : input.sideTo)]++;
```

修复方式：在 `reconstruct_js.py:907` 加一个恒等处理器直接 `return`，
并在注释里写明净栈变化为 0 的依据。全树 `toid` 占位标记已归零。

## 其余可见 TODO 标记的分类

全树 836 个 recovery 报告合计 2,261,953 条指令，可见 TODO 标记 124 处。**它们不是同一类问题**：

| 标记 | 处数 | 性质 |
|---|---|---|
| `leaveblock` | 82 | 作用域结构，重建为近似形式 |
| `regexp` | 16 | **工具链缺口，非重建器职责** |
| `tableswitch` | 15 | 已部分结构化（153/153 condswitch 成功），剩余为复杂跳转 |
| `ifeq` | 4 | 复杂条件分支 |
| `try` | 3 | 异常边界 |
| `enditer` | 2 | 迭代器收尾 |
| `setrval` | 1 | 返回值插槽 |
| `toid` | 1 | ✅ 本轮已修 |

### 关于 `regexp`：曾经的误判（已更正）

> **更正**：本节原先写"反汇编器不导出正则表达式常量表，责任在 `jsc_disasm.cpp` 一侧，不在重建器"。
> **这个判断是错的。** 实测：`js_Disassemble1` 一直以 `RegExp.prototype.toSource` 形态
> 把正则的**可再解析字面量**打进了 `Recovered`，重建器的 `_execute()` 只是没去读，
> 直接写成了 TODO。**责任在重建器。**
>
> 修复：新增 `regexp_literal()` 还原字面量。`Utils/Base64.js` 的 4 处
> （非法字符清洗 `/[^A-Za-z0-9+/=]/g` 与 CRLF 归一化 `/\r\n/g`）恢复，
> `jsb_cocos2d.js` 的 `/xyz/.test(...) ? /\b_super\b/ : /.*/` 恢复，
> 全树正则位置 `undefined` 归零。

这条更正本身是个教训：**把缺陷归给"上游工具缺口"之前，必须先去上游工具的输出里找一遍。**
当时我看到 TODO 标记里写着 `regexp_object_literal_not_dumped` 就采信了它，
而那只是重建器**自己写的**说明文字，不是反汇编器的结论。

## 判据小结

看到 `TODO_BYTECODE` 标记时应分三种情况处理：

1. **落在语句位置** → 通常是可接受的近似，语义降级有限
2. **落在实参/下标位置** → **危险**，会静默算出 `undefined`，应像 `toid` 一样补处理器
3. **标记本身说明是输入缺口**（如 `regexp`）→ 不是重建器的错，去修上游工具
