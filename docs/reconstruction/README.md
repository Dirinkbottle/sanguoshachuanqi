# 重建器缺陷档案（模块化）

本目录记录 `tools/reconstruct_js.py` 这把**近似重建器**的已知语义缺陷：
每一类都给出「字节码 → 重建结果」的对照证据，以及当前修复状态。

## 为什么需要单独建档

重建器是一个栈式模拟器：它模拟 `vm.stack`，每条 opcode 弹栈/压栈，最后把表达式打印成 JS。
这类实现有一种危险的失败模式——**产出的代码照样能通过语法检查、照样"看着像那么回事"，
但语义已经变了**。base64 那个 bug 就是这样活了很久：它让 `"abc"` 静默编码成 `"YmM="`，
不抛异常、不报错，只是数据悄悄错了。

所以本档案的证据标准是：**任何一条缺陷都必须能指到 `toolchain/SpiderMonkey-v22/js/src/jsinterp.cpp`
的对应 CASE、`jsopcode.tbl` 的栈效应，或反汇编里的压栈序列**。没有证据的猜测不写进来。

## 权威依据

| 文件 | 用途 |
|---|---|
| `toolchain/SpiderMonkey-v22/js/src/jsinterp.cpp` | 解释器主循环，每个 opcode 的精确语义 |
| `toolchain/SpiderMonkey-v22/js/src/jsopcode.tbl` | opcode 全表：`length, nuses, ndefs` 栈效应 |
| `Recovered/**/*.disasm.txt` | 反汇编产物，**忠实可靠**，可当标准答案 |
| `ReconstructedJS/**/*.js` | 重建产物，**可能有错**，本档案的审计对象 |

## 模块

| 页面 | 内容 |
|---|---|
| [01-operand-order.md](01-operand-order.md) | 操作数弹栈顺序错误（`_popn` 自底向上序陷阱） |
| [02-postfix-incdec.md](02-postfix-incdec.md) | 后缀自增的语句化与前移（base64 首字符丢失的根因） |
| [03-unimplemented-opcodes.md](03-unimplemented-opcodes.md) | 未实现的 opcode（`toid`）与静默降级 |
| [04-stack-effect-mismatch.md](04-stack-effect-mismatch.md) | 栈效应理解错误（`setconst`、`initprop`） |
| [05-verification.md](05-verification.md) | 验证方法、回归基线、可执行的检查命令 |
| [06-source-patches.md](06-source-patches.md) | 刻意偏离字节码的客户端补丁层（作用于重建树） |
| [07-runtime-overlays.md](07-runtime-overlays.md) | 运行时 overlay：本地端点、XHR 重试、错误弹窗，以及为什么全量重生成不会丢改动 |

## 状态总览

| 缺陷 | opcode | 影响面 | 状态 |
|---|---|---|---|
| 操作数弹反 | `delelem` | 6/6 全错 | ✅ 已修 |
| 操作数弹反 | `incelem`/`eleminc`/`decelem`/`elemdec` | 0 处（不可达） | ✅ 已修（防回退） |
| 自增前移 | `localinc` 等 28 个 | 19 处语义错误 | ✅ 已修 |
| 未实现 | `toid` | 1 处（`undefined` 占位） | ✅ 已修 |
| 栈效应 | `setconst` | 0 处 | ✅ 已修（防御） |
| 栈效应 | `initprop`（非字面量目标） | 0 处 | ✅ 已修（防御） |
| 未实现 | `regexp` | 16 处 | ✅ 已修（曾误判为反汇编器缺口） |

### 曾误判为"上游工具缺口"的

`regexp` 的 16 处 TODO 曾被我归为"反汇编器不导出正则表，非重建器职责"——**这是误判**。
反汇编器一直把可再解析的正则字面量打进了 `Recovered`，是重建器没读。
详见 [03-unimplemented-opcodes.md](03-unimplemented-opcodes.md)。

教训：判断"这是上游工具的锅"之前，先去上游工具的实际输出里找一遍。
我当时采信的是重建器**自己写的** TODO 说明文字，那不是反汇编器的结论。

## 尚未定论

以下几项有可疑迹象但**没有确凿证据**，故不列为缺陷，仅记录待查：

- `_emit_discard` 在 `pop` 处语句化的通用时序风险（与后缀自增同源，但未构造出第二个受害样本）
- `dup` 用 `deepcopy` 使两份副本不共享（语义上通常无差别，但对象身份敏感的代码会受影响）
- 3 处函数体内的 `for (var x in …)`：原字节码是全局名绑定（`bindname`+`setname`），
  重建时加了 `var` 会新建局部绑定
- 全树 20 处 `cfg` 栈高度合并异常，与模拟器侧 5 处 `merge` 的口径差异
