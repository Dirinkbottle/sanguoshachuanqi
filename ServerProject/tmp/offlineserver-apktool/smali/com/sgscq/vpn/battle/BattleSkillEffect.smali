.class public Lcom/sgscq/vpn/battle/BattleSkillEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;
    }
.end annotation


# instance fields
.field private final paramIndex:I

.field private final sourceAttribute:Lcom/sgscq/vpn/battle/BattleAttribute;

.field private final target:Lcom/sgscq/vpn/battle/BattleEffectTarget;

.field private final type:Lcom/sgscq/vpn/battle/BattleEffectType;


# direct methods
.method private constructor <init>(Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;->access$000(Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;)Lcom/sgscq/vpn/battle/BattleEffectType;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sgscq/vpn/battle/BattleEffectType;->NEEDS_MANUAL_IMPLEMENTATION:Lcom/sgscq/vpn/battle/BattleEffectType;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;->access$000(Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;)Lcom/sgscq/vpn/battle/BattleEffectType;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillEffect;->type:Lcom/sgscq/vpn/battle/BattleEffectType;

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;->access$100(Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;)Lcom/sgscq/vpn/battle/BattleEffectTarget;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sgscq/vpn/battle/BattleEffectTarget;->UNKNOWN:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;->access$100(Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;)Lcom/sgscq/vpn/battle/BattleEffectTarget;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillEffect;->target:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;->access$200(Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;)Lcom/sgscq/vpn/battle/BattleAttribute;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/sgscq/vpn/battle/BattleAttribute;->ATTACK:Lcom/sgscq/vpn/battle/BattleAttribute;

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;->access$200(Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;)Lcom/sgscq/vpn/battle/BattleAttribute;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillEffect;->sourceAttribute:Lcom/sgscq/vpn/battle/BattleAttribute;

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;->access$300(Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sgscq/vpn/battle/BattleSkillEffect;->paramIndex:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;Lcom/sgscq/vpn/battle/BattleSkillEffect$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sgscq/vpn/battle/BattleSkillEffect;-><init>(Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;)V

    return-void
.end method

.method public static builder(Lcom/sgscq/vpn/battle/BattleEffectType;Lcom/sgscq/vpn/battle/BattleEffectTarget;)Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;
    .locals 2

    new-instance v0, Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sgscq/vpn/battle/BattleSkillEffect$Builder;-><init>(Lcom/sgscq/vpn/battle/BattleEffectType;Lcom/sgscq/vpn/battle/BattleEffectTarget;Lcom/sgscq/vpn/battle/BattleSkillEffect$1;)V

    return-object v0
.end method


# virtual methods
.method public getParamIndex()I
    .locals 1

    iget v0, p0, Lcom/sgscq/vpn/battle/BattleSkillEffect;->paramIndex:I

    return v0
.end method

.method public getSourceAttribute()Lcom/sgscq/vpn/battle/BattleAttribute;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillEffect;->sourceAttribute:Lcom/sgscq/vpn/battle/BattleAttribute;

    return-object v0
.end method

.method public getTarget()Lcom/sgscq/vpn/battle/BattleEffectTarget;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillEffect;->target:Lcom/sgscq/vpn/battle/BattleEffectTarget;

    return-object v0
.end method

.method public getType()Lcom/sgscq/vpn/battle/BattleEffectType;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillEffect;->type:Lcom/sgscq/vpn/battle/BattleEffectType;

    return-object v0
.end method
