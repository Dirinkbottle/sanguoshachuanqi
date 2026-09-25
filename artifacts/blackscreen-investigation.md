# 剧情推进黑屏调查

调查范围：纯静态（`Recovered/` 字节码为基准）+ 仓库里已有的两次设备 logcat 抓取。
本次未改动任何仓库文件（除本文件）。

---

## 结论

**黑屏不是 `SceneMgr.changeSceneByName` 被锁住静默 return 造成的。** 客户端确实完成了
`00201 → 00301` 的推进并**成功创建、进入了 `FightScene`**；黑屏发生在 FightScene 内部：
`FightSceneLayer.init()` 在 `initViews` 阶段抛异常，被它**自己的 `try/catch` 吞掉**，于是
`_initNC()` 没执行、`this.m_fnc` 保持 `undefined`，紧接着 `onEnterTransitionDidFinish` 抛
`TypeError: this.getFightNotifyCenter(...) is undefined`（未捕获），`step0` 永远停在
`Step_Init`，每帧只打一次 `_step0 error` 断言——画面里什么都没有，就是黑屏。

触发那条异常的具体环节：`BaseIcon._getLazyInitBgView` 把 `this.bgView === undefined` 传给
`xs.Utils.Node.attachNodes`，`attachNodes` 里的 `parentNode.addChild(undefined)` 在
`Utils/Node.js:377` 抛错。而 `this.bgView = this._createHeadView(model)` 之所以是
`undefined`，唯一能"返回 undefined 却不抛异常"的一环是
`Models/General.prototype.createHeadView_General_Equ_Skill`——**正是旧版重建器标记为
`TODO_BYTECODE detached_function_object=63 name=createHeadView_General_Equ_Skill` 的那个函数**
（见 `/tmp/sgscq-assets-stage-check/src_jsc/Models/General.js:5`，14:10 版重建产物）。
当前 `ReconstructedJS/` 里它已经正确挂在 prototype 上并带 `return`。

---

## 证据链

1. **场景切换没有失败（推翻首要假设）**
   - `Recovered/src_jsc/Scene/SceneMgr.js.disasm.txt:1660-1682`：`isLocked()` → `stricteq true`
     → `ifeq 55`；相等才落到 pc 24-54 的 `xs.log("changeSceneByName ignore"); undefined; return`。
     重建结果 `ReconstructedJS/src_jsc/Scene/SceneMgr.js:384-393` **与字节码一致**，不是重建器加的。
   - `Recovered/.../SceneMgr.js.disasm.txt:2427-2433`：pc 01985 的 `unlock()` 无任何 try/finally 保护。
     即：只要 55~1985 之间抛异常，`m_isLock` 就永久为 true，之后每次切场景都会静默 return
     ——这是**真实存在的隐患**，但本次没发生。
   - 全部 3 份设备日志里 `changeSceneByName ignore` 出现次数 = 0。
   - `artifacts/native-recovery/sgscq-logcat-10s.log:2974`（22:25:38.873）：
     `JS: xs utils level require:Scene/Fight/FightScene.js` —— FightScene 确实被加载了。

2. **剧情步骤表与分发（`00201 → 00301`）**
   - `ReconstructedJS/src_jsc/Cfg/Guide.js:29-34`：
     `"00201": { type: Constant_GuideStepType_Story, nextStep: "00301", data: { storyId: "99000201" } }`
   - `ReconstructedJS/src_jsc/Cfg/Guide.js:35`：
     `"00301": { type: Constant_GuideStepType_NewPlayerFight, nextStep: "00302", data: {} }`
   - `ReconstructedJS/src_jsc/Guide/GuideStepPlugin.js:194-255`（Story 插件）→ 播完剧情回调里
     `endStepBySequence([... "00201" ...])`；`ReconstructedJS/src_jsc/Guide/GuideMgr.js:509-532`
     → `_end("00201")` 命中 → `nextStep()`（`GuideMgr.js:126-148`）→ `setGuideStep("00301")` → `start()`
     （`GuideMgr.js:463-489`）。
   - `ReconstructedJS/src_jsc/Guide/GuideStepPlugin.js:271-290`（FreshFight 插件）：
     先 `showHollowOutLayer(rect 0,0,0,0)`（黑屏遮罩就是这里盖上的），再
     `xs.Tools.Scene.gotoNewPlayerFight(cb)`。
   - `ReconstructedJS/src_jsc/Tools/Scene.js:144-156` → `:354-405` → `changeSceneByName("FightScene", {...})`。
   - 数据齐备：`ReconstructedJS/data_cn_jsc/plan/sgs_dungeon_plot_dialog.js:23728` 有 `"99000201"`；
     `:23486` 有 `"98000401"`（`gotoNewPlayerFight` 读的 Plot_Dialog 记录）。

