# 给执行 AI 的任务：完整重建游戏必需的原厂 Native 扩展

你接手的是《三国杀传奇》华为版客户端的**源码重建工程**，工作目录为 `/home/inkbottle/othersrc/android_playground/sgscq-reconstruction`。用户已决定继续使用自己编译的 Cocos2d-x 2.2.6 + SpiderMonkey v22 + JSB，并重建原厂加入的**游戏必需** Native 行为；渠道登录 SDK、广告、支付、统计、崩溃上报、数据收集等与核心游戏无关的功能应移除。最终 APK 不能打包原 APK 的 `.so` 或旧第三方 SDK。

你的任务是**实现并验证**，不是只写分析报告、让 JavaScript 勉强越过异常，或把旧 `.so` 换回去。不要声称能还原原 C++ 源码；目标是依据证据实现与游戏可观察行为兼容的源码。若某项只能部分验证，明确写出未验证范围。

## 0. 先保护已有成果

1. 阅读仓库根目录和相关子目录的 `AGENTS.md`（如果存在），再执行 `git status --short`。当前工作树有大量已有修改和子模块修改；**不得 `git reset --hard`、`git clean`、覆盖他人的改动，或顺手重生成全部 JS**。先记录基线 commit、修改文件、APK 与 `.so` 哈希，把这份清单保存到 `artifacts/native-port/`。
2. 阅读 `ClientProject/README.md`、`Recovered/native_api_inventory.md`、`Recovered/native_api_inventory.csv`、`Recovered/native_api_inventory.json`、`artifacts/native-vendor-inventory.md`、`ClientProject/proj.android/build-apk.sh`、`ClientProject/tools/verify_client_apk.py`。这些文档是线索，可能过时或含推断；以当前文件、原包和实测为准。`artifacts/native-vendor-inventory.md` 曾建议换回旧 `.so`，**本任务的最终路线以用户此处决定为准：自编 `.so`**。
3. 原厂行为参考是 `reference-apks/sgscq-original-patched.apk` 中 `lib/armeabi/libcocos2djs.so`，原始字节码在 `Resources/assets/src_jsc/`、`Resources/assets/data_cn_jsc/`。`ReconstructedJS/` 是近似恢复的源码，不是天然正确的原始源码。不要依赖报告里 `/tmp/origso`、`/tmp/natdiff` 一类临时路径；需要时从仓库内原包重新提取到 `artifacts/native-port/work/` 或另一个可复现路径，并记录 SHA-256。
4. 已有修复必须保留并核验：`ClientProject/Classes/Native/BFButton*`、`SpriteFrameRetention.{h,cpp}`、`sgscq_custom_jsb.cpp`、`ClientProject/proj.android/jni/Android.mk`、CocoStudio `CCArmatureDataManager.cpp` 的空图集路径处理、`Resources/assets/jsb_compat.js`。现在的资源帧保留与自动装载修复已经构建、安装过；设备日志确认若干 atlas 保留成功，但**尚未证明首战和后续所有界面通过**。先把它们当基线，重构时要做回归验证。
5. 保留现有游戏网络和交互：本地服务地址默认 `127.0.0.1:18723`，由 `ClientProject/tools/stage_apk_assets.py` 的 `SGSCQ_RECONSTRUCTION_SERVER_HOST` 控制；XHR 失败自动尝试 3 次，再弹**自适应窗口、只有关闭按钮**的错误提示；右下角“正在加载”动画继续显示。核对这些行为所在的 staging/overlay，不要因重新生成 JS 或调整 Native 桥而丢掉。账号和选服是游戏流程，不能把它们作为“渠道垃圾”一并删除。
6. 构建脚本默认在前后执行 Git 自动备份，脚本当前会提交**整个工作树**。若工作树有其他人的修改，构建时设 `SGSCQ_SKIP_GIT_CHECKPOINT=1`，只提交自己明确核对过的文件；不能借自动提交卷入无关修改。不要修改签名或清除设备应用数据，除非安装确实需要且用户已经授权。

## 1. 用原版建立完整接口账本，先盘点再编码

在 `artifacts/native-port/api-matrix.csv` 和配套说明中，为每个 Native 接口记录：名字、所属类/命名空间、原版符号或反汇编地址、调用它的 JS/Native 位置、原型与重载、参数类型与默认值、返回值、对象所有权、线程与回调、错误/边界行为、是否在实际游戏路径可达、当前实现位置、分类、证据、验证方式和结果。没有证据的字段填 `unknown`，不能猜。

