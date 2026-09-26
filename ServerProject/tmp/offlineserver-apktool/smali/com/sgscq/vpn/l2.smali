.class public abstract Lcom/sgscq/vpn/l2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static volatile b:Lcom/sgscq/vpn/a7;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sgscq/vpn/l2;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;J)Lcom/sgscq/vpn/j2;
    .locals 17

    .line 1
    move-wide/from16 v7, p1

    .line 2
    .line 3
    invoke-static {}, Lcom/sgscq/vpn/g2;->b()Lcom/sgscq/vpn/config/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    sget-object v1, Lp/d;->c:Lp/d;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static/range {p0 .. p0}, Lp/d;->b(Landroid/content/Context;)Lp/d;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    const/4 v2, 0x0

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    move-object v9, v2

    .line 20
    goto :goto_2

    .line 21
    :cond_1
    invoke-virtual {v1}, Lp/d;->a()Lp/b;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-nez v3, :cond_2

    .line 26
    .line 27
    move-object v3, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    iget-object v3, v3, Lp/b;->e:Lm/e;

    .line 30
    .line 31
    invoke-static {v3, v7, v8}, Lp/d;->c(Lm/e;J)Lp/a;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    :goto_1
    move-object v9, v3

    .line 36
    :goto_2
    if-nez v1, :cond_3

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_3
    invoke-virtual {v1}, Lp/d;->a()Lp/b;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    :goto_3
    move-object v1, v2

    .line 46
    goto :goto_4

    .line 47
    :cond_4
    iget-object v1, v1, Lp/b;->f:Lm/e;

    .line 48
    .line 49
    invoke-static {v1, v7, v8}, Lp/d;->c(Lm/e;J)Lp/a;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    :goto_4
    if-eqz v0, :cond_7

    .line 54
    .line 55
    if-eqz v1, :cond_7

    .line 56
    .line 57
    const-string v3, "special"

    .line 58
    .line 59
    iget-object v4, v1, Lp/a;->b:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-nez v4, :cond_5

    .line 66
    .line 67
    goto :goto_5

    .line 68
    :cond_5
    iget-object v4, v0, Lcom/sgscq/vpn/config/i;->c:Lm/e;

    .line 69
    .line 70
    iget-object v5, v1, Lp/a;->c:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v4, v4, Lm/e;->d:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v4, Ljava/util/Map;

    .line 75
    .line 76
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    move-object v11, v4

    .line 81
    check-cast v11, Lcom/sgscq/vpn/config/c;

    .line 82
    .line 83
    if-eqz v11, :cond_7

    .line 84
    .line 85
    iget-object v4, v11, Lcom/sgscq/vpn/config/c;->c:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-nez v3, :cond_6

    .line 92
    .line 93
    goto :goto_5

    .line 94
    :cond_6
    new-instance v3, Lcom/sgscq/vpn/config/m;

    .line 95
    .line 96
    iget-wide v12, v1, Lp/a;->e:J

    .line 97
    .line 98
    iget-wide v14, v1, Lp/a;->f:J

    .line 99
    .line 100
    iget-object v1, v1, Lp/a;->a:Ljava/lang/String;

    .line 101
    .line 102
    move-object v10, v3

    .line 103
    move-object/from16 v16, v1

    .line 104
    .line 105
    invoke-direct/range {v10 .. v16}, Lcom/sgscq/vpn/config/m;-><init>(Lcom/sgscq/vpn/config/c;JJLjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_7
    :goto_5
    move-object v10, v2

    .line 110
    :goto_6
    if-eqz v10, :cond_9

    .line 111
    .line 112
    iget-object v1, v10, Lcom/sgscq/vpn/config/m;->a:Lcom/sgscq/vpn/config/c;

    .line 113
    .line 114
    if-nez v1, :cond_8

    .line 115
    .line 116
    goto :goto_7

    .line 117
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    iget-object v4, v10, Lcom/sgscq/vpn/config/m;->d:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v4, ":"

    .line 128
    .line 129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-object v1, v1, Lcom/sgscq/vpn/config/c;->a:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    goto :goto_8

    .line 142
    :cond_9
    :goto_7
    const-string v1, ""

    .line 143
    .line 144
    :goto_8
    move-object v6, v1

    .line 145
    if-nez v9, :cond_a

    .line 146
    .line 147
    const-wide/16 v3, 0x0

    .line 148
    .line 149
    goto :goto_9

    .line 150
    :cond_a
    iget-wide v3, v9, Lp/a;->e:J

    .line 151
    .line 152
    :goto_9
    sget-object v1, Lcom/sgscq/vpn/l2;->b:Lcom/sgscq/vpn/a7;

    .line 153
    .line 154
    if-eqz v1, :cond_c

    .line 155
    .line 156
    iget-object v5, v1, Lcom/sgscq/vpn/a7;->a:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v5, Lcom/sgscq/vpn/i2;

    .line 159
    .line 160
    iget-wide v11, v5, Lcom/sgscq/vpn/i2;->a:J

    .line 161
    .line 162
    cmp-long v11, v11, v3

    .line 163
    .line 164
    if-nez v11, :cond_b

    .line 165
    .line 166
    iget-object v11, v5, Lcom/sgscq/vpn/i2;->c:Ljava/lang/Object;

    .line 167
    .line 168
    if-ne v11, v0, :cond_b

    .line 169
    .line 170
    iget-object v5, v5, Lcom/sgscq/vpn/i2;->d:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    if-eqz v5, :cond_b

    .line 177
    .line 178
    const/4 v5, 0x1

    .line 179
    goto :goto_a

    .line 180
    :cond_b
    const/4 v5, 0x0

    .line 181
    :goto_a
    if-eqz v5, :cond_c

    .line 182
    .line 183
    iget-object v0, v1, Lcom/sgscq/vpn/a7;->b:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast v0, Lcom/sgscq/vpn/j2;

    .line 186
    .line 187
    return-object v0

    .line 188
    :cond_c
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 189
    .line 190
    .line 191
    move-result-object v11

    .line 192
    const-wide/16 v12, 0x3e8

    .line 193
    .line 194
    div-long v12, v7, v12

    .line 195
    .line 196
    invoke-virtual {v11, v12, v13, v2}, Lcom/sgscq/vpn/w1;->f1(JLjava/util/Set;)Ljava/util/Map;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    if-nez v1, :cond_d

    .line 201
    .line 202
    const-string v1, ""

    .line 203
    .line 204
    goto :goto_b

    .line 205
    :cond_d
    const-string v2, "general_id"

    .line 206
    .line 207
    const-string v5, "id"

    .line 208
    .line 209
    const-string v12, ""

    .line 210
    .line 211
    invoke-static {v1, v5, v12, v2}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    :goto_b
    move-object v12, v1

    .line 216
    new-instance v13, Lcom/sgscq/vpn/i2;

    .line 217
    .line 218
    move-object v1, v13

    .line 219
    move-wide v2, v3

    .line 220
    move-object v4, v12

    .line 221
    move-object v5, v0

    .line 222
    invoke-direct/range {v1 .. v6}, Lcom/sgscq/vpn/i2;-><init>(JLjava/lang/String;Lcom/sgscq/vpn/config/i;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    new-instance v14, Lcom/sgscq/vpn/h2;

    .line 226
    .line 227
    move-object v1, v14

    .line 228
    move-object v2, v11

    .line 229
    move-object v3, v12

    .line 230
    move-object v4, v0

    .line 231
    move-object v5, v9

    .line 232
    move-object v6, v10

    .line 233
    move-wide/from16 v7, p1

    .line 234
    .line 235
    invoke-direct/range {v1 .. v8}, Lcom/sgscq/vpn/h2;-><init>(Lcom/sgscq/vpn/w1;Ljava/lang/String;Lcom/sgscq/vpn/config/i;Lp/a;Lcom/sgscq/vpn/config/m;J)V

    .line 236
    .line 237
    .line 238
    sget-object v0, Lcom/sgscq/vpn/l2;->b:Lcom/sgscq/vpn/a7;

    .line 239
    .line 240
    if-eqz v0, :cond_e

    .line 241
    .line 242
    iget-object v1, v0, Lcom/sgscq/vpn/a7;->a:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v1, Lcom/sgscq/vpn/i2;

    .line 245
    .line 246
    invoke-virtual {v1, v13}, Lcom/sgscq/vpn/i2;->equals(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    if-eqz v1, :cond_e

    .line 251
    .line 252
    iget-object v0, v0, Lcom/sgscq/vpn/a7;->b:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v0, Lcom/sgscq/vpn/j2;

    .line 255
    .line 256
    goto :goto_d

    .line 257
    :cond_e
    sget-object v1, Lcom/sgscq/vpn/l2;->a:Ljava/lang/Object;

    .line 258
    .line 259
    monitor-enter v1

    .line 260
    :try_start_0
    sget-object v0, Lcom/sgscq/vpn/l2;->b:Lcom/sgscq/vpn/a7;

    .line 261
    .line 262
    if-eqz v0, :cond_f

    .line 263
    .line 264
    iget-object v2, v0, Lcom/sgscq/vpn/a7;->a:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast v2, Lcom/sgscq/vpn/i2;

    .line 267
    .line 268
    invoke-virtual {v2, v13}, Lcom/sgscq/vpn/i2;->equals(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    if-eqz v2, :cond_f

    .line 273
    .line 274
    iget-object v0, v0, Lcom/sgscq/vpn/a7;->b:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast v0, Lcom/sgscq/vpn/j2;

    .line 277
    .line 278
    goto :goto_c

    .line 279
    :cond_f
    invoke-virtual {v14}, Lcom/sgscq/vpn/h2;->get()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    check-cast v0, Lcom/sgscq/vpn/j2;

    .line 284
    .line 285
    new-instance v2, Lcom/sgscq/vpn/a7;

    .line 286
    .line 287
    invoke-direct {v2, v13, v0}, Lcom/sgscq/vpn/a7;-><init>(Lcom/sgscq/vpn/i2;Lcom/sgscq/vpn/j2;)V

    .line 288
    .line 289
    .line 290
    sput-object v2, Lcom/sgscq/vpn/l2;->b:Lcom/sgscq/vpn/a7;

    .line 291
    .line 292
    :goto_c
    monitor-exit v1

    .line 293
    :goto_d
    return-object v0

    .line 294
    :catchall_0
    move-exception v0

    .line 295
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    throw v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 1

    .line 1
    const-string v0, "item_title"

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "item_name"

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "name"

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "title"

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "item_desc"

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "desc"

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
