.class public final Lcom/sgscq/vpn/t4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sgscq/vpn/t4;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sgscq/vpn/t4;->d:Ljava/io/Serializable;

    const/4 p2, 0x1

    iput p2, p0, Lcom/sgscq/vpn/t4;->a:I

    iput p1, p0, Lcom/sgscq/vpn/t4;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/sgscq/vpn/s4;II)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/t4;->d:Ljava/io/Serializable;

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    iput-object p1, p0, Lcom/sgscq/vpn/t4;->c:Ljava/lang/Object;

    iput p2, p0, Lcom/sgscq/vpn/t4;->a:I

    iput p3, p0, Lcom/sgscq/vpn/t4;->b:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "journal limits must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;J)Lcom/sgscq/vpn/q4;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/sgscq/vpn/t4;->c(Ljava/lang/String;)Lcom/sgscq/vpn/r4;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    iget-object v3, v2, Lcom/sgscq/vpn/r4;->b:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lcom/sgscq/vpn/q4;

    .line 27
    .line 28
    iget-object v5, v4, Lcom/sgscq/vpn/q4;->b:Ljava/lang/String;

    .line 29
    .line 30
    move-object/from16 v9, p4

    .line 31
    .line 32
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return-object v4

    .line 40
    :cond_1
    move-object/from16 v9, p4

    .line 41
    .line 42
    :try_start_1
    iget-wide v3, v2, Lcom/sgscq/vpn/r4;->a:J

    .line 43
    .line 44
    const-wide/16 v14, 0x1

    .line 45
    .line 46
    add-long v5, p2, v14

    .line 47
    .line 48
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    new-instance v5, Lcom/sgscq/vpn/q4;

    .line 53
    .line 54
    move-object v6, v5

    .line 55
    move-wide v7, v3

    .line 56
    move-object/from16 v9, p4

    .line 57
    .line 58
    move-object/from16 v10, p5

    .line 59
    .line 60
    move-object/from16 v11, p6

    .line 61
    .line 62
    move-wide/from16 v12, p7

    .line 63
    .line 64
    invoke-direct/range {v6 .. v13}, Lcom/sgscq/vpn/q4;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V

    .line 65
    .line 66
    .line 67
    new-instance v6, Ljava/util/ArrayList;

    .line 68
    .line 69
    iget-object v2, v2, Lcom/sgscq/vpn/r4;->b:Ljava/util/List;

    .line 70
    .line 71
    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    new-instance v2, Lcom/sgscq/vpn/r4;

    .line 78
    .line 79
    add-long/2addr v3, v14

    .line 80
    invoke-direct {v2, v3, v4, v6}, Lcom/sgscq/vpn/r4;-><init>(JLjava/util/List;)V

    .line 81
    .line 82
    .line 83
    iget-object v3, v1, Lcom/sgscq/vpn/t4;->c:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v3, Lcom/sgscq/vpn/s4;

    .line 86
    .line 87
    invoke-virtual {v2}, Lcom/sgscq/vpn/r4;->a()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-interface {v3, v0, v4}, Lcom/sgscq/vpn/s4;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v3, v1, Lcom/sgscq/vpn/t4;->d:Ljava/io/Serializable;

    .line 95
    .line 96
    check-cast v3, Ljava/util/Map;

    .line 97
    .line 98
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .line 100
    .line 101
    monitor-exit p0

    .line 102
    return-object v5

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    monitor-exit p0

    .line 105
    throw v0
.end method

