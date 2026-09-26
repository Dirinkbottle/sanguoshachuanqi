.class public final Lo/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sgscq/battle/api/BattleRuntime;


# instance fields
.field public final synthetic a:Lcom/sgscq/battle/api/BattleRuntimeStatus;


# direct methods
.method public constructor <init>(Lcom/sgscq/battle/api/BattleRuntimeStatus;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/g;->a:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final simulate(Lcom/sgscq/battle/api/BattleRequest;)Lcom/sgscq/battle/api/BattleResponse;
    .locals 0

    .line 1
    iget-object p1, p0, Lo/g;->a:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    invoke-static {p1}, Lcom/sgscq/battle/api/BattleResponse;->unavailable(Lcom/sgscq/battle/api/BattleRuntimeStatus;)Lcom/sgscq/battle/api/BattleResponse;

    move-result-object p1

    return-object p1
.end method

.method public final status()Lcom/sgscq/battle/api/BattleRuntimeStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/g;->a:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    return-object v0
.end method