3. **设备日志（真实抓取，仓库内已有两份）**
   - `artifacts/native-recovery/sgscq-logcat-10s.log:2825`（22:25:11）
     `require:Scene/Main/MainMenuScene.js` → 进主城；`:2974`（22:25:38.873）进 FightScene。
     两条之间 27 秒 = 玩家点完 99000201 剧情。
   - 同文件 `:3514`：`JS: assert msg:attachNodes,need childNode`
   - 同文件 `:3605-3608`：被 dump 出来的部署版 `_createHeadView = function (model) { return model.createHeadView_General_Equ_Skill(); }`
     （与当前 `Views/Icon/IconStyleA.js:33-36` 逐字相同）
   - 同文件 `:4356-4365`：被 dump 出来的部署版 `_getLazyInitBgView`，里面只有一处
     `attachNodes(this, this.bgView, { base: "c", offset: { x: -1, y: 2 } })`
     （与当前 `Views/Icon/BaseIcon.js:134-143` 逐字相同）
   - 同文件 `:5027-5030`：异常对象本体
     `fileName = "assets/src_jsc/Utils/Node.js", lineNumber = 377, columnNumber = 8`
     —— 正好是当前 `ReconstructedJS/src_jsc/Utils/Node.js:377` `parentNode.addChild(childNode);`
   - 同文件 dump 出的 icon 实例状态：`m_id = 121011`、`idxView = null`、**`bgView = undefined`**
     —— 说明 `_reload_id` 走到了 `_getLazyInitBgView`，赋值后仍是 undefined。
   - 同文件 `:5133`（22:25:39.564）：`assets/src_jsc/Scene/Fight/FightScene.js:2879:TypeError: this.getFightNotifyCenter(...) is undefined`
     —— 当前 `ReconstructedJS/src_jsc/Scene/Fight/FightScene.js:2879` 正是
     `this.getFightNotifyCenter().addObserver(...)`（`onEnterTransitionDidFinish` 内）。
     **该行与当前文件逐字对上。** 其余关键帧同样精确命中当前文件：
     `Utils/Node.js:377`、`BaseIcon.js:139/152/131`、`IconStyleA.js:42`、`Models/General.js:831`、
     `Card/Fight.js:778/813/979`。只有 `initViews@339` 那一帧差 5 行（当前
     `FightScene.js:334` 才是 `createHeadWithSideIdx` 调用点），说明那次构建与当前树**同源但不保证逐字相同**。
   - `artifacts/native-recovery/sgscq-fight-init-diagnostic.log:546` 同样的 assert；
     `:2057-2068` 前一位调查者打的临时探针
     `LOCAL_DIAG FightScene.init caught: xs.Utils.Node.attachNodes@.../Utils/Node.js:377`
     + 完整调用栈：
     `attachNodes ← BaseIcon._getLazyInitBgView(139) ← BaseIcon._reload_id(152) ← BaseIcon.reloadData(131)
     ← IconStyleA.reloadData(42) ← General.createIcon_Fight(831) ← Card.Fight._reloadData_head(813)
     ← Card.Fight.reloadData(778) ← Card.Fight.createHeadWithSideIdx(979) ← FightSceneLayer.initViews(339)
     ← FightSceneLayer.init(53)`
     （行号与当前文件逐条对得上）**⇒ 异常确实被 `init` 的 catch 吞掉**。
   - `:3080`（22:34）同样的 `getFightNotifyCenter(...) is undefined`（带探针后行号 +5 = 2884）；
     `:3087` 起 `_step0 error` 断言重复 **1238 次**（每帧一次），
     栈是 `FightSceneLayer._update_ext(FightScene.js:2384/2379) ← .update(2407/2402)`。
   - 关键代码：`ReconstructedJS/src_jsc/Scene/Fight/FightScene.js:31-70` `init` 的 try/catch；
     `:80-87` `_initNC`/`getFightNotifyCenter`（`this.m_fnc`）；`:2873-2880` `onEnterTransitionDidFinish`；
     `:2378` `xs.assert(false, "_step0 error", _step0)`；`:2399-2402` `update`。
     `_initNC()` 在 `init` 里排在 `initViews` **之后**（`this.initViews(...)` 在 :52，
     `this._initNC()` 在 :56；`_initNC` 定义在 :80-83，`getFightNotifyCenter` 在 :84-87），
     所以 `initViews` 一抛异常，`m_fnc` 永远是 `undefined`。