.method public final declared-synchronized b(JLjava/lang/String;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/sgscq/vpn/t4;->c(Ljava/lang/String;)Lcom/sgscq/vpn/r4;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, v0, Lcom/sgscq/vpn/r4;->b:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/sgscq/vpn/q4;

    .line 28
    .line 29
    iget-wide v4, v3, Lcom/sgscq/vpn/q4;->a:J

    .line 30
    .line 31
    cmp-long v4, v4, p1

    .line 32
    .line 33
    if-lez v4, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance p1, Lcom/sgscq/vpn/r4;

    .line 40
    .line 41
    iget-wide v2, v0, Lcom/sgscq/vpn/r4;->a:J

    .line 42
    .line 43
    invoke-direct {p1, v2, v3, v1}, Lcom/sgscq/vpn/r4;-><init>(JLjava/util/List;)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p1, Lcom/sgscq/vpn/r4;->b:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    iget-object p2, p0, Lcom/sgscq/vpn/t4;->c:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p2, Lcom/sgscq/vpn/s4;

    .line 57
    .line 58
    invoke-interface {p2, p3}, Lcom/sgscq/vpn/s4;->b(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    iget-object p2, p0, Lcom/sgscq/vpn/t4;->c:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p2, Lcom/sgscq/vpn/s4;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/sgscq/vpn/r4;->a()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-interface {p2, p3, v0}, Lcom/sgscq/vpn/s4;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :goto_1
    iget-object p2, p0, Lcom/sgscq/vpn/t4;->d:Ljava/io/Serializable;

    .line 74
    .line 75
    check-cast p2, Ljava/util/Map;

    .line 76
    .line 77
    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    .line 80
    monitor-exit p0

    .line 81
    return-void

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    monitor-exit p0

    .line 84
    throw p1
.end method

.method public final c(Ljava/lang/String;)Lcom/sgscq/vpn/r4;
    .locals 6

    .line 1
    if-eqz p1, :cond_8

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_8

    .line 8
    .line 9
    iget-object v0, p0, Lcom/sgscq/vpn/t4;->d:Ljava/io/Serializable;

    .line 10
    .line 11
    check-cast v0, Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/sgscq/vpn/r4;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    return-object v1

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/sgscq/vpn/t4;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lcom/sgscq/vpn/s4;

    .line 25
    .line 26
    invoke-interface {v1, p1}, Lcom/sgscq/vpn/s4;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_7

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :cond_1
    :try_start_0
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 41
    .line 42
    .line 43
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 44
    const-string v2, "events"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v3, "next_sequence"

    .line 51
    .line 52
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    instance-of v3, v2, Ljava/util/List;

    .line 57
    .line 58
    if-eqz v3, :cond_6

    .line 59
    .line 60
    if-eqz v1, :cond_6

    .line 61
    .line 62
    new-instance v3, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    :try_start_1
    check-cast v2, Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_3

    .line 78
    .line 79
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    instance-of v5, v4, Ljava/util/Map;

    .line 84
    .line 85
    if-eqz v5, :cond_2

    .line 86
    .line 87
    check-cast v4, Ljava/util/Map;

    .line 88
    .line 89
    invoke-static {v4}, Lcom/sgscq/vpn/q4;->a(Ljava/util/Map;)Lcom/sgscq/vpn/q4;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 98
    .line 99
    const-string v0, "invalid journal event"

    .line 100
    .line 101
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p1

    .line 105
    :cond_3
    instance-of v2, v1, Ljava/lang/Number;

    .line 106
    .line 107
    if-eqz v2, :cond_4

    .line 108
    .line 109
    check-cast v1, Ljava/lang/Number;

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 112
    .line 113
    .line 114
    move-result-wide v1

    .line 115
    goto :goto_1

    .line 116
    :cond_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 121
    .line 122
    .line 123
    move-result-wide v1

    .line 124
    :goto_1
    new-instance v4, Lcom/sgscq/vpn/r4;

    .line 125
    .line 126
    invoke-direct {v4, v1, v2, v3}, Lcom/sgscq/vpn/r4;-><init>(JLjava/util/List;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :catch_0
    move-exception p1

    .line 131
    instance-of v0, p1, Ljava/lang/IllegalStateException;

    .line 132
    .line 133
    if-eqz v0, :cond_5

    .line 134
    .line 135
    throw p1

    .line 136
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 137
    .line 138
    const-string v1, "invalid journal state"

    .line 139
    .line 140
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    .line 142
    .line 143
    throw v0

    .line 144
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 145
    .line 146
    const-string v0, "journal state missing fields"

    .line 147
    .line 148
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p1

    .line 152
    :catch_1
    move-exception p1

    .line 153
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 154
    .line 155
    const-string v1, "invalid journal json"

    .line 156
    .line 157
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    .line 159
    .line 160
    throw v0

    .line 161
    :cond_7
    :goto_2
    new-instance v4, Lcom/sgscq/vpn/r4;

    .line 162
    .line 163
    const-wide/16 v1, 0x1

    .line 164
    .line 165
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-direct {v4, v1, v2, v3}, Lcom/sgscq/vpn/r4;-><init>(JLjava/util/List;)V

    .line 170
    .line 171
    .line 172
    :goto_3
    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    return-object v4

    .line 176
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 177
    .line 178
    const-string v0, "uid required"

    .line 179
    .line 180
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p1
.end method