至少覆盖并逐项判定：

- `register_all_xs_sanguosha`、`register_all_xs_sanguosha_manual` 和它们实际注册的全部类/函数。登记 `xs.BFButton`、`xs.BFCardView`、`xs.BFControlSlider`、`xs.BFSortTableWidget`、`xs.BFWebView`、`xs.JsbConnecter` 的构造、继承、工厂、属性、事件；原库导出的 **53 个自定义 JSB wrapper** 逐条对账。不要把“符号导出”误作“游戏真正调用”。
- `Recovered/native_api_inventory.*` 中 **90 个字面量 `JsbConnecter.invoke(类, 方法)` 组合**、**31 个 `cpp2jsb` 回调标签**；再次从当前 836 个 JS、原 `.jsc` 反汇编、旧 `.so` 字符串/符号提取并去重，记录数目差异原因。运行时动态拼出来的类名/方法也要追踪。旧报告特别指出 `Alipay`、`Kefu` 字面量与原库分发表不吻合，不能按名称臆测其真实路由。
- `cc.*`、`ccs.*`、`ccb*`、`WebSocket` 及自定义 `Jsb` / `cpp2jsb` 在游戏中实际使用的接口。检查原厂对标准 Cocos 的修改，特别是 sprite frame 保留/释放、`CCArmatureDataManager`、资源加载/解密、调度器主线程派发、触摸和场景生命周期。区分真实缺口、版本差异、符号可见性差异、模板实例噪声。
- JNI/Java 接口及原库对 `SanguoshaDemo`、`com/bf/xs/Jsb` 的调用，按“游戏必需、仅渠道/遥测、未知”分类。广告/支付类可能通过回调进入游戏 JS；即使删除服务，也要核对关闭入口后不会悬挂等待或卡住流程。

证据收集请按以下顺序操作，避免只看函数名：

1. 先 `mkdir -p artifacts/native-port/work`，再运行 `unzip -p reference-apks/sgscq-original-patched.apk lib/armeabi/libcocos2djs.so > artifacts/native-port/work/oracle-libcocos2djs.so`；用 `sha256sum`、`readelf -Ws`、`nm -D --defined-only`、`c++filt`、`strings -a -t x` 建立可重跑的符号表和字符串表。每次对比都要标出原库与自编库的确切哈希。
2. 在 Ghidra 中查看注册函数、wrapper、vtable、类继承、`JsbConnecter` 分发表和有歧义的 Cocos 核心补丁；保存地址、交叉引用、关键伪代码/汇编摘要。Ghidra 反编译结果也是线索，参数和控制流要对照 ARM 汇编及调用者核验。
3. 用 `Recovered/` 的 `*.js.disasm.txt`、`*.js.structure.md` 和 SpiderMonkey v22 源码核对调用点和栈语义。若重建 JS 与原始字节码冲突，先修 `tools/reconstruct_js.py`，对核心脚本做语义对照，再批量重生成 836 个脚本和报告；把有意保留的本地网络/界面 overlay 与生成物分层保存，重生成后重新核验。**不能为了绕过异常随手改游戏逻辑、补 `TODO_BYTECODE`、伪造原始源码。**
4. 对无法通过静态分析确定的行为，建立小型可重复探针，用原包/旧库作 oracle：同样输入记录返回值、事件顺序、视图状态和错误行为，再在自编库上运行。旧库只允许用于分析和测试，不能流入最终 APK。不能运行 oracle 时，矩阵里明确标记 `static-only`，不要写“已差分验证”。

把每项归入且仅归入以下四类：`GAME_REQUIRED`（游戏功能/渲染/资源/网络/账号所需，必须实现）、`REPLACE_SERVICE`（原渠道实现失效，但游戏所需的接口契约须由本地服务/中立实现接替）、`REMOVE_OPTIONAL`（证明可达路径与返回/回调处理均不影响游戏后，可删除或提供明确的禁用结果）、`UNRESOLVED`（证据不足，继续查；不能默默 no-op）。“统计”“渠道”这样的名字本身不构成 `REMOVE_OPTIONAL` 的证明。

## 2. 按证据实现，而非批量 shim

