.class public final Lcom/sgscq/vpn/cloud/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:La/a;


# instance fields
.field public final a:Lcom/sgscq/vpn/cloud/z;

.field public final b:Lm/e;

.field public final c:Lcom/sgscq/vpn/cloud/b0;

.field public final d:Lcom/sgscq/vpn/f0;

.field public final e:Lcom/sgscq/vpn/m4;

.field public final f:Lcom/sgscq/vpn/cloud/l0;

.field public final g:Lcom/sgscq/vpn/cloud/b0;

.field public final h:Lc/e;

.field public final i:Landroid/content/Context;

.field public volatile j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, La/a;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, La/a;-><init>(I)V

    sput-object v0, Lcom/sgscq/vpn/cloud/q0;->k:La/a;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sgscq/vpn/cloud/q0;->i:Landroid/content/Context;

    new-instance v0, Lcom/sgscq/vpn/cloud/z;

    invoke-direct {v0, p1}, Lcom/sgscq/vpn/cloud/z;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sgscq/vpn/cloud/q0;->a:Lcom/sgscq/vpn/cloud/z;

    new-instance v0, Lm/e;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Lm/e;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/sgscq/vpn/cloud/q0;->b:Lm/e;

    new-instance v0, Lcom/sgscq/vpn/cloud/b0;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p1}, Lcom/sgscq/vpn/cloud/b0;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/sgscq/vpn/cloud/q0;->c:Lcom/sgscq/vpn/cloud/b0;

    new-instance v0, Lcom/sgscq/vpn/f0;

    invoke-direct {v0, p1}, Lcom/sgscq/vpn/f0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sgscq/vpn/cloud/q0;->d:Lcom/sgscq/vpn/f0;

    new-instance v0, Lcom/sgscq/vpn/m4;

    invoke-direct {v0, p1}, Lcom/sgscq/vpn/m4;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sgscq/vpn/cloud/q0;->e:Lcom/sgscq/vpn/m4;

    new-instance v0, Lcom/sgscq/vpn/cloud/l0;

    invoke-direct {v0, p1}, Lcom/sgscq/vpn/cloud/l0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sgscq/vpn/cloud/q0;->f:Lcom/sgscq/vpn/cloud/l0;

    new-instance v0, Lcom/sgscq/vpn/cloud/b0;

    const/4 v2, 0x2

    invoke-direct {v0, v2, p1}, Lcom/sgscq/vpn/cloud/b0;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/sgscq/vpn/cloud/q0;->g:Lcom/sgscq/vpn/cloud/b0;

    new-instance v0, Lc/e;

    invoke-direct {v0, v1, p1}, Lc/e;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/sgscq/vpn/cloud/q0;->h:Lc/e;

    return-void
.end method

