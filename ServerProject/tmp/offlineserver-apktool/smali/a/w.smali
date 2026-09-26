.class public final La/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/t;
.implements Lcom/sgscq/vpn/w4;
.implements Lcom/sgscq/vpn/s4;
.implements Lp/k;
.implements Lp/g;
.implements Lp/i;


# static fields
.field public static b:La/w;


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, La/w;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 2
    iput p1, p0, La/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p1, p0, La/w;->a:I

    const/16 p2, 0x14

    if-eq p1, p2, :cond_0

    const/16 p1, 0x13

    .line 3
    invoke-direct {p0, p1}, La/w;-><init>(I)V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p2}, La/w;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(La/b0;)V
    .locals 0

    const/16 p1, 0xd

    iput p1, p0, La/w;->a:I

    .line 6
    invoke-direct {p0, p1}, La/w;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(La/v;)V
    .locals 0

    const/16 p1, 0x15

    iput p1, p0, La/w;->a:I

    .line 5
    invoke-direct {p0, p1}, La/w;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    const/16 p1, 0xc

    iput p1, p0, La/w;->a:I

    .line 7
    invoke-direct {p0, p1}, La/w;-><init>(I)V

    return-void
.end method

.method public static l(La/w;Ljava/lang/String;I)[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/net/URL;

    .line 5
    .line 6
    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lcom/sgscq/vpn/r3;->f(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string p1, "GET"

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/16 p1, 0x2710

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 21
    .line 22
    .line 23
    const/16 p1, 0x3a98

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 26
    .line 27
    .line 28
    const-string p1, "Accept"

    .line 29
    .line 30
    const-string v0, "application/octet-stream"

    .line 31
    .line 32
    invoke-virtual {p0, p1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const/16 v0, 0xc8

    .line 40
    .line 41
    if-ne p1, v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentLength()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-gt p1, p2, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 50
    .line 51
    .line 52
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 53
    :try_start_1
    invoke-static {p1, p2}, Lcom/sgscq/vpn/g2;->a(Ljava/io/InputStream;I)[B

    .line 54
    .line 55
    .line 56
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 61
    .line 62
    .line 63
    return-object p2

    .line 64
    :catchall_0
    move-exception p2

    .line 65
    if-eqz p1, :cond_0

    .line 66
    .line 67
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_1
    move-exception p1

    .line 72
    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    :goto_0
    throw p2

    .line 76
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 77
    .line 78
    const-string p2, "remote config size exceeds limit"

    .line 79
    .line 80
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_2
    new-instance p2, Lq/j;

    .line 85
    .line 86
    invoke-direct {p2, p1}, Lq/j;-><init>(I)V

    .line 87
    .line 88
    .line 89
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 90
    :catchall_2
    move-exception p1

    .line 91
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 92
    .line 93
    .line 94
    throw p1
.end method

.method public static m(Lcom/sgscq/vpn/battle/b;Lcom/sgscq/vpn/battle/BattleUnit;Lcom/sgscq/vpn/battle/b;ILcom/sgscq/vpn/battle/a;Ljava/util/ArrayList;)V
    .locals 37

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    if-eqz p1, :cond_14

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/sgscq/vpn/battle/BattleUnit;->isAlive()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_14

    .line 14
    .line 15
    invoke-virtual/range {p2 .. p2}, Lcom/sgscq/vpn/battle/b;->a()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    goto/16 :goto_e

    .line 22
    .line 23
    :cond_0
    invoke-virtual/range {p2 .. p3}, Lcom/sgscq/vpn/battle/b;->b(I)Lcom/sgscq/vpn/battle/BattleUnit;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sgscq/vpn/battle/BattleUnit;->getAttack()D

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    invoke-virtual {v3}, Lcom/sgscq/vpn/battle/BattleUnit;->getDefense()D

    .line 35
    .line 36
    .line 37
    move-result-wide v6

    .line 38
    sub-double/2addr v4, v6

    .line 39
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 40
    .line 41
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    invoke-virtual {v3}, Lcom/sgscq/vpn/battle/BattleUnit;->getHpCur()D

    .line 46
    .line 47
    .line 48
    move-result-wide v6

    .line 49
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    .line 50
    .line 51
    .line 52
    move-result-wide v6

    .line 53
    invoke-virtual {v3, v4, v5}, Lcom/sgscq/vpn/battle/BattleUnit;->damage(D)V

    .line 54
    .line 55
    .line 56
    new-instance v15, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/sgscq/vpn/battle/BattleUnit;->isAlive()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-nez v4, :cond_2

    .line 66
    .line 67
    const-string v4, "death"

    .line 68
    .line 69
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    :cond_2
    invoke-virtual {v3}, Lcom/sgscq/vpn/battle/BattleUnit;->isAlive()Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    const/4 v5, 0x0

    .line 77
    const/16 v18, 0x1

    .line 78
    .line 79
    iget-object v14, v0, Lcom/sgscq/vpn/battle/b;->a:Ljava/util/List;

    .line 80
    .line 81
    if-nez v4, :cond_6

    .line 82
    .line 83
    invoke-virtual/range {p2 .. p2}, Lcom/sgscq/vpn/battle/b;->a()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_3

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    iget v4, v0, Lcom/sgscq/vpn/battle/b;->e:I

    .line 91
    .line 92
    :goto_0
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    if-ge v4, v8, :cond_5

    .line 97
    .line 98
    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    if-eqz v8, :cond_4

    .line 103
    .line 104
    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    check-cast v8, Lcom/sgscq/vpn/battle/BattleUnit;

    .line 109
    .line 110
    invoke-virtual {v8}, Lcom/sgscq/vpn/battle/BattleUnit;->isAlive()Z

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    if-eqz v8, :cond_4

    .line 115
    .line 116
    :goto_1
    move/from16 v4, v18

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_5
    move v4, v5

    .line 123
    :goto_2
    if-nez v4, :cond_6

    .line 124
    .line 125
    const-string v4, "finish"

    .line 126
    .line 127
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    :cond_6
    const/16 v4, 0xc

    .line 131
    .line 132
    new-array v13, v4, [Ljava/lang/Object;

    .line 133
    .line 134
    const-string v19, "from"

    .line 135
    .line 136
    aput-object v19, v13, v5

    .line 137
    .line 138
    move-object/from16 v8, p0

    .line 139
    .line 140
    iget v8, v8, Lcom/sgscq/vpn/battle/b;->c:I

    .line 141
    .line 142
    iget v12, v1, Lcom/sgscq/vpn/battle/a;->a:I

    .line 143
    .line 144
    if-nez v8, :cond_7

    .line 145
    .line 146
    move/from16 v8, p3

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_7
    add-int v8, p3, v12

    .line 150
    .line 151
    :goto_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    aput-object v8, v13, v18

    .line 160
    .line 161
    const/4 v11, 0x2

    .line 162
    const-string v10, "to"

    .line 163
    .line 164
    aput-object v10, v13, v11

    .line 165
    .line 166
    move v8, v5

    .line 167
    :goto_4
    iget-object v9, v0, Lcom/sgscq/vpn/battle/b;->b:[Lcom/sgscq/vpn/battle/BattleUnit;

    .line 168
    .line 169
    array-length v11, v9

    .line 170
    if-ge v8, v11, :cond_9

    .line 171
    .line 172
    aget-object v11, v9, v8

    .line 173
    .line 174
    if-ne v11, v3, :cond_8

    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_8
    add-int/lit8 v8, v8, 0x1

    .line 178
    .line 179
    const/4 v11, 0x2

    .line 180
    goto :goto_4

    .line 181
    :cond_9
    move v8, v5

    .line 182
    :goto_5
    iget v11, v0, Lcom/sgscq/vpn/battle/b;->c:I

    .line 183
    .line 184
    if-nez v11, :cond_a

    .line 185
    .line 186
    goto :goto_6

    .line 187
    :cond_a
    add-int/2addr v8, v12

    .line 188
    :goto_6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    const/16 v20, 0x3

    .line 197
    .line 198
    aput-object v8, v13, v20

    .line 199
    .line 200
    const/4 v8, 0x4

    .line 201
    const-string v21, "skill"

    .line 202
    .line 203
    aput-object v21, v13, v8

    .line 204
    .line 205
    const/16 v22, 0x5

    .line 206
    .line 207
    const-string v16, "Attack_Knife"

    .line 208
    .line 209
    aput-object v16, v13, v22

    .line 210
    .line 211
    const/16 v23, 0x6

    .line 212
    .line 213
    const-string v24, "skillId"

    .line 214
    .line 215
    aput-object v24, v13, v23

    .line 216
    .line 217
    const/16 v25, 0x7

    .line 218
    .line 219
    const-string v26, "0"

    .line 220
    .line 221
    aput-object v26, v13, v25

    .line 222
    .line 223
    const/16 v27, 0x8

    .line 224
    .line 225
    const-string v28, "type"

    .line 226
    .line 227
    aput-object v28, v13, v27

    .line 228
    .line 229
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 230
    .line 231
    .line 232
    move-result-object v16

    .line 233
    const/16 v29, 0x9

    .line 234
    .line 235
    aput-object v16, v13, v29

    .line 236
    .line 237
    const/16 v30, 0xa

    .line 238
    .line 239
    const-string v31, "params"

    .line 240
    .line 241
    aput-object v31, v13, v30

    .line 242
    .line 243
    const-string v16, "hpCur"

    .line 244
    .line 245
    invoke-virtual {v3}, Lcom/sgscq/vpn/battle/BattleUnit;->getHpCur()D

    .line 246
    .line 247
    .line 248
    move-result-wide v32

    .line 249
    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 250
    .line 251
    .line 252
    move-result-object v17

    .line 253
    const-string v32, "hpMax"

    .line 254
    .line 255
    invoke-virtual {v3}, Lcom/sgscq/vpn/battle/BattleUnit;->getHpMax()D

    .line 256
    .line 257
    .line 258
    move-result-wide v33

    .line 259
    invoke-static/range {v33 .. v34}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 260
    .line 261
    .line 262
    move-result-object v33

    .line 263
    const-string v34, "hp"

    .line 264
    .line 265
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 266
    .line 267
    .line 268
    move-result-object v6

    .line 269
    const-string v7, "event"

    .line 270
    .line 271
    const-string v35, "cure"

    .line 272
    .line 273
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 274
    .line 275
    .line 276
    move-result-object v36

    .line 277
    move-object/from16 v8, v16

    .line 278
    .line 279
    move-object v5, v9

    .line 280
    move-object/from16 v9, v17

    .line 281
    .line 282
    move-object v4, v10

    .line 283
    move-object/from16 v10, v32

    .line 284
    .line 285
    move/from16 v32, v11

    .line 286
    .line 287
    move-object/from16 v11, v33

    .line 288
    .line 289
    move/from16 v33, v12

    .line 290
    .line 291
    move-object/from16 v12, v34

    .line 292
    .line 293
    move-object/from16 v34, v13

    .line 294
    .line 295
    move-object v13, v6

    .line 296
    move-object v6, v14

    .line 297
    move-object v14, v7

    .line 298
    move-object/from16 v16, v35

    .line 299
    .line 300
    move-object/from16 v17, v36

    .line 301
    .line 302
    filled-new-array/range {v8 .. v17}, [Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v7

    .line 306
    invoke-static {v7}, La/w;->p([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 307
    .line 308
    .line 309
    move-result-object v7

    .line 310
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 311
    .line 312
    .line 313
    move-result-object v7

    .line 314
    filled-new-array {v4, v7}, [Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v7

    .line 318
    invoke-static {v7}, La/w;->p([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 319
    .line 320
    .line 321
    move-result-object v7

    .line 322
    const/16 v8, 0xb

    .line 323
    .line 324
    aput-object v7, v34, v8

    .line 325
    .line 326
    invoke-static/range {v34 .. v34}, La/w;->p([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 327
    .line 328
    .line 329
    move-result-object v7

    .line 330
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    invoke-virtual {v3}, Lcom/sgscq/vpn/battle/BattleUnit;->isAlive()Z

    .line 334
    .line 335
    .line 336
    move-result v7

    .line 337
    if-nez v7, :cond_14

    .line 338
    .line 339
    const/4 v7, 0x0

    .line 340
    :goto_7
    array-length v9, v5

    .line 341
    if-ge v7, v9, :cond_c

    .line 342
    .line 343
    aget-object v9, v5, v7

    .line 344
    .line 345
    if-ne v9, v3, :cond_b

    .line 346
    .line 347
    goto :goto_8

    .line 348
    :cond_b
    add-int/lit8 v7, v7, 0x1

    .line 349
    .line 350
    goto :goto_7

    .line 351
    :cond_c
    const/4 v7, 0x0

    .line 352
    :goto_8
    const/4 v3, 0x0

    .line 353
    aput-object v3, v5, v7

    .line 354
    .line 355
    :cond_d
    :goto_9
    iget v9, v0, Lcom/sgscq/vpn/battle/b;->e:I

    .line 356
    .line 357
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 358
    .line 359
    .line 360
    move-result v10

    .line 361
    if-ge v9, v10, :cond_f

    .line 362
    .line 363
    iget v9, v0, Lcom/sgscq/vpn/battle/b;->e:I

    .line 364
    .line 365
    add-int/lit8 v10, v9, 0x1

    .line 366
    .line 367
    iput v10, v0, Lcom/sgscq/vpn/battle/b;->e:I

    .line 368
    .line 369
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v9

    .line 373
    check-cast v9, Lcom/sgscq/vpn/battle/BattleUnit;

    .line 374
    .line 375
    if-eqz v9, :cond_d

    .line 376
    .line 377
    invoke-virtual {v9}, Lcom/sgscq/vpn/battle/BattleUnit;->isAlive()Z

    .line 378
    .line 379
    .line 380
    move-result v10

    .line 381
    if-nez v10, :cond_e

    .line 382
    .line 383
    goto :goto_9

    .line 384
    :cond_e
    aput-object v9, v5, v7

    .line 385
    .line 386
    new-instance v3, Lcom/sgscq/vpn/handler/d1;

    .line 387
    .line 388
    invoke-direct {v3, v9, v7}, Lcom/sgscq/vpn/handler/d1;-><init>(Ljava/lang/Object;I)V

    .line 389
    .line 390
    .line 391
    :cond_f
    if-eqz v3, :cond_14

    .line 392
    .line 393
    const/16 v0, 0xc

    .line 394
    .line 395
    new-array v0, v0, [Ljava/lang/Object;

    .line 396
    .line 397
    const/4 v5, 0x0

    .line 398
    aput-object v19, v0, v5

    .line 399
    .line 400
    iget-object v5, v3, Lcom/sgscq/vpn/handler/d1;->b:Ljava/lang/Object;

    .line 401
    .line 402
    move-object v6, v5

    .line 403
    check-cast v6, Lcom/sgscq/vpn/battle/BattleUnit;

    .line 404
    .line 405
    iget-object v1, v1, Lcom/sgscq/vpn/battle/a;->c:Ljava/lang/Object;

    .line 406
    .line 407
    move-object v7, v1

    .line 408
    check-cast v7, Ljava/util/Map;

    .line 409
    .line 410
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v6

    .line 414
    check-cast v6, Ljava/lang/Integer;

    .line 415
    .line 416
    if-nez v6, :cond_10

    .line 417
    .line 418
    const/4 v6, 0x0

    .line 419
    goto :goto_a

    .line 420
    :cond_10
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 421
    .line 422
    .line 423
    move-result v6

    .line 424
    :goto_a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 425
    .line 426
    .line 427
    move-result-object v6

    .line 428
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 429
    .line 430
    .line 431
    move-result-object v6

    .line 432
    aput-object v6, v0, v18

    .line 433
    .line 434
    const/4 v6, 0x2

    .line 435
    aput-object v4, v0, v6

    .line 436
    .line 437
    iget v3, v3, Lcom/sgscq/vpn/handler/d1;->a:I

    .line 438
    .line 439
    if-nez v32, :cond_11

    .line 440
    .line 441
    move v12, v3

    .line 442
    goto :goto_b

    .line 443
    :cond_11
    add-int v12, v3, v33

    .line 444
    .line 445
    :goto_b
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 446
    .line 447
    .line 448
    move-result-object v4

    .line 449
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 450
    .line 451
    .line 452
    move-result-object v4

    .line 453
    aput-object v4, v0, v20

    .line 454
    .line 455
    const/4 v4, 0x4

    .line 456
    aput-object v21, v0, v4

    .line 457
    .line 458
    const-string v7, "enter"

    .line 459
    .line 460
    aput-object v7, v0, v22

    .line 461
    .line 462
    aput-object v24, v0, v23

    .line 463
    .line 464
    aput-object v26, v0, v25

    .line 465
    .line 466
    aput-object v28, v0, v27

    .line 467
    .line 468
    const/4 v7, 0x0

    .line 469
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 470
    .line 471
    .line 472
    move-result-object v9

    .line 473
    aput-object v9, v0, v29

    .line 474
    .line 475
    aput-object v31, v0, v30

    .line 476
    .line 477
    new-array v9, v6, [Ljava/lang/Object;

    .line 478
    .line 479
    const-string v10, "pre"

    .line 480
    .line 481
    aput-object v10, v9, v7

    .line 482
    .line 483
    new-array v4, v4, [Ljava/lang/Object;

    .line 484
    .line 485
    const-string v10, "leaveIdx"

    .line 486
    .line 487
    aput-object v10, v4, v7

    .line 488
    .line 489
    if-nez v32, :cond_12

    .line 490
    .line 491
    goto :goto_c

    .line 492
    :cond_12
    add-int v3, v3, v33

    .line 493
    .line 494
    :goto_c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 495
    .line 496
    .line 497
    move-result-object v3

    .line 498
    aput-object v3, v4, v18

    .line 499
    .line 500
    const-string v3, "backupIdx"

    .line 501
    .line 502
    aput-object v3, v4, v6

    .line 503
    .line 504
    check-cast v5, Lcom/sgscq/vpn/battle/BattleUnit;

    .line 505
    .line 506
    check-cast v1, Ljava/util/Map;

    .line 507
    .line 508
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    check-cast v1, Ljava/lang/Integer;

    .line 513
    .line 514
    if-nez v1, :cond_13

    .line 515
    .line 516
    move v5, v7

    .line 517
    goto :goto_d

    .line 518
    :cond_13
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 519
    .line 520
    .line 521
    move-result v5

    .line 522
    :goto_d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    aput-object v1, v4, v20

    .line 527
    .line 528
    invoke-static {v4}, La/w;->p([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 529
    .line 530
    .line 531
    move-result-object v1

    .line 532
    aput-object v1, v9, v18

    .line 533
    .line 534
    invoke-static {v9}, La/w;->p([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    aput-object v1, v0, v8

    .line 539
    .line 540
    invoke-static {v0}, La/w;->p([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    :cond_14
    :goto_e
    return-void
.end method

.method public static o([BLjava/net/InetAddress;)[B
    .locals 2

    .line 1
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    const/16 v1, 0x5dc

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    const/16 v1, 0x35

    invoke-virtual {v0, p1, v1}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    new-instance p1, Ljava/net/DatagramPacket;

    array-length v1, p0

    invoke-direct {p1, p0, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    const/16 p0, 0x1000

    new-array p1, p0, [B

    new-instance v1, Ljava/net/DatagramPacket;

    invoke-direct {v1, p1, p0}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object p0

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static varargs p([Ljava/lang/Object;)Ljava/util/LinkedHashMap;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-object v3, p0, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aget-object v2, p0, v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static q(Lh/a;)La/q;
    .locals 7

    .line 1
    const-string v0, " to Json"

    .line 2
    .line 3
    const-string v1, "Failed parsing JSON source: "

    .line 4
    .line 5
    iget-boolean v2, p0, Lh/a;->b:Z

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iput-boolean v3, p0, Lh/a;->b:Z

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p0}, Lh/a;->z()I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lh/c; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    :try_start_1
    sget-object v3, Ld/a0;->z:La/l;

    .line 14
    .line 15
    invoke-virtual {v3, p0}, La/l;->b(Lh/a;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, La/q;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lh/c; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :catch_0
    move-exception v3

    .line 23
    const/4 v4, 0x0

    .line 24
    move v6, v4

    .line 25
    move-object v4, v3

    .line 26
    move v3, v6

    .line 27
    goto :goto_0

    .line 28
    :catch_1
    move-exception v3

    .line 29
    :try_start_2
    new-instance v4, La/r;

    .line 30
    .line 31
    invoke-direct {v4, v3}, La/r;-><init>(Ljava/lang/Exception;)V

    .line 32
    .line 33
    .line 34
    throw v4

    .line 35
    :catch_2
    move-exception v3

    .line 36
    new-instance v4, La/r;

    .line 37
    .line 38
    invoke-direct {v4, v3}, La/r;-><init>(Ljava/lang/Exception;)V

    .line 39
    .line 40
    .line 41
    throw v4

    .line 42
    :catch_3
    move-exception v3

    .line 43
    new-instance v4, La/r;

    .line 44
    .line 45
    invoke-direct {v4, v3}, La/r;-><init>(Ljava/lang/Exception;)V

    .line 46
    .line 47
    .line 48
    throw v4

    .line 49
    :catch_4
    move-exception v4

    .line 50
    :goto_0
    if-eqz v3, :cond_0

    .line 51
    .line 52
    sget-object v3, La/s;->a:La/s;
    :try_end_2
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    .line 54
    :goto_1
    iput-boolean v2, p0, Lh/a;->b:Z

    .line 55
    .line 56
    return-object v3

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    goto :goto_4

    .line 59
    :catch_5
    move-exception v3

    .line 60
    goto :goto_2

    .line 61
    :catch_6
    move-exception v3

    .line 62
    goto :goto_3

    .line 63
    :cond_0
    :try_start_3
    new-instance v3, La/r;

    .line 64
    .line 65
    invoke-direct {v3, v4}, La/r;-><init>(Ljava/lang/Exception;)V

    .line 66
    .line 67
    .line 68
    throw v3
    :try_end_3
    .catch Ljava/lang/StackOverflowError; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    :goto_2
    :try_start_4
    new-instance v4, La/u;

    .line 70
    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-direct {v4, v0, v3}, La/u;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    throw v4

    .line 90
    :goto_3
    new-instance v4, La/u;

    .line 91
    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-direct {v4, v0, v3}, La/u;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 111
    :goto_4
    iput-boolean v2, p0, Lh/a;->b:Z

    .line 112
    .line 113
    throw v0
.end method

.method public static r(Ljava/lang/String;)La/q;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/StringReader;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance p0, Lh/a;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lh/a;-><init>(Ljava/io/Reader;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, La/w;->q(Lh/a;)La/q;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    instance-of v1, v0, La/s;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lh/a;->z()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    const/16 v1, 0xa

    .line 27
    .line 28
    if-ne p0, v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance p0, La/r;

    .line 32
    .line 33
    const-string v0, "Did not consume the entire document."

    .line 34
    .line 35
    invoke-direct {p0, v0}, La/r;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0
    :try_end_0
    .catch Lh/c; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :cond_1
    :goto_0
    return-object v0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    new-instance v0, La/r;

    .line 42
    .line 43
    invoke-direct {v0, p0}, La/r;-><init>(Ljava/lang/Exception;)V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :catch_1
    move-exception p0

    .line 48
    new-instance v0, La/r;

    .line 49
    .line 50
    invoke-direct {v0, p0}, La/r;-><init>(Ljava/lang/Exception;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :catch_2
    move-exception p0

    .line 55
    new-instance v0, La/r;

    .line 56
    .line 57
    invoke-direct {v0, p0}, La/r;-><init>(Ljava/lang/Exception;)V

    .line 58
    .line 59
    .line 60
    throw v0
.end method

.method public static s(DLjava/util/List;)Ljava/util/LinkedHashMap;
    .locals 3

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sgscq/vpn/battle/BattleUnit;

    :goto_0
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "teamPoint"

    aput-object v2, v0, v1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const/4 p0, 0x2

    const-string v2, "teamLeader"

    aput-object v2, v0, p0

    if-nez p2, :cond_1

    const-string p0, "teamLeader_null"

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/sgscq/vpn/battle/BattleUnit;->getId()Ljava/lang/String;

    move-result-object p0

    :goto_1
    const/4 v2, 0x3

    aput-object p0, v0, v2

    const/4 p0, 0x4

    const-string v2, "evolution_image_status"

    aput-object v2, v0, p0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/sgscq/vpn/battle/BattleUnit;->hasEvolutionImage()Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, p1

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 p1, 0x5

    aput-object p0, v0, p1

    invoke-static {v0}, La/w;->p([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, La/w;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :pswitch_1
    new-instance v0, Ljava/util/TreeMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :pswitch_2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :pswitch_3
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :pswitch_4
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    return-object v0

    .line 37
    :pswitch_5
    new-instance v0, Ljava/util/ArrayDeque;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :pswitch_6
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 46
    .line 47
    .line 48
    return-object v0

    .line 49
    :pswitch_7
    new-instance v0, Ljava/util/TreeSet;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 52
    .line 53
    .line 54
    return-object v0

    .line 55
    :goto_0
    new-instance v0, Lc/s;

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    invoke-direct {v0, v1}, Lc/s;-><init>(Z)V

    .line 59
    .line 60
    .line 61
    return-object v0

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
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

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c()[B
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final f(Ljava/lang/String;I)[B
    .locals 1

    .line 1
    iget v0, p0, La/w;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    new-instance v0, Lcom/sgscq/vpn/t0;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1, p2}, Lcom/sgscq/vpn/t0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->O(Lq/l;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, [B

    .line 17
    .line 18
    return-object p1

    .line 19
    :goto_0
    new-instance v0, Ljava/net/URL;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Lcom/sgscq/vpn/t0;

    .line 25
    .line 26
    invoke-direct {p1, p0, v0, p2}, Lcom/sgscq/vpn/t0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lq/o;->c(Ljava/net/URL;)Ljava/net/Proxy;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    sget-object p2, Lq/e;->b:Lc/i;

    .line 37
    .line 38
    invoke-static {v0, p2}, Lq/d;->c(Ljava/net/URL;Lc/i;)Ljava/net/Proxy;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    :goto_1
    invoke-virtual {p1, p2}, Lcom/sgscq/vpn/t0;->b(Ljava/net/Proxy;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, [B

    .line 47
    .line 48
    return-object p1

    .line 49
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public final g([B)V
    .locals 0

    .line 1
    return-void
.end method

.method public final h(Ljava/lang/String;)Ljava/util/Map;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "player persistence unavailable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final j(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "player persistence unavailable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final n(Ljava/net/Proxy;)Z
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/sgscq/vpn/a;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/sgscq/vpn/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->O(Lq/l;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return p1

    .line 18
    :catch_0
    move-exception v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "\u63a2\u6d4b\u5f02\u5e38 "

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/sgscq/vpn/r3;->h(Ljava/net/Proxy;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, ": "

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p1, " "

    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1}, Lcom/sgscq/vpn/r3;->d(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    return p1
.end method
