.class public final synthetic Lcom/sgscq/vpn/f2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(ILandroid/content/Context;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sgscq/vpn/f2;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/sgscq/vpn/f2;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a([B)Lm/e;
    .locals 13

    .line 1
    sget-object v0, Lcom/sgscq/vpn/e2;->a:[B

    .line 2
    .line 3
    iget-object v0, p0, Lcom/sgscq/vpn/f2;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/sgscq/vpn/a2;->a(Landroid/content/Context;)[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz p1, :cond_d

    .line 10
    .line 11
    array-length v1, p1

    .line 12
    const/16 v2, 0x1c

    .line 13
    .line 14
    if-le v1, v2, :cond_d

    .line 15
    .line 16
    array-length v1, p1

    .line 17
    const/high16 v2, 0x200000

    .line 18
    .line 19
    if-gt v1, v2, :cond_d

    .line 20
    .line 21
    const/16 v1, 0xc

    .line 22
    .line 23
    new-array v2, v1, [B

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static {p1, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    .line 28
    .line 29
    array-length v4, p1

    .line 30
    sub-int/2addr v4, v1

    .line 31
    new-array v5, v4, [B

    .line 32
    .line 33
    invoke-static {p1, v1, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    const-string p1, "AES/GCM/NoPadding"

    .line 37
    .line 38
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 43
    .line 44
    sget-object v4, Lcom/sgscq/vpn/a2;->b:[B

    .line 45
    .line 46
    invoke-static {v0, v4}, Lcom/sgscq/vpn/a2;->b([B[B)[B

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v4, "AES"

    .line 51
    .line 52
    invoke-direct {v1, v0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    .line 56
    .line 57
    const/16 v4, 0x80

    .line 58
    .line 59
    invoke-direct {v0, v4, v2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 60
    .line 61
    .line 62
    const/4 v2, 0x2

    .line 63
    invoke-virtual {p1, v2, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 64
    .line 65
    .line 66
    sget-object v0, Lcom/sgscq/vpn/e2;->a:[B

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    new-instance v0, Ljava/util/HashMap;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 78
    .line 79
    .line 80
    new-instance v1, Ljava/util/HashSet;

    .line 81
    .line 82
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v4, "limited_shop_config.json"

    .line 86
    .line 87
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    const-string v5, "manifest.json"

    .line 91
    .line 92
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    new-instance v6, Ljava/util/zip/ZipInputStream;

    .line 96
    .line 97
    new-instance v7, Ljava/io/ByteArrayInputStream;

    .line 98
    .line 99
    invoke-direct {v7, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 100
    .line 101
    .line 102
    invoke-direct {v6, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 103
    .line 104
    .line 105
    :goto_0
    :try_start_0
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 106
    .line 107
    .line 108
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    const-string v7, "encrypted package entries are invalid"

    .line 110
    .line 111
    if-eqz p1, :cond_4

    .line 112
    .line 113
    :try_start_1
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-nez p1, :cond_3

    .line 122
    .line 123
    invoke-virtual {v1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_3

    .line 128
    .line 129
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-nez p1, :cond_3

    .line 134
    .line 135
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_0

    .line 140
    .line 141
    const/high16 p1, 0x100000

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_0
    const/high16 p1, 0x10000

    .line 145
    .line 146
    :goto_1
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    .line 147
    .line 148
    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 149
    .line 150
    .line 151
    const/16 v9, 0x1000

    .line 152
    .line 153
    new-array v9, v9, [B

    .line 154
    .line 155
    move v10, v3

    .line 156
    :goto_2
    invoke-virtual {v6, v9}, Ljava/io/InputStream;->read([B)I

    .line 157
    .line 158
    .line 159
    move-result v11

    .line 160
    const/4 v12, -0x1

    .line 161
    if-eq v11, v12, :cond_2

    .line 162
    .line 163
    add-int/2addr v10, v11

    .line 164
    if-gt v10, p1, :cond_1

    .line 165
    .line 166
    invoke-virtual {v7, v9, v3, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 171
    .line 172
    const-string v0, "encrypted package entry size is invalid"

    .line 173
    .line 174
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p1

    .line 178
    :cond_2
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {v0, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 186
    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 190
    .line 191
    invoke-direct {p1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    :cond_4
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-ne p1, v2, :cond_c

    .line 203
    .line 204
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    if-eqz p1, :cond_c

    .line 209
    .line 210
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-eqz p1, :cond_c

    .line 215
    .line 216
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    check-cast p1, [B

    .line 221
    .line 222
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, [B

    .line 227
    .line 228
    :try_start_2
    new-instance v1, Ljava/lang/String;

    .line 229
    .line 230
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 231
    .line 232
    invoke-direct {v1, v0, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 233
    .line 234
    .line 235
    invoke-static {v1}, La/w;->r(Ljava/lang/String;)La/q;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0}, La/q;->f()La/t;

    .line 240
    .line 241
    .line 242
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 243
    const-string v1, "format_version"

    .line 244
    .line 245
    invoke-static {v0, v1}, Lcom/sgscq/vpn/e2;->a(La/t;Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    const/4 v5, 0x1

    .line 250
    if-ne v1, v5, :cond_b

    .line 251
    .line 252
    const-string v1, "published_at"

    .line 253
    .line 254
    invoke-static {v0, v1}, Lcom/sgscq/vpn/e2;->b(La/t;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    const-string v5, "published_date"

    .line 259
    .line 260
    invoke-static {v0, v5}, Lcom/sgscq/vpn/e2;->b(La/t;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    const-string v6, "source_name"

    .line 265
    .line 266
    invoke-static {v0, v6}, Lcom/sgscq/vpn/e2;->b(La/t;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v6

    .line 270
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v4

    .line 274
    if-eqz v4, :cond_a

    .line 275
    .line 276
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 277
    .line 278
    const-string v6, "yyyy-MM-dd\'T\'HH:mm:ssXXX"

    .line 279
    .line 280
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 281
    .line 282
    invoke-direct {v4, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v4, v3}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 286
    .line 287
    .line 288
    :try_start_3
    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_0

    .line 289
    .line 290
    .line 291
    const-string v4, "T"

    .line 292
    .line 293
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    if-eqz v4, :cond_9

    .line 302
    .line 303
    new-instance v4, Lcom/sgscq/vpn/d2;

    .line 304
    .line 305
    const-string v5, "config_schema_version"

    .line 306
    .line 307
    invoke-static {v0, v5}, Lcom/sgscq/vpn/e2;->a(La/t;Ljava/lang/String;)I

    .line 308
    .line 309
    .line 310
    move-result v5

    .line 311
    const-string v6, "config_id"

    .line 312
    .line 313
    invoke-static {v0, v6}, Lcom/sgscq/vpn/e2;->b(La/t;Ljava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    const-string v7, "config_sha256"

    .line 318
    .line 319
    invoke-static {v0, v7}, Lcom/sgscq/vpn/e2;->b(La/t;Ljava/lang/String;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-direct {v4, v1, v5, v6, v0}, Lcom/sgscq/vpn/d2;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    const-string v0, "SHA-256"

    .line 327
    .line 328
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    .line 337
    .line 338
    array-length v5, v0

    .line 339
    mul-int/2addr v5, v2

    .line 340
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 341
    .line 342
    .line 343
    array-length v2, v0

    .line 344
    :goto_3
    if-ge v3, v2, :cond_5

    .line 345
    .line 346
    aget-byte v5, v0, v3

    .line 347
    .line 348
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 349
    .line 350
    and-int/lit16 v5, v5, 0xff

    .line 351
    .line 352
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 353
    .line 354
    .line 355
    move-result-object v5

    .line 356
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v5

    .line 360
    const-string v7, "%02x"

    .line 361
    .line 362
    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v5

    .line 366
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    add-int/lit8 v3, v3, 0x1

    .line 370
    .line 371
    goto :goto_3

    .line 372
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    iget-object v1, v4, Lcom/sgscq/vpn/d2;->d:Ljava/lang/String;

    .line 377
    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    if-eqz v0, :cond_8

    .line 383
    .line 384
    new-instance v0, Lcom/sgscq/vpn/config/j;

    .line 385
    .line 386
    invoke-direct {v0}, Lcom/sgscq/vpn/config/j;-><init>()V

    .line 387
    .line 388
    .line 389
    new-instance v1, Ljava/lang/String;

    .line 390
    .line 391
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 392
    .line 393
    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/config/j;->e(Ljava/lang/String;)Lcom/sgscq/vpn/config/i;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    iget v1, v4, Lcom/sgscq/vpn/d2;->b:I

    .line 401
    .line 402
    iget v2, v0, Lcom/sgscq/vpn/config/i;->a:I

    .line 403
    .line 404
    if-ne v1, v2, :cond_7

    .line 405
    .line 406
    iget-object v1, v4, Lcom/sgscq/vpn/d2;->c:Ljava/lang/String;

    .line 407
    .line 408
    iget-object v2, v0, Lcom/sgscq/vpn/config/i;->b:Ljava/lang/String;

    .line 409
    .line 410
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    if-eqz v1, :cond_6

    .line 415
    .line 416
    new-instance v1, Lm/e;

    .line 417
    .line 418
    invoke-direct {v1, v4, v0, p1}, Lm/e;-><init>(Lcom/sgscq/vpn/d2;Lcom/sgscq/vpn/config/i;[B)V

    .line 419
    .line 420
    .line 421
    return-object v1

    .line 422
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 423
    .line 424
    const-string v0, "manifest config_id mismatch"

    .line 425
    .line 426
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    throw p1

    .line 430
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 431
    .line 432
    const-string v0, "manifest config_schema_version mismatch"

    .line 433
    .line 434
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    throw p1

    .line 438
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 439
    .line 440
    const-string v0, "manifest config_sha256 mismatch"

    .line 441
    .line 442
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    throw p1

    .line 446
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 447
    .line 448
    const-string v0, "manifest published_date mismatch"

    .line 449
    .line 450
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    throw p1

    .line 454
    :catch_0
    move-exception p1

    .line 455
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 456
    .line 457
    const-string v1, "manifest published_at is invalid"

    .line 458
    .line 459
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    .line 461
    .line 462
    throw v0

    .line 463
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 464
    .line 465
    const-string v0, "manifest source_name is invalid"

    .line 466
    .line 467
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    throw p1

    .line 471
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 472
    .line 473
    const-string v0, "manifest format_version is invalid"

    .line 474
    .line 475
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    throw p1

    .line 479
    :catch_1
    move-exception p1

    .line 480
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 481
    .line 482
    const-string v1, "manifest JSON is invalid"

    .line 483
    .line 484
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 485
    .line 486
    .line 487
    throw v0

    .line 488
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 489
    .line 490
    invoke-direct {p1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    throw p1

    .line 494
    :catchall_0
    move-exception p1

    .line 495
    :try_start_4
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 496
    .line 497
    .line 498
    goto :goto_4

    .line 499
    :catchall_1
    move-exception v0

    .line 500
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 501
    .line 502
    .line 503
    :goto_4
    throw p1

    .line 504
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 505
    .line 506
    const-string v0, "encrypted package size is invalid"

    .line 507
    .line 508
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    throw p1
.end method

.method public final b()Lcom/sgscq/vpn/e0;
    .locals 42

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/sgscq/vpn/f2;->b:Landroid/content/Context;

    sget-object v2, Lo/j;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1
    new-instance v2, Lo/a;

    invoke-direct {v2, v0}, Lo/a;-><init>(Landroid/content/Context;)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_20

    iget-object v0, v2, Lo/a;->c:Lo/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {}, Lo/c;->b()Ljava/security/KeyPair;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 4
    iget-object v3, v2, Lo/a;->c:Lo/c;

    .line 5
    iget-object v3, v3, Lo/c;->a:Ljava/lang/Object;

    .line 6
    check-cast v3, Landroid/content/Context;

    const-string v4, "sgscq_battle_runtime"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "install_id"

    const-string v7, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v8, v2, Lo/a;->a:Landroid/content/Context;

    invoke-virtual {v8, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    iget-object v5, v2, Lo/a;->b:Lcom/sgscq/vpn/cloud/z;

    invoke-virtual {v5}, Lcom/sgscq/vpn/cloud/z;->T()Lcom/sgscq/vpn/cloud/e;

    move-result-object v5

    invoke-virtual {v2, v5, v3, v0}, Lo/a;->c(Lcom/sgscq/vpn/cloud/e;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v2, Lo/a;->b:Lcom/sgscq/vpn/cloud/z;

    iget v10, v5, Lcom/sgscq/vpn/cloud/e;->c:I

    iget-object v5, v5, Lcom/sgscq/vpn/cloud/e;->a:Ljava/lang/String;

    const/4 v11, 0x2

    .line 8
    invoke-static {v0, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v11

    .line 9
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v13, "environment"

    const-string v14, "release"

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v12, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v22, 0x17

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v1, "version_code"

    invoke-interface {v12, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v15, "challenge_id"

    invoke-interface {v12, v15, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "nonce"

    invoke-interface {v12, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "public_key_der"

    invoke-interface {v12, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "signature"

    invoke-interface {v12, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "/battle-runtime/register-device"

    const-string v11, "POST"

    invoke-virtual {v9, v11, v8, v12}, Lcom/sgscq/vpn/cloud/z;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    move-result-object v8

    const-string v9, "device_key_id"

    const/4 v12, 0x0

    invoke-static {v8, v9, v12}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    move-result v8

    if-lez v8, :cond_1f

    .line 11
    iget-object v12, v2, Lo/a;->c:Lo/c;

    if-lez v8, :cond_1d

    .line 12
    iget-object v12, v12, Lo/c;->a:Ljava/lang/Object;

    .line 13
    check-cast v12, Landroid/content/Context;

    move-object/from16 v16, v15

    const/4 v15, 0x0

    invoke-virtual {v12, v4, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v9, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 14
    iget-object v4, v2, Lo/a;->b:Lcom/sgscq/vpn/cloud/z;

    invoke-virtual {v4}, Lcom/sgscq/vpn/cloud/z;->T()Lcom/sgscq/vpn/cloud/e;

    move-result-object v4

    invoke-virtual {v2, v4, v3, v0}, Lo/a;->c(Lcom/sgscq/vpn/cloud/e;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v15

    iget-object v15, v2, Lo/a;->b:Lcom/sgscq/vpn/cloud/z;

    move-object/from16 v23, v2

    iget v2, v4, Lcom/sgscq/vpn/cloud/e;->c:I

    iget-object v4, v4, Lcom/sgscq/vpn/cloud/e;->a:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v18, v15

    .line 15
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v15, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v15, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v24, v3

    move-object/from16 v25, v13

    move-object/from16 v26, v15

    move-object/from16 v6, v16

    move-object/from16 v3, v17

    move-object/from16 v13, v18

    move/from16 v15, v22

    move-object/from16 v16, v26

    move-object/from16 v17, v1

    move/from16 v18, v8

    move-object/from16 v19, v9

    move/from16 v20, v2

    move-object/from16 v21, v6

    .line 16
    invoke-static/range {v15 .. v21}, Lc/a;->s(ILjava/util/LinkedHashMap;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    const-string v2, "process_instance_id"

    move-object/from16 v9, v26

    .line 17
    invoke-interface {v9, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v9, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v9, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "1.0.1.14067"

    const-string v4, "build_id"

    const/4 v10, 0x1

    const-string v12, "offline_capability"

    .line 18
    invoke-static {v9, v4, v3, v10, v12}, Lcom/sgscq/vpn/handler/l;->b(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    iget-object v3, v13, Lcom/sgscq/vpn/cloud/z;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/sgscq/vpn/cloud/m0;->G2(Landroid/content/Context;)[B

    move-result-object v3

    .line 20
    new-instance v10, Ljava/lang/StringBuilder;

    array-length v12, v3

    mul-int/lit8 v12, v12, 0x2

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v12, v3

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v12, :cond_1

    move/from16 v16, v12

    aget-byte v12, v3, v15

    move-object/from16 v17, v3

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    and-int/lit16 v12, v12, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v18, v6

    const-string v6, "%02x"

    invoke-static {v3, v6, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    move/from16 v12, v16

    move-object/from16 v3, v17

    move-object/from16 v6, v18

    goto :goto_0

    :cond_1
    move-object/from16 v18, v6

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "apk_signature_sha256"

    .line 21
    invoke-interface {v9, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "/battle-runtime/authorize"

    invoke-virtual {v13, v11, v3, v9}, Lcom/sgscq/vpn/cloud/z;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-static {v3}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    move-result-object v3

    const-string v6, "lease_id"

    const-wide/16 v9, 0x0

    invoke-static {v3, v6, v9, v10}, Lcom/sgscq/vpn/cloud/z;->u(La/t;Ljava/lang/String;J)J

    move-result-wide v12

    invoke-static {v3, v2, v7}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "expires_at"

    invoke-static {v3, v6, v9, v10}, Lcom/sgscq/vpn/cloud/z;->u(La/t;Ljava/lang/String;J)J

    move-result-wide v15

    const-string v6, "server_time_ms"

    invoke-static {v3, v6, v9, v10}, Lcom/sgscq/vpn/cloud/z;->u(La/t;Ljava/lang/String;J)J

    move-result-wide v9

    invoke-static {v3, v4, v7}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "modules"

    invoke-virtual {v3, v6}, La/t;->o(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v17, v11

    invoke-virtual {v3, v6}, La/t;->m(Ljava/lang/String;)La/q;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    instance-of v11, v11, La/p;

    if-eqz v11, :cond_3

    .line 24
    invoke-virtual {v3, v6}, La/t;->n(Ljava/lang/String;)La/p;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object/from16 v17, v11

    :cond_3
    new-instance v6, La/p;

    invoke-direct {v6}, La/p;-><init>()V

    :goto_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, La/p;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v6

    move-object/from16 v6, v19

    check-cast v6, La/q;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v19, v8

    .line 25
    instance-of v8, v6, La/t;

    if-nez v8, :cond_4

    move-object/from16 v21, v1

    goto :goto_3

    .line 26
    :cond_4
    invoke-virtual {v6}, La/q;->f()La/t;

    move-result-object v6

    const-string v8, "wrapped_content_key"

    invoke-static {v6, v8, v7}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sgscq/vpn/cloud/z;->l(Ljava/lang/String;)[B

    move-result-object v8

    move-object/from16 v21, v1

    array-length v1, v8

    if-nez v1, :cond_5

    :goto_3
    move-object/from16 v33, v14

    goto :goto_4

    :cond_5
    new-instance v1, Lcom/sgscq/vpn/cloud/f;

    move-object/from16 v33, v14

    const-string v14, "module_type"

    invoke-static {v6, v14, v7}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v14, "abi"

    invoke-static {v6, v14, v7}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v14, "ciphertext_sha256"

    invoke-static {v6, v14, v7}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v14, "plaintext_sha256"

    invoke-static {v6, v14, v7}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v14, "manifest_sha256"

    invoke-static {v6, v14, v7}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v14, "key_wrap"

    invoke-static {v6, v14, v7}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v26, v1

    move-object/from16 v32, v8

    invoke-direct/range {v26 .. v32}, Lcom/sgscq/vpn/cloud/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    move/from16 v8, v19

    move-object/from16 v6, v20

    move-object/from16 v1, v21

    move-object/from16 v14, v33

    goto :goto_2

    :cond_6
    move-object/from16 v21, v1

    move/from16 v19, v8

    move-object/from16 v33, v14

    const-wide/16 v26, 0x0

    cmp-long v1, v12, v26

    if-lez v1, :cond_1c

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    cmp-long v1, v15, v26

    if-lez v1, :cond_1c

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "offline_permit"

    invoke-virtual {v3, v1}, La/t;->o(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v3, v1}, La/t;->m(Ljava/lang/String;)La/q;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    instance-of v6, v6, La/t;

    if-eqz v6, :cond_8

    .line 28
    iget-object v3, v3, La/t;->a:Lc/s;

    invoke-virtual {v3, v1}, Lc/s;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/t;

    const-string v3, "payload"

    .line 29
    invoke-static {v1, v3, v7}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sgscq/vpn/cloud/z;->l(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v1, v5, v7}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sgscq/vpn/cloud/z;->l(Ljava/lang/String;)[B

    move-result-object v5

    const-string v6, "algorithm"

    invoke-static {v1, v6, v7}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    array-length v6, v3

    if-eqz v6, :cond_7

    array-length v6, v5

    if-eqz v6, :cond_7

    const-wide/16 v6, 0x0

    cmp-long v6, v9, v6

    if-lez v6, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v4, Lm/e;

    invoke-direct {v4, v1, v3, v5}, Lm/e;-><init>(Ljava/lang/String;[B[B)V

    goto :goto_5

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u6218\u6597\u79bb\u7ebf\u8bb8\u53ef\u54cd\u5e94\u4e0d\u5b8c\u6574"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v4, 0x0

    .line 30
    :goto_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 31
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sgscq/vpn/cloud/z;->e:Ljava/lang/String;

    .line 32
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "authorization modules="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " permit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_9

    const/4 v3, 0x1

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BattleRuntime"

    invoke-static {v3, v2}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x0

    :cond_a
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "native"

    if-eqz v6, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sgscq/vpn/cloud/f;

    iget-object v8, v6, Lcom/sgscq/vpn/cloud/f;->a:Ljava/lang/String;

    const-string v11, "dex"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    move-object v5, v6

    :cond_b
    iget-object v8, v6, Lcom/sgscq/vpn/cloud/f;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, v6, Lcom/sgscq/vpn/cloud/f;->b:Ljava/lang/String;

    iget-object v6, v6, Lcom/sgscq/vpn/cloud/f;->c:Ljava/lang/String;

    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_c
    if-eqz v5, :cond_1b

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    move-object/from16 v1, v23

    iget-object v11, v1, Lo/a;->b:Lcom/sgscq/vpn/cloud/z;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v13, "/battle-runtime/module/dex/all"

    const-string v12, "GET"

    const-string v15, "application/octet-stream"

    .line 34
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    sget-object v8, Lcom/sgscq/vpn/cloud/z;->e:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "X-SGSCQ-Process-Instance"

    sget-object v14, Lcom/sgscq/vpn/cloud/z;->e:Ljava/lang/String;

    invoke-interface {v6, v8, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    const/4 v8, 0x0

    move-object v14, v8

    move-object/from16 v16, v6

    .line 35
    invoke-virtual/range {v11 .. v16}, Lcom/sgscq/vpn/cloud/z;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    move-result-object v6

    iget-object v6, v6, Lcom/sgscq/vpn/cloud/t;->a:[B

    .line 36
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "dex download bytes="

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v11, v6

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v5, Lcom/sgscq/vpn/cloud/f;->c:Ljava/lang/String;

    invoke-static {v6}, Lo/e;->c([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v8, v1, Lo/a;->c:Lo/c;

    iget-object v11, v5, Lcom/sgscq/vpn/cloud/f;->f:[B

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lo/c;->a([B)[B

    move-result-object v8

    new-instance v11, La/t;

    invoke-direct {v11}, La/t;-><init>()V

    const-string v12, "schema"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, La/t;->k(Ljava/lang/String;Ljava/lang/Number;)V

    move-object/from16 v12, v25

    move-object/from16 v13, v33

    invoke-virtual {v11, v12, v13}, La/t;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v13, v21

    invoke-virtual {v11, v13, v12}, La/t;->k(Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v12, v5, Lcom/sgscq/vpn/cloud/f;->d:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_19

    const-string v12, "dex_sha256"

    iget-object v13, v5, Lcom/sgscq/vpn/cloud/f;->d:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, La/t;->l(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, La/t;

    invoke-direct {v12}, La/t;-><init>()V

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v14, v13}, La/t;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_e
    invoke-virtual {v11, v7, v12}, La/t;->j(Ljava/lang/String;La/q;)V

    const-string v2, "api_version"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v2, v12}, La/t;->k(Ljava/lang/String;Ljava/lang/Number;)V

    new-instance v2, La/o;

    invoke-direct {v2}, La/o;-><init>()V

    invoke-virtual {v2, v11}, La/o;->h(La/q;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sgscq/vpn/battle/runtime/BattleModuleManifest;->parse(Ljava/lang/String;)Lcom/sgscq/vpn/battle/runtime/BattleModuleManifest;

    move-result-object v2

    iget-object v11, v1, Lo/a;->a:Landroid/content/Context;

    invoke-static {v11, v2, v6, v8}, Lcom/sgscq/vpn/battle/runtime/BattleRuntimeLoader;->loadVerified(Landroid/content/Context;Lcom/sgscq/vpn/battle/runtime/BattleModuleManifest;[B[B)Lo/h;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "dex loader status="

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lo/h;->status()Lcom/sgscq/battle/api/BattleRuntimeStatus;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lo/h;->status()Lcom/sgscq/battle/api/BattleRuntimeStatus;

    move-result-object v8

    sget-object v11, Lcom/sgscq/battle/api/BattleRuntimeStatus;->READY:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    if-ne v8, v11, :cond_18

    if-nez v4, :cond_f

    const/4 v0, 0x0

    :goto_9
    move-object v4, v0

    goto/16 :goto_a

    .line 37
    :cond_f
    iget-object v8, v4, Lm/e;->d:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    const-string v11, "ECDSA-P256-SHA256"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    new-instance v8, Lm/e;

    iget-object v11, v1, Lo/a;->a:Landroid/content/Context;

    const/4 v12, 0x5

    invoke-direct {v8, v12, v11}, Lm/e;-><init>(ILandroid/content/Context;)V

    invoke-virtual {v8}, Lm/e;->y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    move-result-object v8

    invoke-static {v11}, Lcom/sgscq/vpn/cloud/m0;->G2(Landroid/content/Context;)[B

    move-result-object v12

    new-instance v13, Lo/d;

    iget-object v8, v8, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-static {v8}, Lo/e;->c([B)Ljava/lang/String;

    move-result-object v26

    move/from16 v8, v19

    int-to-long v14, v8

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v7, v24

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-static {v7}, Lo/e;->c([B)Ljava/lang/String;

    move-result-object v29

    invoke-static {v0}, Lo/e;->c([B)Ljava/lang/String;

    move-result-object v30

    invoke-static {v12}, Lo/a;->a([B)Ljava/lang/String;

    move-result-object v31

    iget-object v0, v5, Lcom/sgscq/vpn/cloud/f;->c:Ljava/lang/String;

    iget-object v7, v5, Lcom/sgscq/vpn/cloud/f;->d:Ljava/lang/String;

    iget-object v8, v5, Lcom/sgscq/vpn/cloud/f;->e:Ljava/lang/String;

    iget-object v12, v5, Lcom/sgscq/vpn/cloud/f;->f:[B

    invoke-static {v12}, Lo/e;->c([B)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v25, v13

    move-wide/from16 v27, v14

    move-object/from16 v32, v0

    move-object/from16 v33, v7

    move-object/from16 v34, v8

    invoke-direct/range {v25 .. v35}, Lo/d;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v4, Lm/e;->b:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, [B

    iget-object v0, v4, Lm/e;->c:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, [B

    invoke-static {v11}, Lo/a;->b(Landroid/content/Context;)[B

    move-result-object v28

    move-object/from16 v26, v37

    move-object/from16 v27, v38

    move-object/from16 v29, v13

    move-wide/from16 v30, v9

    invoke-static/range {v26 .. v31}, Lo/e;->e([B[B[BLo/d;J)Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;

    new-instance v0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;

    iget-object v4, v5, Lcom/sgscq/vpn/cloud/f;->f:[B

    iget-object v7, v5, Lcom/sgscq/vpn/cloud/f;->c:Ljava/lang/String;

    iget-object v8, v5, Lcom/sgscq/vpn/cloud/f;->d:Ljava/lang/String;

    iget-object v5, v5, Lcom/sgscq/vpn/cloud/f;->e:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v35, v6

    move-object/from16 v36, v4

    move-object/from16 v39, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v5

    invoke-direct/range {v34 .. v41}, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;-><init>([B[B[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 38
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "offline envelope="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_10

    const/4 v7, 0x1

    goto :goto_b

    :cond_10
    const/4 v7, 0x0

    :goto_b
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lo/a;->b:Lcom/sgscq/vpn/cloud/z;

    .line 39
    iget-object v1, v1, Lo/a;->a:Landroid/content/Context;

    :try_start_0
    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/z;->S()Lcom/sgscq/vpn/cloud/e;

    move-result-object v5

    if-nez v5, :cond_11

    goto/16 :goto_f

    :cond_11
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_12

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    goto :goto_c

    :cond_12
    const/4 v1, 0x0

    :goto_c
    move-object/from16 v16, v1

    if-eqz v16, :cond_16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_f

    :cond_13
    new-instance v1, Lcom/sgscq/battle/api/IntegrityAttestRequest;

    iget-object v12, v5, Lcom/sgscq/vpn/cloud/e;->a:Ljava/lang/String;

    iget-wide v13, v5, Lcom/sgscq/vpn/cloud/e;->b:J

    iget v15, v5, Lcom/sgscq/vpn/cloud/e;->c:I

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lcom/sgscq/battle/api/IntegrityAttestRequest;-><init>(Ljava/lang/String;JILjava/lang/String;)V

    invoke-virtual {v2, v1}, Lo/h;->integrityAttest(Lcom/sgscq/battle/api/IntegrityAttestRequest;)Lcom/sgscq/battle/api/IntegrityAttestResponse;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/sgscq/battle/api/IntegrityAttestResponse;->getData()[B

    move-result-object v6

    if-eqz v6, :cond_15

    invoke-virtual {v1}, Lcom/sgscq/battle/api/IntegrityAttestResponse;->getMac()[B

    move-result-object v6

    if-nez v6, :cond_14

    goto :goto_d

    :cond_14
    iget-object v5, v5, Lcom/sgscq/vpn/cloud/e;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/sgscq/battle/api/IntegrityAttestResponse;->getData()[B

    move-result-object v6

    invoke-virtual {v1}, Lcom/sgscq/battle/api/IntegrityAttestResponse;->getMac()[B

    move-result-object v1

    .line 40
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v8, v18

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x2

    invoke-static {v6, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    const-string v8, "data"

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "mac"

    invoke-static {v1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "/battle-runtime/integrity-attest"

    move-object/from16 v5, v17

    invoke-virtual {v0, v5, v1, v7}, Lcom/sgscq/vpn/cloud/z;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    const-string v0, "integrity attestation ok"

    goto :goto_e

    :cond_15
    :goto_d
    const-string v0, "integrity attestation skipped (no responder)"

    .line 41
    :goto_e
    invoke-static {v3, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_f

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "integrity attestation failed: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_16
    :goto_f
    new-instance v0, Lcom/sgscq/vpn/e0;

    invoke-direct {v0, v2, v4, v9, v10}, Lcom/sgscq/vpn/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;J)V

    return-object v0

    .line 43
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offline_permit_invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "battle_runtime_load_failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "battle_runtime_manifest_incomplete"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "battle_runtime_ciphertext_invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "battle_runtime_modules_incomplete"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u6218\u6597\u6388\u6743\u54cd\u5e94\u4e0d\u5b8c\u6574"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1d
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "device_key_id_persist_failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u6218\u6597\u8bbe\u5907\u6ce8\u518c\u54cd\u5e94\u4e0d\u5b8c\u6574"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported_android"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Ljavax/crypto/spec/SecretKeySpec;
    .locals 5

    .line 1
    iget v0, p0, Lcom/sgscq/vpn/f2;->a:I

    .line 2
    .line 3
    const-string v1, "sgscq_save_data_v2"

    .line 4
    .line 5
    const-string v2, "sgscq_save_data_v1"

    .line 6
    .line 7
    const-string v3, "AES"

    .line 8
    .line 9
    iget-object v4, p0, Lcom/sgscq/vpn/f2;->b:Landroid/content/Context;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_0
    sget-object v0, Lcom/sgscq/vpn/y5;->a:[B

    .line 16
    .line 17
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 18
    .line 19
    invoke-static {v4, v1}, Lcom/sgscq/vpn/y5;->g(Landroid/content/Context;Ljava/lang/String;)[B

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :pswitch_1
    sget-object v0, Lcom/sgscq/vpn/y5;->a:[B

    .line 28
    .line 29
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 30
    .line 31
    invoke-static {v4, v1}, Lcom/sgscq/vpn/y5;->f(Landroid/content/Context;Ljava/lang/String;)[B

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object v0

    .line 39
    :pswitch_2
    sget-object v0, Lcom/sgscq/vpn/y5;->a:[B

    .line 40
    .line 41
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 42
    .line 43
    invoke-static {v4, v2}, Lcom/sgscq/vpn/y5;->g(Landroid/content/Context;Ljava/lang/String;)[B

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-direct {v0, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v0

    .line 51
    :goto_0
    sget-object v0, Lcom/sgscq/vpn/y5;->a:[B

    .line 52
    .line 53
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 54
    .line 55
    invoke-static {v4, v2}, Lcom/sgscq/vpn/y5;->f(Landroid/content/Context;Ljava/lang/String;)[B

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-direct {v0, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v0

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
