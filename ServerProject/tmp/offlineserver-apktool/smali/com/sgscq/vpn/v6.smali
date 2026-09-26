.class public final Lcom/sgscq/vpn/v6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public h:I

.field public i:I

.field public final j:Ljava/util/concurrent/LinkedBlockingQueue;

.field public final k:Ljava/lang/Object;

.field public final l:Lcom/sgscq/vpn/z6;

.field public volatile m:Z

.field public final n:Ljava/lang/String;

.field public final synthetic o:Lcom/sgscq/vpn/SgscqVpnService;


# direct methods
.method public constructor <init>(Lcom/sgscq/vpn/SgscqVpnService;Ljava/lang/String;IIIII)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/sgscq/vpn/v6;->o:Lcom/sgscq/vpn/SgscqVpnService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/sgscq/vpn/v6;->j:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/Object;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/sgscq/vpn/v6;->k:Ljava/lang/Object;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/sgscq/vpn/v6;->a:Ljava/lang/String;

    .line 21
    .line 22
    iput p3, p0, Lcom/sgscq/vpn/v6;->b:I

    .line 23
    .line 24
    iput p4, p0, Lcom/sgscq/vpn/v6;->c:I

    .line 25
    .line 26
    iput p5, p0, Lcom/sgscq/vpn/v6;->d:I

    .line 27
    .line 28
    iput p6, p0, Lcom/sgscq/vpn/v6;->e:I

    .line 29
    .line 30
    iput p7, p0, Lcom/sgscq/vpn/v6;->f:I

    .line 31
    .line 32
    add-int/lit8 p7, p7, 0x1

    .line 33
    .line 34
    iput p7, p0, Lcom/sgscq/vpn/v6;->i:I

    .line 35
    .line 36
    iget-object p1, p1, Lcom/sgscq/vpn/SgscqVpnService;->k:Ljava/util/Random;

    .line 37
    .line 38
    const p2, 0x3b9aca00

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    add-int/2addr p1, p2

    .line 46
    iput p1, p0, Lcom/sgscq/vpn/v6;->g:I

    .line 47
    .line 48
    add-int/lit8 p1, p1, 0x1

    .line 49
    .line 50
    iput p1, p0, Lcom/sgscq/vpn/v6;->h:I

    .line 51
    .line 52
    new-instance p2, Lcom/sgscq/vpn/z6;

    .line 53
    .line 54
    invoke-direct {p2, p1}, Lcom/sgscq/vpn/z6;-><init>(I)V

    .line 55
    .line 56
    .line 57
    iput-object p2, p0, Lcom/sgscq/vpn/v6;->l:Lcom/sgscq/vpn/z6;

    .line 58
    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-static {p5}, Lcom/sgscq/vpn/SgscqVpnService;->m(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p2, ":"

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lcom/sgscq/vpn/v6;->n:Ljava/lang/String;

    .line 84
    .line 85
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/sgscq/vpn/v6;->k:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/sgscq/vpn/v6;->l:Lcom/sgscq/vpn/z6;

    .line 5
    .line 6
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v2, v1, Lcom/sgscq/vpn/z6;->a:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    monitor-exit v1

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :cond_0
    iget-boolean v1, p0, Lcom/sgscq/vpn/v6;->m:Z

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/sgscq/vpn/v6;->k:Ljava/lang/Object;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/sgscq/vpn/v6;->l:Lcom/sgscq/vpn/z6;

    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    invoke-virtual {v2, v3, v4}, Lcom/sgscq/vpn/z6;->e(J)J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/sgscq/vpn/v6;->l:Lcom/sgscq/vpn/z6;

    .line 38
    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    invoke-virtual {v1, v2, v3}, Lcom/sgscq/vpn/z6;->d(J)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 48
    invoke-virtual {p0, v1}, Lcom/sgscq/vpn/v6;->b(Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    :try_start_3
    new-instance v1, Ljava/io/EOFException;

    .line 53
    .line 54
    const-string v2, "TCP client closed before acknowledging response"

    .line 55
    .line 56
    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v1

    .line 60
    :catchall_0
    move-exception v2

    .line 61
    monitor-exit v1

    .line 62
    throw v2

    .line 63
    :catchall_1
    move-exception v1

    .line 64
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    throw v1
.end method

.method public final b(Ljava/util/List;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "SGSCQ_VPN"

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "Proxy "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/sgscq/vpn/v6;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, " retransmit round="

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/sgscq/vpn/v6;->l:Lcom/sgscq/vpn/z6;

    .line 28
    .line 29
    monitor-enter v2

    .line 30
    :try_start_0
    iget v3, v2, Lcom/sgscq/vpn/z6;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 31
    .line 32
    monitor-exit v2

    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, " pending="

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/sgscq/vpn/v6;->l:Lcom/sgscq/vpn/z6;

    .line 42
    .line 43
    monitor-enter v2

    .line 44
    :try_start_1
    iget v3, v2, Lcom/sgscq/vpn/z6;->c:I

    .line 45
    .line 46
    iget v4, v2, Lcom/sgscq/vpn/z6;->b:I

    .line 47
    .line 48
    sub-int/2addr v3, v4

    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 51
    .line 52
    .line 53
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    monitor-exit v2

    .line 55
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v2, " ack="

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/sgscq/vpn/v6;->l:Lcom/sgscq/vpn/z6;

    .line 64
    .line 65
    monitor-enter v2

    .line 66
    :try_start_2
    iget v3, v2, Lcom/sgscq/vpn/z6;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    .line 68
    monitor-exit v2

    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v0, v1}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_1

    .line 88
    .line 89
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, [B

    .line 94
    .line 95
    iget-object v1, p0, Lcom/sgscq/vpn/v6;->o:Lcom/sgscq/vpn/SgscqVpnService;

    .line 96
    .line 97
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/SgscqVpnService;->r([B)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    return-void

    .line 102
    :catchall_0
    move-exception p1

    .line 103
    monitor-exit v2

    .line 104
    throw p1

    .line 105
    :catchall_1
    move-exception p1

    .line 106
    monitor-exit v2

    .line 107
    throw p1

    .line 108
    :catchall_2
    move-exception p1

    .line 109
    monitor-exit v2

    .line 110
    throw p1
.end method

.method public final c()V
    .locals 21

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    iget-boolean v0, v8, Lcom/sgscq/vpn/v6;->m:Z

    .line 4
    .line 5
    const/4 v9, 0x1

    .line 6
    if-nez v0, :cond_17

    .line 7
    .line 8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 9
    .line 10
    const/16 v1, 0x1000

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    const-wide/16 v3, 0x3a98

    .line 20
    .line 21
    add-long/2addr v1, v3

    .line 22
    const/4 v10, 0x0

    .line 23
    move v3, v10

    .line 24
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    cmp-long v4, v4, v1

    .line 29
    .line 30
    const-string v5, "\r\n"

    .line 31
    .line 32
    if-gez v4, :cond_8

    .line 33
    .line 34
    iget-object v4, v8, Lcom/sgscq/vpn/v6;->j:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 35
    .line 36
    const-wide/16 v6, 0x1f4

    .line 37
    .line 38
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 39
    .line 40
    invoke-virtual {v4, v6, v7, v11}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, [B

    .line 45
    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 49
    .line 50
    .line 51
    iget v1, v8, Lcom/sgscq/vpn/v6;->i:I

    .line 52
    .line 53
    array-length v2, v4

    .line 54
    add-int/2addr v1, v2

    .line 55
    iput v1, v8, Lcom/sgscq/vpn/v6;->i:I

    .line 56
    .line 57
    iget v2, v8, Lcom/sgscq/vpn/v6;->h:I

    .line 58
    .line 59
    iget-object v11, v8, Lcom/sgscq/vpn/v6;->o:Lcom/sgscq/vpn/SgscqVpnService;

    .line 60
    .line 61
    iget v12, v8, Lcom/sgscq/vpn/v6;->d:I

    .line 62
    .line 63
    iget v13, v8, Lcom/sgscq/vpn/v6;->e:I

    .line 64
    .line 65
    iget v14, v8, Lcom/sgscq/vpn/v6;->b:I

    .line 66
    .line 67
    iget v15, v8, Lcom/sgscq/vpn/v6;->c:I

    .line 68
    .line 69
    const/16 v18, 0x10

    .line 70
    .line 71
    const/16 v19, 0x0

    .line 72
    .line 73
    move/from16 v16, v2

    .line 74
    .line 75
    move/from16 v17, v1

    .line 76
    .line 77
    invoke-static/range {v11 .. v19}, Lcom/sgscq/vpn/SgscqVpnService;->a(Lcom/sgscq/vpn/SgscqVpnService;IIIIIII[B)[B

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget-object v2, v8, Lcom/sgscq/vpn/v6;->o:Lcom/sgscq/vpn/SgscqVpnService;

    .line 82
    .line 83
    invoke-virtual {v2, v1}, Lcom/sgscq/vpn/SgscqVpnService;->r([B)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-le v1, v3, :cond_7

    .line 91
    .line 92
    iget-object v1, v8, Lcom/sgscq/vpn/v6;->o:Lcom/sgscq/vpn/SgscqVpnService;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    new-instance v1, Ljava/lang/String;

    .line 102
    .line 103
    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 104
    .line 105
    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 106
    .line 107
    .line 108
    const-string v3, "\r\n\r\n"

    .line 109
    .line 110
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-gez v3, :cond_1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_1
    const-string v4, "GET "

    .line 118
    .line 119
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-nez v4, :cond_6

    .line 124
    .line 125
    const-string v4, "HEAD "

    .line 126
    .line 127
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-nez v4, :cond_6

    .line 132
    .line 133
    const-string v4, "DELETE "

    .line 134
    .line 135
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-nez v4, :cond_6

    .line 140
    .line 141
    const-string v4, "CONNECT "

    .line 142
    .line 143
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-nez v4, :cond_6

    .line 148
    .line 149
    const-string v4, "OPTIONS "

    .line 150
    .line 151
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-eqz v4, :cond_2

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_2
    const-string v4, "Content-Length:"

    .line 159
    .line 160
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    if-gez v4, :cond_3

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_3
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    if-gez v6, :cond_4

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_4
    add-int/lit8 v4, v4, 0xf

    .line 175
    .line 176
    :try_start_0
    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    add-int/lit8 v3, v3, 0x4

    .line 189
    .line 190
    array-length v2, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    add-int/2addr v3, v1

    .line 192
    if-lt v2, v3, :cond_5

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_5
    :goto_1
    move v1, v10

    .line 196
    goto :goto_3

    .line 197
    :catch_0
    :cond_6
    :goto_2
    move v1, v9

    .line 198
    :goto_3
    if-eqz v1, :cond_7

    .line 199
    .line 200
    move v1, v9

    .line 201
    goto :goto_4

    .line 202
    :cond_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 207
    .line 208
    .line 209
    move-result-wide v1

    .line 210
    const-wide/16 v4, 0x2710

    .line 211
    .line 212
    add-long/2addr v1, v4

    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :cond_8
    move v1, v10

    .line 216
    :goto_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    const-string v2, "Proxy "

    .line 221
    .line 222
    const-string v3, "SGSCQ_VPN"

    .line 223
    .line 224
    if-nez v1, :cond_b

    .line 225
    .line 226
    array-length v1, v0

    .line 227
    if-lez v1, :cond_a

    .line 228
    .line 229
    array-length v1, v0

    .line 230
    const/16 v4, 0x20

    .line 231
    .line 232
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    sget-boolean v4, Lcom/sgscq/vpn/SgscqVpnService;->m:Z

    .line 237
    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    .line 243
    :goto_5
    if-ge v10, v1, :cond_9

    .line 244
    .line 245
    aget-byte v5, v0, v10

    .line 246
    .line 247
    and-int/lit16 v5, v5, 0xff

    .line 248
    .line 249
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    const-string v6, "%02x "

    .line 258
    .line 259
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    add-int/lit8 v10, v10, 0x1

    .line 267
    .line 268
    goto :goto_5

    .line 269
    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    goto :goto_6

    .line 274
    :cond_a
    const-string v1, "(no data)"

    .line 275
    .line 276
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    iget-object v2, v8, Lcom/sgscq/vpn/v6;->a:Ljava/lang/String;

    .line 282
    .line 283
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    const-string v2, " \u2192 "

    .line 287
    .line 288
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    iget-object v2, v8, Lcom/sgscq/vpn/v6;->n:Ljava/lang/String;

    .line 292
    .line 293
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v2, " HTTP incomplete, got "

    .line 297
    .line 298
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    array-length v0, v0

    .line 302
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    const-string v0, "B: "

    .line 306
    .line 307
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-static {v3, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    goto/16 :goto_11

    .line 321
    .line 322
    :cond_b
    new-instance v1, Ljava/lang/String;

    .line 323
    .line 324
    array-length v4, v0

    .line 325
    const/16 v6, 0x12c

    .line 326
    .line 327
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    .line 328
    .line 329
    .line 330
    move-result v4

    .line 331
    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 332
    .line 333
    invoke-direct {v1, v0, v10, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 334
    .line 335
    .line 336
    const-string v4, "\r"

    .line 337
    .line 338
    const-string v6, "\\r"

    .line 339
    .line 340
    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    const-string v4, "\n"

    .line 345
    .line 346
    const-string v6, "\\n"

    .line 347
    .line 348
    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    new-instance v4, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    iget-object v6, v8, Lcom/sgscq/vpn/v6;->a:Ljava/lang/String;

    .line 358
    .line 359
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    const-string v6, " req#"

    .line 363
    .line 364
    const-string v7, " req#1 ["

    .line 365
    .line 366
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    array-length v7, v0

    .line 370
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    const-string v7, "B] "

    .line 374
    .line 375
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    invoke-static {v3, v1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    new-instance v11, Ljava/net/Socket;

    .line 389
    .line 390
    iget-object v1, v8, Lcom/sgscq/vpn/v6;->o:Lcom/sgscq/vpn/SgscqVpnService;

    .line 391
    .line 392
    iget-object v1, v1, Lcom/sgscq/vpn/SgscqVpnService;->g:Lcom/sgscq/vpn/y2;

    .line 393
    .line 394
    iget v1, v1, Lcom/sgscq/vpn/y2;->W:I

    .line 395
    .line 396
    const-string v4, "127.0.0.1"

    .line 397
    .line 398
    invoke-direct {v11, v4, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 399
    .line 400
    .line 401
    :try_start_1
    iget-object v1, v8, Lcom/sgscq/vpn/v6;->o:Lcom/sgscq/vpn/SgscqVpnService;

    .line 402
    .line 403
    invoke-virtual {v1, v11}, Landroid/net/VpnService;->protect(Ljava/net/Socket;)Z

    .line 404
    .line 405
    .line 406
    const/16 v1, 0x7530

    .line 407
    .line 408
    invoke-virtual {v11, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v11}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v11}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 423
    .line 424
    .line 425
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 426
    .line 427
    invoke-virtual {v11}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    const/16 v12, 0x2000

    .line 432
    .line 433
    invoke-direct {v0, v1, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 434
    .line 435
    .line 436
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 437
    .line 438
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 439
    .line 440
    .line 441
    const/4 v7, -0x1

    .line 442
    const/4 v13, -0x1

    .line 443
    const/4 v14, -0x1

    .line 444
    :goto_7
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    .line 445
    .line 446
    .line 447
    move-result v15

    .line 448
    if-ltz v15, :cond_d

    .line 449
    .line 450
    invoke-virtual {v1, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 451
    .line 452
    .line 453
    const/16 v4, 0xd

    .line 454
    .line 455
    if-ne v7, v4, :cond_c

    .line 456
    .line 457
    const/16 v7, 0xa

    .line 458
    .line 459
    if-ne v13, v7, :cond_c

    .line 460
    .line 461
    if-ne v14, v4, :cond_c

    .line 462
    .line 463
    if-ne v15, v7, :cond_c

    .line 464
    .line 465
    goto :goto_8

    .line 466
    :cond_c
    move v7, v13

    .line 467
    move v13, v14

    .line 468
    move v14, v15

    .line 469
    goto :goto_7

    .line 470
    :cond_d
    :goto_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    new-instance v4, Ljava/lang/String;

    .line 475
    .line 476
    sget-object v7, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 477
    .line 478
    invoke-direct {v4, v1, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v7

    .line 485
    const-string v13, "content-length:"

    .line 486
    .line 487
    invoke-virtual {v7, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 488
    .line 489
    .line 490
    move-result v7

    .line 491
    if-ltz v7, :cond_e

    .line 492
    .line 493
    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 494
    .line 495
    .line 496
    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 497
    if-ltz v5, :cond_e

    .line 498
    .line 499
    add-int/lit8 v7, v7, 0xf

    .line 500
    .line 501
    :try_start_2
    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v4

    .line 505
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v4

    .line 509
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 510
    .line 511
    .line 512
    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 513
    move v13, v4

    .line 514
    goto :goto_9

    .line 515
    :catch_1
    :cond_e
    const/4 v13, -0x1

    .line 516
    :goto_9
    :try_start_3
    array-length v4, v1

    .line 517
    if-lez v13, :cond_f

    .line 518
    .line 519
    move v5, v13

    .line 520
    goto :goto_a

    .line 521
    :cond_f
    move v5, v10

    .line 522
    :goto_a
    add-int/2addr v4, v5

    .line 523
    new-instance v5, Ljava/lang/StringBuilder;

    .line 524
    .line 525
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    iget-object v2, v8, Lcom/sgscq/vpn/v6;->a:Ljava/lang/String;

    .line 532
    .line 533
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    const-string v2, " resp ["

    .line 543
    .line 544
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    const-string v2, "B]"

    .line 551
    .line 552
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    invoke-static {v3, v2}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    iget v2, v8, Lcom/sgscq/vpn/v6;->h:I

    .line 563
    .line 564
    iget v3, v8, Lcom/sgscq/vpn/v6;->i:I

    .line 565
    .line 566
    invoke-virtual {v8, v1, v2, v3}, Lcom/sgscq/vpn/v6;->f([BII)V

    .line 567
    .line 568
    .line 569
    iget v2, v8, Lcom/sgscq/vpn/v6;->h:I

    .line 570
    .line 571
    array-length v1, v1

    .line 572
    add-int/2addr v2, v1

    .line 573
    iput v2, v8, Lcom/sgscq/vpn/v6;->h:I

    .line 574
    .line 575
    const/16 v14, 0x578

    .line 576
    .line 577
    if-lez v13, :cond_13

    .line 578
    .line 579
    new-array v15, v12, [B

    .line 580
    .line 581
    move v7, v10

    .line 582
    :goto_b
    if-ge v7, v13, :cond_16

    .line 583
    .line 584
    sub-int v1, v13, v7

    .line 585
    .line 586
    invoke-static {v12, v1}, Ljava/lang/Math;->min(II)I

    .line 587
    .line 588
    .line 589
    move-result v1

    .line 590
    invoke-virtual {v0, v15, v10, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 591
    .line 592
    .line 593
    move-result v6

    .line 594
    if-gez v6, :cond_10

    .line 595
    .line 596
    goto/16 :goto_10

    .line 597
    .line 598
    :cond_10
    move v5, v10

    .line 599
    :goto_c
    if-ge v5, v6, :cond_12

    .line 600
    .line 601
    sub-int v1, v6, v5

    .line 602
    .line 603
    invoke-static {v14, v1}, Ljava/lang/Math;->min(II)I

    .line 604
    .line 605
    .line 606
    move-result v16

    .line 607
    add-int v1, v7, v5

    .line 608
    .line 609
    add-int v1, v1, v16

    .line 610
    .line 611
    if-lt v1, v13, :cond_11

    .line 612
    .line 613
    move/from16 v17, v9

    .line 614
    .line 615
    goto :goto_d

    .line 616
    :cond_11
    move/from16 v17, v10

    .line 617
    .line 618
    :goto_d
    iget v2, v8, Lcom/sgscq/vpn/v6;->h:I

    .line 619
    .line 620
    iget v3, v8, Lcom/sgscq/vpn/v6;->i:I

    .line 621
    .line 622
    move-object/from16 v1, p0

    .line 623
    .line 624
    move-object v4, v15

    .line 625
    move/from16 v18, v5

    .line 626
    .line 627
    move/from16 v19, v6

    .line 628
    .line 629
    move/from16 v6, v16

    .line 630
    .line 631
    move/from16 v20, v7

    .line 632
    .line 633
    move/from16 v7, v17

    .line 634
    .line 635
    invoke-virtual/range {v1 .. v7}, Lcom/sgscq/vpn/v6;->h(II[BIIZ)V

    .line 636
    .line 637
    .line 638
    iget v1, v8, Lcom/sgscq/vpn/v6;->h:I

    .line 639
    .line 640
    add-int v1, v1, v16

    .line 641
    .line 642
    iput v1, v8, Lcom/sgscq/vpn/v6;->h:I

    .line 643
    .line 644
    add-int v5, v18, v16

    .line 645
    .line 646
    move/from16 v6, v19

    .line 647
    .line 648
    move/from16 v7, v20

    .line 649
    .line 650
    goto :goto_c

    .line 651
    :cond_12
    move/from16 v19, v6

    .line 652
    .line 653
    move/from16 v20, v7

    .line 654
    .line 655
    add-int v7, v20, v19

    .line 656
    .line 657
    goto :goto_b

    .line 658
    :cond_13
    new-array v12, v12, [B

    .line 659
    .line 660
    :cond_14
    invoke-virtual {v0, v12}, Ljava/io/InputStream;->read([B)I

    .line 661
    .line 662
    .line 663
    move-result v13

    .line 664
    if-lez v13, :cond_16

    .line 665
    .line 666
    move v5, v10

    .line 667
    :goto_e
    if-ge v5, v13, :cond_14

    .line 668
    .line 669
    sub-int v1, v13, v5

    .line 670
    .line 671
    invoke-static {v14, v1}, Ljava/lang/Math;->min(II)I

    .line 672
    .line 673
    .line 674
    move-result v15

    .line 675
    add-int v7, v5, v15

    .line 676
    .line 677
    if-lt v7, v13, :cond_15

    .line 678
    .line 679
    move/from16 v16, v9

    .line 680
    .line 681
    goto :goto_f

    .line 682
    :cond_15
    move/from16 v16, v10

    .line 683
    .line 684
    :goto_f
    iget v2, v8, Lcom/sgscq/vpn/v6;->h:I

    .line 685
    .line 686
    iget v3, v8, Lcom/sgscq/vpn/v6;->i:I

    .line 687
    .line 688
    move-object/from16 v1, p0

    .line 689
    .line 690
    move-object v4, v12

    .line 691
    move v6, v15

    .line 692
    move/from16 v17, v7

    .line 693
    .line 694
    move/from16 v7, v16

    .line 695
    .line 696
    invoke-virtual/range {v1 .. v7}, Lcom/sgscq/vpn/v6;->h(II[BIIZ)V

    .line 697
    .line 698
    .line 699
    iget v1, v8, Lcom/sgscq/vpn/v6;->h:I

    .line 700
    .line 701
    add-int/2addr v1, v15

    .line 702
    iput v1, v8, Lcom/sgscq/vpn/v6;->h:I

    .line 703
    .line 704
    move/from16 v5, v17

    .line 705
    .line 706
    goto :goto_e

    .line 707
    :cond_16
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/v6;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 708
    .line 709
    .line 710
    invoke-virtual {v11}, Ljava/net/Socket;->close()V

    .line 711
    .line 712
    .line 713
    goto :goto_11

    .line 714
    :catchall_0
    move-exception v0

    .line 715
    invoke-virtual {v11}, Ljava/net/Socket;->close()V

    .line 716
    .line 717
    .line 718
    throw v0

    .line 719
    :cond_17
    :goto_11
    iget v0, v8, Lcom/sgscq/vpn/v6;->h:I

    .line 720
    .line 721
    iget v1, v8, Lcom/sgscq/vpn/v6;->i:I

    .line 722
    .line 723
    invoke-virtual {v8, v0, v1}, Lcom/sgscq/vpn/v6;->g(II)V

    .line 724
    .line 725
    .line 726
    iput-boolean v9, v8, Lcom/sgscq/vpn/v6;->m:Z

    .line 727
    .line 728
    return-void
.end method

.method public final d()V
    .locals 13

    .line 1
    const-string v0, "HTTPS-S2C-"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget v2, p0, Lcom/sgscq/vpn/v6;->d:I

    .line 9
    .line 10
    invoke-static {v2}, Lcom/sgscq/vpn/SgscqVpnService;->m(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ":"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Lcom/sgscq/vpn/v6;->e:I

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v3, "HTTPS relay "

    .line 34
    .line 35
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v3, p0, Lcom/sgscq/vpn/v6;->a:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v3, " \u2192 "

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "SGSCQ_VPN"

    .line 56
    .line 57
    invoke-static {v2, v1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance v1, Ljava/net/Socket;

    .line 61
    .line 62
    iget v2, p0, Lcom/sgscq/vpn/v6;->d:I

    .line 63
    .line 64
    invoke-static {v2}, Lcom/sgscq/vpn/SgscqVpnService;->m(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    iget v3, p0, Lcom/sgscq/vpn/v6;->e:I

    .line 69
    .line 70
    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    :try_start_0
    iget-object v2, p0, Lcom/sgscq/vpn/v6;->o:Lcom/sgscq/vpn/SgscqVpnService;

    .line 74
    .line 75
    invoke-virtual {v2, v1}, Landroid/net/VpnService;->protect(Ljava/net/Socket;)Z

    .line 76
    .line 77
    .line 78
    const v2, 0xea60

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 82
    .line 83
    .line 84
    new-instance v2, Ljava/lang/Thread;

    .line 85
    .line 86
    new-instance v3, Lcom/sgscq/vpn/d;

    .line 87
    .line 88
    const/16 v4, 0x18

    .line 89
    .line 90
    invoke-direct {v3, p0, v1, v4}, Lcom/sgscq/vpn/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 91
    .line 92
    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/sgscq/vpn/v6;->a:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 111
    .line 112
    .line 113
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/sgscq/vpn/v6;->m:Z

    .line 114
    .line 115
    if-nez v0, :cond_2

    .line 116
    .line 117
    iget-object v0, p0, Lcom/sgscq/vpn/v6;->j:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 118
    .line 119
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 120
    .line 121
    const-wide/16 v3, 0x3e8

    .line 122
    .line 123
    invoke-virtual {v0, v3, v4, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, [B

    .line 128
    .line 129
    if-eqz v0, :cond_0

    .line 130
    .line 131
    array-length v2, v0

    .line 132
    if-nez v2, :cond_1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_1
    iget v2, p0, Lcom/sgscq/vpn/v6;->i:I

    .line 136
    .line 137
    array-length v3, v0

    .line 138
    add-int v10, v2, v3

    .line 139
    .line 140
    iput v10, p0, Lcom/sgscq/vpn/v6;->i:I

    .line 141
    .line 142
    iget v9, p0, Lcom/sgscq/vpn/v6;->h:I

    .line 143
    .line 144
    iget-object v4, p0, Lcom/sgscq/vpn/v6;->o:Lcom/sgscq/vpn/SgscqVpnService;

    .line 145
    .line 146
    iget v5, p0, Lcom/sgscq/vpn/v6;->d:I

    .line 147
    .line 148
    iget v6, p0, Lcom/sgscq/vpn/v6;->e:I

    .line 149
    .line 150
    iget v7, p0, Lcom/sgscq/vpn/v6;->b:I

    .line 151
    .line 152
    iget v8, p0, Lcom/sgscq/vpn/v6;->c:I

    .line 153
    .line 154
    const/16 v11, 0x10

    .line 155
    .line 156
    const/4 v12, 0x0

    .line 157
    invoke-static/range {v4 .. v12}, Lcom/sgscq/vpn/SgscqVpnService;->a(Lcom/sgscq/vpn/SgscqVpnService;IIIIIII[B)[B

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    iget-object v3, p0, Lcom/sgscq/vpn/v6;->o:Lcom/sgscq/vpn/SgscqVpnService;

    .line 162
    .line 163
    invoke-virtual {v3, v2}, Lcom/sgscq/vpn/SgscqVpnService;->r([B)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    .line 182
    goto :goto_2

    .line 183
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 184
    .line 185
    .line 186
    :catch_0
    return-void

    .line 187
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 188
    .line 189
    .line 190
    :catch_1
    throw v0
.end method

.method public final e()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/v6;->o:Lcom/sgscq/vpn/SgscqVpnService;

    .line 2
    .line 3
    iget v1, p0, Lcom/sgscq/vpn/v6;->d:I

    .line 4
    .line 5
    iget v2, p0, Lcom/sgscq/vpn/v6;->e:I

    .line 6
    .line 7
    iget v3, p0, Lcom/sgscq/vpn/v6;->b:I

    .line 8
    .line 9
    iget v4, p0, Lcom/sgscq/vpn/v6;->c:I

    .line 10
    .line 11
    iget v5, p0, Lcom/sgscq/vpn/v6;->g:I

    .line 12
    .line 13
    iget v6, p0, Lcom/sgscq/vpn/v6;->f:I

    .line 14
    .line 15
    add-int/lit8 v6, v6, 0x1

    .line 16
    .line 17
    const/16 v7, 0x12

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    invoke-static/range {v0 .. v8}, Lcom/sgscq/vpn/SgscqVpnService;->a(Lcom/sgscq/vpn/SgscqVpnService;IIIIIII[B)[B

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/sgscq/vpn/v6;->o:Lcom/sgscq/vpn/SgscqVpnService;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/SgscqVpnService;->r([B)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final f([BII)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    move v5, v0

    :goto_0
    array-length v1, p1

    if-ge v5, v1, :cond_1

    array-length v1, p1

    sub-int/2addr v1, v5

    const/16 v2, 0x578

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v2, p2, v5

    add-int v8, v5, v6

    array-length v1, p1

    if-lt v8, v1, :cond_0

    const/4 v1, 0x1

    move v7, v1

    goto :goto_1

    :cond_0
    move v7, v0

    :goto_1
    move-object v1, p0

    move v3, p3

    move-object v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/sgscq/vpn/v6;->h(II[BIIZ)V

    move v5, v8

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final g(II)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/v6;->o:Lcom/sgscq/vpn/SgscqVpnService;

    .line 2
    .line 3
    iget v1, p0, Lcom/sgscq/vpn/v6;->d:I

    .line 4
    .line 5
    iget v2, p0, Lcom/sgscq/vpn/v6;->e:I

    .line 6
    .line 7
    iget v3, p0, Lcom/sgscq/vpn/v6;->b:I

    .line 8
    .line 9
    iget v4, p0, Lcom/sgscq/vpn/v6;->c:I

    .line 10
    .line 11
    const/16 v7, 0x11

    .line 12
    .line 13
    const/4 v8, 0x0

    .line 14
    move v5, p1

    .line 15
    move v6, p2

    .line 16
    invoke-static/range {v0 .. v8}, Lcom/sgscq/vpn/SgscqVpnService;->a(Lcom/sgscq/vpn/SgscqVpnService;IIIIIII[B)[B

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p2, p0, Lcom/sgscq/vpn/v6;->o:Lcom/sgscq/vpn/SgscqVpnService;

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Lcom/sgscq/vpn/SgscqVpnService;->r([B)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final h(II[BIIZ)V
    .locals 11

    .line 1
    move-object v1, p0

    .line 2
    move/from16 v0, p5

    .line 3
    .line 4
    if-gtz v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-array v10, v0, [B

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    move-object v3, p3

    .line 11
    move v4, p4

    .line 12
    invoke-static {p3, p4, v10, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    if-eqz p6, :cond_1

    .line 16
    .line 17
    const/16 v2, 0x18

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/16 v2, 0x10

    .line 21
    .line 22
    :goto_0
    move v9, v2

    .line 23
    iget-object v2, v1, Lcom/sgscq/vpn/v6;->o:Lcom/sgscq/vpn/SgscqVpnService;

    .line 24
    .line 25
    iget v3, v1, Lcom/sgscq/vpn/v6;->d:I

    .line 26
    .line 27
    iget v4, v1, Lcom/sgscq/vpn/v6;->e:I

    .line 28
    .line 29
    iget v5, v1, Lcom/sgscq/vpn/v6;->b:I

    .line 30
    .line 31
    iget v6, v1, Lcom/sgscq/vpn/v6;->c:I

    .line 32
    .line 33
    move v7, p1

    .line 34
    move v8, p2

    .line 35
    invoke-static/range {v2 .. v10}, Lcom/sgscq/vpn/SgscqVpnService;->a(Lcom/sgscq/vpn/SgscqVpnService;IIIIIII[B)[B

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    :goto_1
    iget-object v2, v1, Lcom/sgscq/vpn/v6;->k:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v2

    .line 42
    :try_start_0
    iget-boolean v3, v1, Lcom/sgscq/vpn/v6;->m:Z

    .line 43
    .line 44
    if-nez v3, :cond_5

    .line 45
    .line 46
    iget-object v3, v1, Lcom/sgscq/vpn/v6;->l:Lcom/sgscq/vpn/z6;

    .line 47
    .line 48
    invoke-virtual {v3, v0}, Lcom/sgscq/vpn/z6;->a(I)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_4

    .line 53
    .line 54
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    iget-object v9, v1, Lcom/sgscq/vpn/v6;->k:Ljava/lang/Object;

    .line 56
    .line 57
    monitor-enter v9

    .line 58
    :try_start_1
    iget-boolean v2, v1, Lcom/sgscq/vpn/v6;->m:Z

    .line 59
    .line 60
    if-nez v2, :cond_3

    .line 61
    .line 62
    iget-object v2, v1, Lcom/sgscq/vpn/v6;->l:Lcom/sgscq/vpn/z6;

    .line 63
    .line 64
    invoke-virtual {v2, v0}, Lcom/sgscq/vpn/z6;->a(I)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_2

    .line 69
    .line 70
    monitor-exit v9

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    iget-object v2, v1, Lcom/sgscq/vpn/v6;->l:Lcom/sgscq/vpn/z6;

    .line 73
    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 75
    .line 76
    .line 77
    move-result-wide v6

    .line 78
    move v3, p1

    .line 79
    move/from16 v4, p5

    .line 80
    .line 81
    move-object v5, v8

    .line 82
    invoke-virtual/range {v2 .. v7}, Lcom/sgscq/vpn/z6;->c(II[BJ)V

    .line 83
    .line 84
    .line 85
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    iget-object v0, v1, Lcom/sgscq/vpn/v6;->o:Lcom/sgscq/vpn/SgscqVpnService;

    .line 87
    .line 88
    invoke-virtual {v0, v8}, Lcom/sgscq/vpn/SgscqVpnService;->r([B)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_3
    :try_start_2
    new-instance v0, Ljava/io/EOFException;

    .line 93
    .line 94
    const-string v2, "TCP client closed before segment send"

    .line 95
    .line 96
    invoke-direct {v0, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v0

    .line 100
    :catchall_0
    move-exception v0

    .line 101
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    throw v0

    .line 103
    :cond_4
    :try_start_3
    iget-object v3, v1, Lcom/sgscq/vpn/v6;->k:Ljava/lang/Object;

    .line 104
    .line 105
    iget-object v4, v1, Lcom/sgscq/vpn/v6;->l:Lcom/sgscq/vpn/z6;

    .line 106
    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 108
    .line 109
    .line 110
    move-result-wide v5

    .line 111
    invoke-virtual {v4, v5, v6}, Lcom/sgscq/vpn/z6;->e(J)J

    .line 112
    .line 113
    .line 114
    move-result-wide v4

    .line 115
    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 116
    .line 117
    .line 118
    iget-object v3, v1, Lcom/sgscq/vpn/v6;->l:Lcom/sgscq/vpn/z6;

    .line 119
    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 121
    .line 122
    .line 123
    move-result-wide v4

    .line 124
    invoke-virtual {v3, v4, v5}, Lcom/sgscq/vpn/z6;->d(J)Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    invoke-virtual {p0, v3}, Lcom/sgscq/vpn/v6;->b(Ljava/util/List;)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_5
    :try_start_4
    new-instance v0, Ljava/io/EOFException;

    .line 134
    .line 135
    const-string v3, "TCP client closed while waiting for send capacity"

    .line 136
    .line 137
    invoke-direct {v0, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw v0

    .line 141
    :catchall_1
    move-exception v0

    .line 142
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 143
    throw v0
.end method
