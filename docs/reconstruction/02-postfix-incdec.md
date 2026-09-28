# 后缀自增的语句化与前移

**类别**：副作用时机错误 · **严重度**：严重（静默改变计算结果）
**状态**：✅ 已修 · **这是 base64 首字符丢失的根因**

## 现象

`ReconstructedJS/src_jsc/Utils/Base64.js` 里，编码循环的读取被错位：

```js
// 错误形态（修复前）
(i = (+i + 1));
(chr1 = input.charCodeAt(+i));   // 读的是 input[1]，input[0] 被跳过

// 正确形态
(chr1 = input.charCodeAt(i++));
```

后果：`"abc"` 编码成 `"YmM="`（那是 `"bc"` 的 base64）。不抛异常、不报错，数据悄悄错。

## 根因链

1. **`JOF_DECOMPOSE` 是 no-op**。本包内全部 inc/dec opcode（`localinc`/`inclocal`/`propinc`… 共 28 个）
   都带这个标记。按 `jsinterp.cpp:2160-2215`，融合 opcode 在解释器里是 `/* No-op */`，
   真正执行的是紧随其后的**展开序列**——
   `BytecodeEmitter.cpp:943-981` 的 `EmitVarIncDec` 发出
   `GETLOCAL, POS, [DUP], ONE, ADD|SUB, SETLOCAL, [POP]`。
   `reconstruct_js.py:681` 据此提前返回，**这个判断本身是对的**。

2. **但它让下游一段正确的代码变成了死代码**。原本有一个处理后缀自增的分支会产出 `i++`，
   因为 inc/dec 全在 681 行被拦掉，这段分支**永不执行**。

3. **于是展开序列被逐条反编译**。展开序列里的 `pop` 处，`_emit_discard()`
   （`reconstruct_js.py:629`）把赋值 `(i = (+i + 1))` 就地 `_stmt()` 成一条**独立语句**
   追加到输出；而它产生的"旧值" `+i` 还留在操作数栈上，等后面的 `call` 才消费。

4. **重建器用表达式文本代替了值**。文本顺序于是变成"先自增、后按新 `i` 取值"，
   即语句化并前移，语义被改写。

## 附带澄清：那个操作数不是槽号

`localinc` 打印出的操作数**恒为 11**、`inclocal` **恒为 9**，实测槽号 0–35 全都一样。
它是展开序列的**字节长度**（见 `BytecodeEmitter.cpp:196-201`、`jsopcode.h:411`），
不是变量槽号——所以不能拿它取变量名，否则只会得到 `__local_11`。

这也是一个有用的旁证：如果谁看到 `localinc 11` 就以为是"第 11 号局部变量"，方向就错了。

## 修复

新增 `Decompiler._fold_postfix_incdec()`（`reconstruct_js.py:603`），
在 `pop`/`popv` 路径上（**不动 `popn`**）做模式折叠：当被丢弃的值满足**严格特征**时——
赋值文本形如 `(T = (+T ± 1))`，且栈顶下一槽恰为 `+T`（来自展开序列的 `POS`）——
把该惯用法折叠回 `T++`/`T--` 表达式，放回旧值所在的栈槽。

- 值被使用时：留在表达式里（`charCodeAt(i++)`）
- 独立成句时：随后那次语句级 `pop` 输出 `T++;`
- **前缀** `++i`/`--i` 的展开序列没有 `DUP`，不满足条件，保持 `(i = (+i + 1))` 的等价形态
- 副作用不明（`unknown`）的值一律不折叠

## 修复前后全树统计

| 指标 | 修复前 | 修复后 |
|---|---|---|
| 表达式位置的 `X++`/`X--` | 0 | 25（11 个文件） |
| 语句形式 `X++;` | 0 | 1082 |
| `(X = (+X ± 1))` 语句 | 1211（280 文件） | 105（44 文件，全为前缀等价形态） |
| **"自增前移 + 旧值被重读"的语义错误点** | **19** | **0** |

受影响的文件包括 `Utils/Base64.js`、`Core/Cocos2d-x/jsb_cocos2d.js`、`Models/Part.js`、
`UnionWarBattleFightInfo`、`Scene/Fight/FightScene.js`、`NewPlayerScene`、
`CardListView`、`RechargeRankDialog`、`TaskCell` 等。

## 为什么只有 base64 崩了

这个缺陷**到处都在**（1102 处语句化），但绝大多数位置的自增值被丢弃（循环语句 `i++;`），
语句化是语义等价的。只有**值被消费**的位置才出错。
全树扫"自增后又立刻用同一个变量"的模式，真正的受害者就是这 19 处。
