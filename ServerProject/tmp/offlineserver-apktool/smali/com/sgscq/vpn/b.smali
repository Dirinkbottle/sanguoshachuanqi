.class public final synthetic Lcom/sgscq/vpn/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/sgscq/vpn/b;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final a()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/sgscq/vpn/cloud/b;

    .line 4
    .line 5
    sget-object v1, Lcom/sgscq/vpn/cloud/b;->o:La/o;

    .line 6
    .line 7
    const-string v1, "[AcquisitionSync] sent="

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/b;->f()Lcom/sgscq/vpn/cloud/a;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, v0, Lcom/sgscq/vpn/cloud/b;->a:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v3

    .line 16
    const/4 v4, 0x0

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    :try_start_0
    iput-boolean v4, v0, Lcom/sgscq/vpn/cloud/b;->l:Z

    .line 20
    .line 21
    monitor-exit v3

    .line 22
    goto/16 :goto_7

    .line 23
    .line 24
    :catchall_0
    move-exception v0

    .line 25
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw v0

    .line 27
    :cond_0
    :try_start_1
    iput-boolean v4, v0, Lcom/sgscq/vpn/cloud/b;->l:Z

    .line 28
    .line 29
    iget-boolean v5, v0, Lcom/sgscq/vpn/cloud/b;->m:Z

    .line 30
    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/cloud/b;->c(Lcom/sgscq/vpn/cloud/a;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, v0, Lcom/sgscq/vpn/cloud/b;->i:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/b;->i()V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v2, v0, Lcom/sgscq/vpn/cloud/b;->i:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    :goto_0
    monitor-exit v3

    .line 57
    goto/16 :goto_7

    .line 58
    .line 59
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    .line 60
    .line 61
    iget-object v5, v0, Lcom/sgscq/vpn/cloud/b;->i:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 64
    .line 65
    .line 66
    iget-object v5, v0, Lcom/sgscq/vpn/cloud/b;->j:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v6, v0, Lcom/sgscq/vpn/cloud/b;->k:Lcom/sgscq/vpn/cloud/a;

    .line 69
    .line 70
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 71
    const/4 v3, 0x1

    .line 72
    const-wide/16 v7, 0x0

    .line 73
    .line 74
    :try_start_2
    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/b;->f()Lcom/sgscq/vpn/cloud/a;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    invoke-virtual {v6, v9}, Lcom/sgscq/vpn/cloud/a;->b(Lcom/sgscq/vpn/cloud/a;)Z

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    if-nez v9, :cond_4

    .line 83
    .line 84
    const-string v1, "SGSCQ_CLOUD"

    .line 85
    .line 86
    const-string v2, "[AcquisitionSync] skipped: cloud binding changed"

    .line 87
    .line 88
    invoke-static {v1, v2}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_7

    .line 92
    .line 93
    :cond_4
    iget-object v9, v0, Lcom/sgscq/vpn/cloud/b;->c:Lcom/sgscq/vpn/cloud/z;

    .line 94
    .line 95
    iget-object v10, v6, Lcom/sgscq/vpn/cloud/a;->a:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v9, v5, v10, v2}, Lcom/sgscq/vpn/cloud/z;->O(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    const-string v9, "SGSCQ_CLOUD"

    .line 102
    .line 103
    new-instance v10, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v1, " accepted="

    .line 116
    .line 117
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-static {v9, v1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iput v4, v0, Lcom/sgscq/vpn/cloud/b;->n:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 131
    .line 132
    goto/16 :goto_4

    .line 133
    .line 134
    :catch_0
    move-exception v1

    .line 135
    iget v2, v0, Lcom/sgscq/vpn/cloud/b;->n:I

    .line 136
    .line 137
    add-int/2addr v2, v3

    .line 138
    instance-of v5, v1, Lcom/sgscq/vpn/cloud/a0;

    .line 139
    .line 140
    if-eqz v5, :cond_5

    .line 141
    .line 142
    move-object v9, v1

    .line 143
    check-cast v9, Lcom/sgscq/vpn/cloud/a0;

    .line 144
    .line 145
    iget-object v9, v9, Lcom/sgscq/vpn/cloud/a0;->b:Ljava/lang/String;

    .line 146
    .line 147
    const-string v10, "cloud_binding_changed"

    .line 148
    .line 149
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    if-eqz v9, :cond_5

    .line 154
    .line 155
    move v9, v3

    .line 156
    goto :goto_1

    .line 157
    :cond_5
    move v9, v4

    .line 158
    :goto_1
    if-eqz v9, :cond_6

    .line 159
    .line 160
    iput v4, v0, Lcom/sgscq/vpn/cloud/b;->n:I

    .line 161
    .line 162
    const-string v1, "SGSCQ_CLOUD"

    .line 163
    .line 164
    const-string v2, "[AcquisitionSync] paused: cloud binding changed"

    .line 165
    .line 166
    invoke-static {v1, v2}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_5

    .line 170
    .line 171
    :cond_6
    if-eqz v5, :cond_7

    .line 172
    .line 173
    move-object v9, v1

    .line 174
    check-cast v9, Lcom/sgscq/vpn/cloud/a0;

    .line 175
    .line 176
    iget v9, v9, Lcom/sgscq/vpn/cloud/a0;->a:I

    .line 177
    .line 178
    const/16 v10, 0x1ad

    .line 179
    .line 180
    if-eq v9, v10, :cond_9

    .line 181
    .line 182
    const/16 v10, 0x1f4

    .line 183
    .line 184
    if-ge v9, v10, :cond_9

    .line 185
    .line 186
    if-gtz v9, :cond_a

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_7
    instance-of v9, v1, Ljava/io/IOException;

    .line 190
    .line 191
    if-eqz v9, :cond_8

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_8
    const/4 v9, 0x3

    .line 195
    if-gt v2, v9, :cond_a

    .line 196
    .line 197
    :cond_9
    :goto_2
    move v9, v3

    .line 198
    goto :goto_3

    .line 199
    :cond_a
    move v9, v4

    .line 200
    :goto_3
    if-eqz v9, :cond_c

    .line 201
    .line 202
    iput v2, v0, Lcom/sgscq/vpn/cloud/b;->n:I

    .line 203
    .line 204
    sub-int/2addr v2, v3

    .line 205
    const/4 v7, 0x7

    .line 206
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    shl-int v2, v3, v2

    .line 215
    .line 216
    mul-int/lit8 v2, v2, 0x2

    .line 217
    .line 218
    const/16 v3, 0x12c

    .line 219
    .line 220
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-eqz v5, :cond_b

    .line 225
    .line 226
    move-object v3, v1

    .line 227
    check-cast v3, Lcom/sgscq/vpn/cloud/a0;

    .line 228
    .line 229
    iget v3, v3, Lcom/sgscq/vpn/cloud/a0;->c:I

    .line 230
    .line 231
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    :cond_b
    int-to-long v7, v2

    .line 236
    const-string v2, "SGSCQ_CLOUD"

    .line 237
    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    const-string v5, "[AcquisitionSync] retry in "

    .line 241
    .line 242
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v5, "s: "

    .line 249
    .line 250
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-static {v1, v3, v2}, Lc/a;->u(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    move v3, v4

    .line 257
    goto :goto_5

    .line 258
    :cond_c
    iput v4, v0, Lcom/sgscq/vpn/cloud/b;->n:I

    .line 259
    .line 260
    const-string v2, "SGSCQ_CLOUD"

    .line 261
    .line 262
    new-instance v5, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    const-string v9, "[AcquisitionSync] dropped: "

    .line 265
    .line 266
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-static {v1, v5, v2}, Lc/a;->u(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    :goto_4
    move v11, v4

    .line 273
    move v4, v3

    .line 274
    move v3, v11

    .line 275
    :goto_5
    iget-object v1, v0, Lcom/sgscq/vpn/cloud/b;->a:Ljava/lang/Object;

    .line 276
    .line 277
    monitor-enter v1

    .line 278
    :try_start_3
    iget-boolean v2, v0, Lcom/sgscq/vpn/cloud/b;->m:Z

    .line 279
    .line 280
    if-eqz v2, :cond_d

    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_d
    iget-object v2, v0, Lcom/sgscq/vpn/cloud/b;->k:Lcom/sgscq/vpn/cloud/a;

    .line 284
    .line 285
    invoke-virtual {v6, v2}, Lcom/sgscq/vpn/cloud/a;->b(Lcom/sgscq/vpn/cloud/a;)Z

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    if-nez v2, :cond_e

    .line 290
    .line 291
    if-eqz v4, :cond_12

    .line 292
    .line 293
    invoke-virtual {v0, v6}, Lcom/sgscq/vpn/cloud/b;->e(Lcom/sgscq/vpn/cloud/a;)V

    .line 294
    .line 295
    .line 296
    goto :goto_6

    .line 297
    :cond_e
    if-eqz v4, :cond_f

    .line 298
    .line 299
    new-instance v2, Ljava/util/ArrayList;

    .line 300
    .line 301
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .line 303
    .line 304
    iput-object v2, v0, Lcom/sgscq/vpn/cloud/b;->i:Ljava/util/ArrayList;

    .line 305
    .line 306
    const-string v2, ""

    .line 307
    .line 308
    iput-object v2, v0, Lcom/sgscq/vpn/cloud/b;->j:Ljava/lang/String;

    .line 309
    .line 310
    :cond_f
    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/b;->j()V

    .line 311
    .line 312
    .line 313
    if-eqz v3, :cond_10

    .line 314
    .line 315
    goto :goto_6

    .line 316
    :cond_10
    iget-object v2, v0, Lcom/sgscq/vpn/cloud/b;->i:Ljava/util/ArrayList;

    .line 317
    .line 318
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    if-eqz v2, :cond_11

    .line 323
    .line 324
    iget-object v2, v0, Lcom/sgscq/vpn/cloud/b;->h:Ljava/util/LinkedHashMap;

    .line 325
    .line 326
    invoke-virtual {v2}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    if-nez v2, :cond_12

    .line 331
    .line 332
    :cond_11
    iget-boolean v2, v0, Lcom/sgscq/vpn/cloud/b;->l:Z

    .line 333
    .line 334
    if-nez v2, :cond_12

    .line 335
    .line 336
    invoke-virtual {v0, v7, v8}, Lcom/sgscq/vpn/cloud/b;->k(J)V

    .line 337
    .line 338
    .line 339
    :cond_12
    :goto_6
    monitor-exit v1

    .line 340
    :goto_7
    return-void

    .line 341
    :catchall_1
    move-exception v0

    .line 342
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 343
    throw v0

    .line 344
    :catchall_2
    move-exception v0

    .line 345
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 346
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 29

    move-object/from16 v1, p0

    const-string v0, "startup state="

    iget v2, v1, Lcom/sgscq/vpn/b;->a:I

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2f

    :pswitch_0
    iget-object v0, v1, Lcom/sgscq/vpn/b;->b:Ljava/lang/Object;

    check-cast v0, Lq/d;

    .line 1
    :cond_0
    :goto_0
    iget-object v2, v0, Lq/d;->e:Ljava/net/ServerSocket;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    iget-object v4, v0, Lq/d;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lq/d;->a(Ljava/net/Socket;)V

    goto :goto_0

    :cond_2
    iget-object v4, v0, Lq/d;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lp/f;

    invoke-direct {v5, v0, v3, v7}, Lp/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v2}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    :goto_1
    return-void

    .line 2
    :pswitch_1
    iget-object v0, v1, Lcom/sgscq/vpn/b;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/sgscq/vpn/cloud/c0;

    const-string v3, "SGSCQ_CLOUD"

    const-string v0, "[AutoSaveUpload] uploaded at revision "

    .line 3
    iget-boolean v6, v2, Lcom/sgscq/vpn/cloud/c0;->i:Z

    if-nez v6, :cond_e

    iget-object v6, v2, Lcom/sgscq/vpn/cloud/c0;->b:Lm/e;

    invoke-virtual {v6}, Lm/e;->y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->isLoggedIn()Z

    move-result v9

    if-nez v9, :cond_4

    goto/16 :goto_8

    :cond_4
    iget-object v9, v2, Lcom/sgscq/vpn/cloud/c0;->c:Lcom/sgscq/vpn/cloud/b0;

    iget-object v10, v6, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/sgscq/vpn/cloud/b0;->f(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/d0;

    move-result-object v9

    iget-object v10, v2, Lcom/sgscq/vpn/cloud/c0;->e:Lcom/sgscq/vpn/m4;

    invoke-virtual {v10}, Lcom/sgscq/vpn/m4;->k()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v2, Lcom/sgscq/vpn/cloud/c0;->d:Lcom/sgscq/vpn/cloud/b0;

    iget-object v12, v6, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 4
    iget-object v13, v9, Lcom/sgscq/vpn/cloud/d0;->b:Ljava/lang/String;

    .line 5
    iget-object v14, v9, Lcom/sgscq/vpn/cloud/d0;->c:Ljava/lang/String;

    .line 6
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-static {v12, v13, v14}, Lcom/sgscq/vpn/cloud/b0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_5

    const-string v12, ""

    goto :goto_2

    :cond_5
    const-string v13, "enabled_"

    invoke-virtual {v13, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_2
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6

    iget-object v11, v11, Lcom/sgscq/vpn/cloud/b0;->b:Landroid/content/SharedPreferences;

    invoke-interface {v11, v12, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_6

    move v11, v7

    goto :goto_3

    :cond_6
    move v11, v8

    .line 8
    :goto_3
    iget-object v12, v6, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    if-eqz v11, :cond_7

    .line 9
    invoke-virtual {v9, v12, v10}, Lcom/sgscq/vpn/cloud/d0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    move v11, v7

    goto :goto_4

    :cond_7
    move v11, v8

    :goto_4
    if-eqz v11, :cond_e

    .line 10
    iget-object v11, v9, Lcom/sgscq/vpn/cloud/d0;->c:Ljava/lang/String;

    .line 11
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    goto/16 :goto_8

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-object v13, v2, Lcom/sgscq/vpn/cloud/c0;->d:Lcom/sgscq/vpn/cloud/b0;

    iget-object v14, v6, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 12
    iget-object v15, v9, Lcom/sgscq/vpn/cloud/d0;->b:Ljava/lang/String;

    .line 13
    iget-object v7, v9, Lcom/sgscq/vpn/cloud/d0;->c:Ljava/lang/String;

    .line 14
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {v14, v15, v7}, Lcom/sgscq/vpn/cloud/b0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_9

    move-wide v13, v4

    goto :goto_5

    :cond_9
    const-string v14, "next_sync_at_"

    invoke-virtual {v14, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v13, v13, Lcom/sgscq/vpn/cloud/b0;->b:Landroid/content/SharedPreferences;

    invoke-interface {v13, v7, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    :goto_5
    cmp-long v7, v13, v4

    if-lez v7, :cond_a

    cmp-long v7, v11, v13

    if-ltz v7, :cond_a

    const/4 v7, 0x1

    goto :goto_6

    :cond_a
    move v7, v8

    :goto_6
    if-nez v7, :cond_b

    goto :goto_8

    .line 16
    :cond_b
    iget-object v7, v2, Lcom/sgscq/vpn/cloud/c0;->f:Lcom/sgscq/vpn/f0;

    .line 17
    iget-object v7, v7, Lcom/sgscq/vpn/f0;->b:Landroid/content/SharedPreferences;

    .line 18
    invoke-static {v7, v10}, Lcom/sgscq/vpn/y5;->n(Landroid/content/SharedPreferences;Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v4, v7, v4

    if-lez v4, :cond_d

    .line 19
    iget-wide v4, v2, Lcom/sgscq/vpn/cloud/c0;->j:J

    cmp-long v4, v7, v4

    if-nez v4, :cond_c

    goto :goto_7

    :cond_c
    :try_start_1
    iget-object v4, v2, Lcom/sgscq/vpn/cloud/c0;->a:Lcom/sgscq/vpn/cloud/q0;

    invoke-virtual {v4}, Lcom/sgscq/vpn/cloud/q0;->q()Lcom/sgscq/vpn/cloud/d0;

    iput-wide v7, v2, Lcom/sgscq/vpn/cloud/c0;->j:J

    iget-object v10, v2, Lcom/sgscq/vpn/cloud/c0;->d:Lcom/sgscq/vpn/cloud/b0;

    iget-object v11, v6, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 20
    iget-object v12, v9, Lcom/sgscq/vpn/cloud/d0;->b:Ljava/lang/String;

    .line 21
    iget-object v13, v9, Lcom/sgscq/vpn/cloud/d0;->c:Ljava/lang/String;

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual/range {v10 .. v15}, Lcom/sgscq/vpn/cloud/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/sgscq/vpn/cloud/c0;->c:Lcom/sgscq/vpn/cloud/b0;

    iget-object v5, v6, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/sgscq/vpn/cloud/b0;->f(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/d0;

    move-result-object v0

    .line 23
    iget v0, v0, Lcom/sgscq/vpn/cloud/d0;->d:I

    .line 24
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    iget-object v10, v2, Lcom/sgscq/vpn/cloud/c0;->d:Lcom/sgscq/vpn/cloud/b0;

    iget-object v11, v6, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 25
    iget-object v12, v9, Lcom/sgscq/vpn/cloud/d0;->b:Ljava/lang/String;

    .line 26
    iget-object v13, v9, Lcom/sgscq/vpn/cloud/d0;->c:Ljava/lang/String;

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual/range {v10 .. v15}, Lcom/sgscq/vpn/cloud/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[AutoSaveUpload] failed: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_d
    :goto_7
    iget-object v4, v2, Lcom/sgscq/vpn/cloud/c0;->d:Lcom/sgscq/vpn/cloud/b0;

    iget-object v5, v6, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 28
    iget-object v6, v9, Lcom/sgscq/vpn/cloud/d0;->b:Ljava/lang/String;

    .line 29
    iget-object v7, v9, Lcom/sgscq/vpn/cloud/d0;->c:Ljava/lang/String;

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Lcom/sgscq/vpn/cloud/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_e
    :goto_8
    return-void

    .line 31
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/sgscq/vpn/b;->a()V

    return-void

    :pswitch_3
    iget-object v2, v1, Lcom/sgscq/vpn/b;->b:Ljava/lang/Object;

    check-cast v2, Lo/j;

    sget-object v3, Lo/j;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    :try_start_2
    invoke-virtual {v2}, Lo/j;->c()I

    move-result v2

    const-string v3, "BattleRuntime"

    invoke-static {v2}, Lcom/sgscq/vpn/handler/l;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lo/j;->k:Lcom/sgscq/vpn/e3;

    if-eqz v0, :cond_f

    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/e3;->c(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_a

    :cond_f
    :goto_9
    sget-object v0, Lo/j;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :goto_a
    sget-object v2, Lo/j;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0

    .line 33
    :pswitch_4
    iget-object v0, v1, Lcom/sgscq/vpn/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/p7;

    sget-object v2, Lcom/sgscq/vpn/p7;->t:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "SGSCQ_ROSTER"

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initializeNow enter thread="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v2, Lcom/sgscq/vpn/t5;

    iget-object v6, v0, Lcom/sgscq/vpn/p7;->f:Ljava/lang/String;

    iget-object v7, v0, Lcom/sgscq/vpn/p7;->e:Landroid/content/Context;

    invoke-direct {v2, v7, v6}, Lcom/sgscq/vpn/t5;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/sgscq/vpn/p7;->c:Lcom/sgscq/vpn/w5;

    new-instance v7, Lcom/sgscq/vpn/k7;

    invoke-direct {v7, v2}, Lcom/sgscq/vpn/k7;-><init>(Lcom/sgscq/vpn/t5;)V

    .line 35
    monitor-enter v6

    .line 36
    :try_start_3
    invoke-virtual {v6}, Lcom/sgscq/vpn/w5;->c()Ljava/util/List;

    move-result-object v9

    invoke-static {v9}, Lcom/sgscq/vpn/w5;->b(Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_10

    goto :goto_e

    :cond_10
    iget-object v9, v6, Lcom/sgscq/vpn/w5;->d:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_11

    iget-object v9, v6, Lcom/sgscq/vpn/w5;->d:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    goto :goto_b

    :catchall_1
    move-exception v0

    goto/16 :goto_1c

    :cond_11
    :goto_b
    invoke-virtual {v7}, Lcom/sgscq/vpn/k7;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lcom/sgscq/vpn/w5;->b(Ljava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_26

    invoke-virtual {v6, v7}, Lcom/sgscq/vpn/w5;->d(Ljava/util/List;)V

    .line 37
    new-instance v9, Lcom/sgscq/vpn/x5;

    invoke-direct {v9, v6}, Lcom/sgscq/vpn/x5;-><init>(Lcom/sgscq/vpn/w5;)V

    iget-object v10, v6, Lcom/sgscq/vpn/w5;->a:Ljava/io/File;

    invoke-virtual {v10, v9}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v9

    if-nez v9, :cond_12

    goto :goto_d

    :cond_12
    array-length v10, v9

    move v11, v8

    :goto_c
    if-ge v11, v10, :cond_13

    aget-object v12, v9, v11

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    .line 38
    :cond_13
    :goto_d
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_e
    monitor-exit v6

    .line 39
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v9, :cond_17

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sgscq/vpn/v5;

    if-eqz v9, :cond_16

    iget-boolean v10, v9, Lcom/sgscq/vpn/v5;->f:Z

    if-eqz v10, :cond_14

    goto :goto_10

    :cond_14
    iget-object v10, v2, Lcom/sgscq/vpn/t5;->j:Lcom/sgscq/vpn/y0;

    .line 40
    iget-boolean v11, v9, Lcom/sgscq/vpn/v5;->v:Z

    if-nez v11, :cond_15

    goto :goto_10

    :cond_15
    iget-object v11, v9, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    iget-object v12, v9, Lcom/sgscq/vpn/v5;->b:Ljava/lang/String;

    iget v13, v9, Lcom/sgscq/vpn/v5;->c:I

    iget v14, v9, Lcom/sgscq/vpn/v5;->d:I

    iget v15, v9, Lcom/sgscq/vpn/v5;->e:I

    iget-object v3, v9, Lcom/sgscq/vpn/v5;->h:Ljava/util/LinkedHashMap;

    iget-object v8, v9, Lcom/sgscq/vpn/v5;->q:Ljava/lang/String;

    move-object/from16 v27, v2

    iget-object v2, v9, Lcom/sgscq/vpn/v5;->s:Ljava/util/List;

    move-object/from16 v28, v7

    iget v7, v9, Lcom/sgscq/vpn/v5;->t:I

    iget v9, v9, Lcom/sgscq/vpn/v5;->u:I

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    move/from16 v18, v13

    move/from16 v19, v14

    move/from16 v20, v15

    move-object/from16 v21, v3

    move-object/from16 v22, v8

    move-object/from16 v23, v2

    move/from16 v24, v7

    move/from16 v25, v9

    move-object/from16 v26, v10

    invoke-static/range {v16 .. v26}, Lcom/sgscq/vpn/v5;->n(Ljava/lang/String;Ljava/lang/String;IIILjava/util/Map;Ljava/lang/String;Ljava/util/List;IILcom/sgscq/vpn/u5;)Lcom/sgscq/vpn/v5;

    move-result-object v9

    goto :goto_11

    :cond_16
    :goto_10
    move-object/from16 v27, v2

    move-object/from16 v28, v7

    .line 41
    :goto_11
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v27

    move-object/from16 v7, v28

    const/4 v8, 0x0

    goto :goto_f

    :cond_17
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const-string v3, "SGSCQ_ROSTER"

    .line 42
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "loadOrGenerate done robots="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " took "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v3, v0, Lcom/sgscq/vpn/p7;->b:Lcom/sgscq/vpn/t;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v9, v3, Lcom/sgscq/vpn/t;->c:Ljava/lang/Object;

    check-cast v9, Lcom/sgscq/vpn/m4;

    invoke-virtual {v9}, Lcom/sgscq/vpn/m4;->m()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_18
    :goto_12
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sgscq/vpn/k4;

    iget-object v11, v10, Lcom/sgscq/vpn/k4;->e:Ljava/lang/String;

    const-string v12, "active"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_19

    goto :goto_12

    :cond_19
    iget-object v10, v10, Lcom/sgscq/vpn/k4;->a:Ljava/lang/String;

    invoke-virtual {v3, v10}, Lcom/sgscq/vpn/t;->c(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v11

    if-eqz v11, :cond_18

    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_18

    invoke-interface {v8, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 44
    :cond_1a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string v10, "SGSCQ_ROSTER"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "loadActivePlayers done players="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " took "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "ms"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/sgscq/vpn/p7;->i:Lcom/sgscq/vpn/cloud/l0;

    if-nez v6, :cond_1b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    goto :goto_13

    :cond_1b
    invoke-virtual {v6}, Lcom/sgscq/vpn/cloud/l0;->i()Ljava/util/List;

    move-result-object v6

    :goto_13
    const-string v7, "SGSCQ_ROSTER"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "cloud load done opponents="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " total took "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v4

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/sgscq/vpn/p7;->a:Ljava/lang/Object;

    monitor-enter v4

    :try_start_4
    iget-object v5, v0, Lcom/sgscq/vpn/p7;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v5, v0, Lcom/sgscq/vpn/p7;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v5, v0, Lcom/sgscq/vpn/p7;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v5, v0, Lcom/sgscq/vpn/p7;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->clear()V

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v11, "ladder_rank"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const/16 v12, 0x3e9

    invoke-static {v11, v12}, Lcom/sgscq/vpn/p7;->j(Ljava/lang/Object;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Lcom/sgscq/vpn/p7;->q(Ljava/lang/String;I)I

    move-result v12

    iget-object v13, v0, Lcom/sgscq/vpn/p7;->m:Ljava/util/LinkedHashMap;

    invoke-interface {v13, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, v0, Lcom/sgscq/vpn/p7;->l:Ljava/util/LinkedHashMap;

    invoke-static {v10, v8}, Lcom/sgscq/vpn/v5;->j(Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/v5;

    move-result-object v14

    invoke-interface {v13, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v10, v12}, Lcom/sgscq/vpn/p7;->A(Ljava/lang/String;I)V

    if-eq v12, v11, :cond_1c

    invoke-static {v12, v8}, Lcom/sgscq/vpn/p7;->d(ILjava/util/Map;)V

    filled-new-array {v7, v12}, [I

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, v0, Lcom/sgscq/vpn/p7;->m:Ljava/util/LinkedHashMap;

    invoke-interface {v11, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v0, Lcom/sgscq/vpn/p7;->l:Ljava/util/LinkedHashMap;

    invoke-static {v10, v8}, Lcom/sgscq/vpn/v5;->j(Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/v5;

    move-result-object v8

    invoke-interface {v11, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :catchall_2
    move-exception v0

    goto/16 :goto_1b

    :cond_1c
    :goto_15
    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_1d
    const-string v5, "SGSCQ_ROSTER"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lock section reached players="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/sgscq/vpn/p7;->e:Landroid/content/Context;

    if-eqz v5, :cond_1f

    .line 45
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v7, "sgscq_config_v2"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v7, "elite_opponent_enabled"

    .line 46
    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v5, v0, Lcom/sgscq/vpn/p7;->e:Landroid/content/Context;

    if-nez v5, :cond_1e

    const/4 v5, 0x3

    goto :goto_16

    .line 48
    :cond_1e
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v10, "sgscq_config_v2"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v10, "elite_opponent_level"

    const/4 v11, 0x3

    .line 49
    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/sgscq/vpn/p5;->E0(I)I

    move-result v5

    .line 50
    :goto_16
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/sgscq/vpn/m1;->b(I)Ljava/util/ArrayList;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v10}, Lcom/sgscq/vpn/p7;->c(Ljava/util/List;)V

    const-string v11, "SGSCQ_ROSTER"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "elite garrison level="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " elites="

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ranks="

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Lcom/sgscq/vpn/p7;->f(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " took "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v7

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_1f
    iget-object v5, v0, Lcom/sgscq/vpn/p7;->e:Landroid/content/Context;

    if-eqz v5, :cond_20

    const-string v5, "SGSCQ_ROSTER"

    const-string v7, "elite garrison skipped: disabled"

    invoke-static {v5, v7}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    :goto_17
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_21

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sgscq/vpn/v5;

    iget-object v8, v0, Lcom/sgscq/vpn/p7;->l:Ljava/util/LinkedHashMap;

    .line 51
    iget-object v10, v7, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 52
    invoke-interface {v8, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget v8, v7, Lcom/sgscq/vpn/v5;->e:I

    const/4 v10, 0x1

    .line 54
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 55
    iget-object v10, v7, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, v10, v8}, Lcom/sgscq/vpn/p7;->q(Ljava/lang/String;I)I

    move-result v8

    .line 57
    iget-object v7, v7, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v7, v8}, Lcom/sgscq/vpn/p7;->A(Ljava/lang/String;I)V

    goto :goto_18

    :cond_21
    const-string v5, "SGSCQ_ROSTER"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "robots placed total="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/sgscq/vpn/p7;->l:Ljava/util/LinkedHashMap;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/p7;->z(Ljava/util/List;)V

    invoke-static {v6}, Lcom/sgscq/vpn/p7;->D(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/p7;->y(Ljava/util/List;)V

    iget-boolean v2, v0, Lcom/sgscq/vpn/p7;->r:Z

    if-eqz v2, :cond_22

    iget-object v2, v0, Lcom/sgscq/vpn/p7;->k:Ljava/util/ArrayList;

    goto :goto_19

    :cond_22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_19
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/p7;->p(Ljava/util/List;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/sgscq/vpn/p7;->p:Z

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_23
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    const/4 v5, 0x0

    aget v6, v4, v5

    if-ltz v6, :cond_23

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v6, v7, :cond_24

    goto :goto_1a

    :cond_24
    iget-object v6, v0, Lcom/sgscq/vpn/p7;->b:Lcom/sgscq/vpn/t;

    aget v7, v4, v5

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v7, 0x1

    aget v4, v4, v7

    invoke-virtual {v6, v5, v4}, Lcom/sgscq/vpn/t;->e(Ljava/lang/String;I)V

    goto :goto_1a

    :cond_25
    const/4 v7, 0x1

    iget-object v2, v0, Lcom/sgscq/vpn/p7;->b:Lcom/sgscq/vpn/t;

    new-instance v3, Lcom/sgscq/vpn/h7;

    invoke-direct {v3, v0, v7}, Lcom/sgscq/vpn/h7;-><init>(Lcom/sgscq/vpn/p7;I)V

    .line 59
    iput-object v3, v2, Lcom/sgscq/vpn/t;->e:Ljava/lang/Object;

    return-void

    .line 60
    :goto_1b
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 61
    :cond_26
    :try_start_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Generated robot roster is invalid"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_1c
    monitor-exit v6

    throw v0

    .line 62
    :pswitch_5
    iget-object v0, v1, Lcom/sgscq/vpn/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/c7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    :catch_2
    :goto_1d
    :try_start_7
    sget-wide v2, Lcom/sgscq/vpn/c7;->j:J

    sget-wide v6, Lcom/sgscq/vpn/c7;->k:J

    cmp-long v8, v2, v4

    if-lez v8, :cond_27

    cmp-long v8, v6, v4

    if-lez v8, :cond_27

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    .line 64
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    add-long/2addr v6, v2

    .line 65
    sput-wide v6, Lcom/sgscq/vpn/c7;->l:J

    sget-wide v2, Lcom/sgscq/vpn/c7;->l:J

    invoke-virtual {v0, v2, v3}, Lcom/sgscq/vpn/c7;->h(J)V

    :cond_27
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1d

    :catch_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :pswitch_6
    const/4 v11, 0x3

    .line 66
    iget-object v0, v1, Lcom/sgscq/vpn/b;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    sget-object v2, Lcom/sgscq/vpn/x6;->a:Ljava/lang/Object;

    .line 67
    :try_start_8
    invoke-static {v0}, Lcom/sgscq/vpn/y5;->m(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_1e

    :catch_4
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_29

    :cond_28
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :cond_29
    move-object v6, v0

    const-string v0, "SGSCQ_SAVE"

    const-string v2, "\u5b58\u6863\u5347\u7ea7\u5931\u8d25: "

    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sgscq/vpn/z2;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1e
    sget-object v2, Lcom/sgscq/vpn/x6;->a:Ljava/lang/Object;

    monitor-enter v2

    if-nez v6, :cond_2a

    move v3, v11

    goto :goto_1f

    :cond_2a
    const/4 v3, 0x1

    :goto_1f
    :try_start_9
    sput v3, Lcom/sgscq/vpn/x6;->e:I

    new-instance v0, Ljava/util/ArrayList;

    sget-object v3, Lcom/sgscq/vpn/x6;->d:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sgscq/vpn/g3;

    sget-object v3, Lcom/sgscq/vpn/x6;->b:Landroid/os/Handler;

    new-instance v4, Lcom/sgscq/vpn/d;

    const/16 v5, 0x19

    invoke-direct {v4, v2, v6, v5}, Lcom/sgscq/vpn/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_20

    :cond_2b
    return-void

    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0

    .line 68
    :pswitch_7
    iget-object v0, v1, Lcom/sgscq/vpn/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/g3;

    sget-object v2, Lcom/sgscq/vpn/x6;->a:Ljava/lang/Object;

    .line 69
    invoke-virtual {v0, v6}, Lcom/sgscq/vpn/g3;->a(Ljava/lang/String;)V

    return-void

    .line 70
    :pswitch_8
    iget-object v0, v1, Lcom/sgscq/vpn/b;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/sgscq/vpn/v6;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "Proxy "

    .line 71
    :try_start_b
    iget v0, v2, Lcom/sgscq/vpn/v6;->e:I

    const/16 v4, 0x1bb

    if-ne v0, v4, :cond_2c

    invoke-virtual {v2}, Lcom/sgscq/vpn/v6;->d()V

    goto :goto_21

    :catch_5
    move-exception v0

    goto :goto_22

    :cond_2c
    invoke-virtual {v2}, Lcom/sgscq/vpn/v6;->c()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :goto_21
    const/4 v3, 0x1

    goto :goto_23

    :catchall_4
    move-exception v0

    const/4 v3, 0x1

    goto :goto_24

    :goto_22
    :try_start_c
    const-string v4, "SGSCQ_VPN"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/sgscq/vpn/v6;->a:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " error: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sgscq/vpn/z2;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_21

    :goto_23
    iput-boolean v3, v2, Lcom/sgscq/vpn/v6;->m:Z

    iget-object v0, v2, Lcom/sgscq/vpn/v6;->o:Lcom/sgscq/vpn/SgscqVpnService;

    .line 72
    iget-object v0, v0, Lcom/sgscq/vpn/SgscqVpnService;->l:Ljava/util/concurrent/ConcurrentHashMap;

    .line 73
    iget-object v2, v2, Lcom/sgscq/vpn/v6;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_24
    iput-boolean v3, v2, Lcom/sgscq/vpn/v6;->m:Z

    iget-object v3, v2, Lcom/sgscq/vpn/v6;->o:Lcom/sgscq/vpn/SgscqVpnService;

    .line 74
    iget-object v3, v3, Lcom/sgscq/vpn/SgscqVpnService;->l:Ljava/util/concurrent/ConcurrentHashMap;

    .line 75
    iget-object v2, v2, Lcom/sgscq/vpn/v6;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0

    .line 76
    :pswitch_9
    iget-object v0, v1, Lcom/sgscq/vpn/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/SgscqVpnService;

    sget-boolean v2, Lcom/sgscq/vpn/SgscqVpnService;->m:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    :try_start_d
    invoke-static {v0}, Lcom/sgscq/vpn/g2;->e(Landroid/content/Context;)Lcom/sgscq/vpn/g2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sgscq/vpn/g2;->j()V

    invoke-static {v0}, Lp/l;->c(Landroid/content/Context;)Lp/l;

    move-result-object v2

    invoke-static {v0}, Lp/d;->b(Landroid/content/Context;)Lp/d;

    .line 78
    iget-object v0, v2, Lp/l;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_25

    :cond_2d
    invoke-virtual {v2, v6}, Lp/l;->n(Lcom/sgscq/vpn/f3;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_25

    :catchall_5
    move-exception v0

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u9650\u65f6\u6392\u671f\u521d\u59cb\u5316\u5931\u8d25: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SGSCQ_VPN"

    invoke-static {v2, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_25
    return-void

    .line 80
    :pswitch_a
    iget-object v0, v1, Lcom/sgscq/vpn/b;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/sgscq/vpn/SgscqApplication;

    sget v0, Lcom/sgscq/vpn/SgscqApplication;->a:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "startup refresh failed: "

    .line 81
    :try_start_e
    new-instance v0, Lcom/sgscq/vpn/cloud/z;

    invoke-direct {v0, v2}, Lcom/sgscq/vpn/cloud/z;-><init>(Landroid/content/Context;)V

    .line 82
    iget-object v4, v0, Lcom/sgscq/vpn/cloud/z;->b:Lm/e;

    invoke-virtual {v4}, Lm/e;->y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->isLoggedIn()Z

    move-result v5

    if-nez v5, :cond_2e

    :goto_26
    const/4 v3, 0x0

    goto :goto_28

    :cond_2e
    iget-object v5, v4, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/sgscq/vpn/cloud/z;->Q(Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;Ljava/lang/String;)Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_26

    :catch_6
    move-exception v0

    goto :goto_27

    :catchall_6
    move-exception v0

    const/4 v3, 0x0

    goto :goto_29

    :goto_27
    :try_start_f
    const-string v4, "CloudSession"

    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto :goto_26

    .line 84
    :goto_28
    invoke-static {v2, v3}, Lo/j;->b(Landroid/content/Context;Z)V

    return-void

    :goto_29
    invoke-static {v2, v3}, Lo/j;->b(Landroid/content/Context;Z)V

    .line 85
    throw v0

    .line 86
    :pswitch_b
    iget-object v0, v1, Lcom/sgscq/vpn/b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Thread;

    sget-object v2, Lcom/sgscq/vpn/y2;->X:[Ljava/lang/String;

    .line 87
    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    sget-object v3, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v2, v3, :cond_2f

    goto/16 :goto_2c

    :cond_2f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Ladder] WATCHDOG: fight still running after 45s, thread="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SGSCQ_SRV"

    invoke-static {v2, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_30
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Thread;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    if-eqz v4, :cond_30

    array-length v6, v4

    if-nez v6, :cond_31

    goto :goto_2a

    :cond_31
    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v7

    sget-object v8, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v7, v8, :cond_32

    goto :goto_2a

    :cond_32
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[Ladder] WATCHDOG stack TID="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    array-length v5, v4

    const/4 v6, 0x0

    :goto_2b
    if-ge v6, v5, :cond_30

    aget-object v7, v4, v6

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[Ladder] WATCHDOG   at "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    :cond_33
    const-string v0, "[Ladder] WATCHDOG dump end"

    invoke-static {v2, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c
    return-void

    .line 88
    :pswitch_c
    iget-object v0, v1, Lcom/sgscq/vpn/b;->b:Ljava/lang/Object;

    check-cast v0, [B

    sget-object v2, Lcom/sgscq/vpn/z0;->a:Ljava/util/concurrent/ExecutorService;

    .line 89
    :try_start_10
    new-instance v2, Lcom/sgscq/vpn/y0;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/sgscq/vpn/y0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v2}, Lcom/sgscq/vpn/p5;->O(Lq/l;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    goto :goto_2d

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "upload failed: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "DeviceAudit"

    invoke-static {v2, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2d
    return-void

    .line 90
    :pswitch_d
    iget-object v0, v1, Lcom/sgscq/vpn/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;

    .line 91
    iget-object v0, v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void

    .line 92
    :pswitch_e
    iget-object v0, v1, Lcom/sgscq/vpn/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sgscq/vpn/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    new-instance v2, Lcom/sgscq/vpn/cloud/z;

    iget-object v0, v0, Lcom/sgscq/vpn/h;->b:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/sgscq/vpn/cloud/z;-><init>(Landroid/content/Context;)V

    .line 94
    iget-object v8, v2, Lcom/sgscq/vpn/cloud/z;->b:Lm/e;

    :try_start_11
    const-string v3, "POST"

    const-string v4, "/auth/logout"

    const/4 v5, 0x0

    new-array v5, v5, [B

    const-string v6, "application/json"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/sgscq/vpn/cloud/z;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    goto :goto_2e

    :catchall_7
    move-exception v0

    invoke-virtual {v8}, Lm/e;->a()V

    throw v0

    :catch_8
    :goto_2e
    invoke-virtual {v8}, Lm/e;->a()V

    return-void

    .line 95
    :goto_2f
    iget-object v0, v1, Lcom/sgscq/vpn/b;->b:Ljava/lang/Object;

    check-cast v0, Lq/i;

    .line 96
    :cond_34
    :goto_30
    iget-object v2, v0, Lq/i;->e:Ljava/net/ServerSocket;

    if-eqz v2, :cond_37

    invoke-virtual {v2}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_35

    goto :goto_31

    :cond_35
    :try_start_12
    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    iget-object v4, v0, Lq/i;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v4

    if-nez v4, :cond_36

    invoke-static {v3}, Lq/i;->b(Ljava/net/Socket;)V

    goto :goto_30

    :cond_36
    iget-object v4, v0, Lq/i;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lp/f;

    const/4 v6, 0x2

    invoke-direct {v5, v0, v3, v6}, Lp/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9

    goto :goto_30

    :catch_9
    invoke-virtual {v2}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_34

    :cond_37
    :goto_31
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