4. **服务端字段没问题（排除第 4 项）**
   - 客户端唯一读的教程字段：`ReconstructedJS/src_jsc/Models/Player.js:197`
     `this.freshman_step = xs.Utils.parseStringSafe(userInfo.freshman_step)`，
     `:543-546` `getPlayerFreshStep()`。读取点 `Scene/Login/headers.js:43-55`、
     `Scene/Login/LoginScene_EasyGuestSdk.js:285-297` → `GuideMgr.setServerStep(freshStep)`。
   - 服务端：`ServerProject/src/protocol.rs:213,250` 发送 `cmn.user_info.freshman_step`（字符串）；
     `ServerProject/src/tutorial.rs:20-28` `MILESTONE_STEPS = 10000..80000`。
   - 客户端上报：`ReconstructedJS/src_jsc/Tools/Net.js:320-333` 只在当前引导步 == 那 8 个里程碑之一时
     才挂 `param.step`，**其余步骤服务端完全看不到**。
   - 所以：**服务端不可能"返回 99000201"**。`99000201` 是客户端本地剧情 id
     （`Cfg/Guide.js:33` 的 `storyId`），服务端只会回 `"0"` 或 8 个里程碑之一。
     `ReconstructedJS/src_jsc/Cfg/Guide.js` 里 8 个里程碑全部存在，`setServerStep` 不会因为查不到 cfg 而炸。
     结论：**没有"客户端期望 X、服务端发 Y"的字段错配**，服务端不需要改任何一行。

---

## 剧情步骤流转图

