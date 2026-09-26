.class public Lcom/sgscq/vpn/battle/BattleAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sgscq/vpn/battle/BattleAction$Kind;
    }
.end annotation


# instance fields
.field private final actor:Lcom/sgscq/vpn/battle/BattleUnit;

.field private final kind:Lcom/sgscq/vpn/battle/BattleAction$Kind;

.field private final skill:Lcom/sgscq/vpn/battle/BattleSkill;

.field private final target:Lcom/sgscq/vpn/battle/BattleUnit;


# direct methods
.method private constructor <init>(Lcom/sgscq/vpn/battle/BattleAction$Kind;Lcom/sgscq/vpn/battle/BattleUnit;Lcom/sgscq/vpn/battle/BattleUnit;Lcom/sgscq/vpn/battle/BattleSkill;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/battle/BattleAction;->kind:Lcom/sgscq/vpn/battle/BattleAction$Kind;

    iput-object p2, p0, Lcom/sgscq/vpn/battle/BattleAction;->actor:Lcom/sgscq/vpn/battle/BattleUnit;

    iput-object p3, p0, Lcom/sgscq/vpn/battle/BattleAction;->target:Lcom/sgscq/vpn/battle/BattleUnit;

    iput-object p4, p0, Lcom/sgscq/vpn/battle/BattleAction;->skill:Lcom/sgscq/vpn/battle/BattleSkill;

    return-void
.end method

.method public static normalAttack(Lcom/sgscq/vpn/battle/BattleUnit;Lcom/sgscq/vpn/battle/BattleUnit;)Lcom/sgscq/vpn/battle/BattleAction;
    .locals 3

    new-instance v0, Lcom/sgscq/vpn/battle/BattleAction;

    sget-object v1, Lcom/sgscq/vpn/battle/BattleAction$Kind;->NORMAL_ATTACK:Lcom/sgscq/vpn/battle/BattleAction$Kind;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/sgscq/vpn/battle/BattleAction;-><init>(Lcom/sgscq/vpn/battle/BattleAction$Kind;Lcom/sgscq/vpn/battle/BattleUnit;Lcom/sgscq/vpn/battle/BattleUnit;Lcom/sgscq/vpn/battle/BattleSkill;)V

    return-object v0
.end method

.method public static skill(Lcom/sgscq/vpn/battle/BattleUnit;Lcom/sgscq/vpn/battle/BattleSkill;)Lcom/sgscq/vpn/battle/BattleAction;
    .locals 3

    new-instance v0, Lcom/sgscq/vpn/battle/BattleAction;

    sget-object v1, Lcom/sgscq/vpn/battle/BattleAction$Kind;->SKILL:Lcom/sgscq/vpn/battle/BattleAction$Kind;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/sgscq/vpn/battle/BattleAction;-><init>(Lcom/sgscq/vpn/battle/BattleAction$Kind;Lcom/sgscq/vpn/battle/BattleUnit;Lcom/sgscq/vpn/battle/BattleUnit;Lcom/sgscq/vpn/battle/BattleSkill;)V

    return-object v0
.end method


# virtual methods
.method public getActor()Lcom/sgscq/vpn/battle/BattleUnit;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleAction;->actor:Lcom/sgscq/vpn/battle/BattleUnit;

    return-object v0
.end method

.method public getKind()Lcom/sgscq/vpn/battle/BattleAction$Kind;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleAction;->kind:Lcom/sgscq/vpn/battle/BattleAction$Kind;

    return-object v0
.end method

.method public getSkill()Lcom/sgscq/vpn/battle/BattleSkill;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleAction;->skill:Lcom/sgscq/vpn/battle/BattleSkill;

    return-object v0
.end method

.method public getTarget()Lcom/sgscq/vpn/battle/BattleUnit;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleAction;->target:Lcom/sgscq/vpn/battle/BattleUnit;

    return-object v0
.end method
