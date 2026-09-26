.class public Lcom/sgscq/vpn/battle/BattleSkillDefinition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;
    }
.end annotation


# instance fields
.field private final code:Ljava/lang/String;

.field private final effects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sgscq/vpn/battle/BattleSkillEffect;",
            ">;"
        }
    .end annotation
.end field

.field private final mandatoryTrigger:Z

.field private final requiresNoAttackSkillThisTurn:Z

.field private final triggerPhase:Lcom/sgscq/vpn/battle/BattleTriggerPhase;


# direct methods
.method private constructor <init>(Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->access$000(Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->access$000(Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillDefinition;->code:Ljava/lang/String;

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->access$100(Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;)Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->UNKNOWN:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->access$100(Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;)Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillDefinition;->triggerPhase:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->access$200(Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sgscq/vpn/battle/BattleSkillDefinition;->mandatoryTrigger:Z

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->access$300(Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sgscq/vpn/battle/BattleSkillDefinition;->requiresNoAttackSkillThisTurn:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->access$400(Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sgscq/vpn/battle/BattleSkillDefinition;->effects:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;Lcom/sgscq/vpn/battle/BattleSkillDefinition$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sgscq/vpn/battle/BattleSkillDefinition;-><init>(Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;)V

    return-void
.end method

.method public static builder(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;
    .locals 2

    new-instance v0, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;-><init>(Ljava/lang/String;Lcom/sgscq/vpn/battle/BattleSkillDefinition$1;)V

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillDefinition;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getEffects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sgscq/vpn/battle/BattleSkillEffect;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillDefinition;->effects:Ljava/util/List;

    return-object v0
.end method

.method public getTriggerPhase()Lcom/sgscq/vpn/battle/BattleTriggerPhase;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillDefinition;->triggerPhase:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    return-object v0
.end method

.method public isMandatoryTrigger()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sgscq/vpn/battle/BattleSkillDefinition;->mandatoryTrigger:Z

    return v0
.end method

.method public requiresNoAttackSkillThisTurn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sgscq/vpn/battle/BattleSkillDefinition;->requiresNoAttackSkillThisTurn:Z

    return v0
.end method
