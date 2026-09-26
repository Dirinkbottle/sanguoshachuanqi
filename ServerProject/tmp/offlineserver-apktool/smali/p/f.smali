.class public final synthetic Lp/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lp/f;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lp/f;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lp/f;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget v0, p0, Lp/f;->a:I

    .line 2
    .line 3
    const/16 v1, 0x4000

    .line 4
    .line 5
    const/16 v2, 0x1bb

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/16 v4, 0x50

    .line 9
    .line 10
    const-string v5, "403 Forbidden"

    .line 11
    .line 12
    const-string v6, "502 Bad Gateway"

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    const/16 v8, 0x7530

    .line 16
    .line 17
    const/4 v9, 0x0

    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    goto/16 :goto_8

    .line 22
    .line 23
    :pswitch_0
    iget-object v0, p0, Lp/f;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lq/d;

    .line 26
    .line 27
    iget-object v10, p0, Lp/f;->c:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v10, Ljava/net/Socket;

    .line 30
    .line 31
    sget-object v11, Lq/d;->g:Lq/d;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    :try_start_0
    invoke-virtual {v10, v8}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 37
    .line 38
    .line 39
    new-instance v11, Ljava/io/BufferedInputStream;

    .line 40
    .line 41
    invoke-virtual {v10}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 42
    .line 43
    .line 44
    move-result-object v12

    .line 45
    invoke-direct {v11, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v11}, Lq/d;->d(Ljava/io/BufferedInputStream;)Lc/f;

    .line 49
    .line 50
    .line 51
    move-result-object v12

    .line 52
    if-eqz v12, :cond_0

    .line 53
    .line 54
    iget-object v13, v12, Lc/f;->a:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v13}, Lcom/sgscq/vpn/cloud/m0;->H1(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v13

    .line 60
    if-eqz v13, :cond_0

    .line 61
    .line 62
    iget v13, v12, Lc/f;->b:I

    .line 63
    .line 64
    if-eq v13, v4, :cond_1

    .line 65
    .line 66
    if-ne v13, v2, :cond_0

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    move v3, v9

    .line 70
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    .line 71
    .line 72
    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    sget-object v2, Lq/e;->b:Lc/i;

    .line 78
    .line 79
    iget-boolean v3, v2, Lc/i;->b:Z

    .line 80
    .line 81
    if-nez v3, :cond_3

    .line 82
    .line 83
    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const-string v5, "503 Service Unavailable"

    .line 88
    .line 89
    :goto_1
    invoke-static {v1, v5}, Lq/d;->e(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_5

    .line 93
    :cond_3
    invoke-virtual {v0, v12, v2}, Lq/d;->b(Lc/f;Lc/i;)Ljava/net/Socket;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    invoke-virtual {v7, v8}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    const-string v3, "200 Connection Established"

    .line 105
    .line 106
    invoke-static {v2, v3}, Lq/d;->e(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object v2, v0, Lq/d;->c:Ljava/util/concurrent/ExecutorService;

    .line 110
    .line 111
    new-instance v3, Lq/b;

    .line 112
    .line 113
    invoke-direct {v3, v7, v10, v9}, Lq/b;-><init>(Ljava/net/Socket;Ljava/net/Socket;I)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    new-array v1, v1, [B

    .line 124
    .line 125
    :goto_2
    invoke-virtual {v11, v1}, Ljava/io/InputStream;->read([B)I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-ltz v3, :cond_5

    .line 130
    .line 131
    if-nez v3, :cond_4

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_4
    invoke-virtual {v2, v1, v9, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :catchall_0
    move-exception v1

    .line 142
    goto :goto_3

    .line 143
    :catch_0
    :try_start_1
    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-static {v1, v6}, Lq/d;->e(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    .line 149
    .line 150
    goto :goto_4

    .line 151
    :goto_3
    invoke-static {v7}, Lq/d;->a(Ljava/net/Socket;)V

    .line 152
    .line 153
    .line 154
    invoke-static {v10}, Lq/d;->a(Ljava/net/Socket;)V

    .line 155
    .line 156
    .line 157
    iget-object v0, v0, Lq/d;->b:Ljava/util/concurrent/Semaphore;

    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 160
    .line 161
    .line 162
    throw v1

    .line 163
    :catch_1
    :cond_5
    :goto_4
    invoke-static {v7}, Lq/d;->a(Ljava/net/Socket;)V

    .line 164
    .line 165
    .line 166
    :goto_5
    invoke-static {v10}, Lq/d;->a(Ljava/net/Socket;)V

    .line 167
    .line 168
    .line 169
    iget-object v0, v0, Lq/d;->b:Ljava/util/concurrent/Semaphore;

    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :pswitch_1
    iget-object v0, p0, Lp/f;->b:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast v0, Lp/l;

    .line 178
    .line 179
    iget-object v1, p0, Lp/f;->c:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v1, Ljava/lang/Runnable;

    .line 182
    .line 183
    iget-object v2, v0, Lp/l;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 184
    .line 185
    const-string v3, "\u5237\u65b0\u5931\u8d25: "

    .line 186
    .line 187
    :try_start_2
    invoke-virtual {v0}, Lp/l;->j()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 191
    .line 192
    .line 193
    if-eqz v1, :cond_6

    .line 194
    .line 195
    goto :goto_6

    .line 196
    :catchall_1
    move-exception v0

    .line 197
    goto :goto_7

    .line 198
    :catch_2
    move-exception v0

    .line 199
    :try_start_3
    const-string v4, "VpsLimitedSchedule"

    .line 200
    .line 201
    new-instance v5, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-static {v0}, Lp/l;->k(Ljava/lang/Exception;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-static {v4, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 221
    .line 222
    .line 223
    if-eqz v1, :cond_6

    .line 224
    .line 225
    :goto_6
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 226
    .line 227
    .line 228
    :cond_6
    return-void

    .line 229
    :goto_7
    invoke-virtual {v2, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 230
    .line 231
    .line 232
    if-eqz v1, :cond_7

    .line 233
    .line 234
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 235
    .line 236
    .line 237
    :cond_7
    throw v0

    .line 238
    :goto_8
    iget-object v0, p0, Lp/f;->b:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v0, Lq/i;

    .line 241
    .line 242
    iget-object v10, p0, Lp/f;->c:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v10, Ljava/net/Socket;

    .line 245
    .line 246
    iget-object v11, v0, Lq/i;->b:Ljava/util/concurrent/Semaphore;

    .line 247
    .line 248
    :try_start_4
    invoke-virtual {v10, v8}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 249
    .line 250
    .line 251
    new-instance v12, Ljava/io/BufferedInputStream;

    .line 252
    .line 253
    invoke-virtual {v10}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 254
    .line 255
    .line 256
    move-result-object v13

    .line 257
    invoke-direct {v12, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 258
    .line 259
    .line 260
    invoke-static {v12}, Lq/i;->g(Ljava/io/BufferedInputStream;)Lc/f;

    .line 261
    .line 262
    .line 263
    move-result-object v13

    .line 264
    if-eqz v13, :cond_9

    .line 265
    .line 266
    iget-object v14, v13, Lc/f;->a:Ljava/lang/String;

    .line 267
    .line 268
    invoke-static {v14}, Lcom/sgscq/vpn/cloud/m0;->H1(Ljava/lang/String;)Z

    .line 269
    .line 270
    .line 271
    move-result v14

    .line 272
    if-eqz v14, :cond_9

    .line 273
    .line 274
    iget v14, v13, Lc/f;->b:I

    .line 275
    .line 276
    if-eq v14, v4, :cond_8

    .line 277
    .line 278
    if-ne v14, v2, :cond_9

    .line 279
    .line 280
    :cond_8
    move v2, v3

    .line 281
    goto :goto_9

    .line 282
    :cond_9
    move v2, v9

    .line 283
    :goto_9
    if-nez v2, :cond_a

    .line 284
    .line 285
    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-static {v0, v5}, Lq/i;->i(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_d

    .line 293
    .line 294
    :cond_a
    invoke-virtual {v0}, Lq/i;->c()Ljavax/net/ssl/SSLSocket;

    .line 295
    .line 296
    .line 297
    move-result-object v7

    .line 298
    invoke-virtual {v7, v8}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-static {v13}, Lq/i;->a(Lc/f;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 310
    .line 311
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    invoke-static {v2}, Lq/i;->f(Ljava/io/InputStream;)[B

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write([B)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 345
    .line 346
    .line 347
    :try_start_5
    invoke-static {v2}, Lq/i;->e([B)Z

    .line 348
    .line 349
    .line 350
    move-result v2

    .line 351
    if-nez v2, :cond_b

    .line 352
    .line 353
    goto :goto_c

    .line 354
    :cond_b
    iget-object v0, v0, Lq/i;->c:Ljava/util/concurrent/ExecutorService;

    .line 355
    .line 356
    new-instance v2, Lq/b;

    .line 357
    .line 358
    invoke-direct {v2, v7, v10, v3}, Lq/b;-><init>(Ljava/net/Socket;Ljava/net/Socket;I)V

    .line 359
    .line 360
    .line 361
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    new-array v1, v1, [B

    .line 369
    .line 370
    :goto_a
    invoke-virtual {v12, v1}, Ljava/io/InputStream;->read([B)I

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    if-ltz v2, :cond_d

    .line 375
    .line 376
    if-nez v2, :cond_c

    .line 377
    .line 378
    goto :goto_a

    .line 379
    :cond_c
    invoke-virtual {v0, v1, v9, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 383
    .line 384
    .line 385
    goto :goto_a

    .line 386
    :catchall_2
    move-exception v0

    .line 387
    goto :goto_b

    .line 388
    :catch_3
    move v3, v9

    .line 389
    :catch_4
    if-nez v3, :cond_d

    .line 390
    .line 391
    :try_start_6
    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    invoke-static {v0, v6}, Lq/i;->i(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 396
    .line 397
    .line 398
    goto :goto_c

    .line 399
    :goto_b
    invoke-static {v7}, Lq/i;->b(Ljava/net/Socket;)V

    .line 400
    .line 401
    .line 402
    invoke-static {v10}, Lq/i;->b(Ljava/net/Socket;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v11}, Ljava/util/concurrent/Semaphore;->release()V

    .line 406
    .line 407
    .line 408
    throw v0

    .line 409
    :catch_5
    :cond_d
    :goto_c
    invoke-static {v7}, Lq/i;->b(Ljava/net/Socket;)V

    .line 410
    .line 411
    .line 412
    :goto_d
    invoke-static {v10}, Lq/i;->b(Ljava/net/Socket;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v11}, Ljava/util/concurrent/Semaphore;->release()V

    .line 416
    .line 417
    .line 418
    return-void

    .line 419
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
