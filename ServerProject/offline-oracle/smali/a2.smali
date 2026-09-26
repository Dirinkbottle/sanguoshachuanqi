.class public abstract Lcom/sgscq/vpn/a2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "sgscq_data_key_v3"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/a2;->a:[B

    const-string v0, "sgscq_limited_shop_config_v1"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/a2;->b:[B

    return-void
.end method

.method public static a(Landroid/content/Context;)[B
    .locals 13

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    const-string v4, "encrypted/k1.bin"

    .line 11
    .line 12
    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 13
    .line 14
    .line 15
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :try_start_1
    new-array v4, v0, [B

    .line 17
    .line 18
    move v5, v2

    .line 19
    :goto_0
    if-ge v5, v0, :cond_0

    .line 20
    .line 21
    rsub-int/lit8 v6, v5, 0x20

    .line 22
    .line 23
    invoke-virtual {v3, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-lez v6, :cond_0

    .line 28
    .line 29
    add-int/2addr v5, v6

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {v4, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :catchall_0
    move-exception v4

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catchall_1
    move-exception v3

    .line 48
    :try_start_4
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_1
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 52
    :catch_0
    :cond_2
    :goto_2
    new-array v3, v0, [B

    .line 53
    .line 54
    const/4 v4, 0x4

    .line 55
    new-array v5, v4, [J

    .line 56
    .line 57
    fill-array-data v5, :array_0

    .line 58
    .line 59
    .line 60
    move v6, v2

    .line 61
    :goto_3
    if-ge v6, v4, :cond_4

    .line 62
    .line 63
    aget-wide v7, v5, v6

    .line 64
    .line 65
    move v9, v2

    .line 66
    :goto_4
    const/16 v10, 0x8

    .line 67
    .line 68
    if-ge v9, v10, :cond_3

    .line 69
    .line 70
    mul-int/lit8 v10, v6, 0x8

    .line 71
    .line 72
    add-int/2addr v10, v9

    .line 73
    mul-int/lit8 v11, v9, 0x8

    .line 74
    .line 75
    rsub-int/lit8 v11, v11, 0x38

    .line 76
    .line 77
    ushr-long v11, v7, v11

    .line 78
    .line 79
    long-to-int v11, v11

    .line 80
    int-to-byte v11, v11

    .line 81
    aput-byte v11, v3, v10

    .line 82
    .line 83
    add-int/lit8 v9, v9, 0x1

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_4
    invoke-static {p0}, Lcom/sgscq/vpn/a2;->c(Landroid/content/Context;)[B

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    array-length v4, p0

    .line 94
    add-int/2addr v4, v0

    .line 95
    new-array v4, v4, [B

    .line 96
    .line 97
    array-length v5, p0

    .line 98
    invoke-static {p0, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    .line 100
    .line 101
    array-length p0, p0

    .line 102
    invoke-static {v3, v2, v4, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    .line 104
    .line 105
    sget-object p0, Lcom/sgscq/vpn/a2;->a:[B

    .line 106
    .line 107
    invoke-static {v4, p0}, Lcom/sgscq/vpn/a2;->b([B[B)[B

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    new-array v3, v0, [B

    .line 112
    .line 113
    :goto_5
    if-ge v2, v0, :cond_5

    .line 114
    .line 115
    aget-byte v4, v1, v2

    .line 116
    .line 117
    aget-byte v5, p0, v2

    .line 118
    .line 119
    xor-int/2addr v4, v5

    .line 120
    int-to-byte v4, v4

    .line 121
    aput-byte v4, v3, v2

    .line 122
    .line 123
    add-int/lit8 v2, v2, 0x1

    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_5
    return-object v3

    .line 127
    :array_0
    .array-data 8
        0x72e6e57734ae352bL    # 3.1267470028770965E245
        0x49ca8589811b53c0L    # 3.028234749374928E47
        0x42ca12109bcedd16L    # 5.732978075999417E13
        -0x7921bbf290de8f84L
    .end array-data
.end method

.method public static b([B[B)[B
    .locals 8

    .line 1
    const-string v0, "HmacSHA256"

    const/16 v1, 0x20

    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    new-array v4, v1, [B

    invoke-direct {v3, v4, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v2, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v3, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    new-array p0, v1, [B

    const/4 v0, 0x0

    new-array v3, v0, [B

    const/4 v4, 0x1

    move v5, v0

    :goto_0
    if-ge v5, v1, :cond_0

    invoke-virtual {v2}, Ljavax/crypto/Mac;->reset()V

    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->update([B)V

    invoke-virtual {v2, p1}, Ljavax/crypto/Mac;->update([B)V

    int-to-byte v3, v4

    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->update(B)V

    invoke-virtual {v2}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v3

    array-length v6, v3

    rsub-int/lit8 v7, v5, 0x20

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v3, v0, p0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    :catch_0
    new-array p0, v1, [B

    return-object p0
.end method

.method public static c(Landroid/content/Context;)[B
    .locals 4

    .line 1
    const/16 v0, 0x20

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/sgscq/vpn/h0;->b(Landroid/content/pm/PackageInfo;)Landroid/content/pm/SigningInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/sgscq/vpn/h0;->b(Landroid/content/pm/PackageInfo;)Landroid/content/pm/SigningInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/sgscq/vpn/h0;->d(Landroid/content/pm/SigningInfo;)[Landroid/content/pm/Signature;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    array-length v3, v2

    if-nez v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x40

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    :cond_2
    if-eqz v2, :cond_4

    array-length p0, v2

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const-string p0, "SHA-256"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    new-array p0, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-array p0, v0, [B

    return-object p0
.end method
