.class public final Lcom/sgscq/vpn/n5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/sgscq/vpn/w1;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/LinkedHashMap;

.field public final d:Ljava/util/LinkedHashMap;

.field public final e:Ljava/util/LinkedHashMap;

.field public final f:Ljava/util/LinkedHashSet;

.field public final g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/sgscq/vpn/n5;->c:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/sgscq/vpn/n5;->d:Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/sgscq/vpn/n5;->e:Ljava/util/LinkedHashMap;

    .line 24
    .line 25
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/sgscq/vpn/n5;->f:Ljava/util/LinkedHashSet;

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/sgscq/vpn/n5;->g:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/sgscq/vpn/n5;->a:Lcom/sgscq/vpn/w1;

    .line 44
    .line 45
    const-string v0, "fates.json"

    .line 46
    .line 47
    invoke-static {p1, v0}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    :try_start_0
    new-instance v0, Lcom/sgscq/vpn/RobotFormationPlanner$1;

    .line 61
    .line 62
    invoke-direct {v0}, Lcom/sgscq/vpn/RobotFormationPlanner$1;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    new-instance v1, La/o;

    .line 70
    .line 71
    invoke-direct {v1}, La/o;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p1, v0}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Ljava/util/Map;

    .line 79
    .line 80
    if-nez p1, :cond_2

    .line 81
    .line 82
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 83
    .line 84
    .line 85
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_1

    .line 87
    :catch_0
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/sgscq/vpn/n5;->b:Ljava/util/Map;

    .line 92
    .line 93
    const/4 p1, 0x1

    .line 94
    move v0, p1

    .line 95
    :goto_2
    iget-object v1, p0, Lcom/sgscq/vpn/n5;->d:Ljava/util/LinkedHashMap;

    .line 96
    .line 97
    iget-object v2, p0, Lcom/sgscq/vpn/n5;->c:Ljava/util/LinkedHashMap;

    .line 98
    .line 99
    const/4 v3, 0x4

    .line 100
    if-gt v0, v3, :cond_4

    .line 101
    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    new-instance v5, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 115
    .line 116
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 117
    .line 118
    .line 119
    move v4, p1

    .line 120
    :goto_3
    if-gt v4, v3, :cond_3

    .line 121
    .line 122
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    new-instance v6, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    add-int/lit8 v4, v4, 0x1

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    add-int/lit8 v0, v0, 0x1

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_4
    iget-object v0, p0, Lcom/sgscq/vpn/n5;->a:Lcom/sgscq/vpn/w1;

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/sgscq/vpn/w1;->k0()Ljava/util/ArrayList;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    :cond_5
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    const-string v6, "skill_type"

    .line 162
    .line 163
    const/4 v7, 0x0

    .line 164
    if-eqz v5, :cond_8

    .line 165
    .line 166
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    check-cast v5, Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v0, v5}, Lcom/sgscq/vpn/w1;->k1(Ljava/lang/String;)Ljava/util/Map;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    if-nez v8, :cond_6

    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_6
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    invoke-static {v6}, Lcom/sgscq/vpn/n5;->k(Ljava/lang/Object;)I

    .line 184
    .line 185
    .line 186
    move-result v7

    .line 187
    :goto_5
    invoke-static {v8}, Lcom/sgscq/vpn/n5;->n(Ljava/util/Map;)Z

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    if-eqz v6, :cond_5

    .line 192
    .line 193
    const-string v6, "can_fit"

    .line 194
    .line 195
    const-string v9, "1"

    .line 196
    .line 197
    invoke-static {v8, v6, v9}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    if-eqz v6, :cond_5

    .line 202
    .line 203
    invoke-static {v8}, Lcom/sgscq/vpn/n5;->j(Ljava/util/Map;)Z

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    if-eqz v6, :cond_7

    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    invoke-virtual {v2, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    check-cast v6, Ljava/util/List;

    .line 219
    .line 220
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_8
    invoke-virtual {v0}, Lcom/sgscq/vpn/w1;->i0()Ljava/util/ArrayList;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    :cond_9
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    if-eqz v5, :cond_d

    .line 237
    .line 238
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    check-cast v5, Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {v0, v5}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 245
    .line 246
    .line 247
    move-result-object v8

    .line 248
    invoke-virtual {p0, v5}, Lcom/sgscq/vpn/n5;->l(Ljava/lang/String;)Z

    .line 249
    .line 250
    .line 251
    move-result v9

    .line 252
    if-nez v9, :cond_a

    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_a
    iget-object v9, p0, Lcom/sgscq/vpn/n5;->f:Ljava/util/LinkedHashSet;

    .line 256
    .line 257
    invoke-interface {v9, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    const-string v9, "lieutenant_skill_id"

    .line 261
    .line 262
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v9

    .line 266
    invoke-static {v9}, Lcom/sgscq/vpn/n5;->k(Ljava/lang/Object;)I

    .line 267
    .line 268
    .line 269
    move-result v9

    .line 270
    const-string v10, "general_naturalskill_id"

    .line 271
    .line 272
    const-string v11, ""

    .line 273
    .line 274
    invoke-interface {v8, v10, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v8

    .line 278
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v8

    .line 282
    iget-object v10, p0, Lcom/sgscq/vpn/n5;->a:Lcom/sgscq/vpn/w1;

    .line 283
    .line 284
    invoke-virtual {v10, v8}, Lcom/sgscq/vpn/w1;->k1(Ljava/lang/String;)Ljava/util/Map;

    .line 285
    .line 286
    .line 287
    move-result-object v8

    .line 288
    invoke-static {v8}, Lcom/sgscq/vpn/n5;->n(Ljava/util/Map;)Z

    .line 289
    .line 290
    .line 291
    move-result v10

    .line 292
    if-eqz v10, :cond_b

    .line 293
    .line 294
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v8

    .line 298
    invoke-static {v8}, Lcom/sgscq/vpn/n5;->k(Ljava/lang/Object;)I

    .line 299
    .line 300
    .line 301
    move-result v8

    .line 302
    goto :goto_7

    .line 303
    :cond_b
    move v8, v7

    .line 304
    :goto_7
    if-lt v9, p1, :cond_9

    .line 305
    .line 306
    if-gt v9, v3, :cond_9

    .line 307
    .line 308
    if-lt v8, p1, :cond_9

    .line 309
    .line 310
    if-le v8, v3, :cond_c

    .line 311
    .line 312
    goto :goto_6

    .line 313
    :cond_c
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 314
    .line 315
    .line 316
    move-result-object v9

    .line 317
    invoke-virtual {v1, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v9

    .line 321
    check-cast v9, Ljava/util/Map;

    .line 322
    .line 323
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 324
    .line 325
    .line 326
    move-result-object v8

    .line 327
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v8

    .line 331
    check-cast v8, Ljava/util/List;

    .line 332
    .line 333
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    goto :goto_6

    .line 337
    :cond_d
    const-string v0, "303101"

    .line 338
    .line 339
    invoke-virtual {p0, v0, p1}, Lcom/sgscq/vpn/n5;->b(Ljava/lang/String;I)V

    .line 340
    .line 341
    .line 342
    const-string v0, "312010"

    .line 343
    .line 344
    const/4 v4, 0x2

    .line 345
    invoke-virtual {p0, v0, v4}, Lcom/sgscq/vpn/n5;->b(Ljava/lang/String;I)V

    .line 346
    .line 347
    .line 348
    const-string v0, "312016"

    .line 349
    .line 350
    const/4 v5, 0x3

    .line 351
    invoke-virtual {p0, v0, v5}, Lcom/sgscq/vpn/n5;->b(Ljava/lang/String;I)V

    .line 352
    .line 353
    .line 354
    const-string v0, "302101"

    .line 355
    .line 356
    invoke-virtual {p0, v0, v3}, Lcom/sgscq/vpn/n5;->b(Ljava/lang/String;I)V

    .line 357
    .line 358
    .line 359
    const-string v0, "111018"

    .line 360
    .line 361
    invoke-virtual {p0, p1, p1, v0}, Lcom/sgscq/vpn/n5;->a(IILjava/lang/String;)V

    .line 362
    .line 363
    .line 364
    const-string v0, "111006"

    .line 365
    .line 366
    invoke-virtual {p0, p1, v4, v0}, Lcom/sgscq/vpn/n5;->a(IILjava/lang/String;)V

    .line 367
    .line 368
    .line 369
    const-string v0, "111001"

    .line 370
    .line 371
    invoke-virtual {p0, p1, v5, v0}, Lcom/sgscq/vpn/n5;->a(IILjava/lang/String;)V

    .line 372
    .line 373
    .line 374
    const-string v0, "111022"

    .line 375
    .line 376
    invoke-virtual {p0, p1, v3, v0}, Lcom/sgscq/vpn/n5;->a(IILjava/lang/String;)V

    .line 377
    .line 378
    .line 379
    const-string v0, "141009"

    .line 380
    .line 381
    invoke-virtual {p0, v4, p1, v0}, Lcom/sgscq/vpn/n5;->a(IILjava/lang/String;)V

    .line 382
    .line 383
    .line 384
    const-string v0, "111008"

    .line 385
    .line 386
    invoke-virtual {p0, v4, v5, v0}, Lcom/sgscq/vpn/n5;->a(IILjava/lang/String;)V

    .line 387
    .line 388
    .line 389
    const-string v0, "131005"

    .line 390
    .line 391
    invoke-virtual {p0, v4, v3, v0}, Lcom/sgscq/vpn/n5;->a(IILjava/lang/String;)V

    .line 392
    .line 393
    .line 394
    const-string v0, "111030"

    .line 395
    .line 396
    invoke-virtual {p0, v5, v5, v0}, Lcom/sgscq/vpn/n5;->a(IILjava/lang/String;)V

    .line 397
    .line 398
    .line 399
    const-string v0, "111031"

    .line 400
    .line 401
    invoke-virtual {p0, v5, v3, v0}, Lcom/sgscq/vpn/n5;->a(IILjava/lang/String;)V

    .line 402
    .line 403
    .line 404
    const-string v0, "111023"

    .line 405
    .line 406
    invoke-virtual {p0, v3, p1, v0}, Lcom/sgscq/vpn/n5;->a(IILjava/lang/String;)V

    .line 407
    .line 408
    .line 409
    const-string v0, "111004"

    .line 410
    .line 411
    invoke-virtual {p0, v3, v4, v0}, Lcom/sgscq/vpn/n5;->a(IILjava/lang/String;)V

    .line 412
    .line 413
    .line 414
    const-string v0, "111024"

    .line 415
    .line 416
    invoke-virtual {p0, v3, v5, v0}, Lcom/sgscq/vpn/n5;->a(IILjava/lang/String;)V

    .line 417
    .line 418
    .line 419
    const-string v0, "141020"

    .line 420
    .line 421
    invoke-virtual {p0, v3, v3, v0}, Lcom/sgscq/vpn/n5;->a(IILjava/lang/String;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 433
    .line 434
    .line 435
    move-result v2

    .line 436
    if-eqz v2, :cond_e

    .line 437
    .line 438
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    check-cast v2, Ljava/util/List;

    .line 443
    .line 444
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 445
    .line 446
    .line 447
    goto :goto_8

    .line 448
    :cond_e
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    if-eqz v1, :cond_10

    .line 461
    .line 462
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    check-cast v1, Ljava/util/Map;

    .line 467
    .line 468
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 477
    .line 478
    .line 479
    move-result v2

    .line 480
    if-eqz v2, :cond_f

    .line 481
    .line 482
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    check-cast v2, Ljava/util/List;

    .line 487
    .line 488
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 489
    .line 490
    .line 491
    goto :goto_9

    .line 492
    :cond_10
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 493
    .line 494
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 495
    .line 496
    .line 497
    iget-object v1, p0, Lcom/sgscq/vpn/n5;->b:Ljava/util/Map;

    .line 498
    .line 499
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    :cond_11
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 508
    .line 509
    .line 510
    move-result v2

    .line 511
    if-eqz v2, :cond_1c

    .line 512
    .line 513
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v2

    .line 517
    check-cast v2, Ljava/util/Map$Entry;

    .line 518
    .line 519
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v3

    .line 523
    check-cast v3, Ljava/lang/String;

    .line 524
    .line 525
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v2

    .line 529
    check-cast v2, Ljava/util/Map;

    .line 530
    .line 531
    if-eqz v2, :cond_11

    .line 532
    .line 533
    const-string v4, "fate_type"

    .line 534
    .line 535
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    move-result-object v4

    .line 539
    invoke-static {v4}, Lcom/sgscq/vpn/n5;->k(Ljava/lang/Object;)I

    .line 540
    .line 541
    .line 542
    move-result v4

    .line 543
    if-eq v4, p1, :cond_12

    .line 544
    .line 545
    goto :goto_a

    .line 546
    :cond_12
    const-string v4, "fate_object"

    .line 547
    .line 548
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object v4

    .line 552
    instance-of v6, v4, Ljava/util/List;

    .line 553
    .line 554
    if-nez v6, :cond_13

    .line 555
    .line 556
    goto :goto_a

    .line 557
    :cond_13
    new-instance v6, Ljava/util/LinkedHashSet;

    .line 558
    .line 559
    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 560
    .line 561
    .line 562
    check-cast v4, Ljava/util/List;

    .line 563
    .line 564
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 565
    .line 566
    .line 567
    move-result-object v4

    .line 568
    :cond_14
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 569
    .line 570
    .line 571
    move-result v8

    .line 572
    if-eqz v8, :cond_15

    .line 573
    .line 574
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object v8

    .line 578
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v8

    .line 582
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 583
    .line 584
    .line 585
    move-result v9

    .line 586
    if-nez v9, :cond_14

    .line 587
    .line 588
    const-string v9, "0"

    .line 589
    .line 590
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 591
    .line 592
    .line 593
    move-result v9

    .line 594
    if-nez v9, :cond_14

    .line 595
    .line 596
    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 597
    .line 598
    .line 599
    goto :goto_b

    .line 600
    :cond_15
    invoke-interface {v6}, Ljava/util/Set;->size()I

    .line 601
    .line 602
    .line 603
    move-result v4

    .line 604
    if-ge v4, v5, :cond_16

    .line 605
    .line 606
    goto :goto_a

    .line 607
    :cond_16
    new-instance v4, Ljava/util/ArrayList;

    .line 608
    .line 609
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 610
    .line 611
    .line 612
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 613
    .line 614
    .line 615
    const-string v6, "fate_limit"

    .line 616
    .line 617
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    move-result-object v6

    .line 621
    invoke-static {v6}, Lcom/sgscq/vpn/n5;->k(Ljava/lang/Object;)I

    .line 622
    .line 623
    .line 624
    move-result v6

    .line 625
    if-ne v6, p1, :cond_17

    .line 626
    .line 627
    move v6, p1

    .line 628
    goto :goto_c

    .line 629
    :cond_17
    move v6, v7

    .line 630
    :goto_c
    const-string v8, "fate_effect"

    .line 631
    .line 632
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    move-result-object v8

    .line 636
    invoke-static {v8}, Lcom/sgscq/vpn/n5;->f(Ljava/lang/Object;)D

    .line 637
    .line 638
    .line 639
    move-result-wide v8

    .line 640
    if-eqz v6, :cond_18

    .line 641
    .line 642
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 643
    .line 644
    .line 645
    move-result v6

    .line 646
    sub-int/2addr v6, p1

    .line 647
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    .line 648
    .line 649
    .line 650
    move-result v6

    .line 651
    int-to-double v10, v6

    .line 652
    const-string v6, "fate_effect_step"

    .line 653
    .line 654
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    move-result-object v2

    .line 658
    invoke-static {v2}, Lcom/sgscq/vpn/n5;->f(Ljava/lang/Object;)D

    .line 659
    .line 660
    .line 661
    move-result-wide v12

    .line 662
    mul-double/2addr v12, v10

    .line 663
    add-double/2addr v8, v12

    .line 664
    :cond_18
    new-instance v2, Lcom/sgscq/vpn/i5;

    .line 665
    .line 666
    invoke-direct {v2, v3, v4, v8, v9}, Lcom/sgscq/vpn/i5;-><init>(Ljava/lang/String;Ljava/util/ArrayList;D)V

    .line 667
    .line 668
    .line 669
    new-instance v3, Ljava/lang/StringBuilder;

    .line 670
    .line 671
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 675
    .line 676
    .line 677
    move-result-object v4

    .line 678
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 679
    .line 680
    .line 681
    move-result v6

    .line 682
    if-eqz v6, :cond_1a

    .line 683
    .line 684
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object v6

    .line 688
    check-cast v6, Ljava/lang/String;

    .line 689
    .line 690
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 691
    .line 692
    .line 693
    move-result v8

    .line 694
    if-lez v8, :cond_19

    .line 695
    .line 696
    const/16 v8, 0x7c

    .line 697
    .line 698
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    :cond_19
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    goto :goto_d

    .line 705
    :cond_1a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v3

    .line 709
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    move-result-object v4

    .line 713
    check-cast v4, Lcom/sgscq/vpn/i5;

    .line 714
    .line 715
    if-eqz v4, :cond_1b

    .line 716
    .line 717
    iget-wide v8, v2, Lcom/sgscq/vpn/i5;->c:D

    .line 718
    .line 719
    iget-wide v10, v4, Lcom/sgscq/vpn/i5;->c:D

    .line 720
    .line 721
    cmpl-double v6, v8, v10

    .line 722
    .line 723
    if-gtz v6, :cond_1b

    .line 724
    .line 725
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Double;->compare(DD)I

    .line 726
    .line 727
    .line 728
    move-result v6

    .line 729
    if-nez v6, :cond_11

    .line 730
    .line 731
    iget-object v6, v2, Lcom/sgscq/vpn/i5;->a:Ljava/lang/String;

    .line 732
    .line 733
    iget-object v4, v4, Lcom/sgscq/vpn/i5;->a:Ljava/lang/String;

    .line 734
    .line 735
    invoke-virtual {v6, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 736
    .line 737
    .line 738
    move-result v4

    .line 739
    if-gez v4, :cond_11

    .line 740
    .line 741
    :cond_1b
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    .line 743
    .line 744
    goto/16 :goto_a

    .line 745
    .line 746
    :cond_1c
    iget-object p1, p0, Lcom/sgscq/vpn/n5;->g:Ljava/util/ArrayList;

    .line 747
    .line 748
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 749
    .line 750
    .line 751
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 752
    .line 753
    .line 754
    move-result-object v0

    .line 755
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 756
    .line 757
    .line 758
    new-instance v0, Ln/b;

    .line 759
    .line 760
    invoke-direct {v0, v5}, Ln/b;-><init>(I)V

    .line 761
    .line 762
    .line 763
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 764
    .line 765
    .line 766
    return-void
.end method

.method public static e([DI)D
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-wide v0, p0, p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static f(Ljava/lang/Object;)D
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static g(ILjava/util/ArrayList;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static j(Ljava/util/Map;)Z
    .locals 4

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    instance-of v0, p0, Ljava/util/List;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    check-cast p0, Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    instance-of v2, v0, Ljava/util/Map;

    .line 30
    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    check-cast v0, Ljava/util/Map;

    .line 35
    .line 36
    const-string v2, "source_type"

    .line 37
    .line 38
    const-string v3, "16"

    .line 39
    .line 40
    invoke-static {v0, v2, v3}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    const/4 p0, 0x1

    .line 47
    return p0

    .line 48
    :cond_3
    return v1
.end method

.method public static k(Ljava/lang/Object;)I
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    double-to-int p0, v0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static n(Ljava/util/Map;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-string v1, "skill_type"

    .line 6
    .line 7
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Lcom/sgscq/vpn/n5;->k(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-lt v1, v2, :cond_1

    .line 17
    .line 18
    const/4 v3, 0x4

    .line 19
    if-gt v1, v3, :cond_1

    .line 20
    .line 21
    const-string v1, "is_open"

    .line 22
    .line 23
    const-string v3, "1"

    .line 24
    .line 25
    invoke-static {p0, v1, v3}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    const-string v1, "is_version"

    .line 32
    .line 33
    invoke-static {p0, v1, v3}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    move v0, v2

    .line 40
    :cond_1
    return v0
.end method

.method public static p(ILjava/util/List;Ljava/util/Set;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, ""

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Math;->floorMod(II)I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    add-int v2, p0, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p2, :cond_1

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static q(ILjava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 4

    .line 1
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v0

    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sgscq/vpn/n5;->p(ILjava/util/List;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_2
    const-string p0, ""

    return-object p0
.end method

.method public static r(Ljava/util/List;Ljava/util/List;ILjava/util/HashSet;)Ljava/lang/String;
    .locals 4

    .line 1
    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {p2, v0, p3}, Lcom/sgscq/vpn/n5;->p(ILjava/util/List;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2, p0, p3}, Lcom/sgscq/vpn/n5;->p(ILjava/util/List;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1

    :cond_4
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method public static u(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method


# virtual methods
.method public final a(IILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/n5;->a:Lcom/sgscq/vpn/w1;

    invoke-virtual {v0}, Lcom/sgscq/vpn/w1;->i0()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/sgscq/vpn/n5;->l(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sgscq/vpn/n5;->d:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, Lcom/sgscq/vpn/n5;->f:Ljava/util/LinkedHashSet;

    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sgscq/vpn/n5;->e:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/n5;->a:Lcom/sgscq/vpn/w1;

    invoke-virtual {v0}, Lcom/sgscq/vpn/w1;->k0()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/n5;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sgscq/vpn/n5;->c:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final c(Ljava/lang/String;ILjava/util/HashSet;)Ljava/util/ArrayList;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p1}, Lcom/sgscq/vpn/n5;->t(Ljava/lang/String;)Lcom/sgscq/vpn/m5;

    .line 4
    .line 5
    .line 6
    move-result-object v9

    .line 7
    invoke-virtual/range {p0 .. p1}, Lcom/sgscq/vpn/n5;->o(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v10

    .line 11
    invoke-virtual/range {p0 .. p1}, Lcom/sgscq/vpn/n5;->h(Ljava/lang/String;)Lcom/sgscq/vpn/k5;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v11, v1, Lcom/sgscq/vpn/k5;->b:Ljava/util/List;

    .line 16
    .line 17
    iget-object v1, v0, Lcom/sgscq/vpn/n5;->d:Ljava/util/LinkedHashMap;

    .line 18
    .line 19
    iget v2, v9, Lcom/sgscq/vpn/m5;->a:I

    .line 20
    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/util/Map;

    .line 30
    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :cond_0
    move-object v12, v1

    .line 38
    iget-object v1, v0, Lcom/sgscq/vpn/n5;->a:Lcom/sgscq/vpn/w1;

    .line 39
    .line 40
    move-object/from16 v2, p1

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lcom/sgscq/vpn/w1;->H0(Ljava/lang/String;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v13

    .line 46
    new-instance v14, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    :goto_0
    const/4 v2, 0x4

    .line 53
    if-gt v1, v2, :cond_2

    .line 54
    .line 55
    if-eq v1, v10, :cond_1

    .line 56
    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v7, Ljava/util/LinkedHashSet;

    .line 73
    .line 74
    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v16

    .line 81
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_b

    .line 86
    .line 87
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Ljava/lang/Integer;

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    new-instance v5, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-direct {v5, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    const/4 v4, 0x2

    .line 114
    if-eq v1, v4, :cond_3

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    iget-object v1, v0, Lcom/sgscq/vpn/n5;->c:Ljava/util/LinkedHashMap;

    .line 118
    .line 119
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Ljava/util/List;

    .line 128
    .line 129
    mul-int/lit8 v2, v6, 0x3b

    .line 130
    .line 131
    add-int v2, v2, p2

    .line 132
    .line 133
    invoke-static {v2, v1, v13}, Lcom/sgscq/vpn/n5;->q(ILjava/util/List;Ljava/util/List;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v17

    .line 137
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_4

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_4
    const/4 v2, 0x0

    .line 145
    :goto_2
    if-ge v2, v4, :cond_a

    .line 146
    .line 147
    if-nez v2, :cond_5

    .line 148
    .line 149
    move-object v1, v11

    .line 150
    goto :goto_3

    .line 151
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    :goto_3
    const/4 v15, 0x0

    .line 156
    :goto_4
    const/16 v4, 0x18

    .line 157
    .line 158
    if-ge v15, v4, :cond_9

    .line 159
    .line 160
    new-instance v4, Ljava/util/HashSet;

    .line 161
    .line 162
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 163
    .line 164
    .line 165
    move-object/from16 v3, p3

    .line 166
    .line 167
    invoke-interface {v4, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 168
    .line 169
    .line 170
    move/from16 v19, v2

    .line 171
    .line 172
    const/4 v0, 0x0

    .line 173
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    check-cast v2, Ljava/util/List;

    .line 182
    .line 183
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v20

    .line 187
    check-cast v20, Ljava/lang/Integer;

    .line 188
    .line 189
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    .line 190
    .line 191
    .line 192
    move-result v20

    .line 193
    mul-int/lit8 v20, v20, 0x1f

    .line 194
    .line 195
    add-int v20, v20, p2

    .line 196
    .line 197
    add-int v0, v20, v15

    .line 198
    .line 199
    invoke-static {v2, v1, v0, v4}, Lcom/sgscq/vpn/n5;->r(Ljava/util/List;Ljava/util/List;ILjava/util/HashSet;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    if-eqz v2, :cond_6

    .line 208
    .line 209
    goto :goto_5

    .line 210
    :cond_6
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    const/4 v2, 0x1

    .line 214
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-interface {v12, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    check-cast v3, Ljava/util/List;

    .line 223
    .line 224
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v20

    .line 228
    check-cast v20, Ljava/lang/Integer;

    .line 229
    .line 230
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    .line 231
    .line 232
    .line 233
    move-result v20

    .line 234
    mul-int/lit8 v20, v20, 0x2f

    .line 235
    .line 236
    add-int v20, v20, p2

    .line 237
    .line 238
    add-int v2, v20, v15

    .line 239
    .line 240
    invoke-static {v3, v1, v2, v4}, Lcom/sgscq/vpn/n5;->r(Ljava/util/List;Ljava/util/List;ILjava/util/HashSet;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    if-eqz v3, :cond_7

    .line 249
    .line 250
    goto :goto_5

    .line 251
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v4, "|"

    .line 260
    .line 261
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    if-nez v3, :cond_8

    .line 282
    .line 283
    :goto_5
    move-object/from16 p1, v1

    .line 284
    .line 285
    move-object/from16 v20, v5

    .line 286
    .line 287
    move/from16 v24, v6

    .line 288
    .line 289
    move-object/from16 v25, v7

    .line 290
    .line 291
    move-object/from16 v18, v9

    .line 292
    .line 293
    const/16 v21, 0x0

    .line 294
    .line 295
    const/16 v22, 0x1

    .line 296
    .line 297
    const/16 v23, 0x2

    .line 298
    .line 299
    move-object v9, v8

    .line 300
    goto :goto_6

    .line 301
    :cond_8
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 302
    .line 303
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 304
    .line 305
    .line 306
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 321
    .line 322
    .line 323
    new-instance v3, Lcom/sgscq/vpn/j5;

    .line 324
    .line 325
    move-object/from16 v20, v5

    .line 326
    .line 327
    new-instance v5, Ljava/util/ArrayList;

    .line 328
    .line 329
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-object v0, v1

    .line 339
    move-object v1, v3

    .line 340
    const/16 v22, 0x1

    .line 341
    .line 342
    move-object v2, v9

    .line 343
    move-object/from16 p1, v0

    .line 344
    .line 345
    move-object v0, v3

    .line 346
    const/16 v21, 0x0

    .line 347
    .line 348
    move-object/from16 v3, v17

    .line 349
    .line 350
    move-object/from16 v18, v4

    .line 351
    .line 352
    const/16 v23, 0x2

    .line 353
    .line 354
    move v4, v6

    .line 355
    move/from16 v24, v6

    .line 356
    .line 357
    move-object/from16 v6, v20

    .line 358
    .line 359
    move-object/from16 v25, v7

    .line 360
    .line 361
    move-object/from16 v7, v18

    .line 362
    .line 363
    move-object/from16 v18, v9

    .line 364
    .line 365
    move-object v9, v8

    .line 366
    move v8, v10

    .line 367
    invoke-direct/range {v1 .. v8}, Lcom/sgscq/vpn/j5;-><init>(Lcom/sgscq/vpn/m5;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/LinkedHashSet;I)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    :goto_6
    add-int/lit8 v15, v15, 0x1

    .line 374
    .line 375
    move-object/from16 v0, p0

    .line 376
    .line 377
    move-object/from16 v1, p1

    .line 378
    .line 379
    move-object v8, v9

    .line 380
    move-object/from16 v9, v18

    .line 381
    .line 382
    move/from16 v2, v19

    .line 383
    .line 384
    move-object/from16 v5, v20

    .line 385
    .line 386
    move/from16 v6, v24

    .line 387
    .line 388
    move-object/from16 v7, v25

    .line 389
    .line 390
    goto/16 :goto_4

    .line 391
    .line 392
    :cond_9
    move/from16 v19, v2

    .line 393
    .line 394
    move-object/from16 v20, v5

    .line 395
    .line 396
    move/from16 v24, v6

    .line 397
    .line 398
    move-object/from16 v25, v7

    .line 399
    .line 400
    move-object/from16 v18, v9

    .line 401
    .line 402
    const/16 v21, 0x0

    .line 403
    .line 404
    const/16 v22, 0x1

    .line 405
    .line 406
    const/16 v23, 0x2

    .line 407
    .line 408
    move-object v9, v8

    .line 409
    add-int/lit8 v2, v19, 0x1

    .line 410
    .line 411
    move-object/from16 v0, p0

    .line 412
    .line 413
    move-object/from16 v9, v18

    .line 414
    .line 415
    move/from16 v4, v23

    .line 416
    .line 417
    goto/16 :goto_2

    .line 418
    .line 419
    :cond_a
    move-object/from16 v0, p0

    .line 420
    .line 421
    goto/16 :goto_1

    .line 422
    .line 423
    :cond_b
    move-object v9, v8

    .line 424
    return-object v9
.end method

.method public final d(Ljava/lang/String;ILjava/util/HashSet;)Lcom/sgscq/vpn/j5;
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/n5;->t(Ljava/lang/String;)Lcom/sgscq/vpn/m5;

    .line 2
    .line 3
    .line 4
    move-result-object v7

    .line 5
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/n5;->o(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v8

    .line 9
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/n5;->h(Ljava/lang/String;)Lcom/sgscq/vpn/k5;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v9, v0, Lcom/sgscq/vpn/k5;->b:Ljava/util/List;

    .line 14
    .line 15
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    move-object v2, v7

    .line 18
    move v3, v8

    .line 19
    move-object v4, v9

    .line 20
    move v5, p2

    .line 21
    move-object v6, p3

    .line 22
    invoke-virtual/range {v0 .. v6}, Lcom/sgscq/vpn/n5;->s(Ljava/lang/String;Lcom/sgscq/vpn/m5;ILjava/util/List;ILjava/util/HashSet;)Lcom/sgscq/vpn/j5;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/sgscq/vpn/j5;->a()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/sgscq/vpn/n5;->b:Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    iget-object v1, p0, Lcom/sgscq/vpn/n5;->a:Lcom/sgscq/vpn/w1;

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_1
    const/4 v1, 0x1

    .line 51
    move v10, v1

    .line 52
    :goto_0
    const/4 v1, 0x4

    .line 53
    if-gt v10, v1, :cond_4

    .line 54
    .line 55
    iget v1, v7, Lcom/sgscq/vpn/m5;->a:I

    .line 56
    .line 57
    if-ne v10, v1, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    new-instance v2, Lcom/sgscq/vpn/m5;

    .line 61
    .line 62
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-wide v3, v7, Lcom/sgscq/vpn/m5;->b:D

    .line 67
    .line 68
    invoke-direct {v2, v10, v3, v4, v0}, Lcom/sgscq/vpn/m5;-><init>(IDLjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    move-object v0, p0

    .line 72
    move-object v1, p1

    .line 73
    move v3, v8

    .line 74
    move-object v4, v9

    .line 75
    move v5, p2

    .line 76
    move-object v6, p3

    .line 77
    invoke-virtual/range {v0 .. v6}, Lcom/sgscq/vpn/n5;->s(Ljava/lang/String;Lcom/sgscq/vpn/m5;ILjava/util/List;ILjava/util/HashSet;)Lcom/sgscq/vpn/j5;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/sgscq/vpn/j5;->a()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    return-object v0

    .line 88
    :cond_3
    :goto_1
    add-int/lit8 v10, v10, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    return-object v0
.end method

.method public final h(Ljava/lang/String;)Lcom/sgscq/vpn/k5;
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/n5;->i(Ljava/lang/String;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance p1, Lcom/sgscq/vpn/k5;

    .line 12
    .line 13
    const-string v2, ""

    .line 14
    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-wide/16 v4, 0x0

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    move-object v1, p1

    .line 24
    invoke-direct/range {v1 .. v7}, Lcom/sgscq/vpn/k5;-><init>(Ljava/lang/String;Ljava/util/List;DZI)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/sgscq/vpn/k5;

    .line 34
    .line 35
    :goto_0
    return-object p1
.end method

.method public final i(Ljava/lang/String;)Ljava/util/List;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/sgscq/vpn/n5;->a:Lcom/sgscq/vpn/w1;

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, v0, Lcom/sgscq/vpn/n5;->f:Ljava/util/LinkedHashSet;

    .line 12
    .line 13
    new-instance v4, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    if-eqz v2, :cond_c

    .line 19
    .line 20
    iget-object v5, v0, Lcom/sgscq/vpn/n5;->b:Ljava/util/Map;

    .line 21
    .line 22
    if-nez v5, :cond_0

    .line 23
    .line 24
    goto/16 :goto_3

    .line 25
    .line 26
    :cond_0
    const-string v6, "general_fate_id"

    .line 27
    .line 28
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    instance-of v6, v2, Ljava/util/List;

    .line 33
    .line 34
    if-nez v6, :cond_1

    .line 35
    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_b

    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    check-cast v6, Ljava/util/Map;

    .line 63
    .line 64
    if-eqz v6, :cond_2

    .line 65
    .line 66
    const-string v7, "fate_type"

    .line 67
    .line 68
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    invoke-static {v7}, Lcom/sgscq/vpn/n5;->k(Ljava/lang/Object;)I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    const/4 v9, 0x1

    .line 77
    if-eq v7, v9, :cond_3

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    const-string v7, "fate_object"

    .line 81
    .line 82
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    instance-of v10, v7, Ljava/util/List;

    .line 87
    .line 88
    if-nez v10, :cond_4

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    new-instance v10, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    check-cast v7, Ljava/util/List;

    .line 97
    .line 98
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    const/4 v11, 0x0

    .line 103
    move v12, v11

    .line 104
    :cond_5
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v13

    .line 108
    if-eqz v13, :cond_7

    .line 109
    .line 110
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v13

    .line 114
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v13

    .line 118
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 119
    .line 120
    .line 121
    move-result v14

    .line 122
    if-nez v14, :cond_5

    .line 123
    .line 124
    if-eqz v3, :cond_6

    .line 125
    .line 126
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result v14

    .line 130
    if-nez v14, :cond_6

    .line 131
    .line 132
    invoke-interface {v3, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v14

    .line 136
    if-nez v14, :cond_6

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_6
    add-int/lit8 v12, v12, 0x1

    .line 140
    .line 141
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v14

    .line 145
    if-nez v14, :cond_5

    .line 146
    .line 147
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v14

    .line 151
    if-nez v14, :cond_5

    .line 152
    .line 153
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_7
    if-nez v12, :cond_8

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_8
    const-string v7, "fate_limit"

    .line 161
    .line 162
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    invoke-static {v7}, Lcom/sgscq/vpn/n5;->k(Ljava/lang/Object;)I

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    if-ne v7, v9, :cond_9

    .line 171
    .line 172
    move v13, v9

    .line 173
    goto :goto_2

    .line 174
    :cond_9
    move v13, v11

    .line 175
    :goto_2
    const-string v7, "fate_effect"

    .line 176
    .line 177
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    invoke-static {v7}, Lcom/sgscq/vpn/n5;->f(Ljava/lang/Object;)D

    .line 182
    .line 183
    .line 184
    move-result-wide v14

    .line 185
    if-eqz v13, :cond_a

    .line 186
    .line 187
    add-int/lit8 v12, v12, -0x1

    .line 188
    .line 189
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    int-to-double v11, v7

    .line 194
    const-string v7, "fate_effect_step"

    .line 195
    .line 196
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    invoke-static {v7}, Lcom/sgscq/vpn/n5;->f(Ljava/lang/Object;)D

    .line 201
    .line 202
    .line 203
    move-result-wide v16

    .line 204
    mul-double v16, v16, v11

    .line 205
    .line 206
    add-double v16, v16, v14

    .line 207
    .line 208
    move-wide/from16 v14, v16

    .line 209
    .line 210
    :cond_a
    new-instance v12, Lcom/sgscq/vpn/k5;

    .line 211
    .line 212
    const-string v7, "fate_addition_type"

    .line 213
    .line 214
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    invoke-static {v6}, Lcom/sgscq/vpn/n5;->k(Ljava/lang/Object;)I

    .line 219
    .line 220
    .line 221
    move-result v6

    .line 222
    move-object v7, v12

    .line 223
    move-object v9, v10

    .line 224
    move-wide v10, v14

    .line 225
    move-object v14, v12

    .line 226
    move v12, v13

    .line 227
    move v13, v6

    .line 228
    invoke-direct/range {v7 .. v13}, Lcom/sgscq/vpn/k5;-><init>(Ljava/lang/String;Ljava/util/List;DZI)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    goto/16 :goto_0

    .line 235
    .line 236
    :cond_b
    new-instance v1, Ln/b;

    .line 237
    .line 238
    const/4 v2, 0x4

    .line 239
    invoke-direct {v1, v2}, Ln/b;-><init>(I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 243
    .line 244
    .line 245
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    :cond_c
    :goto_3
    return-object v4
.end method

.method public final l(Ljava/lang/String;)Z
    .locals 3

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/sgscq/vpn/n5;->a:Lcom/sgscq/vpn/w1;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/sgscq/vpn/w1;->i0()Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_1
    const/4 v2, 0x1

    .line 28
    invoke-virtual {v0, v2, v2, p1}, Lcom/sgscq/vpn/w1;->M0(IILjava/lang/String;)[D

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_4

    .line 33
    .line 34
    array-length p1, p1

    .line 35
    const/4 v2, 0x4

    .line 36
    if-gt p1, v2, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const-string p1, "is_open"

    .line 40
    .line 41
    const-string v2, "1"

    .line 42
    .line 43
    invoke-static {v1, p1, v2}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    const-string p1, "is_version"

    .line 50
    .line 51
    invoke-static {v1, p1, v2}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const-string p1, "general_naturalskill_id"

    .line 59
    .line 60
    const-string v2, ""

    .line 61
    .line 62
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v0, p1}, Lcom/sgscq/vpn/w1;->k1(Ljava/lang/String;)Ljava/util/Map;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1}, Lcom/sgscq/vpn/n5;->n(Ljava/util/Map;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    return p1

    .line 79
    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 80
    return p1
.end method

.method public final m(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/n5;->a:Lcom/sgscq/vpn/w1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/sgscq/vpn/w1;->k1(Ljava/lang/String;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/sgscq/vpn/w1;->k0()Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/sgscq/vpn/n5;->c:Ljava/util/LinkedHashMap;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    return v2

    .line 49
    :cond_1
    invoke-static {v1}, Lcom/sgscq/vpn/n5;->n(Ljava/util/Map;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    const-string p1, "can_fit"

    .line 56
    .line 57
    const-string v0, "1"

    .line 58
    .line 59
    invoke-static {v1, p1, v0}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    invoke-static {v1}, Lcom/sgscq/vpn/n5;->j(Ljava/util/Map;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_2

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    const/4 v2, 0x0

    .line 73
    :goto_0
    return v2
.end method

.method public final o(Ljava/lang/String;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/n5;->a:Lcom/sgscq/vpn/w1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, ""

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v3, "general_naturalskill_id"

    .line 13
    .line 14
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    :goto_0
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/w1;->k1(Ljava/lang/String;)Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/sgscq/vpn/n5;->n(Ljava/util/Map;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x0

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const-string v1, "skill_type"

    .line 34
    .line 35
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/sgscq/vpn/n5;->k(Ljava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move v0, v2

    .line 45
    :goto_1
    if-gtz v0, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lcom/sgscq/vpn/n5;->e:Ljava/util/LinkedHashMap;

    .line 48
    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ljava/lang/Integer;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    :cond_2
    if-gtz v0, :cond_3

    .line 64
    .line 65
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    const/4 v0, 0x4

    .line 74
    invoke-static {p1, v0}, Ljava/lang/Math;->floorMod(II)I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    add-int/lit8 v0, p1, 0x1

    .line 79
    .line 80
    :cond_3
    return v0
.end method

.method public final s(Ljava/lang/String;Lcom/sgscq/vpn/m5;ILjava/util/List;ILjava/util/HashSet;)Lcom/sgscq/vpn/j5;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v9, p3

    .line 4
    .line 5
    move-object/from16 v10, p4

    .line 6
    .line 7
    iget-object v1, v0, Lcom/sgscq/vpn/n5;->d:Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    move-object/from16 v11, p2

    .line 10
    .line 11
    iget v2, v11, Lcom/sgscq/vpn/m5;->a:I

    .line 12
    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map;

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :cond_0
    move-object v12, v1

    .line 30
    iget-object v1, v0, Lcom/sgscq/vpn/n5;->a:Lcom/sgscq/vpn/w1;

    .line 31
    .line 32
    move-object/from16 v2, p1

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/sgscq/vpn/w1;->H0(Ljava/lang/String;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v13

    .line 38
    iget-object v14, v0, Lcom/sgscq/vpn/n5;->c:Ljava/util/LinkedHashMap;

    .line 39
    .line 40
    new-instance v15, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    const/4 v8, 0x1

    .line 46
    move v1, v8

    .line 47
    :goto_0
    const/4 v2, 0x4

    .line 48
    if-gt v1, v2, :cond_2

    .line 49
    .line 50
    if-eq v1, v9, :cond_1

    .line 51
    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    const/4 v6, 0x0

    .line 76
    if-eqz v3, :cond_7

    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Ljava/lang/Integer;

    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v14, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    check-cast v4, Ljava/util/List;

    .line 97
    .line 98
    if-eqz v4, :cond_6

    .line 99
    .line 100
    if-nez v13, :cond_4

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_6

    .line 112
    .line 113
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    check-cast v5, Ljava/lang/String;

    .line 118
    .line 119
    invoke-interface {v13, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-eqz v5, :cond_5

    .line 124
    .line 125
    move v6, v8

    .line 126
    :cond_6
    :goto_2
    if-eqz v6, :cond_3

    .line 127
    .line 128
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_7
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-eqz v3, :cond_9

    .line 145
    .line 146
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    check-cast v3, Ljava/lang/Integer;

    .line 151
    .line 152
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    if-nez v4, :cond_8

    .line 165
    .line 166
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_9
    new-instance v5, Ljava/util/LinkedHashSet;

    .line 175
    .line 176
    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 177
    .line 178
    .line 179
    if-lt v9, v8, :cond_a

    .line 180
    .line 181
    if-gt v9, v2, :cond_a

    .line 182
    .line 183
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    :cond_a
    new-instance v16, Lcom/sgscq/vpn/j5;

    .line 191
    .line 192
    const-string v3, ""

    .line 193
    .line 194
    const/4 v4, 0x0

    .line 195
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 196
    .line 197
    .line 198
    move-result-object v17

    .line 199
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object v18

    .line 203
    move-object/from16 v1, v16

    .line 204
    .line 205
    move-object/from16 v2, p2

    .line 206
    .line 207
    move-object/from16 v19, v5

    .line 208
    .line 209
    move-object/from16 v5, v17

    .line 210
    .line 211
    move-object/from16 v6, v18

    .line 212
    .line 213
    move-object/from16 v17, v7

    .line 214
    .line 215
    move-object/from16 v7, v19

    .line 216
    .line 217
    move v0, v8

    .line 218
    move/from16 v8, p3

    .line 219
    .line 220
    invoke-direct/range {v1 .. v8}, Lcom/sgscq/vpn/j5;-><init>(Lcom/sgscq/vpn/m5;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/LinkedHashSet;I)V

    .line 221
    .line 222
    .line 223
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object v17

    .line 227
    const/4 v1, -0x1

    .line 228
    move v8, v1

    .line 229
    move-object/from16 v18, v16

    .line 230
    .line 231
    const/16 v16, 0x0

    .line 232
    .line 233
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-eqz v1, :cond_15

    .line 238
    .line 239
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    check-cast v1, Ljava/lang/Integer;

    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    new-instance v6, Ljava/util/ArrayList;

    .line 250
    .line 251
    invoke-direct {v6, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 252
    .line 253
    .line 254
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    const/4 v2, 0x2

    .line 266
    if-eq v1, v2, :cond_b

    .line 267
    .line 268
    move-object/from16 v7, p6

    .line 269
    .line 270
    const/4 v5, 0x0

    .line 271
    goto :goto_5

    .line 272
    :cond_b
    new-instance v1, Ljava/util/HashSet;

    .line 273
    .line 274
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 275
    .line 276
    .line 277
    move-object/from16 v7, p6

    .line 278
    .line 279
    invoke-interface {v1, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 280
    .line 281
    .line 282
    const/4 v5, 0x0

    .line 283
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    check-cast v2, Ljava/util/List;

    .line 292
    .line 293
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    check-cast v3, Ljava/lang/Integer;

    .line 298
    .line 299
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 300
    .line 301
    .line 302
    move-result v3

    .line 303
    mul-int/lit8 v3, v3, 0x1f

    .line 304
    .line 305
    add-int v3, v3, p5

    .line 306
    .line 307
    invoke-static {v2, v10, v3, v1}, Lcom/sgscq/vpn/n5;->r(Ljava/util/List;Ljava/util/List;ILjava/util/HashSet;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    if-eqz v2, :cond_c

    .line 316
    .line 317
    goto :goto_5

    .line 318
    :cond_c
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    check-cast v2, Ljava/util/List;

    .line 330
    .line 331
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v19

    .line 335
    check-cast v19, Ljava/lang/Integer;

    .line 336
    .line 337
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    .line 338
    .line 339
    .line 340
    move-result v19

    .line 341
    mul-int/lit8 v19, v19, 0x2f

    .line 342
    .line 343
    add-int v0, v19, p5

    .line 344
    .line 345
    invoke-static {v2, v10, v0, v1}, Lcom/sgscq/vpn/n5;->r(Ljava/util/List;Ljava/util/List;ILjava/util/HashSet;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    if-eqz v1, :cond_d

    .line 354
    .line 355
    goto :goto_5

    .line 356
    :cond_d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    invoke-virtual {v14, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    check-cast v1, Ljava/util/List;

    .line 365
    .line 366
    mul-int/lit8 v2, v4, 0x3b

    .line 367
    .line 368
    add-int v2, v2, p5

    .line 369
    .line 370
    invoke-static {v2, v1, v13}, Lcom/sgscq/vpn/n5;->q(ILjava/util/List;Ljava/util/List;)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    if-eqz v1, :cond_e

    .line 379
    .line 380
    :goto_5
    const/4 v0, 0x1

    .line 381
    goto/16 :goto_4

    .line 382
    .line 383
    :cond_e
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 384
    .line 385
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 386
    .line 387
    .line 388
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 389
    .line 390
    .line 391
    move-result-object v5

    .line 392
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 396
    .line 397
    .line 398
    move-result-object v5

    .line 399
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    invoke-interface {v1, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 403
    .line 404
    .line 405
    new-instance v20, Lcom/sgscq/vpn/j5;

    .line 406
    .line 407
    new-instance v5, Ljava/util/ArrayList;

    .line 408
    .line 409
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-object/from16 v21, v1

    .line 419
    .line 420
    move-object/from16 v1, v20

    .line 421
    .line 422
    move-object/from16 p1, v2

    .line 423
    .line 424
    move-object/from16 v2, p2

    .line 425
    .line 426
    move-object v9, v3

    .line 427
    move-object/from16 v3, p1

    .line 428
    .line 429
    const/16 v19, 0x0

    .line 430
    .line 431
    move-object/from16 v7, v21

    .line 432
    .line 433
    move v11, v8

    .line 434
    move/from16 v8, p3

    .line 435
    .line 436
    invoke-direct/range {v1 .. v8}, Lcom/sgscq/vpn/j5;-><init>(Lcom/sgscq/vpn/m5;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/LinkedHashSet;I)V

    .line 437
    .line 438
    .line 439
    if-eqz v10, :cond_f

    .line 440
    .line 441
    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    if-eqz v1, :cond_f

    .line 446
    .line 447
    const/4 v8, 0x1

    .line 448
    goto :goto_6

    .line 449
    :cond_f
    move/from16 v8, v19

    .line 450
    .line 451
    :goto_6
    if-eqz v10, :cond_10

    .line 452
    .line 453
    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    if-eqz v0, :cond_10

    .line 458
    .line 459
    const/4 v0, 0x1

    .line 460
    goto :goto_7

    .line 461
    :cond_10
    move/from16 v0, v19

    .line 462
    .line 463
    :goto_7
    add-int/2addr v0, v8

    .line 464
    if-eqz v13, :cond_11

    .line 465
    .line 466
    move-object/from16 v1, p1

    .line 467
    .line 468
    invoke-interface {v13, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    move-result v1

    .line 472
    if-eqz v1, :cond_11

    .line 473
    .line 474
    const/4 v8, 0x1

    .line 475
    goto :goto_8

    .line 476
    :cond_11
    move/from16 v8, v19

    .line 477
    .line 478
    :goto_8
    if-lez v8, :cond_12

    .line 479
    .line 480
    const/4 v8, 0x1

    .line 481
    goto :goto_9

    .line 482
    :cond_12
    move/from16 v8, v19

    .line 483
    .line 484
    :goto_9
    if-gt v0, v11, :cond_14

    .line 485
    .line 486
    if-ne v0, v11, :cond_13

    .line 487
    .line 488
    if-eqz v8, :cond_13

    .line 489
    .line 490
    if-nez v16, :cond_13

    .line 491
    .line 492
    goto :goto_a

    .line 493
    :cond_13
    move v8, v11

    .line 494
    goto :goto_b

    .line 495
    :cond_14
    :goto_a
    move/from16 v16, v8

    .line 496
    .line 497
    move-object/from16 v18, v20

    .line 498
    .line 499
    move v8, v0

    .line 500
    :goto_b
    move-object/from16 v11, p2

    .line 501
    .line 502
    move/from16 v9, p3

    .line 503
    .line 504
    goto :goto_5

    .line 505
    :cond_15
    return-object v18
.end method

.method public final t(Ljava/lang/String;)Lcom/sgscq/vpn/m5;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/sgscq/vpn/n5;->a:Lcom/sgscq/vpn/w1;

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v2, v1}, Lcom/sgscq/vpn/w1;->K0(Ljava/lang/String;)[D

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    const/4 v5, 0x4

    .line 22
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 23
    .line 24
    if-eqz v3, :cond_5

    .line 25
    .line 26
    const-string v8, "general_fate_id"

    .line 27
    .line 28
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    instance-of v8, v3, Ljava/util/List;

    .line 33
    .line 34
    if-eqz v8, :cond_5

    .line 35
    .line 36
    check-cast v3, Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    if-eqz v8, :cond_5

    .line 47
    .line 48
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    iget-object v9, v0, Lcom/sgscq/vpn/n5;->b:Ljava/util/Map;

    .line 53
    .line 54
    if-nez v9, :cond_1

    .line 55
    .line 56
    const/4 v8, 0x0

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    check-cast v8, Ljava/util/Map;

    .line 67
    .line 68
    :goto_1
    if-nez v8, :cond_2

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const-string v9, "fate_addition_type"

    .line 72
    .line 73
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    invoke-static {v9}, Lcom/sgscq/vpn/n5;->k(Ljava/lang/Object;)I

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    if-lt v9, v4, :cond_0

    .line 82
    .line 83
    if-le v9, v5, :cond_3

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    const-string v10, "fate_effect"

    .line 87
    .line 88
    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    invoke-static {v8}, Lcom/sgscq/vpn/n5;->f(Ljava/lang/Object;)D

    .line 93
    .line 94
    .line 95
    move-result-wide v10

    .line 96
    cmpl-double v8, v10, v6

    .line 97
    .line 98
    if-lez v8, :cond_4

    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 101
    .line 102
    .line 103
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-wide v6, v10

    .line 111
    goto :goto_0

    .line 112
    :cond_4
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Double;->compare(DD)I

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    if-nez v8, :cond_0

    .line 117
    .line 118
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    if-nez v8, :cond_0

    .line 127
    .line 128
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-eqz v3, :cond_6

    .line 141
    .line 142
    new-instance v2, Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .line 146
    .line 147
    move v3, v4

    .line 148
    :goto_2
    if-gt v3, v5, :cond_6

    .line 149
    .line 150
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    add-int/lit8 v3, v3, 0x1

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_6
    const/4 v3, 0x0

    .line 161
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v8

    .line 165
    check-cast v8, Ljava/lang/Integer;

    .line 166
    .line 167
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 176
    .line 177
    .line 178
    move-result v9

    .line 179
    if-eqz v9, :cond_e

    .line 180
    .line 181
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    check-cast v9, Ljava/lang/Integer;

    .line 186
    .line 187
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 188
    .line 189
    .line 190
    move-result v9

    .line 191
    const/4 v10, -0x1

    .line 192
    const/4 v11, 0x6

    .line 193
    const/4 v12, 0x7

    .line 194
    const/4 v13, 0x5

    .line 195
    const/16 v14, 0x8

    .line 196
    .line 197
    filled-new-array {v10, v11, v12, v13, v14}, [I

    .line 198
    .line 199
    .line 200
    move-result-object v15

    .line 201
    if-lt v9, v4, :cond_7

    .line 202
    .line 203
    if-gt v9, v5, :cond_7

    .line 204
    .line 205
    aget v15, v15, v9

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_7
    move v15, v10

    .line 209
    :goto_4
    move-wide/from16 v16, v6

    .line 210
    .line 211
    invoke-static {v1, v15}, Lcom/sgscq/vpn/n5;->e([DI)D

    .line 212
    .line 213
    .line 214
    move-result-wide v5

    .line 215
    filled-new-array {v10, v11, v12, v13, v14}, [I

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    if-lt v8, v4, :cond_8

    .line 220
    .line 221
    const/4 v11, 0x4

    .line 222
    if-gt v8, v11, :cond_8

    .line 223
    .line 224
    aget v7, v7, v8

    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_8
    move v7, v10

    .line 228
    :goto_5
    invoke-static {v1, v7}, Lcom/sgscq/vpn/n5;->e([DI)D

    .line 229
    .line 230
    .line 231
    move-result-wide v11

    .line 232
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Double;->compare(DD)I

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    if-eqz v5, :cond_9

    .line 237
    .line 238
    const/4 v6, 0x4

    .line 239
    goto :goto_7

    .line 240
    :cond_9
    const/4 v5, 0x2

    .line 241
    const/4 v6, 0x3

    .line 242
    filled-new-array {v10, v4, v5, v3, v6}, [I

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    if-lt v9, v4, :cond_a

    .line 247
    .line 248
    const/4 v11, 0x4

    .line 249
    if-gt v9, v11, :cond_a

    .line 250
    .line 251
    aget v7, v7, v9

    .line 252
    .line 253
    goto :goto_6

    .line 254
    :cond_a
    move v7, v10

    .line 255
    :goto_6
    invoke-static {v1, v7}, Lcom/sgscq/vpn/n5;->e([DI)D

    .line 256
    .line 257
    .line 258
    move-result-wide v11

    .line 259
    filled-new-array {v10, v4, v5, v3, v6}, [I

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    const/4 v6, 0x4

    .line 264
    if-lt v8, v4, :cond_b

    .line 265
    .line 266
    if-gt v8, v6, :cond_b

    .line 267
    .line 268
    aget v10, v5, v8

    .line 269
    .line 270
    :cond_b
    invoke-static {v1, v10}, Lcom/sgscq/vpn/n5;->e([DI)D

    .line 271
    .line 272
    .line 273
    move-result-wide v13

    .line 274
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Double;->compare(DD)I

    .line 275
    .line 276
    .line 277
    move-result v5

    .line 278
    if-eqz v5, :cond_c

    .line 279
    .line 280
    goto :goto_7

    .line 281
    :cond_c
    invoke-static {v8, v9}, Ljava/lang/Integer;->compare(II)I

    .line 282
    .line 283
    .line 284
    move-result v5

    .line 285
    :goto_7
    if-lez v5, :cond_d

    .line 286
    .line 287
    move v5, v6

    .line 288
    move v8, v9

    .line 289
    goto :goto_8

    .line 290
    :cond_d
    move v5, v6

    .line 291
    :goto_8
    move-wide/from16 v6, v16

    .line 292
    .line 293
    goto :goto_3

    .line 294
    :cond_e
    move-wide/from16 v16, v6

    .line 295
    .line 296
    const-wide/16 v1, 0x0

    .line 297
    .line 298
    cmpg-double v3, v16, v1

    .line 299
    .line 300
    if-gez v3, :cond_f

    .line 301
    .line 302
    move-wide v6, v1

    .line 303
    goto :goto_9

    .line 304
    :cond_f
    move-wide/from16 v6, v16

    .line 305
    .line 306
    :goto_9
    new-instance v1, Lcom/sgscq/vpn/m5;

    .line 307
    .line 308
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-direct {v1, v8, v6, v7, v2}, Lcom/sgscq/vpn/m5;-><init>(IDLjava/lang/String;)V

    .line 313
    .line 314
    .line 315
    return-object v1
.end method
