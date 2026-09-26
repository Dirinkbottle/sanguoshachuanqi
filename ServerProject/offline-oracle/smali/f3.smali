.class public final synthetic Lcom/sgscq/vpn/f3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sgscq/vpn/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/MainActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/sgscq/vpn/f3;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/f3;->b:Lcom/sgscq/vpn/MainActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lcom/sgscq/vpn/f3;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x6

    .line 7
    const/4 v4, 0x5

    .line 8
    const/16 v5, 0x9

    .line 9
    .line 10
    const/4 v6, 0x1

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    goto/16 :goto_9

    .line 15
    .line 16
    :pswitch_0
    sget v0, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 17
    .line 18
    iget-object v0, v1, Lcom/sgscq/vpn/f3;->b:Lcom/sgscq/vpn/MainActivity;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance v2, Lcom/sgscq/vpn/f3;

    .line 24
    .line 25
    const/16 v3, 0x10

    .line 26
    .line 27
    invoke-direct {v2, v0, v3}, Lcom/sgscq/vpn/f3;-><init>(Lcom/sgscq/vpn/MainActivity;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_1
    sget v0, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 35
    .line 36
    iget-object v0, v1, Lcom/sgscq/vpn/f3;->b:Lcom/sgscq/vpn/MainActivity;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/sgscq/vpn/MainActivity;->p()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_2
    sget v0, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 43
    .line 44
    iget-object v0, v1, Lcom/sgscq/vpn/f3;->b:Lcom/sgscq/vpn/MainActivity;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/sgscq/vpn/MainActivity;->j()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_3
    sget v0, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 51
    .line 52
    iget-object v0, v1, Lcom/sgscq/vpn/f3;->b:Lcom/sgscq/vpn/MainActivity;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/sgscq/vpn/MainActivity;->i()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_4
    sget v0, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 59
    .line 60
    iget-object v2, v1, Lcom/sgscq/vpn/f3;->b:Lcom/sgscq/vpn/MainActivity;

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    :try_start_0
    invoke-virtual {v2}, Lcom/sgscq/vpn/MainActivity;->h()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/sgscq/vpn/MainActivity;->k()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v4, "\u8d5e\u52a9\u540d\u5355\u52a0\u8f7d\u5931\u8d25: "

    .line 76
    .line 77
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v2, v0}, Lcom/sgscq/vpn/MainActivity;->e(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, v2, Lcom/sgscq/vpn/MainActivity;->i:Ljava/util/List;

    .line 95
    .line 96
    if-eqz v0, :cond_0

    .line 97
    .line 98
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_1

    .line 103
    .line 104
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object v0, v2, Lcom/sgscq/vpn/MainActivity;->i:Ljava/util/List;

    .line 110
    .line 111
    :cond_1
    :goto_0
    return-void

    .line 112
    :pswitch_5
    sget v0, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 113
    .line 114
    iget-object v0, v1, Lcom/sgscq/vpn/f3;->b:Lcom/sgscq/vpn/MainActivity;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/sgscq/vpn/MainActivity;->j()V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :pswitch_6
    sget v0, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 121
    .line 122
    iget-object v0, v1, Lcom/sgscq/vpn/f3;->b:Lcom/sgscq/vpn/MainActivity;

    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    new-instance v2, Lcom/sgscq/vpn/f3;

    .line 128
    .line 129
    const/16 v3, 0xd

    .line 130
    .line 131
    invoke-direct {v2, v0, v3}, Lcom/sgscq/vpn/f3;-><init>(Lcom/sgscq/vpn/MainActivity;I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :pswitch_7
    sget v0, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 139
    .line 140
    iget-object v0, v1, Lcom/sgscq/vpn/f3;->b:Lcom/sgscq/vpn/MainActivity;

    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    const-string v2, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u5df2\u4f7f\u7528\u79bb\u7ebf\u6218\u6597\u6388\u6743\u3002"

    .line 146
    .line 147
    invoke-static {v0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :pswitch_8
    iget-object v7, v1, Lcom/sgscq/vpn/f3;->b:Lcom/sgscq/vpn/MainActivity;

    .line 156
    .line 157
    sget v0, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 158
    .line 159
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    const-string v0, "\u65e0\u6cd5\u521b\u5efa\u4e0b\u8f7d\u76ee\u5f55: "

    .line 163
    .line 164
    const-string v8, "sgscq_data_"

    .line 165
    .line 166
    :try_start_1
    invoke-static {}, Lcom/sgscq/vpn/SgscqVpnService;->j()Lcom/sgscq/vpn/u6;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    new-instance v10, Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .line 174
    .line 175
    iget-object v11, v9, Lcom/sgscq/vpn/u6;->e:Ljava/lang/Object;

    .line 176
    .line 177
    monitor-enter v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :try_start_2
    iget-object v12, v9, Lcom/sgscq/vpn/u6;->a:Lcom/sgscq/vpn/t6;

    .line 179
    .line 180
    iget v12, v12, Lcom/sgscq/vpn/t6;->a:I

    .line 181
    .line 182
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 183
    if-lez v12, :cond_2

    .line 184
    .line 185
    :try_start_3
    new-instance v11, Lcom/sgscq/vpn/o;

    .line 186
    .line 187
    const-string v12, "analysis_log.txt"

    .line 188
    .line 189
    new-instance v13, Lcom/sgscq/vpn/l3;

    .line 190
    .line 191
    invoke-direct {v13, v9, v2}, Lcom/sgscq/vpn/l3;-><init>(Lcom/sgscq/vpn/u6;I)V

    .line 192
    .line 193
    .line 194
    invoke-direct {v11, v12, v13}, Lcom/sgscq/vpn/o;-><init>(Ljava/lang/String;Lcom/sgscq/vpn/p;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    :cond_2
    iget-object v11, v9, Lcom/sgscq/vpn/u6;->e:Ljava/lang/Object;

    .line 201
    .line 202
    monitor-enter v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    :try_start_4
    iget-object v12, v9, Lcom/sgscq/vpn/u6;->b:Lcom/sgscq/vpn/t6;

    .line 204
    .line 205
    iget v12, v12, Lcom/sgscq/vpn/t6;->a:I

    .line 206
    .line 207
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 208
    if-lez v12, :cond_3

    .line 209
    .line 210
    :try_start_5
    new-instance v11, Lcom/sgscq/vpn/o;

    .line 211
    .line 212
    const-string v12, "sgscq_capture.pcap"

    .line 213
    .line 214
    new-instance v13, Lcom/sgscq/vpn/l3;

    .line 215
    .line 216
    invoke-direct {v13, v9, v6}, Lcom/sgscq/vpn/l3;-><init>(Lcom/sgscq/vpn/u6;I)V

    .line 217
    .line 218
    .line 219
    invoke-direct {v11, v12, v13}, Lcom/sgscq/vpn/o;-><init>(Ljava/lang/String;Lcom/sgscq/vpn/p;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    :cond_3
    new-instance v9, Lcom/sgscq/vpn/o;

    .line 226
    .line 227
    const-string v11, "local_save.json"

    .line 228
    .line 229
    new-instance v12, Lcom/sgscq/vpn/e3;

    .line 230
    .line 231
    const/4 v13, 0x3

    .line 232
    invoke-direct {v12, v7, v13}, Lcom/sgscq/vpn/e3;-><init>(Lcom/sgscq/vpn/MainActivity;I)V

    .line 233
    .line 234
    .line 235
    invoke-direct {v9, v11, v12}, Lcom/sgscq/vpn/o;-><init>(Ljava/lang/String;Lcom/sgscq/vpn/p;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    invoke-static {v7}, Lcom/sgscq/vpn/n0;->p(Landroid/content/Context;)Z

    .line 242
    .line 243
    .line 244
    move-result v9

    .line 245
    const/4 v11, 0x4

    .line 246
    if-eqz v9, :cond_4

    .line 247
    .line 248
    new-instance v12, Lcom/sgscq/vpn/o;

    .line 249
    .line 250
    const-string v14, "crash_log.txt"

    .line 251
    .line 252
    new-instance v15, Lcom/sgscq/vpn/e3;

    .line 253
    .line 254
    invoke-direct {v15, v7, v11}, Lcom/sgscq/vpn/e3;-><init>(Lcom/sgscq/vpn/MainActivity;I)V

    .line 255
    .line 256
    .line 257
    invoke-direct {v12, v14, v15}, Lcom/sgscq/vpn/o;-><init>(Ljava/lang/String;Lcom/sgscq/vpn/p;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    :cond_4
    new-instance v12, Ljava/text/SimpleDateFormat;

    .line 264
    .line 265
    const-string v14, "yyyyMMdd_HHmmss"

    .line 266
    .line 267
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 268
    .line 269
    .line 270
    move-result-object v15

    .line 271
    invoke-direct {v12, v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 272
    .line 273
    .line 274
    new-instance v14, Ljava/util/Date;

    .line 275
    .line 276
    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v12, v14}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v12

    .line 283
    sget-object v14, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 284
    .line 285
    invoke-static {v14}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 286
    .line 287
    .line 288
    move-result-object v14

    .line 289
    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    .line 290
    .line 291
    .line 292
    move-result v15

    .line 293
    if-nez v15, :cond_6

    .line 294
    .line 295
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    .line 296
    .line 297
    .line 298
    move-result v15

    .line 299
    if-eqz v15, :cond_5

    .line 300
    .line 301
    goto :goto_1

    .line 302
    :cond_5
    new-instance v3, Ljava/io/IOException;

    .line 303
    .line 304
    new-instance v4, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    throw v3

    .line 320
    :cond_6
    :goto_1
    new-instance v0, Ljava/io/File;

    .line 321
    .line 322
    new-instance v15, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    const-string v8, ".dat"

    .line 331
    .line 332
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v8

    .line 339
    invoke-direct {v0, v14, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v7}, Lcom/sgscq/vpn/MainActivity;->d()Ljava/security/PublicKey;

    .line 343
    .line 344
    .line 345
    move-result-object v8

    .line 346
    invoke-static {v0, v8, v10}, Lcom/sgscq/vpn/p5;->C1(Ljava/io/File;Ljava/security/PublicKey;Ljava/util/ArrayList;)Lcom/sgscq/vpn/q;

    .line 347
    .line 348
    .line 349
    move-result-object v8

    .line 350
    new-array v10, v6, [Ljava/lang/String;

    .line 351
    .line 352
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v12

    .line 356
    aput-object v12, v10, v2

    .line 357
    .line 358
    const/4 v12, 0x0

    .line 359
    invoke-static {v7, v10, v12, v12}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 360
    .line 361
    .line 362
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 363
    .line 364
    .line 365
    move-result-object v10

    .line 366
    const-string v12, "\u65e5\u5fd7: %.1fKB, PCAP: %.1fKB, \u5b58\u6863: %.1fKB, \u5d29\u6e83: %.1fKB, ZIP: %.1fKB, DAT: %.1fKB"

    .line 367
    .line 368
    new-array v3, v3, [Ljava/lang/Object;

    .line 369
    .line 370
    const-string v14, "analysis_log.txt"

    .line 371
    .line 372
    invoke-virtual {v8, v14}, Lcom/sgscq/vpn/q;->a(Ljava/lang/String;)J

    .line 373
    .line 374
    .line 375
    move-result-wide v14

    .line 376
    long-to-double v14, v14

    .line 377
    const-wide/high16 v16, 0x4090000000000000L    # 1024.0

    .line 378
    .line 379
    div-double v14, v14, v16

    .line 380
    .line 381
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 382
    .line 383
    .line 384
    move-result-object v14

    .line 385
    aput-object v14, v3, v2

    .line 386
    .line 387
    const-string v14, "sgscq_capture.pcap"

    .line 388
    .line 389
    invoke-virtual {v8, v14}, Lcom/sgscq/vpn/q;->a(Ljava/lang/String;)J

    .line 390
    .line 391
    .line 392
    move-result-wide v14

    .line 393
    long-to-double v14, v14

    .line 394
    div-double v14, v14, v16

    .line 395
    .line 396
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 397
    .line 398
    .line 399
    move-result-object v14

    .line 400
    aput-object v14, v3, v6

    .line 401
    .line 402
    const-string v6, "local_save.json"

    .line 403
    .line 404
    invoke-virtual {v8, v6}, Lcom/sgscq/vpn/q;->a(Ljava/lang/String;)J

    .line 405
    .line 406
    .line 407
    move-result-wide v14

    .line 408
    long-to-double v14, v14

    .line 409
    div-double v14, v14, v16

    .line 410
    .line 411
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 412
    .line 413
    .line 414
    move-result-object v6

    .line 415
    const/4 v14, 0x2

    .line 416
    aput-object v6, v3, v14

    .line 417
    .line 418
    const-string v6, "crash_log.txt"

    .line 419
    .line 420
    invoke-virtual {v8, v6}, Lcom/sgscq/vpn/q;->a(Ljava/lang/String;)J

    .line 421
    .line 422
    .line 423
    move-result-wide v14

    .line 424
    long-to-double v14, v14

    .line 425
    div-double v14, v14, v16

    .line 426
    .line 427
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 428
    .line 429
    .line 430
    move-result-object v6

    .line 431
    aput-object v6, v3, v13

    .line 432
    .line 433
    iget-wide v13, v8, Lcom/sgscq/vpn/q;->b:J

    .line 434
    .line 435
    long-to-double v13, v13

    .line 436
    div-double v13, v13, v16

    .line 437
    .line 438
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 439
    .line 440
    .line 441
    move-result-object v6

    .line 442
    aput-object v6, v3, v11

    .line 443
    .line 444
    iget-wide v13, v8, Lcom/sgscq/vpn/q;->c:J

    .line 445
    .line 446
    long-to-double v13, v13

    .line 447
    div-double v13, v13, v16

    .line 448
    .line 449
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 450
    .line 451
    .line 452
    move-result-object v6

    .line 453
    aput-object v6, v3, v4

    .line 454
    .line 455
    invoke-static {v10, v12, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    if-eqz v9, :cond_7

    .line 460
    .line 461
    invoke-static {v7}, Lcom/sgscq/vpn/n0;->h(Lcom/sgscq/vpn/MainActivity;)V

    .line 462
    .line 463
    .line 464
    goto :goto_2

    .line 465
    :catchall_0
    move-exception v0

    .line 466
    goto :goto_6

    .line 467
    :catch_1
    move-exception v0

    .line 468
    goto :goto_3

    .line 469
    :cond_7
    :goto_2
    new-instance v6, Lcom/sgscq/vpn/c;

    .line 470
    .line 471
    invoke-direct {v6, v7, v0, v3, v4}, Lcom/sgscq/vpn/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v7, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 475
    .line 476
    .line 477
    goto :goto_5

    .line 478
    :catchall_1
    move-exception v0

    .line 479
    :try_start_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 480
    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 481
    :catchall_2
    move-exception v0

    .line 482
    :try_start_8
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 483
    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 484
    :goto_3
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    if-nez v3, :cond_8

    .line 489
    .line 490
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    goto :goto_4

    .line 499
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    :goto_4
    new-instance v3, Lcom/sgscq/vpn/d;

    .line 504
    .line 505
    invoke-direct {v3, v7, v0, v5}, Lcom/sgscq/vpn/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v7, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 509
    .line 510
    .line 511
    :goto_5
    iget-object v0, v7, Lcom/sgscq/vpn/MainActivity;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 512
    .line 513
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 514
    .line 515
    .line 516
    return-void

    .line 517
    :goto_6
    iget-object v3, v7, Lcom/sgscq/vpn/MainActivity;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 518
    .line 519
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 520
    .line 521
    .line 522
    throw v0

    .line 523
    :pswitch_9
    sget v0, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 524
    .line 525
    iget-object v0, v1, Lcom/sgscq/vpn/f3;->b:Lcom/sgscq/vpn/MainActivity;

    .line 526
    .line 527
    invoke-virtual {v0}, Lcom/sgscq/vpn/MainActivity;->j()V

    .line 528
    .line 529
    .line 530
    return-void

    .line 531
    :pswitch_a
    sget v0, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 532
    .line 533
    iget-object v0, v1, Lcom/sgscq/vpn/f3;->b:Lcom/sgscq/vpn/MainActivity;

    .line 534
    .line 535
    invoke-virtual {v0}, Lcom/sgscq/vpn/MainActivity;->j()V

    .line 536
    .line 537
    .line 538
    return-void

    .line 539
    :pswitch_b
    sget v0, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 540
    .line 541
    iget-object v0, v1, Lcom/sgscq/vpn/f3;->b:Lcom/sgscq/vpn/MainActivity;

    .line 542
    .line 543
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 544
    .line 545
    .line 546
    new-instance v2, Lcom/sgscq/vpn/f3;

    .line 547
    .line 548
    invoke-direct {v2, v0, v3}, Lcom/sgscq/vpn/f3;-><init>(Lcom/sgscq/vpn/MainActivity;I)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 552
    .line 553
    .line 554
    return-void

    .line 555
    :pswitch_c
    sget v0, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 556
    .line 557
    iget-object v0, v1, Lcom/sgscq/vpn/f3;->b:Lcom/sgscq/vpn/MainActivity;

    .line 558
    .line 559
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 560
    .line 561
    .line 562
    new-instance v2, Lcom/sgscq/vpn/f3;

    .line 563
    .line 564
    invoke-direct {v2, v0, v4}, Lcom/sgscq/vpn/f3;-><init>(Lcom/sgscq/vpn/MainActivity;I)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 568
    .line 569
    .line 570
    return-void

    .line 571
    :pswitch_d
    iget-object v0, v1, Lcom/sgscq/vpn/f3;->b:Lcom/sgscq/vpn/MainActivity;

    .line 572
    .line 573
    iput-boolean v6, v0, Lcom/sgscq/vpn/MainActivity;->v:Z

    .line 574
    .line 575
    sget-boolean v2, Lcom/sgscq/vpn/SgscqVpnService;->m:Z

    .line 576
    .line 577
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/MainActivity;->a(Z)V

    .line 578
    .line 579
    .line 580
    return-void

    .line 581
    :pswitch_e
    iget-object v3, v1, Lcom/sgscq/vpn/f3;->b:Lcom/sgscq/vpn/MainActivity;

    .line 582
    .line 583
    sget v0, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 584
    .line 585
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 586
    .line 587
    .line 588
    :try_start_b
    invoke-static {v3}, Lcom/sgscq/vpn/g2;->e(Landroid/content/Context;)Lcom/sgscq/vpn/g2;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    invoke-virtual {v0}, Lcom/sgscq/vpn/g2;->j()V

    .line 593
    .line 594
    .line 595
    invoke-static {v3}, Lp/l;->c(Landroid/content/Context;)Lp/l;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    invoke-static {v3}, Lp/d;->b(Landroid/content/Context;)Lp/d;

    .line 600
    .line 601
    .line 602
    new-instance v4, Lcom/sgscq/vpn/f3;

    .line 603
    .line 604
    invoke-direct {v4, v3, v5}, Lcom/sgscq/vpn/f3;-><init>(Lcom/sgscq/vpn/MainActivity;I)V

    .line 605
    .line 606
    .line 607
    iget-object v5, v0, Lp/l;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 608
    .line 609
    invoke-virtual {v5, v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 610
    .line 611
    .line 612
    move-result v2

    .line 613
    if-nez v2, :cond_9

    .line 614
    .line 615
    goto :goto_7

    .line 616
    :cond_9
    invoke-virtual {v0, v4}, Lp/l;->n(Lcom/sgscq/vpn/f3;)Z

    .line 617
    .line 618
    .line 619
    :goto_7
    invoke-static {v3}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    invoke-virtual {v0}, Lcom/sgscq/vpn/w1;->i0()Ljava/util/ArrayList;

    .line 624
    .line 625
    .line 626
    invoke-static {}, Lcom/sgscq/vpn/g2;->b()Lcom/sgscq/vpn/config/i;

    .line 627
    .line 628
    .line 629
    move-result-object v2

    .line 630
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/w1;->v(Lcom/sgscq/vpn/config/i;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 631
    .line 632
    .line 633
    goto :goto_8

    .line 634
    :catchall_3
    move-exception v0

    .line 635
    new-instance v2, Ljava/lang/StringBuilder;

    .line 636
    .line 637
    const-string v4, "[StartupWarmUp] \u9650\u65f6/\u6e38\u620f\u6570\u636e\u521d\u59cb\u5316\u5931\u8d25: "

    .line 638
    .line 639
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    const-string v2, "SGSCQ_UI"

    .line 650
    .line 651
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    .line 653
    .line 654
    :goto_8
    iput-boolean v6, v3, Lcom/sgscq/vpn/MainActivity;->s:Z

    .line 655
    .line 656
    new-instance v0, Lcom/sgscq/vpn/f3;

    .line 657
    .line 658
    const/16 v2, 0xa

    .line 659
    .line 660
    invoke-direct {v0, v3, v2}, Lcom/sgscq/vpn/f3;-><init>(Lcom/sgscq/vpn/MainActivity;I)V

    .line 661
    .line 662
    .line 663
    invoke-virtual {v3, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 664
    .line 665
    .line 666
    return-void

    .line 667
    :pswitch_f
    sget v0, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 668
    .line 669
    iget-object v0, v1, Lcom/sgscq/vpn/f3;->b:Lcom/sgscq/vpn/MainActivity;

    .line 670
    .line 671
    invoke-virtual {v0}, Lcom/sgscq/vpn/MainActivity;->j()V

    .line 672
    .line 673
    .line 674
    return-void

    .line 675
    :goto_9
    sget v0, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 676
    .line 677
    iget-object v0, v1, Lcom/sgscq/vpn/f3;->b:Lcom/sgscq/vpn/MainActivity;

    .line 678
    .line 679
    invoke-virtual {v0}, Lcom/sgscq/vpn/MainActivity;->j()V

    .line 680
    .line 681
    .line 682
    return-void

    .line 683
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
