.class public final Lcom/sgscq/vpn/cloud/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:Z

.field public final i:Ljava/lang/String;

.field public final j:J

.field public final k:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IZLjava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/cloud/i0;->a:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/sgscq/vpn/cloud/i0;->b:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/sgscq/vpn/cloud/i0;->c:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/sgscq/vpn/cloud/i0;->d:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/sgscq/vpn/cloud/i0;->e:Ljava/util/ArrayList;

    .line 1
    invoke-static {p6}, Lcom/sgscq/vpn/cloud/l0;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iput-object p1, p0, Lcom/sgscq/vpn/cloud/i0;->f:Ljava/lang/String;

    iput p7, p0, Lcom/sgscq/vpn/cloud/i0;->g:I

    iput-boolean p8, p0, Lcom/sgscq/vpn/cloud/i0;->h:Z

    iput-object p9, p0, Lcom/sgscq/vpn/cloud/i0;->i:Ljava/lang/String;

    iput-wide p10, p0, Lcom/sgscq/vpn/cloud/i0;->j:J

    iput-wide p12, p0, Lcom/sgscq/vpn/cloud/i0;->k:J

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/i0;
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "schema_version"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/sgscq/vpn/cloud/l0;->n(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x4

    .line 14
    if-lt v1, v2, :cond_12

    .line 15
    .line 16
    const/4 v2, 0x5

    .line 17
    if-gt v1, v2, :cond_12

    .line 18
    .line 19
    const-string v3, "environment"

    .line 20
    .line 21
    move-object/from16 v5, p0

    .line 22
    .line 23
    invoke-static {v0, v3, v5}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_12

    .line 28
    .line 29
    const-string v3, "pages"

    .line 30
    .line 31
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v3}, Lcom/sgscq/vpn/cloud/i0;->e(Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    if-lt v1, v2, :cond_0

    .line 40
    .line 41
    const-string v3, "overlay_pages"

    .line 42
    .line 43
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v3}, Lcom/sgscq/vpn/cloud/i0;->e(Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    :goto_0
    move-object v7, v3

    .line 57
    if-lt v1, v2, :cond_1

    .line 58
    .line 59
    const-string v1, "pending_overlay_pages"

    .line 60
    .line 61
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v1}, Lcom/sgscq/vpn/cloud/i0;->e(Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    :goto_1
    move-object v8, v1

    .line 75
    const-string v1, "ids"

    .line 76
    .line 77
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v1}, Lcom/sgscq/vpn/cloud/i0;->e(Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    const-string v1, "downloaded_count"

    .line 86
    .line 87
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v1}, Lcom/sgscq/vpn/cloud/l0;->n(Ljava/lang/Object;)I

    .line 92
    .line 93
    .line 94
    move-result v11

    .line 95
    const-string v1, "mode"

    .line 96
    .line 97
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v13

    .line 105
    const-string v1, "base_generation"

    .line 106
    .line 107
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    instance-of v2, v1, Ljava/lang/Number;

    .line 112
    .line 113
    const-wide/16 v3, -0x1

    .line 114
    .line 115
    if-nez v2, :cond_2

    .line 116
    .line 117
    move-wide v14, v3

    .line 118
    goto :goto_2

    .line 119
    :cond_2
    check-cast v1, Ljava/lang/Number;

    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 122
    .line 123
    .line 124
    move-result-wide v1

    .line 125
    move-wide v14, v1

    .line 126
    :goto_2
    const-string v1, "target_generation"

    .line 127
    .line 128
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    instance-of v2, v1, Ljava/lang/Number;

    .line 133
    .line 134
    if-nez v2, :cond_3

    .line 135
    .line 136
    move-wide/from16 v16, v3

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_3
    check-cast v1, Ljava/lang/Number;

    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 142
    .line 143
    .line 144
    move-result-wide v1

    .line 145
    move-wide/from16 v16, v1

    .line 146
    .line 147
    :goto_3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 148
    .line 149
    const-string v2, "complete"

    .line 150
    .line 151
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v12

    .line 159
    const-string v1, "next_cursor"

    .line 160
    .line 161
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    if-nez v2, :cond_4

    .line 166
    .line 167
    const-string v0, ""

    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_4
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    :goto_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/l0;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v10

    .line 182
    if-ltz v11, :cond_11

    .line 183
    .line 184
    new-instance v0, Ljava/util/HashSet;

    .line 185
    .line 186
    invoke-direct {v0, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-ne v0, v1, :cond_11

    .line 198
    .line 199
    if-eqz v12, :cond_5

    .line 200
    .line 201
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_11

    .line 206
    .line 207
    :cond_5
    const-string v0, "full"

    .line 208
    .line 209
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-nez v1, :cond_6

    .line 214
    .line 215
    const-string v1, "delta"

    .line 216
    .line 217
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-eqz v1, :cond_10

    .line 222
    .line 223
    :cond_6
    const-wide/16 v1, 0x0

    .line 224
    .line 225
    cmp-long v1, v14, v1

    .line 226
    .line 227
    if-ltz v1, :cond_10

    .line 228
    .line 229
    cmp-long v1, v16, v14

    .line 230
    .line 231
    if-ltz v1, :cond_10

    .line 232
    .line 233
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-eqz v1, :cond_8

    .line 238
    .line 239
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-ne v11, v1, :cond_7

    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 247
    .line 248
    const-string v1, "\u4e91\u7aef\u5bf9\u624b\u65ad\u70b9\u6570\u91cf\u65e0\u6548"

    .line 249
    .line 250
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw v0

    .line 254
    :cond_8
    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    const-string v3, "."

    .line 263
    .line 264
    if-eqz v2, :cond_a

    .line 265
    .line 266
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    check-cast v2, Ljava/lang/String;

    .line 271
    .line 272
    new-instance v4, Ljava/io/File;

    .line 273
    .line 274
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    if-eqz v2, :cond_9

    .line 278
    .line 279
    const-string v3, "page_[0-9]{5}\\.enc"

    .line 280
    .line 281
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 282
    .line 283
    .line 284
    move-result v3

    .line 285
    if-eqz v3, :cond_9

    .line 286
    .line 287
    new-instance v3, Ljava/io/File;

    .line 288
    .line 289
    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    goto :goto_6

    .line 293
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 294
    .line 295
    const-string v1, "\u4e91\u7aef\u5bf9\u624b\u5206\u5305\u540d\u79f0\u65e0\u6548"

    .line 296
    .line 297
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    throw v0

    .line 301
    :cond_a
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    if-eqz v2, :cond_b

    .line 310
    .line 311
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    check-cast v2, Ljava/lang/String;

    .line 316
    .line 317
    new-instance v4, Ljava/io/File;

    .line 318
    .line 319
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-static {v4, v2}, Lcom/sgscq/vpn/cloud/l0;->o(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 323
    .line 324
    .line 325
    goto :goto_7

    .line 326
    :cond_b
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 331
    .line 332
    .line 333
    move-result v2

    .line 334
    if-eqz v2, :cond_d

    .line 335
    .line 336
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    check-cast v2, Ljava/lang/String;

    .line 341
    .line 342
    const-string v3, "overlay_pending_[0-9]{5}\\.enc"

    .line 343
    .line 344
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    if-eqz v2, :cond_c

    .line 349
    .line 350
    goto :goto_8

    .line 351
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 352
    .line 353
    const-string v1, "\u4e91\u7aef\u5bf9\u624b\u589e\u91cf\u5206\u5305\u540d\u79f0\u65e0\u6548"

    .line 354
    .line 355
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    throw v0

    .line 359
    :cond_d
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    if-eqz v0, :cond_f

    .line 364
    .line 365
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    if-eqz v0, :cond_e

    .line 370
    .line 371
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    if-eqz v0, :cond_e

    .line 376
    .line 377
    goto :goto_9

    .line 378
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 379
    .line 380
    const-string v1, "\u4e91\u7aef\u5bf9\u624b\u5168\u91cf\u6e05\u5355\u65e0\u6548"

    .line 381
    .line 382
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    throw v0

    .line 386
    :cond_f
    :goto_9
    new-instance v0, Lcom/sgscq/vpn/cloud/i0;

    .line 387
    .line 388
    move-object v4, v0

    .line 389
    move-object/from16 v5, p0

    .line 390
    .line 391
    invoke-direct/range {v4 .. v17}, Lcom/sgscq/vpn/cloud/i0;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IZLjava/lang/String;JJ)V

    .line 392
    .line 393
    .line 394
    return-object v0

    .line 395
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 396
    .line 397
    const-string v1, "\u4e91\u7aef\u5bf9\u624b\u65ad\u70b9\u4ee3\u6b21\u65e0\u6548"

    .line 398
    .line 399
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    throw v0

    .line 403
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 404
    .line 405
    const-string v1, "\u4e91\u7aef\u5bf9\u624b\u65ad\u70b9\u6e05\u5355\u65e0\u6548"

    .line 406
    .line 407
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    throw v0

    .line 411
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 412
    .line 413
    const-string v1, "\u4e91\u7aef\u5bf9\u624b\u65ad\u70b9\u6e05\u5355\u73af\u5883\u65e0\u6548"

    .line 414
    .line 415
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    throw v0
.end method

.method public static c(JLjava/lang/String;)Lcom/sgscq/vpn/cloud/i0;
    .locals 15

    .line 1
    new-instance v14, Lcom/sgscq/vpn/cloud/i0;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "full"

    const-wide/16 v10, 0x0

    move-object v0, v14

    move-object/from16 v1, p2

    move-wide v12, p0

    invoke-direct/range {v0 .. v13}, Lcom/sgscq/vpn/cloud/i0;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IZLjava/lang/String;JJ)V

    return-object v14
