.class public final synthetic Lcom/sgscq/vpn/f6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sgscq/vpn/SettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/SettingsActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/sgscq/vpn/f6;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/f6;->b:Lcom/sgscq/vpn/SettingsActivity;

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
    .locals 5

    .line 1
    iget v0, p0, Lcom/sgscq/vpn/f6;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/sgscq/vpn/f6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto/16 :goto_8

    .line 12
    .line 13
    :pswitch_0
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object v0, v1, Lcom/sgscq/vpn/SettingsActivity;->m:Lcom/sgscq/vpn/cloud/q0;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/q0;->j()Lcom/sgscq/vpn/cloud/d0;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v2, v1, Lcom/sgscq/vpn/SettingsActivity;->m:Lcom/sgscq/vpn/cloud/q0;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/sgscq/vpn/cloud/q0;->k()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iget-object v4, v2, Lcom/sgscq/vpn/cloud/q0;->e:Lcom/sgscq/vpn/m4;

    .line 31
    .line 32
    iget-object v3, v3, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v4, v3}, Lcom/sgscq/vpn/m4;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_0

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Lcom/sgscq/vpn/cloud/q0;->m(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    new-instance v2, Lcom/sgscq/vpn/c;

    .line 48
    .line 49
    const/4 v4, 0x7

    .line 50
    invoke-direct {v2, v1, v0, v3, v4}, Lcom/sgscq/vpn/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/SettingsActivity;->K(Ljava/lang/Exception;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void

    .line 62
    :pswitch_1
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    :try_start_1
    iget-object v0, v1, Lcom/sgscq/vpn/SettingsActivity;->m:Lcom/sgscq/vpn/cloud/q0;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/q0;->e()V

    .line 70
    .line 71
    .line 72
    new-instance v0, Lcom/sgscq/vpn/m4;

    .line 73
    .line 74
    invoke-direct {v0, v1}, Lcom/sgscq/vpn/m4;-><init>(Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    iget-object v2, v1, Lcom/sgscq/vpn/SettingsActivity;->n:Lm/e;

    .line 78
    .line 79
    invoke-virtual {v2}, Lm/e;->y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget-object v2, v2, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/m4;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-nez v3, :cond_1

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/m4;->e(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_1
    iget-object v0, v1, Lcom/sgscq/vpn/SettingsActivity;->m:Lcom/sgscq/vpn/cloud/q0;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/q0;->j()Lcom/sgscq/vpn/cloud/d0;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    new-instance v2, Lcom/sgscq/vpn/l6;

    .line 105
    .line 106
    const/4 v3, 0x2

    .line 107
    invoke-direct {v2, v1, v0, v3}, Lcom/sgscq/vpn/l6;-><init>(Lcom/sgscq/vpn/SettingsActivity;Lcom/sgscq/vpn/cloud/d0;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :catch_1
    move-exception v0

    .line 115
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/SettingsActivity;->K(Ljava/lang/Exception;)V

    .line 116
    .line 117
    .line 118
    :goto_1
    return-void

    .line 119
    :pswitch_2
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    :try_start_2
    iget-object v0, v1, Lcom/sgscq/vpn/SettingsActivity;->m:Lcom/sgscq/vpn/cloud/q0;

    .line 125
    .line 126
    new-instance v3, Lcom/sgscq/vpn/y0;

    .line 127
    .line 128
    invoke-direct {v3, v1, v2}, Lcom/sgscq/vpn/y0;-><init>(Ljava/lang/Object;I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v3}, Lcom/sgscq/vpn/cloud/q0;->n(Lcom/sgscq/vpn/y0;)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    const-class v2, Lcom/sgscq/vpn/cloud/m0;

    .line 136
    .line 137
    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 138
    :try_start_3
    sput-boolean v4, Lcom/sgscq/vpn/cloud/m0;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    .line 140
    :try_start_4
    monitor-exit v2

    .line 141
    new-instance v2, Lcom/sgscq/vpn/c6;

    .line 142
    .line 143
    invoke-direct {v2, v1, v0, v4}, Lcom/sgscq/vpn/c6;-><init>(Lcom/sgscq/vpn/SettingsActivity;II)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :catchall_0
    move-exception v0

    .line 151
    monitor-exit v2

    .line 152
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 153
    :catch_2
    move-exception v0

    .line 154
    const-class v2, Lcom/sgscq/vpn/cloud/m0;

    .line 155
    .line 156
    monitor-enter v2

    .line 157
    :try_start_5
    sput-boolean v4, Lcom/sgscq/vpn/cloud/m0;->a:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 158
    .line 159
    monitor-exit v2

    .line 160
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/SettingsActivity;->K(Ljava/lang/Exception;)V

    .line 161
    .line 162
    .line 163
    :goto_2
    return-void

    .line 164
    :catchall_1
    move-exception v0

    .line 165
    monitor-exit v2

    .line 166
    throw v0

    .line 167
    :pswitch_3
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    :try_start_6
    iget-object v0, v1, Lcom/sgscq/vpn/SettingsActivity;->m:Lcom/sgscq/vpn/cloud/q0;

    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/q0;->h()Ljava/util/ArrayList;

    .line 175
    .line 176
    .line 177
    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 178
    goto :goto_3

    .line 179
    :catch_3
    move-exception v0

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    const-string v4, "[CloudDownload] versions unavailable: "

    .line 183
    .line 184
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    const-string v2, "SGSCQ_CLOUD"

    .line 195
    .line 196
    invoke-static {v2, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    const/4 v0, 0x0

    .line 200
    :goto_3
    if-eqz v0, :cond_3

    .line 201
    .line 202
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-gt v2, v3, :cond_2

    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_2
    new-instance v2, Lcom/sgscq/vpn/d;

    .line 210
    .line 211
    const/16 v3, 0x17

    .line 212
    .line 213
    invoke-direct {v2, v1, v0, v3}, Lcom/sgscq/vpn/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 217
    .line 218
    .line 219
    goto :goto_5

    .line 220
    :cond_3
    :goto_4
    const-string v0, "\u6b63\u5728\u4e0b\u8f7d\u672c\u4eba\u4e91\u5b58\u6863..."

    .line 221
    .line 222
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/SettingsActivity;->H(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    new-instance v0, Ljava/lang/Thread;

    .line 226
    .line 227
    new-instance v2, Lcom/sgscq/vpn/f6;

    .line 228
    .line 229
    const/4 v3, 0x6

    .line 230
    invoke-direct {v2, v1, v3}, Lcom/sgscq/vpn/f6;-><init>(Lcom/sgscq/vpn/SettingsActivity;I)V

    .line 231
    .line 232
    .line 233
    const-string v1, "sgscq-cloud-download"

    .line 234
    .line 235
    invoke-direct {v0, v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 239
    .line 240
    .line 241
    :goto_5
    return-void

    .line 242
    :pswitch_4
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 243
    .line 244
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    :try_start_7
    iget-object v0, v1, Lcom/sgscq/vpn/SettingsActivity;->m:Lcom/sgscq/vpn/cloud/q0;

    .line 248
    .line 249
    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/q0;->q()Lcom/sgscq/vpn/cloud/d0;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    new-instance v2, Lcom/sgscq/vpn/l6;

    .line 254
    .line 255
    invoke-direct {v2, v1, v0, v3}, Lcom/sgscq/vpn/l6;-><init>(Lcom/sgscq/vpn/SettingsActivity;Lcom/sgscq/vpn/cloud/d0;I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 259
    .line 260
    .line 261
    goto :goto_6

    .line 262
    :catch_4
    move-exception v0

    .line 263
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/SettingsActivity;->K(Ljava/lang/Exception;)V

    .line 264
    .line 265
    .line 266
    :goto_6
    return-void

    .line 267
    :pswitch_5
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 268
    .line 269
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    :try_start_8
    iget-object v0, v1, Lcom/sgscq/vpn/SettingsActivity;->m:Lcom/sgscq/vpn/cloud/q0;

    .line 273
    .line 274
    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/q0;->j()Lcom/sgscq/vpn/cloud/d0;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    new-instance v2, Lcom/sgscq/vpn/l6;

    .line 279
    .line 280
    invoke-direct {v2, v1, v0, v4}, Lcom/sgscq/vpn/l6;-><init>(Lcom/sgscq/vpn/SettingsActivity;Lcom/sgscq/vpn/cloud/d0;I)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 284
    .line 285
    .line 286
    goto :goto_7

    .line 287
    :catch_5
    move-exception v0

    .line 288
    new-instance v2, Lcom/sgscq/vpn/m6;

    .line 289
    .line 290
    invoke-direct {v2, v1, v0, v4}, Lcom/sgscq/vpn/m6;-><init>(Lcom/sgscq/vpn/SettingsActivity;Ljava/lang/Exception;I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 294
    .line 295
    .line 296
    :goto_7
    return-void

    .line 297
    :goto_8
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 298
    .line 299
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    :try_start_9
    iget-object v0, v1, Lcom/sgscq/vpn/SettingsActivity;->m:Lcom/sgscq/vpn/cloud/q0;

    .line 303
    .line 304
    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/q0;->f()Lcom/sgscq/vpn/cloud/d0;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    new-instance v3, Lcom/sgscq/vpn/l6;

    .line 309
    .line 310
    invoke-direct {v3, v1, v0, v2}, Lcom/sgscq/vpn/l6;-><init>(Lcom/sgscq/vpn/SettingsActivity;Lcom/sgscq/vpn/cloud/d0;I)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 314
    .line 315
    .line 316
    goto :goto_9

    .line 317
    :catch_6
    move-exception v0

    .line 318
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/SettingsActivity;->K(Ljava/lang/Exception;)V

    .line 319
    .line 320
    .line 321
    :goto_9
    return-void

    .line 322
    nop

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
