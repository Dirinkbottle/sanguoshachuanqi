.class public final La/l;
.super La/i0;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, La/l;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, La/i0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static f(Lh/a;I)La/q;
    .locals 2

    .line 1
    if-eqz p1, :cond_4

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lh/a;->v()V

    sget-object p0, La/s;->a:La/s;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Lcom/sgscq/vpn/handler/l;->e(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unexpected token: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, La/x;

    invoke-virtual {p0}, Lh/a;->p()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {p1, p0}, La/x;-><init>(Ljava/lang/Boolean;)V

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lh/a;->x()Ljava/lang/String;

    move-result-object p0

    new-instance p1, La/x;

    new-instance v0, Lc/m;

    invoke-direct {v0, p0}, Lc/m;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, La/x;-><init>(Ljava/lang/Number;)V

    return-object p1

    :cond_3
    new-instance p1, La/x;

    invoke-virtual {p0}, Lh/a;->x()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, La/x;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_4
    const/4 p0, 0x0

    throw p0
.end method

.method public static g(Lh/a;I)La/q;
    .locals 2

    .line 1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lh/a;->d()V

    new-instance p0, La/t;

    invoke-direct {p0}, La/t;-><init>()V

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lh/a;->c()V

    new-instance p0, La/p;

    invoke-direct {p0}, La/p;-><init>()V

    return-object p0

    :cond_2
    throw v0
.end method

.method public static h(La/q;Lh/b;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_8

    .line 2
    .line 3
    instance-of v0, p0, La/s;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    instance-of v0, p0, La/x;

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    invoke-virtual {p0}, La/q;->g()La/x;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget-object v0, p0, La/x;->a:Ljava/io/Serializable;

    .line 18
    .line 19
    instance-of v1, v0, Ljava/lang/Number;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, La/x;->j()Ljava/lang/Number;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p1, p0}, Lh/b;->q(Ljava/lang/Number;)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_1
    instance-of v0, v0, Ljava/lang/Boolean;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, La/x;->b()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    invoke-virtual {p1, p0}, Lh/b;->s(Z)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :cond_2
    invoke-virtual {p0}, La/x;->i()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p1, p0}, Lh/b;->r(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_3

    .line 53
    .line 54
    :cond_3
    instance-of v0, p0, La/p;

    .line 55
    .line 56
    if-eqz v0, :cond_5

    .line 57
    .line 58
    invoke-virtual {p1}, Lh/b;->d()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, La/q;->e()La/p;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, La/p;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, La/q;

    .line 80
    .line 81
    invoke-static {v0, p1}, La/l;->h(La/q;Lh/b;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    invoke-virtual {p1}, Lh/b;->g()V

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_5
    instance-of v0, p0, La/t;

    .line 90
    .line 91
    if-eqz v0, :cond_7

    .line 92
    .line 93
    invoke-virtual {p1}, Lh/b;->e()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, La/q;->f()La/t;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    iget-object p0, p0, La/t;->a:Lc/s;

    .line 101
    .line 102
    invoke-virtual {p0}, Lc/s;->entrySet()Ljava/util/Set;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    check-cast p0, Lc/p;

    .line 107
    .line 108
    invoke-virtual {p0}, Lc/p;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    :goto_1
    move-object v0, p0

    .line 113
    check-cast v0, Lc/q;

    .line 114
    .line 115
    invoke-virtual {v0}, Lc/q;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_6

    .line 120
    .line 121
    move-object v0, p0

    .line 122
    check-cast v0, Lc/o;

    .line 123
    .line 124
    invoke-virtual {v0}, Lc/o;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Ljava/util/Map$Entry;

    .line 129
    .line 130
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    check-cast v1, Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {p1, v1}, Lh/b;->i(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    check-cast v0, La/q;

    .line 144
    .line 145
    invoke-static {v0, p1}, La/l;->h(La/q;Lh/b;)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_6
    invoke-virtual {p1}, Lh/b;->h()V

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 154
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v1, "Couldn\'t write "

    .line 158
    .line 159
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p1

    .line 177
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lh/b;->k()Lh/b;

    .line 178
    .line 179
    .line 180
    :goto_3
    return-void
.end method


# virtual methods
.method public final b(Lh/a;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    move-object/from16 v2, p0

    .line 5
    .line 6
    iget v3, v2, La/l;->a:I

    .line 7
    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x4

    .line 10
    const-string v6, "null"

    .line 11
    .line 12
    const-string v7, "Failed parsing \'"

    .line 13
    .line 14
    const/4 v8, 0x1

    .line 15
    const/4 v9, 0x0

    .line 16
    const/16 v10, 0x9

    .line 17
    .line 18
    const/4 v11, 0x0

    .line 19
    packed-switch v3, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    goto/16 :goto_1b

    .line 23
    .line 24
    :pswitch_0
    :try_start_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    .line 26
    invoke-virtual/range {p1 .. p1}, Lh/a;->r()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    new-instance v1, La/r;

    .line 36
    .line 37
    invoke-direct {v1, v0}, La/r;-><init>(Ljava/lang/Exception;)V

    .line 38
    .line 39
    .line 40
    throw v1

    .line 41
    :pswitch_1
    invoke-virtual/range {p0 .. p1}, La/l;->e(Lh/a;)Ljava/lang/Number;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0

    .line 46
    :pswitch_2
    invoke-virtual/range {p0 .. p1}, La/l;->e(Lh/a;)Ljava/lang/Number;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0

    .line 51
    :pswitch_3
    invoke-virtual/range {p0 .. p1}, La/l;->e(Lh/a;)Ljava/lang/Number;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0

    .line 56
    :pswitch_4
    invoke-virtual/range {p0 .. p1}, La/l;->d(Lh/a;)Ljava/lang/Boolean;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    return-object v0

    .line 61
    :pswitch_5
    invoke-virtual/range {p0 .. p1}, La/l;->d(Lh/a;)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0

    .line 66
    :pswitch_6
    new-instance v3, Ljava/util/BitSet;

    .line 67
    .line 68
    invoke-direct {v3}, Ljava/util/BitSet;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual/range {p1 .. p1}, Lh/a;->c()V

    .line 72
    .line 73
    .line 74
    invoke-virtual/range {p1 .. p1}, Lh/a;->z()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    move v6, v9

    .line 79
    :goto_0
    if-eq v5, v4, :cond_5

    .line 80
    .line 81
    invoke-static {v5}, La/b0;->c(I)I

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eq v7, v0, :cond_1

    .line 86
    .line 87
    const/4 v10, 0x6

    .line 88
    if-eq v7, v10, :cond_1

    .line 89
    .line 90
    const/4 v10, 0x7

    .line 91
    if-ne v7, v10, :cond_0

    .line 92
    .line 93
    invoke-virtual/range {p1 .. p1}, Lh/a;->p()Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    goto :goto_1

    .line 98
    :cond_0
    new-instance v0, La/r;

    .line 99
    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v4, "Invalid bitset value type: "

    .line 103
    .line 104
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v5}, Lcom/sgscq/vpn/handler/l;->e(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v4, "; at path "

    .line 115
    .line 116
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual/range {p1 .. p1}, Lh/a;->j()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-direct {v0, v1}, La/r;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v0

    .line 134
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lh/a;->r()I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    if-nez v5, :cond_2

    .line 139
    .line 140
    move v5, v9

    .line 141
    goto :goto_1

    .line 142
    :cond_2
    if-ne v5, v8, :cond_4

    .line 143
    .line 144
    move v5, v8

    .line 145
    :goto_1
    if-eqz v5, :cond_3

    .line 146
    .line 147
    invoke-virtual {v3, v6}, Ljava/util/BitSet;->set(I)V

    .line 148
    .line 149
    .line 150
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 151
    .line 152
    invoke-virtual/range {p1 .. p1}, Lh/a;->z()I

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    goto :goto_0

    .line 157
    :cond_4
    new-instance v0, La/r;

    .line 158
    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    const-string v4, "Invalid bitset value "

    .line 162
    .line 163
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v4, ", expected 0 or 1; at path "

    .line 170
    .line 171
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual/range {p1 .. p1}, Lh/a;->l()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-direct {v0, v1}, La/r;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw v0

    .line 189
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lh/a;->g()V

    .line 190
    .line 191
    .line 192
    return-object v3

    .line 193
    :pswitch_7
    instance-of v3, v1, Ld/i;

    .line 194
    .line 195
    if-eqz v3, :cond_7

    .line 196
    .line 197
    check-cast v1, Ld/i;

    .line 198
    .line 199
    invoke-virtual {v1}, Ld/i;->z()I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    if-eq v3, v0, :cond_6

    .line 204
    .line 205
    if-eq v3, v4, :cond_6

    .line 206
    .line 207
    if-eq v3, v5, :cond_6

    .line 208
    .line 209
    const/16 v0, 0xa

    .line 210
    .line 211
    if-eq v3, v0, :cond_6

    .line 212
    .line 213
    invoke-virtual {v1}, Ld/i;->J()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, La/q;

    .line 218
    .line 219
    invoke-virtual {v1}, Ld/i;->F()V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_7

    .line 223
    .line 224
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 225
    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string v4, "Unexpected "

    .line 229
    .line 230
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-static {v3}, Lcom/sgscq/vpn/handler/l;->e(I)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v3, " when reading a JsonElement."

    .line 241
    .line 242
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw v0

    .line 253
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lh/a;->z()I

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    invoke-static {v1, v0}, La/l;->g(Lh/a;I)La/q;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    if-nez v3, :cond_8

    .line 262
    .line 263
    invoke-static {v1, v0}, La/l;->f(Lh/a;I)La/q;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    goto :goto_7

    .line 268
    :cond_8
    new-instance v0, Ljava/util/ArrayDeque;

    .line 269
    .line 270
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 271
    .line 272
    .line 273
    :cond_9
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lh/a;->m()Z

    .line 274
    .line 275
    .line 276
    move-result v4

    .line 277
    if-eqz v4, :cond_e

    .line 278
    .line 279
    instance-of v4, v3, La/t;

    .line 280
    .line 281
    if-eqz v4, :cond_a

    .line 282
    .line 283
    invoke-virtual/range {p1 .. p1}, Lh/a;->t()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    goto :goto_3

    .line 288
    :cond_a
    move-object v4, v11

    .line 289
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lh/a;->z()I

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    invoke-static {v1, v5}, La/l;->g(Lh/a;I)La/q;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    if-eqz v6, :cond_b

    .line 298
    .line 299
    move v7, v8

    .line 300
    goto :goto_4

    .line 301
    :cond_b
    move v7, v9

    .line 302
    :goto_4
    if-nez v6, :cond_c

    .line 303
    .line 304
    invoke-static {v1, v5}, La/l;->f(Lh/a;I)La/q;

    .line 305
    .line 306
    .line 307
    move-result-object v6

    .line 308
    :cond_c
    instance-of v5, v3, La/p;

    .line 309
    .line 310
    if-eqz v5, :cond_d

    .line 311
    .line 312
    move-object v4, v3

    .line 313
    check-cast v4, La/p;

    .line 314
    .line 315
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    .line 317
    .line 318
    iget-object v4, v4, La/p;->a:Ljava/util/ArrayList;

    .line 319
    .line 320
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    goto :goto_5

    .line 324
    :cond_d
    move-object v5, v3

    .line 325
    check-cast v5, La/t;

    .line 326
    .line 327
    invoke-virtual {v5, v4, v6}, La/t;->j(Ljava/lang/String;La/q;)V

    .line 328
    .line 329
    .line 330
    :goto_5
    if-eqz v7, :cond_9

    .line 331
    .line 332
    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    move-object v3, v6

    .line 336
    goto :goto_2

    .line 337
    :cond_e
    instance-of v4, v3, La/p;

    .line 338
    .line 339
    if-eqz v4, :cond_f

    .line 340
    .line 341
    invoke-virtual/range {p1 .. p1}, Lh/a;->g()V

    .line 342
    .line 343
    .line 344
    goto :goto_6

    .line 345
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lh/a;->h()V

    .line 346
    .line 347
    .line 348
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 349
    .line 350
    .line 351
    move-result v4

    .line 352
    if-eqz v4, :cond_10

    .line 353
    .line 354
    move-object v0, v3

    .line 355
    :goto_7
    return-object v0

    .line 356
    :cond_10
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    check-cast v3, La/q;

    .line 361
    .line 362
    goto :goto_2

    .line 363
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Lh/a;->z()I

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    if-ne v0, v10, :cond_11

    .line 368
    .line 369
    invoke-virtual/range {p1 .. p1}, Lh/a;->v()V

    .line 370
    .line 371
    .line 372
    goto :goto_b

    .line 373
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lh/a;->x()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    new-instance v1, Ljava/util/StringTokenizer;

    .line 378
    .line 379
    const-string v3, "_"

    .line 380
    .line 381
    invoke-direct {v1, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    if-eqz v0, :cond_12

    .line 389
    .line 390
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    goto :goto_8

    .line 395
    :cond_12
    move-object v0, v11

    .line 396
    :goto_8
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    .line 397
    .line 398
    .line 399
    move-result v3

    .line 400
    if-eqz v3, :cond_13

    .line 401
    .line 402
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v3

    .line 406
    goto :goto_9

    .line 407
    :cond_13
    move-object v3, v11

    .line 408
    :goto_9
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    .line 409
    .line 410
    .line 411
    move-result v4

    .line 412
    if-eqz v4, :cond_14

    .line 413
    .line 414
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v11

    .line 418
    :cond_14
    if-nez v3, :cond_15

    .line 419
    .line 420
    if-nez v11, :cond_15

    .line 421
    .line 422
    new-instance v11, Ljava/util/Locale;

    .line 423
    .line 424
    invoke-direct {v11, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    goto :goto_b

    .line 428
    :cond_15
    new-instance v1, Ljava/util/Locale;

    .line 429
    .line 430
    if-nez v11, :cond_16

    .line 431
    .line 432
    invoke-direct {v1, v0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    goto :goto_a

    .line 436
    :cond_16
    invoke-direct {v1, v0, v3, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    :goto_a
    move-object v11, v1

    .line 440
    :goto_b
    return-object v11

    .line 441
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Lh/a;->z()I

    .line 442
    .line 443
    .line 444
    move-result v0

    .line 445
    if-ne v0, v10, :cond_17

    .line 446
    .line 447
    invoke-virtual/range {p1 .. p1}, Lh/a;->v()V

    .line 448
    .line 449
    .line 450
    goto/16 :goto_d

    .line 451
    .line 452
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lh/a;->d()V

    .line 453
    .line 454
    .line 455
    move v13, v9

    .line 456
    move v14, v13

    .line 457
    move v15, v14

    .line 458
    move/from16 v16, v15

    .line 459
    .line 460
    move/from16 v17, v16

    .line 461
    .line 462
    move/from16 v18, v17

    .line 463
    .line 464
    :cond_18
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lh/a;->z()I

    .line 465
    .line 466
    .line 467
    move-result v0

    .line 468
    if-eq v0, v5, :cond_1e

    .line 469
    .line 470
    invoke-virtual/range {p1 .. p1}, Lh/a;->t()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    invoke-virtual/range {p1 .. p1}, Lh/a;->r()I

    .line 475
    .line 476
    .line 477
    move-result v9

    .line 478
    const-string v3, "year"

    .line 479
    .line 480
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    move-result v3

    .line 484
    if-eqz v3, :cond_19

    .line 485
    .line 486
    move v13, v9

    .line 487
    goto :goto_c

    .line 488
    :cond_19
    const-string v3, "month"

    .line 489
    .line 490
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    move-result v3

    .line 494
    if-eqz v3, :cond_1a

    .line 495
    .line 496
    move v14, v9

    .line 497
    goto :goto_c

    .line 498
    :cond_1a
    const-string v3, "dayOfMonth"

    .line 499
    .line 500
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    move-result v3

    .line 504
    if-eqz v3, :cond_1b

    .line 505
    .line 506
    move v15, v9

    .line 507
    goto :goto_c

    .line 508
    :cond_1b
    const-string v3, "hourOfDay"

    .line 509
    .line 510
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result v3

    .line 514
    if-eqz v3, :cond_1c

    .line 515
    .line 516
    move/from16 v16, v9

    .line 517
    .line 518
    goto :goto_c

    .line 519
    :cond_1c
    const-string v3, "minute"

    .line 520
    .line 521
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    move-result v3

    .line 525
    if-eqz v3, :cond_1d

    .line 526
    .line 527
    move/from16 v17, v9

    .line 528
    .line 529
    goto :goto_c

    .line 530
    :cond_1d
    const-string v3, "second"

    .line 531
    .line 532
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 533
    .line 534
    .line 535
    move-result v0

    .line 536
    if-eqz v0, :cond_18

    .line 537
    .line 538
    move/from16 v18, v9

    .line 539
    .line 540
    goto :goto_c

    .line 541
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lh/a;->h()V

    .line 542
    .line 543
    .line 544
    new-instance v11, Ljava/util/GregorianCalendar;

    .line 545
    .line 546
    move-object v12, v11

    .line 547
    invoke-direct/range {v12 .. v18}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 548
    .line 549
    .line 550
    :goto_d
    return-object v11

    .line 551
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Lh/a;->x()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v3

    .line 555
    :try_start_1
    invoke-static {v3}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    .line 556
    .line 557
    .line 558
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 559
    return-object v0

    .line 560
    :catch_1
    move-exception v0

    .line 561
    move-object v4, v0

    .line 562
    new-instance v0, La/r;

    .line 563
    .line 564
    const-string v5, "\' as Currency; at path "

    .line 565
    .line 566
    invoke-static {v7, v3, v5}, La/b0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    move-result-object v3

    .line 570
    invoke-virtual/range {p1 .. p1}, Lh/a;->l()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v1

    .line 574
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v1

    .line 581
    invoke-direct {v0, v1, v4}, La/r;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 582
    .line 583
    .line 584
    throw v0

    .line 585
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Lh/a;->z()I

    .line 586
    .line 587
    .line 588
    move-result v0

    .line 589
    if-ne v0, v10, :cond_1f

    .line 590
    .line 591
    invoke-virtual/range {p1 .. p1}, Lh/a;->v()V

    .line 592
    .line 593
    .line 594
    goto :goto_e

    .line 595
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lh/a;->x()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v3

    .line 599
    :try_start_2
    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 600
    .line 601
    .line 602
    move-result-object v11
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 603
    :goto_e
    return-object v11

    .line 604
    :catch_2
    move-exception v0

    .line 605
    move-object v4, v0

    .line 606
    new-instance v0, La/r;

    .line 607
    .line 608
    const-string v5, "\' as UUID; at path "

    .line 609
    .line 610
    invoke-static {v7, v3, v5}, La/b0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    move-result-object v3

    .line 614
    invoke-virtual/range {p1 .. p1}, Lh/a;->l()Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v1

    .line 618
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    invoke-direct {v0, v1, v4}, La/r;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 626
    .line 627
    .line 628
    throw v0

    .line 629
    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Lh/a;->z()I

    .line 630
    .line 631
    .line 632
    move-result v0

    .line 633
    if-ne v0, v10, :cond_20

    .line 634
    .line 635
    invoke-virtual/range {p1 .. p1}, Lh/a;->v()V

    .line 636
    .line 637
    .line 638
    goto :goto_f

    .line 639
    :cond_20
    invoke-virtual/range {p1 .. p1}, Lh/a;->x()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v0

    .line 643
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 644
    .line 645
    .line 646
    move-result-object v11

    .line 647
    :goto_f
    return-object v11

    .line 648
    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Lh/a;->z()I

    .line 649
    .line 650
    .line 651
    move-result v0

    .line 652
    if-ne v0, v10, :cond_21

    .line 653
    .line 654
    invoke-virtual/range {p1 .. p1}, Lh/a;->v()V

    .line 655
    .line 656
    .line 657
    goto :goto_10

    .line 658
    :cond_21
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lh/a;->x()Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v0

    .line 662
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 663
    .line 664
    .line 665
    move-result v1

    .line 666
    if-eqz v1, :cond_22

    .line 667
    .line 668
    goto :goto_10

    .line 669
    :cond_22
    new-instance v11, Ljava/net/URI;

    .line 670
    .line 671
    invoke-direct {v11, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_3

    .line 672
    .line 673
    .line 674
    :goto_10
    return-object v11

    .line 675
    :catch_3
    move-exception v0

    .line 676
    new-instance v1, La/r;

    .line 677
    .line 678
    invoke-direct {v1, v0}, La/r;-><init>(Ljava/lang/Exception;)V

    .line 679
    .line 680
    .line 681
    throw v1

    .line 682
    :pswitch_e
    invoke-virtual/range {p1 .. p1}, Lh/a;->z()I

    .line 683
    .line 684
    .line 685
    move-result v0

    .line 686
    if-ne v0, v10, :cond_23

    .line 687
    .line 688
    invoke-virtual/range {p1 .. p1}, Lh/a;->v()V

    .line 689
    .line 690
    .line 691
    goto :goto_11

    .line 692
    :cond_23
    invoke-virtual/range {p1 .. p1}, Lh/a;->x()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v0

    .line 696
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 697
    .line 698
    .line 699
    move-result v1

    .line 700
    if-eqz v1, :cond_24

    .line 701
    .line 702
    goto :goto_11

    .line 703
    :cond_24
    new-instance v11, Ljava/net/URL;

    .line 704
    .line 705
    invoke-direct {v11, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    :goto_11
    return-object v11

    .line 709
    :pswitch_f
    invoke-virtual/range {p1 .. p1}, Lh/a;->z()I

    .line 710
    .line 711
    .line 712
    move-result v0

    .line 713
    if-ne v0, v10, :cond_25

    .line 714
    .line 715
    invoke-virtual/range {p1 .. p1}, Lh/a;->v()V

    .line 716
    .line 717
    .line 718
    goto :goto_12

    .line 719
    :cond_25
    new-instance v11, Ljava/lang/StringBuffer;

    .line 720
    .line 721
    invoke-virtual/range {p1 .. p1}, Lh/a;->x()Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    invoke-direct {v11, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    :goto_12
    return-object v11

    .line 729
    :pswitch_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 730
    .line 731
    const-string v1, "Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?"

    .line 732
    .line 733
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 734
    .line 735
    .line 736
    throw v0

    .line 737
    :pswitch_11
    invoke-virtual/range {p1 .. p1}, Lh/a;->z()I

    .line 738
    .line 739
    .line 740
    move-result v0

    .line 741
    if-ne v0, v10, :cond_26

    .line 742
    .line 743
    invoke-virtual/range {p1 .. p1}, Lh/a;->v()V

    .line 744
    .line 745
    .line 746
    goto :goto_13

    .line 747
    :cond_26
    new-instance v11, Ljava/lang/StringBuilder;

    .line 748
    .line 749
    invoke-virtual/range {p1 .. p1}, Lh/a;->x()Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 754
    .line 755
    .line 756
    :goto_13
    return-object v11

    .line 757
    :pswitch_12
    invoke-virtual/range {p1 .. p1}, Lh/a;->z()I

    .line 758
    .line 759
    .line 760
    move-result v0

    .line 761
    if-ne v0, v10, :cond_27

    .line 762
    .line 763
    invoke-virtual/range {p1 .. p1}, Lh/a;->v()V

    .line 764
    .line 765
    .line 766
    goto :goto_14

    .line 767
    :cond_27
    new-instance v11, Lc/m;

    .line 768
    .line 769
    invoke-virtual/range {p1 .. p1}, Lh/a;->x()Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v0

    .line 773
    invoke-direct {v11, v0}, Lc/m;-><init>(Ljava/lang/String;)V

    .line 774
    .line 775
    .line 776
    :goto_14
    return-object v11

    .line 777
    :pswitch_13
    invoke-virtual/range {p1 .. p1}, Lh/a;->z()I

    .line 778
    .line 779
    .line 780
    move-result v0

    .line 781
    if-ne v0, v10, :cond_28

    .line 782
    .line 783
    invoke-virtual/range {p1 .. p1}, Lh/a;->v()V

    .line 784
    .line 785
    .line 786
    goto :goto_15

    .line 787
    :cond_28
    invoke-virtual/range {p1 .. p1}, Lh/a;->x()Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v3

    .line 791
    :try_start_4
    new-instance v11, Ljava/math/BigInteger;

    .line 792
    .line 793
    invoke-direct {v11, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 794
    .line 795
    .line 796
    :goto_15
    return-object v11

    .line 797
    :catch_4
    move-exception v0

    .line 798
    new-instance v4, La/r;

    .line 799
    .line 800
    const-string v5, "\' as BigInteger; at path "

    .line 801
    .line 802
    invoke-static {v7, v3, v5}, La/b0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    .line 804
    .line 805
    move-result-object v3

    .line 806
    invoke-virtual/range {p1 .. p1}, Lh/a;->l()Ljava/lang/String;

    .line 807
    .line 808
    .line 809
    move-result-object v1

    .line 810
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    .line 812
    .line 813
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v1

    .line 817
    invoke-direct {v4, v1, v0}, La/r;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 818
    .line 819
    .line 820
    throw v4

    .line 821
    :pswitch_14
    invoke-virtual/range {p1 .. p1}, Lh/a;->z()I

    .line 822
    .line 823
    .line 824
    move-result v0

    .line 825
    if-ne v0, v10, :cond_29

    .line 826
    .line 827
    invoke-virtual/range {p1 .. p1}, Lh/a;->v()V

    .line 828
    .line 829
    .line 830
    goto :goto_16

    .line 831
    :cond_29
    invoke-virtual/range {p1 .. p1}, Lh/a;->x()Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object v3

    .line 835
    :try_start_5
    new-instance v11, Ljava/math/BigDecimal;

    .line 836
    .line 837
    invoke-direct {v11, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    .line 838
    .line 839
    .line 840
    :goto_16
    return-object v11

    .line 841
    :catch_5
    move-exception v0

    .line 842
    new-instance v4, La/r;

    .line 843
    .line 844
    const-string v5, "\' as BigDecimal; at path "

    .line 845
    .line 846
    invoke-static {v7, v3, v5}, La/b0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    .line 848
    .line 849
    move-result-object v3

    .line 850
    invoke-virtual/range {p1 .. p1}, Lh/a;->l()Ljava/lang/String;

    .line 851
    .line 852
    .line 853
    move-result-object v1

    .line 854
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    .line 856
    .line 857
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object v1

    .line 861
    invoke-direct {v4, v1, v0}, La/r;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 862
    .line 863
    .line 864
    throw v4

    .line 865
    :pswitch_15
    invoke-virtual/range {p1 .. p1}, Lh/a;->z()I

    .line 866
    .line 867
    .line 868
    move-result v0

    .line 869
    if-ne v0, v10, :cond_2a

    .line 870
    .line 871
    invoke-virtual/range {p1 .. p1}, Lh/a;->v()V

    .line 872
    .line 873
    .line 874
    goto :goto_17

    .line 875
    :cond_2a
    const/16 v3, 0x8

    .line 876
    .line 877
    if-ne v0, v3, :cond_2b

    .line 878
    .line 879
    invoke-virtual/range {p1 .. p1}, Lh/a;->p()Z

    .line 880
    .line 881
    .line 882
    move-result v0

    .line 883
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 884
    .line 885
    .line 886
    move-result-object v11

    .line 887
    goto :goto_17

    .line 888
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Lh/a;->x()Ljava/lang/String;

    .line 889
    .line 890
    .line 891
    move-result-object v11

    .line 892
    :goto_17
    return-object v11

    .line 893
    :pswitch_16
    invoke-virtual/range {p1 .. p1}, Lh/a;->z()I

    .line 894
    .line 895
    .line 896
    move-result v0

    .line 897
    if-ne v0, v10, :cond_2c

    .line 898
    .line 899
    invoke-virtual/range {p1 .. p1}, Lh/a;->v()V

    .line 900
    .line 901
    .line 902
    goto :goto_18

    .line 903
    :cond_2c
    invoke-virtual/range {p1 .. p1}, Lh/a;->x()Ljava/lang/String;

    .line 904
    .line 905
    .line 906
    move-result-object v0

    .line 907
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 908
    .line 909
    .line 910
    move-result v3

    .line 911
    if-ne v3, v8, :cond_2d

    .line 912
    .line 913
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 914
    .line 915
    .line 916
    move-result v0

    .line 917
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 918
    .line 919
    .line 920
    move-result-object v11

    .line 921
    :goto_18
    return-object v11

    .line 922
    :cond_2d
    new-instance v3, La/r;

    .line 923
    .line 924
    const-string v4, "Expecting character, got: "

    .line 925
    .line 926
    const-string v5, "; at "

    .line 927
    .line 928
    invoke-static {v4, v0, v5}, La/b0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    .line 930
    .line 931
    move-result-object v0

    .line 932
    invoke-virtual/range {p1 .. p1}, Lh/a;->l()Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object v1

    .line 936
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    .line 938
    .line 939
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 940
    .line 941
    .line 942
    move-result-object v0

    .line 943
    invoke-direct {v3, v0}, La/r;-><init>(Ljava/lang/String;)V

    .line 944
    .line 945
    .line 946
    throw v3

    .line 947
    :pswitch_17
    invoke-virtual/range {p0 .. p1}, La/l;->e(Lh/a;)Ljava/lang/Number;

    .line 948
    .line 949
    .line 950
    move-result-object v0

    .line 951
    return-object v0

    .line 952
    :pswitch_18
    invoke-virtual/range {p0 .. p1}, La/l;->e(Lh/a;)Ljava/lang/Number;

    .line 953
    .line 954
    .line 955
    move-result-object v0

    .line 956
    return-object v0

    .line 957
    :pswitch_19
    invoke-virtual/range {p0 .. p1}, La/l;->e(Lh/a;)Ljava/lang/Number;

    .line 958
    .line 959
    .line 960
    move-result-object v0

    .line 961
    return-object v0

    .line 962
    :pswitch_1a
    new-instance v0, Ljava/util/ArrayList;

    .line 963
    .line 964
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 965
    .line 966
    .line 967
    invoke-virtual/range {p1 .. p1}, Lh/a;->c()V

    .line 968
    .line 969
    .line 970
    :goto_19
    invoke-virtual/range {p1 .. p1}, Lh/a;->m()Z

    .line 971
    .line 972
    .line 973
    move-result v3

    .line 974
    if-eqz v3, :cond_2e

    .line 975
    .line 976
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lh/a;->r()I

    .line 977
    .line 978
    .line 979
    move-result v3

    .line 980
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 981
    .line 982
    .line 983
    move-result-object v3

    .line 984
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    .line 985
    .line 986
    .line 987
    goto :goto_19

    .line 988
    :catch_6
    move-exception v0

    .line 989
    new-instance v1, La/r;

    .line 990
    .line 991
    invoke-direct {v1, v0}, La/r;-><init>(Ljava/lang/Exception;)V

    .line 992
    .line 993
    .line 994
    throw v1

    .line 995
    :cond_2e
    invoke-virtual/range {p1 .. p1}, Lh/a;->g()V

    .line 996
    .line 997
    .line 998
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 999
    .line 1000
    .line 1001
    move-result v1

    .line 1002
    new-instance v3, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 1003
    .line 1004
    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    .line 1005
    .line 1006
    .line 1007
    :goto_1a
    if-ge v9, v1, :cond_2f

    .line 1008
    .line 1009
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v4

    .line 1013
    check-cast v4, Ljava/lang/Integer;

    .line 1014
    .line 1015
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 1016
    .line 1017
    .line 1018
    move-result v4

    .line 1019
    invoke-virtual {v3, v9, v4}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    .line 1020
    .line 1021
    .line 1022
    add-int/lit8 v9, v9, 0x1

    .line 1023
    .line 1024
    goto :goto_1a

    .line 1025
    :cond_2f
    return-object v3

    .line 1026
    :pswitch_1b
    invoke-virtual/range {p0 .. p1}, La/l;->e(Lh/a;)Ljava/lang/Number;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v0

    .line 1030
    return-object v0

    .line 1031
    :goto_1b
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1032
    .line 1033
    invoke-virtual/range {p1 .. p1}, Lh/a;->p()Z

    .line 1034
    .line 1035
    .line 1036
    move-result v1

    .line 1037
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1038
    .line 1039
    .line 1040
    return-object v0

    .line 1041
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lh/b;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, La/l;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto/16 :goto_b

    .line 9
    .line 10
    :pswitch_0
    check-cast p2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    int-to-long v0, p2

    .line 17
    invoke-virtual {p1, v0, v1}, Lh/b;->o(J)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_1
    check-cast p2, Ljava/lang/Number;

    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, La/l;->j(Lh/b;Ljava/lang/Number;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_2
    check-cast p2, Ljava/lang/Number;

    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, La/l;->j(Lh/b;Ljava/lang/Number;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_3
    check-cast p2, Ljava/lang/Number;

    .line 34
    .line 35
    invoke-virtual {p0, p1, p2}, La/l;->j(Lh/b;Ljava/lang/Number;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {p0, p1, p2}, La/l;->i(Lh/b;Ljava/lang/Boolean;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_5
    check-cast p2, Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {p0, p1, p2}, La/l;->i(Lh/b;Ljava/lang/Boolean;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_6
    check-cast p2, Ljava/util/BitSet;

    .line 52
    .line 53
    invoke-virtual {p1}, Lh/b;->d()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    :goto_0
    if-ge v1, v0, :cond_0

    .line 61
    .line 62
    invoke-virtual {p2, v1}, Ljava/util/BitSet;->get(I)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    int-to-long v2, v2

    .line 67
    invoke-virtual {p1, v2, v3}, Lh/b;->o(J)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p1}, Lh/b;->g()V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :pswitch_7
    check-cast p2, La/q;

    .line 78
    .line 79
    invoke-static {p2, p1}, La/l;->h(La/q;Lh/b;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :pswitch_8
    check-cast p2, Ljava/util/Locale;

    .line 84
    .line 85
    if-nez p2, :cond_1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    :goto_1
    invoke-virtual {p1, v2}, Lh/b;->r(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :pswitch_9
    check-cast p2, Ljava/util/Calendar;

    .line 97
    .line 98
    if-nez p2, :cond_2

    .line 99
    .line 100
    invoke-virtual {p1}, Lh/b;->k()Lh/b;

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_2
    invoke-virtual {p1}, Lh/b;->e()V

    .line 105
    .line 106
    .line 107
    const-string v0, "year"

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Lh/b;->i(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const/4 v0, 0x1

    .line 113
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    int-to-long v0, v0

    .line 118
    invoke-virtual {p1, v0, v1}, Lh/b;->o(J)V

    .line 119
    .line 120
    .line 121
    const-string v0, "month"

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Lh/b;->i(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const/4 v0, 0x2

    .line 127
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    int-to-long v0, v0

    .line 132
    invoke-virtual {p1, v0, v1}, Lh/b;->o(J)V

    .line 133
    .line 134
    .line 135
    const-string v0, "dayOfMonth"

    .line 136
    .line 137
    invoke-virtual {p1, v0}, Lh/b;->i(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const/4 v0, 0x5

    .line 141
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    int-to-long v0, v0

    .line 146
    invoke-virtual {p1, v0, v1}, Lh/b;->o(J)V

    .line 147
    .line 148
    .line 149
    const-string v0, "hourOfDay"

    .line 150
    .line 151
    invoke-virtual {p1, v0}, Lh/b;->i(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    const/16 v0, 0xb

    .line 155
    .line 156
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    int-to-long v0, v0

    .line 161
    invoke-virtual {p1, v0, v1}, Lh/b;->o(J)V

    .line 162
    .line 163
    .line 164
    const-string v0, "minute"

    .line 165
    .line 166
    invoke-virtual {p1, v0}, Lh/b;->i(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const/16 v0, 0xc

    .line 170
    .line 171
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    int-to-long v0, v0

    .line 176
    invoke-virtual {p1, v0, v1}, Lh/b;->o(J)V

    .line 177
    .line 178
    .line 179
    const-string v0, "second"

    .line 180
    .line 181
    invoke-virtual {p1, v0}, Lh/b;->i(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    const/16 v0, 0xd

    .line 185
    .line 186
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 187
    .line 188
    .line 189
    move-result p2

    .line 190
    int-to-long v0, p2

    .line 191
    invoke-virtual {p1, v0, v1}, Lh/b;->o(J)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1}, Lh/b;->h()V

    .line 195
    .line 196
    .line 197
    :goto_2
    return-void

    .line 198
    :pswitch_a
    check-cast p2, Ljava/util/Currency;

    .line 199
    .line 200
    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    invoke-virtual {p1, p2}, Lh/b;->r(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :pswitch_b
    check-cast p2, Ljava/util/UUID;

    .line 209
    .line 210
    if-nez p2, :cond_3

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_3
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    :goto_3
    invoke-virtual {p1, v2}, Lh/b;->r(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :pswitch_c
    check-cast p2, Ljava/net/InetAddress;

    .line 222
    .line 223
    if-nez p2, :cond_4

    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_4
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    :goto_4
    invoke-virtual {p1, v2}, Lh/b;->r(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    return-void

    .line 234
    :pswitch_d
    check-cast p2, Ljava/net/URI;

    .line 235
    .line 236
    if-nez p2, :cond_5

    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_5
    invoke-virtual {p2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    :goto_5
    invoke-virtual {p1, v2}, Lh/b;->r(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    return-void

    .line 247
    :pswitch_e
    check-cast p2, Ljava/net/URL;

    .line 248
    .line 249
    if-nez p2, :cond_6

    .line 250
    .line 251
    goto :goto_6

    .line 252
    :cond_6
    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    :goto_6
    invoke-virtual {p1, v2}, Lh/b;->r(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    return-void

    .line 260
    :pswitch_f
    check-cast p2, Ljava/lang/StringBuffer;

    .line 261
    .line 262
    if-nez p2, :cond_7

    .line 263
    .line 264
    goto :goto_7

    .line 265
    :cond_7
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    :goto_7
    invoke-virtual {p1, v2}, Lh/b;->r(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    return-void

    .line 273
    :pswitch_10
    check-cast p2, Ljava/lang/Class;

    .line 274
    .line 275
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 276
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    const-string v1, "Attempted to serialize java.lang.Class: "

    .line 280
    .line 281
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p2

    .line 288
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    const-string p2, ". Forgot to register a type adapter?"

    .line 292
    .line 293
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p2

    .line 300
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    throw p1

    .line 304
    :pswitch_11
    check-cast p2, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    if-nez p2, :cond_8

    .line 307
    .line 308
    goto :goto_8

    .line 309
    :cond_8
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    :goto_8
    invoke-virtual {p1, v2}, Lh/b;->r(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    return-void

    .line 317
    :pswitch_12
    check-cast p2, Lc/m;

    .line 318
    .line 319
    invoke-virtual {p1, p2}, Lh/b;->q(Ljava/lang/Number;)V

    .line 320
    .line 321
    .line 322
    return-void

    .line 323
    :pswitch_13
    check-cast p2, Ljava/math/BigInteger;

    .line 324
    .line 325
    invoke-virtual {p1, p2}, Lh/b;->q(Ljava/lang/Number;)V

    .line 326
    .line 327
    .line 328
    return-void

    .line 329
    :pswitch_14
    check-cast p2, Ljava/math/BigDecimal;

    .line 330
    .line 331
    invoke-virtual {p1, p2}, Lh/b;->q(Ljava/lang/Number;)V

    .line 332
    .line 333
    .line 334
    return-void

    .line 335
    :pswitch_15
    check-cast p2, Ljava/lang/String;

    .line 336
    .line 337
    invoke-virtual {p1, p2}, Lh/b;->r(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    return-void

    .line 341
    :pswitch_16
    check-cast p2, Ljava/lang/Character;

    .line 342
    .line 343
    if-nez p2, :cond_9

    .line 344
    .line 345
    goto :goto_9

    .line 346
    :cond_9
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    :goto_9
    invoke-virtual {p1, v2}, Lh/b;->r(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    return-void

    .line 354
    :pswitch_17
    check-cast p2, Ljava/lang/Number;

    .line 355
    .line 356
    invoke-virtual {p0, p1, p2}, La/l;->j(Lh/b;Ljava/lang/Number;)V

    .line 357
    .line 358
    .line 359
    return-void

    .line 360
    :pswitch_18
    check-cast p2, Ljava/lang/Number;

    .line 361
    .line 362
    invoke-virtual {p0, p1, p2}, La/l;->j(Lh/b;Ljava/lang/Number;)V

    .line 363
    .line 364
    .line 365
    return-void

    .line 366
    :pswitch_19
    check-cast p2, Ljava/lang/Number;

    .line 367
    .line 368
    invoke-virtual {p0, p1, p2}, La/l;->j(Lh/b;Ljava/lang/Number;)V

    .line 369
    .line 370
    .line 371
    return-void

    .line 372
    :pswitch_1a
    check-cast p2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 373
    .line 374
    invoke-virtual {p1}, Lh/b;->d()V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    :goto_a
    if-ge v1, v0, :cond_a

    .line 382
    .line 383
    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    .line 384
    .line 385
    .line 386
    move-result v2

    .line 387
    int-to-long v2, v2

    .line 388
    invoke-virtual {p1, v2, v3}, Lh/b;->o(J)V

    .line 389
    .line 390
    .line 391
    add-int/lit8 v1, v1, 0x1

    .line 392
    .line 393
    goto :goto_a

    .line 394
    :cond_a
    invoke-virtual {p1}, Lh/b;->g()V

    .line 395
    .line 396
    .line 397
    return-void

    .line 398
    :pswitch_1b
    check-cast p2, Ljava/lang/Number;

    .line 399
    .line 400
    invoke-virtual {p0, p1, p2}, La/l;->j(Lh/b;Ljava/lang/Number;)V

    .line 401
    .line 402
    .line 403
    return-void

    .line 404
    :goto_b
    check-cast p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 405
    .line 406
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 407
    .line 408
    .line 409
    move-result p2

    .line 410
    invoke-virtual {p1, p2}, Lh/b;->s(Z)V

    .line 411
    .line 412
    .line 413
    return-void

    .line 414
    nop

    .line 415
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lh/a;)Ljava/lang/Boolean;
    .locals 3

    .line 1
    iget v0, p0, La/l;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x9

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_2

    .line 10
    :pswitch_0
    invoke-virtual {p1}, Lh/a;->z()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ne v0, v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lh/a;->v()V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 v1, 0x6

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lh/a;->x()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p1}, Lh/a;->p()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :goto_1
    return-object v1

    .line 41
    :goto_2
    invoke-virtual {p1}, Lh/a;->z()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-ne v0, v2, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1}, Lh/a;->v()V

    .line 48
    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_2
    invoke-virtual {p1}, Lh/a;->x()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    :goto_3
    return-object v1

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Lh/a;)Ljava/lang/Number;
    .locals 4

    .line 1
    iget v0, p0, La/l;->a:I

    .line 2
    .line 3
    const-string v1, "Lossy conversion from "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x9

    .line 7
    .line 8
    sparse-switch v0, :sswitch_data_0

    .line 9
    .line 10
    .line 11
    goto/16 :goto_6

    .line 12
    .line 13
    :sswitch_0
    invoke-virtual {p1}, Lh/a;->z()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-ne v0, v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lh/a;->v()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lh/a;->r()I

    .line 24
    .line 25
    .line 26
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    const v2, 0xffff

    .line 28
    .line 29
    .line 30
    if-gt v0, v2, :cond_1

    .line 31
    .line 32
    const/16 v2, -0x8000

    .line 33
    .line 34
    if-lt v0, v2, :cond_1

    .line 35
    .line 36
    int-to-short p1, v0

    .line 37
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :goto_0
    return-object v2

    .line 42
    :cond_1
    new-instance v2, La/r;

    .line 43
    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, " to short; at path "

    .line 53
    .line 54
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lh/a;->l()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {v2, p1}, La/r;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v2

    .line 72
    :catch_0
    move-exception p1

    .line 73
    new-instance v0, La/r;

    .line 74
    .line 75
    invoke-direct {v0, p1}, La/r;-><init>(Ljava/lang/Exception;)V

    .line 76
    .line 77
    .line 78
    throw v0

    .line 79
    :sswitch_1
    invoke-virtual {p1}, Lh/a;->z()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-ne v0, v3, :cond_2

    .line 84
    .line 85
    invoke-virtual {p1}, Lh/a;->v()V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lh/a;->r()I

    .line 90
    .line 91
    .line 92
    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    const/16 v2, 0xff

    .line 94
    .line 95
    if-gt v0, v2, :cond_3

    .line 96
    .line 97
    const/16 v2, -0x80

    .line 98
    .line 99
    if-lt v0, v2, :cond_3

    .line 100
    .line 101
    int-to-byte p1, v0

    .line 102
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    :goto_1
    return-object v2

    .line 107
    :cond_3
    new-instance v2, La/r;

    .line 108
    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v0, " to byte; at path "

    .line 118
    .line 119
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Lh/a;->l()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-direct {v2, p1}, La/r;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v2

    .line 137
    :catch_1
    move-exception p1

    .line 138
    new-instance v0, La/r;

    .line 139
    .line 140
    invoke-direct {v0, p1}, La/r;-><init>(Ljava/lang/Exception;)V

    .line 141
    .line 142
    .line 143
    throw v0

    .line 144
    :sswitch_2
    invoke-virtual {p1}, Lh/a;->z()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-ne v0, v3, :cond_4

    .line 149
    .line 150
    invoke-virtual {p1}, Lh/a;->v()V

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_4
    invoke-virtual {p1}, Lh/a;->q()D

    .line 155
    .line 156
    .line 157
    move-result-wide v0

    .line 158
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    :goto_2
    return-object v2

    .line 163
    :sswitch_3
    invoke-virtual {p1}, Lh/a;->z()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-ne v0, v3, :cond_5

    .line 168
    .line 169
    invoke-virtual {p1}, Lh/a;->v()V

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_5
    invoke-virtual {p1}, Lh/a;->q()D

    .line 174
    .line 175
    .line 176
    move-result-wide v0

    .line 177
    double-to-float p1, v0

    .line 178
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    :goto_3
    return-object v2

    .line 183
    :sswitch_4
    invoke-virtual {p1}, Lh/a;->z()I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-ne v0, v3, :cond_6

    .line 188
    .line 189
    invoke-virtual {p1}, Lh/a;->v()V

    .line 190
    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_6
    :try_start_2
    invoke-virtual {p1}, Lh/a;->s()J

    .line 194
    .line 195
    .line 196
    move-result-wide v0

    .line 197
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 198
    .line 199
    .line 200
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 201
    :goto_4
    return-object v2

    .line 202
    :catch_2
    move-exception p1

    .line 203
    new-instance v0, La/r;

    .line 204
    .line 205
    invoke-direct {v0, p1}, La/r;-><init>(Ljava/lang/Exception;)V

    .line 206
    .line 207
    .line 208
    throw v0

    .line 209
    :sswitch_5
    invoke-virtual {p1}, Lh/a;->z()I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-ne v0, v3, :cond_7

    .line 214
    .line 215
    invoke-virtual {p1}, Lh/a;->v()V

    .line 216
    .line 217
    .line 218
    goto :goto_5

    .line 219
    :cond_7
    invoke-virtual {p1}, Lh/a;->s()J

    .line 220
    .line 221
    .line 222
    move-result-wide v0

    .line 223
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    :goto_5
    return-object v2

    .line 228
    :goto_6
    invoke-virtual {p1}, Lh/a;->z()I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-ne v0, v3, :cond_8

    .line 233
    .line 234
    invoke-virtual {p1}, Lh/a;->v()V

    .line 235
    .line 236
    .line 237
    goto :goto_7

    .line 238
    :cond_8
    :try_start_3
    invoke-virtual {p1}, Lh/a;->r()I

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object v2
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 246
    :goto_7
    return-object v2

    .line 247
    :catch_3
    move-exception p1

    .line 248
    new-instance v0, La/r;

    .line 249
    .line 250
    invoke-direct {v0, p1}, La/r;-><init>(Ljava/lang/Exception;)V

    .line 251
    .line 252
    .line 253
    throw v0

    .line 254
    nop

    .line 255
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
    .end sparse-switch
.end method

.method public final i(Lh/b;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget v0, p0, La/l;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    invoke-virtual {p1, p2}, Lh/b;->p(Ljava/lang/Boolean;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :goto_0
    if-nez p2, :cond_0

    .line 12
    .line 13
    const-string p2, "null"

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    :goto_1
    invoke-virtual {p1, p2}, Lh/b;->r(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Lh/b;Ljava/lang/Number;)V
    .locals 2

    .line 1
    iget v0, p0, La/l;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_7

    .line 7
    :sswitch_0
    if-nez p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lh/b;->k()Lh/b;

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->shortValue()S

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    int-to-long v0, p2

    .line 18
    invoke-virtual {p1, v0, v1}, Lh/b;->o(J)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :sswitch_1
    if-nez p2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Lh/b;->k()Lh/b;

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Number;->byteValue()B

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    int-to-long v0, p2

    .line 33
    invoke-virtual {p1, v0, v1}, Lh/b;->o(J)V

    .line 34
    .line 35
    .line 36
    :goto_1
    return-void

    .line 37
    :sswitch_2
    if-nez p2, :cond_2

    .line 38
    .line 39
    invoke-virtual {p1}, Lh/b;->k()Lh/b;

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    invoke-virtual {p1, v0, v1}, Lh/b;->n(D)V

    .line 48
    .line 49
    .line 50
    :goto_2
    return-void

    .line 51
    :sswitch_3
    if-nez p2, :cond_3

    .line 52
    .line 53
    invoke-virtual {p1}, Lh/b;->k()Lh/b;

    .line 54
    .line 55
    .line 56
    goto :goto_4

    .line 57
    :cond_3
    instance-of v0, p2, Ljava/lang/Float;

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    :goto_3
    invoke-virtual {p1, p2}, Lh/b;->q(Ljava/lang/Number;)V

    .line 71
    .line 72
    .line 73
    :goto_4
    return-void

    .line 74
    :sswitch_4
    if-nez p2, :cond_5

    .line 75
    .line 76
    invoke-virtual {p1}, Lh/b;->k()Lh/b;

    .line 77
    .line 78
    .line 79
    goto :goto_5

    .line 80
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 81
    .line 82
    .line 83
    move-result-wide v0

    .line 84
    invoke-virtual {p1, v0, v1}, Lh/b;->o(J)V

    .line 85
    .line 86
    .line 87
    :goto_5
    return-void

    .line 88
    :sswitch_5
    if-nez p2, :cond_6

    .line 89
    .line 90
    invoke-virtual {p1}, Lh/b;->k()Lh/b;

    .line 91
    .line 92
    .line 93
    goto :goto_6

    .line 94
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-virtual {p1, p2}, Lh/b;->r(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :goto_6
    return-void

    .line 102
    :goto_7
    if-nez p2, :cond_7

    .line 103
    .line 104
    invoke-virtual {p1}, Lh/b;->k()Lh/b;

    .line 105
    .line 106
    .line 107
    goto :goto_8

    .line 108
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    int-to-long v0, p2

    .line 113
    invoke-virtual {p1, v0, v1}, Lh/b;->o(J)V

    .line 114
    .line 115
    .line 116
    :goto_8
    return-void

    .line 117
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
    .end sparse-switch
.end method
