.class public abstract Lo/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:La/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, La/o;

    invoke-direct {v0}, La/o;-><init>()V

    sput-object v0, Lo/e;->a:La/o;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    const-string v0, "[0-9a-fA-F]{64}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c([B)Ljava/lang/String;
    .locals 8

    .line 1
    :try_start_0
    const-string v0, "SHA-256"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const/16 v1, 0x40

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 16
    .line 17
    .line 18
    array-length v1, p0

    .line 19
    const/4 v2, 0x0

    .line 20
    move v3, v2

    .line 21
    :goto_0
    if-ge v3, v1, :cond_0

    .line 22
    .line 23
    aget-byte v4, p0, v3

    .line 24
    .line 25
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 26
    .line 27
    const-string v6, "%02x"

    .line 28
    .line 29
    const/4 v7, 0x1

    .line 30
    new-array v7, v7, [Ljava/lang/Object;

    .line 31
    .line 32
    and-int/lit16 v4, v4, 0xff

    .line 33
    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    aput-object v4, v7, v2

    .line 39
    .line 40
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    return-object p0

    .line 55
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    const-string v0, "offline_permit_invalid"

    .line 58
    .line 59
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0
.end method

.method public static d(Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;Lo/d;J)V
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "payload"

    .line 4
    .line 5
    goto/16 :goto_0

    .line 6
    .line 7
    :cond_0
    iget v0, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;->schema:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const-string p0, "schema"

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_1
    iget-wide v0, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;->permitId:J

    .line 17
    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    cmp-long v0, v0, v2

    .line 21
    .line 22
    if-gtz v0, :cond_2

    .line 23
    .line 24
    const-string p0, "permit_id"

    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :cond_2
    iget-wide v0, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;->deviceKeyId:J

    .line 29
    .line 30
    iget-wide v4, p1, Lo/d;->b:J

    .line 31
    .line 32
    cmp-long v0, v0, v4

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    const-string p0, "device_key_id"

    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :cond_3
    iget v0, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;->versionCode:I

    .line 41
    .line 42
    const/16 v1, 0x17

    .line 43
    .line 44
    if-eq v0, v1, :cond_4

    .line 45
    .line 46
    const-string p0, "version_code"

    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :cond_4
    iget-wide v0, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;->offlineGeneration:J

    .line 51
    .line 52
    cmp-long v0, v0, v2

    .line 53
    .line 54
    if-gtz v0, :cond_5

    .line 55
    .line 56
    const-string p0, "offline_generation"

    .line 57
    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :cond_5
    const-string v0, "dex"

    .line 61
    .line 62
    iget-object v1, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;->moduleType:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_6

    .line 69
    .line 70
    const-string p0, "module_type"

    .line 71
    .line 72
    goto/16 :goto_0

    .line 73
    .line 74
    :cond_6
    const-string v0, "all"

    .line 75
    .line 76
    iget-object v1, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;->moduleAbi:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_7

    .line 83
    .line 84
    const-string p0, "module_abi"

    .line 85
    .line 86
    goto/16 :goto_0

    .line 87
    .line 88
    :cond_7
    iget-object v0, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;->afdianAccountHash:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v1, p1, Lo/d;->a:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v0, v1}, Lo/e;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_8

    .line 97
    .line 98
    const-string p0, "account"

    .line 99
    .line 100
    goto/16 :goto_0

    .line 101
    .line 102
    :cond_8
    iget-object v0, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;->environment:Ljava/lang/String;

    .line 103
    .line 104
    const-string v1, "release"

    .line 105
    .line 106
    invoke-static {v0, v1}, Lo/e;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_9

    .line 111
    .line 112
    const-string p0, "environment"

    .line 113
    .line 114
    goto/16 :goto_0

    .line 115
    .line 116
    :cond_9
    iget-object v0, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;->installIdHash:Ljava/lang/String;

    .line 117
    .line 118
    iget-object v1, p1, Lo/d;->c:Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {v0, v1}, Lo/e;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_a

    .line 125
    .line 126
    const-string p0, "install_id"

    .line 127
    .line 128
    goto/16 :goto_0

    .line 129
    .line 130
    :cond_a
    iget-object v0, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;->devicePublicKeySha256:Ljava/lang/String;

    .line 131
    .line 132
    iget-object v1, p1, Lo/d;->d:Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {v0, v1}, Lo/e;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-nez v0, :cond_b

    .line 139
    .line 140
    const-string p0, "device_key"

    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    :cond_b
    iget-object v0, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;->apkSignatureSha256:Ljava/lang/String;

    .line 145
    .line 146
    iget-object v1, p1, Lo/d;->e:Ljava/lang/String;

    .line 147
    .line 148
    invoke-static {v0, v1}, Lo/e;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-nez v0, :cond_c

    .line 153
    .line 154
    const-string p0, "apk_signature"

    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :cond_c
    iget-object v0, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;->buildId:Ljava/lang/String;

    .line 159
    .line 160
    const-string v1, "1.0.1.14067"

    .line 161
    .line 162
    invoke-static {v0, v1}, Lo/e;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-nez v0, :cond_d

    .line 167
    .line 168
    const-string p0, "build_id"

    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_d
    iget-object v0, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;->ciphertextSha256:Ljava/lang/String;

    .line 173
    .line 174
    iget-object v1, p1, Lo/d;->f:Ljava/lang/String;

    .line 175
    .line 176
    invoke-static {v0, v1}, Lo/e;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-nez v0, :cond_e

    .line 181
    .line 182
    const-string p0, "ciphertext"

    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :cond_e
    iget-object v0, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;->plaintextSha256:Ljava/lang/String;

    .line 187
    .line 188
    iget-object v1, p1, Lo/d;->g:Ljava/lang/String;

    .line 189
    .line 190
    invoke-static {v0, v1}, Lo/e;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-nez v0, :cond_f

    .line 195
    .line 196
    const-string p0, "plaintext"

    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :cond_f
    iget-object v0, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;->manifestSha256:Ljava/lang/String;

    .line 201
    .line 202
    iget-object v1, p1, Lo/d;->h:Ljava/lang/String;

    .line 203
    .line 204
    invoke-static {v0, v1}, Lo/e;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-nez v0, :cond_10

    .line 209
    .line 210
    const-string p0, "manifest"

    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_10
    iget-object v0, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;->wrappedContentKeySha256:Ljava/lang/String;

    .line 215
    .line 216
    iget-object p1, p1, Lo/d;->i:Ljava/lang/String;

    .line 217
    .line 218
    invoke-static {v0, p1}, Lo/e;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    if-nez p1, :cond_11

    .line 223
    .line 224
    const-string p0, "wrapped_key"

    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :cond_11
    iget-object p1, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;->afdianAccountHash:Ljava/lang/String;

    .line 229
    .line 230
    invoke-static {p1}, Lo/e;->a(Ljava/lang/String;)Z

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    if-nez p1, :cond_12

    .line 235
    .line 236
    const-string p0, "account_format"

    .line 237
    .line 238
    goto/16 :goto_0

    .line 239
    .line 240
    :cond_12
    iget-object p1, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;->installIdHash:Ljava/lang/String;

    .line 241
    .line 242
    invoke-static {p1}, Lo/e;->a(Ljava/lang/String;)Z

    .line 243
    .line 244
    .line 245
    move-result p1

    .line 246
    if-nez p1, :cond_13

    .line 247
    .line 248
    const-string p0, "install_id_format"

    .line 249
    .line 250
    goto/16 :goto_0

    .line 251
    .line 252
    :cond_13
    iget-object p1, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;->devicePublicKeySha256:Ljava/lang/String;

    .line 253
    .line 254
    invoke-static {p1}, Lo/e;->a(Ljava/lang/String;)Z

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    if-nez p1, :cond_14

    .line 259
    .line 260
    const-string p0, "device_key_format"

    .line 261
    .line 262
    goto :goto_0

    .line 263
    :cond_14
    iget-object p1, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;->apkSignatureSha256:Ljava/lang/String;

    .line 264
    .line 265
    invoke-static {p1}, Lo/e;->a(Ljava/lang/String;)Z

    .line 266
    .line 267
    .line 268
    move-result p1

    .line 269
    if-nez p1, :cond_15

    .line 270
    .line 271
    const-string p0, "apk_signature_format"

    .line 272
    .line 273
    goto :goto_0

    .line 274
    :cond_15
    iget-object p1, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;->ciphertextSha256:Ljava/lang/String;

    .line 275
    .line 276
    invoke-static {p1}, Lo/e;->a(Ljava/lang/String;)Z

    .line 277
    .line 278
    .line 279
    move-result p1

    .line 280
    if-nez p1, :cond_16

    .line 281
    .line 282
    const-string p0, "ciphertext_format"

    .line 283
    .line 284
    goto :goto_0

    .line 285
    :cond_16
    iget-object p1, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;->plaintextSha256:Ljava/lang/String;

    .line 286
    .line 287
    invoke-static {p1}, Lo/e;->a(Ljava/lang/String;)Z

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    if-nez p1, :cond_17

    .line 292
    .line 293
    const-string p0, "plaintext_format"

    .line 294
    .line 295
    goto :goto_0

    .line 296
    :cond_17
    iget-object p1, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;->manifestSha256:Ljava/lang/String;

    .line 297
    .line 298
    invoke-static {p1}, Lo/e;->a(Ljava/lang/String;)Z

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    if-nez p1, :cond_18

    .line 303
    .line 304
    const-string p0, "manifest_format"

    .line 305
    .line 306
    goto :goto_0

    .line 307
    :cond_18
    iget-object p1, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;->wrappedContentKeySha256:Ljava/lang/String;

    .line 308
    .line 309
    invoke-static {p1}, Lo/e;->a(Ljava/lang/String;)Z

    .line 310
    .line 311
    .line 312
    move-result p1

    .line 313
    if-nez p1, :cond_19

    .line 314
    .line 315
    const-string p0, "wrapped_key_format"

    .line 316
    .line 317
    goto :goto_0

    .line 318
    :cond_19
    iget-wide v0, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;->issuedAtMs:J

    .line 319
    .line 320
    cmp-long p1, v0, v2

    .line 321
    .line 322
    if-gtz p1, :cond_1a

    .line 323
    .line 324
    const-string p0, "issued_at"

    .line 325
    .line 326
    goto :goto_0

    .line 327
    :cond_1a
    iget-wide p0, p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;->expiresAtMs:J

    .line 328
    .line 329
    cmp-long v2, p0, v0

    .line 330
    .line 331
    if-gtz v2, :cond_1b

    .line 332
    .line 333
    const-string p0, "expiry_order"

    .line 334
    .line 335
    goto :goto_0

    .line 336
    :cond_1b
    const-wide/32 v2, 0x493e0

    .line 337
    .line 338
    .line 339
    sub-long/2addr v0, v2

    .line 340
    cmp-long v0, p2, v0

    .line 341
    .line 342
    if-gez v0, :cond_1c

    .line 343
    .line 344
    const-string p0, "not_yet_valid"

    .line 345
    .line 346
    goto :goto_0

    .line 347
    :cond_1c
    cmp-long p0, p2, p0

    .line 348
    .line 349
    if-ltz p0, :cond_1d

    .line 350
    .line 351
    const-string p0, "expired"

    .line 352
    .line 353
    goto :goto_0

    .line 354
    :cond_1d
    const/4 p0, 0x0

    .line 355
    :goto_0
    if-nez p0, :cond_1e

    .line 356
    .line 357
    return-void

    .line 358
    :cond_1e
    const-string p1, "offline permit mismatch: "

    .line 359
    .line 360
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object p0

    .line 364
    const-string p1, "BattleRuntime"

    .line 365
    .line 366
    invoke-static {p1, p0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 370
    .line 371
    const-string p1, "offline_permit_invalid"

    .line 372
    .line 373
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    throw p0
.end method

.method public static e([B[B[BLo/d;J)Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;
    .locals 4

    .line 1
    const-string v0, "offline_permit_invalid"

    .line 2
    .line 3
    const-string v1, "BattleRuntime"

    .line 4
    .line 5
    :try_start_0
    const-string v2, "EC"

    .line 6
    .line 7
    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    .line 12
    .line 13
    invoke-direct {v3, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    const-string v2, "SHA256withECDSA"

    .line 21
    .line 22
    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p0}, Ljava/security/Signature;->update([B)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p1}, Ljava/security/Signature;->verify([B)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    sget-object p1, Lo/e;->a:La/o;

    .line 39
    .line 40
    new-instance p2, Ljava/lang/String;

    .line 41
    .line 42
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 43
    .line 44
    invoke-direct {p2, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 45
    .line 46
    .line 47
    const-class p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;

    .line 48
    .line 49
    invoke-virtual {p1, p2, p0}, La/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;

    .line 54
    .line 55
    invoke-static {p0, p3, p4, p5}, Lo/e;->d(Lcom/sgscq/vpn/battle/runtime/BattleOfflinePermit;Lo/d;J)V

    .line 56
    .line 57
    .line 58
    return-object p0

    .line 59
    :cond_0
    const-string p0, "offline permit signature mismatch"

    .line 60
    .line 61
    invoke-static {v1, p0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 65
    .line 66
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :catch_0
    move-exception p0

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string p2, "offline permit crypto failure: "

    .line 74
    .line 75
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p2, ":"

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-static {v1, p0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 113
    .line 114
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p0

    .line 118
    :catch_1
    move-exception p0

    .line 119
    throw p0
.end method
