.class public Lcom/sgscq/vpn/battle/BattleResult;
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

.field private final success:Z


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/List;Z)V
    .locals 1
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
            ">;>;Z)V"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sgscq/vpn/battle/BattleResult;-><init>(Ljava/util/Map;Ljava/util/List;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/List;ZI)V
    .locals 0
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
            ">;>;ZI)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/battle/BattleResult;->fightInfo:Ljava/util/Map;

    iput-object p2, p0, Lcom/sgscq/vpn/battle/BattleResult;->rounds:Ljava/util/List;

    iput-boolean p3, p0, Lcom/sgscq/vpn/battle/BattleResult;->success:Z

    const/4 p1, 0x0

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sgscq/vpn/battle/BattleResult;->roundCount:I

    return-void
.end method

.method public static fromRuntime(Ljava/util/Map;Ljava/util/List;ZI)Lcom/sgscq/vpn/battle/BattleResult;
    .locals 1
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
            "Lcom/sgscq/vpn/battle/BattleResult;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    move-object p0, v0

    :goto_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    :goto_1
    new-instance v0, Lcom/sgscq/vpn/battle/BattleResult;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sgscq/vpn/battle/BattleResult;-><init>(Ljava/util/Map;Ljava/util/List;ZI)V

    return-object v0
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

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleResult;->fightInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getRoundCount()I
    .locals 1

    iget v0, p0, Lcom/sgscq/vpn/battle/BattleResult;->roundCount:I

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

    iget-object v0, p0, Lcom/sgscq/vpn/battle/BattleResult;->rounds:Ljava/util/List;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sgscq/vpn/battle/BattleResult;->success:Z

    return v0
.end method
