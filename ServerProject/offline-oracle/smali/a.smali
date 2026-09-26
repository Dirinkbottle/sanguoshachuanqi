.class public final synthetic Lcom/sgscq/vpn/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sgscq/vpn/g;
.implements Lq/l;
.implements Lcom/sgscq/vpn/b7;
.implements Lp/j;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/sgscq/vpn/a;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/sgscq/vpn/a;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a([BJ)Lp/b;
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/sgscq/vpn/a;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Ljava/security/PublicKey;

    .line 8
    .line 9
    iget-object v3, v1, Lcom/sgscq/vpn/a;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v3, Landroid/content/Context;

    .line 12
    .line 13
    sget-object v4, Lp/l;->o:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance v4, Lcom/sgscq/vpn/f2;

    .line 16
    .line 17
    const/4 v5, 0x6

    .line 18
    invoke-direct {v4, v5, v3}, Lcom/sgscq/vpn/f2;-><init>(ILandroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    sget-object v3, Lp/c;->a:La/o;

    .line 22
    .line 23
    if-eqz v0, :cond_c

    .line 24
    .line 25
    array-length v3, v0

    .line 26
    if-eqz v3, :cond_c

    .line 27
    .line 28
    array-length v3, v0

    .line 29
    const/high16 v5, 0x10000

    .line 30
    .line 31
    if-gt v3, v5, :cond_b

    .line 32
    .line 33
    const-string v3, "package JSON is invalid"

    .line 34
    .line 35
    invoke-static {v3, v0}, Lp/c;->b(Ljava/lang/String;[B)La/t;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v3, "payload"

    .line 40
    .line 41
    invoke-static {v0, v3}, Lp/c;->g(La/t;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-string v5, "signature_algorithm"

    .line 46
    .line 47
    invoke-static {v0, v5}, Lp/c;->g(La/t;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    const-string v6, "signature"

    .line 52
    .line 53
    invoke-static {v0, v6}, Lp/c;->g(La/t;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v6, "SHA256withRSA"

    .line 58
    .line 59
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_a

    .line 64
    .line 65
    invoke-static {v3}, Lp/c;->a(Ljava/lang/String;)[B

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-static {v0}, Lp/c;->a(Ljava/lang/String;)[B

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    :try_start_0
    invoke-static {v6}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v5, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v3}, Ljava/security/Signature;->update([B)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, v0}, Ljava/security/Signature;->verify([B)Z

    .line 84
    .line 85
    .line 86
    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    if-eqz v0, :cond_9

    .line 88
    .line 89
    const-string v0, "payload JSON is invalid"

    .line 90
    .line 91
    invoke-static {v0, v3}, Lp/c;->b(Ljava/lang/String;[B)La/t;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sget-object v2, Lp/c;->a:La/o;

    .line 96
    .line 97
    invoke-static {v0}, Lp/c;->h(La/q;)La/q;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v2, v5}, La/o;->h(La/q;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 106
    .line 107
    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_8

    .line 116
    .line 117
    const-string v2, "schema_version"

    .line 118
    .line 119
    invoke-static {v0, v2}, Lp/c;->e(La/t;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    const-string v3, "revision"

    .line 124
    .line 125
    invoke-static {v0, v3}, Lp/c;->f(La/t;Ljava/lang/String;)J

    .line 126
    .line 127
    .line 128
    move-result-wide v12

    .line 129
    const-string v3, "server_time"

    .line 130
    .line 131
    invoke-static {v0, v3}, Lp/c;->f(La/t;Ljava/lang/String;)J

    .line 132
    .line 133
    .line 134
    move-result-wide v14

    .line 135
    const-string v3, "generated_at"

    .line 136
    .line 137
    invoke-static {v0, v3}, Lp/c;->f(La/t;Ljava/lang/String;)J

    .line 138
    .line 139
    .line 140
    move-result-wide v16

    .line 141
    const-string v3, "expires_at"

    .line 142
    .line 143
    invoke-static {v0, v3}, Lp/c;->f(La/t;Ljava/lang/String;)J

    .line 144
    .line 145
    .line 146
    move-result-wide v18

    .line 147
    const-string v3, "next_refresh_at"

    .line 148
    .line 149
    invoke-static {v0, v3}, Lp/c;->f(La/t;Ljava/lang/String;)J

    .line 150
    .line 151
    .line 152
    move-result-wide v5

    .line 153
    const-string v3, "minimum_schedule_version"

    .line 154
    .line 155
    invoke-static {v0, v3}, Lp/c;->e(La/t;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    const/4 v7, 0x1

    .line 160
    const/4 v11, 0x2

    .line 161
    if-eq v2, v7, :cond_0

    .line 162
    .line 163
    if-ne v2, v11, :cond_7

    .line 164
    .line 165
    :cond_0
    const-wide/16 v20, 0x0

    .line 166
    .line 167
    cmp-long v7, v12, v20

    .line 168
    .line 169
    if-lez v7, :cond_7

    .line 170
    .line 171
    cmp-long v7, v18, p2

    .line 172
    .line 173
    if-lez v7, :cond_6

    .line 174
    .line 175
    cmp-long v7, v16, v14

    .line 176
    .line 177
    if-gtz v7, :cond_6

    .line 178
    .line 179
    cmp-long v7, v14, v18

    .line 180
    .line 181
    if-gez v7, :cond_6

    .line 182
    .line 183
    cmp-long v7, v5, v16

    .line 184
    .line 185
    if-ltz v7, :cond_5

    .line 186
    .line 187
    cmp-long v5, v5, v18

    .line 188
    .line 189
    if-gtz v5, :cond_5

    .line 190
    .line 191
    const/16 v5, 0x17

    .line 192
    .line 193
    if-lt v5, v3, :cond_4

    .line 194
    .line 195
    new-instance v22, Ljava/util/HashSet;

    .line 196
    .line 197
    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    .line 198
    .line 199
    .line 200
    const-string v6, "regular"

    .line 201
    .line 202
    move-object v5, v0

    .line 203
    move v7, v2

    .line 204
    move-wide v8, v14

    .line 205
    move-object v10, v4

    .line 206
    move v1, v11

    .line 207
    move-object/from16 v11, v22

    .line 208
    .line 209
    invoke-static/range {v5 .. v11}, Lp/c;->d(La/t;Ljava/lang/String;IJLcom/sgscq/vpn/f2;Ljava/util/HashSet;)Lm/e;

    .line 210
    .line 211
    .line 212
    move-result-object v11

    .line 213
    const-string v6, "special"

    .line 214
    .line 215
    move-object v0, v11

    .line 216
    move-object/from16 v11, v22

    .line 217
    .line 218
    invoke-static/range {v5 .. v11}, Lp/c;->d(La/t;Ljava/lang/String;IJLcom/sgscq/vpn/f2;Ljava/util/HashSet;)Lm/e;

    .line 219
    .line 220
    .line 221
    move-result-object v14

    .line 222
    if-ne v2, v1, :cond_3

    .line 223
    .line 224
    iget-object v1, v0, Lm/e;->b:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast v1, Ljava/util/List;

    .line 227
    .line 228
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    move-wide/from16 v4, v20

    .line 233
    .line 234
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-eqz v2, :cond_1

    .line 239
    .line 240
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    check-cast v2, Lp/a;

    .line 245
    .line 246
    iget-wide v6, v2, Lp/a;->f:J

    .line 247
    .line 248
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 249
    .line 250
    .line 251
    move-result-wide v4

    .line 252
    goto :goto_0

    .line 253
    :cond_1
    cmp-long v1, v4, v18

    .line 254
    .line 255
    if-ltz v1, :cond_2

    .line 256
    .line 257
    goto :goto_1

    .line 258
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 259
    .line 260
    const-string v1, "batch expiry exceeds loaded slots"

    .line 261
    .line 262
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    throw v0

    .line 266
    :cond_3
    :goto_1
    new-instance v1, Lp/b;

    .line 267
    .line 268
    move-object v5, v1

    .line 269
    move-wide v6, v12

    .line 270
    move-wide/from16 v8, v16

    .line 271
    .line 272
    move-wide/from16 v10, v18

    .line 273
    .line 274
    move v12, v3

    .line 275
    move-object v13, v0

    .line 276
    invoke-direct/range {v5 .. v14}, Lp/b;-><init>(JJJILm/e;Lm/e;)V

    .line 277
    .line 278
    .line 279
    return-object v1

    .line 280
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 281
    .line 282
    const-string v1, "minimum schedule version is not met"

    .line 283
    .line 284
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    throw v0

    .line 288
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 289
    .line 290
    const-string v1, "next refresh time is invalid"

    .line 291
    .line 292
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    throw v0

    .line 296
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 297
    .line 298
    const-string v1, "payload is expired or time bounds are invalid"

    .line 299
    .line 300
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    throw v0

    .line 304
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 305
    .line 306
    const-string v1, "schema or revision is invalid"

    .line 307
    .line 308
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    throw v0

    .line 312
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 313
    .line 314
    const-string v1, "payload JSON is not canonical"

    .line 315
    .line 316
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    throw v0

    .line 320
    :cond_9
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 321
    .line 322
    const-string v1, "package signature is invalid"

    .line 323
    .line 324
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    throw v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 330
    .line 331
    const-string v2, "package signature verification failed"

    .line 332
    .line 333
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 334
    .line 335
    .line 336
    throw v1

    .line 337
    :catch_1
    move-exception v0

    .line 338
    throw v0

    .line 339
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 340
    .line 341
    const-string v1, "signature algorithm is invalid"

    .line 342
    .line 343
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    throw v0

    .line 347
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 348
    .line 349
    const-string v1, "package is too large"

    .line 350
    .line 351
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    throw v0

    .line 355
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 356
    .line 357
    const-string v1, "package is empty"

    .line 358
    .line 359
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    throw v0
.end method

.method public final b(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/sgscq/vpn/MainActivity;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/sgscq/vpn/a;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/sgscq/vpn/c7;

    .line 8
    .line 9
    sget v2, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v2, Lcom/sgscq/vpn/m3;

    .line 15
    .line 16
    invoke-direct {v2, v0, p1, v1}, Lcom/sgscq/vpn/m3;-><init>(Lcom/sgscq/vpn/MainActivity;ZLcom/sgscq/vpn/c7;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final c()Lcom/sgscq/vpn/f;
    .locals 13

    .line 1
    iget v0, p0, Lcom/sgscq/vpn/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto/16 :goto_2

    .line 7
    .line 8
    :pswitch_0
    iget-object v0, p0, Lcom/sgscq/vpn/a;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lcom/sgscq/vpn/h;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/sgscq/vpn/a;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v2, Lcom/sgscq/vpn/cloud/z;

    .line 20
    .line 21
    iget-object v3, v0, Lcom/sgscq/vpn/h;->b:Landroid/content/Context;

    .line 22
    .line 23
    invoke-direct {v2, v3}, Lcom/sgscq/vpn/cloud/z;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    :try_start_0
    invoke-static {}, Lcom/sgscq/vpn/cloud/z;->U()Lcom/sgscq/vpn/cloud/e;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    iget-wide v5, v4, Lcom/sgscq/vpn/cloud/e;->b:J

    .line 34
    .line 35
    iget v7, v4, Lcom/sgscq/vpn/cloud/e;->c:I

    .line 36
    .line 37
    invoke-virtual {v2, v5, v6, v7}, Lcom/sgscq/vpn/cloud/z;->P(JI)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    :try_start_1
    iget-object v3, v4, Lcom/sgscq/vpn/cloud/e;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move-exception v4

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move-object v5, v3

    .line 47
    goto :goto_1

    .line 48
    :catch_1
    move-exception v4

    .line 49
    move-object v5, v3

    .line 50
    :goto_0
    const-string v6, "SGSCQ_AUTH"

    .line 51
    .line 52
    new-instance v7, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v8, "[Integrity] challenge unavailable: "

    .line 55
    .line 56
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-static {v6, v4}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :goto_1
    iget-object v4, v0, Lcom/sgscq/vpn/h;->b:Landroid/content/Context;

    .line 70
    .line 71
    invoke-static {v4}, Lcom/sgscq/vpn/cloud/m0;->t0(Landroid/content/Context;)[Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    const/4 v6, 0x4

    .line 76
    aget-object v4, v4, v6

    .line 77
    .line 78
    const-string v4, "https://oauth.sgscq.com/afdian/oauth.html"

    .line 79
    .line 80
    const-string v6, "code"

    .line 81
    .line 82
    const-string v7, "redirect_uri"

    .line 83
    .line 84
    invoke-static {v6, v1, v7, v4}, Lc/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const-string v4, "device_id"

    .line 89
    .line 90
    iget-object v6, v2, Lcom/sgscq/vpn/cloud/z;->b:Lm/e;

    .line 91
    .line 92
    invoke-virtual {v6}, Lm/e;->d()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    const-string v4, "environment"

    .line 100
    .line 101
    const-string v6, "release"

    .line 102
    .line 103
    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    if-eqz v3, :cond_1

    .line 107
    .line 108
    if-eqz v5, :cond_1

    .line 109
    .line 110
    const-string v4, "challenge_id"

    .line 111
    .line 112
    const-string v6, "data"

    .line 113
    .line 114
    invoke-static {v4, v3, v6, v5}, Lc/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    const-string v4, "integrity"

    .line 119
    .line 120
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    :cond_1
    const-string v5, "POST"

    .line 124
    .line 125
    const-string v6, "/auth/afdian/exchange"

    .line 126
    .line 127
    const-string v7, ""

    .line 128
    .line 129
    sget-object v3, Lcom/sgscq/vpn/cloud/z;->c:La/o;

    .line 130
    .line 131
    invoke-virtual {v3, v1}, La/o;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 136
    .line 137
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 138
    .line 139
    .line 140
    move-result-object v11

    .line 141
    const-string v8, "application/json"

    .line 142
    .line 143
    const-string v9, ""

    .line 144
    .line 145
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 146
    .line 147
    .line 148
    move-result-object v10

    .line 149
    invoke-static/range {v5 .. v11}, Lcom/sgscq/vpn/cloud/z;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)Lcom/sgscq/vpn/cloud/t;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v1}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-static {v1}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    const-string v3, "user"

    .line 162
    .line 163
    invoke-static {v1, v3}, Lcom/sgscq/vpn/cloud/z;->g(La/t;Ljava/lang/String;)La/t;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    const-string v4, "environment"

    .line 168
    .line 169
    const-string v5, ""

    .line 170
    .line 171
    invoke-static {v1, v4, v5}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    const-string v6, "access_token"

    .line 176
    .line 177
    invoke-static {v1, v6, v5}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    const-string v7, "refresh_token"

    .line 182
    .line 183
    invoke-static {v1, v7, v5}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    const-string v8, "afdian_user_id"

    .line 188
    .line 189
    invoke-static {v3, v8, v5}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 194
    .line 195
    .line 196
    move-result v9

    .line 197
    if-nez v9, :cond_3

    .line 198
    .line 199
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 200
    .line 201
    .line 202
    move-result v9

    .line 203
    if-nez v9, :cond_3

    .line 204
    .line 205
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 206
    .line 207
    .line 208
    move-result v9

    .line 209
    if-nez v9, :cond_3

    .line 210
    .line 211
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 212
    .line 213
    .line 214
    move-result v9

    .line 215
    if-nez v9, :cond_3

    .line 216
    .line 217
    const-string v9, "name"

    .line 218
    .line 219
    invoke-static {v3, v9, v5}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    const-string v5, "access_expires_at"

    .line 224
    .line 225
    const-wide/16 v9, 0x0

    .line 226
    .line 227
    invoke-static {v1, v5, v9, v10}, Lcom/sgscq/vpn/cloud/z;->u(La/t;Ljava/lang/String;J)J

    .line 228
    .line 229
    .line 230
    move-result-wide v11

    .line 231
    const-string v5, "refresh_expires_at"

    .line 232
    .line 233
    invoke-static {v1, v5, v9, v10}, Lcom/sgscq/vpn/cloud/z;->u(La/t;Ljava/lang/String;J)J

    .line 234
    .line 235
    .line 236
    move-result-wide v9

    .line 237
    const-string v1, "release"

    .line 238
    .line 239
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-eqz v1, :cond_2

    .line 244
    .line 245
    iget-object v1, v2, Lcom/sgscq/vpn/cloud/z;->b:Lm/e;

    .line 246
    .line 247
    monitor-enter v1

    .line 248
    :try_start_2
    new-instance v2, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 249
    .line 250
    invoke-direct {v2}, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;-><init>()V

    .line 251
    .line 252
    .line 253
    iput-object v4, v2, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->environment:Ljava/lang/String;

    .line 254
    .line 255
    iput-object v8, v2, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 256
    .line 257
    iput-object v3, v2, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->name:Ljava/lang/String;

    .line 258
    .line 259
    iput-object v6, v2, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->accessToken:Ljava/lang/String;

    .line 260
    .line 261
    iput-wide v11, v2, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->accessExpiresAt:J

    .line 262
    .line 263
    iput-object v7, v2, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->refreshToken:Ljava/lang/String;

    .line 264
    .line 265
    iput-wide v9, v2, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->refreshExpiresAt:J

    .line 266
    .line 267
    invoke-virtual {v1, v2}, Lm/e;->F(Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 268
    .line 269
    .line 270
    monitor-exit v1

    .line 271
    invoke-virtual {v0, v8, v3}, Lcom/sgscq/vpn/h;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/sgscq/vpn/f;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    iget-object v0, v0, Lcom/sgscq/vpn/h;->b:Landroid/content/Context;

    .line 276
    .line 277
    const/4 v2, 0x1

    .line 278
    invoke-static {v0, v2}, Lo/j;->b(Landroid/content/Context;Z)V

    .line 279
    .line 280
    .line 281
    return-object v1

    .line 282
    :catchall_0
    move-exception v0

    .line 283
    monitor-exit v1

    .line 284
    throw v0

    .line 285
    :cond_2
    iget-object v0, v2, Lcom/sgscq/vpn/cloud/z;->b:Lm/e;

    .line 286
    .line 287
    invoke-virtual {v0}, Lm/e;->a()V

    .line 288
    .line 289
    .line 290
    new-instance v0, Lcom/sgscq/vpn/cloud/a0;

    .line 291
    .line 292
    const-string v1, "\u4e91\u670d\u52a1\u7248\u672c\u73af\u5883\u4e0d\u5339\u914d\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55\u7231\u53d1\u7535"

    .line 293
    .line 294
    const/16 v2, 0x199

    .line 295
    .line 296
    const-string v3, "cloud_environment_mismatch"

    .line 297
    .line 298
    const/4 v4, 0x0

    .line 299
    invoke-direct {v0, v2, v4, v3, v1}, Lcom/sgscq/vpn/cloud/a0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    throw v0

    .line 303
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 304
    .line 305
    const-string v1, "\u4e91\u4f1a\u8bdd\u54cd\u5e94\u4e0d\u5b8c\u6574"

    .line 306
    .line 307
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    throw v0

    .line 311
    :goto_2
    iget-object v0, p0, Lcom/sgscq/vpn/a;->b:Ljava/lang/Object;

    .line 312
    .line 313
    check-cast v0, Lcom/sgscq/vpn/h;

    .line 314
    .line 315
    iget-object v1, p0, Lcom/sgscq/vpn/a;->c:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast v1, Lcom/sgscq/vpn/f;

    .line 318
    .line 319
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    .line 321
    .line 322
    iget-object v2, v1, Lcom/sgscq/vpn/f;->a:Ljava/lang/String;

    .line 323
    .line 324
    iget-object v1, v1, Lcom/sgscq/vpn/f;->b:Ljava/lang/String;

    .line 325
    .line 326
    invoke-virtual {v0, v2, v1}, Lcom/sgscq/vpn/h;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/sgscq/vpn/f;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    return-object v0

    .line 331
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final run()Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Lcom/sgscq/vpn/a;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "application/json"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/16 v4, 0xc8

    .line 8
    .line 9
    const-string v5, "Accept"

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    const-string v7, "GET"

    .line 13
    .line 14
    iget-object v8, p0, Lcom/sgscq/vpn/a;->c:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v9, p0, Lcom/sgscq/vpn/a;->b:Ljava/lang/Object;

    .line 17
    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    :pswitch_0
    goto/16 :goto_7

    .line 22
    .line 23
    :pswitch_1
    check-cast v9, Lcom/sgscq/vpn/c7;

    .line 24
    .line 25
    check-cast v8, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    new-instance v0, Ljava/net/URL;

    .line 31
    .line 32
    invoke-direct {v0, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 40
    .line 41
    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/16 v1, 0xbb8

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v6}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 56
    .line 57
    .line 58
    :try_start_0
    const-string v1, "Date"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-eqz v1, :cond_0

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_0

    .line 71
    .line 72
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 73
    .line 74
    const-string v3, "EEE, dd MMM yyyy HH:mm:ss zzz"

    .line 75
    .line 76
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 77
    .line 78
    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 79
    .line 80
    .line 81
    const-string v3, "GMT"

    .line 82
    .line 83
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 95
    .line 96
    .line 97
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 99
    .line 100
    .line 101
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    return-object v0

    .line 106
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/Exception;

    .line 107
    .line 108
    const-string v2, "missing Date header"

    .line 109
    .line 110
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :catchall_0
    move-exception v1

    .line 115
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 116
    .line 117
    .line 118
    throw v1

    .line 119
    :pswitch_2
    check-cast v9, La/w;

    .line 120
    .line 121
    check-cast v8, Ljava/net/Proxy;

    .line 122
    .line 123
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    :try_start_2
    new-instance v0, Ljava/net/URL;

    .line 127
    .line 128
    const-string v2, "https://oauth.sgscq.com/"

    .line 129
    .line 130
    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    if-nez v8, :cond_1

    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {v0, v8}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    :goto_0
    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 145
    .line 146
    :try_start_3
    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const/16 v2, 0x7d0

    .line 150
    .line 151
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 155
    .line 156
    .line 157
    const-string v2, "text/html,*/*"

    .line 158
    .line 159
    invoke-virtual {v0, v5, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 163
    .line 164
    .line 165
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 166
    const-string v3, " HTTP "

    .line 167
    .line 168
    const-string v5, "\u63a2\u6d4b\u54cd\u5e94 "

    .line 169
    .line 170
    if-lt v2, v4, :cond_4

    .line 171
    .line 172
    const/16 v4, 0x1f4

    .line 173
    .line 174
    if-ge v2, v4, :cond_4

    .line 175
    .line 176
    const/16 v4, 0x190

    .line 177
    .line 178
    if-lt v2, v4, :cond_2

    .line 179
    .line 180
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    goto :goto_1

    .line 185
    :cond_2
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    :goto_1
    if-eqz v4, :cond_3

    .line 190
    .line 191
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 192
    .line 193
    .line 194
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-static {v8}, Lcom/sgscq/vpn/r3;->h(Ljava/net/Proxy;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-static {v2}, Lcom/sgscq/vpn/r3;->d(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 220
    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_4
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-static {v8}, Lcom/sgscq/vpn/r3;->h(Ljava/net/Proxy;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-static {v1}, Lcom/sgscq/vpn/r3;->d(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 249
    .line 250
    .line 251
    move v1, v6

    .line 252
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    return-object v0

    .line 257
    :catchall_1
    move-exception v1

    .line 258
    move-object v3, v0

    .line 259
    goto :goto_3

    .line 260
    :catchall_2
    move-exception v0

    .line 261
    move-object v1, v0

    .line 262
    :goto_3
    if-eqz v3, :cond_5

    .line 263
    .line 264
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 265
    .line 266
    .line 267
    :cond_5
    throw v1

    .line 268
    :pswitch_3
    check-cast v9, Lcom/sgscq/vpn/b0;

    .line 269
    .line 270
    check-cast v8, Ljava/lang/String;

    .line 271
    .line 272
    sget v0, Lcom/sgscq/vpn/b0;->c:I

    .line 273
    .line 274
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    const-string v0, ""

    .line 278
    .line 279
    const-string v1, "code"

    .line 280
    .line 281
    const-string v9, "profile HTTP "

    .line 282
    .line 283
    new-instance v10, Ljava/net/URL;

    .line 284
    .line 285
    new-instance v11, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-static {}, Lcom/sgscq/vpn/p5;->S()[Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v12

    .line 294
    const/4 v13, 0x2

    .line 295
    aget-object v12, v12, v13

    .line 296
    .line 297
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v8

    .line 307
    invoke-direct {v10, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 311
    .line 312
    .line 313
    move-result-object v8

    .line 314
    check-cast v8, Ljava/net/HttpURLConnection;

    .line 315
    .line 316
    invoke-virtual {v8, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    const/16 v7, 0x2710

    .line 320
    .line 321
    invoke-virtual {v8, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 322
    .line 323
    .line 324
    const/16 v7, 0x3a98

    .line 325
    .line 326
    invoke-virtual {v8, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v8, v5, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    const-string v2, "User-Agent"

    .line 333
    .line 334
    const-string v5, "Mozilla/5.0"

    .line 335
    .line 336
    invoke-virtual {v8, v2, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    :try_start_6
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 340
    .line 341
    .line 342
    move-result v2

    .line 343
    if-ne v2, v4, :cond_b

    .line 344
    .line 345
    new-instance v2, Ljava/io/BufferedReader;

    .line 346
    .line 347
    new-instance v4, Ljava/io/InputStreamReader;

    .line 348
    .line 349
    invoke-virtual {v8}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 350
    .line 351
    .line 352
    move-result-object v5

    .line 353
    const-string v7, "UTF-8"

    .line 354
    .line 355
    invoke-direct {v4, v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 359
    .line 360
    .line 361
    new-instance v4, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .line 365
    .line 366
    :goto_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v5

    .line 370
    if-eqz v5, :cond_6

    .line 371
    .line 372
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    goto :goto_4

    .line 376
    :cond_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 377
    .line 378
    .line 379
    new-instance v2, Lorg/json/JSONObject;

    .line 380
    .line 381
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v4

    .line 385
    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    const/4 v4, -0x1

    .line 389
    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 390
    .line 391
    .line 392
    move-result v5

    .line 393
    if-nez v5, :cond_a

    .line 394
    .line 395
    const-string v1, "data"

    .line 396
    .line 397
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    if-nez v1, :cond_7

    .line 402
    .line 403
    goto :goto_5

    .line 404
    :cond_7
    const-string v2, "card"

    .line 405
    .line 406
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 407
    .line 408
    .line 409
    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 410
    if-nez v1, :cond_8

    .line 411
    .line 412
    :goto_5
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 413
    .line 414
    .line 415
    goto :goto_6

    .line 416
    :cond_8
    :try_start_7
    new-instance v3, Lcom/sgscq/vpn/x;

    .line 417
    .line 418
    invoke-direct {v3}, Lcom/sgscq/vpn/x;-><init>()V

    .line 419
    .line 420
    .line 421
    const-string v2, "name"

    .line 422
    .line 423
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    iput-object v2, v3, Lcom/sgscq/vpn/x;->a:Ljava/lang/String;

    .line 428
    .line 429
    const-string v2, "face"

    .line 430
    .line 431
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    iput-object v0, v3, Lcom/sgscq/vpn/x;->b:Ljava/lang/String;

    .line 436
    .line 437
    const-string v0, "level_info"

    .line 438
    .line 439
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    if-eqz v0, :cond_9

    .line 444
    .line 445
    const-string v1, "current_level"

    .line 446
    .line 447
    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 448
    .line 449
    .line 450
    move-result v6

    .line 451
    :cond_9
    iput v6, v3, Lcom/sgscq/vpn/x;->c:I

    .line 452
    .line 453
    goto :goto_5

    .line 454
    :goto_6
    return-object v3

    .line 455
    :cond_a
    new-instance v0, Ljava/lang/Exception;

    .line 456
    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    .line 458
    .line 459
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .line 461
    .line 462
    const-string v5, "profile code "

    .line 463
    .line 464
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v1

    .line 478
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    throw v0

    .line 482
    :cond_b
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->t0(I)Z

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    if-eqz v0, :cond_c

    .line 487
    .line 488
    new-instance v0, Lq/j;

    .line 489
    .line 490
    invoke-direct {v0, v2}, Lq/j;-><init>(I)V

    .line 491
    .line 492
    .line 493
    throw v0

    .line 494
    :cond_c
    new-instance v0, Ljava/lang/Exception;

    .line 495
    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    .line 497
    .line 498
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 512
    :catchall_3
    move-exception v0

    .line 513
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 514
    .line 515
    .line 516
    throw v0

    .line 517
    :goto_7
    check-cast v9, Lcom/sgscq/vpn/config/f;

    .line 518
    .line 519
    check-cast v8, Lcom/sgscq/vpn/k;

    .line 520
    .line 521
    const-string v0, "\u8fde\u63a5\u5931\u8d25\uff1aHTTP "

    .line 522
    .line 523
    :try_start_8
    new-instance v10, Ljava/net/URL;

    .line 524
    .line 525
    const-string v11, "https://api.sgscq.com/api/v1/online-healthz"

    .line 526
    .line 527
    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    invoke-static {v9}, Lcom/sgscq/vpn/p5;->P0(Lcom/sgscq/vpn/config/f;)Ljava/net/Proxy;

    .line 531
    .line 532
    .line 533
    move-result-object v9

    .line 534
    invoke-virtual {v8, v9, v10}, Lcom/sgscq/vpn/k;->d(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 535
    .line 536
    .line 537
    move-result-object v3

    .line 538
    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    const/16 v7, 0x1388

    .line 542
    .line 543
    invoke-virtual {v3, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v3, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v3, v6}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v3, v5, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 556
    .line 557
    .line 558
    move-result v2

    .line 559
    if-lt v2, v4, :cond_d

    .line 560
    .line 561
    const/16 v4, 0x12c

    .line 562
    .line 563
    if-ge v2, v4, :cond_d

    .line 564
    .line 565
    const-string v0, "\u8fde\u63a5\u6210\u529f"

    .line 566
    .line 567
    new-instance v2, Lq/n;

    .line 568
    .line 569
    invoke-direct {v2, v0, v1}, Lq/n;-><init>(Ljava/lang/String;Z)V

    .line 570
    .line 571
    .line 572
    goto :goto_8

    .line 573
    :cond_d
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->t0(I)Z

    .line 574
    .line 575
    .line 576
    move-result v1

    .line 577
    if-nez v1, :cond_e

    .line 578
    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    .line 580
    .line 581
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    new-instance v2, Lq/n;

    .line 592
    .line 593
    invoke-direct {v2, v0, v6}, Lq/n;-><init>(Ljava/lang/String;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 594
    .line 595
    .line 596
    :goto_8
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 597
    .line 598
    .line 599
    return-object v2

    .line 600
    :cond_e
    :try_start_9
    new-instance v0, Lq/j;

    .line 601
    .line 602
    invoke-direct {v0, v2}, Lq/j;-><init>(I)V

    .line 603
    .line 604
    .line 605
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 606
    :catchall_4
    move-exception v0

    .line 607
    if-eqz v3, :cond_f

    .line 608
    .line 609
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 610
    .line 611
    .line 612
    :cond_f
    throw v0

    .line 613
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
