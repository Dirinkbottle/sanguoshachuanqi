.class public Lcom/sgscq/vpn/battle/BattleSkill;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sgscq/vpn/battle/BattleSkill$Builder;
    }
.end annotation


# instance fields
.field private final advancedLevel:I

.field private final animationSkill:Ljava/lang/String;

.field private final code:Ljava/lang/String;

.field private final explicitTriggerNode:Z

.field private final firstTriggerAction:I

.field private final firstTriggerMaxAction:I

.field private final firstTriggerMinAction:I

.field private final id:Ljava/lang/String;

.field private final majorAttribute:Lcom/sgscq/vpn/battle/BattleAttribute;

.field private final mandatoryTrigger:Z

.field private final params:[D

.field private final repeatTriggerMaxAction:I

.field private final repeatTriggerMinAction:I

.field private final spec:Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;

.field private final template:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

.field private final triggerInterval:I

.field private final type:Lcom/sgscq/vpn/battle/BattleSkillType;


# direct methods
.method private constructor <init>(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->access$000(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->id:Ljava/lang/String;

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->access$100(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->code:Ljava/lang/String;

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->access$200(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->animationSkill:Ljava/lang/String;

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->access$300(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)Lcom/sgscq/vpn/battle/BattleSkillType;

    move-result-object v0

    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->type:Lcom/sgscq/vpn/battle/BattleSkillType;

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->access$400(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->template:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->access$500(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/sgscq/vpn/battle/BattleSkill;->defaultTargetRule(Lcom/sgscq/vpn/battle/BattleSkillTemplate;)Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    move-result-object v1

    invoke-static {v0}, Lcom/sgscq/vpn/battle/BattleSkill;->defaultAnimationPolicy(Lcom/sgscq/vpn/battle/BattleSkillTemplate;)Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->simple(Lcom/sgscq/vpn/battle/BattleSkillTemplate;Lcom/sgscq/vpn/battle/BattleSkillTargetRule;Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;)Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->access$500(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->spec:Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->access$600(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)Lcom/sgscq/vpn/battle/BattleAttribute;

    move-result-object v0

    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->majorAttribute:Lcom/sgscq/vpn/battle/BattleAttribute;

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->access$700(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->params:[D

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->access$800(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->advancedLevel:I

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->access$900(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->firstTriggerAction:I

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->access$1000(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->firstTriggerMinAction:I

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->access$1100(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->firstTriggerMaxAction:I

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->access$1200(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->repeatTriggerMinAction:I

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->access$1300(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->repeatTriggerMaxAction:I

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->access$1400(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->triggerInterval:I

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->access$1500(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->explicitTriggerNode:Z

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->access$1600(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sgscq/vpn/battle/BattleSkill;->mandatoryTrigger:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sgscq/vpn/battle/BattleSkill$Builder;Lcom/sgscq/vpn/battle/BattleSkill$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sgscq/vpn/battle/BattleSkill;-><init>(Lcom/sgscq/vpn/battle/BattleSkill$Builder;)V

    return-void
.end method

.method public static builder(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkill$Builder;
    .locals 2

    new-instance v0, Lcom/sgscq/vpn/battle/BattleSkill$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;-><init>(Ljava/lang/String;Lcom/sgscq/vpn/battle/BattleSkill$1;)V

    return-object v0
.end method

.method private static defaultAnimationPolicy(Lcom/sgscq/vpn/battle/BattleSkillTemplate;)Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;
    .locals 1

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->UNKNOWN:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->NO_EFFECT:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;->EMIT_SKILL_ROUND:Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;->NORMAL_ATTACK_FALLBACK:Lcom/sgscq/vpn/battle/BattleSkillAnimationPolicy;

    return-object p0
.end method

.method private static defaultTargetRule(Lcom/sgscq/vpn/battle/BattleSkillTemplate;)Lcom/sgscq/vpn/battle/BattleSkillTargetRule;
    .locals 1

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->ALL_ENEMY_ATTRIBUTE_DAMAGE:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    if-eq p0, v0, :cond_7

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->ALL_ENEMY_DAMAGE_AND_ALLY_HEAL:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    if-eq p0, v0, :cond_7

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->ALL_ENEMY_DAMAGE_OR_ALLY_HEAL:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->ALL_ENEMY_DAMAGE_OR_ALLY_DAMAGE_BONUS:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->ALL_ACTIVE_ENEMIES_AND_ALLIES:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    return-object p0

    :cond_1
    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->TWO_ENEMY_ATTRIBUTE_DAMAGE:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->FIRST_TWO_ACTIVE_ENEMIES:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    return-object p0

    :cond_2
    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->DAMAGE_WITH_DAMAGE_DEALT_REDUCTION:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->RANDOM_TWO_ACTIVE_ENEMIES:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    return-object p0

    :cond_3
    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->TWO_MALE_ENEMY_ATTRIBUTE_DAMAGE:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->FIRST_TWO_ACTIVE_MALE_ENEMIES:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    return-object p0

    :cond_4
    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->HEAL_LOWEST_ALLY:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    if-eq p0, v0, :cond_6

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->HEAL_AND_DAMAGE_BONUS:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    if-eq p0, v0, :cond_6

    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->HEAL_AND_DAMAGE_REDUCTION:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    if-ne p0, v0, :cond_5

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->NORMAL_COUNTERPART:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    return-object p0

    :cond_6
    :goto_0
    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->LOWEST_HP_RATE_ALLY:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    return-object p0

    :cond_7
    :goto_1
    sget-object p0, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->ALL_ACTIVE_ENEMIES:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    return-object p0
.end method


# virtual methods
.method public getAdvancedLevel()I
    .locals 1

    iget v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->advancedLevel:I

    return v0
.end method

.method public getAnimationSkill()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->animationSkill:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstTriggerAction()I
    .locals 1

    iget v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->firstTriggerAction:I

    return v0
.end method

.method public getFirstTriggerMaxAction()I
    .locals 1

    iget v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->firstTriggerMaxAction:I

    return v0
.end method

.method public getFirstTriggerMinAction()I
    .locals 1

    iget v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->firstTriggerMinAction:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMajorAttribute()Lcom/sgscq/vpn/battle/BattleAttribute;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->majorAttribute:Lcom/sgscq/vpn/battle/BattleAttribute;

    return-object v0
.end method

.method public getParam(I)D
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->params:[D

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-wide v1, v0, p1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method

.method public getParamCount()I
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->params:[D

    array-length v0, v0

    return v0
.end method

.method public getRepeatTriggerMaxAction()I
    .locals 1

    iget v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->repeatTriggerMaxAction:I

    return v0
.end method

.method public getRepeatTriggerMinAction()I
    .locals 1

    iget v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->repeatTriggerMinAction:I

    return v0
.end method

.method public getSpec()Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->spec:Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;

    return-object v0
.end method

.method public getTemplate()Lcom/sgscq/vpn/battle/BattleSkillTemplate;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->template:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    return-object v0
.end method

.method public getTriggerInterval()I
    .locals 1

    iget v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->triggerInterval:I

    return v0
.end method

.method public getType()Lcom/sgscq/vpn/battle/BattleSkillType;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->type:Lcom/sgscq/vpn/battle/BattleSkillType;

    return-object v0
.end method

.method public hasConfiguredTriggerSchedule()Z
    .locals 2

    iget v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->firstTriggerMinAction:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/sgscq/vpn/battle/BattleSkill;->firstTriggerMaxAction:I

    if-lt v1, v0, :cond_0

    iget v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->repeatTriggerMinAction:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/sgscq/vpn/battle/BattleSkill;->repeatTriggerMaxAction:I

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasExplicitTriggerNode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->explicitTriggerNode:Z

    return v0
.end method

.method public isMandatoryTrigger()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sgscq/vpn/battle/BattleSkill;->mandatoryTrigger:Z

    return v0
.end method
