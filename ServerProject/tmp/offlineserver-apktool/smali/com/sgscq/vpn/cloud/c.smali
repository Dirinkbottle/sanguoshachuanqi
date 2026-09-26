.class public final synthetic Lcom/sgscq/vpn/cloud/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/l;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:[B

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/util/Map;

.field public final synthetic g:Z

.field public final synthetic h:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/cloud/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sgscq/vpn/cloud/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sgscq/vpn/cloud/c;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/sgscq/vpn/cloud/c;->c:[B

    iput-object p5, p0, Lcom/sgscq/vpn/cloud/c;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/sgscq/vpn/cloud/c;->h:Ljava/io/Serializable;

    iput-object p7, p0, Lcom/sgscq/vpn/cloud/c;->f:Ljava/util/Map;

    iput-boolean p8, p0, Lcom/sgscq/vpn/cloud/c;->g:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/cloud/c;->h:Ljava/io/Serializable;

    iput-object p2, p0, Lcom/sgscq/vpn/cloud/c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/sgscq/vpn/cloud/c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/sgscq/vpn/cloud/c;->c:[B

    iput-object p5, p0, Lcom/sgscq/vpn/cloud/c;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/sgscq/vpn/cloud/c;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/sgscq/vpn/cloud/c;->f:Ljava/util/Map;

    iput-boolean p8, p0, Lcom/sgscq/vpn/cloud/c;->g:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/net/Proxy;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/c;->h:Ljava/io/Serializable;

    .line 2
    .line 3
    check-cast v0, Ljava/net/URL;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/sgscq/vpn/cloud/c;->a:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/sgscq/vpn/cloud/c;->f:Ljava/util/Map;

    .line 8
    .line 9
    const-string v3, "Bearer "

    .line 10
    .line 11
    iget-boolean v4, p0, Lcom/sgscq/vpn/cloud/c;->g:Z

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0, p1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 27
    .line 28
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/16 v0, 0x1388

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 34
    .line 35
    .line 36
    const/16 v0, 0x3a98

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 39
    .line 40
    .line 41
    const-string v0, "Accept"

    .line 42
    .line 43
    const-string v5, "application/json, application/octet-stream"

    .line 44
    .line 45
    invoke-virtual {p1, v0, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v0, "Cache-Control"

    .line 49
    .line 50
    const-string v5, "no-store"

    .line 51
    .line 52
    invoke-virtual {p1, v0, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v0, "X-SGSCQ-Version-Code"

    .line 56
    .line 57
    const/16 v5, 0x17

    .line 58
    .line 59
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {p1, v0, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v0, "X-SGSCQ-Version-Name"

    .line 67
    .line 68
    const-string v5, "1.0.1.14067"

    .line 69
    .line 70
    invoke-virtual {p1, v0, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v0, "X-SGSCQ-Environment"

    .line 74
    .line 75
    const-string v5, "release"

    .line 76
    .line 77
    invoke-virtual {p1, v0, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/c;->b:Ljava/lang/String;

    .line 81
    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-nez v5, :cond_1

    .line 89
    .line 90
    const-string v5, "Authorization"

    .line 91
    .line 92
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p1, v5, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 97
    .line 98
    .line 99
    :cond_1
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/c;->d:Ljava/lang/String;

    .line 100
    .line 101
    if-eqz v0, :cond_2

    .line 102
    .line 103
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-nez v3, :cond_2

    .line 108
    .line 109
    const-string v3, "Content-Type"

    .line 110
    .line 111
    invoke-virtual {p1, v3, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 112
    .line 113
    .line 114
    :cond_2
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/c;->e:Ljava/lang/String;

    .line 115
    .line 116
    if-eqz v0, :cond_3

    .line 117
    .line 118
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-nez v3, :cond_3

    .line 123
    .line 124
    const-string v3, "Content-Encoding"

    .line 125
    .line 126
    invoke-virtual {p1, v3, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-eqz v2, :cond_4

    .line 142
    .line 143
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    check-cast v2, Ljava/util/Map$Entry;

    .line 148
    .line 149
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    check-cast v3, Ljava/lang/String;

    .line 154
    .line 155
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    check-cast v2, Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {p1, v3, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_4
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/c;->c:[B

    .line 166
    .line 167
    if-eqz v0, :cond_6

    .line 168
    .line 169
    :try_start_5
    const-string v2, "GET"

    .line 170
    .line 171
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-nez v2, :cond_6

    .line 176
    .line 177
    const-string v2, "DELETE"

    .line 178
    .line 179
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-nez v1, :cond_6

    .line 184
    .line 185
    const/4 v1, 0x1

    .line 186
    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 190
    .line 191
    .line 192
    move-result-object v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 193
    :try_start_6
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 194
    .line 195
    .line 196
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 197
    .line 198
    .line 199
    goto :goto_3

    .line 200
    :catchall_0
    move-exception v0

    .line 201
    if-eqz v2, :cond_5

    .line 202
    .line 203
    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 204
    .line 205
    .line 206
    goto :goto_2

    .line 207
    :catchall_1
    move-exception v2

    .line 208
    :try_start_9
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 209
    .line 210
    .line 211
    :cond_5
    :goto_2
    throw v0

    .line 212
    :cond_6
    move v1, v6

    .line 213
    :goto_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    const/16 v2, 0x190

    .line 218
    .line 219
    if-lt v0, v2, :cond_7

    .line 220
    .line 221
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    goto :goto_4

    .line 226
    :cond_7
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 227
    .line 228
    .line 229
    move-result-object v3
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 230
    :goto_4
    if-nez v3, :cond_8

    .line 231
    .line 232
    :try_start_a
    new-array v5, v6, [B

    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_8
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    .line 236
    .line 237
    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 238
    .line 239
    .line 240
    const/16 v7, 0x2000

    .line 241
    .line 242
    new-array v7, v7, [B

    .line 243
    .line 244
    :goto_5
    invoke-virtual {v3, v7}, Ljava/io/InputStream;->read([B)I

    .line 245
    .line 246
    .line 247
    move-result v8

    .line 248
    const/4 v9, -0x1

    .line 249
    if-eq v8, v9, :cond_a

    .line 250
    .line 251
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 252
    .line 253
    .line 254
    move-result v9

    .line 255
    add-int/2addr v9, v8

    .line 256
    const/high16 v10, 0x1000000

    .line 257
    .line 258
    if-gt v9, v10, :cond_9

    .line 259
    .line 260
    invoke-virtual {v5, v7, v6, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 261
    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 265
    .line 266
    const-string v2, "\u4e91\u670d\u52a1\u54cd\u5e94\u8fc7\u5927"

    .line 267
    .line 268
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    throw v0

    .line 272
    :cond_a
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 273
    .line 274
    .line 275
    move-result-object v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 276
    :goto_6
    if-eqz v3, :cond_b

    .line 277
    .line 278
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 279
    .line 280
    .line 281
    :cond_b
    new-instance v3, Lcom/sgscq/vpn/cloud/t;

    .line 282
    .line 283
    invoke-direct {v3, v5}, Lcom/sgscq/vpn/cloud/t;-><init>([B)V

    .line 284
    .line 285
    .line 286
    if-lt v0, v2, :cond_d

    .line 287
    .line 288
    if-eqz v4, :cond_c

    .line 289
    .line 290
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->t0(I)Z

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    if-eqz v2, :cond_c

    .line 295
    .line 296
    new-instance v2, Lq/j;

    .line 297
    .line 298
    invoke-direct {v2, v0}, Lq/j;-><init>(I)V

    .line 299
    .line 300
    .line 301
    throw v2

    .line 302
    :cond_c
    invoke-virtual {v3}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    invoke-static {v2, v0}, Lcom/sgscq/vpn/cloud/z;->z(Ljava/lang/String;I)Lcom/sgscq/vpn/cloud/a0;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 311
    :cond_d
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 312
    .line 313
    .line 314
    return-object v3

    .line 315
    :catchall_2
    move-exception v0

    .line 316
    if-eqz v3, :cond_e

    .line 317
    .line 318
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 319
    .line 320
    .line 321
    goto :goto_7

    .line 322
    :catchall_3
    move-exception v2

    .line 323
    :try_start_d
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 324
    .line 325
    .line 326
    :cond_e
    :goto_7
    throw v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 327
    :catch_0
    move-exception v0

    .line 328
    move v6, v1

    .line 329
    goto :goto_8

    .line 330
    :catchall_4
    move-exception v0

    .line 331
    goto :goto_b

    .line 332
    :catch_1
    move-exception v0

    .line 333
    :goto_8
    move-object v5, p1

    .line 334
    goto :goto_9

    .line 335
    :catch_2
    move-exception p1

    .line 336
    move-object v0, p1

    .line 337
    :goto_9
    if-nez v4, :cond_f

    .line 338
    .line 339
    if-eqz v6, :cond_f

    .line 340
    .line 341
    :try_start_e
    new-instance p1, Lq/k;

    .line 342
    .line 343
    const-string v1, "\u8bf7\u6c42\u53d1\u9001\u540e\u8fde\u63a5\u4e2d\u65ad"

    .line 344
    .line 345
    invoke-direct {p1, v1, v0}, Lq/k;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    .line 346
    .line 347
    .line 348
    throw p1

    .line 349
    :catchall_5
    move-exception p1

    .line 350
    goto :goto_a

    .line 351
    :cond_f
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 352
    :goto_a
    move-object v0, p1

    .line 353
    move-object p1, v5

    .line 354
    :goto_b
    if-eqz p1, :cond_10

    .line 355
    .line 356
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 357
    .line 358
    .line 359
    :cond_10
    throw v0
.end method

.method public final run()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v2, p0, Lcom/sgscq/vpn/cloud/c;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v3, p0, Lcom/sgscq/vpn/cloud/c;->d:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v4, p0, Lcom/sgscq/vpn/cloud/c;->c:[B

    .line 6
    .line 7
    iget-object v5, p0, Lcom/sgscq/vpn/cloud/c;->e:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/c;->h:Ljava/io/Serializable;

    .line 10
    .line 11
    move-object v6, v0

    .line 12
    check-cast v6, Ljava/lang/String;

    .line 13
    .line 14
    iget-object v7, p0, Lcom/sgscq/vpn/cloud/c;->f:Ljava/util/Map;

    .line 15
    .line 16
    iget-boolean v8, p0, Lcom/sgscq/vpn/cloud/c;->g:Z

    .line 17
    .line 18
    new-instance v9, Ljava/net/URL;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, "https://api.sgscq.com/api/v1"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/sgscq/vpn/cloud/c;->b:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v10, Lcom/sgscq/vpn/cloud/c;

    .line 40
    .line 41
    move-object v0, v10

    .line 42
    move-object v1, v9

    .line 43
    invoke-direct/range {v0 .. v8}, Lcom/sgscq/vpn/cloud/c;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 44
    .line 45
    .line 46
    invoke-static {v9}, Lq/o;->c(Ljava/net/URL;)Ljava/net/Proxy;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    sget-object v0, Lq/e;->b:Lc/i;

    .line 54
    .line 55
    invoke-static {v9, v0}, Lq/d;->c(Ljava/net/URL;Lc/i;)Ljava/net/Proxy;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :goto_0
    invoke-virtual {v10, v0}, Lcom/sgscq/vpn/cloud/c;->a(Ljava/net/Proxy;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lcom/sgscq/vpn/cloud/t;

    .line 64
    .line 65
    return-object v0
.end method