.end method

.method public static e(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    instance-of v0, p0, Ljava/util/List;

    const-string v1, "\u4e91\u7aef\u5bf9\u624b\u65ad\u70b9\u6e05\u5355\u65e0\u6548"

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/sgscq/vpn/cloud/i0;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v3, Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/sgscq/vpn/cloud/i0;->b:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    move-object/from16 v1, p1

    .line 11
    .line 12
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    new-instance v6, Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v1, v0, Lcom/sgscq/vpn/cloud/i0;->e:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    move-object/from16 v1, p3

    .line 23
    .line 24
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 25
    .line 26
    .line 27
    invoke-static/range {p2 .. p2}, Lcom/sgscq/vpn/cloud/l0;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    new-instance v15, Lcom/sgscq/vpn/cloud/i0;

    .line 32
    .line 33
    iget-object v2, v0, Lcom/sgscq/vpn/cloud/i0;->a:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v4, v0, Lcom/sgscq/vpn/cloud/i0;->c:Ljava/util/ArrayList;

    .line 36
    .line 37
    iget-object v5, v0, Lcom/sgscq/vpn/cloud/i0;->d:Ljava/util/ArrayList;

    .line 38
    .line 39
    iget v8, v0, Lcom/sgscq/vpn/cloud/i0;->g:I

    .line 40
    .line 41
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    add-int/2addr v8, v1

    .line 46
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    iget-object v10, v0, Lcom/sgscq/vpn/cloud/i0;->i:Ljava/lang/String;

    .line 51
    .line 52
    iget-wide v11, v0, Lcom/sgscq/vpn/cloud/i0;->j:J

    .line 53
    .line 54
    iget-wide v13, v0, Lcom/sgscq/vpn/cloud/i0;->k:J

    .line 55
    .line 56
    move-object v1, v15

    .line 57
    invoke-direct/range {v1 .. v14}, Lcom/sgscq/vpn/cloud/i0;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IZLjava/lang/String;JJ)V

    .line 58
    .line 59
    .line 60
    return-object v15
