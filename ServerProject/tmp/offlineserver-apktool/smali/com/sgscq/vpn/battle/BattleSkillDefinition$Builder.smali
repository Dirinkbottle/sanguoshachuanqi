.class public Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sgscq/vpn/battle/BattleSkillDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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

.field private mandatoryTrigger:Z

.field private requiresNoAttackSkillThisTurn:Z

.field private triggerPhase:Lcom/sgscq/vpn/battle/BattleTriggerPhase;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sgscq/vpn/battle/BattleTriggerPhase;->UNKNOWN:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->triggerPhase:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->effects:Ljava/util/List;

    iput-object p1, p0, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->code:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/sgscq/vpn/battle/BattleSkillDefinition$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->code:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;)Lcom/sgscq/vpn/battle/BattleTriggerPhase;
    .locals 0

    iget-object p0, p0, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->triggerPhase:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->mandatoryTrigger:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->requiresNoAttackSkillThisTurn:Z

    return p0
.end method

.method public static synthetic access$400(Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->effects:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/sgscq/vpn/battle/BattleSkillDefinition;
    .locals 2

    new-instance v0, Lcom/sgscq/vpn/battle/BattleSkillDefinition;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sgscq/vpn/battle/BattleSkillDefinition;-><init>(Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;Lcom/sgscq/vpn/battle/BattleSkillDefinition$1;)V

    return-object v0
.end method

.method public effect(Lcom/sgscq/vpn/battle/BattleSkillEffect;)Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->effects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public mandatoryTrigger(Z)Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->mandatoryTrigger:Z

    return-object p0
.end method

.method public requiresNoAttackSkillThisTurn(Z)Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->requiresNoAttackSkillThisTurn:Z

    return-object p0
.end method

.method public triggerPhase(Lcom/sgscq/vpn/battle/BattleTriggerPhase;)Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sgscq/vpn/battle/BattleSkillDefinition$Builder;->triggerPhase:Lcom/sgscq/vpn/battle/BattleTriggerPhase;

    return-object p0
.end method
