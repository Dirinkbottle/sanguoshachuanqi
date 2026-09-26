.class public final Lcom/sgscq/vpn/handler/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/handler/n0;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sgscq/vpn/p7;)Lcom/sgscq/vpn/handler/n0;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    invoke-static {v3, v5}, Lcom/sgscq/vpn/handler/n0;->b(Ljava/lang/Object;I)I

    .line 13
    .line 14
    .line 15
    move-result v6

    .line 16
    const/4 v7, 0x3

    .line 17
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    const-string v7, "user_level"

    .line 26
    .line 27
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    const-string v8, "level"

    .line 32
    .line 33
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    invoke-static {v8, v5}, Lcom/sgscq/vpn/handler/n0;->b(Ljava/lang/Object;I)I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    invoke-static {v7, v8}, Lcom/sgscq/vpn/handler/n0;->b(Ljava/lang/Object;I)I

    .line 42
    .line 43
    .line 44
    move-result v14

    .line 45
    const-string v7, "user_fighting"

    .line 46
    .line 47
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    const-string v8, "fighting"

    .line 52
    .line 53
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    invoke-static {v8, v5}, Lcom/sgscq/vpn/handler/n0;->b(Ljava/lang/Object;I)I

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    invoke-static {v7, v8}, Lcom/sgscq/vpn/handler/n0;->b(Ljava/lang/Object;I)I

    .line 62
    .line 63
    .line 64
    move-result v15

    .line 65
    new-instance v7, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v8, "|"

    .line 78
    .line 79
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    const/4 v13, 0x0

    .line 96
    const-wide v7, 0x3ffffffffffe5L

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    move v9, v13

    .line 102
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 103
    .line 104
    .line 105
    move-result v10

    .line 106
    const-wide/16 v16, 0x1f

    .line 107
    .line 108
    if-ge v9, v10, :cond_0

    .line 109
    .line 110
    mul-long v7, v7, v16

    .line 111
    .line 112
    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    int-to-long v10, v10

    .line 117
    add-long/2addr v7, v10

    .line 118
    add-int/lit8 v9, v9, 0x1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_0
    const-string v3, "hulao_refresh"

    .line 122
    .line 123
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v0, v13}, Lcom/sgscq/vpn/handler/n0;->b(Ljava/lang/Object;I)I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    int-to-long v9, v0

    .line 132
    const-wide/32 v11, 0xf4243

    .line 133
    .line 134
    .line 135
    mul-long/2addr v9, v11

    .line 136
    add-long v11, v9, v7

    .line 137
    .line 138
    invoke-static {v2, v5}, Lcom/sgscq/vpn/handler/n0;->b(Ljava/lang/Object;I)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    const/4 v3, 0x6

    .line 143
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    sub-int/2addr v0, v5

    .line 152
    int-to-double v7, v0

    .line 153
    const-wide v9, 0x3fb47ae147ae147bL    # 0.08

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    mul-double/2addr v7, v9

    .line 159
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 160
    .line 161
    add-double v25, v7, v9

    .line 162
    .line 163
    invoke-static {v2, v5}, Lcom/sgscq/vpn/handler/n0;->b(Ljava/lang/Object;I)I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    sub-int/2addr v0, v5

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .line 180
    .line 181
    if-eqz v4, :cond_6

    .line 182
    .line 183
    invoke-virtual/range {p4 .. p4}, Lcom/sgscq/vpn/p7;->e()V

    .line 184
    .line 185
    .line 186
    new-instance v3, Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .line 190
    .line 191
    iget-object v7, v4, Lcom/sgscq/vpn/p7;->a:Ljava/lang/Object;

    .line 192
    .line 193
    monitor-enter v7

    .line 194
    :try_start_0
    iget-object v8, v4, Lcom/sgscq/vpn/p7;->l:Ljava/util/LinkedHashMap;

    .line 195
    .line 196
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 197
    .line 198
    .line 199
    move-result-object v8

    .line 200
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 201
    .line 202
    .line 203
    move-result-object v8

    .line 204
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 205
    .line 206
    .line 207
    move-result v9

    .line 208
    if-eqz v9, :cond_5

    .line 209
    .line 210
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    check-cast v9, Lcom/sgscq/vpn/v5;

    .line 215
    .line 216
    if-eqz v9, :cond_1

    .line 217
    .line 218
    iget-object v10, v9, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v10

    .line 224
    if-eqz v10, :cond_2

    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_2
    iget-object v10, v9, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 228
    .line 229
    invoke-static {v10}, Lcom/sgscq/vpn/p7;->k(Ljava/lang/String;)Z

    .line 230
    .line 231
    .line 232
    move-result v10

    .line 233
    if-eqz v10, :cond_1

    .line 234
    .line 235
    iget-boolean v10, v9, Lcom/sgscq/vpn/v5;->f:Z

    .line 236
    .line 237
    if-eqz v10, :cond_3

    .line 238
    .line 239
    goto :goto_1

    .line 240
    :cond_3
    iget v10, v9, Lcom/sgscq/vpn/v5;->t:I

    .line 241
    .line 242
    if-gtz v10, :cond_4

    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_4
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    goto :goto_1

    .line 249
    :cond_5
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    new-instance v7, Lcom/sgscq/vpn/l7;

    .line 251
    .line 252
    invoke-direct {v7, v14, v5}, Lcom/sgscq/vpn/l7;-><init>(II)V

    .line 253
    .line 254
    .line 255
    invoke-static {v7}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    new-instance v8, Lcom/sgscq/vpn/n7;

    .line 260
    .line 261
    invoke-direct {v8, v15, v13}, Lcom/sgscq/vpn/n7;-><init>(II)V

    .line 262
    .line 263
    .line 264
    invoke-interface {v7, v8}, Ljava/util/Comparator;->thenComparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    .line 265
    .line 266
    .line 267
    move-result-object v7

    .line 268
    new-instance v8, Lcom/sgscq/vpn/o7;

    .line 269
    .line 270
    invoke-direct {v8, v11, v12, v13}, Lcom/sgscq/vpn/o7;-><init>(JI)V

    .line 271
    .line 272
    .line 273
    invoke-interface {v7, v8}, Ljava/util/Comparator;->thenComparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 278
    .line 279
    .line 280
    invoke-static {v6, v3}, Lcom/sgscq/vpn/p7;->l(ILjava/util/ArrayList;)Ljava/util/List;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 289
    .line 290
    .line 291
    move-result v7

    .line 292
    if-eqz v7, :cond_6

    .line 293
    .line 294
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v7

    .line 298
    move-object/from16 v18, v7

    .line 299
    .line 300
    check-cast v18, Lcom/sgscq/vpn/v5;

    .line 301
    .line 302
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 303
    .line 304
    .line 305
    move-result v19

    .line 306
    move v7, v14

    .line 307
    move v8, v15

    .line 308
    move-wide/from16 v9, v25

    .line 309
    .line 310
    move-wide/from16 p2, v11

    .line 311
    .line 312
    move v11, v0

    .line 313
    move v12, v6

    .line 314
    move/from16 v27, v13

    .line 315
    .line 316
    move/from16 v13, v19

    .line 317
    .line 318
    invoke-static/range {v7 .. v13}, Lcom/sgscq/vpn/handler/n0;->d(IIDIII)[I

    .line 319
    .line 320
    .line 321
    move-result-object v7

    .line 322
    aget v19, v7, v27

    .line 323
    .line 324
    aget v20, v7, v5

    .line 325
    .line 326
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 327
    .line 328
    .line 329
    move-result v21

    .line 330
    const/16 v24, 0x1

    .line 331
    .line 332
    move-wide/from16 v22, p2

    .line 333
    .line 334
    invoke-static/range {v18 .. v24}, Lcom/sgscq/vpn/handler/n0;->e(Lcom/sgscq/vpn/v5;IIIJZ)Lcom/sgscq/vpn/handler/m0;

    .line 335
    .line 336
    .line 337
    move-result-object v7

    .line 338
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-wide/from16 v11, p2

    .line 342
    .line 343
    move/from16 v13, v27

    .line 344
    .line 345
    goto :goto_2

    .line 346
    :catchall_0
    move-exception v0

    .line 347
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    throw v0

    .line 349
    :cond_6
    move-wide/from16 p2, v11

    .line 350
    .line 351
    move/from16 v27, v13

    .line 352
    .line 353
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 354
    .line 355
    .line 356
    move-result v3

    .line 357
    sub-int v3, v6, v3

    .line 358
    .line 359
    if-eqz v4, :cond_d

    .line 360
    .line 361
    invoke-virtual/range {p4 .. p4}, Lcom/sgscq/vpn/p7;->e()V

    .line 362
    .line 363
    .line 364
    new-instance v7, Ljava/util/ArrayList;

    .line 365
    .line 366
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .line 368
    .line 369
    iget-object v8, v4, Lcom/sgscq/vpn/p7;->a:Ljava/lang/Object;

    .line 370
    .line 371
    monitor-enter v8

    .line 372
    :try_start_2
    iget-object v4, v4, Lcom/sgscq/vpn/p7;->l:Ljava/util/LinkedHashMap;

    .line 373
    .line 374
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 379
    .line 380
    .line 381
    move-result-object v4

    .line 382
    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 383
    .line 384
    .line 385
    move-result v9

    .line 386
    if-eqz v9, :cond_a

    .line 387
    .line 388
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v9

    .line 392
    check-cast v9, Lcom/sgscq/vpn/v5;

    .line 393
    .line 394
    if-eqz v9, :cond_7

    .line 395
    .line 396
    iget-object v10, v9, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 397
    .line 398
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    move-result v10

    .line 402
    if-eqz v10, :cond_8

    .line 403
    .line 404
    goto :goto_3

    .line 405
    :cond_8
    iget-object v10, v9, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 406
    .line 407
    const-string v11, "robot_"

    .line 408
    .line 409
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 410
    .line 411
    .line 412
    move-result v10

    .line 413
    if-eqz v10, :cond_7

    .line 414
    .line 415
    iget v10, v9, Lcom/sgscq/vpn/v5;->t:I

    .line 416
    .line 417
    if-gtz v10, :cond_9

    .line 418
    .line 419
    goto :goto_3

    .line 420
    :cond_9
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    goto :goto_3

    .line 424
    :cond_a
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 425
    new-instance v1, Lcom/sgscq/vpn/l7;

    .line 426
    .line 427
    const/4 v4, 0x4

    .line 428
    invoke-direct {v1, v14, v4}, Lcom/sgscq/vpn/l7;-><init>(II)V

    .line 429
    .line 430
    .line 431
    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    new-instance v8, Lcom/sgscq/vpn/n7;

    .line 436
    .line 437
    const/4 v9, 0x2

    .line 438
    invoke-direct {v8, v15, v9}, Lcom/sgscq/vpn/n7;-><init>(II)V

    .line 439
    .line 440
    .line 441
    invoke-interface {v1, v8}, Ljava/util/Comparator;->thenComparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    new-instance v8, Lcom/sgscq/vpn/o7;

    .line 446
    .line 447
    move-wide/from16 v12, p2

    .line 448
    .line 449
    invoke-direct {v8, v12, v13, v4}, Lcom/sgscq/vpn/o7;-><init>(JI)V

    .line 450
    .line 451
    .line 452
    invoke-interface {v1, v8}, Ljava/util/Comparator;->thenComparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 457
    .line 458
    .line 459
    invoke-static {v3, v7}, Lcom/sgscq/vpn/p7;->l(ILjava/util/ArrayList;)Ljava/util/List;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 468
    .line 469
    .line 470
    move-result v3

    .line 471
    if-eqz v3, :cond_c

    .line 472
    .line 473
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    move-object/from16 v18, v3

    .line 478
    .line 479
    check-cast v18, Lcom/sgscq/vpn/v5;

    .line 480
    .line 481
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 482
    .line 483
    .line 484
    move-result v3

    .line 485
    if-lt v3, v6, :cond_b

    .line 486
    .line 487
    goto :goto_5

    .line 488
    :cond_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 489
    .line 490
    .line 491
    move-result v3

    .line 492
    move v7, v14

    .line 493
    move v8, v15

    .line 494
    move-wide/from16 v9, v25

    .line 495
    .line 496
    move v11, v0

    .line 497
    move-wide/from16 v28, v12

    .line 498
    .line 499
    move v12, v6

    .line 500
    move v13, v3

    .line 501
    invoke-static/range {v7 .. v13}, Lcom/sgscq/vpn/handler/n0;->d(IIDIII)[I

    .line 502
    .line 503
    .line 504
    move-result-object v3

    .line 505
    aget v19, v3, v27

    .line 506
    .line 507
    aget v20, v3, v5

    .line 508
    .line 509
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 510
    .line 511
    .line 512
    move-result v21

    .line 513
    const/16 v24, 0x0

    .line 514
    .line 515
    move-wide/from16 v22, v28

    .line 516
    .line 517
    invoke-static/range {v18 .. v24}, Lcom/sgscq/vpn/handler/n0;->e(Lcom/sgscq/vpn/v5;IIIJZ)Lcom/sgscq/vpn/handler/m0;

    .line 518
    .line 519
    .line 520
    move-result-object v3

    .line 521
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    move-wide/from16 v12, v28

    .line 525
    .line 526
    goto :goto_4

    .line 527
    :cond_c
    :goto_5
    move-wide/from16 v28, v12

    .line 528
    .line 529
    goto :goto_6

    .line 530
    :catchall_1
    move-exception v0

    .line 531
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 532
    throw v0

    .line 533
    :cond_d
    move-wide/from16 v28, p2

    .line 534
    .line 535
    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 536
    .line 537
    .line 538
    move-result v1

    .line 539
    if-ge v1, v6, :cond_e

    .line 540
    .line 541
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 542
    .line 543
    .line 544
    move-result v13

    .line 545
    move v7, v14

    .line 546
    move v8, v15

    .line 547
    move-wide/from16 v9, v25

    .line 548
    .line 549
    move v11, v0

    .line 550
    move v12, v6

    .line 551
    invoke-static/range {v7 .. v13}, Lcom/sgscq/vpn/handler/n0;->d(IIDIII)[I

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    aget v3, v1, v27

    .line 556
    .line 557
    aget v1, v1, v5

    .line 558
    .line 559
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 560
    .line 561
    .line 562
    move-result v4

    .line 563
    new-instance v7, Ljava/lang/StringBuilder;

    .line 564
    .line 565
    const-string v8, "robot_hulao_"

    .line 566
    .line 567
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    int-to-long v8, v4

    .line 571
    mul-long v8, v8, v16

    .line 572
    .line 573
    add-long v8, v8, v28

    .line 574
    .line 575
    const-wide/32 v10, 0x186a0

    .line 576
    .line 577
    .line 578
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->floorMod(JJ)J

    .line 579
    .line 580
    .line 581
    move-result-wide v8

    .line 582
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v7

    .line 589
    new-instance v18, Ljava/util/ArrayList;

    .line 590
    .line 591
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 592
    .line 593
    .line 594
    move/from16 v19, v3

    .line 595
    .line 596
    move/from16 v20, v1

    .line 597
    .line 598
    move/from16 v21, v4

    .line 599
    .line 600
    move-wide/from16 v22, v28

    .line 601
    .line 602
    invoke-static/range {v18 .. v23}, Lcom/sgscq/vpn/handler/n0;->c(Ljava/util/ArrayList;IIIJ)Ljava/util/ArrayList;

    .line 603
    .line 604
    .line 605
    move-result-object v24

    .line 606
    new-instance v8, Lcom/sgscq/vpn/handler/m0;

    .line 607
    .line 608
    new-instance v9, Ljava/lang/StringBuilder;

    .line 609
    .line 610
    const-string v10, "\u5929\u68af\u5bf9\u624b"

    .line 611
    .line 612
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    add-int/2addr v4, v5

    .line 616
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v20

    .line 623
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 624
    .line 625
    .line 626
    move-result v21

    .line 627
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 628
    .line 629
    .line 630
    move-result v22

    .line 631
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    .line 632
    .line 633
    .line 634
    move-result v1

    .line 635
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 636
    .line 637
    .line 638
    move-result v23

    .line 639
    move-object/from16 v18, v8

    .line 640
    .line 641
    move-object/from16 v19, v7

    .line 642
    .line 643
    invoke-direct/range {v18 .. v24}, Lcom/sgscq/vpn/handler/m0;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/util/ArrayList;)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    .line 648
    .line 649
    goto :goto_6

    .line 650
    :cond_e
    new-instance v0, Lcom/sgscq/vpn/handler/n0;

    .line 651
    .line 652
    invoke-direct {v0, v2}, Lcom/sgscq/vpn/handler/n0;-><init>(Ljava/util/ArrayList;)V

    .line 653
    .line 654
    .line 655
    return-object v0
.end method

.method public static b(Ljava/lang/Object;I)I
    .locals 2

    .line 1
    if-nez p0, :cond_0

    return p1

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p0, p0

    return p0

    :catch_0
    return p1
.end method

.method public static c(Ljava/util/ArrayList;IIIJ)Ljava/util/ArrayList;
    .locals 28

    .line 1
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6, v5}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/sgscq/vpn/n1;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Lcom/sgscq/vpn/n1;-><init>(I)V

    invoke-static {v4}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-le v4, v6, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3, v5, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, v4

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x1

    const/16 v8, 0x3e8

    if-ge v4, v6, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v9, v2

    const-wide/16 v11, 0x1f

    mul-long/2addr v9, v11

    add-long v9, v9, p4

    int-to-long v11, v4

    const-wide/16 v13, 0x11

    mul-long/2addr v11, v13

    add-long/2addr v11, v9

    const v9, 0x7fffffff

    int-to-long v9, v9

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v9

    long-to-int v9, v9

    invoke-static {v9}, Lcom/sgscq/vpn/p5;->i1(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    div-int/2addr v9, v6

    mul-int/lit16 v10, v2, 0x1f4

    add-int/2addr v10, v9

    mul-int/lit8 v9, v4, 0x64

    add-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    div-int/lit8 v10, v9, 0x4

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "ai_"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "_"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v10, "general_id"

    const-string v12, "general_level"

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "position"

    add-int/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v7, v15

    move-object v15, v4

    const-string v16, "general_fighting"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const-string v18, "fighting"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string v20, "hp"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const-string v22, "atk"

    div-int/lit8 v4, v9, 0xc

    const/16 v8, 0x12c

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const-string v24, "def"

    div-int/lit8 v9, v9, 0x18

    const/16 v4, 0x64

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const-string v26, "wis"

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    filled-new-array/range {v10 .. v27}, [Ljava/lang/Object;

    move-result-object v4

    const-string v8, "pk_id"

    invoke-static {v8, v7, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v9, "position"

    invoke-interface {v2, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v9, "general_level"

    invoke-interface {v2, v9, v4}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int/2addr v4, v6

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v9, "general_fighting"

    invoke-interface {v2, v9, v4}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    return-object v3
.end method

.method public static d(IIDIII)[I
    .locals 4

    .line 1
    const-wide v0, 0x3fc999999999999aL    # 0.2

    int-to-double v2, p6

    mul-double/2addr v2, v0

    const-wide v0, 0x3fe999999999999aL    # 0.8

    add-double/2addr v2, v0

    mul-int/lit8 p6, p6, 0x2

    const/4 v0, 0x1

    sub-int/2addr p5, v0

    sub-int/2addr p6, p5

    add-int/2addr p0, p4

    add-int/2addr p0, p6

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-double p4, p1

    mul-double/2addr p4, p2

    mul-double/2addr p4, v2

    invoke-static {p4, p5}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    const/16 p2, 0x3e8

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0
.end method

.method public static e(Lcom/sgscq/vpn/v5;IIIJZ)Lcom/sgscq/vpn/handler/m0;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v7, p2

    .line 4
    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v8, 0x1

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v3, v0, Lcom/sgscq/vpn/v5;->s:Ljava/util/List;

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-ge v3, v4, :cond_3

    .line 28
    .line 29
    const/4 v4, 0x3

    .line 30
    if-ge v3, v4, :cond_3

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    move-object v10, v5

    .line 37
    check-cast v10, Ljava/lang/String;

    .line 38
    .line 39
    if-eqz v10, :cond_2

    .line 40
    .line 41
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_1

    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :cond_1
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    div-int/2addr v5, v4

    .line 54
    const/16 v4, 0x3e8

    .line 55
    .line 56
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    div-int/lit8 v6, v5, 0x4

    .line 61
    .line 62
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    new-instance v6, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    iget-object v9, v0, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v9, "_summary_"

    .line 77
    .line 78
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    add-int/lit8 v14, v3, 0x1

    .line 82
    .line 83
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    const-string v9, "general_id"

    .line 91
    .line 92
    const-string v11, "general_level"

    .line 93
    .line 94
    move/from16 v15, p1

    .line 95
    .line 96
    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    .line 97
    .line 98
    .line 99
    move-result v12

    .line 100
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v12

    .line 104
    const-string v13, "position"

    .line 105
    .line 106
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v14

    .line 110
    const-string v16, "general_fighting"

    .line 111
    .line 112
    move-object/from16 v15, v16

    .line 113
    .line 114
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v16

    .line 118
    const-string v17, "fighting"

    .line 119
    .line 120
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v18

    .line 124
    const-string v19, "hp"

    .line 125
    .line 126
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v20

    .line 130
    const-string v21, "atk"

    .line 131
    .line 132
    div-int/lit8 v4, v5, 0xc

    .line 133
    .line 134
    const/16 v8, 0x12c

    .line 135
    .line 136
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v22

    .line 144
    const-string v23, "def"

    .line 145
    .line 146
    div-int/lit8 v5, v5, 0x18

    .line 147
    .line 148
    const/16 v4, 0x64

    .line 149
    .line 150
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v24

    .line 158
    const-string v25, "wis"

    .line 159
    .line 160
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v26

    .line 168
    const-string v27, "route"

    .line 169
    .line 170
    add-int/lit8 v4, p3, 0x1

    .line 171
    .line 172
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v28

    .line 176
    filled-new-array/range {v9 .. v28}, [Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    const-string v5, "pk_id"

    .line 181
    .line 182
    invoke-static {v5, v6, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 190
    .line 191
    const/4 v8, 0x1

    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :cond_3
    :goto_2
    move/from16 v2, p1

    .line 195
    .line 196
    move/from16 v3, p2

    .line 197
    .line 198
    move/from16 v4, p3

    .line 199
    .line 200
    move-wide/from16 v5, p4

    .line 201
    .line 202
    invoke-static/range {v1 .. v6}, Lcom/sgscq/vpn/handler/n0;->c(Ljava/util/ArrayList;IIIJ)Ljava/util/ArrayList;

    .line 203
    .line 204
    .line 205
    move-result-object v21

    .line 206
    new-instance v1, Lcom/sgscq/vpn/handler/m0;

    .line 207
    .line 208
    iget-object v2, v0, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 209
    .line 210
    iget-object v3, v0, Lcom/sgscq/vpn/v5;->b:Ljava/lang/String;

    .line 211
    .line 212
    const/4 v4, 0x1

    .line 213
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    .line 214
    .line 215
    .line 216
    move-result v19

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/v5;->k()I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    .line 222
    .line 223
    .line 224
    move-result v20

    .line 225
    move-object v15, v1

    .line 226
    move-object/from16 v16, v2

    .line 227
    .line 228
    move-object/from16 v17, v3

    .line 229
    .line 230
    move/from16 v18, p1

    .line 231
    .line 232
    invoke-direct/range {v15 .. v21}, Lcom/sgscq/vpn/handler/m0;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/util/ArrayList;)V

    .line 233
    .line 234
    .line 235
    return-object v1
.end method
