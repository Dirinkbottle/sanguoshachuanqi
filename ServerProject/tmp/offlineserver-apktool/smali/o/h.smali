.class public final Lo/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sgscq/battle/api/BattleRuntime;


# static fields
.field public static volatile c:Lo/h;

.field public static final d:Lo/h;


# instance fields
.field public final a:Lcom/sgscq/battle/api/BattleRuntime;

.field public final b:La/w;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/sgscq/battle/api/BattleRuntimeStatus;->AUTH_REQUIRED:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    .line 2
    .line 3
    new-instance v1, Lo/h;

    .line 4
    .line 5
    new-instance v2, Lo/g;

    .line 6
    .line 7
    invoke-direct {v2, v0}, Lo/g;-><init>(Lcom/sgscq/battle/api/BattleRuntimeStatus;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Lo/h;-><init>(Lcom/sgscq/battle/api/BattleRuntime;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lo/h;->d:Lo/h;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/sgscq/battle/api/BattleRuntime;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, La/w;

    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    invoke-direct {v0, v1}, La/w;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lo/h;->b:La/w;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    sget-object p1, Lcom/sgscq/battle/api/BattleRuntimeStatus;->MODULE_LOAD_FAILED:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    .line 16
    .line 17
    new-instance v0, Lo/g;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lo/g;-><init>(Lcom/sgscq/battle/api/BattleRuntimeStatus;)V

    .line 20
    .line 21
    .line 22
    move-object p1, v0

    .line 23
    :cond_0
    iput-object p1, p0, Lo/h;->a:Lcom/sgscq/battle/api/BattleRuntime;

    .line 24
    .line 25
    return-void
.end method

.method public static a()Lo/h;
    .locals 1

    .line 1
    sget-object v0, Lo/h;->c:Lo/h;

    if-nez v0, :cond_0

    sget-object v0, Lo/h;->d:Lo/h;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final b(Lcom/sgscq/vpn/battle/BattleScenario;)Lcom/sgscq/vpn/battle/BattleResult;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "auto"

    .line 4
    .line 5
    const/16 v2, 0xf

    .line 6
    .line 7
    move-object/from16 v3, p1

    .line 8
    .line 9
    invoke-static {v1, v3, v2}, Lcom/sgscq/battle/api/BattleRequest;->forMigration(Ljava/lang/String;Ljava/lang/Object;I)Lcom/sgscq/battle/api/BattleRequest;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v4, v0, Lo/h;->a:Lcom/sgscq/battle/api/BattleRuntime;

    .line 14
    .line 15
    invoke-interface {v4, v1}, Lcom/sgscq/battle/api/BattleRuntime;->simulate(Lcom/sgscq/battle/api/BattleRequest;)Lcom/sgscq/battle/api/BattleResponse;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/sgscq/battle/api/BattleResponse;->getStatus()Lcom/sgscq/battle/api/BattleRuntimeStatus;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    sget-object v5, Lcom/sgscq/battle/api/BattleRuntimeStatus;->READY:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    .line 24
    .line 25
    if-ne v4, v5, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/sgscq/battle/api/BattleResponse;->isSettled()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-nez v4, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v1}, Lcom/sgscq/battle/api/BattleResponse;->getFightInfo()Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1}, Lcom/sgscq/battle/api/BattleResponse;->getRounds()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v1}, Lcom/sgscq/battle/api/BattleResponse;->isSuccess()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-virtual {v1}, Lcom/sgscq/battle/api/BattleResponse;->getRoundCount()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-static {v2, v3, v4, v1}, Lcom/sgscq/vpn/battle/BattleResult;->fromRuntime(Ljava/util/Map;Ljava/util/List;ZI)Lcom/sgscq/vpn/battle/BattleResult;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    return-object v1

    .line 55
    :cond_1
    :goto_0
    iget-object v1, v0, Lo/h;->b:La/w;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v21

    .line 65
    const/4 v15, 0x0

    .line 66
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v23

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/sgscq/vpn/battle/BattleScenario;->getAllies()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v14

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/sgscq/vpn/battle/BattleScenario;->getEnemies()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v13

    .line 78
    new-instance v10, Lcom/sgscq/vpn/battle/b;

    .line 79
    .line 80
    invoke-direct {v10, v14, v15}, Lcom/sgscq/vpn/battle/b;-><init>(Ljava/util/List;I)V

    .line 81
    .line 82
    .line 83
    new-instance v11, Lcom/sgscq/vpn/battle/b;

    .line 84
    .line 85
    invoke-direct {v11, v13, v1}, Lcom/sgscq/vpn/battle/b;-><init>(Ljava/util/List;I)V

    .line 86
    .line 87
    .line 88
    new-instance v12, Lcom/sgscq/vpn/battle/a;

    .line 89
    .line 90
    iget v9, v10, Lcom/sgscq/vpn/battle/b;->d:I

    .line 91
    .line 92
    iget v8, v11, Lcom/sgscq/vpn/battle/b;->d:I

    .line 93
    .line 94
    invoke-direct {v12, v14, v13, v9, v8}, Lcom/sgscq/vpn/battle/a;-><init>(Ljava/util/List;Ljava/util/List;II)V

    .line 95
    .line 96
    .line 97
    new-instance v7, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/sgscq/vpn/battle/BattleScenario;->getAllyGovern()D

    .line 103
    .line 104
    .line 105
    move-result-wide v4

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/sgscq/vpn/battle/BattleScenario;->getEnemyGovern()D

    .line 107
    .line 108
    .line 109
    move-result-wide v16

    .line 110
    cmpl-double v4, v4, v16

    .line 111
    .line 112
    if-ltz v4, :cond_2

    .line 113
    .line 114
    move/from16 v16, v15

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_2
    move/from16 v16, v1

    .line 118
    .line 119
    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    move v6, v15

    .line 128
    :goto_2
    if-ge v6, v2, :cond_7

    .line 129
    .line 130
    invoke-virtual {v10}, Lcom/sgscq/vpn/battle/b;->a()Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-eqz v4, :cond_7

    .line 135
    .line 136
    invoke-virtual {v11}, Lcom/sgscq/vpn/battle/b;->a()Z

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-eqz v4, :cond_7

    .line 141
    .line 142
    add-int/lit8 v17, v6, 0x1

    .line 143
    .line 144
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    const-string v5, "roundCur"

    .line 149
    .line 150
    filled-new-array {v5, v4}, [Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-static {v4}, La/w;->p([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    const-string v5, "pre"

    .line 159
    .line 160
    filled-new-array {v5, v4}, [Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-static {v4}, La/w;->p([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    const-string v5, "params"

    .line 169
    .line 170
    const-string v6, "skill"

    .line 171
    .line 172
    const-string v1, "Round"

    .line 173
    .line 174
    filled-new-array {v6, v1, v5, v4}, [Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-static {v1}, La/w;->p([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move v1, v15

    .line 186
    :goto_3
    const/4 v4, 0x3

    .line 187
    if-ge v1, v4, :cond_6

    .line 188
    .line 189
    invoke-virtual {v10}, Lcom/sgscq/vpn/battle/b;->a()Z

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    if-eqz v4, :cond_6

    .line 194
    .line 195
    invoke-virtual {v11}, Lcom/sgscq/vpn/battle/b;->a()Z

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    if-eqz v4, :cond_6

    .line 200
    .line 201
    const/4 v4, 0x0

    .line 202
    if-ltz v1, :cond_3

    .line 203
    .line 204
    iget-object v5, v10, Lcom/sgscq/vpn/battle/b;->b:[Lcom/sgscq/vpn/battle/BattleUnit;

    .line 205
    .line 206
    array-length v6, v5

    .line 207
    if-ge v1, v6, :cond_3

    .line 208
    .line 209
    aget-object v5, v5, v1

    .line 210
    .line 211
    move-object/from16 v19, v5

    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_3
    move-object/from16 v19, v4

    .line 215
    .line 216
    :goto_4
    if-ltz v1, :cond_4

    .line 217
    .line 218
    iget-object v5, v11, Lcom/sgscq/vpn/battle/b;->b:[Lcom/sgscq/vpn/battle/BattleUnit;

    .line 219
    .line 220
    array-length v6, v5

    .line 221
    if-ge v1, v6, :cond_4

    .line 222
    .line 223
    aget-object v4, v5, v1

    .line 224
    .line 225
    :cond_4
    move-object/from16 v20, v4

    .line 226
    .line 227
    if-nez v16, :cond_5

    .line 228
    .line 229
    move-object v4, v10

    .line 230
    move-object/from16 v5, v19

    .line 231
    .line 232
    move-object v6, v11

    .line 233
    move-object/from16 v24, v7

    .line 234
    .line 235
    move v7, v1

    .line 236
    move/from16 v22, v8

    .line 237
    .line 238
    move-object v8, v12

    .line 239
    move/from16 v25, v9

    .line 240
    .line 241
    move-object/from16 v9, v24

    .line 242
    .line 243
    invoke-static/range {v4 .. v9}, La/w;->m(Lcom/sgscq/vpn/battle/b;Lcom/sgscq/vpn/battle/BattleUnit;Lcom/sgscq/vpn/battle/b;ILcom/sgscq/vpn/battle/a;Ljava/util/ArrayList;)V

    .line 244
    .line 245
    .line 246
    move-object v6, v10

    .line 247
    move-object v4, v11

    .line 248
    move-object/from16 v5, v20

    .line 249
    .line 250
    goto :goto_5

    .line 251
    :cond_5
    move-object/from16 v24, v7

    .line 252
    .line 253
    move/from16 v22, v8

    .line 254
    .line 255
    move/from16 v25, v9

    .line 256
    .line 257
    move-object v4, v11

    .line 258
    move-object/from16 v5, v20

    .line 259
    .line 260
    move-object v6, v10

    .line 261
    move v7, v1

    .line 262
    move-object v8, v12

    .line 263
    move-object/from16 v9, v24

    .line 264
    .line 265
    invoke-static/range {v4 .. v9}, La/w;->m(Lcom/sgscq/vpn/battle/b;Lcom/sgscq/vpn/battle/BattleUnit;Lcom/sgscq/vpn/battle/b;ILcom/sgscq/vpn/battle/a;Ljava/util/ArrayList;)V

    .line 266
    .line 267
    .line 268
    move-object v4, v10

    .line 269
    move-object v6, v11

    .line 270
    move-object/from16 v5, v19

    .line 271
    .line 272
    :goto_5
    move v7, v1

    .line 273
    move-object v8, v12

    .line 274
    move-object/from16 v9, v24

    .line 275
    .line 276
    invoke-static/range {v4 .. v9}, La/w;->m(Lcom/sgscq/vpn/battle/b;Lcom/sgscq/vpn/battle/BattleUnit;Lcom/sgscq/vpn/battle/b;ILcom/sgscq/vpn/battle/a;Ljava/util/ArrayList;)V

    .line 277
    .line 278
    .line 279
    add-int/lit8 v1, v1, 0x1

    .line 280
    .line 281
    move/from16 v8, v22

    .line 282
    .line 283
    move-object/from16 v7, v24

    .line 284
    .line 285
    move/from16 v9, v25

    .line 286
    .line 287
    goto :goto_3

    .line 288
    :cond_6
    move-object/from16 v24, v7

    .line 289
    .line 290
    move/from16 v22, v8

    .line 291
    .line 292
    move/from16 v25, v9

    .line 293
    .line 294
    move/from16 v6, v17

    .line 295
    .line 296
    move/from16 v8, v22

    .line 297
    .line 298
    move-object/from16 v7, v24

    .line 299
    .line 300
    move/from16 v9, v25

    .line 301
    .line 302
    const/4 v1, 0x1

    .line 303
    goto/16 :goto_2

    .line 304
    .line 305
    :cond_7
    move-object/from16 v24, v7

    .line 306
    .line 307
    move/from16 v22, v8

    .line 308
    .line 309
    move/from16 v25, v9

    .line 310
    .line 311
    invoke-virtual {v10}, Lcom/sgscq/vpn/battle/b;->a()Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    if-eqz v1, :cond_8

    .line 316
    .line 317
    invoke-virtual {v11}, Lcom/sgscq/vpn/battle/b;->a()Z

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    if-nez v1, :cond_8

    .line 322
    .line 323
    const/4 v1, 0x1

    .line 324
    goto :goto_6

    .line 325
    :cond_8
    move v1, v15

    .line 326
    :goto_6
    const-string v4, "first"

    .line 327
    .line 328
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 329
    .line 330
    .line 331
    move-result-object v5

    .line 332
    const-string v7, "roundMax"

    .line 333
    .line 334
    move v11, v6

    .line 335
    move-object v6, v7

    .line 336
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 337
    .line 338
    .line 339
    move-result-object v7

    .line 340
    const-string v8, "cards_size0"

    .line 341
    .line 342
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 343
    .line 344
    .line 345
    move-result-object v9

    .line 346
    const-string v10, "cards_size1"

    .line 347
    .line 348
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    move/from16 v26, v11

    .line 353
    .line 354
    move-object v11, v2

    .line 355
    const-string v2, "backups_size0"

    .line 356
    .line 357
    move-object/from16 v27, v12

    .line 358
    .line 359
    move-object v12, v2

    .line 360
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 361
    .line 362
    .line 363
    move-result v2

    .line 364
    sub-int v2, v2, v25

    .line 365
    .line 366
    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    .line 367
    .line 368
    .line 369
    move-result v2

    .line 370
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    move-object/from16 v17, v13

    .line 375
    .line 376
    move-object v13, v2

    .line 377
    const-string v2, "backups_size1"

    .line 378
    .line 379
    move-object/from16 v28, v14

    .line 380
    .line 381
    move-object v14, v2

    .line 382
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    .line 383
    .line 384
    .line 385
    move-result v2

    .line 386
    sub-int v2, v2, v22

    .line 387
    .line 388
    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    .line 389
    .line 390
    .line 391
    move-result v2

    .line 392
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    move/from16 v19, v15

    .line 397
    .line 398
    move-object v15, v2

    .line 399
    const-string v16, "info"

    .line 400
    .line 401
    const/4 v2, 0x2

    .line 402
    new-array v2, v2, [Ljava/util/Map;

    .line 403
    .line 404
    move/from16 v25, v1

    .line 405
    .line 406
    invoke-virtual/range {p1 .. p1}, Lcom/sgscq/vpn/battle/BattleScenario;->getAllyGovern()D

    .line 407
    .line 408
    .line 409
    move-result-wide v0

    .line 410
    move-object/from16 v3, v28

    .line 411
    .line 412
    invoke-static {v0, v1, v3}, La/w;->s(DLjava/util/List;)Ljava/util/LinkedHashMap;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    aput-object v0, v2, v19

    .line 417
    .line 418
    invoke-virtual/range {p1 .. p1}, Lcom/sgscq/vpn/battle/BattleScenario;->getEnemyGovern()D

    .line 419
    .line 420
    .line 421
    move-result-wide v0

    .line 422
    move-object/from16 v3, v17

    .line 423
    .line 424
    invoke-static {v0, v1, v3}, La/w;->s(DLjava/util/List;)Ljava/util/LinkedHashMap;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    const/4 v1, 0x1

    .line 429
    aput-object v0, v2, v1

    .line 430
    .line 431
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 432
    .line 433
    .line 434
    move-result-object v17

    .line 435
    const-string v18, "cards"

    .line 436
    .line 437
    move-object/from16 v0, v27

    .line 438
    .line 439
    iget-object v0, v0, Lcom/sgscq/vpn/battle/a;->b:Ljava/util/List;

    .line 440
    .line 441
    move-object/from16 v19, v0

    .line 442
    .line 443
    const-string v20, "roundCur"

    .line 444
    .line 445
    const-string v22, "skipRounds"

    .line 446
    .line 447
    filled-new-array/range {v4 .. v23}, [Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    invoke-static {v0}, La/w;->p([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    const-string v1, "init"

    .line 456
    .line 457
    const-string v2, "rounds"

    .line 458
    .line 459
    move-object/from16 v3, v24

    .line 460
    .line 461
    filled-new-array {v1, v0, v2, v3}, [Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    invoke-static {v0}, La/w;->p([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    new-instance v1, Lcom/sgscq/vpn/battle/BattleResult;

    .line 470
    .line 471
    move/from16 v2, v25

    .line 472
    .line 473
    move/from16 v15, v26

    .line 474
    .line 475
    invoke-direct {v1, v0, v3, v2, v15}, Lcom/sgscq/vpn/battle/BattleResult;-><init>(Ljava/util/Map;Ljava/util/List;ZI)V

    .line 476
    .line 477
    .line 478
    return-object v1
.end method

.method public final initialize([B)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lo/h;->a:Lcom/sgscq/battle/api/BattleRuntime;

    invoke-interface {v0, p1}, Lcom/sgscq/battle/api/BattleRuntime;->initialize([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final integrityAttest(Lcom/sgscq/battle/api/IntegrityAttestRequest;)Lcom/sgscq/battle/api/IntegrityAttestResponse;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lo/h;->a:Lcom/sgscq/battle/api/BattleRuntime;

    invoke-interface {v0, p1}, Lcom/sgscq/battle/api/BattleRuntime;->integrityAttest(Lcom/sgscq/battle/api/IntegrityAttestRequest;)Lcom/sgscq/battle/api/IntegrityAttestResponse;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final simulate(Lcom/sgscq/battle/api/BattleRequest;)Lcom/sgscq/battle/api/BattleResponse;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    sget-object p1, Lcom/sgscq/battle/api/BattleRuntimeStatus;->MODULE_LOAD_FAILED:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    invoke-static {p1}, Lcom/sgscq/battle/api/BattleResponse;->unavailable(Lcom/sgscq/battle/api/BattleRuntimeStatus;)Lcom/sgscq/battle/api/BattleResponse;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lo/h;->a:Lcom/sgscq/battle/api/BattleRuntime;

    invoke-interface {v0, p1}, Lcom/sgscq/battle/api/BattleRuntime;->simulate(Lcom/sgscq/battle/api/BattleRequest;)Lcom/sgscq/battle/api/BattleResponse;

    move-result-object p1

    return-object p1
.end method

.method public final status()Lcom/sgscq/battle/api/BattleRuntimeStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/h;->a:Lcom/sgscq/battle/api/BattleRuntime;

    invoke-interface {v0}, Lcom/sgscq/battle/api/BattleRuntime;->status()Lcom/sgscq/battle/api/BattleRuntimeStatus;

    move-result-object v0

    return-object v0
.end method