.end method

.method public final d()Lcom/sgscq/vpn/cloud/k0;
    .locals 10

    .line 1
    new-instance v9, Lcom/sgscq/vpn/cloud/k0;

    iget-object v1, p0, Lcom/sgscq/vpn/cloud/i0;->f:Ljava/lang/String;

    iget v2, p0, Lcom/sgscq/vpn/cloud/i0;->g:I

    iget-boolean v3, p0, Lcom/sgscq/vpn/cloud/i0;->h:Z

    iget-object v4, p0, Lcom/sgscq/vpn/cloud/i0;->i:Ljava/lang/String;

    iget-wide v5, p0, Lcom/sgscq/vpn/cloud/i0;->j:J

    iget-wide v7, p0, Lcom/sgscq/vpn/cloud/i0;->k:J

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/sgscq/vpn/cloud/k0;-><init>(Ljava/lang/String;IZLjava/lang/String;JJ)V

    return-object v9
.end method

.method public final f(ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/sgscq/vpn/cloud/i0;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v5, Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/sgscq/vpn/cloud/i0;->d:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    move-object/from16 v1, p2

    .line 11
    .line 12
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    invoke-static/range {p3 .. p3}, Lcom/sgscq/vpn/cloud/l0;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    new-instance v15, Lcom/sgscq/vpn/cloud/i0;

    .line 20
    .line 21
    iget-object v2, v0, Lcom/sgscq/vpn/cloud/i0;->a:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v3, v0, Lcom/sgscq/vpn/cloud/i0;->b:Ljava/util/ArrayList;

    .line 24
    .line 25
    iget-object v4, v0, Lcom/sgscq/vpn/cloud/i0;->c:Ljava/util/ArrayList;

    .line 26
    .line 27
    iget v1, v0, Lcom/sgscq/vpn/cloud/i0;->g:I

    .line 28
    .line 29
    add-int v8, v1, p1

    .line 30
    .line 31
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v9

    .line 35
    iget-object v10, v0, Lcom/sgscq/vpn/cloud/i0;->i:Ljava/lang/String;

    .line 36
    .line 37
    iget-wide v11, v0, Lcom/sgscq/vpn/cloud/i0;->j:J

    .line 38
    .line 39
    iget-wide v13, v0, Lcom/sgscq/vpn/cloud/i0;->k:J

    .line 40
    .line 41
    move-object v1, v15

    .line 42
    move-object/from16 v6, p4

    .line 43
    .line 44
    invoke-direct/range {v1 .. v14}, Lcom/sgscq/vpn/cloud/i0;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IZLjava/lang/String;JJ)V

    .line 45
    .line 46
    .line 47
    return-object v15
.end method
