.class public final synthetic Lcom/sgscq/vpn/g6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sgscq/vpn/SettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/SettingsActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/sgscq/vpn/g6;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/g6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lcom/sgscq/vpn/g6;->a:I

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/4 v3, 0x3

    .line 7
    const/16 v4, 0x14

    .line 8
    .line 9
    const/4 v5, 0x2

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x1

    .line 12
    const/4 v8, 0x0

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_14

    .line 17
    .line 18
    :pswitch_0
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 19
    .line 20
    iget-object v0, v1, Lcom/sgscq/vpn/g6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const-class v2, Lcom/sgscq/vpn/cloud/m0;

    .line 26
    .line 27
    monitor-enter v2

    .line 28
    :try_start_0
    sput-boolean v7, Lcom/sgscq/vpn/cloud/m0;->a:Z

    .line 29
    .line 30
    sput v7, Lcom/sgscq/vpn/cloud/m0;->b:I

    .line 31
    .line 32
    sput v8, Lcom/sgscq/vpn/cloud/m0;->c:I

    .line 33
    .line 34
    sput v8, Lcom/sgscq/vpn/cloud/m0;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    monitor-exit v2

    .line 37
    const-string v2, "\u6b63\u5728\u540c\u6b65\u4e91\u5bf9\u624b..."

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/SettingsActivity;->H(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance v2, Lcom/sgscq/vpn/d6;

    .line 43
    .line 44
    invoke-direct {v2, v0, v7, v8, v8}, Lcom/sgscq/vpn/d6;-><init>(Lcom/sgscq/vpn/SettingsActivity;III)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, v0, Lcom/sgscq/vpn/SettingsActivity;->v:Landroid/os/Handler;

    .line 51
    .line 52
    iget-object v4, v0, Lcom/sgscq/vpn/SettingsActivity;->w:Lcom/sgscq/vpn/o6;

    .line 53
    .line 54
    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    const-wide/16 v5, 0xfa

    .line 58
    .line 59
    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    .line 61
    .line 62
    new-instance v2, Ljava/lang/Thread;

    .line 63
    .line 64
    new-instance v4, Lcom/sgscq/vpn/f6;

    .line 65
    .line 66
    invoke-direct {v4, v0, v3}, Lcom/sgscq/vpn/f6;-><init>(Lcom/sgscq/vpn/SettingsActivity;I)V

    .line 67
    .line 68
    .line 69
    const-string v0, "sgscq-cloud-opponent-sync"

    .line 70
    .line 71
    invoke-direct {v2, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    monitor-exit v2

    .line 80
    throw v0

    .line 81
    :pswitch_1
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 82
    .line 83
    const-string v0, "\u6b63\u5728\u83b7\u53d6\u4e91\u7aef\u5386\u53f2\u8282\u70b9..."

    .line 84
    .line 85
    iget-object v2, v1, Lcom/sgscq/vpn/g6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 86
    .line 87
    invoke-virtual {v2, v0}, Lcom/sgscq/vpn/SettingsActivity;->H(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance v0, Ljava/lang/Thread;

    .line 91
    .line 92
    new-instance v3, Lcom/sgscq/vpn/f6;

    .line 93
    .line 94
    invoke-direct {v3, v2, v5}, Lcom/sgscq/vpn/f6;-><init>(Lcom/sgscq/vpn/SettingsActivity;I)V

    .line 95
    .line 96
    .line 97
    const-string v2, "sgscq-cloud-versions"

    .line 98
    .line 99
    invoke-direct {v0, v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :pswitch_2
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 107
    .line 108
    const-string v0, "\u6b63\u5728\u4e0a\u4f20\u672c\u4eba\u4e91\u5b58\u6863..."

    .line 109
    .line 110
    iget-object v2, v1, Lcom/sgscq/vpn/g6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 111
    .line 112
    invoke-virtual {v2, v0}, Lcom/sgscq/vpn/SettingsActivity;->H(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    new-instance v0, Ljava/lang/Thread;

    .line 116
    .line 117
    new-instance v3, Lcom/sgscq/vpn/f6;

    .line 118
    .line 119
    invoke-direct {v3, v2, v7}, Lcom/sgscq/vpn/f6;-><init>(Lcom/sgscq/vpn/SettingsActivity;I)V

    .line 120
    .line 121
    .line 122
    const-string v2, "sgscq-cloud-upload"

    .line 123
    .line 124
    invoke-direct {v0, v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :pswitch_3
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 132
    .line 133
    iget-object v0, v1, Lcom/sgscq/vpn/g6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 139
    .line 140
    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 141
    .line 142
    .line 143
    const-string v3, "\u5220\u9664\u4e91\u5b58\u6863"

    .line 144
    .line 145
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    const-string v3, "\u5c06\u5220\u9664\u4e91\u7aef\u5b58\u6863\uff0c\u5e76\u540c\u65f6\u5220\u9664\u672c\u5730\u8be5\u4e91\u62a4\u7167\u7684\u8fdb\u5ea6\uff1b\u5220\u9664\u540e\u53ef\u65b0\u5efa\u65b0\u7684\u4e91\u5b58\u6863\uff08\u670d\u52a1\u5668\u4fdd\u7559 7 \u5929\uff0c\u8bef\u5220\u53ef\u8054\u7cfb\u7ba1\u7406\u5458\u6062\u590d\uff09\u3002\u7ee7\u7eed\uff1f"

    .line 150
    .line 151
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    new-instance v3, Lcom/sgscq/vpn/n6;

    .line 156
    .line 157
    invoke-direct {v3, v0, v5}, Lcom/sgscq/vpn/n6;-><init>(Lcom/sgscq/vpn/SettingsActivity;I)V

    .line 158
    .line 159
    .line 160
    const-string v0, "\u5220\u9664"

    .line 161
    .line 162
    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    const-string v2, "\u53d6\u6d88"

    .line 167
    .line 168
    invoke-virtual {v0, v2, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :pswitch_4
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 177
    .line 178
    iget-object v3, v1, Lcom/sgscq/vpn/g6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 179
    .line 180
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    const-string v0, "com.hihonor.systemmanager"

    .line 184
    .line 185
    const-string v4, "com.hihonor.systemmanager.startupmgr.ui.StartupNormalAppListActivity"

    .line 186
    .line 187
    filled-new-array {v0, v4}, [Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    const-string v5, "com.huawei.systemmanager"

    .line 192
    .line 193
    const-string v6, "com.huawei.systemmanager.startupmgr.ui.StartupNormalAppListActivity"

    .line 194
    .line 195
    filled-new-array {v5, v6}, [Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    const-string v9, "com.hihonor.systemmanager.mainscreen.MainScreenActivity"

    .line 200
    .line 201
    filled-new-array {v0, v9}, [Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    const-string v9, "com.huawei.systemmanager.mainscreen.MainScreenActivity"

    .line 206
    .line 207
    filled-new-array {v5, v9}, [Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    filled-new-array {v4, v6, v0, v5}, [[Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    move v5, v8

    .line 216
    :goto_0
    const-string v6, "KeepAlive"

    .line 217
    .line 218
    if-ge v5, v2, :cond_1

    .line 219
    .line 220
    aget-object v9, v4, v5

    .line 221
    .line 222
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    .line 223
    .line 224
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 225
    .line 226
    .line 227
    new-instance v10, Landroid/content/ComponentName;

    .line 228
    .line 229
    aget-object v11, v9, v8

    .line 230
    .line 231
    aget-object v12, v9, v7

    .line 232
    .line 233
    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 241
    .line 242
    .line 243
    move-result-object v10

    .line 244
    invoke-virtual {v0, v10}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 245
    .line 246
    .line 247
    move-result-object v10

    .line 248
    if-nez v10, :cond_0

    .line 249
    .line 250
    goto :goto_1

    .line 251
    :cond_0
    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 252
    .line 253
    .line 254
    goto :goto_2

    .line 255
    :catch_0
    move-exception v0

    .line 256
    new-instance v10, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    const-string v11, "\u6253\u5f00\u5382\u5546\u542f\u52a8\u7ba1\u7406\u5931\u8d25("

    .line 259
    .line 260
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    aget-object v9, v9, v8

    .line 264
    .line 265
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    const-string v9, "): "

    .line 269
    .line 270
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-static {v6, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 292
    .line 293
    goto :goto_0

    .line 294
    :cond_1
    move v7, v8

    .line 295
    :goto_2
    if-nez v7, :cond_2

    .line 296
    .line 297
    const-string v0, "package:"

    .line 298
    .line 299
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    .line 300
    .line 301
    const-string v4, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 302
    .line 303
    new-instance v5, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-direct {v2, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 327
    .line 328
    .line 329
    goto :goto_3

    .line 330
    :catch_1
    move-exception v0

    .line 331
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    const-string v2, "\u6253\u4e0d\u5f00\u5e94\u7528\u8be6\u60c5\u9875: "

    .line 340
    .line 341
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-static {v6, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    :cond_2
    :goto_3
    return-void

    .line 349
    :pswitch_5
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 350
    .line 351
    iget-object v0, v1, Lcom/sgscq/vpn/g6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 352
    .line 353
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 354
    .line 355
    .line 356
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->q0(Landroid/content/Context;)Z

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    if-eqz v2, :cond_3

    .line 361
    .line 362
    const-string v2, "\u901a\u77e5\u6743\u9650\u5df2\u5f00\u542f"

    .line 363
    .line 364
    invoke-static {v0, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 369
    .line 370
    .line 371
    goto :goto_4

    .line 372
    :cond_3
    const/16 v2, 0x44d

    .line 373
    .line 374
    invoke-static {v0, v2}, Lcom/sgscq/vpn/p5;->Z0(Landroid/app/Activity;I)Z

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    if-nez v2, :cond_4

    .line 379
    .line 380
    :try_start_3
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->g(Landroid/content/Context;)Landroid/content/Intent;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 385
    .line 386
    .line 387
    goto :goto_4

    .line 388
    :catch_2
    const-string v2, "\u6253\u4e0d\u5f00\u7cfb\u7edf\u901a\u77e5\u8bbe\u7f6e"

    .line 389
    .line 390
    invoke-static {v0, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 395
    .line 396
    .line 397
    :cond_4
    :goto_4
    return-void

    .line 398
    :pswitch_6
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 399
    .line 400
    iget-object v0, v1, Lcom/sgscq/vpn/g6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 401
    .line 402
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 403
    .line 404
    .line 405
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->m1(Landroid/app/Activity;)V

    .line 406
    .line 407
    .line 408
    return-void

    .line 409
    :pswitch_7
    const-string v3, "unbind"

    .line 410
    .line 411
    const-string v4, "afdian"

    .line 412
    .line 413
    iget-object v0, v1, Lcom/sgscq/vpn/g6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 414
    .line 415
    iget-object v2, v0, Lcom/sgscq/vpn/SettingsActivity;->k:Lcom/sgscq/vpn/h;

    .line 416
    .line 417
    invoke-virtual {v2}, Lcom/sgscq/vpn/h;->j()Lcom/sgscq/vpn/f;

    .line 418
    .line 419
    .line 420
    move-result-object v5

    .line 421
    iget-object v2, v0, Lcom/sgscq/vpn/SettingsActivity;->x:Lcom/sgscq/vpn/b0;

    .line 422
    .line 423
    invoke-virtual {v2}, Lcom/sgscq/vpn/b0;->b()Lcom/sgscq/vpn/z;

    .line 424
    .line 425
    .line 426
    move-result-object v6

    .line 427
    iget-object v2, v0, Lcom/sgscq/vpn/SettingsActivity;->z:Lcom/sgscq/vpn/h;

    .line 428
    .line 429
    invoke-virtual {v2}, Lcom/sgscq/vpn/h;->l()Lcom/sgscq/vpn/d1;

    .line 430
    .line 431
    .line 432
    move-result-object v7

    .line 433
    move-object v2, v0

    .line 434
    invoke-static/range {v2 .. v7}, Lcom/sgscq/vpn/z0;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sgscq/vpn/f;Lcom/sgscq/vpn/z;Lcom/sgscq/vpn/d1;)V

    .line 435
    .line 436
    .line 437
    iget-object v2, v0, Lcom/sgscq/vpn/SettingsActivity;->k:Lcom/sgscq/vpn/h;

    .line 438
    .line 439
    invoke-virtual {v2}, Lcom/sgscq/vpn/h;->c()V

    .line 440
    .line 441
    .line 442
    const-string v2, "\u5df2\u89e3\u7ed1\u7231\u53d1\u7535"

    .line 443
    .line 444
    invoke-static {v0, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v0}, Lcom/sgscq/vpn/SettingsActivity;->t()V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0}, Lcom/sgscq/vpn/SettingsActivity;->v()V

    .line 455
    .line 456
    .line 457
    return-void

    .line 458
    :pswitch_8
    iget-object v0, v1, Lcom/sgscq/vpn/g6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 459
    .line 460
    iget-object v3, v0, Lcom/sgscq/vpn/SettingsActivity;->l:Landroid/widget/TextView;

    .line 461
    .line 462
    const-string v4, "\u6b63\u5728\u5237\u65b0\u7231\u53d1\u7535\u6743\u76ca..."

    .line 463
    .line 464
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    .line 466
    .line 467
    iget-object v3, v0, Lcom/sgscq/vpn/SettingsActivity;->k:Lcom/sgscq/vpn/h;

    .line 468
    .line 469
    new-instance v4, Lcom/sgscq/vpn/p6;

    .line 470
    .line 471
    invoke-direct {v4, v0, v2}, Lcom/sgscq/vpn/p6;-><init>(Lcom/sgscq/vpn/SettingsActivity;I)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v3}, Lcom/sgscq/vpn/h;->j()Lcom/sgscq/vpn/f;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    iget-boolean v5, v2, Lcom/sgscq/vpn/f;->c:Z

    .line 479
    .line 480
    if-eqz v5, :cond_6

    .line 481
    .line 482
    iget-object v5, v2, Lcom/sgscq/vpn/f;->a:Ljava/lang/String;

    .line 483
    .line 484
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 485
    .line 486
    .line 487
    move-result v5

    .line 488
    if-eqz v5, :cond_5

    .line 489
    .line 490
    goto :goto_5

    .line 491
    :cond_5
    new-instance v5, Lcom/sgscq/vpn/a;

    .line 492
    .line 493
    invoke-direct {v5, v3, v2, v7}, Lcom/sgscq/vpn/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 494
    .line 495
    .line 496
    new-instance v2, Ljava/lang/Thread;

    .line 497
    .line 498
    new-instance v3, Lcom/sgscq/vpn/c;

    .line 499
    .line 500
    invoke-direct {v3, v5, v0, v4, v8}, Lcom/sgscq/vpn/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 501
    .line 502
    .line 503
    const-string v0, "AfdianAuth"

    .line 504
    .line 505
    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 509
    .line 510
    .line 511
    goto :goto_6

    .line 512
    :cond_6
    :goto_5
    const-string v0, "\u8bf7\u5148\u767b\u5f55\u7231\u53d1\u7535"

    .line 513
    .line 514
    invoke-virtual {v4, v0}, Lcom/sgscq/vpn/p6;->a(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    :goto_6
    return-void

    .line 518
    :pswitch_9
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 519
    .line 520
    iget-object v2, v1, Lcom/sgscq/vpn/g6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 521
    .line 522
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 523
    .line 524
    .line 525
    :try_start_4
    iget-object v0, v2, Lcom/sgscq/vpn/SettingsActivity;->k:Lcom/sgscq/vpn/h;

    .line 526
    .line 527
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/h;->p(Lcom/sgscq/vpn/SettingsActivity;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 528
    .line 529
    .line 530
    goto :goto_7

    .line 531
    :catch_3
    move-exception v0

    .line 532
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    invoke-static {v2, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v2}, Lcom/sgscq/vpn/SettingsActivity;->t()V

    .line 544
    .line 545
    .line 546
    :goto_7
    return-void

    .line 547
    :pswitch_a
    const-string v10, "unbind"

    .line 548
    .line 549
    const-string v11, "bilibili"

    .line 550
    .line 551
    iget-object v0, v1, Lcom/sgscq/vpn/g6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 552
    .line 553
    iget-object v2, v0, Lcom/sgscq/vpn/SettingsActivity;->k:Lcom/sgscq/vpn/h;

    .line 554
    .line 555
    invoke-virtual {v2}, Lcom/sgscq/vpn/h;->j()Lcom/sgscq/vpn/f;

    .line 556
    .line 557
    .line 558
    move-result-object v12

    .line 559
    iget-object v2, v0, Lcom/sgscq/vpn/SettingsActivity;->x:Lcom/sgscq/vpn/b0;

    .line 560
    .line 561
    invoke-virtual {v2}, Lcom/sgscq/vpn/b0;->b()Lcom/sgscq/vpn/z;

    .line 562
    .line 563
    .line 564
    move-result-object v13

    .line 565
    iget-object v2, v0, Lcom/sgscq/vpn/SettingsActivity;->z:Lcom/sgscq/vpn/h;

    .line 566
    .line 567
    invoke-virtual {v2}, Lcom/sgscq/vpn/h;->l()Lcom/sgscq/vpn/d1;

    .line 568
    .line 569
    .line 570
    move-result-object v14

    .line 571
    move-object v9, v0

    .line 572
    invoke-static/range {v9 .. v14}, Lcom/sgscq/vpn/z0;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sgscq/vpn/f;Lcom/sgscq/vpn/z;Lcom/sgscq/vpn/d1;)V

    .line 573
    .line 574
    .line 575
    iget-object v2, v0, Lcom/sgscq/vpn/SettingsActivity;->x:Lcom/sgscq/vpn/b0;

    .line 576
    .line 577
    iget-object v2, v2, Lcom/sgscq/vpn/b0;->b:Landroid/content/SharedPreferences;

    .line 578
    .line 579
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 580
    .line 581
    .line 582
    move-result-object v2

    .line 583
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 584
    .line 585
    .line 586
    move-result-object v2

    .line 587
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 588
    .line 589
    .line 590
    const-string v2, "\u5df2\u89e3\u7ed1 B \u7ad9"

    .line 591
    .line 592
    invoke-static {v0, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 593
    .line 594
    .line 595
    move-result-object v2

    .line 596
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v0}, Lcom/sgscq/vpn/SettingsActivity;->u()V

    .line 600
    .line 601
    .line 602
    return-void

    .line 603
    :pswitch_b
    iget-object v0, v1, Lcom/sgscq/vpn/g6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 604
    .line 605
    iget-object v2, v0, Lcom/sgscq/vpn/SettingsActivity;->y:Landroid/widget/TextView;

    .line 606
    .line 607
    if-eqz v2, :cond_7

    .line 608
    .line 609
    const-string v3, "\u6b63\u5728\u5237\u65b0 B \u7ad9\u5173\u6ce8\u72b6\u6001..."

    .line 610
    .line 611
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    .line 613
    .line 614
    :cond_7
    iget-object v2, v0, Lcom/sgscq/vpn/SettingsActivity;->x:Lcom/sgscq/vpn/b0;

    .line 615
    .line 616
    new-instance v3, Lcom/sgscq/vpn/p6;

    .line 617
    .line 618
    invoke-direct {v3, v0, v7}, Lcom/sgscq/vpn/p6;-><init>(Lcom/sgscq/vpn/SettingsActivity;I)V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v2}, Lcom/sgscq/vpn/b0;->b()Lcom/sgscq/vpn/z;

    .line 622
    .line 623
    .line 624
    move-result-object v4

    .line 625
    iget-boolean v5, v4, Lcom/sgscq/vpn/z;->b:Z

    .line 626
    .line 627
    if-eqz v5, :cond_9

    .line 628
    .line 629
    iget-object v4, v4, Lcom/sgscq/vpn/z;->a:Ljava/lang/String;

    .line 630
    .line 631
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 632
    .line 633
    .line 634
    move-result v4

    .line 635
    if-eqz v4, :cond_8

    .line 636
    .line 637
    goto :goto_8

    .line 638
    :cond_8
    new-instance v4, Lcom/sgscq/vpn/w;

    .line 639
    .line 640
    invoke-direct {v4, v2, v7}, Lcom/sgscq/vpn/w;-><init>(Lcom/sgscq/vpn/b0;I)V

    .line 641
    .line 642
    .line 643
    invoke-static {v0, v3, v4}, Lcom/sgscq/vpn/b0;->f(Landroid/app/Activity;Lcom/sgscq/vpn/p6;Lcom/sgscq/vpn/w;)V

    .line 644
    .line 645
    .line 646
    goto :goto_9

    .line 647
    :cond_9
    :goto_8
    const-string v0, "\u672a\u7ed1\u5b9a B \u7ad9 UID"

    .line 648
    .line 649
    invoke-virtual {v3, v0}, Lcom/sgscq/vpn/p6;->a(Ljava/lang/String;)V

    .line 650
    .line 651
    .line 652
    :goto_9
    return-void

    .line 653
    :pswitch_c
    iget-object v0, v1, Lcom/sgscq/vpn/g6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 654
    .line 655
    iget-object v2, v0, Lcom/sgscq/vpn/SettingsActivity;->x:Lcom/sgscq/vpn/b0;

    .line 656
    .line 657
    invoke-virtual {v2}, Lcom/sgscq/vpn/b0;->b()Lcom/sgscq/vpn/z;

    .line 658
    .line 659
    .line 660
    move-result-object v2

    .line 661
    new-instance v3, Landroid/widget/EditText;

    .line 662
    .line 663
    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 664
    .line 665
    .line 666
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setInputType(I)V

    .line 667
    .line 668
    .line 669
    const-string v4, "\u7eaf\u6570\u5b57 UID"

    .line 670
    .line 671
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 672
    .line 673
    .line 674
    iget-object v4, v2, Lcom/sgscq/vpn/z;->a:Ljava/lang/String;

    .line 675
    .line 676
    if-eqz v4, :cond_a

    .line 677
    .line 678
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 679
    .line 680
    .line 681
    move-result v4

    .line 682
    if-nez v4, :cond_a

    .line 683
    .line 684
    iget-object v4, v2, Lcom/sgscq/vpn/z;->a:Ljava/lang/String;

    .line 685
    .line 686
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    .line 688
    .line 689
    iget-object v2, v2, Lcom/sgscq/vpn/z;->a:Ljava/lang/String;

    .line 690
    .line 691
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 692
    .line 693
    .line 694
    move-result v2

    .line 695
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 696
    .line 697
    .line 698
    :cond_a
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 699
    .line 700
    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 701
    .line 702
    .line 703
    const-string v4, "\u7ed1\u5b9a B \u7ad9 UID"

    .line 704
    .line 705
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 706
    .line 707
    .line 708
    move-result-object v2

    .line 709
    const-string v4, "\u6253\u5f00 B \u7ad9 \u2192 \u6211\u7684 \u2192 \u5934\u50cf\u4e0b\u65b9\u4e00\u957f\u4e32\u6570\u5b57\u5373\u60a8\u7684 UID\u3002\n\n\u7ed1\u5b9a\u540e\u5c06\u81ea\u52a8\u6821\u9a8c\u662f\u5426\u5173\u6ce8 UP\u3002"

    .line 710
    .line 711
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 712
    .line 713
    .line 714
    move-result-object v2

    .line 715
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 716
    .line 717
    .line 718
    move-result-object v2

    .line 719
    new-instance v4, Lcom/sgscq/vpn/z5;

    .line 720
    .line 721
    invoke-direct {v4, v0, v3, v8}, Lcom/sgscq/vpn/z5;-><init>(Lcom/sgscq/vpn/SettingsActivity;Landroid/widget/EditText;I)V

    .line 722
    .line 723
    .line 724
    const-string v0, "\u786e\u5b9a"

    .line 725
    .line 726
    invoke-virtual {v2, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 727
    .line 728
    .line 729
    move-result-object v0

    .line 730
    const-string v2, "\u53d6\u6d88"

    .line 731
    .line 732
    invoke-virtual {v0, v2, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 733
    .line 734
    .line 735
    move-result-object v0

    .line 736
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 737
    .line 738
    .line 739
    return-void

    .line 740
    :pswitch_d
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 741
    .line 742
    iget-object v0, v1, Lcom/sgscq/vpn/g6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 743
    .line 744
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 745
    .line 746
    .line 747
    new-instance v2, Ljava/lang/StringBuilder;

    .line 748
    .line 749
    const-string v4, "https://space.bilibili.com/"

    .line 750
    .line 751
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    invoke-static {}, Lcom/sgscq/vpn/p5;->S()[Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object v4

    .line 758
    aget-object v3, v4, v3

    .line 759
    .line 760
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    .line 762
    .line 763
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object v2

    .line 767
    const-string v3, "B\u7ad9"

    .line 768
    .line 769
    invoke-static {v0, v3, v2}, Lcom/sgscq/vpn/p5;->I0(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    .line 771
    .line 772
    return-void

    .line 773
    :pswitch_e
    const-string v10, "unbind"

    .line 774
    .line 775
    const-string v11, "douyin"

    .line 776
    .line 777
    iget-object v0, v1, Lcom/sgscq/vpn/g6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 778
    .line 779
    iget-object v2, v0, Lcom/sgscq/vpn/SettingsActivity;->k:Lcom/sgscq/vpn/h;

    .line 780
    .line 781
    invoke-virtual {v2}, Lcom/sgscq/vpn/h;->j()Lcom/sgscq/vpn/f;

    .line 782
    .line 783
    .line 784
    move-result-object v12

    .line 785
    iget-object v2, v0, Lcom/sgscq/vpn/SettingsActivity;->x:Lcom/sgscq/vpn/b0;

    .line 786
    .line 787
    invoke-virtual {v2}, Lcom/sgscq/vpn/b0;->b()Lcom/sgscq/vpn/z;

    .line 788
    .line 789
    .line 790
    move-result-object v13

    .line 791
    iget-object v2, v0, Lcom/sgscq/vpn/SettingsActivity;->z:Lcom/sgscq/vpn/h;

    .line 792
    .line 793
    invoke-virtual {v2}, Lcom/sgscq/vpn/h;->l()Lcom/sgscq/vpn/d1;

    .line 794
    .line 795
    .line 796
    move-result-object v14

    .line 797
    move-object v9, v0

    .line 798
    invoke-static/range {v9 .. v14}, Lcom/sgscq/vpn/z0;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sgscq/vpn/f;Lcom/sgscq/vpn/z;Lcom/sgscq/vpn/d1;)V

    .line 799
    .line 800
    .line 801
    iget-object v2, v0, Lcom/sgscq/vpn/SettingsActivity;->z:Lcom/sgscq/vpn/h;

    .line 802
    .line 803
    invoke-virtual {v2}, Lcom/sgscq/vpn/h;->c()V

    .line 804
    .line 805
    .line 806
    const-string v2, "\u5df2\u89e3\u7ed1\u6296\u97f3"

    .line 807
    .line 808
    invoke-static {v0, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 809
    .line 810
    .line 811
    move-result-object v2

    .line 812
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 813
    .line 814
    .line 815
    invoke-virtual {v0}, Lcom/sgscq/vpn/SettingsActivity;->w()V

    .line 816
    .line 817
    .line 818
    return-void

    .line 819
    :pswitch_f
    iget-object v0, v1, Lcom/sgscq/vpn/g6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 820
    .line 821
    iget-object v2, v0, Lcom/sgscq/vpn/SettingsActivity;->A:Landroid/widget/TextView;

    .line 822
    .line 823
    if-eqz v2, :cond_b

    .line 824
    .line 825
    const-string v4, "\u6b63\u5728\u5237\u65b0\u6296\u97f3\u5173\u6ce8\u72b6\u6001..."

    .line 826
    .line 827
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 828
    .line 829
    .line 830
    :cond_b
    iget-object v2, v0, Lcom/sgscq/vpn/SettingsActivity;->z:Lcom/sgscq/vpn/h;

    .line 831
    .line 832
    new-instance v4, Lcom/sgscq/vpn/p6;

    .line 833
    .line 834
    invoke-direct {v4, v0, v3}, Lcom/sgscq/vpn/p6;-><init>(Lcom/sgscq/vpn/SettingsActivity;I)V

    .line 835
    .line 836
    .line 837
    invoke-virtual {v2}, Lcom/sgscq/vpn/h;->l()Lcom/sgscq/vpn/d1;

    .line 838
    .line 839
    .line 840
    move-result-object v3

    .line 841
    iget-boolean v6, v3, Lcom/sgscq/vpn/d1;->b:Z

    .line 842
    .line 843
    if-eqz v6, :cond_d

    .line 844
    .line 845
    iget-object v3, v3, Lcom/sgscq/vpn/d1;->a:Ljava/lang/String;

    .line 846
    .line 847
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 848
    .line 849
    .line 850
    move-result v3

    .line 851
    if-eqz v3, :cond_c

    .line 852
    .line 853
    goto :goto_a

    .line 854
    :cond_c
    new-instance v3, Lcom/sgscq/vpn/b1;

    .line 855
    .line 856
    invoke-direct {v3, v2, v8}, Lcom/sgscq/vpn/b1;-><init>(Lcom/sgscq/vpn/h;I)V

    .line 857
    .line 858
    .line 859
    new-instance v2, Ljava/lang/Thread;

    .line 860
    .line 861
    new-instance v6, Lcom/sgscq/vpn/c;

    .line 862
    .line 863
    invoke-direct {v6, v3, v4, v0, v5}, Lcom/sgscq/vpn/c;-><init>(Ljava/lang/Object;Lcom/sgscq/vpn/p6;Landroid/app/Activity;I)V

    .line 864
    .line 865
    .line 866
    const-string v0, "DouyinAuth"

    .line 867
    .line 868
    invoke-direct {v2, v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 869
    .line 870
    .line 871
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 872
    .line 873
    .line 874
    goto :goto_b

    .line 875
    :cond_d
    :goto_a
    const-string v0, "\u672a\u7ed1\u5b9a\u6296\u97f3\u53f7"

    .line 876
    .line 877
    invoke-virtual {v4, v0}, Lcom/sgscq/vpn/p6;->a(Ljava/lang/String;)V

    .line 878
    .line 879
    .line 880
    :goto_b
    return-void

    .line 881
    :pswitch_10
    iget-object v0, v1, Lcom/sgscq/vpn/g6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 882
    .line 883
    iget-object v2, v0, Lcom/sgscq/vpn/SettingsActivity;->z:Lcom/sgscq/vpn/h;

    .line 884
    .line 885
    invoke-virtual {v2}, Lcom/sgscq/vpn/h;->l()Lcom/sgscq/vpn/d1;

    .line 886
    .line 887
    .line 888
    move-result-object v2

    .line 889
    new-instance v3, Landroid/widget/EditText;

    .line 890
    .line 891
    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 892
    .line 893
    .line 894
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setInputType(I)V

    .line 895
    .line 896
    .line 897
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 898
    .line 899
    .line 900
    const-string v4, "\u6296\u97f3\u53f7 / UID / \u4e3b\u9875\u94fe\u63a5"

    .line 901
    .line 902
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 903
    .line 904
    .line 905
    iget-object v4, v2, Lcom/sgscq/vpn/d1;->a:Ljava/lang/String;

    .line 906
    .line 907
    if-eqz v4, :cond_e

    .line 908
    .line 909
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 910
    .line 911
    .line 912
    move-result v4

    .line 913
    if-nez v4, :cond_e

    .line 914
    .line 915
    iget-object v4, v2, Lcom/sgscq/vpn/d1;->a:Ljava/lang/String;

    .line 916
    .line 917
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 918
    .line 919
    .line 920
    iget-object v2, v2, Lcom/sgscq/vpn/d1;->a:Ljava/lang/String;

    .line 921
    .line 922
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 923
    .line 924
    .line 925
    move-result v2

    .line 926
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 927
    .line 928
    .line 929
    :cond_e
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 930
    .line 931
    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 932
    .line 933
    .line 934
    const-string v4, "\u7ed1\u5b9a\u6296\u97f3"

    .line 935
    .line 936
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 937
    .line 938
    .line 939
    move-result-object v2

    .line 940
    const-string v4, "\u8bf7\u5148\u5173\u6ce8\u6296\u97f3\u53f7 2107174701\uff0c\u7136\u540e\u586b\u5199\u60a8\u7684\u6296\u97f3\u53f7\u3001UID \u6216\u6296\u97f3\u4e3b\u9875\u94fe\u63a5\u3002"

    .line 941
    .line 942
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 943
    .line 944
    .line 945
    move-result-object v2

    .line 946
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 947
    .line 948
    .line 949
    move-result-object v2

    .line 950
    new-instance v4, Lcom/sgscq/vpn/z5;

    .line 951
    .line 952
    invoke-direct {v4, v0, v3, v7}, Lcom/sgscq/vpn/z5;-><init>(Lcom/sgscq/vpn/SettingsActivity;Landroid/widget/EditText;I)V

    .line 953
    .line 954
    .line 955
    const-string v0, "\u786e\u5b9a"

    .line 956
    .line 957
    invoke-virtual {v2, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 958
    .line 959
    .line 960
    move-result-object v0

    .line 961
    const-string v2, "\u53d6\u6d88"

    .line 962
    .line 963
    invoke-virtual {v0, v2, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 964
    .line 965
    .line 966
    move-result-object v0

    .line 967
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 968
    .line 969
    .line 970
    return-void

    .line 971
    :pswitch_11
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 972
    .line 973
    iget-object v0, v1, Lcom/sgscq/vpn/g6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 974
    .line 975
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 976
    .line 977
    .line 978
    const-string v2, "\u6296\u97f3"

    .line 979
    .line 980
    const-string v3, "https://www.douyin.com/user/MS4wLjABAAAA-TXptUA8uZONQJpjl8c_l6seYJUw7Az1_GZ74zENB7w"

    .line 981
    .line 982
    invoke-static {v0, v2, v3}, Lcom/sgscq/vpn/p5;->I0(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    .line 984
    .line 985
    return-void

    .line 986
    :pswitch_12
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 987
    .line 988
    iget-object v0, v1, Lcom/sgscq/vpn/g6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 989
    .line 990
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 991
    .line 992
    .line 993
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 994
    .line 995
    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 996
    .line 997
    .line 998
    const-string v3, "\u6062\u590d\u9ed8\u8ba4 DNS"

    .line 999
    .line 1000
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v2

    .line 1004
    const-string v3, "\u5c06\u5173\u95ed APP \u4e13\u7528 DNS\uff0c\u5e76\u6062\u590d\u4e3a\u9ed8\u8ba4\u5730\u5740 114.114.114.114\u3002"

    .line 1005
    .line 1006
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v2

    .line 1010
    const-string v3, "\u53d6\u6d88"

    .line 1011
    .line 1012
    invoke-virtual {v2, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v2

    .line 1016
    new-instance v3, Lcom/sgscq/vpn/n6;

    .line 1017
    .line 1018
    invoke-direct {v3, v0, v8}, Lcom/sgscq/vpn/n6;-><init>(Lcom/sgscq/vpn/SettingsActivity;I)V

    .line 1019
    .line 1020
    .line 1021
    const-string v0, "\u6062\u590d\u9ed8\u8ba4"

    .line 1022
    .line 1023
    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v0

    .line 1027
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1028
    .line 1029
    .line 1030
    return-void

    .line 1031
    :pswitch_13
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 1032
    .line 1033
    iget-object v2, v1, Lcom/sgscq/vpn/g6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 1034
    .line 1035
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1036
    .line 1037
    .line 1038
    :try_start_5
    iget-object v0, v2, Lcom/sgscq/vpn/SettingsActivity;->O:Landroid/widget/AutoCompleteTextView;

    .line 1039
    .line 1040
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v0

    .line 1044
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v0

    .line 1048
    invoke-static {v0}, Lcom/sgscq/vpn/SettingsActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v0

    .line 1052
    invoke-static {v0}, Lc/i;->d(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v0

    .line 1056
    new-instance v3, Lc/i;

    .line 1057
    .line 1058
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v4

    .line 1062
    invoke-direct {v3, v7, v4, v0}, Lc/i;-><init>(ZLjava/lang/String;Ljava/net/InetAddress;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1063
    .line 1064
    .line 1065
    iget-object v0, v2, Lcom/sgscq/vpn/SettingsActivity;->Q:Landroid/widget/Button;

    .line 1066
    .line 1067
    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 1068
    .line 1069
    .line 1070
    const-string v0, "\u6b63\u5728\u6d4b\u8bd5 DNS\u2026"

    .line 1071
    .line 1072
    sget v4, Lcom/sgscq/vpn/p5;->C:I

    .line 1073
    .line 1074
    invoke-virtual {v2, v0, v4}, Lcom/sgscq/vpn/SettingsActivity;->J(Ljava/lang/String;I)V

    .line 1075
    .line 1076
    .line 1077
    new-instance v0, Ljava/lang/Thread;

    .line 1078
    .line 1079
    new-instance v4, Lcom/sgscq/vpn/d;

    .line 1080
    .line 1081
    const/16 v5, 0x13

    .line 1082
    .line 1083
    invoke-direct {v4, v2, v3, v5}, Lcom/sgscq/vpn/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1084
    .line 1085
    .line 1086
    const-string v2, "AppDnsTest"

    .line 1087
    .line 1088
    invoke-direct {v0, v4, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1089
    .line 1090
    .line 1091
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1092
    .line 1093
    .line 1094
    goto :goto_c

    .line 1095
    :catch_4
    move-exception v0

    .line 1096
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v3

    .line 1100
    sget v4, Lcom/sgscq/vpn/p5;->D:I

    .line 1101
    .line 1102
    invoke-virtual {v2, v3, v4}, Lcom/sgscq/vpn/SettingsActivity;->J(Ljava/lang/String;I)V

    .line 1103
    .line 1104
    .line 1105
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v0

    .line 1109
    invoke-static {v2, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v0

    .line 1113
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1114
    .line 1115
    .line 1116
    :goto_c
    return-void

    .line 1117
    :pswitch_14
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 1118
    .line 1119
    iget-object v0, v1, Lcom/sgscq/vpn/g6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 1120
    .line 1121
    invoke-virtual {v0}, Lcom/sgscq/vpn/SettingsActivity;->D()Z

    .line 1122
    .line 1123
    .line 1124
    return-void

    .line 1125
    :pswitch_15
    iget-object v0, v1, Lcom/sgscq/vpn/g6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 1126
    .line 1127
    iget-object v0, v0, Lcom/sgscq/vpn/SettingsActivity;->O:Landroid/widget/AutoCompleteTextView;

    .line 1128
    .line 1129
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 1130
    .line 1131
    .line 1132
    return-void

    .line 1133
    :pswitch_16
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 1134
    .line 1135
    iget-object v0, v1, Lcom/sgscq/vpn/g6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 1136
    .line 1137
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1138
    .line 1139
    .line 1140
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 1141
    .line 1142
    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1143
    .line 1144
    .line 1145
    const-string v3, "\u6062\u590d\u9ed8\u8ba4\u8fde\u63a5"

    .line 1146
    .line 1147
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v2

    .line 1151
    const-string v3, "\u5c06\u5173\u95ed\u5e76\u6e05\u7a7a\u624b\u52a8\u4ee3\u7406\u914d\u7f6e\uff0c\u7ee7\u7eed\u4f7f\u7528\u5f53\u524d\u5185\u7f6e\u8fde\u63a5\u7b56\u7565\u3002"

    .line 1152
    .line 1153
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v2

    .line 1157
    const-string v3, "\u53d6\u6d88"

    .line 1158
    .line 1159
    invoke-virtual {v2, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v2

    .line 1163
    new-instance v3, Lcom/sgscq/vpn/n6;

    .line 1164
    .line 1165
    invoke-direct {v3, v0, v7}, Lcom/sgscq/vpn/n6;-><init>(Lcom/sgscq/vpn/SettingsActivity;I)V

    .line 1166
    .line 1167
    .line 1168
    const-string v0, "\u6062\u590d\u9ed8\u8ba4"

    .line 1169
    .line 1170
    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v0

    .line 1174
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1175
    .line 1176
    .line 1177
    return-void

    .line 1178
    :pswitch_17
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 1179
    .line 1180
    iget-object v2, v1, Lcom/sgscq/vpn/g6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 1181
    .line 1182
    iget-object v0, v2, Lcom/sgscq/vpn/SettingsActivity;->H:Landroid/widget/RadioButton;

    .line 1183
    .line 1184
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 1185
    .line 1186
    .line 1187
    move-result v0

    .line 1188
    if-eqz v0, :cond_f

    .line 1189
    .line 1190
    const-string v0, "socks5"

    .line 1191
    .line 1192
    goto :goto_d

    .line 1193
    :cond_f
    iget-object v0, v2, Lcom/sgscq/vpn/SettingsActivity;->G:Landroid/widget/RadioButton;

    .line 1194
    .line 1195
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 1196
    .line 1197
    .line 1198
    move-result v0

    .line 1199
    if-eqz v0, :cond_10

    .line 1200
    .line 1201
    const-string v0, "https"

    .line 1202
    .line 1203
    goto :goto_d

    .line 1204
    :cond_10
    const-string v0, "http"

    .line 1205
    .line 1206
    :goto_d
    :try_start_6
    iget-object v3, v2, Lcom/sgscq/vpn/SettingsActivity;->I:Landroid/widget/EditText;

    .line 1207
    .line 1208
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v3

    .line 1212
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v3

    .line 1216
    iget-object v5, v2, Lcom/sgscq/vpn/SettingsActivity;->J:Landroid/widget/EditText;

    .line 1217
    .line 1218
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v5

    .line 1222
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v5

    .line 1226
    invoke-static {v0, v3, v5}, Lcom/sgscq/vpn/config/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sgscq/vpn/config/f;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1230
    iget-object v3, v2, Lcom/sgscq/vpn/SettingsActivity;->L:Landroid/widget/Button;

    .line 1231
    .line 1232
    invoke-virtual {v3, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 1233
    .line 1234
    .line 1235
    const-string v3, "\u6b63\u5728\u6d4b\u8bd5\u8fde\u63a5\u2026"

    .line 1236
    .line 1237
    sget v5, Lcom/sgscq/vpn/p5;->C:I

    .line 1238
    .line 1239
    invoke-virtual {v2, v3, v5}, Lcom/sgscq/vpn/SettingsActivity;->L(Ljava/lang/String;I)V

    .line 1240
    .line 1241
    .line 1242
    new-instance v3, Ljava/lang/Thread;

    .line 1243
    .line 1244
    new-instance v5, Lcom/sgscq/vpn/d;

    .line 1245
    .line 1246
    invoke-direct {v5, v2, v0, v4}, Lcom/sgscq/vpn/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1247
    .line 1248
    .line 1249
    const-string v0, "ServiceProxyTest"

    .line 1250
    .line 1251
    invoke-direct {v3, v5, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1252
    .line 1253
    .line 1254
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1255
    .line 1256
    .line 1257
    goto :goto_e

    .line 1258
    :catch_5
    move-exception v0

    .line 1259
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v3

    .line 1263
    sget v4, Lcom/sgscq/vpn/p5;->D:I

    .line 1264
    .line 1265
    invoke-virtual {v2, v3, v4}, Lcom/sgscq/vpn/SettingsActivity;->L(Ljava/lang/String;I)V

    .line 1266
    .line 1267
    .line 1268
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v0

    .line 1272
    invoke-static {v2, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v0

    .line 1276
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1277
    .line 1278
    .line 1279
    :goto_e
    return-void

    .line 1280
    :pswitch_18
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 1281
    .line 1282
    iget-object v0, v1, Lcom/sgscq/vpn/g6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 1283
    .line 1284
    invoke-virtual {v0}, Lcom/sgscq/vpn/SettingsActivity;->F()Z

    .line 1285
    .line 1286
    .line 1287
    return-void

    .line 1288
    :pswitch_19
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 1289
    .line 1290
    iget-object v0, v1, Lcom/sgscq/vpn/g6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 1291
    .line 1292
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1293
    .line 1294
    .line 1295
    new-instance v2, Landroid/content/Intent;

    .line 1296
    .line 1297
    const-string v3, "android.intent.action.OPEN_DOCUMENT"

    .line 1298
    .line 1299
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1300
    .line 1301
    .line 1302
    const-string v3, "android.intent.category.OPENABLE"

    .line 1303
    .line 1304
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1305
    .line 1306
    .line 1307
    const-string v3, "application/zip"

    .line 1308
    .line 1309
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1310
    .line 1311
    .line 1312
    const/16 v3, 0x3ea

    .line 1313
    .line 1314
    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1315
    .line 1316
    .line 1317
    return-void

    .line 1318
    :pswitch_1a
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 1319
    .line 1320
    iget-object v0, v1, Lcom/sgscq/vpn/g6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 1321
    .line 1322
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1323
    .line 1324
    .line 1325
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 1326
    .line 1327
    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1328
    .line 1329
    .line 1330
    const-string v3, "\u6dfb\u52a0\u670d\u52a1\u5668"

    .line 1331
    .line 1332
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1333
    .line 1334
    .line 1335
    new-instance v3, Landroid/widget/LinearLayout;

    .line 1336
    .line 1337
    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1338
    .line 1339
    .line 1340
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1341
    .line 1342
    .line 1343
    const/16 v5, 0x18

    .line 1344
    .line 1345
    invoke-static {v5, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1346
    .line 1347
    .line 1348
    move-result v7

    .line 1349
    invoke-static {v4, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1350
    .line 1351
    .line 1352
    move-result v4

    .line 1353
    invoke-static {v5, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1354
    .line 1355
    .line 1356
    move-result v5

    .line 1357
    const/16 v15, 0xc

    .line 1358
    .line 1359
    invoke-static {v15, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1360
    .line 1361
    .line 1362
    move-result v9

    .line 1363
    invoke-virtual {v3, v7, v4, v5, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 1364
    .line 1365
    .line 1366
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s0(Landroid/content/Context;)Z

    .line 1367
    .line 1368
    .line 1369
    move-result v4

    .line 1370
    if-eqz v4, :cond_11

    .line 1371
    .line 1372
    const/high16 v5, 0x41500000    # 13.0f

    .line 1373
    .line 1374
    goto :goto_f

    .line 1375
    :cond_11
    const/high16 v5, 0x41600000    # 14.0f

    .line 1376
    .line 1377
    :goto_f
    const/16 v7, 0xa

    .line 1378
    .line 1379
    if-eqz v4, :cond_12

    .line 1380
    .line 1381
    invoke-static {v7, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1382
    .line 1383
    .line 1384
    move-result v9

    .line 1385
    goto :goto_10

    .line 1386
    :cond_12
    invoke-static {v15, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1387
    .line 1388
    .line 1389
    move-result v9

    .line 1390
    :goto_10
    move/from16 v16, v9

    .line 1391
    .line 1392
    const/16 v9, 0x8

    .line 1393
    .line 1394
    if-eqz v4, :cond_13

    .line 1395
    .line 1396
    invoke-static {v9, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1397
    .line 1398
    .line 1399
    move-result v4

    .line 1400
    goto :goto_11

    .line 1401
    :cond_13
    invoke-static {v7, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1402
    .line 1403
    .line 1404
    move-result v4

    .line 1405
    :goto_11
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v7

    .line 1409
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v7

    .line 1413
    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    .line 1414
    .line 1415
    invoke-static {v9, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1416
    .line 1417
    .line 1418
    move-result v10

    .line 1419
    sget v11, Lcom/sgscq/vpn/p5;->I:I

    .line 1420
    .line 1421
    sget v12, Lcom/sgscq/vpn/p5;->y:I

    .line 1422
    .line 1423
    invoke-virtual {v0, v10, v11, v12}, Lcom/sgscq/vpn/SettingsActivity;->C(III)Landroid/graphics/drawable/GradientDrawable;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v14

    .line 1427
    sget v10, Lcom/sgscq/vpn/p5;->y:I

    .line 1428
    .line 1429
    invoke-static {v9, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1430
    .line 1431
    .line 1432
    move-result v9

    .line 1433
    int-to-float v9, v9

    .line 1434
    invoke-static {v10, v9, v7}, Lcom/sgscq/vpn/p5;->y0(IFF)Landroid/graphics/drawable/GradientDrawable;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v7

    .line 1438
    const-string v10, "\u670d\u52a1\u5668\u540d\u79f0"

    .line 1439
    .line 1440
    const/16 v17, 0x0

    .line 1441
    .line 1442
    const/4 v11, 0x0

    .line 1443
    move-object v9, v0

    .line 1444
    move/from16 v12, v16

    .line 1445
    .line 1446
    move v13, v4

    .line 1447
    move-object v6, v14

    .line 1448
    move v14, v5

    .line 1449
    invoke-virtual/range {v9 .. v14}, Lcom/sgscq/vpn/SettingsActivity;->p(Ljava/lang/String;ZIIF)Landroid/widget/EditText;

    .line 1450
    .line 1451
    .line 1452
    move-result-object v14

    .line 1453
    sget v9, Lcom/sgscq/vpn/p5;->F:I

    .line 1454
    .line 1455
    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1456
    .line 1457
    .line 1458
    sget v9, Lcom/sgscq/vpn/p5;->H:I

    .line 1459
    .line 1460
    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 1461
    .line 1462
    .line 1463
    invoke-virtual {v0, v14, v6, v7}, Lcom/sgscq/vpn/SettingsActivity;->Q(Landroid/widget/EditText;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)Landroid/widget/LinearLayout;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v9

    .line 1467
    invoke-static {v15, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1468
    .line 1469
    .line 1470
    move-result v10

    .line 1471
    const/4 v13, -0x1

    .line 1472
    const/4 v12, -0x2

    .line 1473
    invoke-static {v13, v12, v8, v8, v10}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v10

    .line 1477
    invoke-virtual {v3, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1478
    .line 1479
    .line 1480
    const-string v10, "IP \u6216\u57df\u540d"

    .line 1481
    .line 1482
    move-object v9, v0

    .line 1483
    move/from16 v11, v17

    .line 1484
    .line 1485
    move/from16 v12, v16

    .line 1486
    .line 1487
    move v13, v4

    .line 1488
    move-object/from16 v17, v14

    .line 1489
    .line 1490
    move v14, v5

    .line 1491
    invoke-virtual/range {v9 .. v14}, Lcom/sgscq/vpn/SettingsActivity;->p(Ljava/lang/String;ZIIF)Landroid/widget/EditText;

    .line 1492
    .line 1493
    .line 1494
    move-result-object v14

    .line 1495
    const-string v9, "127.0.0.1"

    .line 1496
    .line 1497
    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1498
    .line 1499
    .line 1500
    sget v9, Lcom/sgscq/vpn/p5;->F:I

    .line 1501
    .line 1502
    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1503
    .line 1504
    .line 1505
    sget v9, Lcom/sgscq/vpn/p5;->H:I

    .line 1506
    .line 1507
    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 1508
    .line 1509
    .line 1510
    invoke-virtual {v0, v14, v6, v7}, Lcom/sgscq/vpn/SettingsActivity;->Q(Landroid/widget/EditText;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)Landroid/widget/LinearLayout;

    .line 1511
    .line 1512
    .line 1513
    move-result-object v9

    .line 1514
    invoke-static {v15, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1515
    .line 1516
    .line 1517
    move-result v10

    .line 1518
    const/4 v12, -0x1

    .line 1519
    const/4 v13, -0x2

    .line 1520
    invoke-static {v12, v13, v8, v8, v10}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v10

    .line 1524
    invoke-virtual {v3, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1525
    .line 1526
    .line 1527
    const-string v10, "\u7aef\u53e3"

    .line 1528
    .line 1529
    const/4 v11, 0x1

    .line 1530
    move-object v9, v0

    .line 1531
    move/from16 v12, v16

    .line 1532
    .line 1533
    move v13, v4

    .line 1534
    move-object v4, v14

    .line 1535
    move v14, v5

    .line 1536
    invoke-virtual/range {v9 .. v14}, Lcom/sgscq/vpn/SettingsActivity;->p(Ljava/lang/String;ZIIF)Landroid/widget/EditText;

    .line 1537
    .line 1538
    .line 1539
    move-result-object v13

    .line 1540
    const-string v5, "8080"

    .line 1541
    .line 1542
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1543
    .line 1544
    .line 1545
    sget v5, Lcom/sgscq/vpn/p5;->F:I

    .line 1546
    .line 1547
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1548
    .line 1549
    .line 1550
    sget v5, Lcom/sgscq/vpn/p5;->H:I

    .line 1551
    .line 1552
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 1553
    .line 1554
    .line 1555
    invoke-virtual {v0, v13, v6, v7}, Lcom/sgscq/vpn/SettingsActivity;->Q(Landroid/widget/EditText;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)Landroid/widget/LinearLayout;

    .line 1556
    .line 1557
    .line 1558
    move-result-object v5

    .line 1559
    invoke-static {v15, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1560
    .line 1561
    .line 1562
    move-result v6

    .line 1563
    const/4 v7, -0x2

    .line 1564
    const/4 v9, -0x1

    .line 1565
    invoke-static {v9, v7, v8, v8, v6}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1566
    .line 1567
    .line 1568
    move-result-object v6

    .line 1569
    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1570
    .line 1571
    .line 1572
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1573
    .line 1574
    .line 1575
    const-string v3, "\u6dfb\u52a0"

    .line 1576
    .line 1577
    const/4 v5, 0x0

    .line 1578
    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1579
    .line 1580
    .line 1581
    const-string v3, "\u53d6\u6d88"

    .line 1582
    .line 1583
    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1584
    .line 1585
    .line 1586
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 1587
    .line 1588
    .line 1589
    move-result-object v14

    .line 1590
    invoke-virtual {v14}, Landroid/app/Dialog;->show()V

    .line 1591
    .line 1592
    .line 1593
    invoke-virtual {v14}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 1594
    .line 1595
    .line 1596
    move-result-object v2

    .line 1597
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 1598
    .line 1599
    sget v5, Lcom/sgscq/vpn/p5;->y:I

    .line 1600
    .line 1601
    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1602
    .line 1603
    .line 1604
    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1605
    .line 1606
    .line 1607
    invoke-virtual {v14, v9}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 1608
    .line 1609
    .line 1610
    move-result-object v2

    .line 1611
    sget v3, Lcom/sgscq/vpn/p5;->B:I

    .line 1612
    .line 1613
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1614
    .line 1615
    .line 1616
    invoke-virtual {v14, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 1617
    .line 1618
    .line 1619
    move-result-object v2

    .line 1620
    sget v3, Lcom/sgscq/vpn/p5;->G:I

    .line 1621
    .line 1622
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1623
    .line 1624
    .line 1625
    const v2, 0x1020016

    .line 1626
    .line 1627
    .line 1628
    invoke-virtual {v14, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 1629
    .line 1630
    .line 1631
    move-result-object v2

    .line 1632
    check-cast v2, Landroid/widget/TextView;

    .line 1633
    .line 1634
    if-eqz v2, :cond_14

    .line 1635
    .line 1636
    sget v3, Lcom/sgscq/vpn/p5;->F:I

    .line 1637
    .line 1638
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1639
    .line 1640
    .line 1641
    :cond_14
    invoke-virtual {v14, v9}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 1642
    .line 1643
    .line 1644
    move-result-object v2

    .line 1645
    new-instance v3, Lcom/sgscq/vpn/k6;

    .line 1646
    .line 1647
    move-object v9, v3

    .line 1648
    move-object v10, v0

    .line 1649
    move-object/from16 v11, v17

    .line 1650
    .line 1651
    move-object v12, v4

    .line 1652
    invoke-direct/range {v9 .. v14}, Lcom/sgscq/vpn/k6;-><init>(Lcom/sgscq/vpn/SettingsActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    .line 1653
    .line 1654
    .line 1655
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1656
    .line 1657
    .line 1658
    return-void

    .line 1659
    :pswitch_1b
    iget-object v0, v1, Lcom/sgscq/vpn/g6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 1660
    .line 1661
    iget-object v2, v0, Lcom/sgscq/vpn/SettingsActivity;->c:Landroid/widget/EditText;

    .line 1662
    .line 1663
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 1664
    .line 1665
    .line 1666
    move-result-object v2

    .line 1667
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1668
    .line 1669
    .line 1670
    move-result-object v2

    .line 1671
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1672
    .line 1673
    .line 1674
    move-result-object v2

    .line 1675
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 1676
    .line 1677
    .line 1678
    move-result v3

    .line 1679
    if-eqz v3, :cond_15

    .line 1680
    .line 1681
    const-string v2, "\u6211"

    .line 1682
    .line 1683
    :cond_15
    iget-object v3, v0, Lcom/sgscq/vpn/SettingsActivity;->h:Landroid/widget/EditText;

    .line 1684
    .line 1685
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 1686
    .line 1687
    .line 1688
    move-result-object v3

    .line 1689
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1690
    .line 1691
    .line 1692
    move-result-object v3

    .line 1693
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1694
    .line 1695
    .line 1696
    move-result-object v3

    .line 1697
    :try_start_7
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1698
    .line 1699
    .line 1700
    move-result v3
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_6

    .line 1701
    if-gez v3, :cond_16

    .line 1702
    .line 1703
    goto :goto_12

    .line 1704
    :cond_16
    const/16 v4, 0xf

    .line 1705
    .line 1706
    if-le v3, v4, :cond_17

    .line 1707
    .line 1708
    move v3, v4

    .line 1709
    goto :goto_13

    .line 1710
    :catch_6
    :goto_12
    move v3, v8

    .line 1711
    :cond_17
    :goto_13
    iget-object v4, v0, Lcom/sgscq/vpn/SettingsActivity;->a:Landroid/content/SharedPreferences;

    .line 1712
    .line 1713
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 1714
    .line 1715
    .line 1716
    move-result-object v4

    .line 1717
    const-string v5, "player_name"

    .line 1718
    .line 1719
    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1720
    .line 1721
    .line 1722
    move-result-object v4

    .line 1723
    const-string v5, "resource_vip_level"

    .line 1724
    .line 1725
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1726
    .line 1727
    .line 1728
    move-result-object v6

    .line 1729
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1730
    .line 1731
    .line 1732
    move-result-object v4

    .line 1733
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1734
    .line 1735
    .line 1736
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1737
    .line 1738
    const-string v5, "\u5df2\u4fdd\u5b58: "

    .line 1739
    .line 1740
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1741
    .line 1742
    .line 1743
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1744
    .line 1745
    .line 1746
    const-string v2, " VIP"

    .line 1747
    .line 1748
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1749
    .line 1750
    .line 1751
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1752
    .line 1753
    .line 1754
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1755
    .line 1756
    .line 1757
    move-result-object v2

    .line 1758
    invoke-static {v0, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1759
    .line 1760
    .line 1761
    move-result-object v0

    .line 1762
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1763
    .line 1764
    .line 1765
    return-void

    .line 1766
    :pswitch_1c
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 1767
    .line 1768
    iget-object v0, v1, Lcom/sgscq/vpn/g6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 1769
    .line 1770
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1771
    .line 1772
    .line 1773
    return-void

    .line 1774
    :goto_14
    iget-object v0, v1, Lcom/sgscq/vpn/g6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 1775
    .line 1776
    sget v2, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 1777
    .line 1778
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1779
    .line 1780
    .line 1781
    invoke-static {v0}, Lcom/sgscq/vpn/p7;->h(Landroid/content/Context;)Lcom/sgscq/vpn/p7;

    .line 1782
    .line 1783
    .line 1784
    move-result-object v2

    .line 1785
    iget-boolean v3, v2, Lcom/sgscq/vpn/p7;->r:Z

    .line 1786
    .line 1787
    xor-int/2addr v3, v7

    .line 1788
    invoke-virtual {v2}, Lcom/sgscq/vpn/p7;->e()V

    .line 1789
    .line 1790
    .line 1791
    iget-object v4, v2, Lcom/sgscq/vpn/p7;->a:Ljava/lang/Object;

    .line 1792
    .line 1793
    monitor-enter v4

    .line 1794
    :try_start_8
    iput-boolean v3, v2, Lcom/sgscq/vpn/p7;->r:Z

    .line 1795
    .line 1796
    iget-object v5, v2, Lcom/sgscq/vpn/p7;->j:Lc/e;

    .line 1797
    .line 1798
    if-eqz v5, :cond_19

    .line 1799
    .line 1800
    iget-object v6, v5, Lc/e;->a:Ljava/lang/Object;

    .line 1801
    .line 1802
    check-cast v6, Landroid/content/SharedPreferences;

    .line 1803
    .line 1804
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 1805
    .line 1806
    .line 1807
    move-result-object v6

    .line 1808
    iget-object v5, v5, Lc/e;->b:Ljava/lang/Object;

    .line 1809
    .line 1810
    check-cast v5, Ljava/lang/String;

    .line 1811
    .line 1812
    if-nez v5, :cond_18

    .line 1813
    .line 1814
    const-string v5, ""

    .line 1815
    .line 1816
    goto :goto_15

    .line 1817
    :cond_18
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1818
    .line 1819
    .line 1820
    move-result-object v5

    .line 1821
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 1822
    .line 1823
    .line 1824
    move-result-object v5

    .line 1825
    :goto_15
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1826
    .line 1827
    const-string v9, "enabled_"

    .line 1828
    .line 1829
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1830
    .line 1831
    .line 1832
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1833
    .line 1834
    .line 1835
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1836
    .line 1837
    .line 1838
    move-result-object v5

    .line 1839
    invoke-interface {v6, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1840
    .line 1841
    .line 1842
    move-result-object v5

    .line 1843
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1844
    .line 1845
    .line 1846
    goto :goto_16

    .line 1847
    :catchall_1
    move-exception v0

    .line 1848
    goto :goto_19

    .line 1849
    :cond_19
    :goto_16
    if-eqz v3, :cond_1a

    .line 1850
    .line 1851
    iget-object v5, v2, Lcom/sgscq/vpn/p7;->k:Ljava/util/ArrayList;

    .line 1852
    .line 1853
    goto :goto_17

    .line 1854
    :cond_1a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 1855
    .line 1856
    .line 1857
    move-result-object v5

    .line 1858
    :goto_17
    invoke-virtual {v2, v5}, Lcom/sgscq/vpn/p7;->p(Ljava/util/List;)V

    .line 1859
    .line 1860
    .line 1861
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1862
    invoke-virtual {v0}, Lcom/sgscq/vpn/SettingsActivity;->y()V

    .line 1863
    .line 1864
    .line 1865
    if-eqz v3, :cond_1b

    .line 1866
    .line 1867
    const-string v2, "\u5df2\u542f\u7528\u4e91\u5bf9\u624b"

    .line 1868
    .line 1869
    goto :goto_18

    .line 1870
    :cond_1b
    const-string v2, "\u5df2\u7981\u7528\u4e91\u5bf9\u624b\uff0c\u7f13\u5b58\u4ecd\u4fdd\u7559"

    .line 1871
    .line 1872
    :goto_18
    invoke-static {v0, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1873
    .line 1874
    .line 1875
    move-result-object v0

    .line 1876
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1877
    .line 1878
    .line 1879
    return-void

    .line 1880
    :goto_19
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1881
    throw v0

    .line 1882
    nop

    .line 1883
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
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
.end method
