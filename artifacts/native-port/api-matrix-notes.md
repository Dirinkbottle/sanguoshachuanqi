# Native API 矩阵说明

## 当前生成结果

`api-matrix.csv` 由 `tools/generate_native_port_matrix.py` 从当前 `Recovered/native_api_inventory.json` 生成。源清单由以下命令重扫：

```sh
python3 tools/extract_native_api_inventory.py --oracle-so artifacts/native-port/work/oracle-libcocos2djs.so
python3 tools/generate_native_port_matrix.py
```

本次重扫结果是 836 个 JS 输入、670 条成员链候选、90 个字面量 `JsbConnecter.invoke` 组合、31 个 `cpp2jsb` 标签、53 个原库自定义 wrapper 函数、269 个原库 JSB 注册类型、7 个注册函数和 35 个原生桥导出符号，共 1,155 行矩阵记录（不含表头）。

| 矩阵类别 | 条数 | 当前证据 |
|---|---:|---|
| `js_member_candidate` | 670 | 重建 JS 中的成员链及文件行号；属于静态候选 |
| `JsbConnecter.invoke` | 90 | 当前源码中的字面量类名/方法名及调用位置 |
| `cpp2jsb_callback` | 31 | `cpp2jsb.js` 中标签与 case 行号；原生触发路径待核对 |
| `oracle_custom_wrapper` | 53 | 从原库动态符号提取的 wrapper 名；地址与行为待逐项核对 |
| `oracle_registered_type` | 269 | 原库 JSB 注册字符串；不表示游戏会实例化该类型 |
| `oracle_registration_function` | 7 | 原库导出的注册入口 |
| `oracle_native_bridge_symbol` | 35 | 原库桥接符号表 |

矩阵保守地将尚未核实的原型、参数、默认值、返回值、所有权、线程、异常和运行路径标为 `unknown`，并将分类设为 `UNRESOLVED`。这份首轮矩阵是证据索引，不是“已兼容”验收结论。动态拼接调用和原始字节码调用形态仍需另行检查；重建 JS 行号不能单独证明游戏实际会走到该路径。

## 用户确定的范围

- `GAME_REQUIRED` 与 `REPLACE_SERVICE` 保留游戏流程。尤其保留本地账号注册/登录、服务器选择、账号服/游戏服请求、资源加载、战斗和 UI 交互。
- 不实现或打包渠道登录 SDK、广告、支付、分享、推送、统计、崩溃上报、设备广告标识和无关渠道归因。替代服务必须返回明确失败/禁用结果；不能伪造登录、支付或奖励成功。
- 游戏内聊天的 `channel` 是聊天频道，不是渠道 SDK 标识；需保留。项目/资源版本字段只有在启动与本地服务协议验证通过后才可删改。
- `Cfg.getChannelId/getChannelName`、`data_acquire`、`getOpenUDID/getIDFA/getMacAddress` 等待与本地服务字段消费点核对；不得仅凭“渠道”或“统计”字样推断其可删除。

## 去噪方法

原库与自建库的符号差异会另外保存原始 `readelf`/`nm`/`strings` 输出，并按 Cocos 2.2.6 源码、重建 JS 调用点、命名空间及 ABI/模板/内联/第三方库版本差异分类。`api-matrix.csv` 不将普通符号差直接当作缺口；最终的 API 完成状态以逐项语义验证为准。
