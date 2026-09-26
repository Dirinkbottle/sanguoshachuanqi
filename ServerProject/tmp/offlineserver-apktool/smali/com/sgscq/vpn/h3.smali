.class public final synthetic Lcom/sgscq/vpn/h3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sgscq/vpn/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/MainActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/sgscq/vpn/h3;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/h3;->b:Lcom/sgscq/vpn/MainActivity;

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
    iget p1, p0, Lcom/sgscq/vpn/h3;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto/16 :goto_4

    .line 9
    .line 10
    :pswitch_0
    sget p1, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 11
    .line 12
    const-string p1, "\u8bf7\u5148\u542f\u52a8 VPN"

    .line 13
    .line 14
    iget-object v0, p0, Lcom/sgscq/vpn/h3;->b:Lcom/sgscq/vpn/MainActivity;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/sgscq/vpn/MainActivity;->e(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    iget-object p1, p0, Lcom/sgscq/vpn/h3;->b:Lcom/sgscq/vpn/MainActivity;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/sgscq/vpn/MainActivity;->o:Lcom/sgscq/vpn/a7;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v2, Ljava/lang/Thread;

    .line 28
    .line 29
    new-instance v3, Lcom/sgscq/vpn/j3;

    .line 30
    .line 31
    invoke-direct {v3, p1, v1, v0}, Lcom/sgscq/vpn/j3;-><init>(Ljava/lang/Object;ZI)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_2
    sget p1, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 42
    .line 43
    iget-object p1, p0, Lcom/sgscq/vpn/h3;->b:Lcom/sgscq/vpn/MainActivity;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lcom/sgscq/vpn/c7;->d(Landroid/content/Context;)Lcom/sgscq/vpn/c7;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/sgscq/vpn/c7;->e()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/sgscq/vpn/c7;->j()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 71
    .line 72
    const-class v1, Lcom/sgscq/vpn/SettingsActivity;

    .line 73
    .line 74
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void

    .line 81
    :pswitch_3
    sget p1, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 82
    .line 83
    iget-object p1, p0, Lcom/sgscq/vpn/h3;->b:Lcom/sgscq/vpn/MainActivity;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    new-instance v0, Landroid/content/Intent;

    .line 89
    .line 90
    const-class v1, Lcom/sgscq/vpn/PassportActivity;

    .line 91
    .line 92
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :pswitch_4
    iget-object p1, p0, Lcom/sgscq/vpn/h3;->b:Lcom/sgscq/vpn/MainActivity;

    .line 100
    .line 101
    iget-object v2, p1, Lcom/sgscq/vpn/MainActivity;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    .line 103
    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_1

    .line 108
    .line 109
    const-string v0, "\u6570\u636e\u6b63\u5728\u5bfc\u51fa\uff0c\u8bf7\u7a0d\u5019"

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Lcom/sgscq/vpn/MainActivity;->e(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_1
    const-string v0, "\u6b63\u5728\u5bfc\u51fa\u5206\u6790\u6570\u636e..."

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Lcom/sgscq/vpn/MainActivity;->e(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance v0, Ljava/lang/Thread;

    .line 121
    .line 122
    new-instance v1, Lcom/sgscq/vpn/f3;

    .line 123
    .line 124
    const/4 v2, 0x7

    .line 125
    invoke-direct {v1, p1, v2}, Lcom/sgscq/vpn/f3;-><init>(Lcom/sgscq/vpn/MainActivity;I)V

    .line 126
    .line 127
    .line 128
    const-string p1, "analysis-export"

    .line 129
    .line 130
    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 134
    .line 135
    .line 136
    :goto_1
    return-void

    .line 137
    :pswitch_5
    sget p1, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 138
    .line 139
    iget-object p1, p0, Lcom/sgscq/vpn/h3;->b:Lcom/sgscq/vpn/MainActivity;

    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    invoke-static {p1}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    if-eqz v1, :cond_2

    .line 149
    .line 150
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_2
    invoke-virtual {p1}, Lcom/sgscq/vpn/MainActivity;->o()V

    .line 155
    .line 156
    .line 157
    const-string v0, "VPN \u5df2\u8fde\u63a5"

    .line 158
    .line 159
    invoke-virtual {p1, v0}, Lcom/sgscq/vpn/MainActivity;->e(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :goto_2
    return-void

    .line 163
    :pswitch_6
    iget-object p1, p0, Lcom/sgscq/vpn/h3;->b:Lcom/sgscq/vpn/MainActivity;

    .line 164
    .line 165
    sget v0, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    sput-boolean v1, Lcom/sgscq/vpn/SgscqVpnService;->m:Z

    .line 171
    .line 172
    const-string v0, "sgscq_config_v2"

    .line 173
    .line 174
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    const-string v2, "vpn_was_running"

    .line 183
    .line 184
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 189
    .line 190
    .line 191
    new-instance v0, Landroid/content/Intent;

    .line 192
    .line 193
    const-class v2, Lcom/sgscq/vpn/SgscqVpnService;

    .line 194
    .line 195
    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    .line 197
    .line 198
    const-string v2, "STOP"

    .line 199
    .line 200
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 205
    .line 206
    const/16 v3, 0x1a

    .line 207
    .line 208
    if-lt v2, v3, :cond_3

    .line 209
    .line 210
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    const-string v3, "STOP"

    .line 215
    .line 216
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-nez v2, :cond_3

    .line 221
    .line 222
    invoke-static {p1, v0}, Lcom/sgscq/vpn/q1;->k(Lcom/sgscq/vpn/MainActivity;Landroid/content/Intent;)V

    .line 223
    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_3
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 227
    .line 228
    .line 229
    :goto_3
    invoke-virtual {p1, v1}, Lcom/sgscq/vpn/MainActivity;->a(Z)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1}, Lcom/sgscq/vpn/MainActivity;->b()V

    .line 233
    .line 234
    .line 235
    sget-object v0, Lcom/sgscq/vpn/z2;->a:Ljava/text/SimpleDateFormat;

    .line 236
    .line 237
    invoke-static {}, Lcom/sgscq/vpn/SgscqVpnService;->j()Lcom/sgscq/vpn/u6;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    iget-object v2, v0, Lcom/sgscq/vpn/u6;->e:Ljava/lang/Object;

    .line 242
    .line 243
    monitor-enter v2

    .line 244
    :try_start_0
    iget-object v3, v0, Lcom/sgscq/vpn/u6;->a:Lcom/sgscq/vpn/t6;

    .line 245
    .line 246
    iget-object v4, v3, Lcom/sgscq/vpn/t6;->b:Ljava/util/List;

    .line 247
    .line 248
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 249
    .line 250
    .line 251
    iput v1, v3, Lcom/sgscq/vpn/t6;->a:I

    .line 252
    .line 253
    iget-object v3, v0, Lcom/sgscq/vpn/u6;->b:Lcom/sgscq/vpn/t6;

    .line 254
    .line 255
    iget-object v4, v3, Lcom/sgscq/vpn/t6;->b:Ljava/util/List;

    .line 256
    .line 257
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 258
    .line 259
    .line 260
    iput v1, v3, Lcom/sgscq/vpn/t6;->a:I

    .line 261
    .line 262
    iput v1, v0, Lcom/sgscq/vpn/u6;->c:I

    .line 263
    .line 264
    iput-boolean v1, v0, Lcom/sgscq/vpn/u6;->d:Z

    .line 265
    .line 266
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    const-string v0, "\u7f13\u51b2\u533a\u5df2\u6e05\u7a7a"

    .line 268
    .line 269
    invoke-virtual {p1, v0}, Lcom/sgscq/vpn/MainActivity;->e(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    return-void

    .line 273
    :catchall_0
    move-exception p1

    .line 274
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    throw p1

    .line 276
    :goto_4
    iget-object p1, p0, Lcom/sgscq/vpn/h3;->b:Lcom/sgscq/vpn/MainActivity;

    .line 277
    .line 278
    iget-object v0, p1, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    .line 279
    .line 280
    const-string v2, "\u6b63\u5728\u91cd\u8bd5\u9650\u65f6\u529f\u80fd\u2026"

    .line 281
    .line 282
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    .line 284
    .line 285
    iget-object v0, p1, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    .line 286
    .line 287
    const-string v2, "\u6b63\u5728\u91cd\u8bd5\u9650\u65f6\u529f\u80fd"

    .line 288
    .line 289
    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 290
    .line 291
    .line 292
    iget-object v0, p1, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    .line 293
    .line 294
    const/4 v2, 0x0

    .line 295
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    .line 297
    .line 298
    iget-object v0, p1, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    .line 299
    .line 300
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 301
    .line 302
    .line 303
    iget-object v0, p1, Lcom/sgscq/vpn/MainActivity;->l:Landroid/widget/TextView;

    .line 304
    .line 305
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 306
    .line 307
    .line 308
    invoke-static {p1}, Lcom/sgscq/vpn/c7;->d(Landroid/content/Context;)Lcom/sgscq/vpn/c7;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    new-instance v1, Lcom/sgscq/vpn/a;

    .line 313
    .line 314
    const/4 v2, 0x3

    .line 315
    invoke-direct {v1, p1, v0, v2}, Lcom/sgscq/vpn/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/c7;->k(Lcom/sgscq/vpn/b7;)V

    .line 319
    .line 320
    .line 321
    return-void

    .line 322
    nop

    .line 323
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
