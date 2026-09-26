.class public abstract Lcom/sgscq/vpn/handler/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/sgscq/vpn/handler/e;)Lcom/sgscq/vpn/battle/BattleUnit;
    .locals 41

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/sgscq/vpn/handler/e;->f:Lcom/sgscq/vpn/w1;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v2}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :goto_0
    iget-object v10, v0, Lcom/sgscq/vpn/handler/e;->d:Ljava/util/Map;

    .line 14
    .line 15
    const/4 v3, 0x7

    .line 16
    new-array v4, v3, [Ljava/lang/String;

    .line 17
    .line 18
    iget-object v5, v0, Lcom/sgscq/vpn/handler/e;->a:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v5}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    const/4 v7, 0x0

    .line 25
    aput-object v6, v4, v7

    .line 26
    .line 27
    const-string v11, "id"

    .line 28
    .line 29
    if-nez v10, :cond_1

    .line 30
    .line 31
    move-object v6, v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    :goto_1
    invoke-static {v6}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    const/4 v8, 0x1

    .line 42
    aput-object v6, v4, v8

    .line 43
    .line 44
    if-nez v10, :cond_2

    .line 45
    .line 46
    move-object v6, v2

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const-string v6, "general_config_id"

    .line 49
    .line 50
    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    :goto_2
    invoke-static {v6}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    const/4 v9, 0x2

    .line 59
    aput-object v6, v4, v9

    .line 60
    .line 61
    if-nez v10, :cond_3

    .line 62
    .line 63
    move-object v6, v2

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    const-string v6, "base_general_id"

    .line 66
    .line 67
    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    :goto_3
    invoke-static {v6}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    const/4 v12, 0x3

    .line 76
    aput-object v6, v4, v12

    .line 77
    .line 78
    if-nez v10, :cond_4

    .line 79
    .line 80
    move-object v6, v2

    .line 81
    goto :goto_4

    .line 82
    :cond_4
    const-string v6, "resource_id"

    .line 83
    .line 84
    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    :goto_4
    invoke-static {v6}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    const/4 v12, 0x4

    .line 93
    aput-object v6, v4, v12

    .line 94
    .line 95
    const-string v13, "general_id"

    .line 96
    .line 97
    if-nez v10, :cond_5

    .line 98
    .line 99
    move-object v6, v2

    .line 100
    goto :goto_5

    .line 101
    :cond_5
    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    :goto_5
    invoke-static {v6}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    const/4 v14, 0x5

    .line 110
    aput-object v6, v4, v14

    .line 111
    .line 112
    if-nez v10, :cond_6

    .line 113
    .line 114
    move-object v6, v2

    .line 115
    goto :goto_6

    .line 116
    :cond_6
    const-string v6, "general_skin"

    .line 117
    .line 118
    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    :goto_6
    invoke-static {v6}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    const/4 v14, 0x6

    .line 127
    aput-object v6, v4, v14

    .line 128
    .line 129
    move v6, v7

    .line 130
    :goto_7
    if-ge v6, v3, :cond_9

    .line 131
    .line 132
    aget-object v14, v4, v6

    .line 133
    .line 134
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result v15

    .line 138
    if-eqz v15, :cond_7

    .line 139
    .line 140
    goto :goto_8

    .line 141
    :cond_7
    if-eqz v1, :cond_8

    .line 142
    .line 143
    invoke-virtual {v1, v14}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 144
    .line 145
    .line 146
    move-result-object v15

    .line 147
    if-eqz v15, :cond_8

    .line 148
    .line 149
    goto :goto_9

    .line 150
    :cond_8
    :goto_8
    add-int/lit8 v6, v6, 0x1

    .line 151
    .line 152
    goto :goto_7

    .line 153
    :cond_9
    invoke-static {v5}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v14

    .line 157
    :goto_9
    if-nez v1, :cond_a

    .line 158
    .line 159
    goto :goto_a

    .line 160
    :cond_a
    invoke-virtual {v1, v14}, Lcom/sgscq/vpn/w1;->K0(Ljava/lang/String;)[D

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    :goto_a
    iget-boolean v3, v0, Lcom/sgscq/vpn/handler/e;->i:Z

    .line 165
    .line 166
    const/16 v4, 0xc

    .line 167
    .line 168
    const-string v15, "general_pk_id"

    .line 169
    .line 170
    const-string v6, "pk_id"

    .line 171
    .line 172
    if-nez v3, :cond_11

    .line 173
    .line 174
    iget-boolean v3, v0, Lcom/sgscq/vpn/handler/e;->h:Z

    .line 175
    .line 176
    if-nez v3, :cond_11

    .line 177
    .line 178
    iget-object v3, v0, Lcom/sgscq/vpn/handler/e;->e:Ljava/util/Map;

    .line 179
    .line 180
    if-eqz v3, :cond_11

    .line 181
    .line 182
    if-eqz v1, :cond_11

    .line 183
    .line 184
    if-nez v10, :cond_b

    .line 185
    .line 186
    goto :goto_c

    .line 187
    :cond_b
    const-string v16, "general_hp_attr"

    .line 188
    .line 189
    const-string v17, "general_attack_attr"

    .line 190
    .line 191
    const-string v18, "general_defense_attr"

    .line 192
    .line 193
    const-string v19, "general_wisdom_attr"

    .line 194
    .line 195
    const-string v20, "attr_hp"

    .line 196
    .line 197
    const-string v21, "attr_attack"

    .line 198
    .line 199
    const-string v22, "attr_defense"

    .line 200
    .line 201
    const-string v23, "attr_wisdom"

    .line 202
    .line 203
    const-string v24, "base_hp"

    .line 204
    .line 205
    const-string v25, "base_attack"

    .line 206
    .line 207
    const-string v26, "base_defense"

    .line 208
    .line 209
    const-string v27, "base_wisdom"

    .line 210
    .line 211
    filled-new-array/range {v16 .. v27}, [Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    move v5, v7

    .line 216
    :goto_b
    if-ge v5, v4, :cond_d

    .line 217
    .line 218
    aget-object v4, v3, v5

    .line 219
    .line 220
    invoke-interface {v10, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    if-eqz v4, :cond_c

    .line 225
    .line 226
    move v3, v8

    .line 227
    goto :goto_d

    .line 228
    :cond_c
    add-int/lit8 v5, v5, 0x1

    .line 229
    .line 230
    const/16 v4, 0xc

    .line 231
    .line 232
    goto :goto_b

    .line 233
    :cond_d
    :goto_c
    move v3, v7

    .line 234
    :goto_d
    if-nez v3, :cond_e

    .line 235
    .line 236
    goto :goto_e

    .line 237
    :cond_e
    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-static {v3}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    if-eqz v4, :cond_f

    .line 250
    .line 251
    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    invoke-static {v3}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    :cond_f
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    if-eqz v4, :cond_10

    .line 264
    .line 265
    goto :goto_e

    .line 266
    :cond_10
    iget-object v4, v0, Lcom/sgscq/vpn/handler/e;->e:Ljava/util/Map;

    .line 267
    .line 268
    invoke-virtual {v1, v3, v4}, Lcom/sgscq/vpn/w1;->z(Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/t1;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    goto :goto_f

    .line 273
    :cond_11
    :goto_e
    const/4 v3, 0x0

    .line 274
    :goto_f
    move-object v5, v3

    .line 275
    iget-boolean v3, v0, Lcom/sgscq/vpn/handler/e;->j:Z

    .line 276
    .line 277
    if-eqz v3, :cond_13

    .line 278
    .line 279
    if-nez v5, :cond_13

    .line 280
    .line 281
    new-array v3, v12, [D

    .line 282
    .line 283
    if-nez v10, :cond_12

    .line 284
    .line 285
    fill-array-data v3, :array_0

    .line 286
    .line 287
    .line 288
    goto :goto_10

    .line 289
    :cond_12
    const-string v4, "battle_lieutenant_hp_percent"

    .line 290
    .line 291
    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    invoke-static {v4}, Lcom/sgscq/vpn/handler/f;->e(Ljava/lang/Object;)D

    .line 296
    .line 297
    .line 298
    move-result-wide v16

    .line 299
    aput-wide v16, v3, v7

    .line 300
    .line 301
    const-string v4, "battle_lieutenant_attack_percent"

    .line 302
    .line 303
    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    invoke-static {v4}, Lcom/sgscq/vpn/handler/f;->e(Ljava/lang/Object;)D

    .line 308
    .line 309
    .line 310
    move-result-wide v16

    .line 311
    aput-wide v16, v3, v8

    .line 312
    .line 313
    const-string v4, "battle_lieutenant_defense_percent"

    .line 314
    .line 315
    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    invoke-static {v4}, Lcom/sgscq/vpn/handler/f;->e(Ljava/lang/Object;)D

    .line 320
    .line 321
    .line 322
    move-result-wide v7

    .line 323
    aput-wide v7, v3, v9

    .line 324
    .line 325
    const-string v4, "battle_lieutenant_wisdom_percent"

    .line 326
    .line 327
    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    invoke-static {v4}, Lcom/sgscq/vpn/handler/f;->e(Ljava/lang/Object;)D

    .line 332
    .line 333
    .line 334
    move-result-wide v7

    .line 335
    const/4 v4, 0x3

    .line 336
    aput-wide v7, v3, v4

    .line 337
    .line 338
    goto :goto_10

    .line 339
    :cond_13
    new-array v3, v12, [D

    .line 340
    .line 341
    fill-array-data v3, :array_1

    .line 342
    .line 343
    .line 344
    :goto_10
    move-object v12, v3

    .line 345
    iget-boolean v3, v0, Lcom/sgscq/vpn/handler/e;->i:Z

    .line 346
    .line 347
    if-eqz v3, :cond_14

    .line 348
    .line 349
    iget-wide v3, v0, Lcom/sgscq/vpn/handler/e;->o:D

    .line 350
    .line 351
    const-string v7, "general_hp"

    .line 352
    .line 353
    invoke-static {v10, v7, v3, v4}, Lcom/sgscq/vpn/handler/f;->f(Ljava/util/Map;Ljava/lang/String;D)D

    .line 354
    .line 355
    .line 356
    move-result-wide v3

    .line 357
    goto :goto_11

    .line 358
    :cond_14
    if-eqz v5, :cond_15

    .line 359
    .line 360
    iget-wide v3, v5, Lcom/sgscq/vpn/t1;->i:D

    .line 361
    .line 362
    :goto_11
    move-wide/from16 v16, v3

    .line 363
    .line 364
    move-object/from16 v28, v6

    .line 365
    .line 366
    move-object/from16 v18, v12

    .line 367
    .line 368
    move-object v12, v5

    .line 369
    goto :goto_12

    .line 370
    :cond_15
    const/4 v7, 0x0

    .line 371
    iget-boolean v8, v0, Lcom/sgscq/vpn/handler/e;->h:Z

    .line 372
    .line 373
    iget-wide v3, v0, Lcom/sgscq/vpn/handler/e;->o:D

    .line 374
    .line 375
    const-string v16, "general_hp_attr"

    .line 376
    .line 377
    const-string v17, "attr_hp"

    .line 378
    .line 379
    const-string v18, "general_hp"

    .line 380
    .line 381
    const-string v19, "hp"

    .line 382
    .line 383
    const-string v20, "hpMax"

    .line 384
    .line 385
    const-string v21, "hpCur"

    .line 386
    .line 387
    const-string v22, "base_hp"

    .line 388
    .line 389
    filled-new-array/range {v16 .. v22}, [Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v9

    .line 393
    move-wide/from16 v16, v3

    .line 394
    .line 395
    move-object v3, v10

    .line 396
    move-object v4, v2

    .line 397
    move-object/from16 v18, v12

    .line 398
    .line 399
    move-object v12, v5

    .line 400
    move v5, v7

    .line 401
    move-object v7, v6

    .line 402
    move v6, v8

    .line 403
    move-object/from16 v28, v7

    .line 404
    .line 405
    move-wide/from16 v7, v16

    .line 406
    .line 407
    invoke-static/range {v3 .. v9}, Lcom/sgscq/vpn/handler/f;->g(Ljava/util/Map;[DIZD[Ljava/lang/String;)D

    .line 408
    .line 409
    .line 410
    move-result-wide v3

    .line 411
    move-wide/from16 v16, v3

    .line 412
    .line 413
    :goto_12
    iget-boolean v3, v0, Lcom/sgscq/vpn/handler/e;->i:Z

    .line 414
    .line 415
    if-eqz v3, :cond_16

    .line 416
    .line 417
    iget-wide v3, v0, Lcom/sgscq/vpn/handler/e;->p:D

    .line 418
    .line 419
    const-string v5, "general_attack"

    .line 420
    .line 421
    invoke-static {v10, v5, v3, v4}, Lcom/sgscq/vpn/handler/f;->f(Ljava/util/Map;Ljava/lang/String;D)D

    .line 422
    .line 423
    .line 424
    move-result-wide v3

    .line 425
    :goto_13
    move-wide v7, v3

    .line 426
    goto :goto_14

    .line 427
    :cond_16
    if-eqz v12, :cond_17

    .line 428
    .line 429
    iget-wide v3, v12, Lcom/sgscq/vpn/t1;->j:D

    .line 430
    .line 431
    goto :goto_13

    .line 432
    :cond_17
    const/4 v5, 0x1

    .line 433
    iget-boolean v6, v0, Lcom/sgscq/vpn/handler/e;->h:Z

    .line 434
    .line 435
    iget-wide v7, v0, Lcom/sgscq/vpn/handler/e;->p:D

    .line 436
    .line 437
    const-string v19, "general_attack_attr"

    .line 438
    .line 439
    const-string v20, "attr_attack"

    .line 440
    .line 441
    const-string v21, "general_attack"

    .line 442
    .line 443
    const-string v22, "atk"

    .line 444
    .line 445
    const-string v23, "attack"

    .line 446
    .line 447
    const-string v24, "base_attack"

    .line 448
    .line 449
    filled-new-array/range {v19 .. v24}, [Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v9

    .line 453
    move-object v3, v10

    .line 454
    move-object v4, v2

    .line 455
    invoke-static/range {v3 .. v9}, Lcom/sgscq/vpn/handler/f;->g(Ljava/util/Map;[DIZD[Ljava/lang/String;)D

    .line 456
    .line 457
    .line 458
    move-result-wide v3

    .line 459
    goto :goto_13

    .line 460
    :goto_14
    iget-boolean v3, v0, Lcom/sgscq/vpn/handler/e;->i:Z

    .line 461
    .line 462
    if-eqz v3, :cond_18

    .line 463
    .line 464
    iget-wide v3, v0, Lcom/sgscq/vpn/handler/e;->q:D

    .line 465
    .line 466
    const-string v5, "general_defense"

    .line 467
    .line 468
    invoke-static {v10, v5, v3, v4}, Lcom/sgscq/vpn/handler/f;->f(Ljava/util/Map;Ljava/lang/String;D)D

    .line 469
    .line 470
    .line 471
    move-result-wide v3

    .line 472
    goto :goto_15

    .line 473
    :cond_18
    if-eqz v12, :cond_19

    .line 474
    .line 475
    iget-wide v3, v12, Lcom/sgscq/vpn/t1;->k:D

    .line 476
    .line 477
    :goto_15
    move-wide/from16 v29, v7

    .line 478
    .line 479
    goto :goto_16

    .line 480
    :cond_19
    const/4 v5, 0x2

    .line 481
    iget-boolean v6, v0, Lcom/sgscq/vpn/handler/e;->h:Z

    .line 482
    .line 483
    iget-wide v3, v0, Lcom/sgscq/vpn/handler/e;->q:D

    .line 484
    .line 485
    const-string v19, "general_defense_attr"

    .line 486
    .line 487
    const-string v20, "attr_defense"

    .line 488
    .line 489
    const-string v21, "general_defense"

    .line 490
    .line 491
    const-string v22, "def"

    .line 492
    .line 493
    const-string v23, "defense"

    .line 494
    .line 495
    const-string v24, "base_defense"

    .line 496
    .line 497
    filled-new-array/range {v19 .. v24}, [Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v9

    .line 501
    move-wide/from16 v19, v3

    .line 502
    .line 503
    move-object v3, v10

    .line 504
    move-object v4, v2

    .line 505
    move-wide/from16 v29, v7

    .line 506
    .line 507
    move-wide/from16 v7, v19

    .line 508
    .line 509
    invoke-static/range {v3 .. v9}, Lcom/sgscq/vpn/handler/f;->g(Ljava/util/Map;[DIZD[Ljava/lang/String;)D

    .line 510
    .line 511
    .line 512
    move-result-wide v3

    .line 513
    :goto_16
    move-wide v7, v3

    .line 514
    iget-boolean v3, v0, Lcom/sgscq/vpn/handler/e;->i:Z

    .line 515
    .line 516
    if-eqz v3, :cond_1a

    .line 517
    .line 518
    iget-wide v3, v0, Lcom/sgscq/vpn/handler/e;->r:D

    .line 519
    .line 520
    const-string v5, "general_wisdom"

    .line 521
    .line 522
    invoke-static {v10, v5, v3, v4}, Lcom/sgscq/vpn/handler/f;->f(Ljava/util/Map;Ljava/lang/String;D)D

    .line 523
    .line 524
    .line 525
    move-result-wide v3

    .line 526
    goto :goto_17

    .line 527
    :cond_1a
    if-eqz v12, :cond_1b

    .line 528
    .line 529
    iget-wide v3, v12, Lcom/sgscq/vpn/t1;->l:D

    .line 530
    .line 531
    :goto_17
    move-wide/from16 v31, v7

    .line 532
    .line 533
    goto :goto_18

    .line 534
    :cond_1b
    const/4 v5, 0x3

    .line 535
    iget-boolean v6, v0, Lcom/sgscq/vpn/handler/e;->h:Z

    .line 536
    .line 537
    iget-wide v3, v0, Lcom/sgscq/vpn/handler/e;->r:D

    .line 538
    .line 539
    const-string v19, "general_wisdom_attr"

    .line 540
    .line 541
    const-string v20, "attr_wisdom"

    .line 542
    .line 543
    const-string v21, "general_wisdom"

    .line 544
    .line 545
    const-string v22, "wis"

    .line 546
    .line 547
    const-string v23, "wisdom"

    .line 548
    .line 549
    const-string v24, "base_wisdom"

    .line 550
    .line 551
    filled-new-array/range {v19 .. v24}, [Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v9

    .line 555
    move-wide/from16 v19, v3

    .line 556
    .line 557
    move-object v3, v10

    .line 558
    move-object v4, v2

    .line 559
    move-wide/from16 v31, v7

    .line 560
    .line 561
    move-wide/from16 v7, v19

    .line 562
    .line 563
    invoke-static/range {v3 .. v9}, Lcom/sgscq/vpn/handler/f;->g(Ljava/util/Map;[DIZD[Ljava/lang/String;)D

    .line 564
    .line 565
    .line 566
    move-result-wide v3

    .line 567
    :goto_18
    new-instance v5, Ljava/util/ArrayList;

    .line 568
    .line 569
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 570
    .line 571
    .line 572
    const-class v6, Lcom/sgscq/vpn/battle/BattleSkillType;

    .line 573
    .line 574
    invoke-static {v6}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 575
    .line 576
    .line 577
    move-result-object v6

    .line 578
    iget-boolean v7, v0, Lcom/sgscq/vpn/handler/e;->i:Z

    .line 579
    .line 580
    if-eqz v7, :cond_1c

    .line 581
    .line 582
    iget-boolean v7, v0, Lcom/sgscq/vpn/handler/e;->k:Z

    .line 583
    .line 584
    if-eqz v7, :cond_1c

    .line 585
    .line 586
    const/4 v7, 0x1

    .line 587
    goto :goto_19

    .line 588
    :cond_1c
    const/4 v7, 0x0

    .line 589
    :goto_19
    iget-object v8, v0, Lcom/sgscq/vpn/handler/e;->n:Ljava/lang/String;

    .line 590
    .line 591
    const-string v9, "general_naturalskill_id"

    .line 592
    .line 593
    if-eqz v8, :cond_1d

    .line 594
    .line 595
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 596
    .line 597
    .line 598
    move-result v12

    .line 599
    if-eqz v12, :cond_21

    .line 600
    .line 601
    :cond_1d
    iget-boolean v8, v0, Lcom/sgscq/vpn/handler/e;->i:Z

    .line 602
    .line 603
    if-eqz v8, :cond_20

    .line 604
    .line 605
    iget-object v8, v0, Lcom/sgscq/vpn/handler/e;->d:Ljava/util/Map;

    .line 606
    .line 607
    if-nez v8, :cond_1e

    .line 608
    .line 609
    const/4 v8, 0x0

    .line 610
    goto :goto_1a

    .line 611
    :cond_1e
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v8

    .line 615
    :goto_1a
    invoke-static {v8}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v8

    .line 619
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 620
    .line 621
    .line 622
    move-result v12

    .line 623
    if-nez v12, :cond_1f

    .line 624
    .line 625
    goto :goto_1b

    .line 626
    :cond_1f
    invoke-static {v14}, Lcom/sgscq/vpn/w1;->P(Ljava/lang/String;)Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v8

    .line 630
    goto :goto_1b

    .line 631
    :cond_20
    invoke-virtual {v1, v14}, Lcom/sgscq/vpn/w1;->T0(Ljava/lang/String;)Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v8

    .line 635
    :cond_21
    :goto_1b
    iget-boolean v12, v0, Lcom/sgscq/vpn/handler/e;->i:Z

    .line 636
    .line 637
    move-wide/from16 v19, v3

    .line 638
    .line 639
    if-eqz v12, :cond_22

    .line 640
    .line 641
    iget-boolean v3, v0, Lcom/sgscq/vpn/handler/e;->k:Z

    .line 642
    .line 643
    if-nez v3, :cond_22

    .line 644
    .line 645
    const/4 v3, 0x0

    .line 646
    goto :goto_1c

    .line 647
    :cond_22
    iget-object v3, v0, Lcom/sgscq/vpn/handler/e;->d:Ljava/util/Map;

    .line 648
    .line 649
    :goto_1c
    const-string v4, "general_skills"

    .line 650
    .line 651
    move-object/from16 v21, v2

    .line 652
    .line 653
    const-string v2, "gSkill"

    .line 654
    .line 655
    if-nez v12, :cond_28

    .line 656
    .line 657
    iget-object v12, v0, Lcom/sgscq/vpn/handler/e;->e:Ljava/util/Map;

    .line 658
    .line 659
    if-eqz v12, :cond_28

    .line 660
    .line 661
    if-eqz v3, :cond_28

    .line 662
    .line 663
    move-object/from16 v22, v10

    .line 664
    .line 665
    move-object/from16 v10, v28

    .line 666
    .line 667
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    move-result-object v23

    .line 671
    invoke-static/range {v23 .. v23}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v23

    .line 675
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    .line 676
    .line 677
    .line 678
    move-result v24

    .line 679
    if-eqz v24, :cond_23

    .line 680
    .line 681
    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    move-result-object v23

    .line 685
    invoke-static/range {v23 .. v23}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v23

    .line 689
    :cond_23
    move-object/from16 v24, v23

    .line 690
    .line 691
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    .line 692
    .line 693
    .line 694
    move-result v23

    .line 695
    if-eqz v23, :cond_24

    .line 696
    .line 697
    move-object/from16 v23, v5

    .line 698
    .line 699
    move-object/from16 v25, v6

    .line 700
    .line 701
    move/from16 v26, v7

    .line 702
    .line 703
    goto/16 :goto_1f

    .line 704
    .line 705
    :cond_24
    move-object/from16 v23, v5

    .line 706
    .line 707
    new-instance v5, Ljava/util/ArrayList;

    .line 708
    .line 709
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 710
    .line 711
    .line 712
    move-object/from16 v25, v6

    .line 713
    .line 714
    const-string v6, "Skill"

    .line 715
    .line 716
    invoke-static {v6, v12}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 717
    .line 718
    .line 719
    move-result-object v6

    .line 720
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 721
    .line 722
    .line 723
    move-result-object v6

    .line 724
    :goto_1d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 725
    .line 726
    .line 727
    move-result v12

    .line 728
    if-eqz v12, :cond_26

    .line 729
    .line 730
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    move-result-object v12

    .line 734
    check-cast v12, Ljava/util/Map;

    .line 735
    .line 736
    invoke-interface {v12, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    move-result-object v26

    .line 740
    move-object/from16 v27, v6

    .line 741
    .line 742
    invoke-static/range {v26 .. v26}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v6

    .line 746
    move/from16 v26, v7

    .line 747
    .line 748
    move-object/from16 v7, v24

    .line 749
    .line 750
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 751
    .line 752
    .line 753
    move-result v6

    .line 754
    if-nez v6, :cond_25

    .line 755
    .line 756
    goto :goto_1e

    .line 757
    :cond_25
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 758
    .line 759
    invoke-direct {v6, v12}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 760
    .line 761
    .line 762
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    .line 764
    .line 765
    :goto_1e
    move-object/from16 v24, v7

    .line 766
    .line 767
    move/from16 v7, v26

    .line 768
    .line 769
    move-object/from16 v6, v27

    .line 770
    .line 771
    goto :goto_1d

    .line 772
    :cond_26
    move/from16 v26, v7

    .line 773
    .line 774
    move-object/from16 v7, v24

    .line 775
    .line 776
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 777
    .line 778
    .line 779
    move-result v6

    .line 780
    if-eqz v6, :cond_27

    .line 781
    .line 782
    goto :goto_1f

    .line 783
    :cond_27
    invoke-static {v1, v7, v14, v5, v3}, Lcom/sgscq/vpn/handler/f;->d(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)I

    .line 784
    .line 785
    .line 786
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 787
    .line 788
    invoke-direct {v6, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 789
    .line 790
    .line 791
    invoke-interface {v6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    .line 793
    .line 794
    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    .line 796
    .line 797
    move-object v3, v6

    .line 798
    goto :goto_1f

    .line 799
    :cond_28
    move-object/from16 v23, v5

    .line 800
    .line 801
    move-object/from16 v25, v6

    .line 802
    .line 803
    move/from16 v26, v7

    .line 804
    .line 805
    move-object/from16 v22, v10

    .line 806
    .line 807
    move-object/from16 v10, v28

    .line 808
    .line 809
    :goto_1f
    new-instance v5, Ljava/util/ArrayList;

    .line 810
    .line 811
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 812
    .line 813
    .line 814
    new-instance v6, Ljava/util/LinkedHashSet;

    .line 815
    .line 816
    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 817
    .line 818
    .line 819
    const/4 v7, 0x1

    .line 820
    const/4 v12, 0x0

    .line 821
    invoke-static {v5, v6, v8, v12, v7}, Lcom/sgscq/vpn/v;->a(Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Ljava/lang/Object;II)V

    .line 822
    .line 823
    .line 824
    const-string v7, "null"

    .line 825
    .line 826
    const-string v8, "0"

    .line 827
    .line 828
    const-string v12, ""

    .line 829
    .line 830
    if-nez v3, :cond_29

    .line 831
    .line 832
    move-object/from16 v27, v1

    .line 833
    .line 834
    move-object/from16 v24, v14

    .line 835
    .line 836
    goto :goto_20

    .line 837
    :cond_29
    move-object/from16 v24, v14

    .line 838
    .line 839
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    .line 841
    .line 842
    move-result-object v14

    .line 843
    invoke-static {v5, v6, v14}, Lcom/sgscq/vpn/v;->c(Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Ljava/lang/Object;)V

    .line 844
    .line 845
    .line 846
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object v14

    .line 850
    invoke-static {v5, v6, v14}, Lcom/sgscq/vpn/v;->c(Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Ljava/lang/Object;)V

    .line 851
    .line 852
    .line 853
    const-string v14, "bound_lieutenants"

    .line 854
    .line 855
    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    .line 857
    .line 858
    move-result-object v14

    .line 859
    move-object/from16 v27, v1

    .line 860
    .line 861
    instance-of v1, v14, Ljava/util/List;

    .line 862
    .line 863
    if-nez v1, :cond_2a

    .line 864
    .line 865
    :goto_20
    move-object/from16 v28, v15

    .line 866
    .line 867
    goto/16 :goto_28

    .line 868
    .line 869
    :cond_2a
    check-cast v14, Ljava/util/List;

    .line 870
    .line 871
    new-instance v1, Ljava/util/ArrayList;

    .line 872
    .line 873
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 874
    .line 875
    .line 876
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 877
    .line 878
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 879
    .line 880
    .line 881
    invoke-static {v3, v15, v12, v10}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object v3

    .line 885
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 886
    .line 887
    .line 888
    move-result-object v14

    .line 889
    :goto_21
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 890
    .line 891
    .line 892
    move-result v28

    .line 893
    if-eqz v28, :cond_2f

    .line 894
    .line 895
    move-object/from16 v28, v15

    .line 896
    .line 897
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 898
    .line 899
    .line 900
    move-result-object v15

    .line 901
    move-object/from16 v33, v14

    .line 902
    .line 903
    instance-of v14, v15, Ljava/util/Map;

    .line 904
    .line 905
    if-nez v14, :cond_2b

    .line 906
    .line 907
    goto :goto_23

    .line 908
    :cond_2b
    check-cast v15, Ljava/util/Map;

    .line 909
    .line 910
    const-string v14, "major_pk_id"

    .line 911
    .line 912
    invoke-interface {v15, v14, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    .line 914
    .line 915
    move-result-object v14

    .line 916
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v14

    .line 920
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 921
    .line 922
    .line 923
    move-result v34

    .line 924
    if-nez v34, :cond_2c

    .line 925
    .line 926
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 927
    .line 928
    .line 929
    move-result v34

    .line 930
    if-nez v34, :cond_2c

    .line 931
    .line 932
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 933
    .line 934
    .line 935
    move-result v14

    .line 936
    if-nez v14, :cond_2c

    .line 937
    .line 938
    goto :goto_23

    .line 939
    :cond_2c
    const-string v14, "position"

    .line 940
    .line 941
    invoke-interface {v15, v14, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    .line 943
    .line 944
    move-result-object v14

    .line 945
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 946
    .line 947
    .line 948
    move-result-object v14

    .line 949
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 950
    .line 951
    .line 952
    move-result-object v14

    .line 953
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 954
    .line 955
    .line 956
    move-result v34

    .line 957
    if-nez v34, :cond_2e

    .line 958
    .line 959
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 960
    .line 961
    .line 962
    move-result v34

    .line 963
    if-nez v34, :cond_2e

    .line 964
    .line 965
    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 966
    .line 967
    .line 968
    move-result v34

    .line 969
    if-eqz v34, :cond_2d

    .line 970
    .line 971
    goto :goto_22

    .line 972
    :cond_2d
    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    .line 974
    .line 975
    goto :goto_23

    .line 976
    :cond_2e
    :goto_22
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    .line 978
    .line 979
    :goto_23
    move-object/from16 v15, v28

    .line 980
    .line 981
    move-object/from16 v14, v33

    .line 982
    .line 983
    goto :goto_21

    .line 984
    :cond_2f
    move-object/from16 v28, v15

    .line 985
    .line 986
    new-instance v3, Ljava/util/ArrayList;

    .line 987
    .line 988
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 989
    .line 990
    .line 991
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 992
    .line 993
    .line 994
    move-result-object v0

    .line 995
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 996
    .line 997
    .line 998
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 999
    .line 1000
    .line 1001
    move-result-object v0

    .line 1002
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1003
    .line 1004
    .line 1005
    move-result v1

    .line 1006
    if-eqz v1, :cond_33

    .line 1007
    .line 1008
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v1

    .line 1012
    check-cast v1, Ljava/util/Map;

    .line 1013
    .line 1014
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1015
    .line 1016
    .line 1017
    move-result v3

    .line 1018
    if-nez v1, :cond_30

    .line 1019
    .line 1020
    goto :goto_25

    .line 1021
    :cond_30
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v14

    .line 1025
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v15

    .line 1029
    filled-new-array {v14, v15}, [Ljava/lang/Object;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v14

    .line 1033
    invoke-static {v14}, Lcom/sgscq/vpn/v;->d([Ljava/lang/Object;)Ljava/lang/String;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v14

    .line 1037
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 1038
    .line 1039
    .line 1040
    move-result v15

    .line 1041
    if-eqz v15, :cond_31

    .line 1042
    .line 1043
    :goto_25
    move-object v14, v12

    .line 1044
    goto :goto_26

    .line 1045
    :cond_31
    const/4 v15, 0x0

    .line 1046
    invoke-static {v15}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v15

    .line 1050
    invoke-virtual {v15, v14}, Lcom/sgscq/vpn/w1;->T0(Ljava/lang/String;)Ljava/lang/String;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v14

    .line 1054
    :goto_26
    const/4 v15, 0x1

    .line 1055
    move-object/from16 v33, v0

    .line 1056
    .line 1057
    const/4 v0, 0x0

    .line 1058
    invoke-static {v5, v6, v14, v0, v15}, Lcom/sgscq/vpn/v;->a(Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Ljava/lang/Object;II)V

    .line 1059
    .line 1060
    .line 1061
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v0

    .line 1065
    invoke-static {v5, v6, v0}, Lcom/sgscq/vpn/v;->c(Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Ljava/lang/Object;)V

    .line 1066
    .line 1067
    .line 1068
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v0

    .line 1072
    invoke-static {v5, v6, v0}, Lcom/sgscq/vpn/v;->c(Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Ljava/lang/Object;)V

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1076
    .line 1077
    .line 1078
    move-result v0

    .line 1079
    if-le v0, v3, :cond_32

    .line 1080
    .line 1081
    goto :goto_27

    .line 1082
    :cond_32
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v0

    .line 1086
    const-string v3, "natural_skill_id"

    .line 1087
    .line 1088
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v1

    .line 1092
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v0

    .line 1096
    invoke-static {v0}, Lcom/sgscq/vpn/v;->d([Ljava/lang/Object;)Ljava/lang/String;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v0

    .line 1100
    const/4 v1, 0x1

    .line 1101
    const/4 v3, 0x0

    .line 1102
    invoke-static {v5, v6, v0, v3, v1}, Lcom/sgscq/vpn/v;->a(Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Ljava/lang/Object;II)V

    .line 1103
    .line 1104
    .line 1105
    :goto_27
    move-object/from16 v0, v33

    .line 1106
    .line 1107
    goto :goto_24

    .line 1108
    :cond_33
    :goto_28
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v0

    .line 1112
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1113
    .line 1114
    .line 1115
    move-result v1

    .line 1116
    if-eqz v1, :cond_52

    .line 1117
    .line 1118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v1

    .line 1122
    check-cast v1, Lcom/sgscq/vpn/u;

    .line 1123
    .line 1124
    iget-object v2, v1, Lcom/sgscq/vpn/u;->a:Ljava/lang/String;

    .line 1125
    .line 1126
    iget v3, v1, Lcom/sgscq/vpn/u;->b:I

    .line 1127
    .line 1128
    iget v4, v1, Lcom/sgscq/vpn/u;->c:I

    .line 1129
    .line 1130
    move-object/from16 v5, p0

    .line 1131
    .line 1132
    iget-boolean v6, v5, Lcom/sgscq/vpn/handler/e;->m:Z

    .line 1133
    .line 1134
    iget-boolean v9, v5, Lcom/sgscq/vpn/handler/e;->l:Z

    .line 1135
    .line 1136
    if-eqz v2, :cond_4e

    .line 1137
    .line 1138
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 1139
    .line 1140
    .line 1141
    move-result v11

    .line 1142
    if-nez v11, :cond_4e

    .line 1143
    .line 1144
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1145
    .line 1146
    .line 1147
    move-result v11

    .line 1148
    if-eqz v11, :cond_34

    .line 1149
    .line 1150
    goto/16 :goto_39

    .line 1151
    .line 1152
    :cond_34
    const-string v11, "141026"

    .line 1153
    .line 1154
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1155
    .line 1156
    .line 1157
    move-result v11

    .line 1158
    if-eqz v11, :cond_35

    .line 1159
    .line 1160
    const-string v13, "341022"

    .line 1161
    .line 1162
    goto :goto_2a

    .line 1163
    :cond_35
    move-object v13, v2

    .line 1164
    :goto_2a
    if-eqz v11, :cond_36

    .line 1165
    .line 1166
    const/4 v3, 0x0

    .line 1167
    :cond_36
    move-object/from16 v11, v27

    .line 1168
    .line 1169
    invoke-static {v3, v11, v13}, Lcom/sgscq/vpn/v;->b(ILcom/sgscq/vpn/w1;Ljava/lang/String;)Ljava/util/Map;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v13

    .line 1173
    if-nez v13, :cond_38

    .line 1174
    .line 1175
    if-eqz v6, :cond_37

    .line 1176
    .line 1177
    sget-object v3, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->SINGLE_ATTRIBUTE_DAMAGE:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    .line 1178
    .line 1179
    sget-object v4, Lcom/sgscq/vpn/battle/BattleSkillTargetRule;->NORMAL_COUNTERPART:Lcom/sgscq/vpn/battle/BattleSkillTargetRule;

    .line 1180
    .line 1181
    invoke-static {v3, v4}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->simple(Lcom/sgscq/vpn/battle/BattleSkillTemplate;Lcom/sgscq/vpn/battle/BattleSkillTargetRule;)Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v4

    .line 1185
    invoke-static {v2}, Lcom/sgscq/vpn/battle/BattleSkill;->builder(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkill$Builder;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v2

    .line 1189
    const-string v6, "npc_attack_skill"

    .line 1190
    .line 1191
    invoke-virtual {v2, v6}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->code(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkill$Builder;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v2

    .line 1195
    invoke-virtual {v2, v6}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->animationSkill(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkill$Builder;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v2

    .line 1199
    sget-object v6, Lcom/sgscq/vpn/battle/BattleSkillType;->ATTACK:Lcom/sgscq/vpn/battle/BattleSkillType;

    .line 1200
    .line 1201
    invoke-virtual {v2, v6}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->type(Lcom/sgscq/vpn/battle/BattleSkillType;)Lcom/sgscq/vpn/battle/BattleSkill$Builder;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v2

    .line 1205
    invoke-virtual {v2, v3}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->template(Lcom/sgscq/vpn/battle/BattleSkillTemplate;)Lcom/sgscq/vpn/battle/BattleSkill$Builder;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v2

    .line 1209
    invoke-virtual {v2, v4}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->spec(Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;)Lcom/sgscq/vpn/battle/BattleSkill$Builder;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v2

    .line 1213
    sget-object v3, Lcom/sgscq/vpn/battle/BattleAttribute;->ATTACK:Lcom/sgscq/vpn/battle/BattleAttribute;

    .line 1214
    .line 1215
    invoke-virtual {v2, v3}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->majorAttribute(Lcom/sgscq/vpn/battle/BattleAttribute;)Lcom/sgscq/vpn/battle/BattleSkill$Builder;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v2

    .line 1219
    const/4 v3, 0x1

    .line 1220
    new-array v4, v3, [D

    .line 1221
    .line 1222
    const/4 v6, 0x0

    .line 1223
    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    .line 1224
    .line 1225
    aput-wide v13, v4, v6

    .line 1226
    .line 1227
    invoke-virtual {v2, v4}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->params([D)Lcom/sgscq/vpn/battle/BattleSkill$Builder;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v2

    .line 1231
    invoke-virtual {v2, v3}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->firstTriggerAction(I)Lcom/sgscq/vpn/battle/BattleSkill$Builder;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v2

    .line 1235
    invoke-virtual {v2, v9}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->mandatoryTrigger(Z)Lcom/sgscq/vpn/battle/BattleSkill$Builder;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v2

    .line 1239
    invoke-virtual {v2}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->build()Lcom/sgscq/vpn/battle/BattleSkill;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v2

    .line 1243
    goto :goto_2b

    .line 1244
    :cond_37
    const/4 v2, 0x0

    .line 1245
    :goto_2b
    move-object/from16 v27, v0

    .line 1246
    .line 1247
    move-object/from16 v37, v1

    .line 1248
    .line 1249
    move-object/from16 v34, v7

    .line 1250
    .line 1251
    move-object/from16 v33, v8

    .line 1252
    .line 1253
    move-object/from16 v35, v10

    .line 1254
    .line 1255
    move-object/from16 v36, v11

    .line 1256
    .line 1257
    goto/16 :goto_3b

    .line 1258
    .line 1259
    :cond_38
    const-string v6, "skill_code"

    .line 1260
    .line 1261
    invoke-interface {v13, v6, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v6

    .line 1265
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v6

    .line 1269
    const-string v14, "skill_type"

    .line 1270
    .line 1271
    invoke-interface {v13, v14, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v14

    .line 1275
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v14

    .line 1279
    const-string v15, "major_property"

    .line 1280
    .line 1281
    move-object/from16 v27, v0

    .line 1282
    .line 1283
    const-string v0, "1"

    .line 1284
    .line 1285
    invoke-interface {v13, v15, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v15

    .line 1289
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v15

    .line 1293
    move-object/from16 v33, v8

    .line 1294
    .line 1295
    const-string v8, "phase_desc"

    .line 1296
    .line 1297
    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v8

    .line 1301
    invoke-static {v11, v8}, Lcom/sgscq/vpn/v;->e(Lcom/sgscq/vpn/w1;Ljava/lang/Object;)Ljava/lang/String;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v8

    .line 1305
    move-object/from16 v34, v7

    .line 1306
    .line 1307
    invoke-static {v6}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor;->builder(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v7

    .line 1311
    invoke-virtual {v7, v14}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;->skillType(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v7

    .line 1315
    invoke-virtual {v7, v15}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;->majorProperty(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v7

    .line 1319
    invoke-virtual {v7, v8}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;->phase(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v7

    .line 1323
    move-object/from16 v35, v10

    .line 1324
    .line 1325
    const-string v10, "range_desc"

    .line 1326
    .line 1327
    invoke-interface {v13, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v10

    .line 1331
    invoke-static {v11, v10}, Lcom/sgscq/vpn/v;->e(Lcom/sgscq/vpn/w1;Ljava/lang/Object;)Ljava/lang/String;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v10

    .line 1335
    invoke-virtual {v7, v10}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;->range(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v7

    .line 1339
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1340
    .line 1341
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1342
    .line 1343
    .line 1344
    const-string v5, "desc"

    .line 1345
    .line 1346
    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v5

    .line 1350
    invoke-static {v11, v5}, Lcom/sgscq/vpn/v;->e(Lcom/sgscq/vpn/w1;Ljava/lang/Object;)Ljava/lang/String;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v5

    .line 1354
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1355
    .line 1356
    .line 1357
    const-string v5, " "

    .line 1358
    .line 1359
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1360
    .line 1361
    .line 1362
    const-string v5, "short_desc"

    .line 1363
    .line 1364
    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v5

    .line 1368
    invoke-static {v11, v5}, Lcom/sgscq/vpn/v;->e(Lcom/sgscq/vpn/w1;Ljava/lang/Object;)Ljava/lang/String;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v5

    .line 1372
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1373
    .line 1374
    .line 1375
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v5

    .line 1379
    invoke-virtual {v7, v5}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;->description(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v5

    .line 1383
    invoke-virtual {v5}, Lcom/sgscq/vpn/battle/BattleSkillDescriptor$Builder;->build()Lcom/sgscq/vpn/battle/BattleSkillDescriptor;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v5

    .line 1387
    invoke-static {v5}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpecResolver;->resolve(Lcom/sgscq/vpn/battle/BattleSkillDescriptor;)Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v5

    .line 1391
    invoke-virtual {v5}, Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;->getTemplate()Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    .line 1392
    .line 1393
    .line 1394
    move-result-object v7

    .line 1395
    const-string v10, "baiyin"

    .line 1396
    .line 1397
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1398
    .line 1399
    .line 1400
    move-result v10

    .line 1401
    if-nez v10, :cond_3a

    .line 1402
    .line 1403
    const-string v10, "311028"

    .line 1404
    .line 1405
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1406
    .line 1407
    .line 1408
    move-result v10

    .line 1409
    if-eqz v10, :cond_39

    .line 1410
    .line 1411
    goto :goto_2c

    .line 1412
    :cond_39
    const/4 v10, 0x0

    .line 1413
    goto :goto_2d

    .line 1414
    :cond_3a
    :goto_2c
    const/4 v10, 0x1

    .line 1415
    :goto_2d
    move-object/from16 v36, v11

    .line 1416
    .line 1417
    sget-object v11, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->UNKNOWN:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    .line 1418
    .line 1419
    if-eq v7, v11, :cond_4d

    .line 1420
    .line 1421
    sget-object v11, Lcom/sgscq/vpn/battle/BattleSkillTemplate;->NO_EFFECT:Lcom/sgscq/vpn/battle/BattleSkillTemplate;

    .line 1422
    .line 1423
    if-ne v7, v11, :cond_3b

    .line 1424
    .line 1425
    if-nez v10, :cond_3b

    .line 1426
    .line 1427
    goto/16 :goto_38

    .line 1428
    .line 1429
    :cond_3b
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1430
    .line 1431
    .line 1432
    move-result v0

    .line 1433
    const-string v10, "4"

    .line 1434
    .line 1435
    const-string v11, "3"

    .line 1436
    .line 1437
    move-object/from16 v37, v1

    .line 1438
    .line 1439
    const-string v1, "2"

    .line 1440
    .line 1441
    if-eqz v0, :cond_3c

    .line 1442
    .line 1443
    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillType;->ATTACK:Lcom/sgscq/vpn/battle/BattleSkillType;

    .line 1444
    .line 1445
    goto :goto_2e

    .line 1446
    :cond_3c
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1447
    .line 1448
    .line 1449
    move-result v0

    .line 1450
    if-eqz v0, :cond_3d

    .line 1451
    .line 1452
    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillType;->CONTROL:Lcom/sgscq/vpn/battle/BattleSkillType;

    .line 1453
    .line 1454
    goto :goto_2e

    .line 1455
    :cond_3d
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1456
    .line 1457
    .line 1458
    move-result v0

    .line 1459
    if-eqz v0, :cond_3e

    .line 1460
    .line 1461
    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillType;->BLOOD:Lcom/sgscq/vpn/battle/BattleSkillType;

    .line 1462
    .line 1463
    goto :goto_2e

    .line 1464
    :cond_3e
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1465
    .line 1466
    .line 1467
    move-result v0

    .line 1468
    if-eqz v0, :cond_3f

    .line 1469
    .line 1470
    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillType;->PASSIVE:Lcom/sgscq/vpn/battle/BattleSkillType;

    .line 1471
    .line 1472
    goto :goto_2e

    .line 1473
    :cond_3f
    sget-object v0, Lcom/sgscq/vpn/battle/BattleSkillType;->NONE:Lcom/sgscq/vpn/battle/BattleSkillType;

    .line 1474
    .line 1475
    :goto_2e
    sget-object v14, Lcom/sgscq/vpn/battle/BattleSkillType;->BLOOD:Lcom/sgscq/vpn/battle/BattleSkillType;

    .line 1476
    .line 1477
    if-ne v0, v14, :cond_40

    .line 1478
    .line 1479
    const/4 v14, 0x1

    .line 1480
    goto :goto_2f

    .line 1481
    :cond_40
    const/4 v14, 0x0

    .line 1482
    :goto_2f
    if-eqz v9, :cond_41

    .line 1483
    .line 1484
    sget-object v9, Lcom/sgscq/vpn/battle/BattleSkillType;->PASSIVE:Lcom/sgscq/vpn/battle/BattleSkillType;

    .line 1485
    .line 1486
    if-eq v0, v9, :cond_41

    .line 1487
    .line 1488
    sget-object v9, Lcom/sgscq/vpn/battle/BattleSkillType;->NONE:Lcom/sgscq/vpn/battle/BattleSkillType;

    .line 1489
    .line 1490
    if-eq v0, v9, :cond_41

    .line 1491
    .line 1492
    if-nez v14, :cond_41

    .line 1493
    .line 1494
    const/4 v9, 0x1

    .line 1495
    goto :goto_30

    .line 1496
    :cond_41
    const/4 v9, 0x0

    .line 1497
    :goto_30
    move/from16 v38, v3

    .line 1498
    .line 1499
    invoke-static {v2}, Lcom/sgscq/vpn/battle/BattleSkill;->builder(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkill$Builder;

    .line 1500
    .line 1501
    .line 1502
    move-result-object v3

    .line 1503
    invoke-virtual {v3, v6}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->code(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkill$Builder;

    .line 1504
    .line 1505
    .line 1506
    move-result-object v3

    .line 1507
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 1508
    .line 1509
    .line 1510
    move-result v39

    .line 1511
    if-nez v39, :cond_42

    .line 1512
    .line 1513
    move-object v2, v6

    .line 1514
    :cond_42
    invoke-virtual {v3, v2}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->animationSkill(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleSkill$Builder;

    .line 1515
    .line 1516
    .line 1517
    move-result-object v2

    .line 1518
    invoke-virtual {v2, v0}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->type(Lcom/sgscq/vpn/battle/BattleSkillType;)Lcom/sgscq/vpn/battle/BattleSkill$Builder;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v0

    .line 1522
    invoke-virtual {v0, v7}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->template(Lcom/sgscq/vpn/battle/BattleSkillTemplate;)Lcom/sgscq/vpn/battle/BattleSkill$Builder;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v0

    .line 1526
    invoke-virtual {v0, v5}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->spec(Lcom/sgscq/vpn/battle/BattleSkillTemplateSpec;)Lcom/sgscq/vpn/battle/BattleSkill$Builder;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v0

    .line 1530
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1531
    .line 1532
    .line 1533
    move-result v1

    .line 1534
    if-eqz v1, :cond_43

    .line 1535
    .line 1536
    sget-object v1, Lcom/sgscq/vpn/battle/BattleAttribute;->DEFENSE:Lcom/sgscq/vpn/battle/BattleAttribute;

    .line 1537
    .line 1538
    goto :goto_31

    .line 1539
    :cond_43
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1540
    .line 1541
    .line 1542
    move-result v1

    .line 1543
    if-eqz v1, :cond_44

    .line 1544
    .line 1545
    sget-object v1, Lcom/sgscq/vpn/battle/BattleAttribute;->HP:Lcom/sgscq/vpn/battle/BattleAttribute;

    .line 1546
    .line 1547
    goto :goto_31

    .line 1548
    :cond_44
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1549
    .line 1550
    .line 1551
    move-result v1

    .line 1552
    if-eqz v1, :cond_45

    .line 1553
    .line 1554
    sget-object v1, Lcom/sgscq/vpn/battle/BattleAttribute;->WISDOM:Lcom/sgscq/vpn/battle/BattleAttribute;

    .line 1555
    .line 1556
    goto :goto_31

    .line 1557
    :cond_45
    sget-object v1, Lcom/sgscq/vpn/battle/BattleAttribute;->ATTACK:Lcom/sgscq/vpn/battle/BattleAttribute;

    .line 1558
    .line 1559
    :goto_31
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->majorAttribute(Lcom/sgscq/vpn/battle/BattleAttribute;)Lcom/sgscq/vpn/battle/BattleSkill$Builder;

    .line 1560
    .line 1561
    .line 1562
    move-result-object v0

    .line 1563
    const-string v1, "desc_param_value"

    .line 1564
    .line 1565
    invoke-interface {v13, v1, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    .line 1567
    .line 1568
    move-result-object v1

    .line 1569
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1570
    .line 1571
    .line 1572
    move-result-object v1

    .line 1573
    invoke-static {v1}, Lcom/sgscq/vpn/v;->g(Ljava/lang/String;)[D

    .line 1574
    .line 1575
    .line 1576
    move-result-object v1

    .line 1577
    const/4 v2, 0x1

    .line 1578
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 1579
    .line 1580
    .line 1581
    move-result v3

    .line 1582
    if-gt v3, v2, :cond_46

    .line 1583
    .line 1584
    goto :goto_33

    .line 1585
    :cond_46
    const-string v2, "desc_param_step"

    .line 1586
    .line 1587
    invoke-interface {v13, v2, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1588
    .line 1589
    .line 1590
    move-result-object v2

    .line 1591
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1592
    .line 1593
    .line 1594
    move-result-object v2

    .line 1595
    invoke-static {v2}, Lcom/sgscq/vpn/v;->g(Ljava/lang/String;)[D

    .line 1596
    .line 1597
    .line 1598
    move-result-object v2

    .line 1599
    array-length v4, v1

    .line 1600
    array-length v5, v2

    .line 1601
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 1602
    .line 1603
    .line 1604
    move-result v4

    .line 1605
    const/4 v5, 0x0

    .line 1606
    :goto_32
    if-ge v5, v4, :cond_47

    .line 1607
    .line 1608
    aget-wide v6, v1, v5

    .line 1609
    .line 1610
    add-int/lit8 v10, v3, -0x1

    .line 1611
    .line 1612
    int-to-double v10, v10

    .line 1613
    aget-wide v39, v2, v5

    .line 1614
    .line 1615
    mul-double v10, v10, v39

    .line 1616
    .line 1617
    add-double/2addr v10, v6

    .line 1618
    aput-wide v10, v1, v5

    .line 1619
    .line 1620
    add-int/lit8 v5, v5, 0x1

    .line 1621
    .line 1622
    goto :goto_32

    .line 1623
    :cond_47
    :goto_33
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->params([D)Lcom/sgscq/vpn/battle/BattleSkill$Builder;

    .line 1624
    .line 1625
    .line 1626
    move-result-object v0

    .line 1627
    if-eqz v14, :cond_48

    .line 1628
    .line 1629
    invoke-static {v8}, Lcom/sgscq/vpn/battle/BattleSkillTriggerSchedule;->firstTriggerAction(Ljava/lang/String;)I

    .line 1630
    .line 1631
    .line 1632
    move-result v1

    .line 1633
    goto :goto_34

    .line 1634
    :cond_48
    const/4 v1, 0x1

    .line 1635
    :goto_34
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->firstTriggerAction(I)Lcom/sgscq/vpn/battle/BattleSkill$Builder;

    .line 1636
    .line 1637
    .line 1638
    move-result-object v0

    .line 1639
    if-nez v9, :cond_4a

    .line 1640
    .line 1641
    const-string v1, "\u5fc5\u89e6\u53d1"

    .line 1642
    .line 1643
    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1644
    .line 1645
    .line 1646
    move-result v1

    .line 1647
    if-eqz v1, :cond_49

    .line 1648
    .line 1649
    goto :goto_35

    .line 1650
    :cond_49
    const/4 v1, 0x0

    .line 1651
    goto :goto_36

    .line 1652
    :cond_4a
    :goto_35
    const/4 v1, 0x1

    .line 1653
    :goto_36
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->mandatoryTrigger(Z)Lcom/sgscq/vpn/battle/BattleSkill$Builder;

    .line 1654
    .line 1655
    .line 1656
    move-result-object v2

    .line 1657
    if-nez v2, :cond_4b

    .line 1658
    .line 1659
    const/4 v2, 0x0

    .line 1660
    goto :goto_37

    .line 1661
    :cond_4b
    move/from16 v3, v38

    .line 1662
    .line 1663
    invoke-virtual {v2, v3}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->advancedLevel(I)Lcom/sgscq/vpn/battle/BattleSkill$Builder;

    .line 1664
    .line 1665
    .line 1666
    const-string v0, "skill_round_step"

    .line 1667
    .line 1668
    invoke-interface {v13, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1669
    .line 1670
    .line 1671
    move-result v1

    .line 1672
    if-nez v1, :cond_4c

    .line 1673
    .line 1674
    goto :goto_37

    .line 1675
    :cond_4c
    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1676
    .line 1677
    .line 1678
    move-result-object v0

    .line 1679
    const/4 v1, 0x4

    .line 1680
    invoke-static {v0, v1}, Lcom/sgscq/vpn/v;->h(Ljava/lang/Object;I)I

    .line 1681
    .line 1682
    .line 1683
    move-result v7

    .line 1684
    const-string v0, "first_min_round"

    .line 1685
    .line 1686
    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1687
    .line 1688
    .line 1689
    move-result-object v0

    .line 1690
    const/4 v1, 0x1

    .line 1691
    invoke-static {v0, v1}, Lcom/sgscq/vpn/v;->h(Ljava/lang/Object;I)I

    .line 1692
    .line 1693
    .line 1694
    move-result v3

    .line 1695
    const-string v0, "first_max_round"

    .line 1696
    .line 1697
    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    .line 1699
    .line 1700
    move-result-object v0

    .line 1701
    invoke-static {v0, v1}, Lcom/sgscq/vpn/v;->h(Ljava/lang/Object;I)I

    .line 1702
    .line 1703
    .line 1704
    move-result v4

    .line 1705
    const-string v0, "skill_min_round"

    .line 1706
    .line 1707
    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1708
    .line 1709
    .line 1710
    move-result-object v0

    .line 1711
    invoke-static {v0, v1}, Lcom/sgscq/vpn/v;->h(Ljava/lang/Object;I)I

    .line 1712
    .line 1713
    .line 1714
    move-result v5

    .line 1715
    const-string v0, "skill_max_round"

    .line 1716
    .line 1717
    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1718
    .line 1719
    .line 1720
    move-result-object v0

    .line 1721
    invoke-static {v0, v7}, Lcom/sgscq/vpn/v;->h(Ljava/lang/Object;I)I

    .line 1722
    .line 1723
    .line 1724
    move-result v6

    .line 1725
    invoke-virtual/range {v2 .. v7}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->triggerSchedule(IIIII)Lcom/sgscq/vpn/battle/BattleSkill$Builder;

    .line 1726
    .line 1727
    .line 1728
    move-result-object v2

    .line 1729
    :goto_37
    invoke-virtual {v2}, Lcom/sgscq/vpn/battle/BattleSkill$Builder;->build()Lcom/sgscq/vpn/battle/BattleSkill;

    .line 1730
    .line 1731
    .line 1732
    move-result-object v2

    .line 1733
    goto :goto_3b

    .line 1734
    :cond_4d
    :goto_38
    move-object/from16 v37, v1

    .line 1735
    .line 1736
    goto :goto_3a

    .line 1737
    :cond_4e
    :goto_39
    move-object/from16 v37, v1

    .line 1738
    .line 1739
    move-object/from16 v34, v7

    .line 1740
    .line 1741
    move-object/from16 v33, v8

    .line 1742
    .line 1743
    move-object/from16 v35, v10

    .line 1744
    .line 1745
    move-object/from16 v36, v27

    .line 1746
    .line 1747
    move-object/from16 v27, v0

    .line 1748
    .line 1749
    :goto_3a
    const/4 v2, 0x0

    .line 1750
    :goto_3b
    if-nez v2, :cond_4f

    .line 1751
    .line 1752
    move-object/from16 v0, v23

    .line 1753
    .line 1754
    move-object/from16 v1, v25

    .line 1755
    .line 1756
    goto :goto_3c

    .line 1757
    :cond_4f
    if-nez v26, :cond_50

    .line 1758
    .line 1759
    move-object/from16 v1, v37

    .line 1760
    .line 1761
    iget-object v0, v1, Lcom/sgscq/vpn/u;->a:Ljava/lang/String;

    .line 1762
    .line 1763
    invoke-static {v0}, Lcom/sgscq/vpn/handler/f;->c(Ljava/lang/String;)Z

    .line 1764
    .line 1765
    .line 1766
    move-result v0

    .line 1767
    if-nez v0, :cond_50

    .line 1768
    .line 1769
    invoke-virtual {v2}, Lcom/sgscq/vpn/battle/BattleSkill;->getType()Lcom/sgscq/vpn/battle/BattleSkillType;

    .line 1770
    .line 1771
    .line 1772
    move-result-object v0

    .line 1773
    sget-object v1, Lcom/sgscq/vpn/battle/BattleSkillType;->NONE:Lcom/sgscq/vpn/battle/BattleSkillType;

    .line 1774
    .line 1775
    if-eq v0, v1, :cond_50

    .line 1776
    .line 1777
    invoke-virtual {v2}, Lcom/sgscq/vpn/battle/BattleSkill;->getType()Lcom/sgscq/vpn/battle/BattleSkillType;

    .line 1778
    .line 1779
    .line 1780
    move-result-object v0

    .line 1781
    move-object/from16 v1, v25

    .line 1782
    .line 1783
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1784
    .line 1785
    .line 1786
    move-result v0

    .line 1787
    if-nez v0, :cond_51

    .line 1788
    .line 1789
    move-object/from16 v0, v23

    .line 1790
    .line 1791
    goto :goto_3c

    .line 1792
    :cond_50
    move-object/from16 v1, v25

    .line 1793
    .line 1794
    :cond_51
    move-object/from16 v0, v23

    .line 1795
    .line 1796
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1797
    .line 1798
    .line 1799
    :goto_3c
    move-object/from16 v23, v0

    .line 1800
    .line 1801
    move-object/from16 v25, v1

    .line 1802
    .line 1803
    move-object/from16 v0, v27

    .line 1804
    .line 1805
    move-object/from16 v8, v33

    .line 1806
    .line 1807
    move-object/from16 v7, v34

    .line 1808
    .line 1809
    move-object/from16 v10, v35

    .line 1810
    .line 1811
    move-object/from16 v27, v36

    .line 1812
    .line 1813
    goto/16 :goto_29

    .line 1814
    .line 1815
    :cond_52
    move-object/from16 v2, p0

    .line 1816
    .line 1817
    move-object/from16 v34, v7

    .line 1818
    .line 1819
    move-object/from16 v35, v10

    .line 1820
    .line 1821
    move-object/from16 v0, v23

    .line 1822
    .line 1823
    move-object/from16 v36, v27

    .line 1824
    .line 1825
    iget-object v1, v2, Lcom/sgscq/vpn/handler/e;->e:Ljava/util/Map;

    .line 1826
    .line 1827
    const-wide/16 v3, 0x0

    .line 1828
    .line 1829
    if-eqz v1, :cond_56

    .line 1830
    .line 1831
    if-eqz v22, :cond_56

    .line 1832
    .line 1833
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1834
    .line 1835
    .line 1836
    move-result-object v1

    .line 1837
    :cond_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1838
    .line 1839
    .line 1840
    move-result v5

    .line 1841
    if-eqz v5, :cond_55

    .line 1842
    .line 1843
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1844
    .line 1845
    .line 1846
    move-result-object v5

    .line 1847
    check-cast v5, Lcom/sgscq/vpn/battle/BattleSkill;

    .line 1848
    .line 1849
    if-eqz v5, :cond_53

    .line 1850
    .line 1851
    const-string v6, "yannian"

    .line 1852
    .line 1853
    invoke-virtual {v5}, Lcom/sgscq/vpn/battle/BattleSkill;->getCode()Ljava/lang/String;

    .line 1854
    .line 1855
    .line 1856
    move-result-object v7

    .line 1857
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1858
    .line 1859
    .line 1860
    move-result v6

    .line 1861
    if-nez v6, :cond_54

    .line 1862
    .line 1863
    const-string v6, "391001"

    .line 1864
    .line 1865
    invoke-virtual {v5}, Lcom/sgscq/vpn/battle/BattleSkill;->getId()Ljava/lang/String;

    .line 1866
    .line 1867
    .line 1868
    move-result-object v7

    .line 1869
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1870
    .line 1871
    .line 1872
    move-result v6

    .line 1873
    if-eqz v6, :cond_53

    .line 1874
    .line 1875
    :cond_54
    const/4 v1, 0x0

    .line 1876
    invoke-virtual {v5, v1}, Lcom/sgscq/vpn/battle/BattleSkill;->getParam(I)D

    .line 1877
    .line 1878
    .line 1879
    move-result-wide v5

    .line 1880
    goto :goto_3d

    .line 1881
    :cond_55
    move-wide v5, v3

    .line 1882
    :goto_3d
    cmpg-double v1, v5, v3

    .line 1883
    .line 1884
    if-gtz v1, :cond_57

    .line 1885
    .line 1886
    :cond_56
    move-object/from16 v1, v22

    .line 1887
    .line 1888
    goto/16 :goto_41

    .line 1889
    .line 1890
    :cond_57
    move-object/from16 v1, v22

    .line 1891
    .line 1892
    move-object/from16 v7, v35

    .line 1893
    .line 1894
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1895
    .line 1896
    .line 1897
    move-result-object v7

    .line 1898
    invoke-static {v7}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 1899
    .line 1900
    .line 1901
    move-result-object v7

    .line 1902
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 1903
    .line 1904
    .line 1905
    move-result v8

    .line 1906
    if-eqz v8, :cond_58

    .line 1907
    .line 1908
    move-object/from16 v8, v28

    .line 1909
    .line 1910
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1911
    .line 1912
    .line 1913
    move-result-object v7

    .line 1914
    invoke-static {v7}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 1915
    .line 1916
    .line 1917
    move-result-object v7

    .line 1918
    goto :goto_3e

    .line 1919
    :cond_58
    move-object/from16 v8, v28

    .line 1920
    .line 1921
    :goto_3e
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 1922
    .line 1923
    .line 1924
    move-result v9

    .line 1925
    if-eqz v9, :cond_59

    .line 1926
    .line 1927
    goto :goto_41

    .line 1928
    :cond_59
    iget-object v9, v2, Lcom/sgscq/vpn/handler/e;->e:Ljava/util/Map;

    .line 1929
    .line 1930
    const-string v10, "MeridianTop"

    .line 1931
    .line 1932
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1933
    .line 1934
    .line 1935
    move-result-object v9

    .line 1936
    instance-of v10, v9, Ljava/util/Map;

    .line 1937
    .line 1938
    if-eqz v10, :cond_5d

    .line 1939
    .line 1940
    check-cast v9, Ljava/util/Map;

    .line 1941
    .line 1942
    const-string v10, "add"

    .line 1943
    .line 1944
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1945
    .line 1946
    .line 1947
    move-result-object v9

    .line 1948
    instance-of v10, v9, Ljava/util/List;

    .line 1949
    .line 1950
    if-eqz v10, :cond_5d

    .line 1951
    .line 1952
    check-cast v9, Ljava/util/List;

    .line 1953
    .line 1954
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1955
    .line 1956
    .line 1957
    move-result-object v9

    .line 1958
    move-wide v10, v3

    .line 1959
    :goto_3f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 1960
    .line 1961
    .line 1962
    move-result v12

    .line 1963
    if-eqz v12, :cond_5e

    .line 1964
    .line 1965
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1966
    .line 1967
    .line 1968
    move-result-object v12

    .line 1969
    instance-of v13, v12, Ljava/util/Map;

    .line 1970
    .line 1971
    if-nez v13, :cond_5a

    .line 1972
    .line 1973
    goto :goto_3f

    .line 1974
    :cond_5a
    check-cast v12, Ljava/util/Map;

    .line 1975
    .line 1976
    invoke-interface {v12, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1977
    .line 1978
    .line 1979
    move-result v13

    .line 1980
    if-eqz v13, :cond_5b

    .line 1981
    .line 1982
    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1983
    .line 1984
    .line 1985
    move-result-object v13

    .line 1986
    goto :goto_40

    .line 1987
    :cond_5b
    const-string v13, "user_general_id"

    .line 1988
    .line 1989
    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1990
    .line 1991
    .line 1992
    move-result-object v13

    .line 1993
    :goto_40
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1994
    .line 1995
    .line 1996
    move-result-object v13

    .line 1997
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1998
    .line 1999
    .line 2000
    move-result v13

    .line 2001
    if-nez v13, :cond_5c

    .line 2002
    .line 2003
    goto :goto_3f

    .line 2004
    :cond_5c
    const-string v13, "xue"

    .line 2005
    .line 2006
    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2007
    .line 2008
    .line 2009
    move-result-object v12

    .line 2010
    invoke-static {v12}, Lcom/sgscq/vpn/handler/f;->e(Ljava/lang/Object;)D

    .line 2011
    .line 2012
    .line 2013
    move-result-wide v12

    .line 2014
    add-double/2addr v10, v12

    .line 2015
    goto :goto_3f

    .line 2016
    :cond_5d
    move-wide v10, v3

    .line 2017
    :cond_5e
    cmpl-double v7, v10, v3

    .line 2018
    .line 2019
    if-lez v7, :cond_5f

    .line 2020
    .line 2021
    mul-double/2addr v10, v5

    .line 2022
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 2023
    .line 2024
    div-double/2addr v10, v5

    .line 2025
    goto :goto_42

    .line 2026
    :cond_5f
    :goto_41
    move-wide v10, v3

    .line 2027
    :goto_42
    invoke-static/range {v24 .. v24}, Lcom/sgscq/vpn/battle/BattleUnit;->builder(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleUnit$Builder;

    .line 2028
    .line 2029
    .line 2030
    move-result-object v5

    .line 2031
    iget-object v6, v2, Lcom/sgscq/vpn/handler/e;->g:Ljava/lang/String;

    .line 2032
    .line 2033
    if-eqz v6, :cond_60

    .line 2034
    .line 2035
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 2036
    .line 2037
    .line 2038
    move-result v7

    .line 2039
    if-nez v7, :cond_60

    .line 2040
    .line 2041
    move-object/from16 v7, v34

    .line 2042
    .line 2043
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2044
    .line 2045
    .line 2046
    move-result v7

    .line 2047
    if-eqz v7, :cond_61

    .line 2048
    .line 2049
    :cond_60
    move-object/from16 v6, v24

    .line 2050
    .line 2051
    :cond_61
    invoke-virtual {v5, v6}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->name(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleUnit$Builder;

    .line 2052
    .line 2053
    .line 2054
    move-result-object v5

    .line 2055
    iget v6, v2, Lcom/sgscq/vpn/handler/e;->b:I

    .line 2056
    .line 2057
    invoke-virtual {v5, v6}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->side(I)Lcom/sgscq/vpn/battle/BattleUnit$Builder;

    .line 2058
    .line 2059
    .line 2060
    move-result-object v5

    .line 2061
    iget v6, v2, Lcom/sgscq/vpn/handler/e;->c:I

    .line 2062
    .line 2063
    invoke-virtual {v5, v6}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->slot(I)Lcom/sgscq/vpn/battle/BattleUnit$Builder;

    .line 2064
    .line 2065
    .line 2066
    move-result-object v5

    .line 2067
    iget-boolean v6, v2, Lcom/sgscq/vpn/handler/e;->h:Z

    .line 2068
    .line 2069
    invoke-virtual {v5, v6}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->storyGuest(Z)Lcom/sgscq/vpn/battle/BattleUnit$Builder;

    .line 2070
    .line 2071
    .line 2072
    move-result-object v5

    .line 2073
    iget-boolean v6, v2, Lcom/sgscq/vpn/handler/e;->i:Z

    .line 2074
    .line 2075
    const-string v7, "general_sex"

    .line 2076
    .line 2077
    if-eqz v6, :cond_63

    .line 2078
    .line 2079
    if-eqz v1, :cond_63

    .line 2080
    .line 2081
    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 2082
    .line 2083
    .line 2084
    move-result v6

    .line 2085
    if-eqz v6, :cond_63

    .line 2086
    .line 2087
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2088
    .line 2089
    .line 2090
    move-result-object v6

    .line 2091
    if-nez v6, :cond_62

    .line 2092
    .line 2093
    goto :goto_43

    .line 2094
    :cond_62
    :try_start_0
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2095
    .line 2096
    .line 2097
    move-result-object v6

    .line 2098
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 2099
    .line 2100
    .line 2101
    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2102
    double-to-int v6, v6

    .line 2103
    goto :goto_44

    .line 2104
    :catch_0
    :goto_43
    const/4 v6, 0x0

    .line 2105
    :goto_44
    move v7, v6

    .line 2106
    move-object/from16 v6, v21

    .line 2107
    .line 2108
    goto :goto_47

    .line 2109
    :cond_63
    move-object/from16 v6, v21

    .line 2110
    .line 2111
    if-eqz v21, :cond_64

    .line 2112
    .line 2113
    array-length v8, v6

    .line 2114
    const/16 v9, 0xb

    .line 2115
    .line 2116
    if-le v8, v9, :cond_64

    .line 2117
    .line 2118
    aget-wide v7, v6, v9

    .line 2119
    .line 2120
    :goto_45
    double-to-int v7, v7

    .line 2121
    goto :goto_47

    .line 2122
    :cond_64
    if-eqz v1, :cond_66

    .line 2123
    .line 2124
    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 2125
    .line 2126
    .line 2127
    move-result v8

    .line 2128
    if-eqz v8, :cond_66

    .line 2129
    .line 2130
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2131
    .line 2132
    .line 2133
    move-result-object v7

    .line 2134
    if-nez v7, :cond_65

    .line 2135
    .line 2136
    goto :goto_46

    .line 2137
    :cond_65
    :try_start_1
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2138
    .line 2139
    .line 2140
    move-result-object v7

    .line 2141
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 2142
    .line 2143
    .line 2144
    move-result-wide v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2145
    goto :goto_45

    .line 2146
    :catch_1
    :cond_66
    :goto_46
    const/4 v7, 0x0

    .line 2147
    :goto_47
    invoke-virtual {v5, v7}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->generalSex(I)Lcom/sgscq/vpn/battle/BattleUnit$Builder;

    .line 2148
    .line 2149
    .line 2150
    move-result-object v5

    .line 2151
    if-nez v1, :cond_68

    .line 2152
    .line 2153
    :cond_67
    const/4 v7, 0x0

    .line 2154
    goto :goto_4a

    .line 2155
    :cond_68
    const-string v7, "evolution_image_status"

    .line 2156
    .line 2157
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2158
    .line 2159
    .line 2160
    move-result-object v7

    .line 2161
    instance-of v8, v7, Ljava/lang/Boolean;

    .line 2162
    .line 2163
    if-eqz v8, :cond_69

    .line 2164
    .line 2165
    check-cast v7, Ljava/lang/Boolean;

    .line 2166
    .line 2167
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2168
    .line 2169
    .line 2170
    move-result v7

    .line 2171
    goto :goto_4a

    .line 2172
    :cond_69
    if-nez v7, :cond_6a

    .line 2173
    .line 2174
    goto :goto_48

    .line 2175
    :cond_6a
    :try_start_2
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2176
    .line 2177
    .line 2178
    move-result-object v8

    .line 2179
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 2180
    .line 2181
    .line 2182
    move-result-wide v8
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2183
    double-to-int v8, v8

    .line 2184
    goto :goto_49

    .line 2185
    :catch_2
    :goto_48
    const/4 v8, 0x0

    .line 2186
    :goto_49
    if-nez v8, :cond_6b

    .line 2187
    .line 2188
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2189
    .line 2190
    .line 2191
    move-result-object v7

    .line 2192
    const-string v8, "true"

    .line 2193
    .line 2194
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 2195
    .line 2196
    .line 2197
    move-result v7

    .line 2198
    if-eqz v7, :cond_67

    .line 2199
    .line 2200
    :cond_6b
    const/4 v7, 0x1

    .line 2201
    :goto_4a
    if-nez v7, :cond_6e

    .line 2202
    .line 2203
    iget-object v7, v2, Lcom/sgscq/vpn/handler/e;->e:Ljava/util/Map;

    .line 2204
    .line 2205
    move-object/from16 v14, v24

    .line 2206
    .line 2207
    if-eqz v7, :cond_6c

    .line 2208
    .line 2209
    invoke-static {v14, v7}, Lcom/sgscq/vpn/p5;->j0(Ljava/lang/String;Ljava/util/Map;)Z

    .line 2210
    .line 2211
    .line 2212
    move-result v7

    .line 2213
    if-eqz v7, :cond_6c

    .line 2214
    .line 2215
    const/4 v7, 0x1

    .line 2216
    goto :goto_4b

    .line 2217
    :cond_6c
    const/4 v7, 0x0

    .line 2218
    :goto_4b
    if-eqz v7, :cond_6d

    .line 2219
    .line 2220
    goto :goto_4c

    .line 2221
    :cond_6d
    const/4 v7, 0x0

    .line 2222
    goto :goto_4d

    .line 2223
    :cond_6e
    move-object/from16 v14, v24

    .line 2224
    .line 2225
    :goto_4c
    const/4 v7, 0x1

    .line 2226
    :goto_4d
    invoke-virtual {v5, v7}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->evolutionImageStatus(Z)Lcom/sgscq/vpn/battle/BattleUnit$Builder;

    .line 2227
    .line 2228
    .line 2229
    move-result-object v5

    .line 2230
    add-double v7, v16, v10

    .line 2231
    .line 2232
    invoke-virtual {v5, v7, v8}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->hp(D)Lcom/sgscq/vpn/battle/BattleUnit$Builder;

    .line 2233
    .line 2234
    .line 2235
    move-result-object v5

    .line 2236
    move-wide/from16 v7, v29

    .line 2237
    .line 2238
    invoke-virtual {v5, v7, v8}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->attack(D)Lcom/sgscq/vpn/battle/BattleUnit$Builder;

    .line 2239
    .line 2240
    .line 2241
    move-result-object v5

    .line 2242
    move-wide/from16 v7, v31

    .line 2243
    .line 2244
    invoke-virtual {v5, v7, v8}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->defense(D)Lcom/sgscq/vpn/battle/BattleUnit$Builder;

    .line 2245
    .line 2246
    .line 2247
    move-result-object v5

    .line 2248
    move-wide/from16 v7, v19

    .line 2249
    .line 2250
    invoke-virtual {v5, v7, v8}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->wisdom(D)Lcom/sgscq/vpn/battle/BattleUnit$Builder;

    .line 2251
    .line 2252
    .line 2253
    move-result-object v5

    .line 2254
    if-eqz v1, :cond_70

    .line 2255
    .line 2256
    const-string v7, "general_orbit"

    .line 2257
    .line 2258
    const-string v8, "orbit"

    .line 2259
    .line 2260
    filled-new-array {v7, v8}, [Ljava/lang/String;

    .line 2261
    .line 2262
    .line 2263
    move-result-object v7

    .line 2264
    const/4 v8, 0x2

    .line 2265
    const/4 v9, 0x0

    .line 2266
    :goto_4e
    if-ge v9, v8, :cond_70

    .line 2267
    .line 2268
    aget-object v8, v7, v9

    .line 2269
    .line 2270
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2271
    .line 2272
    .line 2273
    move-result-object v8

    .line 2274
    invoke-static {v8}, Lcom/sgscq/vpn/handler/f;->e(Ljava/lang/Object;)D

    .line 2275
    .line 2276
    .line 2277
    move-result-wide v10

    .line 2278
    cmpl-double v8, v10, v3

    .line 2279
    .line 2280
    if-lez v8, :cond_6f

    .line 2281
    .line 2282
    goto :goto_4f

    .line 2283
    :cond_6f
    add-int/lit8 v9, v9, 0x1

    .line 2284
    .line 2285
    const/4 v8, 0x2

    .line 2286
    goto :goto_4e

    .line 2287
    :cond_70
    if-eqz v6, :cond_71

    .line 2288
    .line 2289
    array-length v7, v6

    .line 2290
    const/16 v8, 0xc

    .line 2291
    .line 2292
    if-le v7, v8, :cond_71

    .line 2293
    .line 2294
    aget-wide v7, v6, v8

    .line 2295
    .line 2296
    cmpl-double v3, v7, v3

    .line 2297
    .line 2298
    if-lez v3, :cond_71

    .line 2299
    .line 2300
    double-to-int v3, v7

    .line 2301
    const/4 v4, 0x1

    .line 2302
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 2303
    .line 2304
    .line 2305
    move-result v3

    .line 2306
    int-to-double v10, v3

    .line 2307
    goto :goto_4f

    .line 2308
    :cond_71
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 2309
    .line 2310
    :goto_4f
    invoke-virtual {v5, v10, v11}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->orbit(D)Lcom/sgscq/vpn/battle/BattleUnit$Builder;

    .line 2311
    .line 2312
    .line 2313
    move-result-object v3

    .line 2314
    iget-wide v4, v2, Lcom/sgscq/vpn/handler/e;->s:D

    .line 2315
    .line 2316
    const/4 v6, 0x0

    .line 2317
    aget-wide v6, v18, v6

    .line 2318
    .line 2319
    add-double/2addr v4, v6

    .line 2320
    invoke-virtual {v3, v4, v5}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->hpPercentBonus(D)Lcom/sgscq/vpn/battle/BattleUnit$Builder;

    .line 2321
    .line 2322
    .line 2323
    move-result-object v3

    .line 2324
    iget-wide v4, v2, Lcom/sgscq/vpn/handler/e;->t:D

    .line 2325
    .line 2326
    const/4 v6, 0x1

    .line 2327
    aget-wide v6, v18, v6

    .line 2328
    .line 2329
    add-double/2addr v4, v6

    .line 2330
    invoke-virtual {v3, v4, v5}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->attackPercentBonus(D)Lcom/sgscq/vpn/battle/BattleUnit$Builder;

    .line 2331
    .line 2332
    .line 2333
    move-result-object v3

    .line 2334
    iget-wide v4, v2, Lcom/sgscq/vpn/handler/e;->u:D

    .line 2335
    .line 2336
    const/4 v6, 0x2

    .line 2337
    aget-wide v6, v18, v6

    .line 2338
    .line 2339
    add-double/2addr v4, v6

    .line 2340
    invoke-virtual {v3, v4, v5}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->defensePercentBonus(D)Lcom/sgscq/vpn/battle/BattleUnit$Builder;

    .line 2341
    .line 2342
    .line 2343
    move-result-object v3

    .line 2344
    iget-wide v4, v2, Lcom/sgscq/vpn/handler/e;->v:D

    .line 2345
    .line 2346
    const/4 v6, 0x3

    .line 2347
    aget-wide v6, v18, v6

    .line 2348
    .line 2349
    add-double/2addr v4, v6

    .line 2350
    invoke-virtual {v3, v4, v5}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->wisdomPercentBonus(D)Lcom/sgscq/vpn/battle/BattleUnit$Builder;

    .line 2351
    .line 2352
    .line 2353
    move-result-object v3

    .line 2354
    iget-boolean v2, v2, Lcom/sgscq/vpn/handler/e;->i:Z

    .line 2355
    .line 2356
    const-string v4, "weapon_effect"

    .line 2357
    .line 2358
    if-eqz v2, :cond_73

    .line 2359
    .line 2360
    if-nez v1, :cond_72

    .line 2361
    .line 2362
    goto :goto_52

    .line 2363
    :cond_72
    move-object v10, v1

    .line 2364
    goto :goto_51

    .line 2365
    :cond_73
    if-eqz v36, :cond_74

    .line 2366
    .line 2367
    move-object/from16 v1, v36

    .line 2368
    .line 2369
    invoke-virtual {v1, v14}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 2370
    .line 2371
    .line 2372
    move-result-object v1

    .line 2373
    goto :goto_50

    .line 2374
    :cond_74
    const/4 v1, 0x0

    .line 2375
    :goto_50
    move-object v10, v1

    .line 2376
    if-eqz v10, :cond_75

    .line 2377
    .line 2378
    :goto_51
    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2379
    .line 2380
    .line 2381
    move-result-object v1

    .line 2382
    goto :goto_53

    .line 2383
    :cond_75
    :goto_52
    const/4 v1, 0x0

    .line 2384
    :goto_53
    invoke-static {v1}, Lcom/sgscq/vpn/battle/NormalAttackStyleResolver;->fromWeaponEffect(Ljava/lang/Object;)Ljava/lang/String;

    .line 2385
    .line 2386
    .line 2387
    move-result-object v1

    .line 2388
    invoke-virtual {v3, v1}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->normalAttackSkill(Ljava/lang/String;)Lcom/sgscq/vpn/battle/BattleUnit$Builder;

    .line 2389
    .line 2390
    .line 2391
    move-result-object v1

    .line 2392
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->skills(Ljava/util/List;)Lcom/sgscq/vpn/battle/BattleUnit$Builder;

    .line 2393
    .line 2394
    .line 2395
    move-result-object v0

    .line 2396
    invoke-virtual {v0}, Lcom/sgscq/vpn/battle/BattleUnit$Builder;->build()Lcom/sgscq/vpn/battle/BattleUnit;

    .line 2397
    .line 2398
    .line 2399
    move-result-object v0

    .line 2400
    return-object v0

    .line 2401
    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 2402
    .line 2403
    .line 2404
    .line 2405
    .line 2406
    .line 2407
    .line 2408
    .line 2409
    .line 2410
    .line 2411
    .line 2412
    .line 2413
    .line 2414
    .line 2415
    .line 2416
    .line 2417
    .line 2418
    .line 2419
    .line 2420
    .line 2421
    :array_1
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "39100"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x31

    if-lt p0, v1, :cond_2

    const/16 v1, 0x38

    if-gt p0, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public static d(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "gSkill"

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    instance-of v2, v1, Ljava/util/List;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    check-cast v1, Ljava/util/List;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_c

    .line 37
    .line 38
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Ljava/util/Map;

    .line 43
    .line 44
    const-string v5, "pk_id"

    .line 45
    .line 46
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-static {v6}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    const-string v7, "skill_id"

    .line 55
    .line 56
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-static {v8}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    const-string v9, "position"

    .line 65
    .line 66
    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    invoke-static {v10}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v11

    .line 78
    const-string v12, "skill_position"

    .line 79
    .line 80
    if-eqz v11, :cond_1

    .line 81
    .line 82
    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v10

    .line 86
    invoke-static {v10}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v11

    .line 94
    :cond_2
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v13

    .line 98
    const-string v14, "id"

    .line 99
    .line 100
    if-eqz v13, :cond_7

    .line 101
    .line 102
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v13

    .line 106
    instance-of v15, v13, Ljava/util/Map;

    .line 107
    .line 108
    if-nez v15, :cond_3

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_3
    check-cast v13, Ljava/util/Map;

    .line 112
    .line 113
    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v15

    .line 117
    invoke-static {v15}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v15

    .line 121
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result v16

    .line 125
    if-nez v16, :cond_4

    .line 126
    .line 127
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v15

    .line 131
    if-eqz v15, :cond_4

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_4
    invoke-interface {v13, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v15

    .line 138
    invoke-static {v15}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v15

    .line 142
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 143
    .line 144
    .line 145
    move-result v16

    .line 146
    if-eqz v16, :cond_5

    .line 147
    .line 148
    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v15

    .line 152
    invoke-static {v15}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v15

    .line 156
    :cond_5
    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v16

    .line 160
    invoke-static/range {v16 .. v16}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v16

    .line 164
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result v17

    .line 168
    if-eqz v17, :cond_6

    .line 169
    .line 170
    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v13

    .line 174
    invoke-static {v13}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v16

    .line 178
    :cond_6
    move-object/from16 v13, v16

    .line 179
    .line 180
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v15

    .line 184
    if-eqz v15, :cond_2

    .line 185
    .line 186
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v13

    .line 190
    if-eqz v13, :cond_2

    .line 191
    .line 192
    :goto_3
    const/4 v6, 0x1

    .line 193
    goto :goto_4

    .line 194
    :cond_7
    const/4 v6, 0x0

    .line 195
    :goto_4
    if-eqz v6, :cond_8

    .line 196
    .line 197
    goto/16 :goto_1

    .line 198
    .line 199
    :cond_8
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    invoke-static {v6}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 208
    .line 209
    .line 210
    move-result v7

    .line 211
    if-eqz v7, :cond_9

    .line 212
    .line 213
    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    invoke-static {v6}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    :cond_9
    if-nez v0, :cond_a

    .line 222
    .line 223
    move-object v7, v6

    .line 224
    goto :goto_5

    .line 225
    :cond_a
    invoke-virtual {v0, v6}, Lcom/sgscq/vpn/w1;->m1(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v7

    .line 229
    :goto_5
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    invoke-static {v5}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    invoke-static {v8}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v8

    .line 245
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 246
    .line 247
    .line 248
    move-result v9

    .line 249
    if-eqz v9, :cond_b

    .line 250
    .line 251
    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    invoke-static {v4}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    :cond_b
    const-string v4, "{skillPkId="

    .line 260
    .line 261
    const-string v9, ",skillId="

    .line 262
    .line 263
    const-string v10, ",skillName="

    .line 264
    .line 265
    invoke-static {v4, v5, v9, v6, v10}, Lc/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v5, ",position="

    .line 273
    .line 274
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string v5, "}"

    .line 281
    .line 282
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    goto/16 :goto_1

    .line 293
    .line 294
    :cond_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-nez v0, :cond_d

    .line 299
    .line 300
    const-string v0, "[BattleSkillAudit] General.gSkill missing bound skills generalPkId="

    .line 301
    .line 302
    const-string v1, " generalId="

    .line 303
    .line 304
    const-string v3, " missing="

    .line 305
    .line 306
    move-object/from16 v4, p1

    .line 307
    .line 308
    move-object/from16 v5, p2

    .line 309
    .line 310
    invoke-static {v0, v4, v1, v5, v3}, Lc/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    const-string v1, "SGSCQ_SRV"

    .line 322
    .line 323
    invoke-static {v1, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    :cond_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    return v0
.end method

.method public static e(Ljava/lang/Object;)D
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method

.method public static f(Ljava/util/Map;Ljava/lang/String;D)D
    .locals 2

    .line 1
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcom/sgscq/vpn/handler/f;->e(Ljava/lang/Object;)D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_1

    move-wide p2, p0

    :cond_1
    return-wide p2
.end method

.method public static varargs g(Ljava/util/Map;[DIZD[Ljava/lang/String;)D
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    array-length v2, p6

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p6, v3

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/sgscq/vpn/handler/f;->e(Ljava/lang/Object;)D

    move-result-wide v4

    cmpl-double v6, v4, v0

    if-lez v6, :cond_0

    return-wide v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    array-length p0, p1

    if-le p0, p2, :cond_4

    aget-wide v2, p1, p2

    cmpl-double p0, v2, v0

    if-lez p0, :cond_4

    if-eqz p3, :cond_3

    add-int/lit8 p2, p2, 0x5

    array-length p0, p1

    if-le p0, p2, :cond_2

    aget-wide v0, p1, p2

    :cond_2
    const-wide p0, 0x4058c00000000000L    # 99.0

    mul-double/2addr v0, p0

    add-double/2addr v0, v2

    double-to-int p0, v0

    const/4 p1, 0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-double p0, p0

    return-wide p0

    :cond_3
    return-wide v2

    :cond_4
    return-wide p4
.end method

.method public static h(IILjava/lang/String;)Lcom/sgscq/vpn/handler/e;
    .locals 1

    .line 1
    new-instance v0, Lcom/sgscq/vpn/handler/e;

    invoke-direct {v0, p2, p0, p1}, Lcom/sgscq/vpn/handler/e;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method
