.class public Lcom/sgscq/vpn/battle/BattleScenario;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sgscq/vpn/battle/BattleAction;",
            ">;"
        }
    .end annotation
.end field

.field private final allies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sgscq/vpn/battle/BattleUnit;",
            ">;"
        }
    .end annotation
.end field

.field private final allyGovern:D

.field private final enemies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sgscq/vpn/battle/BattleUnit;",
            ">;"
        }
    .end annotation
.end field

.field private final enemyGovern:D

.field private final xiaoyongMarks:[D


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sgscq/vpn/battle/BattleUnit;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sgscq/vpn/battle/BattleUnit;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sgscq/vpn/battle/BattleAction;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/sgscq/vpn/battle/BattleScenario;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;DD)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;DD)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sgscq/vpn/battle/BattleUnit;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sgscq/vpn/battle/BattleUnit;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sgscq/vpn/battle/BattleAction;",
            ">;DD)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/sgscq/vpn/battle/BattleScenario;->xiaoyongMarks:[D

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/sgscq/vpn/battle/BattleScenario;->allies:Ljava/util/List;

    if-nez p2, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lcom/sgscq/vpn/battle/BattleScenario;->enemies:Ljava/util/List;

    if-nez p3, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    :cond_2
    iput-object p3, p0, Lcom/sgscq/vpn/battle/BattleScenario;->actions:Ljava/util/List;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide p3

    iput-wide p3, p0, Lcom/sgscq/vpn/battle/BattleScenario;->allyGovern:D

    invoke-static {v1, v2, p6, p7}, Ljava/lang/Math;->max(DD)D

    move-result-wide p3

    iput-wide p3, p0, Lcom/sgscq/vpn/battle/BattleScenario;->enemyGovern:D

    invoke-direct {p0, p1}, Lcom/sgscq/vpn/battle/BattleScenario;->initialXiaoyongMarks(Ljava/util/List;)D

    move-result-wide p3

    const/4 p1, 0x0

    aput-wide p3, v0, p1

    invoke-direct {p0, p2}, Lcom/sgscq/vpn/battle/BattleScenario;->initialXiaoyongMarks(Ljava/util/List;)D

    move-result-wide p2

    const/4 p4, 0x1

    aput-wide p2, v0, p4

    invoke-direct {p0, p1}, Lcom/sgscq/vpn/battle/BattleScenario;->syncXiaoyongUnitStates(I)V

    invoke-direct {p0, p4}, Lcom/sgscq/vpn/battle/BattleScenario;->syncXiaoyongUnitStates(I)V

    return-void
.end method

.method private initialXiaoyongMarks(Ljava/util/List;)D
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sgscq/vpn/battle/BattleUnit;",
            ">;)D"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sgscq/vpn/battle/BattleUnit;

    if-eqz v2, :cond_0

    sget-object v3, Lcom/sgscq/vpn/battle/BattleState;->XIAOYONG_MARK:Lcom/sgscq/vpn/battle/BattleState;

    invoke-virtual {v2, v3}, Lcom/sgscq/vpn/battle/BattleUnit;->getStateValue(Lcom/sgscq/vpn/battle/BattleState;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private syncXiaoyongUnitStates(I)V
    .locals 8

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleScenario;->allies:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleScenario;->enemies:Ljava/util/List;

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sgscq/vpn/battle/BattleUnit;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/sgscq/vpn/battle/BattleState;->XIAOYONG_MARK:Lcom/sgscq/vpn/battle/BattleState;

    invoke-virtual {v1, v2}, Lcom/sgscq/vpn/battle/BattleUnit;->consumeStateValue(Lcom/sgscq/vpn/battle/BattleState;)D

    iget-object v3, p0, Lcom/sgscq/vpn/battle/BattleScenario;->xiaoyongMarks:[D

    aget-wide v4, v3, p1

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_1

    invoke-virtual {v1, v2, v4, v5}, Lcom/sgscq/vpn/battle/BattleUnit;->addState(Lcom/sgscq/vpn/battle/BattleState;D)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private validSide(I)Z
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleScenario;->xiaoyongMarks:[D

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public addXiaoyongMarks(ID)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/sgscq/vpn/battle/BattleScenario;->validSide(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleScenario;->xiaoyongMarks:[D

    aget-wide v1, v0, p1

    add-double/2addr v1, p2

    aput-wide v1, v0, p1

    invoke-direct {p0, p1}, Lcom/sgscq/vpn/battle/BattleScenario;->syncXiaoyongUnitStates(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public consumeXiaoyongMarks(ID)D
    .locals 3

    invoke-direct {p0, p1}, Lcom/sgscq/vpn/battle/BattleScenario;->validSide(I)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    cmpg-double v0, p2, v1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleScenario;->xiaoyongMarks:[D

    aget-wide v1, v0, p1

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p2

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleScenario;->xiaoyongMarks:[D

    aget-wide v1, v0, p1

    sub-double/2addr v1, p2

    aput-wide v1, v0, p1

    invoke-direct {p0, p1}, Lcom/sgscq/vpn/battle/BattleScenario;->syncXiaoyongUnitStates(I)V

    return-wide p2

    :cond_1
    :goto_0
    return-wide v1
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sgscq/vpn/battle/BattleAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleScenario;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getAllUnits()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sgscq/vpn/battle/BattleUnit;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sgscq/vpn/battle/BattleScenario;->allies:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sgscq/vpn/battle/BattleScenario;->enemies:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getAllies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sgscq/vpn/battle/BattleUnit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleScenario;->allies:Ljava/util/List;

    return-object v0
.end method

.method public getAllyGovern()D
    .locals 2

    iget-wide v0, p0, Lcom/sgscq/vpn/battle/BattleScenario;->allyGovern:D

    return-wide v0
.end method

.method public getEnemies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sgscq/vpn/battle/BattleUnit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleScenario;->enemies:Ljava/util/List;

    return-object v0
.end method

.method public getEnemyGovern()D
    .locals 2

    iget-wide v0, p0, Lcom/sgscq/vpn/battle/BattleScenario;->enemyGovern:D

    return-wide v0
.end method

.method public getOpponents(Lcom/sgscq/vpn/battle/BattleUnit;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sgscq/vpn/battle/BattleUnit;",
            ")",
            "Ljava/util/List<",
            "Lcom/sgscq/vpn/battle/BattleUnit;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sgscq/vpn/battle/BattleUnit;->getSide()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sgscq/vpn/battle/BattleScenario;->enemies:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sgscq/vpn/battle/BattleScenario;->allies:Ljava/util/List;

    :goto_0
    return-object p1
.end method

.method public getXiaoyongMarks(I)D
    .locals 3

    invoke-direct {p0, p1}, Lcom/sgscq/vpn/battle/BattleScenario;->validSide(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleScenario;->xiaoyongMarks:[D

    aget-wide v1, v0, p1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method