.method public static c(Lcom/sgscq/vpn/cloud/p0;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/sgscq/vpn/cloud/p0;->b:Lcom/sgscq/vpn/cloud/p0;

    if-ne p0, v0, :cond_0

    const-string p0, "\u8bf7\u5148\u767b\u5f55\u7231\u53d1\u7535"

    return-object p0

    :cond_0
    sget-object v0, Lcom/sgscq/vpn/cloud/p0;->c:Lcom/sgscq/vpn/cloud/p0;

    if-eq p0, v0, :cond_3

    sget-object v0, Lcom/sgscq/vpn/cloud/p0;->d:Lcom/sgscq/vpn/cloud/p0;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sgscq/vpn/cloud/p0;->e:Lcom/sgscq/vpn/cloud/p0;

    if-ne p0, v0, :cond_2

    const-string p0, "\u65e0\u6cd5\u786e\u8ba4\u4e91\u5b58\u6863\u72b6\u6001\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    return-object p0

    :cond_2
    const-string p0, "\u53ef\u4ee5\u65b0\u5efa\u4e91\u5b58\u6863"

    return-object p0

    :cond_3
    :goto_0
    const-string p0, "\u5f53\u524d\u8d26\u53f7\u5df2\u6709\u4e91\u5b58\u6863"

    return-object p0
.end method

.method public static i(Lcom/sgscq/vpn/y0;III)V
    .locals 3

    .line 1
    const-class v0, Lcom/sgscq/vpn/cloud/m0;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/sgscq/vpn/cloud/m0;->a:Z

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    if-nez p1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move v1, p1

    .line 15
    :goto_0
    sput v1, Lcom/sgscq/vpn/cloud/m0;->b:I

    .line 16
    .line 17
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    sput v1, Lcom/sgscq/vpn/cloud/m0;->c:I

    .line 22
    .line 23
    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    sput v1, Lcom/sgscq/vpn/cloud/m0;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    :goto_1
    monitor-exit v0

    .line 30
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    iget-object p0, p0, Lcom/sgscq/vpn/y0;->b:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lcom/sgscq/vpn/SettingsActivity;

    .line 41
    .line 42
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    new-instance v0, Lcom/sgscq/vpn/d6;

    .line 48
    .line 49
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sgscq/vpn/d6;-><init>(Lcom/sgscq/vpn/SettingsActivity;III)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    monitor-exit v0

    .line 58
    throw p0
.end method

.method public static l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    if-nez p0, :cond_0

    move-object p0, v0

    :cond_0
    if-nez p1, :cond_1

    move-object p1, v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u672c\u5730\u4e91\u5b58\u6863\u4e0e\u670d\u52a1\u5668\u7ed1\u5b9a\u4e0d\u4e00\u81f4"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    return-object p0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    return-object p1

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u8bf7\u5148\u65b0\u5efa\u672c\u4eba\u4e91\u5b58\u6863\u7a7a\u53f7"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Lcom/sgscq/vpn/d3;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/q0;->i:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/sgscq/vpn/p7;->h(Landroid/content/Context;)Lcom/sgscq/vpn/p7;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p1, Lcom/sgscq/vpn/d3;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/util/List;

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-static {v1}, Lcom/sgscq/vpn/p7;->D(Ljava/util/List;)Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-boolean v1, v0, Lcom/sgscq/vpn/p7;->p:Z

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v1, v0, Lcom/sgscq/vpn/p7;->a:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/sgscq/vpn/p7;->y(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    iget-boolean p1, v0, Lcom/sgscq/vpn/p7;->r:Z

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iget-object p1, v0, Lcom/sgscq/vpn/p7;->k:Ljava/util/ArrayList;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :goto_0
    invoke-virtual {v0, p1}, Lcom/sgscq/vpn/p7;->p(Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    monitor-exit v1

    .line 42
    goto/16 :goto_4

    .line 43
    .line 44
    :catchall_0
    move-exception p1

    .line 45
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p1

    .line 47
    :cond_1
    invoke-virtual {v0}, Lcom/sgscq/vpn/p7;->i()V

    .line 48
    .line 49
    .line 50
    sget-object v1, Lcom/sgscq/vpn/p7;->u:Ljava/util/concurrent/ExecutorService;

    .line 51
    .line 52
    new-instance v2, Lcom/sgscq/vpn/d;

    .line 53
    .line 54
    const/16 v3, 0x1c

    .line 55
    .line 56
    invoke-direct {v2, v0, p1, v3}, Lcom/sgscq/vpn/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 60
    .line 61
    .line 62
    goto/16 :goto_4

    .line 63
    .line 64
    :cond_2
    iget-object v1, p1, Lcom/sgscq/vpn/d3;->d:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v1, Ljava/util/List;

    .line 67
    .line 68
    if-nez v1, :cond_3

    .line 69
    .line 70
    iget-object v2, p1, Lcom/sgscq/vpn/d3;->e:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v2, Ljava/util/List;

    .line 73
    .line 74
    if-eqz v2, :cond_9

    .line 75
    .line 76
    :cond_3
    iget-object p1, p1, Lcom/sgscq/vpn/d3;->e:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p1, Ljava/util/List;

    .line 79
    .line 80
    invoke-static {v1}, Lcom/sgscq/vpn/p7;->D(Ljava/util/List;)Ljava/util/ArrayList;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    new-instance v2, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    new-instance v3, Ljava/util/HashSet;

    .line 90
    .line 91
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 92
    .line 93
    .line 94
    if-nez p1, :cond_4

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_7

    .line 106
    .line 107
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    check-cast v4, Ljava/lang/String;

    .line 112
    .line 113
    if-nez v4, :cond_5

    .line 114
    .line 115
    const-string v4, ""

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    :goto_2
    invoke-static {v4}, Lcom/sgscq/vpn/p7;->k(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-eqz v5, :cond_6

    .line 127
    .line 128
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-eqz v5, :cond_6

    .line 133
    .line 134
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 139
    .line 140
    const-string v0, "\u4e91\u7aef\u5bf9\u624b\u5220\u9664 ID \u65e0\u6548"

    .line 141
    .line 142
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p1

    .line 146
    :cond_7
    :goto_3
    iget-boolean p1, v0, Lcom/sgscq/vpn/p7;->p:Z

    .line 147
    .line 148
    if-eqz p1, :cond_8

    .line 149
    .line 150
    iget-object p1, v0, Lcom/sgscq/vpn/p7;->a:Ljava/lang/Object;

    .line 151
    .line 152
    monitor-enter p1

    .line 153
    :try_start_1
    invoke-virtual {v0, v1, v2}, Lcom/sgscq/vpn/p7;->b(Ljava/util/List;Ljava/util/List;)V

    .line 154
    .line 155
    .line 156
    monitor-exit p1

    .line 157
    goto :goto_4

    .line 158
    :catchall_1
    move-exception v0

    .line 159
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 160
    throw v0

    .line 161
    :cond_8
    invoke-virtual {v0}, Lcom/sgscq/vpn/p7;->i()V

    .line 162
    .line 163
    .line 164
    sget-object p1, Lcom/sgscq/vpn/p7;->u:Ljava/util/concurrent/ExecutorService;

    .line 165
    .line 166
    new-instance v3, Lcom/sgscq/vpn/c;

    .line 167
    .line 168
    const/16 v4, 0xb

    .line 169
    .line 170
    invoke-direct {v3, v0, v1, v2, v4}, Lcom/sgscq/vpn/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 171
    .line 172
    .line 173
    invoke-interface {p1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 174
    .line 175
    .line 176
    :cond_9
    :goto_4
    return-void
.end method

.method public final b()Lcom/sgscq/vpn/cloud/d0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/q0;->b:Lm/e;

    invoke-virtual {v0}, Lm/e;->y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sgscq/vpn/cloud/q0;->c:Lcom/sgscq/vpn/cloud/b0;

    iget-object v0, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/cloud/b0;->f(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/d0;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sgscq/vpn/cloud/d0;

    invoke-direct {v0}, Lcom/sgscq/vpn/cloud/d0;-><init>()V

    :goto_0
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/sgscq/vpn/cloud/q0;->k()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/sgscq/vpn/cloud/q0;->e:Lcom/sgscq/vpn/m4;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Lcom/sgscq/vpn/m4;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v3, 0x1

    .line 18
    xor-int/2addr v1, v3

    .line 19
    iget-object v4, p0, Lcom/sgscq/vpn/cloud/q0;->a:Lcom/sgscq/vpn/cloud/z;

    .line 20
    .line 21
    iget-object v5, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Lcom/sgscq/vpn/cloud/z;->s(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/x;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    move v4, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v4, 0x0

    .line 32
    :goto_0
    sget-object v5, Lcom/sgscq/vpn/cloud/p0;->a:Lcom/sgscq/vpn/cloud/p0;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    sget-object v1, Lcom/sgscq/vpn/cloud/p0;->c:Lcom/sgscq/vpn/cloud/p0;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    if-eqz v4, :cond_2

    .line 40
    .line 41
    sget-object v1, Lcom/sgscq/vpn/cloud/p0;->d:Lcom/sgscq/vpn/cloud/p0;

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move-object v1, v5

    .line 45
    :goto_1
    if-ne v1, v5, :cond_5

    .line 46
    .line 47
    iget-object v0, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v2, v0}, Lcom/sgscq/vpn/m4;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    xor-int/2addr v1, v3

    .line 58
    if-nez v1, :cond_4

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/sgscq/vpn/m4;->d()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    :try_start_0
    iget-object v3, v2, Lcom/sgscq/vpn/m4;->e:Lc/e;

    .line 65
    .line 66
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :try_start_1
    invoke-static {v0}, Lc/e;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const/4 v4, 0x7

    .line 72
    invoke-virtual {v3, v1, v4, v0}, Lc/e;->a0(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    .line 75
    :try_start_2
    monitor-exit v3

    .line 76
    invoke-virtual {v2, v1}, Lcom/sgscq/vpn/m4;->w(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/sgscq/vpn/m4;->k()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    return-object v1

    .line 90
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 91
    .line 92
    const-string v3, "\u4e91\u5b58\u6863\u5207\u6362\u5931\u8d25"

    .line 93
    .line 94
    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v0

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    monitor-exit v3

    .line 100
    throw v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    invoke-virtual {v2, v1}, Lcom/sgscq/vpn/m4;->e(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v0

    .line 106
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 107
    .line 108
    const-string v1, "\u5f53\u524d\u8d26\u53f7\u5df2\u6709\u4e91\u5b58\u6863"

    .line 109
    .line 110
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v0

    .line 114
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 115
    .line 116
    invoke-static {v1}, Lcom/sgscq/vpn/cloud/q0;->c(Lcom/sgscq/vpn/cloud/p0;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v0
.end method

.method public final e()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/sgscq/vpn/cloud/q0;->k()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/sgscq/vpn/cloud/q0;->a:Lcom/sgscq/vpn/cloud/z;

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lcom/sgscq/vpn/cloud/z;->s(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/x;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v2, p0, Lcom/sgscq/vpn/cloud/q0;->a:Lcom/sgscq/vpn/cloud/z;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/sgscq/vpn/cloud/x;->a:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 24
    .line 25
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "X-Confirm-Cloud-Character"

    .line 29
    .line 30
    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    const-string v3, "DELETE"

    .line 34
    .line 35
    const-string v4, "/cloud-slot"

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    const-string v6, "application/json"

    .line 39
    .line 40
    invoke-virtual/range {v2 .. v7}, Lcom/sgscq/vpn/cloud/z;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    iput-boolean v1, p0, Lcom/sgscq/vpn/cloud/q0;->j:Z

    .line 45
    .line 46
    :goto_0
    iget-object v1, p0, Lcom/sgscq/vpn/cloud/q0;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/cloud/b0;->d(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final f()Lcom/sgscq/vpn/cloud/d0;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/sgscq/vpn/cloud/q0;->k()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/sgscq/vpn/cloud/q0;->a:Lcom/sgscq/vpn/cloud/z;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lcom/sgscq/vpn/cloud/z;->s(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/x;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/sgscq/vpn/cloud/q0;->e:Lcom/sgscq/vpn/m4;

    .line 16
    .line 17
    iget-object v3, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Lcom/sgscq/vpn/m4;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, v1, Lcom/sgscq/vpn/cloud/x;->b:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v3, v2}, Lcom/sgscq/vpn/cloud/q0;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, p0, Lcom/sgscq/vpn/cloud/q0;->d:Lcom/sgscq/vpn/f0;

    .line 30
    .line 31
    iget-object v4, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v3, v2, v4}, Lcom/sgscq/vpn/f0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-boolean v3, v1, Lcom/sgscq/vpn/cloud/x;->k:Z

    .line 37
    .line 38
    iput-boolean v3, p0, Lcom/sgscq/vpn/cloud/q0;->j:Z

    .line 39
    .line 40
    iget-object v3, p0, Lcom/sgscq/vpn/cloud/q0;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 41
    .line 42
    iget-object v4, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v3, v4, v1}, Lcom/sgscq/vpn/cloud/b0;->i(Ljava/lang/String;Lcom/sgscq/vpn/cloud/x;)V

    .line 45
    .line 46
    .line 47
    iget-object v3, p0, Lcom/sgscq/vpn/cloud/q0;->d:Lcom/sgscq/vpn/f0;

    .line 48
    .line 49
    iget-object v3, v3, Lcom/sgscq/vpn/f0;->b:Landroid/content/SharedPreferences;

    .line 50
    .line 51
    invoke-static {v3, v2}, Lcom/sgscq/vpn/y5;->n(Landroid/content/SharedPreferences;Ljava/lang/String;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v5

    .line 55
    iget-object v3, p0, Lcom/sgscq/vpn/cloud/q0;->a:Lcom/sgscq/vpn/cloud/z;

    .line 56
    .line 57
    iget-object v4, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-virtual {v3, v4, v7}, Lcom/sgscq/vpn/cloud/z;->n(Ljava/lang/String;Ljava/util/Map;)[B

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    iget-object v4, p0, Lcom/sgscq/vpn/cloud/q0;->d:Lcom/sgscq/vpn/f0;

    .line 71
    .line 72
    iget-object v8, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 73
    .line 74
    move-object v7, v2

    .line 75
    invoke-virtual/range {v4 .. v9}, Lcom/sgscq/vpn/f0;->f(JLjava/lang/String;Ljava/lang/String;[B)J

    .line 76
    .line 77
    .line 78
    move-result-wide v3

    .line 79
    iget-object v5, p0, Lcom/sgscq/vpn/cloud/q0;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 80
    .line 81
    iget-object v6, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v5, v6, v1, v3, v4}, Lcom/sgscq/vpn/cloud/b0;->g(Ljava/lang/String;Lcom/sgscq/vpn/cloud/x;J)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/sgscq/vpn/cloud/q0;->h:Lc/e;

    .line 87
    .line 88
    iget-object v3, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v1, v2, v3}, Lc/e;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v2}, Lcom/sgscq/vpn/cloud/q0;->m(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/sgscq/vpn/cloud/q0;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/cloud/b0;->f(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/d0;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    return-object v0

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/sgscq/vpn/cloud/q0;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 106
    .line 107
    iget-object v0, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/cloud/b0;->d(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    new-instance v0, Lcom/sgscq/vpn/cloud/a0;

    .line 113
    .line 114
    const/16 v1, 0x194

    .line 115
    .line 116
    const-string v2, "cloud_slot_not_found"

    .line 117
    .line 118
    const/4 v3, 0x0

    .line 119
    const-string v4, "\u5f53\u524d\u8d26\u53f7\u6ca1\u6709\u4e91\u7aef\u89d2\u8272"

    .line 120
    .line 121
    invoke-direct {v0, v1, v3, v2, v4}, Lcom/sgscq/vpn/cloud/a0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v0
.end method

.method public final g(I)Lcom/sgscq/vpn/cloud/d0;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/cloud/q0;->k()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v0, Lcom/sgscq/vpn/cloud/q0;->a:Lcom/sgscq/vpn/cloud/z;

    .line 8
    .line 9
    iget-object v3, v1, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Lcom/sgscq/vpn/cloud/z;->s(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/x;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object v3, v0, Lcom/sgscq/vpn/cloud/q0;->e:Lcom/sgscq/vpn/m4;

    .line 18
    .line 19
    iget-object v4, v1, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v3, v4}, Lcom/sgscq/vpn/m4;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, v2, Lcom/sgscq/vpn/cloud/x;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v4, v3}, Lcom/sgscq/vpn/cloud/q0;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget-object v4, v0, Lcom/sgscq/vpn/cloud/q0;->d:Lcom/sgscq/vpn/f0;

    .line 32
    .line 33
    iget-object v5, v1, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v4, v3, v5}, Lcom/sgscq/vpn/f0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-boolean v4, v2, Lcom/sgscq/vpn/cloud/x;->k:Z

    .line 39
    .line 40
    iput-boolean v4, v0, Lcom/sgscq/vpn/cloud/q0;->j:Z

    .line 41
    .line 42
    iget-object v4, v0, Lcom/sgscq/vpn/cloud/q0;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 43
    .line 44
    iget-object v5, v1, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v4, v5, v2}, Lcom/sgscq/vpn/cloud/b0;->i(Ljava/lang/String;Lcom/sgscq/vpn/cloud/x;)V

    .line 47
    .line 48
    .line 49
    iget-object v4, v0, Lcom/sgscq/vpn/cloud/q0;->d:Lcom/sgscq/vpn/f0;

    .line 50
    .line 51
    iget-object v4, v4, Lcom/sgscq/vpn/f0;->b:Landroid/content/SharedPreferences;

    .line 52
    .line 53
    invoke-static {v4, v3}, Lcom/sgscq/vpn/y5;->n(Landroid/content/SharedPreferences;Ljava/lang/String;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v6

    .line 57
    iget-object v8, v0, Lcom/sgscq/vpn/cloud/q0;->a:Lcom/sgscq/vpn/cloud/z;

    .line 58
    .line 59
    iget-object v13, v1, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    new-instance v14, Ljava/util/LinkedHashMap;

    .line 65
    .line 66
    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    const-string v5, "Idempotency-Key"

    .line 78
    .line 79
    invoke-interface {v14, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    const/4 v4, 0x2

    .line 83
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    const-string v5, "X-Cloud-Save-Schema"

    .line 88
    .line 89
    invoke-interface {v14, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    const-string v9, "GET"

    .line 93
    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v5, "/cloud-slot/save/revision/"

    .line 97
    .line 98
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    move/from16 v5, p1

    .line 102
    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    const/4 v15, 0x0

    .line 111
    const-string v11, "application/octet-stream"

    .line 112
    .line 113
    const-string v12, ""

    .line 114
    .line 115
    invoke-virtual/range {v8 .. v15}, Lcom/sgscq/vpn/cloud/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)Lcom/sgscq/vpn/cloud/t;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    iget-object v10, v4, Lcom/sgscq/vpn/cloud/t;->a:[B

    .line 120
    .line 121
    iget-object v5, v0, Lcom/sgscq/vpn/cloud/q0;->d:Lcom/sgscq/vpn/f0;

    .line 122
    .line 123
    iget-object v9, v1, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 124
    .line 125
    move-object v8, v3

    .line 126
    invoke-virtual/range {v5 .. v10}, Lcom/sgscq/vpn/f0;->f(JLjava/lang/String;Ljava/lang/String;[B)J

    .line 127
    .line 128
    .line 129
    move-result-wide v4

    .line 130
    iget-object v6, v0, Lcom/sgscq/vpn/cloud/q0;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 131
    .line 132
    iget-object v7, v1, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v6, v7, v2, v4, v5}, Lcom/sgscq/vpn/cloud/b0;->g(Ljava/lang/String;Lcom/sgscq/vpn/cloud/x;J)V

    .line 135
    .line 136
    .line 137
    iget-object v2, v0, Lcom/sgscq/vpn/cloud/q0;->h:Lc/e;

    .line 138
    .line 139
    iget-object v4, v1, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v2, v3, v4}, Lc/e;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v3}, Lcom/sgscq/vpn/cloud/q0;->m(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object v2, v0, Lcom/sgscq/vpn/cloud/q0;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 148
    .line 149
    iget-object v1, v1, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v2, v1}, Lcom/sgscq/vpn/cloud/b0;->f(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/d0;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    return-object v1

    .line 156
    :cond_0
    iget-object v2, v0, Lcom/sgscq/vpn/cloud/q0;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 157
    .line 158
    iget-object v1, v1, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v2, v1}, Lcom/sgscq/vpn/cloud/b0;->d(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    new-instance v1, Lcom/sgscq/vpn/cloud/a0;

    .line 164
    .line 165
    const/16 v2, 0x194

    .line 166
    .line 167
    const-string v3, "cloud_slot_not_found"

    .line 168
    .line 169
    const/4 v4, 0x0

    .line 170
    const-string v5, "\u5f53\u524d\u8d26\u53f7\u6ca1\u6709\u4e91\u7aef\u89d2\u8272"

    .line 171
    .line 172
    invoke-direct {v1, v2, v4, v3, v5}, Lcom/sgscq/vpn/cloud/a0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw v1
.end method

.method public final h()Ljava/util/ArrayList;
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/sgscq/vpn/cloud/q0;->k()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v6, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/sgscq/vpn/cloud/q0;->a:Lcom/sgscq/vpn/cloud/z;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v2, "Idempotency-Key"

    .line 26
    .line 27
    invoke-interface {v7, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v2, "X-Cloud-Save-Schema"

    .line 36
    .line 37
    invoke-interface {v7, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    const-string v2, "GET"

    .line 41
    .line 42
    const-string v3, "/cloud-slot/versions"

    .line 43
    .line 44
    const/4 v8, 0x0

    .line 45
    const-string v4, "application/json"

    .line 46
    .line 47
    const-string v5, ""

    .line 48
    .line 49
    invoke-virtual/range {v1 .. v8}, Lcom/sgscq/vpn/cloud/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)Lcom/sgscq/vpn/cloud/t;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v2, Lorg/json/JSONObject;

    .line 63
    .line 64
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v0, "nodes"

    .line 68
    .line 69
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const/4 v2, 0x0

    .line 74
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-ge v2, v3, :cond_0

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    new-instance v12, Lcom/sgscq/vpn/cloud/w;

    .line 85
    .line 86
    const-string v4, "revision"

    .line 87
    .line 88
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    const-string v4, "created_at_ms"

    .line 93
    .line 94
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 95
    .line 96
    .line 97
    move-result-wide v6

    .line 98
    const-string v4, "payload_size"

    .line 99
    .line 100
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    const-string v4, "is_active"

    .line 104
    .line 105
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    const-string v4, "level"

    .line 110
    .line 111
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    const-string v4, "fighting"

    .line 116
    .line 117
    const-wide/16 v10, 0x0

    .line 118
    .line 119
    invoke-virtual {v3, v4, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 120
    .line 121
    .line 122
    move-result-wide v10

    .line 123
    double-to-float v10, v10

    .line 124
    const-string v4, "nickname"

    .line 125
    .line 126
    const-string v11, ""

    .line 127
    .line 128
    invoke-virtual {v3, v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v11

    .line 132
    move-object v4, v12

    .line 133
    invoke-direct/range {v4 .. v11}, Lcom/sgscq/vpn/cloud/w;-><init>(IJZIFLjava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    add-int/lit8 v2, v2, 0x1

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_0
    return-object v1
.end method

.method public final j()Lcom/sgscq/vpn/cloud/d0;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/sgscq/vpn/cloud/q0;->k()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/sgscq/vpn/cloud/q0;->a:Lcom/sgscq/vpn/cloud/z;

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lcom/sgscq/vpn/cloud/z;->s(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/x;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-boolean v2, v1, Lcom/sgscq/vpn/cloud/x;->k:Z

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v2, 0x0

    .line 22
    :goto_0
    iput-boolean v2, p0, Lcom/sgscq/vpn/cloud/q0;->j:Z

    .line 23
    .line 24
    iget-object v2, p0, Lcom/sgscq/vpn/cloud/q0;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 25
    .line 26
    iget-object v3, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v2, v3, v1}, Lcom/sgscq/vpn/cloud/b0;->i(Ljava/lang/String;Lcom/sgscq/vpn/cloud/x;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/sgscq/vpn/cloud/q0;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/cloud/b0;->f(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/d0;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method public final k()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/q0;->b:Lm/e;

    invoke-virtual {v0}, Lm/e;->y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/sgscq/vpn/cloud/a0;

    const/4 v1, 0x0

    const-string v2, "\u8bf7\u5148\u767b\u5f55\u7231\u53d1\u7535"

    const/16 v3, 0x191

    const-string v4, "afdian_login_required"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/sgscq/vpn/cloud/a0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public final m(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/q0;->e:Lcom/sgscq/vpn/m4;

    invoke-virtual {v0, p1}, Lcom/sgscq/vpn/m4;->w(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {v0}, Lcom/sgscq/vpn/m4;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "\u4e91\u5b58\u6863\u5207\u6362\u5931\u8d25"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final n(Lcom/sgscq/vpn/y0;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/sgscq/vpn/cloud/q0;->k()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/sgscq/vpn/cloud/q0;->e:Lcom/sgscq/vpn/m4;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/sgscq/vpn/m4;->k()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/sgscq/vpn/cloud/q0;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 12
    .line 13
    iget-object v3, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Lcom/sgscq/vpn/cloud/b0;->f(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/d0;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v0, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v2, v0, v1}, Lcom/sgscq/vpn/cloud/d0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/sgscq/vpn/cloud/q0;->k()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 28
    .line 29
    .line 30
    sget-object v0, Lcom/sgscq/vpn/cloud/q0;->k:La/a;

    .line 31
    .line 32
    iget-object v1, v0, La/a;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x1

    .line 38
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    const-class v1, Lcom/sgscq/vpn/cloud/m0;

    .line 45
    .line 46
    monitor-enter v1

    .line 47
    :try_start_0
    sput-boolean v3, Lcom/sgscq/vpn/cloud/m0;->a:Z

    .line 48
    .line 49
    sput v3, Lcom/sgscq/vpn/cloud/m0;->b:I

    .line 50
    .line 51
    sput v2, Lcom/sgscq/vpn/cloud/m0;->c:I

    .line 52
    .line 53
    sput v2, Lcom/sgscq/vpn/cloud/m0;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 54
    .line 55
    monitor-exit v1

    .line 56
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/cloud/q0;->p(Lcom/sgscq/vpn/y0;)I

    .line 57
    .line 58
    .line 59
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    const-class v1, Lcom/sgscq/vpn/cloud/m0;

    .line 61
    .line 62
    monitor-enter v1

    .line 63
    :try_start_2
    sput-boolean v2, Lcom/sgscq/vpn/cloud/m0;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    .line 65
    monitor-exit v1

    .line 66
    iget-object v0, v0, La/a;->b:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 71
    .line 72
    .line 73
    return p1

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    monitor-exit v1

    .line 76
    throw p1

    .line 77
    :catchall_1
    move-exception p1

    .line 78
    const-class v1, Lcom/sgscq/vpn/cloud/m0;

    .line 79
    .line 80
    monitor-enter v1

    .line 81
    :try_start_3
    sput-boolean v2, Lcom/sgscq/vpn/cloud/m0;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 82
    .line 83
    monitor-exit v1

    .line 84
    iget-object v0, v0, La/a;->b:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 89
    .line 90
    .line 91
    throw p1

    .line 92
    :catchall_2
    move-exception p1

    .line 93
    monitor-exit v1

    .line 94
    throw p1

    .line 95
    :catchall_3
    move-exception p1

    .line 96
    monitor-exit v1

    .line 97
    throw p1

    .line 98
    :cond_0
    new-instance p1, Lcom/sgscq/vpn/cloud/a0;

    .line 99
    .line 100
    const-string v0, "\u5176\u4ed6\u73a9\u5bb6\u9635\u5bb9\u6b63\u5728\u540c\u6b65\uff0c\u8bf7\u7b49\u5f85\u5f53\u524d\u540c\u6b65\u5b8c\u6210"

    .line 101
    .line 102
    const/16 v1, 0x199

    .line 103
    .line 104
    const-string v3, "opponent_sync_in_progress"

    .line 105
    .line 106
    invoke-direct {p1, v1, v2, v3, v0}, Lcom/sgscq/vpn/cloud/a0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p1

    .line 110
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 111
    .line 112
    const-string v0, "\u8bf7\u5148\u4e0a\u4f20\u6216\u4e0b\u8f7d\u672c\u4eba\u4e91\u5b58\u6863"

    .line 113
    .line 114
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p1
.end method

.method public final o(Lcom/sgscq/vpn/y0;J)Lcom/sgscq/vpn/d3;
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-wide/from16 v6, p2

    .line 6
    .line 7
    iget-object v2, v1, Lcom/sgscq/vpn/cloud/q0;->f:Lcom/sgscq/vpn/cloud/l0;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, v2, Lcom/sgscq/vpn/cloud/l0;->d:Ljava/io/File;

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Lcom/sgscq/vpn/cloud/l0;->t(Ljava/io/File;)Lcom/sgscq/vpn/cloud/i0;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    iget-boolean v8, v3, Lcom/sgscq/vpn/cloud/i0;->h:Z

    .line 21
    .line 22
    if-nez v8, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-wide v8, v3, Lcom/sgscq/vpn/cloud/i0;->k:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    move-wide v8, v4

    .line 29
    :goto_1
    monitor-exit v2

    .line 30
    iget-object v2, v1, Lcom/sgscq/vpn/cloud/q0;->f:Lcom/sgscq/vpn/cloud/l0;

    .line 31
    .line 32
    monitor-enter v2

    .line 33
    :try_start_1
    invoke-virtual {v2}, Lcom/sgscq/vpn/cloud/l0;->x()V

    .line 34
    .line 35
    .line 36
    iget-object v3, v2, Lcom/sgscq/vpn/cloud/l0;->e:Ljava/io/File;

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Lcom/sgscq/vpn/cloud/l0;->t(Ljava/io/File;)Lcom/sgscq/vpn/cloud/i0;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-nez v3, :cond_2

    .line 43
    .line 44
    iget-object v3, v2, Lcom/sgscq/vpn/cloud/l0;->e:Ljava/io/File;

    .line 45
    .line 46
    invoke-static {v3}, Lcom/sgscq/vpn/cloud/l0;->z(Ljava/io/File;)V

    .line 47
    .line 48
    .line 49
    iget-object v3, v2, Lcom/sgscq/vpn/cloud/l0;->a:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v4, v5, v3}, Lcom/sgscq/vpn/cloud/i0;->c(JLjava/lang/String;)Lcom/sgscq/vpn/cloud/i0;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iget-object v10, v2, Lcom/sgscq/vpn/cloud/l0;->e:Ljava/io/File;

    .line 56
    .line 57
    invoke-virtual {v2, v10, v3}, Lcom/sgscq/vpn/cloud/l0;->E(Ljava/io/File;Lcom/sgscq/vpn/cloud/i0;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-virtual {v3}, Lcom/sgscq/vpn/cloud/i0;->d()Lcom/sgscq/vpn/cloud/k0;

    .line 61
    .line 62
    .line 63
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 64
    monitor-exit v2

    .line 65
    iget v2, v3, Lcom/sgscq/vpn/cloud/k0;->b:I

    .line 66
    .line 67
    iget-object v10, v1, Lcom/sgscq/vpn/cloud/q0;->f:Lcom/sgscq/vpn/cloud/l0;

    .line 68
    .line 69
    monitor-enter v10

    .line 70
    :try_start_2
    iget-object v11, v10, Lcom/sgscq/vpn/cloud/l0;->d:Ljava/io/File;

    .line 71
    .line 72
    invoke-virtual {v10, v11}, Lcom/sgscq/vpn/cloud/l0;->t(Ljava/io/File;)Lcom/sgscq/vpn/cloud/i0;

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    const/4 v15, 0x1

    .line 77
    if-eqz v11, :cond_3

    .line 78
    .line 79
    iget-boolean v13, v11, Lcom/sgscq/vpn/cloud/i0;->h:Z

    .line 80
    .line 81
    if-eqz v13, :cond_3

    .line 82
    .line 83
    invoke-static {v11}, Lcom/sgscq/vpn/cloud/l0;->h(Lcom/sgscq/vpn/cloud/i0;)Z

    .line 84
    .line 85
    .line 86
    move-result v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 87
    if-eqz v11, :cond_3

    .line 88
    .line 89
    move v11, v15

    .line 90
    goto :goto_2

    .line 91
    :cond_3
    const/4 v11, 0x0

    .line 92
    :goto_2
    monitor-exit v10

    .line 93
    cmp-long v10, v8, v4

    .line 94
    .line 95
    if-lez v10, :cond_5

    .line 96
    .line 97
    if-eqz v11, :cond_4

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_4
    const/4 v11, 0x0

    .line 101
    goto :goto_4

    .line 102
    :cond_5
    :goto_3
    move v11, v15

    .line 103
    :goto_4
    if-eqz v11, :cond_6

    .line 104
    .line 105
    const-string v13, "full"

    .line 106
    .line 107
    iget-object v14, v3, Lcom/sgscq/vpn/cloud/k0;->d:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v13

    .line 113
    if-eqz v13, :cond_7

    .line 114
    .line 115
    iget-wide v13, v3, Lcom/sgscq/vpn/cloud/k0;->f:J

    .line 116
    .line 117
    cmp-long v13, v13, v4

    .line 118
    .line 119
    if-lez v13, :cond_7

    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_6
    const-string v13, "delta"

    .line 123
    .line 124
    iget-object v14, v3, Lcom/sgscq/vpn/cloud/k0;->d:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v13

    .line 130
    if-eqz v13, :cond_7

    .line 131
    .line 132
    iget-wide v13, v3, Lcom/sgscq/vpn/cloud/k0;->e:J

    .line 133
    .line 134
    cmp-long v13, v13, v8

    .line 135
    .line 136
    if-nez v13, :cond_7

    .line 137
    .line 138
    :goto_5
    move v13, v15

    .line 139
    goto :goto_6

    .line 140
    :cond_7
    const/4 v13, 0x0

    .line 141
    :goto_6
    cmp-long v14, v6, v8

    .line 142
    .line 143
    if-ltz v14, :cond_9

    .line 144
    .line 145
    if-eqz v13, :cond_8

    .line 146
    .line 147
    move/from16 v16, v13

    .line 148
    .line 149
    iget-wide v12, v3, Lcom/sgscq/vpn/cloud/k0;->f:J

    .line 150
    .line 151
    cmp-long v12, v12, v6

    .line 152
    .line 153
    if-eqz v12, :cond_a

    .line 154
    .line 155
    :cond_8
    const/4 v13, 0x0

    .line 156
    goto :goto_7

    .line 157
    :cond_9
    move/from16 v16, v13

    .line 158
    .line 159
    :cond_a
    move/from16 v13, v16

    .line 160
    .line 161
    :goto_7
    const/4 v12, 0x2

    .line 162
    if-nez v13, :cond_14

    .line 163
    .line 164
    cmp-long v2, v6, v4

    .line 165
    .line 166
    if-eqz v11, :cond_d

    .line 167
    .line 168
    if-ltz v2, :cond_b

    .line 169
    .line 170
    iget-object v2, v1, Lcom/sgscq/vpn/cloud/q0;->a:Lcom/sgscq/vpn/cloud/z;

    .line 171
    .line 172
    const-string v3, ""

    .line 173
    .line 174
    invoke-virtual {v2, v3, v6, v7}, Lcom/sgscq/vpn/cloud/z;->r(Ljava/lang/String;J)Lcom/sgscq/vpn/cloud/g;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    goto :goto_8

    .line 179
    :cond_b
    iget-object v6, v1, Lcom/sgscq/vpn/cloud/q0;->a:Lcom/sgscq/vpn/cloud/z;

    .line 180
    .line 181
    const-string v2, ""

    .line 182
    .line 183
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    const-string v7, "GET"

    .line 187
    .line 188
    invoke-static {v2}, Lcom/sgscq/vpn/cloud/z;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    const/4 v9, 0x0

    .line 193
    const-string v10, "application/json"

    .line 194
    .line 195
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 196
    .line 197
    .line 198
    move-result-object v11

    .line 199
    invoke-virtual/range {v6 .. v11}, Lcom/sgscq/vpn/cloud/z;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v2}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-static {v2}, Lcom/sgscq/vpn/cloud/z;->I(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/g;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    :goto_8
    iget-object v3, v1, Lcom/sgscq/vpn/cloud/q0;->f:Lcom/sgscq/vpn/cloud/l0;

    .line 212
    .line 213
    iget-wide v6, v2, Lcom/sgscq/vpn/cloud/g;->b:J

    .line 214
    .line 215
    monitor-enter v3

    .line 216
    cmp-long v4, v6, v4

    .line 217
    .line 218
    if-ltz v4, :cond_c

    .line 219
    .line 220
    :try_start_3
    iget-object v4, v3, Lcom/sgscq/vpn/cloud/l0;->e:Ljava/io/File;

    .line 221
    .line 222
    invoke-static {v4}, Lcom/sgscq/vpn/cloud/l0;->z(Ljava/io/File;)V

    .line 223
    .line 224
    .line 225
    iget-object v4, v3, Lcom/sgscq/vpn/cloud/l0;->a:Ljava/lang/String;

    .line 226
    .line 227
    invoke-static {v6, v7, v4}, Lcom/sgscq/vpn/cloud/i0;->c(JLjava/lang/String;)Lcom/sgscq/vpn/cloud/i0;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    iget-object v5, v3, Lcom/sgscq/vpn/cloud/l0;->e:Ljava/io/File;

    .line 232
    .line 233
    invoke-virtual {v3, v5, v4}, Lcom/sgscq/vpn/cloud/l0;->E(Ljava/io/File;Lcom/sgscq/vpn/cloud/i0;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4}, Lcom/sgscq/vpn/cloud/i0;->d()Lcom/sgscq/vpn/cloud/k0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 237
    .line 238
    .line 239
    monitor-exit v3

    .line 240
    iget v3, v2, Lcom/sgscq/vpn/cloud/g;->a:I

    .line 241
    .line 242
    iget-object v4, v1, Lcom/sgscq/vpn/cloud/q0;->f:Lcom/sgscq/vpn/cloud/l0;

    .line 243
    .line 244
    const-string v5, ""

    .line 245
    .line 246
    iget-object v6, v2, Lcom/sgscq/vpn/cloud/g;->c:Ljava/lang/Object;

    .line 247
    .line 248
    check-cast v6, Ljava/util/List;

    .line 249
    .line 250
    iget-object v2, v2, Lcom/sgscq/vpn/cloud/g;->d:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast v2, Ljava/lang/String;

    .line 253
    .line 254
    invoke-virtual {v4, v5, v2, v6}, Lcom/sgscq/vpn/cloud/l0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/sgscq/vpn/cloud/k0;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    move/from16 v24, v12

    .line 259
    .line 260
    goto/16 :goto_b

    .line 261
    .line 262
    :cond_c
    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 263
    .line 264
    const-string v2, "\u4e91\u7aef\u5bf9\u624b\u76ee\u5f55\u4ee3\u6b21\u65e0\u6548"

    .line 265
    .line 266
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 270
    :catchall_0
    move-exception v0

    .line 271
    monitor-exit v3

    .line 272
    throw v0

    .line 273
    :cond_d
    if-ltz v2, :cond_e

    .line 274
    .line 275
    iget-object v2, v1, Lcom/sgscq/vpn/cloud/q0;->a:Lcom/sgscq/vpn/cloud/z;

    .line 276
    .line 277
    const-string v5, ""

    .line 278
    .line 279
    move-wide v3, v8

    .line 280
    move-wide/from16 v6, p2

    .line 281
    .line 282
    invoke-virtual/range {v2 .. v7}, Lcom/sgscq/vpn/cloud/z;->q(JLjava/lang/String;J)Lcom/sgscq/vpn/d3;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    goto :goto_9

    .line 287
    :cond_e
    iget-object v2, v1, Lcom/sgscq/vpn/cloud/q0;->a:Lcom/sgscq/vpn/cloud/z;

    .line 288
    .line 289
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    const-string v17, "GET"

    .line 293
    .line 294
    if-ltz v10, :cond_13

    .line 295
    .line 296
    const-string v3, ""

    .line 297
    .line 298
    new-instance v4, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    const-string v5, "/opponents/changes?since_generation="

    .line 301
    .line 302
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    const-string v5, "&limit=20"

    .line 309
    .line 310
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v18

    .line 320
    const/16 v19, 0x0

    .line 321
    .line 322
    const-string v20, "application/json"

    .line 323
    .line 324
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 325
    .line 326
    .line 327
    move-result-object v21

    .line 328
    move-object/from16 v16, v2

    .line 329
    .line 330
    invoke-virtual/range {v16 .. v21}, Lcom/sgscq/vpn/cloud/z;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-virtual {v2}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    invoke-static {v2}, Lcom/sgscq/vpn/cloud/z;->H(Ljava/lang/String;)Lcom/sgscq/vpn/d3;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    :goto_9
    iget-wide v3, v2, Lcom/sgscq/vpn/d3;->b:J

    .line 343
    .line 344
    cmp-long v3, v3, v8

    .line 345
    .line 346
    if-ltz v3, :cond_f

    .line 347
    .line 348
    iget-object v3, v2, Lcom/sgscq/vpn/d3;->e:Ljava/lang/Object;

    .line 349
    .line 350
    check-cast v3, Ljava/lang/String;

    .line 351
    .line 352
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 353
    .line 354
    .line 355
    move-result v3

    .line 356
    if-eqz v3, :cond_f

    .line 357
    .line 358
    iget-object v3, v2, Lcom/sgscq/vpn/d3;->c:Ljava/lang/Object;

    .line 359
    .line 360
    check-cast v3, Ljava/util/List;

    .line 361
    .line 362
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 363
    .line 364
    .line 365
    move-result v3

    .line 366
    if-eqz v3, :cond_f

    .line 367
    .line 368
    iget-object v3, v2, Lcom/sgscq/vpn/d3;->d:Ljava/lang/Object;

    .line 369
    .line 370
    check-cast v3, Ljava/util/List;

    .line 371
    .line 372
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 373
    .line 374
    .line 375
    move-result v3

    .line 376
    if-eqz v3, :cond_f

    .line 377
    .line 378
    move v14, v15

    .line 379
    goto :goto_a

    .line 380
    :cond_f
    const/4 v14, 0x0

    .line 381
    :goto_a
    if-eqz v14, :cond_11

    .line 382
    .line 383
    iget-wide v3, v2, Lcom/sgscq/vpn/d3;->b:J

    .line 384
    .line 385
    cmp-long v5, v3, v8

    .line 386
    .line 387
    if-lez v5, :cond_10

    .line 388
    .line 389
    iget-object v5, v1, Lcom/sgscq/vpn/cloud/q0;->f:Lcom/sgscq/vpn/cloud/l0;

    .line 390
    .line 391
    invoke-virtual {v5, v3, v4}, Lcom/sgscq/vpn/cloud/l0;->a(J)V

    .line 392
    .line 393
    .line 394
    :cond_10
    iget-object v3, v1, Lcom/sgscq/vpn/cloud/q0;->f:Lcom/sgscq/vpn/cloud/l0;

    .line 395
    .line 396
    invoke-virtual {v3}, Lcom/sgscq/vpn/cloud/l0;->r()I

    .line 397
    .line 398
    .line 399
    move-result v8

    .line 400
    invoke-static {v0, v12, v8, v8}, Lcom/sgscq/vpn/cloud/q0;->i(Lcom/sgscq/vpn/y0;III)V

    .line 401
    .line 402
    .line 403
    new-instance v0, Lcom/sgscq/vpn/d3;

    .line 404
    .line 405
    const/4 v5, 0x0

    .line 406
    const/4 v6, 0x0

    .line 407
    const/4 v7, 0x0

    .line 408
    iget-wide v9, v2, Lcom/sgscq/vpn/d3;->b:J

    .line 409
    .line 410
    move-object v4, v0

    .line 411
    invoke-direct/range {v4 .. v10}, Lcom/sgscq/vpn/d3;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;IJ)V

    .line 412
    .line 413
    .line 414
    return-object v0

    .line 415
    :cond_11
    iget-object v3, v1, Lcom/sgscq/vpn/cloud/q0;->f:Lcom/sgscq/vpn/cloud/l0;

    .line 416
    .line 417
    iget-wide v4, v2, Lcom/sgscq/vpn/d3;->b:J

    .line 418
    .line 419
    monitor-enter v3

    .line 420
    :try_start_5
    iget-object v6, v3, Lcom/sgscq/vpn/cloud/l0;->d:Ljava/io/File;

    .line 421
    .line 422
    invoke-virtual {v3, v6}, Lcom/sgscq/vpn/cloud/l0;->t(Ljava/io/File;)Lcom/sgscq/vpn/cloud/i0;

    .line 423
    .line 424
    .line 425
    move-result-object v6

    .line 426
    if-lez v10, :cond_12

    .line 427
    .line 428
    cmp-long v7, v4, v8

    .line 429
    .line 430
    if-ltz v7, :cond_12

    .line 431
    .line 432
    if-eqz v6, :cond_12

    .line 433
    .line 434
    iget-boolean v7, v6, Lcom/sgscq/vpn/cloud/i0;->h:Z

    .line 435
    .line 436
    if-eqz v7, :cond_12

    .line 437
    .line 438
    iget-wide v10, v6, Lcom/sgscq/vpn/cloud/i0;->k:J

    .line 439
    .line 440
    cmp-long v7, v10, v8

    .line 441
    .line 442
    if-nez v7, :cond_12

    .line 443
    .line 444
    iget-object v7, v3, Lcom/sgscq/vpn/cloud/l0;->e:Ljava/io/File;

    .line 445
    .line 446
    invoke-static {v7}, Lcom/sgscq/vpn/cloud/l0;->z(Ljava/io/File;)V

    .line 447
    .line 448
    .line 449
    iget-object v11, v3, Lcom/sgscq/vpn/cloud/l0;->a:Ljava/lang/String;

    .line 450
    .line 451
    iget-object v7, v6, Lcom/sgscq/vpn/cloud/i0;->b:Ljava/util/ArrayList;

    .line 452
    .line 453
    iget-object v13, v6, Lcom/sgscq/vpn/cloud/i0;->c:Ljava/util/ArrayList;

    .line 454
    .line 455
    iget-object v6, v6, Lcom/sgscq/vpn/cloud/i0;->e:Ljava/util/ArrayList;

    .line 456
    .line 457
    new-instance v14, Lcom/sgscq/vpn/cloud/i0;

    .line 458
    .line 459
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 460
    .line 461
    .line 462
    move-result-object v16

    .line 463
    const-string v17, ""

    .line 464
    .line 465
    const/16 v18, 0x0

    .line 466
    .line 467
    const/16 v19, 0x0

    .line 468
    .line 469
    const-string v20, "delta"

    .line 470
    .line 471
    move-object v10, v14

    .line 472
    move/from16 v24, v12

    .line 473
    .line 474
    move-object v12, v7

    .line 475
    move-object v7, v14

    .line 476
    move-object/from16 v14, v16

    .line 477
    .line 478
    move-object v15, v6

    .line 479
    move-object/from16 v16, v17

    .line 480
    .line 481
    move/from16 v17, v18

    .line 482
    .line 483
    move/from16 v18, v19

    .line 484
    .line 485
    move-object/from16 v19, v20

    .line 486
    .line 487
    move-wide/from16 v20, v8

    .line 488
    .line 489
    move-wide/from16 v22, v4

    .line 490
    .line 491
    invoke-direct/range {v10 .. v23}, Lcom/sgscq/vpn/cloud/i0;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IZLjava/lang/String;JJ)V

    .line 492
    .line 493
    .line 494
    iget-object v4, v3, Lcom/sgscq/vpn/cloud/l0;->e:Ljava/io/File;

    .line 495
    .line 496
    invoke-virtual {v3, v4, v7}, Lcom/sgscq/vpn/cloud/l0;->E(Ljava/io/File;Lcom/sgscq/vpn/cloud/i0;)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v7}, Lcom/sgscq/vpn/cloud/i0;->d()Lcom/sgscq/vpn/cloud/k0;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 500
    .line 501
    .line 502
    monitor-exit v3

    .line 503
    iget v3, v2, Lcom/sgscq/vpn/d3;->a:I

    .line 504
    .line 505
    iget-object v4, v1, Lcom/sgscq/vpn/cloud/q0;->f:Lcom/sgscq/vpn/cloud/l0;

    .line 506
    .line 507
    const-string v5, ""

    .line 508
    .line 509
    iget-object v6, v2, Lcom/sgscq/vpn/d3;->c:Ljava/lang/Object;

    .line 510
    .line 511
    check-cast v6, Ljava/util/List;

    .line 512
    .line 513
    iget-object v7, v2, Lcom/sgscq/vpn/d3;->d:Ljava/lang/Object;

    .line 514
    .line 515
    check-cast v7, Ljava/util/List;

    .line 516
    .line 517
    iget-object v2, v2, Lcom/sgscq/vpn/d3;->e:Ljava/lang/Object;

    .line 518
    .line 519
    check-cast v2, Ljava/lang/String;

    .line 520
    .line 521
    invoke-virtual {v4, v5, v6, v7, v2}, Lcom/sgscq/vpn/cloud/l0;->b(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lcom/sgscq/vpn/cloud/k0;

    .line 522
    .line 523
    .line 524
    move-result-object v2

    .line 525
    :goto_b
    iget v4, v2, Lcom/sgscq/vpn/cloud/k0;->b:I

    .line 526
    .line 527
    const/4 v5, 0x1

    .line 528
    invoke-static {v0, v5, v4, v3}, Lcom/sgscq/vpn/cloud/q0;->i(Lcom/sgscq/vpn/y0;III)V

    .line 529
    .line 530
    .line 531
    move v15, v5

    .line 532
    move/from16 v25, v3

    .line 533
    .line 534
    move-object v3, v2

    .line 535
    move/from16 v2, v25

    .line 536
    .line 537
    goto :goto_d

    .line 538
    :catchall_1
    move-exception v0

    .line 539
    goto :goto_c

    .line 540
    :cond_12
    :try_start_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 541
    .line 542
    const-string v2, "\u4e91\u7aef\u5bf9\u624b\u589e\u91cf\u57fa\u7840\u4ee3\u6b21\u4e0d\u5339\u914d"

    .line 543
    .line 544
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 548
    :goto_c
    monitor-exit v3

    .line 549
    throw v0

    .line 550
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 551
    .line 552
    const-string v2, "\u4e91\u7aef\u5bf9\u624b\u76ee\u5f55\u4ee3\u6b21\u65e0\u6548"

    .line 553
    .line 554
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    throw v0

    .line 558
    :cond_14
    move/from16 v24, v12

    .line 559
    .line 560
    move v5, v15

    .line 561
    iget v4, v3, Lcom/sgscq/vpn/cloud/k0;->b:I

    .line 562
    .line 563
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 564
    .line 565
    .line 566
    move-result v2

    .line 567
    iget v4, v3, Lcom/sgscq/vpn/cloud/k0;->b:I

    .line 568
    .line 569
    invoke-static {v0, v5, v4, v2}, Lcom/sgscq/vpn/cloud/q0;->i(Lcom/sgscq/vpn/y0;III)V

    .line 570
    .line 571
    .line 572
    const/4 v15, 0x0

    .line 573
    :goto_d
    iget-boolean v4, v3, Lcom/sgscq/vpn/cloud/k0;->c:Z

    .line 574
    .line 575
    if-nez v4, :cond_17

    .line 576
    .line 577
    iget-object v4, v3, Lcom/sgscq/vpn/cloud/k0;->a:Ljava/lang/String;

    .line 578
    .line 579
    const-string v6, "delta"

    .line 580
    .line 581
    iget-object v7, v3, Lcom/sgscq/vpn/cloud/k0;->d:Ljava/lang/String;

    .line 582
    .line 583
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 584
    .line 585
    .line 586
    move-result v6

    .line 587
    if-eqz v6, :cond_15

    .line 588
    .line 589
    iget-object v6, v1, Lcom/sgscq/vpn/cloud/q0;->a:Lcom/sgscq/vpn/cloud/z;

    .line 590
    .line 591
    iget-wide v7, v3, Lcom/sgscq/vpn/cloud/k0;->e:J

    .line 592
    .line 593
    iget-wide v10, v3, Lcom/sgscq/vpn/cloud/k0;->f:J

    .line 594
    .line 595
    move-object v9, v4

    .line 596
    invoke-virtual/range {v6 .. v11}, Lcom/sgscq/vpn/cloud/z;->q(JLjava/lang/String;J)Lcom/sgscq/vpn/d3;

    .line 597
    .line 598
    .line 599
    move-result-object v3

    .line 600
    iget v6, v3, Lcom/sgscq/vpn/d3;->a:I

    .line 601
    .line 602
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 603
    .line 604
    .line 605
    move-result v2

    .line 606
    iget-object v6, v1, Lcom/sgscq/vpn/cloud/q0;->f:Lcom/sgscq/vpn/cloud/l0;

    .line 607
    .line 608
    iget-object v7, v3, Lcom/sgscq/vpn/d3;->c:Ljava/lang/Object;

    .line 609
    .line 610
    check-cast v7, Ljava/util/List;

    .line 611
    .line 612
    iget-object v8, v3, Lcom/sgscq/vpn/d3;->d:Ljava/lang/Object;

    .line 613
    .line 614
    check-cast v8, Ljava/util/List;

    .line 615
    .line 616
    iget-object v3, v3, Lcom/sgscq/vpn/d3;->e:Ljava/lang/Object;

    .line 617
    .line 618
    check-cast v3, Ljava/lang/String;

    .line 619
    .line 620
    invoke-virtual {v6, v4, v7, v8, v3}, Lcom/sgscq/vpn/cloud/l0;->b(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lcom/sgscq/vpn/cloud/k0;

    .line 621
    .line 622
    .line 623
    move-result-object v3

    .line 624
    goto :goto_e

    .line 625
    :cond_15
    iget-object v6, v1, Lcom/sgscq/vpn/cloud/q0;->a:Lcom/sgscq/vpn/cloud/z;

    .line 626
    .line 627
    iget-wide v7, v3, Lcom/sgscq/vpn/cloud/k0;->f:J

    .line 628
    .line 629
    invoke-virtual {v6, v4, v7, v8}, Lcom/sgscq/vpn/cloud/z;->r(Ljava/lang/String;J)Lcom/sgscq/vpn/cloud/g;

    .line 630
    .line 631
    .line 632
    move-result-object v3

    .line 633
    iget v6, v3, Lcom/sgscq/vpn/cloud/g;->a:I

    .line 634
    .line 635
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 636
    .line 637
    .line 638
    move-result v2

    .line 639
    iget-object v6, v1, Lcom/sgscq/vpn/cloud/q0;->f:Lcom/sgscq/vpn/cloud/l0;

    .line 640
    .line 641
    iget-object v7, v3, Lcom/sgscq/vpn/cloud/g;->c:Ljava/lang/Object;

    .line 642
    .line 643
    check-cast v7, Ljava/util/List;

    .line 644
    .line 645
    iget-object v3, v3, Lcom/sgscq/vpn/cloud/g;->d:Ljava/lang/Object;

    .line 646
    .line 647
    check-cast v3, Ljava/lang/String;

    .line 648
    .line 649
    invoke-virtual {v6, v4, v3, v7}, Lcom/sgscq/vpn/cloud/l0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/sgscq/vpn/cloud/k0;

    .line 650
    .line 651
    .line 652
    move-result-object v3

    .line 653
    :goto_e
    iget v4, v3, Lcom/sgscq/vpn/cloud/k0;->b:I

    .line 654
    .line 655
    invoke-static {v0, v5, v4, v2}, Lcom/sgscq/vpn/cloud/q0;->i(Lcom/sgscq/vpn/y0;III)V

    .line 656
    .line 657
    .line 658
    add-int/2addr v15, v5

    .line 659
    const/16 v4, 0x2710

    .line 660
    .line 661
    if-gt v15, v4, :cond_16

    .line 662
    .line 663
    goto :goto_d

    .line 664
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 665
    .line 666
    const-string v2, "\u4e91\u7aef\u5bf9\u624b\u5206\u5305\u6570\u91cf\u5f02\u5e38"

    .line 667
    .line 668
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    throw v0

    .line 672
    :cond_17
    const-string v4, "delta"

    .line 673
    .line 674
    iget-object v5, v3, Lcom/sgscq/vpn/cloud/k0;->d:Ljava/lang/String;

    .line 675
    .line 676
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 677
    .line 678
    .line 679
    move-result v4

    .line 680
    if-eqz v4, :cond_18

    .line 681
    .line 682
    iget v4, v3, Lcom/sgscq/vpn/cloud/k0;->b:I

    .line 683
    .line 684
    if-nez v4, :cond_18

    .line 685
    .line 686
    move/from16 v12, v24

    .line 687
    .line 688
    goto :goto_f

    .line 689
    :cond_18
    const/4 v12, 0x3

    .line 690
    :goto_f
    iget v4, v3, Lcom/sgscq/vpn/cloud/k0;->b:I

    .line 691
    .line 692
    invoke-static {v0, v12, v4, v2}, Lcom/sgscq/vpn/cloud/q0;->i(Lcom/sgscq/vpn/y0;III)V

    .line 693
    .line 694
    .line 695
    const-string v4, "delta"

    .line 696
    .line 697
    iget-object v5, v3, Lcom/sgscq/vpn/cloud/k0;->d:Ljava/lang/String;

    .line 698
    .line 699
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 700
    .line 701
    .line 702
    move-result v4

    .line 703
    const/4 v5, 0x4

    .line 704
    if-eqz v4, :cond_19

    .line 705
    .line 706
    iget-object v4, v1, Lcom/sgscq/vpn/cloud/q0;->f:Lcom/sgscq/vpn/cloud/l0;

    .line 707
    .line 708
    invoke-virtual {v4}, Lcom/sgscq/vpn/cloud/l0;->p()Lcom/sgscq/vpn/cloud/u;

    .line 709
    .line 710
    .line 711
    move-result-object v4

    .line 712
    iget-object v6, v4, Lcom/sgscq/vpn/cloud/u;->a:Ljava/util/List;

    .line 713
    .line 714
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 715
    .line 716
    .line 717
    move-result v6

    .line 718
    iget-object v7, v4, Lcom/sgscq/vpn/cloud/u;->b:Ljava/util/List;

    .line 719
    .line 720
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 721
    .line 722
    .line 723
    move-result v7

    .line 724
    add-int/2addr v7, v6

    .line 725
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    .line 726
    .line 727
    .line 728
    move-result v2

    .line 729
    invoke-static {v0, v5, v7, v2}, Lcom/sgscq/vpn/cloud/q0;->i(Lcom/sgscq/vpn/y0;III)V

    .line 730
    .line 731
    .line 732
    new-instance v0, Lcom/sgscq/vpn/d3;

    .line 733
    .line 734
    const/4 v9, 0x0

    .line 735
    iget-object v10, v4, Lcom/sgscq/vpn/cloud/u;->a:Ljava/util/List;

    .line 736
    .line 737
    iget-object v11, v4, Lcom/sgscq/vpn/cloud/u;->b:Ljava/util/List;

    .line 738
    .line 739
    iget v12, v4, Lcom/sgscq/vpn/cloud/u;->c:I

    .line 740
    .line 741
    iget-wide v13, v3, Lcom/sgscq/vpn/cloud/k0;->f:J

    .line 742
    .line 743
    move-object v8, v0

    .line 744
    invoke-direct/range {v8 .. v14}, Lcom/sgscq/vpn/d3;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;IJ)V

    .line 745
    .line 746
    .line 747
    return-object v0

    .line 748
    :cond_19
    iget-object v2, v1, Lcom/sgscq/vpn/cloud/q0;->f:Lcom/sgscq/vpn/cloud/l0;

    .line 749
    .line 750
    invoke-virtual {v2}, Lcom/sgscq/vpn/cloud/l0;->q()Ljava/util/List;

    .line 751
    .line 752
    .line 753
    move-result-object v7

    .line 754
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 755
    .line 756
    .line 757
    move-result v2

    .line 758
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 759
    .line 760
    .line 761
    move-result v4

    .line 762
    invoke-static {v0, v5, v2, v4}, Lcom/sgscq/vpn/cloud/q0;->i(Lcom/sgscq/vpn/y0;III)V

    .line 763
    .line 764
    .line 765
    new-instance v0, Lcom/sgscq/vpn/d3;

    .line 766
    .line 767
    const/4 v8, 0x0

    .line 768
    const/4 v9, 0x0

    .line 769
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 770
    .line 771
    .line 772
    move-result v10

    .line 773
    iget-wide v11, v3, Lcom/sgscq/vpn/cloud/k0;->f:J

    .line 774
    .line 775
    move-object v6, v0

    .line 776
    invoke-direct/range {v6 .. v12}, Lcom/sgscq/vpn/d3;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;IJ)V

    .line 777
    .line 778
    .line 779
    return-object v0

    .line 780
    :catchall_2
    move-exception v0

    .line 781
    monitor-exit v10

    .line 782
    throw v0

    .line 783
    :catchall_3
    move-exception v0

    .line 784
    monitor-exit v2

    .line 785
    throw v0

    .line 786
    :catchall_4
    move-exception v0

    .line 787
    monitor-exit v2

    .line 788
    throw v0
.end method

.method public final p(Lcom/sgscq/vpn/y0;)I
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/sgscq/vpn/cloud/q0;->j:Z

    .line 2
    .line 3
    const-wide/32 v1, 0x493e0

    .line 4
    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    :try_start_0
    iget-boolean v4, p0, Lcom/sgscq/vpn/cloud/q0;->j:Z

    .line 8
    .line 9
    if-nez v4, :cond_0

    .line 10
    .line 11
    iget-object v4, p0, Lcom/sgscq/vpn/cloud/q0;->g:Lcom/sgscq/vpn/cloud/b0;

    .line 12
    .line 13
    invoke-virtual {v4}, Lcom/sgscq/vpn/cloud/b0;->m()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const-wide/16 v4, -0x1

    .line 17
    .line 18
    move v6, v3

    .line 19
    :goto_0
    invoke-virtual {p0, p1, v4, v5}, Lcom/sgscq/vpn/cloud/q0;->o(Lcom/sgscq/vpn/y0;J)Lcom/sgscq/vpn/d3;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {p0, v4}, Lcom/sgscq/vpn/cloud/q0;->a(Lcom/sgscq/vpn/d3;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 24
    .line 25
    .line 26
    :try_start_1
    iget-object v5, p0, Lcom/sgscq/vpn/cloud/q0;->a:Lcom/sgscq/vpn/cloud/z;

    .line 27
    .line 28
    iget-wide v7, v4, Lcom/sgscq/vpn/d3;->b:J

    .line 29
    .line 30
    invoke-virtual {v5, v7, v8}, Lcom/sgscq/vpn/cloud/z;->j(J)Lcom/sgscq/vpn/cloud/s;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    iget-wide v7, v5, Lcom/sgscq/vpn/cloud/s;->a:J

    .line 35
    .line 36
    iget-wide v9, v4, Lcom/sgscq/vpn/d3;->b:J

    .line 37
    .line 38
    cmp-long v5, v7, v9

    .line 39
    .line 40
    if-lez v5, :cond_1

    .line 41
    .line 42
    iget-object v5, p0, Lcom/sgscq/vpn/cloud/q0;->f:Lcom/sgscq/vpn/cloud/l0;

    .line 43
    .line 44
    invoke-virtual {v5, v7, v8}, Lcom/sgscq/vpn/cloud/l0;->a(J)V
    :try_end_1
    .catch Lcom/sgscq/vpn/cloud/a0; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    .line 46
    .line 47
    :cond_1
    if-nez v0, :cond_2

    .line 48
    .line 49
    :try_start_2
    iget-object v5, p0, Lcom/sgscq/vpn/cloud/q0;->g:Lcom/sgscq/vpn/cloud/b0;

    .line 50
    .line 51
    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 52
    :try_start_3
    iget-object v6, v5, Lcom/sgscq/vpn/cloud/b0;->b:Landroid/content/SharedPreferences;

    .line 53
    .line 54
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 59
    .line 60
    .line 61
    move-result-wide v7

    .line 62
    add-long/2addr v7, v1

    .line 63
    const-string v9, "deadline_ms"

    .line 64
    .line 65
    invoke-interface {v6, v9, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    .line 71
    .line 72
    :try_start_4
    monitor-exit v5

    .line 73
    goto :goto_1

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    monitor-exit v5

    .line 76
    throw p1

    .line 77
    :cond_2
    :goto_1
    iget v5, v4, Lcom/sgscq/vpn/d3;->a:I

    .line 78
    .line 79
    const/4 v6, 0x5

    .line 80
    invoke-static {p1, v6, v5, v5}, Lcom/sgscq/vpn/cloud/q0;->i(Lcom/sgscq/vpn/y0;III)V

    .line 81
    .line 82
    .line 83
    iget p1, v4, Lcom/sgscq/vpn/d3;->a:I

    .line 84
    .line 85
    return p1

    .line 86
    :catch_0
    move-exception v4

    .line 87
    const-string v5, "opponent_catalog_changed"

    .line 88
    .line 89
    iget-object v7, v4, Lcom/sgscq/vpn/cloud/a0;->b:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_5

    .line 96
    .line 97
    iget-wide v7, v4, Lcom/sgscq/vpn/cloud/a0;->d:J

    .line 98
    .line 99
    iget-object v5, p0, Lcom/sgscq/vpn/cloud/q0;->f:Lcom/sgscq/vpn/cloud/l0;

    .line 100
    .line 101
    monitor-enter v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 102
    :try_start_5
    iget-object v9, v5, Lcom/sgscq/vpn/cloud/l0;->d:Ljava/io/File;

    .line 103
    .line 104
    invoke-virtual {v5, v9}, Lcom/sgscq/vpn/cloud/l0;->t(Ljava/io/File;)Lcom/sgscq/vpn/cloud/i0;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    if-eqz v9, :cond_4

    .line 109
    .line 110
    iget-boolean v10, v9, Lcom/sgscq/vpn/cloud/i0;->h:Z

    .line 111
    .line 112
    if-nez v10, :cond_3

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    iget-wide v9, v9, Lcom/sgscq/vpn/cloud/i0;->k:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_4
    :goto_2
    const-wide/16 v9, 0x0

    .line 119
    .line 120
    :goto_3
    :try_start_6
    monitor-exit v5

    .line 121
    cmp-long v5, v7, v9

    .line 122
    .line 123
    if-lez v5, :cond_5

    .line 124
    .line 125
    const/4 v5, 0x3

    .line 126
    if-ge v6, v5, :cond_5

    .line 127
    .line 128
    add-int/lit8 v6, v6, 0x1

    .line 129
    .line 130
    iget-wide v4, v4, Lcom/sgscq/vpn/cloud/a0;->d:J

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :catchall_1
    move-exception p1

    .line 134
    monitor-exit v5

    .line 135
    throw p1

    .line 136
    :cond_5
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 137
    :catch_1
    move-exception p1

    .line 138
    if-nez v0, :cond_7

    .line 139
    .line 140
    instance-of v0, p1, Lcom/sgscq/vpn/cloud/a0;

    .line 141
    .line 142
    if-eqz v0, :cond_6

    .line 143
    .line 144
    move-object v0, p1

    .line 145
    check-cast v0, Lcom/sgscq/vpn/cloud/a0;

    .line 146
    .line 147
    iget-object v0, v0, Lcom/sgscq/vpn/cloud/a0;->b:Ljava/lang/String;

    .line 148
    .line 149
    const-string v4, "opponent_catalog_changed"

    .line 150
    .line 151
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_6

    .line 156
    .line 157
    const/4 v3, 0x1

    .line 158
    :cond_6
    if-nez v3, :cond_7

    .line 159
    .line 160
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/q0;->g:Lcom/sgscq/vpn/cloud/b0;

    .line 161
    .line 162
    monitor-enter v0

    .line 163
    :try_start_7
    iget-object v3, v0, Lcom/sgscq/vpn/cloud/b0;->b:Landroid/content/SharedPreferences;

    .line 164
    .line 165
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 170
    .line 171
    .line 172
    move-result-wide v4

    .line 173
    add-long/2addr v4, v1

    .line 174
    const-string v1, "deadline_ms"

    .line 175
    .line 176
    invoke-interface {v3, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 181
    .line 182
    .line 183
    monitor-exit v0

    .line 184
    goto :goto_4

    .line 185
    :catchall_2
    move-exception p1

    .line 186
    monitor-exit v0

    .line 187
    throw p1

    .line 188
    :cond_7
    :goto_4
    throw p1
.end method

.method public final q()Lcom/sgscq/vpn/cloud/d0;
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/cloud/q0;->k()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v2, v1, Lcom/sgscq/vpn/cloud/q0;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Lcom/sgscq/vpn/cloud/b0;->f(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/d0;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, v1, Lcom/sgscq/vpn/cloud/q0;->a:Lcom/sgscq/vpn/cloud/z;

    .line 16
    .line 17
    iget-object v4, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Lcom/sgscq/vpn/cloud/z;->s(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/x;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v4, v1, Lcom/sgscq/vpn/cloud/q0;->e:Lcom/sgscq/vpn/m4;

    .line 24
    .line 25
    iget-object v5, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v4, v5}, Lcom/sgscq/vpn/m4;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    const-string v5, ""

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v5, v3, Lcom/sgscq/vpn/cloud/x;->b:Ljava/lang/String;

    .line 37
    .line 38
    :goto_0
    invoke-static {v5, v4}, Lcom/sgscq/vpn/cloud/q0;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    iget-object v5, v1, Lcom/sgscq/vpn/cloud/q0;->d:Lcom/sgscq/vpn/f0;

    .line 43
    .line 44
    iget-object v6, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v5, v4, v6}, Lcom/sgscq/vpn/f0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v5, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 50
    .line 51
    const/4 v14, 0x0

    .line 52
    if-nez v3, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    iget-object v6, v2, Lcom/sgscq/vpn/cloud/d0;->a:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_3

    .line 62
    .line 63
    iget-object v5, v3, Lcom/sgscq/vpn/cloud/x;->a:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v6, v2, Lcom/sgscq/vpn/cloud/d0;->b:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_3

    .line 72
    .line 73
    iget-object v5, v3, Lcom/sgscq/vpn/cloud/x;->b:Ljava/lang/String;

    .line 74
    .line 75
    iget-object v6, v2, Lcom/sgscq/vpn/cloud/d0;->c:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-nez v5, :cond_2

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    iget v2, v2, Lcom/sgscq/vpn/cloud/d0;->e:I

    .line 85
    .line 86
    move v8, v2

    .line 87
    goto :goto_2

    .line 88
    :cond_3
    :goto_1
    move v8, v14

    .line 89
    :goto_2
    iget-object v2, v1, Lcom/sgscq/vpn/cloud/q0;->d:Lcom/sgscq/vpn/f0;

    .line 90
    .line 91
    if-nez v3, :cond_4

    .line 92
    .line 93
    const-string v5, ""

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_4
    iget-object v5, v3, Lcom/sgscq/vpn/cloud/x;->a:Ljava/lang/String;

    .line 97
    .line 98
    :goto_3
    move-object v7, v5

    .line 99
    iget-object v5, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-nez v6, :cond_d

    .line 109
    .line 110
    sget-object v6, Lcom/sgscq/vpn/y5;->a:[B

    .line 111
    .line 112
    invoke-static {v4}, Lcom/sgscq/vpn/a5;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v15

    .line 116
    monitor-enter v15

    .line 117
    :try_start_0
    iget-object v6, v2, Lcom/sgscq/vpn/f0;->a:Landroid/content/Context;

    .line 118
    .line 119
    iget-object v9, v2, Lcom/sgscq/vpn/f0;->b:Landroid/content/SharedPreferences;

    .line 120
    .line 121
    invoke-static {v6, v9, v4}, Lcom/sgscq/vpn/y5;->l(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    if-eqz v10, :cond_c

    .line 126
    .line 127
    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    if-nez v6, :cond_c

    .line 132
    .line 133
    invoke-static {v5}, Lc/e;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    iget-object v5, v2, Lcom/sgscq/vpn/f0;->a:Landroid/content/Context;

    .line 138
    .line 139
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    const-string v6, "sgscq_cloud_passport_owner_v1"

    .line 144
    .line 145
    invoke-virtual {v5, v6, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 146
    .line 147
    .line 148
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 149
    :try_start_1
    invoke-static {v4}, Lc/e;->g0(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    invoke-static {v6}, Lc/e;->b0(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v11

    .line 157
    const-string v12, ""

    .line 158
    .line 159
    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v11

    .line 163
    invoke-static {v6}, Lc/e;->k0(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v12

    .line 167
    const-string v13, ""

    .line 168
    .line 169
    invoke-interface {v5, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v12

    .line 173
    invoke-static {v6}, Lc/e;->q0(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    invoke-interface {v5, v6, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 178
    .line 179
    .line 180
    invoke-static {v12, v11}, Lc/e;->S(Ljava/lang/String;Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    const-string v6, "cloud"

    .line 185
    .line 186
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    if-nez v6, :cond_6

    .line 191
    .line 192
    if-eqz v5, :cond_5

    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_5
    move v5, v14

    .line 196
    goto :goto_5

    .line 197
    :cond_6
    :goto_4
    const/4 v5, 0x1

    .line 198
    :goto_5
    invoke-static {v11}, Lc/e;->g0(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    if-eqz v5, :cond_b

    .line 203
    .line 204
    :try_start_2
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    if-eqz v5, :cond_b

    .line 209
    .line 210
    invoke-static {v9, v10}, Lcom/sgscq/vpn/h5;->o0(Ljava/lang/String;Ljava/util/Map;)Z

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    if-eqz v5, :cond_b

    .line 215
    .line 216
    invoke-static {v10}, Lcom/sgscq/vpn/h5;->q0(Ljava/util/Map;)Z

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    if-eqz v5, :cond_b

    .line 221
    .line 222
    invoke-static {v10}, Lcom/sgscq/vpn/p5;->Y0(Ljava/util/Map;)Z

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    iget-object v6, v2, Lcom/sgscq/vpn/f0;->b:Landroid/content/SharedPreferences;

    .line 227
    .line 228
    invoke-static {v6, v4}, Lcom/sgscq/vpn/y5;->s(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    if-eqz v6, :cond_7

    .line 233
    .line 234
    if-eqz v5, :cond_8

    .line 235
    .line 236
    :cond_7
    iget-object v5, v2, Lcom/sgscq/vpn/f0;->a:Landroid/content/Context;

    .line 237
    .line 238
    iget-object v6, v2, Lcom/sgscq/vpn/f0;->b:Landroid/content/SharedPreferences;

    .line 239
    .line 240
    invoke-static {v5, v6, v4, v10}, Lcom/sgscq/vpn/y5;->p(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Map;)V

    .line 241
    .line 242
    .line 243
    :cond_8
    invoke-virtual {v2, v4}, Lcom/sgscq/vpn/f0;->d(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 244
    .line 245
    .line 246
    move-result-object v11

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 248
    .line 249
    .line 250
    move-result-wide v12

    .line 251
    move-object v6, v4

    .line 252
    invoke-static/range {v6 .. v13}, Lcom/sgscq/vpn/cloud/o0;->c(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;J)[B

    .line 253
    .line 254
    .line 255
    move-result-object v19

    .line 256
    iget-object v2, v2, Lcom/sgscq/vpn/f0;->b:Landroid/content/SharedPreferences;

    .line 257
    .line 258
    invoke-static {v2, v4}, Lcom/sgscq/vpn/y5;->n(Landroid/content/SharedPreferences;Ljava/lang/String;)J

    .line 259
    .line 260
    .line 261
    move-result-wide v6

    .line 262
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 263
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v20

    .line 271
    iget-object v2, v1, Lcom/sgscq/vpn/cloud/q0;->a:Lcom/sgscq/vpn/cloud/z;

    .line 272
    .line 273
    if-nez v3, :cond_9

    .line 274
    .line 275
    iget-object v3, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 276
    .line 277
    const-string v17, "POST"

    .line 278
    .line 279
    const-string v18, "/cloud-slot/bind-upload"

    .line 280
    .line 281
    const/16 v21, 0x0

    .line 282
    .line 283
    const/16 v22, 0x0

    .line 284
    .line 285
    move-object/from16 v16, v2

    .line 286
    .line 287
    move-object/from16 v23, v3

    .line 288
    .line 289
    invoke-virtual/range {v16 .. v23}, Lcom/sgscq/vpn/cloud/z;->b0(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;ZZLjava/lang/String;)Lcom/sgscq/vpn/cloud/x;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    goto :goto_6

    .line 294
    :cond_9
    const/16 v21, 0x1

    .line 295
    .line 296
    const/16 v22, 0x1

    .line 297
    .line 298
    iget-object v3, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 299
    .line 300
    const-string v17, "PUT"

    .line 301
    .line 302
    const-string v18, "/cloud-slot/save"

    .line 303
    .line 304
    move-object/from16 v16, v2

    .line 305
    .line 306
    move-object/from16 v23, v3

    .line 307
    .line 308
    invoke-virtual/range {v16 .. v23}, Lcom/sgscq/vpn/cloud/z;->b0(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;ZZLjava/lang/String;)Lcom/sgscq/vpn/cloud/x;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    :goto_6
    iget-boolean v3, v2, Lcom/sgscq/vpn/cloud/x;->l:Z

    .line 313
    .line 314
    if-eqz v3, :cond_a

    .line 315
    .line 316
    iget-object v3, v1, Lcom/sgscq/vpn/cloud/q0;->a:Lcom/sgscq/vpn/cloud/z;

    .line 317
    .line 318
    iget v4, v2, Lcom/sgscq/vpn/cloud/x;->c:I

    .line 319
    .line 320
    iget-object v5, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 321
    .line 322
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    .line 324
    .line 325
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 326
    .line 327
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 328
    .line 329
    .line 330
    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v4

    .line 338
    const-string v9, "X-Post-Upload-Revision"

    .line 339
    .line 340
    invoke-interface {v8, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v3, v5, v8}, Lcom/sgscq/vpn/cloud/z;->n(Ljava/lang/String;Ljava/util/Map;)[B

    .line 344
    .line 345
    .line 346
    move-result-object v10

    .line 347
    iget-object v5, v1, Lcom/sgscq/vpn/cloud/q0;->d:Lcom/sgscq/vpn/f0;

    .line 348
    .line 349
    iget-object v8, v2, Lcom/sgscq/vpn/cloud/x;->b:Ljava/lang/String;

    .line 350
    .line 351
    iget-object v9, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 352
    .line 353
    invoke-virtual/range {v5 .. v10}, Lcom/sgscq/vpn/f0;->f(JLjava/lang/String;Ljava/lang/String;[B)J

    .line 354
    .line 355
    .line 356
    move-result-wide v6

    .line 357
    :cond_a
    iget-boolean v3, v2, Lcom/sgscq/vpn/cloud/x;->k:Z

    .line 358
    .line 359
    iput-boolean v3, v1, Lcom/sgscq/vpn/cloud/q0;->j:Z

    .line 360
    .line 361
    iget-object v3, v1, Lcom/sgscq/vpn/cloud/q0;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 362
    .line 363
    iget-object v4, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 364
    .line 365
    invoke-virtual {v3, v4, v2, v6, v7}, Lcom/sgscq/vpn/cloud/b0;->g(Ljava/lang/String;Lcom/sgscq/vpn/cloud/x;J)V

    .line 366
    .line 367
    .line 368
    iget-object v3, v1, Lcom/sgscq/vpn/cloud/q0;->h:Lc/e;

    .line 369
    .line 370
    iget-object v4, v2, Lcom/sgscq/vpn/cloud/x;->b:Ljava/lang/String;

    .line 371
    .line 372
    iget-object v5, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 373
    .line 374
    invoke-virtual {v3, v4, v5}, Lc/e;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    iget-object v2, v2, Lcom/sgscq/vpn/cloud/x;->b:Ljava/lang/String;

    .line 378
    .line 379
    invoke-virtual {v1, v2}, Lcom/sgscq/vpn/cloud/q0;->m(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    iget-object v2, v1, Lcom/sgscq/vpn/cloud/q0;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 383
    .line 384
    iget-object v0, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 385
    .line 386
    invoke-virtual {v2, v0}, Lcom/sgscq/vpn/cloud/b0;->f(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/d0;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    return-object v0

    .line 391
    :cond_b
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 392
    .line 393
    const-string v2, "\u5f53\u524d\u89d2\u8272\u4e0d\u662f\u672c\u4eba\u5f53\u524d\u7248\u672c\u4e91\u5b58\u6863"

    .line 394
    .line 395
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    throw v0

    .line 399
    :catchall_0
    move-exception v0

    .line 400
    throw v0

    .line 401
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 402
    .line 403
    const-string v2, "\u5f53\u524d\u89d2\u8272\u6ca1\u6709\u53ef\u4e0a\u4f20\u7684\u5b58\u6863"

    .line 404
    .line 405
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    throw v0

    .line 409
    :catchall_1
    move-exception v0

    .line 410
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 411
    throw v0

    .line 412
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 413
    .line 414
    const-string v2, "\u8bf7\u5148\u9009\u62e9\u672c\u5730\u89d2\u8272"

    .line 415
    .line 416
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    throw v0
.end method
