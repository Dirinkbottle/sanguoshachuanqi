.class public interface abstract Lcom/sgscq/battle/api/BattleRuntime;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public initialize([B)V
    .locals 0

    return-void
.end method

.method public integrityAttest(Lcom/sgscq/battle/api/IntegrityAttestRequest;)Lcom/sgscq/battle/api/IntegrityAttestResponse;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract simulate(Lcom/sgscq/battle/api/BattleRequest;)Lcom/sgscq/battle/api/BattleResponse;
.end method

.method public abstract status()Lcom/sgscq/battle/api/BattleRuntimeStatus;
.end method
