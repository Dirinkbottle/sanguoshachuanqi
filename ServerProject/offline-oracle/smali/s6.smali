.class public final synthetic Lcom/sgscq/vpn/s6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sgscq/vpn/SgscqVpnService;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/SgscqVpnService;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/s6;->a:Lcom/sgscq/vpn/SgscqVpnService;

    iput-wide p2, p0, Lcom/sgscq/vpn/s6;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lcom/sgscq/vpn/s6;->a:Lcom/sgscq/vpn/SgscqVpnService;

    .line 4
    .line 5
    iget-wide v3, v1, Lcom/sgscq/vpn/s6;->b:J

    .line 6
    .line 7
    const/4 v5, 0x1

    .line 8
    const/16 v0, 0x1f4

    .line 9
    .line 10
    move v6, v0

    .line 11
    move v7, v5

    .line 12
    :goto_0
    iget-boolean v0, v2, Lcom/sgscq/vpn/SgscqVpnService;->e:Z

    .line 13
    .line 14
    const/4 v8, 0x5

    .line 15
    const-string v10, "SGSCQ_VPN"

    .line 16
    .line 17
    if-gt v7, v8, :cond_c

    .line 18
    .line 19
    if-eqz v0, :cond_e

    .line 20
    .line 21
    iget-wide v11, v2, Lcom/sgscq/vpn/SgscqVpnService;->f:J

    .line 22
    .line 23
    cmp-long v0, v3, v11

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto/16 :goto_c

    .line 28
    .line 29
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v11, "\u72b6\u6001: \u9a8c\u8bc1\u4e2d (attempt "

    .line 32
    .line 33
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v11, "/5)..."

    .line 40
    .line 41
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v10, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, v2, Lcom/sgscq/vpn/SgscqVpnService;->h:Lcom/sgscq/vpn/a1;

    .line 52
    .line 53
    const-string v11, "127.0.0.1"

    .line 54
    .line 55
    const/16 v12, 0x7d0

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    sget-boolean v0, Lcom/sgscq/vpn/a1;->d:Z

    .line 60
    .line 61
    if-nez v0, :cond_1

    .line 62
    .line 63
    goto/16 :goto_4

    .line 64
    .line 65
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v13, "\u72b6\u6001: DNS \u5df2\u542f\u52a8 (127.0.0.1:"

    .line 68
    .line 69
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sget v13, Lcom/sgscq/vpn/a1;->e:I

    .line 73
    .line 74
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v13, ")"

    .line 78
    .line 79
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v10, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    .line 90
    .line 91
    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v12}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 95
    .line 96
    .line 97
    invoke-static {}, Lcom/sgscq/vpn/SgscqVpnService;->b()[B

    .line 98
    .line 99
    .line 100
    move-result-object v13

    .line 101
    new-instance v14, Ljava/net/DatagramPacket;

    .line 102
    .line 103
    array-length v15, v13

    .line 104
    invoke-static {v11}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    sget v8, Lcom/sgscq/vpn/a1;->e:I

    .line 109
    .line 110
    invoke-direct {v14, v13, v15, v9, v8}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v14}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 114
    .line 115
    .line 116
    const/16 v8, 0x200

    .line 117
    .line 118
    new-array v9, v8, [B

    .line 119
    .line 120
    new-instance v13, Ljava/net/DatagramPacket;

    .line 121
    .line 122
    invoke-direct {v13, v9, v8}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v13}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v13}, Ljava/net/DatagramPacket;->getLength()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    const/16 v8, 0xc

    .line 136
    .line 137
    if-lt v0, v8, :cond_5

    .line 138
    .line 139
    const/4 v0, 0x6

    .line 140
    aget-byte v0, v9, v0

    .line 141
    .line 142
    and-int/lit16 v0, v0, 0xff

    .line 143
    .line 144
    shl-int/lit8 v0, v0, 0x8

    .line 145
    .line 146
    const/4 v8, 0x7

    .line 147
    aget-byte v8, v9, v8

    .line 148
    .line 149
    and-int/lit16 v8, v8, 0xff

    .line 150
    .line 151
    or-int/2addr v0, v8

    .line 152
    if-lez v0, :cond_2

    .line 153
    .line 154
    invoke-virtual {v13}, Ljava/net/DatagramPacket;->getLength()I

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    invoke-static {v8, v9}, Lcom/sgscq/vpn/SgscqVpnService;->e(I[B)Z

    .line 159
    .line 160
    .line 161
    move-result v8
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 162
    if-eqz v8, :cond_2

    .line 163
    .line 164
    :try_start_1
    const-string v0, "\u72b6\u6001: DNS \u5df2\u9a8c\u8bc1 (sgscqtv.bfun.cn \u2192 10.0.0.1 \u2713)"

    .line 165
    .line 166
    invoke-static {v10, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 167
    .line 168
    .line 169
    move v8, v5

    .line 170
    goto :goto_7

    .line 171
    :catch_0
    move-exception v0

    .line 172
    move v8, v5

    .line 173
    goto :goto_1

    .line 174
    :catch_1
    move v8, v5

    .line 175
    goto :goto_2

    .line 176
    :cond_2
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    const-string v9, "\u72b6\u6001: DNS \u9a8c\u8bc1\u5931\u8d25 (answers="

    .line 182
    .line 183
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v0, ", \u65e0 A \u8bb0\u5f55)"

    .line 190
    .line 191
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-static {v10, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 199
    .line 200
    .line 201
    goto :goto_6

    .line 202
    :catch_2
    move-exception v0

    .line 203
    const/4 v8, 0x0

    .line 204
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    const-string v13, "\u72b6\u6001: DNS \u9a8c\u8bc1\u5f02\u5e38: "

    .line 207
    .line 208
    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    goto :goto_3

    .line 223
    :catch_3
    const/4 v8, 0x0

    .line 224
    :goto_2
    const-string v0, "\u72b6\u6001: DNS \u9a8c\u8bc1\u8d85\u65f6 (2s \u65e0\u54cd\u5e94)"

    .line 225
    .line 226
    :goto_3
    invoke-static {v10, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    goto :goto_7

    .line 230
    :cond_3
    :goto_4
    iget-object v0, v2, Lcom/sgscq/vpn/SgscqVpnService;->h:Lcom/sgscq/vpn/a1;

    .line 231
    .line 232
    if-nez v0, :cond_4

    .line 233
    .line 234
    const-string v0, " (null)"

    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_4
    const-string v0, " (not running)"

    .line 238
    .line 239
    :goto_5
    const-string v8, "\u72b6\u6001: DNS \u672a\u542f\u52a8"

    .line 240
    .line 241
    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-static {v10, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    :cond_5
    :goto_6
    const/4 v8, 0x0

    .line 249
    :goto_7
    iget-object v0, v2, Lcom/sgscq/vpn/SgscqVpnService;->g:Lcom/sgscq/vpn/y2;

    .line 250
    .line 251
    if-nez v0, :cond_6

    .line 252
    .line 253
    const-string v0, "\u72b6\u6001: LocalServer \u672a\u521b\u5efa"

    .line 254
    .line 255
    const/4 v9, 0x0

    .line 256
    goto :goto_9

    .line 257
    :cond_6
    iget v9, v0, Lcom/sgscq/vpn/y2;->W:I

    .line 258
    .line 259
    :try_start_3
    new-instance v0, Ljava/net/Socket;

    .line 260
    .line 261
    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 262
    .line 263
    .line 264
    new-instance v13, Ljava/net/InetSocketAddress;

    .line 265
    .line 266
    invoke-direct {v13, v11, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v13, v12}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 273
    .line 274
    .line 275
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    .line 280
    const-string v11, "\u72b6\u6001: LocalServer \u5df2\u9a8c\u8bc1 (127.0.0.1:"

    .line 281
    .line 282
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string v11, " \u2713)"

    .line 289
    .line 290
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-static {v10, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 298
    .line 299
    .line 300
    move v9, v5

    .line 301
    goto :goto_a

    .line 302
    :catch_4
    move-exception v0

    .line 303
    move/from16 v16, v5

    .line 304
    .line 305
    goto :goto_8

    .line 306
    :catch_5
    move-exception v0

    .line 307
    const/16 v16, 0x0

    .line 308
    .line 309
    :goto_8
    new-instance v11, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    const-string v12, "\u72b6\u6001: LocalServer \u9a8c\u8bc1\u5931\u8d25 (port "

    .line 312
    .line 313
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    const-string v9, "): "

    .line 320
    .line 321
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    move/from16 v9, v16

    .line 336
    .line 337
    :goto_9
    invoke-static {v10, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    :goto_a
    iget-boolean v0, v2, Lcom/sgscq/vpn/SgscqVpnService;->e:Z

    .line 341
    .line 342
    if-eqz v0, :cond_e

    .line 343
    .line 344
    iget-wide v11, v2, Lcom/sgscq/vpn/SgscqVpnService;->f:J

    .line 345
    .line 346
    cmp-long v0, v3, v11

    .line 347
    .line 348
    if-eqz v0, :cond_7

    .line 349
    .line 350
    goto :goto_c

    .line 351
    :cond_7
    if-eqz v8, :cond_8

    .line 352
    .line 353
    if-eqz v9, :cond_8

    .line 354
    .line 355
    const-string v0, "\u72b6\u6001: VPN \u5df2\u9a8c\u8bc1 \u2713 (DNS + LocalServer \u5168\u90e8\u6b63\u5e38)"

    .line 356
    .line 357
    invoke-static {v10, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-static {v5}, Lcom/sgscq/vpn/SgscqVpnService;->o(Z)V

    .line 361
    .line 362
    .line 363
    goto :goto_c

    .line 364
    :cond_8
    if-eqz v8, :cond_9

    .line 365
    .line 366
    if-nez v9, :cond_9

    .line 367
    .line 368
    const-string v0, "\u72b6\u6001: DNS \u6b63\u5e38\u4f46 LocalServer \u5f02\u5e38\uff0c\u7b49\u5f85\u91cd\u8bd5..."

    .line 369
    .line 370
    goto :goto_b

    .line 371
    :cond_9
    if-nez v8, :cond_a

    .line 372
    .line 373
    if-eqz v9, :cond_a

    .line 374
    .line 375
    const-string v0, "\u72b6\u6001: LocalServer \u6b63\u5e38\u4f46 DNS \u5f02\u5e38\uff0c\u7b49\u5f85\u91cd\u8bd5..."

    .line 376
    .line 377
    :goto_b
    invoke-static {v10, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    :cond_a
    const/4 v8, 0x5

    .line 381
    if-ge v7, v8, :cond_b

    .line 382
    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    .line 384
    .line 385
    const-string v8, "\u72b6\u6001: "

    .line 386
    .line 387
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    const-string v8, "ms \u540e\u91cd\u8bd5..."

    .line 394
    .line 395
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    invoke-static {v10, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    int-to-long v8, v6

    .line 406
    :try_start_5
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_6

    .line 407
    .line 408
    .line 409
    :catch_6
    mul-int/lit8 v6, v6, 0x2

    .line 410
    .line 411
    :cond_b
    add-int/lit8 v7, v7, 0x1

    .line 412
    .line 413
    goto/16 :goto_0

    .line 414
    .line 415
    :cond_c
    if-eqz v0, :cond_e

    .line 416
    .line 417
    iget-wide v5, v2, Lcom/sgscq/vpn/SgscqVpnService;->f:J

    .line 418
    .line 419
    cmp-long v0, v3, v5

    .line 420
    .line 421
    if-eqz v0, :cond_d

    .line 422
    .line 423
    goto :goto_c

    .line 424
    :cond_d
    const-string v0, "\u72b6\u6001: VPN \u9a8c\u8bc1\u5931\u8d25 \u2717 (\u91cd\u8bd5 5 \u6b21\u540e\u4ecd\u65e0\u6cd5\u901a\u8fc7\u9a8c\u8bc1)"

    .line 425
    .line 426
    invoke-static {v10, v0}, Lcom/sgscq/vpn/z2;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    const/4 v3, 0x0

    .line 430
    iput-boolean v3, v2, Lcom/sgscq/vpn/SgscqVpnService;->e:Z

    .line 431
    .line 432
    sput-boolean v3, Lcom/sgscq/vpn/SgscqVpnService;->m:Z

    .line 433
    .line 434
    invoke-virtual {v2}, Lcom/sgscq/vpn/SgscqVpnService;->f()V

    .line 435
    .line 436
    .line 437
    invoke-static {v3}, Lcom/sgscq/vpn/SgscqVpnService;->o(Z)V

    .line 438
    .line 439
    .line 440
    :cond_e
    :goto_c
    return-void
.end method
