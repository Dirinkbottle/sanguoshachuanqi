.class public final Lcom/sgscq/battle/api/BattleResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final fightInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final roundCount:I

.field private final rounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final settled:Z

.field private final status:Lcom/sgscq/battle/api/BattleRuntimeStatus;

.field private final success:Z


# direct methods
.method private constructor <init>(Lcom/sgscq/battle/api/BattleRuntimeStatus;Ljava/util/Map;Ljava/util/List;ZZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sgscq/battle/api/BattleRuntimeStatus;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;ZZI)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Lcom/sgscq/battle/api/BattleRuntimeStatus;->MODULE_LOAD_FAILED:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    :cond_0
    iput-object p1, p0, Lcom/sgscq/battle/api/BattleResponse;->status:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    if-nez p2, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/sgscq/battle/api/BattleResponse;->fightInfo:Ljava/util/Map;

    invoke-static {p3}, Lcom/sgscq/battle/api/BattleResponse;->immutableRounds(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sgscq/battle/api/BattleResponse;->rounds:Ljava/util/List;

    iput-boolean p4, p0, Lcom/sgscq/battle/api/BattleResponse;->success:Z

    iput-boolean p5, p0, Lcom/sgscq/battle/api/BattleResponse;->settled:Z

    const/4 p1, 0x0

    invoke-static {p1, p6}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sgscq/battle/api/BattleResponse;->roundCount:I

    return-void
.end method

.method private static immutableRounds(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static ready(Ljava/util/Map;Ljava/util/List;ZI)Lcom/sgscq/battle/api/BattleResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;ZI)",
            "Lcom/sgscq/battle/api/BattleResponse;"
        }
    .end annotation

    new-instance v7, Lcom/sgscq/battle/api/BattleResponse;

    sget-object v1, Lcom/sgscq/battle/api/BattleRuntimeStatus;->READY:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    const/4 v5, 0x1

    move-object v0, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sgscq/battle/api/BattleResponse;-><init>(Lcom/sgscq/battle/api/BattleRuntimeStatus;Ljava/util/Map;Ljava/util/List;ZZI)V

    return-object v7
.end method

.method public static unavailable(Lcom/sgscq/battle/api/BattleRuntimeStatus;)Lcom/sgscq/battle/api/BattleResponse;
    .locals 8

    new-instance v7, Lcom/sgscq/battle/api/BattleResponse;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sgscq/battle/api/BattleResponse;-><init>(Lcom/sgscq/battle/api/BattleRuntimeStatus;Ljava/util/Map;Ljava/util/List;ZZI)V

    return-object v7
.end method


# virtual methods
.method public getFightInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sgscq/battle/api/BattleResponse;->fightInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getRoundCount()I
    .locals 1

    iget v0, p0, Lcom/sgscq/battle/api/BattleResponse;->roundCount:I

    return v0
.end method

.method public getRounds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sgscq/battle/api/BattleResponse;->rounds:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Lcom/sgscq/battle/api/BattleRuntimeStatus;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/battle/api/BattleResponse;->status:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    return-object v0
.end method

.method public isSettled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sgscq/battle/api/BattleResponse;->settled:Z

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sgscq/battle/api/BattleResponse;->success:Z

    return v0
.end method
