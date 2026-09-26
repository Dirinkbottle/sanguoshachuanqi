.class public final Lo/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static volatile j:Lo/j;

.field public static volatile k:Lcom/sgscq/vpn/e3;


# instance fields
.field public final a:Lcom/sgscq/vpn/f2;

.field public final b:Lo/i;

.field public final c:Lo/c;

.field public final d:Lcom/sgscq/vpn/y0;

.field public final e:Lcom/sgscq/vpn/y0;

.field public final f:Lcom/sgscq/vpn/k;

.field public volatile g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lo/j;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lo/j;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lo/j;->g:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lo/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lo/c;-><init>(ILandroid/content/Context;)V

    new-instance v1, Lo/l;

    invoke-direct {v1, p1}, Lo/l;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/sgscq/vpn/k;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lcom/sgscq/vpn/k;-><init>(I)V

    new-instance v3, Lcom/sgscq/vpn/f2;

    const/4 v4, 0x5

    invoke-direct {v3, v4, p1}, Lcom/sgscq/vpn/f2;-><init>(ILandroid/content/Context;)V

    iput-object v3, p0, Lo/j;->a:Lcom/sgscq/vpn/f2;

    new-instance v3, Lo/i;

    invoke-direct {v3, p1, v0, v1, v2}, Lo/i;-><init>(Landroid/content/Context;Lo/c;Lo/l;Lcom/sgscq/vpn/k;)V

    iput-object v3, p0, Lo/j;->b:Lo/i;

    new-instance v2, Lo/c;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p1}, Lo/c;-><init>(ILandroid/content/Context;)V

    iput-object v2, p0, Lo/j;->c:Lo/c;

    new-instance p1, Lcom/sgscq/vpn/y0;

    invoke-direct {p1, v0, v4}, Lcom/sgscq/vpn/y0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lo/j;->d:Lcom/sgscq/vpn/y0;

    new-instance p1, Lcom/sgscq/vpn/y0;

    const/4 v0, 0x6

    invoke-direct {p1, v1, v0}, Lcom/sgscq/vpn/y0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lo/j;->e:Lcom/sgscq/vpn/y0;

    new-instance p1, Lcom/sgscq/vpn/k;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, Lcom/sgscq/vpn/k;-><init>(I)V

    iput-object p1, p0, Lo/j;->f:Lcom/sgscq/vpn/k;

    return-void
.end method

