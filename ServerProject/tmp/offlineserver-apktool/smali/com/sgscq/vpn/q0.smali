.class public final synthetic Lcom/sgscq/vpn/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/sgscq/vpn/q0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/q0;->b:Ljava/lang/Object;

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
    .locals 5

    .line 1
    const/4 p1, 0x3

    .line 2
    iget v0, p0, Lcom/sgscq/vpn/q0;->a:I

    .line 3
    .line 4
    const-string v1, "android.intent.category.OPENABLE"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/sgscq/vpn/q0;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :pswitch_0
    check-cast v2, Lcom/sgscq/vpn/DebugSparringConfigActivity;

    .line 14
    .line 15
    iget-object v0, v2, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b:Lcom/sgscq/vpn/DebugSparringConfig$Config;

    .line 16
    .line 17
    iget-object v1, v2, Lcom/sgscq/vpn/DebugSparringConfigActivity;->c:Landroid/widget/EditText;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v3, 0x1

    .line 28
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 37
    .line 38
    .line 39
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :catch_0
    iput v3, v0, Lcom/sgscq/vpn/DebugSparringConfig$Config;->lordLevel:I

    .line 41
    .line 42
    iget-object v0, v2, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b:Lcom/sgscq/vpn/DebugSparringConfig$Config;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->normalized()Lcom/sgscq/vpn/DebugSparringConfig$Config;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, v2, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b:Lcom/sgscq/vpn/DebugSparringConfig$Config;

    .line 49
    .line 50
    new-instance v1, La/a;

    .line 51
    .line 52
    invoke-direct {v1, v2, p1}, La/a;-><init>(Ljava/lang/Object;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->validate(Lcom/sgscq/vpn/DebugSparringConfig$SkillTypeResolver;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_0

    .line 64
    .line 65
    iget-object v0, v2, Lcom/sgscq/vpn/DebugSparringConfigActivity;->d:Landroid/widget/TextView;

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v2, "\u65e0\u6cd5\u4fdd\u5b58\uff1a"

    .line 70
    .line 71
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->d(Ljava/util/List;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_0
    iget-object p1, v2, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b:Lcom/sgscq/vpn/DebugSparringConfig$Config;

    .line 90
    .line 91
    const-string v0, "sgscq_config_v2"

    .line 92
    .line 93
    const/4 v1, 0x0

    .line 94
    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p1, v0}, Lcom/sgscq/vpn/DebugSparringConfig$Config;->save(Landroid/content/SharedPreferences;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, v2, Lcom/sgscq/vpn/DebugSparringConfigActivity;->a:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_1

    .line 112
    .line 113
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Lcom/sgscq/vpn/v0;

    .line 118
    .line 119
    invoke-static {v0}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->g(Lcom/sgscq/vpn/v0;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_1
    iget-object p1, v2, Lcom/sgscq/vpn/DebugSparringConfigActivity;->d:Landroid/widget/TextView;

    .line 124
    .line 125
    const/16 v0, 0x86

    .line 126
    .line 127
    const/16 v3, 0xef

    .line 128
    .line 129
    const/16 v4, 0xac

    .line 130
    .line 131
    invoke-static {v0, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    .line 137
    .line 138
    iget-object p1, v2, Lcom/sgscq/vpn/DebugSparringConfigActivity;->d:Landroid/widget/TextView;

    .line 139
    .line 140
    const-string v0, "\u5df2\u4fdd\u5b58\u5207\u78cb\u9635\u5bb9\u914d\u7f6e"

    .line 141
    .line 142
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    .line 144
    .line 145
    const-string p1, "\u5207\u78cb\u9635\u5bb9\u914d\u7f6e\u5df2\u4fdd\u5b58"

    .line 146
    .line 147
    invoke-static {v2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 152
    .line 153
    .line 154
    :goto_1
    return-void

    .line 155
    :pswitch_1
    check-cast v2, Lcom/sgscq/vpn/DebugSparringConfigActivity;

    .line 156
    .line 157
    sget-object v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f:[F

    .line 158
    .line 159
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    new-instance v0, Landroid/content/Intent;

    .line 163
    .line 164
    const-string v3, "android.intent.action.CREATE_DOCUMENT"

    .line 165
    .line 166
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    .line 171
    .line 172
    const-string v1, "application/json"

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    .line 176
    .line 177
    new-instance v1, Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .line 181
    .line 182
    iget-object v3, v2, Lcom/sgscq/vpn/DebugSparringConfigActivity;->b:Lcom/sgscq/vpn/DebugSparringConfig$Config;

    .line 183
    .line 184
    iget-object v3, v3, Lcom/sgscq/vpn/DebugSparringConfig$Config;->slots:Ljava/util/List;

    .line 185
    .line 186
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-eqz v4, :cond_4

    .line 195
    .line 196
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    check-cast v4, Lcom/sgscq/vpn/DebugSparringConfig$Slot;

    .line 201
    .line 202
    iget-object v4, v4, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->generalId:Ljava/lang/String;

    .line 203
    .line 204
    if-eqz v4, :cond_2

    .line 205
    .line 206
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    if-eqz v4, :cond_3

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_3
    const/4 p1, 0x0

    .line 214
    throw p1

    .line 215
    :cond_4
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-ge v3, p1, :cond_5

    .line 220
    .line 221
    const-string v3, "\u7a7a\u4f4d"

    .line 222
    .line 223
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    goto :goto_3

    .line 227
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    if-eqz v4, :cond_6

    .line 243
    .line 244
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    check-cast v4, Ljava/lang/CharSequence;

    .line 249
    .line 250
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    if-eqz v4, :cond_6

    .line 258
    .line 259
    const-string v4, "_"

    .line 260
    .line 261
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    goto :goto_4

    .line 265
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    const-string v1, "_\u5207\u78cb\u9635\u5bb9.json"

    .line 273
    .line 274
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    const-string v1, "android.intent.extra.TITLE"

    .line 282
    .line 283
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    .line 285
    .line 286
    const/16 p1, 0x1005

    .line 287
    .line 288
    const-string v1, "\u5bfc\u51fa"

    .line 289
    .line 290
    invoke-virtual {v2, v0, p1, v1}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->e(Landroid/content/Intent;ILjava/lang/String;)V

    .line 291
    .line 292
    .line 293
    return-void

    .line 294
    :pswitch_2
    check-cast v2, Lcom/sgscq/vpn/DebugSparringConfigActivity;

    .line 295
    .line 296
    sget-object p1, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f:[F

    .line 297
    .line 298
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    .line 300
    .line 301
    new-instance p1, Landroid/content/Intent;

    .line 302
    .line 303
    const-string v0, "android.intent.action.OPEN_DOCUMENT"

    .line 304
    .line 305
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    .line 310
    .line 311
    const-string v0, "*/*"

    .line 312
    .line 313
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    .line 315
    .line 316
    const/16 v0, 0x1006

    .line 317
    .line 318
    const-string v1, "\u5bfc\u5165"

    .line 319
    .line 320
    invoke-virtual {v2, p1, v0, v1}, Lcom/sgscq/vpn/DebugSparringConfigActivity;->e(Landroid/content/Intent;ILjava/lang/String;)V

    .line 321
    .line 322
    .line 323
    return-void

    .line 324
    :pswitch_3
    check-cast v2, Lcom/sgscq/vpn/DebugSparringConfigActivity;

    .line 325
    .line 326
    sget-object p1, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f:[F

    .line 327
    .line 328
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 329
    .line 330
    .line 331
    return-void

    .line 332
    :goto_5
    check-cast v2, Lcom/sgscq/vpn/a7;

    .line 333
    .line 334
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    new-instance p1, Landroid/content/Intent;

    .line 338
    .line 339
    const-string v0, "https://api.sgscq.com/app/update"

    .line 340
    .line 341
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    const-string v1, "android.intent.action.VIEW"

    .line 346
    .line 347
    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 348
    .line 349
    .line 350
    const/high16 v0, 0x10000000

    .line 351
    .line 352
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 353
    .line 354
    .line 355
    iget-object v0, v2, Lcom/sgscq/vpn/a7;->a:Ljava/lang/Object;

    .line 356
    .line 357
    check-cast v0, Landroid/content/Context;

    .line 358
    .line 359
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 360
    .line 361
    .line 362
    return-void

    .line 363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
