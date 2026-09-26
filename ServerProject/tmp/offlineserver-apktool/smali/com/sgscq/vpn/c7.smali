.class public final Lcom/sgscq/vpn/c7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:[Ljava/lang/String;

.field public static volatile h:Lcom/sgscq/vpn/c7;

.field public static volatile i:Z

.field public static volatile j:J

.field public static volatile k:J

.field public static volatile l:J


# instance fields
.field public final a:Landroid/content/SharedPreferences;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile d:Z

.field public volatile e:Z

.field public volatile f:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "https://www.taobao.com/"

    const-string v1, "https://www.jd.com/"

    const-string v2, "https://www.baidu.com/"

    const-string v3, "https://www.qq.com/"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/c7;->g:[Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sgscq/vpn/c7;->i:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sgscq/vpn/c7;->j:J

    sput-wide v0, Lcom/sgscq/vpn/c7;->k:J

    sput-wide v0, Lcom/sgscq/vpn/c7;->l:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/sgscq/vpn/c7;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/sgscq/vpn/c7;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    const-string v0, ""

    .line 20
    .line 21
    iput-object v0, p0, Lcom/sgscq/vpn/c7;->f:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v2, "sgscq_trusted_time"

    .line 28
    .line 29
    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/sgscq/vpn/c7;->a:Landroid/content/SharedPreferences;

    .line 34
    .line 35
    iput-boolean v1, p0, Lcom/sgscq/vpn/c7;->d:Z

    .line 36
    .line 37
    iput-boolean v1, p0, Lcom/sgscq/vpn/c7;->e:Z

    .line 38
    .line 39
    const-string v1, "skew_ms"

    .line 40
    .line 41
    const-wide v2, 0x7fffffffffffffffL

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 47
    .line 48
    .line 49
    const-string v1, "source"

    .line 50
    .line 51
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/sgscq/vpn/c7;->f:Ljava/lang/String;

    .line 56
    .line 57
    const-string v0, "game_time_ms"

    .line 58
    .line 59
    const-wide/16 v1, 0x0

    .line 60
    .line 61
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 62
    .line 63
    .line 64
    move-result-wide v3

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 66
    .line 67
    .line 68
    move-result-wide v5

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 70
    .line 71
    .line 72
    move-result-wide v7

    .line 73
    cmp-long p1, v3, v1

    .line 74
    .line 75
    const-wide/16 v0, 0x1

    .line 76
    .line 77
    if-lez p1, :cond_0

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 81
    .line 82
    .line 83
    move-result-wide v3

    .line 84
    :goto_0
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 85
    .line 86
    .line 87
    move-result-wide v0

    .line 88
    sput-wide v3, Lcom/sgscq/vpn/c7;->j:J

    .line 89
    .line 90
    sput-wide v0, Lcom/sgscq/vpn/c7;->k:J

    .line 91
    .line 92
    sput-wide v3, Lcom/sgscq/vpn/c7;->l:J

    .line 93
    .line 94
    invoke-virtual {p0, v3, v4}, Lcom/sgscq/vpn/c7;->h(J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/sgscq/vpn/c7;->e()Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    sput-boolean p1, Lcom/sgscq/vpn/c7;->i:Z

    .line 102
    .line 103
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sgscq/vpn/c7;->c(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(J)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "GMT+08:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Lcom/sgscq/vpn/c7;
    .locals 2

    .line 1
    sget-object v0, Lcom/sgscq/vpn/c7;->h:Lcom/sgscq/vpn/c7;

    if-nez v0, :cond_1

    const-class v0, Lcom/sgscq/vpn/c7;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sgscq/vpn/c7;->h:Lcom/sgscq/vpn/c7;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sgscq/vpn/c7;

    invoke-direct {v1, p0}, Lcom/sgscq/vpn/c7;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sgscq/vpn/c7;->h:Lcom/sgscq/vpn/c7;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/sgscq/vpn/c7;->h:Lcom/sgscq/vpn/c7;

    return-object p0
.end method

.method public static f()J
    .locals 8

    .line 1
    sget-wide v0, Lcom/sgscq/vpn/c7;->j:J

    .line 2
    .line 3
    sget-wide v2, Lcom/sgscq/vpn/c7;->k:J

    .line 4
    .line 5
    const-wide/16 v4, 0x0

    .line 6
    .line 7
    cmp-long v6, v0, v4

    .line 8
    .line 9
    if-lez v6, :cond_0

    .line 10
    .line 11
    cmp-long v6, v2, v4

    .line 12
    .line 13
    if-lez v6, :cond_0

    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v6

    .line 19
    sub-long/2addr v6, v2

    .line 20
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    add-long/2addr v2, v0

    .line 25
    sput-wide v2, Lcom/sgscq/vpn/c7;->l:J

    .line 26
    .line 27
    return-wide v2

    .line 28
    :cond_0
    sget-wide v0, Lcom/sgscq/vpn/c7;->l:J

    .line 29
    .line 30
    cmp-long v2, v0, v4

    .line 31
    .line 32
    if-lez v2, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    :goto_0
    return-wide v0
.end method

.method public static g()J
    .locals 4

    .line 1
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final a(ZJLjava/lang/String;J)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/sgscq/vpn/c7;->d:Z

    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/sgscq/vpn/c7;->e:Z

    .line 5
    .line 6
    if-eqz p4, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string p4, ""

    .line 10
    .line 11
    :goto_0
    iput-object p4, p0, Lcom/sgscq/vpn/c7;->f:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    cmp-long p4, p5, v1

    .line 18
    .line 19
    if-lez p4, :cond_1

    .line 20
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    const-wide/16 v3, 0x1

    .line 26
    .line 27
    invoke-static {v3, v4, p5, p6}, Ljava/lang/Math;->max(JJ)J

    .line 28
    .line 29
    .line 30
    move-result-wide p4

    .line 31
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    sput-wide p4, Lcom/sgscq/vpn/c7;->j:J

    .line 36
    .line 37
    sput-wide v1, Lcom/sgscq/vpn/c7;->k:J

    .line 38
    .line 39
    sput-wide p4, Lcom/sgscq/vpn/c7;->l:J

    .line 40
    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/sgscq/vpn/c7;->e()Z

    .line 42
    .line 43
    .line 44
    move-result p4

    .line 45
    sput-boolean p4, Lcom/sgscq/vpn/c7;->i:Z

    .line 46
    .line 47
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    .line 48
    .line 49
    .line 50
    move-result-wide p4

    .line 51
    iget-object p6, p0, Lcom/sgscq/vpn/c7;->a:Landroid/content/SharedPreferences;

    .line 52
    .line 53
    invoke-interface {p6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 54
    .line 55
    .line 56
    move-result-object p6

    .line 57
    const-string v1, "checked"

    .line 58
    .line 59
    invoke-interface {p6, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 60
    .line 61
    .line 62
    move-result-object p6

    .line 63
    const-string v0, "trusted"

    .line 64
    .line 65
    invoke-interface {p6, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-string p6, "skew_ms"

    .line 70
    .line 71
    invoke-interface {p1, p6, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string p2, "source"

    .line 76
    .line 77
    iget-object p3, p0, Lcom/sgscq/vpn/c7;->f:Ljava/lang/String;

    .line 78
    .line 79
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string p2, "checked_at"

    .line 84
    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-string p2, "trusted_base_ms"

    .line 94
    .line 95
    sget-wide v0, Lcom/sgscq/vpn/c7;->j:J

    .line 96
    .line 97
    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    const-string p2, "elapsed_base_ms"

    .line 102
    .line 103
    sget-wide v0, Lcom/sgscq/vpn/c7;->k:J

    .line 104
    .line 105
    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const-string p2, "game_time_ms"

    .line 110
    .line 111
    invoke-interface {p1, p2, p4, p5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const-string p2, "game_elapsed_base_ms"

    .line 116
    .line 117
    sget-wide p3, Lcom/sgscq/vpn/c7;->k:J

    .line 118
    .line 119
    invoke-interface {p1, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sgscq/vpn/c7;->d:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sgscq/vpn/c7;->e:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final h(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sgscq/vpn/c7;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "game_time_ms"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "game_elapsed_base_ms"

    sget-wide v0, Lcom/sgscq/vpn/c7;->k:J

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/c7;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sgscq/vpn/b;

    const/16 v3, 0x9

    invoke-direct {v1, p0, v3}, Lcom/sgscq/vpn/b;-><init>(Ljava/lang/Object;I)V

    const-string v3, "GameTime"

    invoke-direct {v0, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sgscq/vpn/c7;->d:Z

    if-nez v0, :cond_0

    const-string v0, "\u6b63\u5728\u6821\u9a8c\u7f51\u7edc\u65f6\u95f4\uff0c\u9650\u65f6\u529f\u80fd\u6682\u4e0d\u53ef\u7528"

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/sgscq/vpn/c7;->e:Z

    if-eqz v0, :cond_1

    const-string v0, "\u7f51\u7edc\u65f6\u95f4\u6821\u9a8c\u6b63\u5e38"

    return-object v0

    :cond_1
    const-string v0, "\u672c\u673a\u65f6\u95f4\u5f02\u5e38\uff0c\u9650\u65f6\u529f\u80fd\u548c\u8bbe\u7f6e\u5df2\u7981\u7528"

    return-object v0
.end method

.method public final k(Lcom/sgscq/vpn/b7;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/sgscq/vpn/c7;->i()V

    iget-boolean v0, p0, Lcom/sgscq/vpn/c7;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sgscq/vpn/c7;->e:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    move-result-wide v2

    iget-object v0, p0, Lcom/sgscq/vpn/c7;->a:Landroid/content/SharedPreferences;

    const-string v4, "checked_at"

    const-wide/16 v5, 0x0

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1b7740

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1, v1}, Lcom/sgscq/vpn/b7;->b(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sgscq/vpn/c7;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/sgscq/vpn/c7;->e:Z

    invoke-interface {p1, v0}, Lcom/sgscq/vpn/b7;->b(Z)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sgscq/vpn/d;

    const/16 v2, 0x1a

    invoke-direct {v1, p0, p1, v2}, Lcom/sgscq/vpn/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string p1, "TrustedTime"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
