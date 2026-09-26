.class public abstract Le/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/TimeZone;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Le/a;->a:Ljava/util/TimeZone;

    return-void
.end method

.method public static a(Ljava/lang/String;IC)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 v3, v0, 0x4

    .line 10
    .line 11
    invoke-static {v0, v3, v1}, Le/a;->c(IILjava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v4, 0x2d

    .line 16
    .line 17
    invoke-static {v1, v3, v4}, Le/a;->a(Ljava/lang/String;IC)Z

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    :cond_0
    add-int/lit8 v5, v3, 0x2

    .line 26
    .line 27
    invoke-static {v3, v5, v1}, Le/a;->c(IILjava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-static {v1, v5, v4}, Le/a;->a(Ljava/lang/String;IC)Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-eqz v6, :cond_1

    .line 36
    .line 37
    add-int/lit8 v5, v5, 0x1

    .line 38
    .line 39
    :cond_1
    add-int/lit8 v6, v5, 0x2

    .line 40
    .line 41
    invoke-static {v5, v6, v1}, Le/a;->c(IILjava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const/16 v7, 0x54

    .line 46
    .line 47
    invoke-static {v1, v6, v7}, Le/a;->a(Ljava/lang/String;IC)Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    const/4 v8, 0x0

    .line 52
    const/4 v9, 0x1

    .line 53
    if-nez v7, :cond_2

    .line 54
    .line 55
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    if-gt v10, v6, :cond_2

    .line 60
    .line 61
    new-instance v4, Ljava/util/GregorianCalendar;

    .line 62
    .line 63
    sub-int/2addr v3, v9

    .line 64
    invoke-direct {v4, v0, v3, v5}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->setLenient(Z)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    return-object v0

    .line 78
    :cond_2
    const/4 v10, 0x2

    .line 79
    const/16 v11, 0x2b

    .line 80
    .line 81
    const/16 v12, 0x5a

    .line 82
    .line 83
    if-eqz v7, :cond_d

    .line 84
    .line 85
    add-int/lit8 v6, v6, 0x1

    .line 86
    .line 87
    add-int/lit8 v7, v6, 0x2

    .line 88
    .line 89
    invoke-static {v6, v7, v1}, Le/a;->c(IILjava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    const/16 v13, 0x3a

    .line 94
    .line 95
    invoke-static {v1, v7, v13}, Le/a;->a(Ljava/lang/String;IC)Z

    .line 96
    .line 97
    .line 98
    move-result v14

    .line 99
    if-eqz v14, :cond_3

    .line 100
    .line 101
    add-int/lit8 v7, v7, 0x1

    .line 102
    .line 103
    :cond_3
    add-int/lit8 v14, v7, 0x2

    .line 104
    .line 105
    invoke-static {v7, v14, v1}, Le/a;->c(IILjava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    invoke-static {v1, v14, v13}, Le/a;->a(Ljava/lang/String;IC)Z

    .line 110
    .line 111
    .line 112
    move-result v13

    .line 113
    if-eqz v13, :cond_4

    .line 114
    .line 115
    add-int/lit8 v14, v14, 0x1

    .line 116
    .line 117
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 118
    .line 119
    .line 120
    move-result v13

    .line 121
    if-le v13, v14, :cond_c

    .line 122
    .line 123
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 124
    .line 125
    .line 126
    move-result v13

    .line 127
    if-eq v13, v12, :cond_c

    .line 128
    .line 129
    if-eq v13, v11, :cond_c

    .line 130
    .line 131
    if-eq v13, v4, :cond_c

    .line 132
    .line 133
    add-int/lit8 v13, v14, 0x2

    .line 134
    .line 135
    invoke-static {v14, v13, v1}, Le/a;->c(IILjava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v14

    .line 139
    const/16 v15, 0x3b

    .line 140
    .line 141
    if-le v14, v15, :cond_5

    .line 142
    .line 143
    const/16 v15, 0x3f

    .line 144
    .line 145
    if-ge v14, v15, :cond_5

    .line 146
    .line 147
    const/16 v14, 0x3b

    .line 148
    .line 149
    :cond_5
    const/16 v15, 0x2e

    .line 150
    .line 151
    invoke-static {v1, v13, v15}, Le/a;->a(Ljava/lang/String;IC)Z

    .line 152
    .line 153
    .line 154
    move-result v15

    .line 155
    if-eqz v15, :cond_b

    .line 156
    .line 157
    add-int/lit8 v13, v13, 0x1

    .line 158
    .line 159
    add-int/lit8 v15, v13, 0x1

    .line 160
    .line 161
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    if-ge v15, v8, :cond_7

    .line 166
    .line 167
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    const/16 v4, 0x30

    .line 172
    .line 173
    if-lt v8, v4, :cond_8

    .line 174
    .line 175
    const/16 v4, 0x39

    .line 176
    .line 177
    if-le v8, v4, :cond_6

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_6
    add-int/lit8 v15, v15, 0x1

    .line 181
    .line 182
    const/16 v4, 0x2d

    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    move v15, v4

    .line 190
    :cond_8
    :goto_1
    add-int/lit8 v4, v13, 0x3

    .line 191
    .line 192
    invoke-static {v15, v4}, Ljava/lang/Math;->min(II)I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    invoke-static {v13, v4, v1}, Le/a;->c(IILjava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v8

    .line 200
    sub-int/2addr v4, v13

    .line 201
    if-eq v4, v9, :cond_a

    .line 202
    .line 203
    if-eq v4, v10, :cond_9

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_9
    mul-int/lit8 v8, v8, 0xa

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_a
    mul-int/lit8 v8, v8, 0x64

    .line 210
    .line 211
    :goto_2
    move v13, v15

    .line 212
    goto :goto_4

    .line 213
    :cond_b
    const/4 v8, 0x0

    .line 214
    goto :goto_4

    .line 215
    :cond_c
    move v4, v6

    .line 216
    move v6, v14

    .line 217
    goto :goto_3

    .line 218
    :cond_d
    const/4 v4, 0x0

    .line 219
    const/4 v7, 0x0

    .line 220
    :goto_3
    move v13, v6

    .line 221
    const/4 v8, 0x0

    .line 222
    const/4 v14, 0x0

    .line 223
    move v6, v4

    .line 224
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    if-le v4, v13, :cond_15

    .line 229
    .line 230
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 231
    .line 232
    .line 233
    move-result v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    const/4 v15, 0x5

    .line 235
    sget-object v16, Le/a;->a:Ljava/util/TimeZone;

    .line 236
    .line 237
    if-ne v4, v12, :cond_f

    .line 238
    .line 239
    add-int/2addr v13, v9

    .line 240
    :cond_e
    :goto_5
    move-object/from16 v4, v16

    .line 241
    .line 242
    goto/16 :goto_8

    .line 243
    .line 244
    :cond_f
    if-eq v4, v11, :cond_11

    .line 245
    .line 246
    const/16 v11, 0x2d

    .line 247
    .line 248
    if-ne v4, v11, :cond_10

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_10
    :try_start_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 252
    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .line 257
    .line 258
    const-string v5, "Invalid time zone indicator \'"

    .line 259
    .line 260
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v4, "\'"

    .line 267
    .line 268
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    invoke-direct {v0, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    throw v0

    .line 279
    :cond_11
    :goto_6
    invoke-virtual {v1, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 284
    .line 285
    .line 286
    move-result v11

    .line 287
    if-lt v11, v15, :cond_12

    .line 288
    .line 289
    goto :goto_7

    .line 290
    :cond_12
    new-instance v11, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string v4, "00"

    .line 299
    .line 300
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    :goto_7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 308
    .line 309
    .line 310
    move-result v11

    .line 311
    add-int/2addr v13, v11

    .line 312
    const-string v11, "+0000"

    .line 313
    .line 314
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v11

    .line 318
    if-nez v11, :cond_e

    .line 319
    .line 320
    const-string v11, "+00:00"

    .line 321
    .line 322
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v11

    .line 326
    if-eqz v11, :cond_13

    .line 327
    .line 328
    goto :goto_5

    .line 329
    :cond_13
    new-instance v11, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .line 333
    .line 334
    const-string v12, "GMT"

    .line 335
    .line 336
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 347
    .line 348
    .line 349
    move-result-object v16

    .line 350
    invoke-virtual/range {v16 .. v16}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v11

    .line 354
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v12

    .line 358
    if-nez v12, :cond_e

    .line 359
    .line 360
    const-string v12, ":"

    .line 361
    .line 362
    const-string v15, ""

    .line 363
    .line 364
    invoke-virtual {v11, v12, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v11

    .line 368
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result v11

    .line 372
    if-eqz v11, :cond_14

    .line 373
    .line 374
    goto/16 :goto_5

    .line 375
    .line 376
    :cond_14
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 377
    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    .line 379
    .line 380
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .line 382
    .line 383
    const-string v5, "Mismatching time zone indicator: "

    .line 384
    .line 385
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    const-string v4, " given, resolves to "

    .line 392
    .line 393
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual/range {v16 .. v16}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    invoke-direct {v0, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    throw v0

    .line 411
    :goto_8
    new-instance v11, Ljava/util/GregorianCalendar;

    .line 412
    .line 413
    invoke-direct {v11, v4}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 414
    .line 415
    .line 416
    const/4 v4, 0x0

    .line 417
    invoke-virtual {v11, v4}, Ljava/util/Calendar;->setLenient(Z)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v11, v9, v0}, Ljava/util/Calendar;->set(II)V

    .line 421
    .line 422
    .line 423
    sub-int/2addr v3, v9

    .line 424
    invoke-virtual {v11, v10, v3}, Ljava/util/Calendar;->set(II)V

    .line 425
    .line 426
    .line 427
    const/4 v0, 0x5

    .line 428
    invoke-virtual {v11, v0, v5}, Ljava/util/Calendar;->set(II)V

    .line 429
    .line 430
    .line 431
    const/16 v0, 0xb

    .line 432
    .line 433
    invoke-virtual {v11, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 434
    .line 435
    .line 436
    const/16 v0, 0xc

    .line 437
    .line 438
    invoke-virtual {v11, v0, v7}, Ljava/util/Calendar;->set(II)V

    .line 439
    .line 440
    .line 441
    const/16 v0, 0xd

    .line 442
    .line 443
    invoke-virtual {v11, v0, v14}, Ljava/util/Calendar;->set(II)V

    .line 444
    .line 445
    .line 446
    const/16 v0, 0xe

    .line 447
    .line 448
    invoke-virtual {v11, v0, v8}, Ljava/util/Calendar;->set(II)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v2, v13}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    return-object v0

    .line 459
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 460
    .line 461
    const-string v3, "No time zone indicator"

    .line 462
    .line 463
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    throw v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 467
    :catch_0
    move-exception v0

    .line 468
    goto :goto_9

    .line 469
    :catch_1
    move-exception v0

    .line 470
    goto :goto_9

    .line 471
    :catch_2
    move-exception v0

    .line 472
    :goto_9
    if-nez v1, :cond_16

    .line 473
    .line 474
    const/4 v1, 0x0

    .line 475
    goto :goto_a

    .line 476
    :cond_16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 477
    .line 478
    const-string v4, "\""

    .line 479
    .line 480
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    const/16 v1, 0x22

    .line 487
    .line 488
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v3

    .line 499
    if-eqz v3, :cond_17

    .line 500
    .line 501
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 502
    .line 503
    .line 504
    move-result v4

    .line 505
    if-eqz v4, :cond_18

    .line 506
    .line 507
    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 508
    .line 509
    const-string v4, "("

    .line 510
    .line 511
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 515
    .line 516
    .line 517
    move-result-object v4

    .line 518
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v4

    .line 522
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    const-string v4, ")"

    .line 526
    .line 527
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    :cond_18
    new-instance v4, Ljava/text/ParseException;

    .line 535
    .line 536
    new-instance v5, Ljava/lang/StringBuilder;

    .line 537
    .line 538
    const-string v6, "Failed to parse date ["

    .line 539
    .line 540
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    const-string v1, "]: "

    .line 547
    .line 548
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v1

    .line 558
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    .line 559
    .line 560
    .line 561
    move-result v2

    .line 562
    invoke-direct {v4, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 566
    .line 567
    .line 568
    throw v4
.end method

.method public static c(IILjava/lang/String;)I
    .locals 5

    .line 1
    if-ltz p0, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p1, v0, :cond_4

    if-gt p0, p1, :cond_4

    const-string v0, "Invalid number: "

    const/16 v1, 0xa

    if-ge p0, p1, :cond_1

    add-int/lit8 v2, p0, 0x1

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-ltz v3, :cond_0

    neg-int v3, v3

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v3, 0x0

    move v2, p0

    :goto_0
    if-ge v2, p1, :cond_3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-ltz v2, :cond_2

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v3, v2

    move v2, v4

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    neg-int p0, v3

    return p0

    :cond_4
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0, p2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
