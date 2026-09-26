.class public final synthetic Lcom/sgscq/vpn/d;
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
    iput p3, p0, Lcom/sgscq/vpn/d;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/d;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/sgscq/vpn/d;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/d;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/sgscq/vpn/v6;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/sgscq/vpn/d;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/net/Socket;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    :try_start_0
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/16 v4, 0x1000

    .line 19
    .line 20
    new-array v4, v4, [B

    .line 21
    .line 22
    :goto_0
    iget-boolean v5, v0, Lcom/sgscq/vpn/v6;->m:Z

    .line 23
    .line 24
    if-nez v5, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-lez v5, :cond_0

    .line 31
    .line 32
    new-array v6, v5, [B

    .line 33
    .line 34
    invoke-static {v4, v3, v6, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    iget v7, v0, Lcom/sgscq/vpn/v6;->h:I

    .line 38
    .line 39
    iget v8, v0, Lcom/sgscq/vpn/v6;->i:I

    .line 40
    .line 41
    invoke-virtual {v0, v6, v7, v8}, Lcom/sgscq/vpn/v6;->f([BII)V

    .line 42
    .line 43
    .line 44
    iget v6, v0, Lcom/sgscq/vpn/v6;->h:I

    .line 45
    .line 46
    add-int/2addr v6, v5

    .line 47
    iput v6, v0, Lcom/sgscq/vpn/v6;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    :try_start_1
    iget-boolean v1, v0, Lcom/sgscq/vpn/v6;->m:Z

    .line 51
    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/sgscq/vpn/v6;->a()V

    .line 55
    .line 56
    .line 57
    iget v1, v0, Lcom/sgscq/vpn/v6;->h:I

    .line 58
    .line 59
    iget v4, v0, Lcom/sgscq/vpn/v6;->i:I

    .line 60
    .line 61
    invoke-virtual {v0, v1, v4}, Lcom/sgscq/vpn/v6;->g(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    .line 63
    .line 64
    :cond_1
    iput-boolean v2, v0, Lcom/sgscq/vpn/v6;->m:Z

    .line 65
    .line 66
    iget-object v1, v0, Lcom/sgscq/vpn/v6;->k:Ljava/lang/Object;

    .line 67
    .line 68
    monitor-enter v1

    .line 69
    :try_start_2
    iget-object v2, v0, Lcom/sgscq/vpn/v6;->k:Ljava/lang/Object;

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 72
    .line 73
    .line 74
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    iget-object v0, v0, Lcom/sgscq/vpn/v6;->j:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 76
    .line 77
    new-array v1, v3, [B

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto/16 :goto_2

    .line 83
    .line 84
    :catchall_0
    move-exception v0

    .line 85
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    throw v0

    .line 87
    :catchall_1
    move-exception v1

    .line 88
    goto :goto_1

    .line 89
    :catch_0
    move-exception v1

    .line 90
    :try_start_4
    iget-boolean v4, v0, Lcom/sgscq/vpn/v6;->m:Z

    .line 91
    .line 92
    if-nez v4, :cond_2

    .line 93
    .line 94
    const-string v4, "SGSCQ_VPN"

    .line 95
    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v6, "HTTPS relay close: "

    .line 102
    .line 103
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-static {v4, v1}, Lcom/sgscq/vpn/z2;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 118
    .line 119
    .line 120
    :cond_2
    iput-boolean v2, v0, Lcom/sgscq/vpn/v6;->m:Z

    .line 121
    .line 122
    iget-object v1, v0, Lcom/sgscq/vpn/v6;->k:Ljava/lang/Object;

    .line 123
    .line 124
    monitor-enter v1

    .line 125
    :try_start_5
    iget-object v2, v0, Lcom/sgscq/vpn/v6;->k:Ljava/lang/Object;

    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 128
    .line 129
    .line 130
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 131
    iget-object v0, v0, Lcom/sgscq/vpn/v6;->j:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 132
    .line 133
    new-array v1, v3, [B

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    goto/16 :goto_2

    .line 139
    .line 140
    :catchall_2
    move-exception v0

    .line 141
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 142
    throw v0

    .line 143
    :goto_1
    iput-boolean v2, v0, Lcom/sgscq/vpn/v6;->m:Z

    .line 144
    .line 145
    iget-object v4, v0, Lcom/sgscq/vpn/v6;->k:Ljava/lang/Object;

    .line 146
    .line 147
    monitor-enter v4

    .line 148
    :try_start_7
    iget-object v2, v0, Lcom/sgscq/vpn/v6;->k:Ljava/lang/Object;

    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 151
    .line 152
    .line 153
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 154
    iget-object v0, v0, Lcom/sgscq/vpn/v6;->j:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 155
    .line 156
    new-array v2, v3, [B

    .line 157
    .line 158
    invoke-virtual {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    throw v1

    .line 162
    :catchall_3
    move-exception v0

    .line 163
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 164
    throw v0

    .line 165
    :catchall_4
    move-exception v1

    .line 166
    goto/16 :goto_4

    .line 167
    .line 168
    :catch_1
    move-exception v1

    .line 169
    :try_start_9
    iget-boolean v4, v0, Lcom/sgscq/vpn/v6;->m:Z

    .line 170
    .line 171
    if-nez v4, :cond_3

    .line 172
    .line 173
    const-string v4, "SGSCQ_VPN"

    .line 174
    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    const-string v6, "HTTPS relay server\u2192client end: "

    .line 181
    .line 182
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-static {v4, v1}, Lcom/sgscq/vpn/z2;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 197
    .line 198
    .line 199
    :cond_3
    :try_start_a
    iget-boolean v1, v0, Lcom/sgscq/vpn/v6;->m:Z

    .line 200
    .line 201
    if-nez v1, :cond_4

    .line 202
    .line 203
    invoke-virtual {v0}, Lcom/sgscq/vpn/v6;->a()V

    .line 204
    .line 205
    .line 206
    iget v1, v0, Lcom/sgscq/vpn/v6;->h:I

    .line 207
    .line 208
    iget v4, v0, Lcom/sgscq/vpn/v6;->i:I

    .line 209
    .line 210
    invoke-virtual {v0, v1, v4}, Lcom/sgscq/vpn/v6;->g(II)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 211
    .line 212
    .line 213
    :cond_4
    iput-boolean v2, v0, Lcom/sgscq/vpn/v6;->m:Z

    .line 214
    .line 215
    iget-object v1, v0, Lcom/sgscq/vpn/v6;->k:Ljava/lang/Object;

    .line 216
    .line 217
    monitor-enter v1

    .line 218
    :try_start_b
    iget-object v2, v0, Lcom/sgscq/vpn/v6;->k:Ljava/lang/Object;

    .line 219
    .line 220
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 221
    .line 222
    .line 223
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 224
    iget-object v0, v0, Lcom/sgscq/vpn/v6;->j:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 225
    .line 226
    new-array v1, v3, [B

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    goto :goto_2

    .line 232
    :catchall_5
    move-exception v0

    .line 233
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 234
    throw v0

    .line 235
    :catchall_6
    move-exception v1

    .line 236
    goto :goto_3

    .line 237
    :catch_2
    move-exception v1

    .line 238
    :try_start_d
    iget-boolean v4, v0, Lcom/sgscq/vpn/v6;->m:Z

    .line 239
    .line 240
    if-nez v4, :cond_5

    .line 241
    .line 242
    const-string v4, "SGSCQ_VPN"

    .line 243
    .line 244
    new-instance v5, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    const-string v6, "HTTPS relay close: "

    .line 250
    .line 251
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-static {v4, v1}, Lcom/sgscq/vpn/z2;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 266
    .line 267
    .line 268
    :cond_5
    iput-boolean v2, v0, Lcom/sgscq/vpn/v6;->m:Z

    .line 269
    .line 270
    iget-object v1, v0, Lcom/sgscq/vpn/v6;->k:Ljava/lang/Object;

    .line 271
    .line 272
    monitor-enter v1

    .line 273
    :try_start_e
    iget-object v2, v0, Lcom/sgscq/vpn/v6;->k:Ljava/lang/Object;

    .line 274
    .line 275
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 276
    .line 277
    .line 278
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 279
    iget-object v0, v0, Lcom/sgscq/vpn/v6;->j:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 280
    .line 281
    new-array v1, v3, [B

    .line 282
    .line 283
    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    :goto_2
    return-void

    .line 287
    :catchall_7
    move-exception v0

    .line 288
    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 289
    throw v0

    .line 290
    :goto_3
    iput-boolean v2, v0, Lcom/sgscq/vpn/v6;->m:Z

    .line 291
    .line 292
    iget-object v4, v0, Lcom/sgscq/vpn/v6;->k:Ljava/lang/Object;

    .line 293
    .line 294
    monitor-enter v4

    .line 295
    :try_start_10
    iget-object v2, v0, Lcom/sgscq/vpn/v6;->k:Ljava/lang/Object;

    .line 296
    .line 297
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 298
    .line 299
    .line 300
    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 301
    iget-object v0, v0, Lcom/sgscq/vpn/v6;->j:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 302
    .line 303
    new-array v2, v3, [B

    .line 304
    .line 305
    invoke-virtual {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    throw v1

    .line 309
    :catchall_8
    move-exception v0

    .line 310
    :try_start_11
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 311
    throw v0

    .line 312
    :goto_4
    :try_start_12
    iget-boolean v4, v0, Lcom/sgscq/vpn/v6;->m:Z

    .line 313
    .line 314
    if-nez v4, :cond_6

    .line 315
    .line 316
    invoke-virtual {v0}, Lcom/sgscq/vpn/v6;->a()V

    .line 317
    .line 318
    .line 319
    iget v4, v0, Lcom/sgscq/vpn/v6;->h:I

    .line 320
    .line 321
    iget v5, v0, Lcom/sgscq/vpn/v6;->i:I

    .line 322
    .line 323
    invoke-virtual {v0, v4, v5}, Lcom/sgscq/vpn/v6;->g(II)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    .line 324
    .line 325
    .line 326
    :cond_6
    iput-boolean v2, v0, Lcom/sgscq/vpn/v6;->m:Z

    .line 327
    .line 328
    iget-object v4, v0, Lcom/sgscq/vpn/v6;->k:Ljava/lang/Object;

    .line 329
    .line 330
    monitor-enter v4

    .line 331
    :try_start_13
    iget-object v2, v0, Lcom/sgscq/vpn/v6;->k:Ljava/lang/Object;

    .line 332
    .line 333
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 334
    .line 335
    .line 336
    monitor-exit v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 337
    iget-object v0, v0, Lcom/sgscq/vpn/v6;->j:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 338
    .line 339
    new-array v2, v3, [B

    .line 340
    .line 341
    invoke-virtual {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    goto :goto_5

    .line 345
    :catchall_9
    move-exception v0

    .line 346
    :try_start_14
    monitor-exit v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    .line 347
    throw v0

    .line 348
    :catchall_a
    move-exception v1

    .line 349
    goto :goto_6

    .line 350
    :catch_3
    move-exception v4

    .line 351
    :try_start_15
    iget-boolean v5, v0, Lcom/sgscq/vpn/v6;->m:Z

    .line 352
    .line 353
    if-nez v5, :cond_7

    .line 354
    .line 355
    const-string v5, "SGSCQ_VPN"

    .line 356
    .line 357
    new-instance v6, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .line 361
    .line 362
    const-string v7, "HTTPS relay close: "

    .line 363
    .line 364
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    invoke-static {v5, v4}, Lcom/sgscq/vpn/z2;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    .line 379
    .line 380
    .line 381
    :cond_7
    iput-boolean v2, v0, Lcom/sgscq/vpn/v6;->m:Z

    .line 382
    .line 383
    iget-object v4, v0, Lcom/sgscq/vpn/v6;->k:Ljava/lang/Object;

    .line 384
    .line 385
    monitor-enter v4

    .line 386
    :try_start_16
    iget-object v2, v0, Lcom/sgscq/vpn/v6;->k:Ljava/lang/Object;

    .line 387
    .line 388
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 389
    .line 390
    .line 391
    monitor-exit v4
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    .line 392
    iget-object v0, v0, Lcom/sgscq/vpn/v6;->j:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 393
    .line 394
    new-array v2, v3, [B

    .line 395
    .line 396
    invoke-virtual {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    :goto_5
    throw v1

    .line 400
    :catchall_b
    move-exception v0

    .line 401
    :try_start_17
    monitor-exit v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    .line 402
    throw v0

    .line 403
    :goto_6
    iput-boolean v2, v0, Lcom/sgscq/vpn/v6;->m:Z

    .line 404
    .line 405
    iget-object v2, v0, Lcom/sgscq/vpn/v6;->k:Ljava/lang/Object;

    .line 406
    .line 407
    monitor-enter v2

    .line 408
    :try_start_18
    iget-object v4, v0, Lcom/sgscq/vpn/v6;->k:Ljava/lang/Object;

    .line 409
    .line 410
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 411
    .line 412
    .line 413
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    .line 414
    iget-object v0, v0, Lcom/sgscq/vpn/v6;->j:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 415
    .line 416
    new-array v2, v3, [B

    .line 417
    .line 418
    invoke-virtual {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    throw v1

    .line 422
    :catchall_c
    move-exception v0

    .line 423
    :try_start_19
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    .line 424
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v1, p0

    iget v0, v1, Lcom/sgscq/vpn/d;->a:I

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    const/16 v5, 0x8

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_38

    :pswitch_0
    iget-object v0, v1, Lcom/sgscq/vpn/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/p7;

    iget-object v2, v1, Lcom/sgscq/vpn/d;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    sget-object v3, Lcom/sgscq/vpn/p7;->t:Ljava/util/HashMap;

    .line 1
    invoke-virtual {v0}, Lcom/sgscq/vpn/p7;->e()V

    iget-object v3, v0, Lcom/sgscq/vpn/p7;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/p7;->y(Ljava/util/List;)V

    iget-boolean v2, v0, Lcom/sgscq/vpn/p7;->r:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/sgscq/vpn/p7;->k:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/p7;->p(Ljava/util/List;)V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2
    :pswitch_1
    iget-object v0, v1, Lcom/sgscq/vpn/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/a7;

    iget-object v2, v1, Lcom/sgscq/vpn/d;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 3
    iget-object v0, v0, Lcom/sgscq/vpn/a7;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 4
    :pswitch_2
    iget-object v0, v1, Lcom/sgscq/vpn/d;->b:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcom/sgscq/vpn/c7;

    iget-object v0, v1, Lcom/sgscq/vpn/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/b7;

    .line 5
    iget-object v4, v10, Lcom/sgscq/vpn/c7;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v5, Lcom/sgscq/vpn/c7;->g:[Ljava/lang/String;

    const-string v6, ""

    const-wide v11, 0x7fffffffffffffffL

    move v7, v8

    :goto_1
    const/4 v13, 0x4

    if-ge v7, v13, :cond_2

    aget-object v13, v5, v7

    .line 6
    :try_start_1
    new-instance v14, Lcom/sgscq/vpn/a;

    const/4 v15, 0x6

    invoke-direct {v14, v10, v13, v15}, Lcom/sgscq/vpn/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v14}, Lcom/sgscq/vpn/p5;->O(Lq/l;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    cmp-long v2, v14, v2

    if-lez v2, :cond_1

    goto :goto_2

    :cond_1
    move v9, v8

    :goto_2
    move-wide v15, v14

    move-object v14, v13

    goto :goto_3

    :catch_0
    move-object v6, v13

    :catch_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    move-wide v15, v2

    move-object v14, v6

    move v9, v8

    :goto_3
    move-wide v12, v11

    move v11, v9

    :try_start_3
    invoke-virtual/range {v10 .. v16}, Lcom/sgscq/vpn/c7;->a(ZJLjava/lang/String;J)V

    if-eqz v0, :cond_3

    invoke-interface {v0, v9}, Lcom/sgscq/vpn/b7;->b(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    invoke-virtual {v4, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {v4, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0

    .line 8
    :pswitch_3
    iget-object v0, v1, Lcom/sgscq/vpn/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/g3;

    iget-object v2, v1, Lcom/sgscq/vpn/d;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/sgscq/vpn/x6;->a:Ljava/lang/Object;

    .line 9
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/g3;->a(Ljava/lang/String;)V

    return-void

    .line 10
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/sgscq/vpn/d;->a()V

    return-void

    :pswitch_5
    iget-object v0, v1, Lcom/sgscq/vpn/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/SettingsActivity;

    iget-object v2, v1, Lcom/sgscq/vpn/d;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    sget v3, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 11
    invoke-virtual {v0}, Lcom/sgscq/vpn/SettingsActivity;->m()V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "MM-dd HH:mm"

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move v5, v8

    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_6

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sgscq/vpn/cloud/w;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v11, v9, Lcom/sgscq/vpn/cloud/w;->c:Z

    const-string v12, ""

    if-eqz v11, :cond_4

    const-string v11, "\u5f53\u524d \u00b7 "

    goto :goto_5

    :cond_4
    move-object v11, v12

    :goto_5
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "r"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v9, Lcom/sgscq/vpn/cloud/w;->a:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " \u00b7 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v13, Ljava/util/Date;

    iget-wide v14, v9, Lcom/sgscq/vpn/cloud/w;->b:J

    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v13}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " \u00b7 \u7b49\u7ea7"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v9, Lcom/sgscq/vpn/cloud/w;->d:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " \u00b7 \u6218\u529b"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v9, Lcom/sgscq/vpn/cloud/w;->e:F

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v9, v9, Lcom/sgscq/vpn/cloud/w;->f:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_6

    :cond_5
    invoke-virtual {v11, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_6
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "\u9009\u62e9\u8981\u4e0b\u8f7d\u7684\u4e91\u7aef\u8282\u70b9\uff08\u4ec5\u6062\u590d\u672c\u5730\uff09"

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4, v8, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/sgscq/vpn/u0;

    invoke-direct {v4, v0, v2, v6}, Lcom/sgscq/vpn/u0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string v0, "\u4e0b\u8f7d"

    invoke-virtual {v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v0, v2, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 12
    :pswitch_6
    iget-object v0, v1, Lcom/sgscq/vpn/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/SettingsActivity;

    iget-object v2, v1, Lcom/sgscq/vpn/d;->c:Ljava/lang/Object;

    check-cast v2, Lcom/sgscq/vpn/cloud/g0;

    sget v3, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_8

    :cond_7
    iget-object v3, v0, Lcom/sgscq/vpn/SettingsActivity;->Q:Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 14
    iget-object v3, v2, Lcom/sgscq/vpn/cloud/g0;->b:Ljava/lang/Object;

    .line 15
    check-cast v3, Ljava/lang/String;

    .line 16
    iget-boolean v2, v2, Lcom/sgscq/vpn/cloud/g0;->a:Z

    if-eqz v2, :cond_8

    sget v2, Lcom/sgscq/vpn/p5;->B:I

    goto :goto_7

    :cond_8
    sget v2, Lcom/sgscq/vpn/p5;->D:I

    :goto_7
    invoke-virtual {v0, v3, v2}, Lcom/sgscq/vpn/SettingsActivity;->J(Ljava/lang/String;I)V

    :cond_9
    :goto_8
    return-void

    .line 17
    :pswitch_7
    iget-object v0, v1, Lcom/sgscq/vpn/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/SettingsActivity;

    iget-object v2, v1, Lcom/sgscq/vpn/d;->c:Ljava/lang/Object;

    check-cast v2, Lq/n;

    sget v3, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 18
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_a

    :cond_a
    iget-object v3, v0, Lcom/sgscq/vpn/SettingsActivity;->L:Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 19
    iget-object v3, v2, Lq/n;->b:Ljava/lang/String;

    .line 20
    iget-boolean v2, v2, Lq/n;->a:Z

    if-eqz v2, :cond_b

    sget v2, Lcom/sgscq/vpn/p5;->B:I

    goto :goto_9

    :cond_b
    sget v2, Lcom/sgscq/vpn/p5;->D:I

    :goto_9
    invoke-virtual {v0, v3, v2}, Lcom/sgscq/vpn/SettingsActivity;->L(Ljava/lang/String;I)V

    :cond_c
    :goto_a
    return-void

    .line 21
    :pswitch_8
    iget-object v0, v1, Lcom/sgscq/vpn/d;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/sgscq/vpn/SettingsActivity;

    iget-object v0, v1, Lcom/sgscq/vpn/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/config/f;

    sget v3, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    new-instance v3, Lcom/sgscq/vpn/k;

    const/16 v4, 0x13

    invoke-direct {v3, v4}, Lcom/sgscq/vpn/k;-><init>(I)V

    sget-object v4, Lcom/sgscq/vpn/p5;->V:Lcom/sgscq/vpn/k;

    if-eqz v0, :cond_10

    .line 23
    iget-boolean v6, v0, Lcom/sgscq/vpn/config/f;->a:Z

    if-nez v6, :cond_d

    goto :goto_b

    :cond_d
    :try_start_4
    new-instance v6, Lcom/sgscq/vpn/a;

    invoke-direct {v6, v0, v3, v5}, Lcom/sgscq/vpn/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v6, v4}, Lcom/sgscq/vpn/p5;->P(Lq/l;Lq/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/n;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_d

    :catch_2
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    :cond_f
    const-string v0, "\u8fde\u63a5\u5931\u8d25\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    new-instance v3, Lq/n;

    invoke-direct {v3, v0, v8}, Lq/n;-><init>(Ljava/lang/String;Z)V

    goto :goto_c

    :cond_10
    :goto_b
    const-string v0, "\u8fde\u63a5\u5931\u8d25\uff1a\u4ee3\u7406\u672a\u542f\u7528"

    .line 26
    new-instance v3, Lq/n;

    invoke-direct {v3, v0, v8}, Lq/n;-><init>(Ljava/lang/String;Z)V

    :goto_c
    move-object v0, v3

    .line 27
    :goto_d
    new-instance v3, Lcom/sgscq/vpn/d;

    const/16 v4, 0x15

    invoke-direct {v3, v2, v0, v4}, Lcom/sgscq/vpn/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 28
    :pswitch_9
    iget-object v0, v1, Lcom/sgscq/vpn/d;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/sgscq/vpn/SettingsActivity;

    iget-object v0, v1, Lcom/sgscq/vpn/d;->c:Ljava/lang/Object;

    check-cast v0, Lc/i;

    sget v3, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    new-instance v3, Lq/g;

    invoke-direct {v3}, Lq/g;-><init>()V

    new-instance v4, Lcom/sgscq/vpn/k;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, Lcom/sgscq/vpn/k;-><init>(I)V

    const-string v5, "\u6d4b\u8bd5\u5931\u8d25\uff1a"

    if-eqz v0, :cond_18

    .line 30
    iget-boolean v7, v0, Lc/i;->b:Z

    if-nez v7, :cond_11

    goto/16 :goto_11

    :cond_11
    invoke-virtual {v4}, Lcom/sgscq/vpn/k;->c()J

    move-result-wide v9

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    sget-object v11, Lcom/sgscq/vpn/cloud/m0;->w:[Ljava/lang/String;

    move v12, v8

    :goto_e
    if-ge v8, v6, :cond_15

    aget-object v6, v11, v8

    invoke-virtual {v3, v6, v0}, Lq/g;->b(Ljava/lang/String;Lc/i;)[Ljava/net/InetAddress;

    move-result-object v13

    if-eqz v13, :cond_14

    array-length v14, v13

    if-nez v14, :cond_12

    goto :goto_10

    :cond_12
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    array-length v15, v13

    :goto_f
    if-ge v12, v15, :cond_13

    aget-object v16, v13, v12

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v17

    goto :goto_f

    :cond_13
    move-object/from16 v17, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Lcom/sgscq/vpn/cloud/m0;->D1(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x2

    const/4 v12, 0x0

    move-object/from16 v0, v17

    goto :goto_e

    :cond_14
    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u6ca1\u6709\u53ef\u7528\u516c\u7f51\u5730\u5740"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    new-instance v3, Lcom/sgscq/vpn/cloud/g0;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/sgscq/vpn/cloud/g0;-><init>(Ljava/lang/Object;Z)V

    goto :goto_13

    .line 32
    :cond_15
    invoke-virtual {v4}, Lcom/sgscq/vpn/k;->c()J

    move-result-wide v3

    sub-long/2addr v3, v9

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u89e3\u6790\u6210\u529f \u00b7 "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/sgscq/vpn/cloud/m0;->D1(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " \u00b7 "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    new-instance v3, Lcom/sgscq/vpn/cloud/g0;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/sgscq/vpn/cloud/g0;-><init>(Ljava/lang/Object;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_13

    :catch_3
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_17

    :cond_16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    :cond_17
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_18
    :goto_11
    const-string v0, "\u6d4b\u8bd5\u5931\u8d25\uff1aAPP DNS \u672a\u542f\u7528"

    .line 35
    :goto_12
    new-instance v3, Lcom/sgscq/vpn/cloud/g0;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/sgscq/vpn/cloud/g0;-><init>(Ljava/lang/Object;Z)V

    .line 36
    :goto_13
    new-instance v0, Lcom/sgscq/vpn/d;

    const/16 v4, 0x16

    invoke-direct {v0, v2, v3, v4}, Lcom/sgscq/vpn/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 37
    :pswitch_a
    iget-object v0, v1, Lcom/sgscq/vpn/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/SettingsActivity;

    iget-object v2, v1, Lcom/sgscq/vpn/d;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget v3, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_19

    const-string v3, "\u5bfc\u5165\u5931\u8d25: "

    .line 38
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    iget-object v4, v0, Lcom/sgscq/vpn/SettingsActivity;->S:Landroid/widget/TextView;

    if-eqz v4, :cond_1a

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/sgscq/vpn/SettingsActivity;->S:Landroid/widget/TextView;

    sget v2, Lcom/sgscq/vpn/p5;->D:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_14

    :cond_19
    const-string v2, "\u9ad8\u6e05\u56fe\u8d44\u6e90\u5df2\u5bfc\u5165"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {v0}, Lcom/sgscq/vpn/SettingsActivity;->N()V

    :cond_1a
    :goto_14
    return-void

    .line 39
    :pswitch_b
    iget-object v0, v1, Lcom/sgscq/vpn/d;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/sgscq/vpn/SettingsActivity;

    iget-object v0, v1, Lcom/sgscq/vpn/d;->c:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    sget v3, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "hd_image.zip.tmp"

    const-string v5, "hd"

    .line 40
    :try_start_6
    new-instance v6, Ljava/io/File;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-direct {v6, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 41
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/io/File;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    const-string v11, "hd"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v10, "hd_image.zip"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :try_start_7
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    const/high16 v0, 0x10000

    :try_start_8
    new-array v0, v0, [B

    :goto_15
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-eq v11, v4, :cond_1b

    const/4 v12, 0x0

    invoke-virtual {v10, v0, v12, v11}, Ljava/io/OutputStream;->write([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_15

    :cond_1b
    :try_start_9
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, v9}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :try_start_b
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_16

    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v4, "\u65e0\u6cd5\u8986\u76d6\u65e7\u8d44\u6e90\u6587\u4ef6"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    :goto_16
    invoke-virtual {v9, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_1a

    :cond_1e
    new-instance v0, Ljava/io/IOException;

    const-string v4, "\u91cd\u547d\u540d\u5931\u8d25"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    :catchall_2
    move-exception v0

    move-object v6, v0

    :try_start_d
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_17

    :catchall_3
    move-exception v0

    move-object v4, v0

    :try_start_e
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_17
    throw v6
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    :catchall_4
    move-exception v0

    move-object v4, v0

    :try_start_f
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_18

    :catchall_5
    move-exception v0

    move-object v7, v0

    :try_start_10
    invoke-virtual {v4, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_18
    throw v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :catchall_6
    move-exception v0

    move-object v4, v0

    if-eqz v6, :cond_1f

    :try_start_11
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    goto :goto_19

    :catchall_7
    move-exception v0

    move-object v6, v0

    :try_start_12
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1f
    :goto_19
    throw v4
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v4, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :goto_1a
    new-instance v0, Lcom/sgscq/vpn/d;

    const/16 v3, 0x12

    invoke-direct {v0, v2, v7, v3}, Lcom/sgscq/vpn/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 43
    :pswitch_c
    iget-object v0, v1, Lcom/sgscq/vpn/d;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v2, v1, Lcom/sgscq/vpn/d;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    .line 44
    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 45
    :pswitch_d
    iget-object v0, v1, Lcom/sgscq/vpn/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/z4;

    iget-object v2, v1, Lcom/sgscq/vpn/d;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    :try_start_13
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/z4;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_5

    :try_start_14
    iget-object v4, v0, Lcom/sgscq/vpn/z4;->c:Lcom/sgscq/vpn/y4;

    invoke-interface {v4, v2}, Lcom/sgscq/vpn/y4;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/z4;->d(Ljava/lang/String;)V

    monitor-exit v3

    goto :goto_1b

    :catchall_8
    move-exception v0

    monitor-exit v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    :try_start_15
    throw v0
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_5

    :catch_5
    move-exception v0

    const-string v3, "SGSCQ_SAVE"

    const-string v4, "Player compaction failed uid="

    const-string v5, ": "

    .line 47
    invoke-static {v4, v2, v5}, La/b0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 48
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Lcom/sgscq/vpn/z2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1b
    return-void

    .line 49
    :pswitch_e
    iget-object v0, v1, Lcom/sgscq/vpn/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/PassportActivity;

    iget-object v2, v1, Lcom/sgscq/vpn/d;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Exception;

    sget v3, Lcom/sgscq/vpn/PassportActivity;->q:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {v0}, Lcom/sgscq/vpn/PassportActivity;->e()V

    return-void

    .line 51
    :pswitch_f
    iget-object v0, v1, Lcom/sgscq/vpn/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/PassportActivity;

    iget-object v2, v1, Lcom/sgscq/vpn/d;->c:Ljava/lang/Object;

    check-cast v2, [B

    .line 52
    iput-object v2, v0, Lcom/sgscq/vpn/PassportActivity;->l:[B

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.OPENABLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "application/octet-stream"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sgscq-save-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd-HHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".sgscqbackup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.extra.TITLE"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x3eb

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 53
    :pswitch_10
    iget-object v0, v1, Lcom/sgscq/vpn/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/PassportActivity;

    iget-object v2, v1, Lcom/sgscq/vpn/d;->c:Ljava/lang/Object;

    check-cast v2, Lcom/sgscq/vpn/cloud/p0;

    sget v3, Lcom/sgscq/vpn/PassportActivity;->q:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    sget-object v3, Lcom/sgscq/vpn/cloud/p0;->a:Lcom/sgscq/vpn/cloud/p0;

    if-ne v2, v3, :cond_20

    const/4 v3, 0x1

    goto :goto_1c

    :cond_20
    const/4 v3, 0x0

    :goto_1c
    iget-object v4, v0, Lcom/sgscq/vpn/PassportActivity;->e:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v4, v0, Lcom/sgscq/vpn/PassportActivity;->e:Landroid/widget/Button;

    if-eqz v3, :cond_21

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1d

    :cond_21
    const v3, 0x3ee66666    # 0.45f

    :goto_1d
    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v0, Lcom/sgscq/vpn/PassportActivity;->e:Landroid/widget/Button;

    invoke-static {v2}, Lcom/sgscq/vpn/cloud/q0;->c(Lcom/sgscq/vpn/cloud/p0;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 55
    :pswitch_11
    iget-object v0, v1, Lcom/sgscq/vpn/d;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/sgscq/vpn/PassportActivity;

    iget-object v0, v1, Lcom/sgscq/vpn/d;->c:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    sget v3, Lcom/sgscq/vpn/PassportActivity;->q:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    :try_start_16
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6

    if-eqz v3, :cond_26

    .line 57
    :try_start_17
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v5, 0x2000

    new-array v5, v5, [B

    const/4 v6, 0x0

    :goto_1e
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-eq v7, v4, :cond_23

    add-int/2addr v6, v7

    const/high16 v8, 0x7800000

    if-gt v6, v8, :cond_22

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1e

    :cond_22
    new-instance v0, Ljava/io/IOException;

    const-string v4, "\u5f52\u6863\u6587\u4ef6\u8fc7\u5927"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    .line 58
    :try_start_18
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    iget-object v3, v2, Lcom/sgscq/vpn/PassportActivity;->k:Lcom/sgscq/vpn/cloud/u0;

    invoke-virtual {v3, v0}, Lcom/sgscq/vpn/cloud/u0;->a([B)Lcom/sgscq/vpn/d0;

    move-result-object v0

    iget-object v0, v0, Lcom/sgscq/vpn/d0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_24

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_20

    :cond_24
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sgscq/vpn/cloud/s0;

    new-instance v5, Lcom/sgscq/vpn/cloud/t0;

    invoke-direct {v5, v4}, Lcom/sgscq/vpn/cloud/t0;-><init>(Lcom/sgscq/vpn/cloud/s0;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_25
    move-object v0, v3

    .line 60
    :goto_20
    new-instance v3, Lcom/sgscq/vpn/a4;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v0, v4}, Lcom/sgscq/vpn/a4;-><init>(Lcom/sgscq/vpn/PassportActivity;Ljava/util/List;I)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_6

    goto :goto_22

    :cond_26
    :try_start_19
    new-instance v0, Ljava/io/IOException;

    const-string v4, "\u65e0\u6cd5\u8bfb\u53d6\u5f52\u6863\u6587\u4ef6"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    :catchall_9
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_27

    :try_start_1a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    goto :goto_21

    :catchall_a
    move-exception v0

    move-object v3, v0

    :try_start_1b
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_27
    :goto_21
    throw v4
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_6

    :catch_6
    move-exception v0

    invoke-virtual {v2, v0}, Lcom/sgscq/vpn/PassportActivity;->h(Ljava/lang/Exception;)V

    :goto_22
    return-void

    .line 61
    :pswitch_12
    iget-object v0, v1, Lcom/sgscq/vpn/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/MainActivity;

    iget-object v2, v1, Lcom/sgscq/vpn/d;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 62
    iput-object v2, v0, Lcom/sgscq/vpn/MainActivity;->i:Ljava/util/List;

    invoke-virtual {v0}, Lcom/sgscq/vpn/MainActivity;->i()V

    return-void

    .line 63
    :pswitch_13
    iget-object v0, v1, Lcom/sgscq/vpn/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/MainActivity;

    iget-object v2, v1, Lcom/sgscq/vpn/d;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget v3, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 64
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_28

    .line 65
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_28

    const/4 v3, 0x1

    goto :goto_23

    :cond_28
    const/4 v3, 0x0

    :goto_23
    if-nez v3, :cond_29

    goto :goto_24

    .line 66
    :cond_29
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5bfc\u51fa\u5931\u8d25: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sgscq/vpn/MainActivity;->e(Ljava/lang/String;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u5bfc\u51fa\u5931\u8d25"

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "\u786e\u5b9a"

    invoke-virtual {v0, v2, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_24
    return-void

    .line 67
    :pswitch_14
    iget-object v0, v1, Lcom/sgscq/vpn/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/y2;

    iget-object v2, v1, Lcom/sgscq/vpn/d;->c:Ljava/lang/Object;

    check-cast v2, Ljava/net/Socket;

    sget-object v3, Lcom/sgscq/vpn/y2;->X:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "SGSCQ_SRV"

    const-string v4, "Client: "

    const/16 v5, 0x3a98

    .line 68
    :try_start_1c
    invoke-virtual {v2, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v5, Ljava/io/PushbackInputStream;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {v5}, Ljava/io/PushbackInputStream;->read()I

    move-result v6

    if-gez v6, :cond_2a

    goto :goto_26

    :cond_2a
    invoke-virtual {v5, v6}, Ljava/io/PushbackInputStream;->unread(I)V

    const/16 v7, 0x47

    if-eq v6, v7, :cond_2c

    const/16 v7, 0x50

    if-eq v6, v7, :cond_2c

    const/16 v7, 0x48

    if-eq v6, v7, :cond_2c

    const/16 v7, 0x44

    if-eq v6, v7, :cond_2c

    const/16 v7, 0x4f

    if-ne v6, v7, :cond_2b

    goto :goto_25

    :cond_2b
    const-string v0, "NON-HTTP raw connection"

    invoke-static {v3, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const-string v5, "HTTP/1.0 200 OK\r\nContent-Length: 0\r\n\r\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    goto :goto_27

    :cond_2c
    :goto_25
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2d

    :goto_26
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    goto :goto_27

    :cond_2d
    invoke-virtual {v0, v2, v5, v6}, Lcom/sgscq/vpn/y2;->c2(Ljava/net/Socket;Ljava/lang/String;Ljava/io/BufferedReader;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_7
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    goto :goto_27

    :catchall_b
    move-exception v0

    goto :goto_28

    :catch_7
    move-exception v0

    :try_start_1d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sgscq/vpn/z2;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    :goto_27
    :try_start_1e
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_8

    :catch_8
    return-void

    :goto_28
    :try_start_1f
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_9

    :catch_9
    throw v0

    .line 69
    :pswitch_15
    iget-object v0, v1, Lcom/sgscq/vpn/d;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/sgscq/vpn/y2;

    iget-object v0, v1, Lcom/sgscq/vpn/d;->c:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/net/ServerSocket;

    .line 70
    :cond_2e
    :goto_29
    iget-boolean v0, v2, Lcom/sgscq/vpn/y2;->a:Z

    if-eqz v0, :cond_2f

    :try_start_20
    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    new-instance v4, Ljava/lang/Thread;

    new-instance v6, Lcom/sgscq/vpn/d;

    invoke-direct {v6, v2, v0, v5}, Lcom/sgscq/vpn/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string v0, "HTTP"

    invoke-direct {v4, v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_a

    goto :goto_29

    :catch_a
    move-exception v0

    iget-boolean v4, v2, Lcom/sgscq/vpn/y2;->a:Z

    if-eqz v4, :cond_2e

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Accept: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "SGSCQ_SRV"

    .line 71
    invoke-static {v0, v4, v6}, Lc/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_29

    :cond_2f
    return-void

    .line 72
    :pswitch_16
    iget-object v0, v1, Lcom/sgscq/vpn/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/c1;

    iget-object v2, v1, Lcom/sgscq/vpn/d;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Exception;

    .line 73
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/sgscq/vpn/p6;

    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/p6;->a(Ljava/lang/String;)V

    return-void

    .line 74
    :pswitch_17
    iget-object v0, v1, Lcom/sgscq/vpn/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/c1;

    iget-object v2, v1, Lcom/sgscq/vpn/d;->c:Ljava/lang/Object;

    check-cast v2, Lcom/sgscq/vpn/d1;

    .line 75
    check-cast v0, Lcom/sgscq/vpn/p6;

    iget v3, v0, Lcom/sgscq/vpn/p6;->a:I

    const-string v4, "douyin"

    iget-object v0, v0, Lcom/sgscq/vpn/p6;->b:Lcom/sgscq/vpn/SettingsActivity;

    packed-switch v3, :pswitch_data_1

    const/4 v3, 0x1

    goto :goto_2b

    .line 76
    :pswitch_18
    iget-boolean v3, v2, Lcom/sgscq/vpn/d1;->c:Z

    if-eqz v3, :cond_30

    invoke-virtual {v2}, Lcom/sgscq/vpn/d1;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_2a

    :cond_30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/sgscq/vpn/d1;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u3002\u5982\u521a\u5173\u6ce8\uff0c\u8bf7\u7a0d\u540e\u518d\u70b9\u5237\u65b0\u3002"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2a
    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    sget v2, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 77
    invoke-virtual {v0}, Lcom/sgscq/vpn/SettingsActivity;->w()V

    const-string v2, "bind"

    .line 78
    invoke-static {v0, v2, v4}, Lcom/sgscq/vpn/z0;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 79
    :goto_2b
    invoke-virtual {v2}, Lcom/sgscq/vpn/d1;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    sget v2, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 80
    invoke-virtual {v0}, Lcom/sgscq/vpn/SettingsActivity;->w()V

    const-string v2, "refresh"

    .line 81
    invoke-static {v0, v2, v4}, Lcom/sgscq/vpn/z0;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c
    return-void

    .line 82
    :pswitch_19
    iget-object v0, v1, Lcom/sgscq/vpn/d;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/sgscq/vpn/a1;

    iget-object v0, v1, Lcom/sgscq/vpn/d;->c:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/CountDownLatch;

    const/16 v0, 0x14e9

    const/16 v4, 0x14ea

    .line 83
    filled-new-array {v0, v4}, [I

    move-result-object v4

    const/4 v0, 0x0

    move v5, v0

    :goto_2d
    const-string v6, "SGSCQ_DNS"

    const/4 v0, 0x2

    if-ge v5, v0, :cond_32

    .line 84
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    aget v8, v4, v5

    :try_start_21
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0, v7}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v0, v2, Lcom/sgscq/vpn/a1;->a:Ljava/net/DatagramSocket;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    iget-object v0, v2, Lcom/sgscq/vpn/a1;->a:Ljava/net/DatagramSocket;

    new-instance v9, Ljava/net/InetSocketAddress;

    const-string v10, "127.0.0.1"

    invoke-direct {v9, v10, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v9}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sgscq/vpn/a1;->d:Z

    sput v8, Lcom/sgscq/vpn/a1;->e:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DNS on 127.0.0.1:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " (need iptables redirect from :53)"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_b

    goto :goto_2e

    :catch_b
    move-exception v0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Cannot bind 127.0.0.1:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " \u2014 "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-static {v0, v9, v6}, Lc/a;->u(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 87
    iget-object v0, v2, Lcom/sgscq/vpn/a1;->a:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_31

    :try_start_22
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_c

    :catch_c
    iput-object v7, v2, Lcom/sgscq/vpn/a1;->a:Ljava/net/DatagramSocket;

    :cond_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    :cond_32
    :goto_2e
    iget-object v0, v2, Lcom/sgscq/vpn/a1;->a:Ljava/net/DatagramSocket;

    if-nez v0, :cond_33

    const-string v0, "DNS failed to bind"

    invoke-static {v6, v0}, Lcom/sgscq/vpn/z2;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sgscq/vpn/a1;->d:Z

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_30

    :cond_33
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/16 v3, 0x200

    new-array v4, v3, [B

    :cond_34
    :goto_2f
    iget-boolean v0, v2, Lcom/sgscq/vpn/a1;->b:Z

    if-eqz v0, :cond_35

    :try_start_23
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-direct {v0, v4, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    iget-object v5, v2, Lcom/sgscq/vpn/a1;->a:Ljava/net/DatagramSocket;

    invoke-virtual {v5, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v7

    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sgscq/vpn/a1;->d([B)[B

    move-result-object v5

    if-eqz v5, :cond_34

    new-instance v7, Ljava/net/DatagramPacket;

    array-length v8, v5

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    invoke-direct {v7, v5, v8, v9, v0}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    iget-object v0, v2, Lcom/sgscq/vpn/a1;->a:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v7}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_d

    goto :goto_2f

    :catch_d
    move-exception v0

    iget-boolean v5, v2, Lcom/sgscq/vpn/a1;->b:Z

    if-eqz v5, :cond_34

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "DNS error: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-static {v0, v5, v6}, Lc/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_2f

    :cond_35
    :goto_30
    return-void

    .line 89
    :pswitch_1a
    iget-object v0, v1, Lcom/sgscq/vpn/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/y;

    iget-object v2, v1, Lcom/sgscq/vpn/d;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Exception;

    sget v3, Lcom/sgscq/vpn/b0;->c:I

    .line 90
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/sgscq/vpn/p6;

    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/p6;->a(Ljava/lang/String;)V

    return-void

    .line 91
    :pswitch_1b
    iget-object v0, v1, Lcom/sgscq/vpn/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/y;

    iget-object v2, v1, Lcom/sgscq/vpn/d;->c:Ljava/lang/Object;

    check-cast v2, Lcom/sgscq/vpn/z;

    sget v3, Lcom/sgscq/vpn/b0;->c:I

    .line 92
    check-cast v0, Lcom/sgscq/vpn/p6;

    .line 93
    iget v3, v0, Lcom/sgscq/vpn/p6;->a:I

    const-string v4, "bilibili"

    .line 94
    iget-object v0, v0, Lcom/sgscq/vpn/p6;->b:Lcom/sgscq/vpn/SettingsActivity;

    packed-switch v3, :pswitch_data_2

    const/4 v3, 0x1

    goto :goto_32

    .line 95
    :pswitch_1c
    iget-boolean v3, v2, Lcom/sgscq/vpn/z;->c:Z

    if-eqz v3, :cond_36

    invoke-virtual {v2}, Lcom/sgscq/vpn/z;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_31

    :cond_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/sgscq/vpn/z;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u3002\u5982\u521a\u5173\u6ce8\uff0c\u8bf7\u7ea6 1 \u5929\u540e\u518d\u70b9\u5237\u65b0\u3002"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_31
    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    sget v2, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 96
    invoke-virtual {v0}, Lcom/sgscq/vpn/SettingsActivity;->u()V

    const-string v2, "bind"

    .line 97
    invoke-static {v0, v2, v4}, Lcom/sgscq/vpn/z0;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    .line 98
    :goto_32
    iget-boolean v5, v2, Lcom/sgscq/vpn/z;->c:Z

    invoke-virtual {v2}, Lcom/sgscq/vpn/z;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    sget v2, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 99
    invoke-virtual {v0}, Lcom/sgscq/vpn/SettingsActivity;->u()V

    const-string v2, "refresh"

    .line 100
    invoke-static {v0, v2, v4}, Lcom/sgscq/vpn/z0;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_33
    return-void

    .line 101
    :pswitch_1d
    iget-object v0, v1, Lcom/sgscq/vpn/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/e;

    iget-object v2, v1, Lcom/sgscq/vpn/d;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Exception;

    .line 102
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/sgscq/vpn/p6;

    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/p6;->a(Ljava/lang/String;)V

    return-void

    .line 103
    :pswitch_1e
    iget-object v0, v1, Lcom/sgscq/vpn/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/e;

    iget-object v2, v1, Lcom/sgscq/vpn/d;->c:Ljava/lang/Object;

    check-cast v2, Lcom/sgscq/vpn/f;

    .line 104
    check-cast v0, Lcom/sgscq/vpn/p6;

    iget v3, v0, Lcom/sgscq/vpn/p6;->a:I

    const-string v4, "afdian"

    iget-object v0, v0, Lcom/sgscq/vpn/p6;->b:Lcom/sgscq/vpn/SettingsActivity;

    packed-switch v3, :pswitch_data_3

    goto :goto_34

    :pswitch_1f
    const-string v2, "\u7231\u53d1\u7535\u6743\u76ca\u5df2\u5237\u65b0"

    const/4 v3, 0x0

    .line 105
    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    sget v2, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 106
    invoke-virtual {v0}, Lcom/sgscq/vpn/SettingsActivity;->t()V

    const-string v2, "refresh"

    .line 107
    invoke-static {v0, v2, v4}, Lcom/sgscq/vpn/z0;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 108
    :goto_34
    iget-boolean v3, v2, Lcom/sgscq/vpn/f;->d:Z

    if-eqz v3, :cond_37

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\u7231\u53d1\u7535\u767b\u5f55\u6210\u529f\uff1a\u8d5e\u52a9\u6709\u6548 Lv."

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Lcom/sgscq/vpn/f;->f:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_35

    :cond_37
    const-string v2, "\u7231\u53d1\u7535\u767b\u5f55\u6210\u529f\uff0c\u672a\u8bc6\u522b\u5230\u8d5e\u52a9\u8bb0\u5f55"

    :goto_35
    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    sget v2, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 109
    invoke-virtual {v0}, Lcom/sgscq/vpn/SettingsActivity;->t()V

    .line 110
    iget-object v2, v0, Lcom/sgscq/vpn/SettingsActivity;->m:Lcom/sgscq/vpn/cloud/q0;

    if-eqz v2, :cond_39

    .line 111
    iget-object v2, v0, Lcom/sgscq/vpn/SettingsActivity;->n:Lm/e;

    if-eqz v2, :cond_39

    invoke-virtual {v2}, Lm/e;->y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->isLoggedIn()Z

    move-result v2

    if-nez v2, :cond_38

    goto :goto_36

    :cond_38
    const-string v2, "\u6b63\u5728\u67e5\u627e\u5f53\u524d\u7231\u53d1\u7535\u8d26\u53f7\u7ed1\u5b9a\u7684\u4e91\u7aef\u89d2\u8272..."

    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/SettingsActivity;->H(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sgscq/vpn/f6;

    const/4 v5, 0x5

    invoke-direct {v3, v0, v5}, Lcom/sgscq/vpn/f6;-><init>(Lcom/sgscq/vpn/SettingsActivity;I)V

    const-string v5, "sgscq-cloud-login-switch"

    invoke-direct {v2, v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_39
    :goto_36
    const-string v2, "bind"

    .line 112
    invoke-static {v0, v2, v4}, Lcom/sgscq/vpn/z0;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_37
    return-void

    .line 113
    :goto_38
    iget-object v0, v1, Lcom/sgscq/vpn/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/t;

    iget-object v2, v1, Lcom/sgscq/vpn/d;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    :try_start_24
    iget-object v0, v0, Lcom/sgscq/vpn/t;->a:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/cloud/z;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/cloud/z;->h(Ljava/util/List;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_e

    :catch_e
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_18
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_1f
    .end packed-switch
.end method
