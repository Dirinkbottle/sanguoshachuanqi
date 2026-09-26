.class public final synthetic Lcom/sgscq/vpn/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/sgscq/vpn/j;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/j;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lcom/sgscq/vpn/j;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto/16 :goto_7

    .line 7
    .line 8
    :pswitch_0
    iget-object v0, p0, Lcom/sgscq/vpn/j;->b:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v1, Ljava/net/URL;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/sgscq/vpn/r3;->a:[Lcom/sgscq/vpn/p4;

    .line 16
    .line 17
    invoke-static {v1}, Lq/o;->c(Ljava/net/URL;)Ljava/net/Proxy;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    new-instance v3, Lcom/sgscq/vpn/k;

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    invoke-direct {v3, v4}, Lcom/sgscq/vpn/k;-><init>(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    sget-object v0, Lq/e;->b:Lc/i;

    .line 32
    .line 33
    invoke-static {v1, v0}, Lq/d;->c(Ljava/net/URL;Lc/i;)Ljava/net/Proxy;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    new-instance v3, Lcom/sgscq/vpn/k;

    .line 40
    .line 41
    const/4 v4, 0x3

    .line 42
    invoke-direct {v3, v4}, Lcom/sgscq/vpn/k;-><init>(I)V

    .line 43
    .line 44
    .line 45
    :goto_0
    :try_start_0
    invoke-static {v0, v1}, Lcom/sgscq/vpn/r3;->e(Ljava/net/Proxy;Ljava/net/URL;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v0, v1}, Lcom/sgscq/vpn/k;->d(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v2}, Lcom/sgscq/vpn/k;->b(Ljava/net/HttpURLConnection;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto/16 :goto_6

    .line 59
    .line 60
    :catch_0
    move-exception v0

    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 64
    .line 65
    .line 66
    :cond_1
    throw v0

    .line 67
    :cond_2
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v3, "oauth.sgscq.com"

    .line 72
    .line 73
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_b

    .line 78
    .line 79
    invoke-static {}, Lcom/sgscq/vpn/r3;->b()V

    .line 80
    .line 81
    .line 82
    sget-object v0, Lcom/sgscq/vpn/r3;->b:Ljava/net/Proxy;

    .line 83
    .line 84
    new-instance v4, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    new-instance v5, Lcom/sgscq/vpn/q3;

    .line 90
    .line 91
    invoke-direct {v5, v0, v1}, Lcom/sgscq/vpn/q3;-><init>(Ljava/net/Proxy;Ljava/net/URL;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    if-eqz v0, :cond_5

    .line 98
    .line 99
    const-string v5, "https"

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-nez v5, :cond_3

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-nez v3, :cond_4

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    :try_start_1
    new-instance v3, Ljava/net/URL;

    .line 124
    .line 125
    const-string v5, "http"

    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-direct {v3, v5, v6, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :catch_1
    :cond_5
    :goto_1
    move-object v3, v2

    .line 140
    :goto_2
    if-eqz v3, :cond_6

    .line 141
    .line 142
    new-instance v1, Lcom/sgscq/vpn/q3;

    .line 143
    .line 144
    invoke-direct {v1, v0, v3}, Lcom/sgscq/vpn/q3;-><init>(Ljava/net/Proxy;Ljava/net/URL;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    move-object v1, v2

    .line 155
    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-eqz v3, :cond_9

    .line 160
    .line 161
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    check-cast v3, Lcom/sgscq/vpn/q3;

    .line 166
    .line 167
    :try_start_2
    iget-object v4, v3, Lcom/sgscq/vpn/q3;->b:Ljava/net/Proxy;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 168
    .line 169
    iget-object v5, v3, Lcom/sgscq/vpn/q3;->a:Ljava/net/URL;

    .line 170
    .line 171
    :try_start_3
    invoke-static {v4, v5}, Lcom/sgscq/vpn/r3;->e(Ljava/net/Proxy;Ljava/net/URL;)V

    .line 172
    .line 173
    .line 174
    iget-object v4, v3, Lcom/sgscq/vpn/q3;->b:Ljava/net/Proxy;

    .line 175
    .line 176
    invoke-static {v4, v5}, Lcom/sgscq/vpn/r3;->a(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 177
    .line 178
    .line 179
    move-result-object v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 180
    :try_start_4
    invoke-static {v4}, Lcom/sgscq/vpn/k;->b(Ljava/net/HttpURLConnection;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 184
    .line 185
    .line 186
    move-object v2, v4

    .line 187
    goto :goto_6

    .line 188
    :catch_2
    move-exception v5

    .line 189
    goto :goto_4

    .line 190
    :catch_3
    move-exception v4

    .line 191
    move-object v5, v4

    .line 192
    move-object v4, v2

    .line 193
    :goto_4
    if-nez v1, :cond_8

    .line 194
    .line 195
    move-object v1, v5

    .line 196
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    const-string v7, "openConnection \u54cd\u5e94\u5931\u8d25 "

    .line 199
    .line 200
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget-object v7, v3, Lcom/sgscq/vpn/q3;->b:Ljava/net/Proxy;

    .line 204
    .line 205
    invoke-static {v7}, Lcom/sgscq/vpn/r3;->h(Ljava/net/Proxy;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v7

    .line 209
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v7, " -> "

    .line 213
    .line 214
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    iget-object v3, v3, Lcom/sgscq/vpn/q3;->a:Ljava/net/URL;

    .line 218
    .line 219
    invoke-static {v3}, Lcom/sgscq/vpn/r3;->i(Ljava/net/URL;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v3, ": "

    .line 227
    .line 228
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v3, " "

    .line 243
    .line 244
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    invoke-static {v3}, Lcom/sgscq/vpn/r3;->d(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    if-eqz v4, :cond_7

    .line 266
    .line 267
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 268
    .line 269
    .line 270
    goto :goto_3

    .line 271
    :cond_9
    if-eqz v1, :cond_a

    .line 272
    .line 273
    goto :goto_5

    .line 274
    :cond_a
    new-instance v1, Ljava/io/IOException;

    .line 275
    .line 276
    const-string v0, "oauth connection failed"

    .line 277
    .line 278
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    :goto_5
    throw v1

    .line 282
    :cond_b
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    move-object v2, v0

    .line 287
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 288
    .line 289
    invoke-static {v2}, Lcom/sgscq/vpn/k;->b(Ljava/net/HttpURLConnection;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 293
    .line 294
    .line 295
    :goto_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->t0(I)Z

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    if-nez v1, :cond_c

    .line 304
    .line 305
    return-object v2

    .line 306
    :cond_c
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 307
    .line 308
    .line 309
    new-instance v1, Lq/j;

    .line 310
    .line 311
    invoke-direct {v1, v0}, Lq/j;-><init>(I)V

    .line 312
    .line 313
    .line 314
    throw v1

    .line 315
    :goto_7
    sget v0, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 316
    .line 317
    new-instance v0, Ljava/net/URL;

    .line 318
    .line 319
    iget-object v1, p0, Lcom/sgscq/vpn/j;->b:Ljava/lang/String;

    .line 320
    .line 321
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-static {v0}, Lcom/sgscq/vpn/r3;->f(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    const-string v1, "GET"

    .line 329
    .line 330
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    const/16 v1, 0x2710

    .line 334
    .line 335
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 336
    .line 337
    .line 338
    const/16 v1, 0x3a98

    .line 339
    .line 340
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 341
    .line 342
    .line 343
    const-string v1, "Accept"

    .line 344
    .line 345
    const-string v2, "application/json"

    .line 346
    .line 347
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    :try_start_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    const/16 v2, 0xc8

    .line 355
    .line 356
    if-ne v1, v2, :cond_e

    .line 357
    .line 358
    new-instance v1, Ljava/io/BufferedReader;

    .line 359
    .line 360
    new-instance v2, Ljava/io/InputStreamReader;

    .line 361
    .line 362
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    const-string v4, "UTF-8"

    .line 367
    .line 368
    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 372
    .line 373
    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .line 378
    .line 379
    :goto_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    if-eqz v3, :cond_d

    .line 384
    .line 385
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    goto :goto_8

    .line 389
    :cond_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 390
    .line 391
    .line 392
    new-instance v1, Lorg/json/JSONObject;

    .line 393
    .line 394
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 402
    .line 403
    .line 404
    return-object v1

    .line 405
    :cond_e
    :try_start_6
    new-instance v2, Lq/j;

    .line 406
    .line 407
    invoke-direct {v2, v1}, Lq/j;-><init>(I)V

    .line 408
    .line 409
    .line 410
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 411
    :catchall_0
    move-exception v1

    .line 412
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 413
    .line 414
    .line 415
    throw v1

    .line 416
    nop

    .line 417
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
