.class public final Lcom/sgscq/vpn/t5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:[Ljava/lang/String;

.field public static final l:Ljava/util/Map;

.field public static final m:Ljava/util/List;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/sgscq/vpn/n5;

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/List;

.field public final g:I

.field public final h:Ljava/util/List;

.field public final i:Lcom/sgscq/vpn/s5;

.field public final j:Lcom/sgscq/vpn/y0;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const-string v0, "141002"

    const-string v1, "111012"

    const-string v2, "111005"

    const-string v3, "131009"

    const-string v4, "131010"

    const-string v5, "134001"

    const-string v6, "111006"

    const-string v7, "121006"

    const-string v8, "114001"

    const-string v9, "111003"

    const-string v10, "141012"

    const-string v11, "121011"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/t5;->k:[Ljava/lang/String;

    new-instance v0, Lcom/sgscq/vpn/r5;

    invoke-direct {v0}, Lcom/sgscq/vpn/r5;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/t5;->l:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "\u8001\u8c0b\u6df1\u7b97\u7684\u5f20\u5408"

    const-string v2, "\u56fa\u82e5\u91d1\u6c64\u7684\u989c\u9753"

    const-string v3, "\u535a\u89c8\u7fa4\u4e66\u7684\u9b4f\u70df"

    const-string v4, "\u5fc3\u60ca\u8089\u8df3\u7684\u5ed6\u534e"

    const-string v5, "\u4e58\u865a\u800c\u5165\u7684\u8340\u4e8e"

    const-string v6, "\u8001\u5978\u5de8\u733e\u7684\u5178\u4e3a"

    const-string v7, "\u4f3a\u673a\u5f85\u53d1\u7684\u4e8e\u8fd1"

    const-string v8, "\u4e58\u865a\u800c\u5165\u7684\u5415\u840c"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/t5;->m:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "i18n.json"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "robot_\\d+"

    .line 12
    .line 13
    sget-object v4, Lcom/sgscq/vpn/t5;->m:Ljava/util/List;

    .line 14
    .line 15
    if-eqz v2, :cond_3

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :try_start_0
    new-instance v5, Lcom/sgscq/vpn/RobotOpponentGenerator$3;

    .line 25
    .line 26
    invoke-direct {v5}, Lcom/sgscq/vpn/RobotOpponentGenerator$3;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    new-instance v6, La/o;

    .line 34
    .line 35
    invoke-direct {v6}, La/o;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6, v2, v5}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/util/Map;

    .line 43
    .line 44
    new-instance v5, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_2

    .line 64
    .line 65
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    check-cast v6, Ljava/util/Map$Entry;

    .line 70
    .line 71
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    check-cast v7, Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v7, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    if-eqz v7, :cond_1

    .line 82
    .line 83
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    if-eqz v7, :cond_1

    .line 88
    .line 89
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    check-cast v7, Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    if-nez v7, :cond_1

    .line 104
    .line 105
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    check-cast v6, Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    if-eqz v2, :cond_4

    .line 124
    .line 125
    :catch_0
    :cond_3
    :goto_1
    move-object v5, v4

    .line 126
    :cond_4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 127
    .line 128
    .line 129
    new-instance v2, Lcom/sgscq/vpn/s5;

    .line 130
    .line 131
    const/16 v6, 0x8

    .line 132
    .line 133
    const/4 v7, 0x0

    .line 134
    invoke-direct {v2, v0, v6, v7}, Lcom/sgscq/vpn/s5;-><init>(Ljava/lang/Object;II)V

    .line 135
    .line 136
    .line 137
    iput-object v2, v0, Lcom/sgscq/vpn/t5;->i:Lcom/sgscq/vpn/s5;

    .line 138
    .line 139
    new-instance v2, Lcom/sgscq/vpn/y0;

    .line 140
    .line 141
    const/4 v6, 0x2

    .line 142
    invoke-direct {v2, v0, v6}, Lcom/sgscq/vpn/y0;-><init>(Ljava/lang/Object;I)V

    .line 143
    .line 144
    .line 145
    iput-object v2, v0, Lcom/sgscq/vpn/t5;->j:Lcom/sgscq/vpn/y0;

    .line 146
    .line 147
    const-string v2, ""

    .line 148
    .line 149
    if-nez p2, :cond_5

    .line 150
    .line 151
    move-object v6, v2

    .line 152
    goto :goto_2

    .line 153
    :cond_5
    move-object/from16 v6, p2

    .line 154
    .line 155
    :goto_2
    iput-object v6, v0, Lcom/sgscq/vpn/t5;->a:Ljava/lang/String;

    .line 156
    .line 157
    new-instance v8, Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .line 161
    .line 162
    if-eqz v5, :cond_c

    .line 163
    .line 164
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    .line 170
    .line 171
    move-result v9

    .line 172
    if-eqz v9, :cond_c

    .line 173
    .line 174
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v9

    .line 178
    check-cast v9, Ljava/lang/String;

    .line 179
    .line 180
    if-nez v9, :cond_7

    .line 181
    .line 182
    move-object v9, v2

    .line 183
    goto :goto_4

    .line 184
    :cond_7
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    :goto_4
    if-eqz v9, :cond_b

    .line 189
    .line 190
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 191
    .line 192
    .line 193
    move-result v10

    .line 194
    if-nez v10, :cond_b

    .line 195
    .line 196
    invoke-virtual {v9, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    move-result v10

    .line 200
    if-eqz v10, :cond_8

    .line 201
    .line 202
    goto :goto_6

    .line 203
    :cond_8
    const-string v11, "\u9632\u5fa1\u961f"

    .line 204
    .line 205
    const-string v12, "\u653b\u51fb\u961f"

    .line 206
    .line 207
    const-string v13, "\u9635\u5bb9"

    .line 208
    .line 209
    const-string v14, "\u961f\u4f0d"

    .line 210
    .line 211
    const-string v15, "\u6d4b\u8bd5\u961f"

    .line 212
    .line 213
    const-string v16, "\u521d\u7ea7\u961f"

    .line 214
    .line 215
    const-string v17, "\u4e2d\u7ea7\u961f"

    .line 216
    .line 217
    const-string v18, "\u9ad8\u7ea7\u961f"

    .line 218
    .line 219
    const-string v19, "\u7ec8\u6781\u961f"

    .line 220
    .line 221
    filled-new-array/range {v11 .. v19}, [Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v10

    .line 225
    move v11, v7

    .line 226
    :goto_5
    const/16 v12, 0x9

    .line 227
    .line 228
    if-ge v11, v12, :cond_a

    .line 229
    .line 230
    aget-object v12, v10, v11

    .line 231
    .line 232
    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 233
    .line 234
    .line 235
    move-result v12

    .line 236
    if-eqz v12, :cond_9

    .line 237
    .line 238
    goto :goto_6

    .line 239
    :cond_9
    add-int/lit8 v11, v11, 0x1

    .line 240
    .line 241
    goto :goto_5

    .line 242
    :cond_a
    const/4 v10, 0x1

    .line 243
    goto :goto_7

    .line 244
    :cond_b
    :goto_6
    move v10, v7

    .line 245
    :goto_7
    if-eqz v10, :cond_6

    .line 246
    .line 247
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_c
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-eqz v2, :cond_d

    .line 256
    .line 257
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 258
    .line 259
    .line 260
    :cond_d
    new-instance v2, Ljava/util/Random;

    .line 261
    .line 262
    invoke-static {v6}, Lcom/sgscq/vpn/t5;->u(Ljava/lang/String;)J

    .line 263
    .line 264
    .line 265
    move-result-wide v3

    .line 266
    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 267
    .line 268
    .line 269
    invoke-static {v8, v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 270
    .line 271
    .line 272
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    iput-object v2, v0, Lcom/sgscq/vpn/t5;->b:Ljava/util/List;

    .line 277
    .line 278
    invoke-static {v7, v7}, Ljava/lang/Math;->max(II)I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    iput v2, v0, Lcom/sgscq/vpn/t5;->g:I

    .line 283
    .line 284
    const-string v2, "user_levels.json"

    .line 285
    .line 286
    invoke-static {v1, v2}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    if-eqz v2, :cond_10

    .line 291
    .line 292
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    if-eqz v3, :cond_e

    .line 301
    .line 302
    goto :goto_8

    .line 303
    :cond_e
    :try_start_1
    new-instance v3, Lcom/sgscq/vpn/RobotOpponentGenerator$4;

    .line 304
    .line 305
    invoke-direct {v3}, Lcom/sgscq/vpn/RobotOpponentGenerator$4;-><init>()V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    new-instance v4, La/o;

    .line 313
    .line 314
    invoke-direct {v4}, La/o;-><init>()V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v4, v2, v3}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    check-cast v2, Ljava/util/List;

    .line 322
    .line 323
    if-nez v2, :cond_f

    .line 324
    .line 325
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    goto :goto_9

    .line 330
    :cond_f
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 331
    .line 332
    .line 333
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 334
    goto :goto_9

    .line 335
    :catch_1
    :cond_10
    :goto_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    :goto_9
    iput-object v2, v0, Lcom/sgscq/vpn/t5;->h:Ljava/util/List;

    .line 340
    .line 341
    new-instance v2, Lcom/sgscq/vpn/n5;

    .line 342
    .line 343
    invoke-direct {v2, v1}, Lcom/sgscq/vpn/n5;-><init>(Landroid/content/Context;)V

    .line 344
    .line 345
    .line 346
    iput-object v2, v0, Lcom/sgscq/vpn/t5;->d:Lcom/sgscq/vpn/n5;

    .line 347
    .line 348
    invoke-static {}, Lcom/sgscq/vpn/p5;->n()Ljava/util/List;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    invoke-static {v2, v1}, Lcom/sgscq/vpn/t5;->e(Lcom/sgscq/vpn/n5;Ljava/util/List;)Ljava/util/List;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    iput-object v3, v0, Lcom/sgscq/vpn/t5;->e:Ljava/util/List;

    .line 357
    .line 358
    new-instance v3, Ljava/util/ArrayList;

    .line 359
    .line 360
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 361
    .line 362
    .line 363
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 364
    .line 365
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 366
    .line 367
    .line 368
    iget-object v4, v2, Lcom/sgscq/vpn/n5;->g:Ljava/util/ArrayList;

    .line 369
    .line 370
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 371
    .line 372
    .line 373
    move-result-object v4

    .line 374
    :cond_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 375
    .line 376
    .line 377
    move-result v5

    .line 378
    if-eqz v5, :cond_13

    .line 379
    .line 380
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v5

    .line 384
    check-cast v5, Lcom/sgscq/vpn/i5;

    .line 385
    .line 386
    iget-object v5, v5, Lcom/sgscq/vpn/i5;->b:Ljava/util/List;

    .line 387
    .line 388
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 389
    .line 390
    .line 391
    move-result-object v5

    .line 392
    :cond_12
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 393
    .line 394
    .line 395
    move-result v6

    .line 396
    if-eqz v6, :cond_11

    .line 397
    .line 398
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v6

    .line 402
    check-cast v6, Ljava/lang/String;

    .line 403
    .line 404
    invoke-virtual {v2, v6}, Lcom/sgscq/vpn/n5;->l(Ljava/lang/String;)Z

    .line 405
    .line 406
    .line 407
    move-result v7

    .line 408
    if-eqz v7, :cond_12

    .line 409
    .line 410
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    goto :goto_a

    .line 414
    :cond_13
    new-instance v2, Ljava/util/ArrayList;

    .line 415
    .line 416
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    :cond_14
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 424
    .line 425
    .line 426
    move-result v2

    .line 427
    if-eqz v2, :cond_15

    .line 428
    .line 429
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    check-cast v2, Ljava/lang/String;

    .line 434
    .line 435
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result v4

    .line 439
    if-nez v4, :cond_14

    .line 440
    .line 441
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    goto :goto_b

    .line 445
    :cond_15
    iget-object v1, v0, Lcom/sgscq/vpn/t5;->d:Lcom/sgscq/vpn/n5;

    .line 446
    .line 447
    invoke-static {v1, v3}, Lcom/sgscq/vpn/t5;->e(Lcom/sgscq/vpn/n5;Ljava/util/List;)Ljava/util/List;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    iput-object v1, v0, Lcom/sgscq/vpn/t5;->f:Ljava/util/List;

    .line 452
    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    .line 454
    .line 455
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    .line 457
    .line 458
    iget-object v3, v0, Lcom/sgscq/vpn/t5;->a:Ljava/lang/String;

    .line 459
    .line 460
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    const-string v3, "|"

    .line 464
    .line 465
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    iget-object v3, v0, Lcom/sgscq/vpn/t5;->b:Ljava/util/List;

    .line 469
    .line 470
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    .line 471
    .line 472
    .line 473
    move-result v3

    .line 474
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    const-string v3, "|team="

    .line 478
    .line 479
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    iget v3, v0, Lcom/sgscq/vpn/t5;->g:I

    .line 483
    .line 484
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    const-string v3, "|levels="

    .line 488
    .line 489
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    iget-object v3, v0, Lcom/sgscq/vpn/t5;->h:Ljava/util/List;

    .line 493
    .line 494
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    .line 495
    .line 496
    .line 497
    move-result v3

    .line 498
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    const-string v3, "|generals="

    .line 502
    .line 503
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 507
    .line 508
    .line 509
    move-result v1

    .line 510
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    iput-object v1, v0, Lcom/sgscq/vpn/t5;->c:Ljava/lang/String;

    .line 518
    .line 519
    return-void
.end method

.method public static c(Ljava/util/Map;Ljava/util/Map;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    const-string v1, "hp"

    const-string v2, "atk"

    const-string v3, "def"

    const-string v4, "wis"

    const-string v5, "base_hp"

    const-string v6, "base_attack"

    const-string v7, "base_defense"

    const-string v8, "base_wisdom"

    const-string v9, "base_fighting"

    const-string v10, "attr_hp"

    const-string v11, "attr_attack"

    const-string v12, "attr_defense"

    const-string v13, "attr_wisdom"

    const-string v14, "general_hp"

    const-string v15, "general_attack"

    const-string v16, "general_defense"

    const-string v17, "general_wisdom"

    const-string v18, "general_hp_attr"

    const-string v19, "general_attack_attr"

    const-string v20, "general_defense_attr"

    const-string v21, "general_wisdom_attr"

    const-string v22, "fighting"

    const-string v23, "fight_point"

    const-string v24, "fighting_point"

    const-string v25, "general_fighting"

    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x19

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    move-object/from16 v5, p1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static d(IIIII)I
    .locals 1

    .line 1
    if-gt p4, p3, :cond_0

    return p3

    :cond_0
    sub-int/2addr p4, p3

    add-int/lit8 p4, p4, 0x1

    const v0, 0x41c64e6d

    mul-int/2addr p0, v0

    mul-int/lit16 p1, p1, 0x3039

    add-int/2addr p1, p0

    const p0, 0xfd258f8

    mul-int/2addr p2, p0

    add-int/2addr p2, p1

    invoke-static {p2, p4}, Ljava/lang/Math;->floorMod(II)I

    move-result p0

    add-int/2addr p0, p3

    return p0
.end method

.method public static e(Lcom/sgscq/vpn/n5;Ljava/util/List;)Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sgscq/vpn/n5;->l(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {p0, v2, v4, v3}, Lcom/sgscq/vpn/n5;->d(Ljava/lang/String;ILjava/util/HashSet;)Lcom/sgscq/vpn/j5;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sgscq/vpn/j5;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    move-object v0, v1

    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)Ljava/util/LinkedHashMap;
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v10, p3

    move/from16 v3, p4

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/w1;->Y1(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    invoke-direct {v11, v4}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const/4 v4, 0x1

    xor-int/lit8 v5, p7, 0x1

    .line 1
    invoke-virtual {v0, v10, v4, v2}, Lcom/sgscq/vpn/w1;->M0(IILjava/lang/String;)[D

    move-result-object v6

    const/4 v9, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x4

    if-eqz v6, :cond_2

    array-length v15, v6

    if-gt v15, v13, :cond_0

    goto/16 :goto_1

    :cond_0
    aget-wide v14, v6, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    aget-wide v7, v6, v4

    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    aget-wide v0, v6, v9

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const/4 v4, 0x3

    aget-wide v9, v6, v4

    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    move-wide/from16 v21, v9

    const/4 v4, 0x4

    aget-wide v9, v6, v4

    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    if-eqz v5, :cond_1

    int-to-double v4, v3

    cmpl-double v6, v4, v9

    if-lez v6, :cond_1

    div-double/2addr v4, v9

    goto :goto_0

    :cond_1
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :goto_0
    const-wide v9, 0x3ff599999999999aL    # 1.35

    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    mul-double v9, v14, v4

    mul-double v12, v7, v4

    mul-double v31, v0, v4

    mul-double v4, v4, v21

    move-wide/from16 v23, v9

    move-wide/from16 v25, v12

    move-wide/from16 v27, v31

    move-wide/from16 v29, v4

    invoke-static/range {v23 .. v30}, Lcom/sgscq/vpn/w1;->x(DDDD)D

    move-result-wide v23

    const/16 v6, 0xd

    new-array v6, v6, [D

    const/16 v16, 0x0

    aput-wide v14, v6, v16

    const/16 v25, 0x1

    aput-wide v7, v6, v25

    const/16 v20, 0x2

    aput-wide v0, v6, v20

    const/16 v19, 0x3

    aput-wide v21, v6, v19

    const/16 v17, 0x4

    aput-wide v9, v6, v17

    const/16 v25, 0x5

    aput-wide v12, v6, v25

    const/16 v18, 0x6

    aput-wide v31, v6, v18

    const/16 v25, 0x7

    aput-wide v4, v6, v25

    const/16 v25, 0x8

    aput-wide v23, v6, v25

    sub-double/2addr v9, v14

    const/16 v14, 0x9

    aput-wide v9, v6, v14

    sub-double/2addr v12, v7

    const/16 v7, 0xa

    aput-wide v12, v6, v7

    sub-double v31, v31, v0

    const/16 v0, 0xb

    aput-wide v31, v6, v0

    sub-double v4, v4, v21

    const/16 v0, 0xc

    aput-wide v4, v6, v0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v6, 0x0

    :goto_2
    move-object v0, v6

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    const-wide v6, 0x3fe199999999999aL    # 0.55

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 2
    aget-wide v4, v0, v1

    goto :goto_3

    :cond_3
    int-to-double v8, v3

    mul-double/2addr v8, v6

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    :goto_3
    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    const-wide v8, 0x3fbeb851eb851eb8L    # 0.12

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    aget-wide v6, v0, v1

    goto :goto_4

    :cond_4
    int-to-double v12, v3

    mul-double/2addr v12, v8

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    :goto_4
    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    const-wide v14, 0x3faeb851eb851eb8L    # 0.06

    if-eqz v0, :cond_5

    const/4 v1, 0x2

    aget-wide v20, v0, v1

    move-wide/from16 v8, v20

    goto :goto_5

    :cond_5
    int-to-double v8, v3

    mul-double/2addr v8, v14

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    :goto_5
    if-eqz v0, :cond_6

    const/4 v1, 0x3

    aget-wide v12, v0, v1

    move-wide/from16 v22, v4

    goto :goto_6

    :cond_6
    move-wide/from16 v22, v4

    int-to-double v4, v3

    mul-double/2addr v4, v14

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    :goto_6
    if-eqz v0, :cond_7

    const/4 v1, 0x4

    aget-wide v4, v0, v1

    move-wide/from16 v22, v4

    :cond_7
    const/16 v25, 0x5

    if-eqz v0, :cond_8

    aget-wide v6, v0, v25

    :cond_8
    move-wide/from16 v26, v6

    if-eqz v0, :cond_9

    const/4 v1, 0x6

    aget-wide v8, v0, v1

    :cond_9
    move-wide/from16 v17, v8

    if-eqz v0, :cond_a

    const/4 v1, 0x7

    aget-wide v12, v0, v1

    :cond_a
    if-eqz v0, :cond_b

    const/16 v1, 0x8

    aget-wide v3, v0, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v1, v3

    const/4 v3, 0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_7

    :cond_b
    int-to-double v3, v3

    const-wide v5, 0x3fe199999999999aL    # 0.55

    mul-double/2addr v5, v3

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    .line 3
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    const-wide v5, 0x3fbeb851eb851eb8L    # 0.12

    mul-double v8, v3, v5

    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v30

    mul-double/2addr v3, v14

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v32

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v34

    invoke-static/range {v28 .. v35}, Lcom/sgscq/vpn/w1;->x(DDDD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v1, v3

    const/4 v3, 0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_7
    move v10, v3

    const-string v3, "pk_id"

    move-object/from16 v4, p1

    .line 4
    invoke-interface {v11, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "id"

    invoke-interface {v11, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "general_id"

    invoke-interface {v11, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "general_pk_id"

    invoke-interface {v11, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "general_name"

    move-object/from16 v4, p0

    invoke-virtual {v4, v2}, Lcom/sgscq/vpn/w1;->R0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "card_type"

    const-string v14, "1"

    const-string v7, "level"

    const-string v9, "general_level"

    move-object v3, v11

    move-object v5, v14

    move/from16 v6, p3

    move/from16 v8, p3

    .line 5
    invoke-static/range {v3 .. v9}, Lc/a;->z(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 6
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "hp"

    invoke-interface {v11, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "atk"

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v11, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "def"

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v11, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "wis"

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v11, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "general_hp"

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v11, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "general_attack"

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v11, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "general_defense"

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v11, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "general_wisdom"

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v11, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "attr_hp"

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v11, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "attr_attack"

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v11, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "attr_defense"

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v11, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "attr_wisdom"

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v11, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "base_hp"

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v11, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "base_attack"

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v11, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "base_defense"

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v11, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "base_wisdom"

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v11, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "general_hp_attr"

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v11, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "general_attack_attr"

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v11, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "general_defense_attr"

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v11, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "general_wisdom_attr"

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v11, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "fighting"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v11, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "general_fighting"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v11, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "fight_point"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_d

    .line 7
    array-length v1, v0

    const/16 v3, 0xc

    if-gt v1, v3, :cond_c

    goto :goto_8

    :cond_c
    const/16 v1, 0x9

    aget-wide v5, v0, v1

    invoke-static {v11, v4, v5, v6}, Lcom/sgscq/vpn/t5;->r(Ljava/util/LinkedHashMap;Ljava/lang/String;D)V

    const/16 v1, 0xa

    aget-wide v4, v0, v1

    const-string v1, "attack"

    invoke-static {v11, v1, v4, v5}, Lcom/sgscq/vpn/t5;->r(Ljava/util/LinkedHashMap;Ljava/lang/String;D)V

    const/16 v1, 0xb

    aget-wide v4, v0, v1

    const-string v1, "defense"

    invoke-static {v11, v1, v4, v5}, Lcom/sgscq/vpn/t5;->r(Ljava/util/LinkedHashMap;Ljava/lang/String;D)V

    const-string v1, "wisdom"

    aget-wide v3, v0, v3

    invoke-static {v11, v1, v3, v4}, Lcom/sgscq/vpn/t5;->r(Ljava/util/LinkedHashMap;Ljava/lang/String;D)V

    :cond_d
    :goto_8
    const-string v0, "major_pk_id"

    move-object/from16 v1, p5

    .line 8
    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "position"

    move-object/from16 v1, p6

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x32

    move/from16 v1, p3

    if-lt v1, v0, :cond_e

    move/from16 v3, v25

    goto :goto_9

    :cond_e
    move v3, v10

    :goto_9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "star_level"

    invoke-interface {v11, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lt v1, v0, :cond_f

    goto :goto_a

    :cond_f
    move/from16 v25, v10

    :goto_a
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "general_star"

    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "status"

    invoke-interface {v11, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "general_status"

    invoke-interface {v11, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "get_time"

    const-string v1, "exp"

    const/4 v3, 0x0

    .line 9
    invoke-static {v11, v0, v14, v3, v1}, Lcom/sgscq/vpn/handler/l;->b(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "general_avatar"

    .line 10
    invoke-interface {v11, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "general_painting"

    invoke-interface {v11, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v11
.end method

.method public static g(ILcom/sgscq/vpn/w1;Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/sgscq/vpn/w1;->i0()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1, p0, v1, p2}, Lcom/sgscq/vpn/w1;->M0(IILjava/lang/String;)[D

    move-result-object p0

    if-eqz p0, :cond_1

    array-length p1, p0

    const/4 p2, 0x4

    if-le p1, p2, :cond_1

    aget-wide p1, p0, p2

    const-wide/16 v2, 0x0

    cmpl-double p0, p1, v2

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static h(Lcom/sgscq/vpn/w1;Ljava/util/List;II)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    if-ge v1, p3, :cond_0

    move v3, p2

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, p0, v2}, Lcom/sgscq/vpn/t5;->g(ILcom/sgscq/vpn/w1;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public static i(Ljava/lang/Object;I)I
    .locals 2

    .line 1
    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p1, p0

    :catch_0
    :goto_0
    return p1
.end method

.method public static j(I)I
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/t5;->s(I)D

    move-result-wide v0

    const-wide v2, 0x4058c00000000000L    # 99.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static l(Lcom/sgscq/vpn/k5;Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/sgscq/vpn/k5;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static m(Ljava/util/List;)Ljava/util/LinkedHashMap;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "upd"

    aput-object v3, v1, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "add"

    aput-object v3, v1, v2

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const/4 v2, 0x3

    aput-object p0, v1, v2

    const-string p0, "del"

    invoke-static {p0, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static o(III)I
    .locals 8

    .line 1
    mul-int/lit8 v0, p0, 0x3

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {p1}, Lcom/sgscq/vpn/t5;->s(I)D

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    const/4 v4, 0x4

    .line 13
    const/16 v5, 0x11

    .line 14
    .line 15
    const/4 v6, -0x4

    .line 16
    invoke-static {p1, p2, v5, v6, v4}, Lcom/sgscq/vpn/t5;->d(IIIII)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const-wide v4, 0x3fd851eb851eb852L    # 0.38

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    mul-double/2addr v2, v4

    .line 26
    const-wide v4, 0x3fcc28f5c28f5c29L    # 0.22

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    add-double/2addr v2, v4

    .line 32
    int-to-double v4, p2

    .line 33
    const-wide v6, 0x3f9999999999999aL    # 0.025

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    mul-double/2addr v4, v6

    .line 39
    sub-double/2addr v2, v4

    .line 40
    int-to-double v4, p0

    .line 41
    mul-double/2addr v4, v2

    .line 42
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    long-to-int p0, v2

    .line 47
    add-int/2addr p0, p1

    .line 48
    sub-int/2addr v0, v1

    .line 49
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    return p0
.end method

.method public static q(IIIILjava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 80

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "robot_"

    .line 6
    .line 7
    invoke-static {v2, v0}, La/b0;->a(Ljava/lang/String;I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/16 v3, 0x30

    .line 12
    .line 13
    new-array v3, v3, [Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v15

    .line 20
    const-string v5, "user_id"

    .line 21
    .line 22
    aput-object v5, v3, v4

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v27

    .line 29
    aput-object v2, v3, v5

    .line 30
    .line 31
    const/4 v5, 0x2

    .line 32
    const-string v6, "account_uid"

    .line 33
    .line 34
    aput-object v6, v3, v5

    .line 35
    .line 36
    const/4 v5, 0x3

    .line 37
    aput-object v2, v3, v5

    .line 38
    .line 39
    const/4 v5, 0x4

    .line 40
    const-string v6, "uid"

    .line 41
    .line 42
    aput-object v6, v3, v5

    .line 43
    .line 44
    const/4 v5, 0x5

    .line 45
    aput-object v2, v3, v5

    .line 46
    .line 47
    const/4 v5, 0x6

    .line 48
    const-string v6, "player_type"

    .line 49
    .line 50
    aput-object v6, v3, v5

    .line 51
    .line 52
    const/4 v5, 0x7

    .line 53
    aput-object v27, v3, v5

    .line 54
    .line 55
    const/16 v5, 0x8

    .line 56
    .line 57
    const-string v6, "nickname"

    .line 58
    .line 59
    aput-object v6, v3, v5

    .line 60
    .line 61
    const/16 v5, 0x9

    .line 62
    .line 63
    aput-object p5, v3, v5

    .line 64
    .line 65
    const/16 v5, 0xa

    .line 66
    .line 67
    const-string v6, "nick"

    .line 68
    .line 69
    aput-object v6, v3, v5

    .line 70
    .line 71
    const/16 v6, 0xb

    .line 72
    .line 73
    aput-object p5, v3, v6

    .line 74
    .line 75
    const/16 v6, 0xc

    .line 76
    .line 77
    const-string v7, "nickName"

    .line 78
    .line 79
    aput-object v7, v3, v6

    .line 80
    .line 81
    const/16 v6, 0xd

    .line 82
    .line 83
    aput-object p5, v3, v6

    .line 84
    .line 85
    const/16 v6, 0xe

    .line 86
    .line 87
    const-string v7, "roleName"

    .line 88
    .line 89
    aput-object v7, v3, v6

    .line 90
    .line 91
    const/16 v6, 0xf

    .line 92
    .line 93
    aput-object p5, v3, v6

    .line 94
    .line 95
    const/16 v7, 0x10

    .line 96
    .line 97
    const-string v8, "user_nickname"

    .line 98
    .line 99
    aput-object v8, v3, v7

    .line 100
    .line 101
    const/16 v7, 0x11

    .line 102
    .line 103
    aput-object p5, v3, v7

    .line 104
    .line 105
    const/16 v7, 0x12

    .line 106
    .line 107
    const-string v8, "user_name"

    .line 108
    .line 109
    aput-object v8, v3, v7

    .line 110
    .line 111
    const/16 v7, 0x13

    .line 112
    .line 113
    aput-object p5, v3, v7

    .line 114
    .line 115
    const/16 v7, 0x14

    .line 116
    .line 117
    const-string v8, "user_nick"

    .line 118
    .line 119
    aput-object v8, v3, v7

    .line 120
    .line 121
    const/16 v7, 0x15

    .line 122
    .line 123
    aput-object p5, v3, v7

    .line 124
    .line 125
    const/16 v7, 0x16

    .line 126
    .line 127
    const-string v8, "userName"

    .line 128
    .line 129
    aput-object v8, v3, v7

    .line 130
    .line 131
    const/16 v7, 0x17

    .line 132
    .line 133
    aput-object p5, v3, v7

    .line 134
    .line 135
    const/16 v7, 0x18

    .line 136
    .line 137
    const-string v8, "player_level"

    .line 138
    .line 139
    aput-object v8, v3, v7

    .line 140
    .line 141
    const/16 v7, 0x19

    .line 142
    .line 143
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    aput-object v8, v3, v7

    .line 148
    .line 149
    const/16 v7, 0x1a

    .line 150
    .line 151
    const-string v8, "user_level"

    .line 152
    .line 153
    aput-object v8, v3, v7

    .line 154
    .line 155
    const/16 v7, 0x1b

    .line 156
    .line 157
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    aput-object v8, v3, v7

    .line 162
    .line 163
    const/16 v7, 0x1c

    .line 164
    .line 165
    const-string v8, "level"

    .line 166
    .line 167
    aput-object v8, v3, v7

    .line 168
    .line 169
    const/16 v7, 0x1d

    .line 170
    .line 171
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    aput-object v8, v3, v7

    .line 176
    .line 177
    const/16 v7, 0x1e

    .line 178
    .line 179
    const-string v8, "fighting"

    .line 180
    .line 181
    aput-object v8, v3, v7

    .line 182
    .line 183
    const/16 v7, 0x1f

    .line 184
    .line 185
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    aput-object v8, v3, v7

    .line 190
    .line 191
    const/16 v7, 0x20

    .line 192
    .line 193
    const-string v8, "fight_point"

    .line 194
    .line 195
    aput-object v8, v3, v7

    .line 196
    .line 197
    const/16 v7, 0x21

    .line 198
    .line 199
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    aput-object v8, v3, v7

    .line 204
    .line 205
    const/16 v7, 0x22

    .line 206
    .line 207
    const-string v8, "fightPoint"

    .line 208
    .line 209
    aput-object v8, v3, v7

    .line 210
    .line 211
    const/16 v7, 0x23

    .line 212
    .line 213
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v8

    .line 217
    aput-object v8, v3, v7

    .line 218
    .line 219
    const/16 v7, 0x24

    .line 220
    .line 221
    const-string v8, "ladder_rank"

    .line 222
    .line 223
    aput-object v8, v3, v7

    .line 224
    .line 225
    const/16 v7, 0x25

    .line 226
    .line 227
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v8

    .line 231
    aput-object v8, v3, v7

    .line 232
    .line 233
    const/16 v7, 0x26

    .line 234
    .line 235
    const-string v8, "general_id"

    .line 236
    .line 237
    aput-object v8, v3, v7

    .line 238
    .line 239
    const/16 v7, 0x27

    .line 240
    .line 241
    aput-object p4, v3, v7

    .line 242
    .line 243
    const/16 v7, 0x28

    .line 244
    .line 245
    const-string v8, "general_skin"

    .line 246
    .line 247
    aput-object v8, v3, v7

    .line 248
    .line 249
    const/16 v7, 0x29

    .line 250
    .line 251
    aput-object p4, v3, v7

    .line 252
    .line 253
    const/16 v7, 0x2a

    .line 254
    .line 255
    const-string v8, "head"

    .line 256
    .line 257
    aput-object v8, v3, v7

    .line 258
    .line 259
    const/16 v7, 0x2b

    .line 260
    .line 261
    aput-object p4, v3, v7

    .line 262
    .line 263
    const/16 v7, 0x2c

    .line 264
    .line 265
    const-string v8, "avatar"

    .line 266
    .line 267
    aput-object v8, v3, v7

    .line 268
    .line 269
    const/16 v7, 0x2d

    .line 270
    .line 271
    aput-object p4, v3, v7

    .line 272
    .line 273
    const/16 v7, 0x2e

    .line 274
    .line 275
    const-string v8, "user_vip_level"

    .line 276
    .line 277
    aput-object v8, v3, v7

    .line 278
    .line 279
    if-gt v0, v5, :cond_0

    .line 280
    .line 281
    goto :goto_0

    .line 282
    :cond_0
    div-int/lit8 v5, v1, 0xa

    .line 283
    .line 284
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 285
    .line 286
    .line 287
    move-result v6

    .line 288
    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    const/16 v5, 0x2f

    .line 293
    .line 294
    aput-object v4, v3, v5

    .line 295
    .line 296
    const-string v4, "player_id"

    .line 297
    .line 298
    invoke-static {v4, v2, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 299
    .line 300
    .line 301
    move-result-object v13

    .line 302
    const-string v2, "user_charge_count"

    .line 303
    .line 304
    const-string v4, "current_charge_gold"

    .line 305
    .line 306
    const-string v6, "count_charge_gold"

    .line 307
    .line 308
    const-string v8, "user_coin"

    .line 309
    .line 310
    const-string v10, "user_gold"

    .line 311
    .line 312
    const-string v12, "user_power"

    .line 313
    .line 314
    const-string v14, "user_power_date"

    .line 315
    .line 316
    const-string v16, "user_energy"

    .line 317
    .line 318
    const-string v18, "user_energy_date"

    .line 319
    .line 320
    const-string v20, "gold_soul"

    .line 321
    .line 322
    const-string v22, "sliver_soul"

    .line 323
    .line 324
    const-string v24, "user_sign"

    .line 325
    .line 326
    const-string v25, ""

    .line 327
    .line 328
    const-string v26, "user_last_login_time"

    .line 329
    .line 330
    const-string v28, "user_ability"

    .line 331
    .line 332
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 333
    .line 334
    .line 335
    move-result-object v29

    .line 336
    const-string v30, "ladder_rank_salary"

    .line 337
    .line 338
    const-string v32, "ladder_challenging_num"

    .line 339
    .line 340
    const-string v34, "leadership_num"

    .line 341
    .line 342
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 343
    .line 344
    .line 345
    move-result-object v35

    .line 346
    const-string v36, "first_choose_general"

    .line 347
    .line 348
    const-string v38, "first_wine_general"

    .line 349
    .line 350
    const-string v40, "freshman_step"

    .line 351
    .line 352
    const-string v41, "80000"

    .line 353
    .line 354
    const-string v42, "triple_speed"

    .line 355
    .line 356
    sget-object v43, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 357
    .line 358
    move-object/from16 v79, v43

    .line 359
    .line 360
    move-object/from16 v77, v43

    .line 361
    .line 362
    const-string v44, "triple_speed_vip_level"

    .line 363
    .line 364
    const-string v46, "item_count"

    .line 365
    .line 366
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 367
    .line 368
    move-object/from16 v47, v3

    .line 369
    .line 370
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 371
    .line 372
    .line 373
    const-string v48, "user_map_step"

    .line 374
    .line 375
    const-string v49, "500001"

    .line 376
    .line 377
    const-string v50, "user_position_step"

    .line 378
    .line 379
    const v3, 0x7a509

    .line 380
    .line 381
    .line 382
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 383
    .line 384
    .line 385
    move-result-object v51

    .line 386
    const-string v52, "user_elite_map_step"

    .line 387
    .line 388
    const-string v53, "10501"

    .line 389
    .line 390
    const-string v54, "user_elite_position_step"

    .line 391
    .line 392
    const-string v55, "1050100101"

    .line 393
    .line 394
    const-string v56, "dungeon_cold_time"

    .line 395
    .line 396
    const-string v58, "cd_item_price"

    .line 397
    .line 398
    const-string v60, "base_cold_time"

    .line 399
    .line 400
    const-string v62, "to_danger_time"

    .line 401
    .line 402
    const-string v64, "user_honor"

    .line 403
    .line 404
    const-string v66, "union_id"

    .line 405
    .line 406
    const-string v68, "union_name"

    .line 407
    .line 408
    const-string v69, ""

    .line 409
    .line 410
    const-string v70, "user_role"

    .line 411
    .line 412
    const-string v72, "user_donate"

    .line 413
    .line 414
    const-string v74, "donate_num"

    .line 415
    .line 416
    const-string v76, "donate_state"

    .line 417
    .line 418
    const-string v78, "union_war_sign_up"

    .line 419
    .line 420
    move-object v3, v15

    .line 421
    move-object v5, v15

    .line 422
    move-object v7, v15

    .line 423
    move-object/from16 v9, v27

    .line 424
    .line 425
    move-object/from16 v11, v27

    .line 426
    .line 427
    move-object v0, v13

    .line 428
    move-object/from16 v13, v27

    .line 429
    .line 430
    move-object/from16 p2, v15

    .line 431
    .line 432
    move-object/from16 v17, v27

    .line 433
    .line 434
    move-object/from16 v19, p2

    .line 435
    .line 436
    move-object/from16 v21, p2

    .line 437
    .line 438
    move-object/from16 v23, p2

    .line 439
    .line 440
    move-object/from16 v31, p2

    .line 441
    .line 442
    move-object/from16 v33, p2

    .line 443
    .line 444
    move-object/from16 v37, p4

    .line 445
    .line 446
    move-object/from16 v39, p4

    .line 447
    .line 448
    move-object/from16 v45, p2

    .line 449
    .line 450
    move-object/from16 v57, p2

    .line 451
    .line 452
    move-object/from16 v59, p2

    .line 453
    .line 454
    move-object/from16 v61, p2

    .line 455
    .line 456
    move-object/from16 v63, p2

    .line 457
    .line 458
    move-object/from16 v65, p2

    .line 459
    .line 460
    move-object/from16 v67, p2

    .line 461
    .line 462
    move-object/from16 v71, p2

    .line 463
    .line 464
    move-object/from16 v73, p2

    .line 465
    .line 466
    move-object/from16 v75, p2

    .line 467
    .line 468
    filled-new-array/range {v2 .. v79}, [Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v2

    .line 472
    const-string v3, "user_experience"

    .line 473
    .line 474
    move-object/from16 v4, p2

    .line 475
    .line 476
    invoke-static {v3, v4, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 481
    .line 482
    .line 483
    int-to-double v1, v1

    .line 484
    const-wide/high16 v3, 0x404b000000000000L    # 54.0

    .line 485
    .line 486
    mul-double/2addr v1, v3

    .line 487
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 488
    .line 489
    div-double/2addr v1, v3

    .line 490
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    .line 491
    .line 492
    .line 493
    move-result-wide v1

    .line 494
    long-to-int v1, v1

    .line 495
    const/16 v2, 0x36

    .line 496
    .line 497
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 498
    .line 499
    .line 500
    move-result v1

    .line 501
    const/4 v2, 0x1

    .line 502
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 503
    .line 504
    .line 505
    move-result v1

    .line 506
    mul-int/lit8 v3, p0, 0x7

    .line 507
    .line 508
    const/16 v4, 0x12

    .line 509
    .line 510
    invoke-static {v3, v4}, Ljava/lang/Math;->floorMod(II)I

    .line 511
    .line 512
    .line 513
    move-result v3

    .line 514
    add-int/2addr v3, v2

    .line 515
    mul-int/lit8 v1, v1, 0x64

    .line 516
    .line 517
    add-int/2addr v1, v3

    .line 518
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    const-string v2, "rank_story_progress"

    .line 523
    .line 524
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    return-object v0
.end method

.method public static r(Ljava/util/LinkedHashMap;Ljava/lang/String;D)V
    .locals 2

    .line 1
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, p2, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "culture_attr_"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cultivate_attr_"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static s(I)D
    .locals 4

    .line 1
    const/16 v0, 0x3e8

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const-wide v0, 0x408f400000000000L    # 1000.0

    int-to-double v2, p0

    sub-double/2addr v0, v2

    const-wide v2, 0x408f380000000000L    # 999.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static u(Ljava/lang/String;)J
    .locals 5

    .line 1
    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    const-wide v0, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-long v3, v3

    xor-long/2addr v0, v3

    const-wide v3, 0x100000001b3L

    mul-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static v(Ljava/util/Map;)V
    .locals 2

    .line 1
    const-string v0, "attr_hp"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "hp"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "attr_attack"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "atk"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "attr_defense"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "def"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "attr_wisdom"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "wis"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(ILjava/util/List;)Lcom/sgscq/vpn/v5;
    .locals 107

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move/from16 v13, p1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 7
    .line 8
    .line 9
    move-result-object v8

    .line 10
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/t5;->j(I)I

    .line 11
    .line 12
    .line 13
    move-result v11

    .line 14
    const/4 v0, 0x2

    .line 15
    iget v1, v7, Lcom/sgscq/vpn/t5;->g:I

    .line 16
    .line 17
    if-lez v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v8, v11}, Lcom/sgscq/vpn/w1;->h1(I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    :goto_0
    move v12, v1

    .line 29
    add-int/lit8 v1, v12, 0x1

    .line 30
    .line 31
    div-int/2addr v1, v0

    .line 32
    invoke-static {v12, v1}, Ljava/lang/Math;->min(II)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    invoke-virtual {v7, v11}, Lcom/sgscq/vpn/t5;->k(I)I

    .line 42
    .line 43
    .line 44
    move-result v10

    .line 45
    new-instance v6, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    new-instance v5, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v4, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    new-instance v3, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    new-instance v2, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    new-instance v1, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    new-instance v0, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    move-object/from16 v14, p2

    .line 81
    .line 82
    invoke-virtual {v7, v13, v12, v9, v14}, Lcom/sgscq/vpn/t5;->t(IIILjava/util/List;)Lcom/sgscq/vpn/t;

    .line 83
    .line 84
    .line 85
    move-result-object v15

    .line 86
    new-instance v14, Ljava/util/HashSet;

    .line 87
    .line 88
    move-object/from16 v22, v0

    .line 89
    .line 90
    iget-object v0, v15, Lcom/sgscq/vpn/t;->a:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v0, Ljava/util/Set;

    .line 93
    .line 94
    invoke-direct {v14, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, v15, Lcom/sgscq/vpn/t;->b:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v0, Ljava/util/List;

    .line 100
    .line 101
    move-object/from16 v23, v1

    .line 102
    .line 103
    iget-object v1, v15, Lcom/sgscq/vpn/t;->c:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v1, Ljava/util/List;

    .line 106
    .line 107
    move-object/from16 v24, v2

    .line 108
    .line 109
    iget-object v2, v15, Lcom/sgscq/vpn/t;->d:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v2, Ljava/util/List;

    .line 112
    .line 113
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/t5;->s(I)D

    .line 114
    .line 115
    .line 116
    move-result-wide v16

    .line 117
    const-wide v18, 0x411e74e000000000L    # 499000.0

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    mul-double v20, v16, v18

    .line 123
    .line 124
    mul-double v20, v20, v16

    .line 125
    .line 126
    const-wide v16, 0x408f400000000000L    # 1000.0

    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    add-double v20, v20, v16

    .line 132
    .line 133
    move-object/from16 p2, v2

    .line 134
    .line 135
    move-object/from16 v25, v3

    .line 136
    .line 137
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->round(D)J

    .line 138
    .line 139
    .line 140
    move-result-wide v2

    .line 141
    long-to-int v2, v2

    .line 142
    move-object/from16 v26, v4

    .line 143
    .line 144
    int-to-double v3, v2

    .line 145
    const-wide v20, 0x3fb999999999999aL    # 0.1

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    mul-double v3, v3, v20

    .line 151
    .line 152
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    .line 153
    .line 154
    .line 155
    move-result-wide v3

    .line 156
    long-to-int v3, v3

    .line 157
    const/4 v4, 0x1

    .line 158
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    const/16 v4, 0x2710

    .line 163
    .line 164
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    const/16 v4, 0xa

    .line 169
    .line 170
    if-gt v13, v4, :cond_1

    .line 171
    .line 172
    const/16 v4, 0x190

    .line 173
    .line 174
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    move-object/from16 v27, v5

    .line 184
    .line 185
    iget-object v5, v7, Lcom/sgscq/vpn/t5;->a:Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v5, "|fighting|"

    .line 191
    .line 192
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    invoke-static {v4}, Lcom/sgscq/vpn/t5;->u(Ljava/lang/String;)J

    .line 203
    .line 204
    .line 205
    move-result-wide v4

    .line 206
    move-object/from16 v21, v14

    .line 207
    .line 208
    move-object/from16 v20, v15

    .line 209
    .line 210
    int-to-long v14, v3

    .line 211
    const-wide/16 v28, 0x2

    .line 212
    .line 213
    mul-long v14, v14, v28

    .line 214
    .line 215
    const-wide/16 v28, 0x1

    .line 216
    .line 217
    add-long v14, v14, v28

    .line 218
    .line 219
    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->floorMod(JJ)J

    .line 220
    .line 221
    .line 222
    move-result-wide v4

    .line 223
    long-to-int v4, v4

    .line 224
    sub-int/2addr v4, v3

    .line 225
    add-int/2addr v4, v2

    .line 226
    const/4 v2, 0x1

    .line 227
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    const/16 v3, 0xa

    .line 232
    .line 233
    if-le v13, v3, :cond_2

    .line 234
    .line 235
    invoke-static {v3}, Lcom/sgscq/vpn/t5;->s(I)D

    .line 236
    .line 237
    .line 238
    move-result-wide v3

    .line 239
    mul-double v18, v18, v3

    .line 240
    .line 241
    mul-double v18, v18, v3

    .line 242
    .line 243
    add-double v18, v18, v16

    .line 244
    .line 245
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    .line 246
    .line 247
    .line 248
    move-result-wide v3

    .line 249
    long-to-int v3, v3

    .line 250
    add-int/lit16 v3, v3, -0x3e8

    .line 251
    .line 252
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    :cond_2
    const/4 v3, 0x6

    .line 257
    new-array v3, v3, [D

    .line 258
    .line 259
    fill-array-data v3, :array_0

    .line 260
    .line 261
    .line 262
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 263
    .line 264
    .line 265
    move-result v4

    .line 266
    new-array v4, v4, [D

    .line 267
    .line 268
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 269
    .line 270
    .line 271
    move-result v5

    .line 272
    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    .line 273
    .line 274
    .line 275
    move-result v5

    .line 276
    const/4 v14, 0x1

    .line 277
    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    .line 278
    .line 279
    .line 280
    move-result v5

    .line 281
    const/4 v14, 0x0

    .line 282
    const-wide/16 v15, 0x0

    .line 283
    .line 284
    :goto_1
    const-wide/high16 v28, 0x4059000000000000L    # 100.0

    .line 285
    .line 286
    if-ge v14, v5, :cond_4

    .line 287
    .line 288
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v17

    .line 292
    move-object/from16 v30, v6

    .line 293
    .line 294
    move-object/from16 v6, v17

    .line 295
    .line 296
    check-cast v6, Ljava/lang/String;

    .line 297
    .line 298
    move/from16 v31, v10

    .line 299
    .line 300
    mul-int/lit8 v10, v11, 0x3

    .line 301
    .line 302
    move/from16 v32, v9

    .line 303
    .line 304
    const/4 v9, 0x1

    .line 305
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    .line 306
    .line 307
    .line 308
    move-result v10

    .line 309
    invoke-virtual {v8, v10, v9, v6}, Lcom/sgscq/vpn/w1;->M0(IILjava/lang/String;)[D

    .line 310
    .line 311
    .line 312
    move-result-object v6

    .line 313
    if-eqz v6, :cond_3

    .line 314
    .line 315
    array-length v9, v6

    .line 316
    const/4 v10, 0x4

    .line 317
    if-le v9, v10, :cond_3

    .line 318
    .line 319
    aget-wide v9, v6, v10

    .line 320
    .line 321
    goto :goto_2

    .line 322
    :cond_3
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 323
    .line 324
    :goto_2
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v6

    .line 328
    check-cast v6, Lcom/sgscq/vpn/j5;

    .line 329
    .line 330
    iget-object v6, v6, Lcom/sgscq/vpn/j5;->a:Lcom/sgscq/vpn/m5;

    .line 331
    .line 332
    move/from16 v33, v12

    .line 333
    .line 334
    iget-wide v12, v6, Lcom/sgscq/vpn/m5;->b:D

    .line 335
    .line 336
    div-double v12, v12, v28

    .line 337
    .line 338
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 339
    .line 340
    add-double/2addr v12, v6

    .line 341
    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->max(DD)D

    .line 342
    .line 343
    .line 344
    move-result-wide v6

    .line 345
    mul-double/2addr v6, v12

    .line 346
    const/4 v9, 0x5

    .line 347
    invoke-static {v14, v9}, Ljava/lang/Math;->min(II)I

    .line 348
    .line 349
    .line 350
    move-result v9

    .line 351
    aget-wide v9, v3, v9

    .line 352
    .line 353
    mul-double/2addr v6, v9

    .line 354
    aput-wide v6, v4, v14

    .line 355
    .line 356
    add-double/2addr v15, v6

    .line 357
    add-int/lit8 v14, v14, 0x1

    .line 358
    .line 359
    move-object/from16 v7, p0

    .line 360
    .line 361
    move/from16 v13, p1

    .line 362
    .line 363
    move-object/from16 v6, v30

    .line 364
    .line 365
    move/from16 v10, v31

    .line 366
    .line 367
    move/from16 v9, v32

    .line 368
    .line 369
    move/from16 v12, v33

    .line 370
    .line 371
    goto :goto_1

    .line 372
    :cond_4
    move-object/from16 v30, v6

    .line 373
    .line 374
    move/from16 v32, v9

    .line 375
    .line 376
    move/from16 v31, v10

    .line 377
    .line 378
    move/from16 v33, v12

    .line 379
    .line 380
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 381
    .line 382
    .line 383
    move-result v3

    .line 384
    new-array v7, v3, [I

    .line 385
    .line 386
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    .line 387
    .line 388
    .line 389
    move-result v2

    .line 390
    const/4 v6, 0x0

    .line 391
    const/4 v9, 0x0

    .line 392
    :goto_3
    if-ge v6, v5, :cond_6

    .line 393
    .line 394
    sub-int v10, v5, v6

    .line 395
    .line 396
    add-int/lit8 v10, v10, -0x1

    .line 397
    .line 398
    add-int/lit8 v12, v5, -0x1

    .line 399
    .line 400
    if-ne v6, v12, :cond_5

    .line 401
    .line 402
    sub-int v12, v2, v9

    .line 403
    .line 404
    goto :goto_4

    .line 405
    :cond_5
    int-to-double v12, v2

    .line 406
    aget-wide v17, v4, v6

    .line 407
    .line 408
    mul-double v12, v12, v17

    .line 409
    .line 410
    div-double/2addr v12, v15

    .line 411
    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    .line 412
    .line 413
    .line 414
    move-result-wide v12

    .line 415
    long-to-int v12, v12

    .line 416
    :goto_4
    sub-int v13, v2, v9

    .line 417
    .line 418
    sub-int/2addr v13, v10

    .line 419
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    .line 420
    .line 421
    .line 422
    move-result v10

    .line 423
    const/4 v12, 0x1

    .line 424
    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    .line 425
    .line 426
    .line 427
    move-result v10

    .line 428
    aput v10, v7, v6

    .line 429
    .line 430
    add-int/2addr v9, v10

    .line 431
    add-int/lit8 v6, v6, 0x1

    .line 432
    .line 433
    goto :goto_3

    .line 434
    :cond_6
    :goto_5
    const/4 v2, 0x1

    .line 435
    if-ge v5, v3, :cond_8

    .line 436
    .line 437
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v4

    .line 441
    check-cast v4, Ljava/lang/String;

    .line 442
    .line 443
    const/4 v6, 0x0

    .line 444
    invoke-static {v11, v6, v5}, Lcom/sgscq/vpn/t5;->o(III)I

    .line 445
    .line 446
    .line 447
    move-result v6

    .line 448
    invoke-virtual {v8, v6, v2, v4}, Lcom/sgscq/vpn/w1;->M0(IILjava/lang/String;)[D

    .line 449
    .line 450
    .line 451
    move-result-object v4

    .line 452
    if-eqz v4, :cond_7

    .line 453
    .line 454
    array-length v6, v4

    .line 455
    const/4 v9, 0x4

    .line 456
    if-le v6, v9, :cond_7

    .line 457
    .line 458
    aget-wide v9, v4, v9

    .line 459
    .line 460
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    .line 461
    .line 462
    .line 463
    move-result-wide v9

    .line 464
    long-to-int v4, v9

    .line 465
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 466
    .line 467
    .line 468
    move-result v2

    .line 469
    goto :goto_6

    .line 470
    :cond_7
    const/4 v2, 0x1

    .line 471
    :goto_6
    aput v2, v7, v5

    .line 472
    .line 473
    add-int/lit8 v5, v5, 0x1

    .line 474
    .line 475
    goto :goto_5

    .line 476
    :cond_8
    const/4 v2, 0x0

    .line 477
    const/4 v3, 0x0

    .line 478
    move v9, v2

    .line 479
    move v10, v3

    .line 480
    :goto_7
    const-string v12, "position"

    .line 481
    .line 482
    const-string v13, "fighting"

    .line 483
    .line 484
    const-string v6, "general_pk_id"

    .line 485
    .line 486
    const-string v5, "general_skills"

    .line 487
    .line 488
    const-string v4, "gSkill"

    .line 489
    .line 490
    const-string v3, "general_naturalskill_id"

    .line 491
    .line 492
    move-object/from16 v2, p0

    .line 493
    .line 494
    iget-object v15, v2, Lcom/sgscq/vpn/t5;->d:Lcom/sgscq/vpn/n5;

    .line 495
    .line 496
    const-string v14, "bound_lieutenants"

    .line 497
    .line 498
    move-object/from16 v34, v12

    .line 499
    .line 500
    const-string v12, "robot_"

    .line 501
    .line 502
    move-object/from16 v35, v6

    .line 503
    .line 504
    const-string v6, "pk_id"

    .line 505
    .line 506
    move-object/from16 v36, v6

    .line 507
    .line 508
    move/from16 v6, v33

    .line 509
    .line 510
    if-ge v9, v6, :cond_29

    .line 511
    .line 512
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v16

    .line 516
    move-object/from16 v33, v16

    .line 517
    .line 518
    check-cast v33, Ljava/lang/String;

    .line 519
    .line 520
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v16

    .line 524
    move/from16 v37, v6

    .line 525
    .line 526
    move-object/from16 v6, v16

    .line 527
    .line 528
    check-cast v6, Lcom/sgscq/vpn/j5;

    .line 529
    .line 530
    move-object/from16 v38, v5

    .line 531
    .line 532
    move/from16 v5, p1

    .line 533
    .line 534
    mul-int/lit8 v16, v5, 0x61

    .line 535
    .line 536
    mul-int/lit8 v17, v9, 0xd

    .line 537
    .line 538
    add-int v55, v17, v16

    .line 539
    .line 540
    move-object/from16 v39, v4

    .line 541
    .line 542
    move/from16 v4, v32

    .line 543
    .line 544
    if-lt v9, v4, :cond_9

    .line 545
    .line 546
    const/16 v16, 0x1

    .line 547
    .line 548
    goto :goto_8

    .line 549
    :cond_9
    const/16 v16, 0x0

    .line 550
    .line 551
    :goto_8
    move/from16 v32, v16

    .line 552
    .line 553
    if-eqz v32, :cond_a

    .line 554
    .line 555
    invoke-static {v11, v5, v9}, Lcom/sgscq/vpn/t5;->o(III)I

    .line 556
    .line 557
    .line 558
    move-result v16

    .line 559
    move-object/from16 v40, v0

    .line 560
    .line 561
    move-object/from16 v41, v1

    .line 562
    .line 563
    goto :goto_9

    .line 564
    :cond_a
    move-object/from16 v40, v0

    .line 565
    .line 566
    mul-int/lit8 v0, v11, 0x3

    .line 567
    .line 568
    move-object/from16 v41, v1

    .line 569
    .line 570
    const/4 v1, 0x1

    .line 571
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 572
    .line 573
    .line 574
    move-result v16

    .line 575
    :goto_9
    move/from16 v1, v16

    .line 576
    .line 577
    aget v0, v7, v9

    .line 578
    .line 579
    new-instance v2, Ljava/lang/StringBuilder;

    .line 580
    .line 581
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    move-object/from16 v56, v7

    .line 588
    .line 589
    const-string v7, "_g"

    .line 590
    .line 591
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    move-object/from16 v43, v7

    .line 595
    .line 596
    add-int/lit8 v7, v9, 0x1

    .line 597
    .line 598
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v2

    .line 605
    const-string v19, ""

    .line 606
    .line 607
    const-string v42, "0"

    .line 608
    .line 609
    move-object/from16 v58, v14

    .line 610
    .line 611
    move-object/from16 v57, v21

    .line 612
    .line 613
    move-object v14, v8

    .line 614
    move-object/from16 v44, v12

    .line 615
    .line 616
    move-object v12, v15

    .line 617
    move-object/from16 v59, v20

    .line 618
    .line 619
    move-object v15, v2

    .line 620
    move-object/from16 v16, v33

    .line 621
    .line 622
    move/from16 v17, v1

    .line 623
    .line 624
    move/from16 v18, v0

    .line 625
    .line 626
    move-object/from16 v20, v42

    .line 627
    .line 628
    move/from16 v21, v32

    .line 629
    .line 630
    invoke-static/range {v14 .. v21}, Lcom/sgscq/vpn/t5;->f(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)Ljava/util/LinkedHashMap;

    .line 631
    .line 632
    .line 633
    move-result-object v14

    .line 634
    invoke-virtual {v14, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    move-result-object v13

    .line 638
    invoke-static {v13, v0}, Lcom/sgscq/vpn/t5;->i(Ljava/lang/Object;I)I

    .line 639
    .line 640
    .line 641
    move-result v13

    .line 642
    add-int/2addr v10, v13

    .line 643
    iget-object v0, v6, Lcom/sgscq/vpn/j5;->a:Lcom/sgscq/vpn/m5;

    .line 644
    .line 645
    iget v0, v0, Lcom/sgscq/vpn/m5;->a:I

    .line 646
    .line 647
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    const-string v15, "robot_primary_attr_type"

    .line 652
    .line 653
    invoke-interface {v14, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    iget-object v15, v6, Lcom/sgscq/vpn/j5;->a:Lcom/sgscq/vpn/m5;

    .line 657
    .line 658
    move/from16 v16, v1

    .line 659
    .line 660
    iget-wide v0, v15, Lcom/sgscq/vpn/m5;->b:D

    .line 661
    .line 662
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    const-string v1, "robot_max_fate_percent"

    .line 667
    .line 668
    invoke-interface {v14, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    .line 670
    .line 671
    iget v1, v6, Lcom/sgscq/vpn/j5;->g:I

    .line 672
    .line 673
    move/from16 v60, v10

    .line 674
    .line 675
    move-object/from16 v10, v22

    .line 676
    .line 677
    move-object/from16 v22, v40

    .line 678
    .line 679
    move-object/from16 v0, p0

    .line 680
    .line 681
    move/from16 v62, v16

    .line 682
    .line 683
    move-object/from16 v61, v23

    .line 684
    .line 685
    move-object/from16 v23, v41

    .line 686
    .line 687
    move/from16 v16, v1

    .line 688
    .line 689
    move-object v1, v8

    .line 690
    move-object/from16 v63, p2

    .line 691
    .line 692
    move-object/from16 p2, v2

    .line 693
    .line 694
    move-object/from16 v106, v24

    .line 695
    .line 696
    move-object/from16 v24, v10

    .line 697
    .line 698
    move-object/from16 v10, v106

    .line 699
    .line 700
    move/from16 v64, v13

    .line 701
    .line 702
    move-object v13, v3

    .line 703
    move-object/from16 v3, v33

    .line 704
    .line 705
    move-object/from16 v65, v10

    .line 706
    .line 707
    move-object/from16 v17, v15

    .line 708
    .line 709
    move-object/from16 v10, v26

    .line 710
    .line 711
    move-object/from16 v15, v39

    .line 712
    .line 713
    move/from16 v26, v4

    .line 714
    .line 715
    move/from16 v4, v62

    .line 716
    .line 717
    move/from16 v66, v7

    .line 718
    .line 719
    move-object/from16 v67, v27

    .line 720
    .line 721
    move v7, v5

    .line 722
    move/from16 v27, v11

    .line 723
    .line 724
    move-object/from16 v11, v38

    .line 725
    .line 726
    move/from16 v5, v16

    .line 727
    .line 728
    move-object/from16 v16, v15

    .line 729
    .line 730
    move-object/from16 v68, v30

    .line 731
    .line 732
    move-object/from16 v15, v36

    .line 733
    .line 734
    move/from16 v30, v37

    .line 735
    .line 736
    move-object/from16 v36, v13

    .line 737
    .line 738
    move-object v13, v6

    .line 739
    move-object/from16 v106, v35

    .line 740
    .line 741
    move-object/from16 v35, v11

    .line 742
    .line 743
    move-object/from16 v11, v106

    .line 744
    .line 745
    move/from16 v6, v55

    .line 746
    .line 747
    invoke-virtual/range {v0 .. v6}, Lcom/sgscq/vpn/t5;->n(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/lang/String;III)Ljava/util/LinkedHashMap;

    .line 748
    .line 749
    .line 750
    move-result-object v0

    .line 751
    new-instance v1, Ljava/util/ArrayList;

    .line 752
    .line 753
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    .line 758
    .line 759
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    .line 761
    .line 762
    iget-object v2, v13, Lcom/sgscq/vpn/j5;->b:Ljava/lang/String;

    .line 763
    .line 764
    invoke-virtual {v12, v2}, Lcom/sgscq/vpn/n5;->m(Ljava/lang/String;)Z

    .line 765
    .line 766
    .line 767
    move-result v3

    .line 768
    if-nez v3, :cond_b

    .line 769
    .line 770
    add-int v2, v7, v9

    .line 771
    .line 772
    iget-object v3, v12, Lcom/sgscq/vpn/n5;->c:Ljava/util/LinkedHashMap;

    .line 773
    .line 774
    iget v4, v13, Lcom/sgscq/vpn/j5;->c:I

    .line 775
    .line 776
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 777
    .line 778
    .line 779
    move-result-object v4

    .line 780
    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    .line 782
    .line 783
    move-result-object v3

    .line 784
    check-cast v3, Ljava/util/List;

    .line 785
    .line 786
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 787
    .line 788
    .line 789
    move-result-object v4

    .line 790
    invoke-static {v2, v3, v4}, Lcom/sgscq/vpn/n5;->p(ILjava/util/List;Ljava/util/Set;)Ljava/lang/String;

    .line 791
    .line 792
    .line 793
    move-result-object v2

    .line 794
    :cond_b
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 795
    .line 796
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 797
    .line 798
    .line 799
    new-instance v4, Ljava/lang/StringBuilder;

    .line 800
    .line 801
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 802
    .line 803
    .line 804
    move-object/from16 v12, p2

    .line 805
    .line 806
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    const-string v5, "_fate"

    .line 810
    .line 811
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    .line 813
    .line 814
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v4

    .line 818
    invoke-interface {v3, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    invoke-interface {v3, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    const-string v4, "skill_id"

    .line 825
    .line 826
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    .line 828
    .line 829
    const-string v4, "id"

    .line 830
    .line 831
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    const-string v4, "2"

    .line 835
    .line 836
    move-object/from16 v6, v34

    .line 837
    .line 838
    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    const-string v5, "pos"

    .line 842
    .line 843
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    .line 845
    .line 846
    const-string v5, "skill_position"

    .line 847
    .line 848
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    const/4 v4, 0x1

    .line 852
    move/from16 v6, v62

    .line 853
    .line 854
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 855
    .line 856
    .line 857
    move-result v4

    .line 858
    const/16 v5, 0x1e

    .line 859
    .line 860
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    .line 861
    .line 862
    .line 863
    move-result v4

    .line 864
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 865
    .line 866
    .line 867
    move-result-object v4

    .line 868
    const-string v5, "level"

    .line 869
    .line 870
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    .line 872
    .line 873
    const/4 v4, 0x1

    .line 874
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 875
    .line 876
    .line 877
    move-result v4

    .line 878
    const/16 v5, 0x1e

    .line 879
    .line 880
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    .line 881
    .line 882
    .line 883
    move-result v4

    .line 884
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 885
    .line 886
    .line 887
    move-result-object v4

    .line 888
    const-string v5, "skill_level"

    .line 889
    .line 890
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    .line 892
    .line 893
    const-string v4, "4"

    .line 894
    .line 895
    const-string v5, "card_type"

    .line 896
    .line 897
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    .line 899
    .line 900
    const-string v4, "is_natural"

    .line 901
    .line 902
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 903
    .line 904
    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    .line 906
    .line 907
    const-string v4, "1"

    .line 908
    .line 909
    const-string v6, "get_time"

    .line 910
    .line 911
    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    .line 913
    .line 914
    const-string v4, "exp"

    .line 915
    .line 916
    move-object/from16 p2, v6

    .line 917
    .line 918
    const-string v6, "0"

    .line 919
    .line 920
    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    .line 922
    .line 923
    const-string v4, "extra_level"

    .line 924
    .line 925
    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    .line 927
    .line 928
    const-string v4, "advanced_level"

    .line 929
    .line 930
    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    .line 932
    .line 933
    invoke-virtual {v8, v2, v3}, Lcom/sgscq/vpn/w1;->S(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 934
    .line 935
    .line 936
    iget v4, v13, Lcom/sgscq/vpn/j5;->c:I

    .line 937
    .line 938
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 939
    .line 940
    .line 941
    move-result-object v4

    .line 942
    const-string v6, "skill_type"

    .line 943
    .line 944
    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    .line 946
    .line 947
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 948
    .line 949
    .line 950
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 951
    .line 952
    .line 953
    invoke-virtual {v0, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    .line 955
    .line 956
    move-result-object v0

    .line 957
    move-object/from16 v6, v36

    .line 958
    .line 959
    invoke-interface {v14, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    .line 961
    .line 962
    move-object/from16 v0, v16

    .line 963
    .line 964
    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    .line 966
    .line 967
    move-object/from16 v4, v35

    .line 968
    .line 969
    invoke-interface {v14, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    .line 971
    .line 972
    if-eqz v32, :cond_c

    .line 973
    .line 974
    new-instance v1, Ljava/util/ArrayList;

    .line 975
    .line 976
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 977
    .line 978
    .line 979
    move-object/from16 v16, v0

    .line 980
    .line 981
    move-object/from16 v71, v2

    .line 982
    .line 983
    move-object/from16 v34, v6

    .line 984
    .line 985
    move-object/from16 v70, v8

    .line 986
    .line 987
    move-object/from16 v35, v10

    .line 988
    .line 989
    move-object/from16 v69, v13

    .line 990
    .line 991
    move-object v0, v14

    .line 992
    move-object/from16 v73, v17

    .line 993
    .line 994
    move/from16 v10, v27

    .line 995
    .line 996
    move-object/from16 v11, v65

    .line 997
    .line 998
    move-object/from16 v27, v4

    .line 999
    .line 1000
    move v13, v7

    .line 1001
    move/from16 v4, v66

    .line 1002
    .line 1003
    :goto_a
    move-object/from16 v66, v12

    .line 1004
    .line 1005
    goto/16 :goto_16

    .line 1006
    .line 1007
    :cond_c
    const/16 v1, 0x14

    .line 1008
    .line 1009
    const-wide v18, 0x3fd6666666666666L    # 0.35

    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    const-wide/high16 v20, 0x3fd0000000000000L    # 0.25

    .line 1015
    .line 1016
    move/from16 v3, v27

    .line 1017
    .line 1018
    if-ge v3, v1, :cond_d

    .line 1019
    .line 1020
    const/4 v1, 0x0

    .line 1021
    move-object/from16 v16, v0

    .line 1022
    .line 1023
    move-object/from16 v27, v4

    .line 1024
    .line 1025
    move-object/from16 v69, v13

    .line 1026
    .line 1027
    move-object/from16 v36, v14

    .line 1028
    .line 1029
    move-object v4, v2

    .line 1030
    goto :goto_b

    .line 1031
    :cond_d
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/t5;->s(I)D

    .line 1032
    .line 1033
    .line 1034
    move-result-wide v34

    .line 1035
    const/16 v1, 0x17

    .line 1036
    .line 1037
    move-object/from16 v16, v0

    .line 1038
    .line 1039
    const/4 v0, -0x1

    .line 1040
    move-object/from16 v27, v4

    .line 1041
    .line 1042
    const/4 v4, 0x1

    .line 1043
    invoke-static {v7, v9, v1, v0, v4}, Lcom/sgscq/vpn/t5;->d(IIIII)I

    .line 1044
    .line 1045
    .line 1046
    move-result v0

    .line 1047
    add-int/lit8 v1, v3, -0x14

    .line 1048
    .line 1049
    move-object v4, v2

    .line 1050
    int-to-double v1, v1

    .line 1051
    const-wide/high16 v36, 0x4054000000000000L    # 80.0

    .line 1052
    .line 1053
    div-double v1, v1, v36

    .line 1054
    .line 1055
    move-object/from16 v69, v13

    .line 1056
    .line 1057
    move-object/from16 v36, v14

    .line 1058
    .line 1059
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 1060
    .line 1061
    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->min(DD)D

    .line 1062
    .line 1063
    .line 1064
    move-result-wide v1

    .line 1065
    const-wide/16 v13, 0x0

    .line 1066
    .line 1067
    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->max(DD)D

    .line 1068
    .line 1069
    .line 1070
    move-result-wide v1

    .line 1071
    const-wide v13, 0x3ff6666666666666L    # 1.4

    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    mul-double/2addr v1, v13

    .line 1077
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 1078
    .line 1079
    add-double/2addr v1, v13

    .line 1080
    const-wide v13, 0x3ffccccccccccccdL    # 1.8

    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    mul-double v13, v13, v34

    .line 1086
    .line 1087
    add-double/2addr v13, v1

    .line 1088
    int-to-double v1, v9

    .line 1089
    mul-double v1, v1, v20

    .line 1090
    .line 1091
    sub-double/2addr v13, v1

    .line 1092
    int-to-double v0, v0

    .line 1093
    mul-double v0, v0, v18

    .line 1094
    .line 1095
    add-double/2addr v0, v13

    .line 1096
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 1097
    .line 1098
    .line 1099
    move-result-wide v0

    .line 1100
    double-to-int v0, v0

    .line 1101
    const/16 v1, 0x5a

    .line 1102
    .line 1103
    if-lt v3, v1, :cond_e

    .line 1104
    .line 1105
    const-wide v1, 0x3fee666666666666L    # 0.95

    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    cmpl-double v1, v34, v1

    .line 1111
    .line 1112
    if-ltz v1, :cond_e

    .line 1113
    .line 1114
    const/4 v1, 0x3

    .line 1115
    if-ge v9, v1, :cond_e

    .line 1116
    .line 1117
    const/4 v0, 0x4

    .line 1118
    :cond_e
    const/4 v1, 0x4

    .line 1119
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 1120
    .line 1121
    .line 1122
    move-result v0

    .line 1123
    const/4 v1, 0x0

    .line 1124
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 1125
    .line 1126
    .line 1127
    move-result v1

    .line 1128
    :goto_b
    if-gtz v1, :cond_f

    .line 1129
    .line 1130
    new-instance v1, Ljava/util/ArrayList;

    .line 1131
    .line 1132
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1133
    .line 1134
    .line 1135
    move-object/from16 v71, v4

    .line 1136
    .line 1137
    move-object/from16 v34, v6

    .line 1138
    .line 1139
    move v13, v7

    .line 1140
    move-object/from16 v70, v8

    .line 1141
    .line 1142
    move-object/from16 v35, v10

    .line 1143
    .line 1144
    move-object/from16 v73, v17

    .line 1145
    .line 1146
    move-object/from16 v0, v36

    .line 1147
    .line 1148
    move-object/from16 v11, v65

    .line 1149
    .line 1150
    move/from16 v4, v66

    .line 1151
    .line 1152
    move v10, v3

    .line 1153
    goto/16 :goto_a

    .line 1154
    .line 1155
    :cond_f
    mul-int/lit8 v0, v3, 0x3

    .line 1156
    .line 1157
    const/4 v2, 0x1

    .line 1158
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 1159
    .line 1160
    .line 1161
    move-result v0

    .line 1162
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/t5;->s(I)D

    .line 1163
    .line 1164
    .line 1165
    move-result-wide v13

    .line 1166
    const/16 v2, -0xc

    .line 1167
    .line 1168
    move-object/from16 v34, v6

    .line 1169
    .line 1170
    const/16 v6, 0xc

    .line 1171
    .line 1172
    move-object/from16 v35, v10

    .line 1173
    .line 1174
    const/16 v10, 0x1f

    .line 1175
    .line 1176
    invoke-static {v7, v9, v10, v2, v6}, Lcom/sgscq/vpn/t5;->d(IIIII)I

    .line 1177
    .line 1178
    .line 1179
    move-result v2

    .line 1180
    const-wide v37, 0x3fe199999999999aL    # 0.55

    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    mul-double v37, v37, v13

    .line 1186
    .line 1187
    add-double v37, v37, v18

    .line 1188
    .line 1189
    int-to-double v6, v9

    .line 1190
    const-wide v39, 0x3fa1eb851eb851ecL    # 0.035

    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    mul-double v39, v39, v6

    .line 1196
    .line 1197
    sub-double v37, v37, v39

    .line 1198
    .line 1199
    move-wide/from16 v45, v6

    .line 1200
    .line 1201
    int-to-double v6, v0

    .line 1202
    mul-double v6, v6, v37

    .line 1203
    .line 1204
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    .line 1205
    .line 1206
    .line 1207
    move-result-wide v6

    .line 1208
    long-to-int v6, v6

    .line 1209
    add-int/2addr v6, v2

    .line 1210
    const/16 v2, 0x5a

    .line 1211
    .line 1212
    if-lt v3, v2, :cond_10

    .line 1213
    .line 1214
    const-wide v37, 0x3fef5c28f5c28f5cL    # 0.98

    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    cmpl-double v2, v13, v37

    .line 1220
    .line 1221
    if-ltz v2, :cond_10

    .line 1222
    .line 1223
    if-nez v9, :cond_10

    .line 1224
    .line 1225
    move v6, v0

    .line 1226
    :cond_10
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    .line 1227
    .line 1228
    .line 1229
    move-result v0

    .line 1230
    const/4 v2, 0x1

    .line 1231
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 1232
    .line 1233
    .line 1234
    move-result v0

    .line 1235
    sget-object v6, Lcom/sgscq/vpn/handler/p0;->a:[Ljava/lang/String;

    .line 1236
    .line 1237
    const/16 v37, 0x0

    .line 1238
    .line 1239
    add-int/lit8 v7, v66, -0x1

    .line 1240
    .line 1241
    const/4 v6, 0x0

    .line 1242
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 1243
    .line 1244
    .line 1245
    move-result v38

    .line 1246
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 1247
    .line 1248
    .line 1249
    move-result v39

    .line 1250
    const/16 v40, 0x64

    .line 1251
    .line 1252
    move-object/from16 v41, v33

    .line 1253
    .line 1254
    move-object/from16 v42, v12

    .line 1255
    .line 1256
    invoke-static/range {v37 .. v42}, Lcom/sgscq/vpn/handler/p0;->p(IIIILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1257
    .line 1258
    .line 1259
    move-result-object v0

    .line 1260
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1261
    .line 1262
    .line 1263
    move-result v2

    .line 1264
    if-le v2, v1, :cond_11

    .line 1265
    .line 1266
    new-instance v2, Ljava/util/ArrayList;

    .line 1267
    .line 1268
    const/4 v6, 0x0

    .line 1269
    invoke-virtual {v0, v6, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v0

    .line 1273
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1274
    .line 1275
    .line 1276
    move-object v1, v2

    .line 1277
    goto :goto_c

    .line 1278
    :cond_11
    move-object v1, v0

    .line 1279
    :goto_c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v0

    .line 1283
    move/from16 v2, p1

    .line 1284
    .line 1285
    move v6, v9

    .line 1286
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1287
    .line 1288
    .line 1289
    move-result v7

    .line 1290
    if-eqz v7, :cond_22

    .line 1291
    .line 1292
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v7

    .line 1296
    check-cast v7, Ljava/util/Map;

    .line 1297
    .line 1298
    const-string v10, "equipment_type"

    .line 1299
    .line 1300
    const-string v13, "1"

    .line 1301
    .line 1302
    const-string v14, "equipment_pos"

    .line 1303
    .line 1304
    move-object/from16 v37, v0

    .line 1305
    .line 1306
    invoke-static {v7, v10, v13, v14}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v0

    .line 1310
    move-object/from16 v38, v1

    .line 1311
    .line 1312
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1313
    .line 1314
    move-object/from16 v70, v8

    .line 1315
    .line 1316
    move-object/from16 v8, v44

    .line 1317
    .line 1318
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1319
    .line 1320
    .line 1321
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1322
    .line 1323
    .line 1324
    move-object/from16 v71, v4

    .line 1325
    .line 1326
    const-string v4, "_eq_"

    .line 1327
    .line 1328
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    .line 1330
    .line 1331
    move/from16 v4, v66

    .line 1332
    .line 1333
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1334
    .line 1335
    .line 1336
    move-object/from16 v66, v12

    .line 1337
    .line 1338
    const-string v12, "_"

    .line 1339
    .line 1340
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    .line 1342
    .line 1343
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    .line 1345
    .line 1346
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v0

    .line 1350
    invoke-interface {v7, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    .line 1352
    .line 1353
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1354
    .line 1355
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1356
    .line 1357
    .line 1358
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1359
    .line 1360
    .line 1361
    move-object/from16 v1, v43

    .line 1362
    .line 1363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    .line 1365
    .line 1366
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1367
    .line 1368
    .line 1369
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v0

    .line 1373
    invoke-interface {v7, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    .line 1375
    .line 1376
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1377
    .line 1378
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1379
    .line 1380
    .line 1381
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1382
    .line 1383
    .line 1384
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1385
    .line 1386
    .line 1387
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1388
    .line 1389
    .line 1390
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v0

    .line 1394
    move-object/from16 v39, v11

    .line 1395
    .line 1396
    const-string v11, "general_id"

    .line 1397
    .line 1398
    invoke-interface {v7, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    .line 1400
    .line 1401
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1402
    .line 1403
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1404
    .line 1405
    .line 1406
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1407
    .line 1408
    .line 1409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1410
    .line 1411
    .line 1412
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1413
    .line 1414
    .line 1415
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v0

    .line 1419
    const-string v11, "user_general_id"

    .line 1420
    .line 1421
    invoke-interface {v7, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    .line 1423
    .line 1424
    const-string v0, "3"

    .line 1425
    .line 1426
    invoke-interface {v7, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    .line 1428
    .line 1429
    move-object/from16 v0, p2

    .line 1430
    .line 1431
    invoke-interface {v7, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    .line 1433
    .line 1434
    const-string v11, "exp"

    .line 1435
    .line 1436
    const-string v0, "0"

    .line 1437
    .line 1438
    invoke-interface {v7, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    .line 1440
    .line 1441
    const-string v0, "refine_bonus_type"

    .line 1442
    .line 1443
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    .line 1445
    .line 1446
    move-result-object v0

    .line 1447
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v0

    .line 1451
    const-string v11, "shangshen_jinglian_up"

    .line 1452
    .line 1453
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1454
    .line 1455
    .line 1456
    move-result v11

    .line 1457
    if-nez v11, :cond_18

    .line 1458
    .line 1459
    const-string v11, "zhongshen_jinglian_up"

    .line 1460
    .line 1461
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1462
    .line 1463
    .line 1464
    move-result v11

    .line 1465
    if-nez v11, :cond_18

    .line 1466
    .line 1467
    const-string v11, "xiashen_jinglian_up"

    .line 1468
    .line 1469
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1470
    .line 1471
    .line 1472
    move-result v11

    .line 1473
    if-eqz v11, :cond_12

    .line 1474
    .line 1475
    goto :goto_f

    .line 1476
    :cond_12
    const-string v11, "shangjin_jinglian_up"

    .line 1477
    .line 1478
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1479
    .line 1480
    .line 1481
    move-result v11

    .line 1482
    if-nez v11, :cond_17

    .line 1483
    .line 1484
    const-string v11, "xiajin_jinglian_up"

    .line 1485
    .line 1486
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1487
    .line 1488
    .line 1489
    move-result v11

    .line 1490
    if-nez v11, :cond_17

    .line 1491
    .line 1492
    const-string v11, "liejin_jinglian_up"

    .line 1493
    .line 1494
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1495
    .line 1496
    .line 1497
    move-result v11

    .line 1498
    if-nez v11, :cond_17

    .line 1499
    .line 1500
    const-string v11, "zhongjin_jinglian_up"

    .line 1501
    .line 1502
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1503
    .line 1504
    .line 1505
    move-result v11

    .line 1506
    if-eqz v11, :cond_13

    .line 1507
    .line 1508
    goto :goto_e

    .line 1509
    :cond_13
    const-string v11, "zhongyin_jinglian_up"

    .line 1510
    .line 1511
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1512
    .line 1513
    .line 1514
    move-result v11

    .line 1515
    if-eqz v11, :cond_14

    .line 1516
    .line 1517
    const/4 v0, 0x3

    .line 1518
    goto :goto_10

    .line 1519
    :cond_14
    const-string v11, "xiayin_jinglian_up"

    .line 1520
    .line 1521
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1522
    .line 1523
    .line 1524
    move-result v11

    .line 1525
    if-eqz v11, :cond_15

    .line 1526
    .line 1527
    const/4 v0, 0x2

    .line 1528
    goto :goto_10

    .line 1529
    :cond_15
    const-string v11, "shangyin_jinglian_up"

    .line 1530
    .line 1531
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1532
    .line 1533
    .line 1534
    move-result v11

    .line 1535
    if-eqz v11, :cond_16

    .line 1536
    .line 1537
    const/4 v0, 0x4

    .line 1538
    goto :goto_10

    .line 1539
    :cond_16
    const-string v11, "tong_jinglian_up"

    .line 1540
    .line 1541
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1542
    .line 1543
    .line 1544
    const/4 v0, 0x1

    .line 1545
    goto :goto_10

    .line 1546
    :cond_17
    :goto_e
    const/16 v0, 0x8

    .line 1547
    .line 1548
    goto :goto_10

    .line 1549
    :cond_18
    :goto_f
    const/16 v0, 0xb

    .line 1550
    .line 1551
    :goto_10
    if-gtz v0, :cond_19

    .line 1552
    .line 1553
    const/4 v0, 0x1

    .line 1554
    :cond_19
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/t5;->s(I)D

    .line 1555
    .line 1556
    .line 1557
    move-result-wide v40

    .line 1558
    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1559
    .line 1560
    .line 1561
    move-result-object v11

    .line 1562
    move-object/from16 v43, v1

    .line 1563
    .line 1564
    const/4 v1, 0x1

    .line 1565
    invoke-static {v11, v1}, Lcom/sgscq/vpn/t5;->i(Ljava/lang/Object;I)I

    .line 1566
    .line 1567
    .line 1568
    move-result v11

    .line 1569
    move-object/from16 v42, v5

    .line 1570
    .line 1571
    const/4 v5, -0x1

    .line 1572
    invoke-static {v2, v6, v11, v5, v1}, Lcom/sgscq/vpn/t5;->d(IIIII)I

    .line 1573
    .line 1574
    .line 1575
    move-result v1

    .line 1576
    const/16 v5, 0x1e

    .line 1577
    .line 1578
    if-ge v3, v5, :cond_1a

    .line 1579
    .line 1580
    const-wide/16 v40, 0x0

    .line 1581
    .line 1582
    move v11, v6

    .line 1583
    goto :goto_11

    .line 1584
    :cond_1a
    const-wide v47, 0x3fe28f5c28f5c28fL    # 0.58

    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    mul-double v40, v40, v47

    .line 1590
    .line 1591
    const-wide v47, 0x3fc70a3d70a3d70aL    # 0.18

    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    add-double v40, v40, v47

    .line 1597
    .line 1598
    move v11, v6

    .line 1599
    int-to-double v5, v3

    .line 1600
    div-double v5, v5, v28

    .line 1601
    .line 1602
    mul-double v5, v5, v47

    .line 1603
    .line 1604
    add-double v5, v5, v40

    .line 1605
    .line 1606
    const-wide v40, 0x3fa47ae147ae147bL    # 0.04

    .line 1607
    .line 1608
    .line 1609
    .line 1610
    .line 1611
    mul-double v40, v40, v45

    .line 1612
    .line 1613
    sub-double v40, v5, v40

    .line 1614
    .line 1615
    :goto_11
    int-to-double v5, v0

    .line 1616
    mul-double v5, v5, v40

    .line 1617
    .line 1618
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    .line 1619
    .line 1620
    .line 1621
    move-result-wide v5

    .line 1622
    long-to-int v5, v5

    .line 1623
    add-int/2addr v5, v1

    .line 1624
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    .line 1625
    .line 1626
    .line 1627
    move-result v0

    .line 1628
    const/4 v1, 0x1

    .line 1629
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 1630
    .line 1631
    .line 1632
    move-result v0

    .line 1633
    const-string v5, "refine_level"

    .line 1634
    .line 1635
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1636
    .line 1637
    .line 1638
    move-result-object v0

    .line 1639
    invoke-interface {v7, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1640
    .line 1641
    .line 1642
    const/16 v0, 0x28

    .line 1643
    .line 1644
    if-ge v3, v0, :cond_1b

    .line 1645
    .line 1646
    move/from16 v13, p1

    .line 1647
    .line 1648
    move v10, v3

    .line 1649
    move v6, v11

    .line 1650
    move-object/from16 v73, v17

    .line 1651
    .line 1652
    move-wide/from16 v40, v45

    .line 1653
    .line 1654
    move-object/from16 v11, v65

    .line 1655
    .line 1656
    goto/16 :goto_15

    .line 1657
    .line 1658
    :cond_1b
    invoke-interface {v7, v10, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1659
    .line 1660
    .line 1661
    move-result-object v0

    .line 1662
    invoke-interface {v7, v14, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1663
    .line 1664
    .line 1665
    move-result-object v0

    .line 1666
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1667
    .line 1668
    .line 1669
    move-result-object v0

    .line 1670
    invoke-static {v0, v1}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 1671
    .line 1672
    .line 1673
    move-result v0

    .line 1674
    const/4 v2, 0x4

    .line 1675
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 1676
    .line 1677
    .line 1678
    move-result v0

    .line 1679
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 1680
    .line 1681
    .line 1682
    move-result v0

    .line 1683
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/t5;->s(I)D

    .line 1684
    .line 1685
    .line 1686
    move-result-wide v1

    .line 1687
    add-int/lit8 v11, v3, -0x28

    .line 1688
    .line 1689
    int-to-double v5, v11

    .line 1690
    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    .line 1691
    .line 1692
    div-double/2addr v5, v10

    .line 1693
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 1694
    .line 1695
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->min(DD)D

    .line 1696
    .line 1697
    .line 1698
    move-result-wide v10

    .line 1699
    const-wide/16 v13, 0x0

    .line 1700
    .line 1701
    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->max(DD)D

    .line 1702
    .line 1703
    .line 1704
    move-result-wide v10

    .line 1705
    const-wide v13, 0x400599999999999aL    # 2.7

    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    mul-double/2addr v1, v13

    .line 1711
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 1712
    .line 1713
    add-double/2addr v1, v13

    .line 1714
    const-wide v13, 0x3ff6666666666666L    # 1.4

    .line 1715
    .line 1716
    .line 1717
    .line 1718
    .line 1719
    mul-double/2addr v10, v13

    .line 1720
    add-double/2addr v10, v1

    .line 1721
    mul-double v1, v45, v20

    .line 1722
    .line 1723
    sub-double/2addr v10, v1

    .line 1724
    const/4 v1, -0x1

    .line 1725
    const/4 v2, 0x1

    .line 1726
    move/from16 v13, p1

    .line 1727
    .line 1728
    move-wide/from16 v40, v45

    .line 1729
    .line 1730
    invoke-static {v13, v9, v0, v1, v2}, Lcom/sgscq/vpn/t5;->d(IIIII)I

    .line 1731
    .line 1732
    .line 1733
    move-result v1

    .line 1734
    move/from16 v72, v3

    .line 1735
    .line 1736
    int-to-double v2, v1

    .line 1737
    mul-double v2, v2, v20

    .line 1738
    .line 1739
    add-double/2addr v2, v10

    .line 1740
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    .line 1741
    .line 1742
    .line 1743
    move-result-wide v1

    .line 1744
    double-to-int v1, v1

    .line 1745
    const/4 v2, 0x5

    .line 1746
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 1747
    .line 1748
    .line 1749
    move-result v1

    .line 1750
    const/4 v2, 0x1

    .line 1751
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 1752
    .line 1753
    .line 1754
    move-result v1

    .line 1755
    new-instance v3, Ljava/util/ArrayList;

    .line 1756
    .line 1757
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1758
    .line 1759
    .line 1760
    move v10, v2

    .line 1761
    :goto_12
    if-gt v2, v1, :cond_21

    .line 1762
    .line 1763
    const/4 v11, 0x3

    .line 1764
    if-ne v0, v11, :cond_1c

    .line 1765
    .line 1766
    move-object/from16 v106, v17

    .line 1767
    .line 1768
    move/from16 v17, v1

    .line 1769
    .line 1770
    move v1, v11

    .line 1771
    move-object/from16 v11, v106

    .line 1772
    .line 1773
    goto :goto_13

    .line 1774
    :cond_1c
    move-object/from16 v11, v17

    .line 1775
    .line 1776
    iget v14, v11, Lcom/sgscq/vpn/m5;->a:I

    .line 1777
    .line 1778
    move/from16 v17, v1

    .line 1779
    .line 1780
    const/4 v1, 0x4

    .line 1781
    invoke-static {v1, v14}, Ljava/lang/Math;->min(II)I

    .line 1782
    .line 1783
    .line 1784
    move-result v1

    .line 1785
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    .line 1786
    .line 1787
    .line 1788
    move-result v1

    .line 1789
    :goto_13
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/t5;->s(I)D

    .line 1790
    .line 1791
    .line 1792
    move-result-wide v44

    .line 1793
    mul-int/lit8 v10, v13, 0x25

    .line 1794
    .line 1795
    mul-int/lit8 v14, v9, 0xb

    .line 1796
    .line 1797
    add-int/2addr v14, v10

    .line 1798
    mul-int/lit8 v10, v0, 0x5

    .line 1799
    .line 1800
    add-int/2addr v10, v14

    .line 1801
    mul-int/lit8 v14, v2, 0x7

    .line 1802
    .line 1803
    add-int/2addr v14, v10

    .line 1804
    const/16 v10, 0x64

    .line 1805
    .line 1806
    invoke-static {v14, v10}, Ljava/lang/Math;->floorMod(II)I

    .line 1807
    .line 1808
    .line 1809
    move-result v10

    .line 1810
    const-wide v46, 0x3feb333333333333L    # 0.85

    .line 1811
    .line 1812
    .line 1813
    .line 1814
    .line 1815
    cmpl-double v14, v44, v46

    .line 1816
    .line 1817
    if-ltz v14, :cond_1e

    .line 1818
    .line 1819
    const/16 v14, 0x55

    .line 1820
    .line 1821
    if-ge v10, v14, :cond_1d

    .line 1822
    .line 1823
    goto :goto_14

    .line 1824
    :cond_1d
    const/4 v1, 0x3

    .line 1825
    goto :goto_14

    .line 1826
    :cond_1e
    const/16 v14, 0x37

    .line 1827
    .line 1828
    if-ge v10, v14, :cond_1f

    .line 1829
    .line 1830
    goto :goto_14

    .line 1831
    :cond_1f
    add-int v1, v13, v9

    .line 1832
    .line 1833
    add-int/2addr v1, v0

    .line 1834
    add-int/2addr v1, v2

    .line 1835
    const/4 v10, 0x4

    .line 1836
    invoke-static {v1, v10}, Ljava/lang/Math;->floorMod(II)I

    .line 1837
    .line 1838
    .line 1839
    move-result v1

    .line 1840
    add-int/lit8 v1, v1, 0x1

    .line 1841
    .line 1842
    :goto_14
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/t5;->s(I)D

    .line 1843
    .line 1844
    .line 1845
    move-result-wide v44

    .line 1846
    move-object/from16 v73, v11

    .line 1847
    .line 1848
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 1849
    .line 1850
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->min(DD)D

    .line 1851
    .line 1852
    .line 1853
    move-result-wide v10

    .line 1854
    move-wide/from16 v46, v5

    .line 1855
    .line 1856
    const-wide/16 v5, 0x0

    .line 1857
    .line 1858
    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->max(DD)D

    .line 1859
    .line 1860
    .line 1861
    move-result-wide v5

    .line 1862
    const/4 v10, -0x1

    .line 1863
    const/4 v11, 0x1

    .line 1864
    invoke-static {v13, v9, v2, v10, v11}, Lcom/sgscq/vpn/t5;->d(IIIII)I

    .line 1865
    .line 1866
    .line 1867
    move-result v10

    .line 1868
    const-wide/high16 v48, 0x4016000000000000L    # 5.5

    .line 1869
    .line 1870
    mul-double v48, v48, v44

    .line 1871
    .line 1872
    const-wide/high16 v50, 0x3ff0000000000000L    # 1.0

    .line 1873
    .line 1874
    add-double v48, v48, v50

    .line 1875
    .line 1876
    const-wide v50, 0x400199999999999aL    # 2.2

    .line 1877
    .line 1878
    .line 1879
    .line 1880
    .line 1881
    mul-double v5, v5, v50

    .line 1882
    .line 1883
    add-double v5, v5, v48

    .line 1884
    .line 1885
    mul-double v48, v40, v18

    .line 1886
    .line 1887
    sub-double v5, v5, v48

    .line 1888
    .line 1889
    int-to-double v10, v10

    .line 1890
    add-double/2addr v5, v10

    .line 1891
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    .line 1892
    .line 1893
    .line 1894
    move-result-wide v5

    .line 1895
    long-to-int v5, v5

    .line 1896
    const/16 v6, 0x5a

    .line 1897
    .line 1898
    move/from16 v10, v72

    .line 1899
    .line 1900
    if-lt v10, v6, :cond_20

    .line 1901
    .line 1902
    const-wide v48, 0x3fef5c28f5c28f5cL    # 0.98

    .line 1903
    .line 1904
    .line 1905
    .line 1906
    .line 1907
    cmpl-double v6, v44, v48

    .line 1908
    .line 1909
    if-ltz v6, :cond_20

    .line 1910
    .line 1911
    if-nez v9, :cond_20

    .line 1912
    .line 1913
    const/16 v6, 0x8

    .line 1914
    .line 1915
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 1916
    .line 1917
    .line 1918
    move-result v5

    .line 1919
    :cond_20
    const/16 v6, 0x9

    .line 1920
    .line 1921
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    .line 1922
    .line 1923
    .line 1924
    move-result v5

    .line 1925
    const/4 v6, 0x1

    .line 1926
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 1927
    .line 1928
    .line 1929
    move-result v5

    .line 1930
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1931
    .line 1932
    const-string v11, "60"

    .line 1933
    .line 1934
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1935
    .line 1936
    .line 1937
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1938
    .line 1939
    .line 1940
    const-string v11, "00"

    .line 1941
    .line 1942
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1943
    .line 1944
    .line 1945
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1946
    .line 1947
    .line 1948
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1949
    .line 1950
    .line 1951
    move-result-object v79

    .line 1952
    move-object/from16 v83, v79

    .line 1953
    .line 1954
    move-object/from16 v85, v79

    .line 1955
    .line 1956
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1957
    .line 1958
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1959
    .line 1960
    .line 1961
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1962
    .line 1963
    .line 1964
    const-string v11, "_gem_"

    .line 1965
    .line 1966
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1967
    .line 1968
    .line 1969
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1970
    .line 1971
    .line 1972
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1973
    .line 1974
    .line 1975
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1976
    .line 1977
    .line 1978
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1979
    .line 1980
    .line 1981
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1982
    .line 1983
    .line 1984
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1985
    .line 1986
    .line 1987
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1988
    .line 1989
    .line 1990
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1991
    .line 1992
    .line 1993
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1994
    .line 1995
    .line 1996
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1997
    .line 1998
    .line 1999
    move-result-object v6

    .line 2000
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 2001
    .line 2002
    .line 2003
    move-result-object v11

    .line 2004
    const-string v74, "bore_type"

    .line 2005
    .line 2006
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 2007
    .line 2008
    .line 2009
    move-result-object v75

    .line 2010
    const-string v76, "user_gem_id"

    .line 2011
    .line 2012
    const-string v78, "gem_id"

    .line 2013
    .line 2014
    const-string v80, "is_lock"

    .line 2015
    .line 2016
    const/4 v14, 0x0

    .line 2017
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2018
    .line 2019
    .line 2020
    move-result-object v81

    .line 2021
    move-object/from16 v77, v6

    .line 2022
    .line 2023
    filled-new-array/range {v74 .. v81}, [Ljava/lang/Object;

    .line 2024
    .line 2025
    .line 2026
    move-result-object v14

    .line 2027
    move/from16 v44, v0

    .line 2028
    .line 2029
    const-string v0, "bore_id"

    .line 2030
    .line 2031
    invoke-static {v0, v11, v14}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 2032
    .line 2033
    .line 2034
    move-result-object v0

    .line 2035
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2036
    .line 2037
    .line 2038
    const-string v82, "id"

    .line 2039
    .line 2040
    const-string v84, "gem_id"

    .line 2041
    .line 2042
    const-string v86, "level"

    .line 2043
    .line 2044
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2045
    .line 2046
    .line 2047
    move-result-object v87

    .line 2048
    const-string v88, "gem_level"

    .line 2049
    .line 2050
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2051
    .line 2052
    .line 2053
    move-result-object v89

    .line 2054
    const-string v90, "type"

    .line 2055
    .line 2056
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2057
    .line 2058
    .line 2059
    move-result-object v91

    .line 2060
    const-string v92, "num"

    .line 2061
    .line 2062
    const/4 v0, 0x1

    .line 2063
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2064
    .line 2065
    .line 2066
    move-result-object v93

    .line 2067
    const-string v94, "total_num"

    .line 2068
    .line 2069
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2070
    .line 2071
    .line 2072
    move-result-object v95

    .line 2073
    const-string v96, "used_num"

    .line 2074
    .line 2075
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2076
    .line 2077
    .line 2078
    move-result-object v97

    .line 2079
    const-string v98, "card_type"

    .line 2080
    .line 2081
    const-string v99, "5"

    .line 2082
    .line 2083
    const-string v100, "get_time"

    .line 2084
    .line 2085
    const-string v101, "1"

    .line 2086
    .line 2087
    const-string v102, "exp"

    .line 2088
    .line 2089
    const-string v103, "0"

    .line 2090
    .line 2091
    filled-new-array/range {v82 .. v103}, [Ljava/lang/Object;

    .line 2092
    .line 2093
    .line 2094
    move-result-object v0

    .line 2095
    invoke-static {v15, v6, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 2096
    .line 2097
    .line 2098
    move-result-object v0

    .line 2099
    move-object/from16 v11, v65

    .line 2100
    .line 2101
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2102
    .line 2103
    .line 2104
    add-int/lit8 v2, v2, 0x1

    .line 2105
    .line 2106
    const/4 v0, 0x1

    .line 2107
    move/from16 v72, v10

    .line 2108
    .line 2109
    move/from16 v1, v17

    .line 2110
    .line 2111
    move-wide/from16 v5, v46

    .line 2112
    .line 2113
    move-object/from16 v17, v73

    .line 2114
    .line 2115
    move v10, v0

    .line 2116
    move/from16 v0, v44

    .line 2117
    .line 2118
    goto/16 :goto_12

    .line 2119
    .line 2120
    :cond_21
    move-object/from16 v73, v17

    .line 2121
    .line 2122
    move-object/from16 v11, v65

    .line 2123
    .line 2124
    move/from16 v10, v72

    .line 2125
    .line 2126
    const-string v0, "bore_list"

    .line 2127
    .line 2128
    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2129
    .line 2130
    .line 2131
    move v6, v9

    .line 2132
    move v2, v13

    .line 2133
    :goto_15
    move-object/from16 v44, v8

    .line 2134
    .line 2135
    move v3, v10

    .line 2136
    move-object/from16 v65, v11

    .line 2137
    .line 2138
    move-object/from16 v0, v37

    .line 2139
    .line 2140
    move-object/from16 v1, v38

    .line 2141
    .line 2142
    move-object/from16 v11, v39

    .line 2143
    .line 2144
    move-wide/from16 v45, v40

    .line 2145
    .line 2146
    move-object/from16 v5, v42

    .line 2147
    .line 2148
    move-object/from16 v12, v66

    .line 2149
    .line 2150
    move-object/from16 v8, v70

    .line 2151
    .line 2152
    move-object/from16 v17, v73

    .line 2153
    .line 2154
    move/from16 v66, v4

    .line 2155
    .line 2156
    move-object/from16 v4, v71

    .line 2157
    .line 2158
    goto/16 :goto_d

    .line 2159
    .line 2160
    :cond_22
    move/from16 v13, p1

    .line 2161
    .line 2162
    move-object/from16 v38, v1

    .line 2163
    .line 2164
    move v10, v3

    .line 2165
    move-object/from16 v71, v4

    .line 2166
    .line 2167
    move-object/from16 v70, v8

    .line 2168
    .line 2169
    move-object/from16 v73, v17

    .line 2170
    .line 2171
    move-object/from16 v11, v65

    .line 2172
    .line 2173
    move/from16 v4, v66

    .line 2174
    .line 2175
    move-object/from16 v66, v12

    .line 2176
    .line 2177
    move-object/from16 v0, v36

    .line 2178
    .line 2179
    :goto_16
    invoke-static {v1, v0}, Lcom/sgscq/vpn/handler/p0;->j(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)V

    .line 2180
    .line 2181
    .line 2182
    move-object/from16 v7, v25

    .line 2183
    .line 2184
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2185
    .line 2186
    .line 2187
    move-object/from16 v9, v68

    .line 2188
    .line 2189
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2190
    .line 2191
    .line 2192
    const-string v37, "general_id"

    .line 2193
    .line 2194
    const-string v39, "general_pk_id"

    .line 2195
    .line 2196
    const-string v41, "position"

    .line 2197
    .line 2198
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 2199
    .line 2200
    .line 2201
    move-result-object v42

    .line 2202
    const-string v43, "general_position"

    .line 2203
    .line 2204
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 2205
    .line 2206
    .line 2207
    move-result-object v44

    .line 2208
    const-string v45, "general_fighting"

    .line 2209
    .line 2210
    invoke-static/range {v64 .. v64}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2211
    .line 2212
    .line 2213
    move-result-object v46

    .line 2214
    const-string v47, "general_hp"

    .line 2215
    .line 2216
    const-string v2, "hp"

    .line 2217
    .line 2218
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2219
    .line 2220
    .line 2221
    move-result-object v48

    .line 2222
    const-string v49, "general_attack"

    .line 2223
    .line 2224
    const-string v2, "atk"

    .line 2225
    .line 2226
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2227
    .line 2228
    .line 2229
    move-result-object v50

    .line 2230
    const-string v51, "general_defense"

    .line 2231
    .line 2232
    const-string v2, "def"

    .line 2233
    .line 2234
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2235
    .line 2236
    .line 2237
    move-result-object v52

    .line 2238
    const-string v53, "general_wisdom"

    .line 2239
    .line 2240
    const-string v2, "wis"

    .line 2241
    .line 2242
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2243
    .line 2244
    .line 2245
    move-result-object v54

    .line 2246
    move-object/from16 v38, v33

    .line 2247
    .line 2248
    move-object/from16 v40, v66

    .line 2249
    .line 2250
    filled-new-array/range {v37 .. v54}, [Ljava/lang/Object;

    .line 2251
    .line 2252
    .line 2253
    move-result-object v2

    .line 2254
    move-object/from16 v8, v66

    .line 2255
    .line 2256
    invoke-static {v15, v8, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 2257
    .line 2258
    .line 2259
    move-result-object v12

    .line 2260
    invoke-static {v1, v12}, Lcom/sgscq/vpn/handler/p0;->j(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)V

    .line 2261
    .line 2262
    .line 2263
    move-object/from16 v6, v67

    .line 2264
    .line 2265
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2266
    .line 2267
    .line 2268
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 2269
    .line 2270
    invoke-direct {v5, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 2271
    .line 2272
    .line 2273
    const-string v0, "fate_skill_id"

    .line 2274
    .line 2275
    move-object/from16 v2, v71

    .line 2276
    .line 2277
    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2278
    .line 2279
    .line 2280
    new-instance v0, Ljava/util/ArrayList;

    .line 2281
    .line 2282
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2283
    .line 2284
    .line 2285
    move-object/from16 v3, v58

    .line 2286
    .line 2287
    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2288
    .line 2289
    .line 2290
    if-lez v31, :cond_28

    .line 2291
    .line 2292
    const/4 v0, 0x1

    .line 2293
    move v2, v0

    .line 2294
    move/from16 v1, v31

    .line 2295
    .line 2296
    :goto_17
    if-gt v2, v1, :cond_27

    .line 2297
    .line 2298
    add-int/lit8 v0, v2, -0x1

    .line 2299
    .line 2300
    move/from16 v31, v1

    .line 2301
    .line 2302
    move-object/from16 v14, v69

    .line 2303
    .line 2304
    iget-object v1, v14, Lcom/sgscq/vpn/j5;->d:Ljava/util/List;

    .line 2305
    .line 2306
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2307
    .line 2308
    .line 2309
    move-result-object v1

    .line 2310
    check-cast v1, Ljava/lang/String;

    .line 2311
    .line 2312
    move/from16 v72, v10

    .line 2313
    .line 2314
    move-object/from16 v10, v57

    .line 2315
    .line 2316
    invoke-virtual {v10, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2317
    .line 2318
    .line 2319
    move-object/from16 v58, v3

    .line 2320
    .line 2321
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2322
    .line 2323
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2324
    .line 2325
    .line 2326
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2327
    .line 2328
    .line 2329
    move/from16 v66, v4

    .line 2330
    .line 2331
    const-string v4, "_lt"

    .line 2332
    .line 2333
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2334
    .line 2335
    .line 2336
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2337
    .line 2338
    .line 2339
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2340
    .line 2341
    .line 2342
    move-result-object v3

    .line 2343
    if-eqz v32, :cond_23

    .line 2344
    .line 2345
    const/4 v4, 0x1

    .line 2346
    move-object/from16 v65, v11

    .line 2347
    .line 2348
    move-object/from16 v11, v70

    .line 2349
    .line 2350
    invoke-virtual {v11, v4, v4, v1}, Lcom/sgscq/vpn/w1;->M0(IILjava/lang/String;)[D

    .line 2351
    .line 2352
    .line 2353
    move-result-object v4

    .line 2354
    goto :goto_18

    .line 2355
    :cond_23
    move-object/from16 v65, v11

    .line 2356
    .line 2357
    move-object/from16 v11, v70

    .line 2358
    .line 2359
    const/4 v4, 0x0

    .line 2360
    :goto_18
    move-object/from16 p2, v5

    .line 2361
    .line 2362
    if-eqz v4, :cond_24

    .line 2363
    .line 2364
    array-length v5, v4

    .line 2365
    move-object/from16 v67, v6

    .line 2366
    .line 2367
    const/4 v6, 0x4

    .line 2368
    if-le v5, v6, :cond_25

    .line 2369
    .line 2370
    aget-wide v5, v4, v6

    .line 2371
    .line 2372
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    .line 2373
    .line 2374
    .line 2375
    move-result-wide v4

    .line 2376
    long-to-int v4, v4

    .line 2377
    goto :goto_19

    .line 2378
    :cond_24
    move-object/from16 v67, v6

    .line 2379
    .line 2380
    :cond_25
    div-int/lit8 v4, v64, 0x3

    .line 2381
    .line 2382
    :goto_19
    const/4 v5, 0x1

    .line 2383
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 2384
    .line 2385
    .line 2386
    move-result v18

    .line 2387
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 2388
    .line 2389
    .line 2390
    move-result-object v20

    .line 2391
    move-object v6, v14

    .line 2392
    move-object v14, v11

    .line 2393
    move-object/from16 v25, v7

    .line 2394
    .line 2395
    move-object v4, v15

    .line 2396
    move-object/from16 v5, v16

    .line 2397
    .line 2398
    move-object/from16 v7, v73

    .line 2399
    .line 2400
    move-object v15, v3

    .line 2401
    move-object/from16 v16, v1

    .line 2402
    .line 2403
    move/from16 v17, v62

    .line 2404
    .line 2405
    move-object/from16 v19, v8

    .line 2406
    .line 2407
    move/from16 v21, v32

    .line 2408
    .line 2409
    invoke-static/range {v14 .. v21}, Lcom/sgscq/vpn/t5;->f(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)Ljava/util/LinkedHashMap;

    .line 2410
    .line 2411
    .line 2412
    move-result-object v14

    .line 2413
    iget-object v15, v7, Lcom/sgscq/vpn/m5;->c:Ljava/lang/String;

    .line 2414
    .line 2415
    const-string v1, "lieutenant_skill_id"

    .line 2416
    .line 2417
    invoke-interface {v14, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2418
    .line 2419
    .line 2420
    iget-object v1, v7, Lcom/sgscq/vpn/m5;->c:Ljava/lang/String;

    .line 2421
    .line 2422
    const-string v15, "skill_type_lieutenant"

    .line 2423
    .line 2424
    invoke-interface {v14, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2425
    .line 2426
    .line 2427
    iget v1, v7, Lcom/sgscq/vpn/m5;->a:I

    .line 2428
    .line 2429
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 2430
    .line 2431
    .line 2432
    move-result-object v1

    .line 2433
    const-string v15, "ls_type"

    .line 2434
    .line 2435
    invoke-interface {v14, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2436
    .line 2437
    .line 2438
    iget-object v1, v6, Lcom/sgscq/vpn/j5;->e:Ljava/util/List;

    .line 2439
    .line 2440
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2441
    .line 2442
    .line 2443
    move-result-object v0

    .line 2444
    check-cast v0, Ljava/lang/Integer;

    .line 2445
    .line 2446
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 2447
    .line 2448
    .line 2449
    move-result v15

    .line 2450
    mul-int/lit8 v0, v2, 0x47

    .line 2451
    .line 2452
    add-int v17, v0, v55

    .line 2453
    .line 2454
    move-object/from16 v0, p0

    .line 2455
    .line 2456
    move-object/from16 v18, v16

    .line 2457
    .line 2458
    move/from16 v16, v31

    .line 2459
    .line 2460
    move-object v1, v11

    .line 2461
    move v7, v2

    .line 2462
    move-object v2, v3

    .line 2463
    move-object/from16 v70, v11

    .line 2464
    .line 2465
    move-object/from16 v11, v58

    .line 2466
    .line 2467
    move/from16 v31, v72

    .line 2468
    .line 2469
    move-object/from16 v3, v18

    .line 2470
    .line 2471
    move-object/from16 v13, v27

    .line 2472
    .line 2473
    move/from16 v19, v66

    .line 2474
    .line 2475
    move-object/from16 v66, v8

    .line 2476
    .line 2477
    move-object v8, v4

    .line 2478
    move/from16 v4, v62

    .line 2479
    .line 2480
    move-object/from16 v57, v10

    .line 2481
    .line 2482
    move-object v10, v5

    .line 2483
    move-object/from16 v106, v12

    .line 2484
    .line 2485
    move-object/from16 v12, p2

    .line 2486
    .line 2487
    move-object/from16 p2, v106

    .line 2488
    .line 2489
    move v5, v15

    .line 2490
    move-object/from16 v20, v6

    .line 2491
    .line 2492
    move-object/from16 v15, v34

    .line 2493
    .line 2494
    move/from16 v21, v62

    .line 2495
    .line 2496
    move-object/from16 v27, v67

    .line 2497
    .line 2498
    move/from16 v6, v17

    .line 2499
    .line 2500
    invoke-virtual/range {v0 .. v6}, Lcom/sgscq/vpn/t5;->n(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/lang/String;III)Ljava/util/LinkedHashMap;

    .line 2501
    .line 2502
    .line 2503
    move-result-object v0

    .line 2504
    invoke-virtual {v0, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2505
    .line 2506
    .line 2507
    move-result-object v1

    .line 2508
    invoke-interface {v14, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2509
    .line 2510
    .line 2511
    const/4 v1, 0x1

    .line 2512
    new-array v2, v1, [Ljava/util/Map;

    .line 2513
    .line 2514
    const/4 v3, 0x0

    .line 2515
    aput-object v0, v2, v3

    .line 2516
    .line 2517
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 2518
    .line 2519
    .line 2520
    move-result-object v2

    .line 2521
    invoke-interface {v14, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2522
    .line 2523
    .line 2524
    new-array v2, v1, [Ljava/util/Map;

    .line 2525
    .line 2526
    aput-object v0, v2, v3

    .line 2527
    .line 2528
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 2529
    .line 2530
    .line 2531
    move-result-object v2

    .line 2532
    invoke-interface {v14, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2533
    .line 2534
    .line 2535
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2536
    .line 2537
    .line 2538
    move-object/from16 v5, v35

    .line 2539
    .line 2540
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2541
    .line 2542
    .line 2543
    invoke-virtual {v12, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2544
    .line 2545
    .line 2546
    move-result-object v0

    .line 2547
    check-cast v0, Ljava/util/List;

    .line 2548
    .line 2549
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2550
    .line 2551
    .line 2552
    if-ne v7, v1, :cond_26

    .line 2553
    .line 2554
    const-string v0, "deputy_general_id"

    .line 2555
    .line 2556
    move-object/from16 v1, p2

    .line 2557
    .line 2558
    move-object/from16 v2, v18

    .line 2559
    .line 2560
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2561
    .line 2562
    .line 2563
    goto :goto_1a

    .line 2564
    :cond_26
    move-object/from16 v1, p2

    .line 2565
    .line 2566
    :goto_1a
    add-int/lit8 v2, v7, 0x1

    .line 2567
    .line 2568
    move-object/from16 v35, v5

    .line 2569
    .line 2570
    move-object v3, v11

    .line 2571
    move-object v5, v12

    .line 2572
    move-object/from16 v34, v15

    .line 2573
    .line 2574
    move/from16 v4, v19

    .line 2575
    .line 2576
    move-object/from16 v69, v20

    .line 2577
    .line 2578
    move/from16 v62, v21

    .line 2579
    .line 2580
    move-object/from16 v7, v25

    .line 2581
    .line 2582
    move-object/from16 v6, v27

    .line 2583
    .line 2584
    move-object/from16 v11, v65

    .line 2585
    .line 2586
    move-object v12, v1

    .line 2587
    move-object v15, v8

    .line 2588
    move-object/from16 v27, v13

    .line 2589
    .line 2590
    move/from16 v1, v16

    .line 2591
    .line 2592
    move-object/from16 v8, v66

    .line 2593
    .line 2594
    move/from16 v13, p1

    .line 2595
    .line 2596
    move-object/from16 v16, v10

    .line 2597
    .line 2598
    move/from16 v10, v31

    .line 2599
    .line 2600
    goto/16 :goto_17

    .line 2601
    .line 2602
    :cond_27
    move/from16 v16, v1

    .line 2603
    .line 2604
    move/from16 v19, v4

    .line 2605
    .line 2606
    move-object v12, v5

    .line 2607
    move-object/from16 v27, v6

    .line 2608
    .line 2609
    move-object/from16 v25, v7

    .line 2610
    .line 2611
    move/from16 v31, v10

    .line 2612
    .line 2613
    move-object/from16 v65, v11

    .line 2614
    .line 2615
    move-object/from16 v5, v35

    .line 2616
    .line 2617
    goto :goto_1b

    .line 2618
    :cond_28
    move/from16 v19, v4

    .line 2619
    .line 2620
    move-object v12, v5

    .line 2621
    move-object/from16 v27, v6

    .line 2622
    .line 2623
    move-object/from16 v25, v7

    .line 2624
    .line 2625
    move-object/from16 v65, v11

    .line 2626
    .line 2627
    move/from16 v16, v31

    .line 2628
    .line 2629
    move-object/from16 v5, v35

    .line 2630
    .line 2631
    move/from16 v31, v10

    .line 2632
    .line 2633
    :goto_1b
    move-object/from16 v7, v24

    .line 2634
    .line 2635
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2636
    .line 2637
    .line 2638
    move-object/from16 v0, v22

    .line 2639
    .line 2640
    move-object/from16 v1, v23

    .line 2641
    .line 2642
    move/from16 v32, v26

    .line 2643
    .line 2644
    move/from16 v33, v30

    .line 2645
    .line 2646
    move/from16 v11, v31

    .line 2647
    .line 2648
    move-object/from16 v21, v57

    .line 2649
    .line 2650
    move-object/from16 v20, v59

    .line 2651
    .line 2652
    move/from16 v10, v60

    .line 2653
    .line 2654
    move-object/from16 v23, v61

    .line 2655
    .line 2656
    move-object/from16 p2, v63

    .line 2657
    .line 2658
    move-object/from16 v24, v65

    .line 2659
    .line 2660
    move-object/from16 v8, v70

    .line 2661
    .line 2662
    move-object/from16 v26, v5

    .line 2663
    .line 2664
    move-object/from16 v22, v7

    .line 2665
    .line 2666
    move-object/from16 v30, v9

    .line 2667
    .line 2668
    move/from16 v31, v16

    .line 2669
    .line 2670
    move/from16 v9, v19

    .line 2671
    .line 2672
    move-object/from16 v7, v56

    .line 2673
    .line 2674
    goto/16 :goto_7

    .line 2675
    .line 2676
    :cond_29
    move-object/from16 v63, p2

    .line 2677
    .line 2678
    move-object/from16 v70, v8

    .line 2679
    .line 2680
    move/from16 v60, v10

    .line 2681
    .line 2682
    move/from16 v31, v11

    .line 2683
    .line 2684
    move-object v11, v14

    .line 2685
    move-object/from16 v0, v20

    .line 2686
    .line 2687
    move-object/from16 v57, v21

    .line 2688
    .line 2689
    move-object/from16 v7, v22

    .line 2690
    .line 2691
    move-object/from16 v61, v23

    .line 2692
    .line 2693
    move-object/from16 v65, v24

    .line 2694
    .line 2695
    move-object/from16 v9, v30

    .line 2696
    .line 2697
    move-object/from16 v39, v35

    .line 2698
    .line 2699
    move-object/from16 v8, v36

    .line 2700
    .line 2701
    move-object v10, v4

    .line 2702
    move/from16 v30, v6

    .line 2703
    .line 2704
    move-object v4, v13

    .line 2705
    move-object/from16 v6, v34

    .line 2706
    .line 2707
    move-object v13, v5

    .line 2708
    move-object/from16 v5, v26

    .line 2709
    .line 2710
    move-object/from16 v106, v15

    .line 2711
    .line 2712
    move-object v15, v3

    .line 2713
    move-object v3, v12

    .line 2714
    move-object/from16 v12, v106

    .line 2715
    .line 2716
    iget-object v0, v0, Lcom/sgscq/vpn/t;->e:Ljava/lang/Object;

    .line 2717
    .line 2718
    check-cast v0, Ljava/util/Set;

    .line 2719
    .line 2720
    new-instance v1, Ljava/util/HashSet;

    .line 2721
    .line 2722
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2723
    .line 2724
    .line 2725
    move-object/from16 v2, v57

    .line 2726
    .line 2727
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2728
    .line 2729
    .line 2730
    if-nez v0, :cond_2a

    .line 2731
    .line 2732
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 2733
    .line 2734
    .line 2735
    move-result-object v0

    .line 2736
    :cond_2a
    new-instance v14, Ljava/util/ArrayList;

    .line 2737
    .line 2738
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2739
    .line 2740
    .line 2741
    move-object/from16 v57, v2

    .line 2742
    .line 2743
    move-object/from16 v2, v63

    .line 2744
    .line 2745
    if-eqz v2, :cond_2b

    .line 2746
    .line 2747
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2748
    .line 2749
    .line 2750
    :cond_2b
    new-instance v2, Lcom/sgscq/vpn/q5;

    .line 2751
    .line 2752
    move-object/from16 p2, v4

    .line 2753
    .line 2754
    const/4 v4, 0x0

    .line 2755
    invoke-direct {v2, v0, v1, v4}, Lcom/sgscq/vpn/q5;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 2756
    .line 2757
    .line 2758
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 2759
    .line 2760
    .line 2761
    new-instance v0, Ljava/util/ArrayList;

    .line 2762
    .line 2763
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2764
    .line 2765
    .line 2766
    const/16 v2, 0x18

    .line 2767
    .line 2768
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 2769
    .line 2770
    .line 2771
    move-result v2

    .line 2772
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2773
    .line 2774
    .line 2775
    move-result-object v4

    .line 2776
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 2777
    .line 2778
    .line 2779
    move-result v14

    .line 2780
    if-eqz v14, :cond_30

    .line 2781
    .line 2782
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2783
    .line 2784
    .line 2785
    move-result-object v14

    .line 2786
    check-cast v14, Lcom/sgscq/vpn/k5;

    .line 2787
    .line 2788
    move-object/from16 v16, v4

    .line 2789
    .line 2790
    invoke-static {v14, v1}, Lcom/sgscq/vpn/t5;->l(Lcom/sgscq/vpn/k5;Ljava/util/Set;)Ljava/util/ArrayList;

    .line 2791
    .line 2792
    .line 2793
    move-result-object v4

    .line 2794
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 2795
    .line 2796
    .line 2797
    move-result v17

    .line 2798
    move-object/from16 v26, v5

    .line 2799
    .line 2800
    sub-int v5, v2, v17

    .line 2801
    .line 2802
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2803
    .line 2804
    .line 2805
    move-result v17

    .line 2806
    if-nez v17, :cond_2e

    .line 2807
    .line 2808
    if-gtz v5, :cond_2c

    .line 2809
    .line 2810
    goto :goto_1e

    .line 2811
    :cond_2c
    move/from16 v17, v2

    .line 2812
    .line 2813
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 2814
    .line 2815
    .line 2816
    move-result v2

    .line 2817
    if-gt v2, v5, :cond_2d

    .line 2818
    .line 2819
    goto :goto_1d

    .line 2820
    :cond_2d
    iget-boolean v2, v14, Lcom/sgscq/vpn/k5;->d:Z

    .line 2821
    .line 2822
    if-eqz v2, :cond_2f

    .line 2823
    .line 2824
    const/4 v2, 0x0

    .line 2825
    invoke-virtual {v4, v2, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 2826
    .line 2827
    .line 2828
    move-result-object v4

    .line 2829
    :goto_1d
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2830
    .line 2831
    .line 2832
    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2833
    .line 2834
    .line 2835
    goto :goto_1f

    .line 2836
    :cond_2e
    :goto_1e
    move/from16 v17, v2

    .line 2837
    .line 2838
    :cond_2f
    :goto_1f
    move-object/from16 v4, v16

    .line 2839
    .line 2840
    move/from16 v2, v17

    .line 2841
    .line 2842
    move-object/from16 v5, v26

    .line 2843
    .line 2844
    goto :goto_1c

    .line 2845
    :cond_30
    move-object/from16 v26, v5

    .line 2846
    .line 2847
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 2848
    .line 2849
    .line 2850
    move-result-object v5

    .line 2851
    const/4 v0, 0x0

    .line 2852
    :goto_20
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 2853
    .line 2854
    .line 2855
    move-result v1

    .line 2856
    if-ge v0, v1, :cond_31

    .line 2857
    .line 2858
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2859
    .line 2860
    .line 2861
    move-result-object v1

    .line 2862
    move-object v4, v1

    .line 2863
    check-cast v4, Ljava/lang/String;

    .line 2864
    .line 2865
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2866
    .line 2867
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2868
    .line 2869
    .line 2870
    move-object v2, v13

    .line 2871
    move/from16 v13, p1

    .line 2872
    .line 2873
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2874
    .line 2875
    .line 2876
    const-string v14, "_b"

    .line 2877
    .line 2878
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2879
    .line 2880
    .line 2881
    add-int/lit8 v14, v0, 0x1

    .line 2882
    .line 2883
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2884
    .line 2885
    .line 2886
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2887
    .line 2888
    .line 2889
    move-result-object v1

    .line 2890
    move-object/from16 v38, v2

    .line 2891
    .line 2892
    mul-int/lit8 v2, v30, 0x8

    .line 2893
    .line 2894
    move-object/from16 v44, v3

    .line 2895
    .line 2896
    const/16 v3, 0x8

    .line 2897
    .line 2898
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 2899
    .line 2900
    .line 2901
    move-result v2

    .line 2902
    div-int v2, v60, v2

    .line 2903
    .line 2904
    const/4 v3, 0x1

    .line 2905
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 2906
    .line 2907
    .line 2908
    move-result v18

    .line 2909
    const-string v19, ""

    .line 2910
    .line 2911
    const-string v20, "0"

    .line 2912
    .line 2913
    const/16 v21, 0x0

    .line 2914
    .line 2915
    move/from16 v22, v14

    .line 2916
    .line 2917
    move-object/from16 v14, v70

    .line 2918
    .line 2919
    move-object v3, v15

    .line 2920
    move-object v15, v1

    .line 2921
    move-object/from16 v16, v4

    .line 2922
    .line 2923
    move/from16 v17, v31

    .line 2924
    .line 2925
    invoke-static/range {v14 .. v21}, Lcom/sgscq/vpn/t5;->f(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)Ljava/util/LinkedHashMap;

    .line 2926
    .line 2927
    .line 2928
    move-result-object v14

    .line 2929
    invoke-virtual {v12, v4}, Lcom/sgscq/vpn/n5;->o(Ljava/lang/String;)I

    .line 2930
    .line 2931
    .line 2932
    move-result v15

    .line 2933
    mul-int/lit16 v2, v13, 0x83

    .line 2934
    .line 2935
    mul-int/lit8 v0, v0, 0x11

    .line 2936
    .line 2937
    add-int v16, v0, v2

    .line 2938
    .line 2939
    move-object/from16 v0, p0

    .line 2940
    .line 2941
    move-object/from16 v17, v1

    .line 2942
    .line 2943
    move-object/from16 v1, v70

    .line 2944
    .line 2945
    move-object/from16 v18, v12

    .line 2946
    .line 2947
    move-object/from16 v13, v38

    .line 2948
    .line 2949
    move-object/from16 v12, v57

    .line 2950
    .line 2951
    move-object/from16 v2, v17

    .line 2952
    .line 2953
    move-object/from16 v58, v11

    .line 2954
    .line 2955
    move-object/from16 v104, v44

    .line 2956
    .line 2957
    move-object v11, v3

    .line 2958
    move-object v3, v4

    .line 2959
    move-object/from16 v105, p2

    .line 2960
    .line 2961
    move-object/from16 v24, v7

    .line 2962
    .line 2963
    move-object v7, v4

    .line 2964
    move/from16 v4, v31

    .line 2965
    .line 2966
    move-object/from16 v20, v5

    .line 2967
    .line 2968
    move-object/from16 v19, v7

    .line 2969
    .line 2970
    move-object/from16 v7, v26

    .line 2971
    .line 2972
    move v5, v15

    .line 2973
    move-object v15, v6

    .line 2974
    move/from16 v6, v16

    .line 2975
    .line 2976
    invoke-virtual/range {v0 .. v6}, Lcom/sgscq/vpn/t5;->n(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/lang/String;III)Ljava/util/LinkedHashMap;

    .line 2977
    .line 2978
    .line 2979
    move-result-object v0

    .line 2980
    invoke-virtual {v0, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2981
    .line 2982
    .line 2983
    move-result-object v1

    .line 2984
    invoke-interface {v14, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2985
    .line 2986
    .line 2987
    const/4 v1, 0x1

    .line 2988
    new-array v2, v1, [Ljava/util/Map;

    .line 2989
    .line 2990
    const/4 v3, 0x0

    .line 2991
    aput-object v0, v2, v3

    .line 2992
    .line 2993
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 2994
    .line 2995
    .line 2996
    move-result-object v2

    .line 2997
    invoke-interface {v14, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2998
    .line 2999
    .line 3000
    new-array v1, v1, [Ljava/util/Map;

    .line 3001
    .line 3002
    aput-object v0, v1, v3

    .line 3003
    .line 3004
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 3005
    .line 3006
    .line 3007
    move-result-object v1

    .line 3008
    invoke-interface {v14, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3009
    .line 3010
    .line 3011
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3012
    .line 3013
    .line 3014
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3015
    .line 3016
    .line 3017
    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 3018
    .line 3019
    .line 3020
    move-result-object v0

    .line 3021
    move-object/from16 v2, v17

    .line 3022
    .line 3023
    move-object/from16 v1, v39

    .line 3024
    .line 3025
    filled-new-array {v1, v2, v15, v0}, [Ljava/lang/Object;

    .line 3026
    .line 3027
    .line 3028
    move-result-object v0

    .line 3029
    invoke-static {v8, v2, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 3030
    .line 3031
    .line 3032
    move-result-object v0

    .line 3033
    move-object/from16 v6, v61

    .line 3034
    .line 3035
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3036
    .line 3037
    .line 3038
    move-object/from16 v0, v19

    .line 3039
    .line 3040
    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3041
    .line 3042
    .line 3043
    move-object v6, v15

    .line 3044
    move-object/from16 v12, v18

    .line 3045
    .line 3046
    move-object/from16 v5, v20

    .line 3047
    .line 3048
    move/from16 v0, v22

    .line 3049
    .line 3050
    move-object/from16 v7, v24

    .line 3051
    .line 3052
    move-object/from16 v3, v104

    .line 3053
    .line 3054
    move-object v15, v11

    .line 3055
    move-object/from16 v11, v58

    .line 3056
    .line 3057
    goto/16 :goto_20

    .line 3058
    .line 3059
    :cond_31
    move-object/from16 v105, p2

    .line 3060
    .line 3061
    move-object/from16 v104, v3

    .line 3062
    .line 3063
    move-object/from16 v24, v7

    .line 3064
    .line 3065
    move-object/from16 v58, v11

    .line 3066
    .line 3067
    move-object/from16 v7, v26

    .line 3068
    .line 3069
    move-object/from16 v6, v61

    .line 3070
    .line 3071
    invoke-static {}, Lcom/sgscq/vpn/cloud/m0;->c0()Ljava/util/ArrayList;

    .line 3072
    .line 3073
    .line 3074
    move-result-object v22

    .line 3075
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 3076
    .line 3077
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3078
    .line 3079
    .line 3080
    invoke-static {v9}, Lcom/sgscq/vpn/t5;->m(Ljava/util/List;)Ljava/util/LinkedHashMap;

    .line 3081
    .line 3082
    .line 3083
    move-result-object v1

    .line 3084
    const-string v2, "General"

    .line 3085
    .line 3086
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3087
    .line 3088
    .line 3089
    invoke-static/range {v27 .. v27}, Lcom/sgscq/vpn/t5;->m(Ljava/util/List;)Ljava/util/LinkedHashMap;

    .line 3090
    .line 3091
    .line 3092
    move-result-object v1

    .line 3093
    const-string v2, "TeamGeneral"

    .line 3094
    .line 3095
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3096
    .line 3097
    .line 3098
    invoke-static {v7}, Lcom/sgscq/vpn/t5;->m(Ljava/util/List;)Ljava/util/LinkedHashMap;

    .line 3099
    .line 3100
    .line 3101
    move-result-object v1

    .line 3102
    const-string v2, "Skill"

    .line 3103
    .line 3104
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3105
    .line 3106
    .line 3107
    invoke-static/range {v25 .. v25}, Lcom/sgscq/vpn/t5;->m(Ljava/util/List;)Ljava/util/LinkedHashMap;

    .line 3108
    .line 3109
    .line 3110
    move-result-object v1

    .line 3111
    const-string v2, "Equipment"

    .line 3112
    .line 3113
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3114
    .line 3115
    .line 3116
    invoke-static/range {v65 .. v65}, Lcom/sgscq/vpn/t5;->m(Ljava/util/List;)Ljava/util/LinkedHashMap;

    .line 3117
    .line 3118
    .line 3119
    move-result-object v1

    .line 3120
    const-string v2, "Gem"

    .line 3121
    .line 3122
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3123
    .line 3124
    .line 3125
    invoke-static/range {v22 .. v22}, Lcom/sgscq/vpn/t5;->m(Ljava/util/List;)Ljava/util/LinkedHashMap;

    .line 3126
    .line 3127
    .line 3128
    move-result-object v1

    .line 3129
    const-string v2, "Combat"

    .line 3130
    .line 3131
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3132
    .line 3133
    .line 3134
    invoke-static {v6}, Lcom/sgscq/vpn/t5;->m(Ljava/util/List;)Ljava/util/LinkedHashMap;

    .line 3135
    .line 3136
    .line 3137
    move-result-object v1

    .line 3138
    const-string v2, "BuddyGeneral"

    .line 3139
    .line 3140
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3141
    .line 3142
    .line 3143
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 3144
    .line 3145
    .line 3146
    move-result-object v1

    .line 3147
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 3148
    .line 3149
    .line 3150
    move-result v2

    .line 3151
    if-eqz v2, :cond_33

    .line 3152
    .line 3153
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3154
    .line 3155
    .line 3156
    move-result-object v2

    .line 3157
    check-cast v2, Ljava/util/Map;

    .line 3158
    .line 3159
    const-string v3, ""

    .line 3160
    .line 3161
    invoke-interface {v2, v8, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3162
    .line 3163
    .line 3164
    move-result-object v3

    .line 3165
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 3166
    .line 3167
    .line 3168
    move-result-object v3

    .line 3169
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 3170
    .line 3171
    .line 3172
    move-result v4

    .line 3173
    if-nez v4, :cond_32

    .line 3174
    .line 3175
    move-object/from16 v4, v70

    .line 3176
    .line 3177
    invoke-virtual {v4, v3, v0}, Lcom/sgscq/vpn/w1;->F2(Ljava/lang/String;Ljava/util/Map;)Z

    .line 3178
    .line 3179
    .line 3180
    goto :goto_22

    .line 3181
    :cond_32
    move-object/from16 v4, v70

    .line 3182
    .line 3183
    :goto_22
    invoke-static {v2}, Lcom/sgscq/vpn/t5;->v(Ljava/util/Map;)V

    .line 3184
    .line 3185
    .line 3186
    move-object/from16 v70, v4

    .line 3187
    .line 3188
    goto :goto_21

    .line 3189
    :cond_33
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 3190
    .line 3191
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3192
    .line 3193
    .line 3194
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 3195
    .line 3196
    .line 3197
    move-result-object v1

    .line 3198
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 3199
    .line 3200
    .line 3201
    move-result v2

    .line 3202
    if-eqz v2, :cond_34

    .line 3203
    .line 3204
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3205
    .line 3206
    .line 3207
    move-result-object v2

    .line 3208
    check-cast v2, Ljava/util/Map;

    .line 3209
    .line 3210
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3211
    .line 3212
    .line 3213
    move-result-object v3

    .line 3214
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 3215
    .line 3216
    .line 3217
    move-result-object v3

    .line 3218
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3219
    .line 3220
    .line 3221
    goto :goto_23

    .line 3222
    :cond_34
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 3223
    .line 3224
    .line 3225
    move-result-object v1

    .line 3226
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 3227
    .line 3228
    .line 3229
    move-result v2

    .line 3230
    if-eqz v2, :cond_38

    .line 3231
    .line 3232
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3233
    .line 3234
    .line 3235
    move-result-object v2

    .line 3236
    check-cast v2, Ljava/util/Map;

    .line 3237
    .line 3238
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3239
    .line 3240
    .line 3241
    move-result-object v3

    .line 3242
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 3243
    .line 3244
    .line 3245
    move-result-object v3

    .line 3246
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3247
    .line 3248
    .line 3249
    move-result-object v3

    .line 3250
    check-cast v3, Ljava/util/Map;

    .line 3251
    .line 3252
    if-eqz v3, :cond_35

    .line 3253
    .line 3254
    invoke-static {v3, v2}, Lcom/sgscq/vpn/t5;->c(Ljava/util/Map;Ljava/util/Map;)V

    .line 3255
    .line 3256
    .line 3257
    :cond_35
    move-object/from16 v3, v58

    .line 3258
    .line 3259
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3260
    .line 3261
    .line 3262
    move-result-object v2

    .line 3263
    check-cast v2, Ljava/util/List;

    .line 3264
    .line 3265
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 3266
    .line 3267
    .line 3268
    move-result-object v2

    .line 3269
    :cond_36
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 3270
    .line 3271
    .line 3272
    move-result v4

    .line 3273
    if-eqz v4, :cond_37

    .line 3274
    .line 3275
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3276
    .line 3277
    .line 3278
    move-result-object v4

    .line 3279
    check-cast v4, Ljava/util/Map;

    .line 3280
    .line 3281
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3282
    .line 3283
    .line 3284
    move-result-object v5

    .line 3285
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 3286
    .line 3287
    .line 3288
    move-result-object v5

    .line 3289
    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3290
    .line 3291
    .line 3292
    move-result-object v5

    .line 3293
    check-cast v5, Ljava/util/Map;

    .line 3294
    .line 3295
    if-eqz v5, :cond_36

    .line 3296
    .line 3297
    invoke-static {v5, v4}, Lcom/sgscq/vpn/t5;->c(Ljava/util/Map;Ljava/util/Map;)V

    .line 3298
    .line 3299
    .line 3300
    goto :goto_25

    .line 3301
    :cond_37
    move-object/from16 v58, v3

    .line 3302
    .line 3303
    goto :goto_24

    .line 3304
    :cond_38
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 3305
    .line 3306
    .line 3307
    move-result-object v0

    .line 3308
    const/4 v1, 0x0

    .line 3309
    move v12, v1

    .line 3310
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 3311
    .line 3312
    .line 3313
    move-result v1

    .line 3314
    if-eqz v1, :cond_39

    .line 3315
    .line 3316
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3317
    .line 3318
    .line 3319
    move-result-object v1

    .line 3320
    check-cast v1, Ljava/util/Map;

    .line 3321
    .line 3322
    move-object/from16 v2, v105

    .line 3323
    .line 3324
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3325
    .line 3326
    .line 3327
    move-result-object v1

    .line 3328
    const/4 v3, 0x0

    .line 3329
    invoke-static {v1, v3}, Lcom/sgscq/vpn/t5;->i(Ljava/lang/Object;I)I

    .line 3330
    .line 3331
    .line 3332
    move-result v1

    .line 3333
    add-int/2addr v12, v1

    .line 3334
    goto :goto_26

    .line 3335
    :cond_39
    move/from16 v13, p1

    .line 3336
    .line 3337
    move-object/from16 v1, v104

    .line 3338
    .line 3339
    invoke-static {v1, v13}, La/b0;->a(Ljava/lang/String;I)Ljava/lang/String;

    .line 3340
    .line 3341
    .line 3342
    move-result-object v0

    .line 3343
    move-object/from16 v17, v9

    .line 3344
    .line 3345
    move-object v9, v0

    .line 3346
    add-int/lit8 v0, v13, -0x1

    .line 3347
    .line 3348
    move-object/from16 v11, p0

    .line 3349
    .line 3350
    iget-object v1, v11, Lcom/sgscq/vpn/t5;->b:Ljava/util/List;

    .line 3351
    .line 3352
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 3353
    .line 3354
    .line 3355
    move-result v2

    .line 3356
    rem-int/2addr v0, v2

    .line 3357
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 3358
    .line 3359
    .line 3360
    move-result-object v0

    .line 3361
    move-object v5, v0

    .line 3362
    check-cast v5, Ljava/lang/String;

    .line 3363
    .line 3364
    move-object/from16 v15, v24

    .line 3365
    .line 3366
    move-object/from16 v21, v65

    .line 3367
    .line 3368
    move-object v10, v5

    .line 3369
    const/4 v0, 0x0

    .line 3370
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3371
    .line 3372
    .line 3373
    move-result-object v0

    .line 3374
    check-cast v0, Ljava/util/Map;

    .line 3375
    .line 3376
    const-string v1, "general_id"

    .line 3377
    .line 3378
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3379
    .line 3380
    .line 3381
    move-result-object v0

    .line 3382
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 3383
    .line 3384
    .line 3385
    move-result-object v4

    .line 3386
    move/from16 v0, p1

    .line 3387
    .line 3388
    move/from16 v1, v31

    .line 3389
    .line 3390
    move v2, v12

    .line 3391
    move/from16 v3, v30

    .line 3392
    .line 3393
    invoke-static/range {v0 .. v5}, Lcom/sgscq/vpn/t5;->q(IIIILjava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 3394
    .line 3395
    .line 3396
    move-result-object v16

    .line 3397
    new-instance v0, Lcom/sgscq/vpn/v5;

    .line 3398
    .line 3399
    move-object v8, v0

    .line 3400
    const/4 v14, 0x0

    .line 3401
    const-string v1, ""

    .line 3402
    .line 3403
    move-object v2, v15

    .line 3404
    move-object v15, v1

    .line 3405
    move/from16 v11, v31

    .line 3406
    .line 3407
    move-object/from16 v1, v25

    .line 3408
    .line 3409
    move-object/from16 v18, v27

    .line 3410
    .line 3411
    move-object/from16 v19, v7

    .line 3412
    .line 3413
    move-object/from16 v20, v1

    .line 3414
    .line 3415
    move-object/from16 v23, v6

    .line 3416
    .line 3417
    move-object/from16 v24, v2

    .line 3418
    .line 3419
    invoke-direct/range {v8 .. v24}, Lcom/sgscq/vpn/v5;-><init>(Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 3420
    .line 3421
    .line 3422
    return-object v0

    .line 3423
    :array_0
    .array-data 8
        0x3ff2666666666666L    # 1.15
        0x3ff199999999999aL    # 1.1
        0x3ff0cccccccccccdL    # 1.05
        0x3fee666666666666L    # 0.95
        0x3feccccccccccccdL    # 0.9
        0x3feb333333333333L    # 0.85
    .end array-data
.end method

.method public final b(I)Lcom/sgscq/vpn/v5;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v7, p1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/t5;->j(I)I

    .line 11
    .line 12
    .line 13
    move-result v8

    .line 14
    const/4 v2, 0x2

    .line 15
    iget v3, v0, Lcom/sgscq/vpn/t5;->g:I

    .line 16
    .line 17
    if-lez v3, :cond_0

    .line 18
    .line 19
    move v9, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v1, v8}, Lcom/sgscq/vpn/w1;->h1(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    move v9, v1

    .line 30
    :goto_0
    add-int/lit8 v1, v9, 0x1

    .line 31
    .line 32
    div-int/2addr v1, v2

    .line 33
    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v8}, Lcom/sgscq/vpn/t5;->k(I)I

    .line 43
    .line 44
    .line 45
    move-result v10

    .line 46
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0, v7, v9, v1, v2}, Lcom/sgscq/vpn/t5;->t(IIILjava/util/List;)Lcom/sgscq/vpn/t;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-object v1, v1, Lcom/sgscq/vpn/t;->b:Ljava/lang/Object;

    .line 55
    .line 56
    move-object v11, v1

    .line 57
    check-cast v11, Ljava/util/List;

    .line 58
    .line 59
    invoke-virtual {v0, v7, v11}, Lcom/sgscq/vpn/t5;->a(ILjava/util/List;)Lcom/sgscq/vpn/v5;

    .line 60
    .line 61
    .line 62
    move-result-object v12

    .line 63
    iget v13, v12, Lcom/sgscq/vpn/v5;->d:I

    .line 64
    .line 65
    const-string v1, "robot_"

    .line 66
    .line 67
    invoke-static {v1, v7}, La/b0;->a(Ljava/lang/String;I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v14

    .line 71
    add-int/lit8 v1, v7, -0x1

    .line 72
    .line 73
    iget-object v2, v0, Lcom/sgscq/vpn/t5;->b:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    rem-int/2addr v1, v3

    .line 80
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    move-object v15, v1

    .line 85
    check-cast v15, Ljava/lang/String;

    .line 86
    .line 87
    const/4 v1, 0x0

    .line 88
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    move-object/from16 v16, v1

    .line 93
    .line 94
    check-cast v16, Ljava/lang/String;

    .line 95
    .line 96
    move/from16 v1, p1

    .line 97
    .line 98
    move v2, v8

    .line 99
    move v3, v13

    .line 100
    move v4, v9

    .line 101
    move-object/from16 v5, v16

    .line 102
    .line 103
    move-object v6, v15

    .line 104
    invoke-static/range {v1 .. v6}, Lcom/sgscq/vpn/t5;->q(IIIILjava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-virtual {v12}, Lcom/sgscq/vpn/v5;->o()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    const-string v2, "max_general_fighting"

    .line 117
    .line 118
    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    mul-int/2addr v10, v9

    .line 122
    iget-object v12, v0, Lcom/sgscq/vpn/t5;->j:Lcom/sgscq/vpn/y0;

    .line 123
    .line 124
    move-object v1, v14

    .line 125
    move-object v2, v15

    .line 126
    move v3, v8

    .line 127
    move v4, v13

    .line 128
    move/from16 v5, p1

    .line 129
    .line 130
    move-object/from16 v7, v16

    .line 131
    .line 132
    move-object v8, v11

    .line 133
    move-object v11, v12

    .line 134
    invoke-static/range {v1 .. v11}, Lcom/sgscq/vpn/v5;->n(Ljava/lang/String;Ljava/lang/String;IIILjava/util/Map;Ljava/lang/String;Ljava/util/List;IILcom/sgscq/vpn/u5;)Lcom/sgscq/vpn/v5;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    return-object v1
.end method

.method public final k(I)I
    .locals 5

    .line 1
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v1, p0, Lcom/sgscq/vpn/t5;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    sub-int/2addr p1, v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "lieutenant_num"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :cond_0
    const/16 v1, 0x14

    if-lt p1, v1, :cond_1

    return v3

    :cond_1
    const/16 v1, 0xa

    if-lt p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    return v0
.end method

.method public final n(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/lang/String;III)Ljava/util/LinkedHashMap;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3}, Lcom/sgscq/vpn/w1;->T0(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    invoke-virtual {p1, p3}, Lcom/sgscq/vpn/w1;->k1(Ljava/lang/String;)Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const-string v3, "skill_type"

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {v1, v3, v2}, Lc/a;->e(Ljava/util/Map;Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_0
    const/4 v1, 0x1

    .line 25
    if-lt p5, v1, :cond_1

    .line 26
    .line 27
    const/4 v4, 0x4

    .line 28
    if-gt p5, v4, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move p5, v1

    .line 32
    :goto_1
    iget-object v4, p0, Lcom/sgscq/vpn/t5;->d:Lcom/sgscq/vpn/n5;

    .line 33
    .line 34
    if-ne v2, p5, :cond_2

    .line 35
    .line 36
    iget-object v2, v4, Lcom/sgscq/vpn/n5;->a:Lcom/sgscq/vpn/w1;

    .line 37
    .line 38
    invoke-virtual {v2, p3}, Lcom/sgscq/vpn/w1;->k1(Ljava/lang/String;)Ljava/util/Map;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v2}, Lcom/sgscq/vpn/n5;->n(Ljava/util/Map;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_3

    .line 47
    .line 48
    :cond_2
    iget-object p3, v4, Lcom/sgscq/vpn/n5;->c:Ljava/util/LinkedHashMap;

    .line 49
    .line 50
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {p3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    check-cast p3, Ljava/util/List;

    .line 59
    .line 60
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {p6, p3, v2}, Lcom/sgscq/vpn/n5;->p(ILjava/util/List;Ljava/util/Set;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    :cond_3
    const-string p6, "pk_id"

    .line 69
    .line 70
    invoke-interface {v0, p6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    const-string p6, "general_pk_id"

    .line 74
    .line 75
    invoke-interface {v0, p6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    const-string p2, "skill_id"

    .line 79
    .line 80
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    const-string p2, "id"

    .line 84
    .line 85
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    const-string p2, "position"

    .line 89
    .line 90
    const-string p6, "1"

    .line 91
    .line 92
    invoke-interface {v0, p2, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    const-string p2, "pos"

    .line 96
    .line 97
    invoke-interface {v0, p2, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    const-string p2, "skill_position"

    .line 101
    .line 102
    invoke-interface {v0, p2, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    const/16 v2, 0x1e

    .line 110
    .line 111
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    const-string v4, "level"

    .line 120
    .line 121
    invoke-interface {v0, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    const-string p4, "skill_level"

    .line 137
    .line 138
    invoke-interface {v0, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    const-string p2, "card_type"

    .line 142
    .line 143
    const-string p4, "4"

    .line 144
    .line 145
    invoke-interface {v0, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    const-string p2, "get_time"

    .line 149
    .line 150
    invoke-interface {v0, p2, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    const-string p2, "exp"

    .line 154
    .line 155
    const-string p4, "0"

    .line 156
    .line 157
    invoke-interface {v0, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    const-string p2, "extra_level"

    .line 161
    .line 162
    invoke-interface {v0, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    const-string p2, "advanced_level"

    .line 166
    .line 167
    invoke-interface {v0, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    const-string p2, "is_natural"

    .line 171
    .line 172
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 173
    .line 174
    invoke-interface {v0, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, p3, v0}, Lcom/sgscq/vpn/w1;->S(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 178
    .line 179
    .line 180
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    return-object v0
.end method

.method public final p(ILjava/util/ArrayList;)Lcom/sgscq/vpn/a7;
    .locals 11

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 10
    .line 11
    invoke-direct {v0, p2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 15
    .line 16
    invoke-direct {v2, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    move v5, v4

    .line 26
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-ge v5, v6, :cond_3

    .line 31
    .line 32
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    check-cast v6, Ljava/lang/String;

    .line 37
    .line 38
    mul-int/lit16 v7, v5, 0x83

    .line 39
    .line 40
    add-int/2addr v7, p1

    .line 41
    new-instance v8, Ljava/util/HashSet;

    .line 42
    .line 43
    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 44
    .line 45
    .line 46
    iget-object v9, p0, Lcom/sgscq/vpn/t5;->d:Lcom/sgscq/vpn/n5;

    .line 47
    .line 48
    invoke-virtual {v9, v6, v7, v8}, Lcom/sgscq/vpn/n5;->d(Ljava/lang/String;ILjava/util/HashSet;)Lcom/sgscq/vpn/j5;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    invoke-virtual {v8}, Lcom/sgscq/vpn/j5;->a()Z

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    if-nez v10, :cond_2

    .line 57
    .line 58
    new-instance v8, Ljava/util/HashSet;

    .line 59
    .line 60
    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v9, v6, v7, v8}, Lcom/sgscq/vpn/n5;->c(Ljava/lang/String;ILjava/util/HashSet;)Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-eqz v7, :cond_1

    .line 72
    .line 73
    return-object v1

    .line 74
    :cond_1
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    move-object v8, v6

    .line 79
    check-cast v8, Lcom/sgscq/vpn/j5;

    .line 80
    .line 81
    :cond_2
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    iget-object v6, v8, Lcom/sgscq/vpn/j5;->d:Ljava/util/List;

    .line 85
    .line 86
    invoke-interface {v2, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 87
    .line 88
    .line 89
    add-int/lit8 v5, v5, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    new-instance p1, Lcom/sgscq/vpn/a7;

    .line 93
    .line 94
    invoke-direct {p1, v2, v3}, Lcom/sgscq/vpn/a7;-><init>(Ljava/util/LinkedHashSet;Ljava/util/ArrayList;)V

    .line 95
    .line 96
    .line 97
    return-object p1
.end method

.method public final t(IIILjava/util/List;)Lcom/sgscq/vpn/t;
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-static {v4}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/t5;->j(I)I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    new-instance v7, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v9, 0x0

    .line 24
    :goto_0
    const/4 v10, 0x2

    .line 25
    const/4 v11, 0x1

    .line 26
    const-string v12, ""

    .line 27
    .line 28
    if-ge v9, v2, :cond_4

    .line 29
    .line 30
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v13

    .line 34
    if-ge v9, v13, :cond_0

    .line 35
    .line 36
    move-object/from16 v13, p4

    .line 37
    .line 38
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v10

    .line 42
    check-cast v10, Ljava/lang/String;

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_0
    move-object/from16 v13, p4

    .line 46
    .line 47
    const/16 v14, 0xa

    .line 48
    .line 49
    if-le v1, v14, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    sget-object v14, Lcom/sgscq/vpn/t5;->k:[Ljava/lang/String;

    .line 53
    .line 54
    if-nez v9, :cond_2

    .line 55
    .line 56
    add-int/lit8 v10, v1, -0x1

    .line 57
    .line 58
    aget-object v12, v14, v10

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    if-ne v9, v11, :cond_3

    .line 62
    .line 63
    if-gt v1, v10, :cond_3

    .line 64
    .line 65
    add-int/lit8 v10, v1, 0x9

    .line 66
    .line 67
    aget-object v12, v14, v10

    .line 68
    .line 69
    :cond_3
    :goto_1
    move-object v10, v12

    .line 70
    :goto_2
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    add-int/lit8 v9, v9, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    move-object/from16 v13, p4

    .line 77
    .line 78
    new-instance v9, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .line 82
    .line 83
    iget-object v14, v0, Lcom/sgscq/vpn/t5;->f:Ljava/util/List;

    .line 84
    .line 85
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v15

    .line 89
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v16

    .line 93
    if-eqz v16, :cond_6

    .line 94
    .line 95
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v16

    .line 99
    move-object/from16 v11, v16

    .line 100
    .line 101
    check-cast v11, Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {v6, v5, v11}, Lcom/sgscq/vpn/t5;->g(ILcom/sgscq/vpn/w1;Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v16

    .line 107
    if-eqz v16, :cond_5

    .line 108
    .line 109
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    :cond_5
    const/4 v11, 0x1

    .line 113
    goto :goto_3

    .line 114
    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v11

    .line 118
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v15

    .line 122
    iget-object v4, v0, Lcom/sgscq/vpn/t5;->d:Lcom/sgscq/vpn/n5;

    .line 123
    .line 124
    if-eqz v15, :cond_8

    .line 125
    .line 126
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v15

    .line 130
    check-cast v15, Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v4, v15}, Lcom/sgscq/vpn/n5;->l(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-eqz v4, :cond_7

    .line 137
    .line 138
    invoke-static {v6, v5, v15}, Lcom/sgscq/vpn/t5;->g(ILcom/sgscq/vpn/w1;Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-eqz v4, :cond_7

    .line 143
    .line 144
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    if-nez v4, :cond_7

    .line 149
    .line 150
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    :cond_7
    const/4 v4, 0x0

    .line 154
    goto :goto_4

    .line 155
    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object v11

    .line 159
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object v15

    .line 163
    const/4 v10, 0x0

    .line 164
    :goto_5
    const/16 v8, 0x40

    .line 165
    .line 166
    if-ge v10, v8, :cond_3b

    .line 167
    .line 168
    new-instance v8, Ljava/util/ArrayList;

    .line 169
    .line 170
    mul-int/lit8 v18, v1, 0x61

    .line 171
    .line 172
    move-object/from16 v19, v11

    .line 173
    .line 174
    mul-int/lit16 v11, v10, 0x3f1

    .line 175
    .line 176
    add-int v11, v11, v18

    .line 177
    .line 178
    iget-object v13, v4, Lcom/sgscq/vpn/n5;->g:Ljava/util/ArrayList;

    .line 179
    .line 180
    move-object/from16 v20, v4

    .line 181
    .line 182
    move-object/from16 v18, v15

    .line 183
    .line 184
    const/4 v15, 0x0

    .line 185
    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    invoke-static {v9}, Lcom/sgscq/vpn/n5;->u(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 198
    .line 199
    .line 200
    move-result-object v15

    .line 201
    move-object/from16 v21, v9

    .line 202
    .line 203
    new-instance v9, Ljava/util/LinkedHashSet;

    .line 204
    .line 205
    invoke-direct {v9, v15}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 206
    .line 207
    .line 208
    new-instance v1, Ljava/util/ArrayList;

    .line 209
    .line 210
    move/from16 v22, v10

    .line 211
    .line 212
    invoke-static {v4, v12}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    .line 213
    .line 214
    .line 215
    move-result-object v10

    .line 216
    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 217
    .line 218
    .line 219
    new-instance v10, Ljava/util/LinkedHashSet;

    .line 220
    .line 221
    invoke-direct {v10}, Ljava/util/LinkedHashSet;-><init>()V

    .line 222
    .line 223
    .line 224
    move-object/from16 v23, v12

    .line 225
    .line 226
    move-object/from16 v24, v14

    .line 227
    .line 228
    const/4 v12, 0x0

    .line 229
    :goto_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 230
    .line 231
    .line 232
    move-result v14

    .line 233
    invoke-static {v4, v14}, Ljava/lang/Math;->min(II)I

    .line 234
    .line 235
    .line 236
    move-result v14

    .line 237
    if-ge v12, v14, :cond_a

    .line 238
    .line 239
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v14

    .line 243
    check-cast v14, Ljava/lang/String;

    .line 244
    .line 245
    if-eqz v14, :cond_9

    .line 246
    .line 247
    invoke-interface {v9, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v25

    .line 251
    if-eqz v25, :cond_9

    .line 252
    .line 253
    invoke-interface {v10, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v25

    .line 257
    if-eqz v25, :cond_9

    .line 258
    .line 259
    invoke-virtual {v1, v12, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    :cond_9
    add-int/lit8 v12, v12, 0x1

    .line 263
    .line 264
    goto :goto_6

    .line 265
    :cond_a
    const/4 v12, 0x6

    .line 266
    if-lt v2, v12, :cond_b

    .line 267
    .line 268
    const/4 v12, 0x5

    .line 269
    goto :goto_7

    .line 270
    :cond_b
    move v12, v2

    .line 271
    :goto_7
    const/4 v14, 0x2

    .line 272
    if-lt v12, v14, :cond_18

    .line 273
    .line 274
    if-eqz v13, :cond_18

    .line 275
    .line 276
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 277
    .line 278
    .line 279
    move-result-object v13

    .line 280
    const/4 v14, 0x0

    .line 281
    const/16 v25, 0x0

    .line 282
    .line 283
    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 284
    .line 285
    .line 286
    move-result v26

    .line 287
    if-eqz v26, :cond_17

    .line 288
    .line 289
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v26

    .line 293
    move-object/from16 v27, v13

    .line 294
    .line 295
    move-object/from16 v13, v26

    .line 296
    .line 297
    check-cast v13, Lcom/sgscq/vpn/i5;

    .line 298
    .line 299
    if-nez v13, :cond_c

    .line 300
    .line 301
    move-object/from16 v26, v5

    .line 302
    .line 303
    move/from16 v29, v6

    .line 304
    .line 305
    move-object/from16 v31, v7

    .line 306
    .line 307
    const/4 v5, 0x2

    .line 308
    goto :goto_c

    .line 309
    :cond_c
    move-object/from16 v26, v5

    .line 310
    .line 311
    iget-object v5, v13, Lcom/sgscq/vpn/i5;->b:Ljava/util/List;

    .line 312
    .line 313
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 314
    .line 315
    .line 316
    move-result-object v28

    .line 317
    move/from16 v29, v6

    .line 318
    .line 319
    const/4 v0, 0x0

    .line 320
    const/4 v6, 0x0

    .line 321
    :goto_9
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    .line 322
    .line 323
    .line 324
    move-result v30

    .line 325
    if-eqz v30, :cond_f

    .line 326
    .line 327
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v30

    .line 331
    move-object/from16 v31, v7

    .line 332
    .line 333
    move-object/from16 v7, v30

    .line 334
    .line 335
    check-cast v7, Ljava/lang/String;

    .line 336
    .line 337
    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v30

    .line 341
    if-nez v30, :cond_d

    .line 342
    .line 343
    goto :goto_a

    .line 344
    :cond_d
    add-int/lit8 v0, v0, 0x1

    .line 345
    .line 346
    invoke-interface {v10, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v7

    .line 350
    if-nez v7, :cond_e

    .line 351
    .line 352
    add-int/lit8 v6, v6, 0x1

    .line 353
    .line 354
    :cond_e
    :goto_a
    move-object/from16 v7, v31

    .line 355
    .line 356
    goto :goto_9

    .line 357
    :cond_f
    move-object/from16 v31, v7

    .line 358
    .line 359
    const/4 v7, 0x0

    .line 360
    const/16 v36, 0x0

    .line 361
    .line 362
    :goto_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 363
    .line 364
    .line 365
    move-result v3

    .line 366
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 367
    .line 368
    .line 369
    move-result v3

    .line 370
    if-ge v7, v3, :cond_11

    .line 371
    .line 372
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v3

    .line 380
    if-eqz v3, :cond_10

    .line 381
    .line 382
    add-int/lit8 v36, v36, 0x1

    .line 383
    .line 384
    :cond_10
    add-int/lit8 v7, v7, 0x1

    .line 385
    .line 386
    goto :goto_b

    .line 387
    :cond_11
    invoke-static {v2, v1}, Lcom/sgscq/vpn/n5;->g(ILjava/util/ArrayList;)I

    .line 388
    .line 389
    .line 390
    move-result v3

    .line 391
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    .line 392
    .line 393
    .line 394
    move-result v3

    .line 395
    add-int v3, v3, v36

    .line 396
    .line 397
    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    .line 398
    .line 399
    .line 400
    move-result v3

    .line 401
    const/4 v5, 0x2

    .line 402
    invoke-static {v5, v12}, Ljava/lang/Math;->min(II)I

    .line 403
    .line 404
    .line 405
    move-result v6

    .line 406
    if-ge v3, v6, :cond_12

    .line 407
    .line 408
    :goto_c
    const/4 v7, 0x0

    .line 409
    goto :goto_f

    .line 410
    :cond_12
    if-ne v0, v12, :cond_13

    .line 411
    .line 412
    const/16 v34, 0x1

    .line 413
    .line 414
    goto :goto_d

    .line 415
    :cond_13
    const/16 v34, 0x0

    .line 416
    .line 417
    :goto_d
    if-ne v3, v12, :cond_14

    .line 418
    .line 419
    const/16 v33, 0x1

    .line 420
    .line 421
    goto :goto_e

    .line 422
    :cond_14
    const/16 v33, 0x0

    .line 423
    .line 424
    :goto_e
    sub-int/2addr v0, v12

    .line 425
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 426
    .line 427
    .line 428
    move-result v0

    .line 429
    neg-int v0, v0

    .line 430
    iget-object v6, v13, Lcom/sgscq/vpn/i5;->a:Ljava/lang/String;

    .line 431
    .line 432
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 433
    .line 434
    .line 435
    move-result v6

    .line 436
    mul-int/lit8 v6, v6, 0x1f

    .line 437
    .line 438
    add-int/2addr v6, v11

    .line 439
    const v7, 0x7fffffff

    .line 440
    .line 441
    .line 442
    invoke-static {v6, v7}, Ljava/lang/Math;->floorMod(II)I

    .line 443
    .line 444
    .line 445
    move-result v6

    .line 446
    neg-int v6, v6

    .line 447
    new-instance v7, Lcom/sgscq/vpn/l5;

    .line 448
    .line 449
    move/from16 v28, v6

    .line 450
    .line 451
    iget-wide v5, v13, Lcom/sgscq/vpn/i5;->c:D

    .line 452
    .line 453
    move-object/from16 v32, v7

    .line 454
    .line 455
    move/from16 v35, v3

    .line 456
    .line 457
    move-wide/from16 v37, v5

    .line 458
    .line 459
    move/from16 v39, v0

    .line 460
    .line 461
    move/from16 v40, v28

    .line 462
    .line 463
    invoke-direct/range {v32 .. v40}, Lcom/sgscq/vpn/l5;-><init>(IIIIDII)V

    .line 464
    .line 465
    .line 466
    :goto_f
    if-eqz v7, :cond_16

    .line 467
    .line 468
    if-eqz v14, :cond_15

    .line 469
    .line 470
    invoke-virtual {v7, v14}, Lcom/sgscq/vpn/l5;->a(Lcom/sgscq/vpn/l5;)I

    .line 471
    .line 472
    .line 473
    move-result v0

    .line 474
    if-lez v0, :cond_16

    .line 475
    .line 476
    :cond_15
    move-object v14, v7

    .line 477
    move-object/from16 v25, v13

    .line 478
    .line 479
    :cond_16
    move-object/from16 v0, p0

    .line 480
    .line 481
    move/from16 v3, p3

    .line 482
    .line 483
    move-object/from16 v5, v26

    .line 484
    .line 485
    move-object/from16 v13, v27

    .line 486
    .line 487
    move/from16 v6, v29

    .line 488
    .line 489
    move-object/from16 v7, v31

    .line 490
    .line 491
    goto/16 :goto_8

    .line 492
    .line 493
    :cond_17
    move-object/from16 v26, v5

    .line 494
    .line 495
    move/from16 v29, v6

    .line 496
    .line 497
    move-object/from16 v31, v7

    .line 498
    .line 499
    move-object/from16 v14, v25

    .line 500
    .line 501
    goto :goto_10

    .line 502
    :cond_18
    move-object/from16 v26, v5

    .line 503
    .line 504
    move/from16 v29, v6

    .line 505
    .line 506
    move-object/from16 v31, v7

    .line 507
    .line 508
    const/4 v14, 0x0

    .line 509
    :goto_10
    const/4 v0, -0x1

    .line 510
    if-eqz v14, :cond_23

    .line 511
    .line 512
    const/4 v3, 0x0

    .line 513
    const/4 v5, 0x0

    .line 514
    :goto_11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 515
    .line 516
    .line 517
    move-result v6

    .line 518
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    .line 519
    .line 520
    .line 521
    move-result v6

    .line 522
    iget-object v7, v14, Lcom/sgscq/vpn/i5;->b:Ljava/util/List;

    .line 523
    .line 524
    if-ge v3, v6, :cond_1a

    .line 525
    .line 526
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v6

    .line 530
    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    move-result v6

    .line 534
    if-eqz v6, :cond_19

    .line 535
    .line 536
    add-int/lit8 v5, v5, 0x1

    .line 537
    .line 538
    :cond_19
    add-int/lit8 v3, v3, 0x1

    .line 539
    .line 540
    goto :goto_11

    .line 541
    :cond_1a
    invoke-static {v2, v1}, Lcom/sgscq/vpn/n5;->g(ILjava/util/ArrayList;)I

    .line 542
    .line 543
    .line 544
    move-result v3

    .line 545
    add-int/2addr v3, v5

    .line 546
    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    .line 547
    .line 548
    .line 549
    move-result v3

    .line 550
    iget-object v6, v14, Lcom/sgscq/vpn/i5;->a:Ljava/lang/String;

    .line 551
    .line 552
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 553
    .line 554
    .line 555
    move-result v6

    .line 556
    add-int/2addr v6, v11

    .line 557
    new-instance v12, Ljava/util/ArrayList;

    .line 558
    .line 559
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .line 561
    .line 562
    if-eqz v7, :cond_1c

    .line 563
    .line 564
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 565
    .line 566
    .line 567
    move-result v13

    .line 568
    if-eqz v13, :cond_1b

    .line 569
    .line 570
    goto :goto_13

    .line 571
    :cond_1b
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 572
    .line 573
    .line 574
    move-result v13

    .line 575
    invoke-static {v6, v13}, Ljava/lang/Math;->floorMod(II)I

    .line 576
    .line 577
    .line 578
    move-result v6

    .line 579
    const/4 v13, 0x0

    .line 580
    :goto_12
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 581
    .line 582
    .line 583
    move-result v14

    .line 584
    if-ge v13, v14, :cond_1c

    .line 585
    .line 586
    add-int v14, v6, v13

    .line 587
    .line 588
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 589
    .line 590
    .line 591
    move-result v25

    .line 592
    rem-int v14, v14, v25

    .line 593
    .line 594
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object v14

    .line 598
    check-cast v14, Ljava/lang/String;

    .line 599
    .line 600
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    add-int/lit8 v13, v13, 0x1

    .line 604
    .line 605
    goto :goto_12

    .line 606
    :cond_1c
    :goto_13
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 607
    .line 608
    .line 609
    move-result-object v6

    .line 610
    :cond_1d
    :goto_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 611
    .line 612
    .line 613
    move-result v7

    .line 614
    if-eqz v7, :cond_23

    .line 615
    .line 616
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v7

    .line 620
    check-cast v7, Ljava/lang/String;

    .line 621
    .line 622
    if-lt v5, v3, :cond_1e

    .line 623
    .line 624
    goto :goto_17

    .line 625
    :cond_1e
    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 626
    .line 627
    .line 628
    move-result v12

    .line 629
    if-eqz v12, :cond_1d

    .line 630
    .line 631
    invoke-interface {v10, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 632
    .line 633
    .line 634
    move-result v12

    .line 635
    if-eqz v12, :cond_1f

    .line 636
    .line 637
    goto :goto_14

    .line 638
    :cond_1f
    const/4 v12, 0x0

    .line 639
    :goto_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 640
    .line 641
    .line 642
    move-result v13

    .line 643
    invoke-static {v2, v13}, Ljava/lang/Math;->min(II)I

    .line 644
    .line 645
    .line 646
    move-result v13

    .line 647
    if-ge v12, v13, :cond_21

    .line 648
    .line 649
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v13

    .line 653
    check-cast v13, Ljava/lang/String;

    .line 654
    .line 655
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 656
    .line 657
    .line 658
    move-result v13

    .line 659
    if-eqz v13, :cond_20

    .line 660
    .line 661
    goto :goto_16

    .line 662
    :cond_20
    add-int/lit8 v12, v12, 0x1

    .line 663
    .line 664
    goto :goto_15

    .line 665
    :cond_21
    move v12, v0

    .line 666
    :goto_16
    if-gez v12, :cond_22

    .line 667
    .line 668
    goto :goto_17

    .line 669
    :cond_22
    invoke-virtual {v1, v12, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    invoke-interface {v10, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 673
    .line 674
    .line 675
    add-int/lit8 v5, v5, 0x1

    .line 676
    .line 677
    goto :goto_14

    .line 678
    :cond_23
    :goto_17
    const/4 v2, 0x0

    .line 679
    :goto_18
    if-ge v2, v4, :cond_29

    .line 680
    .line 681
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    move-result-object v3

    .line 685
    check-cast v3, Ljava/lang/String;

    .line 686
    .line 687
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 688
    .line 689
    .line 690
    move-result v3

    .line 691
    if-nez v3, :cond_24

    .line 692
    .line 693
    goto :goto_1c

    .line 694
    :cond_24
    mul-int/lit8 v3, v2, 0x61

    .line 695
    .line 696
    add-int/2addr v3, v11

    .line 697
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 698
    .line 699
    .line 700
    move-result v5

    .line 701
    if-eqz v5, :cond_25

    .line 702
    .line 703
    goto :goto_1a

    .line 704
    :cond_25
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 705
    .line 706
    .line 707
    move-result v5

    .line 708
    invoke-static {v3, v5}, Ljava/lang/Math;->floorMod(II)I

    .line 709
    .line 710
    .line 711
    move-result v3

    .line 712
    const/4 v5, 0x0

    .line 713
    :goto_19
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 714
    .line 715
    .line 716
    move-result v6

    .line 717
    if-ge v5, v6, :cond_27

    .line 718
    .line 719
    add-int v6, v3, v5

    .line 720
    .line 721
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 722
    .line 723
    .line 724
    move-result v7

    .line 725
    rem-int/2addr v6, v7

    .line 726
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    move-result-object v6

    .line 730
    check-cast v6, Ljava/lang/String;

    .line 731
    .line 732
    invoke-interface {v10, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 733
    .line 734
    .line 735
    move-result v7

    .line 736
    if-nez v7, :cond_26

    .line 737
    .line 738
    goto :goto_1b

    .line 739
    :cond_26
    add-int/lit8 v5, v5, 0x1

    .line 740
    .line 741
    goto :goto_19

    .line 742
    :cond_27
    :goto_1a
    move-object/from16 v6, v23

    .line 743
    .line 744
    :goto_1b
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 745
    .line 746
    .line 747
    move-result v3

    .line 748
    if-eqz v3, :cond_28

    .line 749
    .line 750
    goto :goto_1c

    .line 751
    :cond_28
    invoke-virtual {v1, v2, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 752
    .line 753
    .line 754
    invoke-interface {v10, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 755
    .line 756
    .line 757
    :goto_1c
    add-int/lit8 v2, v2, 0x1

    .line 758
    .line 759
    goto :goto_18

    .line 760
    :cond_29
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 761
    .line 762
    .line 763
    move-result-object v1

    .line 764
    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 765
    .line 766
    .line 767
    const/4 v1, 0x0

    .line 768
    invoke-static {v1}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 769
    .line 770
    .line 771
    move-result-object v2

    .line 772
    new-instance v3, Ljava/util/HashSet;

    .line 773
    .line 774
    invoke-direct {v3, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 775
    .line 776
    .line 777
    move/from16 v4, p3

    .line 778
    .line 779
    const/4 v15, 0x0

    .line 780
    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    .line 781
    .line 782
    .line 783
    move-result v5

    .line 784
    :goto_1d
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 785
    .line 786
    .line 787
    move-result v6

    .line 788
    if-ge v5, v6, :cond_30

    .line 789
    .line 790
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    .line 791
    .line 792
    .line 793
    move-result v6

    .line 794
    if-ge v5, v6, :cond_2a

    .line 795
    .line 796
    move-object/from16 v6, v31

    .line 797
    .line 798
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 799
    .line 800
    .line 801
    move-result-object v7

    .line 802
    check-cast v7, Ljava/lang/String;

    .line 803
    .line 804
    goto :goto_1e

    .line 805
    :cond_2a
    move-object/from16 v6, v31

    .line 806
    .line 807
    move-object/from16 v7, v23

    .line 808
    .line 809
    :goto_1e
    if-eqz v7, :cond_2b

    .line 810
    .line 811
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 812
    .line 813
    .line 814
    move-result v7

    .line 815
    if-nez v7, :cond_2b

    .line 816
    .line 817
    const/4 v14, 0x1

    .line 818
    move-object/from16 v9, p0

    .line 819
    .line 820
    goto :goto_22

    .line 821
    :cond_2b
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    move-result-object v7

    .line 825
    check-cast v7, Ljava/lang/String;

    .line 826
    .line 827
    move-object/from16 v9, p0

    .line 828
    .line 829
    iget-object v10, v9, Lcom/sgscq/vpn/t5;->e:Ljava/util/List;

    .line 830
    .line 831
    invoke-interface {v10, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 832
    .line 833
    .line 834
    move-result v12

    .line 835
    if-eqz v12, :cond_2c

    .line 836
    .line 837
    const/4 v12, 0x1

    .line 838
    invoke-static {v12, v2, v7}, Lcom/sgscq/vpn/t5;->g(ILcom/sgscq/vpn/w1;Ljava/lang/String;)Z

    .line 839
    .line 840
    .line 841
    move-result v13

    .line 842
    if-eqz v13, :cond_2c

    .line 843
    .line 844
    goto :goto_21

    .line 845
    :cond_2c
    move v12, v15

    .line 846
    :goto_1f
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 847
    .line 848
    .line 849
    move-result v13

    .line 850
    if-ge v12, v13, :cond_2f

    .line 851
    .line 852
    mul-int/lit16 v13, v5, 0x95

    .line 853
    .line 854
    add-int/2addr v13, v11

    .line 855
    add-int/2addr v13, v12

    .line 856
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 857
    .line 858
    .line 859
    move-result v14

    .line 860
    invoke-static {v13, v14}, Ljava/lang/Math;->floorMod(II)I

    .line 861
    .line 862
    .line 863
    move-result v13

    .line 864
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 865
    .line 866
    .line 867
    move-result-object v13

    .line 868
    check-cast v13, Ljava/lang/String;

    .line 869
    .line 870
    invoke-virtual {v3, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 871
    .line 872
    .line 873
    move-result v14

    .line 874
    if-nez v14, :cond_2e

    .line 875
    .line 876
    const/4 v14, 0x1

    .line 877
    invoke-static {v14, v2, v13}, Lcom/sgscq/vpn/t5;->g(ILcom/sgscq/vpn/w1;Ljava/lang/String;)Z

    .line 878
    .line 879
    .line 880
    move-result v16

    .line 881
    if-nez v16, :cond_2d

    .line 882
    .line 883
    goto :goto_20

    .line 884
    :cond_2d
    invoke-virtual {v3, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 885
    .line 886
    .line 887
    invoke-virtual {v3, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 888
    .line 889
    .line 890
    invoke-virtual {v8, v5, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 891
    .line 892
    .line 893
    goto :goto_22

    .line 894
    :cond_2e
    const/4 v14, 0x1

    .line 895
    :goto_20
    add-int/lit8 v12, v12, 0x1

    .line 896
    .line 897
    goto :goto_1f

    .line 898
    :cond_2f
    :goto_21
    const/4 v14, 0x1

    .line 899
    :goto_22
    add-int/lit8 v5, v5, 0x1

    .line 900
    .line 901
    move-object/from16 v31, v6

    .line 902
    .line 903
    goto :goto_1d

    .line 904
    :cond_30
    move-object/from16 v9, p0

    .line 905
    .line 906
    move-object/from16 v5, v26

    .line 907
    .line 908
    move/from16 v7, v29

    .line 909
    .line 910
    move-object/from16 v6, v31

    .line 911
    .line 912
    const/4 v14, 0x1

    .line 913
    invoke-static {v5, v8, v7, v4}, Lcom/sgscq/vpn/t5;->h(Lcom/sgscq/vpn/w1;Ljava/util/List;II)Z

    .line 914
    .line 915
    .line 916
    move-result v2

    .line 917
    if-nez v2, :cond_31

    .line 918
    .line 919
    move-object/from16 v13, v24

    .line 920
    .line 921
    goto/16 :goto_2a

    .line 922
    .line 923
    :cond_31
    invoke-virtual {v9, v11, v8}, Lcom/sgscq/vpn/t5;->p(ILjava/util/ArrayList;)Lcom/sgscq/vpn/a7;

    .line 924
    .line 925
    .line 926
    move-result-object v2

    .line 927
    if-nez v2, :cond_38

    .line 928
    .line 929
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    .line 930
    .line 931
    .line 932
    move-result v3

    .line 933
    if-eqz v3, :cond_38

    .line 934
    .line 935
    new-instance v3, Ljava/util/HashSet;

    .line 936
    .line 937
    invoke-direct {v3, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 938
    .line 939
    .line 940
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 941
    .line 942
    .line 943
    move-result v10

    .line 944
    add-int/2addr v10, v0

    .line 945
    :goto_23
    if-ltz v10, :cond_36

    .line 946
    .line 947
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 948
    .line 949
    .line 950
    move-result v0

    .line 951
    if-ge v10, v0, :cond_32

    .line 952
    .line 953
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 954
    .line 955
    .line 956
    move-result-object v0

    .line 957
    check-cast v0, Ljava/lang/String;

    .line 958
    .line 959
    if-eqz v0, :cond_32

    .line 960
    .line 961
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 962
    .line 963
    .line 964
    move-result v0

    .line 965
    if-nez v0, :cond_32

    .line 966
    .line 967
    goto :goto_26

    .line 968
    :cond_32
    move v0, v15

    .line 969
    :goto_24
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    .line 970
    .line 971
    .line 972
    move-result v12

    .line 973
    if-ge v0, v12, :cond_35

    .line 974
    .line 975
    mul-int/lit16 v12, v10, 0x89

    .line 976
    .line 977
    add-int/2addr v12, v11

    .line 978
    add-int v13, v12, v0

    .line 979
    .line 980
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    .line 981
    .line 982
    .line 983
    move-result v1

    .line 984
    invoke-static {v13, v1}, Ljava/lang/Math;->floorMod(II)I

    .line 985
    .line 986
    .line 987
    move-result v1

    .line 988
    move-object/from16 v13, v24

    .line 989
    .line 990
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 991
    .line 992
    .line 993
    move-result-object v1

    .line 994
    check-cast v1, Ljava/lang/String;

    .line 995
    .line 996
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 997
    .line 998
    .line 999
    move-result v17

    .line 1000
    if-eqz v17, :cond_33

    .line 1001
    .line 1002
    goto :goto_25

    .line 1003
    :cond_33
    new-instance v14, Ljava/util/ArrayList;

    .line 1004
    .line 1005
    invoke-direct {v14, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v14, v10, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1009
    .line 1010
    .line 1011
    mul-int/lit16 v1, v0, 0x3f1

    .line 1012
    .line 1013
    add-int/2addr v1, v12

    .line 1014
    invoke-virtual {v9, v1, v14}, Lcom/sgscq/vpn/t5;->p(ILjava/util/ArrayList;)Lcom/sgscq/vpn/a7;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v1

    .line 1018
    if-eqz v1, :cond_34

    .line 1019
    .line 1020
    new-instance v0, Lcom/sgscq/vpn/a7;

    .line 1021
    .line 1022
    invoke-direct {v0, v14, v1}, Lcom/sgscq/vpn/a7;-><init>(Ljava/util/ArrayList;Lcom/sgscq/vpn/a7;)V

    .line 1023
    .line 1024
    .line 1025
    goto :goto_27

    .line 1026
    :cond_34
    :goto_25
    add-int/lit8 v0, v0, 0x1

    .line 1027
    .line 1028
    move-object/from16 v24, v13

    .line 1029
    .line 1030
    const/4 v1, 0x0

    .line 1031
    const/4 v14, 0x1

    .line 1032
    goto :goto_24

    .line 1033
    :cond_35
    :goto_26
    move-object/from16 v13, v24

    .line 1034
    .line 1035
    add-int/lit8 v10, v10, -0x1

    .line 1036
    .line 1037
    move-object/from16 v24, v13

    .line 1038
    .line 1039
    const/4 v1, 0x0

    .line 1040
    const/4 v14, 0x1

    .line 1041
    goto :goto_23

    .line 1042
    :cond_36
    move-object/from16 v13, v24

    .line 1043
    .line 1044
    const/4 v0, 0x0

    .line 1045
    :goto_27
    if-eqz v0, :cond_39

    .line 1046
    .line 1047
    iget-object v1, v0, Lcom/sgscq/vpn/a7;->a:Ljava/lang/Object;

    .line 1048
    .line 1049
    check-cast v1, Ljava/util/List;

    .line 1050
    .line 1051
    invoke-static {v5, v1, v7, v4}, Lcom/sgscq/vpn/t5;->h(Lcom/sgscq/vpn/w1;Ljava/util/List;II)Z

    .line 1052
    .line 1053
    .line 1054
    move-result v2

    .line 1055
    if-nez v2, :cond_37

    .line 1056
    .line 1057
    goto :goto_29

    .line 1058
    :cond_37
    iget-object v0, v0, Lcom/sgscq/vpn/a7;->b:Ljava/lang/Object;

    .line 1059
    .line 1060
    move-object v2, v0

    .line 1061
    check-cast v2, Lcom/sgscq/vpn/a7;

    .line 1062
    .line 1063
    goto :goto_28

    .line 1064
    :cond_38
    move-object/from16 v13, v24

    .line 1065
    .line 1066
    :cond_39
    move-object v1, v8

    .line 1067
    :goto_28
    if-nez v2, :cond_3a

    .line 1068
    .line 1069
    :goto_29
    move-object/from16 v18, v8

    .line 1070
    .line 1071
    :goto_2a
    add-int/lit8 v10, v22, 0x1

    .line 1072
    .line 1073
    move/from16 v1, p1

    .line 1074
    .line 1075
    move/from16 v2, p2

    .line 1076
    .line 1077
    move v3, v4

    .line 1078
    move-object v0, v9

    .line 1079
    move-object v14, v13

    .line 1080
    move-object/from16 v15, v18

    .line 1081
    .line 1082
    move-object/from16 v11, v19

    .line 1083
    .line 1084
    move-object/from16 v4, v20

    .line 1085
    .line 1086
    move-object/from16 v9, v21

    .line 1087
    .line 1088
    move-object/from16 v12, v23

    .line 1089
    .line 1090
    move-object/from16 v13, p4

    .line 1091
    .line 1092
    move/from16 v41, v7

    .line 1093
    .line 1094
    move-object v7, v6

    .line 1095
    move/from16 v6, v41

    .line 1096
    .line 1097
    goto/16 :goto_5

    .line 1098
    .line 1099
    :cond_3a
    new-instance v11, Ljava/util/ArrayList;

    .line 1100
    .line 1101
    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1102
    .line 1103
    .line 1104
    move-object v5, v11

    .line 1105
    goto :goto_2b

    .line 1106
    :cond_3b
    move-object v9, v0

    .line 1107
    move-object/from16 v20, v4

    .line 1108
    .line 1109
    move-object/from16 v19, v11

    .line 1110
    .line 1111
    move-object/from16 v18, v15

    .line 1112
    .line 1113
    const/4 v15, 0x0

    .line 1114
    move v4, v3

    .line 1115
    move-object/from16 v8, v18

    .line 1116
    .line 1117
    move-object/from16 v5, v19

    .line 1118
    .line 1119
    const/4 v2, 0x0

    .line 1120
    :goto_2b
    if-nez v2, :cond_3e

    .line 1121
    .line 1122
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1123
    .line 1124
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1125
    .line 1126
    const-string v2, "Unable to build complete robot formation for rank "

    .line 1127
    .line 1128
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1129
    .line 1130
    .line 1131
    move/from16 v2, p1

    .line 1132
    .line 1133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1134
    .line 1135
    .line 1136
    const-string v3, " with "

    .line 1137
    .line 1138
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    .line 1140
    .line 1141
    move/from16 v3, p2

    .line 1142
    .line 1143
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1144
    .line 1145
    .line 1146
    const-string v3, " mains: "

    .line 1147
    .line 1148
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    .line 1150
    .line 1151
    new-instance v3, Ljava/util/ArrayList;

    .line 1152
    .line 1153
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1154
    .line 1155
    .line 1156
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v4

    .line 1160
    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1161
    .line 1162
    .line 1163
    move-result v5

    .line 1164
    if-eqz v5, :cond_3c

    .line 1165
    .line 1166
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v5

    .line 1170
    check-cast v5, Ljava/lang/String;

    .line 1171
    .line 1172
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1173
    .line 1174
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1175
    .line 1176
    .line 1177
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    .line 1179
    .line 1180
    const-string v7, "/"

    .line 1181
    .line 1182
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    .line 1184
    .line 1185
    move-object/from16 v10, v20

    .line 1186
    .line 1187
    invoke-virtual {v10, v5}, Lcom/sgscq/vpn/n5;->t(Ljava/lang/String;)Lcom/sgscq/vpn/m5;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v11

    .line 1191
    iget v11, v11, Lcom/sgscq/vpn/m5;->a:I

    .line 1192
    .line 1193
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1194
    .line 1195
    .line 1196
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    .line 1198
    .line 1199
    invoke-virtual {v10, v5}, Lcom/sgscq/vpn/n5;->o(Ljava/lang/String;)I

    .line 1200
    .line 1201
    .line 1202
    move-result v5

    .line 1203
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1204
    .line 1205
    .line 1206
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v5

    .line 1210
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1211
    .line 1212
    .line 1213
    goto :goto_2c

    .line 1214
    :cond_3c
    move-object/from16 v10, v20

    .line 1215
    .line 1216
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v3

    .line 1220
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    .line 1222
    .line 1223
    const-string v3, ", candidates="

    .line 1224
    .line 1225
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    .line 1227
    .line 1228
    mul-int/lit8 v2, v2, 0x61

    .line 1229
    .line 1230
    new-instance v3, Ljava/util/HashSet;

    .line 1231
    .line 1232
    invoke-direct {v3, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1233
    .line 1234
    .line 1235
    new-instance v4, Ljava/util/ArrayList;

    .line 1236
    .line 1237
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1238
    .line 1239
    .line 1240
    :goto_2d
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 1241
    .line 1242
    .line 1243
    move-result v5

    .line 1244
    if-ge v15, v5, :cond_3d

    .line 1245
    .line 1246
    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v5

    .line 1250
    check-cast v5, Ljava/lang/String;

    .line 1251
    .line 1252
    mul-int/lit16 v6, v15, 0x83

    .line 1253
    .line 1254
    add-int/2addr v6, v2

    .line 1255
    invoke-virtual {v10, v5, v6, v3}, Lcom/sgscq/vpn/n5;->c(Ljava/lang/String;ILjava/util/HashSet;)Ljava/util/ArrayList;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v5

    .line 1259
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1260
    .line 1261
    .line 1262
    move-result v5

    .line 1263
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v5

    .line 1267
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1268
    .line 1269
    .line 1270
    add-int/lit8 v15, v15, 0x1

    .line 1271
    .line 1272
    goto :goto_2d

    .line 1273
    :cond_3d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1274
    .line 1275
    .line 1276
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v1

    .line 1280
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1281
    .line 1282
    .line 1283
    throw v0

    .line 1284
    :cond_3e
    move/from16 v3, p2

    .line 1285
    .line 1286
    move-object/from16 v10, v20

    .line 1287
    .line 1288
    new-instance v0, Ljava/util/HashSet;

    .line 1289
    .line 1290
    iget-object v1, v2, Lcom/sgscq/vpn/a7;->a:Ljava/lang/Object;

    .line 1291
    .line 1292
    check-cast v1, Ljava/util/Set;

    .line 1293
    .line 1294
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1295
    .line 1296
    .line 1297
    iget-object v1, v2, Lcom/sgscq/vpn/a7;->b:Ljava/lang/Object;

    .line 1298
    .line 1299
    move-object v6, v1

    .line 1300
    check-cast v6, Ljava/util/List;

    .line 1301
    .line 1302
    new-instance v7, Ljava/util/ArrayList;

    .line 1303
    .line 1304
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1305
    .line 1306
    .line 1307
    new-instance v8, Ljava/util/HashSet;

    .line 1308
    .line 1309
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 1310
    .line 1311
    .line 1312
    :goto_2e
    if-ge v15, v3, :cond_41

    .line 1313
    .line 1314
    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v1

    .line 1318
    check-cast v1, Ljava/lang/String;

    .line 1319
    .line 1320
    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v2

    .line 1324
    check-cast v2, Lcom/sgscq/vpn/j5;

    .line 1325
    .line 1326
    if-ge v15, v4, :cond_40

    .line 1327
    .line 1328
    invoke-virtual {v10, v1}, Lcom/sgscq/vpn/n5;->i(Ljava/lang/String;)Ljava/util/List;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v1

    .line 1332
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1333
    .line 1334
    .line 1335
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v1

    .line 1339
    :cond_3f
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1340
    .line 1341
    .line 1342
    move-result v11

    .line 1343
    if-eqz v11, :cond_40

    .line 1344
    .line 1345
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v11

    .line 1349
    check-cast v11, Lcom/sgscq/vpn/k5;

    .line 1350
    .line 1351
    iget v12, v11, Lcom/sgscq/vpn/k5;->e:I

    .line 1352
    .line 1353
    iget-object v13, v2, Lcom/sgscq/vpn/j5;->a:Lcom/sgscq/vpn/m5;

    .line 1354
    .line 1355
    iget v13, v13, Lcom/sgscq/vpn/m5;->a:I

    .line 1356
    .line 1357
    if-ne v12, v13, :cond_3f

    .line 1358
    .line 1359
    iget-object v11, v11, Lcom/sgscq/vpn/k5;->a:Ljava/lang/String;

    .line 1360
    .line 1361
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1362
    .line 1363
    .line 1364
    goto :goto_2f

    .line 1365
    :cond_40
    add-int/lit8 v15, v15, 0x1

    .line 1366
    .line 1367
    goto :goto_2e

    .line 1368
    :cond_41
    new-instance v1, Lcom/sgscq/vpn/t;

    .line 1369
    .line 1370
    move-object v3, v1

    .line 1371
    move-object v4, v0

    .line 1372
    invoke-direct/range {v3 .. v8}, Lcom/sgscq/vpn/t;-><init>(Ljava/util/HashSet;Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 1373
    .line 1374
    .line 1375
    return-object v1
.end method
