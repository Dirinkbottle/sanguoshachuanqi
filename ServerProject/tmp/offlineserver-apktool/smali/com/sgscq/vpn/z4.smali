.class public final Lcom/sgscq/vpn/z4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final a:Lcom/sgscq/vpn/w4;

.field public final b:Lcom/sgscq/vpn/t4;

.field public final c:Lcom/sgscq/vpn/y4;

.field public final d:J

.field public final e:Lcom/sgscq/vpn/p4;

.field public final f:Lcom/sgscq/vpn/a5;

.field public final g:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Lcom/sgscq/vpn/w4;Lcom/sgscq/vpn/t4;Lcom/sgscq/vpn/y4;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sgscq/vpn/a5;

    invoke-direct {v0}, Lcom/sgscq/vpn/a5;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/z4;->f:Lcom/sgscq/vpn/a5;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/z4;->g:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/sgscq/vpn/z4;->a:Lcom/sgscq/vpn/w4;

    iput-object p2, p0, Lcom/sgscq/vpn/z4;->b:Lcom/sgscq/vpn/t4;

    iput-object p3, p0, Lcom/sgscq/vpn/z4;->c:Lcom/sgscq/vpn/y4;

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sgscq/vpn/z4;->d:J

    new-instance p1, Lcom/sgscq/vpn/p4;

    invoke-direct {p1}, Lcom/sgscq/vpn/p4;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/z4;->e:Lcom/sgscq/vpn/p4;

    return-void
.end method

