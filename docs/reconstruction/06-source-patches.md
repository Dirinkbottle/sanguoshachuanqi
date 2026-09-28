# 客户端补丁层

**类别**：流程缺陷（非语义缺陷）· **状态**：✅ 已修

## 问题：重跑会静默冲掉手工修改

`tools/reconstruct_js.py` 会**从零重写** `ReconstructedJS/` 下每一个文件。
而其中少数文件**必须**与字节码不同——它们不是重建修正，而是**刻意改客户端行为**的补丁。

这个流程缺陷已经造成过真实回归：自动填充口令的修复一度被重跑覆盖，
表现为登录框再也填不出密码。

更隐蔽的是它**不报错**：重跑照常输出 "836/836 modules, recovery rate 100.00%"，
被冲掉的修改没有任何提示。

## 修复：锚点式补丁层

新增 `tools/source_patches.py`，把这些改动登记为**锚点替换**，
并在 `reconstruct_js.py` 的 `main()` 末尾（`reconstruct_js.py:1743`）自动应用：

```python
import source_patches
patched, already, problems = source_patches.apply(out_root)
```

每条补丁登记四项：目标文件、替换锚点 `before`、替换结果 `after`、以及**为什么要偏离字节码**。

### 幂等性判据

```python
if patch["after"] in text:      # 已应用 → 跳过
    ...
if patch["before"] not in text: # 锚点消失 → 报问题，不静默跳过
    ...
```

两个细节都是必须的：

- **用 `after` 判断幂等**，而不是另立一个 marker 字段。因为 `after` 必然完整包含 `before`，
  用 `after` 自身判断是自洽的；而独立 marker 一旦与实际文本有细微出入
  （例如漏了一对括号），幂等守卫就会失效，导致**重复套用**。
  这个坑在本层第一版就踩到了，已修正。
- **锚点找不到时报 PROBLEM 而不是跳过**。锚点消失意味着重建器的输出形态变了、
  补丁需要人工复核——这必须吵醒人，不能安静地什么都不做。

### 使用

```sh
python3 tools/source_patches.py --check   # 只报告，不写盘
python3 tools/source_patches.py           # 就地应用
```

正常情况下：重建后是 `4 applied, 0 already, 0 problem`；
紧接着再 `--check` 应是 `0 applied, 4 already, 0 problem`。

## 当前登记的补丁

| 名称 | 文件 | 修复的行为 |
|---|---|---|
| `login-guard-bfsdk` | `Scene/Login/LoginScene_BfSdk.js` | `updateDialog()` 只用**非空**存储值回填输入框 |
| `login-stash-bfsdk` | 同上 | 暂存玩家本次提交的账号/口令 |
| `login-use-stash-bfsdk` | 同上 | 优先用暂存值，而非当前输入框内容 |
| `login-guard-anysdk` | `Scene/Login/LoginScene_AnySdk.js` | 同第一条 |

### 为什么这三条 BF SDK 的补丁是连在一起的

`account.index` 的响应**可能在对话框被重新显示之后才回来**。
而 `Views/Mgr._releaseViewByType` 在重新显示对话框时会调用 `updateDialog()`，
于是输入框内容被存储值覆盖。等响应回来再去读输入框，就只剩用户名了。
所以必须：`updateDialog()` 不擦除非空值（补丁 1）+ 提交时先记住凭据（补丁 2）+ 回填时优先用记住的（补丁 3）。

补丁 1 还连着一个更隐蔽的坑：`Profile.UserCfg.setLoginPsw("")` 是**静默不存**的，
所以一旦密码在对话框里被擦成空，它连"存回来"的机会都没有。

## 约定

- 这个补丁层**只登记刻意偏离字节码的行为修复**，不登记重建器的语义修复。
  重建器本身的错应该改 `reconstruct_js.py`（见 [README.md](README.md) 的缺陷清单），
  不能靠补丁层遮盖——那会让"重建产物 = 字节码语义"这个前提失效。
- 新增补丁时必须填 `why` 字段。
- 补丁的锚点应尽量短且唯一；锚点匹配失败是**信号**，不是噪音。