```
登录 headers.js:43-55 / LoginScene_EasyGuestSdk.js:285-297
   setUseCfg(NewGuideCfg) → setServerStep(freshman_step) → setIsNeedChangeScene(true) → GuideMgr.start()
        │
        ▼
GuideMgr.start (GuideMgr.js:463)  step=getGuideStep() → plugin=GuideStepPlugin.getPlugin(cfg.type) → plugin.workInCfg(cfg)
        │
        ▼
[00113] ChangeScene → changeSceneByName("MainMenuScene")        GuideStepPlugin.js:33-88
   ▶ 设备日志 22:25:11 require:Scene/Main/MainMenuScene.js  —— 进主城成功
        │
        ▼  主城里的交互 → endStepBySequence(["00113"]) → nextStep()
[00201] Story  storyId = "99000201"                              Cfg/Guide.js:29-34
   GuideStepPlugin_Story.workInCfg (GuideStepPlugin.js:194-255)
     └─ Tools.Story.showStoryDialog("99000201", cb)   Story.js:6-12 → Dialog "Story"
          └─ cb: showHollowOutLayer(0,0,0,0) → endStepBySequence([... "00201" ...])   ← 这里命中
                 GuideMgr.endStepBySequence (GuideMgr.js:509-532) → nextStep() (126-148)
        │
        ▼
[00301] NewPlayerFight  nextStep="00302"                         Cfg/Guide.js:35
   GuideStepPlugin_FreshFight.workInCfg (GuideStepPlugin.js:271-290)
     ├─ showHollowOutLayer(rect 0,0,0,0)        ← 全屏黑遮罩先盖上
     └─ xs.Tools.Scene.gotoNewPlayerFight(cb)   Tools/Scene.js:144-156
          ├─ new Models.FightInfo(); setFightProcess(Cfg.Fight.NewPlayerFight)
          ├─ readRecordByTypeAndKey(Plot_Dialog, "98000401")   ← 数据存在(plan/sgs_dungeon_plot_dialog.js:23486)
          └─ gotoFight(Type_NewPlayer, ...)      Tools/Scene.js:354-405
               └─ changeSceneByName("FightScene", {...})       SceneMgr.js:384
   ▶ 设备日志 22:25:38.873 require:Scene/Fight/FightScene.js —— 切场景成功，无 ignore
        │
        ▼
FightSceneLayer.init   FightScene.js:31-70      try {
   initViews (:52 → :334，日志里那帧写作 339)
     └─ Card.Fight.createHeadWithSideIdx(:979) → Card.Fight.reloadData(:778)
        → Card.Fight._reloadData_head(:813) → General.createIcon_Fight(:826)
        → _ret.reloadData(this)(:831) → IconStyleA.reloadData(:37) → this._super(_model)(:42)
        → BaseIcon.reloadData(:126) → _reload_id(:144) → _getLazyInitBgView(:134)
             ├─ this.bgView = this._createHeadView(model)      :137   ⟹ 得到 undefined  ★断点
             │     IconStyleA._createHeadView (:33)  = return model.createHeadView_General_Equ_Skill()
             │     Models/General.js:928-931        = return xs.Tools.Card.createHeadView_General_Equ_Skill(this, Const_Item_Style_General)
             │     Tools/Card.js:491-581            = ... return _bgSprite1
             └─ xs.Utils.Node.attachNodes(this, this.bgView, {...})  :139
                   xsc.Debug.assert(childNode, "attachNodes,need childNode", parentNode)   ← 日志 3514
                   parentNode.addChild(undefined)  →  抛异常 @ Utils/Node.js:377           ← 日志 5027-5030
   } catch (e) { this.warnException(e) }     ← ★异常被吞掉，函数继续返回 true
        │
        ▼
this._initNC()  (FightScene.js:56)  从未执行   ⟹   this.m_fnc === undefined
        │
        ▼
onEnterTransitionDidFinish (FightScene.js:2873)
   this.getFightNotifyCenter().addObserver(...) (:2879)
   ⟹ TypeError: this.getFightNotifyCenter(...) is undefined   ← 日志 5133（未捕获）
        │
        ▼
step0 停在 Step_Init(0)，不再前进
   每帧 update(:2399) → _update_ext → 落到 else 分支 xs.assert(false,"_step0 error",_step0)(:2378)
   ⟹ 每帧一条断言（22:34 日志里 1238 条），场景里没有任何内容
        │
        ▼
                             ★ 黑屏 ★
```

---

## 是否重建器导致

**是（重建器产的旧 JS），但当前 `ReconstructedJS/` 树里的相关函数已经是对的。** 依据：

1. 链路上除 `Models/General.js` 外，每一环都逐条核对过字节码，**与 `Recovered/` 一致**：
   - `SceneMgr.changeSceneByName` 的锁判断/静默 return：`SceneMgr.js.disasm.txt:1660-1682`（忠实，不是凭空加的 return）。
   - `IconStyleA._createHeadView`：`IconStyleA.js.disasm.txt:394-402`
     `getarg 0; dup; callprop "createHeadView_General_Equ_Skill"; swap; notearg; call 0; return`
     ⟷ `ReconstructedJS/.../IconStyleA.js:33-36` **带 return，一致**。
   - `BaseIcon._getLazyInitBgView` / `_reload_id`：`BaseIcon.js.disasm.txt:766-811` / `:813+`
     ⟷ `ReconstructedJS/.../BaseIcon.js:134-171` 一致；`attachNodes(this, this.bgView, ...)` 的参数没有互换。
   - `Tools/Card.createHeadView_General_Equ_Skill`：末尾 `01067: 572 getlocal 2; return`（返回 `_bgSprite1`）
     ⟷ `ReconstructedJS/src_jsc/Tools/Card.js:580 return _bgSprite1;` 一致。
   - `Models/General.createHeadView_General_Equ_Skill`：`General.js.disasm.txt:4183-4196`
     末尾 `00039:1013 return` ⟷ 当前 `ReconstructedJS/src_jsc/Models/General.js:930` **带 return，一致**。
