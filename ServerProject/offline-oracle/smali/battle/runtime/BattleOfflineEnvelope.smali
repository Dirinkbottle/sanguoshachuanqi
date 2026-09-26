.class public final Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GSON:La/o;


# instance fields
.field public final ciphertextSha256:Ljava/lang/String;

.field public final encryptedDex:[B

.field public final manifestSha256:Ljava/lang/String;

.field public final permitPayload:[B

.field public final permitSignature:[B

.field public final plaintextSha256:Ljava/lang/String;

.field public final wrappedContentKey:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, La/o;

    invoke-direct {v0}, La/o;-><init>()V

    sput-object v0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->GSON:La/o;

    return-void
.end method

.method public constructor <init>([B[B[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->encryptedDex:[B

    invoke-static {p2}, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->wrappedContentKey:[B

    invoke-static {p3}, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->permitPayload:[B

    invoke-static {p4}, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->permitSignature:[B

    invoke-static {p5}, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->ciphertextSha256:Ljava/lang/String;

    invoke-static {p6}, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->plaintextSha256:Ljava/lang/String;

    invoke-static {p7}, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->manifestSha256:Ljava/lang/String;

    return-void
.end method

.method private static clone([B)[B
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [B

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    :goto_0
    return-object p0
.end method

.method public static decode([B)Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;
    .locals 9

    const-string v0, "offline_cache_invalid"

    if-eqz p0, :cond_1

    array-length v1, p0

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->GSON:La/o;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-class p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;

    invoke-virtual {v1, v2, p0}, La/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;

    iget-object v2, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->encryptedDex:[B

    iget-object v3, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->wrappedContentKey:[B

    iget-object v4, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->permitPayload:[B

    iget-object v5, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->permitSignature:[B

    iget-object v6, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->ciphertextSha256:Ljava/lang/String;

    iget-object v7, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->plaintextSha256:Ljava/lang/String;

    iget-object v8, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->manifestSha256:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;-><init>([B[B[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static safe(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method


# virtual methods
.method public encode()[B
    .locals 2

    sget-object v0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->GSON:La/o;

    invoke-virtual {v0, p0}, La/o;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;

    iget-object v0, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->encryptedDex:[B

    iget-object v2, p1, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->encryptedDex:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->wrappedContentKey:[B

    iget-object v2, p1, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->wrappedContentKey:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->permitPayload:[B

    iget-object v2, p1, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->permitPayload:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->permitSignature:[B

    iget-object v2, p1, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->permitSignature:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->ciphertextSha256:Ljava/lang/String;

    iget-object v2, p1, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->ciphertextSha256:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->plaintextSha256:Ljava/lang/String;

    iget-object v2, p1, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->plaintextSha256:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->manifestSha256:Ljava/lang/String;

    iget-object p1, p1, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->manifestSha256:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->encryptedDex:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->ciphertextSha256:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
