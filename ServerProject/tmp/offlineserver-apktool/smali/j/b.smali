.class public final enum Lj/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/HashMap;

.field public static final d:Ljava/util/HashMap;

.field public static final synthetic e:[Lj/b;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 32

    .line 1
    new-instance v1, Lj/b;

    .line 2
    .line 3
    move-object v0, v1

    .line 4
    const/4 v15, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    filled-new-array {v15, v3}, [I

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    new-array v4, v15, [Ljava/lang/String;

    .line 11
    .line 12
    const-string v5, "Cp437"

    .line 13
    .line 14
    invoke-direct {v1, v5, v15, v2, v4}, Lj/b;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lj/b;

    .line 18
    .line 19
    move-object v1, v2

    .line 20
    const/4 v4, 0x1

    .line 21
    const/4 v5, 0x3

    .line 22
    filled-new-array {v4, v5}, [I

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    const-string v7, "ISO-8859-1"

    .line 27
    .line 28
    filled-new-array {v7}, [Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    const-string v8, "ISO8859_1"

    .line 33
    .line 34
    invoke-direct {v2, v8, v4, v6, v7}, Lj/b;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Lj/b;

    .line 38
    .line 39
    move-object v2, v4

    .line 40
    const-string v6, "ISO-8859-2"

    .line 41
    .line 42
    filled-new-array {v6}, [Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    const-string v7, "ISO8859_2"

    .line 47
    .line 48
    const/4 v8, 0x4

    .line 49
    invoke-direct {v4, v7, v3, v8, v6}, Lj/b;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v4, Lj/b;

    .line 53
    .line 54
    move-object v3, v4

    .line 55
    const-string v6, "ISO-8859-3"

    .line 56
    .line 57
    filled-new-array {v6}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    const-string v7, "ISO8859_3"

    .line 62
    .line 63
    const/4 v9, 0x5

    .line 64
    invoke-direct {v4, v7, v5, v9, v6}, Lj/b;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v5, Lj/b;

    .line 68
    .line 69
    move-object v4, v5

    .line 70
    const-string v6, "ISO-8859-4"

    .line 71
    .line 72
    filled-new-array {v6}, [Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    const-string v7, "ISO8859_4"

    .line 77
    .line 78
    const/4 v10, 0x6

    .line 79
    invoke-direct {v5, v7, v8, v10, v6}, Lj/b;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v6, Lj/b;

    .line 83
    .line 84
    move-object v5, v6

    .line 85
    const-string v7, "ISO-8859-5"

    .line 86
    .line 87
    filled-new-array {v7}, [Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    const-string v8, "ISO8859_5"

    .line 92
    .line 93
    const/4 v11, 0x7

    .line 94
    invoke-direct {v6, v8, v9, v11, v7}, Lj/b;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    new-instance v7, Lj/b;

    .line 98
    .line 99
    move-object v6, v7

    .line 100
    const-string v8, "ISO-8859-6"

    .line 101
    .line 102
    filled-new-array {v8}, [Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    const-string v9, "ISO8859_6"

    .line 107
    .line 108
    const/16 v12, 0x8

    .line 109
    .line 110
    invoke-direct {v7, v9, v10, v12, v8}, Lj/b;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    new-instance v8, Lj/b;

    .line 114
    .line 115
    move-object v7, v8

    .line 116
    const-string v9, "ISO-8859-7"

    .line 117
    .line 118
    filled-new-array {v9}, [Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    const-string v10, "ISO8859_7"

    .line 123
    .line 124
    const/16 v13, 0x9

    .line 125
    .line 126
    invoke-direct {v8, v10, v11, v13, v9}, Lj/b;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    new-instance v9, Lj/b;

    .line 130
    .line 131
    move-object v8, v9

    .line 132
    const-string v10, "ISO-8859-8"

    .line 133
    .line 134
    filled-new-array {v10}, [Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    const-string v11, "ISO8859_8"

    .line 139
    .line 140
    const/16 v14, 0xa

    .line 141
    .line 142
    invoke-direct {v9, v11, v12, v14, v10}, Lj/b;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    new-instance v10, Lj/b;

    .line 146
    .line 147
    move-object v9, v10

    .line 148
    const-string v11, "ISO-8859-9"

    .line 149
    .line 150
    filled-new-array {v11}, [Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v11

    .line 154
    const-string v12, "ISO8859_9"

    .line 155
    .line 156
    const/16 v15, 0xb

    .line 157
    .line 158
    invoke-direct {v10, v12, v13, v15, v11}, Lj/b;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    new-instance v11, Lj/b;

    .line 162
    .line 163
    move-object v10, v11

    .line 164
    const-string v12, "ISO-8859-10"

    .line 165
    .line 166
    filled-new-array {v12}, [Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    const-string v13, "ISO8859_10"

    .line 171
    .line 172
    const/16 v15, 0xc

    .line 173
    .line 174
    invoke-direct {v11, v13, v14, v15, v12}, Lj/b;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    new-instance v12, Lj/b;

    .line 178
    .line 179
    move-object v11, v12

    .line 180
    const-string v13, "ISO-8859-11"

    .line 181
    .line 182
    filled-new-array {v13}, [Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v13

    .line 186
    const-string v14, "ISO8859_11"

    .line 187
    .line 188
    const/16 v15, 0xd

    .line 189
    .line 190
    move-object/from16 v27, v0

    .line 191
    .line 192
    const/16 v0, 0xb

    .line 193
    .line 194
    invoke-direct {v12, v14, v0, v15, v13}, Lj/b;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    new-instance v0, Lj/b;

    .line 198
    .line 199
    move-object v12, v0

    .line 200
    const-string v13, "ISO-8859-13"

    .line 201
    .line 202
    filled-new-array {v13}, [Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v13

    .line 206
    const-string v14, "ISO8859_13"

    .line 207
    .line 208
    const/16 v15, 0xf

    .line 209
    .line 210
    move-object/from16 v28, v1

    .line 211
    .line 212
    const/16 v1, 0xc

    .line 213
    .line 214
    invoke-direct {v0, v14, v1, v15, v13}, Lj/b;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    new-instance v0, Lj/b;

    .line 218
    .line 219
    move-object v13, v0

    .line 220
    const-string v1, "ISO-8859-14"

    .line 221
    .line 222
    filled-new-array {v1}, [Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    const-string v14, "ISO8859_14"

    .line 227
    .line 228
    move-object/from16 v29, v2

    .line 229
    .line 230
    const/16 v2, 0x10

    .line 231
    .line 232
    const/16 v15, 0xd

    .line 233
    .line 234
    invoke-direct {v0, v14, v15, v2, v1}, Lj/b;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    new-instance v0, Lj/b;

    .line 238
    .line 239
    move-object v14, v0

    .line 240
    const-string v1, "ISO-8859-15"

    .line 241
    .line 242
    filled-new-array {v1}, [Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    const-string v15, "ISO8859_15"

    .line 247
    .line 248
    const/16 v2, 0xe

    .line 249
    .line 250
    move-object/from16 v30, v3

    .line 251
    .line 252
    const/16 v3, 0x11

    .line 253
    .line 254
    invoke-direct {v0, v15, v2, v3, v1}, Lj/b;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    new-instance v0, Lj/b;

    .line 258
    .line 259
    const/4 v1, 0x0

    .line 260
    const/16 v2, 0xf

    .line 261
    .line 262
    move-object v15, v0

    .line 263
    const-string v16, "ISO-8859-16"

    .line 264
    .line 265
    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    const-string v3, "ISO8859_16"

    .line 270
    .line 271
    move-object/from16 v31, v4

    .line 272
    .line 273
    const/16 v4, 0x12

    .line 274
    .line 275
    invoke-direct {v0, v3, v2, v4, v1}, Lj/b;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    new-instance v0, Lj/b;

    .line 279
    .line 280
    move-object/from16 v16, v0

    .line 281
    .line 282
    const-string v1, "Shift_JIS"

    .line 283
    .line 284
    filled-new-array {v1}, [Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    const-string v2, "SJIS"

    .line 289
    .line 290
    const/16 v3, 0x14

    .line 291
    .line 292
    const/16 v4, 0x10

    .line 293
    .line 294
    invoke-direct {v0, v2, v4, v3, v1}, Lj/b;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    new-instance v0, Lj/b;

    .line 298
    .line 299
    move-object/from16 v17, v0

    .line 300
    .line 301
    const-string v1, "windows-1250"

    .line 302
    .line 303
    filled-new-array {v1}, [Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    const-string v2, "Cp1250"

    .line 308
    .line 309
    const/16 v4, 0x15

    .line 310
    .line 311
    const/16 v3, 0x11

    .line 312
    .line 313
    invoke-direct {v0, v2, v3, v4, v1}, Lj/b;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    new-instance v0, Lj/b;

    .line 317
    .line 318
    move-object/from16 v18, v0

    .line 319
    .line 320
    const-string v1, "windows-1251"

    .line 321
    .line 322
    filled-new-array {v1}, [Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    const-string v2, "Cp1251"

    .line 327
    .line 328
    const/16 v3, 0x16

    .line 329
    .line 330
    const/16 v4, 0x12

    .line 331
    .line 332
    invoke-direct {v0, v2, v4, v3, v1}, Lj/b;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    new-instance v0, Lj/b;

    .line 336
    .line 337
    move-object/from16 v19, v0

    .line 338
    .line 339
    const-string v1, "windows-1252"

    .line 340
    .line 341
    filled-new-array {v1}, [Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    const-string v2, "Cp1252"

    .line 346
    .line 347
    const/16 v4, 0x13

    .line 348
    .line 349
    const/16 v3, 0x17

    .line 350
    .line 351
    invoke-direct {v0, v2, v4, v3, v1}, Lj/b;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    new-instance v0, Lj/b;

    .line 355
    .line 356
    move-object/from16 v20, v0

    .line 357
    .line 358
    const-string v1, "windows-1256"

    .line 359
    .line 360
    filled-new-array {v1}, [Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    const-string v2, "Cp1256"

    .line 365
    .line 366
    const/16 v4, 0x18

    .line 367
    .line 368
    const/16 v3, 0x14

    .line 369
    .line 370
    invoke-direct {v0, v2, v3, v4, v1}, Lj/b;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    new-instance v0, Lj/b;

    .line 374
    .line 375
    move-object/from16 v21, v0

    .line 376
    .line 377
    const-string v1, "UTF-16BE"

    .line 378
    .line 379
    const-string v2, "UnicodeBig"

    .line 380
    .line 381
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    const-string v2, "UnicodeBigUnmarked"

    .line 386
    .line 387
    const/16 v3, 0x19

    .line 388
    .line 389
    const/16 v4, 0x15

    .line 390
    .line 391
    invoke-direct {v0, v2, v4, v3, v1}, Lj/b;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    new-instance v0, Lj/b;

    .line 395
    .line 396
    move-object/from16 v22, v0

    .line 397
    .line 398
    const-string v1, "UTF-8"

    .line 399
    .line 400
    filled-new-array {v1}, [Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    const-string v2, "UTF8"

    .line 405
    .line 406
    const/16 v4, 0x1a

    .line 407
    .line 408
    const/16 v3, 0x16

    .line 409
    .line 410
    invoke-direct {v0, v2, v3, v4, v1}, Lj/b;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    new-instance v0, Lj/b;

    .line 414
    .line 415
    move-object/from16 v23, v0

    .line 416
    .line 417
    const/16 v1, 0x1b

    .line 418
    .line 419
    const/16 v2, 0xaa

    .line 420
    .line 421
    filled-new-array {v1, v2}, [I

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    const-string v2, "US-ASCII"

    .line 426
    .line 427
    filled-new-array {v2}, [Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    const-string v3, "ASCII"

    .line 432
    .line 433
    const/16 v4, 0x17

    .line 434
    .line 435
    invoke-direct {v0, v3, v4, v1, v2}, Lj/b;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    new-instance v0, Lj/b;

    .line 439
    .line 440
    move-object/from16 v24, v0

    .line 441
    .line 442
    const/16 v1, 0x1c

    .line 443
    .line 444
    filled-new-array {v1}, [I

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    const/4 v2, 0x0

    .line 449
    new-array v3, v2, [Ljava/lang/String;

    .line 450
    .line 451
    const-string v4, "Big5"

    .line 452
    .line 453
    const/16 v2, 0x18

    .line 454
    .line 455
    invoke-direct {v0, v4, v2, v1, v3}, Lj/b;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    new-instance v0, Lj/b;

    .line 459
    .line 460
    move-object/from16 v25, v0

    .line 461
    .line 462
    const-string v1, "GBK"

    .line 463
    .line 464
    const-string v2, "GB2312"

    .line 465
    .line 466
    const-string v3, "EUC_CN"

    .line 467
    .line 468
    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    const-string v2, "GB18030"

    .line 473
    .line 474
    const/16 v3, 0x1d

    .line 475
    .line 476
    const/16 v4, 0x19

    .line 477
    .line 478
    invoke-direct {v0, v2, v4, v3, v1}, Lj/b;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    new-instance v0, Lj/b;

    .line 482
    .line 483
    move-object/from16 v26, v0

    .line 484
    .line 485
    const-string v1, "EUC-KR"

    .line 486
    .line 487
    filled-new-array {v1}, [Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v1

    .line 491
    const-string v2, "EUC_KR"

    .line 492
    .line 493
    const/16 v3, 0x1e

    .line 494
    .line 495
    const/16 v4, 0x1a

    .line 496
    .line 497
    invoke-direct {v0, v2, v4, v3, v1}, Lj/b;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    move-object/from16 v0, v27

    .line 501
    .line 502
    move-object/from16 v1, v28

    .line 503
    .line 504
    move-object/from16 v2, v29

    .line 505
    .line 506
    move-object/from16 v3, v30

    .line 507
    .line 508
    move-object/from16 v4, v31

    .line 509
    .line 510
    const/16 v27, 0x0

    .line 511
    .line 512
    filled-new-array/range {v0 .. v26}, [Lj/b;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    sput-object v0, Lj/b;->e:[Lj/b;

    .line 517
    .line 518
    new-instance v0, Ljava/util/HashMap;

    .line 519
    .line 520
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 521
    .line 522
    .line 523
    sput-object v0, Lj/b;->c:Ljava/util/HashMap;

    .line 524
    .line 525
    new-instance v0, Ljava/util/HashMap;

    .line 526
    .line 527
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 528
    .line 529
    .line 530
    sput-object v0, Lj/b;->d:Ljava/util/HashMap;

    .line 531
    .line 532
    invoke-static {}, Lj/b;->values()[Lj/b;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    array-length v1, v0

    .line 537
    move/from16 v15, v27

    .line 538
    .line 539
    :goto_0
    if-ge v15, v1, :cond_2

    .line 540
    .line 541
    aget-object v2, v0, v15

    .line 542
    .line 543
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v3

    .line 547
    invoke-static {v3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    .line 548
    .line 549
    .line 550
    move-result v3

    .line 551
    if-eqz v3, :cond_1

    .line 552
    .line 553
    iget-object v3, v2, Lj/b;->a:[I

    .line 554
    .line 555
    array-length v4, v3

    .line 556
    move/from16 v5, v27

    .line 557
    .line 558
    :goto_1
    if-ge v5, v4, :cond_0

    .line 559
    .line 560
    aget v6, v3, v5

    .line 561
    .line 562
    sget-object v7, Lj/b;->c:Ljava/util/HashMap;

    .line 563
    .line 564
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 565
    .line 566
    .line 567
    move-result-object v6

    .line 568
    invoke-virtual {v7, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    add-int/lit8 v5, v5, 0x1

    .line 572
    .line 573
    goto :goto_1

    .line 574
    :cond_0
    sget-object v3, Lj/b;->d:Ljava/util/HashMap;

    .line 575
    .line 576
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v4

    .line 580
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    iget-object v3, v2, Lj/b;->b:[Ljava/lang/String;

    .line 584
    .line 585
    array-length v4, v3

    .line 586
    move/from16 v5, v27

    .line 587
    .line 588
    :goto_2
    if-ge v5, v4, :cond_1

    .line 589
    .line 590
    aget-object v6, v3, v5

    .line 591
    .line 592
    sget-object v7, Lj/b;->d:Ljava/util/HashMap;

    .line 593
    .line 594
    invoke-virtual {v7, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    add-int/lit8 v5, v5, 0x1

    .line 598
    .line 599
    goto :goto_2

    .line 600
    :cond_1
    add-int/lit8 v15, v15, 0x1

    .line 601
    .line 602
    goto :goto_0

    .line 603
    :cond_2
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {p3}, [I

    move-result-object p1

    iput-object p1, p0, Lj/b;->a:[I

    iput-object p4, p0, Lj/b;->b:[Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;I[I[Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lj/b;->a:[I

    iput-object p4, p0, Lj/b;->b:[Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj/b;
    .locals 1

    .line 1
    const-class v0, Lj/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj/b;

    return-object p0
.end method

.method public static values()[Lj/b;
    .locals 1

    .line 1
    sget-object v0, Lj/b;->e:[Lj/b;

    invoke-virtual {v0}, [Lj/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj/b;

    return-object v0
.end method
