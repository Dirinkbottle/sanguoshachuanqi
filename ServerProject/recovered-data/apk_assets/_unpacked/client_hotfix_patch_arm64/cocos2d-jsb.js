// PC 闂傚倷鑳堕…鍫㈡崲閹烘鍌ㄧ憸鏃堛€佸▎鎾崇疀闁绘鐗婂▍鏍р攽椤旂瓔鐒惧瀛樻倐瀹曟椽宕掗悙鏉戔偓?extension/studio auto 缂傚倸鍊搁崐鐑芥倿閿曞倸鍨傞柣銏犳啞閸嬧晠鏌熼鍡楄嫰閺呯娀姊洪懖鈹炬嫛闁告挻绋戦—鍐╃鐎ｎ偆鍘遍棅顐㈡搐椤戝懘宕濋悽鐢电＜閺夊牄鍔夐弨绲?闂?bindings-generator 闂傚倷鐒﹂惇褰掑垂婵犳艾绐楅柟鐗堟緲閸ㄥ倹鎱ㄥΟ鍨厫闁哄拋鍓欓…璺ㄦ崉閾忕懓顣甸梺?
// extension 濠电姷鏁搁崑娑⑺囬銏犵鐎光偓閸曨偉鍩炴繛瀵稿Т椤戝懐绮?cc.闂傚倷鐒︾€笛呯矙閹达附鍋嬮柛鈩冪☉缁?cc._Reader/ScrollView/ControlButton 缂傚倸鍊烽悞锔剧矙閹次层劑鍩€椤掑倻纾奸弶鍫涘妼閸濇椽鏌?
// studio 濠电姷鏁搁崑娑⑺囬銏犵鐎光偓閸曨偉鍩炴繛瀵稿Т椤戝懐绮?ccs.闂傚倷鐒︾€笛呯矙閹达附鍋嬮柛鈩冪☉缁?ccs.Armature/ArmatureDataManager 缂傚倸鍊烽悞锔剧矙閹次层劑鍩€椤掑倻纾奸弶鍫涘妼閸濆搫鈹?
// 婵犵數鍋為崹鍫曞箹閳哄倻顩叉繝濠傜墕閺勩儵鏌涢埄鍐剧劷妞も晠顥撻埀顒€绠嶉崕鍗灻洪妶鍥ㄥ床濞达絽澹婇悢鍡涙煙椤栫儐鏆掗柛姘煎亝缁绘盯宕奸悢椋庝患闂佺粯宀哥粻鏍箠閿熺姴围闁糕剝蓱椤撳綊姊绘担鍛婂暈妞ゃ劌鐗婇幈銊ョ暦閸モ晝顦梺鍛婁緱閸ㄩ亶宕戝鈧弻鏇熷緞閸℃ɑ鐝栫紓浣割槺閸忔﹢寮婚妸銉㈡婵☆垵鍋愰崝顖涚箾閺夋垹姣為柡鍛Т閻?jsb_cocos2d_extension.js 闂?prototype 闂備浇宕垫慨宥夊礃閹冨闂?TypeError闂?
(function () {
    if (typeof cc === "undefined") { cc = {}; }
    var RealNode = (typeof cc.Node !== "undefined") ? cc.Node : null;
    function makeStub() {
        if (RealNode) {
            var ctor = function () { return RealNode.create(); };
            ctor.create = function () { return RealNode.create(); };
            ctor.extend = (typeof cc.Class !== "undefined" && cc.Class.extend) ? cc.Class.extend : function () { return ctor; };
            ctor.prototype = RealNode.prototype;
            ctor.__noSuchMethod__ = function () { return RealNode.create(); };
            return ctor;
        }
        var f = function () { return f; };
        f.__noSuchMethod__ = function () { return f; };
        return f;
    }
    // 婵犵數鍋涢顓熸叏閹绢喖绠犻柟閭﹀枛閸ㄦ繂霉閸忓吋缍戞潻婵嬫倵閸忓浜鹃梺閫炲苯澧柨鏇樺灲閺佸秹宕熼妸銉ゅ闂侀潻瀵岄崢鍏肩瑜忕槐鎺楊敋閸℃娲梺閫炲苯澧叉い顐㈩樀閹矂顢欓幆褍袣闂佸憡鍔戦崝澶愬蓟閿曞倹鐓冮柍杞扮閺嗙偤鏌￠崱妤冨ⅵ闁哄本鐩獮鍥敆閸愮偓钑夐梻渚€鈧偛鑻晶顔剧磼婢跺孩纭鹃柍缁樻崌楠炲鎮╅棃娑欐闂備礁鎼€氼剟鎯堝☉娆忕窞闁归偊鍓涢、鍛存⒑缂佹﹩鐒惧ù婊庡墰缁棃骞橀鐣屽弳濠电偞鍨惰摫缂佸墎鍔昿eof undefined 闂傚倷绀佺紞濠傤焽瑜忕划鏃堟偪椤栨冻绱撻梻鍌欑劍鐎笛呯矙閹寸偟闄勯柡鍐ㄥ€荤粻鏂款熆鐠虹儤婀伴柛鐔告そ閺屾盯鍩勯崘顏呭櫗缂佹儳褰為崡鎶藉蓟閿濆鏁傞柛鈩冾殕閻庡姊哄Ч鍥р偓鏇犫偓姘煎櫍閹噣鎮欓鈧杈ㄧ箾閸℃ê鐏╂い?
    var ccMaybe = ["GLNode", "PhysicsDebugNode", "PhysicsSprite"];
    for (var i = 0; i < ccMaybe.length; i++) {
        if (typeof cc[ccMaybe[i]] === "undefined") { cc[ccMaybe[i]] = makeStub(); }
    }
})();

require("jsb.js");

// 闂傚倷鐒﹀鎸庣閻愬搫绐楅幖娣妽閸?studio 缂傚倸鍊搁崐鐑芥倿閿曞倸鍨傞柣銏犳啞閸嬧晠鏌熼鍡忓亾闁哄鐗犻弻鏇熺箾閸喖濮庨梺鍝勫€甸崑鎾绘⒒?ccs 闂傚倷绀侀幉锛勭矙閺嶎灛娑㈠礋椤栨氨鐣洪梺鍝勬川婵兘鎯屽顓犵鐎瑰壊鍠曠花濂告煥濞戞艾鏋涢柡灞诲妼閳藉螣娓氼垱顔勭紓鍌欑劍閻擄紕绮婚弽褜鍤曢柣銏犲閺佸棗霉閿濆懏鎯堥柣鎾村灴濮婅櫣鎲撮崟顒傜▏婵°倗濮寸换鎺懳ｉ幇顑芥瀻闁规儳纾惈鍕偡濠婂啰绠查柡?cocos2d-x 婵犵數鍋為崹璺侯潖缂佹ɑ鍙忛柣銏㈩焾绾惧灝鈹戦悩宕囶暡闁哄拋鍓欓…璺ㄦ崉閻戞ɑ鎷遍梺?cc.X 闂佽瀛╅鏍窗濡も偓鐓ゆ繝濠傜墕閺?
// studio 缂傚倸鍊风欢锟犲磻閸涘瓨鍎戠憸鐗堝笒閻掑灚銇勯幒鍡椾壕闂佺锕ら幗婊呮閹捐绠婚柛鎾茬瀹?cc.X -> ccs.X 闂傚倷绀侀幉锛勬暜閳哄懎纾婚柛鏇ㄥ灠缁犳牠鏌￠崶銉ョ仾闁哄拋鍓涢埀顒€鍘滈崑鎾绘煕閹邦厼鍔ら柡?cc.ArmatureDataManager 缂傚倸鍊烽悞锔剧矙閹次诲洭骞嶉鐟颁壕闁割煈鍋勯崫铏光偓瑙勬磸閸庣敻鐛€ｎ喗鍋愰柛鎰皺閸旑垶姊虹拠鏌ヮ€楁繝鈧柆宥呯；闁绘柨鎼崹婵嬫煥閺冨牊鏆滈柛瀣尵閹叉挳宕熼锝嗗劎闂?
(function () {
    if (typeof ccs === "undefined") { return; }
    var aliases = ["Armature", "ArmatureDataManager", "ArmatureAnimation",
                   "Bone", "Skin", "ComController", "ComAttribute",
                   "ComAudio", "ComRender", "GUIReader", "ActionManager",
                   "SceneReader", "Skeleton", "ProcessBase"];
    for (var i = 0; i < aliases.length; i++) {
        if (typeof ccs[aliases[i]] !== "undefined" &&
            typeof cc[aliases[i]] === "undefined") {
            cc[aliases[i]] = ccs[aliases[i]];
        }
    }
})();

// xs 闂傚倷鑳堕…鍫㈡崲閸儱绀夌€光偓閸曨剙鍓冲銈嗗笒鐎氼剟宕橀埀顒勬⒑閼姐倕鏋涢柛瀣躬瀹曠敻鎮╃紒妯轰化闂佺粯鍔忛弬渚€宕戦幘璇茬闁告瑥顦伴悘鎶芥⒒娴ｅ湱婀介柛銊ф嚀閻ｇ兘顢楅崟顒€浠奸梺闈浥堥弲娑氭兜閳ь剟姊洪悷鏉库挃闁硅櫕鎸搁埢鎾村鐎涙ê鈧敻鎮峰▎蹇擃伀闁绘搩鍨崇槐?C++ (register_all_xs_sanguosha) 濠电姷鏁搁崑娑⑺囬銏犵鐎光偓閸曨偉鍩炴繛瀵稿Т椤戝懓绻?
// iOS 闂佽姘﹂～澶愬箖閸洖纾块柟鎯版閻撴繂鈹戦崒姘暈闁稿鍔戦弻鏇熺箾閸喖濮㈢紓浣歌嫰濞硷繝寮婚悢鐓庡瀭妞ゆ洍鍋撻柛娆忓閺屽秷顧侀柛鎾磋壘椤繈濡搁埡浣圭€梺闈涚墕閹叉﹢鎮㈤悡搴ｅ姶闂佸憡鍔忛弲婵嬪礄閿熺姵鈷戦柟绋挎捣閳藉鏌￠崼顐㈠閾荤偤鏌曢崼婵囧婵為棿鍗抽弻鏇㈠醇濠靛洤娅ｉ梺鍝勫€戦崶銊у幗闂侀潧绻堥崹褰掑几閹达附鐓涘ù锝呮惈娴犺京鈧娲橀敋闁伙絾绻勯埀顒婄秵閸撴盯藝椤曗偓濮婄儤娼幍顕呮М闂佺懓鍟挎鎼佹晝閵忋値鏁傞柛顐ｇ箘椤︻噣姊虹紒姗嗙劷闁稿簺鍊楃划濠囨偋閸垻顔曢梺瑙勫礃濞呮洟宕悙鐑樼厱闁靛濡囬幊鍥煛鐏炶姤鍤囩€殿喗濯界粻娑㈠即閻愭浼栭梻鍌欑閹诧繝骞愰崫銉х煋闁圭虎鍠栭崒銊︾箾閹寸儑渚涢柛銈呯墦閺屟嗙疀閹剧纭€閻?
// xs 闂傚倷绀侀幖顐ょ矓閸洖绠犻柟鐐た閺佸銇勯弮鍌氫壕閻庢鍓熼弻宥夋寠婢跺娅х紓浣插亾濠㈣埖鍔栭崑?Core/headers.js 闂傚倷鐒﹂惇褰掑礉瀹€鈧埀顒佸嚬閸撴岸骞堥妸鈺傚€烽悗娑櫭～鈩冪箾鐎电孝妞ゆ垵妫濋獮濠囨偐绾版ê浜鹃柣銏ゆ涧椤ｅジ鏌曢崶鈺佷沪缂佸倸绉归獮鎺楀籍閸屾粣绱查柣鐔哥矊缁绘﹢骞冮懞銉х瘈婵﹩鍎?
// 濠电姷鏁搁崑娑⑺囬銏犵鐎广儱顦粈鍫澝归悡搴ｆ憼闁哄拋鍓氶幈銊ヮ潨閸℃ぞ绨介梺鑽ゅ枑缁诲牓骞冮悜钘夊嵆婵浜悰銏狀渻閵堝繒宀涢柡鍛箞楠?xsc 闂傚倷鑳堕崑銊╁磿閺屻儱钃熼柨鐔哄Т閻?headers.js 闂傚倷绀侀幉锟犲礉閺囥垹绠犳慨妞诲亾鐎规洘娲滈埀顒佺⊕閿氭い鏇￠哺閹便劌顫滈崱妤€绠归梺鎶芥敱濡啴骞?"xsc = xs.Core"闂?
// 闂傚倷绀侀崥瀣儑瑜版帒纾块柡灞诲労閺佸棙绻濋棃娑欐悙缂佸墎鍋ら弻娑㈠即閵娿儰绨婚柣銏╁灛閸庡磭妲?xsc 闂備浇宕垫慨宥夊礃閹冨婵犵數濮崑鎾绘煥閻斿搫孝缁炬儳婀遍惀顏堫敇閵忊晜顥栫紓浣插亾濠㈣泛鈯曡ぐ鎺戠闁艰婢橀ˉ婵嗏攽閻愭彃绾х紒顔芥崌楠炲棗鐣濋崟鍨櫍闂佹寧绋戠€氼噣宕幘顔解拻濞撴艾娲ゆ禍婵囦繆閸欏绗ф繛鍡愬灲椤㈡洟濡堕崱妤冿紡闂佽楠稿﹢杈ㄦ叏妞嬪海涓嶉柡宥庡幗閸嬶綁鏌涢妷锝呭姎闁告柣鍎崇槐鎺撴媴鐟欏嫬鍞夐悗瑙勬礃閸旀鈽夐崹顐Ч閹艰揪缍嗗Σ鐑芥⒑鐠囪尙鍑圭紒鑼帛缁旂喖宕奸妷銉ユ優?xsc.require 缂傚倸鍊搁崐鎼佸磹閹间礁绠规い鎰剁畱妗呴梺纭呮彧缁犳垼绻?
if (typeof xs === "undefined") { xs = {}; }

// ---- xs.JsbConnecter 闂傚倷绀侀幉锟犫€﹂崶顒€绐楅柟鎹愵嚙閺嬩線鏌熼悙顒€澧繛瀛樼墵閺屾洘寰勫☉姘辨殸婵犮垼娉涚粔褰掑蓟?JS 濠电姷顣介崜婵嬪Φ濞戙垹鐤炬い蹇撴椤洘淇婇幆褜鍔婼 闂?register_all_xs_sanguosha闂?---
// 闂傚倷绀侀幉锟犫€﹂崶顒€绐楃€广儱娲︾€氬鏌ｉ弮鍥モ偓鈧柛瀣崌閹兘鏌囬敂鍙箓鎮楃憴鍕缂侇喗鎹囬獮濠傗槈閵忊晜鏅滈梺鍛婃处閸樿棄袙鎼淬垻绠?C++ 闂傚倸鍊风欢锟犲磻閸涱喚鈹嶉柧蹇氼潐瀹?JSB 濠电姷鏁搁崑娑⑺囬銏犵鐎光偓閸曨偉鍩炴繛瀵稿Т椤戝棝宕曞澶嬬厱闁哄洢鍔屾禍婊堟煛閸屽啫娲﹂悡鐔兼煏韫囧鐏╅柡瀣懅缁辨帞绱掑Ο鍏煎垱濡ょ姷鍋炵敮鈩冧繆閻戣棄唯闁挎梹鍎崇紞鏃堟⒒娓氣偓濞佳兾涢弮鍫濋唶闁绘瑧钁?闂傚倷绀侀幖顐﹀疮閻楀牊鍙忛柣銏犲閺佸棙绻濋棃娑卞剰闁稿被鍔戦弻锝夊籍閸屾艾濡洪梺鍝勬噺閹倿骞冨鈧幃娆撳箵閹哄秴鏋堢紓鍌欐祰妞村摜鎹㈤崼婵愬殨妞ゆ劧绠戝婵囥亜閹捐泛鏋欓柛?JS 闂?
// 闂傚倷绀佸﹢杈╁垝椤栫偛绀夐柟鐑樻⒐椤愪粙姊婚崼鐔剁繁婵炲瓨鐗犻弻宥夊传閸曨偒浼€缂備胶濮甸悡锟犲蓟濞戙垹唯鐟滃秵绂掑鍫熺厽闁挎繂鍟慨鍌溾偓瑙勬礃椤ㄥ﹥淇婇幖浣哥厸闁告劑鍔庨濂告⒑閼姐倕小闂傚嫬绉瑰畷鎰板即閵忕姷鍔﹀銈嗗笒閸婂爼鍩€椤掆偓椤戝洤危閹邦兘鏀介柛顐ゅ枎椤庢盯姊虹€圭姵銆冪紒鈧笟鈧幃姗€濡烽妷銏℃杸濡炪倖姊婚埛鍫ュ磿韫囨稒鍊靛ù锝呭暙閻ㄨ櫣绱掓潏銊ョ妞わ附鎸抽弻锝夊閻欌偓閻撶厧鈹戦埄鍐╁唉鐎规洘甯掗…銊╁礋閸忕鍨濋梺?闂傚倷娴囬妴鈧柛瀣尰閵囧嫰寮介妸褎鍣柣?缂傚倸鍊搁崐鐑芥嚄閸洖绐楅柡鍥ュ焺閺佸洭鏌熼梻瀵割槮缂佲偓閸岀偞鐓曟い鎰剁悼缁犳挾绱掗幇顓ф當闂囧鏌ㄥ┑鍡樺櫧闁宠鐬肩槐鎺撴綇閵娧呯杽閻庤娲忛崕鏌ュ箚閺冨牊鏅查柛銉ｅ妽濮?ObjC 濠电姷顣介崜婵嬪Φ濠婂牆纾块柤纰卞墯閺嗘粓鏌熺紒銏犳灈鏉?
// 闂傚倷绀侀幉锟犲礉閺囥垹绠犻柟鎯ь嚟椤╃兘鏌涢銈呮灁妞も晜鐓￠獮鏍庨鈧悞娲煕閺傚灝鏆ｉ柡灞诲妼閳藉螣閻撳簶鍙㈤梻渚€鈧偛鑻晶顕€鏌ｉ鐐测偓鎼佲€﹂崶顒夋晜闁割偆鍠庢禍鐓庮渻閵堝棗绗掗柛濠冩閵囨劕鐣濋崟顒傚幐闂佺鏈喊宥夋儗濡や胶绠鹃柛鈩冨姇閻忔煡鏌℃担鍝バｇ€垫澘瀚埥澶婎潩妲屾牗啸闂傚倷鐒﹂幃鍫曞磿閾忣偅鍙忛悗娑櫭閬嶆煙闁箑鏋ら柣顓熺懇閹鏁愭惔鈩冪亐闂佺顑嗛幑鍥嵁閸ヮ剦鏁囬柣鏃囥€€閸嬫捇顢欏ù搴＄秺閹晠鎮滃Ο绗衡偓鎰磽娴ｇ懓顣抽柡鍛█楠炲啯绂掔€ｎ€晠鏌曟繛褌绀佹禍鑺ョ節閻㈤潧顫掗柛鏇ㄥ亜琛肩紓鍌欐祰妞村摜鎹㈤崼婵愬殨妞ゆ帒瀚崑瀣煕椤愩倕鏋旈柍褜鍓﹂崰鏍箒闂佺粯顭堝▍鏇㈠几閸曨厾纾兼俊銈傚亾妞わ附澹嗛埀顒傛暩閸樠囷綖濠靛绀冮柛娆忣樈閸炲爼姊绘担鍛婂暈闁哄矉缍佸畷婵嗩吋閸℃ɑ鐝烽梺鎸庢礀閸婂摜绮堝畝鍕厱婵炴垵宕禍鎰版煕?
(function () {
    // getFrameSize 闂備礁鎼ˇ顐﹀疾濠婂牆钃熼柕濞垮剭濞差亜鍐€妞ゆ挾鍋熼敍娆撴⒒閸屾艾鈧悂顢氶銏″剹鐎光偓閸曨剙浠╁┑顔筋焽閸樠勭濠靛鐓熼柡宓懎鐓熷Δ?split("|") 闂備浇宕甸崰鎰版偡鏉堚晛绶ゅΔ锝呭暞閸婄敻鏌ら幁鎺戝姢闁崇粯妫冮弻娑樷攽閸℃浼岄梺鍝ュ枎缁夌鐏冮梺绋挎湰娓氭鎮炴禒瀣厸濞达綁娼ч埀顒佺墱缁顓奸崱妯哄妳闂佺偨鍎辩壕顓㈠焵椤掆偓椤嘲顕ｉ崼鏇為唶婵炴垶锚椤鎮楃憴鍕憙闁稿鍔楅崚鎺楁偨缁嬪灝鍞ㄥ銈嗗姧缁查箖顢樺ú顏呪拺?
    // 闂傚倷鑳堕崕鐢稿疾濞戙垺鍋ら柕濞у嫭娈伴柣搴ㄦ涧閹芥粎澹曢崗鑲╃闁糕剝锚婵鏌涢妸銉ｅ仮闁哄本鐩獮瀣攽閸ヨ埖锛呮俊鐐€栧鐟懊哄鍫濈閻庯綆鍠栭悘鎶芥煕閹邦垰鐨洪柍褜鍓欓…宄邦嚕閸洖閱囨繛鎴灻‖瀣倵閸︻収鐒鹃柕鍫㈩焾閻ｇ兘鏁撻悩鑼槰闂佸湱绮敮鐔碱敊婢舵劖鈷戦柟绋挎捣閳藉鏌￠崼顐㈠閾荤偤鏌曢崼婵愭Ч妞ゃ儱妫濋弻宥堫檨闁告挾鍠庨锝嗙節濮橆儵銊╂煏婵炑冩媼閸氬姊洪懡銈呬沪缂佸鍨垮鐢割敆閳ь剟鈥旈崘顔肩＜婵犲ň鍋撻柣鎺戯躬閺屾稑鈹戦崱妤婁紝闂佹悶鍊楅崰鏍蓟閵娿儮妲堟俊顖滃帶椤も偓婵＄偑鍊栫敮妤冩崲閸岀儐鏁嬮柨婵嗩槸閸楁娊鏌ｉ弬鎸庡暈闁稿汞鍥ㄢ拺?EGLView 闂?getFrameSize闂傚倷鐒︾€笛呯矙閹次诲洭顢橀姀鐘靛姦?
    var frameW = 960, frameH = 540;
    var deviceId = "sgscq-arm64-emulator";
    var openUDID = "sgscq-arm64-openudid";
    var unhandled = {};

    var trieWords = [];
    var trieWordSet = {};
    var trieMaxLen = 0;

    function addTrieWord(word) {
        word = (word === undefined || word === null) ? "" : String(word);
        if (!word || trieWordSet[word]) { return false; }
        trieWordSet[word] = true;
        trieWords.push(word);
        if (word.length > trieMaxLen) { trieMaxLen = word.length; }
        return true;
    }

    function addTriePayload(args) {
        if (args === undefined || args === null || args === "") { return false; }
        var text = String(args);
        var added = false;
        try {
            var parsed = JSON.parse(text);
            if (parsed && typeof parsed.length === "number") {
                for (var i = 0; i < parsed.length; i++) {
                    added = addTrieWord(parsed[i]) || added;
                }
                return added;
            }
        } catch (e) {
        }
        var parts = text.split("|");
        for (var j = 0; j < parts.length; j++) {
            added = addTrieWord(parts[j]) || added;
        }
        return added;
    }

    function queryTrie(args) {
        var text = (args === undefined || args === null) ? "" : String(args);
        if (!text || trieWords.length === 0) { return ""; }
        var best = "";
        for (var i = 0; i < trieWords.length; i++) {
            var word = trieWords[i];
            if (word && text.indexOf(word) >= 0 && word.length > best.length) {
                best = word;
                if (trieMaxLen > 0 && best.length >= trieMaxLen) { break; }
            }
        }
        return best;
    }

    function normalizePlistPath(args) {
        var plist = (args === undefined || args === null) ? "" : String(args);
        if (plist.indexOf("|") >= 0) { plist = plist.split("|")[0]; }
        if (plist.indexOf(",") >= 0) { plist = plist.split(",")[0]; }
        plist = plist.replace(/\\/g, "/");
        if (plist.indexOf("tex/") === 0) { plist = plist.substring(4); }
        return plist;
    }

    function trySpriteFrameCache(plist, op) {
        var cache = cc.SpriteFrameCache.getInstance();
        var candidates = [];
        var name = plist.substring(plist.lastIndexOf("/") + 1);
        if (plist.indexOf("/") < 0) {
            candidates.push(plist);
            candidates.push("tex/" + plist);
        } else if (plist.indexOf("res_n_main/") === 0) {
            candidates.push(name);
            candidates.push("tex/" + name);
            candidates.push(plist);
        } else if (plist.indexOf("tex/") === 0) {
            candidates.push(plist.substring(4));
            candidates.push(plist);
        } else {
            candidates.push(plist);
            candidates.push(name);
        }
        for (var i = 0; i < candidates.length; i++) {
            try {
                if (op === "add") {
                    cache.addSpriteFrames(candidates[i]);
                } else {
                    cc.log("[JsbConnecter stub] SpriteFrameCache." + op + " skipped: " + candidates[i]);
                    return "1";
                }
                cc.log("[JsbConnecter stub] SpriteFrameCache." + op + ": " + candidates[i]);
                return "1";
            } catch (e) {
                cc.log("[JsbConnecter stub] SpriteFrameCache." + op + " failed: " + candidates[i] + " " + e);
            }
        }
        return "";
    }

    var handlers = {
        // 闂傚倷鑳堕崑銊╁磿閺屻儱钃熼柨鐔哄Т閻?闂傚倷绀侀幉锛勬暜濡ゅ啯宕查柛宀€鍎戠紞鏍煙閻楀牊绶茬紒鈧畝鍕厸鐎规搩鍠栭幊鎰版偩闁秵鈷掗柛灞剧缁€宀勬煕?闂傚倷鑳堕崑銊╁磿閺屻儱钃熼柨鐔哄Т閻?
        // Develop("0") 闂?main.js 闂?xs.main_game() 闂傚倷鑳堕崕鐢稿疾濠靛瑤澶愬箛椤旇棄搴?LoginScene闂?
        // 缂傚倸鍊搁崐鐑芥倿閿曗偓鐓ゆ繝闈涚墛瀹曟煡鏌涢幇銊︽珖闁荤喕顫夌换婵嬫濞戝啿濮涘銈傛櫓閸嬪棝鍩€椤掑倹鍤€闁圭寽銈冧汗闁告劦鍠栭惌妤冩喐閺傛娼栧┑鐘冲嚬閺佸洭鏌ｉ幇顒備粵婵絽顦靛娲传閸曨偀鍋撴禒瀣剁稏濠㈣泛顭懓鍧楁煕閵夘喖澧紒鈧径鎰厓闁靛鍔嶉悵顏堟煟濠靛嫬鈧繈寮?UpdateScene闂傚倷鐒︾€笛呯矙閹达附鍋嬮煫鍥ㄦ⒐濞呯姵淇婇妶鍛櫣閻庢艾顦伴妵鍕箳瀹ュ洩绐楀┑顔硷躬缁犳牠寮婚敍鍕勃閻犲洦褰冩慨宥囩磽娴ｇ缍侀柛妤€鍟块悾鐑芥晸閻樿尙鍔撮梺鍛婂姈閸庤櫕鎱ㄩ妶鍡樺弿闁圭儤鎸鹃埊鏇㈡煕閵娧勬毈闁诡垰鐗撳畷鍗炩槈濞嗘劖鐝┑鐘灱濞夋盯鎮ч崘顔肩；?
        "Build.getProjCode":         function () { return "40004"; },  // Const_Proj_Code_226_Official_Android
        "Build.getAccountSysCode":   function () { return "0"; },
        "Build.getBuildVersion":     function () { return "9.17.0.89"; },
        "Build.getBuildType":        function () { return "release"; },
        "Build.getOriResCode":       function () { return "89"; },
        "Build.getUseJsc":           function () { return "true"; },
        "Cfg.getChannelId":          function () { return "Main"; },
        "Cfg.getOpenUDID":           function () { return openUDID; },
        "Cfg.getDeviceId":           function () { return deviceId; },
        "Cfg.getDeviceType":         function () { return "Android"; },
        "Cfg.getDeviceOS":           function () { return "android"; },
        "Cfg.getDeviceMobile":       function () { return "sdk_gphone64"; },
        "Cfg.getDeviceOSVer":        function () { return "16"; },
        "Cfg.getDevicePixel":        function () { return frameW + "x" + frameH; },
        "Cfg.getDeviceNetwork":      function () { return "wifi"; },
        "Cfg.getDeviceCarrier":      function () { return ""; },
        "Cfg.getMacAddress":         function () { return "02:00:00:00:00:00"; },
        "Cfg.getPackageName":        function () { return "com.bf.sgscqtv.x64"; },
        "Cfg.getAppVersion":         function () { return "9.17.0.89"; },
        "Cfg.getVersionCode":        function () { return "9170089"; },
        "Cfg.getVersionName":        function () { return "9.17.0.89"; },
        "Cfg.getResScaleTag":        function () { return "n"; },       // 闂備浇顕уù鐑藉极閹间礁绠犻柟鐐劶婵?res/medium
        "Cfg.getResPath":            function () { return ""; },         // bundle 闂?
        "Cfg.mkdir": function (args) { return String(SGSCQAssetsUpdate.mkdir(args)); },
        "Director.getFrameSize":     function () { return frameW + "|" + frameH; },
        "Platform.getBuildTarget":   function () {
            // 闂備礁鎼ˇ顐﹀疾濠婂牆绀夋慨妞诲亾闁靛棔绶氶獮瀣晝閳ь剛鐚惧澶嬬厾闁告稑顭崯蹇旀叏婵犲嫬浜剧紒缁樼洴瀵爼骞嬮鐐插婵犵數鍋犲鎾诲础閸愬樊鍤曞ù鐘差儏閻愬﹦鎲搁弮鍫濈妞ゆ帒瀚悡鏇熺箾閸℃绠扮紒銊ㄥ吹缁辨帗娼忛妸褏鐤勯悗瑙勬礃椤ㄥ﹪骞冮埄鍐╁劅妞ゆ柨鍚嬪▍?iOS 闂?PC闂傚倷鐒︾€笛呯矙閹达附鍋嬮柛鈩冪☉閻鏌嶉埡浣告殶妞?Resources闂?
            try {
                var tp = cc.Application.getInstance().getTargetPlatform();
                // tp: 0=kTargetWindows 3=kTargetAndroid 4=kTargetIphone 5=kTargetIpad
                if (tp === 4 || tp === 5) return "ios";
                if (tp === 0) return "android";   // PC port 闂?闂備礁鎼ˇ顐﹀疾濠婂牆钃熼柕濞垮剭濞差亜瀚夌紒顖滅roid婵犵數鍎戠徊钘壝洪敂鐐床闁告劦浜栭崑鎾诲垂椤愶絺鎷圭紓浣割儏椤︿即骞嗛弮鍫濈伋闁惧浚鍋呴悘鎶芥⒒娴ｈ櫣甯涙い銊ユ嚇閹勭節閸ャ劌浜梺鍓插亝濞叉牜绮婚敐澶屽彄闁搞儯鍔嶇亸顓㈡煙椤旇棄鐏撮柟?
                return "android";                  // 闂傚倷鑳堕…鍫㈡崲閹寸姴鍨濈€光偓閳ь剟鎳?
            } catch(e) { return "ios"; }
        },
        "Get3rdChName.Get3rdChName": function () { return ""; },
        // 闂傚倷鑳堕崑銊╁磿閺屻儱钃熼柨鐔哄Т閻?闂傚倷娴囬惃顐﹀幢閳轰焦顔勭紓?SDK闂傚倷鐒︾€笛呯矙閹烘鍤屽Δ锝呭暙閸屻劍绻涢幋鐐垫噭濞存嚎鍊濋弻锟犲磼濞戞﹩鍤嬬紓浣插亾闁逞屽墴濮婃椽宕崟顓炩拡婵炲瓨绮庨崑娑㈠煝瀹ュ唯闁靛绲煎Ч?婵犵數鍋為崹鍫曞箰閸濄儳鐭撻柣銏㈩焾閺嬩焦銇勯弴妤€浜惧Δ鐘靛仦閸旀牜绮悢鍝ョ瘈闁告洦鍙庡Σ鐑芥煟鎼达紕浠涙繝銏★耿楠炲﹥鎯旈敐鍡樻濡炪倖鍔ч梽鍕磻閵娾晜鐓熼柡鍐ｅ亾婵炵厧鏈鍕箛椤掑偆鍞?闂傚倷鑳堕崑銊╁磿閺屻儱钃熼柨鐔哄Т閻?
        "ThirdSdk.isLogined":         function () { return "false"; },
        "ThirdSdk.isSupportFunction": function () { return "false"; },
        "ThirdSdk.getLoginInfo":      function () { return ""; },
        "ThirdSdk.logout":            function () { return ""; },
        "ThirdSdk.login":             function () { return ""; },
        "ThirdSdk.doThirdAction":     function () { return ""; },
        "ThirdSdk.thirdSubMitInfo":   function () { return ""; },
        "ThirdSdk.pay":               function () { return ""; },
        "ThirdSdk.exit":              function () { return ""; },
        "Statistic.reportLog":        function () { return ""; },
        "Statistic.statistic":        function () { return ""; },
        "Statistic.startSession":     function () { return ""; },
        "Statistic.endSession":       function () { return ""; },
        "Statistic.reportEvent":      function () { return ""; },
        "Alipay.pay":             function () { return ""; },
        "Alipay.pay_ext":         function () { return ""; },
        "App.exit":               function () { return ""; },
        "AssetsMgr.init": function (args) { return String(SGSCQAssetsUpdate.init(args)); },
        "AssetsMgr.release": function () { return String((typeof SGSCQRemoteUpdateCoordinator !== "undefined" && SGSCQRemoteUpdateCoordinator.releaseOrDefer()) || SGSCQAssetsUpdate.release()); },
        "AssetsMgr.setConnectionTimeout": function (args) { return String(SGSCQAssetsUpdate.setConnectionTimeout(args)); },
        "AssetsMgr.setOperationTimeout": function (args) { return String(SGSCQAssetsUpdate.setOperationTimeout(args)); },
        "AssetsMgr.setDownloadRangeByString": function (args) { return String(SGSCQAssetsUpdate.setDownloadRange(args)); },
        "AssetsMgr.startDownloadThread": function () { return SGSCQAssetsUpdate.startDownload() ? "true" : "false"; },
        "AssetsMgr.startUncompressThread": function () { return SGSCQAssetsUpdate.startUncompress() ? "true" : "false"; },
        "BfSdk.login":            function () { return ""; },
        "BfSdk.loginByHistory":   function () { return ""; },
        "BfSdk.regis":            function () { return ""; },
        "BfSdk.requestTelBinding": function () { return ""; },
        "Build.getCocos2dDebugLevel": function () { return "0"; },
        "Cfg.getChannelName":     function () { return "Main"; },
        "Cfg.getIDFA":            function () { return ""; },
        "Cfg.getMacroStr":        function () { return ""; },
        "Cfg.unZipFile":          function () { return "true"; },
        "EasySdkMgr.getModuleVersion": function () { return ""; },
        "Feedback.enter":         function () { return ""; },
        "GlobalMethod.exitGame":  function () { return ""; },
        "GlobalMethod.simTouch": function (args) {
            var parts = String(args || "").split("|");
            if (parts.length !== 2 || !xs.__sgscqSimTouch) { return ""; }
            return xs.__sgscqSimTouch(Number(parts[0]), Number(parts[1])) ? "1" : "";
        },
        "GlobalMethod.exitGameWithUserClick": function () { return ""; },
        "GlobalMethod.getGeTuiCID": function () { return ""; },
        "GlobalMethod.showMessageBox_Android": function () { return ""; },
        "GlobalMethod.visitStore": function () { return ""; },
        "GlobalMethod.visitUrl":  function () { return ""; },
        "Kefu.onActionWithService": function () { return ""; },
        "Log.SGSCQLog_SetLogFileName": function () { return ""; },
        "Share.savePhoto":        function () { return ""; },
        "Share.setWallPaper":     function () { return ""; },
        "Share.shareToSina":      function () { return ""; },
        "Share.shareToWX":        function () { return ""; },
        "Thirdpay.third_pay":     function () { return ""; },
        "Utils.deleteDir": function (args) { return String(SGSCQAssetsUpdate.deleteDir(args)); },
        "Utils.getFileDataSize": function (args) { return SGSCQAssetsUpdate.getFileSize(args); },
        "Utils.md5file": function (args) { return SGSCQAssetsUpdate.md5File(args); },
        "BfsdkHelper.init":        function () { return ""; },
        "BfsdkHelper.login":       function () { return ""; },
        "BfsdkHelper.regis":       function () { return ""; },
        "BfsdkHelper.loginByHistory": function () { return ""; },
        "BfsdkHelper.checkBindingCode": function () { return ""; },
        "BfsdkHelper.requestBindingTel": function () { return ""; },
        "BfsdkHelper.event":       function () { return ""; },
        "BfsdkHelper.reportLog":   function () { return ""; },
        "BfsdkHelper.test":        function () { return ""; },
        "ThirdSdkImpl.init":       function () { return ""; },
        "ThirdSdkImpl.login":      function () { return ""; },
        "ThirdSdkImpl.isLogined":  function () { return "false"; },
        "ThirdSdkImpl.loginExchange": function () { return ""; },
        "ThirdSdkImpl.getThirdChannelName": function () { return ""; },
        "ThirdSdkImpl.isSupportFunction": function () { return "false"; },
        "ThirdSdkImpl.doThirdAction": function () { return ""; },
        "ThirdSdkImpl.thirdSubMitInfo": function () { return ""; },
        "ThirdSdkImpl.pay":        function () { return ""; },
        "ThirdSdkImpl.third_pay":  function () { return ""; },
        "ThirdSdkImpl.callFunction": function () { return ""; },
        "ThirdSdk.init":           function () { return ""; },
        "ThirdSdk.loginExchange":  function () { return ""; },
        "ThirdSdk.getThirdChannelName": function () { return ""; },
        "ThirdSdk.third_pay":      function () { return ""; },
        "ThirdSdk.callFunction":   function () { return ""; },
        "XSAssetsMgr.download":    function () { return ""; },
        "XSAssetsMgr.uncompress":  function () { return ""; },
        "XSAssetsMgr.setConnectionTimeout": function () { return ""; },
        "XSAssetsMgr.getConnectionTimeout": function () { return "0"; },
        "C2DXAliPaySDK.payOrder":  function () { return ""; },
        "C2DXAliPaySDK.payOrder_ext": function () { return ""; },
        "C2DXShareSDK.open":       function () { return ""; },
        "C2DXShareSDK.close":      function () { return ""; },
        "C2DXShareSDK.setPlatformConfig": function () { return ""; },
        "C2DXShareSDK.authorize":  function () { return ""; },
        "C2DXShareSDK.cancelAuthorize": function () { return ""; },
        "C2DXShareSDK.hasAutorized": function () { return "false"; },
        "C2DXShareSDK.getUserInfo": function () { return ""; },
        "C2DXShareSDK.shareContent": function () { return ""; },
        "C2DXShareSDK.oneKeyShareContent": function () { return ""; },
        "C2DXShareSDK.showShareMenu": function () { return ""; },
        "C2DXShareSDK.showShareView": function () { return ""; },
        "C2DXShareSDK.saveImageToPhotos": function () { return ""; },
        "StatisticV2.event":       function () { return ""; },
        "BFLocalNotificationHelp.createLocalNotificationFromServer": function () { return ""; },
        "BFLocalNotificationHelp.removeAllLocalNotification": function () { return ""; },
        "Cfg.getDeviceModel":      function () { return "sdk_gphone64"; },
        "Cfg.getDeviceVersionName": function () { return "9.17.0.89"; },
        "Cfg.getDeviceVersionCode": function () { return "9170089"; },
        "Cfg.getVersion":          function () { return "9.17.0.89"; },
        "Cfg.getVersionFileUrl":   function () { return ""; },
        "Trie.queryString":           function (args) { return queryTrie(args); },
        "Trie.AddString":             function (args) { return addTriePayload(args) ? "true" : "false"; },
        "Trie.setTrieMaxlen":         function (args) { trieMaxLen = parseInt(args, 10) || trieMaxLen; return "true"; },
        "TalkingDataAppCpaHelp.init": function () { return ""; },
        "TalkingDataAppCpaHelp.setAppKey": function () { return ""; },
        "TalkingDataAppCpaHelp.getAppKey": function () { return ""; },
        "TalkingDataAppCpaHelp.onRegister": function () { return ""; },
        "TalkingDataAppCpaHelp.onPay": function () { return ""; },
        "TalkingDataAppCpaHelp.onCustEventWithIdx": function () { return ""; },
        "TalkingDataAppCpaHelp.onCreateRole": function () { return ""; },
        "TalkingDataAppCpaHelp.onPlaceOrderByOrderId": function () { return ""; },
        "TalkingDataAppCpaHelp.onPlaceOrderByCategory": function () { return ""; },
        "TestinHelp.initTestinAgent": function () { return ""; },
        "TestinHelp.reportException": function () { return ""; },
        "TestinHelp.leaveBreadcrumb": function () { return ""; },
        "TestinHelp.setLocal_Debug":  function () { return ""; },
        "Product.productInit":    function () { return ""; },
        "Product.getArea":        function () { return ""; },
        "Product.getTestInKey":   function () { return ""; },
        "Product.isTestOnline":   function () { return "false"; },
        "Product.getResSearchRoot": function () { return ""; },
        "Product.getProductUrlByKey": function () { return ""; },
        "Product.readJsonFromFile": function () { return ""; },
        "Debug.dumpSpriteFrameCache": function () { return ""; },
        "Debug.StartDebugger":    function () { return ""; },
        "Debug.LockExecution":    function () { return ""; },
        "Debug.UnlockExecution":  function () { return ""; },
        "Debug.BufferRead":       function () { return ""; },
        "Debug.BufferWrite":      function () { return ""; },
        "ArmDataMgr.":            function () { return ""; },
        "AppStore.":              function () { return ""; },
        "Trie.setTrie":               function (args) { return addTriePayload(args) ? "true" : "false"; },
        "TalkingDataAppCpaHelp.onLogin": function () { return ""; },
        "TestinHelp.setUserInfo":     function () { return ""; },
        "UserInfo.":                  function () { return ""; },
        "Log.SGSCQLog_SetLowestPriority": function () { return ""; },
        "Log.SGSCQLog_SendLogToUMENG": function () { return ""; },
        "SpriteFrameCache.retainSpriteFramesWithFile": function (args) {
            return trySpriteFrameCache(normalizePlistPath(args), "add");
        },
        "SpriteFrameCache.releaseSpriteFramesWithFile": function (args) {
            return trySpriteFrameCache(normalizePlistPath(args), "remove");
        },
        "SpriteFrameCache.removeSpriteFramesWithFile": function (args) {
            return trySpriteFrameCache(normalizePlistPath(args), "remove");
        }
    };

    var connecter = {
        invoke: function (module, method, args) {
            var key = module + "." + method;
            var h = handlers[key] || handlers[module + "."];
            if (h) { return h(args); }
            if (!unhandled[key]) {
                unhandled[key] = 1;
                cc.log("[JsbConnecter stub] unhandled: " + key + " args=" + args);
            } else {
                unhandled[key]++;
            }
            return "";
        }
    };
    // ---- SGSCQ ARM64 Atlas JSON compatibility ----
    (function () {
        if (typeof JSON === "undefined" || typeof JSON.parse !== "function" || JSON.parse.__sgscqAtlasCompat) {
            return;
        }
        var baseParse = JSON.parse;
        function hasValue(v) {
            return v !== undefined && v !== null && String(v) !== "";
        }
        function normalizeEntry(entry) {
            if (!entry || typeof entry !== "object") { return; }
            if (String(entry.type) === "2") {
                entry.type = "3";
            }
            if (hasValue(entry.skill_id)) {
                entry.type = "4";
            } else if (hasValue(entry.equipment_id)) {
                entry.type = "3";
            } else if (hasValue(entry.godness_id) || hasValue(entry.goddess_id)) {
                entry.type = "10";
            } else if (hasValue(entry.general_id)) {
                entry.type = "1";
            }
        }
        function normalizeList(list) {
            if (!list || typeof list.length !== "number") { return; }
            for (var i = 0; i < list.length; i++) {
                normalizeEntry(list[i]);
            }
        }
        function normalizeAtlasBlock(block) {
            if (!block || typeof block !== "object") { return; }
            normalizeList(block.add);
            normalizeList(block.upd);
            normalizeList(block.del);
            for (var k in block) {
                if (block.hasOwnProperty(k)) {
                    normalizeEntry(block[k]);
                }
            }
        }
        function normalizePayload(root) {
            if (!root || typeof root !== "object") { return root; }
            normalizeList(root.atlas_list);
            normalizeList(root.atlasList);
            normalizeAtlasBlock(root.Atlas);
            normalizeAtlasBlock(root.atlas_info);
            if (root.cmn && typeof root.cmn === "object") {
                normalizeAtlasBlock(root.cmn.Atlas);
                normalizeAtlasBlock(root.cmn.atlas_info);
            }
            return root;
        }
        function patchLoadJson(container, name) {
            if (!container || typeof container[name] !== "function") {
                return false;
            }
            var Ctor = container[name];
            var ok = false;
            if (Ctor.prototype && typeof Ctor.prototype.loadJson === "function" && !Ctor.prototype.loadJson.__sgscqAtlasCompat) {
                var baseLoadJson = Ctor.prototype.loadJson;
                Ctor.prototype.loadJson = function (json) {
                    normalizePayload(json);
                    normalizeEntry(json);
                    return baseLoadJson.apply(this, arguments);
                };
                Ctor.prototype.loadJson.__sgscqAtlasCompat = true;
                ok = true;
            }
            if (typeof Ctor.createWithJson === "function" && !Ctor.createWithJson.__sgscqAtlasCompat) {
                var baseCreateWithJson = Ctor.createWithJson;
                Ctor.createWithJson = function (json) {
                    normalizePayload(json);
                    normalizeEntry(json);
                    return baseCreateWithJson.apply(this, arguments);
                };
                Ctor.createWithJson.__sgscqAtlasCompat = true;
                ok = true;
            }
            return ok;
        }
        function patchCtor(container, name) {
            if (!container || typeof container[name] !== "function" || container[name].__sgscqAtlasCompat) {
                return false;
            }
            var Base = container[name];
            var Wrapped = function () {
                for (var i = 0; i < arguments.length; i++) {
                    normalizePayload(arguments[i]);
                    normalizeEntry(arguments[i]);
                }
                return Base.apply(this, arguments);
            };
            for (var k in Base) {
                try { Wrapped[k] = Base[k]; } catch (copyErr) {}
            }
            Wrapped.prototype = Base.prototype;
            Wrapped.__sgscqAtlasCompat = true;
            container[name] = Wrapped;
            return true;
        }
        function patchModels() {
            var ok = false;
            try {
                if (typeof xs !== "undefined" && xs.Models) {
                    ok = patchLoadJson(xs.Models, "Altas") || ok;
                    ok = patchLoadJson(xs.Models, "Atlas") || ok;
                    ok = patchCtor(xs.Models, "Altas") || ok;
                    ok = patchCtor(xs.Models, "Atlas") || ok;
                }
            } catch (e) {
            }
            return ok;
        }
        var wrapped = function () {
            patchModels();
            return normalizePayload(baseParse.apply(this, arguments));
        };
        wrapped.__sgscqAtlasCompat = true;
        JSON.parse = wrapped;
        if (!patchModels() && typeof setInterval === "function") {
            var timer = setInterval(function () {
                if (patchModels() && typeof clearInterval === "function") {
                    clearInterval(timer);
                }
            }, 100);
        }
    })();
xs.JsbConnecter = { getInstance: function () { return connecter; } };
})();

// ---- 闂傚倷绀侀幉锟犫€﹂崶顒€绐楅柟鎹愵嚙閺?UI 闂傚倷鑳剁涵鍫曞疾閻愭祴鏋嶉柨婵嗘处閸嬫牗銇勯幇鍫曟闁?JS 濠?----
// 濠电姷鏁搁崑鐐哄箰閹间礁绠熼柨鐔哄Т閸ㄥ倹绻涢崱妯诲鞍闁搞倕锕ラ妵鍕疀閹炬剚浼€闂佸搫妫欏姗€鍩?C++ 闂備礁鎼ˇ顐﹀疾濠婂棙鎳岄梻浣芥〃閼冲爼宕戦妶鍛殾婵☆垶妫垮▽顏堟煠濞村娅呴柡鍛櫆缁绘盯骞嬮悙鏉戠殤闂佺顑嗛幑鍥蓟?UI 闂傚倷鑳剁涵鍫曞疾閻愭祴鏋嶉柨婵嗘处閸嬫牗銇勯幇鍓佺暠鏉╂繃绻涢幘瀛樼殤闁归攱寰妘tton 闂傚倷鐒﹂惇褰掑礉瀹€鈧埀顒佸嚬閸欏啴骞冭閳ь剙婀辨慨鐑芥偪閳ь剟姊洪崨濠傚闁哄懏绮撻幃鈥斥枎閹邦喚顔?
// (setBackgroundSpriteForState / addTargetWithActionForControlEvents /
//  setTitleForState / setPreferredSize 缂? 婵?cc.ControlButton 婵犵數鍋為崹鍫曞箰閹绢喖纾婚柟鍓х帛閻撶娀鏌ｉ妶搴＄仭鐟滄妸鍛＜閺夊牄鍔庣粻鐐碘偓娈垮櫘閸嬪﹤鐣烽妸鈺婃晩闁告瑯鍋傜欢姘跺箖濡法鐤€闁圭偓鍓氭禒鎾⒑?
// ---- SGSCQ ARM64 cache lifetime guard ----
(function () {
    function guardCache(cache, names, label) {
        if (!cache) { return; }
        for (var i = 0; i < names.length; i++) {
            var name = names[i];
            if (typeof cache[name] === "function" && !cache[name].__sgscqKeepAlive) {
                cache[name] = (function (method) {
                    var fn = function () {
                        if (typeof cc !== "undefined" && cc.log) {
                            cc.log("[SGSCQ cache guard] " + label + "." + method + " skipped");
                        }
                    };
                    fn.__sgscqKeepAlive = true;
                    return fn;
                })(name);
            }
        }
    }
    try {
        if (cc && cc.SpriteFrameCache && cc.SpriteFrameCache.getInstance) {
            guardCache(cc.SpriteFrameCache.getInstance(), [
                "removeUnusedSpriteFrames",
                "removeSpriteFrames",
                "removeSpriteFramesFromTexture"
            ], "SpriteFrameCache");
        }
        if (cc && cc.TextureCache && cc.TextureCache.getInstance) {
            guardCache(cc.TextureCache.getInstance(), [
                "removeUnusedTextures",
                "removeAllTextures"
            ], "TextureCache");
        }
    } catch (e) {
        if (typeof cc !== "undefined" && cc.log) {
            cc.log("[SGSCQ cache guard] install failed: " + e);
        }
    }
})();
// ---- SGSCQ ARM64 pg texture alias compatibility ----
(function () {
    if (typeof cc === "undefined") {
        return;
    }

    var fileUtils = null;
    try {
        fileUtils = cc.FileUtils && cc.FileUtils.getInstance ? cc.FileUtils.getInstance() : null;
        if (fileUtils && typeof fileUtils.getSearchPaths === "function" && typeof fileUtils.setSearchPaths === "function") {
            var currentPaths = fileUtils.getSearchPaths() || [];
            var wanted = ["res_n_main/medium/fnt/", "fnt/", "res_n_main/medium/tex/", "res_n_main/medium/", "tex/"];
            var merged = [];
            function addPath(path) {
                for (var p = 0; p < merged.length; p++) {
                    if (merged[p] === path) { return; }
                }
                merged.push(path);
            }
            for (var w = 0; w < wanted.length; w++) { addPath(wanted[w]); }
            for (var c = 0; c < currentPaths.length; c++) { addPath(currentPaths[c]); }
            fileUtils.setSearchPaths(merged);
            if (cc.log) { cc.log("[SGSCQ pg-alias] search paths patched: " + wanted.join(",")); }
        }
    } catch (sp) {
        if (cc.log) { cc.log("[SGSCQ pg-alias] search path patch failed: " + sp); }
    }

    function isPgOrPng(path) {
        return typeof path === "string" && /\.(pg|png)$/i.test(path);
    }

    function isFnt(path) {
        return typeof path === "string" && /\.fnt$/i.test(path);
    }

    function toPg(path) {
        return path.replace(/\.png$/i, ".pg");
    }

    function toPng(path) {
        return path.replace(/\.pg$/i, ".png");
    }

    function pushUnique(list, value) {
        if (!value) { return; }
        for (var i = 0; i < list.length; i++) {
            if (list[i] === value) { return; }
        }
        list.push(value);
    }

    function candidates(path) {
        var normalized = String(path).replace(/\\/g, "/");
        var pg = toPg(normalized);
        var list = [];
        var slash = pg.lastIndexOf("/");
        var name = slash >= 0 ? pg.substring(slash + 1) : pg;
        if (pg.indexOf("res_n_main/") === 0 || pg.indexOf("fnt/") === 0) {
            pushUnique(list, pg);
        } else if (pg.indexOf("tex/") === 0) {
            pushUnique(list, pg);
            pushUnique(list, "res_n_main/medium/" + pg);
            pushUnique(list, "res_n_main/medium/tex/" + pg.substring(4));
        } else {
            pushUnique(list, pg);
            pushUnique(list, "tex/" + pg);
            pushUnique(list, "res_n_main/medium/tex/" + pg);
            pushUnique(list, "res_n_main/medium/" + pg);
            if (slash >= 0) {
                var dir = pg.substring(0, slash);
                pushUnique(list, "res_n_main/medium/" + dir + "/" + name);
                pushUnique(list, "res_n_main/medium/tex/" + dir + "/" + name);
            }
        }
        return list;
    }

    function fntCandidates(path) {
        var normalized = String(path).replace(/\\/g, "/");
        var name = normalized.substring(normalized.lastIndexOf("/") + 1);
        var list = [];
        pushUnique(list, normalized);
        pushUnique(list, "fnt/" + name);
        pushUnique(list, "res_n_main/medium/" + normalized);
        pushUnique(list, "res_n_main/medium/fnt/" + name);
        return list;
    }

    function isNumericFnt(path) {
        if (typeof path !== "string") { return false; }
        var normalized = path.replace(/\\/g, "/");
        var name = normalized.substring(normalized.lastIndexOf("/") + 1);
        return /^[0-9]+\.fnt$/i.test(name);
    }

    function logBadBmFont(path, replacement) {
        try {
            var message = "[SGSCQ bmfont] invalid numeric fnt: " + path + " -> " + replacement;
            if (typeof cc !== "undefined" && cc.log) {
                cc.log(message);
            } else if (typeof console !== "undefined" && console.log) {
                console.log(message);
            }
            try {
                throw new Error(message);
            } catch (stackErr) {
                if (stackErr && stackErr.stack && cc && cc.log) {
                    cc.log("[SGSCQ bmfont stack] " + stackErr.stack);
                }
            }
        } catch (ignored) {
        }
    }

    function plistTextureCandidates(path) {
        var normalized = String(path).replace(/\\/g, "/");
        var base = normalized.replace(/\.plist$/i, ".pg");
        var pngBase = toPng(base);
        var name = base.substring(base.lastIndexOf("/") + 1);
        var pngName = pngBase.substring(pngBase.lastIndexOf("/") + 1);
        var list = [];
        if (base.indexOf("res_n_main/") !== 0) {
            pushUnique(list, "res_n_main/medium/tex/" + pngBase);
            pushUnique(list, "res_n_main/medium/tex/" + base);
            pushUnique(list, "res_n_main/medium/" + pngBase);
            pushUnique(list, "res_n_main/medium/" + base);
            if (base.indexOf("tex/") === 0) {
                pushUnique(list, "res_n_main/medium/" + pngBase);
                pushUnique(list, "res_n_main/medium/" + base);
                pushUnique(list, "res_n_main/medium/tex/" + pngBase.substring(4));
                pushUnique(list, "res_n_main/medium/tex/" + base.substring(4));
            } else {
                pushUnique(list, "res_n_main/medium/tex/" + pngName);
                pushUnique(list, "res_n_main/medium/tex/" + name);
            }
        }
        pushUnique(list, pngBase);
        pushUnique(list, base);
        return list;
    }

    function plistCandidates(path) {
        var normalized = String(path).replace(/\\/g, "/");
        var name = normalized.substring(normalized.lastIndexOf("/") + 1);
        var list = [];
        if (normalized.indexOf("res_n_main/") === 0) {
            pushUnique(list, name);
            pushUnique(list, "tex/" + name);
            pushUnique(list, normalized);
        } else if (normalized.indexOf("tex/") === 0) {
            pushUnique(list, normalized.substring(4));
            pushUnique(list, normalized);
            pushUnique(list, name);
            pushUnique(list, "res_n_main/medium/" + normalized);
            pushUnique(list, "res_n_main/medium/tex/" + normalized.substring(4));
        } else {
            pushUnique(list, normalized);
            pushUnique(list, name);
            pushUnique(list, "tex/" + name);
            pushUnique(list, "res_n_main/medium/tex/" + name);
            pushUnique(list, "res_n_main/medium/" + normalized);
        }
        return list;
    }

    var plistSentinels = {
        "0_6_4_DengluScene01.plist": "0_6_4_DengluScene_kaishi.png",
        "Cmn01.plist": "Cmn01_news.png",
        "Cmn02.plist": "Cmn02_zhuangbeiqianghua.png",
        "Cmn03.plist": "Cmn03_EndButton1001.png",
        "MainMenuScene01.plist": "MainMenuScene01_shu.png",
        "YangchengScene01.plist": "YangchengScene01_zudui.png",
        "ZuiduiMenuScene01.plist": "ZuiduiMenuScene01_zhenxing.png",
        "WorshipScene01.plist": "WorshipScene01_caitiaodi.png"
    };

    var spriteFrameAliases = {
        "WorshipScene01_\uFF0Bhao.png": "WorshipScene01_\u951B\u5A93ao.png"
    };

    function aliasSpriteFrameName(name) {
        if (typeof name !== "string") { return name; }
        return spriteFrameAliases[name] || name;
    }

    function patchWorshipSceneFrameAlias() {
        try {
            var cfg = xs && xs.Cfg && xs.Cfg.Sprite && xs.Cfg.Sprite.WorshipScene01 && xs.Cfg.Sprite.WorshipScene01.worship_add;
            if (cfg && cfg.frameName) {
                var aliased = aliasSpriteFrameName(cfg.frameName);
                if (aliased !== cfg.frameName) {
                    if (cc.log) {
                        cc.log("[SGSCQ frame-alias] cfg WorshipScene01.worship_add " + cfg.frameName + " -> " + aliased);
                    }
                    cfg.frameName = aliased;
                }
                return;
            }
        } catch (e) {
        }
        patchWorshipSceneFrameAlias.__sgscqRetries = (patchWorshipSceneFrameAlias.__sgscqRetries || 0) + 1;
        if (patchWorshipSceneFrameAlias.__sgscqRetries < 120 && typeof setTimeout === "function") {
            setTimeout(patchWorshipSceneFrameAlias, 100);
        }
    }

    function plistName(path) {
        var normalized = String(path).replace(/\\/g, "/");
        return normalized.substring(normalized.lastIndexOf("/") + 1);
    }

    function isSpriteFramesLoaded(cache, path) {
        var sentinel = plistSentinels[plistName(path)];
        if (!sentinel || !cache || typeof cache.getSpriteFrame !== "function") {
            return true;
        }
        try {
            return !!cache.getSpriteFrame(sentinel);
        } catch (e) {
            return false;
        }
    }

    function getTexture(path) {
        try {
            if (cc.TextureCache && cc.TextureCache.getInstance) {
                var cache = cc.TextureCache.getInstance();
                if (cache && typeof cache.addImage === "function") {
                    return cache.addImage(path);
                }
            }
        } catch (e) {
        }
        return null;
    }

    function wrapMethod(target, name) {
        if (!target || typeof target[name] !== "function" || target[name].__sgscqPgAlias) {
            return;
        }
        var base = target[name];
        var wrapped = function (path) {
            if (name === "create" && target === cc.LabelBMFont && isFnt(arguments[1])) {
                var args = Array.prototype.slice.call(arguments);
                if (isNumericFnt(args[1])) {
                    logBadBmFont(args[1], "fnt/wujiangName.fnt");
                    args[1] = "fnt/wujiangName.fnt";
                } else {
                    args[1] = fntCandidates(arguments[1])[0];
                }
                return base.apply(this, args);
            }
            if (name === "addSpriteFrames" && typeof path === "string" && /\.plist$/i.test(path) && arguments.length === 1) {
                var plists = plistCandidates(path);
                var textures = plistTextureCandidates(path);
                for (var pi = 0; pi < plists.length; pi++) {
                    try {
                        if (cc.log) {
                            cc.log("[SGSCQ pg-alias] addSpriteFrames plist-only=" + plists[pi]);
                        }
                        base.apply(this, [plists[pi]]);
                        if (isSpriteFramesLoaded(this, plists[pi])) {
                            if (cc.log) {
                                cc.log("[SGSCQ pg-alias] addSpriteFrames verified=" + plists[pi]);
                            }
                            return;
                        }
                    } catch (po) {
                    }
                    for (var p = 0; p < textures.length; p++) {
                        try {
                            if (cc.log) {
                                cc.log("[SGSCQ pg-alias] addSpriteFrames plist=" + plists[pi] + " texture=" + textures[p]);
                            }
                            base.apply(this, [plists[pi], textures[p]]);
                            if (isSpriteFramesLoaded(this, plists[pi])) {
                                if (cc.log) {
                                    cc.log("[SGSCQ pg-alias] addSpriteFrames verified=" + plists[pi] + " texture=" + textures[p]);
                                }
                                return;
                            }
                        } catch (pe) {
                        }
                        try {
                            var tex = getTexture(textures[p]);
                            if (tex) {
                                base.apply(this, [plists[pi], tex]);
                                if (isSpriteFramesLoaded(this, plists[pi])) {
                                    if (cc.log) {
                                        cc.log("[SGSCQ pg-alias] addSpriteFrames verified=" + plists[pi] + " textureObject=" + textures[p]);
                                    }
                                    return;
                                }
                            }
                        } catch (te) {
                        }
                    }
                }
            }
            if (isPgOrPng(path)) {
                var list = candidates(path);
                for (var i = 0; i < list.length; i++) {
                    try {
                        var args = Array.prototype.slice.call(arguments);
                        args[0] = list[i];
                        var ret = base.apply(this, args);
                        if (ret) {
                            return ret;
                        }
                    } catch (e) {
                    }
                }
            }
            return base.apply(this, arguments);
        };
        wrapped.__sgscqPgAlias = true;
        target[name] = wrapped;
    }

    function wrapSpriteFrameNameMethod(target, name) {
        if (!target || typeof target[name] !== "function" || target[name].__sgscqFrameNameAlias) {
            return;
        }
        var base = target[name];
        var wrapped = function (frameName) {
            var aliased = aliasSpriteFrameName(frameName);
            if (aliased !== frameName) {
                var args = Array.prototype.slice.call(arguments);
                args[0] = aliased;
                if (cc.log) {
                    cc.log("[SGSCQ frame-alias] " + frameName + " -> " + aliased);
                }
                return base.apply(this, args);
            }
            return base.apply(this, arguments);
        };
        wrapped.__sgscqFrameNameAlias = true;
        target[name] = wrapped;
    }

    if (cc.LabelBMFont) {
        wrapMethod(cc.LabelBMFont, "create");
    }
    if (cc.Sprite) {
        wrapMethod(cc.Sprite, "create");
        wrapSpriteFrameNameMethod(cc.Sprite, "createWithSpriteFrameName");
        if (cc.Sprite.prototype) {
            wrapMethod(cc.Sprite.prototype, "init");
            wrapMethod(cc.Sprite.prototype, "initWithFile");
            wrapMethod(cc.Sprite.prototype, "setTexture");
            wrapSpriteFrameNameMethod(cc.Sprite.prototype, "initWithSpriteFrameName");
        }
    }
    if (cc.Scale9Sprite) {
        wrapSpriteFrameNameMethod(cc.Scale9Sprite, "createWithSpriteFrameName");
        if (cc.Scale9Sprite.prototype) {
            wrapSpriteFrameNameMethod(cc.Scale9Sprite.prototype, "initWithSpriteFrameName");
        }
    }

    try {
        if (cc.TextureCache && cc.TextureCache.getInstance) {
            var textureCache = cc.TextureCache.getInstance();
            wrapMethod(textureCache, "addImage");
        }
    } catch (e1) {
    }

    try {
        if (cc.SpriteFrameCache && cc.SpriteFrameCache.getInstance) {
            var frameCache = cc.SpriteFrameCache.getInstance();
            wrapMethod(frameCache, "addSpriteFrame");
            wrapMethod(frameCache, "addSpriteFrames");
            wrapSpriteFrameNameMethod(frameCache, "getSpriteFrame");
        }
    } catch (e2) {
    }
    patchWorshipSceneFrameAlias();
})();
// ---- SGSCQ ARM64 BFControlSlider compatibility ----
(function () {
    if (typeof xs === "undefined" || typeof cc === "undefined" || typeof cc.ControlSlider === "undefined") {
        return;
    }
    if (typeof xs.BFControlSlider === "undefined") {
        xs.BFControlSlider = cc.ControlSlider;
    }
    var P = xs.BFControlSlider.prototype;
    if (!P.setValueNoNotify && P.setValue) {
        P.setValueNoNotify = function (value) {
            return this.setValue(value);
        };
    }
    if (!P.setObserver) {
        P.setObserver = function (observer) {
            this._sgscqObserver = observer;
        };
    }
})();
// ---- SGSCQ ARM64 BFCardView compatibility ----
(function patchBFCardViewCompat() {
    if (typeof xs === "undefined" || typeof cc === "undefined" || typeof cc.TableView === "undefined") {
        if (typeof setTimeout === "function") { setTimeout(patchBFCardViewCompat, 100); }
        return;
    }
    if (typeof xs.BFCardView === "undefined") {
        xs.BFCardView = cc.TableView;
    }
    var P = xs.BFCardView.prototype;
    var noop = function () {};
    function n(v, fallback) {
        v = parseFloat(v);
        return isNaN(v) ? fallback : v;
    }
    function callBase(self, name, args) {
        var fn = self["__sgscqBase_" + name];
        if (typeof fn === "function") {
            return fn.apply(self, args || []);
        }
    }
    function getSize(self) {
        if (self && typeof self.getViewSize === "function") {
            return self.getViewSize();
        }
        if (self && typeof self.getContentSize === "function") {
            return self.getContentSize();
        }
        return { width: 0, height: 0 };
    }
    function getOffset(self) {
        if (self && typeof self.getContentOffset === "function") {
            return self.getContentOffset();
        }
        return { x: 0, y: 0 };
    }
    function setOffset(self, offset, animated) {
        if (!self || typeof self.setContentOffset !== "function") {
            return;
        }
        if (typeof cc.p === "function") {
            offset = cc.p(offset.x || 0, offset.y || 0);
        }
        try {
            self.setContentOffset(offset, !!animated);
        } catch (e) {
            self.setContentOffset(offset);
        }
    }
    function clampOffset(self, offset) {
        var min = null;
        var max = null;
        try { if (typeof self.minContainerOffset === "function") { min = self.minContainerOffset(); } } catch (e1) {}
        try { if (typeof self.maxContainerOffset === "function") { max = self.maxContainerOffset(); } } catch (e2) {}
        if (min) {
            if (typeof min.x === "number") { offset.x = Math.max(offset.x, min.x); }
            if (typeof min.y === "number") { offset.y = Math.max(offset.y, min.y); }
        }
        if (max) {
            if (typeof max.x === "number") { offset.x = Math.min(offset.x, max.x); }
            if (typeof max.y === "number") { offset.y = Math.min(offset.y, max.y); }
        }
        return offset;
    }
    function getContainerChildren(self) {
        var container = null;
        if (self && typeof self.getContainer === "function") {
            container = self.getContainer();
        } else if (self && self._container) {
            container = self._container;
        }
        if (container && typeof container.getChildren === "function") {
            return container.getChildren() || [];
        }
        return [];
    }
    function makeNode() {
        if (cc.Layer && typeof cc.Layer.create === "function") { return cc.Layer.create(); }
        if (cc.Node && typeof cc.Node.create === "function") { return cc.Node.create(); }
        return cc.Node ? new cc.Node() : null;
    }
    function normalizeSize(size, fallbackW, fallbackH) {
        var w = size && typeof size.width === "number" ? size.width : fallbackW;
        var h = size && typeof size.height === "number" ? size.height : fallbackH;
        if (w <= 0 || w > 2000) { w = fallbackW; }
        if (h <= 0 || h > 2000) { h = fallbackH; }
        return typeof cc.size === "function" ? cc.size(w, h) : { width: w, height: h };
    }
    function normalizeCardCellSize(source, table, idx, viewSize) {
        var raw = null;
        try {
            if (source && typeof source.tableCellSizeForIndex === "function") {
                raw = source.tableCellSizeForIndex(table, idx || 0);
            }
        } catch (e0) {}
        var fallbackW = n(source && source.normalCellWid, 0);
        if (fallbackW <= 0 || fallbackW > 1000) {
            try { fallbackW = n(xs.Cfg.Resource.Card.w, 180); } catch (e1) { fallbackW = 180; }
        }
        if (fallbackW <= 0 || fallbackW > 1000) { fallbackW = 180; }
        var fallbackH = viewSize && viewSize.height > 0 ? viewSize.height : 420;
        return normalizeSize(raw, fallbackW, fallbackH);
    }
    function makeCardCell(source, table, idx, cellSize) {
        if (source && typeof source.tableCellAtIndex === "function") {
            return source.tableCellAtIndex(table, idx);
        }
        if (!source || !source.cardData || !source.cardData[idx]) { return null; }
        var cell = null;
        try {
            if (cc.TableViewCell && typeof cc.TableViewCell.create === "function") {
                cell = cc.TableViewCell.create();
            } else if (cc.TableViewCell) {
                cell = new cc.TableViewCell();
            } else {
                cell = makeNode();
            }
            if (!cell) { return null; }
            if (typeof cell.setContentSize === "function") { cell.setContentSize(cellSize); }
            var data = source.cardData[idx];
            if (!data || typeof data.createCard_General !== "function") { return cell; }
            var cardW = n(xs && xs.Cfg && xs.Cfg.Resource && xs.Cfg.Resource.Card && xs.Cfg.Resource.Card.w, cellSize.width);
            var cardH = n(xs && xs.Cfg && xs.Cfg.Resource && xs.Cfg.Resource.Card && xs.Cfg.Resource.Card.h, Math.min(cellSize.height, 420));
            var card = data.createCard_General({
                pos: cc.p ? cc.p(cardW / 2, cardH / 2) : { x: cardW / 2, y: cardH / 2 },
                markShowFengyin: !!source.markShowFengyin
            });
            if (card && typeof card.reloadData === "function") {
                if (data.name === "xs.Models.GeneralSoul" && typeof data.getBaseGeneralModel === "function") {
                    card.reloadData(data.getBaseGeneralModel());
                } else if (data.name === "xs.Models.EvolutionInfo" && typeof data.getCacheGeneralModel === "function") {
                    card.reloadData(data.getCacheGeneralModel());
                } else {
                    card.reloadData(data);
                }
            }
            if (card && data.name === "xs.Models.General" && typeof card.setSurrender === "function") {
                var surrender = false;
                try {
                    surrender = xs.Profile.GameData.Mgr.getInstance().Generals.isSurrender(data);
                } catch (e0) { surrender = false; }
                card.setSurrender(!!surrender);
            }
            if (card && typeof cell.addChild === "function") {
                cell.addChild(card, source.cardData.length - idx, 15);
            }
            return cell;
        } catch (e) {
            if (cc && typeof cc.log === "function") { cc.log("[SGSCQ BFCardView] direct cell failed idx=" + idx + ": " + e); }
            return cell;
        }
    }
    function cardCount(table) {
        var source = table.__sgscqCardSource;
        if (!source || !source.cardData) { return 0; }
        try {
            if (typeof source.numberOfCellsInTableView === "function") {
                return source.numberOfCellsInTableView(table) || 0;
            }
            if (typeof source.cardData.length === "number") {
                return source.cardData.length;
            }
        } catch (e) {}
        return 0;
    }
    function clampFloat(table, value) {
        var count = cardCount(table);
        if (!count) { return 0; }
        value = parseFloat(value);
        if (isNaN(value)) { value = parseInt(table._sgscqCardViewSelIdx || 0, 10) || 0; }
        return Math.max(0, Math.min(count - 1, value));
    }
    function getFloatIdx(table) {
        if (typeof table.__sgscqCardFloatIdx === "number") {
            return clampFloat(table, table.__sgscqCardFloatIdx);
        }
        return clampFloat(table, parseInt(table._sgscqCardViewSelIdx || 0, 10) || 0);
    }
    function cardDataKey(data) {
        if (!data) { return ""; }
        try { if (typeof data.getPkId === "function") { return data.name + ":" + data.getPkId(); } } catch (e0) {}
        try { if (typeof data.getGeneralId === "function") { return data.name + ":" + data.getGeneralId(); } } catch (e1) {}
        try { if (typeof data.getId === "function") { return data.name + ":" + data.getId(); } } catch (e2) {}
        return (data.name || typeof data) + ":" + (data.pk_id || data.general_id || data.id || "");
    }
    function getCachedCardCell(source, table, idx, cellSize) {
        if (!table.__sgscqCardCellCache) { table.__sgscqCardCellCache = {}; }
        var data = source && source.cardData ? source.cardData[idx] : null;
        var key = cardDataKey(data);
        var cell = table.__sgscqCardCellCache[idx];
        if (cell && (table.__sgscqForceCardRefresh || cell.__sgscqDataKey !== key)) {
            try { if (typeof cell.removeFromParent === "function") { cell.removeFromParent(true); } } catch (e0) {}
            delete table.__sgscqCardCellCache[idx];
            cell = null;
        }
        if (!cell) {
            cell = makeCardCell(source, table, idx, cellSize);
            if (cell) {
                cell.__sgscqDataKey = key;
                table.__sgscqCardCellCache[idx] = cell;
            }
        }
        return cell;
    }
    function hideUnusedCardCells(table) {
        var cache = table && table.__sgscqCardCellCache;
        if (!cache) { return; }
        for (var key in cache) {
            if (!cache.hasOwnProperty(key)) { continue; }
            var cell = cache[key];
            if (!cell || cell.__sgscqLastRenderSerial === table.__sgscqCardRenderSerial) { continue; }
            try {
                if (typeof cell.setVisible === "function") { cell.setVisible(false); }
            } catch (e0) {}
        }
    }
    function clearCardCellCache(table) {
        var cache = table && table.__sgscqCardCellCache;
        if (!cache) { return; }
        for (var key in cache) {
            if (!cache.hasOwnProperty(key)) { continue; }
            try {
                if (cache[key] && typeof cache[key].removeFromParent === "function") {
                    cache[key].removeFromParent(true);
                }
            } catch (e0) {}
        }
        table.__sgscqCardCellCache = {};
        table.__sgscqCardCells = [];
        table.__sgscqCardHitBoxes = [];
    }
    function renderCardFallback(table) {
        var source = table.__sgscqCardSource;
        if (!source || !source.cardData) { return; }
        table.__sgscqCardCells = [];
        table.__sgscqCardHitBoxes = [];
        table.__sgscqCardRenderSerial = (table.__sgscqCardRenderSerial || 0) + 1;
        var count = cardCount(table);
        if (!count) { return; }
        var viewSize = table.__sgscqCardViewSize || getSize(table);
        var cellSize = normalizeCardCellSize(source, table, 0, viewSize);
        var floatIdx = getFloatIdx(table);
        var selectedIdx = Math.max(0, Math.min(count - 1, Math.round(floatIdx)));
        var bigScale = n(table._sgscqCardBigScale, 1);
        var smlScale = n(table._sgscqCardSmlScale, 0.78);
        if (smlScale <= 0 || smlScale > 1.2) { smlScale = 0.78; }
        if (bigScale <= 0 || bigScale > 1.5) { bigScale = 1; }
        var cardW = Math.max(80, Math.min(cellSize.width, n(xs && xs.Cfg && xs.Cfg.Resource && xs.Cfg.Resource.Card && xs.Cfg.Resource.Card.w, cellSize.width)));
        var cardH = Math.max(120, Math.min(cellSize.height, n(xs && xs.Cfg && xs.Cfg.Resource && xs.Cfg.Resource.Card && xs.Cfg.Resource.Card.h, cellSize.height)));
        var leftPad = Math.max(8, Math.min(28, viewSize.width * 0.018));
        var selectedCenter = leftPad + (cardW * bigScale * 0.5);
        var selectedBottom = Math.max(0, Math.min(16, (viewSize.height - cardH)));
        var smallScaleBase = smlScale > 0.25 ? smlScale : 0.56;
        var smallScale = Math.max(0.48, Math.min(0.64, smallScaleBase));
        var gapBigToSmall = 224;
        var gapSmall = 104;
        var leadSpacing = (cardW * bigScale * 0.5) + gapBigToSmall + (cardW * smallScale * 0.5);
        var smallSpacing = (cardW * smallScale) + gapSmall;
        table.__sgscqCardLeadSpacing = leadSpacing;
        var normalDragUnit = n(table._sgscqNormalCellWidth, 0);
        if (normalDragUnit <= 0 || normalDragUnit > 1000) { normalDragUnit = cardW; }
        table.__sgscqCardDragUnit = Math.max(120, Math.min(360, normalDragUnit));
        var first = Math.max(0, Math.floor(floatIdx) - 1);
        var smallCount = Math.max(5, Math.ceil((viewSize.width - selectedCenter) / smallSpacing) + 3);
        var last = Math.min(count - 1, Math.ceil(floatIdx) + smallCount);
        for (var i = first; i <= last; i++) {
            try {
                var cell = getCachedCardCell(source, table, i, cellSize);
                if (!cell) { continue; }
                cell.__sgscqIdx = i;
                cell.__sgscqLastRenderSerial = table.__sgscqCardRenderSerial;
                if (typeof cell.setIdx === "function") { cell.setIdx(i); }
                if (!cell.getIdx) { cell.getIdx = function () { return this.__sgscqIdx || 0; }; }
                if (typeof cell.setVisible === "function") { cell.setVisible(true); }
                if (typeof cell.setContentSize === "function") { cell.setContentSize(cellSize); }
                if (typeof cell.setAnchorPoint === "function") { cell.setAnchorPoint(cc.p(0, 0)); }
                var rel = i - floatIdx;
                var absRel = Math.abs(rel);
                var weight = Math.max(0, 1 - absRel);
                var scale = smallScale + ((bigScale - smallScale) * weight);
                var centerX;
                if (rel >= -1 && rel <= 1) {
                    centerX = selectedCenter + (rel * leadSpacing);
                } else if (rel > 1) {
                    centerX = selectedCenter + leadSpacing + ((rel - 1) * smallSpacing);
                } else {
                    centerX = selectedCenter - leadSpacing + ((rel + 1) * smallSpacing);
                }
                var x = centerX - ((cardW * scale) * 0.5);
                var y = selectedBottom;
                if (typeof cell.setPosition === "function") {
                    cell.setPosition(x, y);
                }
                if (typeof cell.setScale === "function") {
                    cell.setScale(scale);
                }
                if (typeof cell.setZOrder === "function") {
                    cell.setZOrder(1000 - Math.round(absRel * 10));
                }
                var parent = null;
                try { if (typeof cell.getParent === "function") { parent = cell.getParent(); } } catch (e3) {}
                if (!parent && typeof table.addChild === "function") { table.addChild(cell); }
                table.__sgscqCardCells.push(cell);
                table.__sgscqCardHitBoxes.push({
                    idx: i,
                    x: x,
                    y: y,
                    w: cardW * scale,
                    h: cardH * scale
                });
            } catch (e2) {
                if (cc && typeof cc.log === "function") { cc.log("[SGSCQ BFCardView] cell failed idx=" + i + ": " + e2); }
            }
        }
        hideUnusedCardCells(table);
        table.__sgscqForceCardRefresh = false;
        table.__sgscqLastRenderedIdx = selectedIdx;
    }
    function notifyFirstIdx(table, idx) {
        var delegate = table && table._sgscqCardViewDelegate;
        if (!delegate) { delegate = table && table.__sgscqCardSource; }
        try {
            if (delegate && typeof delegate.onFirstIdx === "function") {
                delegate.onFirstIdx(idx);
            }
        } catch (e) {
            if (cc && typeof cc.log === "function") { cc.log("[SGSCQ BFCardView] onFirstIdx failed idx=" + idx + ": " + e); }
        }
    }
    function commitCardSelection(table, idx, fromTouch) {
        var source = table && table.__sgscqCardSource;
        var count = source && source.cardData ? source.cardData.length : 0;
        if (!count) { return; }
        idx = Math.max(0, Math.min(count - 1, parseInt(idx, 10) || 0));
        var old = parseInt(table._sgscqCardViewSelIdx || 0, 10) || 0;
        table.__sgscqCardFloatIdx = idx;
        table._sgscqCardViewSelIdx = idx;
        renderCardFallback(table);
        if (idx !== old || !table.__sgscqNotifiedFirstIdx) {
            table.__sgscqNotifiedFirstIdx = true;
            notifyFirstIdx(table, idx);
        }
        if (fromTouch && cc && typeof cc.log === "function") {
            cc.log("[SGSCQ BFCardView] select idx=" + idx + " old=" + old);
        }
    }
    function animateCardSelection(table, idx, fromTouch) {
        var count = cardCount(table);
        if (!count) { return; }
        idx = Math.max(0, Math.min(count - 1, parseInt(idx, 10) || 0));
        var start = getFloatIdx(table);
        if (Math.abs(start - idx) < 0.01) {
            commitCardSelection(table, idx, fromTouch);
            return;
        }
        var token = (table.__sgscqCardAnimToken || 0) + 1;
        table.__sgscqCardAnimToken = token;
        var startTime = (new Date()).getTime();
        var duration = Math.min(360, Math.max(160, Math.abs(idx - start) * 120));
        function tick() {
            if (!table || table.__sgscqCardAnimToken !== token) { return; }
            var t = ((new Date()).getTime() - startTime) / duration;
            if (t >= 1) {
                commitCardSelection(table, idx, fromTouch);
                return;
            }
            var ease = 1 - Math.pow(1 - Math.max(0, t), 3);
            table.__sgscqCardFloatIdx = clampFloat(table, start + ((idx - start) * ease));
            renderCardFallback(table);
            if (typeof setTimeout === "function") { setTimeout(tick, 16); }
            else { commitCardSelection(table, idx, fromTouch); }
        }
        tick();
    }
    function selectCard(table, idx, fromTouch, animated) {
        if (animated) { animateCardSelection(table, idx, fromTouch); }
        else { commitCardSelection(table, idx, fromTouch); }
    }
    function getCardDragUnit(table) {
        var unit = n(table && table.__sgscqCardDragUnit, 0);
        if (unit <= 0 || unit > 1000) {
            unit = n(table && table._sgscqNormalCellWidth, 0);
        }
        if (unit <= 0 || unit > 1000) {
            try { unit = n(xs.Cfg.Resource.Card.w, 220); } catch (e0) { unit = 220; }
        }
        return Math.max(120, Math.min(360, unit));
    }
    function dragCardTo(table, dx, fast) {
        if (!table) { return; }
        var lead = getCardDragUnit(table);
        var begin = (typeof table.__sgscqDragBeginFloat === "number") ? table.__sgscqDragBeginFloat : getFloatIdx(table);
        table.__sgscqCardAnimToken = (table.__sgscqCardAnimToken || 0) + 1;
        table.__sgscqCardFloatIdx = clampFloat(table, begin - (dx / lead));
        renderCardFallback(table);
    }
    function endCardDrag(table, dx) {
        if (!table) { return; }
        var current = getFloatIdx(table);
        var target = Math.round(current);
        table.__sgscqDragBeginFloat = null;
        selectCard(table, target, true, true);
    }
    function localTouchPoint(table, touch) {
        try {
            if (table && typeof table.convertTouchToNodeSpace === "function") {
                return table.convertTouchToNodeSpace(touch);
            }
        } catch (e0) {}
        try {
            var p = touch && touch.getLocation ? touch.getLocation() : null;
            if (p && table && typeof table.convertToNodeSpace === "function") {
                return table.convertToNodeSpace(p);
            }
            return p;
        } catch (e1) {}
        return null;
    }
    function hitCardIdx(table, p) {
        if (!table || !p) { return -1; }
        var boxes = table.__sgscqCardHitBoxes || [];
        for (var i = boxes.length - 1; i >= 0; i--) {
            var b = boxes[i];
            if (p.x >= b.x && p.x <= b.x + b.w && p.y >= b.y && p.y <= b.y + b.h) {
                return b.idx;
            }
        }
        var nearest = -1;
        var bestDist = 999999;
        for (var j = boxes.length - 1; j >= 0; j--) {
            var box = boxes[j];
            if (p.x >= box.x && p.x <= box.x + box.w) {
                var distY = p.y < box.y ? (box.y - p.y) : (p.y > box.y + box.h ? (p.y - box.y - box.h) : 0);
                if (distY < bestDist) {
                    bestDist = distY;
                    nearest = box.idx;
                }
            }
        }
        if (bestDist <= 60) { return nearest; }
        return -1;
    }
    function isCardGestureArea(table, p) {
        if (!table || !p) { return false; }
        var viewSize = table.__sgscqCardViewSize || getSize(table);
        if (viewSize && viewSize.width && viewSize.height) {
            if (p.x < 0 || p.y < 0 || p.x > viewSize.width || p.y > viewSize.height) {
                return false;
            }
        }
        var boxes = table.__sgscqCardHitBoxes || [];
        if (!boxes.length) {
            return p.y >= 0 && p.y <= 470;
        }
        var minX = 999999, minY = 999999, maxX = -999999, maxY = -999999;
        for (var i = 0; i < boxes.length; i++) {
            var b = boxes[i];
            minX = Math.min(minX, b.x);
            minY = Math.min(minY, b.y);
            maxX = Math.max(maxX, b.x + b.w);
            maxY = Math.max(maxY, b.y + b.h);
        }
        if (viewSize && viewSize.width) {
            maxX = Math.min(maxX, viewSize.width - 8);
        }
        return p.x >= (minX - 80) && p.x <= (maxX + 45) &&
            p.y >= (minY - 80) && p.y <= (maxY + 45);
    }
    function createCardFallback(source, size) {
        if (!source || !source.cardData) { return null; }
        var table = makeNode();
        if (!table) { return null; }
        var viewSize = normalizeSize(size, 900, 560);
        var nativeSetTouchEnabled = typeof table.setTouchEnabled === "function" ? table.setTouchEnabled : null;
        var nativeSetTouchMode = typeof table.setTouchMode === "function" ? table.setTouchMode : null;
        var nativeSetTouchPriority = typeof table.setTouchPriority === "function" ? table.setTouchPriority : null;
        table.__sgscqCardSource = source;
        table.__sgscqCardViewSize = viewSize;
        table.__sgscqCardCells = [];
        table.__sgscqCardCellCache = {};
        table.__sgscqCardDidReload = false;
        if (typeof table.setContentSize === "function") { table.setContentSize(viewSize); }
        table.setObserver = function (observer) { this._sgscqObserver = observer; };
        table.setDelegate = function (delegate) { this.__sgscqCardDelegate = delegate || source; };
        table.setDataSource = function (dataSource) {
            if (dataSource && dataSource !== this.__sgscqCardSource) {
                clearCardCellCache(this);
            }
            this.__sgscqCardSource = dataSource || source;
        };
        table.setCardViewDelegate = function (delegate) { this._sgscqCardViewDelegate = delegate; };
        table.setDirection = function () {};
        table.setTouchPriority = function (priority) {
            this.__sgscqTouchPriority = priority;
            if (nativeSetTouchPriority) {
                try { return nativeSetTouchPriority.call(this, priority); } catch (e0) {}
            }
        };
        table.getTouchPriority = function () { return this.__sgscqTouchPriority || 0; };
        table.setTouchEnabled = function (enabled) {
            this.__sgscqTouchEnabled = enabled;
            if (nativeSetTouchEnabled) {
                try { return nativeSetTouchEnabled.call(this, enabled); } catch (e0) {}
            }
        };
        table.dequeueCell = function () { return null; };
        table.getViewSize = function () { return viewSize; };
        table.getContainer = function () { return this; };
        table.getContentOffset = function () { return this.__sgscqCardOffset || { x: 0, y: 0 }; };
        table.setContentOffset = function (offset) { this.__sgscqCardOffset = offset || { x: 0, y: 0 }; };
        table.minContainerOffset = function () { return cc.p ? cc.p(0, 0) : { x: 0, y: 0 }; };
        table.maxContainerOffset = function () { return cc.p ? cc.p(0, 0) : { x: 0, y: 0 }; };
        table.setNormalCellWidth = function (width) {
            this._sgscqNormalCellWidth = width;
            if (this.__sgscqCardDidReload) { renderCardFallback(this); }
        };
        table.setCellScaleValue = function (bigScale, smallScale) {
            this._sgscqCardBigScale = bigScale;
            this._sgscqCardSmlScale = smallScale;
            if (this.__sgscqCardDidReload) { renderCardFallback(this); }
        };
        table.setCardViewSelIdx = function (idx) {
            selectCard(this, idx, false, true);
        };
        table.reloadData = function () {
            clearCardCellCache(this);
            this.__sgscqCardDidReload = true;
            renderCardFallback(this);
        };
        table.adjustFirstCell = function () { renderCardFallback(this); };
        table.adjustOffset = function () { renderCardFallback(this); };
        if (nativeSetTouchMode) {
            try { nativeSetTouchMode.call(table, cc.TOUCH_ONE_BY_ONE); } catch (e0) {}
        }
        if (typeof table.setTouchEnabled === "function") {
            try { table.setTouchEnabled(true); } catch (e1) {}
        }
        table.onTouchBegan = function (touch, event) {
            var p = localTouchPoint(this, touch);
            if (!isCardGestureArea(this, p)) {
                this.__sgscqTouchBegan = null;
                this.__sgscqDragBeginFloat = null;
                return false;
            }
            this.__sgscqTouchBegan = p;
            this.__sgscqDragBeginFloat = getFloatIdx(this);
            this.__sgscqDragStarted = false;
            return true;
        };
        table.onTouchMoved = function (touch, event) {
            var p = localTouchPoint(this, touch);
            if (!p || !this.__sgscqTouchBegan) { return; }
            var dx = p.x - this.__sgscqTouchBegan.x;
            var dy = p.y - this.__sgscqTouchBegan.y;
            if (!this.__sgscqDragStarted && Math.abs(dx) < 8 && Math.abs(dy) < 8) { return; }
            this.__sgscqDragStarted = true;
            dragCardTo(this, dx, true);
        };
        table.onTouchEnded = function (touch, event) {
            var p = localTouchPoint(this, touch);
            var begin = this.__sgscqTouchBegan;
            this.__sgscqTouchBegan = null;
            if (!p || !begin) { return; }
            if (this.__sgscqDragStarted || Math.abs(p.x - begin.x) > 18 || Math.abs(p.y - begin.y) > 18) {
                endCardDrag(this, p.x - begin.x);
                this.__sgscqDragStarted = false;
                return;
            }
            this.__sgscqDragStarted = false;
            this.__sgscqDragBeginFloat = null;
            var idx = hitCardIdx(this, p);
            if (idx < 0) { return; }
            var fakeCell = { getIdx: function () { return idx; } };
            try {
                if (source && typeof source.tableCellTouched === "function") {
                    source.tableCellTouched(this, fakeCell);
                    return;
                }
            } catch (e2) {
                if (cc && typeof cc.log === "function") { cc.log("[SGSCQ BFCardView] tableCellTouched failed idx=" + idx + ": " + e2); }
            }
            selectCard(this, idx, true, true);
        };
        table.__sgscqHitCardIdxAt = function (p) {
            return hitCardIdx(this, p);
        };
        table.__sgscqIsCardGestureArea = function (p) {
            return isCardGestureArea(this, p);
        };
        table.__sgscqTapCardAt = function (p) {
            var idx = hitCardIdx(this, p);
            if (idx < 0) { return false; }
            var fakeCell = { getIdx: function () { return idx; } };
            try {
                if (source && typeof source.tableCellTouched === "function") {
                    source.tableCellTouched(this, fakeCell);
                    selectCard(this, idx, true, true);
                    return true;
                }
            } catch (e2) {
                if (cc && typeof cc.log === "function") { cc.log("[SGSCQ BFCardView] tableCellTouched failed idx=" + idx + ": " + e2); }
            }
            selectCard(this, idx, true, true);
            return true;
        };
        table.__sgscqSwipeSelect = function (dx) {
            endCardDrag(this, dx);
        };
        table.__sgscqBeginDrag = function () {
            this.__sgscqDragBeginFloat = getFloatIdx(this);
        };
        table.__sgscqDragTo = function (dx) {
            dragCardTo(this, dx, true);
        };
        table.__sgscqEndDrag = function (dx) {
            endCardDrag(this, dx);
        };
        return table;
    }
    xs.__sgscqCreateBFCardViewFallback = createCardFallback;
    xs.__sgscqInstallBFCardViewCreateHook = function () {
        if (!xs.BFCardView || !xs.BFCardView.create || xs.BFCardView.create.__sgscq64CardFallbackCreate) { return; }
        var baseBFCardViewCreate = xs.BFCardView.create;
        xs.BFCardView.create = function (source, size) {
            if (source && source.cardData) {
                var fallback = createCardFallback(source, size);
                if (fallback) {
                    if (cc && typeof cc.log === "function") {
                        cc.log("[SGSCQ BFCardView] using 32-bit-compatible card view source=" + (source.name || "unknown"));
                    }
                    return fallback;
                }
            }
            if (typeof baseBFCardViewCreate === "function") {
                return baseBFCardViewCreate.apply(this, arguments);
            }
            return null;
        };
        xs.BFCardView.create.__sgscq64CardFallbackCreate = true;
    };
    function applyCardLayout(self) {
        if (!self) { return; }
        var normalWidth = n(self._sgscqNormalCellWidth, 0);
        var normalScale = n(self._sgscqCellNormalScale, 1);
        var selectedScale = n(self._sgscqCellSelectedScale, normalScale);
        var selectedIdx = Math.max(0, parseInt(self._sgscqCardViewSelIdx || 0, 10) || 0);
        var viewSize = getSize(self);
        if (normalWidth > 0 && viewSize && viewSize.width > 0) {
            var x = viewSize.width * 0.5 - selectedIdx * normalWidth - normalWidth * 0.5;
            var current = getOffset(self);
            setOffset(self, clampOffset(self, { x: x, y: current.y || 0 }), false);
        }
        var cells = getContainerChildren(self);
        var offset = getOffset(self);
        var centerX = (viewSize && viewSize.width ? viewSize.width * 0.5 : 0) - (offset.x || 0);
        for (var i = 0; i < cells.length; i++) {
            var cell = cells[i];
            if (!cell || typeof cell.setScale !== "function") { continue; }
            var pos = (typeof cell.getPosition === "function") ? cell.getPosition() : { x: 0, y: 0 };
            var cellCenter = (pos.x || 0) + (normalWidth > 0 ? normalWidth * 0.5 : 0);
            var denom = normalWidth > 0 ? normalWidth : 1;
            var t = Math.max(0, 1 - Math.abs(cellCenter - centerX) / denom);
            var scale = normalScale + (selectedScale - normalScale) * t;
            cell.setScale(scale);
        }
    }
    if (!P.setNormalCellWidth) {
        P.setNormalCellWidth = function (width) {
            this._sgscqNormalCellWidth = width;
            applyCardLayout(this);
        };
    }
    if (!P.getNormalCellWidth) {
        P.getNormalCellWidth = function () {
            return this._sgscqNormalCellWidth || 0;
        };
    }
    if (!P.setCellScaleValue) {
        P.setCellScaleValue = function (bigScale, smallScale) {
            this._sgscqCellSelectedScale = n(bigScale, 1);
            this._sgscqCellNormalScale = n(smallScale, 0.62);
            applyCardLayout(this);
        };
    }
    if (!P.setCardViewSelIdx) {
        P.setCardViewSelIdx = function (idx) {
            this._sgscqCardViewSelIdx = idx;
            applyCardLayout(this);
        };
    }
    if (!P.setScrollSlider) {
        P.setScrollSlider = function (slider) {
            this._sgscqScrollSlider = slider;
        };
    }
    if (!P.setObserver) {
        P.setObserver = function (observer) {
            this._sgscqObserver = observer;
        };
    }
    if (!P.setCardViewDelegate) {
        P.setCardViewDelegate = function (delegate) {
            this._sgscqCardViewDelegate = delegate;
        };
    }
    if (!P.setDataSource) {
        P.setDataSource = function (dataSource) {
            this._dataSource = dataSource;
        };
    }
    if (!P.setDelegate) {
        P.setDelegate = function (delegate) {
            this._delegate = delegate;
        };
    }
    if (!P.getCellsCount) {
        P.getCellsCount = function () {
            if (this._dataSource && typeof this._dataSource.numberOfCellsInTableView === "function") {
                return this._dataSource.numberOfCellsInTableView(this) || 0;
            }
            return 0;
        };
    }
    if (!P.__sgscqBase_reloadData && typeof P.reloadData === "function") {
        P.__sgscqBase_reloadData = P.reloadData;
    }
    P.reloadData = function () {
        var ret = callBase(this, "reloadData", arguments);
        applyCardLayout(this);
        return ret;
    };
    if (!P.__sgscqBase_scrollViewDidScroll && typeof P.scrollViewDidScroll === "function") {
        P.__sgscqBase_scrollViewDidScroll = P.scrollViewDidScroll;
    }
    P.scrollViewDidScroll = function () {
        var ret = callBase(this, "scrollViewDidScroll", arguments);
        applyCardLayout(this);
        return ret;
    };
    if (!P.adjustFirstCell) {
        P.adjustFirstCell = function () { applyCardLayout(this); };
    }
    if (!P.adjustOffset) {
        P.adjustOffset = function () { applyCardLayout(this); };
    }
    if (!P.minContainerOffset) P.minContainerOffset = noop;
    if (!P.onSliderMoveEnded) {
        P.onSliderMoveEnded = function () { applyCardLayout(this); };
    }
    if (!P.onSliderValueChange) {
        P.onSliderValueChange = function (value) {
            if (this._sgscqScrollSlider && typeof this._sgscqScrollSlider.setValueNoNotify === "function") {
                this._sgscqScrollSlider.setValueNoNotify(value);
            }
            applyCardLayout(this);
        };
    }
    xs.__sgscqInstallBFCardViewCreateHook();
    if (cc && typeof cc.log === "function" && !xs.__sgscqBFCardViewCreateEnabledLogged) {
        xs.__sgscqBFCardViewCreateEnabledLogged = true;
        cc.log("[SGSCQ BFCardView] 32-bit-compatible card view create enabled");
    }
    patchBFCardViewCompat.__sgscqRetries = (patchBFCardViewCompat.__sgscqRetries || 0) + 1;
    if (patchBFCardViewCompat.__sgscqRetries < 40 && typeof setTimeout === "function") {
        setTimeout(patchBFCardViewCompat, 100);
    }
})();
// ---- SGSCQ ARM64 native widget compatibility ----
(function () {
    if (typeof xs === "undefined" || typeof cc === "undefined") {
        return;
    }
    var noop = function () {};

    function keep(target, name, value) {
        if (typeof target[name] === "undefined") {
            target[name] = value;
        }
    }

    if (typeof cc.ControlButton !== "undefined") {
        var BP = cc.ControlButton.prototype;
        keep(BP, "setFilterMove", noop);
        keep(BP, "setSwallowTouch", noop);
        keep(BP, "setEventOnDisable", noop);
        keep(BP, "setTouchPriority", function (priority) { this.__sgscqControlButtonTouchPriority = priority; });
        keep(BP, "getTouchPriority", function () { return this.__sgscqControlButtonTouchPriority || 0; });
    }

    if (typeof cc.TableView !== "undefined") {
        keep(xs, "BFSortTableView", cc.TableView);
        var TVP = cc.TableView.prototype;
        var baseTableSetDirection = typeof TVP.setDirection === "function" ? TVP.setDirection : null;
        if (!TVP.setDirection || !TVP.setDirection.__sgscq64DirectionCompat) {
            TVP.setDirection = function (direction) {
                this.__sgscqDirection = direction;
                if (baseTableSetDirection) {
                    return baseTableSetDirection.apply(this, arguments);
                }
            };
            TVP.setDirection.__sgscq64DirectionCompat = true;
        }
        function calcCellPosAtIndex(table, idx) {
            idx = parseInt(idx, 10) || 0;
            var size = null;
            var source = table && (table._dataSource || table.__sgscqHugeSource || table.__sgscqCardSource);
            try {
                if (source && typeof source.tableCellSizeForIndex === "function") {
                    size = source.tableCellSizeForIndex(table, idx);
                }
            } catch (e0) {}
            if (!size && table && table.__sgscqHugeCellSize) { size = table.__sgscqHugeCellSize; }
            if (!size && table && table._sgscqCellSize) { size = table._sgscqCellSize; }
            var viewSize = null;
            try {
                if (table && typeof table.getViewSize === "function") { viewSize = table.getViewSize(); }
            } catch (e1) {}
            var cellW = size && typeof size.width === "number" ? size.width : 0;
            var cellH = size && typeof size.height === "number" ? size.height : 0;
            var viewH = viewSize && typeof viewSize.height === "number" ? viewSize.height : 0;
            if (table && table.__sgscqDirection === cc.SCROLLVIEW_DIRECTION_HORIZONTAL) {
                return (typeof cc.p === "function") ? cc.p(idx * cellW, 0) : { x: idx * cellW, y: 0 };
            }
            return (typeof cc.p === "function") ? cc.p(0, viewH - ((idx + 1) * cellH)) : { x: 0, y: viewH - ((idx + 1) * cellH) };
        }
        keep(TVP, "setDataSource", function (dataSource) { this._dataSource = dataSource; });
        keep(TVP, "setDelegate", function (delegate) { this._delegate = delegate; });
        keep(TVP, "minContainerOffset", noop);
        keep(TVP, "maxContainerOffset", noop);
        keep(TVP, "getCellPosAtIndex", function (idx) { return calcCellPosAtIndex(this, idx); });
    }

    // ---- SGSCQ ARM64 BFSortTableWidget fallback ----
    function getSortData(widget) {
        var data = widget && widget._sgscqData;
        if (!data) { return []; }
        if (typeof data.length === "number") { return data; }
        if (typeof data.count === "function" && typeof data.objectAtIndex === "function") {
            var arr = [];
            for (var i = 0; i < data.count(); i++) { arr.push(data.objectAtIndex(i)); }
            return arr;
        }
        return [];
    }

    function setSortWidgetTouchPriority(widget, priority) {
        widget._sgscqTouchPriority = priority;
        var children = null;
        try { children = widget.getChildren ? widget.getChildren() : null; } catch (e0) {}
        if (!children) { return; }
        for (var i = 0; i < children.length; i++) {
            var child = children[i];
            if (child && typeof child.setTouchPriority === "function") {
                try { child.setTouchPriority(priority); } catch (e1) {}
            }
        }
    }

    function selectSortIndex(widget, idx) {
        widget._sgscqSelectIdx = idx;
        var delegate = widget._sgscqDelegate;
        if (delegate && typeof delegate.onSelectCell === "function") {
            delegate.onSelectCell(idx, true);
            if (delegate.bScrollView && typeof delegate.runAction === "function" &&
                typeof delegate.showPullList === "function" && cc.CallFunc &&
                typeof cc.CallFunc.create === "function") {
                delegate.runAction(cc.CallFunc.create(delegate.showPullList, delegate));
            }
        }
    }

    function createSortRowButton(widget, idx, title) {
        var row = null;
        try {
            if (xs.Views && xs.Views.Btn && typeof xs.Views.Btn.create === "function") {
                row = xs.Views.Btn.create("Btn_PullList");
            }
        } catch (e0) {}
        if (!row && cc.ControlButton && typeof cc.ControlButton.create === "function") {
            try { row = cc.ControlButton.create(); } catch (e1) {}
        }
        if (!row && cc.Layer && typeof cc.Layer.create === "function") {
            row = cc.Layer.create();
        }
        if (!row) { return null; }
        if (typeof row.setAnchorPoint === "function") { row.setAnchorPoint(cc.p(0, 0)); }
        if (typeof row.setPreferredSize === "function") { row.setPreferredSize(cc.size(270, 52)); }
        if (typeof row.setContentSize === "function") { row.setContentSize(cc.size(270, 52)); }
        if (typeof row.setString === "function") {
            row.setString(title, 28);
        } else if (typeof row.setTitleForState === "function") {
            row.setTitleForState(title, cc.CONTROL_STATE_NORMAL);
        }
        if (typeof row.setZoomOnTouchDown === "function") { row.setZoomOnTouchDown(false); }
        if (typeof row.setTouchPriority === "function") { row.setTouchPriority(widget._sgscqTouchPriority || -4); }
        if (typeof row.addTargetWithActionForControlEvents === "function") {
            row.addTargetWithActionForControlEvents(widget, function () {
                selectSortIndex(widget, idx);
            }, cc.CONTROL_EVENT_TOUCH_UP_INSIDE);
        }
        return row;
    }

    function sortDataSignature(data) {
        var signature = "" + data.length;
        for (var i = 0; i < data.length; i++) {
            var value = "" + data[i];
            signature += "|" + value.length + ":" + value;
        }
        return signature;
    }

    function rebuildSortRows(widget) {
        if (!widget) { return; }
        var data = getSortData(widget);
        var signature = sortDataSignature(data);
        if (widget._sgscqRenderedDataSignature === signature) { return; }
        try {
            if (typeof widget.removeAllChildren === "function") { widget.removeAllChildren(true); }
        } catch (e0) {}
        var rowH = 52;
        var width = 270;
        if (typeof widget.setContentSize === "function") { widget.setContentSize(cc.size(width, Math.max(rowH, data.length * rowH))); }
        var builtRows = 0;
        for (var i = 0; i < data.length; i++) {
            var title = "" + data[i];
            var row = createSortRowButton(widget, i, title);
            if (!row) { continue; }
            if (typeof row.setPosition === "function") {
                row.setPosition(0, (data.length - i - 1) * rowH);
            }
            if (typeof row.setZOrder === "function") { row.setZOrder(10 + i); }
            widget.addChild(row);
            builtRows++;
        }
        widget._sgscqRenderedDataSignature = builtRows === data.length ? signature : null;
    }

    if (typeof xs.BFSortTableWidget === "undefined" && cc.Layer && typeof cc.Layer.extend === "function") {
        xs.BFSortTableWidget = cc.Layer.extend({
            ctor: function () {
                this._super();
                if (cc.associateWithNative) { cc.associateWithNative(this, cc.Layer); }
                this._sgscqData = [];
                this._sgscqDelegate = null;
                this._sgscqSelectIdx = 0;
                this._sgscqTouchPriority = -4;
            },
            init: function () { return true; },
            setData: function (data) { this._sgscqData = data || []; rebuildSortRows(this); },
            setDelegate: function (delegate) { this._sgscqDelegate = delegate; },
            setSelectIdx: function (idx) { this._sgscqSelectIdx = idx; },
            getSelectIdx: function () { return this._sgscqSelectIdx || 0; },
            setTouchPriority: function (priority) { setSortWidgetTouchPriority(this, priority); },
            scrollViewDidScroll: noop,
            scrollViewDidZoom: noop,
            tableCellTouched: noop,
            tableCellSizeForIndex: function () { return cc.size(270, 52); },
            numberOfCellsInTableView: function () { return getSortData(this).length; },
            tableCellAtIndex: function () {
                return (cc.TableViewCell && typeof cc.TableViewCell.create === "function") ? cc.TableViewCell.create() : new cc.Node();
            }
        });
    } else if (typeof xs.BFSortTableWidget === "undefined") {
        xs.BFSortTableWidget = cc.Layer || cc.Node;
    }
    if (xs.BFSortTableWidget) {
        if (!xs.BFSortTableWidget.create) {
            xs.BFSortTableWidget.create = function () {
                var node = new xs.BFSortTableWidget();
                if (node && typeof node.init === "function") { node.init(); }
                return node;
            };
        }
        var SP = xs.BFSortTableWidget.prototype;
        keep(SP, "init", function () { return true; });
        keep(SP, "setData", function (data) { this._sgscqData = data || []; rebuildSortRows(this); });
        keep(SP, "setDelegate", function (delegate) { this._sgscqDelegate = delegate; });
        keep(SP, "setSelectIdx", function (idx) { this._sgscqSelectIdx = idx; });
        keep(SP, "getSelectIdx", function () { return this._sgscqSelectIdx || 0; });
        keep(SP, "setTouchPriority", function (priority) { setSortWidgetTouchPriority(this, priority); });
        keep(SP, "scrollViewDidScroll", noop);
        keep(SP, "scrollViewDidZoom", noop);
        keep(SP, "tableCellTouched", noop);
        keep(SP, "tableCellSizeForIndex", function () { return (typeof cc.size === "function") ? cc.size(270, 52) : { width: 270, height: 52 }; });
        keep(SP, "numberOfCellsInTableView", function () { return getSortData(this).length; });
        keep(SP, "tableCellAtIndex", function () {
            return (cc.TableViewCell && typeof cc.TableViewCell.create === "function") ? cc.TableViewCell.create() : new cc.Node();
        });
    }

    if (typeof xs.BFWebView === "undefined") {
        xs.BFWebView = cc.Node;
    }
    if (xs.BFWebView) {
        if (!xs.BFWebView.create) {
            xs.BFWebView.create = function () { return new xs.BFWebView(); };
        }
        var WP = xs.BFWebView.prototype;
        keep(WP, "init", function () { return true; });
        keep(WP, "loadUrl", function (url) { this._sgscqUrl = url; });
        keep(WP, "setTouchEnable", function (enabled) { this._sgscqTouchEnabled = enabled; });
        keep(WP, "setIsNeedUpdatePos", function (enabled) { this._sgscqNeedUpdatePos = enabled; });
        keep(WP, "setDelegate", function (delegate) { this._sgscqDelegate = delegate; });
        keep(WP, "updatePosition", noop);
        keep(WP, "onEnter", noop);
        keep(WP, "onExit", noop);
    }
})();
// ---- SGSCQ ARM64 TableView late binding compatibility ----
(function patchTableViewLateCompat() {
    var installTries = 0;
    var installed = false;

    function log(msg) {
        if (typeof cc !== "undefined" && cc && typeof cc.log === "function") {
            cc.log("[SGSCQ tableview late] " + msg);
        }
    }

    function makeFallbackContainer() {
        if (typeof cc === "undefined") { return null; }
        if (cc.Layer && typeof cc.Layer.create === "function") { return cc.Layer.create(); }
        if (cc.Node && typeof cc.Node.create === "function") { return cc.Node.create(); }
        if (cc.Node) { return new cc.Node(); }
        return null;
    }

    function isReplaceCardListSource(source) {
        return !!source && typeof source.cardType === "number" && !!source.m_plugin &&
            typeof source.initDataSource === "function" &&
            typeof source.tableCellAtIndex === "function" &&
            typeof source.numberOfCellsInTableView === "function";
    }

    function sourceName(source) {
        if (!source) { return "null"; }
        if (source.name) { return String(source.name); }
        if (source.m_type !== undefined && source.m_dataSource !== undefined) { return "StoreItemView"; }
        if (source.exchangeListData !== undefined || source.viewCellSize !== undefined) { return "GiftListView"; }
        return "unknown";
    }

    function isKnownListSource(source) {
        var name = sourceName(source);
        return name === "StoreItemView" || name === "GiftListView";
    }

    function isCardNavigateSource(source) {
        return !!(source && source.cardData);
    }

    function saneSize(size) {
        var w = size && typeof size.width === "number" ? size.width : 650;
        var h = size && typeof size.height === "number" ? size.height : 420;
        if (w <= 0 || w > 2000) { w = 650; }
        if (h <= 0 || h > 2000) { h = 420; }
        return (typeof cc.size === "function") ? cc.size(w, h) : { width: w, height: h };
    }

    function saneCellSize(raw) {
        var w = raw && typeof raw.width === "number" ? raw.width : 650;
        var h = raw && typeof raw.height === "number" ? raw.height : 110;
        if (w <= 0 || w > 2000) { w = 650; }
        if (h <= 0 || h > 300) { h = 110; }
        return { width: w, height: h };
    }

    // ---- SGSCQ ARM64 ReplaceCardList JS table fallback ----
    function createReplaceCardListFallback(source, size) {
        var table = makeFallbackContainer();
        if (!table) { return null; }
        var viewSize = saneSize(size);
        if (typeof table.setContentSize === "function") { table.setContentSize(viewSize); }
        table._sgscqDataSource = source;
        table._sgscqDelegateSource = source;
        table._sgscqRenderedCells = [];
        table._sgscqOffset = { x: 0, y: 0 };
        table.setDelegate = function (delegate) { this._sgscqDelegateSource = delegate || source; };
        table.setDataSource = function (dataSource) { this._sgscqDataSource = dataSource || source; };
        table.setDirection = function (direction) { this._sgscqDirection = direction; };
        table.setVerticalFillOrder = function () {};
        table.setTouchPriority = function (priority) { this._sgscqTouchPriority = priority; };
        table.getTouchPriority = function () { return this._sgscqTouchPriority || 0; };
        table.dequeueCell = function () { return null; };
        table.getViewSize = function () { return viewSize; };
        table.getContentOffset = function () { return this._sgscqOffset; };
        table.setContentOffset = function (offset) { this._sgscqOffset = offset || { x: 0, y: 0 }; this.reloadData(); };
        table.minContainerOffset = function () {
            var count = this._sgscqCount || 0;
            var cellSize = this._sgscqCellSize || { width: viewSize.width, height: 110 };
            var minY = Math.min(0, viewSize.height - count * cellSize.height);
            return typeof cc.p === "function" ? cc.p(0, minY) : { x: 0, y: minY };
        };
        table.maxContainerOffset = function () { return typeof cc.p === "function" ? cc.p(0, 0) : { x: 0, y: 0 }; };
        table.getCellPosAtIndex = function (idx) {
            idx = parseInt(idx, 10) || 0;
            var cellSize = this._sgscqCellSize || { width: viewSize.width, height: 110 };
            if (this._sgscqDirection === cc.SCROLLVIEW_DIRECTION_HORIZONTAL) {
                return typeof cc.p === "function" ? cc.p(idx * cellSize.width, 0) : { x: idx * cellSize.width, y: 0 };
            }
            var y = viewSize.height - ((idx + 1) * cellSize.height);
            return typeof cc.p === "function" ? cc.p(0, y) : { x: 0, y: y };
        };
        table.getContainer = function () { return this; };
        table.reloadData = function () {
            var ds = this._sgscqDataSource || source;
            for (var r = 0; r < this._sgscqRenderedCells.length; r++) {
                try {
                    if (this._sgscqRenderedCells[r] && typeof this._sgscqRenderedCells[r].removeFromParent === "function") {
                        this._sgscqRenderedCells[r].removeFromParent(true);
                    }
                } catch (e0) {}
            }
            this._sgscqRenderedCells = [];
            var count = 0;
            try { count = ds.numberOfCellsInTableView(this) || 0; } catch (e1) { log("fallback number failed: " + e1); }
            var rawCellSize = null;
            try {
                if (typeof ds.tableCellSizeForIndex === "function") { rawCellSize = ds.tableCellSizeForIndex(this, 0); }
            } catch (e2) {}
            var cellSize = saneCellSize(rawCellSize);
            this._sgscqCount = count;
            this._sgscqCellSize = cellSize;
            var offset = this._sgscqOffset || { x: 0, y: 0 };
            var firstIdx = Math.max(0, Math.floor(Math.max(0, -(offset.y || 0)) / cellSize.height));
            var visibleCount = Math.max(1, Math.min(count - firstIdx, Math.ceil(viewSize.height / cellSize.height) + 1));
            for (var i = 0; i < visibleCount; i++) {
                var idx = firstIdx + i;
                try {
                    var cell = ds.tableCellAtIndex(this, idx);
                    if (!cell) { continue; }
                    if (typeof cell.setIdx === "function") { cell.setIdx(idx); }
                    cell._idx = idx;
                    if (!cell.getIdx) { cell.getIdx = function () { return this._idx || 0; }; }
                    if (typeof cell.setContentSize === "function") {
                        cell.setContentSize((typeof cc.size === "function") ? cc.size(cellSize.width, cellSize.height) : cellSize);
                    }
                    if (typeof cell.setAnchorPoint === "function" && typeof cc.p === "function") { cell.setAnchorPoint(cc.p(0, 0)); }
                    if (typeof cell.setPosition === "function") { cell.setPosition(0, viewSize.height - ((i + 1) * cellSize.height)); }
                    if (typeof this.addChild === "function") { this.addChild(cell); }
                    this._sgscqRenderedCells.push(cell);
                } catch (e3) {
                    log("fallback cell failed idx=" + idx + ": " + e3);
                }
            }
            log("fallback rendered source=" + sourceName(ds) + " count=" + count + " first=" + firstIdx +
                " visible=" + visibleCount + " size=" + viewSize.width + "x" + viewSize.height);
        };
        table.reloadData();
        return table;
    }

    function hasDataCallbacks(source) {
        return !!source && (typeof source.numberOfCellsInTableView === "function" ||
            typeof source.tableCellAtIndex === "function" ||
            typeof source.tableCellSizeForIndex === "function");
    }

    function hasDelegateCallbacks(source) {
        return !!source && (typeof source.tableCellTouched === "function" ||
            typeof source.scrollViewDidScroll === "function" ||
            typeof source.scrollViewDidZoom === "function");
    }

    function makeForwarder(table, source, name) {
        return function () {
            var target = source;
            if (name === "tableCellTouched" || name === "scrollViewDidScroll" || name === "scrollViewDidZoom") {
                target = table._sgscqDelegateSource || table._sgscqDataSource || source;
            } else {
                target = table._sgscqDataSource || source;
            }
            if (!target || typeof target[name] !== "function") { return undefined; }
            if (name === "numberOfCellsInTableView") {
                return target[name].call(target, table);
            }
            if (name === "tableCellAtIndex" || name === "tableCellSizeForIndex") {
                var idx = arguments.length >= 2 ? arguments[1] : arguments[0];
                return target[name].call(target, table, idx);
            }
            if (name === "tableCellTouched") {
                var cell = arguments.length >= 2 ? arguments[1] : arguments[0];
                return target[name].call(target, table, cell);
            }
            if (name === "scrollViewDidScroll" || name === "scrollViewDidZoom") {
                return target[name].call(target, table);
            }
            return target[name].apply(target, arguments);
        };
    }

    function bindDataSource(table, source, baseSetDataSource, baseSetDelegate) {
        if (!table || !source) { return; }
        var names = ["numberOfCellsInTableView", "tableCellAtIndex", "tableCellSizeForIndex",
            "tableCellTouched", "scrollViewDidScroll", "scrollViewDidZoom"];
        if (hasDataCallbacks(source)) { table._sgscqDataSource = source; }
        if (hasDelegateCallbacks(source)) { table._sgscqDelegateSource = source; }
        for (var i = 0; i < names.length; i++) {
            var name = names[i];
            if (typeof source[name] === "function" &&
                !(table[name] && table[name].__sgscq64LateTableForwarder)) {
                table[name] = makeForwarder(table, source, name);
                table[name].__sgscq64LateTableForwarder = true;
            }
        }
        try {
            if (baseSetDataSource && hasDataCallbacks(source)) {
                baseSetDataSource.call(table, table);
            } else if (hasDataCallbacks(source)) {
                table._dataSource = table;
            }
        } catch (e0) {}
        try {
            if (baseSetDelegate && (hasDataCallbacks(source) || hasDelegateCallbacks(source))) {
                baseSetDelegate.call(table, table);
            } else if (hasDataCallbacks(source) || hasDelegateCallbacks(source)) {
                table._delegate = table;
            }
        } catch (e1) {}
    }

    function install() {
        if (installed) { return true; }
        if (typeof cc === "undefined" || !cc.TableView || !cc.TableView.prototype) { return false; }

        var P = cc.TableView.prototype;
        var baseSetDataSource = typeof P.setDataSource === "function" ? P.setDataSource : null;
        var baseSetDelegate = typeof P.setDelegate === "function" ? P.setDelegate : null;

        if (!P.setDataSource || !P.setDataSource.__sgscq64LateForwardCompat) {
            P.setDataSource = function (source) {
                if (hasDataCallbacks(source)) {
                    bindDataSource(this, source, baseSetDataSource, baseSetDelegate);
                    return;
                }
                if (baseSetDataSource) { return baseSetDataSource.apply(this, arguments); }
                this._dataSource = source;
            };
            P.setDataSource.__sgscq64LateForwardCompat = true;
        }

        if (!P.setDelegate || !P.setDelegate.__sgscq64LateForwardCompat) {
            P.setDelegate = function (source) {
                if (hasDataCallbacks(source) || hasDelegateCallbacks(source)) {
                    bindDataSource(this, source, baseSetDataSource, baseSetDelegate);
                    return;
                }
                if (baseSetDelegate) { return baseSetDelegate.apply(this, arguments); }
                this._delegate = source;
            };
            P.setDelegate.__sgscq64LateForwardCompat = true;
        }

        if (typeof P.reloadData === "function" && !P.reloadData.__sgscq64LateReloadCompat) {
            var baseReloadData = P.reloadData;
            P.reloadData = function () {
                if (this._sgscqDataSource) {
                    bindDataSource(this, this._sgscqDataSource, baseSetDataSource, baseSetDelegate);
                }
                return baseReloadData.apply(this, arguments);
            };
            P.reloadData.__sgscq64LateReloadCompat = true;
        }

        if (typeof cc.TableView.create === "function" && !cc.TableView.create.__sgscq64LateCreateCompat) {
            var baseCreate = cc.TableView.create;
            cc.TableView.create = function (dataSource, size, container) {
                var table = null;
                if (dataSource && dataSource.cardData && xs && typeof xs.__sgscqCreateBFCardViewFallback === "function") {
                    table = xs.__sgscqCreateBFCardViewFallback(dataSource, size);
                    if (table) {
                        log("use BFCardView fallback source=" + sourceName(dataSource) + " size=" + (size && size.width) + "x" + (size && size.height));
                        return table;
                    }
                }
                if (isReplaceCardListSource(dataSource)) {
                    log("use native source=" + sourceName(dataSource) + " size=" + (size && size.width) + "x" + (size && size.height));
                }
                try {
                    table = baseCreate.apply(this, arguments);
                } catch (e) {
                    if (arguments.length === 2) {
                        table = baseCreate.call(this, dataSource, size, makeFallbackContainer());
                    } else {
                        throw e;
                    }
                }
                bindDataSource(table, dataSource, baseSetDataSource, baseSetDelegate);
                return table;
            };
            cc.TableView.create.__sgscq64LateCreateCompat = true;
        }

        installed = true;
        log("installed");
        return true;
    }

    function retryInstall() {
        installTries++;
        if (install() || installTries >= 3000) { return; }
        schedule();
    }

    function schedule() {
        if (typeof setTimeout === "function") {
            setTimeout(retryInstall, 100);
            return;
        }
        try {
            var director = cc.Director && cc.Director.getInstance ? cc.Director.getInstance() : cc.director;
            var scheduler = director && director.getScheduler ? director.getScheduler() : null;
            if (scheduler && typeof scheduler.scheduleCallbackForTarget === "function") {
                scheduler.scheduleCallbackForTarget({ __sgscqTableViewLateCompat: true }, retryInstall, 0.1, 0, 0, false);
            }
        } catch (e) {}
    }

    retryInstall();
})();
// ---- SGSCQ ARM64 Android BACK fallback ----
(function () {
    function log(msg) {
        if (typeof cc !== "undefined" && cc.log) {
            cc.log("[SGSCQ back] " + msg);
        }
    }
    function callFirst(target, names) {
        if (!target) { return false; }
        for (var i = 0; i < names.length; i++) {
            var fn = target[names[i]];
            if (typeof fn === "function") {
                fn.call(target);
                return true;
            }
        }
        return false;
    }
    xs.__androidBackPressed = function () {
        log("pressed");
        try {
            if (callFirst(xs.SceneMgr, ["goBack", "back", "popScene", "returnScene"])) {
                log("handled by xs.SceneMgr");
                return true;
            }
            var director = cc.Director && cc.Director.getInstance ? cc.Director.getInstance() : null;
            var scene = director && director.getRunningScene ? director.getRunningScene() : null;
            if (scene && scene.getChildren) {
                var children = scene.getChildren() || [];
                for (var i = children.length - 1; i >= 0; i--) {
                    var child = children[i];
                    if (callFirst(child, ["onBack", "onClose", "close", "removeFromParentAndCleanup"])) {
                        log("handled by top child");
                        return true;
                    }
                }
            }
        } catch (e) {
            log("failed: " + e);
        }
        return false;
    };
})();
// ---- SGSCQ ARM64 TableView init compatibility ----
(function () {
    if (typeof cc === "undefined" || typeof cc.TableView === "undefined" || !cc.TableView.prototype) {
        return;
    }
    function log(msg) {
        if (cc && typeof cc.log === "function") {
            cc.log("[SGSCQ tableview] " + msg);
        }
    }
    var P = cc.TableView.prototype;
    var callbackNames = [
        "numberOfCellsInTableView",
        "tableCellAtIndex",
        "tableCellSizeForIndex",
        "tableCellTouched",
        "scrollViewDidScroll",
        "scrollViewDidZoom"
    ];
    var baseSetDataSource = typeof P.setDataSource === "function" ? P.setDataSource : null;
    var baseSetDelegate = typeof P.setDelegate === "function" ? P.setDelegate : null;
    function makeFallbackContainer() {
        if (cc.Layer && typeof cc.Layer.create === "function") {
            return cc.Layer.create();
        }
        if (cc.Node && typeof cc.Node.create === "function") {
            return cc.Node.create();
        }
        if (cc.Node) {
            return new cc.Node();
        }
        return null;
    }
    function hasDataCallbacks(source) {
        return !!source && (typeof source.numberOfCellsInTableView === "function" ||
            typeof source.tableCellAtIndex === "function" ||
            typeof source.tableCellSizeForIndex === "function");
    }
    function hasDelegateCallbacks(source) {
        return !!source && (typeof source.tableCellTouched === "function" ||
            typeof source.scrollViewDidScroll === "function" ||
            typeof source.scrollViewDidZoom === "function");
    }
    function makeForwarder(table, source, name) {
        return function () {
            var target = source;
            if (name === "tableCellTouched" || name === "scrollViewDidScroll" || name === "scrollViewDidZoom") {
                target = table._sgscqDelegateSource || table._sgscqDataSource || source;
            } else {
                target = table._sgscqDataSource || source;
            }
            if (!target || typeof target[name] !== "function") {
                return undefined;
            }
            if (name === "numberOfCellsInTableView") {
                return target[name].call(target, table);
            }
            if (name === "tableCellAtIndex" || name === "tableCellSizeForIndex") {
                var idx = arguments.length >= 2 ? arguments[1] : arguments[0];
                return target[name].call(target, table, idx);
            }
            if (name === "tableCellTouched") {
                var cell = arguments.length >= 2 ? arguments[1] : arguments[0];
                return target[name].call(target, table, cell);
            }
            if (name === "scrollViewDidScroll" || name === "scrollViewDidZoom") {
                return target[name].call(target, table);
            }
            return target[name].apply(target, arguments);
        };
    }
    function installForwarders(table, source) {
        var bound = [];
        for (var i = 0; i < callbackNames.length; i++) {
            var name = callbackNames[i];
            if (typeof source[name] === "function") {
                table[name] = makeForwarder(table, source, name);
                table[name].__sgscq64TableForwarder = true;
                bound.push(name);
            }
        }
        if (bound.length) {
            log("bound datasource callbacks: " + bound.join(","));
        }
    }
    function bindDataSource(table, source) {
        if (!table || !source) { return; }
        if (hasDataCallbacks(source)) {
            table._sgscqDataSource = source;
        }
        if (hasDelegateCallbacks(source)) {
            table._sgscqDelegateSource = source;
        }
        installForwarders(table, source);
        try {
            if (baseSetDataSource && hasDataCallbacks(source)) {
                baseSetDataSource.call(table, table);
            } else if (hasDataCallbacks(source)) {
                table._dataSource = table;
            }
        } catch (e0) {}
        try {
            if (baseSetDelegate && hasDelegateCallbacks(source)) {
                baseSetDelegate.call(table, table);
            } else if (hasDelegateCallbacks(source)) {
                table._delegate = table;
            }
        } catch (e1) {}
    }
    if (!P.setDataSource || !P.setDataSource.__sgscq64ForwardCompat) {
        P.setDataSource = function (source) {
            if (hasDataCallbacks(source)) {
                bindDataSource(this, source);
                return;
            }
            if (baseSetDataSource) {
                return baseSetDataSource.apply(this, arguments);
            }
            this._dataSource = source;
        };
        P.setDataSource.__sgscq64ForwardCompat = true;
    }
    if (!P.setDelegate || !P.setDelegate.__sgscq64ForwardCompat) {
        P.setDelegate = function (source) {
            if (hasDataCallbacks(source) || hasDelegateCallbacks(source)) {
                bindDataSource(this, source);
                return;
            }
            if (baseSetDelegate) {
                return baseSetDelegate.apply(this, arguments);
            }
            this._delegate = source;
        };
        P.setDelegate.__sgscq64ForwardCompat = true;
    }
    if (typeof cc.TableView.create === "function" && !cc.TableView.create.__sgscq64CreateCompat) {
        var baseCreate = cc.TableView.create;
        cc.TableView.create = function (dataSource, size, container) {
            var table = null;
            try {
                table = baseCreate.apply(this, arguments);
            } catch (e) {
                if (arguments.length === 2) {
                    table = baseCreate.call(this, dataSource, size, makeFallbackContainer());
                } else {
                    throw e;
                }
            }
            bindDataSource(table, dataSource);
            return table;
        };
        cc.TableView.create.__sgscq64CreateCompat = true;
    }
    if (typeof P.initWithViewSize !== "function" || P.initWithViewSize.__sgscq64InitCompat) {
        return;
    }
    var baseInitWithViewSize = P.initWithViewSize;
    P.initWithViewSize = function (size, container) {
        try {
            return baseInitWithViewSize.apply(this, arguments);
        } catch (e) {
            if (("" + e).indexOf("wrong number of arguments") < 0 || arguments.length !== 1) {
                throw e;
            }
            var fallbackContainer = null;
            if (typeof cc.Layer !== "undefined" && typeof cc.Layer.create === "function") {
                fallbackContainer = cc.Layer.create();
            } else if (typeof cc.Node !== "undefined" && typeof cc.Node.create === "function") {
                fallbackContainer = cc.Node.create();
            } else if (typeof cc.Node !== "undefined") {
                fallbackContainer = new cc.Node();
            }
            return baseInitWithViewSize.call(this, size, fallbackContainer);
        }
    };
    P.initWithViewSize.__sgscq64InitCompat = true;
})();
if (typeof xs.BFButton === "undefined" && typeof cc.ControlButton !== "undefined") {
    xs.BFButton = cc.ControlButton;
}
// BFButton 闂備礁鎼ˇ顐﹀疾濠婂棙鎳屾繝鐢靛Л閸嬫挸霉閿濆懏璐￠柍缁樻閺屽秷顧侀柛鎾跺枛閻?cc.ControlButton 濠电姷鏁搁崑娑欏緞閸ヮ剙绀堟繝闈涙４閼板灝銆掑锝呬壕闂佽鍨伴崯鏉戠暦閻旂⒈鏁冮柕蹇婂墲閻忔娊姊绘担鍦菇闁搞劌顭峰畷浼村箛椤撶喐鐝烽柣鐘充航閸斿鈻介鍫熺厸闁搞儮鏅涢弸鎴︽煟閹惧鎳勭紒缁樼⊕瀵板嫮鈧綆鍋嗛埞娑氱磽娴ｄ粙鍝洪柣鐔叉櫅閻?C++ 濠电姷鏁搁崑娑⑺囬銏犵鐎光偓閸曨偉鍩炴繛瀵稿Т椤戝棝寮查鈧…鍧楁嚋閻㈢偣鈧帞绱掗埀?
// 闂備浇宕甸崑鐐哄礄瑜版帒纾婚柛娑樼摠閸嬪鏌涢锝嗙缂佺媴缍侀悡顐﹀炊閵婏箑钄兼繛瀛樼玻缂嶄礁顫忓ú顏勭闁圭儤姊婚鎴︽⒑濮瑰洤濡块柛鐘崇墵楠炲啯绂掔€Ｑ€鍋撻敃鍌氱闁哄啫鍋嗗Σ鐪榚tTouchPriority/setEventOnDisable/... 闂?src_jsc闂傚倷鐒︾€笛呯矙閹次诲洭顢橀姀鐘靛姦?
// 闂備礁鎼ˇ顐﹀疾濠婂牊鍋￠柕鍫濇穿婵櫕绻涘顔荤盎闁告瑥锕ラ妵鍕冀閵娧勮⒈闂佸搫娲㈤崹鍦不?闂備浇宕甸崰鎰版偡閵夈儙娑橆煥閸剛绋忛柟鑹版彧缁查箖宕戝鈧幃姗€鎮欑捄渚缂備讲鍋撻悗锝庡枟閻撱儲绻涢幋鐑囦緵闁哥喎顎€ub 婵犵數鍋為崹鍫曞箰閹间礁绠规い鎰堕檮閸嬧晠鏌曟繛鐐珔缂佲偓閸岀偞鐓忓┑鐐戔偓閸嬫捇鏌℃担绋款伃闁诡喗顨婂畷鐑筋敇閻愮増鍩涙俊銈囧Х閸嬫稑煤椤撱垹鏋佺€广儱娲ｅ▽顏堟煠濞村娅囬柟鎻掔秺閹嘲顭ㄩ崟顒傚嚒閻庤娲﹂崜鐔肩嵁閺嵮呮殝闁煎壊鍏橀崑鎾诲箳濡も偓瀹告繂鈹戦悩鎻掆偓缁樼閻愮儤鈷掑〒姘搐娴滄繃淇婇崣澶婄婵炲棎鍨介、鏇㈠煕濮樻剚娼愰柟宄版噽閹即鍩勯崘顏勫箻闂?
if (typeof cc.Node !== "undefined") {
    var NP = cc.Node.prototype;
    if (!NP.setGuideTag) NP.setGuideTag = function (tag) { this._guideTag = tag; };
    if (!NP.getGuideTag) NP.getGuideTag = function () { return this._guideTag; };
}
if (typeof cc.ControlButton !== "undefined") {
    var P = cc.ControlButton.prototype;
    var noop = function () {};
    if (!P.setTouchPriority)    P.setTouchPriority = noop;
    if (!P.getTouchPriority)    P.getTouchPriority = function () { return 0; };
    if (!P.setEventOnDisable)   P.setEventOnDisable = noop;
    if (!P.setZoomOnTouchDown)  P.setZoomOnTouchDown = noop;
    if (!P.setSwallowTouch)     P.setSwallowTouch = noop;
    if (!P.setGuideTag)         P.setGuideTag = function (tag) { this._guideTag = tag; };
    if (!P.getGuideTag)         P.getGuideTag = function () { return this._guideTag; };
    if (!P.setStringById)       P.setStringById = noop;
}
// BFWebView 闂傚倷鐒﹀鍨焽閸ф绀夐悗锝庡墲婵櫕銇勯幒鎴濐仼闁告瑥锕弻娑㈠箻濡炵偓顦风紒顔炬暩缁辨捇宕掑顒佹闂佹悶鍔屽鈩冧繆鐎涙ê绶為柟閭﹀墰椤ρ冾渻閵堝棗鍧婇柛瀣崌閺岀喓鎷犺缁♀偓闂佽桨绀佺粔鑸电閿曞倹瀵犲璺猴工缁鳖剟姊?cc.Node 闂傚倷绀侀幉锟犮€冮崼鐔稿弿鐎规洖娲ㄧ粈濠囨煕濞戞鎽犻柡鍜佸墴閺屾盯顢曢妶鍛€鹃梺璺ㄥ枂閸庡磭妲愰幘璇茬闁宠桨鑳舵导宀勬⒑闂堟稒顥滄い锔诲灦婵℃挳骞掑Δ鈧惌妤€顭跨捄楦垮閻㈩垼鍓熷娲箰鎼达絺妲堟繝闈涘€瑰鑽ゅ垝椤撶喎绶為幖瀛樼◥濮规姊洪崨濠庢畼闁稿鍋ら獮鍡椻枎韫囧﹥顫嶉梺瑙勫劤婢у海鏁☉姘辩＜濞撴艾锕ら々顒傜磼椤旂晫鎳呴柍褜鍓ㄧ徊鑺ユ櫠鎼达絿鐭嗛柛鈩冪⊕閻?
// ---- SGSCQ ARM64 ReplaceCardList 32-bit callbacks ----
(function patchReplaceCardListDiagnostics() {
    var tries = 0;

    function log(msg) {
        if (typeof cc !== "undefined" && cc && typeof cc.log === "function") {
            cc.log("[SGSCQ replace list] " + msg);
        }
    }

    function sizeOf(list) {
        return list && typeof list.length === "number" ? list.length : 0;
    }

    function pkOf(obj) {
        try {
            if (obj && typeof obj.getPkId === "function") { return obj.getPkId(); }
        } catch (e) {}
        return "";
    }

    function makeFallbackCell() {
        if (typeof cc === "undefined") { return null; }
        if (cc.TableViewCell && typeof cc.TableViewCell.create === "function") { return cc.TableViewCell.create(); }
        if (cc.Node && typeof cc.Node.create === "function") { return cc.Node.create(); }
        return cc.Node ? new cc.Node() : null;
    }

    function dimText(size) {
        if (!size) { return "null"; }
        return (size.width + "x" + size.height);
    }

    function posText(node) {
        if (!node) { return "null"; }
        try {
            if (typeof node.getPositionX === "function" && typeof node.getPositionY === "function") {
                return node.getPositionX() + "," + node.getPositionY();
            }
            if (typeof node.getPosition === "function") {
                var p = node.getPosition();
                return p ? (p.x + "," + p.y) : "null";
            }
        } catch (e) {}
        return "?";
    }

    function childCount(node) {
        try {
            if (node && typeof node.getChildrenCount === "function") { return node.getChildrenCount(); }
            if (node && typeof node.getChildren === "function") {
                var children = node.getChildren();
                return children && typeof children.length === "number" ? children.length : -1;
            }
        } catch (e) {}
        return -1;
    }

    function visibleText(node) {
        try {
            if (node && typeof node.isVisible === "function") { return node.isVisible() ? "visible" : "hidden"; }
        } catch (e) {}
        return "?";
    }

    function logCellState(cell, idx) {
        try {
            var contentSize = null;
            var ccbSize = null;
            var ccbChildren = -1;
            try { if (cell && typeof cell.getContentSize === "function") { contentSize = cell.getContentSize(); } } catch (e0) {}
            try { if (cell && cell.m_ccbNode && typeof cell.m_ccbNode.getContentSize === "function") { ccbSize = cell.m_ccbNode.getContentSize(); } } catch (e1) {}
            try { ccbChildren = childCount(cell && cell.m_ccbNode); } catch (e2) {}
            log("cell state idx=" + idx +
                " type=" + (cell && cell.constructor && cell.constructor.name ? cell.constructor.name : typeof cell) +
                " visible=" + visibleText(cell) +
                " size=" + dimText(contentSize) +
                " pos=" + posText(cell) +
                " children=" + childCount(cell) +
                " ccbSize=" + dimText(ccbSize) +
                " ccbChildren=" + ccbChildren +
                " data=" + pkOf(cell && cell.m_cellData));
        } catch (e3) {
            log("cell state failed idx=" + idx + ": " + e3);
        }
    }

    function nodeBrief(name, node) {
        if (!node) { return name + "=null"; }
        var size = null;
        try { if (typeof node.getContentSize === "function") { size = node.getContentSize(); } } catch (e0) {}
        return name + "{" + visibleText(node) + " pos=" + posText(node) +
            " size=" + dimText(size) + " children=" + childCount(node) + "}";
    }

    function logCellLayout(cell, idx) {
        try {
            log("cell layout idx=" + idx + " " +
                nodeBrief("ccb", cell && cell.m_ccbNode) + " " +
                nodeBrief("bg", cell && cell.m_bg) + " " +
                nodeBrief("icon", cell && (cell.m_iconBtn || cell.m_icon)) + " " +
                nodeBrief("name", cell && cell.m_nameLab) + " " +
                nodeBrief("fight", cell && cell.m_fightLab) + " " +
                nodeBrief("btn", cell && cell.m_btn) + " " +
                nodeBrief("alterBg", cell && cell.m_alterBg));
        } catch (e) {
            log("cell layout failed idx=" + idx + ": " + e);
        }
    }

    function normalizeCellSize(table, raw) {
        var w = raw && typeof raw.width === "number" ? raw.width : 0;
        var h = raw && typeof raw.height === "number" ? raw.height : 0;
        if (table && typeof table.getViewSize === "function") {
            try {
                var viewSize = table.getViewSize();
                if (viewSize && viewSize.width > 0 && viewSize.width < 2000) { w = viewSize.width; }
            } catch (e0) {}
        }
        if (w <= 0 || w > 2000) { w = 510; }
        if (h <= 0 || h > 300) { h = 110; }
        return typeof cc.size === "function" ? cc.size(w, h) : { width: w, height: h };
    }

    function applyTableCellSize(self, table, cell, idx) {
        if (!cell || typeof cell.setContentSize !== "function") { return; }
        try {
            var raw = null;
            if (self && typeof self.tableCellSizeForIndex === "function") {
                raw = self.tableCellSizeForIndex(table, idx);
            }
            var size = normalizeCellSize(table, raw);
            cell.setContentSize(size);
        } catch (e) {
            log("set cell size failed idx=" + idx + ": " + e);
        }
    }

    function logTableState(self, phase) {
        try {
            var tv = self && self.m_tableView;
            if (!tv) {
                log(phase + " table=null");
                return;
            }
            var viewSize = null;
            var contentSize = null;
            try { if (typeof tv.getViewSize === "function") { viewSize = tv.getViewSize(); } } catch (e0) {}
            try { if (typeof tv.getContentSize === "function") { contentSize = tv.getContentSize(); } } catch (e1) {}
            log(phase + " table type=" + (tv.constructor && tv.constructor.name ? tv.constructor.name : typeof tv) +
                " view=" + dimText(viewSize) +
                " content=" + dimText(contentSize) +
                " pos=" + posText(tv) +
                " children=" + childCount(tv));
        } catch (e2) {
            log(phase + " table diag failed: " + e2);
        }
    }

    function bringTableToFront(self, phase) {
        try {
            var tv = self && self.m_tableView;
            if (!tv) { return; }
            if (typeof tv.setZOrder === "function") { tv.setZOrder(1000); }
            if (self.m_ccbNode && typeof self.m_ccbNode.reorderChild === "function") {
                self.m_ccbNode.reorderChild(tv, 1000);
            }
            log(phase + " table z-front applied");
        } catch (e) {
            log(phase + " table z-front failed: " + e);
        }
    }

    // ---- SGSCQ ARM64 ReplaceCardList filter priority ----
    // ---- SGSCQ ARM64 SortController visible dropdown ----
    function normalizeSortButtonSize(sort) {
        try {
            var btn = sort && sort.sortBtn;
            if (!btn) { return; }
            var width = 190;
            var height = 62;
            var size = null;
            try { if (typeof btn.getContentSize === "function") { size = btn.getContentSize(); } } catch (e0) {}
            if (size && size.width > 0 && size.width < 2000) { width = size.width; }
            if (size && size.height > 0 && size.height < 200) { height = size.height; }
            if (!size || size.width <= 0 || size.width > 2000 || size.height <= 0 || size.height > 200) {
                if (typeof btn.setPreferredSize === "function") { btn.setPreferredSize(cc.size(width, height)); }
                if (typeof btn.setContentSize === "function") { btn.setContentSize(cc.size(width, height)); }
                if (typeof sort.setContentSize === "function") { sort.setContentSize(cc.size(width, height)); }
            }
            if (typeof btn.setVisible === "function") { btn.setVisible(true); }
            if (typeof btn.setEnabled === "function") { btn.setEnabled(true); }
            if (typeof btn.setOpacity === "function") { btn.setOpacity(255); }
            if (typeof btn.setZoomOnTouchDown === "function") { btn.setZoomOnTouchDown(false); }
        } catch (e) {
            log("normalize sort button failed: " + e);
        }
    }

    function syncSortWidgetPriority(sort, owner) {
        try {
            if (!sort) { return; }
            var base = owner && typeof owner.m_baseTouchPriority === "number" ? owner.m_baseTouchPriority : 0;
            var replaceCfg = xs.Views && xs.Views.ReplaceCardList && xs.Views.ReplaceCardList.cfg;
            var replaceOffset = replaceCfg && replaceCfg.m_sortBtn && typeof replaceCfg.m_sortBtn.priority === "number" ? replaceCfg.m_sortBtn.priority : -4;
            var sortBase = base + replaceOffset;
            if (typeof sort.setBaseTouchPriority === "function") {
                sort.setBaseTouchPriority(sortBase);
            } else if (typeof sort.setTouchPriority === "function") {
                sort.setTouchPriority(sortBase - 1);
            }
            if (sort.sortBtn && typeof sort.sortBtn.setTouchPriority === "function") {
                sort.sortBtn.setTouchPriority(sortBase - 2);
            }
            if (sort.m_sortWidget) {
                if (typeof sort.m_sortWidget.setTouchPriority === "function") {
                    sort.m_sortWidget.setTouchPriority(sortBase - 4);
                }
                if (typeof sort.m_sortWidget.setZOrder === "function") { sort.m_sortWidget.setZOrder(4001); }
                if (typeof sort.reorderChild === "function") { sort.reorderChild(sort.m_sortWidget, 4001); }
                if (typeof sort.m_sortWidget.setVisible === "function") { sort.m_sortWidget.setVisible(true); }
            }
        } catch (e) {
            log("sync sort widget priority failed: " + e);
        }
    }

    function ensureSortControllerDropdownVisible(sort, owner, phase) {
        try {
            if (!sort) { return; }
            if (typeof sort.setVisible === "function") { sort.setVisible(true); }
            if (typeof sort.setOpacity === "function") { sort.setOpacity(255); }
            if (typeof sort.setZOrder === "function") { sort.setZOrder(4000); }
            normalizeSortButtonSize(sort);
            syncSortWidgetPriority(sort, owner);
            if (!sort.__sgscqVisibleDropdownHook && typeof sort.showPullList === "function") {
                var baseShowPullList = sort.showPullList;
                sort.showPullList = function () {
                    var ret = baseShowPullList.apply(this, arguments);
                    try {
                        if (this.m_sortWidget && this.sortStrs && typeof this.m_sortWidget.setData === "function") {
                            this.m_sortWidget.setData(this.sortStrs);
                        }
                    } catch (e0) {}
                    ensureSortControllerDropdownVisible(this, owner, "after showPullList");
                    return ret;
                };
                sort.__sgscqVisibleDropdownHook = true;
            }
            if (sort.bScrollView && sort.m_sortWidget && sort.sortStrs && typeof sort.m_sortWidget.setData === "function") {
                sort.m_sortWidget.setData(sort.sortStrs);
                syncSortWidgetPriority(sort, owner);
            }
            log(phase + " sort dropdown visible applied");
        } catch (e) {
            log(phase + " sort dropdown visible failed: " + e);
        }
    }

    function bringReplaceSortToFront(self, phase) {
        try {
            var sort = self && self.m_sortBtn;
            if (!sort) { return; }
            if (typeof sort.setZOrder === "function") { sort.setZOrder(3000); }
            if (self.m_ccbNode && typeof self.m_ccbNode.reorderChild === "function") {
                self.m_ccbNode.reorderChild(sort, 3000);
            }
            if (typeof sort.setBaseTouchPriority === "function") {
                var cfg = xs.Views && xs.Views.ReplaceCardList && xs.Views.ReplaceCardList.cfg;
                var offset = cfg && cfg.m_sortBtn && typeof cfg.m_sortBtn.priority === "number" ? cfg.m_sortBtn.priority : -4;
                sort.setBaseTouchPriority((self.m_baseTouchPriority || 0) + offset);
            }
            if (sort.m_sortWidget) {
                if (typeof sort.m_sortWidget.setZOrder === "function") { sort.m_sortWidget.setZOrder(3001); }
                if (typeof sort.reorderChild === "function") { sort.reorderChild(sort.m_sortWidget, 3001); }
            }
            ensureSortControllerDropdownVisible(sort, self, phase);
            log(phase + " filter z-front applied");
        } catch (e) {
            log(phase + " filter z-front failed: " + e);
        }
    }

    function makeOverlayNode() {
        if (typeof cc === "undefined") { return null; }
        if (cc.Layer && typeof cc.Layer.create === "function") { return cc.Layer.create(); }
        if (cc.Node && typeof cc.Node.create === "function") { return cc.Node.create(); }
        return cc.Node ? new cc.Node() : null;
    }

    function clearOverlay(self) {
        try {
            var cells = self.__sgscqReplaceOverlayCells || [];
            for (var i = 0; i < cells.length; i++) {
                if (cells[i] && typeof cells[i].removeFromParent === "function") {
                    cells[i].removeFromParent(true);
                }
            }
            self.__sgscqReplaceOverlayCells = [];
        } catch (e) {}
    }

    function refreshReplaceOverlay(self, phase) {
        log(phase + " overlay disabled; use original 32-bit ReplaceCardList TableView path");
        return;
        try {
            if (!self || !self.m_ccbNode || !self.m_tableView) { return; }
            var viewSize = null;
            try { if (typeof self.m_tableView.getViewSize === "function") { viewSize = self.m_tableView.getViewSize(); } } catch (e0) {}
            if (!viewSize || !viewSize.width || !viewSize.height) { viewSize = { width: 510, height: 420 }; }
            if (!self.__sgscqReplaceOverlay) {
                self.__sgscqReplaceOverlay = makeOverlayNode();
                if (!self.__sgscqReplaceOverlay) { return; }
                if (typeof self.__sgscqReplaceOverlay.setContentSize === "function") {
                    self.__sgscqReplaceOverlay.setContentSize(cc.size(viewSize.width, viewSize.height));
                }
                if (typeof self.__sgscqReplaceOverlay.setPosition === "function") {
                    self.__sgscqReplaceOverlay.setPosition(56, 30);
                }
                if (typeof self.__sgscqReplaceOverlay.setZOrder === "function") {
                    self.__sgscqReplaceOverlay.setZOrder(2000);
                }
                self.m_ccbNode.addChild(self.__sgscqReplaceOverlay);
            }
            if (typeof self.m_tableView.setVisible === "function") {
                self.m_tableView.setVisible(false);
            }
            clearOverlay(self);
            var fakeTable = {
                dequeueCell: function () { return null; },
                getViewSize: function () { return viewSize; },
                getContentSize: function () { return viewSize; },
                getTouchPriority: function () {
                    try { return self.m_tableView.getTouchPriority ? self.m_tableView.getTouchPriority() : self.m_baseTouchPriority; } catch (e1) { return self.m_baseTouchPriority || 0; }
                }
            };
            var count = sizeOf(self.m_dataSource) + 1;
            var cellHeight = 110;
            var visibleCount = Math.max(1, Math.min(count, Math.ceil(viewSize.height / cellHeight)));
            self.__sgscqReplaceOverlayCells = [];
            for (var i = 0; i < visibleCount; i++) {
                var cell = self.tableCellAtIndex(fakeTable, i);
                if (!cell) { continue; }
                applyTableCellSize(self, fakeTable, cell, i);
                if (typeof cell.setPosition === "function") {
                    cell.setPosition(0, viewSize.height - ((i + 1) * cellHeight));
                }
                if (typeof cell.setZOrder === "function") { cell.setZOrder(10 + i); }
                if (typeof cell.setBaseTouchPriority === "function") {
                    try { cell.setBaseTouchPriority((self.m_baseTouchPriority || 0) - 3); } catch (e2) {}
                }
                self.__sgscqReplaceOverlay.addChild(cell);
                self.__sgscqReplaceOverlayCells.push(cell);
            }
            log(phase + " overlay rendered visible=" + self.__sgscqReplaceOverlayCells.length + " total=" + count +
                " size=" + viewSize.width + "x" + viewSize.height);
        } catch (e) {
            log(phase + " overlay failed: " + e);
        }
    }

    function install() {
        if (typeof xs === "undefined" || !xs.Views || !xs.Views.ReplaceCardList || !xs.Views.ReplaceCardList.prototype) {
            return false;
        }
        var P = xs.Views.ReplaceCardList.prototype;
        if (P.__sgscq64ReplaceListCompat) { return true; }

        var baseInit = typeof P.init === "function" ? P.init : null;
        if (baseInit) {
            P.init = function () {
                var ret = baseInit.apply(this, arguments);
                bringTableToFront(this, "after init");
                bringReplaceSortToFront(this, "after init");
                refreshReplaceOverlay(this, "after init");
                logTableState(this, "after init");
                return ret;
            };
        }

        var baseOnEnter = typeof P.onEnter === "function" ? P.onEnter : null;
        if (baseOnEnter) {
            P.onEnter = function () {
                var ret = baseOnEnter.apply(this, arguments);
                bringTableToFront(this, "after onEnter");
                bringReplaceSortToFront(this, "after onEnter");
                refreshReplaceOverlay(this, "after onEnter");
                logTableState(this, "after onEnter");
                return ret;
            };
        }

        var baseReloadDataAndView = typeof P.reloadDataAndView === "function" ? P.reloadDataAndView : null;
        if (baseReloadDataAndView) {
            P.reloadDataAndView = function () {
                var ret = baseReloadDataAndView.apply(this, arguments);
                bringTableToFront(this, "after reloadDataAndView");
                bringReplaceSortToFront(this, "after reloadDataAndView");
                refreshReplaceOverlay(this, "after reloadDataAndView");
                logTableState(this, "after reloadDataAndView");
                return ret;
            };
        }

        var baseSortChangeCallback = typeof P.sortChangeCallback === "function" ? P.sortChangeCallback : null;
        if (baseSortChangeCallback) {
            P.sortChangeCallback = function () {
                var ret = baseSortChangeCallback.apply(this, arguments);
                bringReplaceSortToFront(this, "after sortChangeCallback");
                refreshReplaceOverlay(this, "after sortChangeCallback");
                return ret;
            };
        }

        var baseInitDataSource = typeof P.initDataSource === "function" ? P.initDataSource : null;
        if (baseInitDataSource) {
            P.initDataSource = function () {
                var ret = baseInitDataSource.apply(this, arguments);
                try {
                    var allCount = -1;
                    var notTeamCount = -1;
                    var mgr = xs.Profile && xs.Profile.GameData && xs.Profile.GameData.Mgr &&
                        xs.Profile.GameData.Mgr.getInstance ? xs.Profile.GameData.Mgr.getInstance() : null;
                    if (mgr && mgr.Generals) {
                        if (typeof mgr.Generals.getAllWithDefaultSort === "function") {
                            allCount = sizeOf(mgr.Generals.getAllWithDefaultSort());
                        }
                        if (typeof mgr.Generals.getGeneralNotInTeam === "function") {
                            notTeamCount = sizeOf(mgr.Generals.getGeneralNotInTeam());
                        }
                    }
                    log("init cardType=" + this.cardType +
                        " dataSource=" + sizeOf(this.m_dataSource) +
                        " all=" + allCount +
                        " notTeam=" + notTeamCount +
                        " replace=" + pkOf(this.m_replaceData) +
                        " onGeneral=" + pkOf(this.m_onGeneralData));
                } catch (e0) {
                    log("init diag failed: " + e0);
                }
                return ret;
            };
        }

        P.numberOfCellsInTableView = function () {
            var count = sizeOf(this.m_dataSource) + 1;
            this.__sgscqNumberLogCount = (this.__sgscqNumberLogCount || 0) + 1;
            if (this.__sgscqNumberLogCount <= 10) {
                log("number cardType=" + this.cardType + " cells=" + count + " dataSource=" + sizeOf(this.m_dataSource));
            }
            return count;
        };

        var baseCellAtIndex = typeof P.tableCellAtIndex === "function" ? P.tableCellAtIndex : null;
        if (baseCellAtIndex) {
            P.tableCellAtIndex = function (table, idx) {
                this.__sgscqCellLogCount = (this.__sgscqCellLogCount || 0) + 1;
                if (this.__sgscqCellLogCount <= 20) {
                    log("cell cardType=" + this.cardType + " idx=" + idx + " dataSource=" + sizeOf(this.m_dataSource));
                }
                try {
                    var cell = baseCellAtIndex.apply(this, arguments);
                    if (!cell) {
                        log("cell returned empty idx=" + idx);
                        return makeFallbackCell();
                    }
                    applyTableCellSize(this, table, cell, idx);
                    if (this.__sgscqCellLogCount <= 10) {
                        logCellState(cell, idx);
                        logCellLayout(cell, idx);
                    }
                    return cell;
                } catch (e1) {
                    log("cell exception idx=" + idx + ": " + e1);
                    return makeFallbackCell();
                }
            };
        }

        P.__sgscq64ReplaceListCompat = true;
        log("installed");
        return true;
    }

    function retry() {
        tries++;
        if (install() || tries >= 3000) { return; }
        schedule();
    }

    function schedule() {
        if (typeof setTimeout === "function") {
            setTimeout(retry, 100);
            return;
        }
        try {
            var director = cc.Director && cc.Director.getInstance ? cc.Director.getInstance() : cc.director;
            var scheduler = director && director.getScheduler ? director.getScheduler() : null;
            if (scheduler && typeof scheduler.scheduleCallbackForTarget === "function") {
                scheduler.scheduleCallbackForTarget({ __sgscqReplaceListCompat: true }, retry, 0.1, 0, 0, false);
            }
        } catch (e) {}
    }

    retry();
})();
// ---- SGSCQ ARM64 CardNavigateView BF mode ----
(function patchCardNavigateBFCardViewHook() {
    function log(msg) {
        if (typeof cc !== "undefined" && cc.log) {
            cc.log("[SGSCQ CardNavigateView] " + msg);
        }
    }
    if (typeof xs === "undefined" || !xs.Views || !xs.Views.CardNavigateView || !xs.Views.CardNavigateView.prototype) {
        if (typeof setTimeout === "function") { setTimeout(patchCardNavigateBFCardViewHook, 100); }
        return;
    }
    var P = xs.Views.CardNavigateView.prototype;
    if (P.init && !P.init.__sgscq64BFCardHook) {
        var baseInit = P.init;
        P.init = function () {
            if (xs.__sgscqInstallBFCardViewCreateHook) {
                xs.__sgscqInstallBFCardViewCreateHook();
            }
            var ret = baseInit.apply(this, arguments);
            if (this.bfCardView && !this.bfCardView.__sgscqCardSource &&
                xs.__sgscqCreateBFCardViewFallback && this.cardData) {
                try {
                    var oldView = this.bfCardView;
                    var pos = (oldView && typeof oldView.getPosition === "function") ? oldView.getPosition() : null;
                    var z = (oldView && typeof oldView.getZOrder === "function") ? oldView.getZOrder() : 0;
                    var anchor = (oldView && typeof oldView.getAnchorPoint === "function") ? oldView.getAnchorPoint() : null;
                    var fallback = xs.__sgscqCreateBFCardViewFallback(this, this.tableViewSize);
                    if (fallback) {
                        if (anchor && typeof fallback.setAnchorPoint === "function") { fallback.setAnchorPoint(anchor); }
                        if (pos && typeof fallback.setPosition === "function") { fallback.setPosition(pos); }
                        if (typeof fallback.setZOrder === "function") { fallback.setZOrder(z); }
                        if (typeof fallback.setDelegate === "function") { fallback.setDelegate(this); }
                        if (typeof fallback.setCardViewDelegate === "function") { fallback.setCardViewDelegate(this); }
                        if (typeof fallback.setDirection === "function") { fallback.setDirection(cc.SCROLLVIEW_DIRECTION_HORIZONTAL); }
                        if (typeof fallback.setCellScaleValue === "function") { fallback.setCellScaleValue(this.cardBigScale, this.cardSmlScale); }
                        if (typeof fallback.setNormalCellWidth === "function") { fallback.setNormalCellWidth(this.normalCellWid); }
                        if (typeof fallback.setTouchPriority === "function") { fallback.setTouchPriority(this.cfg.tableView.priority); }
                        try {
                            if (oldView && typeof oldView.removeFromParent === "function") { oldView.removeFromParent(true); }
                        } catch (e0) {}
                        if (typeof this.addChild === "function") { this.addChild(fallback); }
                        this.bfCardView = fallback;
                        if (typeof fallback.reloadData === "function") { fallback.reloadData(); }
                        log("replaced native BFCardView with 32-bit-compatible fallback count=" + this.cardData.length);
                    }
                } catch (e) {
                    log("replace fallback failed: " + e);
                }
            }
            return ret;
        };
        P.init.__sgscq64BFCardHook = true;
        log("init hook installed; original 32-bit CardNavigateView logic kept");
    }
})();
// ---- SGSCQ ARM64 AudioEngine loop compatibility ----
(function patchAudioEngineLoopCompat() {
    if (typeof cc === "undefined" || !cc.AudioEngine || typeof cc.AudioEngine.getInstance !== "function") {
        if (typeof setTimeout === "function") { setTimeout(patchAudioEngineLoopCompat, 100); }
        return;
    }
    var engine = null;
    try {
        engine = cc.AudioEngine.getInstance();
    } catch (e0) {
        engine = null;
    }
    if (!engine) {
        if (typeof setTimeout === "function") { setTimeout(patchAudioEngineLoopCompat, 100); }
        return;
    }
    function normalizeAudioLoop(file, loop) {
        file = String(file || "");
        if (file.indexOf("BGM_Duijiu.mp3") >= 0) { return true; }
        if (loop === true || loop === 1 || loop === "true" || loop === "1") { return true; }
        if (loop === false || loop === 0 || loop === "false" || loop === "0") { return false; }
        return false;
    }
    function wrapAudioLoopMethod(target, name) {
        if (!target || typeof target[name] !== "function" || target[name].__sgscqAudioLoopCompat) { return; }
        var base = target[name];
        var wrapped = function (file, loop) {
            var args = Array.prototype.slice.call(arguments);
            args[1] = normalizeAudioLoop(file, loop);
            return base.apply(this, args);
        };
        wrapped.__sgscqAudioLoopCompat = true;
        target[name] = wrapped;
    }
    wrapAudioLoopMethod(engine, "playMusic");
    wrapAudioLoopMethod(engine, "playBackgroundMusic");
})();
// ---- SGSCQ ARM64 FightChapters exchange touch compatibility ----
(function patchFightChaptersExchangeTouch() {
    function log(msg) {
        if (typeof cc !== "undefined" && cc.log) {
            cc.log("[SGSCQ FightChapters] " + msg);
        }
    }
    if (typeof xs === "undefined" || !xs.Scene || !xs.Scene.ChaptersLayer || !xs.Scene.ChaptersLayer.prototype) {
        if (typeof setTimeout === "function") { setTimeout(patchFightChaptersExchangeTouch, 100); }
        return;
    }
    var P = xs.Scene.ChaptersLayer.prototype;
    if (P.__sgscqExchangeTouchInstalled) {
        return;
    }

    function firstTouch(touches) {
        if (!touches) { return null; }
        if (typeof touches.length === "number") { return touches.length > 0 ? touches[0] : null; }
        return touches;
    }

    function toLayerPoint(layer, touches) {
        var t = firstTouch(touches);
        if (!t || !layer || typeof layer.convertTouchToNodeSpace !== "function") { return null; }
        try { return layer.convertTouchToNodeSpace(t); } catch (e0) { return null; }
    }

    function buttonParent(btn, fallback) {
        try {
            if (btn && typeof btn.getParent === "function") {
                return btn.getParent() || fallback;
            }
        } catch (e0) {}
        return fallback;
    }

    function pointForButton(layer, btn, layerPoint) {
        var parent = buttonParent(btn, layer);
        if (!parent || parent === layer) { return layerPoint; }
        try {
            if (typeof layer.convertToWorldSpace === "function" && typeof parent.convertToNodeSpace === "function") {
                return parent.convertToNodeSpace(layer.convertToWorldSpace(layerPoint));
            }
        } catch (e0) {}
        return layerPoint;
    }

    function buttonRect(btn) {
        if (!btn) { return null; }
        try {
            if (typeof btn.isVisible === "function" && !btn.isVisible()) { return null; }
        } catch (e0) {}
        try {
            if (typeof btn.getBoundingBox === "function") {
                var box = btn.getBoundingBox();
                if (box && typeof box.width === "number" && typeof box.height === "number") {
                    return box;
                }
            }
        } catch (e1) {}
        try {
            if (typeof btn.getPosition === "function" && typeof btn.getContentSize === "function") {
                var pos = btn.getPosition();
                var size = btn.getContentSize();
                var anchor = (typeof btn.getAnchorPoint === "function") ? btn.getAnchorPoint() : { x: 0.5, y: 0.5 };
                return {
                    x: pos.x - size.width * anchor.x,
                    y: pos.y - size.height * anchor.y,
                    width: size.width,
                    height: size.height
                };
            }
        } catch (e2) {}
        return null;
    }

    function hitButton(layer, btn, layerPoint) {
        var rect = buttonRect(btn);
        if (!rect || !layerPoint) { return false; }
        var p = pointForButton(layer, btn, layerPoint);
        var padX = 18;
        var padY = 14;
        return p.x >= rect.x - padX &&
            p.x <= rect.x + rect.width + padX &&
            p.y >= rect.y - padY &&
            p.y <= rect.y + rect.height + padY;
    }

    function distanceTooLarge(a, b) {
        if (!a || !b) { return false; }
        return Math.abs(a.x - b.x) > 28 || Math.abs(a.y - b.y) > 28;
    }

    function tryExchangeTap(layer, touches) {
        var begin = layer.__sgscqExchangeTouchBegan;
        var end = toLayerPoint(layer, touches);
        if (!begin || !end || layer.__sgscqExchangeTouchMoved || distanceTooLarge(begin, end)) {
            return false;
        }
        if (hitButton(layer, layer.eliteExchangeBtn, end) && typeof layer.onEliteExchangeBtnOnClick === "function") {
            log("exchange tap elite");
            layer.onEliteExchangeBtnOnClick();
            return true;
        }
        if (hitButton(layer, layer.normalExchangeBtn, end) && typeof layer.onNormalExchangeBtnOnClick === "function") {
            log("exchange tap normal");
            layer.onNormalExchangeBtnOnClick();
            return true;
        }
        return false;
    }

    var baseBegan = P.onTouchesBegan;
    if (typeof baseBegan === "function" && !baseBegan.__sgscqExchangeTouch) {
        P.onTouchesBegan = function (touches, event) {
            this.__sgscqExchangeTouchBegan = toLayerPoint(this, touches);
            this.__sgscqExchangeTouchMoved = false;
            return baseBegan.apply(this, arguments);
        };
        P.onTouchesBegan.__sgscqExchangeTouch = true;
    }

    var baseMoved = P.onTouchesMoved;
    if (typeof baseMoved === "function" && !baseMoved.__sgscqExchangeTouch) {
        P.onTouchesMoved = function (touches, event) {
            var current = toLayerPoint(this, touches);
            if (distanceTooLarge(this.__sgscqExchangeTouchBegan, current)) {
                this.__sgscqExchangeTouchMoved = true;
            }
            return baseMoved.apply(this, arguments);
        };
        P.onTouchesMoved.__sgscqExchangeTouch = true;
    }

    var baseEnded = P.onTouchesEnded;
    if (typeof baseEnded === "function" && !baseEnded.__sgscqExchangeTouch) {
        P.onTouchesEnded = function (touches, event) {
            if (tryExchangeTap(this, touches)) {
                this.__sgscqExchangeTouchBegan = null;
                this.__sgscqExchangeTouchMoved = false;
                return true;
            }
            return baseEnded.apply(this, arguments);
        };
        P.onTouchesEnded.__sgscqExchangeTouch = true;
    }

    P.__sgscqExchangeTouchInstalled = true;
    log("exchange touch fallback installed");
})();
// ---- SGSCQ ARM64 native alias compatibility ----
(function () {
    if (typeof xs === "undefined" || typeof cc === "undefined") {
        return;
    }

    function keep(target, name, value) {
        if (target && typeof target[name] === "undefined") {
            target[name] = value;
        }
    }

    function makeDelegate(name) {
        if (typeof xs[name] !== "undefined") {
            return;
        }
        var Delegate = function () {};
        Delegate.prototype = {
            ctor: function () {},
            init: function () { return true; },
            onFirstIdx: function () {},
            WebViewDidStartLoad: function () {},
            WebViewDidFinishLoad: function () {},
            WebViewDidFailLoad: function () {}
        };
        Delegate.extend = function (props) {
            var Base = this;
            var Child = function () {
                if (typeof this.ctor === "function") {
                    this.ctor.apply(this, arguments);
                }
            };
            Child.prototype = Object.create(Base.prototype);
            Child.prototype.constructor = Child;
            for (var k in props) {
                if (props.hasOwnProperty(k)) {
                    Child.prototype[k] = props[k];
                }
            }
            Child.extend = Base.extend;
            return Child;
        };
        xs[name] = Delegate;
    }

    makeDelegate("BFCardDelegate");
    makeDelegate("BFCardViewDelegate");
    makeDelegate("BFSortWidgetDelegate");
    makeDelegate("BFWebViewDelegate");

    if (typeof xs.BFile === "undefined") {
        xs.BFile = cc.Node;
    }
    if (xs.BFile) {
        if (!xs.BFile.create) {
            xs.BFile.create = function () { return new xs.BFile(); };
        }
        keep(xs.BFile.prototype, "setCCBFileNode", function (node) { this._sgscqCCBFileNode = node; });
        keep(xs.BFile.prototype, "getCCBFileNode", function () { return this._sgscqCCBFileNode || null; });
    }

    if (typeof xs.BFileLoader === "undefined") {
        xs.BFileLoader = function () {};
    }
    keep(xs.BFileLoader, "loader", function () { return new xs.BFileLoader(); });
    keep(xs.BFileLoader.prototype, "createCCNode", function () {
        return xs.BFile && xs.BFile.create ? xs.BFile.create() : null;
    });

    keep(this, "BFgetSmsCaptcha", function () { return ""; });
    keep(this, "BFbindMobile", function () { return ""; });

    function keepObject(name, methods) {
        if (typeof this[name] === "undefined") {
            this[name] = {};
        }
        var obj = this[name];
        for (var i = 0; i < methods.length; i++) {
            keep(obj, methods[i], function () { return ""; });
        }
    }

    keepObject.call(this, "Product", ["productInit", "getArea", "getTestInKey", "getResSearchRoot", "getProductUrlByKey", "readJsonFromFile"]);
    keep(this.Product, "isTestOnline", function () { return false; });
    keepObject.call(this, "Cfg", ["getChannelId", "getOpenUDID", "getDeviceId", "getDeviceType", "getDeviceOS", "getDeviceMobile", "getDeviceOSVer", "getDevicePixel", "getDeviceNetwork", "getDeviceCarrier", "getMacAddress", "getPackageName", "getAppVersion", "getVersionCode", "getVersionName", "getResScaleTag", "getResPath", "mkdir", "getDeviceModel", "getDeviceVersionName", "getDeviceVersionCode", "getVersion", "getVersionFileUrl"]);
    keepObject.call(this, "Build", ["getVersionName", "getVersionCode", "getBuildNumber", "getPackageName", "getChannel"]);
    keep(this.Build, "getUseJsc", function () { return true; });
    keepObject.call(this, "ThirdSdk", ["init", "getLoginInfo", "logout", "login", "loginExchange", "getThirdChannelName", "doThirdAction", "thirdSubMitInfo", "pay", "exit", "third_pay", "callFunction"]);
    keep(this.ThirdSdk, "isLogined", function () { return false; });
    keep(this.ThirdSdk, "isSupportFunction", function () { return false; });
    keepObject.call(this, "Statistic", ["reportLog", "statistic", "startSession", "endSession", "reportEvent"]);
    keepObject.call(this, "Debug", ["dumpSpriteFrameCache", "StartDebugger", "LockExecution", "UnlockExecution", "BufferRead", "BufferWrite"]);
    keepObject.call(this, "ArmDataMgr", ["init", "event", "reportLog"]);
    keepObject.call(this, "AppStore", ["init", "event", "reportLog"]);
    keepObject.call(this, "StatisticV2", ["event"]);
    keepObject.call(this, "BFLocalNotificationHelp", ["createLocalNotificationFromServer", "removeAllLocalNotification"]);
    keepObject.call(this, "Trie", []);
    keep(this.Trie, "queryString", function (args) { return queryTrie(args); });
    keep(this.Trie, "AddString", function (args) { return addTriePayload(args) ? true : false; });
    keep(this.Trie, "setTrieMaxlen", function (args) { trieMaxLen = parseInt(args, 10) || trieMaxLen; return true; });
    keep(this.Trie, "setTrie", function (args) { return addTriePayload(args) ? true : false; });
    keepObject.call(this, "BfsdkHelper", ["init", "login", "regis", "loginByHistory", "checkBindingCode", "requestBindingTel", "event", "reportLog", "test"]);
    keepObject.call(this, "XSAssetsMgr", ["download", "uncompress", "setConnectionTimeout"]);
    keep(this.XSAssetsMgr, "getConnectionTimeout", function () { return 0; });
    keepObject.call(this, "C2DXAliPaySDK", ["payOrder", "payOrder_ext"]);
    keepObject.call(this, "C2DXShareSDK", ["open", "close", "setPlatformConfig", "authorize", "cancelAuthorize", "getUserInfo", "shareContent", "oneKeyShareContent", "showShareMenu", "showShareView", "saveImageToPhotos"]);
    keep(this.C2DXShareSDK, "hasAutorized", function () { return false; });
    keepObject.call(this, "TalkingDataAppCpaHelp", ["init", "setAppKey", "onRegister", "onLogin", "onPay", "onCustEventWithIdx", "onCreateRole", "onPlaceOrderByOrderId", "onPlaceOrderByCategory"]);
    keep(this.TalkingDataAppCpaHelp, "getAppKey", function () { return ""; });
    keepObject.call(this, "TestinHelp", ["initTestinAgent", "setUserInfo", "reportException", "leaveBreadcrumb", "setLocal_Debug"]);
    keepObject.call(this, "UserInfo", ["setUserId", "setAge", "setSex", "seturl"]);
    keep(this.UserInfo, "getUserId", function () { return ""; });
    keep(this.UserInfo, "getAge", function () { return 0; });
    keep(this.UserInfo, "getSex", function () { return 0; });
    keep(this.UserInfo, "geturl", function () { return ""; });
})();
if (typeof xs.BFWebView === "undefined") {
    xs.BFWebView = cc.Node;
}

// ---- SGSCQ ARM64 ultrawide fullscreen toggle v1 ----
(function () {
    var view = (typeof cc !== "undefined" && cc.EGLView && typeof cc.EGLView.getInstance === "function")
        ? cc.EGLView.getInstance()
        : null;
    if (!view || typeof view.setDesignResolutionSize !== "function") {
        return;
    }

    function isStretchEnabled() {
        return (typeof SGSCQPreferences !== "undefined" &&
            typeof SGSCQPreferences.getFullscreenStretch === "function")
            ? SGSCQPreferences.getFullscreenStretch()
            : true;
    }

    var originalSetDesignResolution = view.setDesignResolutionSize;
    var lastWidth = 0;
    var lastHeight = 0;
    var lastPolicy = null;

    view.setDesignResolutionSize = function (width, height, policy) {
        lastWidth = width;
        lastHeight = height;
        lastPolicy = policy;
        var effectivePolicy = isStretchEnabled() ? cc.RESOLUTION_POLICY.EXACTFIT : policy;
        return originalSetDesignResolution.call(view, width, height, effectivePolicy);
    };

    function applyStretchEnabled(enabled) {
        if (typeof SGSCQPreferences !== "undefined" &&
            typeof SGSCQPreferences.setFullscreenStretch === "function") {
            SGSCQPreferences.setFullscreenStretch(enabled);
        }
        if (lastWidth && lastHeight && lastPolicy !== null) {
            var effectivePolicy = enabled ? cc.RESOLUTION_POLICY.EXACTFIT : lastPolicy;
            originalSetDesignResolution.call(view, lastWidth, lastHeight, effectivePolicy);
        }
    }

    xs.__sgscqFullscreenStretch = {
        isEnabled: isStretchEnabled,
        apply: applyStretchEnabled
    };
})();

// ---- SGSCQ ARM64 FST i18n prelude ----
xs.Cfg = xs.Cfg || {};
xs.Cfg.ClientLanguage = "i18n_sb";

// ---- SGSCQ ARM64 runtime patch hook ----
(function() {
    var originalRequire = require;
    var runtimePatchInstalled = false;
    function installRuntimePatch() {
        if (runtimePatchInstalled) { return; }
        runtimePatchInstalled = true;
 (function() {
     var LEGACY_TEXT_OVERRIDES = {
         "1070410003": {current: "去比武获得技能！", restored: "去抢夺获得技能！"},
         "1070610034": {current: "斩", restored: "杀"},
         "1070610035": {current: "连斩", restored: "连杀"},
         "1070610037": {current: "去比武", restored: "去抢夺"},
         "1070910037": {current: "连斩 $1", restored: "连杀 $1"},
         "1070910046": {current: "清除连斩冷却", restored: "清除连杀冷却"},
         "1070910047": {current: "主公，是否花费$1元宝清除关卡连斩冷却时间？", restored: "主公，是否花费$1元宝清除关卡连杀冷却时间？"},
         "1071010015": {current: "比武", restored: "抢夺"},
         "1071110065": {current: "比武成功！", restored: "抢夺成功！"},
         "1071110067": {current: "每斩一个武将可获得一点将魂 总计斩将数：$1 剩余将魂：$2", restored: "每斩杀一个武将可获得一点将魂 总计斩将数：$1 剩余将魂：$2"},
         "1071310018": {current: "在$1$2-$1$3中斩对应数量的武将，可以获得宝箱奖励", restored: "在$1$2-$1$3中击杀对应数量的武将，可以获得宝箱奖励"},
         "1071310028": {current: "每日9点-21点，可以与其他玩家比武", restored: "每日9点-21点，可以抢夺其他玩家"},
         "1071310075": {current: "主公，16级后可以进行关卡连斩！", restored: "主公，16级后可以进行关卡连杀！"},
         "110000022": {current: "关卡、比武、天梯均可获得奇遇", restored: "关卡、抢夺、天梯均可获得奇遇"},
         "110000046": {current: "免战牌可以在一段时间内保护您", restored: "免战牌可以在一段时间内保护您不被其他玩家抢夺"},
         "110000048": {current: "免战中，若挑战其他玩家，则会解除自己的免战状态", restored: "免战中，若抢夺其他玩家，则会解除自己的免战状态"},
         "110000049": {current: "每天9:00-21:00，可以挑战其他玩家哦", restored: "每天9:00-21:00，可以抢夺其他玩家哦"},
         "110000050": {current: "挑战带有“较高概率”标识的玩家，成功率会更高哟", restored: "抢夺带有“较高概率”标识的玩家，成功率会更高哟"},
         "110000062": {current: "开宝箱、去闯关、去比武均可获得技能", restored: "开宝箱、去闯关、去抢夺均可获得技能"},
         "110000064": {current: "至尊会员3以上且玩家等级16级以上，闯关可以连斩", restored: "至尊会员3以上且玩家等级16级以上，闯关可以连杀"},
         "110000087": {current: "关卡、比武、天梯均可获得奇遇", restored: "关卡、抢夺、天梯均可获得奇遇"},
         "24200401": {current: "借刀斩人", restored: "借刀杀人"},
         "30310201": {current: "追击", restored: "追杀"},
         "30310202": {current: "【追击】以武力取胜的方法之二，已在士兵中普及，属攻击技能，主攻。行动时较困难触发，可对敌方单体造成攻击伤害。", restored: "【追杀】以武力取胜的方法之二，已在士兵中普及，属攻击技能，主攻。行动时较困难触发，可对敌方单体造成攻击伤害。"},
         "30311001": {current: "击溃", restored: "杀戮"},
         "30311002": {current: "【击溃】以武力取胜的方法之九，已在士兵中普及，属攻击技能，主攻。行动时较困难触发，可对敌方单体造成攻击伤害。", restored: "【杀戮】以武力取胜的方法之九，已在士兵中普及，属攻击技能，主攻。行动时较困难触发，可对敌方单体造成攻击伤害。"},
         "31100402": {current: "【洛神】甄姬可秒掉敌人的绝密武功，属控场技能，主智。行动前易触发，有几率连续多次增加自身造成智力伤害的能力。", restored: "【洛神】甄姬可秒杀敌人的绝密武功，属控场技能，主智。行动前易触发，有几率连续多次增加自身造成智力伤害的能力。"},
         "31100902": {current: "【裸衣】许褚可对敌人造成剧烈伤害的绝技，属攻击技能，主攻。行动时一般概率触发，可对敌方单体造成攻击伤害。", restored: "【裸衣】许褚可对敌人造成剧烈伤害的必杀技，属攻击技能，主攻。行动时一般概率触发，可对敌方单体造成攻击伤害。"},
         "33100902": {current: "【连营】陆逊能够秒掉敌人的秘计，属攻击技能，主智。行动时易触发，可对敌方单体造成智力伤害，有几率连续多次施放。", restored: "【连营】陆逊能够秒杀敌人的秘计，属攻击技能，主智。行动时易触发，可对敌方单体造成智力伤害，有几率连续多次施放。"},
         "33101802": {current: "【激昂】小霸王孙策独创霸业之心，可秒掉敌方脆皮，属攻击技能，主攻。行动时易触发，有几率连续对敌方单体造成攻击伤害，同时增加自身下一次造成的伤害。", restored: "【激昂】小霸王孙策独创霸业之心，可对敌方脆皮进行秒杀，属攻击技能，主攻。行动时易触发，有几率连续对敌方单体造成攻击伤害，同时增加自身下一次造成的伤害。"},
         "34100302": {current: "【离间】貂蝉能让敌方2名男性自相残害的媚术，属控场技能，主智。行动前易触发，可对敌方2名男性武将造成智力伤害。", restored: "【离间】貂蝉能让敌方2名男性自相残杀的媚术，属控场技能，主智。行动前易触发，可对敌方2名男性武将造成智力伤害。"},
         "35103101": {current: "完暴", restored: "完杀"},
         "35103102": {current: "【完暴】贾诩能让敌人体无完肤的战法，属被动技能，主智。装备后，可增加自身智力。", restored: "【完杀】贾诩能让敌人体无完肤的战法，属被动技能，主智。装备后，可增加自身智力。"},
         "35300301": {current: "斩阵", restored: "杀阵"},
         "35300302": {current: "【斩阵】能使人攻击性增强的阵法，属被动技能，主攻。装备后，可增加自身攻击力。", restored: "【杀阵】能使人攻击性增强的阵法，属被动技能，主攻。装备后，可增加自身攻击力。"},
         "38100302": {current: "【魔铁骑】魔·马超受伤后可魔性大发，斩敌一片，属卖血技能，主防。受伤后易触发，可对敌方全体造成防御力伤害。", restored: "【魔铁骑】魔·马超受伤后可魔性大发，杀敌一片，属卖血技能，主防。受伤后易触发，可对敌方全体造成防御力伤害。"},
         "4110090201": {current: "借刀斩人", restored: "借刀杀人"},
         "4210050101": {current: "斩很大", restored: "杀很大"},
         "4220070301": {current: "灭身之祸", restored: "杀身之祸"},
         "4220080301": {current: "借刀斩人", restored: "借刀杀人"},
         "4410020101": {current: "神挡灭神", restored: "神挡杀神"},
         "4410070101": {current: "神挡灭神", restored: "神挡杀神"},
         "4410080401": {current: "怒斩之祸", restored: "怒杀之祸"},
         "4420190301": {current: "射击之仇", restored: "射杀之仇"},
         "4810040501": {current: "报父血仇", restored: "杀父血仇"},
         "4810090201": {current: "尔敢伤我", restored: "尔敢杀我"},
         "8110090302": {current: "图鉴点亮[装备]借刀斩人", restored: "图鉴点亮[装备]借刀杀人"},
         "8210080101": {current: "比武达人", restored: "抢夺达人"},
         "8210080102": {current: "累计比武500次", restored: "累计抢夺500次"},
         "8220100102": {current: "图鉴点亮[装备]借刀斩人", restored: "图鉴点亮[装备]借刀杀人"},
         "8310170101": {current: "比武达人", restored: "抢夺达人"},
         "8310170102": {current: "累计比武350次", restored: "累计抢夺350次"},
         "8640070101": {current: "比武达人", restored: "抢夺达人"},
         "8640070102": {current: "累计比武1次", restored: "累计抢夺1次"},
         "8640100101": {current: "比武达人", restored: "抢夺达人"},
         "8640100102": {current: "累计比武5次", restored: "累计抢夺5次"},
         "8640170101": {current: "比武达人", restored: "抢夺达人"},
         "8640170102": {current: "累计比武45次", restored: "累计抢夺45次"},
         "8640200101": {current: "比武达人", restored: "抢夺达人"},
         "8640200102": {current: "累计比武60次", restored: "累计抢夺60次"},
         "8640510101": {current: "比武达人", restored: "抢夺达人"},
         "8640510102": {current: "累计比武15次", restored: "累计抢夺15次"},
         "8640520101": {current: "比武达人", restored: "抢夺达人"},
         "8640520102": {current: "累计比武30次", restored: "累计抢夺30次"},
         "8640530101": {current: "比武达人", restored: "抢夺达人"},
         "8640530102": {current: "累计比武80次", restored: "累计抢夺80次"},
         "8640540101": {current: "比武达人", restored: "抢夺达人"},
         "8640540102": {current: "累计比武100次", restored: "累计抢夺100次"},
         "8810050201": {current: "比武达人", restored: "抢夺达人"},
         "8810050202": {current: "累计比武2000次", restored: "累计抢夺2000次"},
         "CombatKillDesc": {current: "斩", restored: "杀"},
         "WarlordFightFailed": {current: "play_user刚刚在比武中被你打败，夹着尾巴逃跑了，你成功的守住了技能碎片。", restored: "play_user刚刚在抢夺中被你打败，夹着尾巴逃跑了，你成功的守住了技能碎片。"},
         "WarlordFightSuccess": {current: "play_user刚刚在比武中打败了你。", restored: "play_user刚刚在抢夺中打败了你。"},
         "WarlordFightSuccessFull": {current: "play_user刚刚在比武中成功打爆了你，硬生生抢走了你1个skill_name技能碎片。", restored: "play_user刚刚在抢夺中成功打爆了你，硬生生抢走了你1个skill_name技能碎片。"},
         "auto_name_299": {current: "比武成功", restored: "抢夺成功"},
         "auto_name_301": {current: "比武失败", restored: "抢夺失败"},
         "auto_name_400": {current: "以上可以清除连斩冷却时间！", restored: "以上可以清除连杀冷却时间！"},
         "auto_name_487": {current: "免战期间与其他玩家比武将会解除免战状态，是否继续？", restored: "免战期间抢夺其他玩家将会解除免战状态，是否继续抢夺？"},
         "auto_name_56": {current: "，可以与其他玩家比武", restored: "，可以抢夺其他玩家"},
         "chaos_fail": {current: "比武失败！", restored: "抢夺失败！"},
         "chaos_snatch": {current: "比武", restored: "抢夺"},
         "chaos_toSnatch": {current: "去比武", restored: "去抢夺"},
         "climb_gainAward": {current: "在$1中斩掉对应数量的武将，可获得宝箱奖励", restored: "在$1中击杀对应数量的武将，可获得宝箱奖励"},
         "coolDownTip": {current: "$1后可免费连斩", restored: "$1后可免费连杀"},
         "detailDialog_type5": {current: "通过比武可获得", restored: "通过技能抢夺可获得"},
         "e_2033": {current: "连斩等级不足", restored: "连杀等级不足"},
         "e_8018": {current: "玩家比武等级不足", restored: "玩家抢夺等级不足"},
         "e_8026": {current: "连斩冷却中", restored: "连杀CD中"},
         "e_8029": {current: "没有连斩权限", restored: "没有连杀权限"},
         "e_8030": {current: "没有连斩清除冷却时间权限", restored: "没有连杀清除CD权限"},
         "e_8032": {current: "比武玩家在游戏保护时间内", restored: "抢夺玩家在游戏保护时间内"},
         "e_wm_1001": {current: "世界BOSS已经被击毙", restored: "世界BOSS已经被击杀"},
         "fight": {current: "斩", restored: "杀"},
         "hint_lootSkillChip": {current: "比武可以获得技能碎片，合成并且装备技能可以提高战斗力", restored: "抢夺可以获得技能碎片，合成并且装备技能可以提高战斗力"},
         "interService_doubleKill": {current: "连斩", restored: "连杀"},
         "interService_kill": {current: "斩", restored: "杀"},
         "itemdesc242004": {current: "借刀斩人的简介", restored: "借刀杀人的简介"},
         "itemdesc303102": {current: "【追击】以武力取胜的方法之二，已在士兵中普及，属攻击技能，主攻。行动时较困难触发，可对敌方单体造成攻击伤害。", restored: "【追杀】以武力取胜的方法之二，已在士兵中普及，属攻击技能，主攻。行动时较困难触发，可对敌方单体造成攻击伤害。"},
         "itemdesc303110": {current: "【击溃】以武力取胜的方法之九，已在士兵中普及，属攻击技能，主攻。行动时较困难触发，可对敌方单体造成攻击伤害。", restored: "【杀戮】以武力取胜的方法之九，已在士兵中普及，属攻击技能，主攻。行动时较困难触发，可对敌方单体造成攻击伤害。"},
         "itemdesc311004": {current: "【洛神】甄姬可秒掉敌人的绝密武功，属控场技能，主智。行动前易触发，有几率连续多次增加自身造成智力伤害的能力。", restored: "【洛神】甄姬可秒杀敌人的绝密武功，属控场技能，主智。行动前易触发，有几率连续多次增加自身造成智力伤害的能力。"},
         "itemdesc311009": {current: "【裸衣】许褚可对敌人造成剧烈伤害的绝技，属攻击技能，主攻。行动时一般概率触发，可对敌方单体造成攻击伤害。", restored: "【裸衣】许褚可对敌人造成剧烈伤害的必杀技，属攻击技能，主攻。行动时一般概率触发，可对敌方单体造成攻击伤害。"},
         "itemdesc331009": {current: "【连营】陆逊能够秒掉敌人的秘计，属攻击技能，主智。行动时易触发，可对敌方单体造成智力伤害，有几率连续多次施放。", restored: "【连营】陆逊能够秒杀敌人的秘计，属攻击技能，主智。行动时易触发，可对敌方单体造成智力伤害，有几率连续多次施放。"},
         "itemdesc341003": {current: "【离间】貂蝉能让敌方2名男性自相残害的媚术，属控场技能，主智。行动前易触发，可对敌方2名男性武将造成智力伤害。", restored: "【离间】貂蝉能让敌方2名男性自相残杀的媚术，属控场技能，主智。行动前易触发，可对敌方2名男性武将造成智力伤害。"},
         "itemdesc351031": {current: "【完暴】贾诩能让敌人体无完肤的战法，属被动技能，主智。装备后，可增加自身智力。", restored: "【完杀】贾诩能让敌人体无完肤的战法，属被动技能，主智。装备后，可增加自身智力。"},
         "itemdesc353003": {current: "【斩阵】能使人攻击性增强的阵法，属被动技能，主攻。装备后，可增加自身攻击力。", restored: "【杀阵】能使人攻击性增强的阵法，属被动技能，主攻。装备后，可增加自身攻击力。"},
         "itemdesc600008": {current: "天梯爬不动，比武无力，找我呀！喝我一口，可瞬间恢复10点精力！", restored: "天梯爬不动，抢夺无力，找我呀！喝我一口，可瞬间恢复10点精力！"},
         "itemdesc600019": {current: "可保护你4小时，商城可购买，或开宝箱获得！", restored: "可保你4小时内不被抢夺，商城可购买，或开宝箱获得！"},
         "itemdesc600020": {current: "可保护你12小时，商城可购买，或开宝箱获得！", restored: "可保你12小时内不被抢夺，商城可购买，或开宝箱获得！"},
         "itemdesc600021": {current: "可保护你24小时，舒睡一整天！商城可购买，或开宝箱获得！", restored: "可保你24小时内不被抢夺，舒睡一整天！商城可购买，或开宝箱获得！"},
         "itemdesc790419": {current: "内含：技能“完暴”一个", restored: "内含：技能“完杀”一个"},
         "itemdesc791527": {current: "借刀斩人礼包", restored: "借刀杀人礼包"},
         "itemdesc9242004": {current: "集齐15个碎片可合成锦囊借刀斩人", restored: "集齐15个碎片可合成锦囊借刀杀人"},
         "itemdesc9303102": {current: "追击残卷", restored: "追杀残卷"},
         "itemdesc9303110": {current: "击溃残卷", restored: "杀戮残卷"},
         "itemdesc9353003": {current: "斩阵残卷", restored: "杀阵残卷"},
         "itemname242004": {current: "借刀斩人", restored: "借刀杀人"},
         "itemname303102": {current: "追击", restored: "追杀"},
         "itemname303110": {current: "击溃", restored: "杀戮"},
         "itemname351031": {current: "完暴", restored: "完杀"},
         "itemname353003": {current: "斩阵", restored: "杀阵"},
         "itemname790419": {current: "完暴礼包", restored: "完杀礼包"},
         "itemname791527": {current: "借刀斩人礼包", restored: "借刀杀人礼包"},
         "itemname9242004": {current: "借刀斩人碎片", restored: "借刀杀人碎片"},
         "itemname9303102": {current: "追击残卷", restored: "追杀残卷"},
         "itemname9303110": {current: "击溃残卷", restored: "杀戮残卷"},
         "itemname9353003": {current: "斩阵残卷", restored: "杀阵残卷"},
         "label_37": {current: "级时，关卡可连斩", restored: "级时，关卡可连杀"},
         "mulitiKill": {current: "$1斩", restored: "$1杀"},
         "quickFight": {current: "快斩", restored: "快杀"},
         "str_ReplaceDialog_goChaos": {current: "去比武可获得技能", restored: "去抢夺可获得技能"},
         "toast_unLock_quickFight": {current: "主公,至尊会员$1 可解锁快斩功能", restored: "主公,至尊会员$1 可解锁快杀功能"},
        "union_playerHead_killNum": {current: "$1斩", restored: "$1杀"},
        "12200802": {current: "关羽的次子，关平的弟弟，关银屏的二哥。从小为人和善，声望极好，极受诸葛亮器重。他爹和大哥被斩后，他与张飞的儿子张苞结义。随刘备伐吴时，遇仇人潘璋，并将其斩毙，夺回了青龙偃月刀。后随诸葛亮北伐，屡立战功，最终于诸葛亮第六次北伐前病逝。", restored: "关羽的次子，关平的弟弟，关银屏的二哥。从小为人和善，声望极好，极受诸葛亮器重。他爹和大哥被杀后，他与张飞的儿子张苞结义。随刘备伐吴时，遇仇人潘璋，并将其斩毙，夺回了青龙偃月刀。后随诸葛亮北伐，屡立战功，最终于诸葛亮第六次北伐前病逝。"},
        "12201902": {current: "他是身材高大、黑面虬髯的关西大汉。黄巾军出身的他，本是张宝部下，张宝被斩后，他便率众部做了山大王。关羽千里走单骑时，他因久慕关羽盛名，而投归于帐下，做了关羽的贴身侍卫，自此忠心不二。他常以关羽护卫形象出现在各地的关帝庙中，与关平一起被供奉在关羽神像的两侧。关羽父子被斩后，他大哭失声，自刎而去，被世人称为“天下第一忠心之人”。", restored: "他是身材高大、黑面虬髯的关西大汉。黄巾军出身的他，本是张宝部下，张宝被斩后，他便率众部做了山大王。关羽千里走单骑时，他因久慕关羽盛名，而投归于帐下，做了关羽的贴身侍卫，自此忠心不二。他常以关羽护卫形象出现在各地的关帝庙中，与关平一起被供奉在关羽神像的两侧。关羽父子被杀后，他大哭失声，自刎而去，被世人称为“天下第一忠心之人”。"},
        "12202402": {current: "她是鲍家庄鲍员外的小女儿，关羽的三子、关索的妻子。关索曾英雄救美，斩了看上鲍三娘的山匪头目，鲍三娘自此便以身相许。她自小聪明伶俐，关羽也非常疼爱她，曾亲授其武艺，故其文武双全。后曹魏三路大军十万之众伐蜀，关索喋血战场，鲍三娘也在血战后，壮烈殉国。", restored: "她是鲍家庄鲍员外的小女儿，关羽的三子、关索的妻子。关索曾英雄救美，杀了看上鲍三娘的山匪头目，鲍三娘自此便以身相许。她自小聪明伶俐，关羽也非常疼爱她，曾亲授其武艺，故其文武双全。后曹魏三路大军十万之众伐蜀，关索喋血战场，鲍三娘也在血战后，壮烈殉国。"},
        "12301702": {current: "原为东汉末年益州牧刘璋的部将，后降刘备。在汉中对曹操的战役中，与马超、张飞各领一军，驻扎在下辩，被魏将曹洪所击败，败退时为阴平的氐族首领强端所斩。", restored: "原为东汉末年益州牧刘璋的部将，后降刘备。在汉中对曹操的战役中，与马超、张飞各领一军，驻扎在下辩，被魏将曹洪所击败，败退时为阴平的氐族首领强端所杀。"},
        "13101802": {current: "孙坚长子，孙权长兄。他容貌俊美，性格开朗、直率大度，善于用人，有幽默感，深受各界人士拥戴。父亲去世后，他率其旧部效力袁术，后又向袁借兵创业，横扫吴会，但因袁术僭越称帝，与其绝交。他曾斩的黄祖几乎全军覆没，终报其父之仇。但他在平定江东时，结怨甚广，又轻于防备，最终在26岁那年，外出狩猎时，遇刺身亡。", restored: "孙坚长子，孙权长兄。他容貌俊美，性格开朗、直率大度，善于用人，有幽默感，深受各界人士拥戴。父亲去世后，他率其旧部效力袁术，后又向袁借兵创业，横扫吴会，但因袁术僭越称帝，与其绝交。他曾杀的黄祖几乎全军覆没，终报其父之仇。但他在平定江东时，结怨甚广，又轻于防备，最终在26岁那年，外出狩猎时，遇刺身亡。"},
        "13201502": {current: "孙坚的心腹，与程普、黄盖、韩当并称为孙坚四武将。联军讨董时，华雄为先锋。孙坚与四武将一同进攻华雄，斩其副将，而华雄未敢正面迎战，选择夜晚偷袭。偷袭成功后，孙坚身边只剩下祖茂，眼看就追上了，祖茂便将孙坚的头巾系在自己头上，成功引开了敌人。后来他将头巾缚在柱上后躲藏在林中，准备以此引诱华雄，趁机偷袭，不料却反被华雄所斩。", restored: "孙坚的心腹，与程普、黄盖、韩当并称为孙坚四武将。联军讨董时，华雄为先锋。孙坚与四武将一同进攻华雄，斩其副将，而华雄未敢正面迎战，选择夜晚偷袭。偷袭成功后，孙坚身边只剩下祖茂，眼看就追上了，祖茂便将孙坚的头巾系在自己头上，成功引开了敌人。后来他将头巾缚在柱上后躲藏在林中，准备以此引诱华雄，趁机偷袭，不料却反被华雄所杀。"},
        "13201902": {current: "他天性放荡，喜欢喝酒，家中贫穷，喜欢赊账酤酒。后投奔孙权，一生为其东征西讨。赤壁之战，他接应董袭，从江中攻击曹操；刘备与孙尚香完婚逃离东吴，他奉命追赶；孙权偷袭荆州，他随吕蒙奇袭烽火台；后又率部擒关羽、关平，夺青龙偃月刀；刘备伐吴时，诱斩老将黄忠。他奢侈贪财，常设军市，又劫掠将士财物，只是孙权念其有功，未予深究。最终，他在夷陵之战被为父报仇的关兴所斩。", restored: "他天性放荡，喜欢喝酒，家中贫穷，喜欢赊账酤酒。后投奔孙权，一生为其东征西讨。赤壁之战，他接应董袭，从江中攻击曹操；刘备与孙尚香完婚逃离东吴，他奉命追赶；孙权偷袭荆州，他随吕蒙奇袭烽火台；后又率部擒关羽、关平，夺青龙偃月刀；刘备伐吴时，诱杀老将黄忠。他奢侈贪财，常设军市，又劫掠将士财物，只是孙权念其有功，未予深究。最终，他在夷陵之战被为父报仇的关兴所杀。"},
        "13202002": {current: "三国时期吴国学者，对于经学颇有造诣，尤其精通《易》学，孙权曾夸他可与东方朔媲美。他本是王朗部下，后投奔孙策。他脾气倔，人缘差，说话直，总是犯颜谏争，把孙权气的要命，甚至有一次酒后差点斩了他，最终被孙权流放。流放后他做起了学问，还开设讲堂，但依然关心国家大事。后来孙权遭遇挫折，又想起了这个可恶的老头，大感后悔，于是派人寻找，但他已经去世，享年70岁。", restored: "三国时期吴国学者，对于经学颇有造诣，尤其精通《易》学，孙权曾夸他可与东方朔媲美。他本是王朗部下，后投奔孙策。他脾气倔，人缘差，说话直，总是犯颜谏争，把孙权气的要命，甚至有一次酒后差点杀了他，最终被孙权流放。流放后他做起了学问，还开设讲堂，但依然关心国家大事。后来孙权遭遇挫折，又想起了这个可恶的老头，大感后悔，于是派人寻找，但他已经去世，享年70岁。"},
        "14100602": {current: "他土豪出身，为人放纵任性、粗野凶狠，满怀私欲和野心。他为达目的，不择手段。玩弄权术，践踏法律，破坏经济，残害人民。他逆行倒施，致使东汉末年政权混乱，社会动荡。他罪孽深重，最终在司徒王允的离间之下，被义子吕布所斩。", restored: "他土豪出身，为人放纵任性、粗野凶狠，满怀私欲和野心。他为达目的，不择手段。玩弄权术，践踏法律，破坏经济，残害人民。他逆行倒施，致使东汉末年政权混乱，社会动荡。他罪孽深重，最终在司徒王允的离间之下，被义子吕布所杀。"},
        "14100702": {current: "吕布之女，为武而生，聪明直率，风情万种，她喜欢骑最桀骜的马，用最快的刀，斩最有名的人，做最狠的女人。吕布走后，她独自一人流浪三国，因厌恶男权为天下苍生带来的痛苦，又痛恨自己无力改变现状，召集流离失所的各国妇女，自建女儿国隐居桃花林，是最早的女权主义者。", restored: "吕布之女，为武而生，聪明直率，风情万种，她喜欢骑最桀骜的马，用最快的刀，杀最有名的人，做最狠的女人。吕布走后，她独自一人流浪三国，因厌恶男权为天下苍生带来的痛苦，又痛恨自己无力改变现状，召集流离失所的各国妇女，自建女儿国隐居桃花林，是最早的女权主义者。"},
        "14200502": {current: "吕布帐下谋士、大将，性情刚直，足智多谋，少年时便结交海内名士。早年曾辅佐曹操，后因不满朋友被曹操处决而背叛曹操，还曾数度击败曹操。郝萌之变被揭发为叛军同谋，但吕布考虑他是大将，并未追究。下邳之战失败后，曹操不忍斩他，一度欲劝他再度出仕，他不为所动，将性命置之度外。而他被斩后，他的家人仍一直由曹操供养。", restored: "吕布帐下谋士、大将，性情刚直，足智多谋，少年时便结交海内名士。早年曾辅佐曹操，后因不满朋友被曹操处决而背叛曹操，还曾数度击败曹操。郝萌之变被揭发为叛军同谋，但吕布考虑他是大将，并未追究。下邳之战失败后，曹操不忍杀他，一度欲劝他再度出仕，他不为所动，将性命置之度外。而他被斩后，他的家人仍一直由曹操供养。"},
        "14200602": {current: "他是身长九尺、虎背狼腰、豹头猿臂的关西猛将；汉末在董卓帐下任都督，他自告奋勇在汜水关抵挡十八路诸侯联军的进攻，他偷袭孙坚、斩祖茂，还斩了“上将”潘凤。可是他春风得意过了头，最终被关羽迅速了结了性命。", restored: "他是身长九尺、虎背狼腰、豹头猿臂的关西猛将；汉末在董卓帐下任都督，他自告奋勇在汜水关抵挡十八路诸侯联军的进攻，他偷袭孙坚、斩祖茂，还杀了“上将”潘凤。可是他春风得意过了头，最终被关羽迅速了结了性命。"},
        "14301802": {current: "牛辅，董卓的女婿，任中郎将，于董卓进京之际留守陕西。董卓被斩后，牛辅伙同李傕、郭汜、张济、樊稠等前往往长安，欲为董卓报仇，最后被吕布大败，在趁夜弃军而逃中，被随从胡赤儿死，将头献予吕布。", restored: "牛辅，董卓的女婿，任中郎将，于董卓进京之际留守陕西。董卓被杀后，牛辅伙同李傕、郭汜、张济、樊稠等前往往长安，欲为董卓报仇，最后被吕布大败，在趁夜弃军而逃中，被随从胡赤儿死，将头献予吕布。"},
        "16401902": {current: "我是周新迟，有三寸不烂之舌，刘备认为我可以用嘴巴斩敌，让我当了巴蜀长戟兵，想当年我还参与过夷陵之战。", restored: "我是周新迟，有三寸不烂之舌，刘备认为我可以用嘴巴杀敌，让我当了巴蜀长戟兵，想当年我还参与过夷陵之战。"},
        "16402802": {current: "当年马腾马大人把我分给了马岱，让我跟着他，后来马大人让我跟他姓，叫马田雨，后来听说他斩了脑后有反骨的魏延，我真想为我们的马岱大人写首歌。", restored: "当年马腾马大人把我分给了马岱，让我跟着他，后来马大人让我跟他姓，叫马田雨，后来听说他杀了脑后有反骨的魏延，我真想为我们的马岱大人写首歌。"},
        "16404202": {current: "大家都叫我嫌秀，可能因为我平时什么事都抢着做的原因吧。濡须会战吕蒙，吕都督还救过我，为了感谢他，我一定会好好干的，以后争取多多斩敌。", restored: "大家都叫我嫌秀，可能因为我平时什么事都抢着做的原因吧。濡须会战吕蒙，吕都督还救过我，为了感谢他，我一定会好好干的，以后争取多多杀敌。"},
        "16404402": {current: "我是一名江东水兵，从小就是孤儿，被周瑜都督捡回来养大，都督给我起名叫周杰轮，我明白那是都督对我的期待，但都督还没看到我出息的那一天，就被诸葛亮活活气没了，我一定要斩了诸葛亮为都督报仇。", restored: "我是一名江东水兵，从小就是孤儿，被周瑜都督捡回来养大，都督给我起名叫周杰轮，我明白那是都督对我的期待，但都督还没看到我出息的那一天，就被诸葛亮活活气没了，我一定要杀了诸葛亮为都督报仇。"},
        "16405302": {current: "张曼成将军是我的救命恩人，有了他，我才活到今天，他还教我识字，教我写自己的名字：刘岩石。我要用我的大刀多多斩敌，来报答他。", restored: "张曼成将军是我的救命恩人，有了他，我才活到今天，他还教我识字，教我写自己的名字：刘岩石。我要用我的大刀多多杀敌，来报答他。"},
        "16405902": {current: "我是高元元，我们家将军高览的武力不是吹的，至少能和那个猛将张飞相当，作为他手下的重斧兵，我也要勤加练武，多多斩敌。另外，我还很看好我家另外一个将军赵又停呢。", restored: "我是高元元，我们家将军高览的武力不是吹的，至少能和那个猛将张飞相当，作为他手下的重斧兵，我也要勤加练武，多多杀敌。另外，我还很看好我家另外一个将军赵又停呢。"},
        "21100502": {current: "得名于宋玉《大言赋》中名句“长剑耿耿倚天外”。因其锋锐无比，遂成宝剑的代称，甚至连李白都对其仰慕不已。它与青釭剑被并称为“绝世双剑”，是曹操随身所佩名剑。曹操曾因吕伯奢一家对他太好而满怀疑心，在当晚挥此剑斩尽其家八口后离开。陈宫责其不义时，他便说了这千古名句：“宁教我负天下人，休教天下人负我”。", restored: "得名于宋玉《大言赋》中名句“长剑耿耿倚天外”。因其锋锐无比，遂成宝剑的代称，甚至连李白都对其仰慕不已。它与青釭剑被并称为“绝世双剑”，是曹操随身所佩名剑。曹操曾因吕伯奢一家对他太好而满怀疑心，在当晚挥此剑杀尽其家八口后离开。陈宫责其不义时，他便说了这千古名句：“宁教我负天下人，休教天下人负我”。"},
        "21101102": {current: "此枪全名龙胆亮银枪，是赵云的武器。据说该枪为赵云家传之宝，他哥哥过世后传于他手。长坂坡大战时，赵云斩夏侯恩，夺青釭剑，将龙胆枪与青釭剑并用，才最终突出重围，救出了糜竺、甘夫人和小阿斗。", restored: "此枪全名龙胆亮银枪，是赵云的武器。据说该枪为赵云家传之宝，他哥哥过世后传于他手。长坂坡大战时，赵云杀夏侯恩，夺青釭剑，将龙胆枪与青釭剑并用，才最终突出重围，救出了糜竺、甘夫人和小阿斗。"},
        "21400302": {current: "刀乃百兵之霸，此刀虽然看似普通，但也是斩敌利器，值得拥有。", restored: "刀乃百兵之霸，此刀虽然看似普通，但也是杀敌利器，值得拥有。"},
        "23100702": {current: "大宛为地名，因出产好马，这个地区的马便以“大宛”为名。汉武帝听说此地产宝马后，便派使臣携金换取，但未能成功，使臣被斩。武帝大怒，命人率兵征讨，初征失败，发兵再征，终将其臣服。而该地区所产的马中，尤其以汗血马著称。", restored: "大宛为地名，因出产好马，这个地区的马便以“大宛”为名。汉武帝听说此地产宝马后，便派使臣携金换取，但未能成功，使臣被杀。武帝大怒，命人率兵征讨，初征失败，发兵再征，终将其臣服。而该地区所产的马中，尤其以汗血马著称。"},
        "24200402": {current: "孔明去世后，有天魏延做了一个头上生角的梦，他认为这是自己可以称王的预兆，就对孔明的安排诸多不满，遂与马岱起兵攻打杨仪。杨仪看了孔明的锦囊妙计，就让魏延叫“谁敢斩我”，魏延高呼，马岱在后斩灭魏延，这便是孔明生前安排的借刀斩人之计。", restored: "孔明去世后，有天魏延做了一个头上生角的梦，他认为这是自己可以称王的预兆，就对孔明的安排诸多不满，遂与马岱起兵攻打杨仪。杨仪看了孔明的锦囊妙计，就让魏延叫“谁敢杀我”，魏延高呼，马岱在后斩灭魏延，这便是孔明生前安排的借刀杀人之计。"},
        "dialogdesc504003017": {current: "宁可错斩一千，不可放过一个！", restored: "宁可错杀一千，不可放过一个！"},
        "dialogdesc513016011": {current: "貂蝉已经被关二爷斩了。", restored: "貂蝉已经被关二爷杀了。"},
        "dialogdesc514016024": {current: "你斩了我吧。", restored: "你杀了我吧。"},
        "dialogdesc514016026": {current: "我是反贼头子手下的反将，他命令我灭你，我没法反抗他。只有你斩了我，才能解脱。", restored: "我是反贼头子手下的反将，他命令我灭你，我没法反抗他。只有你杀了我，才能解脱。"},
        "dialogdesc514016027": {current: "我不会斩你的。", restored: "我不会杀你的。"},
        "dialogdesc523017011": {current: "丞相，他这是反间计！你斩了我们，谁来帮你操练水兵，大战在即，立斩主将，此事不可啊！！", restored: "丞相，他这是反间计！你杀了我们，谁来帮你操练水兵，大战在即，立斩主将，此事不可啊！！"},
        "dialogdesc523017022": {current: "宁可错斩一万，不可放过一人，斩！", restored: "宁可错杀一万，不可放过一人，斩！"},
        "dialogdesc523019022": {current: "哎……真是多疑害死人，我不该斩两员水将啊……", restored: "哎……真是多疑害死人，我不该杀两员水将啊……"},
        "dialogdesc524007014": {current: "小周他疯了吧……那群都是大将啊……斩了我用什么打曹操啊！", restored: "小周他疯了吧……那群都是大将啊……杀了我用什么打曹操啊！"},
        "dialogdesc529004024": {current: "你忘了，为了不斩诸葛亮，你和周瑜、孙权闹翻，你现在还能回去？", restored: "你忘了，为了不杀诸葛亮，你和周瑜、孙权闹翻，你现在还能回去？"},
        "dialogdesc530004023": {current: "没证据！反正大不了把三国的名将都斩一遍，总能干掉野心家。", restored: "没证据！反正大不了把三国的名将都杀一遍，总能干掉野心家。"},
        "dialogdesc542019011": {current: "这南蛮子寨主宁死不屈，军师都宽宏大量放走他6次了，他还要想办法回攻，我看还是斩了算了。", restored: "这南蛮子寨主宁死不屈，军师都宽宏大量放走他6次了，他还要想办法回攻，我看还是杀了算了。"},
        "xuyuan_4": {current: "斩父大仇业已报，惟愿吾父魂归来。", restored: "杀父大仇业已报，惟愿吾父魂归来。"},
     };

     var patchRoot = xs.Patch = xs.Patch || {};
     patchRoot.installLegacyText = function() {
         if (typeof xs === "undefined" || !xs.Tools || !xs.Tools.CfgData || !xs.Cfg
             || !xs.Cfg.ClientLanguage
             || typeof xs.Tools.CfgData.getCfgDataByType !== "function"
             || typeof xs.Constant_CfgDataType_i18n === "undefined") {
             return false;
         }
         var records = xs.Tools.CfgData.getCfgDataByType(
             xs.Constant_CfgDataType_i18n);
         if (!records) {
             return false;
         }

         var language = xs.Cfg.ClientLanguage;
         for (var id in LEGACY_TEXT_OVERRIDES) {
             if (!Object.prototype.hasOwnProperty.call(LEGACY_TEXT_OVERRIDES, id)) {
                 continue;
             }
             var record = records[id];
             var entry = LEGACY_TEXT_OVERRIDES[id];
             if (!record) {
                 continue;
             }
             if (record[language] === entry.current) {
                 record[language] = entry.restored;
             }
         }
         return true;
     };
 })();

(function() {
    function patchRefineSelection() {
        if (typeof xs === "undefined" || !xs.Views || !xs.Views.Dialog
            || !xs.Views.Dialog.RefineEquipmentDialog) {
            return false;
        }

        var proto = xs.Views.Dialog.RefineEquipmentDialog.prototype;
        if (!proto || proto.__sgscqRefineSelectPatched) {
            return !!proto;
        }
        proto.__sgscqRefineSelectPatched = true;

        function addMatchingEquipment(dialog, grade) {
            var changed = false;
            for (var i = 0; i < dialog.m_equipData.length; i++) {
                var showData = dialog.m_equipData[i];
                if (showData.getModel().getGrade() !== grade) {
                    continue;
                }
                if (dialog.isMaxLevel() || dialog.getSubMaxExp() <= 0
                    || dialog.selectMaxLength >= dialog.cfg.maxLength) {
                    break;
                }
                var before = showData.getSelectNum();
                showData.addSelectNum();
                var added = Math.max(0, showData.getSelectNum() - before);
                dialog.selectMaxLength += added;
                changed = changed || added > 0;
            }
            return changed;
        }

        function addMatchingStones(dialog, itemId) {
            var changed = false;
            for (var i = 0; i < dialog.m_refineList.length; i++) {
                var showData = dialog.m_refineList[i];
                if (showData.getModel().getItemId() != itemId) {
                    continue;
                }
                if (dialog.isMaxLevel() || dialog.selectMaxLength >= dialog.cfg.maxLength) {
                    break;
                }

                var current = showData.getSelectNum();
                var available = Math.max(0, showData.getMaxNum() - current);
                var remainingSlots = Math.max(0, dialog.cfg.maxLength - dialog.selectMaxLength);
                var expPer = showData.getOriModel().getEatedRefineExp();
                var remainingExp = dialog.getSubMaxExp();
                if (available <= 0 || remainingSlots <= 0 || expPer <= 0 || remainingExp <= 0) {
                    continue;
                }

                var needed = Math.ceil(remainingExp / expPer);
                var selectCount = Math.min(needed, available, remainingSlots);
                if (selectCount <= 0) {
                    continue;
                }
                showData.setSelectNum(current + selectCount);
                dialog.selectMaxLength += selectCount;
                changed = true;
            }
            return changed;
        }

        function selectAllByExperience(dialog, grade, itemId) {
            if (dialog.isMaxLevel()) {
                xs.Views.Mgr.showToast(xs.Tools.String.createString("auto_name_422"));
                return;
            }
            var changed = addMatchingEquipment(dialog, grade);
            changed = addMatchingStones(dialog, itemId) || changed;
            if (changed) {
                dialog.m_tableView.refreshDataAndReload();
                dialog.onEquipSelect();
            }
        }

        function selectAllGold() {
            selectAllByExperience(this, xs.Constant_Grade_Gold,
                xs.Models.ItemID_RefineStone_zhongji);
        }

        function selectAllSilver() {
            selectAllByExperience(this, xs.Constant_Grade_Silver,
                xs.Models.ItemID_RefineStone_chuji);
        }

        proto.onSelectAllGold = selectAllGold;
        proto.onLongSelectAllGold = selectAllGold;
        proto.onSelectAllSilver = selectAllSilver;
        proto.onLongSelectAllSilver = selectAllSilver;
        return true;
    }

    function patchFreshmanAudio() {
        if (typeof xs === "undefined" || !xs.Cfg || !xs.Cfg.Audio || !xs.Cfg.Audio.Effect) {
            return false;
        }
        var effects = xs.Cfg.Audio.Effect;
        if (effects.__sgscqFreshmanAudioPatched) {
            return true;
        }
        if (!effects.Audio_EFF_Girl_1 || !effects.Audio_EFF_Girl_2) {
            return false;
        }
        effects.__sgscqFreshmanAudioPatched = true;
        effects.Audio_EFF_Girl_1.file = "UI/eff_wusunshangxiang.mp3";
        effects.Audio_EFF_Girl_2.file = "UI/eff_lvlingqi.mp3";
        return true;
    }

    function patchFreshmanFightStatuses() {
        if (typeof xs === "undefined" || !xs.Cfg || !xs.Cfg.Fight
            || !xs.Cfg.Fight.NewPlayerFight) {
            return false;
        }
        var rounds = xs.Cfg.Fight.NewPlayerFight.rounds;
        if (!rounds || rounds.__sgscqStatusPatched) {
            return !!rounds;
        }

        function findRoundIndex(skill) {
            for (var i = 0; i < rounds.length; i++) {
                if (rounds[i] && rounds[i].skill === skill) {
                    return i;
                }
            }
            return -1;
        }

        var guose = findRoundIndex("guose");
        if (guose >= 0 && (!rounds[guose + 1] || rounds[guose + 1].skill !== "le_add")) {
            rounds.splice(guose + 1, 0,
                {from: [0], to: [3], skill: "le_add", type: 0, params: {to: [{}]}});
        }
        var qiaobianAfter = findRoundIndex("qiaobian_after");
        if (qiaobianAfter >= 0
            && (!rounds[qiaobianAfter + 1] || rounds[qiaobianAfter + 1].skill !== "le_add")) {
            rounds.splice(qiaobianAfter + 1, 0,
                {from: [4], to: [1], skill: "le_add", type: 0, params: {to: [{}]}});
        }
        var fangzhuEnd = findRoundIndex("fangzhu_1");
        if (fangzhuEnd >= 0
            && (!rounds[fangzhuEnd + 1] || rounds[fangzhuEnd + 1].skill !== "feng_add")) {
            rounds.splice(fangzhuEnd + 1, 0,
                {from: [5], to: [2], skill: "feng_add", type: 0, params: {to: [{}]}});
        }
        if (guose < 0 || qiaobianAfter < 0 || fangzhuEnd < 0) {
            return false;
        }
        rounds.__sgscqStatusPatched = true;
        return true;
    }

    function patchGeneralPreviewFighting() {
        if (typeof xs === "undefined" || !xs.Models || !xs.Models.General
            || !xs.Models.General.prototype) {
            return false;
        }
        var proto = xs.Models.General.prototype;
        if (proto.__sgscqPreviewFightingPatched) {
            return true;
        }
        if (typeof proto.getAttrNaked !== "function") {
            return false;
        }
        var originalGetAttrNaked = proto.getAttrNaked;
        proto.getAttrNaked = function(attrType) {
            var value = originalGetAttrNaked.apply(this, arguments);
            if (attrType !== xs.Constant_AttrType_FightPoint || Number(value) > 0
                || typeof this._getAttrOriginal !== "function") {
                return value;
            }
            var previewValue = this._getAttrOriginal(attrType);
            return Number(previewValue) > 0 ? previewValue : value;
        };
        if (typeof proto.initDisplayProperty === "function") {
            var originalInitDisplayProperty = proto.initDisplayProperty;
            proto.initDisplayProperty = function() {
                var result = originalInitDisplayProperty.apply(this, arguments);
                if (Number(this.ls_value) === 0
                    && this.lieutenant_skill_id && this.lieutenant_skill_id !== "0"
                    && typeof this.getLieutenantAttrPlusEffects === "function") {
                    var effects = this.getLieutenantAttrPlusEffects(true);
                    if (effects && effects.firstAttr !== undefined
                        && effects.firstAttr !== null) {
                        this.ls_value = Number(effects.firstAttr);
                    }
                }
                return result;
            };
        }
        proto.__sgscqPreviewFightingPatched = true;
        return true;
    }

    function patchEvolutionArtwork() {
        if (typeof xs === "undefined" || !xs.Models || !xs.Models.General
            || !xs.Profile || !xs.Profile.GameData || !xs.Profile.GameData.Mgr) {
            return false;
        }
        var proto = xs.Models.General.prototype;
        if (!proto || !proto.getRes || proto.__sgscqEvolutionArtworkPatched) {
            return !!proto;
        }
        proto.__sgscqEvolutionArtworkPatched = true;
        var originalGetRes = proto.getRes;

        function findEvolutionInfoAcrossInstances(generalId) {
            var instances = xs.Profile.GameData.Mgr._instance;
            if (!instances) {
                return null;
            }
            // 原版 getRes 内部硬编码无参 getInstance()（default 实例）查
            // EvolutionInfos——查看他人阵容时数据挂在 elite_* 等具名实例，
            // default 查空 → 觉醒立绘永远回落基础图。这里先查 default，
            // 再遍历全部具名实例兜底。
            var ordered = [];
            try {
                ordered.push(xs.Profile.GameData.Mgr.getInstance());
            } catch (ignored) {
            }
            for (var key in instances) {
                if (instances[key]) {
                    ordered.push(instances[key]);
                }
            }
            for (var i = 0; i < ordered.length; i++) {
                var instance = ordered[i];
                if (!instance || !instance.EvolutionInfos
                    || typeof instance.EvolutionInfos.getByGeneralId !== "function") {
                    continue;
                }
                var data = instance.EvolutionInfos.getByGeneralId(generalId);
                if (data && data.cfgInfo && data.cfgInfo.resource_id) {
                    return data;
                }
            }
            return null;
        }

        proto.getRes = function() {
            try {
                if (this.cacheResInfo !== null && this.cacheResInfo !== undefined) {
                    return this.cacheResInfo;
                }
                var baseRef = typeof this.getBaseDataRef === "function"
                    ? this.getBaseDataRef() : null;
                var resId = baseRef ? baseRef.resource_id : null;
                var awakened = this.evolution_image_status;
                if (!awakened && typeof this.isNewRes === "function") {
                    awakened = this.isNewRes();
                }
                if (awakened) {
                    var evolutionData =
                        findEvolutionInfoAcrossInstances(this.getId());
                    if (evolutionData && evolutionData.cfgInfo
                        && evolutionData.cfgInfo.resource_id) {
                        resId = evolutionData.cfgInfo.resource_id;
                    }
                }
                if (!resId || typeof xs === "undefined" || !xs.Models
                    || !xs.Models.Resource) {
                    return originalGetRes.apply(this, arguments);
                }
                this.cacheResInfo =
                    xs.Models.Resource.createWithBase(resId, this.ResType);
                return this.cacheResInfo;
            } catch (error) {
                return originalGetRes.apply(this, arguments);
            }
        };
        return true;
    }

    function persistPackagedFstResourceCode() {
        if (typeof xsc === "undefined" || String(xsc.app_indentify) !== "50004") {
            return true;
        }
        if (!xsc.Tools || !xsc.Tools.Jsb
            || typeof xsc.Tools.Jsb.getOriResCode !== "function"
            || !xsc.Utils || !xsc.Utils.LocalStore
            || typeof xsc.Utils.LocalStore.writeCurResCode !== "function") {
            return false;
        }
        if (String(xsc.Tools.Jsb.getOriResCode()) === "765") {
            xsc.Utils.LocalStore.writeCurResCode("766");
        }
        return true;
    }

    var retryCount = 0;
    var retryTarget = {};
    var retryScheduler = null;
    var cocosRetryScheduled = false;
    function stopCocosRetry() {
        if (cocosRetryScheduled && retryScheduler
            && typeof retryScheduler.unscheduleCallbackForTarget === "function") {
            retryScheduler.unscheduleCallbackForTarget(retryTarget, installPatches);
        }
        retryScheduler = null;
        cocosRetryScheduled = false;
    }

    function scheduleRetry() {
        if (typeof setTimeout === "function") {
            setTimeout(installPatches, 100);
            return true;
        }
        if (cocosRetryScheduled) {
            return true;
        }
        var scheduler = null;
        if (typeof xs !== "undefined" && xs.director
            && typeof xs.director.getScheduler === "function") {
            scheduler = xs.director.getScheduler();
        } else if (typeof cc !== "undefined" && cc.Director
            && typeof cc.Director.getInstance === "function") {
            scheduler = cc.Director.getInstance().getScheduler();
        }
        if (!scheduler || typeof scheduler.scheduleCallbackForTarget !== "function") {
            return false;
        }
        retryScheduler = scheduler;
        cocosRetryScheduled = true;
        var repeatForever = typeof cc !== "undefined"
            && typeof cc.REPEAT_FOREVER !== "undefined" ? cc.REPEAT_FOREVER : -1;
        scheduler.scheduleCallbackForTarget(
            retryTarget, installPatches, 0.1, repeatForever, 0, false);
        return true;
    }

    function installPatches() {
        var refineInstalled = patchRefineSelection();
        var audioInstalled = patchFreshmanAudio();
        var statusInstalled = patchFreshmanFightStatuses();
        var fightingInstalled = patchGeneralPreviewFighting();
        var evolutionArtworkInstalled = patchEvolutionArtwork();
        var legacyTextInstalled = !!(xs.Patch
            && typeof xs.Patch.installLegacyText === "function"
            && xs.Patch.installLegacyText());
        var fstResourceInstalled = persistPackagedFstResourceCode();
        var installed = refineInstalled && audioInstalled && statusInstalled
            && fightingInstalled && evolutionArtworkInstalled
            && legacyTextInstalled && fstResourceInstalled;
        if (installed) {
            stopCocosRetry();
        }
        if (installed && !installPatches.__sgscqInstalled) {
            installPatches.__sgscqInstalled = true;
            if (typeof cc !== "undefined" && cc.log) {
                cc.log("[SGSCQ client hotfix] installed");
            }
        }
        if (!installed) {
            if (retryCount++ < 600) {
                scheduleRetry();
            } else {
                stopCocosRetry();
            }
        }
    }
    xs.Patch = xs.Patch || {};
    xs.Patch.installAll = installPatches;
    installPatches();
})();

    }
    require = function(path) {
        var result = originalRequire.apply(this, arguments);
        if (path === "headers.js" || path === "src_jsc/headers.js") {
            installRuntimePatch();
        }
        return result;
    };
})();
require("main.js");
// ---- SGSCQ ARM64 native remote update bridge ----
(function () {
    if (typeof SGSCQAssetsUpdate === "undefined") {
        throw new Error("SGSCQAssetsUpdate native binding is unavailable");
    }
    var runtime = (xs.Core && xs.Core.Utils) ? xs.Core : xs;
    var coordinator = {
        active: false,
        version: "",
        expectedMd5: "",
        filePath: "",
        releaseOrDefer: function () {
            return this.active;
        },
        finish: function (success, reason) {
            this.active = false;
            if (typeof cc !== "undefined" && cc.log) {
                cc.log("[SGSCQ remote update] " + (success ? "complete" : "failed") +
                    (reason ? ": " + reason : ""));
            }
            SGSCQAssetsUpdate.release();
        },
        begin: function (response) {
            var ori = String(runtime.Tools.Jsb.getOriResCode());
            var writable = SGSCQAssetsUpdate.getWritablePath();
            var root = writable + "Sanguosha";
            var downloadDir = root + "/Download/";
            var resourceDir = root + "/ExcuteDir" + String(response.resource_version) + "/";
            var suffix = response.dl_file_name_short || response.file_ext || ".zip";
            var fileName = ori + "_" + response.resource_version + "_" + response.md5 + suffix;
            var filePath = downloadDir + fileName;
            var total = Number(response.size || response.file_size || response.filesize || 0);
            SGSCQAssetsUpdate.mkdir(root);
            SGSCQAssetsUpdate.mkdir(downloadDir);
            SGSCQAssetsUpdate.mkdir(resourceDir);
            var existing = Number(SGSCQAssetsUpdate.getFileSize(filePath)) || 0;
            if (total > 0 && existing > total) {
                SGSCQAssetsUpdate.deleteDir(filePath);
                existing = 0;
            }
            this.active = true;
            this.version = String(response.resource_version);
            this.expectedMd5 = String(response.md5 || "").toLowerCase();
            this.filePath = filePath;
            SGSCQAssetsUpdate.init(String(response.download_url) + "|" + downloadDir +
                "|" + fileName + "|" + resourceDir);
            SGSCQAssetsUpdate.setDownloadRange(existing + "-" + total);
            SGSCQAssetsUpdate.setConnectionTimeout("15");
            SGSCQAssetsUpdate.setOperationTimeout("120");
            if (total > 0 && existing === total &&
                String(SGSCQAssetsUpdate.md5File(filePath)).toLowerCase() === this.expectedMd5) {
                if (!SGSCQAssetsUpdate.startUncompress()) {
                    this.finish(false, "uncompress thread");
                }
                return;
            }
            if (!SGSCQAssetsUpdate.startDownload()) {
                this.finish(false, "download thread");
            }
        },
        onNative: function (operation, value) {
            if (!this.active) { return false; }
            if (operation === "onDownloadProgress") {
                if (typeof cc !== "undefined" && cc.log) {
                    cc.log("[SGSCQ remote update] progress=" + value);
                }
                return true;
            }
            if (operation === "onDownloadSuccess") {
                var actualMd5 = String(SGSCQAssetsUpdate.md5File(this.filePath)).toLowerCase();
                if (!actualMd5 || actualMd5 !== this.expectedMd5) {
                    SGSCQAssetsUpdate.deleteDir(this.filePath);
                    this.finish(false, "md5 " + actualMd5);
                } else if (!SGSCQAssetsUpdate.startUncompress()) {
                    this.finish(false, "uncompress thread");
                }
                return true;
            }
            if (operation === "onUncompressSuccess") {
                var localStore = (typeof xsc !== "undefined" && xsc.Utils) ? xsc.Utils.LocalStore : null;
                if (localStore && typeof localStore.writeCurResCode === "function") {
                    localStore.writeCurResCode(this.version);
                }
                this.finish(true, "version " + this.version);
                return true;
            }
            if (operation === "onError") {
                this.finish(false, "native error " + value);
                return true;
            }
            return false;
        }
    };
    SGSCQRemoteUpdateCoordinator = coordinator;
    SGSCQRemoteUpdateOnNative = function (operation, value) {
        return coordinator.onNative(operation, value);
    };

    var originalCppCallback = xs.onCpp2Jsb;
    xs.onCpp2Jsb = function (moduleName, operation, value) {
        if (moduleName === "AssetsMgr" && coordinator.onNative(operation, value)) {
            return;
        }
        return originalCppCallback.apply(this, arguments);
    };

    var net = runtime.Utils && runtime.Utils.Net;
    if (!net || typeof net.reqAsync !== "function") {
        throw new Error("remote update network bridge is unavailable");
    }
    var originalRequest = net.reqAsync;
    net.reqAsync = function (url, success, failure) {
        var requestUrl = String(url || "");
        if (requestUrl.indexOf("versionPlus.check") < 0 &&
            requestUrl.indexOf("version.check") < 0) {
            return originalRequest.apply(this, arguments);
        }
        return originalRequest.call(this, url, function (payload) {
            var response = null;
            try { response = JSON.parse(payload); } catch (error) {}
            if (response && response.result === true && response.download_url && response.md5) {
                coordinator.begin(response);
                response.result = false;
                response.ret = 0;
                response.code = 0;
                response.msg = "background update started";
                payload = JSON.stringify(response);
            }
            return success(payload);
        }, failure);
    };
})();

(function () {
    var controlTag = 0x5347;
    var activeLoginScene = null;

    function isStretchEnabled() {
        return xs.__sgscqFullscreenStretch && xs.__sgscqFullscreenStretch.isEnabled();
    }

    function updateLabel(label, focused) {
        if (label && typeof label.setString === "function") {
            var prefix = focused ? "> " : "";
            label.setString(prefix + (isStretchEnabled() ? "[X] 拉伸至全屏" : "[ ] 拉伸至全屏"));
            if (typeof label.setColor === "function" && typeof cc.c3b === "function") {
                label.setColor(focused ? cc.c3b(255, 230, 80) : cc.c3b(255, 255, 255));
            }
        }
    }

    function attachToggle(scene) {
        if (!scene || scene.__sgscqFullscreenToggle || !cc.LabelTTF || !cc.MenuItemLabel || !cc.Menu) {
            return;
        }
        var label = cc.LabelTTF.create("", "Arial", 24);
        updateLabel(label, false);
        function toggleStretch() {
            xs.__sgscqFullscreenStretch.apply(!isStretchEnabled());
            updateLabel(label, scene.__sgscqFullscreenToggleFocused === true);
        }
        var item = cc.MenuItemLabel.create(label, toggleStretch);
        var menu = cc.Menu.create(item);
        menu.setPosition(900, 112);
        if (typeof menu.setTouchPriority === "function") {
            menu.setTouchPriority(-10000);
        }
        if (typeof menu.setTag === "function") {
            menu.setTag(controlTag);
        }
        scene.addChild(menu, 99999);
        scene.__sgscqFullscreenToggle = menu;
        scene.__sgscqToggleFullscreenStretch = toggleStretch;
        activeLoginScene = scene;

        function setToggleFocused(focused) {
            scene.__sgscqFullscreenToggleFocused = focused === true;
            updateLabel(label, scene.__sgscqFullscreenToggleFocused);
        }
        scene.__sgscqSetFullscreenToggleFocused = setToggleFocused;

        var originalKeyUp = scene.keyUpArrowClicked;
        var originalKeyDown = scene.keyDownArrowClicked;
        var originalKeyLeft = scene.keyLeftArrowClicked;
        var originalKeyRight = scene.keyRightArrowClicked;
        var originalKeyEnter = scene.keyEnterClicked;

        scene.keyUpArrowClicked = function () {
            if (!this.__sgscqFullscreenToggleFocused) {
                setToggleFocused(true);
                return;
            }
            if (typeof originalKeyUp === "function") {
                return originalKeyUp.apply(this, arguments);
            }
        };
        scene.keyDownArrowClicked = function () {
            if (this.__sgscqFullscreenToggleFocused) {
                setToggleFocused(false);
                return;
            }
            if (typeof originalKeyDown === "function") {
                return originalKeyDown.apply(this, arguments);
            }
        };
        scene.keyLeftArrowClicked = function () {
            if (this.__sgscqFullscreenToggleFocused) {
                setToggleFocused(false);
            }
            if (typeof originalKeyLeft === "function") {
                return originalKeyLeft.apply(this, arguments);
            }
        };
        scene.keyRightArrowClicked = function () {
            if (this.__sgscqFullscreenToggleFocused) {
                setToggleFocused(false);
            }
            if (typeof originalKeyRight === "function") {
                return originalKeyRight.apply(this, arguments);
            }
        };
        scene.keyEnterClicked = function () {
            if (this.__sgscqFullscreenToggleFocused) {
                toggleStretch();
                return;
            }
            if (typeof originalKeyEnter === "function") {
                return originalKeyEnter.apply(this, arguments);
            }
        };
        if (typeof scene.setKeypadEnabled === "function") {
            scene.setKeypadEnabled(true);
        }
    }

    xs.__sgscqRemoteKeyDown = function (keyCode) {
        var scene = activeLoginScene;
        var director = cc.Director && cc.Director.getInstance ? cc.Director.getInstance() : null;
        var runningScene = director && director.getRunningScene ? director.getRunningScene() : null;
        if (!scene || runningScene !== scene || !scene.__sgscqFullscreenToggle) {
            return false;
        }
        if (keyCode === 19) {
            scene.__sgscqSetFullscreenToggleFocused(true);
            return true;
        }
        if (keyCode === 20 && scene.__sgscqFullscreenToggleFocused) {
            scene.__sgscqSetFullscreenToggleFocused(false);
            return true;
        }
        if ((keyCode === 23 || keyCode === 66) && scene.__sgscqFullscreenToggleFocused) {
            scene.__sgscqToggleFullscreenStretch();
            return true;
        }
        return false;
    };

    function getLoginClass() {
        return xs.Scene && xs.Scene.Login ? xs.Scene.Login.LoginScene_BfSdk : null;
    }

    function patchLoginScene() {
        var LoginScene = getLoginClass();
        if (!LoginScene || !LoginScene.prototype) {
            return false;
        }
        var prototype = LoginScene.prototype;
        if (!prototype.__sgscqFullscreenTogglePatched) {
            var originalOnEnter = prototype.onEnter;
            prototype.onEnter = function () {
                var result;
                if (typeof originalOnEnter === "function") {
                    result = originalOnEnter.apply(this, arguments);
                }
                attachToggle(this);
                return result;
            };
            prototype.__sgscqFullscreenTogglePatched = true;
        }
        return true;
    }

    function attachCurrentLoginScene() {
        var LoginScene = getLoginClass();
        var director = cc.Director && cc.Director.getInstance ? cc.Director.getInstance() : null;
        var scene = director && director.getRunningScene ? director.getRunningScene() : null;
        if (LoginScene && scene && scene instanceof LoginScene) {
            attachToggle(scene);
        }
    }

    function monitor() {
        var patched = patchLoginScene();
        attachCurrentLoginScene();
        if (!patched && typeof setTimeout === "function") {
            setTimeout(monitor, 100);
        }
    }

    monitor();
})();

// 闂傚倷绀侀幖顐﹀磹閻熼偊鐔嗘俊顖濓骏娴滃綊鏌涢…鎴濇灁闁逞屽墯鐢€崇暦閵娧€鍋撳☉娆樼劷鐟滅増鍨块幃妤€鈻撻崹顔界亶濠电偛寮堕悧鐘汇€佸顓熺秶闁冲搫鍟伴敍婵嬫⒑鐟欏嫬鍔ょ痪缁㈠弮楠炴鎮╃紒妯煎弳濠电偞鍨堕悷銊︾珶濡眹浜滈柟鎯х－缁夌儤顨ラ悙宸剱妞わ妇澧楅幆鏃堫敊閼姐倗锛?localStorage 闂傚倷绀侀幉锟犳偡椤栫偛鍨傞柣銏㈩焾缁€鍌涗繆椤栨繂浜圭痪鍙ョ矙閺岀喖骞嗚閿涘秹鏌熼悾灞叫㈤棁澶嬬節婵犲倸鏆炴い銉у仦娣囧﹪顢曢顫枈閻庤娲╃徊楣兯囬悧鍫熷劅闁靛繈鍨哄▓?guide_step闂?
// 闂傚倷绀侀幖顐︽偋閸℃瑧鐭撻悗娑櫳戦崣蹇涙煟閺冨洦顏犻柛妤佺閵囧嫰寮介妸褏鐣肩紓浣哄У閻擄繝寮?freshman_step="0" 闂傚倷绀侀幉锟犳嚌妤ｅ啫绀勯柣锝呮湰椤洘绻濋弴鐘粡tServerStep 婵犵數鍋炲娆撳触鐎ｎ喗鍎楁い鏂垮⒔缁犳梻鈧厜鍋撻柛鏇ㄥ亜閻濇ê顪冮妶鍡楀潑闁稿鎸荤换婵嬪焵椤掑嫬绠绘い鏃囧亹閿涙瑩姊虹粙璺ㄧ闁稿鍔曞嵄闁绘垼妫勭痪褔鏌涢锝囩畵闁哄濡囩槐?
// 缂傚倸鍊搁崐鎼佸磹瑜版帒绠伴柟闂寸劍閸嬨倝鏌曟繛鐐珔閻庢艾顦…璺ㄦ崉娓氼垰鍓遍梺鎸庣☉椤戝懓鐏冮梺绋挎湰閼颁粙顢旈崼婵堝姦?闂?闂佽瀛╅鏍窗濡も偓鐓ら柡宥庡弾閺佸寮堕崼姘珕闁稿鐗楅妵鍕箛閳轰礁濮㈤梺绋垮閻撯€愁嚕閸洖鐓涘ù锝囨嚀閸嬪秹姊洪柅鐐茶嫰婢ь噣鏌涙繝鍕电劸妞ゆ柨绻橀弻鍡楊吋閸涱垼妲撮梻浣哄帶閹芥粓寮幖渚囨晜闁归棿鐒﹂埛鎺楁煕閺囨娅呴柍褜鍓氶悧妤呭疾鐠轰警鍚嬪璺猴工閻濇ɑ绻濋姀锝嗙【闁挎洩濡囩划姘跺锤濡や礁鈧?localStorage key闂?
// 缂傚倷鑳堕搹搴ㄥ矗鎼淬劌绐楅柡鍥╁У瀹曞弶鎱ㄥΟ鎸庣【婵☆偅锕㈤弻鈩冨緞婵犲嫪铏庢繝鐢靛仜濞层倝婀?step "0" 闂佽瀛╅鏍窗閹烘纾婚柟鐐灱閺€鑺ャ亜閺冨倵鎷￠柛搴㈡崌閺屟囧棘濞嗘儳鍓抽梺閫炲苯澧伴柟铏崌瀵敻顢楅崟顐ｈ緢闂佹寧绻傞ˇ顖毼涘鈧弻锝呂旈埀顒勬偋閸℃怠閿嬫媴鐞涒€充壕婵炲牆鐏濋弸鐔哥箾閸欏澧垫い銏″哺閺屽棗顓奸崨?
if (typeof cc !== "undefined" && typeof sys !== "undefined") {
    var guidePrefixes = ["NewGuideStep", "TreasureGuideStep", "ImproveGuideStep",
        "SurrenderGuideStep", "InTeamGuideStep", "LadderGuideStep",
        "ChaosGuideStep", "DevelopGuideStep", "ClimbGuideStep",
        "LieutenantGuideStep", "EliteDuplicateGuideStep", "RefineEquipGuideStep"];
    // 濠电姷鏁搁崑鐐哄箰閹间礁绠犳俊顖濄€€閺嬪秹骞栧ǎ顒€濡肩紒鐘劦閺屽秷顧侀柛鎾跺枎椤?localStorage 婵犵數鍋為崹鍫曞箹閳哄懎鍌ㄩ柣鎴烆焽椤╂煡鏌熼悜妯虹劸闁搞倖娲熼弻锟犲炊閳轰礁澹夐梺?key 闂佽瀛╅鏍窗閹烘纾婚柟鐐墯閻斿棝鎮规潪鎷岊劅闁搞倗鍠愮换娑㈠醇閻旈浼岄悗娈垮枛閻栧ジ寮澶婄妞ゆ帒鍊诲畷鍫曟⒒娴ｇ懓顕滅紒瀣灴閹囧幢濞戞鐣鹃梺鍓插亞閸犳捇鍩㈤弮鍌楀亾楠炲灝鍔氶柟鍐茬箻瀹?playerId 闂傚倷绀侀幉锟犳嚌閹灐瑙勵槹鎼淬埄娼熼梺纭呮彧闂勫嫰宕曞澶嬬厱闁哄洢鍔岄獮妯侯熆鐠哄搫顏柟顔筋殔閳藉鈻庡▎蹇撳絾缂?
    for (var k in sys.localStorage) {
        for (var p = 0; p < guidePrefixes.length; p++) {
            if (k.indexOf(guidePrefixes[p]) === 0) {
                sys.localStorage.removeItem(k);
                break;
            }
        }
    }
    cc.log("[SGSCQ] guide localStorage cleared");
}


(function () {
    function patchDialogClass(name, klass) {
        try {
            if (!klass || !xs.Views || !xs.Views.Mgr || typeof xs.Views.Mgr.getDialogRegisInfo !== "function") {
                return;
            }
            var cfg = xs.Views.Mgr.getDialogRegisInfo(name);
            if (cfg && !cfg["class"]) {
                cfg["class"] = klass;
            }
        } catch (e) {
        }
    }
    function patchCreateNoArgRetry(name, klass) {
        if (!klass || typeof klass.create !== "function" || klass.create._sgscq64CreatePatched) {
            return;
        }
        var originalCreate = klass.create;
        klass.create = function () {
            try {
                return originalCreate.apply(this, arguments);
            } catch (e) {
                if (("" + e).indexOf("wrong number of arguments") >= 0) {
                    return originalCreate.call(this);
                }
                throw e;
            }
        };
        klass.create._sgscq64CreatePatched = true;
    }
    function patchEditBoxCreate() {
        if (!cc || !cc.EditBox || typeof cc.EditBox.create !== "function" || cc.EditBox.create._sgscq64EditBoxPatched) {
            return;
        }
        var originalCreate = cc.EditBox.create;
        cc.EditBox.create = function (size, normal9SpriteBg, press9SpriteBg, disabled9SpriteBg) {
            try {
                return originalCreate.apply(this, arguments);
            } catch (e) {
                if (("" + e).indexOf("wrong number of arguments") < 0 || arguments.length !== 2) {
                    throw e;
                }
                try {
                    return originalCreate.call(this, size, normal9SpriteBg, null);
                } catch (e2) {
                    try {
                        return originalCreate.call(this, size, normal9SpriteBg, null, null);
                    } catch (e3) {
                        throw e;
                    }
                }
            }
        };
        cc.EditBox.create._sgscq64EditBoxPatched = true;
    }
    if (xs.Scene && xs.Scene.Login) {
        patchDialogClass("LoginDialog", xs.Scene.Login.LoginDialog);
        patchDialogClass("RegisterDialog", xs.Scene.Login.RegisterDialog);
        patchCreateNoArgRetry("LoginDialog", xs.Scene.Login.LoginDialog);
        patchCreateNoArgRetry("RegisterDialog", xs.Scene.Login.RegisterDialog);
        patchEditBoxCreate();
    }
})();

// ---- SGSCQ ARM64 JSB default argument compatibility ----
(function () {
    if (typeof cc === "undefined") {
        return;
    }

    function log(msg) {
        if (cc && typeof cc.log === "function") {
            cc.log("[SGSCQ jsb-args] " + msg);
        }
    }

    function argTypes(args) {
        var out = [];
        for (var i = 0; i < args.length; i++) {
            var a = args[i];
            if (a === null) {
                out.push("null");
            } else if (a === undefined) {
                out.push("undefined");
            } else if (a && a.constructor && a.constructor.name) {
                out.push(typeof a + ":" + a.constructor.name);
            } else {
                out.push(typeof a);
            }
        }
        return out.join(",");
    }

    function makeFallbackContainer() {
        if (cc.Layer && typeof cc.Layer.create === "function") {
            return cc.Layer.create();
        }
        if (cc.Node && typeof cc.Node.create === "function") {
            return cc.Node.create();
        }
        if (cc.Node) {
            return new cc.Node();
        }
        return null;
    }

    function isWrongArgs(e) {
        return ("" + e).indexOf("wrong number of arguments") >= 0;
    }

    function wrapWrongArgLog(owner, name, label) {
        if (!owner || typeof owner[name] !== "function" || owner[name].__sgscqWrongArgLog) {
            return;
        }
        var base = owner[name];
        owner[name] = function () {
            try {
                return base.apply(this, arguments);
            } catch (e) {
                if (isWrongArgs(e)) {
                    log(label + " argc=" + arguments.length + " types=" + argTypes(arguments) + " error=" + e);
                    if (e && e.stack) {
                        log(label + " stack=" + e.stack);
                    }
                }
                throw e;
            }
        };
        owner[name].__sgscqWrongArgLog = true;
    }

    if (cc.MenuItemToggle && typeof cc.MenuItemToggle.create === "function" && !cc.MenuItemToggle.create.__sgscq64DefaultArgs) {
        if (!cc.MenuItemToggle._create) {
            cc.MenuItemToggle._create = cc.MenuItemToggle.create;
        }
        cc.MenuItemToggle.create = function () {
            var n = arguments.length;
            if (n >= 1 && typeof arguments[n - 1] === "function") {
                var args = Array.prototype.slice.call(arguments);
                var obj = null;
                var func = null;
                if (n >= 2 && typeof arguments[n - 2] === "function") {
                    obj = args.pop();
                    func = args.pop();
                } else {
                    func = args.pop();
                }
                var item = cc.MenuItemToggle._create.apply(this, args);
                if (item && typeof item.setCallback === "function") {
                    if (obj !== null) {
                        item.setCallback(func, obj);
                    } else {
                        item.setCallback(func);
                    }
                }
                return item;
            }
            return cc.MenuItemToggle._create.apply(this, arguments);
        };
        cc.MenuItemToggle.create.__sgscq64DefaultArgs = true;
    }

    if (cc.LabelAtlas && typeof cc.LabelAtlas.create === "function" && !cc.LabelAtlas.create.__sgscq64DefaultArgs) {
        if (!cc.LabelAtlas._create) {
            cc.LabelAtlas._create = cc.LabelAtlas.create;
        }
        cc.LabelAtlas.create = function (a, b, c, d, e) {
            if (arguments.length === 5 && typeof e === "string") {
                return cc.LabelAtlas._create.call(this, a, b, c, d, e.charCodeAt(0));
            }
            return cc.LabelAtlas._create.apply(this, arguments);
        };
        cc.LabelAtlas.create.__sgscq64DefaultArgs = true;
    }

    if (cc.TableView && typeof cc.TableView.create === "function" && !cc.TableView.create.__sgscq64DefaultArgs) {
        var tableCreate = cc.TableView.create;
        cc.TableView.create = function (dataSource, size, container) {
            try {
                return tableCreate.apply(this, arguments);
            } catch (e) {
                if (!isWrongArgs(e) || arguments.length !== 2) {
                    throw e;
                }
                var fallbackContainer = makeFallbackContainer();
                log("cc.TableView.create retry argc=2 types=" + argTypes(arguments));
                return tableCreate.call(this, dataSource, size, fallbackContainer);
            }
        };
        cc.TableView.create.__sgscq64DefaultArgs = true;
    }

    if (cc.ScrollView && typeof cc.ScrollView.create === "function" && !cc.ScrollView.create.__sgscq64DefaultArgs) {
        var scrollCreate = cc.ScrollView.create;
        cc.ScrollView.create = function (size, container) {
            try {
                return scrollCreate.apply(this, arguments);
            } catch (e) {
                if (!isWrongArgs(e)) {
                    throw e;
                }
                if (arguments.length === 1) {
                    log("cc.ScrollView.create retry argc=1 types=" + argTypes(arguments));
                    return scrollCreate.call(this, size, makeFallbackContainer());
                }
                if (arguments.length === 0 && cc.size) {
                    log("cc.ScrollView.create retry argc=0");
                    return scrollCreate.call(this, cc.size(0, 0), makeFallbackContainer());
                }
                throw e;
            }
        };
        cc.ScrollView.create.__sgscq64DefaultArgs = true;
    }

    if (cc.LayerMultiplex && cc.LayerMultiplex.createWithArray && !cc.LayerMultiplex.create.__sgscq64DefaultArgs) {
        cc.LayerMultiplex.create = cc.LayerMultiplex.createWithArray;
        cc.LayerMultiplex.create.__sgscq64DefaultArgs = true;
    }

    wrapWrongArgLog(cc.Sprite, "create", "cc.Sprite.create");
    wrapWrongArgLog(cc.SpriteFrameCache && cc.SpriteFrameCache.getInstance ? cc.SpriteFrameCache.getInstance() : null, "addSpriteFrames", "SpriteFrameCache.addSpriteFrames");
    wrapWrongArgLog(cc.Scale9Sprite, "create", "cc.Scale9Sprite.create");
    wrapWrongArgLog(cc.Scale9Sprite, "createWithSpriteFrameName", "cc.Scale9Sprite.createWithSpriteFrameName");
    wrapWrongArgLog(cc.ControlButton, "create", "cc.ControlButton.create");
    wrapWrongArgLog(cc.ProgressTimer, "create", "cc.ProgressTimer.create");
    wrapWrongArgLog(cc.CallFunc, "create", "cc.CallFunc.create");
    wrapWrongArgLog(cc.Sequence, "create", "cc.Sequence.create");
    wrapWrongArgLog(cc.Spawn, "create", "cc.Spawn.create");
})();
// ---- SGSCQ ARM64 hide FPS stats ----
(function () {
    try {
        if (typeof cc === "undefined") { return; }
        var director = null;
        if (cc.Director && typeof cc.Director.getInstance === "function") {
            director = cc.Director.getInstance();
        } else if (cc.director) {
            director = cc.director;
        }
        if (director && typeof director.setDisplayStats === "function") {
            director.setDisplayStats(false);
        }
        if (director && typeof director.setDisplayFPS === "function") {
            director.setDisplayFPS(false);
        }
        if (typeof cc.director !== "undefined" && cc.director && typeof cc.director.setDisplayStats === "function") {
            cc.director.setDisplayStats(false);
        }
    } catch (e) {
    }
})();
// ---- SGSCQ ARM64 content model compatibility ----
(function () {
    if (typeof xs === "undefined" || typeof cc === "undefined") {
        return;
    }

    function log(msg) {
        if (cc && typeof cc.log === "function") {
            cc.log("[SGSCQ content] " + msg);
        }
    }

    function toInt(value, fallback) {
        var n = parseInt(value, 10);
        return isNaN(n) ? (fallback || 0) : n;
    }

    function safeString(value, fallback) {
        if (value === undefined || value === null) { return fallback || ""; }
        return "" + value;
    }

    function normalizeItemJson(item) {
        item = item || {};
        if (item.pk_id === undefined || item.pk_id === null || item.pk_id === "") {
            item.pk_id = safeString(item.id || item.item_id || item.itemId, "");
        }
        if (item.id === undefined || item.id === null || item.id === "") {
            item.id = safeString(item.item_id || item.itemId || item.pk_id, "");
        }
        if (item.item_id === undefined || item.item_id === null || item.item_id === "") {
            item.item_id = safeString(item.id || item.pk_id, "");
        }
        if (item.num === undefined || item.num === null) {
            item.num = toInt(item.item_num, 1);
        }
        return item;
    }

    function patchGoodModel() {
        if (xs.Models && xs.Models.Good && xs.Models.Good.prototype && xs.Models.Good.prototype.__sgscq64ContentCompat) {
            return true;
        }
        if (!xs.Models || !xs.Models.Good || !xs.Models.Good.prototype) {
            return false;
        }
        var P = xs.Models.Good.prototype;
        P.loadJson = function (data) {
            data = data || {};
            this.pk_id = safeString(data.pk_id || data.id || data.product_id, "");
            this.item_id = safeString(data.item_id || data.itemId || data.base_id, "");
            this.item_price = toInt(data.item_price, 0);
            this.discount_price = toInt(data.discount_price != null ? data.discount_price : data.price, this.item_price);
            this.purchase_num = toInt(data.purchase_num, -1);
            this.purchased_num = toInt(data.purchased_num, 0);
            this.vip_level = toInt(data.vip_level != null ? data.vip_level : data.user_vip_level, 0);
            this.is_purchased = toInt(data.is_purchased, 0);
            this.open_time = toInt(data.open_time, 0);
            this.close_time = toInt(data.close_time, -1);
            this.currencyType = toInt(data.currency_type, 1);
            this.tagId = toInt(data.tag_id, 0);
            this.item_title = safeString(data.item_title || data.product_title || data.title, "");
            this.item_desc = safeString(data.item_desc || data.product_desc || data.desc, "");
            this.is_notice = (data.is_notice === "1" || data.is_notice === 1 || data.is_notice === true);
            this.can_exchange = data.can_exchange == null ? false : !!data.can_exchange;
            this.gift_pack = [];
            var packs = data.gift_pack || data.add_list || [];
            if (packs && typeof packs.length === "number" && xs.Models.Item && typeof xs.Models.Item.createWithJson === "function") {
                for (var i = 0; i < packs.length; i++) {
                    try { this.gift_pack.push(xs.Models.Item.createWithJson(normalizeItemJson(packs[i]))); } catch (e) { log("Good gift item parse failed: " + e); }
                }
            }
        };
        P.getVipLevel = function () { return toInt(this.vip_level, 0); };
        P.getIsNotice = function () { return !!this.is_notice; };
        P.getItemTitle = function () { return this.item_title || ""; };
        P.getItemDesc = function () { return this.item_desc || ""; };
        P.__sgscq64ContentCompat = true;
        log("patched Good model");
        return true;
    }

    function patchOtherPlayerInfo() {
        if (xs.Models && xs.Models.OtherPlayerInfo && xs.Models.OtherPlayerInfo.prototype && xs.Models.OtherPlayerInfo.prototype.__sgscq64ContentCompat) {
            return true;
        }
        if (!xs.Models || !xs.Models.OtherPlayerInfo || !xs.Models.OtherPlayerInfo.prototype) {
            return false;
        }
        var P = xs.Models.OtherPlayerInfo.prototype;
        P.init = function (json) {
            json = json || {};
            this.ladderRank = toInt(json.ladder_rank, 1);
            this.playerId = safeString(json.player_id || json.user_id || json.account_uid, "1");
            this.playerType = toInt(json.player_type, 1);
            this.playerLevel = toInt(json.player_level != null ? json.player_level : json.level, 1);
            this.nickname = safeString(json.nickname || json.user_name || json.roleName || json.userName, "");
            if (!this.nickname && xs.Tools && xs.Tools.String && typeof xs.Tools.String.createString === "function") {
                this.nickname = xs.Tools.String.createString("auto_name_22");
            }
            this.playerVipLevel = toInt(json.user_vip_level != null ? json.user_vip_level : json.vip_level, 0);
            this.rankName = safeString(json.rank_name, "");
            if (!this.rankName && xs.Tools && xs.Tools.String && typeof xs.Tools.String.createString === "function") {
                this.rankName = xs.Tools.String.createString("auto_name_23");
            }
            this.beAttackEnable = (toInt(json.to_attack, 0) === 1);
            this.m_bIsEnemy = toInt(json.is_enemy, 0);
            this.generalId = safeString(json.general_id || json.general_skin || json.head || json.avatar, "131001");
            this.fightSalary = toInt(json.fight_salary, 0);
            this.bIsTop = false;
            this.chaosProbability = toInt(json.prob_type, 0);
            var selfId = "";
            try {
                selfId = xs.Profile.GameData.Mgr.getInstance().Player.getPlayer().getPlayerId();
            } catch (e) {}
            this.bIsSelf = !!(selfId && this.playerId === selfId);
            return true;
        };
        P.getPlayerNick = function () {
            var name = safeString(this.nickname, "");
            return name.length > 8 ? name.substr(0, 8) : name;
        };
        P.isEnemy = function () { return this.m_bIsEnemy === 1; };
        P.isCanChallenge = function () { return !!this.beAttackEnable; };
        P.getProbability = function () { return toInt(this.chaosProbability, 0); };
        P.__sgscq64ContentCompat = true;
        log("patched OtherPlayerInfo model");
        return true;
    }

    function patchAnnouncementDialog() {
        if (xs.Views && xs.Views.Dialog && xs.Views.Dialog.Announcement && xs.Views.Dialog.Announcement.prototype && xs.Views.Dialog.Announcement.prototype.__sgscq64ContentCompat) {
            return true;
        }
        if (!xs.Views || !xs.Views.Dialog || !xs.Views.Dialog.Announcement || !xs.Views.Dialog.Announcement.prototype) {
            return false;
        }
        var P = xs.Views.Dialog.Announcement.prototype;
        function normalizeNotice(params) {
            var notice = params && params.notice;
            if (typeof notice === "string") {
                return JSON.parse(notice);
            }
            if (notice && typeof notice.length === "number") {
                return notice;
            }
            return [];
        }
        function applyNoticeData(self, params) {
            self.m_time_net = new Date().getTime();
            try {
                var rows = normalizeNotice(params);
                self.datalist = [];
                for (var i = 0; i < rows.length; i++) {
                    var row = rows[i] || {};
                    self.datalist.push({
                        title: safeString(row.title, ""),
                        content: safeString(row.content, ""),
                        width: toInt(row.width, 0),
                        height: toInt(row.height, 0)
                    });
                }
                if (self.m_scrollView && typeof self.m_scrollView.reloadData === "function") {
                    self.m_scrollView.reloadData();
                }
                log("announcement notice count=" + self.datalist.length);
            } catch (e) {
                self.datalist = [];
                log("announcement parse failed: " + e);
            }
            self.m_time_end = new Date().getTime();
        }
        P.__sgscqApplyNoticeData = function (params) {
            applyNoticeData(this, params);
        };
        P.readDataFromServer = function () {
            var self = this;
            var params = {
                product_line: xs.app_indentify,
                channel_id: xs.Tools && xs.Tools.Jsb && typeof xs.Tools.Jsb.getChannelId === "function" ? xs.Tools.Jsb.getChannelId() : "Main",
                type: this.m_type,
                server_id: xs.Profile && xs.Profile.GameData && xs.Profile.GameData.Player ? xs.Profile.GameData.Player.g_serverId : "1"
            };
            var onOk = function (ret) {
                applyNoticeData(self, ret || {});
            };
            var onErr = function (err) {
                log("announcement request failed: " + err);
            };
            if (xs.Tools && xs.Tools.Net && typeof xs.Tools.Net.requestAnnouncementRead === "function") {
                xs.Tools.Net.requestAnnouncementRead(params, onOk, onErr, this);
            }
        };
        P.tableCellTouched = function (table, cell) {
            if (arguments.length === 1 && table && Object.prototype.hasOwnProperty.call(table, "notice")) {
                applyNoticeData(this, table);
            }
        };
        P.tableCellSizeForIndex = function (table, idx) {
            this.datalist = this.datalist || [];
            var data = this.datalist[idx] || {};
            if (!data.height) {
                var labelHeight = 420;
                try {
                    if (xs.Factorys && xs.Factorys.Label && typeof xs.Factorys.Label.createByStyleId === "function") {
                        var m_label = xs.Factorys.Label.createByStyleId("LS_popUI2");
                        if (m_label) {
                            if (typeof m_label.setDimensions === "function") { m_label.setDimensions(cc.size(1539, 0)); }
                            if (typeof m_label.setHorizontalAlignment === "function") { m_label.setHorizontalAlignment(cc.TEXT_ALIGNMENT_LEFT); }
                            if (typeof m_label.setAnchorPoint === "function") { m_label.setAnchorPoint(cc.p(0, 0)); }
                            if (typeof m_label.setString === "function") { m_label.setString(safeString(data.content, "")); }
                            if (typeof m_label.getContentSize === "function") {
                                var labelSize = m_label.getContentSize();
                                if (labelSize && labelSize.height) {
                                    labelHeight = labelSize.height;
                                }
                            }
                        }
                    }
                } catch (e0) {}
                data.width = 6915;
                data.height = Math.max(120, labelHeight + 100);
            }
            return cc.size(data.width || 6915, data.height || 520);
        };
        P.tableCellAtIndex = function (table, idx) {
            this.datalist = this.datalist || [];
            var data = this.datalist[idx] || { title: "", content: "", width: 6915, height: 520 };
            var cell = null;
            try {
                if (table && typeof table.dequeueCell === "function") {
                    cell = table.dequeueCell();
                }
            } catch (e0) {}
            if (!cell && xs.Views && xs.Views.Dialog && xs.Views.Dialog.AnnCell && typeof xs.Views.Dialog.AnnCell.create === "function") {
                try { cell = xs.Views.Dialog.AnnCell.create(); } catch (e1) { cell = null; }
            }
            if (!cell && cc.TableViewCell) {
                try { cell = new cc.TableViewCell(); } catch (e2) { cell = null; }
            }
            if (cell && typeof cell.update === "function") {
                cell.update(data, idx);
            } else if (cell && !cell.__sgscqAnnFallback) {
                cell.__sgscqAnnFallback = true;
                try {
                    var title = null;
                    var txt = null;
                    if (cc.LabelTTF && typeof cc.LabelTTF.create === "function") {
                        title = cc.LabelTTF.create(safeString(data.title, ""), "Arial", 28);
                        txt = cc.LabelTTF.create(safeString(data.content, ""), "Arial", 24);
                    } else if (cc.LabelTTF) {
                        title = new cc.LabelTTF(safeString(data.title, ""), "Arial", 28);
                        txt = new cc.LabelTTF(safeString(data.content, ""), "Arial", 24);
                    }
                    if (title) {
                        title.setAnchorPoint(cc.p(0, 1));
                        title.setPosition(cc.p(10, (data.height || 520) - 20));
                        if (typeof cell.addChild === "function") { cell.addChild(title); }
                    }
                    if (txt) {
                        txt.setAnchorPoint(cc.p(0, 1));
                        if (typeof txt.setDimensions === "function") { txt.setDimensions(cc.size(1539, 0)); }
                        if (typeof txt.setHorizontalAlignment === "function") { txt.setHorizontalAlignment(cc.TEXT_ALIGNMENT_LEFT); }
                        txt.setPosition(cc.p(10, (data.height || 520) - 60));
                        if (typeof cell.addChild === "function") { cell.addChild(txt); }
                    }
                } catch (e3) {
                    log("announcement fallback cell failed: " + e3);
                }
            }
            log("announcement cell idx=" + idx + " titleLen=" + safeString(data.title, "").length + " contentLen=" + safeString(data.content, "").length);
            return cell;
        };
        P.numberOfCellsInTableView = function () {
            return (this.datalist && this.datalist.length) || 0;
        };
        P.__sgscq64ContentCompat = true;
        log("patched Announcement dialog");
        return true;
    }

    function patchTableViewReload() {
        if (cc.TableView && cc.TableView.prototype && cc.TableView.prototype.__sgscq64ContentCompat) {
            return true;
        }
        if (!cc.TableView || !cc.TableView.prototype) {
            return false;
        }
        var P = cc.TableView.prototype;
        if (typeof P.reloadData === "function") {
            var baseReloadData = P.reloadData;
            P.reloadData = function () {
                if (this._sgscqDataSource && typeof bindDataSource === "function") {
                    bindDataSource(this, this._sgscqDataSource);
                }
                var selfCanServeData = typeof this.numberOfCellsInTableView === "function" &&
                    typeof this.tableCellAtIndex === "function";
                if (selfCanServeData && !this._dataSource && typeof this.setDataSource === "function") {
                    try { this.setDataSource(this); } catch (e0) {}
                }
                if (selfCanServeData && !this._delegate && typeof this.setDelegate === "function") {
                    try { this.setDelegate(this); } catch (e1) {}
                }
                return baseReloadData.apply(this, arguments);
            };
        }
        P.__sgscq64ContentCompat = true;
        log("patched TableView reload guard");
        return true;
    }

    function installOnce() {
        var done = true;
        done = patchGoodModel() && done;
        done = patchOtherPlayerInfo() && done;
        done = patchAnnouncementDialog() && done;
        patchTableViewReload();
        return done;
    }

    var tries = 0;
    var scheduleTarget = { __sgscqContentCompat: true };
    function tick() {
        tries++;
        if (installOnce() || tries >= 3000) {
            return;
        }
        schedule();
    }

    function schedule() {
        if (typeof setTimeout === "function") {
            setTimeout(tick, 100);
            return;
        }
        try {
            var director = cc.Director && cc.Director.getInstance ? cc.Director.getInstance() : cc.director;
            var scheduler = director && director.getScheduler ? director.getScheduler() : null;
            if (scheduler && typeof scheduler.scheduleCallbackForTarget === "function") {
                scheduler.scheduleCallbackForTarget(scheduleTarget, tick, 0.1, 0, 0, false);
            }
        } catch (e) {}
    }

    tick();
})();
// ---- SGSCQ ARM64 final huge TableView fallback ----
(function patchFinalHugeTableFallback() {
    if (typeof cc === "undefined" || !cc.TableView || typeof cc.TableView.create !== "function") {
        if (typeof setTimeout === "function") { setTimeout(patchFinalHugeTableFallback, 100); }
        return;
    }
    if (cc.TableView.create.__sgscq64FinalHugeFallback) {
        return;
    }

    function log(msg) {
        if (cc && typeof cc.log === "function") {
            cc.log("[SGSCQ table final] " + msg);
        }
    }

    function hasCallbacks(source) {
        return !!source &&
            typeof source.numberOfCellsInTableView === "function" &&
            typeof source.tableCellAtIndex === "function";
    }

    function isReplaceCardListSource(source) {
        return hasCallbacks(source) &&
            typeof source.cardType === "number" &&
            !!source.m_plugin &&
            typeof source.initDataSource === "function";
    }

    function isHugeSize(size) {
        return !!size && ((typeof size.width === "number" && size.width > 10000) ||
            (typeof size.height === "number" && size.height > 10000));
    }

    function sourceName(source) {
        if (!source) { return "null"; }
        if (source.name) { return String(source.name); }
        if (source.m_type !== undefined && source.m_dataSource !== undefined) { return "StoreItemView"; }
        if (source.exchangeListData !== undefined || source.viewCellSize !== undefined) { return "GiftListView"; }
        if (source.cardData !== undefined) { return "CardNavigateView"; }
        return "unknown";
    }

    function isKnownListSource(source) {
        var name = sourceName(source);
        return name === "StoreItemView" || name === "GiftListView";
    }

    function makeNode() {
        if (cc.Layer && typeof cc.Layer.create === "function") { return cc.Layer.create(); }
        if (cc.Node && typeof cc.Node.create === "function") { return cc.Node.create(); }
        return cc.Node ? new cc.Node() : null;
    }

    function makeSize(size) {
        var w = size && typeof size.width === "number" ? size.width : 650;
        var h = size && typeof size.height === "number" ? size.height : 420;
        if (w <= 0 || w > 2000) { w = 650; }
        if (h <= 0 || h > 2000) { h = 420; }
        return typeof cc.size === "function" ? cc.size(w, h) : { width: w, height: h };
    }

    function makeCellSize(raw) {
        var w = raw && typeof raw.width === "number" ? raw.width : 650;
        var h = raw && typeof raw.height === "number" ? raw.height : 110;
        if (w <= 0 || w > 2000) { w = 650; }
        if (h <= 0 || h > 300) { h = 110; }
        return { width: w, height: h };
    }

    function point(x, y) {
        return typeof cc.p === "function" ? cc.p(x, y) : { x: x, y: y };
    }

    function clearCells(table) {
        var cells = table.__sgscqHugeCells || [];
        for (var i = 0; i < cells.length; i++) {
            try {
                if (cells[i] && typeof cells[i].removeFromParent === "function") {
                    cells[i].removeFromParent(true);
                }
            } catch (e) {}
        }
        table.__sgscqHugeCells = [];
    }

    function createFallback(source, size) {
        var table = makeNode();
        if (!table) { return null; }
        var viewSize = makeSize(size);
        table.__sgscqHugeSource = source;
        table.__sgscqHugeCells = [];
        table.__sgscqHugeOffset = { x: 0, y: 0 };
        if (typeof table.setContentSize === "function") { table.setContentSize(viewSize); }
        table.setDelegate = function (delegate) { this.__sgscqHugeDelegate = delegate || source; };
        table.setDataSource = function (dataSource) { this.__sgscqHugeSource = dataSource || source; };
        table.setDirection = function (direction) { this.__sgscqDirection = direction; };
        table.setVerticalFillOrder = function () {};
        table.setTouchPriority = function (priority) { this.__sgscqTouchPriority = priority; };
        table.getTouchPriority = function () { return this.__sgscqTouchPriority || 0; };
        table.dequeueCell = function () { return null; };
        table.getViewSize = function () { return viewSize; };
        table.getContentOffset = function () { return this.__sgscqHugeOffset; };
        table.setContentOffset = function (offset) {
            this.__sgscqHugeOffset = offset || { x: 0, y: 0 };
            this.reloadData();
        };
        table.minContainerOffset = function () {
            var count = this.__sgscqHugeCount || 0;
            var cellSize = this.__sgscqHugeCellSize || { width: viewSize.width, height: 110 };
            return point(0, Math.min(0, viewSize.height - (count * cellSize.height)));
        };
        table.maxContainerOffset = function () { return point(0, 0); };
        table.getCellPosAtIndex = function (idx) {
            idx = parseInt(idx, 10) || 0;
            var cellSize = this.__sgscqHugeCellSize || { width: viewSize.width, height: 110 };
            if (this.__sgscqDirection === cc.SCROLLVIEW_DIRECTION_HORIZONTAL) {
                return point(idx * cellSize.width, 0);
            }
            return point(0, viewSize.height - ((idx + 1) * cellSize.height));
        };
        table.getContainer = function () { return this; };
        table.reloadData = function () {
            var ds = this.__sgscqHugeSource || source;
            clearCells(this);
            var count = 0;
            try { count = ds.numberOfCellsInTableView(this) || 0; } catch (e0) { log("number failed: " + e0); }
            var rawCellSize = null;
            try {
                if (typeof ds.tableCellSizeForIndex === "function") {
                    rawCellSize = ds.tableCellSizeForIndex(this, 0);
                }
            } catch (e1) {}
            var cellSize = makeCellSize(rawCellSize);
            this.__sgscqHugeCount = count;
            this.__sgscqHugeCellSize = cellSize;
            var offset = this.__sgscqHugeOffset || { x: 0, y: 0 };
            var firstIdx = Math.max(0, Math.floor(Math.max(0, -(offset.y || 0)) / cellSize.height));
            var visibleCount = Math.max(1, Math.min(count - firstIdx, Math.ceil(viewSize.height / cellSize.height) + 2));
            for (var i = 0; i < visibleCount; i++) {
                var idx = firstIdx + i;
                try {
                    var cell = ds.tableCellAtIndex(this, idx);
                    if (!cell) { continue; }
                    if (typeof cell.setIdx === "function") { cell.setIdx(idx); }
                    cell.__sgscqIdx = idx;
                    if (!cell.getIdx) { cell.getIdx = function () { return this.__sgscqIdx || 0; }; }
                    if (typeof cell.setContentSize === "function") {
                        cell.setContentSize(typeof cc.size === "function" ? cc.size(cellSize.width, cellSize.height) : cellSize);
                    }
                    if (typeof cell.setAnchorPoint === "function" && typeof cc.p === "function") {
                        cell.setAnchorPoint(cc.p(0, 0));
                    }
                    if (typeof cell.setPosition === "function") {
                        cell.setPosition(0, viewSize.height - ((i + 1) * cellSize.height));
                    }
                    if (typeof cell.setZOrder === "function") { cell.setZOrder(10 + i); }
                    if (typeof table.addChild === "function") { table.addChild(cell); }
                    table.__sgscqHugeCells.push(cell);
                } catch (e2) {
                    log("cell failed idx=" + idx + ": " + e2);
                }
            }
            log("fallback rendered source=" + sourceName(ds) + " count=" + count + " first=" + firstIdx +
                " visible=" + visibleCount + " size=" + viewSize.width + "x" + viewSize.height +
                " cell=" + cellSize.width + "x" + cellSize.height);
        };
        table.reloadData();
        return table;
    }

    var baseCreate = cc.TableView.create;
    cc.TableView.create = function (dataSource, size, container) {
        if (dataSource && (typeof dataSource.cardType !== "undefined" || isHugeSize(size) || isKnownListSource(dataSource))) {
            log("create source=" + sourceName(dataSource) + " cardType=" + dataSource.cardType +
                " plugin=" + !!dataSource.m_plugin +
                " initDataSource=" + (typeof dataSource.initDataSource) +
                " number=" + (typeof dataSource.numberOfCellsInTableView) +
                " cell=" + (typeof dataSource.tableCellAtIndex) +
                " size=" + (size && size.width) + "x" + (size && size.height));
        }
        return baseCreate.apply(this, arguments);
    };
    cc.TableView.create.__sgscq64FinalHugeFallback = true;
    log("installed");
})();
// ---- SGSCQ ARM64 Announcement overlay rendering ----
(function patchAnnouncementOverlay() {
    if (typeof cc !== "undefined" && cc && typeof cc.log === "function") {
        cc.log("[SGSCQ announce overlay] disabled; use original 32-bit Announcement TableView path");
    }
})();
// ---- SGSCQ ARM64 BMFont flutter text guard ----
(function () {
    if (typeof cc !== "undefined" && cc.log) {
        cc.log("[SGSCQ bmfont flutter] disabled; keep original 32-bit fight-power flutter");
    }
})();
// ---- SGSCQ ARM64 TeamBuild success trace ----
(function () {
    if (typeof cc !== "undefined" && cc.log) {
        cc.log("[SGSCQ team success] disabled; keep original 32-bit TeamBuild callback");
    }
})();
// ---- SGSCQ ARM64 ChangeTeam reload guard ----
(function () {
    if (typeof cc !== "undefined" && cc.log) {
        cc.log("[SGSCQ change team guard] disabled; keep original 32-bit requestChangeTeam callback");
    }
})();
// ---- SGSCQ ARM64 Dialog close guard ----
(function () {
    function log(msg) {
        if (typeof cc !== "undefined" && cc.log) {
            cc.log("[SGSCQ dialog close guard] " + msg);
        }
    }

    function moveOffscreen(node) {
        try {
            if (node && typeof node.setPosition === "function") {
                if (typeof cc !== "undefined" && typeof cc.p === "function") {
                    node.setPosition(cc.p(-5000, -5000));
                } else {
                    node.setPosition(-5000, -5000);
                }
            }
        } catch (e) {}
    }

    function quietNode(node, depth) {
        if (!node || depth > 4) {
            return;
        }
        try {
            if (typeof node.stopAllActions === "function") {
                node.stopAllActions();
            }
        } catch (e0) {}
        try {
            if (typeof node.unscheduleAllCallbacks === "function") {
                node.unscheduleAllCallbacks();
            }
        } catch (e0a) {}
        try {
            if (typeof node.setVisible === "function") {
                node.setVisible(false);
            }
        } catch (e1) {}
        try {
            if (typeof node.setTouchEnabled === "function") {
                node.setTouchEnabled(false);
            }
        } catch (e2) {}
        try {
            if (typeof node.getChildren === "function") {
                var children = node.getChildren() || [];
                for (var i = 0; i < children.length; i++) {
                    quietNode(children[i], depth + 1);
                }
            }
        } catch (e3) {}
    }

    function hideMasks() {
        try {
            if (xs.Views && xs.Views.Mgr && typeof xs.Views.Mgr._getDialogHungerMask === "function") {
                var hunger = xs.Views.Mgr._getDialogHungerMask();
                if (hunger && typeof hunger.setVisible === "function") {
                    hunger.setVisible(false);
                }
            }
        } catch (e0) {}
        try {
            if (xs.Views && xs.Views.Mgr && typeof xs.Views.Mgr.getDialogMask === "function") {
                var mask = xs.Views.Mgr.getDialogMask();
                if (mask && typeof mask.setVisible === "function") {
                    mask.setVisible(false);
                }
            }
        } catch (e1) {}
    }

    function removeDialogNode(dlg, reason) {
        var removed = false;
        try {
            if (dlg && typeof dlg.removeFromParent === "function") {
                dlg.removeFromParent(false);
                removed = true;
            }
        } catch (e0) {
            log("remove failed dlg=" + (dlg && (dlg.dlg_name || dlg.name) || "unknown") + " reason=" + reason + " err=" + e0);
        }
        try {
            if (dlg && typeof dlg.callfunc_unload === "function") {
                dlg.callfunc_unload();
            }
        } catch (e1) {
            log("unload failed dlg=" + (dlg && (dlg.dlg_name || dlg.name) || "unknown") + " reason=" + reason + " err=" + e1);
        }
        return removed;
    }

    function hasDialogInStack() {
        try {
            if (!xs.Views || !xs.Views.Mgr || !xs.Views.Mgr.lastView ||
                typeof xs.Views.Mgr.lastView.getStackTop !== "function") {
                return true;
            }
            var top = xs.Views.Mgr.lastView.getStackTop(xs.Constant_ViewType_Dlg);
            return !!(top && top[1]);
        } catch (e) {
            log("read dialog stack failed: " + e);
            return true;
        }
    }

    function safeHideDialog(dlg, reason) {
        if (!dlg) {
            return;
        }
        if (dlg.__sgscq64SafeClosed) {
            return;
        }
        dlg.__sgscq64SafeClosed = true;
        quietNode(dlg, 0);
        moveOffscreen(dlg);
        var removed = removeDialogNode(dlg, reason);
        if (!hasDialogInStack()) {
            hideMasks();
        }
        log("safe close dlg=" + (dlg.dlg_name || dlg.name || "unknown") + " reason=" + reason + " removed=" + removed);
    }

    function patchWhenReady() {
        if (typeof xs === "undefined" || !xs.Views || !xs.Views.Mgr ||
            typeof xs.Views.Mgr._runChangeDlgVisibleAction !== "function") {
            return false;
        }
        if (xs.Views.Mgr.__sgscq64DialogCloseGuard) {
            return true;
        }
        var baseRun = xs.Views.Mgr._runChangeDlgVisibleAction;
        var baseHideAll = typeof xs.Views.Mgr.hideAllDialog === "function" ? xs.Views.Mgr.hideAllDialog : null;

        xs.Views.Mgr._runChangeDlgVisibleAction = function (dlg, visible, quickHide, bRemove) {
            if (visible === false && bRemove === true) {
                safeHideDialog(dlg, "_runChangeDlgVisibleAction");
                return;
            }
            return baseRun.apply(this, arguments);
        };

        if (baseHideAll) {
            xs.Views.Mgr.hideAllDialog = function () {
                var popped = null;
                var count = 0;
                try {
                    if (this.lastView && typeof this.lastView.popArguments === "function") {
                        popped = this.lastView.popArguments(xs.Constant_ViewType_Dlg);
                        while (popped) {
                            safeHideDialog(popped[1], "hideAllDialog");
                            count++;
                            popped = this.lastView.popArguments(xs.Constant_ViewType_Dlg);
                        }
                        hideMasks();
                        log("hideAllDialog safe count=" + count);
                        return;
                    }
                } catch (e) {
                    log("hideAllDialog safe failed: " + e);
                }
                return baseHideAll.apply(this, arguments);
            };
        }

        xs.Views.Mgr.__sgscq64DialogCloseGuard = true;
        log("installed");
        return true;
    }

    if (!patchWhenReady() && typeof setInterval === "function") {
        var tries = 0;
        var timer = setInterval(function () {
            tries++;
            if (patchWhenReady() || tries > 120) {
                clearInterval(timer);
            }
        }, 250);
    }
})();
// ---- SGSCQ ARM64 shop item list overlay ----
(function patchShopListOverlay() {
    var tries = 0;

    function log(msg) {
        if (typeof cc !== "undefined" && cc && typeof cc.log === "function") {
            cc.log("[SGSCQ shop list overlay] " + msg);
        }
    }

    log("disabled; StoreItemView/GiftListView use native cc.TableView path");
    return;

    function makeNode() {
        if (typeof cc === "undefined") { return null; }
        if (cc.Layer && typeof cc.Layer.create === "function") { return cc.Layer.create(); }
        if (cc.Node && typeof cc.Node.create === "function") { return cc.Node.create(); }
        return cc.Node ? new cc.Node() : null;
    }

    function clear(self) {
        var cells = self.__sgscqShopOverlayCells || [];
        for (var i = 0; i < cells.length; i++) {
            try {
                if (cells[i] && typeof cells[i].removeFromParent === "function") {
                    cells[i].removeFromParent(true);
                }
            } catch (e0) {}
        }
        self.__sgscqShopOverlayCells = [];
    }

    function tableOf(self) {
        return self && (self.m_tableView || self.giftTableView || self.m_table || self.tableView);
    }

    function viewSizeOf(table) {
        try {
            if (table && typeof table.getViewSize === "function") {
                var s = table.getViewSize();
                if (s && s.width > 0 && s.height > 0) { return s; }
            }
        } catch (e0) {}
        try {
            if (table && typeof table.getContentSize === "function") {
                var cs = table.getContentSize();
                if (cs && cs.width > 0 && cs.height > 0) { return cs; }
            }
        } catch (e1) {}
        return { width: 650, height: 420 };
    }

    function posOf(table) {
        try {
            if (table && typeof table.getPosition === "function") {
                var p = table.getPosition();
                if (p) { return p; }
            }
        } catch (e0) {}
        try {
            if (xs && xs.Views && xs.Views.TablePage && typeof xs.Views.TablePage.getTableViewOffset === "function") {
                return xs.Views.TablePage.getTableViewOffset();
            }
        } catch (e1) {}
        return { x: 0, y: 40 };
    }

    function cellSizeOf(self, fakeTable, idx, viewSize) {
        var raw = null;
        try {
            if (typeof self.tableCellSizeForIndex === "function") {
                raw = self.tableCellSizeForIndex(fakeTable, idx);
            }
        } catch (e0) {}
        var w = raw && typeof raw.width === "number" ? raw.width : viewSize.width;
        var h = raw && typeof raw.height === "number" ? raw.height : 120;
        if (w <= 0 || w > 2000) { w = viewSize.width; }
        if (h <= 0 || h > 260) { h = 120; }
        return typeof cc.size === "function" ? cc.size(w, h) : { width: w, height: h };
    }

    function point(x, y) {
        return typeof cc !== "undefined" && typeof cc.p === "function" ? cc.p(x, y) : { x: x, y: y };
    }

    function getOffset(self) {
        if (!self.__sgscqShopOverlayOffset) {
            self.__sgscqShopOverlayOffset = point(0, 0);
        }
        return self.__sgscqShopOverlayOffset;
    }

    function clampOffset(offset, viewSize, cellSize, count) {
        offset = offset || point(0, 0);
        var minY = Math.min(0, viewSize.height - (count * cellSize.height));
        var y = typeof offset.y === "number" ? offset.y : 0;
        if (y < minY) { y = minY; }
        if (y > 0) { y = 0; }
        return point(0, y);
    }

    function countOf(self, fakeTable) {
        try {
            if (typeof self.numberOfCellsInTableView === "function") {
                return self.numberOfCellsInTableView(fakeTable) || 0;
            }
        } catch (e0) { log("number failed: " + e0); }
        if (self.m_dataSource && typeof self.m_dataSource.length === "number") { return self.m_dataSource.length; }
        if (self.exchangeListData && typeof self.exchangeListData.length === "number") { return self.exchangeListData.length; }
        return 0;
    }

    function localPoint(node, touch) {
        var p = null;
        try {
            if (touch && typeof touch.getLocation === "function") {
                p = touch.getLocation();
            }
        } catch (e0) {}
        if (!p) { p = point(0, 0); }
        try {
            if (node && typeof node.convertToNodeSpace === "function") {
                return node.convertToNodeSpace(p);
            }
        } catch (e1) {}
        return p;
    }

    function containsPoint(p, viewSize) {
        return !!p && p.x >= 0 && p.y >= 0 && p.x <= viewSize.width && p.y <= viewSize.height;
    }

    function installOverlayTouch(self, table, viewSize) {
        if (!self || !self.__sgscqShopOverlay || self.__sgscqShopOverlayTouch) { return; }
        var layer = makeNode();
        if (!layer) { return; }
        if (typeof layer.setContentSize === "function") {
            layer.setContentSize(cc.size(viewSize.width, viewSize.height));
        }
        if (typeof layer.setPosition === "function") { layer.setPosition(0, 0); }
        if (typeof layer.setZOrder === "function") { layer.setZOrder(9999); }
        try { if (typeof layer.setTouchMode === "function") { layer.setTouchMode(cc.TOUCH_ONE_BY_ONE); } } catch (e0) {}
        try {
            var priority = table && typeof table.getTouchPriority === "function" ? table.getTouchPriority() : 0;
            if (typeof layer.setTouchPriority === "function") { layer.setTouchPriority(priority - 100); }
        } catch (e1) {}
        try { if (typeof layer.setSwallowsTouches === "function") { layer.setSwallowsTouches(false); } } catch (e2) {}
        try { if (typeof layer.setSwallowTouch === "function") { layer.setSwallowTouch(false); } } catch (e2a) {}
        try { if (typeof layer.setTouchEnabled === "function") { layer.setTouchEnabled(true); } } catch (e3) {}
        layer.__sgscqOwner = self;
        layer.__sgscqBeginPoint = null;
        layer.__sgscqStartOffset = null;
        layer.__sgscqMoved = false;
        layer.onTouchBegan = function (touch) {
            var owner = this.__sgscqOwner;
            var vs = owner && owner.__sgscqShopOverlayViewSize;
            var p = localPoint(this, touch);
            if (!vs || !containsPoint(p, vs)) { return false; }
            this.__sgscqBeginPoint = p;
            this.__sgscqLastPoint = p;
            var off = getOffset(owner);
            this.__sgscqStartOffset = point(off.x || 0, off.y || 0);
            this.__sgscqMoved = false;
            return true;
        };
        layer.onTouchMoved = function (touch) {
            var owner = this.__sgscqOwner;
            if (!owner || !this.__sgscqBeginPoint || !this.__sgscqStartOffset) { return; }
            var vs = owner.__sgscqShopOverlayViewSize;
            var cs = owner.__sgscqShopOverlayCellSize;
            var count = owner.__sgscqShopOverlayCount || 0;
            if (!vs || !cs || !count) { return; }
            var p = localPoint(this, touch);
            var dy = p.y - this.__sgscqBeginPoint.y;
            if (Math.abs(dy) > 6) { this.__sgscqMoved = true; }
            owner.__sgscqShopOverlayOffset = clampOffset(point(0, this.__sgscqStartOffset.y - dy), vs, cs, count);
            render(owner, "touch");
        };
        layer.onTouchEnded = function (touch) {
            var owner = this.__sgscqOwner;
            var p = localPoint(this, touch);
            if (owner && !this.__sgscqMoved && owner.__sgscqShopOverlayCellSize && owner.__sgscqShopOverlayViewSize) {
                var off = getOffset(owner);
                var cs = owner.__sgscqShopOverlayCellSize;
                var idx = Math.floor(((owner.__sgscqShopOverlayViewSize.height - p.y) - (off.y || 0)) / cs.height);
                var cells = owner.__sgscqShopOverlayCells || [];
                for (var i = 0; i < cells.length; i++) {
                    if (cells[i] && cells[i].__sgscqIdx === idx && typeof owner.tableCellTouched === "function") {
                        try { owner.tableCellTouched(owner.__sgscqShopFakeTable, cells[i]); } catch (e4) { log("touch cell failed idx=" + idx + ": " + e4); }
                        break;
                    }
                }
            }
            this.__sgscqBeginPoint = null;
            this.__sgscqStartOffset = null;
        };
        layer.onTouchCancelled = function () {
            this.__sgscqBeginPoint = null;
            this.__sgscqStartOffset = null;
        };
        self.__sgscqShopOverlay.addChild(layer);
        self.__sgscqShopOverlayTouch = layer;
        log("touch installed");
    }

    function render(self, phase) {
        try {
            var table = tableOf(self);
            if (!self || !table || typeof self.tableCellAtIndex !== "function") { return false; }
            var viewSize = viewSizeOf(table);
            var pos = posOf(table);
            if (!self.__sgscqShopOverlay) {
                self.__sgscqShopOverlay = makeNode();
                if (!self.__sgscqShopOverlay) { return false; }
                if (typeof self.__sgscqShopOverlay.setContentSize === "function") {
                    self.__sgscqShopOverlay.setContentSize(cc.size(viewSize.width, viewSize.height));
                }
                if (typeof self.__sgscqShopOverlay.setPosition === "function") {
                    self.__sgscqShopOverlay.setPosition(pos.x || 0, pos.y || 0);
                }
                if (typeof self.__sgscqShopOverlay.setZOrder === "function") {
                    self.__sgscqShopOverlay.setZOrder(2000);
                }
                self.addChild(self.__sgscqShopOverlay);
            }
            if (typeof table.setVisible === "function") { table.setVisible(false); }
            clear(self);
            var fakeTable = {
                dequeueCell: function () { return null; },
                getViewSize: function () { return viewSize; },
                getContentSize: function () { return viewSize; },
                getContentOffset: function () { return getOffset(self); },
                setContentOffset: function (offset) {
                    self.__sgscqShopOverlayOffset = clampOffset(offset, self.__sgscqShopOverlayViewSize || viewSize,
                        self.__sgscqShopOverlayCellSize || { width: viewSize.width, height: 120 },
                        self.__sgscqShopOverlayCount || 0);
                    render(self, "setContentOffset");
                },
                minContainerOffset: function () {
                    return clampOffset({ x: 0, y: -999999 }, self.__sgscqShopOverlayViewSize || viewSize,
                        self.__sgscqShopOverlayCellSize || { width: viewSize.width, height: 120 },
                        self.__sgscqShopOverlayCount || 0);
                },
                maxContainerOffset: function () { return { x: 0, y: 0 }; },
                getTouchPriority: function () {
                    try { return table.getTouchPriority ? table.getTouchPriority() : 0; } catch (e1) { return 0; }
                }
            };
            var count = countOf(self, fakeTable);
            var firstSize = cellSizeOf(self, fakeTable, 0, viewSize);
            self.__sgscqShopFakeTable = fakeTable;
            self.__sgscqShopOverlayViewSize = viewSize;
            self.__sgscqShopOverlayCellSize = firstSize;
            self.__sgscqShopOverlayCount = count;
            var offset = clampOffset(getOffset(self), viewSize, firstSize, count);
            self.__sgscqShopOverlayOffset = offset;
            var firstIdx = Math.max(0, Math.floor(Math.max(0, -(offset.y || 0)) / firstSize.height));
            var shiftY = Math.max(0, -(offset.y || 0)) - (firstIdx * firstSize.height);
            var visibleCount = Math.max(0, Math.min(count - firstIdx, Math.ceil(viewSize.height / firstSize.height) + 2));
            for (var i = 0; i < visibleCount; i++) {
                try {
                    var idx = firstIdx + i;
                    var size = cellSizeOf(self, fakeTable, idx, viewSize);
                    var cell = self.tableCellAtIndex(fakeTable, idx);
                    if (!cell) { continue; }
                    cell.__sgscqIdx = idx;
                    if (!cell.getIdx) { cell.getIdx = function () { return this.__sgscqIdx || 0; }; }
                    if (typeof cell.setContentSize === "function") { cell.setContentSize(size); }
                    if (typeof cell.setAnchorPoint === "function") { cell.setAnchorPoint(cc.p(0, 0)); }
                    if (typeof cell.setPosition === "function") {
                        cell.setPosition(0, viewSize.height - ((i + 1) * firstSize.height) + shiftY);
                    }
                    if (typeof cell.setZOrder === "function") { cell.setZOrder(10 + i); }
                    self.__sgscqShopOverlay.addChild(cell);
                    self.__sgscqShopOverlayCells.push(cell);
                } catch (e2) {
                    log("cell failed idx=" + i + ": " + e2);
                }
            }
            installOverlayTouch(self, table, viewSize);
            log(phase + " rendered visible=" + self.__sgscqShopOverlayCells.length + " total=" + count +
                " first=" + firstIdx + " offsetY=" + offset.y + " size=" + viewSize.width + "x" + viewSize.height);
            return true;
        } catch (e) {
            log(phase + " render failed: " + e);
            return false;
        }
    }

    function schedule(self, phase) {
        var n = 0;
        function tick() {
            n++;
            if (render(self, phase) || n >= 30) { return; }
            if (typeof setTimeout === "function") { setTimeout(tick, 100); }
        }
        tick();
    }

    function patchProto(P, name) {
        if (!P || P.__sgscqShopListOverlay) { return false; }
        var baseRefresh = typeof P.refreshTableViewWithOldPos === "function" ? P.refreshTableViewWithOldPos : null;
        if (baseRefresh) {
            P.refreshTableViewWithOldPos = function () {
                var ret;
                try { ret = baseRefresh.apply(this, arguments); } catch (e0) { log(name + " base refresh failed: " + e0); }
                schedule(this, name + ".refreshTableViewWithOldPos");
                return ret;
            };
        }
        var baseOnEnter = typeof P.onEnter === "function" ? P.onEnter : null;
        if (baseOnEnter) {
            P.onEnter = function () {
                var ret = baseOnEnter.apply(this, arguments);
                schedule(this, name + ".onEnter");
                return ret;
            };
        }
        P.__sgscqShopListOverlay = true;
        log("installed " + name);
        return true;
    }

    function install() {
        if (typeof xs === "undefined" || !xs.Views) { return false; }
        var ok = false;
        if (xs.Views.StoreItemView && xs.Views.StoreItemView.prototype) {
            ok = patchProto(xs.Views.StoreItemView.prototype, "StoreItemView") || ok;
        }
        if (xs.Views.GiftListView && xs.Views.GiftListView.prototype) {
            ok = patchProto(xs.Views.GiftListView.prototype, "GiftListView") || ok;
        }
        if (xs.Views.GiftListView_Honor && xs.Views.GiftListView_Honor.prototype) {
            ok = patchProto(xs.Views.GiftListView_Honor.prototype, "GiftListView_Honor") || ok;
        }
        return ok;
    }

    function retry() {
        tries++;
        if (install() || tries >= 3000) { return; }
        if (typeof setTimeout === "function") { setTimeout(retry, 100); }
    }

    retry();
})();
// ---- SGSCQ ARM64 DetailDialogGeneral HD cleanup guard ----
(function () {
    var tries = 0;

    function log(msg) {
        if (typeof cc !== "undefined" && cc.log) {
            cc.log("[SGSCQ DetailDialogGeneral HD] " + msg);
        }
    }

    function resetObserverList(model, fieldName) {
        if (!model) {
            return false;
        }
        if (typeof buckets !== "undefined" && buckets.LinkedList) {
            model[fieldName] = new buckets.LinkedList();
            return true;
        }
        if (model[fieldName] && typeof model[fieldName].clear === "function") {
            model[fieldName].clear();
            return true;
        }
        model[fieldName] = null;
        return true;
    }

    function showHdToast(msg) {
        try {
            if (xs && xs.Views && xs.Views.Mgr && typeof xs.Views.Mgr.showToast === "function") {
                xs.Views.Mgr.showToast(msg);
            }
        } catch (e) {
            log("show toast failed: " + e);
        }
    }

    function getGeneralId(dialog) {
        var general = dialog && dialog._generalData;
        if (!general) {
            return "unknown";
        }
        var methods = ["getPkId", "getGeneralId", "getId"];
        for (var i = 0; i < methods.length; i++) {
            try {
                if (typeof general[methods[i]] === "function") {
                    return general[methods[i]]();
                }
            } catch (e) {
            }
        }
        return general.pk_id || general.general_id || general.id || "unknown";
    }

    function getHdUrl(dialog) {
        try {
            if (dialog && dialog._generalData && typeof dialog._generalData.getRes === "function") {
                var res = dialog._generalData.getRes();
                if (res && typeof res.getHDUrl === "function") {
                    return res.getHDUrl();
                }
            }
        } catch (e) {
            log("read hd_url failed: " + e);
        }
        return null;
    }

    function fileExists(path) {
        try {
            return !!(path && cc && cc.FileUtils && cc.FileUtils.getInstance().isFileExist(path));
        } catch (e) {
            log("file exists check failed: " + e);
            return false;
        }
    }

    function install() {
        if (typeof xs === "undefined" || !xs.Views || !xs.Views.Dialog ||
            !xs.Views.Dialog.DetailDialogGeneral || !xs.Views.Dialog.DetailDialogGeneral.prototype) {
            return false;
        }
        var P = xs.Views.Dialog.DetailDialogGeneral.prototype;
        if (P.__sgscq64HdCleanupGuard) {
            return true;
        }
        var baseReadyFunc = P.__readyFunc;
        var baseUnreadyFunc = P.__unreadyFunc;

        P.onExit = function () {
            this.__sgscq64HdClosed = true;
            this.__sgscq64HdRequestActive = false;
            var hdClass = xs.Models && xs.Models.HDModel;
            var hdModel = hdClass && hdClass.s_HDModel;
            if (!hdModel) {
                log("skip cleanup; no HDModel instance");
                return;
            }
            resetObserverList(hdModel, "_readyObserver");
            resetObserverList(hdModel, "_unreadyObserver");
            log("cleared existing observers");
        };

        P.__displayHDLayer = function () {
            this.__sgscq64HdClosed = false;
            this.__sgscq64HdRequestActive = true;
            var filename = getHdUrl(this);
            var generalId = getGeneralId(this);
            log("display request general=" + generalId + " hd_url=" + filename);

            if (!filename || filename === "0") {
                this.__sgscq64HdRequestActive = false;
                log("skip empty hd_url general=" + generalId);
                showHdToast("高清图不存在");
                return;
            }
            if (!xs.Models || !xs.Models.HDModel || typeof xs.Models.HDModel.getInstance !== "function") {
                this.__sgscq64HdRequestActive = false;
                log("HDModel unavailable general=" + generalId);
                showHdToast("高清图暂不可用");
                return;
            }

            try {
                xs.Models.HDModel.getInstance().addQuery(
                    filename,
                    this,
                    this.__readyFunc.bind(this),
                    this.__unreadyFunc.bind(this)
                );
            } catch (e) {
                this.__sgscq64HdRequestActive = false;
                log("addQuery failed general=" + generalId + " hd_url=" + filename + " err=" + e);
                showHdToast("高清图加载失败");
            }
        };

        P.__readyFunc = function (params) {
            var path = params && params.absoluteFilePath;
            log("ready general=" + getGeneralId(this) + " path=" + path);
            if (this.__sgscq64HdClosed) {
                log("ignore ready after dialog closed");
                return;
            }
            if (!path) {
                this.__sgscq64HdRequestActive = false;
                showHdToast("高清图加载失败");
                return;
            }
            if (!fileExists(path)) {
                this.__sgscq64HdRequestActive = false;
                log("ready file missing path=" + path);
                showHdToast("高清图不存在");
                return;
            }
            try {
                if (typeof baseReadyFunc === "function") {
                    return baseReadyFunc.apply(this, arguments);
                }
            } catch (e) {
                this.__sgscq64HdRequestActive = false;
                log("ready handler failed path=" + path + " err=" + e);
                showHdToast("高清图加载失败");
            }
        };

        P.__unreadyFunc = function (params) {
            log("unready general=" + getGeneralId(this) + " path=" + (params && params.absoluteFilePath));
            try {
                if (typeof baseUnreadyFunc === "function") {
                    return baseUnreadyFunc.apply(this, arguments);
                }
            } catch (e) {
                log("unready handler failed: " + e);
            }
        };

        P.__sgscq64HdCleanupGuard = true;
        log("installed");
        return true;
    }

    function retry() {
        tries++;
        if (install() || tries > 3000) {
            return;
        }
        if (typeof setTimeout === "function") {
            setTimeout(retry, 100);
        }
    }

    retry();
})();
// ---- SGSCQ ARM64 TablePage hint top-layer compatibility ----
(function patchTablePageHintTopLayer() {
    if (typeof xs === "undefined" || !xs.Views || !xs.Views.TablePage || !xs.Views.TablePage.prototype) {
        if (typeof setTimeout === "function") { setTimeout(patchTablePageHintTopLayer, 100); }
        return;
    }
    var P = xs.Views.TablePage.prototype;
    if (P.__sgscqHintTopLayer) {
        return;
    }

    var HINT_TOP_Z = 60000;

    function markHint(node, pageIdx) {
        if (!node) { return; }
        node.__sgscqTablePageHintIcon = true;
        node.__sgscqTablePageHintPageIdx = pageIdx;
        if (typeof node.setZOrder === "function") {
            node.setZOrder(HINT_TOP_Z);
        }
    }

    function bringHintIconsToFront(self) {
        if (!self || typeof self.getChildren !== "function") { return; }
        var children = self.getChildren() || [];
        for (var i = 0; i < children.length; i++) {
            var child = children[i];
            if (!child || child.__sgscqTablePageHintIcon !== true) { continue; }
            if (typeof child.setZOrder === "function") {
                child.setZOrder(HINT_TOP_Z);
            }
            if (typeof self.reorderChild === "function") {
                try { self.reorderChild(child, HINT_TOP_Z); } catch (e0) {}
            }
        }
    }

    function wrap(name, after) {
        var base = P[name];
        if (typeof base !== "function") { return; }
        P[name] = function () {
            var ret = base.apply(this, arguments);
            try { after.call(this, arguments, ret); } catch (e) {
                if (typeof cc !== "undefined" && cc.log) {
                    cc.log("[SGSCQ hint top] " + name + " failed: " + e);
                }
            }
            return ret;
        };
    }

    wrap("setIconNum", function (args) {
        var pageIdx = args && args.length > 0 ? args[0] : undefined;
        var hintIcon = this.getChildByTag && this.getChildByTag(pageIdx);
        markHint(hintIcon, pageIdx);
        bringHintIconsToFront(this);
    });

    wrap("setHintIcon", function () {
        bringHintIconsToFront(this);
    });

    wrap("selectPage", function () {
        bringHintIconsToFront(this);
    });

    wrap("touchDownAction", function () {
        bringHintIconsToFront(this);
    });

    wrap("addPageButton", function () {
        bringHintIconsToFront(this);
    });

    P.__sgscqHintTopLayer = true;
    xs.__sgscqBringTablePageHintsToFront = bringHintIconsToFront;
})();
// ---- SGSCQ ARM64 Bag open-box count dialog compatibility ----
(function patchBagOpenBoxCountDialogCompat() {
    function log(msg) {
        if (typeof cc !== "undefined" && cc && typeof cc.log === "function") {
            cc.log("[SGSCQ bag open-box] " + msg);
        }
    }

    function itemTypeOf(item) {
        try { return item && typeof item.getItemType === "function" ? item.getItemType() : item && item.item_type; } catch (e) {}
        return null;
    }

    function itemIdOf(item) {
        try { return item && typeof item.getItemId === "function" ? item.getItemId() : item && item.item_id; } catch (e) {}
        return item && item.item_id;
    }

    function relatedIdOf(item) {
        try { return item && typeof item.getRelatedId === "function" ? item.getRelatedId() : item && item.related_id; } catch (e) {}
        return item && item.related_id;
    }

    function itemNumOf(item) {
        var n = 0;
        try {
            if (item && typeof item.getItemNum === "function") {
                n = parseInt(item.getItemNum(), 10);
            }
        } catch (e0) {}
        if (!n && item && item.item_num !== undefined) {
            n = parseInt(item.item_num, 10);
        }
        return isNaN(n) ? 0 : n;
    }

    function totalNumById(id) {
        if (id === undefined || id === null || id === "" || id === "0") { return 0; }
        try {
            var mgr = xs.Profile.GameData.Mgr.getInstance();
            if (mgr && mgr.Items && typeof mgr.Items.getTotalNumById === "function") {
                var n = parseInt(mgr.Items.getTotalNumById(String(id)), 10);
                return isNaN(n) ? 0 : n;
            }
        } catch (e) {}
        return 0;
    }

    function isOpenableItem(item) {
        if (!item || typeof xs === "undefined" || !xs.Models) { return false; }
        var t = itemTypeOf(item);
        return t === xs.Models.ItemType_Box ||
            t === xs.Models.ItemType_Key ||
            t === xs.Models.ItemType_TiLi ||
            t === xs.Models.ItemType_JingLi ||
            t === xs.Models.ItemType_Gift;
    }

    function effectiveOpenCount(item, fallback) {
        var selfNum = Math.max(itemNumOf(item), totalNumById(itemIdOf(item)));
        fallback = parseInt(fallback, 10);
        if ((!selfNum || selfNum < 1) && !isNaN(fallback)) { selfNum = fallback; }
        if (!selfNum || selfNum < 1) { selfNum = 1; }

        var relatedId = relatedIdOf(item);
        if (relatedId !== undefined && relatedId !== null && String(relatedId) !== "0") {
            var relatedNum = totalNumById(relatedId);
            if (relatedNum > 0) {
                return Math.max(1, Math.min(selfNum, relatedNum));
            }
        }
        return selfNum;
    }

    function patchSelectOpenDialog() {
        if (typeof xs === "undefined" || !xs.Views || !xs.Views.Dialog ||
            !xs.Views.Dialog.SelectOpenBoxNumDialog ||
            !xs.Views.Dialog.SelectOpenBoxNumDialog.prototype) {
            return false;
        }
        var P = xs.Views.Dialog.SelectOpenBoxNumDialog.prototype;
        if (P.__sgscqOpenBoxDialogCompat) { return true; }

        P.setListener = function (listener) {
            this.m_listener = listener;
        };
        P.onClose = function () {
            xs.Views.Mgr.hideDialog();
        };
        P.onClick = function (sender) {
            xs.Views.Mgr.hideDialog();
            if (sender === this.m_confirmBtn && this.m_listener && typeof this.m_listener.confirmSelect === "function") {
                this.m_listener.confirmSelect(this.selectNum);
            }
        };
        P.onChgNum = function (sender) {
            if (sender === this.add1Btn && this.selectNum < this.maxNum) {
                this.selectNum += 1;
            } else if (sender === this.decrease1Btn && this.selectNum > this.minNum) {
                this.selectNum -= 1;
            } else if (sender === this.add10Btn) {
                this.selectNum = Math.min(this.maxNum, this.selectNum + 10);
            } else if (sender === this.decrease10Btn) {
                this.selectNum = Math.max(this.minNum, this.selectNum - 10);
            } else if (sender === this.maxBtn) {
                this.selectNum = this.maxNum;
            }
            if (this.m_openNumLabel && typeof this.m_openNumLabel.setString === "function") {
                this.m_openNumLabel.setString(this.selectNum + "");
            }
        };
        P.setBaseTouchPriority = function (priority) {
            this.m_baseTouchPriority = priority;
            try { if (typeof this.setTouchPriority === "function") { this.setTouchPriority(priority); } } catch (e0) {}
            var buttons = [this.add1Btn, this.decrease1Btn, this.add10Btn, this.decrease10Btn,
                this.maxBtn, this.m_cancelBtn, this.m_confirmBtn, this.m_btnClose];
            for (var i = 0; i < buttons.length; i++) {
                try {
                    if (buttons[i] && typeof buttons[i].setTouchPriority === "function") {
                        buttons[i].setTouchPriority(priority - 1);
                    }
                } catch (e1) {}
            }
        };
        P.__sgscqOpenBoxDialogCompat = true;
        log("dialog patched");
        return true;
    }

    function patchBagItemCellFastCount() {
        if (typeof xs === "undefined" || !xs.Views || !xs.Views.BagItemCell || !xs.Views.BagItemCell.prototype) {
            return false;
        }
        var P = xs.Views.BagItemCell.prototype;
        if (P.__sgscqOpenBoxCellCountCompat) { return true; }

        var baseUpdate = typeof P.updateView === "function" ? P.updateView : null;
        if (baseUpdate) {
            P.updateView = function () {
                var ret = baseUpdate.apply(this, arguments);
                if (this.m_itemData && isOpenableItem(this.m_itemData)) {
                    var count = effectiveOpenCount(this.m_itemData, this.m_continuousOpen);
                    this.__sgscqTrueContinuousOpen = count;
                    this.m_continuousOpen = count;
                    if (this.m_fastBtn && xs.Tools && xs.Tools.UI && typeof xs.Tools.UI.setButtonTitle === "function") {
                        if (count > 10) {
                            xs.Tools.UI.setButtonTitle(this.m_fastBtn, xs.Tools.String.createString("openBox_1"));
                        } else if (count >= 2) {
                            xs.Tools.UI.setButtonTitle(this.m_fastBtn, ((xs.Tools.String.createString("auto_name_288") + count) + xs.Tools.String.createString("auto_name_289")));
                        }
                    }
                    log("cell count item=" + itemIdOf(this.m_itemData) + " count=" + count);
                }
                return ret;
            };
        }

        var baseFast = typeof P.fastBtnCallback === "function" ? P.fastBtnCallback : null;
        P.fastBtnCallback = function () {
            if (this.m_listener && this.m_itemData && isOpenableItem(this.m_itemData)) {
                var count = this.__sgscqTrueContinuousOpen || effectiveOpenCount(this.m_itemData, this.m_continuousOpen);
                this.__sgscqTrueContinuousOpen = count;
                this.m_continuousOpen = count;
                log("cell fast item=" + itemIdOf(this.m_itemData) + " count=" + count);
                if (typeof this.m_listener.BagItemCell_fastBtnCallback === "function") {
                    return this.m_listener.BagItemCell_fastBtnCallback(this.m_itemData, count);
                }
            }
            if (baseFast) {
                return baseFast.apply(this, arguments);
            }
        };

        P.__sgscqOpenBoxCellCountCompat = true;
        log("BagItemCell patched");
        return true;
    }

    function patchBagLayer() {
        if (typeof xs === "undefined" || !xs.Scene || !xs.Scene.BagLayer || !xs.Scene.BagLayer.prototype) {
            return false;
        }
        var P = xs.Scene.BagLayer.prototype;
        if (P.__sgscqOpenBoxCountCompat) { return true; }

        var baseFast = typeof P.BagItemCell_fastBtnCallback === "function" ? P.BagItemCell_fastBtnCallback : null;
        var baseUseItem = typeof P.useItem === "function" ? P.useItem : null;
        var baseUseItemSuccessCallback = typeof P.useItemSuccessCallback === "function" ? P.useItemSuccessCallback : null;

        if (baseUseItem) {
            P.useItem = function () {
                var guard = xs.__sgscqRewardCapacityGuard;
                if (isOpenableItem(this.m_curItemData) && guard &&
                    guard.blockRewardAction("bag-use-item")) {
                    return;
                }
                return baseUseItem.apply(this, arguments);
            };
        }

        if (baseUseItemSuccessCallback) {
            P.useItemSuccessCallback = function () {
                var result = baseUseItemSuccessCallback.apply(this, arguments);
                var guard = xs.__sgscqRewardCapacityGuard;
                if (guard) {
                    guard.requestCheck("bag-use-success");
                }
                return result;
            };
        }

        P.confirmSelect = function (num) {
            if (!this.m_curItemData) { return; }
            var param = {};
            param.user_item_id = this.m_curItemData.getPkId();
            param.item_num = num || 1;
            if (itemTypeOf(this.m_curItemData) === xs.Models.ItemType_Evolution_Item) {
                xs.Tools.Net.requestResolveItem(param, this.useItemSuccessCallback, this.useItemFailCallback, this);
            } else {
                xs.Tools.Net.requestUseItem(param, this.useItemSuccessCallback, this.useItemFailCallback, this);
            }
        };
        P.BagItemCell_fastBtnCallback = function (itemData, itemNum) {
            if (itemData && itemTypeOf(itemData) === xs.Models.ItemType_Evolution_Item) {
                if (baseFast) { return baseFast.call(this, itemData, itemNum); }
            }

            if (isOpenableItem(itemData)) {
                var guard = xs.__sgscqRewardCapacityGuard;
                if (guard && guard.blockRewardAction("bag-fast-open")) {
                    return;
                }
                var count = effectiveOpenCount(itemData, itemNum);
                this.m_curItemData = itemData;
                log("fast open item=" + itemIdOf(itemData) + " passed=" + itemNum + " count=" + count);
                if (count > 10) {
                    this.selectBoxDialog = xs.Views.Mgr.showDialogByName("SelectOpenBoxNumDialog", {
                        param: itemData,
                        num: count
                    });
                    if (this.selectBoxDialog && typeof this.selectBoxDialog.setListener === "function") {
                        this.selectBoxDialog.setListener(this);
                    }
                    return;
                }
                return this.useItem(count);
            }

            if (baseFast) {
                return baseFast.call(this, itemData, itemNum);
            }
        };
        P.__sgscqOpenBoxCountCompat = true;
        log("BagLayer patched");
        return true;
    }

    function monitor() {
        patchSelectOpenDialog();
        patchBagItemCellFastCount();
        patchBagLayer();
        if (typeof setTimeout === "function") {
            setTimeout(monitor, 100);
        }
    }

    monitor();
})();
// ---- SGSCQ ARM64 BFButton selected state compatibility ----
(function patchBFButtonSelectedStateCompat() {
    if (typeof xs === "undefined" || !xs.Libs || !xs.Libs.Views ||
        !xs.Libs.Views.Button || !xs.Libs.Views.Button.Factory) {
        if (typeof setTimeout === "function") { setTimeout(patchBFButtonSelectedStateCompat, 100); }
        return;
    }
    var factory = xs.Libs.Views.Button.Factory;
    var baseCreate = factory._createWithFont;
    if (typeof baseCreate !== "function" || baseCreate.__sgscqSelectedStateCompat) {
        return;
    }

    function cloneStyleConfig(bgCfg) {
        var cloned = {};
        for (var key in bgCfg) {
            if (Object.prototype.hasOwnProperty.call(bgCfg, key)) {
                cloned[key] = bgCfg[key];
            }
        }
        cloned.bgIds = bgCfg.bgIds ? bgCfg.bgIds.slice(0) : [];
        cloned.fontIds = bgCfg.fontIds ? bgCfg.fontIds.slice(0) : [];
        if (cloned.bgIds[3]) { cloned.bgIds[1] = cloned.bgIds[3]; }
        if (cloned.fontIds[3]) { cloned.fontIds[1] = cloned.fontIds[3]; }
        return cloned;
    }

    function hasSelectedStyle(bgCfg) {
        return !!(bgCfg && (
            (bgCfg.bgIds && bgCfg.bgIds[3]) ||
            (bgCfg.fontIds && bgCfg.fontIds[3])
        ));
    }

    factory._createWithFont = function (fontType, fontIds, bgCfg, str, size) {
        var usesSelectedStyle = hasSelectedStyle(bgCfg);
        var compatCfg = usesSelectedStyle ? cloneStyleConfig(bgCfg) : bgCfg;
        var button = baseCreate.call(this, fontType, fontIds, compatCfg, str, size);
        if (!usesSelectedStyle || !button ||
            typeof button.setSelected !== "function" ||
            typeof button.setHighlighted !== "function" ||
            button.setSelected.__sgscqSelectedStateCompat) {
            return button;
        }
        var baseSetSelected = button.setSelected;
        var baseSetHighlighted = button.setHighlighted;
        button.setSelected = function (selected) {
            selected = !!selected;
            var ret = baseSetSelected.call(this, selected);
            baseSetHighlighted.call(this, selected);
            return ret;
        };
        button.setSelected.__sgscqSelectedStateCompat = true;
        return button;
    };
    factory._createWithFont.__sgscqSelectedStateCompat = true;
})();
// ---- SGSCQ ARM64 TeamBuild eleven-slot capacity ----
(function patchTeamBuildElevenSlotCapacity() {
    var installTries = 0;

    function log(msg) {
        if (typeof cc !== "undefined" && cc && typeof cc.log === "function") {
            cc.log("[SGSCQ team slots] " + msg);
        }
    }

    function ensureTeamCapacity(playerId, playerData) {
        var globalCapacity = parseInt(xs.maxTeamNum, 10);
        if (isNaN(globalCapacity) || globalCapacity < 11) {
            xs.maxTeamNum = 11;
        }
        var manager = xs.Profile.GameData.Mgr.getInstance(playerId, playerData);
        var team = manager && manager.Team;
        if (!team || typeof team.getTeamMaxLength !== "function") {
            return false;
        }
        var baseGetTeamMaxLength = team.getTeamMaxLength;
        if (baseGetTeamMaxLength.__sgscqElevenSlotCapacity) {
            return true;
        }
        var lastLoggedBaseCount = null;
        team.getTeamMaxLength = function () {
            var baseCount = parseInt(baseGetTeamMaxLength.apply(this, arguments), 10);
            var result = isNaN(baseCount) ? 11 : Math.max(baseCount, 11);
            if (lastLoggedBaseCount !== baseCount) {
                lastLoggedBaseCount = baseCount;
                log("capacity=" + result + " base=" + baseCount);
            }
            return result;
        };
        team.getTeamMaxLength.__sgscqElevenSlotCapacity = true;
        if (typeof team.getOpenLevelByTeamPos === "function" &&
            !team.getOpenLevelByTeamPos.__sgscqElevenSlotOpenLevel) {
            var baseGetOpenLevelByTeamPos = team.getOpenLevelByTeamPos;
            team.getOpenLevelByTeamPos = function (position) {
                var baseOpenLevel = baseGetOpenLevelByTeamPos.apply(this, arguments);
                var parsedPosition = parseInt(position, 10);
                var parsedOpenLevel = parseInt(baseOpenLevel, 10);
                if (parsedPosition === 11 && (isNaN(parsedOpenLevel) || parsedOpenLevel <= 0)) {
                    return 100;
                }
                return baseOpenLevel;
            };
            team.getOpenLevelByTeamPos.__sgscqElevenSlotOpenLevel = true;
        }
        if (typeof team.getTeamGeneralInPos === "function" &&
            typeof team.getTeamGenerals === "function" &&
            !team.getTeamGeneralInPos.__sgscqElevenSlotPlaceholder) {
            var baseGetTeamGeneralInPos = team.getTeamGeneralInPos;
            team.getTeamGeneralInPos = function (position) {
                var result = baseGetTeamGeneralInPos.apply(this, arguments);
                if (result || parseInt(position, 10) !== 11) { return result; }
                var teamGenerals = this.getTeamGenerals();
                for (var generalIndex = 0; teamGenerals && generalIndex < teamGenerals.length; generalIndex++) {
                    var teamGeneral = teamGenerals[generalIndex];
                    if (teamGeneral && typeof teamGeneral.getGeneralPos === "function" &&
                        parseInt(teamGeneral.getGeneralPos(), 10) === 11) {
                        log("using empty position 11 placeholder");
                        return teamGeneral;
                    }
                }
                return result;
            };
            team.getTeamGeneralInPos.__sgscqElevenSlotPlaceholder = true;
        }
        return true;
    }

    function install() {
        if (typeof xs === "undefined" || !xs.Scene || !xs.Scene.TeamBuildLayer ||
            !xs.Scene.TeamBuildLayer.prototype || !xs.Profile || !xs.Profile.GameData ||
            !xs.Profile.GameData.Mgr || typeof xs.Profile.GameData.Mgr.getInstance !== "function") {
            return false;
        }
        var layerPrototype = xs.Scene.TeamBuildLayer.prototype;
        var baseInit = layerPrototype.init;
        if (typeof baseInit !== "function") {
            return false;
        }
        if (baseInit.__sgscqElevenSlotCapacity) {
            return true;
        }
        var baseTableCellAtIndex = layerPrototype.tableCellAtIndex;
        if (typeof baseTableCellAtIndex === "function" && !baseTableCellAtIndex.__sgscqElevenSlotEmptyCell) {
            layerPrototype.tableCellAtIndex = function (tableView, index) {
                if (parseInt(index, 10) === 10 && cc.TableViewCell) {
                    var manager = xs.Profile.GameData.Mgr.getInstance(this.m_playerId, this.m_playerData);
                    var team = manager && manager.Team;
                    var teamGeneral = team && typeof team.getTeamGeneralInPos === "function" ?
                        team.getTeamGeneralInPos(11) : null;
                    var generalPkId = teamGeneral && typeof teamGeneral.getGeneralPkId === "function" ?
                        teamGeneral.getGeneralPkId() : null;
                    var currentCapacity = team && typeof team.getCurTeamMaxLength === "function" ?
                        parseInt(team.getCurTeamMaxLength(), 10) : 0;
                    if (isNaN(currentCapacity)) { currentCapacity = 0; }
                    var positionCell = typeof cc.TableViewCell === "function" ?
                        new cc.TableViewCell() : cc.TableViewCell.create();
                    positionCell.b_isEmpty = !generalPkId;
                    positionCell.b_isLocked = positionCell.b_isEmpty && currentCapacity < 11;
                    var cellSize = typeof this.tableCellSizeForIndex === "function" ?
                        this.tableCellSizeForIndex(tableView, index) : null;
                    if (cellSize && typeof positionCell.setContentSize === "function") {
                        positionCell.setContentSize(cellSize);
                    }
                    try {
                        if (positionCell.b_isLocked && xs.Factorys && xs.Factorys.Sprite &&
                            typeof xs.Factorys.Sprite.create === "function") {
                            var lockedResourceNames = [
                                "button_kongzhikuang",
                                "icon_kongTouxiang",
                                "icon_touxiangSuo"
                            ];
                            for (var lockedResourceIndex = 0;
                                lockedResourceIndex < lockedResourceNames.length;
                                lockedResourceIndex++) {
                                var lockedNode = xs.Factorys.Sprite.create(
                                    lockedResourceNames[lockedResourceIndex], "Cmn01");
                                if (lockedNode && cellSize && typeof lockedNode.setPosition === "function") {
                                    lockedNode.setPosition(cc.p(cellSize.width / 2, cellSize.height / 2));
                                }
                                if (lockedNode && typeof positionCell.addChild === "function") {
                                    positionCell.addChild(lockedNode);
                                }
                            }
                            log("rendered locked position 11 cell");
                            return positionCell;
                        }
                        var content = null;
                        var assignedTeamIcon = false;
                        if (generalPkId && typeof team.getGeneral === "function") {
                            var general = team.getGeneral(teamGeneral);
                            if (general && typeof general.createIcon_TeamBuild === "function") {
                                content = general.createIcon_TeamBuild();
                                assignedTeamIcon = true;
                            } else if (general && typeof general.createCard_General === "function") {
                                content = general.createCard_General({
                                    pos: cellSize ? cc.p(cellSize.width / 2, cellSize.height / 2) : cc.p(0, 0),
                                    markShowFengyin: false
                                });
                                if (content && typeof content.reloadData === "function") {
                                    content.reloadData(general);
                                }
                            }
                        } else if (cc.Sprite && typeof cc.Sprite.createWithSpriteFrameName === "function") {
                            content = cc.Sprite.createWithSpriteFrameName("ZuiDuiMenuScene01_kongwujiang.png");
                        }
                        var contentSize = content && typeof content.getContentSize === "function" ?
                            content.getContentSize() : null;
                        if (content && cellSize && typeof content.setScale === "function") {
                            if (assignedTeamIcon) {
                                var assignedIconNativeSize = 92;
                                var assignedIconTargetSize = 100;
                                content.setScale(assignedIconTargetSize / assignedIconNativeSize);
                            } else if (generalPkId && (!contentSize || contentSize.width <= 0 || contentSize.height <= 0)) {
                                content.setScale(Math.min(cellSize.width / 180,
                                    cellSize.height / 250, 0.5));
                            } else if (contentSize && contentSize.width > 0 && contentSize.height > 0) {
                                content.setScale(Math.min(cellSize.width / contentSize.width,
                                    cellSize.height / contentSize.height, 1));
                            }
                        }
                        if (content && cellSize && typeof content.setPosition === "function") {
                            if (assignedTeamIcon) {
                                var assignedIconTopOffset = 3;
                                content.setPosition(cc.p(cellSize.width / 2,
                                    cellSize.height - assignedIconTopOffset - assignedIconTargetSize / 2));
                            } else {
                                content.setPosition(cc.p(cellSize.width / 2, cellSize.height / 2));
                            }
                        }
                        if (content && typeof positionCell.addChild === "function") {
                            positionCell.addChild(content);
                        }
                        if (cc.Sprite && typeof cc.Sprite.createWithSpriteFrameName === "function") {
                            if (!generalPkId) {
                                var stateFrame = positionCell.b_isLocked ?
                                    "Cmn02_icon_mask_dark.png" : "Cmn02_icon_lt_KeShangZhen.png";
                                var stateOverlay = cc.Sprite.createWithSpriteFrameName(stateFrame);
                                if (stateOverlay && cellSize && typeof stateOverlay.setPosition === "function") {
                                    stateOverlay.setPosition(cc.p(cellSize.width / 2, cellSize.height / 2));
                                }
                                if (stateOverlay && typeof positionCell.addChild === "function") {
                                    positionCell.addChild(stateOverlay, 5);
                                }
                            }
                            var selectedIndex = parseInt(this.m_curTeamListIndex, 10);
                            if (!positionCell.b_isLocked && selectedIndex === parseInt(index, 10) && xs.Factorys &&
                                xs.Factorys.Sprite && typeof xs.Factorys.Sprite.create === "function") {
                                var selectedIcon = xs.Factorys.Sprite.create("head_select", "Cmn02");
                                if (selectedIcon && cellSize && typeof selectedIcon.setPosition === "function") {
                                    selectedIcon.setPosition(cc.p(cellSize.width / 2, cellSize.height / 2));
                                }
                                if (selectedIcon && typeof selectedIcon.setZOrder === "function") {
                                    selectedIcon.setZOrder(1);
                                }
                                if (selectedIcon && typeof positionCell.addChild === "function") {
                                    positionCell.addChild(selectedIcon, 1);
                                }
                            }
                            var positionBadge = cc.Sprite.createWithSpriteFrameName("Cmn02_icon_lt_team[11].png");
                            if (positionBadge && cellSize && typeof positionBadge.setPosition === "function") {
                                positionBadge.setPosition(cc.p(20, cellSize.height - 20));
                            }
                            if (positionBadge && typeof positionCell.addChild === "function") {
                                positionCell.addChild(positionBadge, 10);
                            }
                        }
                    } catch (e) {
                        log("position 11 artwork skipped: " + e);
                    }
                    log("rendered position 11 cell pk=" + generalPkId);
                    return positionCell;
                }
                return baseTableCellAtIndex.apply(this, arguments);
            };
            layerPrototype.tableCellAtIndex.__sgscqElevenSlotEmptyCell = true;
        }
        layerPrototype.init = function (playerId, playerData) {
            ensureTeamCapacity(playerId, playerData);
            return baseInit.apply(this, arguments);
        };
        layerPrototype.init.__sgscqElevenSlotCapacity = true;
        log("installed");
        return true;
    }

    function retryInstall() {
        installTries++;
        if (install() || installTries >= 3000) { return; }
        schedule();
    }

    function schedule() {
        if (typeof setTimeout === "function") {
            setTimeout(retryInstall, 100);
            return;
        }
        try {
            var director = cc.Director && cc.Director.getInstance ? cc.Director.getInstance() : cc.director;
            var scheduler = director && director.getScheduler ? director.getScheduler() : null;
            if (scheduler && typeof scheduler.scheduleCallbackForTarget === "function") {
                scheduler.scheduleCallbackForTarget(
                    { __sgscqTeamBuildElevenSlotCapacity: true },
                    retryInstall,
                    0.1,
                    0,
                    0,
                    false
                );
            }
        } catch (e) {}
    }

    retryInstall();
})();
// ---- SGSCQ ARM64 FST TeamBuild TV focus compatibility ----
(function patchFstTeamBuildTvFocusCompat() {
    var installTries = 0;

    function log(msg) {
        if (typeof cc !== "undefined" && cc && typeof cc.log === "function") {
            cc.log("[SGSCQ FST team focus] " + msg);
        }
    }

    function installFocus(layer) {
        if (!layer || layer.__sgscqFstTvFocus || !layer.m_teamList) { return; }
        layer.m_focusCellIndex = 0;
        layer.m_TVFocusView = xs.Views.TVFocusView.create();
        if (layer.m_TVFocusView && typeof layer.addChild === "function") {
            layer.addChild(layer.m_TVFocusView, 100);
        }
        layer.m_tvMgr = xs.Utils.TVManager.create();
        var tableItem = xs.Utils.TVItem.create(100, cc.p(0, 0), layer.m_teamList, "m_teamList");
        layer.m_tvMgr.add(tableItem);

        function addItem(tag, node, name) {
            if (!node || typeof node.getBoundingBox !== "function") { return; }
            var box = node.getBoundingBox();
            var pos = cc.p(cc.rectGetMidX(box), cc.rectGetMidY(box));
            layer.m_tvMgr.add(xs.Utils.TVItem.create(tag, pos, node, name));
        }

        addItem(22, layer.m_gInfo, "m_gInfo");
        addItem(51, layer.m_buddyBtn, "m_buddyBtn");
        addItem(21, layer.queueTeamMenuItem, "queueTeamMenuItem");
        addItem(50, layer.m_mainMenu, "m_mainMenu");
        addItem(10, layer.m_instructionBtn, "m_instructionBtn");
        addItem(11, layer.m_closeBtn, "m_closeBtn");
        for (var buttonIndex = 0; layer.m_iconBtns && buttonIndex < layer.m_iconBtns.length; buttonIndex++) {
            addItem(buttonIndex, layer.m_iconBtns[buttonIndex], "m_iconBtns_" + buttonIndex);
        }

        function count() {
            return Math.max(0, layer.numberOfCellsInTableView(layer.m_teamList) || 0);
        }

        function focusCell() {
            var table = layer.m_teamList;
            var cell = table.cellAtIndex(layer.m_focusCellIndex);
            if (!cell && typeof table.getCellPosAtIndex === "function" &&
                typeof table.getContentOffset === "function" && typeof table.setContentOffset === "function") {
                var cellPos = table.getCellPosAtIndex(layer.m_focusCellIndex);
                var offset = table.getContentOffset();
                if (cellPos && offset) {
                    table.setContentOffset(cc.p(-cellPos.x, offset.y), true);
                    cell = table.cellAtIndex(layer.m_focusCellIndex);
                }
            }
            if (cell && layer.m_TVFocusView && typeof cell.getBoundingBox === "function") {
                var cellBox = cell.getBoundingBox();
                var tableBox = typeof table.getBoundingBox === "function" ? table.getBoundingBox() : { x: 0, y: 0 };
                layer.m_TVFocusView.setPosition(cc.p(
                    tableBox.x + cc.rectGetMidX(cellBox),
                    tableBox.y + cc.rectGetMidY(cellBox)
                ));
            }
        }

        function tableFocused() {
            if (!layer.m_tvMgr || typeof layer.m_tvMgr.getCurFocusItem !== "function") { return true; }
            var item = layer.m_tvMgr.getCurFocusItem();
            return !item || typeof item.getDefaultTag !== "function" || item.getDefaultTag() === 100;
        }

        layer.keyRightArrowClicked = function () {
            if (tableFocused() && this.m_focusCellIndex + 1 < count()) {
                this.m_focusCellIndex++;
                focusCell();
                return;
            }
            this.m_tvMgr.goRightFocus();
            if (tableFocused()) { focusCell(); }
        };
        layer.keyLeftArrowClicked = function () {
            if (tableFocused() && this.m_focusCellIndex > 0) {
                this.m_focusCellIndex--;
                focusCell();
                return;
            }
            this.m_tvMgr.goLeftFocus();
            if (tableFocused()) { focusCell(); }
        };
        layer.keyUpArrowClicked = function () {
            this.m_tvMgr.goUpFocus();
            if (tableFocused()) { focusCell(); }
        };
        layer.keyDownArrowClicked = function () {
            this.m_tvMgr.goDownFocus();
            if (tableFocused()) { focusCell(); }
        };
        layer.keyEnterClicked = function () {
            if (!this.m_TVFocusView) { return; }
            var pos = this.m_TVFocusView.getPosition();
            if (typeof this.convertToWorldSpace === "function") { pos = this.convertToWorldSpace(pos); }
            if (cc.director && typeof cc.director.convertToUI === "function") { pos = cc.director.convertToUI(pos); }
            xs.JsbConnecter.getInstance().invoke("GlobalMethod", "simTouch", pos.x + "|" + pos.y);
        };
        layer.keyBackClicked = function () {
            if (xs.enableNoBackOnGuide && xs.Guide && xs.Guide.GuideMgr &&
                !xs.Guide.GuideMgr.getIsOver()) {
                xs.Views.Mgr.showToast(xs.tipNoBackOnGuide);
                return;
            }
            xs.Scene.Mgr.gotoLastScene();
        };
        layer.keyNotClicked = function () {
            if (this.m_TVFocusView) { this.m_TVFocusView.setVisible(false); }
        };
        layer.keySpClicked = function () {
            if (this.m_TVFocusView) { this.m_TVFocusView.setVisible(true); }
            focusCell();
        };

        if (typeof layer.m_tvMgr.setCurFocusItem === "function") {
            layer.m_tvMgr.setCurFocusItem(tableItem);
        }
        if (typeof layer.setKeypadEnabled === "function") {
            layer.setKeypadEnabled(true);
        }
        layer.__sgscqFstTvFocus = true;
        focusCell();
        log("installed cells=" + count());
    }

    function install() {
        if (typeof xs === "undefined" || !xs.Scene || !xs.Scene.TeamBuildLayer ||
            !xs.Scene.TeamBuildLayer.prototype || !xs.Utils || !xs.Utils.TVManager ||
            !xs.Utils.TVItem || !xs.Views || !xs.Views.TVFocusView) {
            return false;
        }
        var layerPrototype = xs.Scene.TeamBuildLayer.prototype;
        var baseInit = layerPrototype.init;
        if (typeof baseInit !== "function") { return false; }
        if (baseInit.__sgscqFstTvFocusCompat) { return true; }
        layerPrototype.init = function () {
            var result = baseInit.apply(this, arguments);
            if (result !== false) { installFocus(this); }
            return result;
        };
        layerPrototype.init.__sgscqFstTvFocusCompat = true;
        log("hook installed");
        return true;
    }

    function retryInstall() {
        installTries++;
        if (install() || installTries >= 3000) { return; }
        schedule();
    }

    function schedule() {
        if (typeof setTimeout === "function") {
            setTimeout(retryInstall, 100);
            return;
        }
        try {
            var director = cc.Director && cc.Director.getInstance ? cc.Director.getInstance() : cc.director;
            var scheduler = director && director.getScheduler ? director.getScheduler() : null;
            if (scheduler && typeof scheduler.scheduleCallbackForTarget === "function") {
                scheduler.scheduleCallbackForTarget(
                    { __sgscqFstTeamBuildTvFocus: true },
                    retryInstall,
                    0.1,
                    0,
                    0,
                    false
                );
            }
        } catch (e) {}
    }

    retryInstall();
})();
// ---- SGSCQ ARM64 login version description ----
(function installArm64LoginVersionDescription() {
    var installAttempts = 0;

    function refreshVersionLabels(node) {
        if (!node) {
            return;
        }
        try {
            if (typeof node.getString === "function" && typeof node.setString === "function") {
                var value = String(node.getString());
                if (/-a\d+$/.test(value)) {
                    node.setString(value.replace(/-a\d+$/, "-arm64"));
                }
            }
        } catch (error) {
        }
        var children = null;
        try {
            children = typeof node.getChildren === "function" ? node.getChildren() : null;
        } catch (error) {
        }
        if (!children || typeof children.length !== "number") {
            return;
        }
        for (var index = 0; index < children.length; index++) {
            refreshVersionLabels(children[index]);
        }
    }

    function refreshVisibleVersionDescription() {
        try {
            var director = cc.Director && cc.Director.getInstance ? cc.Director.getInstance() : cc.director;
            var scene = director && typeof director.getRunningScene === "function" ?
                director.getRunningScene() : null;
            refreshVersionLabels(scene);
        } catch (error) {
        }
    }

    function install() {
        if (typeof xs === "undefined" || !xs.Tools || !xs.Tools.Sys ||
            typeof xs.Tools.Sys.getVersionDesc !== "function") {
            return false;
        }

        var baseGetVersionDesc = xs.Tools.Sys.getVersionDesc;
        if (baseGetVersionDesc.__sgscqArm64VersionDescription) {
            return true;
        }

        xs.Tools.Sys.getVersionDesc = function () {
            var description = String(baseGetVersionDesc.apply(this, arguments));
            return description.replace(/-a\d+$/, "-arm64");
        };
        xs.Tools.Sys.getVersionDesc.__sgscqArm64VersionDescription = true;
        refreshVisibleVersionDescription();
        return true;
    }

    function retryInstall() {
        if (install()) {
            return;
        }
        installAttempts++;
        if (installAttempts >= 600) {
            return;
        }
        if (typeof setTimeout === "function") {
            setTimeout(retryInstall, 100);
            return;
        }
        try {
            var director = cc.Director && cc.Director.getInstance ? cc.Director.getInstance() : cc.director;
            var scheduler = director && director.getScheduler ? director.getScheduler() : null;
            if (scheduler && typeof scheduler.scheduleCallbackForTarget === "function") {
                scheduler.scheduleCallbackForTarget(
                    { __sgscqArm64LoginVersionDescription: true },
                    retryInstall,
                    0.1,
                    0,
                    0,
                    false
                );
            }
        } catch (error) {
        }
    }

    retryInstall();
})();
// ---- SGSCQ ARM64 skill upgrade description scroll ----
(function installSkillUpgradeDescriptionScroll() {
    var attempts = 0;

    function copySize(size) {
        return { width: size.width, height: size.height };
    }

    function copyPoint(point) {
        return { x: point.x, y: point.y };
    }

    function getMaterialNode(dialog, tag) {
        return dialog._ccbNode && typeof dialog._ccbNode.getChildByTag === "function" ?
            dialog._ccbNode.getChildByTag(tag) : null;
    }

    function captureBaseline(dialog) {
        if (dialog.__sgscqSkillDescriptionBaseline) {
            return;
        }
        var title = getMaterialNode(dialog, 6);
        var background = getMaterialNode(dialog, 7);
        var listSize = dialog._skillListTableView &&
            typeof dialog._skillListTableView.makeViewSize === "function" ?
            dialog._skillListTableView.makeViewSize() : cc.size(0, 0);
        dialog.__sgscqSkillDescriptionBaseline = {
            effectSize: copySize(dialog._effectBG.getContentSize()),
            effectPosition: copyPoint(dialog._effect.getPosition()),
            effectAnchor: typeof dialog._effect.getAnchorPoint === "function" ?
                copyPoint(dialog._effect.getAnchorPoint()) : cc.p(0, 1),
            titlePosition: title ? copyPoint(title.getPosition()) : null,
            backgroundPosition: background ? copyPoint(background.getPosition()) : null,
            listSize: copySize(listSize)
        };
    }

    function captureListBaseline(dialog) {
        var baseline = dialog.__sgscqSkillDescriptionBaseline;
        if (!baseline || baseline.listSize.width > 0) {
            return;
        }
        var listSize = dialog._skillListTableView &&
            typeof dialog._skillListTableView.makeViewSize === "function" ?
            dialog._skillListTableView.makeViewSize() : cc.size(0, 0);
        if (listSize.width > 0) {
            baseline.listSize = copySize(listSize);
        }
    }

    function captureNaturalBaseline(dialog) {
        var baseline = dialog.__sgscqSkillDescriptionBaseline;
        if (!baseline || dialog.__sgscqSkillDescriptionNaturalBaseline) {
            return;
        }
        var title = getMaterialNode(dialog, 6);
        var background = getMaterialNode(dialog, 7);
        if (title) {
            baseline.titlePosition = copyPoint(title.getPosition());
        }
        if (background) {
            baseline.backgroundPosition = copyPoint(background.getPosition());
        }
        captureListBaseline(dialog);
        dialog.__sgscqSkillDescriptionNaturalBaseline = true;
    }

    function restoreBaseline(dialog) {
        var baseline = dialog.__sgscqSkillDescriptionBaseline;
        if (!baseline) {
            return;
        }
        if (dialog.__sgscqSkillDescriptionScroll && typeof dialog._effect.removeFromParent === "function") {
            var retainedEffect = false;
            if (typeof dialog._effect.retain === "function") {
                dialog._effect.retain();
                retainedEffect = true;
            }
            try {
                dialog._effect.removeFromParent(false);
                dialog._ccbNode.addChild(dialog._effect);
            } finally {
                if (retainedEffect && typeof dialog._effect.release === "function") {
                    dialog._effect.release();
                }
            }
        }
        dialog._effect.setAnchorPoint(baseline.effectAnchor);
        dialog._effect.setPosition(baseline.effectPosition);
        dialog._effectBG.setPreferredSize(cc.size(baseline.effectSize.width, baseline.effectSize.height));

        var title = getMaterialNode(dialog, 6);
        var background = getMaterialNode(dialog, 7);
        if (title && baseline.titlePosition) {
            title.setPosition(baseline.titlePosition);
        }
        if (background && baseline.backgroundPosition) {
            background.setPosition(baseline.backgroundPosition);
        }
        if (typeof dialog.createListView === "function" && baseline.listSize.width > 0 && baseline.listSize.height >= 0) {
            dialog.createListView(cc.size(baseline.listSize.width, baseline.listSize.height));
        }
        if (dialog.__sgscqSkillDescriptionScroll) {
            dialog.__sgscqSkillDescriptionScroll.setTouch(false);
            dialog.__sgscqSkillDescriptionScroll.setVisible(false);
        }
    }

    function ensureScroll(dialog, viewSize) {
        var scroll = dialog.__sgscqSkillDescriptionScroll;
        if (!scroll) {
            scroll = xs.Views.ScrollView.create(viewSize);
            dialog.__sgscqSkillDescriptionScroll = scroll;
            dialog._ccbNode.addChild(scroll);
        }
        scroll.setIsEatEvent(false);
        scroll.setVisible(true);
        scroll.originalSize = viewSize;
        scroll.setContentSize(viewSize);
        if (scroll.m_scrollView) {
            scroll.m_scrollView.setViewSize(viewSize);
            scroll.m_scrollView.setContentSize(viewSize);
        }
        scroll.removeAllChildrenView();
        return scroll;
    }

    function capDescription(dialog) {
        var visibleSize = xs.director.getVisibleSize();
        var maximumHeight = visibleSize.height / 6;
        var currentSize = dialog._effectBG.getContentSize();
        var cappedHeight = Math.min(currentSize.height, maximumHeight);
        var excessHeight = Math.max(0, currentSize.height - cappedHeight);
        dialog._effectBG.setPreferredSize(cc.size(currentSize.width, cappedHeight));

        var title = getMaterialNode(dialog, 6);
        var background = getMaterialNode(dialog, 7);
        if (title && excessHeight > 0) {
            var titlePosition = title.getPosition();
            title.setPosition(cc.p(titlePosition.x, titlePosition.y + excessHeight));
        }
        if (background && excessHeight > 0) {
            var backgroundPosition = background.getPosition();
            background.setPosition(cc.p(backgroundPosition.x, backgroundPosition.y + excessHeight));
        }
        if (dialog._skillListTableView &&
            typeof dialog._skillListTableView.makeViewSize === "function" && excessHeight > 0) {
            var listSize = dialog._skillListTableView.makeViewSize();
            dialog.createListView(cc.size(listSize.width, listSize.height));
        }

        var padding = 10;
        var viewSize = cc.size(
            Math.max(1, currentSize.width - padding * 2),
            Math.max(1, cappedHeight - padding)
        );
        var effectPosition = dialog._effect.getPosition();
        var contentHeight = dialog._effect.getContentSize().height;
        if (contentHeight <= viewSize.height) {
            if (dialog.__sgscqSkillDescriptionScroll) {
                dialog.__sgscqSkillDescriptionScroll.setTouch(false);
                dialog.__sgscqSkillDescriptionScroll.setVisible(false);
            }
            return;
        }

        var scroll = ensureScroll(dialog, viewSize);
        scroll.setPosition(cc.p(effectPosition.x, effectPosition.y - viewSize.height));
        var retainedEffect = false;
        if (typeof dialog._effect.retain === "function") {
            dialog._effect.retain();
            retainedEffect = true;
        }
        try {
            dialog._effect.removeFromParent(false);
            dialog._effect.setAnchorPoint(cc.p(0, 0));
            scroll.addChildrenView(dialog._effect, viewSize.width, contentHeight);
        } finally {
            if (retainedEffect && typeof dialog._effect.release === "function") {
                dialog._effect.release();
            }
        }
        scroll.setBaseTouchPriority((dialog._anotherTouchPriority || 0) - 11);
        scroll.setTouch(true);
        if (scroll.m_scrollView && typeof scroll.m_scrollView.minContainerOffset === "function") {
            scroll.setContentOffset(scroll.m_scrollView.minContainerOffset());
        }
    }

    function diagValue(value) {
        if (value === null || typeof value === "undefined") { return "null"; }
        if (typeof value === "string" || typeof value === "number" || typeof value === "boolean") {
            return String(value);
        }
        return "object";
    }

    function diagNode(node) {
        if (!node) { return "null"; }
        var size = null;
        var position = null;
        var scale = null;
        var visible = null;
        var parent = null;
        var text = null;
        try { if (typeof node.getContentSize === "function") { size = node.getContentSize(); } } catch (e0) {}
        try { if (typeof node.getPosition === "function") { position = node.getPosition(); } } catch (e1) {}
        try {
            if (typeof node.getScaleX === "function" && typeof node.getScaleY === "function") {
                scale = node.getScaleX() + "," + node.getScaleY();
            } else if (typeof node.getScale === "function") {
                scale = node.getScale();
            }
        } catch (e2) {}
        try { if (typeof node.isVisible === "function") { visible = node.isVisible(); } else if (typeof node.visible !== "undefined") { visible = node.visible; } } catch (e3) {}
        try { parent = typeof node.getParent === "function" ? !!node.getParent() : !!node.parent; } catch (e4) {}
        try {
            if (typeof node.getString === "function") { text = node.getString(); }
            else if (typeof node.string !== "undefined") { text = node.string; }
        } catch (e5) {}
        return "size=" + (size ? size.width + "x" + size.height : "null") +
            " pos=" + (position ? position.x + "," + position.y : "null") +
            " scale=" + diagValue(scale) + " visible=" + diagValue(visible) +
            " parent=" + parent + " textLen=" + (text === null ? "null" : String(text).length);
    }

    function logDiag(dialog, phase) {
        var data = dialog && dialog._data;
        var cardView = dialog && dialog._cardView;
        var card = cardView && (cardView.m_card || cardView._card || cardView.card);
        var title = getMaterialNode(dialog, 6);
        var background = getMaterialNode(dialog, 7);
        var listSize = dialog && dialog._skillListTableView &&
            typeof dialog._skillListTableView.makeViewSize === "function" ?
            dialog._skillListTableView.makeViewSize() : null;
        var skill = data && (data.skill_code || data.pk_id || data.id);
        var message = "[SGSCQ skill diag] " + phase +
            " skill=" + diagValue(skill) +
            " dialogCard=" + diagNode(cardView) +
            " card=" + diagNode(card) +
            " effect=" + diagNode(dialog && dialog._effect) +
            " effectBG=" + diagNode(dialog && dialog._effectBG) +
            " materialTitle=" + diagNode(title) +
            " materialBG=" + diagNode(background) +
            " listSize=" + (listSize ? listSize.width + "x" + listSize.height : "null");
        if (typeof cc !== "undefined" && cc && typeof cc.log === "function") {
            cc.log(message);
        } else if (typeof console !== "undefined" && console.log) {
            console.log(message);
        }
    }

    function diagError(error) {
        if (!error) { return "unknown"; }
        var message = error.message ? String(error.message) : String(error);
        var stack = error.stack ? String(error.stack).replace(/\s+/g, " ").slice(0, 800) : "";
        return message + (stack ? " stack=" + stack : "");
    }

    function wrapDiagMethod(prototype, name) {
        var base = prototype[name];
        if (typeof base !== "function" || base.__sgscqSkillDiagWrapped) { return; }
        var wrapped = function () {
            logDiag(this, name + ":before");
            try {
                var result = base.apply(this, arguments);
                logDiag(this, name + ":after");
                return result;
            } catch (error) {
                logDiag(this, name + ":error=" + diagError(error));
                throw error;
            }
        };
        wrapped.__sgscqSkillDiagWrapped = true;
        prototype[name] = wrapped;
    }

    function install() {
        if (typeof xs === "undefined" || !xs.Views || !xs.Views.ScrollView ||
            !xs.Views.Dialog || !xs.Views.Dialog.SkillUpDialog ||
            !xs.Views.Dialog.SkillUpDialog.prototype) {
            return false;
        }
        var prototype = xs.Views.Dialog.SkillUpDialog.prototype;
        if (prototype.__sgscqSkillUpgradeDescriptionScroll) {
            return true;
        }
        var baseShowDialogEx = prototype._showDialogEx;
        if (typeof baseShowDialogEx !== "function") {
            return false;
        }
        prototype._showDialogEx = function () {
            try {
                logDiag(this, "_showDialogEx:before");
                captureBaseline(this);
                logDiag(this, "_showDialogEx:beforeRestore");
                restoreBaseline(this);
                logDiag(this, "_showDialogEx:afterRestore");
                logDiag(this, "_showDialogEx:beforeBase");
                var result = baseShowDialogEx.apply(this, arguments);
                logDiag(this, "_showDialogEx:afterBase");
                captureNaturalBaseline(this);
                capDescription(this);
                logDiag(this, "_showDialogEx:after");
                return result;
            } catch (error) {
                logDiag(this, "_showDialogEx:error=" + diagError(error));
                throw error;
            }
        };
        wrapDiagMethod(prototype, "refreshDialog");
        wrapDiagMethod(prototype, "_refreshDialogEx");
        wrapDiagMethod(prototype, "_resetCardViewInfo");
        wrapDiagMethod(prototype, "playEatCardAction");
        prototype.__sgscqSkillUpgradeDescriptionScroll = true;
        if (typeof cc !== "undefined" && cc && typeof cc.log === "function") {
            cc.log("[SGSCQ skill diag] installed");
        }
        return true;
    }

    function retry() {
        if (install()) {
            return;
        }
        attempts++;
        if (attempts < 600 && typeof setTimeout === "function") {
            setTimeout(retry, 100);
        }
    }

    retry();
})();
// ---- SGSCQ ARM64 reward capacity guard ----
(function patchRewardCapacityGuard() {
    var SKILL_MAX = 500;
    var rewardDialogs = {
        UseItemSuccessDialog: true,
        BuyGoodsSuccessDialog: true,
        ShowAddListDialog: true,
        MulitiFightDialog: true,
        FightResult: true
    };
    var state = {
        phase: "idle",
        pending: false,
        timer: null,
        dialog: null,
        lastReason: "",
        openSkillMeltOnNextScene: false
    };

    function log(msg) {
        if (typeof cc !== "undefined" && cc && typeof cc.log === "function") {
            cc.log("[SGSCQ reward capacity] " + msg);
        }
    }

    function readCounts() {
        try {
            if (typeof xs === "undefined" || !xs.Profile || !xs.Profile.GameData ||
                !xs.Profile.GameData.Mgr || typeof xs.Profile.GameData.Mgr.getInstance !== "function") {
                return null;
            }
            var manager = xs.Profile.GameData.Mgr.getInstance();
            if (!manager || !manager.Equipments || !manager.Skills ||
                typeof manager.Equipments.getAll !== "function" ||
                typeof manager.Skills.getAllWithDefaultSort !== "function") {
                return null;
            }
            var equipmentCount = manager.Equipments.getAll().length;
            var skillCount = manager.Skills.getAllWithDefaultSort().length;
            var equipmentMax = xs.Const_Equipment_Max;
            return {
                equipmentCount: equipmentCount,
                equipmentMax: equipmentMax,
                skillCount: skillCount,
                skillMax: SKILL_MAX,
                equipmentOver: equipmentCount > equipmentMax,
                skillOver: skillCount > SKILL_MAX
            };
        } catch (error) {
            log("capacity model unavailable: " + error);
            return null;
        }
    }

    function getTopDialog() {
        try {
            if (!xs.Views || !xs.Views.Mgr || !xs.Views.Mgr.lastView ||
                typeof xs.Views.Mgr.lastView.getStackTop !== "function") {
                return null;
            }
            var top = xs.Views.Mgr.lastView.getStackTop(xs.Constant_ViewType_Dlg);
            return top && top[1] ? top[1] : null;
        } catch (error) {
            return null;
        }
    }

    function hasNonCapacityDialogOnTop() {
        var top = getTopDialog();
        return !!(top && top !== state.dialog);
    }

    function requestCheck(reason, delay) {
        state.pending = true;
        state.lastReason = reason || "unknown";
        if (state.timer !== null || typeof setTimeout !== "function") {
            return;
        }
        state.timer = setTimeout(function () {
            state.timer = null;
            drain();
        }, delay || 0);
    }

    function blockRewardAction(reason) {
        var counts = readCounts();
        if (!counts || (!counts.equipmentOver && !counts.skillOver)) {
            return false;
        }
        log("blocked reason=" + reason + " equipment=" + counts.equipmentCount + "/" + counts.equipmentMax +
            " skill=" + counts.skillCount + "/" + counts.skillMax);
        requestCheck(reason);
        return true;
    }

    function showEquipmentPrompt() {
        state.phase = "showingEquipment";
        state.dialog = xs.Views.Mgr.showDialogByName("common", {
            title: "MeltPromptTitle",
            content: "EquipmentIsMax",
            leftText: xs.Tools.String.createString("1070610006"),
            rightText: xs.Tools.String.createString("GoToEquipmentMelt"),
            __sgscqCapacityType: "equipment",
            __sgscqCapacityWrapped: true,
            leftCB: function () {
                state.phase = "pending";
                xs.Views.Mgr.hideDialog();
                requestCheck("equipment-dismissed");
            },
            rightCB: function () {
                state.phase = "awaitingEquipment";
                xs.Views.Mgr.hideDialog();
                xs.Scene.Mgr.changeSceneByName("EquipmentScene");
            }
        });
    }

    function showSkillPrompt() {
        state.phase = "showingSkill";
        state.dialog = xs.Views.Mgr.showDialogByName("OneBtnDialog", {
            titleText: xs.Tools.String.createString("SkillForceOneStepMeltPromptTitle"),
            contentText: xs.Tools.String.createString("SkillForceOneStepMeltPromptContent"),
            btnText: xs.Tools.String.createString("SkillForceOneStepMeltPromptAction"),
            __sgscqCapacityType: "skill",
            __sgscqCapacityWrapped: true,
            btnCallback: function () {
                state.phase = "awaitingSkill";
                state.openSkillMeltOnNextScene = true;
                xs.Views.Mgr.hideDialog();
                xs.Scene.Mgr.changeSceneByName("SkillScene");
            }
        });
    }

    function drain() {
        if (!state.pending || state.phase === "showingEquipment" || state.phase === "showingSkill" ||
            state.phase === "awaitingEquipment" || state.phase === "awaitingSkill") {
            return;
        }
        if (hasNonCapacityDialogOnTop()) {
            requestCheck("dialog-stack-busy", 100);
            return;
        }
        var counts = readCounts();
        if (!counts) {
            requestCheck("capacity-model-unavailable", 100);
            return;
        }
        state.pending = false;
        log("capacity state=" + state.phase + " reason=" + state.lastReason +
            " equipment=" + counts.equipmentCount + "/" + counts.equipmentMax +
            " skill=" + counts.skillCount + "/" + counts.skillMax);
        if (counts.equipmentOver) {
            showEquipmentPrompt();
            return;
        }
        if (counts.skillOver) {
            showSkillPrompt();
            return;
        }
        state.phase = "idle";
        state.dialog = null;
    }

    function capacityType(name, params) {
        if (!params) {
            return null;
        }
        if (params.__sgscqCapacityType) {
            return params.__sgscqCapacityType;
        }
        if (name === "common" && params.content === "EquipmentIsMax") {
            return "equipment";
        }
        try {
            if (name === "OneBtnDialog" && params.contentText ===
                xs.Tools.String.createString("SkillForceOneStepMeltPromptContent")) {
                return "skill";
            }
        } catch (error) {}
        return null;
    }

    function wrapCapacityCallbacks(type, params) {
        if (!params || params.__sgscqCapacityWrapped) {
            return;
        }
        params.__sgscqCapacityWrapped = true;
        if (type === "equipment") {
            var baseLeft = params.leftCB;
            var baseRight = params.rightCB;
            params.leftCB = function () {
                state.phase = "pending";
                var result = baseLeft ? baseLeft.apply(this, arguments) : xs.Views.Mgr.hideDialog();
                requestCheck("existing-equipment-dismissed");
                return result;
            };
            params.rightCB = function () {
                state.phase = "awaitingEquipment";
                if (baseRight) {
                    return baseRight.apply(this, arguments);
                }
                xs.Views.Mgr.hideDialog();
                return xs.Scene.Mgr.changeSceneByName("EquipmentScene");
            };
            return;
        }
        var baseButton = params.btnCallback;
        params.btnCallback = function () {
            state.phase = "awaitingSkill";
            if (baseButton) {
                return baseButton.apply(this, arguments);
            }
            state.openSkillMeltOnNextScene = true;
            xs.Views.Mgr.hideDialog();
            return xs.Scene.Mgr.changeSceneByName("SkillScene");
        };
    }

    function patchManagers() {
        if (typeof xs === "undefined" || !xs.Views || !xs.Views.Mgr || !xs.Scene || !xs.Scene.Mgr ||
            typeof xs.Views.Mgr.showDialogByName !== "function" ||
            typeof xs.Views.Mgr.hideDialog !== "function" ||
            typeof xs.Scene.Mgr.changeSceneByName !== "function") {
            return false;
        }
        if (xs.Views.Mgr.__sgscqRewardCapacityGuard) {
            return true;
        }

        var baseShowDialog = xs.Views.Mgr.showDialogByName;
        var baseHideDialog = xs.Views.Mgr.hideDialog;
        var baseChangeScene = xs.Scene.Mgr.changeSceneByName;

        xs.Views.Mgr.showDialogByName = function (name, params) {
            var type = capacityType(name, params);
            if (type) {
                wrapCapacityCallbacks(type, params);
                state.phase = type === "equipment" ? "showingEquipment" : "showingSkill";
            }
            var dialog = baseShowDialog.apply(this, arguments);
            if (type) {
                state.dialog = dialog;
            }
            return dialog;
        };

        xs.Views.Mgr.hideDialog = function () {
            var top = getTopDialog();
            var topName = top && (top.dlg_name || top.name);
            var closingCapacityDialog = !!(top && top === state.dialog);
            var result = baseHideDialog.apply(this, arguments);
            if (closingCapacityDialog) {
                state.dialog = null;
                if (state.phase === "showingEquipment" || state.phase === "showingSkill") {
                    state.phase = "pending";
                    requestCheck("capacity-dialog-closed");
                }
            }
            if (topName && rewardDialogs[topName]) {
                requestCheck("reward-dialog:" + topName);
            }
            return result;
        };

        xs.Scene.Mgr.changeSceneByName = function (name) {
            if (state.phase === "awaitingEquipment" && name !== "EquipmentScene") {
                state.phase = "pending";
                state.pending = true;
            } else if (state.phase === "awaitingSkill" && name !== "SkillScene") {
                state.phase = "pending";
                state.pending = true;
            }
            var result = baseChangeScene.apply(this, arguments);
            if (!((state.phase === "awaitingEquipment" && name === "EquipmentScene") ||
                (state.phase === "awaitingSkill" && name === "SkillScene"))) {
                requestCheck("scene-change:" + name, 100);
            }
            return result;
        };

        xs.Views.Mgr.__sgscqRewardCapacityGuard = true;
        log("manager hooks installed");
        return true;
    }

    function patchSkillSceneLayer() {
        if (typeof xs === "undefined" || !xs.Scene || !xs.Scene.SkillSceneLayer ||
            !xs.Scene.SkillSceneLayer.prototype || typeof xs.Scene.SkillSceneLayer.prototype.init !== "function") {
            return false;
        }
        var prototype = xs.Scene.SkillSceneLayer.prototype;
        if (prototype.__sgscqRewardCapacityGuard) {
            return true;
        }
        var baseInit = prototype.init;
        prototype.init = function () {
            var result = baseInit.apply(this, arguments);
            if (result && state.openSkillMeltOnNextScene) {
                state.openSkillMeltOnNextScene = false;
                var self = this;
                setTimeout(function () {
                    if (self.m_meltOneStepButton && !self.m_meltOneStepButton.isVisible() &&
                        typeof self.onMeltButtonTouch === "function") {
                        self.onMeltButtonTouch();
                    }
                }, 0);
            }
            return result;
        };
        prototype.__sgscqRewardCapacityGuard = true;
        log("SkillSceneLayer hook installed");
        return true;
    }

    function watchAwaiting() {
        var counts = readCounts();
        if (counts && state.phase === "awaitingEquipment" && !counts.equipmentOver) {
            state.phase = "pending";
            state.pending = true;
            requestCheck("equipment-capacity-cleared");
        } else if (counts && state.phase === "awaitingSkill" && !counts.skillOver) {
            state.phase = "idle";
            state.pending = false;
            state.dialog = null;
            log("capacity state=idle reason=skill-capacity-cleared");
        }
        if (typeof setTimeout === "function") {
            setTimeout(watchAwaiting, 250);
        }
    }

    function monitor() {
        if (typeof xs !== "undefined") {
            xs.__sgscqRewardCapacityGuard = {
                requestCheck: requestCheck,
                blockRewardAction: blockRewardAction
            };
            patchManagers();
            patchSkillSceneLayer();
        }
        if (typeof setTimeout === "function") {
            setTimeout(monitor, 100);
        }
    }

    monitor();
    watchAwaiting();
})();
cc.log("SGSCQ bootstrap complete");
// ---- SGSCQ ARM64 FST Skill Refining bootstrap ----
(function installFstSkillRefiningBootstrap() {
    var installTries = 0;
    var required = false;
    var sceneRegistered = false;

    function log(message) {
        if (typeof cc !== "undefined" && cc && typeof cc.log === "function") {
            cc.log("[SGSCQ FST skill refining] " + message);
        }
    }

    function schedule(callback) {
        if (typeof setTimeout === "function") {
            setTimeout(callback, 100);
            return;
        }
        try {
            var director = cc.Director && cc.Director.getInstance ? cc.Director.getInstance() : cc.director;
            var scheduler = director && director.getScheduler ? director.getScheduler() : null;
            if (scheduler && typeof scheduler.scheduleCallbackForTarget === "function") {
                scheduler.scheduleCallbackForTarget(
                    { __sgscqFstSkillRefiningBootstrap: true },
                    callback,
                    0.1,
                    0,
                    0,
                    false
                );
            }
        } catch (error) {}
    }

    function requireFeature() {
        if (required) { return true; }
        if (typeof xs === "undefined" || !xs.Utils || typeof xs.Utils.require !== "function") {
            return false;
        }
        try {
            xs.Utils.require([
                "data_cn_jsc/plan/sgs_skill_refine_conf.js",
                "Views/SkillRefining/headers.js",
                "Scene/SkillRefining/SkillRefiningScene.js"
            ]);
            required = true;
            log("modules loaded");
            return true;
        } catch (error) {
            log("module load pending: " + error);
            return false;
        }
    }

    function registerSkillRefiningScene() {
        if (sceneRegistered) { return true; }
        if (!xs.Scene || !xs.Scene.SceneJsMgr || !xs.Scene.SceneJsMgr.mgr ||
            typeof xs.Scene.SceneJsMgr.mgr.register !== "function") {
            return false;
        }
        try {
            xs.Scene.SceneJsMgr.mgr.register("SkillRefiningScene", [
                "Scene/SkillRefining/SkillRefiningScene.js"
            ]);
            sceneRegistered = true;
            log("scene registered");
            return true;
        } catch (error) {
            log("scene registration pending: " + error);
            return false;
        }
    }

    function nodeCenterInLayer(layer, node) {
        if (!node) { return cc.p(0, 0); }
        var box = typeof node.getBoundingBox === "function" ? node.getBoundingBox() : null;
        var point = box ? cc.p(cc.rectGetMidX(box), cc.rectGetMidY(box)) :
            (typeof node.getPosition === "function" ? node.getPosition() : cc.p(0, 0));
        var parent = typeof node.getParent === "function" ? node.getParent() : null;
        if (parent && typeof parent.convertToWorldSpace === "function") {
            point = parent.convertToWorldSpace(point);
            if (layer && typeof layer.convertToNodeSpace === "function") {
                point = layer.convertToNodeSpace(point);
            }
        }
        return point;
    }

    function simulateTouch(layer, node) {
        if (!node) { return; }
        if (typeof node.simTouch === "function") {
            node.simTouch();
            return;
        }
        var point = nodeCenterInLayer(layer, node);
        if (layer && typeof layer.convertToWorldSpace === "function") {
            point = layer.convertToWorldSpace(point);
        }
        if (cc.director && typeof cc.director.convertToUI === "function") {
            point = cc.director.convertToUI(point);
        }
        if (xs.JsbConnecter && xs.JsbConnecter.getInstance) {
            xs.JsbConnecter.getInstance().invoke("GlobalMethod", "simTouch", point.x + "|" + point.y);
        }
    }

    function createFocus(layer) {
        if (!xs.Views || !xs.Views.TVFocusView || typeof xs.Views.TVFocusView.create !== "function") {
            return null;
        }
        var focus = xs.Views.TVFocusView.create();
        if (focus && typeof layer.addChild === "function") {
            layer.addChild(focus, 1000);
        }
        return focus;
    }

    function ensureGeneralMenuTvContract() {
        if (!xs.Scene || !xs.Scene.GeneralMenuLayer || !xs.Scene.GeneralMenuLayer.prototype) {
            return false;
        }
        var prototype = xs.Scene.GeneralMenuLayer.prototype;
        if (typeof prototype.MPMV_UpdateTVItem !== "function") {
            prototype.MPMV_UpdateTVItem = function () {
                var pageMenu = this.m_multiPageMenu;
                var currentPage = pageMenu && typeof pageMenu.m_pageIndex === "number" ? pageMenu.m_pageIndex : 0;
                var pageSize = typeof this.MPMV_MenusNumEachPage === "function" ? this.MPMV_MenusNumEachPage() : 6;
                var itemCount = typeof this.MPMV_MenusNum === "function" ? this.MPMV_MenusNum() : 0;
                if (itemCount > 0 && typeof this.__sgscqFocusIndex === "number") {
                    this.__sgscqFocusIndex = Math.min(itemCount - 1, currentPage * pageSize);
                }
                if (typeof this.__sgscqUpdateFocus === "function") {
                    this.__sgscqUpdateFocus();
                }
            };
            log("general menu TV contract installed");
        }
        installGeneralMenuFocus();
        return true;
    }

    function installGeneralMenuRequireHook() {
        if (!xs.Utils || typeof xs.Utils.require !== "function") { return false; }
        var baseRequire = xs.Utils.require;
        if (baseRequire.__sgscqFstGeneralMenuHook) { return true; }
        xs.Utils.require = function () {
            var result = baseRequire.apply(this, arguments);
            ensureGeneralMenuTvContract();
            return result;
        };
        xs.Utils.require.__sgscqFstGeneralMenuHook = true;
        log("general menu require hook installed");
        ensureGeneralMenuTvContract();
        return true;
    }

    function installGeneralMenuFocus() {
        if (!xs.Scene || !xs.Scene.GeneralMenuLayer || !xs.Scene.GeneralMenuLayer.prototype ||
            !xs.Views || !xs.Views.TVFocusView) {
            return false;
        }
        var prototype = xs.Scene.GeneralMenuLayer.prototype;
        var baseInit = prototype.init;
        if (typeof baseInit !== "function") { return false; }
        if (baseInit.__sgscqFstSkillRefiningFocus) { return true; }

        function installFocus(layer) {
            if (!layer || layer.__sgscqFstGeneralMenuFocus || !layer.m_multiPageMenu) { return; }
            var pageMenu = layer.m_multiPageMenu;
            var menuItems = pageMenu.m_menuArray || [];
            var itemCount = typeof layer.MPMV_MenusNum === "function" ? layer.MPMV_MenusNum() : menuItems.length;
            if (!itemCount) { return; }
            layer.__sgscqFocusIndex = 0;
            layer.__sgscqFocusView = createFocus(layer);

            function itemAt(index) {
                return menuItems[index] || null;
            }

            function updateFocus() {
                var index = Math.max(0, Math.min(itemCount - 1, layer.__sgscqFocusIndex));
                layer.__sgscqFocusIndex = index;
                var pageIndex = Math.floor(index / 6);
                if (pageMenu.m_pageIndex !== pageIndex) {
                    if (typeof pageMenu.setPageIndexNoAction === "function") {
                        pageMenu.setPageIndexNoAction(pageIndex);
                    } else if (typeof pageMenu.setPageIndex === "function") {
                        pageMenu.setPageIndex(pageIndex);
                    }
                }
                for (var itemIndex = 0; itemIndex < menuItems.length; itemIndex++) {
                    var menuItem = itemAt(itemIndex);
                    if (!menuItem) { continue; }
                    if (itemIndex === index && typeof menuItem.selected === "function") { menuItem.selected(); }
                    if (itemIndex !== index && typeof menuItem.unselected === "function") { menuItem.unselected(); }
                }
                if (layer.__sgscqFocusView) {
                    layer.__sgscqFocusView.setPosition(nodeCenterInLayer(layer, itemAt(index)));
                    layer.__sgscqFocusView.setVisible(true);
                }
            }
            layer.__sgscqUpdateFocus = updateFocus;

            function move(delta) {
                var next = Math.max(0, Math.min(itemCount - 1, layer.__sgscqFocusIndex + delta));
                if (next !== layer.__sgscqFocusIndex) {
                    layer.__sgscqFocusIndex = next;
                    updateFocus();
                }
            }

            layer.keyLeftArrowClicked = function () { move(-1); };
            layer.keyRightArrowClicked = function () { move(1); };
            layer.keyUpArrowClicked = function () { move(-3); };
            layer.keyDownArrowClicked = function () { move(3); };
            layer.keyEnterClicked = function () {
                if (typeof this.MPMV_MenuTouchedInIndex === "function") {
                    this.MPMV_MenuTouchedInIndex(this.m_multiPageMenu, this.__sgscqFocusIndex);
                    return;
                }
                simulateTouch(this, itemAt(this.__sgscqFocusIndex));
            };
            layer.keyBackClicked = function () { xs.Scene.Mgr.gotoLastScene(); };
            layer.keyNotClicked = function () {
                if (this.__sgscqFocusView) { this.__sgscqFocusView.setVisible(false); }
            };
            layer.keySpClicked = function () { updateFocus(); };
            if (typeof layer.setKeypadEnabled === "function") { layer.setKeypadEnabled(true); }
            layer.__sgscqFstGeneralMenuFocus = true;
            updateFocus();
        }

        prototype.init = function () {
            var result = baseInit.apply(this, arguments);
            if (result !== false) { installFocus(this); }
            return result;
        };
        prototype.init.__sgscqFstSkillRefiningFocus = true;
        log("general menu focus installed");
        return true;
    }

    function installSkillRefiningFocus() {
        if (!xs.Views || !xs.Views.SkillRefiningLayer || !xs.Views.SkillRefiningLayer.prototype ||
            !xs.Views.TVFocusView) {
            return false;
        }
        var prototype = xs.Views.SkillRefiningLayer.prototype;
        var baseInit = prototype.init;
        if (typeof baseInit !== "function") { return false; }
        if (baseInit.__sgscqFstTvFocus) { return true; }

        function installFocus(layer) {
            if (!layer || layer.__sgscqFstSkillRefiningFocus) { return; }
            var buttons = [layer.m_addButton, layer.m_lianhuaButton];
            layer.__sgscqFocusIndex = buttons[0] ? 0 : 1;
            layer.__sgscqFocusView = createFocus(layer);

            function updateFocus() {
                var button = buttons[layer.__sgscqFocusIndex];
                if (layer.__sgscqFocusView && button) {
                    layer.__sgscqFocusView.setPosition(nodeCenterInLayer(layer, button));
                    layer.__sgscqFocusView.setVisible(true);
                }
            }

            function move(delta) {
                var next = Math.max(0, Math.min(buttons.length - 1, layer.__sgscqFocusIndex + delta));
                if (buttons[next]) { layer.__sgscqFocusIndex = next; }
                updateFocus();
            }

            layer.keyLeftArrowClicked = function () { move(-1); };
            layer.keyRightArrowClicked = function () { move(1); };
            layer.keyUpArrowClicked = function () { move(-1); };
            layer.keyDownArrowClicked = function () { move(1); };
            layer.keyEnterClicked = function () {
                var index = this.__sgscqFocusIndex;
                if (index === 0 && typeof this.selectButtonCallback === "function") {
                    this.selectButtonCallback(buttons[index]);
                    return;
                }
                if (index === 1 && typeof this.lianhuaCallback === "function") {
                    this.lianhuaCallback(buttons[index]);
                    return;
                }
                simulateTouch(this, buttons[index]);
            };
            layer.keyBackClicked = function () { xs.Scene.Mgr.gotoLastScene(); };
            layer.keyNotClicked = function () {
                if (this.__sgscqFocusView) { this.__sgscqFocusView.setVisible(false); }
            };
            layer.keySpClicked = function () { updateFocus(); };
            if (typeof layer.setKeypadEnabled === "function") { layer.setKeypadEnabled(true); }
            layer.__sgscqFstSkillRefiningFocus = true;
            updateFocus();
        }

        prototype.init = function () {
            var result = baseInit.apply(this, arguments);
            if (result !== false) { installFocus(this); }
            return result;
        };
        prototype.init.__sgscqFstTvFocus = true;
        log("skill refining focus installed");
        return true;
    }

    function install() {
        installTries++;
        if (!requireFeature()) {
            if (installTries < 3000) { schedule(install); }
            return;
        }
        if (!registerSkillRefiningScene()) {
            if (installTries < 3000) { schedule(install); }
            return;
        }
        var requireHookReady = installGeneralMenuRequireHook();
        installGeneralMenuFocus();
        var refiningReady = installSkillRefiningFocus();
        if ((!requireHookReady || !refiningReady) && installTries < 3000) {
            schedule(install);
        }
    }

    install();
})();// ---- SGSCQ ARM64 remote finger visibility v1 ----
(function () {
    var displayDurationMs = 60000;
    var state = xs.__sgscqRemoteFingerVisibility || {
        activeUntil: 0,
        timer: null,
        isActive: function () { return false; }
    };
    xs.__sgscqRemoteFingerVisibility = state;

    function now() {
        return new Date().getTime();
    }

    function guideIsActive() {
        try {
            return !!(xs.Guide && xs.Guide.GuideMgr &&
                typeof xs.Guide.GuideMgr.getIsOver === "function" &&
                !xs.Guide.GuideMgr.getIsOver());
        } catch (e) {
            return false;
        }
    }

    function setFocusVisible(view, visible) {
        if (view && typeof view.setVisible === "function") {
            return view.setVisible(visible);
        }
    }

    function shouldControl(view) {
        return !!view && !guideIsActive();
    }

    function isTvNavigationKey(keyCode) {
        return keyCode === 19 || keyCode === 20 || keyCode === 21 || keyCode === 22 ||
            keyCode === 23 || keyCode === 66 || keyCode === 160;
    }

    state.isActive = function () {
        return now() < (state.activeUntil || 0);
    };

    state.hide = function () {
        var views = currentSceneFocusViews();
        for (var i = 0; i < views.length; i++) {
            var view = views[i];
            if (shouldControl(view)) {
                setFocusVisible(view, false);
            }
        }
    };

    state.show = function () {
        var views = currentSceneFocusViews();
        for (var i = 0; i < views.length; i++) {
            var view = views[i];
            if (shouldControl(view)) {
                setFocusVisible(view, true);
            }
        }
    };

    state.scheduleHide = function () {
        if (state.timer !== null && typeof clearTimeout === "function") {
            clearTimeout(state.timer);
            state.timer = null;
        }
        if (typeof setTimeout !== "function") { return; }
        var delay = Math.max(0, (state.activeUntil || 0) - now());
        state.timer = setTimeout(function () {
            state.timer = null;
            if (state.isActive()) {
                state.scheduleHide();
                return;
            }
            state.hide();
        }, delay);
    };

    state.activate = function () {
        if (guideIsActive()) { return; }
        state.activeUntil = now() + displayDurationMs;
        state.show();
        state.scheduleHide();
    };

    function track(view) {
        if (!view) { return view; }
        if (shouldControl(view) && !state.isActive()) {
            setFocusVisible(view, false);
        }
        return view;
    }

    function installFactory() {
        if (typeof xs === "undefined" || !xs.Views || !xs.Views.TVFocusView ||
            typeof xs.Views.TVFocusView.create !== "function") {
            return false;
        }
        var factory = xs.Views.TVFocusView;
        if (factory.create.__sgscqRemoteFingerFactory) { return true; }
        var originalCreate = factory.create;
        factory.create = function () {
            return track(originalCreate.apply(this, arguments));
        };
        factory.create.__sgscqRemoteFingerFactory = true;
        return true;
    }

    function installRemoteHandler() {
        if (typeof xs === "undefined" || typeof xs.__sgscqRemoteKeyDown !== "function") {
            return false;
        }
        var original = xs.__sgscqRemoteKeyDown;
        if (original.__sgscqRemoteFingerHandler) { return true; }
        var wrapped = function (keyCode) {
            if (!isTvNavigationKey(keyCode)) {
                return original.apply(this, arguments);
            }
            state.activate();
            if (original.apply(this, arguments)) {
                return true;
            }
            return false;
        };
        wrapped.__sgscqRemoteFingerHandler = true;
        wrapped.__sgscqRemoteFingerOriginal = original;
        xs.__sgscqRemoteKeyDown = wrapped;
        return true;
    }

    function collectFocusEntries(node, depth, seen, entries) {
        if (!node || depth > 12 || !seen || !entries) { return; }
        if (seen.indexOf(node) >= 0) { return; }
        seen.push(node);
        if (typeof node.getChildren !== "function") { return; }
        var children = node.getChildren() || [];
        var candidates = [node.m_TVFocusView, node.__sgscqFocusView];
        for (var candidateIndex = 0; candidateIndex < candidates.length; candidateIndex++) {
            var candidate = candidates[candidateIndex];
            var alreadyAdded = false;
            for (var entryIndex = 0; entryIndex < entries.length; entryIndex++) {
                if (entries[entryIndex].view === candidate) { alreadyAdded = true; break; }
            }
            if (candidate && children.indexOf(candidate) >= 0 && !alreadyAdded) {
                entries.push({ owner: node, view: candidate });
            }
        }
        for (var i = 0; i < children.length; i++) {
            collectFocusEntries(children[i], depth + 1, seen, entries);
        }
    }

    function currentSceneFocusEntries() {
        var entries = [];
        try {
            var director = cc.Director && cc.Director.getInstance ? cc.Director.getInstance() : cc.director;
            var scene = director && typeof director.getRunningScene === "function"
                ? director.getRunningScene() : null;
            collectFocusEntries(scene, 0, [], entries);
        } catch (e) {}
        return entries;
    }

    function currentSceneFocusViews() {
        var entries = currentSceneFocusEntries();
        var views = [];
        for (var i = 0; i < entries.length; i++) {
            views.push(entries[i].view);
        }
        return views;
    }

    function monitor() {
        var factoryReady = installFactory();
        var handlerReady = installRemoteHandler();
        if (factoryReady && handlerReady) {
            if (!state.isActive()) {
                state.hide();
            }
            return;
        }
        if (typeof setTimeout === "function") {
            setTimeout(monitor, 100);
        }
    }

    monitor();
})();
