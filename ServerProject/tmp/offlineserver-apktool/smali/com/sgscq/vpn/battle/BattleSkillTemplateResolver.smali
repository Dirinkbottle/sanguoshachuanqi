.class public final Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs hasAny(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private static hasDamage(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "\u4f24\u5bb3"

    const-string v1, "\u666e\u901a\u653b\u51fb"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static hasDeathTriggerText(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "\u8840\u91cf\u4e3a0"

    const-string v1, "\u8840\u91cf\u4e3a 0"

    const-string v2, "\u9635\u4ea1\u65f6"

    const-string v3, "\u6b7b\u4ea1\u65f6"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static hasOffensiveDamage(Ljava/lang/String;)Z
    .locals 5

    invoke-static {p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->withoutDamageModifierPhrases(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u9020\u6210\u4f24\u5bb3"

    const-string v1, "\u666e\u901a\u653b\u51fb"

    const-string v2, "\u9020\u6210\u653b\u51fb"

    const-string v3, "\u9020\u6210\u9632\u5fa1"

    const-string v4, "\u9020\u6210\u667a\u529b"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "\u9020\u6210"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u9632\u5fa1\u529b\u4f24\u5bb3"

    const-string v1, "\u667a\u529b\u4f24\u5bb3"

    const-string v2, "\u653b\u51fb\u529b\u4f24\u5bb3"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isBaiyinSkill(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "baiyin"

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isContinuousSelfBuffSkill(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, "2"

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getSkillType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getCode()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v1, "luoshen"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "xiaoji"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private static isDeathPreventionText(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "\u8840\u91cf\u4e3a0"

    const-string v1, "\u8840\u91cf\u4e3a 0"

    const-string v2, "\u9635\u4ea1\u65f6"

    const-string v3, "\u6b7b\u4ea1\u65f6"

    const-string v4, "\u9635\u4ea1"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u53ef\u627f\u53d7"

    const-string v1, "\u627f\u53d7\u989d\u5916\u4f24\u5bb3"

    const-string v2, "\u590d\u6d3b"

    const-string v3, "\u6062\u590d\u81ea\u8eab\u8840\u91cf"

    const-string v4, "\u8840\u91cf\u6062\u590d"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isDeathTriggerPhase(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "\u9635\u4ea1\u65f6"

    const-string v1, "\u6b7b\u4ea1\u65f6"

    const-string v2, "\u9635\u4ea1\u540e"

    const-string v3, "\u6b7b\u4ea1\u540e"

    const-string v4, "\u8840\u91cf\u4e3a0"

    const-string v5, "\u8840\u91cf\u4e3a 0"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isDuodaoSkill(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "duodao"

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isEnemyDamageOrAllyDamageBonus(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "\u654c\u65b9\u5168\u4f53"

    const-string v1, "\u654c\u65b9\u573a\u4e0a\u5168\u4f53"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u6216\u589e\u52a0\u5df1\u65b9\u5168\u4f53\u4e0b\u6b21\u9020\u6210\u7684\u4f24\u5bb3"

    const-string v1, "\u6216\u589e\u52a0\u5df2\u65b9\u5168\u4f53\u4e0b\u4e00\u6b21\u9020\u6210\u7684\u4f24\u5bb3"

    const-string v2, "\u6216\u589e\u52a0\u5df1\u65b9\u5168\u4f53\u4e0b\u4e00\u6b21\u9020\u6210\u7684\u4f24\u5bb3"

    const-string v3, "\u6216\u589e\u52a0\u5df1\u65b9\u573a\u4e0a\u5168\u4f53\u4e0b\u4e00\u6b21\u9020\u6210\u7684\u4f24\u5bb3"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u589e\u52a0\u503c\u4e3a\u81ea\u8eab\u667a\u529b"

    const-string v1, "\u667a\u529b\u7684"

    const-string v2, "\u589e\u52a0\u503c\u4e3a\u53d1\u52a8\u8005\u667a\u529b"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isFenchengSkill(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "fencheng"

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isFuluSkill(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "fulu"

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isIgnoreDefenseText(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "\u65e0\u89c6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v1, 0xa

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u9632\u5fa1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static isJiangSkill(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "jiang"

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isJijiangSkill(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "jijiang"

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isJiuyuanSkill(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "jiuyuan"

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isMultiHitAllEnemyDamageAndSelfReduction(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;Ljava/lang/String;Z)Z
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    const-string p2, "\u591a\u6bb5\u65bd\u653e"

    const-string v0, "\u591a\u6bb5\u4f24\u5bb3"

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getRange()Ljava/lang/String;

    move-result-object p0

    const-string p2, "\u654c\u65b9\u5168\u4f53\u548c\u81ea\u8eab"

    const-string v0, "\u81ea\u8eab\u548c\u654c\u65b9\u5168\u4f53"

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "\u51cf\u5c11\u81ea\u8eab\u4e0b\u4e00\u6b21\u53d7\u5230\u7684\u4f24\u5bb3"

    const-string p2, "\u51cf\u5c11\u81ea\u8eab\u4e0b\u4e00\u6b21\u53d7\u5230"

    filled-new-array {p0, p2}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isNextDamageBuff(Ljava/lang/String;)Z
    .locals 10

    const-string v0, "\u9020\u6210\u7684\u4f24\u5bb3\u589e\u52a0"

    const-string v1, "\u4e0b\u4e00\u6b21\u9020\u6210\u7684\u4f24\u5bb3\u589e\u52a0"

    const-string v2, "\u4e0b\u4e00\u6b21\u9020\u6210\u4f24\u5bb3\u589e\u52a0"

    const-string v3, "\u4e0b\u6b21\u9020\u6210\u4f24\u5bb3\u589e\u52a0"

    const-string v4, "\u589e\u52a0\u76ee\u6807\u4e0b\u4e00\u6b21\u9020\u6210\u7684\u4f24\u5bb3"

    const-string v5, "\u589e\u52a0\u81ea\u8eab\u4e0b\u4e00\u6b21\u9020\u6210\u7684\u4f24\u5bb3"

    const-string v6, "\u81ea\u8eab\u4e0b\u4e00\u6b21\u4f24\u5bb3\u589e\u52a0"

    const-string v7, "\u4e0b\u4e00\u6b21\u4f24\u5bb3\u589e\u52a0"

    const-string v8, "\u63d0\u5347\u81ea\u8eab\u4e0b\u4e00\u6b21\u9020\u6210\u7684\u4f24\u5bb3"

    const-string v9, "\u589e\u52a0\u4e0b\u4e00\u56de\u5408\u81ea\u8eab\u9020\u6210\u7684\u4f24\u5bb3"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isNextDamageDealtReduction(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "\u4e0b\u4e00\u6b21\u9020\u6210\u7684\u4f24\u5bb3\u51cf\u5c11"

    const-string v1, "\u4e0b\u4e00\u6b21\u9020\u6210\u4f24\u5bb3\u51cf\u5c11"

    const-string v2, "\u4e0b\u4e00\u6b21\u9020\u6210\u4f24\u5bb3\u964d\u4f4e"

    const-string v3, "\u51cf\u5c11\u76ee\u6807\u4e0b\u4e00\u6b21\u9020\u6210\u7684\u4f24\u5bb3"

    const-string v4, "\u4e0b\u4e00\u6b21\u4f24\u5bb3\u51cf\u5c11"

    const-string v5, "\u653b\u51fb\u8005\u4e0b\u4e00\u6b21\u4f24\u5bb3\u51cf\u5c11"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isNextDamageReductionBuff(Ljava/lang/String;)Z
    .locals 8

    const-string v0, "\u53d7\u5230\u7684\u4f24\u5bb3\u51cf\u5c11"

    const-string v1, "\u51cf\u5c11\u76ee\u6807\u4e0b\u4e00\u6b21\u53d7\u5230"

    const-string v2, "\u51cf\u5c11\u76ee\u6807\u4e0b\u4e00\u6b21\u6240\u53d7"

    const-string v3, "\u51cf\u5c11\u53d7\u5230\u7684\u4f24\u5bb3"

    const-string v4, "\u51cf\u5c11\u81ea\u8eab\u4e0b\u4e00\u6b21\u53d7\u5230"

    const-string v5, "\u51cf\u5c11\u81ea\u8eab\u4e0b\u4e00\u6b21\u6240\u53d7"

    const-string v6, "\u51cf\u5c11\u5df1\u65b9"

    const-string v7, "\u51cf\u5c11\u654c\u65b9\u5168\u4f53\u4e0b\u4e00\u6b21\u9020\u6210"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isNextDamageTakenBonus(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "\u4e0b\u4e00\u6b21\u53d7\u5230\u7684\u4f24\u5bb3\u589e\u52a0"

    const-string v1, "\u4e0b\u4e00\u6b21\u53d7\u5230\u4f24\u5bb3\u589e\u52a0"

    const-string v2, "\u53d7\u5230\u7684\u4f24\u5bb3\u589e\u52a0"

    const-string v3, "\u589e\u52a0\u76ee\u6807\u4e0b\u4e00\u6b21\u53d7\u5230\u7684\u4f24\u5bb3"

    const-string v4, "\u589e\u52a0\u8be5\u76ee\u6807\u4e0b\u4e00\u6b21\u53d7\u5230\u7684\u4f24\u5bb3"

    const-string v5, "\u589e\u52a0\u5176\u4e0b\u4e00\u6b21\u53d7\u5230\u7684\u4f24\u5bb3"

    const-string v6, "\u4f7f\u76ee\u6807\u4e0b\u4e00\u6b21\u53d7\u5230\u7684\u4f24\u5bb3\u589e\u52a0"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isOtherTwoAllyText(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "\u5df1\u65b9\u53e6\u59162\u540d"

    const-string v1, "\u5df1\u65b9\u53e6\u5916\u4e24\u540d"

    const-string v2, "\u5df1\u65b9\u53e6\u4e24\u540d"

    const-string v3, "\u5df2\u65b9\u53e6\u59162\u540d"

    const-string v4, "\u5df2\u65b9\u53e6\u5916\u4e24\u540d"

    const-string v5, "\u5df2\u65b9\u53e6\u4e24\u540d"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isPureRepeatedDamageBuff(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;Ljava/lang/String;)Z
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getRange()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u81ea\u8eab"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "\u4e0b\u4e00\u6b21\u9020\u6210\u7684\u4f24\u5bb3\u589e\u52a0"

    const-string v0, "\u4e0b\u6b21\u9020\u6210\u4f24\u5bb3\u589e\u52a0"

    const-string v1, "\u4e0b\u4e00\u6b21\u4f24\u5bb3\u589e\u52a0"

    filled-new-array {v1, p0, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "\u9020\u6210\u9632\u5fa1\u529b\u4f24\u5bb3"

    const-string v0, "\u5bf9\u76ee\u6807\u9020\u6210"

    const-string v1, "\u9020\u6210\u653b\u51fb\u529b\u4f24\u5bb3"

    const-string v2, "\u9020\u6210\u667a\u529b\u4f24\u5bb3"

    filled-new-array {v1, v2, p0, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isQinyinDescriptor(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getCode()Ljava/lang/String;

    move-result-object p0

    const-string v1, "qinyin"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "331023"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private static isSelfDamageBonusAndEnemyDamageDealtReduction(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "\u81ea\u8eab\u4e0b\u4e00\u6b21\u4f24\u5bb3\u589e\u52a0"

    const-string v1, "\u589e\u52a0\u81ea\u8eab\u4e0b\u4e00\u6b21\u4f24\u5bb3"

    const-string v2, "\u81ea\u8eab\u4e0b\u4e00\u6b21\u9020\u6210\u7684\u4f24\u5bb3\u589e\u52a0"

    const-string v3, "\u589e\u52a0\u81ea\u8eab\u4e0b\u4e00\u6b21\u9020\u6210\u7684\u4f24\u5bb3"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isNextDamageDealtReduction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSelfOnlyRange(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getRange()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u81ea\u8eab"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSpecialSelfPassive(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getCode()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "xueyi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "lianpo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "shengjie"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "guipu"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "jili"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "shenji"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "juejing"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "bupo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method private static isStackingAttributeGainText(Ljava/lang/String;)Z
    .locals 8

    const-string v0, "\u589e\u52a0\u81ea\u8eab\u5728\u672c\u573a\u6218\u6597"

    const-string v1, "\u589e\u52a0\u81ea\u8eab\u653b\u51fb"

    const-string v2, "\u589e\u52a0\u81ea\u8eab\u9632\u5fa1"

    const-string v3, "\u589e\u52a0\u81ea\u8eab\u667a\u529b"

    const-string v4, "\u589e\u52a0\u81ea\u8eab\u5728\u672c\u6b21\u6218\u6597"

    const-string v5, "\u653b\u3001\u9632\u3001\u667a"

    const-string v6, "\u5f52\u5fc3\u72b6\u6001"

    const-string v7, "\u5c42\u5f52\u5fc3"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isWeiwuFlameMarkSkill(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getCode()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const-string v1, "tuntian"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "quanji"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private static isXiaoyongMultiHitSkill(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "shuangxiong"

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "pojun"

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static resolve(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Lcom/sgscq/vpn/battle/BattleSkillTemplate;
    .locals 21

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->UNKNOWN:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->isEmptySkill()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->NO_EFFECT:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->combinedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getSkillType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isDeathPreventionText(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->REVIVE_OR_DEATH_PREVENT:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_2
    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "2"

    const-string v6, "3"

    if-nez v4, :cond_4

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v7, "\u5168\u4f53"

    if-nez v3, :cond_4e

    const-string v3, "\u88c5\u5907"

    const-string v8, "\u88ab\u52a8"

    const-string v9, "\u88c5\u5907\u540e"

    filled-new-array {v9, v3, v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v4, :cond_4e

    invoke-static {v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasDamage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_4

    :cond_5
    const-string v3, "\u56de\u590d"

    const-string v4, "\u6062\u590d"

    const-string v8, "\u5438\u6536"

    const-string v9, "\u5438\u8840"

    filled-new-array {v3, v4, v8, v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    invoke-static {v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasDamage(Ljava/lang/String;)Z

    move-result v4

    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isContinuousSelfBuffSkill(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "luoshen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "\u51cf\u5c11\u81ea\u8eab\u4e0b\u4e00\u6b21\u53d7\u5230"

    const-string v2, "\u51cf\u5c11\u81ea\u8eab\u4e0b\u4e00\u6b21\u6240\u53d7"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->DAMAGE_BONUS_AND_REDUCTION_BUFF:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_6
    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->DAMAGE_BONUS_BUFF:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isDuodaoSkill(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z

    move-result v10

    if-eqz v10, :cond_8

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->DAMAGE_BONUS_AND_REDUCTION_BUFF:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_8
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isBaiyinSkill(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z

    move-result v10

    if-eqz v10, :cond_9

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->NO_EFFECT:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isJiuyuanSkill(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z

    move-result v10

    if-eqz v10, :cond_a

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->IMMUNE_NEXT_DAMAGE:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_a
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isWeiwuFlameMarkSkill(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z

    move-result v10

    if-eqz v10, :cond_b

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->MARK_AND_EXPLODE:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_b
    const-string v10, "quhu"

    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->DAMAGE_BONUS_AND_REDUCTION_BUFF:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_c
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isQinyinDescriptor(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z

    move-result v10

    const-string v11, "\u706b\u7bad"

    if-eqz v10, :cond_d

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->QINYIN_FIRE_ARROW:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_d
    const-string v10, "\u661f\u6807\u8bb0"

    const-string v12, "\u9897\u661f"

    filled-new-array {v10, v12, v11}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->FENGWU_STAR_FIRE_ARROW:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_e
    const-string v10, "fengwu"

    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->DAMAGE_BONUS_AND_REDUCTION_BUFF:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_f
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isFenchengSkill(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z

    move-result v10

    if-eqz v10, :cond_10

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->ALL_ENEMY_ATTRIBUTE_DAMAGE:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_10
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isFuluSkill(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z

    move-result v10

    if-eqz v10, :cond_11

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->HEAL_LOWEST_ALLY:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_11
    const-string v10, "\u8840\u6c60"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->BLOOD_POOL_DAMAGE:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_12
    const-string v10, "\u968f\u673a\u6280\u80fd"

    const-string v11, "\u5316\u8eab"

    const-string v12, "\u590d\u5236"

    filled-new-array {v12, v10, v11}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->COPY_OR_RANDOM_SKILL:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_13
    const-string v10, "\u5077\u53d6"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->STEAL_ATTRIBUTE:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_14
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v5, "\u51fb\u6740\u540e"

    const-string v10, "\u6253\u6b7b\u654c\u5c06"

    const-string v11, "\u51fb\u6bd9\u540e"

    filled-new-array {v11, v5, v10}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->ON_KILL_CONTROL:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_15
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isJijiangSkill(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_16

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->DAMAGE_BONUS_BUFF:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_16
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-static {v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isStackingAttributeGainText(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->STACKING_ATTRIBUTE_GAIN:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_17
    invoke-static {v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isSelfDamageBonusAndEnemyDamageDealtReduction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->DAMAGE_BONUS_AND_REDUCTION_BUFF:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getCode()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getCode()Ljava/lang/String;

    move-result-object v5

    const-string v10, "jieyin"

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {v0, v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->resolveHealTemplate(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    move-result-object v0

    return-object v0

    :cond_19
    const-string v5, "\u7acb\u5373\u8fdb\u884c\u4e00\u6b21\u653b\u51fb"

    const-string v10, "\u518d\u6b21\u8fdb\u884c\u4e00\u6b21\u653b\u51fb"

    const-string v11, "\u989d\u5916\u8fdb\u884c\u4e00\u6b21\u666e\u901a\u653b\u51fb"

    const-string v12, "\u8ffd\u51fb\u4e00\u6b21\u666e\u901a\u653b\u51fb"

    const-string v13, "\u8ffd\u52a0\u4e00\u6b21\u666e\u901a\u653b\u51fb"

    filled-new-array {v11, v12, v13, v5, v10}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->EXTRA_NORMAL_ATTACK:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getPhase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isDeathTriggerPhase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4c

    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getPhase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-static {v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasDeathTriggerText(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    goto/16 :goto_3

    :cond_1b
    const-string v5, "\u514d\u4f24"

    const-string v10, "\u95ea\u907f\u672c\u6b21\u4f24\u5bb3"

    const-string v11, "\u514d\u53d7"

    const-string v12, "\u514d\u75ab"

    filled-new-array {v11, v12, v5, v10}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static {v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasDamage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->IMMUNE_AND_COUNTER_DAMAGE:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_1c
    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->IMMUNE_NEXT_DAMAGE:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_1d
    invoke-static {v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isOtherTwoAllyText(Ljava/lang/String;)Z

    move-result v5

    const-string v10, "\u6240\u53d7\u4f24\u5bb3"

    const-string v11, "\u53d7\u5230\u7684\u4f24\u5bb3"

    if-eqz v5, :cond_1e

    filled-new-array {v11, v10}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->TWO_OTHER_ALLY_DAMAGE_REDUCTION:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_1e
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    if-eqz v3, :cond_1f

    invoke-static {v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasOffensiveDamage(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-static {v0, v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->resolveHealTemplate(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    move-result-object v0

    return-object v0

    :cond_1f
    if-eqz v4, :cond_20

    const-string v5, "\u65e0\u6cd5\u65bd\u653e\u6280\u80fd"

    const-string v12, "\u6280\u80fd\u65e0\u6548"

    const-string v13, "\u5c01\u5370"

    filled-new-array {v13, v5, v12}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->DAMAGE_WITH_SEAL:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_20
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasOffensiveDamage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isStackingAttributeGainText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->STACKING_ATTRIBUTE_GAIN:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_21
    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->COUNTER_DAMAGE:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_22
    const-string v2, "\u884c\u52a8\u540e"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    const-string v6, "\u672a\u4f7f\u7528\u653b\u51fb\u6280\u80fd"

    if-eqz v5, :cond_23

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->POST_ACTION_DAMAGE_TAKEN_BONUS_AND_SELF_REDUCTION:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_23
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isJiangSkill(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_24

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->MULTI_HIT_ATTRIBUTE_DAMAGE:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_24
    invoke-static {v0, v1, v4}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isMultiHitAllEnemyDamageAndSelfReduction(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_25

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->MULTI_HIT_ALL_ENEMY_DAMAGE_AND_SELF_REDUCTION:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_25
    if-eqz v4, :cond_26

    invoke-static {v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isEnemyDamageOrAllyDamageBonus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->ALL_ENEMY_DAMAGE_OR_ALLY_DAMAGE_BONUS:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_26
    invoke-static {v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasOffensiveDamage(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_27

    invoke-static {v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isNextDamageDealtReduction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->DAMAGE_DEALT_REDUCTION_BUFF:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_27
    invoke-static {v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isNextDamageBuff(Ljava/lang/String;)Z

    move-result v5

    const-string v12, "\u53d7\u5230\u7684\u4f24\u5bb3\u51cf\u5c11"

    if-eqz v5, :cond_29

    filled-new-array {v12, v11, v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->DAMAGE_BONUS_AND_REDUCTION_BUFF:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_28
    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->DAMAGE_BONUS_BUFF:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_29
    invoke-static {v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isNextDamageTakenBonus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2b

    if-eqz v4, :cond_2a

    invoke-static {v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasOffensiveDamage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->DAMAGE_WITH_DAMAGE_TAKEN_BONUS:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_2a
    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->DAMAGE_TAKEN_BONUS_BUFF:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_2b
    if-eqz v4, :cond_2c

    if-eqz v3, :cond_2c

    const-string v5, "\u6216 \u56de\u590d"

    const-string v13, "\u6216 \u6062\u590d"

    const-string v14, "\u6216\u56de\u590d"

    const-string v15, "\u6216\u6062\u590d"

    filled-new-array {v14, v15, v5, v13}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->ALL_ENEMY_DAMAGE_OR_ALLY_HEAL:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_2c
    if-eqz v4, :cond_2d

    if-eqz v3, :cond_2d

    const-string v5, "\u654c\u65b9\u5168\u4f53"

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->ALL_ENEMY_DAMAGE_AND_ALLY_HEAL:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_2d
    if-eqz v4, :cond_2e

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->DAMAGE_AND_LIFE_STEAL:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_2e
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isXiaoyongMultiHitSkill(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_2f

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->MULTI_HIT_ATTRIBUTE_DAMAGE:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_2f
    if-eqz v4, :cond_30

    const-string v5, "\u6d88\u8017\u81ea\u8eab"

    const-string v8, "\u5931\u53bb"

    filled-new-array {v5, v8}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->SELF_COST_DAMAGE:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_30
    if-eqz v4, :cond_31

    const-string v5, "\u8bbe\u4e0b\u57cb\u4f0f"

    const-string v8, "\u4f0f\u5175"

    filled-new-array {v5, v8}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    const-string v5, "\u65bd\u653e\u4e3b\u52a8\u6280\u80fd"

    const-string v8, "\u4e3b\u52a8\u6280\u80fd"

    const-string v9, "\u91ca\u653e\u4e3b\u52a8\u6280\u80fd"

    filled-new-array {v9, v5, v8}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    const-string v5, "\u53d6\u6d88"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->DAMAGE_WITH_ACTIVE_SKILL_AMBUSH:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_31
    if-eqz v4, :cond_32

    const-string v5, "\u51bb"

    const-string v8, "\u51b0\u51bb"

    const-string v9, "\u65e0\u6cd5\u884c\u52a8"

    const-string v13, "\u51bb\u7ed3"

    filled-new-array {v9, v13, v5, v8}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->DAMAGE_WITH_STUN:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_32
    if-eqz v4, :cond_33

    const-string v5, "\u751f\u547d\u503c\u56de\u590d\u91cf"

    const-string v8, "\u6cbb\u7597\u503c\u56de\u590d"

    const-string v9, "\u56de\u590d\u91cf\u51cf\u5c11"

    filled-new-array {v9, v5, v8}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->SINGLE_DAMAGE_WITH_HEAL_REDUCTION:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_33
    const-string v5, "\u968f\u673a"

    const-string v8, "\u968f\u673a\u5206\u914d"

    if-eqz v4, :cond_34

    const-string v9, "\u63f4\u519b\u7684\u6570\u76ee"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_34

    filled-new-array {v8, v5}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_34

    const-string v9, "\u65e0\u89c6"

    const-string v13, "\u9632\u5fa1"

    filled-new-array {v9, v13}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_34

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->BACKUP_COUNT_RANDOM_IGNORE_DEFENSE_DAMAGE:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_34
    if-eqz v4, :cond_36

    invoke-static {v0, v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isPureRepeatedDamageBuff(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_36

    const-string v9, "\u4e24\u6b21"

    const-string v13, "2\u6b21"

    const-string v14, "\u8fde\u7eed"

    const-string v15, "\u591a\u6b21"

    filled-new-array {v14, v15, v9, v13, v8}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_36

    filled-new-array {v8, v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->RANDOM_MULTI_HIT_ATTRIBUTE_DAMAGE:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    goto :goto_2

    :cond_35
    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->MULTI_HIT_ATTRIBUTE_DAMAGE:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    :goto_2
    return-object v0

    :cond_36
    if-eqz v4, :cond_37

    const-string v5, "\u53d7\u4f24\u5bb3\u589e\u52a0"

    const-string v8, "\u53d7\u5230\u4f24\u5bb3\u589e\u52a0"

    const-string v9, "\u53d7\u5230\u7684\u4f24\u5bb3\u589e\u52a0"

    filled-new-array {v9, v5, v8}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->DAMAGE_WITH_DAMAGE_TAKEN_BONUS:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_37
    if-eqz v4, :cond_38

    const-string v5, "\u654c\u65b92\u540d\u7537\u6027"

    const-string v8, "\u654c\u65b9\u4e24\u540d\u7537\u6027"

    filled-new-array {v5, v8}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->TWO_MALE_ENEMY_ATTRIBUTE_DAMAGE:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_38
    if-eqz v4, :cond_39

    invoke-static {v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasOffensiveDamage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39

    const-string v5, "\u51cf\u5c11\u76ee\u6807\u4e0b\u4e00\u6b21\u9020\u6210"

    const-string v8, "\u4f24\u5bb3\u5c06\u51cf\u5c11\u53d1\u52a8\u8005"

    const-string v9, "\u9020\u6210\u7684\u4f24\u5bb3\u51cf\u5c11"

    const-string v13, "\u4f24\u5bb3\u51cf\u5c11"

    filled-new-array {v9, v13, v5, v8}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->DAMAGE_WITH_DAMAGE_DEALT_REDUCTION:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_39
    if-eqz v3, :cond_3a

    invoke-static {v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isNextDamageReductionBuff(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-static {v0, v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->resolveHealTemplate(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    move-result-object v0

    return-object v0

    :cond_3a
    invoke-static {v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isNextDamageReductionBuff(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-static {v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isOtherTwoAllyText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->TWO_OTHER_ALLY_DAMAGE_REDUCTION:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_3b
    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->DAMAGE_REDUCTION_BUFF:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_3c
    if-eqz v4, :cond_3d

    const-string v13, "\u654c\u65b92\u540d\u89d2\u8272"

    const-string v14, "\u654c\u65b9\u4e24\u540d\u89d2\u8272"

    const-string v15, "\u654c\u65b9\u968f\u673a2\u540d\u6b66\u5c06"

    const-string v16, "\u654c\u65b9\u968f\u673a\u4e24\u540d\u6b66\u5c06"

    const-string v17, "\u654c\u65b9\u968f\u673a2\u540d\u573a\u4e0a\u6b66\u5c06"

    const-string v18, "\u654c\u65b9\u968f\u673a\u4e24\u540d\u573a\u4e0a\u6b66\u5c06"

    const-string v19, "\u654c\u65b9\u968f\u673a2\u540d\u4e0a\u573a\u6b66\u5c06"

    const-string v20, "\u654c\u65b9\u968f\u673a\u4e24\u540d\u4e0a\u573a\u6b66\u5c06"

    filled-new-array/range {v13 .. v20}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->TWO_ENEMY_ATTRIBUTE_DAMAGE:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_3d
    if-eqz v4, :cond_3e

    invoke-static {v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isIgnoreDefenseText(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->DAMAGE_WITH_IGNORE_DEFENSE:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_3e
    if-eqz v4, :cond_3f

    const-string v5, "\u4f4e\u4e8e50"

    const-string v8, "\u989d\u5916\u9020\u6210"

    const-string v9, "\u9ad8\u4e8e\u76ee\u6807"

    const-string v13, "\u4f4e\u4e8e30"

    filled-new-array {v9, v13, v5, v8}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->DAMAGE_WITH_CONDITIONAL_BONUS:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_3f
    invoke-static {v0, v1, v4}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isMultiHitAllEnemyDamageAndSelfReduction(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_40

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->MULTI_HIT_ALL_ENEMY_DAMAGE_AND_SELF_REDUCTION:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_40
    if-eqz v4, :cond_41

    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getRange()Ljava/lang/String;

    move-result-object v5

    const-string v8, "\u573a\u4e0a\u5168\u4f53"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->ALL_ENEMY_ATTRIBUTE_DAMAGE:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_41
    if-eqz v3, :cond_42

    invoke-static {v0, v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->resolveHealTemplate(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    move-result-object v0

    return-object v0

    :cond_42
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->POST_ACTION_DAMAGE_TAKEN_BONUS_AND_SELF_REDUCTION:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_43
    invoke-static {v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasOffensiveDamage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_44

    invoke-static {v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isNextDamageDealtReduction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->DAMAGE_DEALT_REDUCTION_BUFF:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_44
    invoke-static {v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isNextDamageBuff(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    filled-new-array {v12, v11, v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->DAMAGE_BONUS_AND_REDUCTION_BUFF:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_45
    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->DAMAGE_BONUS_BUFF:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_46
    invoke-static {v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isSelfDamageBonusAndEnemyDamageDealtReduction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->DAMAGE_BONUS_AND_REDUCTION_BUFF:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_47
    invoke-static {v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isNextDamageTakenBonus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->DAMAGE_TAKEN_BONUS_BUFF:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_48
    invoke-static {v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isNextDamageReductionBuff(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-static {v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isOtherTwoAllyText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->TWO_OTHER_ALLY_DAMAGE_REDUCTION:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_49
    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->DAMAGE_REDUCTION_BUFF:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_4a
    if-eqz v4, :cond_4b

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->SINGLE_ATTRIBUTE_DAMAGE:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_4b
    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->UNKNOWN:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_4c
    :goto_3
    invoke-static {v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isDeathPreventionText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->REVIVE_OR_DEATH_PREVENT:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_4d
    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->DEATH_DAMAGE:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_4e
    :goto_4
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isSpecialSelfPassive(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_4f

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->PASSIVE_ATTRIBUTE_GAIN:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_4f
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->isSelfOnlyRange(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_50

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->PASSIVE_ATTRIBUTE_GAIN:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_50
    const-string v0, "\u961f\u53cb"

    const-string v2, "\u53cb\u65b9"

    filled-new-array {v7, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->PASSIVE_AURA:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_51
    const-string v0, "\u666e\u901a\u653b\u51fb"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->PASSIVE_ON_NORMAL_ATTACK:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0

    :cond_52
    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->PASSIVE_ATTRIBUTE_GAIN:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0
.end method

.method private static resolveHealTemplate(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkillTemplate;
    .locals 2

    const-string v0, "\u81ea\u8eab\u548c\u5df1\u65b91\u540d\u7537\u6027"

    const-string v1, "\u81ea\u8eab\u548c\u5df1\u65b9\u4e00\u540d\u7537\u6027"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->HEAL_SELF_AND_WOUNDED_MALE_ALLY:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getRange()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u5168\u4f53"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "\u5df1\u65b9\u5168\u4f53"

    const-string v0, "\u53cb\u65b9\u5168\u4f53"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "\u9020\u6210\u7684\u4f24\u5bb3\u589e\u52a0"

    const-string v0, "\u4e0b\u4e00\u6b21\u9020\u6210\u7684\u4f24\u5bb3"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->HEAL_AND_DAMAGE_BONUS:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object p0

    :cond_2
    const-string p0, "\u53d7\u5230\u7684\u4f24\u5bb3"

    const-string v0, "\u6240\u53d7\u4f24\u5bb3"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->HEAL_AND_DAMAGE_REDUCTION:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object p0

    :cond_3
    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->HEAL_LOWEST_ALLY:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object p0

    :cond_4
    :goto_0
    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->HEAL_ALL_ALLIES:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object p0
.end method

.method private static withoutDamageModifierPhrases(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "\u4e0b\u4e00\u6b21\u9020\u6210\u4f24\u5bb3\u51cf\u5c11"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\u4e0b\u4e00\u6b21\u9020\u6210\u7684\u4f24\u5bb3\u51cf\u5c11"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\u4e0b\u4e00\u6b21\u9020\u6210\u4f24\u5bb3\u964d\u4f4e"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\u4e0b\u4e00\u6b21\u9020\u6210\u7684\u4f24\u5bb3\u589e\u52a0"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\u4e0b\u4e00\u6b21\u9020\u6210\u4f24\u5bb3\u589e\u52a0"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\u4e0b\u6b21\u9020\u6210\u4f24\u5bb3\u589e\u52a0"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\u51cf\u5c11\u76ee\u6807\u4e0b\u4e00\u6b21\u9020\u6210\u7684\u4f24\u5bb3"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\u589e\u52a0\u76ee\u6807\u4e0b\u4e00\u6b21\u9020\u6210\u7684\u4f24\u5bb3"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