2. 我用仓库自带的 `tools/jsc_differential`（真 SpiderMonkey v22，跑原始 `.jsc`）对
   `Tools/Card.js` 做了差分：`Resources/assets/src_jsc/Tools/Card.jsc` 与
   `ReconstructedJS/src_jsc/Tools/Card.js` 在 mock 环境下
   `createPartView_General("head0/head1/head2"/...)` 与
   `createHeadView_General_Equ_Skill(...)` 的结果**完全一致（DIFF PASS）**。
   也就是说 `createHeadView_General_Equ_Skill` 不可能"返回 undefined 而不抛异常"。
3. 反过来，能"返回 undefined 且不抛异常"的只剩 `Models/General.prototype.createHeadView_General_Equ_Skill`
   这一个不可验证环节，而它恰好**在旧版重建产物里是缺的**：
   `/tmp/sgscq-assets-stage-check/src_jsc/Models/General.js:5`
   `/* TODO_BYTECODE detached_function_object=63 name=createHeadView_General_Equ_Skill see recovery outline */`
   （该目录是 14:10 的旧重建产物；同文件共 25 条 detached TODO）。
   如果 22:2x 那次构建处于"函数被补回对象字面量但漏了 return"的中间态，
   现象就与日志**逐条吻合**：不抛异常 → bgView=undefined → attachNodes 断言 → addChild(undefined) 抛在 Node.js:377。
   当前树里 detached TODO 只剩 2 条（都在 `Views/HulaoBattle/HulaoBattleMainView.js`），`Models/General.js` 为 0 条。
4. 不能确定的部分：**22:25 / 22:34 那两次 APK 用的 JS 没有留档**（`ReconstructedJS/` 在 22:39 重新生成，
   现存 APK 是 23:20 重新打包的），所以"当时那份 `Models/General.js` 到底长什么样"无法直接读到。

### 最小字节码对照片段（若怀疑重建器又出错，先看这几处）

```
;; Recovered/src_jsc/Scene/SceneMgr.js.disasm.txt  (changeSceneByName 开头，忠实)
00019: 515  ifeq 55 (+36)        ; isLocked()===true 才走下面
00024: 516  name "xs" ... string "changeSceneByName ignore"
00053: 517  undefined
00054: 517  return               ; 静默返回是真的
...
01985: 700  callprop "unlock"   ; 且 unlock 没有任何 try/finally 保护 ← 真正的隐患

;; Recovered/src_jsc/Views/Icon/IconStyleA.js.disasm.txt  (_createHeadView)
00011:  69  call 0
00014:  69  return               ; 必须带 return

;; Recovered/src_jsc/Models/General.js.disasm.txt  (createHeadView_General_Equ_Skill)
00036:1013  call 2
00039:1013  return               ; 必须带 return

;; Recovered/src_jsc/Tools/Card.js.disasm.txt  (createHeadView_General_Equ_Skill 结尾)
01067: 572  getlocal 2           ; local[2] = _bgSprite1
01070: 572  return
```

---

## 建议的下一步

按性价比排序，全部不需要 logcat：

1. **先排除"旧构建"因素（最省事，可能已经好了）**：设备上现在装的是 22:2x 的包，
   而 JS 在 22:39 重新生成过、APK 在 23:20 重新打包（`ClientProject/proj.android/sgscq-rebuilt.apk`）。
   先确认设备上跑的是 23:20 那个包；如果不是，重装后再走一遍 00201→00301。
   若仍黑屏，再往下走。