1. 在 `ClientProject/Classes/Native/` 和必要的引擎源码中实现 `GAME_REQUIRED` 接口，纳入 `Android.mk` 和注册链。优先复用当前源码树里的 Cocos2d-x 2.2.6、SpiderMonkey v22、JSB 约定；缺失生成器或子模块时追溯**匹配版本**的源码/历史提交，记录 commit/hash 和必要补丁。不要以现代 Cocos API 猜测旧行为。
2. 每个 widget 要恢复真实的类继承和可观察交互。`BFCardView` 要验证卡牌数据源、cell 复用、滚动/换将、选中及回调；`BFControlSlider` 要验证值域、滑动触摸、事件；`BFSortTableWidget` 要验证排序、刷新、cell 生命周期及回调；`BFWebView` 只有公告/客服确实使用且不属于废弃入口时才实现，Android Java 侧也要按实际用途实现。`BFButton` 现有实现也要回归验证。创建一个同名空类、返回固定值或只让 JS 不抛异常，均不算完成。
3. JSB 绑定逐项核对 `this`、原型链、`extend`、构造/`create`、重载选择、数值/字符串/对象转换、异常与返回值。特别验证 `CCObject` 的 `retain/release/autorelease`、JS proxy/root、析构、delegate 持有关系，避免切场景、滚动或重复进入页面时悬空/泄漏。异步回调必须转回 Cocos/JS 线程，验证销毁后回调不会访问旧场景。
4. `JsbConnecter` 是分发器，不是一个统一空操作。按矩阵实现资源、文件、配置、设备/屏幕、Trie、登录/选服/联网、必要的更新行为等真实契约。账号可由现有本地服务替换，但参数、返回值、`cpp2jsb` 回调名、顺序和失败路径要与游戏 JS 期待一致。对资源更新应先判断 3704 个资源是否已完整打包、路径与版本检查是否需要它；不能无证据地让更新成功或永远等待。
5. 对 `REMOVE_OPTIONAL`，从 manifest、Java、JNI、C++、资源配置和最终 APK 中清掉 HMS、AnySDK、Umeng、TalkingData、Testin、广告、支付、分享等已废弃依赖及数据上传端点。若游戏 UI 仍探测某接口，可给**明确禁用能力**的最小适配层，并让按钮/流程安全结束；不得伪造支付成功、登录成功或奖励。任何会发设备标识/日志/统计的网络行为都要消除。若某项仍承担游戏必需功能，移入 `REPLACE_SERVICE` 并提供中立实现。
6. 当前 `Resources/assets/jsb_compat.js` 是过渡层。逐个替换其游戏相关 fallback，保留有证据的中立服务适配；每删一段，都要找到对应 Native 实现和回归结果。不要删除 XHR 三次重试、仅关闭按钮错误弹窗、加载动画及其 staging 代码。

## 3. 分阶段推进；每阶段都要留下可复现结果

按依赖顺序做小批量提交，每批在 `artifacts/native-port/progress.md` 记下代码改动、矩阵行、构建命令、测试输入、结果和证据路径：

1. **基线**：从当前可追溯的源码状态构建自编库和 APK，运行现有验证脚本；保留已有未提交改动，记录当前已能到达的登录、选服、主城、剧情、首战位置和现有报错。不要把之前日志的“没有异常”写成整局战斗通过。
2. **核心引擎差异**：资源路径/图集、帧引用计数、骨骼动画、调度器、触摸、生命周期，以及在游戏里可达的 `cc/ccs/ccb/WebSocket` 缺口。每个变化都用针对性的资源或场景验证。
3. **控件和回调**：按实际启动/教程/UI 可达性实现 BF 系列控件与 delegate，再核对 53 个 wrapper、31 个回调。优先处理游戏路径，废弃服务回调另行分类并证明可安全禁用。
4. **原生服务分发**：按 90 个 `invoke` 组合完成实现、替换或删除结论，检查动态分发、错误分支、生命周期。
5. **全量场景回归**：修复发现的根因；若问题出在 JS 恢复器，按第 1 节的原字节码路线修恢复器并重新生成。每轮重新计算接口覆盖和未解列表，直到游戏必需项全部有实现和证据。

每一阶段都要运行能区分“接口存在”与“行为正确”的测试。对纯算法/分发函数测试正常值、空值、非法参数和失败路径；对控件测试触摸、滚动、离屏复用、删除、切场景后回调；对资源测试加载、purge、再次加载和释放后的计数；对网络测试成功、超时、重复失败与恢复。不要用只检查字符串/符号存在的测试替代行为验证。

