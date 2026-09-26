.class public Lcom/sgscq/vpn/SgscqVpnService;
.super Landroid/net/VpnService;
.source "SourceFile"


# static fields
.field public static volatile m:Z = false

.field public static volatile n:Lcom/sgscq/vpn/e3;

.field public static o:Lcom/sgscq/vpn/u6;

.field public static p:I


# instance fields
.field public a:Lcom/sgscq/vpn/cloud/c0;

.field public b:Landroid/os/ParcelFileDescriptor;

.field public c:Ljava/io/FileInputStream;

.field public d:Ljava/io/FileOutputStream;

.field public volatile e:Z

.field public volatile f:J

.field public g:Lcom/sgscq/vpn/y2;

.field public h:Lcom/sgscq/vpn/a1;

.field public i:Lcom/sgscq/vpn/m2;

.field public final j:Ljava/lang/Object;

.field public final k:Ljava/util/Random;

.field public final l:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/net/VpnService;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sgscq/vpn/SgscqVpnService;->e:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/SgscqVpnService;->j:Ljava/lang/Object;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/SgscqVpnService;->k:Ljava/util/Random;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/SgscqVpnService;->l:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a(Lcom/sgscq/vpn/SgscqVpnService;IIIIIII[B)[B
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    if-eqz p8, :cond_0

    .line 1
    array-length v0, p8

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    add-int/lit8 v1, v0, 0x28

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/16 v3, 0x45

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-short v1, v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/16 v1, 0x4000

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/16 v1, 0x40

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x6

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    int-to-short p1, p2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    int-to-short p1, p4

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/16 p1, 0x50

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte p1, p7

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 p1, -0x1

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    if-eqz p8, :cond_1

    invoke-virtual {v2, p8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/SgscqVpnService;->l([B)I

    move-result p1

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/16 p3, 0xa

    aput-byte p2, p0, p3

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/16 p2, 0xb

    aput-byte p1, p0, p2

    add-int/lit8 v0, v0, 0x14

    invoke-static {v0, p0}, Lcom/sgscq/vpn/SgscqVpnService;->g(I[B)I

    move-result p1

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/16 p3, 0x24

    aput-byte p2, p0, p3

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/16 p2, 0x25

    aput-byte p1, p0, p2

    return-object p0
.end method

.method public static b()[B
    .locals 13

    .line 1
    const/16 v0, 0xc

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    const-string v2, "\\."

    const-string v3, "sgscqtv.bfun.cn"

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x15

    new-array v3, v3, [B

    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v8, v2, v6

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v3, v7

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    array-length v8, v7

    move v10, v5

    :goto_1
    if-ge v10, v8, :cond_0

    aget-char v11, v7, v10

    add-int/lit8 v12, v9, 0x1

    int-to-byte v11, v11

    aput-byte v11, v3, v9

    add-int/lit8 v10, v10, 0x1

    move v9, v12

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    move v7, v9

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v7, 0x1

    aput-byte v5, v3, v7

    add-int/lit8 v4, v2, 0x1

    aput-byte v5, v3, v2

    add-int/lit8 v2, v4, 0x1

    const/4 v6, 0x1

    aput-byte v6, v3, v4

    add-int/lit8 v4, v2, 0x1

    aput-byte v5, v3, v2

    add-int/lit8 v2, v4, 0x1

    aput-byte v6, v3, v4

    add-int v4, v0, v2

    new-array v4, v4, [B

    invoke-static {v1, v5, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, v5, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    nop

    :array_0
    .array-data 1
        0x12t
        0x34t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static c([B[B)[B
    .locals 5

    .line 1
    array-length v0, p1

    const/16 v1, 0x30

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v2, 0x60

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {v0, p0, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    array-length v2, p1

    const/16 v3, 0x8

    add-int/2addr v2, v3

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x18

    const/16 v4, 0x10

    invoke-virtual {v0, p0, v2, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const/16 v2, 0x35

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    array-length p0, p1

    add-int/2addr p0, v3

    int-to-short p0, p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static d(II[B)[B
    .locals 3

    .line 1
    array-length v0, p2

    add-int/lit8 v0, v0, 0x1c

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/16 v2, 0x45

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/16 v0, 0x4000

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/16 v0, 0x40

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const v0, 0xa000002

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/16 p0, 0x35

    int-to-short p0, p0

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    int-to-short p0, p1

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    array-length p0, p2

    add-int/lit8 p0, p0, 0x8

    int-to-short p0, p0

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/SgscqVpnService;->l([B)I

    move-result p1

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/16 v1, 0xa

    aput-byte v0, p0, v1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/16 v0, 0xb

    aput-byte p1, p0, v0

    array-length p1, p2

    add-int/lit8 p1, p1, 0x8

    invoke-static {p1, p0}, Lcom/sgscq/vpn/SgscqVpnService;->g(I[B)I

    move-result p1

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/16 v0, 0x1a

    aput-byte p2, p0, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/16 p2, 0x1b

    aput-byte p1, p0, p2

    return-object p0
.end method

.method public static e(I[B)Z
    .locals 7

    .line 1
    const/16 v0, 0xc

    :goto_0
    const/16 v1, 0xc0

    const/4 v2, 0x1

    if-ge v0, p0, :cond_1

    aget-byte v3, p1, v0

    if-eqz v3, :cond_1

    and-int/lit16 v4, v3, 0xc0

    if-ne v4, v1, :cond_0

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_0
    and-int/lit16 v1, v3, 0xff

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v0, p0, :cond_2

    aget-byte v3, p1, v0

    if-nez v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    const/4 v3, 0x4

    add-int/2addr v0, v3

    :goto_2
    add-int/lit8 v4, v0, 0xa

    if-gt v4, p0, :cond_7

    aget-byte v4, p1, v0

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    :cond_3
    :goto_3
    if-ge v0, p0, :cond_4

    aget-byte v4, p1, v0

    if-eqz v4, :cond_4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v2

    add-int/2addr v0, v4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    :goto_4
    add-int/lit8 v4, v0, 0x8

    if-le v4, p0, :cond_5

    goto :goto_5

    :cond_5
    aget-byte v5, p1, v0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, v0, 0x9

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    add-int/lit8 v0, v0, 0xa

    if-ne v5, v2, :cond_6

    if-ne v4, v3, :cond_6

    add-int/lit8 v5, v0, 0x4

    if-gt v5, p0, :cond_6

    return v2

    :cond_6
    add-int/2addr v0, v4

    goto :goto_2

    :cond_7
    :goto_5
    const/4 p0, 0x0

    return p0
.end method

.method public static g(I[B)I
    .locals 6

    .line 1
    const/16 v0, 0xc

    invoke-static {v0, p1}, Lcom/sgscq/vpn/SgscqVpnService;->p(I[B)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v1, p1}, Lcom/sgscq/vpn/SgscqVpnService;->p(I[B)I

    move-result v1

    shr-int/lit8 v2, v0, 0x10

    const v3, 0xffff

    and-int/2addr v2, v3

    const/4 v4, 0x0

    add-int/2addr v2, v4

    and-int/2addr v0, v3

    add-int/2addr v2, v0

    shr-int/lit8 v0, v1, 0x10

    and-int/2addr v0, v3

    add-int/2addr v2, v0

    and-int v0, v1, v3

    add-int/2addr v2, v0

    const/16 v0, 0x9

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v2, v0

    add-int/2addr v2, p0

    :goto_0
    if-ge v4, p0, :cond_1

    const/16 v0, 0x14

    add-int/2addr v0, v4

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v5, v4, 0x1

    if-ge v5, p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v1, v0

    :cond_0
    add-int/2addr v2, v1

    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_1
    :goto_1
    shr-int/lit8 p0, v2, 0x10

    if-eqz p0, :cond_2

    and-int p1, v2, v3

    add-int v2, p1, p0

    goto :goto_1

    :cond_2
    not-int p0, v2

    and-int/2addr p0, v3

    return p0
.end method

.method public static h([BII)Ljava/lang/String;
    .locals 4

    .line 1
    add-int/lit8 p1, p1, 0xc

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-ge p1, p2, :cond_4

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/16 v2, 0x40

    if-lt v1, v2, :cond_1

    const-string p0, "(ptr)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    const/4 v2, 0x1

    :goto_1
    if-gt v2, v1, :cond_3

    add-int v3, p1, v2

    if-ge v3, p2, :cond_3

    aget-byte v3, p0, v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    add-int/2addr p1, v1

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "?"

    return-object p0
.end method

.method public static i([BII)I
    .locals 3

    .line 1
    add-int/lit8 p1, p1, 0xc

    :goto_0
    add-int/lit8 v0, p1, 0x4

    if-ge v0, p2, :cond_2

    :try_start_0
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    add-int/lit8 p2, p1, 0x1

    aget-byte p2, p0, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    add-int/lit8 p1, p1, 0x2

    aget-byte p0, p0, p1

    goto :goto_1

    :cond_0
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_1

    add-int/lit8 p2, p1, 0x2

    aget-byte p2, p0, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p2

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/2addr p1, v0

    goto :goto_0

    :catch_0
    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static j()Lcom/sgscq/vpn/u6;
    .locals 1

    .line 1
    sget-object v0, Lcom/sgscq/vpn/SgscqVpnService;->o:Lcom/sgscq/vpn/u6;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sgscq/vpn/u6;

    invoke-direct {v0}, Lcom/sgscq/vpn/u6;-><init>()V

    sput-object v0, Lcom/sgscq/vpn/SgscqVpnService;->o:Lcom/sgscq/vpn/u6;

    :cond_0
    sget-object v0, Lcom/sgscq/vpn/SgscqVpnService;->o:Lcom/sgscq/vpn/u6;

    return-object v0
.end method

.method public static l([B)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0x4

    move v2, v0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    add-int v4, v0, v2

    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v2, 0x1

    if-ge v6, v1, :cond_0

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v5, v4

    :cond_0
    const/16 v4, 0xa

    if-ne v2, v4, :cond_1

    move v5, v0

    :cond_1
    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    :goto_1
    shr-int/lit8 p0, v3, 0x10

    const v0, 0xffff

    if-eqz p0, :cond_3

    and-int/2addr v0, v3

    add-int v3, v0, p0

    goto :goto_1

    :cond_3
    not-int p0, v3

    and-int/2addr p0, v0

    return p0
.end method

.method public static m(I)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n([BII)[B
    .locals 3

    .line 1
    sub-int/2addr p2, p1

    add-int/lit8 v0, p2, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x2

    const/16 p1, -0x7f

    aput-byte p1, v0, p0

    const/4 p0, 0x3

    const/16 p1, -0x80

    aput-byte p1, v0, p0

    const/4 p0, 0x7

    const/4 p1, 0x1

    aput-byte p1, v0, p0

    add-int/lit8 p0, p2, 0x1

    const/16 v2, -0x40

    aput-byte v2, v0, p2

    add-int/lit8 p2, p0, 0x1

    const/16 v2, 0xc

    aput-byte v2, v0, p0

    add-int/lit8 p0, p2, 0x1

    aput-byte v1, v0, p2

    add-int/lit8 p2, p0, 0x1

    aput-byte p1, v0, p0

    add-int/lit8 p0, p2, 0x1

    aput-byte v1, v0, p2

    add-int/lit8 p2, p0, 0x1

    aput-byte p1, v0, p0

    add-int/lit8 p0, p2, 0x1

    aput-byte v1, v0, p2

    add-int/lit8 p1, p0, 0x1

    aput-byte v1, v0, p0

    add-int/lit8 p0, p1, 0x1

    aput-byte v1, v0, p1

    add-int/lit8 p1, p0, 0x1

    const/16 p2, 0x3c

    aput-byte p2, v0, p0

    add-int/lit8 p0, p1, 0x1

    aput-byte v1, v0, p1

    add-int/lit8 p1, p0, 0x1

    const/4 p2, 0x4

    aput-byte p2, v0, p0

    add-int/lit8 p0, p1, 0x1

    const/16 p2, 0xa

    aput-byte p2, v0, p1

    add-int/lit8 p1, p0, 0x1

    aput-byte v1, v0, p0

    add-int/lit8 p0, p1, 0x1

    aput-byte v1, v0, p1

    add-int/lit8 p1, p0, 0x1

    const/16 p2, 0x64

    aput-byte p2, v0, p0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static o(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/sgscq/vpn/SgscqVpnService;->n:Lcom/sgscq/vpn/e3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    sget v1, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 6
    .line 7
    iget-object v0, v0, Lcom/sgscq/vpn/e3;->b:Lcom/sgscq/vpn/MainActivity;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/sgscq/vpn/j3;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, v0, p0, v2}, Lcom/sgscq/vpn/j3;-><init>(Ljava/lang/Object;ZI)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    :catch_0
    :cond_0
    return-void
.end method

.method public static p(I[B)I
    .locals 1

    .line 1
    const/4 v0, 0x4

    invoke-static {p1, p0, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/SgscqVpnService;->l:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/sgscq/vpn/r6;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/sgscq/vpn/r6;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/sgscq/vpn/SgscqVpnService;->l:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/sgscq/vpn/SgscqVpnService;->h:Lcom/sgscq/vpn/a1;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iput-boolean v1, v0, Lcom/sgscq/vpn/a1;->b:Z

    .line 26
    .line 27
    sput-boolean v1, Lcom/sgscq/vpn/a1;->d:Z

    .line 28
    .line 29
    sput v1, Lcom/sgscq/vpn/a1;->e:I

    .line 30
    .line 31
    iget-object v2, v0, Lcom/sgscq/vpn/a1;->a:Ljava/net/DatagramSocket;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    :try_start_0
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    :catch_0
    iput-object v3, v0, Lcom/sgscq/vpn/a1;->a:Ljava/net/DatagramSocket;

    .line 40
    .line 41
    :cond_0
    const-string v0, "SGSCQ_DNS"

    .line 42
    .line 43
    const-string v2, "DNS stopped"

    .line 44
    .line 45
    invoke-static {v0, v2}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iput-object v3, p0, Lcom/sgscq/vpn/SgscqVpnService;->h:Lcom/sgscq/vpn/a1;

    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Lcom/sgscq/vpn/SgscqVpnService;->g:Lcom/sgscq/vpn/y2;

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    iput-boolean v1, v0, Lcom/sgscq/vpn/y2;->a:Z

    .line 55
    .line 56
    iget-object v1, v0, Lcom/sgscq/vpn/y2;->S:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :catch_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Ljava/net/ServerSocket;

    .line 73
    .line 74
    :try_start_1
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    iget-object v1, v0, Lcom/sgscq/vpn/y2;->S:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 81
    .line 82
    .line 83
    iget-object v1, v0, Lcom/sgscq/vpn/y2;->T:Ljava/util/concurrent/ExecutorService;

    .line 84
    .line 85
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    iget-object v1, v0, Lcom/sgscq/vpn/y2;->P:Lcom/sgscq/vpn/cloud/b;

    .line 89
    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/sgscq/vpn/cloud/b;->close()V

    .line 93
    .line 94
    .line 95
    :cond_3
    iget-object v0, v0, Lcom/sgscq/vpn/y2;->f:Lcom/sgscq/vpn/h5;

    .line 96
    .line 97
    iget-object v0, v0, Lcom/sgscq/vpn/h5;->b:Lcom/sgscq/vpn/z4;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/sgscq/vpn/z4;->close()V

    .line 100
    .line 101
    .line 102
    const-string v0, "SGSCQ_SRV"

    .line 103
    .line 104
    const-string v1, "Server stopped"

    .line 105
    .line 106
    invoke-static {v0, v1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/sgscq/vpn/SgscqVpnService;->b:Landroid/os/ParcelFileDescriptor;

    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 112
    .line 113
    .line 114
    :catch_2
    const-string v0, "SGSCQ_VPN"

    .line 115
    .line 116
    const-string v1, "VPN stopped"

    .line 117
    .line 118
    invoke-static {v0, v1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public final k(I[B)V
    .locals 11

    .line 1
    const/16 v0, 0x28

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x6

    .line 7
    aget-byte v2, p2, v1

    .line 8
    .line 9
    and-int/lit16 v2, v2, 0xff

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x3

    .line 13
    const/16 v5, 0x11

    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    const/16 v7, 0x35

    .line 17
    .line 18
    const/16 v8, 0x2b

    .line 19
    .line 20
    const/16 v9, 0x2a

    .line 21
    .line 22
    const/16 v10, 0x8

    .line 23
    .line 24
    if-ne v2, v5, :cond_2

    .line 25
    .line 26
    const/16 v5, 0x30

    .line 27
    .line 28
    if-lt p1, v5, :cond_2

    .line 29
    .line 30
    aget-byte v0, p2, v9

    .line 31
    .line 32
    and-int/lit16 v0, v0, 0xff

    .line 33
    .line 34
    shl-int/2addr v0, v10

    .line 35
    aget-byte v2, p2, v8

    .line 36
    .line 37
    and-int/lit16 v2, v2, 0xff

    .line 38
    .line 39
    or-int/2addr v0, v2

    .line 40
    if-ne v0, v7, :cond_3

    .line 41
    .line 42
    invoke-static {p2, v5, p1}, Lcom/sgscq/vpn/SgscqVpnService;->h([BII)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {p2, v5, p1}, Lcom/sgscq/vpn/SgscqVpnService;->i([BII)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    iget-object v7, p0, Lcom/sgscq/vpn/SgscqVpnService;->i:Lcom/sgscq/vpn/m2;

    .line 51
    .line 52
    invoke-virtual {v7, v0}, Lcom/sgscq/vpn/m2;->c(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-eqz v7, :cond_3

    .line 57
    .line 58
    const/16 v7, 0x1c

    .line 59
    .line 60
    const-string v8, "DNS6 ["

    .line 61
    .line 62
    if-ne v2, v7, :cond_1

    .line 63
    .line 64
    sub-int/2addr p1, v5

    .line 65
    new-array v2, p1, [B

    .line 66
    .line 67
    invoke-static {p2, v5, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    .line 69
    .line 70
    const/16 p1, -0x7f

    .line 71
    .line 72
    const/4 v5, 0x2

    .line 73
    aput-byte p1, v2, v5

    .line 74
    .line 75
    const/16 p1, -0x80

    .line 76
    .line 77
    aput-byte p1, v2, v4

    .line 78
    .line 79
    aput-byte v3, v2, v1

    .line 80
    .line 81
    const/4 p1, 0x7

    .line 82
    aput-byte v3, v2, p1

    .line 83
    .line 84
    invoke-static {p2, v2}, Lcom/sgscq/vpn/SgscqVpnService;->c([B[B)[B

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/SgscqVpnService;->r([B)V

    .line 89
    .line 90
    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p2, "] AAAA \u2192 empty"

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    if-ne v2, v6, :cond_3

    .line 103
    .line 104
    invoke-static {p2, v5, p1}, Lcom/sgscq/vpn/SgscqVpnService;->n([BII)[B

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {p2, p1}, Lcom/sgscq/vpn/SgscqVpnService;->c([B[B)[B

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/SgscqVpnService;->r([B)V

    .line 113
    .line 114
    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string p2, "] A \u2192 "

    .line 124
    .line 125
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const p2, 0xa000064

    .line 129
    .line 130
    .line 131
    invoke-static {p2}, Lcom/sgscq/vpn/SgscqVpnService;->m(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    goto/16 :goto_1

    .line 143
    .line 144
    :cond_2
    if-ne v2, v1, :cond_3

    .line 145
    .line 146
    const/16 v2, 0x3c

    .line 147
    .line 148
    if-lt p1, v2, :cond_3

    .line 149
    .line 150
    aget-byte p1, p2, v7

    .line 151
    .line 152
    and-int/lit16 p1, p1, 0xff

    .line 153
    .line 154
    and-int/lit8 v5, p1, 0x2

    .line 155
    .line 156
    if-eqz v5, :cond_3

    .line 157
    .line 158
    const/16 v5, 0x10

    .line 159
    .line 160
    and-int/2addr p1, v5

    .line 161
    if-nez p1, :cond_3

    .line 162
    .line 163
    aget-byte p1, p2, v0

    .line 164
    .line 165
    and-int/lit16 p1, p1, 0xff

    .line 166
    .line 167
    shl-int/2addr p1, v10

    .line 168
    const/16 v0, 0x29

    .line 169
    .line 170
    aget-byte v0, p2, v0

    .line 171
    .line 172
    and-int/lit16 v0, v0, 0xff

    .line 173
    .line 174
    or-int/2addr p1, v0

    .line 175
    aget-byte v0, p2, v9

    .line 176
    .line 177
    and-int/lit16 v0, v0, 0xff

    .line 178
    .line 179
    shl-int/2addr v0, v10

    .line 180
    aget-byte v7, p2, v8

    .line 181
    .line 182
    and-int/lit16 v7, v7, 0xff

    .line 183
    .line 184
    or-int/2addr v0, v7

    .line 185
    const/16 v7, 0x2c

    .line 186
    .line 187
    invoke-static {v7, p2}, Lcom/sgscq/vpn/SgscqVpnService;->p(I[B)I

    .line 188
    .line 189
    .line 190
    move-result v7

    .line 191
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    const/16 v8, 0x60

    .line 196
    .line 197
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, p2, v6, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 201
    .line 202
    .line 203
    const/16 v4, 0x14

    .line 204
    .line 205
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 209
    .line 210
    .line 211
    const/16 v1, 0x40

    .line 212
    .line 213
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 214
    .line 215
    .line 216
    const/16 v1, 0x18

    .line 217
    .line 218
    invoke-virtual {v2, p2, v1, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, p2, v10, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 222
    .line 223
    .line 224
    int-to-short p2, v0

    .line 225
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 226
    .line 227
    .line 228
    int-to-short p2, p1

    .line 229
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 233
    .line 234
    .line 235
    add-int/2addr v7, v6

    .line 236
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 237
    .line 238
    .line 239
    const/16 p2, 0x50

    .line 240
    .line 241
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    invoke-virtual {p0, p2}, Lcom/sgscq/vpn/SgscqVpnService;->r([B)V

    .line 261
    .line 262
    .line 263
    new-instance p2, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    const-string v1, "TCP6 RST src="

    .line 266
    .line 267
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string p1, " dst="

    .line 274
    .line 275
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    :goto_1
    const-string p2, "SGSCQ_VPN"

    .line 286
    .line 287
    invoke-static {p2, p1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    :cond_3
    return-void
.end method

.method public final onDestroy()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/SgscqVpnService;->a:Lcom/sgscq/vpn/cloud/c0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/c0;->close()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/sgscq/vpn/SgscqVpnService;->a:Lcom/sgscq/vpn/cloud/c0;

    .line 11
    .line 12
    :goto_0
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/sgscq/vpn/SgscqVpnService;->e:Z

    .line 14
    .line 15
    iget-wide v1, p0, Lcom/sgscq/vpn/SgscqVpnService;->f:J

    .line 16
    .line 17
    const-wide/16 v3, 0x1

    .line 18
    .line 19
    add-long/2addr v1, v3

    .line 20
    iput-wide v1, p0, Lcom/sgscq/vpn/SgscqVpnService;->f:J

    .line 21
    .line 22
    sput-boolean v0, Lcom/sgscq/vpn/SgscqVpnService;->m:Z

    .line 23
    .line 24
    sget-boolean v1, Lcom/sgscq/vpn/n0;->d:Z

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Lcom/sgscq/vpn/n0;->r(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "session"

    .line 42
    .line 43
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "session_tail"

    .line 48
    .line 49
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 54
    .line 55
    .line 56
    :goto_1
    invoke-virtual {p0}, Lcom/sgscq/vpn/SgscqVpnService;->f()V

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lcom/sgscq/vpn/SgscqVpnService;->o(Z)V

    .line 60
    .line 61
    .line 62
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 12

    .line 1
    const/4 p2, 0x2

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return p2

    .line 5
    :cond_0
    const-string p3, "STOP"

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 p3, 0x0

    .line 16
    const-wide/16 v0, 0x1

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iput-boolean p3, p0, Lcom/sgscq/vpn/SgscqVpnService;->e:Z

    .line 21
    .line 22
    iget-wide v2, p0, Lcom/sgscq/vpn/SgscqVpnService;->f:J

    .line 23
    .line 24
    add-long/2addr v2, v0

    .line 25
    iput-wide v2, p0, Lcom/sgscq/vpn/SgscqVpnService;->f:J

    .line 26
    .line 27
    sput-boolean p3, Lcom/sgscq/vpn/SgscqVpnService;->m:Z

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/sgscq/vpn/SgscqVpnService;->f()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 33
    .line 34
    .line 35
    invoke-static {p3}, Lcom/sgscq/vpn/SgscqVpnService;->o(Z)V

    .line 36
    .line 37
    .line 38
    return p2

    .line 39
    :cond_1
    sget-boolean p1, Lcom/sgscq/vpn/SgscqVpnService;->m:Z

    .line 40
    .line 41
    const/4 p2, 0x1

    .line 42
    const-string v2, "SGSCQ_VPN"

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    const-string p1, "Already running"

    .line 47
    .line 48
    invoke-static {v2, p1}, Lcom/sgscq/vpn/z2;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return p2

    .line 52
    :cond_2
    iput-boolean p2, p0, Lcom/sgscq/vpn/SgscqVpnService;->e:Z

    .line 53
    .line 54
    sput-boolean p2, Lcom/sgscq/vpn/SgscqVpnService;->m:Z

    .line 55
    .line 56
    iget-object p1, p0, Lcom/sgscq/vpn/SgscqVpnService;->a:Lcom/sgscq/vpn/cloud/c0;

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    if-nez p1, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    invoke-virtual {p1}, Lcom/sgscq/vpn/cloud/c0;->close()V

    .line 63
    .line 64
    .line 65
    iput-object v3, p0, Lcom/sgscq/vpn/SgscqVpnService;->a:Lcom/sgscq/vpn/cloud/c0;

    .line 66
    .line 67
    :goto_0
    new-instance p1, Lcom/sgscq/vpn/cloud/c0;

    .line 68
    .line 69
    invoke-direct {p1, p0}, Lcom/sgscq/vpn/cloud/c0;-><init>(Landroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lcom/sgscq/vpn/SgscqVpnService;->a:Lcom/sgscq/vpn/cloud/c0;

    .line 73
    .line 74
    iget-boolean v4, p1, Lcom/sgscq/vpn/cloud/c0;->i:Z

    .line 75
    .line 76
    if-nez v4, :cond_5

    .line 77
    .line 78
    iget-object v4, p1, Lcom/sgscq/vpn/cloud/c0;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    .line 80
    invoke-virtual {v4, p3, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-nez v4, :cond_4

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    iget-object v5, p1, Lcom/sgscq/vpn/cloud/c0;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 88
    .line 89
    new-instance v6, Lcom/sgscq/vpn/b;

    .line 90
    .line 91
    const/16 v4, 0xd

    .line 92
    .line 93
    invoke-direct {v6, p1, v4}, Lcom/sgscq/vpn/b;-><init>(Ljava/lang/Object;I)V

    .line 94
    .line 95
    .line 96
    const-wide/16 v7, 0x1

    .line 97
    .line 98
    const-wide/16 v9, 0x1

    .line 99
    .line 100
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 101
    .line 102
    invoke-interface/range {v5 .. v11}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 103
    .line 104
    .line 105
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/Thread;

    .line 106
    .line 107
    new-instance v4, Lcom/sgscq/vpn/b;

    .line 108
    .line 109
    const/4 v5, 0x5

    .line 110
    invoke-direct {v4, p0, v5}, Lcom/sgscq/vpn/b;-><init>(Ljava/lang/Object;I)V

    .line 111
    .line 112
    .line 113
    const-string v6, "VpnLimitedInit"

    .line 114
    .line 115
    invoke-direct {p1, v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 119
    .line 120
    .line 121
    new-instance p1, Landroid/content/Intent;

    .line 122
    .line 123
    const-class v4, Lcom/sgscq/vpn/MainActivity;

    .line 124
    .line 125
    invoke-direct {p1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .line 127
    .line 128
    const/high16 v6, 0xc000000

    .line 129
    .line 130
    invoke-static {p0, p3, p1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 135
    .line 136
    const/16 v7, 0x1a

    .line 137
    .line 138
    if-lt v6, v7, :cond_6

    .line 139
    .line 140
    invoke-static {}, Lcom/sgscq/vpn/q1;->b()Landroid/app/NotificationChannel;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    invoke-static {v8}, Lcom/sgscq/vpn/q1;->h(Landroid/app/NotificationChannel;)V

    .line 145
    .line 146
    .line 147
    const-class v9, Landroid/app/NotificationManager;

    .line 148
    .line 149
    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    check-cast v9, Landroid/app/NotificationManager;

    .line 154
    .line 155
    if-eqz v9, :cond_6

    .line 156
    .line 157
    invoke-static {v9, v8}, Lcom/sgscq/vpn/q1;->i(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 158
    .line 159
    .line 160
    :cond_6
    if-lt v6, v7, :cond_7

    .line 161
    .line 162
    invoke-static {p0}, Lcom/sgscq/vpn/q1;->a(Landroid/content/Context;)Landroid/app/Notification$Builder;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    goto :goto_2

    .line 167
    :cond_7
    new-instance v7, Landroid/app/Notification$Builder;

    .line 168
    .line 169
    invoke-direct {v7, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 170
    .line 171
    .line 172
    :goto_2
    const/high16 v8, 0x7f030000

    .line 173
    .line 174
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    const-string v8, "\u4e09\u56fd\u6740\u4f20\u5947\u5355\u673a\u7248"

    .line 179
    .line 180
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    const-string v8, "VPN \u6b63\u5728\u8f6c\u53d1\u6e38\u620f\u8bf7\u6c42"

    .line 185
    .line 186
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    invoke-virtual {v7, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    const/16 v7, 0x22

    .line 207
    .line 208
    if-lt v6, v7, :cond_8

    .line 209
    .line 210
    :try_start_0
    invoke-static {p0, p1}, Lcom/sgscq/vpn/q6;->a(Lcom/sgscq/vpn/SgscqVpnService;Landroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .line 212
    .line 213
    goto :goto_3

    .line 214
    :catch_0
    move-exception v6

    .line 215
    new-instance v7, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    const-string v8, "systemExempted \u524d\u53f0\u670d\u52a1\u4e0d\u53ef\u7528\uff0c\u56de\u9000 specialUse: "

    .line 218
    .line 219
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    invoke-static {v2, v6}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    :cond_8
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 233
    .line 234
    const/16 v7, 0x1d

    .line 235
    .line 236
    if-lt v6, v7, :cond_9

    .line 237
    .line 238
    invoke-static {p0, p1}, Lcom/sgscq/vpn/q6;->b(Lcom/sgscq/vpn/SgscqVpnService;Landroid/app/Notification;)V

    .line 239
    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_9
    const/16 v6, 0x3e9

    .line 243
    .line 244
    invoke-virtual {p0, v6, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 245
    .line 246
    .line 247
    :goto_3
    const-string p1, "LocalServer on :"

    .line 248
    .line 249
    const-string v6, "Rules loaded: "

    .line 250
    .line 251
    iget-wide v7, p0, Lcom/sgscq/vpn/SgscqVpnService;->f:J

    .line 252
    .line 253
    add-long/2addr v7, v0

    .line 254
    iput-wide v7, p0, Lcom/sgscq/vpn/SgscqVpnService;->f:J

    .line 255
    .line 256
    :try_start_1
    const-string v0, "\u72b6\u6001: VPN \u542f\u52a8\u4e2d..."

    .line 257
    .line 258
    invoke-static {v2, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-static {}, Lcom/sgscq/vpn/z2;->f()V

    .line 262
    .line 263
    .line 264
    new-instance v0, Lcom/sgscq/vpn/m2;

    .line 265
    .line 266
    invoke-direct {v0, p0}, Lcom/sgscq/vpn/m2;-><init>(Landroid/content/Context;)V

    .line 267
    .line 268
    .line 269
    iput-object v0, p0, Lcom/sgscq/vpn/SgscqVpnService;->i:Lcom/sgscq/vpn/m2;

    .line 270
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    iget-object v1, p0, Lcom/sgscq/vpn/SgscqVpnService;->i:Lcom/sgscq/vpn/m2;

    .line 277
    .line 278
    iget-object v1, v1, Lcom/sgscq/vpn/m2;->a:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast v1, Ljava/util/Set;

    .line 281
    .line 282
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    const-string v1, " domains"

    .line 290
    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-static {v2, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    new-instance v0, Lcom/sgscq/vpn/y2;

    .line 302
    .line 303
    invoke-direct {v0, p0}, Lcom/sgscq/vpn/y2;-><init>(Landroid/content/Context;)V

    .line 304
    .line 305
    .line 306
    iput-object v0, p0, Lcom/sgscq/vpn/SgscqVpnService;->g:Lcom/sgscq/vpn/y2;

    .line 307
    .line 308
    iget v0, v0, Lcom/sgscq/vpn/y2;->W:I

    .line 309
    .line 310
    sput v0, Lcom/sgscq/vpn/SgscqVpnService;->p:I

    .line 311
    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    sget p1, Lcom/sgscq/vpn/SgscqVpnService;->p:I

    .line 318
    .line 319
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    invoke-static {v2, p1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    iget-object p1, p0, Lcom/sgscq/vpn/SgscqVpnService;->h:Lcom/sgscq/vpn/a1;

    .line 330
    .line 331
    if-eqz p1, :cond_b

    .line 332
    .line 333
    const-string p1, "Stopping old DNS server before restart..."

    .line 334
    .line 335
    invoke-static {v2, p1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    iget-object p1, p0, Lcom/sgscq/vpn/SgscqVpnService;->h:Lcom/sgscq/vpn/a1;

    .line 339
    .line 340
    iput-boolean p3, p1, Lcom/sgscq/vpn/a1;->b:Z

    .line 341
    .line 342
    sput-boolean p3, Lcom/sgscq/vpn/a1;->d:Z

    .line 343
    .line 344
    sput p3, Lcom/sgscq/vpn/a1;->e:I

    .line 345
    .line 346
    iget-object v0, p1, Lcom/sgscq/vpn/a1;->a:Ljava/net/DatagramSocket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 347
    .line 348
    if-eqz v0, :cond_a

    .line 349
    .line 350
    :try_start_2
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 351
    .line 352
    .line 353
    :catch_1
    :try_start_3
    iput-object v3, p1, Lcom/sgscq/vpn/a1;->a:Ljava/net/DatagramSocket;

    .line 354
    .line 355
    :cond_a
    const-string p1, "SGSCQ_DNS"

    .line 356
    .line 357
    const-string v0, "DNS stopped"

    .line 358
    .line 359
    invoke-static {p1, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    iput-object v3, p0, Lcom/sgscq/vpn/SgscqVpnService;->h:Lcom/sgscq/vpn/a1;

    .line 363
    .line 364
    :cond_b
    new-instance p1, Lcom/sgscq/vpn/a1;

    .line 365
    .line 366
    iget-object v0, p0, Lcom/sgscq/vpn/SgscqVpnService;->i:Lcom/sgscq/vpn/m2;

    .line 367
    .line 368
    invoke-direct {p1, v0}, Lcom/sgscq/vpn/a1;-><init>(Lcom/sgscq/vpn/m2;)V

    .line 369
    .line 370
    .line 371
    iput-object p1, p0, Lcom/sgscq/vpn/SgscqVpnService;->h:Lcom/sgscq/vpn/a1;

    .line 372
    .line 373
    invoke-virtual {p1}, Lcom/sgscq/vpn/a1;->e()Z

    .line 374
    .line 375
    .line 376
    move-result p1

    .line 377
    if-nez p1, :cond_c

    .line 378
    .line 379
    const-string p1, "DNS bind failed, VPN will use TUN-level DNS interception only"

    .line 380
    .line 381
    invoke-static {v2, p1}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    :cond_c
    new-instance p1, Landroid/net/VpnService$Builder;

    .line 385
    .line 386
    invoke-direct {p1, p0}, Landroid/net/VpnService$Builder;-><init>(Landroid/net/VpnService;)V

    .line 387
    .line 388
    .line 389
    const-string v0, "SGSCQ VPN"

    .line 390
    .line 391
    invoke-virtual {p1, v0}, Landroid/net/VpnService$Builder;->setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    const-string v0, "10.0.0.1"

    .line 396
    .line 397
    const/16 v1, 0x18

    .line 398
    .line 399
    invoke-virtual {p1, v0, v1}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 400
    .line 401
    .line 402
    move-result-object p1

    .line 403
    const-string v0, "0.0.0.0"

    .line 404
    .line 405
    invoke-virtual {p1, v0, p3}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    const-string v0, "10.0.0.2"

    .line 410
    .line 411
    invoke-virtual {p1, v0}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 412
    .line 413
    .line 414
    move-result-object p1

    .line 415
    const/16 v0, 0x5dc

    .line 416
    .line 417
    invoke-virtual {p1, v0}, Landroid/net/VpnService$Builder;->setMtu(I)Landroid/net/VpnService$Builder;

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    invoke-virtual {p1, p2}, Landroid/net/VpnService$Builder;->setBlocking(Z)Landroid/net/VpnService$Builder;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    new-instance v0, Landroid/content/Intent;

    .line 426
    .line 427
    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 428
    .line 429
    .line 430
    const/high16 v3, 0x4000000

    .line 431
    .line 432
    invoke-static {p0, p3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    invoke-virtual {p1, v0}, Landroid/net/VpnService$Builder;->setConfigureIntent(Landroid/app/PendingIntent;)Landroid/net/VpnService$Builder;

    .line 437
    .line 438
    .line 439
    move-result-object p1

    .line 440
    sget-object v0, Lcom/sgscq/vpn/p5;->f:[Ljava/lang/String;

    .line 441
    .line 442
    move v3, p3

    .line 443
    :goto_4
    if-ge v3, v5, :cond_d

    .line 444
    .line 445
    aget-object v4, v0, v3

    .line 446
    .line 447
    invoke-virtual {p1, v4}, Landroid/net/VpnService$Builder;->addAllowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 448
    .line 449
    .line 450
    add-int/lit8 v3, v3, 0x1

    .line 451
    .line 452
    goto :goto_4

    .line 453
    :cond_d
    invoke-virtual {p1}, Landroid/net/VpnService$Builder;->establish()Landroid/os/ParcelFileDescriptor;

    .line 454
    .line 455
    .line 456
    move-result-object p1

    .line 457
    iput-object p1, p0, Lcom/sgscq/vpn/SgscqVpnService;->b:Landroid/os/ParcelFileDescriptor;

    .line 458
    .line 459
    new-instance p1, Ljava/io/FileInputStream;

    .line 460
    .line 461
    iget-object v0, p0, Lcom/sgscq/vpn/SgscqVpnService;->b:Landroid/os/ParcelFileDescriptor;

    .line 462
    .line 463
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 468
    .line 469
    .line 470
    iput-object p1, p0, Lcom/sgscq/vpn/SgscqVpnService;->c:Ljava/io/FileInputStream;

    .line 471
    .line 472
    new-instance p1, Ljava/io/FileOutputStream;

    .line 473
    .line 474
    iget-object v0, p0, Lcom/sgscq/vpn/SgscqVpnService;->b:Landroid/os/ParcelFileDescriptor;

    .line 475
    .line 476
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 481
    .line 482
    .line 483
    iput-object p1, p0, Lcom/sgscq/vpn/SgscqVpnService;->d:Ljava/io/FileOutputStream;

    .line 484
    .line 485
    new-instance p1, Ljava/lang/StringBuilder;

    .line 486
    .line 487
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    .line 489
    .line 490
    const-string v0, "VPN ACTIVE \u2192 TUN 10.0.0.1/24, DNS 10.0.0.2, spoof \u2192 "

    .line 491
    .line 492
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    const v0, 0xa000064

    .line 496
    .line 497
    .line 498
    invoke-static {v0}, Lcom/sgscq/vpn/SgscqVpnService;->m(I)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object p1

    .line 509
    invoke-static {v2, p1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 510
    .line 511
    .line 512
    :try_start_4
    invoke-static {}, Lcom/sgscq/vpn/SgscqVpnService;->j()Lcom/sgscq/vpn/u6;

    .line 513
    .line 514
    .line 515
    move-result-object p1

    .line 516
    new-array v0, v1, [B

    .line 517
    .line 518
    fill-array-data v0, :array_0

    .line 519
    .line 520
    .line 521
    invoke-virtual {p1, v1, v0}, Lcom/sgscq/vpn/u6;->c(I[B)V

    .line 522
    .line 523
    .line 524
    const-string p1, "PCAP: memory buffer (100MB shared)"

    .line 525
    .line 526
    invoke-static {v2, p1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 527
    .line 528
    .line 529
    goto :goto_5

    .line 530
    :catch_2
    move-exception p1

    .line 531
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 532
    .line 533
    const-string v1, "PCAP init: "

    .line 534
    .line 535
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object p1

    .line 542
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object p1

    .line 549
    invoke-static {v2, p1}, Lcom/sgscq/vpn/z2;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 550
    .line 551
    .line 552
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 553
    .line 554
    .line 555
    const-string p1, "\u72b6\u6001: VPN \u7ec4\u4ef6\u542f\u52a8\u5b8c\u6210\uff0c\u5f00\u59cb\u9a8c\u8bc1..."

    .line 556
    .line 557
    invoke-static {v2, p1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    iget-object p1, p0, Lcom/sgscq/vpn/SgscqVpnService;->c:Ljava/io/FileInputStream;

    .line 561
    .line 562
    new-instance p3, Ljava/lang/Thread;

    .line 563
    .line 564
    new-instance v0, Lcom/sgscq/vpn/a6;

    .line 565
    .line 566
    invoke-direct {v0, p0, v7, v8, p1}, Lcom/sgscq/vpn/a6;-><init>(Lcom/sgscq/vpn/SgscqVpnService;JLjava/io/FileInputStream;)V

    .line 567
    .line 568
    .line 569
    const-string p1, "VPN-Main"

    .line 570
    .line 571
    invoke-direct {p3, v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    .line 575
    .line 576
    .line 577
    new-instance p1, Ljava/lang/Thread;

    .line 578
    .line 579
    new-instance p3, Lcom/sgscq/vpn/s6;

    .line 580
    .line 581
    invoke-direct {p3, p0, v7, v8}, Lcom/sgscq/vpn/s6;-><init>(Lcom/sgscq/vpn/SgscqVpnService;J)V

    .line 582
    .line 583
    .line 584
    const-string v0, "VPN-Verify"

    .line 585
    .line 586
    invoke-direct {p1, p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 590
    .line 591
    .line 592
    goto :goto_6

    .line 593
    :catch_3
    move-exception p1

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    .line 595
    .line 596
    const-string v1, "VPN start failed: "

    .line 597
    .line 598
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    invoke-static {p1, v0, v2}, Lc/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    sput-boolean p3, Lcom/sgscq/vpn/SgscqVpnService;->m:Z

    .line 605
    .line 606
    invoke-static {p3}, Lcom/sgscq/vpn/SgscqVpnService;->o(Z)V

    .line 607
    .line 608
    .line 609
    :goto_6
    return p2

    .line 610
    nop

    .line 611
    :array_0
    .array-data 1
        -0x2ct
        -0x3dt
        -0x4et
        -0x5ft
        0x2t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x65t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public final q(I[B)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/SgscqVpnService;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/sgscq/vpn/SgscqVpnService;->j()Lcom/sgscq/vpn/u6;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v6, v2, v4

    long-to-int v6, v6

    rem-long/2addr v2, v4

    mul-long/2addr v2, v4

    long-to-int v2, v2

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/sgscq/vpn/u6;->c(I[B)V

    invoke-virtual {v1, p1, p2}, Lcom/sgscq/vpn/u6;->c(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final r([B)V
    .locals 2

    .line 1
    array-length v0, p1

    invoke-virtual {p0, v0, p1}, Lcom/sgscq/vpn/SgscqVpnService;->q(I[B)V

    iget-object v0, p0, Lcom/sgscq/vpn/SgscqVpnService;->d:Ljava/io/FileOutputStream;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sgscq/vpn/SgscqVpnService;->d:Ljava/io/FileOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    iget-object p1, p0, Lcom/sgscq/vpn/SgscqVpnService;->d:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
