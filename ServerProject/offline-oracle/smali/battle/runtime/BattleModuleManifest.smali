.class public final Lcom/sgscq/vpn/battle/runtime/BattleModuleManifest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final apiVersion:I
    .annotation runtime Lb/b;
        value = "api_version"
    .end annotation
.end field

.field public final dexSha256:Ljava/lang/String;
    .annotation runtime Lb/b;
        value = "dex_sha256"
    .end annotation
.end field

.field public final environment:Ljava/lang/String;
    .annotation runtime Lb/b;
        value = "environment"
    .end annotation
.end field

.field public final nativeHashes:Ljava/util/Map;
    .annotation runtime Lb/b;
        value = "native"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final schema:I
    .annotation runtime Lb/b;
        value = "schema"
    .end annotation
.end field

.field public final versionCode:I
    .annotation runtime Lb/b;
        value = "version_code"
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/util/Map;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sgscq/vpn/battle/runtime/BattleModuleManifest;->schema:I

    const-string p1, ""

    if-nez p2, :cond_0

    move-object p2, p1

    :cond_0
    iput-object p2, p0, Lcom/sgscq/vpn/battle/runtime/BattleModuleManifest;->environment:Ljava/lang/String;

    iput p3, p0, Lcom/sgscq/vpn/battle/runtime/BattleModuleManifest;->versionCode:I

    if-nez p4, :cond_1

    move-object p4, p1

    :cond_1
    iput-object p4, p0, Lcom/sgscq/vpn/battle/runtime/BattleModuleManifest;->dexSha256:Ljava/lang/String;

    if-nez p5, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1, p5}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/sgscq/vpn/battle/runtime/BattleModuleManifest;->nativeHashes:Ljava/util/Map;

    iput p6, p0, Lcom/sgscq/vpn/battle/runtime/BattleModuleManifest;->apiVersion:I

    return-void
.end method

.method public static forOfflineDex(Ljava/lang/String;ILjava/lang/String;)Lcom/sgscq/vpn/battle/runtime/BattleModuleManifest;
    .locals 8

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "[0-9a-fA-F]{64}"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sgscq/vpn/battle/runtime/BattleModuleManifest;

    const/4 v2, 0x1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    const/4 v7, 0x1

    move-object v1, v0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/sgscq/vpn/battle/runtime/BattleModuleManifest;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/util/Map;I)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "manifest_invalid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/sgscq/vpn/battle/runtime/BattleModuleManifest;
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, La/o;

    invoke-direct {v0}, La/o;-><init>()V

    const-class v1, Lcom/sgscq/vpn/battle/runtime/BattleModuleManifest;

    invoke-virtual {v0, p0, v1}, La/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sgscq/vpn/battle/runtime/BattleModuleManifest;

    if-eqz p0, :cond_0

    iget v0, p0, Lcom/sgscq/vpn/battle/runtime/BattleModuleManifest;->schema:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sgscq/vpn/battle/runtime/BattleModuleManifest;->apiVersion:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sgscq/vpn/battle/runtime/BattleModuleManifest;->environment:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sgscq/vpn/battle/runtime/BattleModuleManifest;->versionCode:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sgscq/vpn/battle/runtime/BattleModuleManifest;->dexSha256:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sgscq/vpn/battle/runtime/BattleModuleManifest;->nativeHashes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "manifest_invalid"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "manifest_empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
