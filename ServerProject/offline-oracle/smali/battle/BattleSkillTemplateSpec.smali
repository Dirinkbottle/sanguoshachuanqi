.class public Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final animationPolicy:Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

.field private final continuesWithNormalAttack:Z

.field private final enemyFieldPolicy:Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

.field private final onEntrySkill:Z

.field private final targetRule:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

.field private final template:Lcom/sgscq/vpn/battle/BattleSkillTemplate;


# direct methods
.method private constructor <init>(Lcom/sgscq/vpn/battle/BattleSkillTemplate;Lcom/sgscq/vpn/battle/BattleSkillTargetRule;Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;Z)V
    .locals 7

    .line 1
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;-><init>(Lcom/sgscq/vpn/battle/BattleSkillTemplate;Lcom/sgscq/vpn/battle/BattleSkillTargetRule;Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;ZZ)V

    return-void
.end method

.method private constructor <init>(Lcom/sgscq/vpn/battle/BattleSkillTemplate;Lcom/sgscq/vpn/battle/BattleSkillTargetRule;Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;ZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->UNKNOWN:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    :cond_0
    iput-object p1, p0, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->template:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    if-nez p2, :cond_1

    sget-object p2, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->NORMAL_COUNTERPART:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    :cond_1
    iput-object p2, p0, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->targetRule:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    if-nez p3, :cond_2

    sget-object p3, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;->EMIT_SKILL_ROUND:Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    :cond_2
    iput-object p3, p0, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->animationPolicy:Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    if-nez p4, :cond_3

    sget-object p4, Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;->NOT_REQUIRED:Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

    :cond_3
    iput-object p4, p0, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->enemyFieldPolicy:Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

    iput-boolean p5, p0, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->continuesWithNormalAttack:Z

    iput-boolean p6, p0, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->onEntrySkill:Z

    return-void
.end method

.method private static defaultEnemyFieldPolicy(Lcom/sgscq/vpn/battle/BattleSkillTemplate;Lcom/sgscq/vpn/battle/BattleSkillTargetRule;)Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;
    .locals 1

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->ALL_ENEMY_DAMAGE_OR_ALLY_HEAL:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    if-eq p0, v0, :cond_4

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->ALL_ENEMY_DAMAGE_OR_ALLY_DAMAGE_BONUS:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->ALL_ACTIVE_ENEMIES:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->RANDOM_TWO_ACTIVE_ENEMIES:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->FIRST_TWO_ACTIVE_ENEMIES:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->FIRST_TWO_ACTIVE_MALE_ENEMIES:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->LOWEST_HP_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->LOWEST_DEFENSE_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->HIGHEST_ATTACK_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->HIGHEST_DEFENSE_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->HIGHEST_HP_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->ACTIVE_ENEMY_AND_BACKUP:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->ACTIVE_ENEMY_AND_TWO_BACKUPS:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->SELF_AND_ALL_ACTIVE_ENEMIES:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->ALL_ACTIVE_ENEMIES_AND_ALLIES:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->NORMAL_COUNTERPART:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    if-ne p1, v0, :cond_2

    invoke-static {p0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->requiresActiveEnemyTarget(Lcom/sgscq/vpn/battle/BattleSkillTemplate;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;->REQUIRE_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

    return-object p0

    :cond_2
    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;->NOT_REQUIRED:Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

    return-object p0

    :cond_3
    :goto_0
    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;->REQUIRE_ACTIVE_ENEMY:Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

    return-object p0

    :cond_4
    :goto_1
    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;->ALLOW_ALLY_FALLBACK:Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

    return-object p0
.end method

.method public static preAttackBuff(Lcom/sgscq/vpn/battle/BattleSkillTemplate;Lcom/sgscq/vpn/battle/BattleSkillTargetRule;Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;)Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->defaultEnemyFieldPolicy(Lcom/sgscq/vpn/battle/BattleSkillTemplate;Lcom/sgscq/vpn/battle/BattleSkillTargetRule;)Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->preAttackBuff(Lcom/sgscq/vpn/battle/BattleSkillTemplate;Lcom/sgscq/vpn/battle/BattleSkillTargetRule;Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;)Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;

    move-result-object p0

    return-object p0
.end method

.method public static preAttackBuff(Lcom/sgscq/vpn/battle/BattleSkillTemplate;Lcom/sgscq/vpn/battle/BattleSkillTargetRule;Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;)Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;
    .locals 7

    .line 2
    new-instance v6, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;-><init>(Lcom/sgscq/vpn/battle/BattleSkillTemplate;Lcom/sgscq/vpn/battle/BattleSkillTargetRule;Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;Z)V

    return-object v6
.end method

.method private static requiresActiveEnemyTarget(Lcom/sgscq/vpn/battle/BattleSkillTemplate;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec$1;->$SwitchMap$com$sgscq$vpn$battle$BattleSkillTemplate:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static simple(Lcom/sgscq/vpn/battle/BattleSkillTemplate;Lcom/sgscq/vpn/battle/BattleSkillTargetRule;)Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;
    .locals 1

    .line 1
    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;->EMIT_SKILL_ROUND:Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    invoke-static {p0, p1, v0}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->simple(Lcom/sgscq/vpn/battle/BattleSkillTemplate;Lcom/sgscq/vpn/battle/BattleSkillTargetRule;Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;)Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;

    move-result-object p0

    return-object p0
.end method

.method public static simple(Lcom/sgscq/vpn/battle/BattleSkillTemplate;Lcom/sgscq/vpn/battle/BattleSkillTargetRule;Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;)Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;
    .locals 7

    .line 2
    new-instance v6, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;

    invoke-static {p0, p1}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->defaultEnemyFieldPolicy(Lcom/sgscq/vpn/battle/BattleSkillTemplate;Lcom/sgscq/vpn/battle/BattleSkillTargetRule;)Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;-><init>(Lcom/sgscq/vpn/battle/BattleSkillTemplate;Lcom/sgscq/vpn/battle/BattleSkillTargetRule;Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;Z)V

    return-object v6
.end method

.method public static simple(Lcom/sgscq/vpn/battle/BattleSkillTemplate;Lcom/sgscq/vpn/battle/BattleSkillTargetRule;Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;)Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;
    .locals 7

    .line 3
    new-instance v6, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;-><init>(Lcom/sgscq/vpn/battle/BattleSkillTemplate;Lcom/sgscq/vpn/battle/BattleSkillTargetRule;Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;Z)V

    return-object v6
.end method


# virtual methods
.method public continuesWithNormalAttack()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->continuesWithNormalAttack:Z

    return v0
.end method

.method public emitsOwnRound()Z
    .locals 2

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->animationPolicy:Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    sget-object v1, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;->SILENT_STATE_CHANGE:Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAnimationPolicy()Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->animationPolicy:Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    return-object v0
.end method

.method public getEnemyFieldPolicy()Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->enemyFieldPolicy:Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

    return-object v0
.end method

.method public getTargetRule()Lcom/sgscq/vpn/battle/BattleSkillTargetRule;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->targetRule:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    return-object v0
.end method

.method public getTemplate()Lcom/sgscq/vpn/battle/BattleSkillTemplate;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->template:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0
.end method

.method public isOnEntrySkill()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->onEntrySkill:Z

    return v0
.end method

.method public withOnEntrySkill()Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;
    .locals 8

    new-instance v7, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;

    iget-object v1, p0, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->template:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    iget-object v2, p0, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->targetRule:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    iget-object v3, p0, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->animationPolicy:Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    iget-object v4, p0, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->enemyFieldPolicy:Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;

    iget-boolean v5, p0, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->continuesWithNormalAttack:Z

    const/4 v6, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;-><init>(Lcom/sgscq/vpn/battle/BattleSkillTemplate;Lcom/sgscq/vpn/battle/BattleSkillTargetRule;Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;Lcom/sgscq/vpn/battle/BattleSkillEnemyFieldPolicy;ZZ)V

    return-object v7
.end method
