.class public final Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addGenericEffects(Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;Lcom/sgscq/vpn/battle/BattleSkillDescriptor;Ljava/lang/String;Lcom/sgscq/vpn/battle/BattleAttribute;)V
    .locals 11

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->isTianxiang(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->ATTACKER:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getRange()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->target(Ljava/lang/String;Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleEffectTarget;

    move-result-object v0

    :goto_0
    invoke-static {p2}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasDamage(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sgscq/vpn/battle/BattleEffectType;->ATTRIBUTE_DAMAGE:Lcom/sgscq/vpn/battle/BattleEffectType;

    invoke-static {v1, v0, p3, v3}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->effect(Lcom/sgscq/vpn/battle/BattleEffectType;Lcom/sgscq/vpn/battle/BattleEffectTarget;Lcom/sgscq/vpn/battle/BattleAttribute;I)Lcom/sgscq/vpn/battle/BattleSkillEffect;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->effect(Lcom/sgscq/vpn/battle/BattleSkillEffect;)Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    const-string v4, "\u5438\u6536"

    const-string v5, "\u5438\u8840"

    const-string v6, "\u56de\u590d"

    const-string v7, "\u6062\u590d"

    filled-new-array {v6, v7, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/sgscq/vpn/battle/BattleEffectType;->HEAL:Lcom/sgscq/vpn/battle/BattleEffectType;

    invoke-virtual {p1}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getRange()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->healingTarget(Ljava/lang/String;Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleEffectTarget;

    move-result-object p1

    invoke-static {v4, p1, p3, v1}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->effect(Lcom/sgscq/vpn/battle/BattleEffectType;Lcom/sgscq/vpn/battle/BattleEffectTarget;Lcom/sgscq/vpn/battle/BattleAttribute;I)Lcom/sgscq/vpn/battle/BattleSkillEffect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->effect(Lcom/sgscq/vpn/battle/BattleSkillEffect;)Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;

    move v1, v2

    :cond_2
    const-string p1, "\u4e0b\u4e00\u6b21\u4f24\u5bb3\u589e\u52a0"

    const-string v4, "\u4e0b\u6b21\u9020\u6210\u4f24\u5bb3\u589e\u52a0"

    const-string v5, "\u4e0b\u4e00\u6b21\u9020\u6210\u7684\u4f24\u5bb3\u589e\u52a0"

    filled-new-array {v5, p1, v4}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/sgscq/vpn/battle/BattleEffectType;->NEXT_DAMAGE_BONUS:Lcom/sgscq/vpn/battle/BattleEffectType;

    invoke-static {p1, v0, p3, v1}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->effect(Lcom/sgscq/vpn/battle/BattleEffectType;Lcom/sgscq/vpn/battle/BattleEffectTarget;Lcom/sgscq/vpn/battle/BattleAttribute;I)Lcom/sgscq/vpn/battle/BattleSkillEffect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->effect(Lcom/sgscq/vpn/battle/BattleSkillEffect;)Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;

    move v1, v2

    :cond_3
    const-string p1, "\u4e0b\u4e00\u6b21\u9020\u6210\u7684\u4f24\u5bb3\u51cf\u5c11"

    const-string v4, "\u4e0b\u4e00\u6b21\u9020\u6210\u4f24\u5bb3\u51cf\u5c11"

    filled-new-array {p1, v4}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/sgscq/vpn/battle/BattleEffectType;->NEXT_DAMAGE_DEALT_REDUCTION:Lcom/sgscq/vpn/battle/BattleEffectType;

    invoke-static {p1, v0, p3, v1}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->effect(Lcom/sgscq/vpn/battle/BattleEffectType;Lcom/sgscq/vpn/battle/BattleEffectTarget;Lcom/sgscq/vpn/battle/BattleAttribute;I)Lcom/sgscq/vpn/battle/BattleSkillEffect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->effect(Lcom/sgscq/vpn/battle/BattleSkillEffect;)Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;

    move v1, v2

    :cond_4
    const-string v4, "\u4e0b\u4e00\u6b21\u53d7\u5230\u7684\u4f24\u5bb3\u589e\u52a0"

    const-string v5, "\u4e0b\u4e00\u6b21\u53d7\u5230\u4f24\u5bb3\u589e\u52a0"

    const-string v6, "\u53d7\u5230\u7684\u4f24\u5bb3\u589e\u52a0"

    const-string v7, "\u589e\u52a0\u76ee\u6807\u4e0b\u4e00\u6b21\u53d7\u5230\u7684\u4f24\u5bb3"

    const-string v8, "\u589e\u52a0\u8be5\u76ee\u6807\u4e0b\u4e00\u6b21\u53d7\u5230\u7684\u4f24\u5bb3"

    const-string v9, "\u589e\u52a0\u5176\u4e0b\u4e00\u6b21\u53d7\u5230\u7684\u4f24\u5bb3"

    const-string v10, "\u4f7f\u76ee\u6807\u4e0b\u4e00\u6b21\u53d7\u5230\u7684\u4f24\u5bb3\u589e\u52a0"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/sgscq/vpn/battle/BattleEffectType;->NEXT_DAMAGE_TAKEN_BONUS:Lcom/sgscq/vpn/battle/BattleEffectType;

    invoke-static {p1, v0, p3, v1}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->effect(Lcom/sgscq/vpn/battle/BattleEffectType;Lcom/sgscq/vpn/battle/BattleEffectTarget;Lcom/sgscq/vpn/battle/BattleAttribute;I)Lcom/sgscq/vpn/battle/BattleSkillEffect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->effect(Lcom/sgscq/vpn/battle/BattleSkillEffect;)Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;

    move v1, v2

    :cond_5
    const-string p1, "\u51cf\u5c11\u53d7\u5230\u7684\u4f24\u5bb3"

    const-string v4, "\u5316\u89e3"

    const-string v5, "\u4e0b\u4e00\u6b21\u53d7\u5230\u7684\u4f24\u5bb3\u51cf\u5c11"

    const-string v6, "\u4e0b\u4e00\u6b21\u6240\u53d7\u4f24\u5bb3"

    filled-new-array {v5, v6, p1, v4}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/sgscq/vpn/battle/BattleEffectType;->NEXT_DAMAGE_TAKEN_REDUCTION:Lcom/sgscq/vpn/battle/BattleEffectType;

    invoke-static {p1, v0, p3, v1}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->effect(Lcom/sgscq/vpn/battle/BattleEffectType;Lcom/sgscq/vpn/battle/BattleEffectTarget;Lcom/sgscq/vpn/battle/BattleAttribute;I)Lcom/sgscq/vpn/battle/BattleSkillEffect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->effect(Lcom/sgscq/vpn/battle/BattleSkillEffect;)Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;

    move v1, v2

    :cond_6
    const-string p1, "\u5c01\u5370"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/sgscq/vpn/battle/BattleEffectType;->SEAL:Lcom/sgscq/vpn/battle/BattleEffectType;

    invoke-static {p1, v0, p3, v1}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->effect(Lcom/sgscq/vpn/battle/BattleEffectType;Lcom/sgscq/vpn/battle/BattleEffectTarget;Lcom/sgscq/vpn/battle/BattleAttribute;I)Lcom/sgscq/vpn/battle/BattleSkillEffect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->effect(Lcom/sgscq/vpn/battle/BattleSkillEffect;)Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;

    move v1, v2

    :cond_7
    const-string p1, "\u65e0\u6cd5\u884c\u52a8"

    const-string v4, "\u51bb\u7ed3"

    filled-new-array {p1, v4}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lcom/sgscq/vpn/battle/BattleEffectType;->STUN:Lcom/sgscq/vpn/battle/BattleEffectType;

    invoke-static {p1, v0, p3, v1}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->effect(Lcom/sgscq/vpn/battle/BattleEffectType;Lcom/sgscq/vpn/battle/BattleEffectTarget;Lcom/sgscq/vpn/battle/BattleAttribute;I)Lcom/sgscq/vpn/battle/BattleSkillEffect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->effect(Lcom/sgscq/vpn/battle/BattleSkillEffect;)Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;

    goto :goto_2

    :cond_8
    move v2, v1

    :goto_2
    if-nez v2, :cond_9

    sget-object p1, Lcom/sgscq/vpn/battle/BattleEffectType;->NEEDS_MANUAL_IMPLEMENTATION:Lcom/sgscq/vpn/battle/BattleEffectType;

    invoke-static {p1, v0, p3, v3}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->effect(Lcom/sgscq/vpn/battle/BattleEffectType;Lcom/sgscq/vpn/battle/BattleEffectTarget;Lcom/sgscq/vpn/battle/BattleAttribute;I)Lcom/sgscq/vpn/battle/BattleSkillEffect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->effect(Lcom/sgscq/vpn/battle/BattleSkillEffect;)Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;

    :cond_9
    return-void
.end method

.method private static effect(Lcom/sgscq/vpn/battle/BattleEffectType;Lcom/sgscq/vpn/battle/BattleEffectTarget;Lcom/sgscq/vpn/battle/BattleAttribute;I)Lcom/sgscq/vpn/battle/BattleSkillEffect;
    .locals 0

    invoke-static {p0, p1}, Lcom/sgscq/vpn/battle/BattleSkillEffect;->builder(Lcom/sgscq/vpn/battle/BattleEffectType;Lcom/sgscq/vpn/battle/BattleEffectTarget;)Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;->sourceAttribute(Lcom/sgscq/vpn/battle/BattleAttribute;)Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;->paramIndex(I)Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;->build()Lcom/sgscq/vpn/battle/BattleSkillEffect;

    move-result-object p0

    return-object p0
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
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

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
    .locals 6

    const-string v0, "\u4f24\u5bb3\u7cfb\u6570"

    const-string v1, "\u9020\u6210\u653b\u51fb\u529b\u4f24\u5bb3"

    const-string v2, "\u9020\u6210\u667a\u529b\u4f24\u5bb3"

    const-string v3, "\u9020\u6210\u9632\u5fa1\u529b\u4f24\u5bb3"

    const-string v4, "\u65e0\u89c6\u9632\u5fa1"

    const-string v5, "\u9020\u6210\u7b49\u91cf\u7684\u4f24\u5bb3"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static healingTarget(Ljava/lang/String;Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleEffectTarget;
    .locals 1

    const-string p1, "\u5168\u4f53"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u5df1\u65b9"

    const-string v0, "\u5df2\u65b9"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->ALL_ACTIVE_ALLIES:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-object p0

    :cond_0
    const-string p1, "\u8840\u6700\u5c11\u5df1\u65b9"

    const-string v0, "\u8840\u91cf\u6700\u5c11"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->LOWEST_HP_RATE_ALLY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-object p0

    :cond_1
    const-string p1, "\u81ea\u8eab"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->SELF:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-object p0

    :cond_2
    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->LOWEST_HP_RATE_ALLY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-object p0
.end method

.method private static isFengwu(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z
    .locals 1

    const-string v0, "fengwu"

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isHujia(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z
    .locals 1

    const-string v0, "hujia"

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isJijiang(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z
    .locals 1

    const-string v0, "jijiang"

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isMumu(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z
    .locals 1

    const-string v0, "mumu"

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isQicai(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z
    .locals 1

    const-string v0, "qicai"

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isQuhu(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z
    .locals 1

    const-string v0, "quhu"

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isTianxiang(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "tianxiang"

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "331008"

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

.method public static resolve(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Lcom/sgscq/vpn/battle/BattleSkillDefinition;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, ""

    invoke-static {p0}, Lcom/sgscq/vpn/battle/BattleSkillDefinition;->builder(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->build()Lcom/sgscq/vpn/battle/BattleSkillDefinition;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->combinedText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->sourceAttribute(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Lcom/sgscq/vpn/battle/BattleAttribute;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sgscq/vpn/battle/BattleSkillDefinition;->builder(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getPhase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->triggerPhase(Ljava/lang/String;Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->triggerPhase(Lcom/sgscq/vpn/battle/BattleTriggerPhase;)Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;

    move-result-object v2

    const-string v3, "\u5fc5\u89e6\u53d1"

    const-string v4, "\u5fc5\u5b9a"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->mandatoryTrigger(Z)Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;

    move-result-object v2

    const-string v3, "\u672a\u4f7f\u7528\u653b\u51fb\u6280\u80fd"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->requiresNoAttackSkillThisTurn(Z)Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;

    move-result-object v2

    invoke-static {p0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->isMumu(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectType;->NEXT_DAMAGE_TAKEN_REDUCTION:Lcom/sgscq/vpn/battle/BattleEffectType;

    sget-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->SELF:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    invoke-static {p0, v0, v1, v5}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->effect(Lcom/sgscq/vpn/battle/BattleEffectType;Lcom/sgscq/vpn/battle/BattleEffectTarget;Lcom/sgscq/vpn/battle/BattleAttribute;I)Lcom/sgscq/vpn/battle/BattleSkillEffect;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->effect(Lcom/sgscq/vpn/battle/BattleSkillEffect;)Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;

    move-result-object p0

    sget-object v0, Lcom/sgscq/vpn/battle/BattleEffectType;->NEXT_DAMAGE_TAKEN_BONUS:Lcom/sgscq/vpn/battle/BattleEffectType;

    sget-object v2, Lcom/sgscq/vpn/battle/BattleEffectTarget;->ALL_ACTIVE_ENEMIES:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    invoke-static {v0, v2, v1, v4}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->effect(Lcom/sgscq/vpn/battle/BattleEffectType;Lcom/sgscq/vpn/battle/BattleEffectTarget;Lcom/sgscq/vpn/battle/BattleAttribute;I)Lcom/sgscq/vpn/battle/BattleSkillEffect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->effect(Lcom/sgscq/vpn/battle/BattleSkillEffect;)Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->build()Lcom/sgscq/vpn/battle/BattleSkillDefinition;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->isFengwu(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectType;->NEXT_DAMAGE_TAKEN_BONUS:Lcom/sgscq/vpn/battle/BattleEffectType;

    sget-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->ALL_ACTIVE_ENEMIES:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    invoke-static {p0, v0, v1, v5}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->effect(Lcom/sgscq/vpn/battle/BattleEffectType;Lcom/sgscq/vpn/battle/BattleEffectTarget;Lcom/sgscq/vpn/battle/BattleAttribute;I)Lcom/sgscq/vpn/battle/BattleSkillEffect;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->effect(Lcom/sgscq/vpn/battle/BattleSkillEffect;)Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;

    move-result-object p0

    sget-object v0, Lcom/sgscq/vpn/battle/BattleEffectType;->NEXT_DAMAGE_TAKEN_REDUCTION:Lcom/sgscq/vpn/battle/BattleEffectType;

    sget-object v2, Lcom/sgscq/vpn/battle/BattleEffectTarget;->LOWEST_HP_RATE_ALLY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    invoke-static {v0, v2, v1, v4}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->effect(Lcom/sgscq/vpn/battle/BattleEffectType;Lcom/sgscq/vpn/battle/BattleEffectTarget;Lcom/sgscq/vpn/battle/BattleAttribute;I)Lcom/sgscq/vpn/battle/BattleSkillEffect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->effect(Lcom/sgscq/vpn/battle/BattleSkillEffect;)Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->build()Lcom/sgscq/vpn/battle/BattleSkillDefinition;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->isQicai(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectType;->ATTRIBUTE_DAMAGE:Lcom/sgscq/vpn/battle/BattleEffectType;

    sget-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->ALL_ACTIVE_ENEMIES:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    invoke-static {p0, v0, v1, v5}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->effect(Lcom/sgscq/vpn/battle/BattleEffectType;Lcom/sgscq/vpn/battle/BattleEffectTarget;Lcom/sgscq/vpn/battle/BattleAttribute;I)Lcom/sgscq/vpn/battle/BattleSkillEffect;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->effect(Lcom/sgscq/vpn/battle/BattleSkillEffect;)Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;

    move-result-object p0

    sget-object v0, Lcom/sgscq/vpn/battle/BattleEffectType;->NEXT_DAMAGE_TAKEN_REDUCTION:Lcom/sgscq/vpn/battle/BattleEffectType;

    sget-object v2, Lcom/sgscq/vpn/battle/BattleEffectTarget;->SELF:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    const/4 v3, 0x3

    invoke-static {v0, v2, v1, v3}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->effect(Lcom/sgscq/vpn/battle/BattleEffectType;Lcom/sgscq/vpn/battle/BattleEffectTarget;Lcom/sgscq/vpn/battle/BattleAttribute;I)Lcom/sgscq/vpn/battle/BattleSkillEffect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->effect(Lcom/sgscq/vpn/battle/BattleSkillEffect;)Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->build()Lcom/sgscq/vpn/battle/BattleSkillDefinition;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->isQuhu(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectType;->NEXT_DAMAGE_BONUS:Lcom/sgscq/vpn/battle/BattleEffectType;

    sget-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->HIGHEST_ALL_STATS_ACTIVE_ALLY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    invoke-static {p0, v0, v1, v5}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->effect(Lcom/sgscq/vpn/battle/BattleEffectType;Lcom/sgscq/vpn/battle/BattleEffectTarget;Lcom/sgscq/vpn/battle/BattleAttribute;I)Lcom/sgscq/vpn/battle/BattleSkillEffect;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->effect(Lcom/sgscq/vpn/battle/BattleSkillEffect;)Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;

    move-result-object p0

    sget-object v2, Lcom/sgscq/vpn/battle/BattleEffectType;->NEXT_DAMAGE_TAKEN_REDUCTION:Lcom/sgscq/vpn/battle/BattleEffectType;

    invoke-static {v2, v0, v1, v4}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->effect(Lcom/sgscq/vpn/battle/BattleEffectType;Lcom/sgscq/vpn/battle/BattleEffectTarget;Lcom/sgscq/vpn/battle/BattleAttribute;I)Lcom/sgscq/vpn/battle/BattleSkillEffect;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->effect(Lcom/sgscq/vpn/battle/BattleSkillEffect;)Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;

    move-result-object p0

    sget-object v2, Lcom/sgscq/vpn/battle/BattleEffectType;->IMMEDIATE_ACTION:Lcom/sgscq/vpn/battle/BattleEffectType;

    const/4 v3, 0x2

    invoke-static {v2, v0, v1, v3}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->effect(Lcom/sgscq/vpn/battle/BattleEffectType;Lcom/sgscq/vpn/battle/BattleEffectTarget;Lcom/sgscq/vpn/battle/BattleAttribute;I)Lcom/sgscq/vpn/battle/BattleSkillEffect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->effect(Lcom/sgscq/vpn/battle/BattleSkillEffect;)Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->build()Lcom/sgscq/vpn/battle/BattleSkillDefinition;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {p0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->isHujia(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectType;->NEXT_DAMAGE_DEALT_REDUCTION:Lcom/sgscq/vpn/battle/BattleEffectType;

    sget-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->ALL_ACTIVE_ENEMIES:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    invoke-static {p0, v0, v1, v5}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->effect(Lcom/sgscq/vpn/battle/BattleEffectType;Lcom/sgscq/vpn/battle/BattleEffectTarget;Lcom/sgscq/vpn/battle/BattleAttribute;I)Lcom/sgscq/vpn/battle/BattleSkillEffect;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->effect(Lcom/sgscq/vpn/battle/BattleSkillEffect;)Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;

    move-result-object p0

    sget-object v0, Lcom/sgscq/vpn/battle/BattleEffectType;->NEXT_DAMAGE_TAKEN_REDUCTION:Lcom/sgscq/vpn/battle/BattleEffectType;

    sget-object v2, Lcom/sgscq/vpn/battle/BattleEffectTarget;->SELF:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    invoke-static {v0, v2, v1, v4}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->effect(Lcom/sgscq/vpn/battle/BattleEffectType;Lcom/sgscq/vpn/battle/BattleEffectTarget;Lcom/sgscq/vpn/battle/BattleAttribute;I)Lcom/sgscq/vpn/battle/BattleSkillEffect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->effect(Lcom/sgscq/vpn/battle/BattleSkillEffect;)Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->build()Lcom/sgscq/vpn/battle/BattleSkillDefinition;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {p0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->isJijiang(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectType;->NEXT_DAMAGE_BONUS:Lcom/sgscq/vpn/battle/BattleEffectType;

    sget-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->ALL_ACTIVE_ALLIES:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    invoke-static {p0, v0, v1, v5}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->effect(Lcom/sgscq/vpn/battle/BattleEffectType;Lcom/sgscq/vpn/battle/BattleEffectTarget;Lcom/sgscq/vpn/battle/BattleAttribute;I)Lcom/sgscq/vpn/battle/BattleSkillEffect;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->effect(Lcom/sgscq/vpn/battle/BattleSkillEffect;)Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;

    move-result-object p0

    sget-object v0, Lcom/sgscq/vpn/battle/BattleEffectType;->ATTRIBUTE_DAMAGE:Lcom/sgscq/vpn/battle/BattleEffectType;

    sget-object v2, Lcom/sgscq/vpn/battle/BattleEffectTarget;->NORMAL_COUNTERPART:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    invoke-static {v0, v2, v1, v4}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->effect(Lcom/sgscq/vpn/battle/BattleEffectType;Lcom/sgscq/vpn/battle/BattleEffectTarget;Lcom/sgscq/vpn/battle/BattleAttribute;I)Lcom/sgscq/vpn/battle/BattleSkillEffect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->effect(Lcom/sgscq/vpn/battle/BattleSkillEffect;)Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->build()Lcom/sgscq/vpn/battle/BattleSkillDefinition;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {v2, p0, v0, v1}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->addGenericEffects(Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;Lcom/sgscq/vpn/battle/BattleSkillDescriptor;Ljava/lang/String;Lcom/sgscq/vpn/battle/BattleAttribute;)V

    invoke-virtual {v2}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->build()Lcom/sgscq/vpn/battle/BattleSkillDefinition;

    move-result-object p0

    return-object p0
.end method

.method private static sourceAttribute(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Lcom/sgscq/vpn/battle/BattleAttribute;
    .locals 3

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->combinedText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u667a\u529b\u4f24\u5bb3"

    const-string v2, "\u667a\u529b\u7684"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/sgscq/vpn/battle/BattleAttribute;->WISDOM:Lcom/sgscq/vpn/battle/BattleAttribute;

    return-object p0

    :cond_0
    const-string v1, "\u9632\u5fa1\u529b\u4f24\u5bb3"

    const-string v2, "\u9632\u5fa1\u529b\u7684"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lcom/sgscq/vpn/battle/BattleAttribute;->DEFENSE:Lcom/sgscq/vpn/battle/BattleAttribute;

    return-object p0

    :cond_1
    const-string v1, "\u8840\u91cf"

    const-string v2, "\u8840\u6c60"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/sgscq/vpn/battle/BattleAttribute;->HP:Lcom/sgscq/vpn/battle/BattleAttribute;

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getMajorProperty()Ljava/lang/String;

    move-result-object p0

    const-string v0, "2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/sgscq/vpn/battle/BattleAttribute;->DEFENSE:Lcom/sgscq/vpn/battle/BattleAttribute;

    return-object p0

    :cond_3
    const-string v0, "3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/sgscq/vpn/battle/BattleAttribute;->HP:Lcom/sgscq/vpn/battle/BattleAttribute;

    return-object p0

    :cond_4
    const-string v0, "4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/sgscq/vpn/battle/BattleAttribute;->WISDOM:Lcom/sgscq/vpn/battle/BattleAttribute;

    return-object p0

    :cond_5
    sget-object p0, Lcom/sgscq/vpn/battle/BattleAttribute;->ATTACK:Lcom/sgscq/vpn/battle/BattleAttribute;

    return-object p0
.end method

.method private static target(Ljava/lang/String;Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleEffectTarget;
    .locals 6

    const-string v0, "\u654c\u65b9\u6240\u6709\u63f4\u519b"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->ENEMY_BACKUPS:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-object p0

    :cond_0
    const-string v0, "\u654c\u65b9\u573a\u4e0a\u5355\u4f53\u548c\u654c\u65b91\u540d\u63f4\u519b"

    const-string v1, "\u654c\u65b9\u573a\u4e0a\u5355\u4f53\u548c\u654c\u65b9\u4e00\u540d\u63f4\u519b"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->ACTIVE_ENEMY_AND_BACKUP:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-object p0

    :cond_1
    const-string v0, "\u654c\u65b9\u573a\u4e0a\u5355\u4f53\u548c\u654c\u65b92\u540d\u63f4\u519b"

    const-string v1, "\u654c\u65b9\u573a\u4e0a\u5355\u4f53\u548c\u654c\u65b9\u4e24\u540d\u63f4\u519b"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->ACTIVE_ENEMY_AND_TWO_BACKUPS:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-object p0

    :cond_2
    const-string v0, "\u654c\u65b9\u5168\u4f53"

    const-string v1, "\u654c\u65b9\u573a\u4e0a\u5168\u4f53"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->ALL_ACTIVE_ENEMIES:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-object p0

    :cond_3
    const-string v0, "\u5df1\u65b9\u53e6\u59162\u540d"

    const-string v1, "\u5df1\u65b9\u53e6\u5916\u4e24\u540d"

    const-string v2, "\u5df1\u65b9\u53e6\u4e24\u540d"

    const-string v3, "\u5df2\u65b9\u53e6\u59162\u540d"

    const-string v4, "\u5df2\u65b9\u53e6\u5916\u4e24\u540d"

    const-string v5, "\u5df2\u65b9\u53e6\u4e24\u540d"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->OTHER_TWO_ACTIVE_ALLIES:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-object p0

    :cond_4
    const-string v0, "\u5df1\u65b9\u573a\u4e0a\u5168\u4f53"

    const-string v1, "\u5df2\u65b9\u573a\u4e0a\u5168\u4f53"

    const-string v2, "\u5df1\u65b9\u5168\u4f53"

    const-string v3, "\u5df2\u65b9\u5168\u4f53"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->ALL_ACTIVE_ALLIES:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-object p0

    :cond_5
    const-string v0, "\u5df2\u65b9\u8840\u91cf\u6700\u5c11"

    const-string v1, "\u573a\u4e0a\u8840\u6700\u5c11\u5df1\u65b9"

    const-string v2, "\u5df1\u65b9\u8840\u91cf\u6700\u5c11"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->LOWEST_HP_RATE_ALLY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-object p0

    :cond_6
    const-string v0, "\u573a\u4e0a\u56db\u7ef4\u6700\u9ad8\u53cb\u519b"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->HIGHEST_ALL_STATS_ACTIVE_ALLY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-object p0

    :cond_7
    const-string v0, "\u573a\u4e0a\u653b\u6700\u9ad8\u53cb\u519b"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->HIGHEST_ATTACK_ACTIVE_ALLY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-object p0

    :cond_8
    const-string v0, "\u573a\u4e0a\u667a\u6700\u9ad8\u53cb\u519b"

    const-string v1, "\u573a\u4e0a\u667a\u6700\u9ad8\u5df1\u65b9"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->HIGHEST_WISDOM_ACTIVE_ALLY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-object p0

    :cond_9
    const-string v0, "\u573a\u4e0a\u653b\u6700\u9ad8\u654c\u519b"

    const-string v1, "\u653b\u6700\u9ad8\u654c\u519b"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->HIGHEST_ATTACK_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-object p0

    :cond_a
    const-string v0, "\u573a\u4e0a\u8840\u6700\u591a\u654c\u519b"

    const-string v1, "\u8840\u6700\u591a\u654c\u519b"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->HIGHEST_HP_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-object p0

    :cond_b
    const-string v0, "\u8840\u6700\u5c11\u654c\u519b"

    const-string v1, "\u654c\u65b9\u8840\u91cf\u6700\u5c11"

    const-string v2, "\u573a\u4e0a\u8840\u6700\u5c11\u654c\u519b"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->LOWEST_HP_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-object p0

    :cond_c
    const-string v0, "\u9632\u6700\u4f4e"

    const-string v1, "\u9632\u5fa1\u6700\u4f4e"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->LOWEST_DEFENSE_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-object p0

    :cond_d
    const-string v0, "\u9632\u6700\u9ad8"

    const-string v1, "\u9632\u5fa1\u6700\u9ad8"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->HIGHEST_DEFENSE_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-object p0

    :cond_e
    const-string v0, "\u654c\u65b92\u540d\u7537\u6027"

    const-string v1, "\u654c\u65b9\u4e24\u540d\u7537\u6027"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->FIRST_TWO_ACTIVE_MALE_ENEMIES:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-object p0

    :cond_f
    const-string v0, "\u63f4\u519b"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->ACTIVE_ENEMY_AND_BACKUP:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-object p0

    :cond_10
    const-string v0, "\u968f\u673a2\u540d"

    const-string v1, "\u968f\u673a\u4e24\u540d"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->RANDOM_TWO_ACTIVE_ENEMIES:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-object p0

    :cond_11
    const-string v0, "2\u540d"

    const-string v1, "\u4e24\u540d"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->FIRST_TWO_ACTIVE_ENEMIES:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-object p0

    :cond_12
    const-string v0, "\u654c\u65b9\u653b\u51fb\u8005"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->ATTACKER:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-object p0

    :cond_13
    const-string v0, "\u63f4\u519b\u7684\u6570\u76ee"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->RANDOM_ACTIVE_ENEMIES_BY_BACKUP_COUNT:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-object p0

    :cond_14
    const-string p1, "\u968f\u673a\u5355\u4f53"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->RANDOM_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-object p0

    :cond_15
    const-string p1, "\u81ea\u8eab"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->SELF:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-object p0

    :cond_16
    sget-object p0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->NORMAL_COUNTERPART:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-object p0
.end method

.method private static triggerPhase(Ljava/lang/String;Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleTriggerPhase;
    .locals 2

    const-string v0, "\u884c\u52a8\u524d"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->BEFORE_ACTION:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    return-object p0

    :cond_0
    const-string v0, "\u884c\u52a8\u65f6"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->ON_ACTION:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    return-object p0

    :cond_1
    const-string v0, "\u884c\u52a8\u540e"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->AFTER_ACTION:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    return-object p0

    :cond_2
    const-string v0, "\u666e\u901a\u653b\u51fb\u65f6"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->ON_NORMAL_ATTACK:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    return-object p0

    :cond_3
    const-string v0, "\u53d7\u5230\u666e\u901a\u4f24\u5bb3\u524d"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->BEFORE_NORMAL_DAMAGE_TAKEN:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    return-object p0

    :cond_4
    const-string v0, "\u53d7\u5230\u666e\u901a\u4f24\u5bb3\u540e"

    const-string v1, "\u53d7\u4f24\u540e"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->AFTER_NORMAL_DAMAGE_TAKEN:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    return-object p0

    :cond_5
    const-string v0, "\u53d7\u5230\u6280\u80fd\u4f24\u5bb3\u540e"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->AFTER_SKILL_DAMAGE_TAKEN:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    return-object p0

    :cond_6
    const-string v0, "\u9635\u4ea1\u65f6"

    const-string v1, "\u8840\u91cf\u4e3a0"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->ON_DEATH:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    return-object p0

    :cond_7
    const-string v0, "\u9635\u4ea1\u540e"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->AFTER_DEATH:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    return-object p0

    :cond_8
    const-string v0, "\u51fb\u6bd9\u540e"

    const-string v1, "\u51fb\u6740\u540e"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->AFTER_KILL:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    return-object p0

    :cond_9
    const-string v0, "\u88ab\u52a8"

    const-string v1, "\u88c5\u5907\u540e"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    sget-object p0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->PASSIVE:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    return-object p0

    :cond_a
    const-string p0, "\u76f8\u5e94\u9636\u6bb5"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sgscq/vpn/battle/BattleSkillDefinitionResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->MATCHING_PHASE:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    return-object p0

    :cond_b
    sget-object p0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->UNKNOWN:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    return-object p0
.end method
