.class public final Ld/l;
.super La/i0;
.source "SourceFile"


# instance fields
.field public final a:Ld/w;

.field public final b:Ld/w;

.field public final c:Lc/t;

.field public final synthetic d:Ld/m;


# direct methods
.method public constructor <init>(Ld/m;La/o;Ljava/lang/reflect/Type;La/i0;Ljava/lang/reflect/Type;La/i0;Lc/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/l;->d:Ld/m;

    invoke-direct {p0}, La/i0;-><init>()V

    new-instance p1, Ld/w;

    invoke-direct {p1, p2, p4, p3}, Ld/w;-><init>(La/o;La/i0;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Ld/l;->a:Ld/w;

    new-instance p1, Ld/w;

    invoke-direct {p1, p2, p6, p5}, Ld/w;-><init>(La/o;La/i0;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Ld/l;->b:Ld/w;

    iput-object p7, p0, Ld/l;->c:Lc/t;

    return-void
.end method


# virtual methods
.method public final b(Lh/a;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lh/a;->z()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lh/a;->v()V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    goto/16 :goto_5

    .line 14
    .line 15
    :cond_0
    iget-object v2, p0, Ld/l;->c:Lc/t;

    .line 16
    .line 17
    invoke-interface {v2}, Lc/t;->a()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/util/Map;

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    iget-object v4, p0, Ld/l;->b:Ld/w;

    .line 25
    .line 26
    iget-object v5, p0, Ld/l;->a:Ld/w;

    .line 27
    .line 28
    const-string v6, "duplicate key: "

    .line 29
    .line 30
    if-ne v0, v3, :cond_3

    .line 31
    .line 32
    invoke-virtual {p1}, Lh/a;->c()V

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {p1}, Lh/a;->m()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {p1}, Lh/a;->c()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, p1}, Ld/w;->b(Lh/a;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v4, p1}, Ld/w;->b(Lh/a;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    invoke-virtual {p1}, Lh/a;->g()V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    new-instance p1, La/r;

    .line 63
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-direct {p1, v0}, La/r;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1

    .line 80
    :cond_2
    invoke-virtual {p1}, Lh/a;->g()V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_4

    .line 84
    .line 85
    :cond_3
    invoke-virtual {p1}, Lh/a;->d()V

    .line 86
    .line 87
    .line 88
    :goto_1
    invoke-virtual {p1}, Lh/a;->m()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_a

    .line 93
    .line 94
    sget-object v0, La/w;->b:La/w;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    instance-of v0, p1, Ld/i;

    .line 100
    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    move-object v0, p1

    .line 104
    check-cast v0, Ld/i;

    .line 105
    .line 106
    const/4 v3, 0x5

    .line 107
    invoke-virtual {v0, v3}, Ld/i;->H(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ld/i;->J()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    check-cast v3, Ljava/util/Iterator;

    .line 115
    .line 116
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    check-cast v3, Ljava/util/Map$Entry;

    .line 121
    .line 122
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    invoke-virtual {v0, v7}, Ld/i;->L(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    new-instance v7, La/x;

    .line 130
    .line 131
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    check-cast v3, Ljava/lang/String;

    .line 136
    .line 137
    invoke-direct {v7, v3}, La/x;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v7}, Ld/i;->L(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_4
    iget v0, p1, Lh/a;->h:I

    .line 145
    .line 146
    if-nez v0, :cond_5

    .line 147
    .line 148
    invoke-virtual {p1}, Lh/a;->f()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    :cond_5
    const/16 v3, 0xd

    .line 153
    .line 154
    if-ne v0, v3, :cond_6

    .line 155
    .line 156
    iput v1, p1, Lh/a;->h:I

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_6
    const/16 v3, 0xc

    .line 160
    .line 161
    if-ne v0, v3, :cond_7

    .line 162
    .line 163
    const/16 v0, 0x8

    .line 164
    .line 165
    :goto_2
    iput v0, p1, Lh/a;->h:I

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_7
    const/16 v3, 0xe

    .line 169
    .line 170
    if-ne v0, v3, :cond_9

    .line 171
    .line 172
    const/16 v0, 0xa

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :goto_3
    invoke-virtual {v5, p1}, Ld/w;->b(Lh/a;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v4, p1}, Ld/w;->b(Lh/a;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    if-nez v3, :cond_8

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_8
    new-instance p1, La/r;

    .line 191
    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-direct {p1, v0}, La/r;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw p1

    .line 208
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 209
    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    const-string v2, "Expected a name but was "

    .line 213
    .line 214
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1}, Lh/a;->z()I

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    invoke-static {v2}, Lcom/sgscq/vpn/handler/l;->e(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1}, Lh/a;->o()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw v0

    .line 243
    :cond_a
    invoke-virtual {p1}, Lh/a;->h()V

    .line 244
    .line 245
    .line 246
    :goto_4
    move-object p1, v2

    .line 247
    :goto_5
    return-object p1
.end method

.method public final c(Lh/b;Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p2, Ljava/util/Map;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lh/b;->k()Lh/b;

    .line 6
    .line 7
    .line 8
    goto/16 :goto_7

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Ld/l;->d:Ld/m;

    .line 11
    .line 12
    iget-boolean v0, v0, Ld/m;->b:Z

    .line 13
    .line 14
    iget-object v1, p0, Ld/l;->b:Ld/w;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Lh/b;->e()V

    .line 19
    .line 20
    .line 21
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_d

    .line 34
    .line 35
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/util/Map$Entry;

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p1, v2}, Lh/b;->i(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v1, p1, v0}, Ld/w;->c(Lh/b;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    .line 68
    .line 69
    new-instance v2, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    const/4 v3, 0x0

    .line 87
    move v4, v3

    .line 88
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_5

    .line 93
    .line 94
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    check-cast v5, Ljava/util/Map$Entry;

    .line 99
    .line 100
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    iget-object v7, p0, Ld/l;->a:Ld/w;

    .line 105
    .line 106
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    :try_start_0
    new-instance v8, Ld/k;

    .line 110
    .line 111
    invoke-direct {v8}, Ld/k;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7, v8, v6}, Ld/w;->c(Lh/b;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iget-object v6, v8, Ld/k;->m:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    if-eqz v7, :cond_4

    .line 124
    .line 125
    iget-object v6, v8, Ld/k;->o:La/q;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .line 127
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    instance-of v5, v6, La/p;

    .line 141
    .line 142
    if-nez v5, :cond_3

    .line 143
    .line 144
    instance-of v5, v6, La/t;

    .line 145
    .line 146
    if-eqz v5, :cond_2

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_2
    move v5, v3

    .line 150
    goto :goto_3

    .line 151
    :cond_3
    :goto_2
    const/4 v5, 0x1

    .line 152
    :goto_3
    or-int/2addr v4, v5

    .line 153
    goto :goto_1

    .line 154
    :cond_4
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 155
    .line 156
    new-instance p2, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string v0, "Expected one JSON element but was "

    .line 159
    .line 160
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 174
    :catch_0
    move-exception p1

    .line 175
    new-instance p2, La/r;

    .line 176
    .line 177
    invoke-direct {p2, p1}, La/r;-><init>(Ljava/lang/Exception;)V

    .line 178
    .line 179
    .line 180
    throw p2

    .line 181
    :cond_5
    if-eqz v4, :cond_7

    .line 182
    .line 183
    invoke-virtual {p1}, Lh/b;->d()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 187
    .line 188
    .line 189
    move-result p2

    .line 190
    :goto_4
    if-ge v3, p2, :cond_6

    .line 191
    .line 192
    invoke-virtual {p1}, Lh/b;->d()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    check-cast v4, La/q;

    .line 200
    .line 201
    invoke-static {v4, p1}, Lcom/sgscq/vpn/p5;->B1(La/q;Lh/b;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    invoke-virtual {v1, p1, v4}, Ld/w;->c(Lh/b;Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Lh/b;->g()V

    .line 212
    .line 213
    .line 214
    add-int/lit8 v3, v3, 0x1

    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_6
    invoke-virtual {p1}, Lh/b;->g()V

    .line 218
    .line 219
    .line 220
    goto :goto_7

    .line 221
    :cond_7
    invoke-virtual {p1}, Lh/b;->e()V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 225
    .line 226
    .line 227
    move-result p2

    .line 228
    :goto_5
    if-ge v3, p2, :cond_d

    .line 229
    .line 230
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    check-cast v4, La/q;

    .line 235
    .line 236
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    instance-of v5, v4, La/x;

    .line 240
    .line 241
    if-eqz v5, :cond_b

    .line 242
    .line 243
    invoke-virtual {v4}, La/q;->g()La/x;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    iget-object v5, v4, La/x;->a:Ljava/io/Serializable;

    .line 248
    .line 249
    instance-of v6, v5, Ljava/lang/Number;

    .line 250
    .line 251
    if-eqz v6, :cond_8

    .line 252
    .line 253
    invoke-virtual {v4}, La/x;->j()Ljava/lang/Number;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    goto :goto_6

    .line 262
    :cond_8
    instance-of v6, v5, Ljava/lang/Boolean;

    .line 263
    .line 264
    if-eqz v6, :cond_9

    .line 265
    .line 266
    invoke-virtual {v4}, La/x;->b()Z

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    goto :goto_6

    .line 275
    :cond_9
    instance-of v5, v5, Ljava/lang/String;

    .line 276
    .line 277
    if-eqz v5, :cond_a

    .line 278
    .line 279
    invoke-virtual {v4}, La/x;->i()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    goto :goto_6

    .line 284
    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    .line 285
    .line 286
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 287
    .line 288
    .line 289
    throw p1

    .line 290
    :cond_b
    instance-of v4, v4, La/s;

    .line 291
    .line 292
    if-eqz v4, :cond_c

    .line 293
    .line 294
    const-string v4, "null"

    .line 295
    .line 296
    :goto_6
    invoke-virtual {p1, v4}, Lh/b;->i(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    invoke-virtual {v1, p1, v4}, Ld/w;->c(Lh/b;Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    add-int/lit8 v3, v3, 0x1

    .line 307
    .line 308
    goto :goto_5

    .line 309
    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    .line 310
    .line 311
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 312
    .line 313
    .line 314
    throw p1

    .line 315
    :cond_d
    invoke-virtual {p1}, Lh/b;->h()V

    .line 316
    .line 317
    .line 318
    :goto_7
    return-void
.end method
