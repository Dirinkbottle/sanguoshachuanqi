# 三国杀传奇客户端脚本恢复

## 已恢复内容

对 APK 中的 836 个 SpiderMonkey XDR 文件使用与其版本匹配的调试引擎完成了解码：`src_jsc` 781 个，`data_cn_jsc` 55 个。输出保留了两棵原目录树，包括 `Models`、`Views`、`Scene`、`Core`、`Cfg`。

| 路径 | 内容 |
|---|---|
| `Resources/assets/` | APK 资源原样提取；`.jsc` 保留原件 |
| `Recovered/src_jsc/` | 游戏脚本的逐文件操作码反汇编和函数导航大纲 |
| `Recovered/data_cn_jsc/` | 配置脚本的逐文件操作码反汇编和函数导航大纲 |
| `Recovered/recovery_status.csv` | 每个输入的解码结果、操作码、函数及嵌套脚本统计 |
| `Recovered/dependencies.csv` | 字节码字符串中可解析到包内脚本的依赖边 |
| `Recovered/load_order.md` | 从入口及 `headers.js` 字节码恢复的静态加载顺序 |
| `Recovered/unreferenced_scripts.csv` | 未到达静态入口遍历的脚本（可能动态加载或仅供特定分支使用） |
| `Recovered/resource_references.csv` | 脚本字节码引用到资源树的路径 |
| `Recovered/unresolved_module_literals.csv` | 4 个未能对应到脚本或资源文件的路径字面量 |
| `metadata/scripts.csv` / `scripts.json` | 原文件路径、散列、XDR 标记和嵌入源路径 |
| `metadata/resource_map.csv` | 资源路径、大小和散列 |

每个原脚本对应两份导航产物。例如 `Views/Dialog/Achievement.jsc` 对应 `Views/Dialog/Achievement.js.disasm.txt` 和 `Views/Dialog/Achievement.js.structure.md`。反汇编包含指令、行号、字符串、常量和嵌套函数；结构文件列出保留下来的函数名与源行号。

本次处理统计：836 个文件全部通过 XDR 解码，共展开 12,787 个脚本体、2,164,876 条操作码和 11,951 个嵌套函数条目。SpiderMonkey v22 的 XDR 常量与 APK 文件头 `0xb973c051` 匹配；对应常量见 [官方 v22 `Xdr.h`](https://github.com/cocos2d/Spidermonkey/blob/v22/js/src/vm/Xdr.h)。

## 恢复边界

产物是基本可读、保留原结构的**字节码反汇编与函数大纲**，不能当作可直接运行的 `.js` 原始源码。APK 的 XDR 脚本没有保留源文本；匹配版引擎的源码 API 也将这些函数标记为 `[sourceless code]`。所以原注释、空白、局部变量的全部语法细节无法从包内数据精确取回。当前产物保留了静态分析可恢复的信息，不会把猜测代码伪装成原源码。

加载顺序来自字节码中的路径字面量。`load_order.md` 按首次出现顺序遍历入口依赖，并跟进启动函数 `main_game`；`useObfuscate`、发行配置、地区和测试标记会改变实际分支。图中边只表示字节码中有路径字面量指向包内脚本，不代表所有条件分支都会执行。

`Cfg/headers.js` 的 50 个服务端计划配置和 3 个美术配置路径由地区与发行标记拼接。另有两个计划配置 `cfg_evolution_total_buff`、`sgs_upgrade_guide_conf` 未出现在该静态数组中，但仍已完整解码并保留在树中。

## 重跑

本次使用的 `tools/jsc_disasm` 可直接运行。旧版 Python、匹配版 SpiderMonkey、之前下载的 Cocos2d-JS 分支及构建产物都已收进 `toolchain/`，细节见 [工具链说明](toolchain/README.md)。如需重建解码器，运行：

```sh
python3 sgscq-reconstruction/tools/recover_scripts.py --decoder \
  sgscq-reconstruction/tools/jsc_disasm --jobs 8
python3 sgscq-reconstruction/tools/analyze_recovered.py
python3 sgscq-reconstruction/tools/build_outlines.py
```

`tools/jsc_disasm.cpp` 是解码器源码。`tools/build_disassembler.sh` 默认使用项目内匹配的 SpiderMonkey v22 **debug** 构建，也可用 `SPIDERMONKEY_SRC`、`SPIDERMONKEY_BUILD` 指定其他路径。本次没有把 Python 2 安装到系统。