.method public static i(Ljava/util/Map;)J
    .locals 2

    .line 1
    const-string v0, "_persistence_journal_sequence"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    if-nez p0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid player journal watermark"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Lcom/sgscq/vpn/x4;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/z4;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/sgscq/vpn/x4;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v1, "unknown mutation kind "

    .line 15
    .line 16
    invoke-static {v1, p1}, Lc/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/z4;->c:Lcom/sgscq/vpn/y4;

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/z4;->e:Lcom/sgscq/vpn/p4;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/sgscq/vpn/p4;->a(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, v0, Lcom/sgscq/vpn/p4;->b:Ljava/io/Serializable;

    .line 13
    .line 14
    check-cast v1, Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    :goto_0
    monitor-exit v0

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/z4;->f(Ljava/lang/String;)Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :cond_1
    if-eqz v1, :cond_3

    .line 30
    .line 31
    :try_start_1
    iget-object v0, p0, Lcom/sgscq/vpn/z4;->a:Lcom/sgscq/vpn/w4;

    .line 32
    .line 33
    invoke-interface {v0, p1, v1}, Lcom/sgscq/vpn/w4;->j(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/sgscq/vpn/z4;->b:Lcom/sgscq/vpn/t4;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/sgscq/vpn/z4;->i(Ljava/util/Map;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    invoke-virtual {v0, v2, v3, p1}, Lcom/sgscq/vpn/t4;->b(JLjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/sgscq/vpn/z4;->e:Lcom/sgscq/vpn/p4;

    .line 46
    .line 47
    invoke-virtual {v0, p1, v1}, Lcom/sgscq/vpn/p4;->c(Ljava/lang/String;Ljava/util/Map;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catch_0
    move-exception p1

    .line 52
    instance-of v0, p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    check-cast p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string v1, "full save failed"

    .line 62
    .line 63
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    move-object p1, v0

    .line 67
    :goto_1
    throw p1

    .line 68
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    const-string v0, "player not found for compaction"

    .line 71
    .line 72
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    monitor-exit v0

    .line 78
    throw p1
.end method

.method public final e(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/z4;->g(Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/sgscq/vpn/z4;->e:Lcom/sgscq/vpn/p4;

    .line 7
    .line 8
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    :try_start_1
    invoke-static {p1}, Lcom/sgscq/vpn/p4;->a(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    iget-object v2, v1, Lcom/sgscq/vpn/p4;->b:Ljava/io/Serializable;

    .line 16
    .line 17
    check-cast v2, Ljava/util/LinkedHashMap;

    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    .line 21
    .line 22
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 23
    iget-object v1, p0, Lcom/sgscq/vpn/z4;->b:Lcom/sgscq/vpn/t4;

    .line 24
    .line 25
    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 26
    :try_start_3
    iget-object v2, v1, Lcom/sgscq/vpn/t4;->d:Ljava/io/Serializable;

    .line 27
    .line 28
    check-cast v2, Ljava/util/Map;

    .line 29
    .line 30
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 31
    .line 32
    .line 33
    :try_start_4
    monitor-exit v1

    .line 34
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    monitor-exit v1

    .line 38
    throw p1

    .line 39
    :catchall_1
    move-exception p1

    .line 40
    monitor-exit v1

    .line 41
    throw p1

    .line 42
    :catchall_2
    move-exception p1

    .line 43
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 44
    throw p1
.end method

.method public final f(Ljava/lang/String;)Ljava/util/Map;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/z4;->a:Lcom/sgscq/vpn/w4;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/sgscq/vpn/w4;->h(Ljava/lang/String;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-static {v0}, Lcom/sgscq/vpn/z4;->i(Ljava/util/Map;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    iget-object v3, p0, Lcom/sgscq/vpn/z4;->b:Lcom/sgscq/vpn/t4;

    .line 16
    .line 17
    monitor-enter v3

    .line 18
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v3, p1}, Lcom/sgscq/vpn/t4;->c(Ljava/lang/String;)Lcom/sgscq/vpn/r4;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    iget-object v5, v5, Lcom/sgscq/vpn/r4;->b:Ljava/util/List;

    .line 25
    .line 26
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    .line 28
    .line 29
    monitor-exit v3

    .line 30
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_3

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Lcom/sgscq/vpn/q4;

    .line 45
    .line 46
    iget-wide v5, v4, Lcom/sgscq/vpn/q4;->a:J

    .line 47
    .line 48
    cmp-long v7, v5, v1

    .line 49
    .line 50
    if-gtz v7, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const-wide/16 v7, 0x1

    .line 54
    .line 55
    add-long v9, v1, v7

    .line 56
    .line 57
    cmp-long v5, v5, v9

    .line 58
    .line 59
    if-eqz v5, :cond_2

    .line 60
    .line 61
    const-string v3, "SGSCQ_SAVE"

    .line 62
    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v6, "Discarding stale mutation journal uid="

    .line 66
    .line 67
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v6, " baseWatermark="

    .line 74
    .line 75
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v1, " eventSequence="

    .line 82
    .line 83
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-wide v1, v4, Lcom/sgscq/vpn/q4;->a:J

    .line 87
    .line 88
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v3, v1}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/sgscq/vpn/z4;->b:Lcom/sgscq/vpn/t4;

    .line 99
    .line 100
    monitor-enter v1

    .line 101
    :try_start_1
    iget-object v2, v1, Lcom/sgscq/vpn/t4;->c:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v2, Lcom/sgscq/vpn/s4;

    .line 104
    .line 105
    invoke-interface {v2, p1}, Lcom/sgscq/vpn/s4;->b(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v2, v1, Lcom/sgscq/vpn/t4;->d:Ljava/io/Serializable;

    .line 109
    .line 110
    check-cast v2, Ljava/util/Map;

    .line 111
    .line 112
    new-instance v3, Lcom/sgscq/vpn/r4;

    .line 113
    .line 114
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-direct {v3, v7, v8, v4}, Lcom/sgscq/vpn/r4;-><init>(JLjava/util/List;)V

    .line 119
    .line 120
    .line 121
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    .line 123
    .line 124
    monitor-exit v1

    .line 125
    return-object v0

    .line 126
    :catchall_0
    move-exception p1

    .line 127
    monitor-exit v1

    .line 128
    throw p1

    .line 129
    :cond_2
    iget-object v1, v4, Lcom/sgscq/vpn/q4;->c:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {p0, v1}, Lcom/sgscq/vpn/z4;->c(Ljava/lang/String;)Lcom/sgscq/vpn/x4;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Lcom/sgscq/vpn/n2;

    .line 136
    .line 137
    invoke-virtual {v1, v0, v4}, Lcom/sgscq/vpn/n2;->a(Ljava/util/Map;Lcom/sgscq/vpn/q4;)Ljava/util/LinkedHashMap;

    .line 138
    .line 139
    .line 140
    iget-wide v1, v4, Lcom/sgscq/vpn/q4;->a:J

    .line 141
    .line 142
    const-string v4, "_persistence_journal_sequence"

    .line 143
    .line 144
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_3
    return-object v0

    .line 153
    :catchall_1
    move-exception p1

    .line 154
    monitor-exit v3

    .line 155
    throw p1
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/z4;->f:Lcom/sgscq/vpn/a5;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/sgscq/vpn/a5;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final h(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/z4;->g(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/sgscq/vpn/z4;->c:Lcom/sgscq/vpn/y4;

    .line 9
    .line 10
    invoke-interface {v1, p1}, Lcom/sgscq/vpn/y4;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    :try_start_1
    iget-object v1, p0, Lcom/sgscq/vpn/z4;->a:Lcom/sgscq/vpn/w4;

    .line 14
    .line 15
    invoke-interface {v1, p1, p2}, Lcom/sgscq/vpn/w4;->j(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    .line 18
    :try_start_2
    invoke-static {p2}, Lcom/sgscq/vpn/z4;->i(Ljava/util/Map;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    iget-object v3, p0, Lcom/sgscq/vpn/z4;->b:Lcom/sgscq/vpn/t4;

    .line 23
    .line 24
    invoke-virtual {v3, v1, v2, p1}, Lcom/sgscq/vpn/t4;->b(JLjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/sgscq/vpn/z4;->e:Lcom/sgscq/vpn/p4;

    .line 28
    .line 29
    invoke-virtual {v1, p1, p2}, Lcom/sgscq/vpn/p4;->c(Ljava/lang/String;Ljava/util/Map;)V

    .line 30
    .line 31
    .line 32
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :catch_0
    move-exception p1

    .line 35
    instance-of p2, p1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    if-eqz p2, :cond_0

    .line 38
    .line 39
    check-cast p1, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string v1, "full save failed"

    .line 45
    .line 46
    invoke-direct {p2, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    move-object p1, p2

    .line 50
    :goto_0
    throw p1

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    throw p1

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 55
    .line 56
    const-string p2, "player data required"

    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1
.end method
