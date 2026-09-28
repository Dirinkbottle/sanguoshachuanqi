# 操作数弹栈顺序错误

**类别**：栈序理解错误 · **严重度**：严重（静默改变表达式语义）
**状态**：✅ 已修

## 陷阱本身

重建器用一个辅助函数按个数弹栈：

```python
# tools/reconstruct_js.py:597
def _popn(self, vm, n, ins=None):
    values = []
    for _ in range(max(0, n)):
        values.append(self._pop(vm, ins))   # _pop 先取栈顶
    return list(reversed(values))           # 反转 → 自底向上
```

它返回的是**自底向上**顺序，也就是 `[sp[-2], sp[-1]]`。
对于 `call`（实参恰好就是自底向上）、`dup2`、`swap`，这个顺序正好合适；
但**下标访问类** opcode 的语义是「对象在下、下标在上」，一旦照着"弹出来的第一个就是第一个操作数"
的直觉写成 `key, obj = _popn(...)`，对象和下标就互换了。

## 受害者一：`delelem`（活的，6/6 全错）

权威语义：

```
// toolchain/SpiderMonkey-v22/js/src/jsinterp.cpp:2114
BEGIN_CASE(JSOP_DELELEM)
    FETCH_OBJECT(cx, -2, obj);          // 对象在 sp[-2]
    propval = regs.sp[-1];              // 下标在 sp[-1]
    ...
    regs.sp--;                          // nuses=2 ndefs=1
```

错误实现（修复前 `reconstruct_js.py:890` 附近）：

```python
if op == "delelem":
    key, obj = self._popn(vm, 2, ins)   # ← 反了
    vm.stack.append(Expr("delete {}[{}]".format(obj.text, key.text), True)); return
```

后果：`delete o[k]` 被重建为 `delete k[o]`。**全树 6 处 delelem 无一例外全部错误。**

### 逐条对照（修复后）

| 文件 | 字节码压栈序列 | 修复后 | 修复前的错误形态 |
|---|---|---|---|
| `Profile/GameData/Index.js:72` | `this` → `getprop "index"` → `getarg 0` | `delete this.index[indexKey]` | `delete indexKey[this.index]` |
| `Profile/GameData/common.js:450` | `getlocal 13` → `getlocal 12` | `delete _objMap[_del]` | 弹反 |
| `Core/Cocos2d-x/jsb_cocos2d_studio.js:658` | `this` → `getprop "_eventTriggers"` → `getarg 0` | `delete this._eventTriggers[event]` | 弹反 |
| `Core/Cocos2d-x/jsb_cocos2d.js:1118` | `name "_windowTimeFunHash"` → `getarg 0` | `delete _windowTimeFunHash[intervalId]` | 弹反 |
| `Utils/buckets.js:631` | `this` → `getprop "table"` → `getlocal 0` | `delete this.table[k]` | 弹反 |
| `Models/MagicalEqu.js:265` | `getarg 0` → `getlocal 1` | `delete _fate_arr[temp]` | 弹反 |

修复：`obj, key = self._popn(vm, 2, ins)`（`reconstruct_js.py:893`）。

## 受害者二：`incelem` 族（当前不可达，防回退）

`incelem` / `eleminc` / `decelem` / `elemdec` 走的是同一段下标访问代码，
同样的 `key, obj = _popn(...)`（`reconstruct_js.py:880`），同样的弹反。

**当前 0 处触发**：本包内全部 28 个 inc/dec opcode 都带 `JOF_DECOMPOSE`，
在 `reconstruct_js.py:681` 的提前返回处就被拦掉了（见 [02-postfix-incdec.md](02-postfix-incdec.md)），
所以这个分支实际不可达——是颗定时炸弹。

修复时**只改顺序、不补副作用**：`JOF_DECOMPOSE` 的展开尾巴里已经含自增，
若这个回退分支将来被启用，再叠一次自增就会算两遍。已在代码里写明这条警告。

## 全量核对：`_popn` 的 7 个调用点

| 位置 | 语义 | 判定 |
|---|---|---|
| call 实参 | 自底向上 = 实参顺序 | ✅ 正确 |
| `dup2` | `[a,b] → [a,b,a,b]` | ✅ 正确 |
| `swap` | `[a,b] → [b,a]` | ✅ 正确 |
| `incelem` 族 | obj=sp[-2], key=sp[-1] | ❌ 已修 |
| `delelem` | obj=sp[-2], key=sp[-1] | ❌ 已修 |
| `popn` 语句 | 逐个丢弃 | ✅ 正确 |

顺带核对无误的同类高危 opcode：`getelem`/`callelem`（obj=sp[-2]）、`setelem`（obj,id,val）、
`initprop`（obj,val）、`initelem`（obj,id,val）、`setname`（scope,val）、
`setlocal`/`setarg`（不弹栈）、二元运算（`sp[-2] OP sp[-1]`）、`pick`（`sp[-(i+1)]`→栈顶）。
