.class public final Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static animationPolicy(Lcom/sgscq/vpn/battle/BattleSkillTemplate;Lcom/sgscq/vpn/battle/BattleSkillDescriptor;Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;
    .locals 0

    sget-object p1, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->IMMUNE_AND_COUNTER_DAMAGE:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    if-ne p0, p1, :cond_1

    const-string p0, "\u573a\u4e0a\u8840\u6700\u591a\u654c\u519b"

    const-string p1, "\u8840\u6700\u591a\u654c\u519b"

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;->COUNTER_DAMAGE_ONLY:Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    return-object p0

    :cond_0
    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;->SPLIT_IMMUNE_COUNTER:Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    return-object p0

    :cond_1
    sget-object p1, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->UNKNOWN:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    if-eq p0, p1, :cond_3

    sget-object p1, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->NO_EFFECT:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;->EMIT_SKILL_ROUND:Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    return-object p0

    :cond_3
    :goto_0
    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;->NORMAL_ATTACK_FALLBACK:Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    return-object p0
.end method

.method private static enemyFieldPolicy(Lcom/sgscq/vpn/battle/BattleSkillTemplate;Lcom/sgscq/vpn/battle/BattleSkillTargetRule;Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;
    .locals 4

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->ALL_ENEMY_DAMAGE_OR_ALLY_HEAL:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->ALL_ENEMY_DAMAGE_OR_ALLY_DAMAGE_BONUS:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->ALL_ACTIVE_ENEMIES_AND_ALLIES:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    if-ne p1, v0, :cond_0

    const-string v0, "\u6216\u589e\u52a0\u5df1\u65b9"

    const-string v1, "\u6216\u589e\u52a0\u53cb\u65b9"

    const-string v2, "\u6216\u56de\u590d"

    const-string v3, "\u6216\u6062\u590d"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "\u7acb\u5373\u8fdb\u884c\u4e00\u6b21\u653b\u51fb"

    const-string v1, "\u7acb\u5373\u8fdb\u884c\u4e00\u6b21\u666e\u901a\u653b\u51fb"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;->REQUIRE_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

    return-object p0

    :cond_1
    invoke-static {p0, p1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->simple(Lcom/sgscq/vpn/battle/BattleSkillTemplate;Lcom/sgscq/vpn/battle/BattleSkillTargetRule;)Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->getEnemyFieldPolicy()Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;->ALLOW_ALLY_FALLBACK:Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

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

.method private static isPreAttackStateBuff(Lcom/sgscq/vpn/battle/BattleSkillTemplate;Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z
    .locals 1

    const-string v0, "2"

    invoke-virtual {p1}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getSkillType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object p1, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->DAMAGE_BONUS_BUFF:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    if-eq p0, p1, :cond_1

    sget-object p1, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->DAMAGE_REDUCTION_BUFF:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    if-eq p0, p1, :cond_1

    sget-object p1, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->DAMAGE_BONUS_AND_REDUCTION_BUFF:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    if-ne p0, p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private static isTianxiang(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getCode()Ljava/lang/String;

    move-result-object p0

    const-string v1, "tianxiang"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p0, :cond_1

    const-string v1, "tianxiang_v"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "331008"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static resolve(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;
    .locals 7

    invoke-static {p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateResolver;->resolve(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    move-result-object v0

    if-nez p0, :cond_0

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->UNKNOWN:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->NORMAL_COUNTERPART:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    invoke-static {p0, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->simple(Lcom/sgscq/vpn/battle/BattleSkillTemplate;Lcom/sgscq/vpn/battle/BattleSkillTargetRule;)Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->combinedText()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->targetRule(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    move-result-object v2

    invoke-static {v0, p0, v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->animationPolicy(Lcom/sgscq/vpn/battle/BattleSkillTemplate;Lcom/sgscq/vpn/battle/BattleSkillDescriptor;Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    move-result-object v3

    invoke-static {v0, v2, v1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->enemyFieldPolicy(Lcom/sgscq/vpn/battle/BattleSkillTemplate;Lcom/sgscq/vpn/battle/BattleSkillTargetRule;Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

    move-result-object v4

    const-string v5, "\u51fa\u573a\u6280"

    const-string v6, "\u51fa\u573a\u65f6"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->isPreAttackStateBuff(Lcom/sgscq/vpn/battle/BattleSkillTemplate;Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v0, v2, v3, v4}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->preAttackBuff(Lcom/sgscq/vpn/battle/BattleSkillTemplate;Lcom/sgscq/vpn/battle/BattleSkillTargetRule;Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;)Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;

    move-result-object p0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->withOnEntrySkill()Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;

    move-result-object p0

    :cond_1
    return-object p0

    :cond_2
    invoke-static {v0, v2, v3, v4}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->simple(Lcom/sgscq/vpn/battle/BattleSkillTemplate;Lcom/sgscq/vpn/battle/BattleSkillTargetRule;Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;)Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;

    move-result-object p0

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->withOnEntrySkill()Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method private static targetRule(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkillTargetRule;
    .locals 7

    invoke-virtual {p0}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->getRange()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->isTianxiang(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->ATTACKER:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    return-object p0

    :cond_0
    const-string p0, "\u654c\u65b9\u6240\u6709\u63f4\u519b"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->ENEMY_BACKUPS:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    return-object p0

    :cond_1
    const-string p0, "\u654c\u65b9\u573a\u4e0a\u5355\u4f53\u548c\u654c\u65b91\u540d\u63f4\u519b"

    const-string v1, "\u654c\u65b9\u573a\u4e0a\u5355\u4f53\u548c\u654c\u65b9\u4e00\u540d\u63f4\u519b"

    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->ACTIVE_ENEMY_AND_BACKUP:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    return-object p0

    :cond_2
    const-string p0, "\u654c\u65b9\u573a\u4e0a\u5355\u4f53\u548c\u654c\u65b92\u540d\u63f4\u519b"

    const-string v1, "\u654c\u65b9\u573a\u4e0a\u5355\u4f53\u548c\u654c\u65b9\u4e24\u540d\u63f4\u519b"

    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->ACTIVE_ENEMY_AND_TWO_BACKUPS:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    return-object p0

    :cond_3
    const-string p0, "\u654c\u65b9\u5168\u4f53\u548c\u81ea\u8eab"

    const-string v1, "\u81ea\u8eab\u548c\u654c\u65b9\u5168\u4f53"

    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->SELF_AND_ALL_ACTIVE_ENEMIES:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    return-object p0

    :cond_4
    const-string p0, "\u654c\u65b9\u573a\u4e0a\u5168\u4f53\u6216\u5df1\u65b9\u573a\u4e0a\u5168\u4f53"

    const-string v1, "\u654c\u65b9\u5168\u4f53\u6216\u5df1\u65b9\u5168\u4f53"

    const-string v2, "\u654c\u65b9\u5168\u4f53\u548c\u5df1\u65b9\u5168\u4f53"

    const-string v3, "\u654c\u65b9\u5168\u4f53\u548c\u5df2\u65b9\u5168\u4f53"

    filled-new-array {v2, v3, p0, v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->ALL_ACTIVE_ENEMIES_AND_ALLIES:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    return-object p0

    :cond_5
    const-string p0, "\u573a\u4e0a\u8840\u6700\u591a\u654c\u519b"

    const-string v1, "\u8840\u6700\u591a\u654c\u519b"

    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->HIGHEST_HP_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    return-object p0

    :cond_6
    const-string p0, "\u8840\u6700\u5c11\u654c\u519b"

    const-string v1, "\u654c\u65b9\u8840\u91cf\u6700\u5c11"

    const-string v2, "\u573a\u4e0a\u8840\u6700\u5c11\u654c\u519b"

    filled-new-array {v2, p0, v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->LOWEST_HP_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    return-object p0

    :cond_7
    const-string p0, "\u9632\u6700\u4f4e\u5355\u4f53"

    const-string v1, "\u9632\u5fa1\u6700\u4f4e"

    const-string v2, "\u9632\u6700\u4f4e\u654c\u519b"

    filled-new-array {v2, p0, v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->LOWEST_DEFENSE_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    return-object p0

    :cond_8
    const-string p0, "\u9632\u6700\u9ad8\u654c\u519b"

    const-string v1, "\u9632\u5fa1\u6700\u9ad8\u654c\u519b"

    const-string v2, "\u573a\u4e0a\u9632\u6700\u9ad8\u654c\u519b"

    filled-new-array {v2, p0, v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->HIGHEST_DEFENSE_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    return-object p0

    :cond_9
    const-string p0, "\u654c\u65b9\u573a\u4e0a\u4e00\u540d\u653b\u51fb\u6700\u9ad8\u7684\u89d2\u8272"

    const-string v1, "\u653b\u51fb\u6700\u9ad8\u7684\u89d2\u8272"

    const-string v2, "\u573a\u4e0a\u653b\u6700\u9ad8\u654c\u519b"

    const-string v3, "\u653b\u6700\u9ad8\u654c\u519b"

    const-string v4, "\u653b\u51fb\u6700\u9ad8\u654c\u519b"

    filled-new-array {v2, v3, v4, p0, v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->HIGHEST_ATTACK_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    return-object p0

    :cond_a
    const-string p0, "\u573a\u4e0a\u667a\u6700\u9ad8\u53cb\u519b"

    const-string v1, "\u573a\u4e0a\u667a\u6700\u9ad8\u5df1\u65b9"

    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->HIGHEST_WISDOM_ACTIVE_ALLY:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    return-object p0

    :cond_b
    const-string p0, "\u573a\u4e0a\u653b\u6700\u9ad8\u53cb\u519b"

    const-string v1, "\u653b\u6700\u9ad8\u53cb\u519b"

    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->HIGHEST_ATTACK_ACTIVE_ALLY:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    return-object p0

    :cond_c
    const-string p0, "\u573a\u4e0a\u56db\u7ef4\u6700\u9ad8\u53cb\u519b"

    const-string v1, "\u56db\u7ef4\u6700\u9ad8\u53cb\u519b"

    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->HIGHEST_ALL_STATS_ACTIVE_ALLY:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    return-object p0

    :cond_d
    const-string p0, "\u654c\u65b92\u540d\u7537\u6027"

    const-string p1, "\u654c\u65b9\u4e24\u540d\u7537\u6027"

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->FIRST_TWO_ACTIVE_MALE_ENEMIES:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    return-object p0

    :cond_e
    const-string p0, "\u81ea\u8eab"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    const-string p0, "\u654c\u65b9"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_f

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->SELF:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    return-object p0

    :cond_f
    const-string p0, "\u654c\u65b9\u5168\u4f53"

    const-string p1, "\u654c\u65b9\u573a\u4e0a\u5168\u4f53"

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->ALL_ACTIVE_ENEMIES:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    return-object p0

    :cond_10
    const-string v1, "\u5df1\u65b9\u53e6\u59162\u540d"

    const-string v2, "\u5df1\u65b9\u53e6\u5916\u4e24\u540d"

    const-string v3, "\u5df1\u65b9\u53e6\u4e24\u540d"

    const-string v4, "\u5df2\u65b9\u53e6\u59162\u540d"

    const-string v5, "\u5df2\u65b9\u53e6\u5916\u4e24\u540d"

    const-string v6, "\u5df2\u65b9\u53e6\u4e24\u540d"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->FIRST_TWO_OTHER_ACTIVE_ALLIES:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    return-object p0

    :cond_11
    const-string p0, "\u5df2\u65b9\u5168\u4f53"

    const-string p1, "\u5df2\u65b9\u573a\u4e0a\u5168\u4f53"

    const-string v1, "\u5df1\u65b9\u5168\u4f53"

    const-string v2, "\u5df1\u65b9\u573a\u4e0a\u5168\u4f53"

    filled-new-array {v1, v2, p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->ALL_ACTIVE_ALLIES:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    return-object p0

    :cond_12
    const-string p0, "\u63f4\u519b"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->ACTIVE_ENEMY_AND_BACKUP:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    return-object p0

    :cond_13
    const-string p0, "\u968f\u673a2\u540d"

    const-string p1, "\u968f\u673a\u4e24\u540d"

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->RANDOM_TWO_ACTIVE_ENEMIES:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    return-object p0

    :cond_14
    const-string p0, "2\u540d"

    const-string p1, "\u4e24\u540d"

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->FIRST_TWO_ACTIVE_ENEMIES:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    return-object p0

    :cond_15
    const-string p0, "\u5df2\u65b9\u8840\u91cf\u6700\u5c11"

    const-string p1, "\u573a\u4e0a\u8840\u6700\u5c11\u5df1\u65b9"

    const-string v1, "\u5df1\u65b9\u8840\u91cf\u6700\u5c11"

    filled-new-array {v1, p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->hasAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->LOWEST_HP_RATE_ALLY:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    return-object p0

    :cond_16
    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->NORMAL_COUNTERPART:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    return-object p0
.end method
