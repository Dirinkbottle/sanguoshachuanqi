.class public final Lcom/sgscq/battle/api/BattleRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final canonicalPayload:[B

.field private final maxRounds:I

.field private final transient migrationPayload:Ljava/lang/Object;

.field private final mode:Ljava/lang/String;

.field private final seed:J


# direct methods
.method private constructor <init>(Ljava/lang/String;[BJILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/sgscq/battle/api/BattleRequest;->mode:Ljava/lang/String;

    if-nez p2, :cond_1

    const/4 p1, 0x0

    new-array p1, p1, [B

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lcom/sgscq/battle/api/BattleRequest;->canonicalPayload:[B

    iput-wide p3, p0, Lcom/sgscq/battle/api/BattleRequest;->seed:J

    const/4 p1, 0x1

    invoke-static {p1, p5}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sgscq/battle/api/BattleRequest;->maxRounds:I

    iput-object p6, p0, Lcom/sgscq/battle/api/BattleRequest;->migrationPayload:Ljava/lang/Object;

    return-void
.end method

.method public static canonical(Ljava/lang/String;[BJI)Lcom/sgscq/battle/api/BattleRequest;
    .locals 8

    new-instance v7, Lcom/sgscq/battle/api/BattleRequest;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/sgscq/battle/api/BattleRequest;-><init>(Ljava/lang/String;[BJILjava/lang/Object;)V

    return-object v7
.end method

.method public static forMigration(Ljava/lang/String;Ljava/lang/Object;I)Lcom/sgscq/battle/api/BattleRequest;
    .locals 8

    new-instance v7, Lcom/sgscq/battle/api/BattleRequest;

    const/4 v0, 0x0

    new-array v2, v0, [B

    const-wide/16 v3, 0x0

    move-object v0, v7

    move-object v1, p0

    move v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sgscq/battle/api/BattleRequest;-><init>(Ljava/lang/String;[BJILjava/lang/Object;)V

    return-object v7
.end method

.method public static forTest(Ljava/lang/String;)Lcom/sgscq/battle/api/BattleRequest;
    .locals 8

    new-instance v7, Lcom/sgscq/battle/api/BattleRequest;

    const/4 v0, 0x0

    new-array v2, v0, [B

    const-wide/16 v3, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sgscq/battle/api/BattleRequest;-><init>(Ljava/lang/String;[BJILjava/lang/Object;)V

    return-object v7
.end method


# virtual methods
.method public getCanonicalPayload()[B
    .locals 1

    iget-object v0, p0, Lcom/sgscq/battle/api/BattleRequest;->canonicalPayload:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getMaxRounds()I
    .locals 1

    iget v0, p0, Lcom/sgscq/battle/api/BattleRequest;->maxRounds:I

    return v0
.end method

.method public getMigrationPayload()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/battle/api/BattleRequest;->migrationPayload:Ljava/lang/Object;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sgscq/battle/api/BattleRequest;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getSeed()J
    .locals 2

    iget-wide v0, p0, Lcom/sgscq/battle/api/BattleRequest;->seed:J

    return-wide v0
.end method
