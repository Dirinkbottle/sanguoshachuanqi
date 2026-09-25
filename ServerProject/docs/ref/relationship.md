# 协议参考：社交关系（relationship.*）

> 本页由 `tools/build_protocol_docs.py` 从 `protocol-inventory.json` 生成，后者由 `tools/extract_protocol.py` 从 `ReconstructedJS/src_jsc` 静态提取。
> 每一行字段都带 `文件:行号` 证据；没有证据的内容不会出现在这里。原版运营服务器已停服，**不存在任何原服抓包**，本页不包含原服报文。


本域共 **8** 个动作。

| 动作 | 路径 | 封装 | 调用点 |
|---|---|---|---|
| [`relationship.delUserRelationship`](#relationshipdelUserRelationship) | `/index.php?do=relationship.delUserRelationship` | `requestDeleteFriend` | 1 |
| [`relationship.fight`](#relationshipfight) | `?do=relationship.fight` | `requestFriendFight` | 1 |
| [`relationship.replyRequest`](#relationshipreplyRequest) | `/index.php?do=relationship.replyRequest` | `requestFriendApply` | 4 |
| [`relationship.requestFriend`](#relationshiprequestFriend) | `/index.php?do=relationship.requestFriend` | `requestMakeFriend` | 1 |
| [`relationship.searchUser`](#relationshipsearchUser) | `/index.php?do=relationship.searchUser` | `requestSearchUser` | 1 |
| [`relationship.userEnemysInfo`](#relationshipuserEnemysInfo) | `/index.php?do=relationship.userEnemysInfo` | `requestFoes` | 2 |
| [`relationship.userFriendsInfo`](#relationshipuserFriendsInfo) | `/index.php?do=relationship.userFriendsInfo` | `requestFriends` | 2 |
| [`relationship.userMakeFriendsInfo`](#relationshipuserMakeFriendsInfo) | `/index.php?do=relationship.userMakeFriendsInfo` | `requestQuasiFriends` | 3 |

### relationship.delUserRelationship

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=relationship.delUserRelationship` | `ReconstructedJS/src_jsc/Cfg/Url.js:118` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:118` |
| 客户端封装 | `xs.Tools.Net.requestDeleteFriend` [`ReconstructedJS/src_jsc/Tools/Net.js:1260`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `other_id` | `Views/Dialog/FriendOperationDialog.js:86` |
| `type` | `Views/Dialog/FriendOperationDialog.js:86` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:118` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Dialog/FriendOperationDialog.js:86` | `setBtnCallBack` | `other_id`, `type` | `this.onDeleteFriendCb` |

### relationship.fight

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `?do=relationship.fight` | `ReconstructedJS/src_jsc/Cfg/Url.js:160` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:160` |
| 客户端封装 | `xs.Tools.Net.requestFriendFight` [`ReconstructedJS/src_jsc/Tools/Net.js:1847`] | |
| 响应交给的模型 | `xs.Models.FightInfo.create` | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `user_id` | `Views/Table/Cell/SocialTableViewCell.js:143` |
| `player_id` | `Views/Table/Cell/SocialTableViewCell.js:143` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

> 响应整体（或部分）交给 `xs.Models.FightInfo.create` 解析，其字段表见 [data-model.md](../data-model.md)。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:160` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Table/Cell/SocialTableViewCell.js:143` | `onFightBtnClick` | `user_id`, `player_id` | `inline` |

### relationship.replyRequest

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=relationship.replyRequest` | `ReconstructedJS/src_jsc/Cfg/Url.js:111` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:111` |
| 客户端封装 | `xs.Tools.Net.requestFriendApply` [`ReconstructedJS/src_jsc/Tools/Net.js:1212`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `other_id` | `Views/Table/Cell/MailTableViewCell.js:166` |
| `type` | `Views/Table/Cell/MailTableViewCell.js:166` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:111` | `Cfg.Url` |

**调用点**（4）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Table/Cell/MailTableViewCell.js:166` | `updateCcbForFriend` | `other_id`, `type` | `inline` |
| `Views/Table/Cell/MailTableViewCell.js:178` | `updateCcbForFriend` | `other_id`, `type` | `inline` |
| `Scene/Mail/MailView.js:65` | `onBtnClick` | `other_id`, `type` | `this.onFriendApplyResponse` |
| `Scene/Mail/MailView.js:69` | `onBtnClick` | `other_id`, `type` | `this.onFriendApplyResponse` |

### relationship.requestFriend

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=relationship.requestFriend` | `ReconstructedJS/src_jsc/Cfg/Url.js:117` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:117` |
| 客户端封装 | `xs.Tools.Net.requestMakeFriend` [`ReconstructedJS/src_jsc/Tools/Net.js:1252`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `other_id` | `Views/Table/Cell/SocialTableViewCell.js:111` |

**响应字段**：调用点没有直接读取响应根字段；状态经由 cmn 落地。

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:117` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Views/Table/Cell/SocialTableViewCell.js:111` | `onBtnClick` | `other_id` | `inline` |

### relationship.searchUser

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=relationship.searchUser` | `ReconstructedJS/src_jsc/Cfg/Url.js:119` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:119` |
| 客户端封装 | `xs.Tools.Net.requestSearchUser` [`ReconstructedJS/src_jsc/Tools/Net.js:1268`] | |

**请求字段**

| 字段 | 证据 |
|---|---|
| `search_word` | `Scene/Social/SocialView.js:245` |
| `limit` | `Scene/Social/SocialView.js:245` |
| `page` | `Scene/Social/SocialView.js:245` |
| `type` | `Scene/Social/SocialView.js:245` |

**响应字段**

| 字段 | 证据 |
|---|---|
| `return_info.search_user` | `Scene/Social/SocialView.js:245` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:119` | `Cfg.Url` |

**调用点**（1）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Social/SocialView.js:245` | `onSearchCallBack` | `search_word`, `limit`, `page`, `type` | `this.onSearchResponse` |

### relationship.userEnemysInfo

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=relationship.userEnemysInfo` | `ReconstructedJS/src_jsc/Cfg/Url.js:116` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:116` |
| 客户端封装 | `xs.Tools.Net.requestFoes` [`ReconstructedJS/src_jsc/Tools/Net.js:1244`] | |

**请求字段**：该封装无显式字段（调用点：显式发送空对象 {}）。实际仍会带上公共字段。

**响应字段**

| 字段 | 证据 |
|---|---|
| `length` | `Scene/Social/SocialView.js:115` |
| `Clone` | `Scene/Social/SocialView.js:115` |
| `return_info.user_make_friends` | `Scene/Social/SocialView.js:115` |
| `return_info.friends` | `Scene/Social/SocialView.js:115` |
| `return_info.enemys` | `Scene/Social/SocialView.js:115` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:116` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Social/SocialView.js:115` | `onEnter` | 显式发送空对象 {} | `this.onResponse` |
| `Scene/Social/SocialView.js:329` | `updateSocial` | 显式发送空对象 {} | `this.onResponse` |

### relationship.userFriendsInfo

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=relationship.userFriendsInfo` | `ReconstructedJS/src_jsc/Cfg/Url.js:115` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:115` |
| 客户端封装 | `xs.Tools.Net.requestFriends` [`ReconstructedJS/src_jsc/Tools/Net.js:1236`] | |

**请求字段**：该封装无显式字段（调用点：显式发送空对象 {}）。实际仍会带上公共字段。

**响应字段**

| 字段 | 证据 |
|---|---|
| `length` | `Scene/Social/SocialView.js:109` |
| `Clone` | `Scene/Social/SocialView.js:109` |
| `return_info.user_make_friends` | `Scene/Social/SocialView.js:109` |
| `return_info.friends` | `Scene/Social/SocialView.js:109` |
| `return_info.enemys` | `Scene/Social/SocialView.js:109` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:115` | `Cfg.Url` |

**调用点**（2）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Social/SocialView.js:109` | `onEnter` | 显式发送空对象 {} | `this.onResponse` |
| `Scene/Social/SocialView.js:325` | `updateSocial` | 显式发送空对象 {} | `this.onResponse` |

### relationship.userMakeFriendsInfo

| 项 | 值 | 证据 |
|---|---|---|
| 相对路径 | `/index.php?do=relationship.userMakeFriendsInfo` | `ReconstructedJS/src_jsc/Cfg/Url.js:114` |
| 请求构造 | 不在 `Cfg/Url.js`，由代码内联拼接完整 URL | `ReconstructedJS/src_jsc/Cfg/Url.js:114` |
| 客户端封装 | `xs.Tools.Net.requestQuasiFriends` [`ReconstructedJS/src_jsc/Tools/Net.js:1228`] | |

**请求字段**：该封装无显式字段（调用点：显式发送空对象 {}）。实际仍会带上公共字段。

**响应字段**

| 字段 | 证据 |
|---|---|
| `length` | `Scene/Social/SocialView.js:101` |
| `Clone` | `Scene/Social/SocialView.js:101` |
| `return_info.user_make_friends` | `Scene/Social/SocialView.js:101` |
| `return_info.friends` | `Scene/Social/SocialView.js:101` |
| `return_info.enemys` | `Scene/Social/SocialView.js:101` |

**URL 字面量出现位置**

| 位置 | 所在函数 |
|---|---|
| `Cfg/Url.js:114` | `Cfg.Url` |

**调用点**（3）

| 调用位置 | 所在函数 | 显式请求字段 | 响应处理 |
|---|---|---|---|
| `Scene/Social/SocialView.js:101` | `onEnter` | 显式发送空对象 {} | `this.onResponse` |
| `Scene/Social/SocialView.js:231` | `onSearchCallBack` | 显式发送空对象 {} | `this.onResponse` |
| `Scene/Social/SocialView.js:320` | `updateSocial` | 显式发送空对象 {} | `this.onResponse` |