2. **给客户端加一条"打到服务器"的诊断日志（不依赖 logcat 的一锤定音手段）**。
   Rust 服务器的 `ServerProject/src/logging.rs` 中间件会把**每个**请求的查询串和响应都打进服务端日志，
   所以只要客户端发一个请求，证据就落在服务端：
   - 改 `ReconstructedJS/src_jsc/Scene/Fight/FightScene.js:63-67` 的 `catch (e)`，在
     `this.warnException(e);` 后面加一行：
     ```js
     xs.Views.Mgr.reqUrl("/?do=diag.clientError", {
         where: "FightScene.init",
         msg: ("" + e) + "||" + ((e && e.stack) || ""),
         fileName: (e && e.fileName) || "", line: (e && e.lineNumber) || 0
     }, function(){}, function(){}, null, null, "diag");
     ```
     （`reqUrl` 签名见 `ReconstructedJS/src_jsc/Tools/Net.js:344` 的用法；服务端对未知 `do=` 会返回错误，
     但**中间件照样记录请求行**，这就够了。）
   - 同时在 `onEnterTransitionDidFinish` 里 `getFightNotifyCenter()` 之前也发一条同样的请求。
   - 重新打包安装后跑一次，看 **Rust 服务端 stdout/日志** 里有没有 `do=diag.clientError` 及其 `msg`。
     三种结果对应三种根因：
     * 有 `msg` 且带 `fileName=Models/General.js` → 是重建器漏 `return`（就是本报告的判断）；
     * 有 `msg` 且带 `fileName=Tools/Card.js` → 是精灵/资源工厂返回 undefined（转去看
       `Factorys/Sprite.js` 与 `Models/Resource.js:78 createHeadSprite`）；
     * 压根没有这条请求 → 说明根本没走到 `00301`，回头查 `GuideMgr` 的步骤推进
       （在 `GuideMgr.nextStep` / `endStepBySequence` 里也按同样方式各发一条 diag 请求）。
3. **无论哪种根因都建议顺手修的两处健壮性问题**（不改服务端）：
   - `FightScene.js:31-70`：把 `this._initNC()` 提到 `this.initViews(...)` **之前**（或在 catch 里补调），
     这样 `init` 里任何子视图异常都不会再演变成 `m_fnc undefined` + `onEnterTransitionDidFinish` 崩，
     至少能把"黑屏"降级成"能看见的报错弹窗"。
   - `SceneMgr.changeSceneByName`（`SceneMgr.js:384-575`）：字节码里 `unlock()` 无保护，任何异常都会
     永久锁死后续切场景。可以在重建产物里手改（`try { ... } finally { this.unlock(); }`），
     或至少在 `changeSceneByName ignore` 那行旁加一条会走到服务器的日志——但注意这属于**改重建产物**，
     与"重建器还原"是两条路，需明确取舍。
4. **若还能修好 USB**：`adb logcat | grep -E "attachNodes|_step0 error|getFightNotifyCenter|changeSceneByName ignore"`
   能立刻确认上面哪一条分支（这几次抓取都在 `artifacts/native-recovery/*.log`，可对照）。

---

## 存疑

- **22:25 / 22:34 那两次构建所用的 JS 没有留档**。现存最老的快照是 14:10 的
  `/tmp/sgscq-assets-stage-check/`（`Models/General.js` 里该函数是 detached），
  最新的是 22:39 重生成的（已正确）。中间态只能推断，不能直接读到，
  所以"是 `Models/General.js` 漏 return"是**高度可能而非已证实**。
- 我在 mock 下重跑时，`createPartView_General(model,"head0")=sprite`、`"head1"=head1sprite`、
  `"head2"=sprite` 都是真值，`createHeadView_General_Equ_Skill` 必然返回 `_bgSprite1`（真值），
  所以**当前树无法复现**设备上的 `bgView=undefined`。若 23:20 的包仍黑屏，
  说明还有第二种成因（例如某处 `assert` 不抛、某工厂返回 `null`），需要第 2 条建议的服务器日志定案。
- `xs.Tools.Card` 上并没有定义 `markFuncBegin`/`assert`（`Tools/Card.js` 里只有调用点，
  定义只在 `xs.Debug`/`xs.markFuncBegin`；`Tools/headers.js` 是 `xs.Tools = xs.Tools || {}`）。
  在真机上它们必然从某处（很可能是 native JSB 预置的 `xs.Tools`）拿到；本次没查到来源，
  这一点与黑屏无直接因果关系，但如果 `xs.Tools.Card` 是被 native 预置、导致
  `Tools/Card.js` 的 `(xs.Tools.Card || {...})` 整块被丢弃，那会引出完全不同的一类问题，值得单独查。
- 本次没有设备可复现，所有结论基于 `Recovered/` 字节码 + 仓库内两份历史 logcat；未做任何真机验证。