.method public static a(Ljava/lang/Exception;)Z
    .locals 6

    .line 1
    instance-of v0, p0, Lq/k;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    move-object v0, p0

    .line 8
    :goto_0
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eq v2, v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    if-nez v0, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    move-object p0, v0

    .line 31
    :goto_1
    nop

    .line 32
    instance-of v0, p0, Ljavax/net/ssl/SSLHandshakeException;

    .line 33
    .line 34
    if-nez v0, :cond_b

    .line 35
    .line 36
    instance-of v0, p0, Ljava/security/GeneralSecurityException;

    .line 37
    .line 38
    if-nez v0, :cond_b

    .line 39
    .line 40
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_3
    instance-of v0, p0, Lcom/sgscq/vpn/cloud/a0;

    .line 46
    .line 47
    const/16 v2, 0x1f8

    .line 48
    .line 49
    const/16 v3, 0x1f7

    .line 50
    .line 51
    const/16 v4, 0x1f6

    .line 52
    .line 53
    const/4 v5, 0x1

    .line 54
    if-eqz v0, :cond_6

    .line 55
    .line 56
    check-cast p0, Lcom/sgscq/vpn/cloud/a0;

    .line 57
    .line 58
    iget p0, p0, Lcom/sgscq/vpn/cloud/a0;->a:I

    .line 59
    .line 60
    if-eq p0, v4, :cond_4

    .line 61
    .line 62
    if-eq p0, v3, :cond_4

    .line 63
    .line 64
    if-ne p0, v2, :cond_5

    .line 65
    .line 66
    :cond_4
    move v1, v5

    .line 67
    :cond_5
    return v1

    .line 68
    :cond_6
    instance-of v0, p0, Lq/j;

    .line 69
    .line 70
    if-eqz v0, :cond_9

    .line 71
    .line 72
    check-cast p0, Lq/j;

    .line 73
    .line 74
    iget p0, p0, Lq/j;->a:I

    .line 75
    .line 76
    if-eq p0, v4, :cond_7

    .line 77
    .line 78
    if-eq p0, v3, :cond_7

    .line 79
    .line 80
    if-ne p0, v2, :cond_8

    .line 81
    .line 82
    :cond_7
    move v1, v5

    .line 83
    :cond_8
    return v1

    .line 84
    :cond_9
    instance-of v0, p0, Ljava/net/UnknownHostException;

    .line 85
    .line 86
    if-nez v0, :cond_a

    .line 87
    .line 88
    instance-of v0, p0, Ljava/net/ConnectException;

    .line 89
    .line 90
    if-nez v0, :cond_a

    .line 91
    .line 92
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    .line 93
    .line 94
    if-nez v0, :cond_a

    .line 95
    .line 96
    instance-of v0, p0, Ljava/net/NoRouteToHostException;

    .line 97
    .line 98
    if-nez v0, :cond_a

    .line 99
    .line 100
    instance-of v0, p0, Ljava/net/SocketException;

    .line 101
    .line 102
    if-eqz v0, :cond_b

    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 113
    .line 114
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    const-string v0, "reset"

    .line 119
    .line 120
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    if-eqz p0, :cond_b

    .line 125
    .line 126
    :cond_a
    move v1, v5

    .line 127
    :cond_b
    :goto_2
    return v1
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    sget-object v0, Lo/j;->j:Lo/j;

    .line 9
    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    const-class v1, Lo/j;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lo/j;->j:Lo/j;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Lo/j;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lo/j;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lo/j;->j:Lo/j;

    .line 25
    .line 26
    :cond_1
    monitor-exit v1

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0

    .line 31
    :cond_2
    :goto_0
    iget p0, v0, Lo/j;->g:I

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    if-nez p1, :cond_3

    .line 35
    .line 36
    if-ne p0, v1, :cond_5

    .line 37
    .line 38
    :cond_3
    const/4 p1, 0x3

    .line 39
    if-eq p0, p1, :cond_5

    .line 40
    .line 41
    const/4 p1, 0x5

    .line 42
    if-eq p0, p1, :cond_5

    .line 43
    .line 44
    sget-object p0, Lo/j;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-nez p0, :cond_4

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_4
    new-instance p0, Ljava/lang/Thread;

    .line 55
    .line 56
    new-instance p1, Lcom/sgscq/vpn/b;

    .line 57
    .line 58
    const/16 v1, 0xb

    .line 59
    .line 60
    invoke-direct {p1, v0, v1}, Lcom/sgscq/vpn/b;-><init>(Ljava/lang/Object;I)V

    .line 61
    .line 62
    .line 63
    const-string v0, "sgscq-battle-startup"

    .line 64
    .line 65
    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 69
    .line 70
    .line 71
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public final declared-synchronized c()I
    .locals 11

    .line 1
    const-string v0, "offline startup failed: "

    .line 2
    .line 3
    const-string v1, "offline cache refresh failed: "

    .line 4
    .line 5
    const-string v2, "online startup failed: "

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget v3, p0, Lo/j;->g:I

    .line 9
    .line 10
    const/4 v4, 0x3

    .line 11
    if-eq v3, v4, :cond_c

    .line 12
    .line 13
    iget v3, p0, Lo/j;->g:I

    .line 14
    .line 15
    const/4 v5, 0x5

    .line 16
    if-ne v3, v5, :cond_0

    .line 17
    .line 18
    goto/16 :goto_8

    .line 19
    .line 20
    :cond_0
    const/4 v3, 0x2

    .line 21
    iput v3, p0, Lo/j;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    :try_start_1
    iget-object v3, p0, Lo/j;->a:Lcom/sgscq/vpn/f2;

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/sgscq/vpn/f2;->b()Lcom/sgscq/vpn/e0;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-object v6, v3, Lcom/sgscq/vpn/e0;->b:Ljava/lang/Object;

    .line 30
    .line 31
    move-object v7, v6

    .line 32
    check-cast v7, Lo/h;

    .line 33
    .line 34
    if-eqz v7, :cond_3

    .line 35
    .line 36
    check-cast v6, Lo/h;

    .line 37
    .line 38
    invoke-virtual {v6}, Lo/h;->status()Lcom/sgscq/battle/api/BattleRuntimeStatus;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    sget-object v7, Lcom/sgscq/battle/api/BattleRuntimeStatus;->READY:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    .line 43
    .line 44
    if-ne v6, v7, :cond_3

    .line 45
    .line 46
    iget-object v6, v3, Lcom/sgscq/vpn/e0;->b:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v6, Lo/h;

    .line 49
    .line 50
    if-nez v6, :cond_1

    .line 51
    .line 52
    const/4 v6, 0x0

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance v7, Lo/h;

    .line 55
    .line 56
    invoke-direct {v7, v6}, Lo/h;-><init>(Lcom/sgscq/battle/api/BattleRuntime;)V

    .line 57
    .line 58
    .line 59
    move-object v6, v7

    .line 60
    :goto_0
    sput-object v6, Lo/h;->c:Lo/h;

    .line 61
    .line 62
    iget-object v6, p0, Lo/j;->c:Lo/c;

    .line 63
    .line 64
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    iget-object v6, v3, Lcom/sgscq/vpn/e0;->c:Ljava/lang/Object;

    .line 68
    .line 69
    move-object v7, v6

    .line 70
    check-cast v7, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    if-eqz v7, :cond_2

    .line 73
    .line 74
    :try_start_2
    iget-object v7, p0, Lo/j;->d:Lcom/sgscq/vpn/y0;

    .line 75
    .line 76
    check-cast v6, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;

    .line 77
    .line 78
    invoke-virtual {v7, v6}, Lcom/sgscq/vpn/y0;->b(Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;)V

    .line 79
    .line 80
    .line 81
    iget-object v6, p0, Lo/j;->e:Lcom/sgscq/vpn/y0;

    .line 82
    .line 83
    iget-wide v7, v3, Lcom/sgscq/vpn/e0;->a:J

    .line 84
    .line 85
    iget-object v3, p0, Lo/j;->f:Lcom/sgscq/vpn/k;

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/sgscq/vpn/k;->c()J

    .line 88
    .line 89
    .line 90
    move-result-wide v9

    .line 91
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sgscq/vpn/y0;->c(JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catch_0
    move-exception v3

    .line 96
    :try_start_3
    const-string v6, "BattleRuntime"

    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {v6, v1}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_2
    :goto_1
    iput v4, p0, Lo/j;->g:I

    .line 114
    .line 115
    iget v0, p0, Lo/j;->g:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    .line 117
    monitor-exit p0

    .line 118
    return v0

    .line 119
    :catch_1
    move-exception v1

    .line 120
    goto :goto_2

    .line 121
    :cond_3
    :try_start_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 122
    .line 123
    const-string v3, "battle_runtime_load_failed"

    .line 124
    .line 125
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 129
    :goto_2
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v4, ":"

    .line 146
    .line 147
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    instance-of v4, v1, Lcom/sgscq/vpn/cloud/a0;

    .line 166
    .line 167
    if-eqz v4, :cond_4

    .line 168
    .line 169
    move-object v4, v1

    .line 170
    check-cast v4, Lcom/sgscq/vpn/cloud/a0;

    .line 171
    .line 172
    new-instance v6, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v3, " http="

    .line 181
    .line 182
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    iget v3, v4, Lcom/sgscq/vpn/cloud/a0;->a:I

    .line 186
    .line 187
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v3, " code="

    .line 191
    .line 192
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    iget-object v3, v4, Lcom/sgscq/vpn/cloud/a0;->b:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    :cond_4
    const-string v4, "BattleRuntime"

    .line 205
    .line 206
    new-instance v6, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-static {v4, v2}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget-object v2, p0, Lo/j;->c:Lo/c;

    .line 222
    .line 223
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    invoke-static {v1}, Lo/j;->a(Ljava/lang/Exception;)Z

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    const/16 v3, 0x8

    .line 231
    .line 232
    if-nez v2, :cond_a

    .line 233
    .line 234
    move-object v0, v1

    .line 235
    :goto_3
    if-eqz v0, :cond_5

    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    if-eqz v2, :cond_5

    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    if-eq v2, v0, :cond_5

    .line 248
    .line 249
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    goto :goto_3

    .line 254
    :cond_5
    if-nez v0, :cond_6

    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_6
    move-object v1, v0

    .line 258
    :goto_4
    nop

    .line 259
    instance-of v0, v1, Lcom/sgscq/vpn/cloud/a0;

    .line 260
    .line 261
    if-eqz v0, :cond_7

    .line 262
    .line 263
    move-object v0, v1

    .line 264
    check-cast v0, Lcom/sgscq/vpn/cloud/a0;

    .line 265
    .line 266
    iget v0, v0, Lcom/sgscq/vpn/cloud/a0;->a:I

    .line 267
    .line 268
    const/16 v2, 0x1aa

    .line 269
    .line 270
    if-ne v0, v2, :cond_7

    .line 271
    .line 272
    const/4 v3, 0x7

    .line 273
    goto :goto_5

    .line 274
    :cond_7
    instance-of v0, v1, Ljavax/net/ssl/SSLHandshakeException;

    .line 275
    .line 276
    if-nez v0, :cond_9

    .line 277
    .line 278
    instance-of v0, v1, Ljava/security/GeneralSecurityException;

    .line 279
    .line 280
    if-nez v0, :cond_9

    .line 281
    .line 282
    instance-of v0, v1, Ljava/lang/IllegalArgumentException;

    .line 283
    .line 284
    if-eqz v0, :cond_8

    .line 285
    .line 286
    goto :goto_5

    .line 287
    :cond_8
    const/4 v3, 0x6

    .line 288
    :cond_9
    :goto_5
    iput v3, p0, Lo/j;->g:I

    .line 289
    .line 290
    iget v0, p0, Lo/j;->g:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 291
    .line 292
    monitor-exit p0

    .line 293
    return v0

    .line 294
    :cond_a
    const/4 v1, 0x4

    .line 295
    :try_start_6
    iput v1, p0, Lo/j;->g:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 296
    .line 297
    :try_start_7
    iget-object v1, p0, Lo/j;->b:Lo/i;

    .line 298
    .line 299
    invoke-virtual {v1}, Lo/i;->a()Lo/h;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-virtual {v1}, Lo/h;->status()Lcom/sgscq/battle/api/BattleRuntimeStatus;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    sget-object v4, Lcom/sgscq/battle/api/BattleRuntimeStatus;->READY:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    .line 308
    .line 309
    if-ne v2, v4, :cond_b

    .line 310
    .line 311
    new-instance v2, Lo/h;

    .line 312
    .line 313
    invoke-direct {v2, v1}, Lo/h;-><init>(Lcom/sgscq/battle/api/BattleRuntime;)V

    .line 314
    .line 315
    .line 316
    sput-object v2, Lo/h;->c:Lo/h;

    .line 317
    .line 318
    iput v5, p0, Lo/j;->g:I

    .line 319
    .line 320
    goto :goto_7

    .line 321
    :catch_2
    move-exception v1

    .line 322
    goto :goto_6

    .line 323
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 324
    .line 325
    const-string v2, "offline_runtime_invalid"

    .line 326
    .line 327
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 331
    :goto_6
    :try_start_8
    const-string v2, "BattleRuntime"

    .line 332
    .line 333
    new-instance v4, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    const-string v0, ":"

    .line 350
    .line 351
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-static {v2, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    iput v3, p0, Lo/j;->g:I

    .line 373
    .line 374
    :goto_7
    iget v0, p0, Lo/j;->g:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 375
    .line 376
    monitor-exit p0

    .line 377
    return v0

    .line 378
    :cond_c
    :goto_8
    :try_start_9
    iget v0, p0, Lo/j;->g:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 379
    .line 380
    monitor-exit p0

    .line 381
    return v0

    .line 382
    :catchall_0
    move-exception v0

    .line 383
    monitor-exit p0

    .line 384
    throw v0
.end method