## 4. 构建、安装和验收门槛

在每个可安装里程碑运行实际构建命令，并保存完整日志与退出码。例如：

```bash
cd /home/inkbottle/othersrc/android_playground/sgscq-reconstruction
cd ClientProject/proj.android
./build_native.sh -j4
SGSCQ_SKIP_GIT_CHECKPOINT=1 ./build-apk.sh
```

其中第二条会再次编译 Native。若工作树已隔离、确认只有自己的修改，才使用脚本默认自动 Git 备份。记录 `apksigner verify`、`verify_client_apk.py`、`sha256sum`、`unzip -l`、`readelf` 的结果。检查 APK 里 836 个恢复 JS、3704 个资源和必要的 CCBI/CocoStudio 文件的数量及路径；这些已知计数是回归基准，如工具真实改了分组，应解释差异。检查 APK 内只有**自己编译**的目标 `.so`，与本次构建输出哈希一致；不能含旧库、旧 SDK 的 `.so`/`.jar`/类/初始化器/权限或遥测端点。静态扫描 `TODO_BYTECODE`、缺失 `require`/脚本路径、错误注册与未实现占位。

设备在线时，优先 `adb install -r` 保留数据，打开 logcat 记录进程 PID、包名和时间戳，不要只抓 `FATAL EXCEPTION`。从启动链按顺序验证：真实登录画面中间的**服务器选择按钮**、选服和本地服务请求、主城、剧情 `99000201`、教程首战 `00301`、双方放技能、死亡与换将后人物卡面正确、战斗结算与返回、再次进入；另验证卡牌滑动/排序界面、公告入口（若保留）、WebSocket/网络错误弹窗和加载动画。逐项记录操作、预期、实际、关联日志。关注 `Cann't find CCSpriteFrame`、`Invalid spriteFrameName`、`_sprite is null`、JS 异常、黑屏/卡死、回调未到达、异常外联和场景切换后的崩溃。仅启动到登录或只看到画面，**不算**首战通过。用户当前要求不要截图浪费 token；用日志、可重复操作和设备目视结果验证界面。

如果设备不在线，完成静态、单元、构建和 APK 检查，注明设备验证 `BLOCKED: no adb device`，不能写“安装通过”或“游戏可玩”。待设备可用后继续这一步。原厂参考包与自编 APK 能在同等条件下运行时，对关键控件/接口做输入输出、事件顺序和状态差分；原包无法运行时，不要把自编库的测试冒充差分验证。

验收必须同时满足：

- API 矩阵覆盖全部已知 53 wrapper、31 回调、90 分发组合，并说明重新扫描后的增减；`GAME_REQUIRED` / `REPLACE_SERVICE` 无未实现或未验证关键路径。`REMOVE_OPTIONAL` 每项有调用路径与禁用效果证据；`UNRESOLVED` 不得被计入完成。
- 关键游戏路径能够实际操作到教程首战结算并回到可交互界面，人物卡片/技能/换将显示正确；资源、触摸、JSB 生命周期和网络错误路径无已知回归。更广功能（例如未走到的后期副本）若未测，单独列为未测，不宣称全游戏无误。
- 用当前源码重新构建成功，APK 验证通过，包内旧 `.so`、旧 SDK 与无关数据收集为零；保留本地网络、三次重试、自适应且仅有关闭按钮的错误窗、右下角加载动画。

## 5. 输出与沟通纪律

最终提交源码、必要构建脚本及 `artifacts/native-port/` 下的接口矩阵、原/新库差分证据、按模块测试报告、构建与设备日志摘要、APK 哈希、残留问题清单。`progress.md` 写清每个阶段的“已实现 / 已验证 / 未验证 / 阻塞”，附可复跑命令。先给用户可运行的里程碑，不要长期只输出文字。遇到证据不足，先列出要区分的两个具体假设和最小实验；实在无法验证再明确提问。绝不把推断、接口存在、静态语法通过或无崩溃日志表述为“行为等价”。

若需要下载工具/源码，优先用用户提供的高速代理 `arch-netns-shell p8`（可能有 `shell8_gpt` alias）；把新增安装的软件、版本、来源与用途写入报告。不要安装同功能工具只为重复扫描。工作结束前检查 `git diff --check`、本次变更范围和工作树状态，只提交自己负责的文件，报告 commit 与尚未提交的外部修改。
