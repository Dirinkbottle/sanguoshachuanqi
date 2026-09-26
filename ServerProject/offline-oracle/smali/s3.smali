.class public final synthetic Lcom/sgscq/vpn/s3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sgscq/vpn/PassportActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/PassportActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/sgscq/vpn/s3;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/s3;->b:Lcom/sgscq/vpn/PassportActivity;

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
    .locals 7

    .line 1
    iget p1, p0, Lcom/sgscq/vpn/s3;->a:I

    .line 2
    .line 3
    const-string v0, "\u8bf7\u5148\u767b\u5f55\u7231\u53d1\u7535"

    .line 4
    .line 5
    const-string v1, "\u6ca1\u6709\u5df2\u6ce8\u518c\u7684\u901a\u884c\u8bc1"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "\u53d6\u6d88"

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    packed-switch p1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    goto/16 :goto_5

    .line 16
    .line 17
    :pswitch_0
    iget-object p1, p0, Lcom/sgscq/vpn/s3;->b:Lcom/sgscq/vpn/PassportActivity;

    .line 18
    .line 19
    iget-object v1, p1, Lcom/sgscq/vpn/PassportActivity;->j:Lm/e;

    .line 20
    .line 21
    invoke-virtual {v1}, Lm/e;->y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->isLoggedIn()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const-string v0, "\u6b63\u5728\u6536\u96c6\u5e76\u52a0\u5bc6\u5168\u90e8\u5b58\u6863..."

    .line 40
    .line 41
    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 46
    .line 47
    .line 48
    new-instance v0, Ljava/lang/Thread;

    .line 49
    .line 50
    new-instance v1, Lcom/sgscq/vpn/c4;

    .line 51
    .line 52
    invoke-direct {v1, p1, v4}, Lcom/sgscq/vpn/c4;-><init>(Lcom/sgscq/vpn/PassportActivity;I)V

    .line 53
    .line 54
    .line 55
    const-string p1, "sgscq-save-archive-export"

    .line 56
    .line 57
    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void

    .line 64
    :pswitch_1
    iget-object p1, p0, Lcom/sgscq/vpn/s3;->b:Lcom/sgscq/vpn/PassportActivity;

    .line 65
    .line 66
    iget-object v0, p1, Lcom/sgscq/vpn/PassportActivity;->a:Lcom/sgscq/vpn/m4;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/sgscq/vpn/m4;->m()Ljava/util/ArrayList;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iget-object v4, p1, Lcom/sgscq/vpn/PassportActivity;->a:Lcom/sgscq/vpn/m4;

    .line 77
    .line 78
    invoke-virtual {v4}, Lcom/sgscq/vpn/m4;->j()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-nez v0, :cond_1

    .line 83
    .line 84
    invoke-static {p1, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 93
    .line 94
    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    const-string v1, "\u6e05\u9664\u6240\u6709\u901a\u884c\u8bc1"

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v5, "\u786e\u5b9a\u5220\u9664\u53ef\u64cd\u4f5c\u7684\u672c\u5730\u901a\u884c\u8bc1\uff1f\n\n\u5c06\u8df3\u8fc7 "

    .line 106
    .line 107
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v4, " \u4e2a\u4e91\u5b58\u6863\uff1b\u672c\u5730\u5220\u9664\u4e0d\u53ef\u64a4\u9500\u3002"

    .line 114
    .line 115
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    new-instance v1, Lcom/sgscq/vpn/g4;

    .line 127
    .line 128
    const/4 v4, 0x2

    .line 129
    invoke-direct {v1, p1, v4}, Lcom/sgscq/vpn/g4;-><init>(Lcom/sgscq/vpn/PassportActivity;I)V

    .line 130
    .line 131
    .line 132
    const-string p1, "\u5168\u90e8\u5220\u9664"

    .line 133
    .line 134
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 143
    .line 144
    .line 145
    :goto_1
    return-void

    .line 146
    :pswitch_2
    iget-object p1, p0, Lcom/sgscq/vpn/s3;->b:Lcom/sgscq/vpn/PassportActivity;

    .line 147
    .line 148
    iget-object v0, p1, Lcom/sgscq/vpn/PassportActivity;->a:Lcom/sgscq/vpn/m4;

    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/sgscq/vpn/m4;->m()Ljava/util/ArrayList;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-nez v0, :cond_2

    .line 159
    .line 160
    invoke-static {p1, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 169
    .line 170
    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 171
    .line 172
    .line 173
    const-string v1, "\u4fee\u590d\u81e3\u670d\u9b42\u9b44"

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    const-string v1, "\u626b\u63cf\u672c\u673a\u5168\u90e8\u672c\u5730\u5b58\u6863\uff1a\u628a\u300c\u89c9\u9192\u81e3\u670d\u300d\u5386\u53f2\u4e0a\u88ab\u9519\u53d1\u6210\u795e\u5c06\u5361\u7684\u5956\u52b1\u56de\u6536\uff0c\u5e76\u6309\u914d\u7f6e\u8865\u53d1\u5bf9\u5e94\u6570\u91cf\u7684\u9b42\u9b44\u3002\n\n\u5982\u679c\u8be5\u795e\u5c06\u56e0\u4e3a\u8fd9\u5f20\u5361\u5df2\u7ecf\u5230\u624b\uff08\u53ef\u80fd\u5df2\u7ecf\u4e0a\u9635\u6216\u57f9\u517b\u8fc7\uff09\uff0c\u4f1a\u8fde\u540c\u6280\u80fd\u3001\u4e0a\u9635/\u526f\u5c06\u7ed1\u5b9a\u4e00\u8d77\u5220\u9664\uff0c\u65e0\u6cd5\u64a4\u9500\u3002\n\n\u5df2\u7ecf\u6309\u6b63\u786e\u65b9\u5f0f\u9886\u53d6\u8fc7\u7684\u5b58\u6863\u4e0d\u4f1a\u88ab\u91cd\u590d\u8865\u53d1\u3002\u4e91\u5b58\u6863\u8bf7\u5148\u4e0b\u8f7d\u5230\u672c\u673a\u518d\u4fee\u590d\u3002"

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    new-instance v1, Lcom/sgscq/vpn/g4;

    .line 186
    .line 187
    invoke-direct {v1, p1, v4}, Lcom/sgscq/vpn/g4;-><init>(Lcom/sgscq/vpn/PassportActivity;I)V

    .line 188
    .line 189
    .line 190
    const-string p1, "\u5f00\u59cb\u4fee\u590d"

    .line 191
    .line 192
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {p1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 201
    .line 202
    .line 203
    :goto_2
    return-void

    .line 204
    :pswitch_3
    iget-object p1, p0, Lcom/sgscq/vpn/s3;->b:Lcom/sgscq/vpn/PassportActivity;

    .line 205
    .line 206
    iget-object v0, p1, Lcom/sgscq/vpn/PassportActivity;->a:Lcom/sgscq/vpn/m4;

    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/sgscq/vpn/m4;->m()Ljava/util/ArrayList;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    iget-object v4, p1, Lcom/sgscq/vpn/PassportActivity;->a:Lcom/sgscq/vpn/m4;

    .line 217
    .line 218
    invoke-virtual {v4}, Lcom/sgscq/vpn/m4;->j()I

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    if-nez v0, :cond_3

    .line 223
    .line 224
    invoke-static {p1, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 229
    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 233
    .line 234
    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 235
    .line 236
    .line 237
    const-string v1, "\u6e05\u9664\u6240\u6709\u73a9\u5bb6\u6570\u636e"

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    const-string v6, "\u786e\u5b9a\u6e05\u9664\u53ef\u64cd\u4f5c\u7684\u672c\u5730\u73a9\u5bb6\u5b58\u6863\u548c\u5f15\u5bfc\u8fdb\u5ea6\uff1f\n\n\u5c06\u8df3\u8fc7 "

    .line 246
    .line 247
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v4, " \u4e2a\u4e91\u5b58\u6863\uff1b\u901a\u884c\u8bc1\u8bb0\u5f55\u4f1a\u4fdd\u7559\u3002"

    .line 254
    .line 255
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    new-instance v1, Lcom/sgscq/vpn/g4;

    .line 267
    .line 268
    invoke-direct {v1, p1, v5}, Lcom/sgscq/vpn/g4;-><init>(Lcom/sgscq/vpn/PassportActivity;I)V

    .line 269
    .line 270
    .line 271
    const-string p1, "\u6e05\u9664"

    .line 272
    .line 273
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-virtual {p1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 282
    .line 283
    .line 284
    :goto_3
    return-void

    .line 285
    :pswitch_4
    iget-object p1, p0, Lcom/sgscq/vpn/s3;->b:Lcom/sgscq/vpn/PassportActivity;

    .line 286
    .line 287
    iget-object v0, p1, Lcom/sgscq/vpn/PassportActivity;->m:Lcom/sgscq/vpn/cloud/q0;

    .line 288
    .line 289
    if-nez v0, :cond_4

    .line 290
    .line 291
    const-string v0, "\u4e91\u5b58\u6863\u72b6\u6001\u6b63\u5728\u52a0\u8f7d\uff0c\u8bf7\u7a0d\u5019"

    .line 292
    .line 293
    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 298
    .line 299
    .line 300
    goto :goto_4

    .line 301
    :cond_4
    iget-object v1, p1, Lcom/sgscq/vpn/PassportActivity;->e:Landroid/widget/Button;

    .line 302
    .line 303
    if-eqz v1, :cond_5

    .line 304
    .line 305
    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 306
    .line 307
    .line 308
    :cond_5
    new-instance v1, Ljava/lang/Thread;

    .line 309
    .line 310
    new-instance v2, Lcom/sgscq/vpn/f4;

    .line 311
    .line 312
    invoke-direct {v2, p1, v0, v4}, Lcom/sgscq/vpn/f4;-><init>(Lcom/sgscq/vpn/PassportActivity;Lcom/sgscq/vpn/cloud/q0;I)V

    .line 313
    .line 314
    .line 315
    const-string p1, "cloud-save-create"

    .line 316
    .line 317
    invoke-direct {v1, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 321
    .line 322
    .line 323
    :goto_4
    return-void

    .line 324
    :pswitch_5
    iget-object p1, p0, Lcom/sgscq/vpn/s3;->b:Lcom/sgscq/vpn/PassportActivity;

    .line 325
    .line 326
    iget-object v0, p1, Lcom/sgscq/vpn/PassportActivity;->a:Lcom/sgscq/vpn/m4;

    .line 327
    .line 328
    invoke-virtual {v0}, Lcom/sgscq/vpn/m4;->d()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/m4;->w(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    .line 336
    .line 337
    const-string v2, "\u5df2\u65b0\u5efa\u672c\u5730\u7a7a\u53f7\u5e76\u5207\u6362: "

    .line 338
    .line 339
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-static {v1}, Lcom/sgscq/vpn/m4;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 358
    .line 359
    .line 360
    invoke-virtual {p1}, Lcom/sgscq/vpn/PassportActivity;->f()V

    .line 361
    .line 362
    .line 363
    return-void

    .line 364
    :pswitch_6
    sget p1, Lcom/sgscq/vpn/PassportActivity;->q:I

    .line 365
    .line 366
    iget-object p1, p0, Lcom/sgscq/vpn/s3;->b:Lcom/sgscq/vpn/PassportActivity;

    .line 367
    .line 368
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 369
    .line 370
    .line 371
    return-void

    .line 372
    :goto_5
    iget-object p1, p0, Lcom/sgscq/vpn/s3;->b:Lcom/sgscq/vpn/PassportActivity;

    .line 373
    .line 374
    iget-object v1, p1, Lcom/sgscq/vpn/PassportActivity;->j:Lm/e;

    .line 375
    .line 376
    invoke-virtual {v1}, Lm/e;->y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    invoke-virtual {v1}, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->isLoggedIn()Z

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    if-nez v1, :cond_6

    .line 385
    .line 386
    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 387
    .line 388
    .line 389
    move-result-object p1

    .line 390
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 391
    .line 392
    .line 393
    goto :goto_6

    .line 394
    :cond_6
    new-instance v0, Landroid/content/Intent;

    .line 395
    .line 396
    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    .line 397
    .line 398
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    const-string v1, "android.intent.category.OPENABLE"

    .line 402
    .line 403
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    .line 405
    .line 406
    const-string v1, "application/octet-stream"

    .line 407
    .line 408
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    .line 410
    .line 411
    const/16 v1, 0x3ec

    .line 412
    .line 413
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 414
    .line 415
    .line 416
    :goto_6
    return-void

    .line 417
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
