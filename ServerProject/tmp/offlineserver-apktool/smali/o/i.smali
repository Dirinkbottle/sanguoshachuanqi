.class public final Lo/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lo/c;

.field public final c:Lo/l;

.field public final d:Lcom/sgscq/vpn/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/c;Lo/l;Lcom/sgscq/vpn/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/i;->a:Landroid/content/Context;

    iput-object p2, p0, Lo/i;->b:Lo/c;

    iput-object p3, p0, Lo/i;->c:Lo/l;

    iput-object p4, p0, Lo/i;->d:Lcom/sgscq/vpn/k;

    return-void
.end method


# virtual methods
.method public final a()Lo/h;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lo/i;->b:Lo/c;

    .line 4
    .line 5
    monitor-enter v2

    .line 6
    :try_start_0
    iget-object v0, v2, Lo/c;->a:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lc/e;

    .line 9
    .line 10
    iget-object v0, v0, Lc/e;->a:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroid/util/AtomicFile;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/util/AtomicFile;->readFully()[B

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->decode([B)Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lo/c;->c(Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto/16 :goto_a

    .line 28
    .line 29
    :catch_0
    :try_start_1
    iget-object v0, v2, Lo/c;->a:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Lc/e;

    .line 32
    .line 33
    iget-object v0, v0, Lc/e;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Landroid/util/AtomicFile;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/util/AtomicFile;->readFully()[B

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->decode([B)Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lo/c;->c(Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    :goto_0
    monitor-exit v2

    .line 49
    new-instance v2, Lm/e;

    .line 50
    .line 51
    iget-object v3, v1, Lo/i;->a:Landroid/content/Context;

    .line 52
    .line 53
    const/4 v4, 0x5

    .line 54
    invoke-direct {v2, v4, v3}, Lm/e;-><init>(ILandroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Lm/e;->y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    new-instance v3, Lo/c;

    .line 62
    .line 63
    iget-object v4, v1, Lo/i;->a:Landroid/content/Context;

    .line 64
    .line 65
    const/4 v5, 0x1

    .line 66
    invoke-direct {v3, v5, v4}, Lo/c;-><init>(ILandroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    iget-object v4, v3, Lo/c;->a:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v4, Landroid/content/Context;

    .line 72
    .line 73
    const-string v6, "sgscq_battle_runtime"

    .line 74
    .line 75
    const/4 v7, 0x0

    .line 76
    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    const-string v6, "install_id"

    .line 81
    .line 82
    const-string v8, ""

    .line 83
    .line 84
    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    iget-object v3, v3, Lo/c;->a:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v3, Landroid/content/Context;

    .line 91
    .line 92
    const-string v6, "sgscq_battle_runtime"

    .line 93
    .line 94
    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    const-string v6, "device_key_id"

    .line 99
    .line 100
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    iget-object v6, v2, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-nez v6, :cond_a

    .line 111
    .line 112
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-nez v6, :cond_a

    .line 117
    .line 118
    if-lez v3, :cond_a

    .line 119
    .line 120
    invoke-static {}, Lo/c;->b()Ljava/security/KeyPair;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-virtual {v6}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-interface {v6}, Ljava/security/Key;->getEncoded()[B

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    new-instance v19, Lo/d;

    .line 133
    .line 134
    iget-object v2, v2, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 135
    .line 136
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 137
    .line 138
    invoke-virtual {v2, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-static {v2}, Lo/e;->c([B)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    int-to-long v10, v3

    .line 147
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 148
    .line 149
    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-static {v2}, Lo/e;->c([B)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v12

    .line 157
    invoke-static {v6}, Lo/e;->c([B)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v13

    .line 161
    iget-object v2, v1, Lo/i;->a:Landroid/content/Context;

    .line 162
    .line 163
    invoke-static {v2}, Lcom/sgscq/vpn/cloud/m0;->G2(Landroid/content/Context;)[B

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-static {v2}, Lo/a;->a([B)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v14

    .line 171
    iget-object v15, v0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->ciphertextSha256:Ljava/lang/String;

    .line 172
    .line 173
    iget-object v2, v0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->plaintextSha256:Ljava/lang/String;

    .line 174
    .line 175
    iget-object v3, v0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->manifestSha256:Ljava/lang/String;

    .line 176
    .line 177
    iget-object v4, v0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->wrappedContentKey:[B

    .line 178
    .line 179
    invoke-static {v4}, Lo/e;->c([B)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v18

    .line 183
    move-object/from16 v8, v19

    .line 184
    .line 185
    move-object/from16 v16, v2

    .line 186
    .line 187
    move-object/from16 v17, v3

    .line 188
    .line 189
    invoke-direct/range {v8 .. v18}, Lo/d;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    iget-object v2, v1, Lo/i;->d:Lcom/sgscq/vpn/k;

    .line 193
    .line 194
    invoke-virtual {v2}, Lcom/sgscq/vpn/k;->c()J

    .line 195
    .line 196
    .line 197
    move-result-wide v2

    .line 198
    iget-object v8, v0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->permitPayload:[B

    .line 199
    .line 200
    iget-object v9, v0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->permitSignature:[B

    .line 201
    .line 202
    iget-object v4, v1, Lo/i;->a:Landroid/content/Context;

    .line 203
    .line 204
    invoke-static {v4}, Lo/a;->b(Landroid/content/Context;)[B

    .line 205
    .line 206
    .line 207
    move-result-object v10

    .line 208
    move-object/from16 v11, v19

    .line 209
    .line 210
    move-wide v12, v2

    .line 211
    invoke-static/range {v8 .. v13}, Lo/e;->e([B[B[BLo/d;J)Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    iget-object v6, v1, Lo/i;->c:Lo/l;

    .line 216
    .line 217
    iget-wide v8, v4, Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;->expiresAtMs:J

    .line 218
    .line 219
    monitor-enter v6

    .line 220
    :try_start_2
    iget-object v4, v6, Lo/l;->a:Lo/f;

    .line 221
    .line 222
    const-string v10, "trusted_time_payload"

    .line 223
    .line 224
    const-string v11, ""

    .line 225
    .line 226
    iget-object v4, v4, Lo/f;->a:Landroid/content/SharedPreferences;

    .line 227
    .line 228
    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    if-eqz v4, :cond_1

    .line 233
    .line 234
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 235
    .line 236
    .line 237
    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 238
    if-eqz v10, :cond_0

    .line 239
    .line 240
    goto :goto_1

    .line 241
    :cond_0
    :try_start_3
    invoke-static {v4, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 242
    .line 243
    .line 244
    move-result-object v4
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 245
    goto :goto_2

    .line 246
    :catch_1
    :try_start_4
    new-array v4, v7, [B

    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_1
    :goto_1
    new-array v4, v7, [B

    .line 250
    .line 251
    :goto_2
    iget-object v10, v6, Lo/l;->a:Lo/f;

    .line 252
    .line 253
    const-string v11, "trusted_time_signature"

    .line 254
    .line 255
    const-string v12, ""

    .line 256
    .line 257
    iget-object v10, v10, Lo/f;->a:Landroid/content/SharedPreferences;

    .line 258
    .line 259
    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v10

    .line 263
    if-eqz v10, :cond_3

    .line 264
    .line 265
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 266
    .line 267
    .line 268
    move-result v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 269
    if-eqz v11, :cond_2

    .line 270
    .line 271
    goto :goto_3

    .line 272
    :cond_2
    :try_start_5
    invoke-static {v10, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 273
    .line 274
    .line 275
    move-result-object v10
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 276
    goto :goto_4

    .line 277
    :catch_2
    :try_start_6
    new-array v10, v7, [B

    .line 278
    .line 279
    goto :goto_4

    .line 280
    :cond_3
    :goto_3
    new-array v10, v7, [B

    .line 281
    .line 282
    :goto_4
    array-length v11, v4

    .line 283
    if-eqz v11, :cond_7

    .line 284
    .line 285
    array-length v11, v10

    .line 286
    if-eqz v11, :cond_7

    .line 287
    .line 288
    iget-object v11, v6, Lo/l;->b:Lcom/sgscq/vpn/handler/a;

    .line 289
    .line 290
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    invoke-static {v4}, Lcom/sgscq/vpn/handler/a;->a([B)[B

    .line 294
    .line 295
    .line 296
    move-result-object v11

    .line 297
    invoke-static {v11, v10}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    .line 298
    .line 299
    .line 300
    move-result v10

    .line 301
    if-nez v10, :cond_4

    .line 302
    .line 303
    goto/16 :goto_7

    .line 304
    .line 305
    :cond_4
    sget-object v10, Lo/l;->c:La/o;

    .line 306
    .line 307
    new-instance v11, Ljava/lang/String;

    .line 308
    .line 309
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 310
    .line 311
    invoke-direct {v11, v4, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 312
    .line 313
    .line 314
    const-class v4, Lo/k;

    .line 315
    .line 316
    invoke-virtual {v10, v11, v4}, La/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    check-cast v4, Lo/k;

    .line 321
    .line 322
    if-eqz v4, :cond_7

    .line 323
    .line 324
    iget-wide v11, v4, Lo/k;->a:J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 325
    .line 326
    const-wide/16 v13, 0x0

    .line 327
    .line 328
    cmp-long v10, v11, v13

    .line 329
    .line 330
    if-lez v10, :cond_7

    .line 331
    .line 332
    move-object/from16 v17, v6

    .line 333
    .line 334
    :try_start_7
    iget-wide v5, v4, Lo/k;->b:J

    .line 335
    .line 336
    cmp-long v10, v5, v13

    .line 337
    .line 338
    if-lez v10, :cond_6

    .line 339
    .line 340
    move-wide v15, v8

    .line 341
    iget-wide v7, v4, Lo/k;->c:J

    .line 342
    .line 343
    cmp-long v7, v7, v13

    .line 344
    .line 345
    if-ltz v7, :cond_6

    .line 346
    .line 347
    const-wide/32 v7, 0x493e0

    .line 348
    .line 349
    .line 350
    sub-long v9, v5, v7

    .line 351
    .line 352
    cmp-long v9, v2, v9

    .line 353
    .line 354
    if-ltz v9, :cond_6

    .line 355
    .line 356
    sub-long v7, v11, v7

    .line 357
    .line 358
    cmp-long v7, v2, v7

    .line 359
    .line 360
    if-ltz v7, :cond_6

    .line 361
    .line 362
    cmp-long v7, v2, v15

    .line 363
    .line 364
    if-ltz v7, :cond_5

    .line 365
    .line 366
    goto :goto_5

    .line 367
    :cond_5
    new-instance v7, Lo/k;

    .line 368
    .line 369
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 370
    .line 371
    .line 372
    move-result-wide v13

    .line 373
    iget-wide v2, v4, Lo/k;->c:J

    .line 374
    .line 375
    move-object v10, v7

    .line 376
    move-wide v15, v2

    .line 377
    invoke-direct/range {v10 .. v16}, Lo/k;-><init>(JJJ)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 378
    .line 379
    .line 380
    move-object/from16 v2, v17

    .line 381
    .line 382
    :try_start_8
    invoke-virtual {v2, v7}, Lo/l;->a(Lo/k;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 383
    .line 384
    .line 385
    monitor-exit v2

    .line 386
    const/4 v5, 0x1

    .line 387
    goto :goto_9

    .line 388
    :catchall_1
    move-exception v0

    .line 389
    goto :goto_6

    .line 390
    :catchall_2
    move-exception v0

    .line 391
    move-object/from16 v2, v17

    .line 392
    .line 393
    goto :goto_6

    .line 394
    :catch_3
    :cond_6
    :goto_5
    move-object/from16 v2, v17

    .line 395
    .line 396
    goto :goto_8

    .line 397
    :catchall_3
    move-exception v0

    .line 398
    move-object v2, v6

    .line 399
    :goto_6
    monitor-exit v2

    .line 400
    throw v0

    .line 401
    :catch_4
    :cond_7
    :goto_7
    move-object v2, v6

    .line 402
    :catch_5
    :goto_8
    monitor-exit v2

    .line 403
    const/4 v5, 0x0

    .line 404
    :goto_9
    if-eqz v5, :cond_9

    .line 405
    .line 406
    iget-object v2, v0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->wrappedContentKey:[B

    .line 407
    .line 408
    invoke-static {v2}, Lo/c;->a([B)[B

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    iget-object v3, v1, Lo/i;->a:Landroid/content/Context;

    .line 413
    .line 414
    const-string v4, "release"

    .line 415
    .line 416
    const/16 v5, 0x17

    .line 417
    .line 418
    iget-object v6, v0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->plaintextSha256:Ljava/lang/String;

    .line 419
    .line 420
    invoke-static {v4, v5, v6}, Lcom/sgscq/vpn/battle/runtime/BattleModuleManifest;->forOfflineDex(Ljava/lang/String;ILjava/lang/String;)Lcom/sgscq/vpn/battle/runtime/BattleModuleManifest;

    .line 421
    .line 422
    .line 423
    move-result-object v4

    .line 424
    iget-object v0, v0, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->encryptedDex:[B

    .line 425
    .line 426
    invoke-static {v3, v4, v0, v2}, Lcom/sgscq/vpn/battle/runtime/BattleRuntimeLoader;->loadVerified(Landroid/content/Context;Lcom/sgscq/vpn/battle/runtime/BattleModuleManifest;[B[B)Lo/h;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    invoke-virtual {v0}, Lo/h;->status()Lcom/sgscq/battle/api/BattleRuntimeStatus;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    sget-object v3, Lcom/sgscq/battle/api/BattleRuntimeStatus;->READY:Lcom/sgscq/battle/api/BattleRuntimeStatus;

    .line 435
    .line 436
    if-ne v2, v3, :cond_8

    .line 437
    .line 438
    return-object v0

    .line 439
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 440
    .line 441
    const-string v2, "offline_runtime_invalid"

    .line 442
    .line 443
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    throw v0

    .line 447
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 448
    .line 449
    const-string v2, "offline_trusted_time_invalid"

    .line 450
    .line 451
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    throw v0

    .line 455
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 456
    .line 457
    const-string v2, "offline_binding_missing"

    .line 458
    .line 459
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    throw v0

    .line 463
    :catch_6
    :try_start_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 464
    .line 465
    const-string v3, "offline_cache_invalid"

    .line 466
    .line 467
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 471
    :goto_a
    monitor-exit v2

    .line 472
    throw v0
.end method
