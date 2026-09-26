.class public final synthetic Ln/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ln/b;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 1
    iget v0, p0, Ln/b;->a:I

    .line 2
    .line 3
    const/16 v1, 0x3e7

    .line 4
    .line 5
    const-string v2, "pos"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const-string v4, "position"

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :pswitch_0
    check-cast p1, Ljava/util/Map;

    .line 16
    .line 17
    check-cast p2, Ljava/util/Map;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/sgscq/vpn/handler/z0;->i(Ljava/util/Map;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/sgscq/vpn/handler/z0;->y(Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {p2}, Lcom/sgscq/vpn/handler/z0;->i(Ljava/util/Map;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Lcom/sgscq/vpn/handler/z0;->y(Ljava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string v0, "pk_id"

    .line 43
    .line 44
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-static {p2}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    :goto_0
    return v0

    .line 65
    :pswitch_1
    check-cast p1, Ljava/util/Map;

    .line 66
    .line 67
    check-cast p2, Ljava/util/Map;

    .line 68
    .line 69
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {p1, v4, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p1}, Lcom/sgscq/vpn/handler/z0;->y(Ljava/lang/Object;)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-interface {p2, v4, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-static {p2}, Lcom/sgscq/vpn/handler/z0;->y(Ljava/lang/Object;)I

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    return p1

    .line 98
    :pswitch_2
    check-cast p1, Ljava/util/Map$Entry;

    .line 99
    .line 100
    check-cast p2, Ljava/util/Map$Entry;

    .line 101
    .line 102
    sget-object v0, Lcom/sgscq/vpn/handler/x0;->c:Ljava/util/List;

    .line 103
    .line 104
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    check-cast p2, Ljava/lang/Integer;

    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Ljava/lang/Integer;

    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    sub-int/2addr p2, p1

    .line 125
    return p2

    .line 126
    :pswitch_3
    check-cast p1, Ljava/util/Map;

    .line 127
    .line 128
    check-cast p2, Ljava/util/Map;

    .line 129
    .line 130
    invoke-static {p1}, Lcom/sgscq/vpn/handler/l0;->h(Ljava/util/Map;)I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    invoke-static {p2}, Lcom/sgscq/vpn/handler/l0;->h(Ljava/util/Map;)I

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    sub-int/2addr p1, p2

    .line 139
    return p1

    .line 140
    :pswitch_4
    check-cast p1, Ljava/util/Map;

    .line 141
    .line 142
    check-cast p2, Ljava/util/Map;

    .line 143
    .line 144
    invoke-static {v3, v2, p1}, Lcom/sgscq/vpn/cloud/m0;->n1(ILjava/lang/String;Ljava/util/Map;)I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    invoke-static {v0, v4, p1}, Lcom/sgscq/vpn/cloud/m0;->n1(ILjava/lang/String;Ljava/util/Map;)I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    invoke-static {v3, v2, p2}, Lcom/sgscq/vpn/cloud/m0;->n1(ILjava/lang/String;Ljava/util/Map;)I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    invoke-static {v0, v4, p2}, Lcom/sgscq/vpn/cloud/m0;->n1(ILjava/lang/String;Ljava/util/Map;)I

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    return p1

    .line 165
    :pswitch_5
    check-cast p1, Ljava/util/Map;

    .line 166
    .line 167
    check-cast p2, Ljava/util/Map;

    .line 168
    .line 169
    invoke-static {v3, v2, p1}, Lcom/sgscq/vpn/cloud/m0;->l1(ILjava/lang/String;Ljava/util/Map;)I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    invoke-static {v0, v4, p1}, Lcom/sgscq/vpn/cloud/m0;->l1(ILjava/lang/String;Ljava/util/Map;)I

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    invoke-static {v3, v2, p2}, Lcom/sgscq/vpn/cloud/m0;->l1(ILjava/lang/String;Ljava/util/Map;)I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    invoke-static {v0, v4, p2}, Lcom/sgscq/vpn/cloud/m0;->l1(ILjava/lang/String;Ljava/util/Map;)I

    .line 182
    .line 183
    .line 184
    move-result p2

    .line 185
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    return p1

    .line 190
    :pswitch_6
    check-cast p1, Ljava/util/Map;

    .line 191
    .line 192
    check-cast p2, Ljava/util/Map;

    .line 193
    .line 194
    invoke-static {p1, v4, v3}, Lc/a;->e(Ljava/util/Map;Ljava/lang/String;I)I

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    invoke-static {p2, v3}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 207
    .line 208
    .line 209
    move-result p2

    .line 210
    sub-int/2addr p1, p2

    .line 211
    return p1

    .line 212
    :pswitch_7
    check-cast p1, Lcom/sgscq/vpn/v5;

    .line 213
    .line 214
    check-cast p2, Lcom/sgscq/vpn/v5;

    .line 215
    .line 216
    sget-object v0, Lcom/sgscq/vpn/p7;->t:Ljava/util/HashMap;

    .line 217
    .line 218
    iget p2, p2, Lcom/sgscq/vpn/v5;->d:I

    .line 219
    .line 220
    iget p1, p1, Lcom/sgscq/vpn/v5;->d:I

    .line 221
    .line 222
    invoke-static {p2, p1}, Ljava/lang/Integer;->compare(II)I

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    return p1

    .line 227
    :pswitch_8
    check-cast p1, Ljava/util/Map;

    .line 228
    .line 229
    check-cast p2, Ljava/util/Map;

    .line 230
    .line 231
    sget-object v0, Lcom/sgscq/vpn/v5;->x:Ljava/util/concurrent/ConcurrentHashMap;

    .line 232
    .line 233
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-static {p1, v1}, Lcom/sgscq/vpn/v5;->l(Ljava/lang/Object;I)I

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    invoke-static {p2, v1}, Lcom/sgscq/vpn/v5;->l(Ljava/lang/Object;I)I

    .line 246
    .line 247
    .line 248
    move-result p2

    .line 249
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    return p1

    .line 254
    :pswitch_9
    check-cast p1, Ljava/util/Map;

    .line 255
    .line 256
    check-cast p2, Ljava/util/Map;

    .line 257
    .line 258
    sget-object v0, Lcom/sgscq/vpn/v5;->x:Ljava/util/concurrent/ConcurrentHashMap;

    .line 259
    .line 260
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    const-string v2, "general_position"

    .line 265
    .line 266
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    invoke-static {p1, v1}, Lcom/sgscq/vpn/v5;->l(Ljava/lang/Object;I)I

    .line 271
    .line 272
    .line 273
    move-result p1

    .line 274
    invoke-static {v0, p1}, Lcom/sgscq/vpn/v5;->l(Ljava/lang/Object;I)I

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object p2

    .line 286
    invoke-static {p2, v1}, Lcom/sgscq/vpn/v5;->l(Ljava/lang/Object;I)I

    .line 287
    .line 288
    .line 289
    move-result p2

    .line 290
    invoke-static {v0, p2}, Lcom/sgscq/vpn/v5;->l(Ljava/lang/Object;I)I

    .line 291
    .line 292
    .line 293
    move-result p2

    .line 294
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 295
    .line 296
    .line 297
    move-result p1

    .line 298
    return p1

    .line 299
    :pswitch_a
    check-cast p1, Lcom/sgscq/vpn/v5;

    .line 300
    .line 301
    check-cast p2, Lcom/sgscq/vpn/v5;

    .line 302
    .line 303
    sget-object v0, Lcom/sgscq/vpn/t5;->k:[Ljava/lang/String;

    .line 304
    .line 305
    iget v0, p2, Lcom/sgscq/vpn/v5;->d:I

    .line 306
    .line 307
    iget v1, p1, Lcom/sgscq/vpn/v5;->d:I

    .line 308
    .line 309
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-eqz v0, :cond_1

    .line 314
    .line 315
    goto :goto_1

    .line 316
    :cond_1
    iget-object p1, p1, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 317
    .line 318
    iget-object p2, p2, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 319
    .line 320
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    :goto_1
    return v0

    .line 325
    :pswitch_b
    check-cast p1, Lcom/sgscq/vpn/k5;

    .line 326
    .line 327
    check-cast p2, Lcom/sgscq/vpn/k5;

    .line 328
    .line 329
    iget-wide v0, p2, Lcom/sgscq/vpn/k5;->c:D

    .line 330
    .line 331
    iget-wide v2, p1, Lcom/sgscq/vpn/k5;->c:D

    .line 332
    .line 333
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    if-eqz v0, :cond_2

    .line 338
    .line 339
    goto :goto_2

    .line 340
    :cond_2
    iget-object v0, p2, Lcom/sgscq/vpn/k5;->b:Ljava/util/List;

    .line 341
    .line 342
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    iget-object v1, p1, Lcom/sgscq/vpn/k5;->b:Ljava/util/List;

    .line 347
    .line 348
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    if-eqz v0, :cond_3

    .line 357
    .line 358
    goto :goto_2

    .line 359
    :cond_3
    iget-object p1, p1, Lcom/sgscq/vpn/k5;->a:Ljava/lang/String;

    .line 360
    .line 361
    iget-object p2, p2, Lcom/sgscq/vpn/k5;->a:Ljava/lang/String;

    .line 362
    .line 363
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    :goto_2
    return v0

    .line 368
    :pswitch_c
    check-cast p1, Lcom/sgscq/vpn/i5;

    .line 369
    .line 370
    check-cast p2, Lcom/sgscq/vpn/i5;

    .line 371
    .line 372
    iget-object p1, p1, Lcom/sgscq/vpn/i5;->a:Ljava/lang/String;

    .line 373
    .line 374
    iget-object p2, p2, Lcom/sgscq/vpn/i5;->a:Ljava/lang/String;

    .line 375
    .line 376
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 377
    .line 378
    .line 379
    move-result p1

    .line 380
    return p1

    .line 381
    :pswitch_d
    check-cast p1, Lcom/sgscq/vpn/k4;

    .line 382
    .line 383
    check-cast p2, Lcom/sgscq/vpn/k4;

    .line 384
    .line 385
    iget-wide v0, p2, Lcom/sgscq/vpn/k4;->d:J

    .line 386
    .line 387
    iget-wide p1, p1, Lcom/sgscq/vpn/k4;->d:J

    .line 388
    .line 389
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    .line 390
    .line 391
    .line 392
    move-result p1

    .line 393
    return p1

    .line 394
    :pswitch_e
    check-cast p1, Ljava/util/Map;

    .line 395
    .line 396
    check-cast p2, Ljava/util/Map;

    .line 397
    .line 398
    invoke-static {p2}, Lcom/sgscq/vpn/y2;->H0(Ljava/util/Map;)I

    .line 399
    .line 400
    .line 401
    move-result p2

    .line 402
    invoke-static {p1}, Lcom/sgscq/vpn/y2;->H0(Ljava/util/Map;)I

    .line 403
    .line 404
    .line 405
    move-result p1

    .line 406
    invoke-static {p2, p1}, Ljava/lang/Integer;->compare(II)I

    .line 407
    .line 408
    .line 409
    move-result p1

    .line 410
    return p1

    .line 411
    :pswitch_f
    invoke-static {p1, p2}, Lcom/sgscq/battle/api/BattleCanonicalJson;->b(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 412
    .line 413
    .line 414
    move-result p1

    .line 415
    return p1

    .line 416
    :goto_3
    check-cast p1, Ljava/util/Map;

    .line 417
    .line 418
    check-cast p2, Ljava/util/Map;

    .line 419
    .line 420
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object p1

    .line 424
    invoke-static {p1}, Lcom/sgscq/vpn/handler/z0;->y(Ljava/lang/Object;)I

    .line 425
    .line 426
    .line 427
    move-result p1

    .line 428
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object p2

    .line 432
    invoke-static {p2}, Lcom/sgscq/vpn/handler/z0;->y(Ljava/lang/Object;)I

    .line 433
    .line 434
    .line 435
    move-result p2

    .line 436
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 437
    .line 438
    .line 439
    move-result p1

    .line 440
    return p1

    .line 441
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
