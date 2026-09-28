# 验证方法与回归基线

## 核心原则：语法检查是很弱的判据

`node --check` 只能证明产物是良构 JS。而重建器这类缺陷的**全部特征**恰恰是
「语法完全合法、运行时静默算错」——base64 那个 bug 就安然通过了 836/836 的语法检查。

所以验证必须分两层：

1. **规模层**：覆盖率和语法检查，用来发现"改崩了"
2. **语义层**：拿一个有**已知正确答案**的纯函数当真值探针，实际跑出结果比对

只有第二层能抓住本档案记录的这类缺陷。

## 回归基线

以下是当前（全部修复后）应守住的值。任何一项偏离都说明有回归：

| 指标 | 基线值 | 检查方式 |
|---|---|---|
| 重建模块数 | 836 / 836 | `reconstruct_js.py` 输出 |
| 加权操作码翻译率 | 100.00% | `reconstruct_js.py` 输出 |
| `node --check` 通过 | 836 / 836 | 见下方脚本 |
| 依赖闭包 | 815 / 815 | `validate_reconstructed.py` |
| 需人工复核模块 | 83 | `validate_reconstructed.py` |
| 凭据往返 | 全部 OK | `check_credential_roundtrip.js` |
| RC4 与参考实现不一致 | 0 / 4 | 同上 |
| 表达式位置 `X++` | **25**（11 文件） | 见下方金丝雀 |
| `(X = (+X ± 1))` 残存 | 105（全为前缀等价形态） | 同上 |
| 手工补丁 | 4 处于已应用态 | `source_patches.py --check` |

## 执行命令

```sh
cd sgscq-reconstruction

# 1. 重建（会自动重贴 tools/source_patches.py 里的客户端补丁）
python3 tools/reconstruct_js.py

# 2. 覆盖率 / 依赖闭包 / 待复核清单
python3 tools/validate_reconstructed.py

# 3. 补丁层是否处于已应用态（应为 0 applied, 4 already, 0 problem）
python3 tools/source_patches.py --check

# 4. 全树语法检查
pass=0; fail=0
for f in $(find ReconstructedJS -name '*.js'); do
  if node --check "$f" >/dev/null 2>&1; then pass=$((pass+1)); else fail=$((fail+1)); fi
done
echo "pass=$pass fail=$fail"     # 期望 836/836

# 5. 语义探针
node tools/check_credential_roundtrip.js
```

## 语义探针：`check_credential_roundtrip.js`

这个测试是**真值探针**的范例，它把重建出的客户端代码真的跑起来，与参考实现比对：

| 检查项 | 参考物 |
|---|---|
| `Base64WithUtf8` 自身往返 | 恒等式 `decode(encode(x)) == x` |
| `_utf8_encode`/`_utf8_decode` | 256 个单字节字符全覆盖往返 |
| 完整口令往返 | `setLoginPsw` → 存储 → `getLoginPsw` |
| `rc4` | 独立的参考 RC4 实现 |

它之所以有效，是因为 base64 和 RC4 都有**唯一正确的答案**，不需要人去读代码判断。
**新增语义修复时，应优先补这种探针，而不是只跑语法检查。**

## 金丝雀指标：为什么要数 `++`

`表达式位置 X++` 的计数是个便宜且灵敏的哨兵。

这条缺陷的本质是"后缀自增的**值语义**被丢掉"，症状就是表达式位置的自增数量归零、
`(X = (+X + 1))` 数量暴涨。修复前这两个数字是 **0** 和 **1102**，修复后是 **25** 和 **105**。

如果哪天表达式位置的 `X++` 又回到 0，说明 `_fold_postfix_incdec` 的折叠链断了
（例如上游某个 opcode 的处理器被改动，导致栈上不再出现"赋值下一槽恰为 `+T`"的特征）。
**这是一个不需要理解全部语义就能发现回归的信号。**

```sh
# 金丝雀
grep -rohE '[A-Za-z_$][A-Za-z0-9_$]*\+\+' ReconstructedJS --include='*.js' | wc -l   # 应 > 1000（含语句形式）
grep -rohE '\([A-Za-z_$][A-Za-z0-9_$]* = \(\+[A-Za-z_$][A-Za-z0-9_$]* \+ 1\)\)' ReconstructedJS --include='*.js' | wc -l  # 应 ≈ 105
```

## 对拍：回到字节码

产物可疑时，唯一可靠的判据是**回到反汇编**。每个重建文件都配有一份
`.recovery.json`，里面有该文件的 `unresolvedOpcodes`、`stackUnderflows`、
`stackMergeConflicts` 等指标，可以用来定位"哪一段重建得不可靠"。

反汇编里保留了完整的压栈序列（见 [01-operand-order.md](01-operand-order.md) 的对照表格式），
所以「重建出的表达式是否与字节码的压栈顺序一致」是**可以逐条验证的**，
不需要运行客户端。

## 端到端：必须落到 APK

源码改对不等于问题修好。完整链路是：

```sh
python3 ClientProject/tools/stage_reconstructed_sources.py   # 暂存到客户端资产
bash ClientProject/proj.android/build-apk.sh                 # 构建并签名
```

构建脚本自带校验，会报告 APK 内的资源与脚本数量。构建后应直接在 APK 内确认修复，
而不是只看源文件：

```sh
cd ClientProject/proj.android
unzip -o -q sgscq-rebuilt.apk 'assets/*' -d /tmp/apkcheck
grep -n 'charCodeAt(i++)' /tmp/apkcheck/assets/src_jsc/Utils/Base64.js
grep -n 'delete this.index\[' /tmp/apkcheck/assets/src_jsc/Profile/GameData/Index.js
```
