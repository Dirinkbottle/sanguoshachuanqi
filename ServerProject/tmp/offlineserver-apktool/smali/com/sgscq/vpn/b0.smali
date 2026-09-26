.class public final Lcom/sgscq/vpn/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:I


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/content/SharedPreferences;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/sgscq/vpn/p5;->S()[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x3

    .line 6
    aget-object v0, v0, v1

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sgscq/vpn/b0;->a:Landroid/content/Context;

    const-string v0, "sgscq_bili"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sgscq/vpn/b0;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static f(Landroid/app/Activity;Lcom/sgscq/vpn/p6;Lcom/sgscq/vpn/w;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sgscq/vpn/c;

    const/4 v2, 0x1

    invoke-direct {v1, p2, p1, p0, v2}, Lcom/sgscq/vpn/c;-><init>(Ljava/lang/Object;Lcom/sgscq/vpn/p6;Landroid/app/Activity;I)V

    const-string p0, "BiliAuth"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/b0;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/m0;->b3(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/sgscq/vpn/b0;->b()Lcom/sgscq/vpn/z;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-boolean v2, v0, Lcom/sgscq/vpn/z;->b:Z

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    iget-boolean v2, v0, Lcom/sgscq/vpn/z;->c:Z

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    iget-wide v4, v0, Lcom/sgscq/vpn/z;->e:J

    .line 28
    .line 29
    cmp-long v0, v2, v4

    .line 30
    .line 31
    if-gtz v0, :cond_1

    .line 32
    .line 33
    const/16 v1, 0x1f4

    .line 34
    .line 35
    :cond_1
    return v1
.end method

.method public final b()Lcom/sgscq/vpn/z;
    .locals 9

    .line 1
    new-instance v0, Lcom/sgscq/vpn/z;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/sgscq/vpn/z;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/sgscq/vpn/b0;->b:Landroid/content/SharedPreferences;

    .line 7
    .line 8
    const-string v2, "mid"

    .line 9
    .line 10
    const-string v3, ""

    .line 11
    .line 12
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iput-object v2, v0, Lcom/sgscq/vpn/z;->a:Ljava/lang/String;

    .line 17
    .line 18
    const-string v2, "bound"

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iput-boolean v2, v0, Lcom/sgscq/vpn/z;->b:Z

    .line 26
    .line 27
    const-string v2, "following"

    .line 28
    .line 29
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iput-boolean v2, v0, Lcom/sgscq/vpn/z;->c:Z

    .line 34
    .line 35
    const-string v2, "checked_at"

    .line 36
    .line 37
    const-wide/16 v5, 0x0

    .line 38
    .line 39
    invoke-interface {v1, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 40
    .line 41
    .line 42
    move-result-wide v7

    .line 43
    iput-wide v7, v0, Lcom/sgscq/vpn/z;->d:J

    .line 44
    .line 45
    const-string v2, "valid_until"

    .line 46
    .line 47
    invoke-interface {v1, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 48
    .line 49
    .line 50
    move-result-wide v7

    .line 51
    iput-wide v7, v0, Lcom/sgscq/vpn/z;->e:J

    .line 52
    .line 53
    const-string v2, "name"

    .line 54
    .line 55
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iput-object v2, v0, Lcom/sgscq/vpn/z;->f:Ljava/lang/String;

    .line 60
    .line 61
    const-string v2, "face"

    .line 62
    .line 63
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iput-object v2, v0, Lcom/sgscq/vpn/z;->g:Ljava/lang/String;

    .line 68
    .line 69
    const-string v2, "level"

    .line 70
    .line 71
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    iput v2, v0, Lcom/sgscq/vpn/z;->h:I

    .line 76
    .line 77
    const-string v2, "profile_checked_at"

    .line 78
    .line 79
    invoke-interface {v1, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 80
    .line 81
    .line 82
    move-result-wide v7

    .line 83
    iput-wide v7, v0, Lcom/sgscq/vpn/z;->i:J

    .line 84
    .line 85
    const-string v2, "signature"

    .line 86
    .line 87
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iput-object v1, v0, Lcom/sgscq/vpn/z;->j:Ljava/lang/String;

    .line 92
    .line 93
    if-eqz v1, :cond_1

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_0

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_0
    iget-object v1, v0, Lcom/sgscq/vpn/z;->j:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/b0;->c(Lcom/sgscq/vpn/z;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    goto :goto_1

    .line 113
    :cond_1
    :goto_0
    iget-boolean v1, v0, Lcom/sgscq/vpn/z;->b:Z

    .line 114
    .line 115
    xor-int/lit8 v1, v1, 0x1

    .line 116
    .line 117
    :goto_1
    if-nez v1, :cond_2

    .line 118
    .line 119
    iput-boolean v4, v0, Lcom/sgscq/vpn/z;->c:Z

    .line 120
    .line 121
    iput-object v3, v0, Lcom/sgscq/vpn/z;->f:Ljava/lang/String;

    .line 122
    .line 123
    iput-object v3, v0, Lcom/sgscq/vpn/z;->g:Ljava/lang/String;

    .line 124
    .line 125
    iput v4, v0, Lcom/sgscq/vpn/z;->h:I

    .line 126
    .line 127
    iput-wide v5, v0, Lcom/sgscq/vpn/z;->i:J

    .line 128
    .line 129
    :cond_2
    return-object v0
.end method

.method public final c(Lcom/sgscq/vpn/z;)Ljava/lang/String;
    .locals 13

    .line 1
    const-string v0, "UTF-8"

    const-string v1, "HmacSHA256"

    iget-object v2, p0, Lcom/sgscq/vpn/b0;->a:Landroid/content/Context;

    const-string v3, ""

    const-string v4, "|"

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/sgscq/vpn/z;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Lcom/sgscq/vpn/z;->b:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Lcom/sgscq/vpn/z;->c:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p1, Lcom/sgscq/vpn/z;->d:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p1, Lcom/sgscq/vpn/z;->e:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/sgscq/vpn/z;->f:Ljava/lang/String;

    if-nez v6, :cond_0

    move-object v6, v3

    :cond_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/sgscq/vpn/z;->g:Ljava/lang/String;

    if-nez v6, :cond_1

    move-object v6, v3

    :cond_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/sgscq/vpn/z;->h:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p1, Lcom/sgscq/vpn/z;->i:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Lcom/sgscq/vpn/cloud/m0;->G2(Landroid/content/Context;)[B

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    array-length v6, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    const/4 v9, 0x1

    const-string v10, "%02x"

    if-ge v8, v6, :cond_2

    :try_start_1
    aget-byte v11, v4, v8

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v7

    invoke-static {v12, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const/16 v4, 0x7c

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p1

    move v2, v7

    :goto_1
    if-ge v2, v1, :cond_3

    aget-byte v4, p1, v2

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v5, v10, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    return-object v3
.end method

.method public final d(Z)Lcom/sgscq/vpn/z;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/sgscq/vpn/b0;->b()Lcom/sgscq/vpn/z;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, v0, Lcom/sgscq/vpn/z;->b:Z

    .line 6
    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    iget-object v1, v0, Lcom/sgscq/vpn/z;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_3

    .line 16
    .line 17
    iget-object v1, v0, Lcom/sgscq/vpn/z;->a:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    :try_start_0
    new-instance v3, Lcom/sgscq/vpn/cloud/z;

    .line 21
    .line 22
    iget-object v4, p0, Lcom/sgscq/vpn/b0;->a:Landroid/content/Context;

    .line 23
    .line 24
    invoke-direct {v3, v4}, Lcom/sgscq/vpn/cloud/z;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    const-string v4, "bilibili"

    .line 28
    .line 29
    invoke-virtual {v3, v4, v1}, Lcom/sgscq/vpn/cloud/z;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/sgscq/vpn/cloud/i;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v3, "verified"

    .line 34
    .line 35
    iget-object v4, v1, Lcom/sgscq/vpn/cloud/i;->a:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-boolean v1, v1, Lcom/sgscq/vpn/cloud/i;->b:Z

    .line 45
    .line 46
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 47
    .line 48
    .line 49
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    :goto_0
    if-nez v2, :cond_1

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/b0;->e(Lcom/sgscq/vpn/z;)V

    .line 57
    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iput-boolean p1, v0, Lcom/sgscq/vpn/z;->c:Z

    .line 65
    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 67
    .line 68
    .line 69
    move-result-wide v1

    .line 70
    iput-wide v1, v0, Lcom/sgscq/vpn/z;->d:J

    .line 71
    .line 72
    const-wide/32 v3, 0x240c8400

    .line 73
    .line 74
    .line 75
    add-long/2addr v1, v3

    .line 76
    iput-wide v1, v0, Lcom/sgscq/vpn/z;->e:J

    .line 77
    .line 78
    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/b0;->e(Lcom/sgscq/vpn/z;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/b0;->c(Lcom/sgscq/vpn/z;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput-object p1, v0, Lcom/sgscq/vpn/z;->j:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/b0;->g(Lcom/sgscq/vpn/z;)V

    .line 88
    .line 89
    .line 90
    return-object v0

    .line 91
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    .line 92
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v2, "\u6821\u9a8c\u5931\u8d25\uff1a"

    .line 96
    .line 97
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p1

    .line 115
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    .line 116
    .line 117
    const-string v0, "\u672a\u7ed1\u5b9a B \u7ad9 UID"

    .line 118
    .line 119
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p1
.end method

.method public final e(Lcom/sgscq/vpn/z;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p1, Lcom/sgscq/vpn/z;->a:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Lcom/sgscq/vpn/a;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, p0, v0, v2}, Lcom/sgscq/vpn/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->O(Lq/l;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/sgscq/vpn/x;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v1, v0, Lcom/sgscq/vpn/x;->a:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v1, p1, Lcom/sgscq/vpn/z;->f:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v1, v0, Lcom/sgscq/vpn/x;->b:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v1, p1, Lcom/sgscq/vpn/z;->g:Ljava/lang/String;

    .line 25
    .line 26
    iget v0, v0, Lcom/sgscq/vpn/x;->c:I

    .line 27
    .line 28
    iput v0, p1, Lcom/sgscq/vpn/z;->h:I

    .line 29
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    iput-wide v0, p1, Lcom/sgscq/vpn/z;->i:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    :catch_0
    return-void
.end method

.method public final g(Lcom/sgscq/vpn/z;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/b0;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p1, Lcom/sgscq/vpn/z;->a:Ljava/lang/String;

    const-string v2, "mid"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bound"

    iget-boolean v2, p1, Lcom/sgscq/vpn/z;->b:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "following"

    iget-boolean v2, p1, Lcom/sgscq/vpn/z;->c:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "checked_at"

    iget-wide v2, p1, Lcom/sgscq/vpn/z;->d:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "valid_until"

    iget-wide v2, p1, Lcom/sgscq/vpn/z;->e:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p1, Lcom/sgscq/vpn/z;->f:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    const-string v3, "name"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p1, Lcom/sgscq/vpn/z;->g:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    const-string v1, "face"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "level"

    iget v2, p1, Lcom/sgscq/vpn/z;->h:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "profile_checked_at"

    iget-wide v2, p1, Lcom/sgscq/vpn/z;->i:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "signature"

    iget-object p1, p1, Lcom/sgscq/vpn/z;->j:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
