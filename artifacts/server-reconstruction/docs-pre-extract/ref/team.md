# 协议参考：编队（team.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **6** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`team.addTeamInfo`](#teamaddTeamInfo) | `?do=team.addTeamInfo` | `requestUnlockOneTeam` | 1 |
| [`team.chgBattleTeam`](#teamchgBattleTeam) | `/index.php?do=team.chgBattleTeam` | `requestChangeTeam` | 2 |
| [`team.chgTeam`](#teamchgTeam) | `/index.php?do=team.chgTeam` | `requestQueueTeam` | 1 |
| [`team.getMostTeamInfo`](#teamgetMostTeamInfo) | `?do=team.getMostTeamInfo` | `requestMultiLineUpInfor` | 1 |
| [`team.loadTeamInfo`](#teamloadTeamInfo) | `?do=team.loadTeamInfo` | `requestLoadOneTeamInfor` | 1 |
| [`team.saveTeamInfo`](#teamsaveTeamInfo) | `?do=team.saveTeamInfo` | `requestSaveOneTeamInfor` | 1 |

### team.addTeamInfo

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=team.addTeamInfo` | `ReconstructedJS/src_jsc/Cfg/Url.js:238` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:238` |
| 客户端封装 | `xs.Tools.Net.requestUnlockOneTeam` [`ReconstructedJS/src_jsc/Tools/Net.js:2445`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/MultiLineUpView.js:241` |
| `team_id` | `Views/MultiLineUpView.js:241` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `team_info` | `Views/MultiLineUpView.js:241` |
| `team_info.length` | `Views/MultiLineUpView.js:241` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:238` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/MultiLineUpView.js:241` | `rightCB` | `user_id`, `team_id` | `inline` |

### team.chgBattleTeam

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=team.chgBattleTeam` | `ReconstructedJS/src_jsc/Cfg/Url.js:27` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:27` |
| 客户端封装 | `xs.Tools.Net.requestChangeTeam` [`ReconstructedJS/src_jsc/Tools/Net.js:360`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `team_id` | `Scene/TeamBuild/TeamBuildScene.js:1170` |
| `team_position` | `Scene/TeamBuild/TeamBuildScene.js:1172` |
| `general_id` | `Scene/TeamBuild/TeamBuildScene.js:1174` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:27` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/TeamBuild/TeamBuildScene.js:1176` | `Net_ReplaceTeamGeneral` | `team_id`, `team_position`, `general_id` | `this.Net_ReplaceTeamGeneralSuccessCallback` |
| `Scene/TeamBuild/TeamBuildScene_V2.js:905` | `Net_ReplaceTeamGeneral` | `team_id`, `team_position`, `general_id` | `this.Net_ReplaceTeamGeneralSuccessCallback` |

### team.chgTeam

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=team.chgTeam` | `ReconstructedJS/src_jsc/Cfg/Url.js:26` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:26` |
| 客户端封装 | `xs.Tools.Net.requestQueueTeam` [`ReconstructedJS/src_jsc/Tools/Net.js:352`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `team_id` | `Views/QueueTeamView.js:484` |
| `team` | `Views/QueueTeamView.js:486` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:26` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/QueueTeamView.js:496` | `confirmCallback` | `team_id`, `team` | `this.QueueTeamSucceccCallback` |

### team.getMostTeamInfo

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=team.getMostTeamInfo` | `ReconstructedJS/src_jsc/Cfg/Url.js:237` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:237` |
| 客户端封装 | `xs.Tools.Net.requestMultiLineUpInfor` [`ReconstructedJS/src_jsc/Tools/Net.js:2437`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/MultiLineUpView.js:63` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `team_info` | `Views/MultiLineUpView.js:63` |
| `team_info.length` | `Views/MultiLineUpView.js:63` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:237` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/MultiLineUpView.js:63` | `requestTeamsInfor` | `user_id` | `inline` |

### team.loadTeamInfo

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=team.loadTeamInfo` | `ReconstructedJS/src_jsc/Cfg/Url.js:240` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:240` |
| 客户端封装 | `xs.Tools.Net.requestLoadOneTeamInfor` [`ReconstructedJS/src_jsc/Tools/Net.js:2461`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/ShowTeamView.js:220` |
| `team_id` | `Views/ShowTeamView.js:220` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `return_info.this_team_info.team` | `Views/ShowTeamView.js:220` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:240` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/ShowTeamView.js:220` | `useTeamButtonCallback` | `user_id`, `team_id` | `inline` |

### team.saveTeamInfo

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=team.saveTeamInfo` | `ReconstructedJS/src_jsc/Cfg/Url.js:239` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:239` |
| 客户端封装 | `xs.Tools.Net.requestSaveOneTeamInfor` [`ReconstructedJS/src_jsc/Tools/Net.js:2453`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/ShowTeamView.js:171` |
| `team_id` | `Views/ShowTeamView.js:171` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `team_info.team` | `Views/ShowTeamView.js:171` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:239` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/ShowTeamView.js:171` | `rightCB` | `user_id`, `team_id` | `inline` |
