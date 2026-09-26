.class public final Lcom/sgscq/vpn/g2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:Ljava/lang/Object;

.field public static volatile j:Lcom/sgscq/vpn/g2;


# instance fields
.field public final a:Lm/e;

.field public final b:Lcom/sgscq/vpn/f2;

.field public final c:La/w;

.field public final d:Lcom/sgscq/vpn/k;

.field public final e:Ljava/util/List;

.field public f:Z

.field public g:Z

.field public volatile h:Lm/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sgscq/vpn/g2;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lm/e;Lcom/sgscq/vpn/f2;La/w;Lcom/sgscq/vpn/k;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/g2;->a:Lm/e;

    iput-object p2, p0, Lcom/sgscq/vpn/g2;->b:Lcom/sgscq/vpn/f2;

    iput-object p3, p0, Lcom/sgscq/vpn/g2;->c:La/w;

    iput-object p4, p0, Lcom/sgscq/vpn/g2;->d:Lcom/sgscq/vpn/k;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sgscq/vpn/g2;->e:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/io/InputStream;I)[B
    .locals 6

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x2000

    .line 7
    .line 8
    new-array v1, v1, [B

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/4 v5, -0x1

    .line 17
    if-eq v4, v5, :cond_1

    .line 18
    .line 19
    add-int/2addr v3, v4

    .line 20
    if-gt v3, p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string p1, "remote config size exceeds limit"

    .line 29
    .line 30
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public static b()Lcom/sgscq/vpn/config/i;
    .locals 2

    .line 1
    sget-object v0, Lcom/sgscq/vpn/g2;->j:Lcom/sgscq/vpn/g2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move-object v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, v0, Lcom/sgscq/vpn/g2;->h:Lm/e;

    .line 9
    .line 10
    :goto_0
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    iget-object v0, v0, Lm/e;->c:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v1, v0

    .line 16
    check-cast v1, Lcom/sgscq/vpn/config/i;

    .line 17
    .line 18
    :goto_1
    return-object v1
.end method

.method public static e(Landroid/content/Context;)Lcom/sgscq/vpn/g2;
    .locals 9

    .line 1
    sget-object v0, Lcom/sgscq/vpn/g2;->j:Lcom/sgscq/vpn/g2;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v1, Lcom/sgscq/vpn/g2;->i:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    sget-object v0, Lcom/sgscq/vpn/g2;->j:Lcom/sgscq/vpn/g2;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance v3, Lm/e;

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    invoke-direct {v3, v0, p0}, Lm/e;-><init>(ILandroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    new-instance v8, Lcom/sgscq/vpn/g2;

    .line 23
    .line 24
    new-instance v4, Lcom/sgscq/vpn/f2;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v4, v2, p0}, Lcom/sgscq/vpn/f2;-><init>(ILandroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    new-instance v5, La/w;

    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    invoke-direct {v5, p0}, La/w;-><init>(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    new-instance v6, Lcom/sgscq/vpn/k;

    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    invoke-direct {v6, p0}, Lcom/sgscq/vpn/k;-><init>(I)V

    .line 40
    .line 41
    .line 42
    new-instance p0, Lcom/sgscq/vpn/x0;

    .line 43
    .line 44
    invoke-direct {p0, v0}, Lcom/sgscq/vpn/x0;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-static {p0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 48
    .line 49
    .line 50
    const-string p0, "https://api.sgscq.com/api/v1/public/limited-shop-config"

    .line 51
    .line 52
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    move-object v2, v8

    .line 57
    invoke-direct/range {v2 .. v7}, Lcom/sgscq/vpn/g2;-><init>(Lm/e;Lcom/sgscq/vpn/f2;La/w;Lcom/sgscq/vpn/k;Ljava/util/List;)V

    .line 58
    .line 59
    .line 60
    sput-object v8, Lcom/sgscq/vpn/g2;->j:Lcom/sgscq/vpn/g2;

    .line 61
    .line 62
    move-object v0, v8

    .line 63
    :cond_0
    monitor-exit v1

    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p0

    .line 68
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/sgscq/vpn/g2;->d()V

    .line 69
    .line 70
    .line 71
    return-object v0
.end method

.method public static f(Ljava/lang/String;)J
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssXXX"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setLenient(Z)V

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid published_at"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final c([B)Lm/e;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sgscq/vpn/g2;->b:Lcom/sgscq/vpn/f2;

    invoke-virtual {v0, p1}, Lcom/sgscq/vpn/f2;->a([B)Lm/e;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u9650\u65f6\u914d\u7f6e\u6821\u9a8c\u5931\u8d25: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "LimitedShopConfig"

    invoke-static {v0, p1}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final declared-synchronized d()V
    .locals 7

    .line 1
    const-string v0, "\u5df2\u52a0\u8f7d\u9650\u65f6\u914d\u7f6e "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/sgscq/vpn/g2;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sgscq/vpn/g2;->g()[B

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p0, v1}, Lcom/sgscq/vpn/g2;->c([B)Lm/e;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0}, Lcom/sgscq/vpn/g2;->h()[B

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {p0, v2}, Lcom/sgscq/vpn/g2;->c([B)Lm/e;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    if-nez v2, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    iget-object v3, v2, Lm/e;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v3, Lcom/sgscq/vpn/d2;

    .line 35
    .line 36
    iget-object v3, v3, Lcom/sgscq/vpn/d2;->a:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v3}, Lcom/sgscq/vpn/g2;->f(Ljava/lang/String;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    iget-object v5, v1, Lm/e;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v5, Lcom/sgscq/vpn/d2;

    .line 45
    .line 46
    iget-object v5, v5, Lcom/sgscq/vpn/d2;->a:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v5}, Lcom/sgscq/vpn/g2;->f(Ljava/lang/String;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Long;->compare(JJ)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-ltz v3, :cond_3

    .line 57
    .line 58
    :goto_0
    move-object v1, v2

    .line 59
    :cond_3
    :goto_1
    iput-object v1, p0, Lcom/sgscq/vpn/g2;->h:Lm/e;

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    iput-boolean v1, p0, Lcom/sgscq/vpn/g2;->f:Z

    .line 63
    .line 64
    iget-object v1, p0, Lcom/sgscq/vpn/g2;->h:Lm/e;

    .line 65
    .line 66
    if-nez v1, :cond_4

    .line 67
    .line 68
    const-string v0, "LimitedShopConfig"

    .line 69
    .line 70
    const-string v1, "\u5185\u7f6e\u4e0e\u7f13\u5b58\u914d\u7f6e\u5747\u4e0d\u53ef\u7528\uff0c\u7ee7\u7eed\u4f7f\u7528\u786c\u7f16\u7801\u9650\u65f6\u903b\u8f91"

    .line 71
    .line 72
    invoke-static {v0, v1}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    const-string v1, "LimitedShopConfig"

    .line 77
    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/sgscq/vpn/g2;->h:Lm/e;

    .line 84
    .line 85
    iget-object v0, v0, Lm/e;->b:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v0, Lcom/sgscq/vpn/d2;

    .line 88
    .line 89
    iget-object v0, v0, Lcom/sgscq/vpn/d2;->a:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {v1, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .line 100
    .line 101
    :goto_2
    monitor-exit p0

    .line 102
    return-void

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    monitor-exit p0

    .line 105
    throw v0
.end method

.method public final g()[B
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/sgscq/vpn/g2;->a:Lm/e;

    .line 2
    .line 3
    iget-object v0, v0, Lm/e;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "encrypted/limited_shop_config.bin"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 14
    .line 15
    .line 16
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    const/high16 v1, 0x200000

    .line 18
    .line 19
    :try_start_1
    invoke-static {v0, v1}, Lcom/sgscq/vpn/g2;->a(Ljava/io/InputStream;I)[B

    .line 20
    .line 21
    .line 22
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_1
    move-exception v0

    .line 35
    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "\u8bfb\u53d6\u5185\u7f6e\u9650\u65f6\u914d\u7f6e\u5931\u8d25: "

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "LimitedShopConfig"

    .line 55
    .line 56
    invoke-static {v1, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    return-object v0
.end method

.method public final h()[B
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/sgscq/vpn/g2;->a:Lm/e;

    .line 3
    .line 4
    iget-object v1, v1, Lm/e;->c:Ljava/lang/Object;

    .line 5
    .line 6
    move-object v2, v1

    .line 7
    check-cast v2, Ljava/io/File;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    .line 17
    .line 18
    check-cast v1, Ljava/io/File;

    .line 19
    .line 20
    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    const/high16 v1, 0x200000

    .line 24
    .line 25
    :try_start_1
    invoke-static {v2, v1}, Lcom/sgscq/vpn/g2;->a(Ljava/io/InputStream;I)[B

    .line 26
    .line 27
    .line 28
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 30
    .line 31
    .line 32
    move-object v0, v1

    .line 33
    :goto_0
    return-object v0

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catchall_1
    move-exception v2

    .line 40
    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 44
    :catch_0
    move-exception v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "\u8bfb\u53d6\u9650\u65f6\u914d\u7f6e\u7f13\u5b58\u5931\u8d25: "

    .line 54
    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string v2, "LimitedShopConfig"

    .line 60
    .line 61
    invoke-static {v2, v1}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object v0
.end method

.method public final i()Z
    .locals 9

    .line 1
    const-string v0, "LimitedShopConfig"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/sgscq/vpn/g2;->e:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/String;

    .line 20
    .line 21
    :try_start_0
    iget-object v3, p0, Lcom/sgscq/vpn/g2;->c:La/w;

    .line 22
    .line 23
    const/high16 v4, 0x200000

    .line 24
    .line 25
    invoke-virtual {v3, v2, v4}, La/w;->f(Ljava/lang/String;I)[B

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, p0, Lcom/sgscq/vpn/g2;->b:Lcom/sgscq/vpn/f2;

    .line 30
    .line 31
    invoke-virtual {v3, v2}, Lcom/sgscq/vpn/f2;->a([B)Lm/e;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget-object v4, p0, Lcom/sgscq/vpn/g2;->h:Lm/e;

    .line 36
    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    iget-object v5, v3, Lm/e;->b:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v5, Lcom/sgscq/vpn/d2;

    .line 42
    .line 43
    iget-object v5, v5, Lcom/sgscq/vpn/d2;->a:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v5}, Lcom/sgscq/vpn/g2;->f(Ljava/lang/String;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v5

    .line 49
    iget-object v4, v4, Lm/e;->b:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v4, Lcom/sgscq/vpn/d2;

    .line 52
    .line 53
    iget-object v4, v4, Lcom/sgscq/vpn/d2;->a:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v4}, Lcom/sgscq/vpn/g2;->f(Ljava/lang/String;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v7

    .line 59
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Long;->compare(JJ)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-gez v4, :cond_0

    .line 64
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v4, "\u5ffd\u7565\u65e5\u671f\u56de\u9000\u7684\u8fdc\u7aef\u914d\u7f6e: "

    .line 71
    .line 72
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v3, v3, Lm/e;->b:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v3, Lcom/sgscq/vpn/d2;

    .line 78
    .line 79
    iget-object v3, v3, Lcom/sgscq/vpn/d2;->a:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {v0, v2}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    iget-object v4, p0, Lcom/sgscq/vpn/g2;->a:Lm/e;

    .line 93
    .line 94
    invoke-virtual {v4, v2}, Lm/e;->Q([B)V

    .line 95
    .line 96
    .line 97
    iput-object v3, p0, Lcom/sgscq/vpn/g2;->h:Lm/e;

    .line 98
    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v4, "\u8fdc\u7aef\u9650\u65f6\u914d\u7f6e\u5df2\u66f4\u65b0: "

    .line 105
    .line 106
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-object v3, v3, Lm/e;->b:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v3, Lcom/sgscq/vpn/d2;

    .line 112
    .line 113
    iget-object v3, v3, Lcom/sgscq/vpn/d2;->a:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-static {v0, v2}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    .line 125
    const/4 v0, 0x1

    .line 126
    return v0

    .line 127
    :catch_0
    move-exception v2

    .line 128
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    const-string v3, "\u8fdc\u7aef\u9650\u65f6\u914d\u7f6e\u6e90\u5931\u8d25\uff0c\u7ee7\u7eed\u56de\u9000: "

    .line 137
    .line 138
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-static {v0, v2}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_0

    .line 146
    .line 147
    :cond_1
    const/4 v0, 0x0

    .line 148
    return v0
.end method

.method public final declared-synchronized j()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/sgscq/vpn/g2;->d()V

    .line 3
    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/sgscq/vpn/g2;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    :try_start_1
    iput-boolean v0, p0, Lcom/sgscq/vpn/g2;->g:Z

    .line 13
    .line 14
    iget-object v0, p0, Lcom/sgscq/vpn/g2;->a:Lm/e;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/sgscq/vpn/g2;->d:Lcom/sgscq/vpn/k;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/sgscq/vpn/k;->c()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    iget-object v0, v0, Lm/e;->d:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Landroid/content/SharedPreferences;

    .line 25
    .line 26
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v3, "last_remote_check_at"

    .line 31
    .line 32
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    :try_start_2
    invoke-virtual {p0}, Lcom/sgscq/vpn/g2;->i()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    .line 42
    .line 43
    :try_start_3
    iput-boolean v0, p0, Lcom/sgscq/vpn/g2;->g:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception v1

    .line 48
    :try_start_4
    iput-boolean v0, p0, Lcom/sgscq/vpn/g2;->g:Z

    .line 49
    .line 50
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 51
    :catchall_1
    move-exception v0

    .line 52
    monitor-exit p0

    .line 53
    throw v0
.end method
