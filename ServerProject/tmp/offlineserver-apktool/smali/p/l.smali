.class public final Lp/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final o:Ljava/lang/Object;

.field public static volatile p:Lp/l;


# instance fields
.field public final a:Lp/k;

.field public final b:Lp/i;

.field public final c:Lp/h;

.field public final d:Lp/j;

.field public final e:Lp/g;

.field public final f:Ljava/util/concurrent/Executor;

.field public final g:Lq/m;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final k:Ljava/util/concurrent/atomic/AtomicLong;

.field public volatile l:Z

.field public m:[B

.field public volatile n:Lp/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lp/l;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lp/k;Lp/i;Lcom/sgscq/vpn/k;Lp/j;La/w;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/sgscq/vpn/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lp/l;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lp/l;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lp/l;->k:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Lp/l;->a:Lp/k;

    iput-object p2, p0, Lp/l;->b:Lp/i;

    iput-object p3, p0, Lp/l;->c:Lp/h;

    iput-object p4, p0, Lp/l;->d:Lp/j;

    iput-object p5, p0, Lp/l;->e:Lp/g;

    iput-object p6, p0, Lp/l;->f:Ljava/util/concurrent/Executor;

    iput-object p8, p0, Lp/l;->g:Lq/m;

    iput-object p7, p0, Lp/l;->h:Ljava/lang/String;

    .line 1
    :try_start_0
    invoke-interface {p1}, Lp/k;->c()[B

    move-result-object p2

    if-eqz p2, :cond_2

    array-length p5, p2

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/sgscq/vpn/k;->c()J

    move-result-wide p5

    invoke-interface {p4, p2, p5, p6}, Lp/j;->a([BJ)Lp/b;

    move-result-object p3

    .line 2
    iget-wide p4, p3, Lp/b;->a:J

    .line 3
    invoke-interface {p1}, Lp/k;->i()J

    move-result-wide p6

    cmp-long p1, p4, p6

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lp/l;->m:[B

    iput-object p3, p0, Lp/l;->n:Lp/b;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lp/l;->l:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u7f13\u5b58\u4e0d\u53ef\u7528: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lp/l;->k(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VpsLimitedSchedule"

    invoke-static {p2, p1}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static a(C)I
    .locals 2

    .line 1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_1

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1a

    return p0

    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v1, 0x39

    if-gt p0, v1, :cond_2

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x34

    return p0

    :cond_2
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_3

    const/16 p0, 0x3e

    return p0

    :cond_3
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_4

    const/16 p0, 0x3f

    return p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Base64 invalid"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b()Lp/l;
    .locals 10

    .line 1
    new-instance v9, Lp/l;

    .line 2
    .line 3
    new-instance v1, La/w;

    .line 4
    .line 5
    const/16 v0, 0x11

    .line 6
    .line 7
    invoke-direct {v1, v0}, La/w;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lcom/sgscq/vpn/k;

    .line 11
    .line 12
    const/16 v0, 0xc

    .line 13
    .line 14
    invoke-direct {v2, v0}, Lcom/sgscq/vpn/k;-><init>(I)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lcom/sgscq/vpn/k;

    .line 18
    .line 19
    const/16 v0, 0xd

    .line 20
    .line 21
    invoke-direct {v3, v0}, Lcom/sgscq/vpn/k;-><init>(I)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lcom/sgscq/vpn/k;

    .line 25
    .line 26
    const/16 v0, 0xe

    .line 27
    .line 28
    invoke-direct {v4, v0}, Lcom/sgscq/vpn/k;-><init>(I)V

    .line 29
    .line 30
    .line 31
    new-instance v5, La/w;

    .line 32
    .line 33
    const/16 v0, 0x12

    .line 34
    .line 35
    invoke-direct {v5, v0}, La/w;-><init>(I)V

    .line 36
    .line 37
    .line 38
    new-instance v6, Lp/e;

    .line 39
    .line 40
    invoke-direct {v6}, Lp/e;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v7, ""

    .line 44
    .line 45
    new-instance v8, Lcom/sgscq/vpn/k;

    .line 46
    .line 47
    const/16 v0, 0xf

    .line 48
    .line 49
    invoke-direct {v8, v0}, Lcom/sgscq/vpn/k;-><init>(I)V

    .line 50
    .line 51
    .line 52
    move-object v0, v9

    .line 53
    invoke-direct/range {v0 .. v8}, Lp/l;-><init>(Lp/k;Lp/i;Lcom/sgscq/vpn/k;Lp/j;La/w;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/sgscq/vpn/k;)V

    .line 54
    .line 55
    .line 56
    return-object v9
.end method

.method public static c(Landroid/content/Context;)Lp/l;
    .locals 13

    .line 1
    const-string v0, "\u521d\u59cb\u5316\u5931\u8d25: "

    sget-object v1, Lp/l;->p:Lp/l;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    sget-object v1, Lp/l;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lp/l;->p:Lp/l;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/g2;->e(Landroid/content/Context;)Lcom/sgscq/vpn/g2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p0}, Lp/l;->e(Landroid/content/Context;)Ljava/security/PublicKey;

    move-result-object v2

    new-instance v12, Lp/l;

    new-instance v4, Lc/e;

    const/16 v3, 0xa

    invoke-direct {v4, v3, p0}, Lc/e;-><init>(ILandroid/content/Context;)V

    new-instance v5, La/w;

    const/16 v6, 0x14

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, La/w;-><init>(II)V

    new-instance v6, Lcom/sgscq/vpn/k;

    const/16 v8, 0xb

    invoke-direct {v6, v8}, Lcom/sgscq/vpn/k;-><init>(I)V

    new-instance v8, Lcom/sgscq/vpn/a;

    const/4 v9, 0x7

    invoke-direct {v8, v2, p0, v9}, Lcom/sgscq/vpn/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p0, La/w;

    const/16 v2, 0x13

    invoke-direct {p0, v2, v7}, La/w;-><init>(II)V

    new-instance v2, Lcom/sgscq/vpn/x0;

    invoke-direct {v2, v3}, Lcom/sgscq/vpn/x0;-><init>(I)V

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    invoke-static {}, Lp/l;->g()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/sgscq/vpn/p5;->V:Lcom/sgscq/vpn/k;

    move-object v3, v12

    move-object v7, v8

    move-object v8, p0

    invoke-direct/range {v3 .. v11}, Lp/l;-><init>(Lp/k;Lp/i;Lcom/sgscq/vpn/k;Lp/j;La/w;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/sgscq/vpn/k;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v12

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string v2, "VpsLimitedSchedule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lp/l;->k(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lp/l;->b()Lp/l;

    move-result-object p0

    move-object v2, p0

    :goto_0
    sput-object v2, Lp/l;->p:Lp/l;

    :cond_1
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static d(Lm/e;J)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object p0, p0, Lm/e;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lp/a;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-wide v1, v1, Lp/a;->f:J

    .line 28
    .line 29
    cmp-long v1, v1, p1

    .line 30
    .line 31
    if-lez v1, :cond_1

    .line 32
    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    return v0
.end method

.method public static e(Landroid/content/Context;)Ljava/security/PublicKey;
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "encrypted/limited_schedule_public_key.pem"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/16 v0, 0x4000

    .line 12
    .line 13
    :try_start_0
    invoke-static {p0, v0}, Lp/l;->h(Ljava/io/InputStream;I)[B

    .line 14
    .line 15
    .line 16
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 18
    .line 19
    .line 20
    new-instance p0, Ljava/lang/String;

    .line 21
    .line 22
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 23
    .line 24
    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "-----BEGIN PUBLIC KEY-----"

    .line 28
    .line 29
    const-string v1, ""

    .line 30
    .line 31
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string v0, "-----END PUBLIC KEY-----"

    .line 36
    .line 37
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string v0, "\\s"

    .line 42
    .line 43
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string v0, "RSA"

    .line 48
    .line 49
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    .line 54
    .line 55
    const-string v2, "=="

    .line 56
    .line 57
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    const/4 v3, 0x0

    .line 62
    if-eqz v2, :cond_0

    .line 63
    .line 64
    const/4 v2, 0x2

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const-string v2, "="

    .line 67
    .line 68
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_1

    .line 73
    .line 74
    const/4 v2, 0x1

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    move v2, v3

    .line 77
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    and-int/lit8 v4, v4, 0x3

    .line 82
    .line 83
    if-nez v4, :cond_8

    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    div-int/lit8 v4, v4, 0x4

    .line 90
    .line 91
    mul-int/lit8 v4, v4, 0x3

    .line 92
    .line 93
    sub-int/2addr v4, v2

    .line 94
    new-array v2, v4, [B

    .line 95
    .line 96
    move v5, v3

    .line 97
    move v6, v5

    .line 98
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    if-ge v5, v7, :cond_7

    .line 103
    .line 104
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    invoke-static {v7}, Lp/l;->a(C)I

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    shl-int/lit8 v7, v7, 0x12

    .line 113
    .line 114
    add-int/lit8 v8, v5, 0x1

    .line 115
    .line 116
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    invoke-static {v8}, Lp/l;->a(C)I

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    shl-int/lit8 v8, v8, 0xc

    .line 125
    .line 126
    or-int/2addr v7, v8

    .line 127
    add-int/lit8 v8, v5, 0x2

    .line 128
    .line 129
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    const/16 v10, 0x3d

    .line 134
    .line 135
    if-ne v9, v10, :cond_2

    .line 136
    .line 137
    move v8, v3

    .line 138
    goto :goto_2

    .line 139
    :cond_2
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    invoke-static {v8}, Lp/l;->a(C)I

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    :goto_2
    shl-int/lit8 v8, v8, 0x6

    .line 148
    .line 149
    or-int/2addr v7, v8

    .line 150
    add-int/lit8 v8, v5, 0x3

    .line 151
    .line 152
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    if-ne v9, v10, :cond_3

    .line 157
    .line 158
    move v8, v3

    .line 159
    goto :goto_3

    .line 160
    :cond_3
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    invoke-static {v8}, Lp/l;->a(C)I

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    :goto_3
    or-int/2addr v7, v8

    .line 169
    if-ge v6, v4, :cond_4

    .line 170
    .line 171
    add-int/lit8 v8, v6, 0x1

    .line 172
    .line 173
    ushr-int/lit8 v9, v7, 0x10

    .line 174
    .line 175
    int-to-byte v9, v9

    .line 176
    aput-byte v9, v2, v6

    .line 177
    .line 178
    move v6, v8

    .line 179
    :cond_4
    if-ge v6, v4, :cond_5

    .line 180
    .line 181
    add-int/lit8 v8, v6, 0x1

    .line 182
    .line 183
    ushr-int/lit8 v9, v7, 0x8

    .line 184
    .line 185
    int-to-byte v9, v9

    .line 186
    aput-byte v9, v2, v6

    .line 187
    .line 188
    move v6, v8

    .line 189
    :cond_5
    if-ge v6, v4, :cond_6

    .line 190
    .line 191
    add-int/lit8 v8, v6, 0x1

    .line 192
    .line 193
    int-to-byte v7, v7

    .line 194
    aput-byte v7, v2, v6

    .line 195
    .line 196
    move v6, v8

    .line 197
    :cond_6
    add-int/lit8 v5, v5, 0x4

    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_7
    invoke-direct {v1, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    return-object p0

    .line 208
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 209
    .line 210
    const-string v0, "Base64 invalid"

    .line 211
    .line 212
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw p0

    .line 216
    :catchall_0
    move-exception v0

    .line 217
    if-eqz p0, :cond_9

    .line 218
    .line 219
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 220
    .line 221
    .line 222
    goto :goto_4

    .line 223
    :catchall_1
    move-exception p0

    .line 224
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 225
    .line 226
    .line 227
    :cond_9
    :goto_4
    throw v0
.end method

.method public static f(Lm/e;Lm/e;J)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p0, :cond_7

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    goto :goto_3

    .line 11
    :cond_1
    iget-object p0, p0, Lm/e;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    move v2, v1

    .line 20
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_6

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lp/a;

    .line 31
    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    iget-wide v4, v3, Lp/a;->f:J

    .line 35
    .line 36
    cmp-long v4, v4, p2

    .line 37
    .line 38
    if-gtz v4, :cond_3

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    :goto_1
    iget-object v4, p1, Lm/e;->b:Ljava/lang/Object;

    .line 42
    .line 43
    move-object v5, v4

    .line 44
    check-cast v5, Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-ge v2, v5, :cond_5

    .line 51
    .line 52
    check-cast v4, Ljava/util/List;

    .line 53
    .line 54
    add-int/lit8 v5, v2, 0x1

    .line 55
    .line 56
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lp/a;

    .line 61
    .line 62
    invoke-static {v3, v2}, Lp/l;->l(Lp/a;Lp/a;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_4

    .line 67
    .line 68
    move v3, v0

    .line 69
    move v2, v5

    .line 70
    goto :goto_2

    .line 71
    :cond_4
    move v2, v5

    .line 72
    goto :goto_1

    .line 73
    :cond_5
    move v3, v1

    .line 74
    :goto_2
    if-nez v3, :cond_2

    .line 75
    .line 76
    return v1

    .line 77
    :cond_6
    return v0

    .line 78
    :cond_7
    :goto_3
    return v1
.end method

.method public static g()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "https://api.sgscq.com/api/v1/limited-schedule"

    .line 2
    .line 3
    const-string v1, "?"

    .line 4
    .line 5
    const-string v2, "preview_slots=8"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/sgscq/vpn/handler/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public static h(Ljava/io/InputStream;I)[B
    .locals 5

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_1

    add-int/2addr v3, v4

    if-gt v3, p1, :cond_0

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    new-instance p0, Lq/k;

    const-string p1, "response too large"

    invoke-direct {p0, p1}, Lq/k;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l(Lp/a;Lp/a;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lp/a;->a:Ljava/lang/String;

    iget-object v3, p1, Lp/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lp/a;->b:Ljava/lang/String;

    iget-object v3, p1, Lp/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lp/a;->c:Ljava/lang/String;

    iget-object v3, p1, Lp/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lp/a;->e:J

    iget-wide v4, p1, Lp/a;->e:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lp/a;->f:J

    iget-wide v4, p1, Lp/a;->f:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget p0, p0, Lp/a;->g:I

    iget p1, p1, Lp/a;->g:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public static m(Lm/e;Lm/e;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p0, :cond_5

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_1
    iget-object p0, p0, Lm/e;->b:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v2, p0

    .line 14
    check-cast v2, Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iget-object p1, p1, Lm/e;->b:Ljava/lang/Object;

    .line 21
    .line 22
    move-object v3, p1

    .line 23
    check-cast v3, Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eq v2, v3, :cond_2

    .line 30
    .line 31
    return v1

    .line 32
    :cond_2
    move v2, v1

    .line 33
    :goto_0
    move-object v3, p0

    .line 34
    check-cast v3, Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-ge v2, v3, :cond_4

    .line 41
    .line 42
    move-object v3, p0

    .line 43
    check-cast v3, Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Lp/a;

    .line 50
    .line 51
    move-object v4, p1

    .line 52
    check-cast v4, Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Lp/a;

    .line 59
    .line 60
    invoke-static {v3, v4}, Lp/l;->l(Lp/a;Lp/a;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-nez v3, :cond_3

    .line 65
    .line 66
    return v1

    .line 67
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    return v0

    .line 71
    :cond_5
    :goto_1
    return v1
.end method


# virtual methods
.method public final i(JLcom/sgscq/vpn/f3;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lp/l;->e:Lp/g;

    .line 2
    .line 3
    check-cast v0, La/w;

    .line 4
    .line 5
    iget v0, v0, La/w;->a:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :pswitch_0
    move v0, v1

    .line 13
    goto :goto_1

    .line 14
    :goto_0
    sget-boolean v0, Lcom/sgscq/vpn/c7;->i:Z

    .line 15
    .line 16
    :goto_1
    const/4 v2, 0x0

    .line 17
    if-nez v0, :cond_6

    .line 18
    .line 19
    iget-object v0, p0, Lp/l;->n:Lp/b;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v0, v0, Lp/b;->e:Lm/e;

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    iget-object v0, v0, Lm/e;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    move v3, v2

    .line 37
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Lp/a;

    .line 48
    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    iget-wide v4, v4, Lp/a;->f:J

    .line 52
    .line 53
    cmp-long v4, v4, p1

    .line 54
    .line 55
    if-lez v4, :cond_1

    .line 56
    .line 57
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    const/4 v4, 0x2

    .line 60
    if-lt v3, v4, :cond_1

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_2
    :goto_2
    move v1, v2

    .line 64
    :goto_3
    if-eqz v1, :cond_3

    .line 65
    .line 66
    goto :goto_4

    .line 67
    :cond_3
    iget-object v0, p0, Lp/l;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 70
    .line 71
    .line 72
    move-result-wide v0

    .line 73
    const-wide/16 v3, 0x0

    .line 74
    .line 75
    cmp-long v3, v0, v3

    .line 76
    .line 77
    if-lez v3, :cond_4

    .line 78
    .line 79
    sub-long v3, p1, v0

    .line 80
    .line 81
    const-wide/32 v5, 0xea60

    .line 82
    .line 83
    .line 84
    cmp-long v3, v3, v5

    .line 85
    .line 86
    if-gez v3, :cond_4

    .line 87
    .line 88
    return v2

    .line 89
    :cond_4
    iget-object v3, p0, Lp/l;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 90
    .line 91
    invoke-virtual {v3, v0, v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_5

    .line 96
    .line 97
    return v2

    .line 98
    :cond_5
    invoke-virtual {p0, p3}, Lp/l;->n(Lcom/sgscq/vpn/f3;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    return p1

    .line 103
    :cond_6
    :goto_4
    return v2

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public final j()V
    .locals 12

    .line 1
    iget-object v0, p0, Lp/l;->c:Lp/h;

    .line 2
    .line 3
    check-cast v0, Lcom/sgscq/vpn/k;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/sgscq/vpn/k;->c()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    new-instance v2, Lcom/sgscq/vpn/y0;

    .line 10
    .line 11
    const/4 v3, 0x7

    .line 12
    invoke-direct {v2, p0, v3}, Lcom/sgscq/vpn/y0;-><init>(Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    iget-object v3, p0, Lp/l;->g:Lq/m;

    .line 16
    .line 17
    invoke-static {v2, v3}, Lcom/sgscq/vpn/p5;->P(Lq/l;Lq/m;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, [B

    .line 22
    .line 23
    iget-object v3, p0, Lp/l;->d:Lp/j;

    .line 24
    .line 25
    invoke-interface {v3, v2, v0, v1}, Lp/j;->a([BJ)Lp/b;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-object v4, p0, Lp/l;->a:Lp/k;

    .line 30
    .line 31
    invoke-interface {v4}, Lp/k;->i()J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    iget-object v6, p0, Lp/l;->n:Lp/b;

    .line 36
    .line 37
    if-nez v6, :cond_0

    .line 38
    .line 39
    const-wide/16 v6, 0x0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v6, p0, Lp/l;->n:Lp/b;

    .line 43
    .line 44
    iget-wide v6, v6, Lp/b;->a:J

    .line 45
    .line 46
    :goto_0
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 47
    .line 48
    .line 49
    move-result-wide v4

    .line 50
    iget-wide v6, v3, Lp/b;->a:J

    .line 51
    .line 52
    cmp-long v8, v6, v4

    .line 53
    .line 54
    if-gez v8, :cond_1

    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    cmp-long v4, v6, v4

    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    if-nez v4, :cond_5

    .line 61
    .line 62
    iget-object v4, p0, Lp/l;->n:Lp/b;

    .line 63
    .line 64
    if-eqz v4, :cond_5

    .line 65
    .line 66
    iget-object v4, p0, Lp/l;->m:[B

    .line 67
    .line 68
    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-nez v4, :cond_5

    .line 73
    .line 74
    iget-object v4, p0, Lp/l;->n:Lp/b;

    .line 75
    .line 76
    iget-wide v6, v4, Lp/b;->a:J

    .line 77
    .line 78
    iget-wide v8, v3, Lp/b;->a:J

    .line 79
    .line 80
    cmp-long v6, v6, v8

    .line 81
    .line 82
    const/4 v7, 0x1

    .line 83
    if-nez v6, :cond_2

    .line 84
    .line 85
    iget v6, v4, Lp/b;->d:I

    .line 86
    .line 87
    iget v8, v3, Lp/b;->d:I

    .line 88
    .line 89
    if-ne v6, v8, :cond_2

    .line 90
    .line 91
    iget-object v6, v4, Lp/b;->e:Lm/e;

    .line 92
    .line 93
    iget-object v8, v3, Lp/b;->e:Lm/e;

    .line 94
    .line 95
    invoke-static {v6, v8}, Lp/l;->m(Lm/e;Lm/e;)Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-eqz v6, :cond_2

    .line 100
    .line 101
    iget-object v4, v4, Lp/b;->f:Lm/e;

    .line 102
    .line 103
    iget-object v6, v3, Lp/b;->f:Lm/e;

    .line 104
    .line 105
    invoke-static {v4, v6}, Lp/l;->m(Lm/e;Lm/e;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_2

    .line 110
    .line 111
    move v4, v7

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    move v4, v5

    .line 114
    :goto_1
    if-nez v4, :cond_4

    .line 115
    .line 116
    iget-object v4, p0, Lp/l;->n:Lp/b;

    .line 117
    .line 118
    iget-object v6, v4, Lp/b;->e:Lm/e;

    .line 119
    .line 120
    invoke-static {v6, v0, v1}, Lp/l;->d(Lm/e;J)I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    iget-object v8, v4, Lp/b;->f:Lm/e;

    .line 125
    .line 126
    invoke-static {v8, v0, v1}, Lp/l;->d(Lm/e;J)I

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    add-int/2addr v8, v6

    .line 131
    if-lez v8, :cond_3

    .line 132
    .line 133
    iget-wide v8, v3, Lp/b;->a:J

    .line 134
    .line 135
    iget-wide v10, v4, Lp/b;->a:J

    .line 136
    .line 137
    cmp-long v6, v10, v8

    .line 138
    .line 139
    if-nez v6, :cond_3

    .line 140
    .line 141
    iget v6, v4, Lp/b;->d:I

    .line 142
    .line 143
    iget v8, v3, Lp/b;->d:I

    .line 144
    .line 145
    if-ne v6, v8, :cond_3

    .line 146
    .line 147
    iget-object v6, v4, Lp/b;->e:Lm/e;

    .line 148
    .line 149
    iget-object v8, v3, Lp/b;->e:Lm/e;

    .line 150
    .line 151
    invoke-static {v6, v8, v0, v1}, Lp/l;->f(Lm/e;Lm/e;J)Z

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-eqz v6, :cond_3

    .line 156
    .line 157
    iget-object v4, v4, Lp/b;->f:Lm/e;

    .line 158
    .line 159
    iget-object v6, v3, Lp/b;->f:Lm/e;

    .line 160
    .line 161
    invoke-static {v4, v6, v0, v1}, Lp/l;->f(Lm/e;Lm/e;J)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_3

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_3
    move v7, v5

    .line 169
    :goto_2
    if-nez v7, :cond_4

    .line 170
    .line 171
    return-void

    .line 172
    :cond_4
    iget-wide v0, v3, Lp/b;->b:J

    .line 173
    .line 174
    iget-object v4, p0, Lp/l;->n:Lp/b;

    .line 175
    .line 176
    iget-wide v6, v4, Lp/b;->b:J

    .line 177
    .line 178
    cmp-long v0, v0, v6

    .line 179
    .line 180
    if-gez v0, :cond_5

    .line 181
    .line 182
    return-void

    .line 183
    :cond_5
    iget-object v0, p0, Lp/l;->a:Lp/k;

    .line 184
    .line 185
    invoke-interface {v0, v2}, Lp/k;->g([B)V

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lp/l;->a:Lp/k;

    .line 189
    .line 190
    iget-wide v6, v3, Lp/b;->a:J

    .line 191
    .line 192
    invoke-interface {v0, v6, v7}, Lp/k;->d(J)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    check-cast v0, [B

    .line 200
    .line 201
    iput-object v0, p0, Lp/l;->m:[B

    .line 202
    .line 203
    iput-object v3, p0, Lp/l;->n:Lp/b;

    .line 204
    .line 205
    iput-boolean v5, p0, Lp/l;->l:Z

    .line 206
    .line 207
    return-void
.end method

.method public final n(Lcom/sgscq/vpn/f3;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lp/l;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v3, p0, Lp/l;->f:Ljava/util/concurrent/Executor;

    new-instance v4, Lp/f;

    invoke-direct {v4, p0, p1, v1}, Lp/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u5237\u65b0\u4efb\u52a1\u63d0\u4ea4\u5931\u8d25: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lp/l;->k(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VpsLimitedSchedule"

    invoke-static {v0, p1}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
