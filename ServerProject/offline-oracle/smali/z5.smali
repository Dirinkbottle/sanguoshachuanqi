.class public final synthetic Lcom/sgscq/vpn/z5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sgscq/vpn/SettingsActivity;

.field public final synthetic c:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/SettingsActivity;Landroid/widget/EditText;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/sgscq/vpn/z5;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/z5;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/sgscq/vpn/z5;->c:Landroid/widget/EditText;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    .line 1
    iget p1, p0, Lcom/sgscq/vpn/z5;->a:I

    .line 2
    .line 3
    const/4 p2, 0x2

    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    iget-object v4, p0, Lcom/sgscq/vpn/z5;->c:Landroid/widget/EditText;

    .line 9
    .line 10
    iget-object v5, p0, Lcom/sgscq/vpn/z5;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 11
    .line 12
    packed-switch p1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :pswitch_0
    sget p1, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 18
    .line 19
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    sget v4, Lcom/sgscq/vpn/b0;->c:I

    .line 35
    .line 36
    const-string v4, "\\d{1,20}"

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-virtual {v6, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_0

    .line 49
    .line 50
    move v6, v2

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move v6, v3

    .line 53
    :goto_0
    if-nez v6, :cond_1

    .line 54
    .line 55
    const-string p1, "\u8bf7\u8f93\u5165\u7eaf\u6570\u5b57 UID"

    .line 56
    .line 57
    invoke-static {v5, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_1
    iget-object v6, v5, Lcom/sgscq/vpn/SettingsActivity;->y:Landroid/widget/TextView;

    .line 66
    .line 67
    if-eqz v6, :cond_2

    .line 68
    .line 69
    const-string v7, "\u6b63\u5728\u6821\u9a8c B \u7ad9\u5173\u6ce8\u72b6\u6001..."

    .line 70
    .line 71
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    iget-object v6, v5, Lcom/sgscq/vpn/SettingsActivity;->x:Lcom/sgscq/vpn/b0;

    .line 75
    .line 76
    new-instance v7, Lcom/sgscq/vpn/p6;

    .line 77
    .line 78
    invoke-direct {v7, v5, v3}, Lcom/sgscq/vpn/p6;-><init>(Lcom/sgscq/vpn/SettingsActivity;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    const-string v8, ""

    .line 85
    .line 86
    if-nez p1, :cond_3

    .line 87
    .line 88
    move-object p1, v8

    .line 89
    goto :goto_1

    .line 90
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    :goto_1
    if-eqz p1, :cond_4

    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    invoke-virtual {v9, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-eqz v4, :cond_4

    .line 105
    .line 106
    move v4, v2

    .line 107
    goto :goto_2

    .line 108
    :cond_4
    move v4, v3

    .line 109
    :goto_2
    if-nez v4, :cond_5

    .line 110
    .line 111
    const-string p1, "\u8bf7\u8f93\u5165\u6709\u6548\u7684 B \u7ad9 UID\uff08\u7eaf\u6570\u5b57\uff09"

    .line 112
    .line 113
    invoke-virtual {v7, p1}, Lcom/sgscq/vpn/p6;->a(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_5
    new-instance v4, Lcom/sgscq/vpn/z;

    .line 118
    .line 119
    invoke-direct {v4}, Lcom/sgscq/vpn/z;-><init>()V

    .line 120
    .line 121
    .line 122
    iput-object p1, v4, Lcom/sgscq/vpn/z;->a:Ljava/lang/String;

    .line 123
    .line 124
    iput-boolean v2, v4, Lcom/sgscq/vpn/z;->b:Z

    .line 125
    .line 126
    iput-boolean v3, v4, Lcom/sgscq/vpn/z;->c:Z

    .line 127
    .line 128
    iput-wide v0, v4, Lcom/sgscq/vpn/z;->d:J

    .line 129
    .line 130
    iput-wide v0, v4, Lcom/sgscq/vpn/z;->e:J

    .line 131
    .line 132
    iput-object v8, v4, Lcom/sgscq/vpn/z;->f:Ljava/lang/String;

    .line 133
    .line 134
    iput-object v8, v4, Lcom/sgscq/vpn/z;->g:Ljava/lang/String;

    .line 135
    .line 136
    iput v3, v4, Lcom/sgscq/vpn/z;->h:I

    .line 137
    .line 138
    iput-wide v0, v4, Lcom/sgscq/vpn/z;->i:J

    .line 139
    .line 140
    invoke-virtual {v6, v4}, Lcom/sgscq/vpn/b0;->c(Lcom/sgscq/vpn/z;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    iput-object p1, v4, Lcom/sgscq/vpn/z;->j:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v6, v4}, Lcom/sgscq/vpn/b0;->g(Lcom/sgscq/vpn/z;)V

    .line 147
    .line 148
    .line 149
    new-instance p1, Lcom/sgscq/vpn/w;

    .line 150
    .line 151
    invoke-direct {p1, v6, p2}, Lcom/sgscq/vpn/w;-><init>(Lcom/sgscq/vpn/b0;I)V

    .line 152
    .line 153
    .line 154
    invoke-static {v5, v7, p1}, Lcom/sgscq/vpn/b0;->f(Landroid/app/Activity;Lcom/sgscq/vpn/p6;Lcom/sgscq/vpn/w;)V

    .line 155
    .line 156
    .line 157
    :goto_3
    return-void

    .line 158
    :goto_4
    sget p1, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 159
    .line 160
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-static {p1}, Lcom/sgscq/vpn/h;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    const-string v4, "[A-Za-z0-9._-]{1,128}"

    .line 176
    .line 177
    if-eqz p1, :cond_6

    .line 178
    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    invoke-virtual {v6, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    if-eqz v6, :cond_6

    .line 188
    .line 189
    move v6, v2

    .line 190
    goto :goto_5

    .line 191
    :cond_6
    move v6, v3

    .line 192
    :goto_5
    const-string v7, "\u8bf7\u8f93\u5165\u6709\u6548\u7684\u6296\u97f3\u53f7\u3001UID \u6216\u4e3b\u9875\u94fe\u63a5"

    .line 193
    .line 194
    if-nez v6, :cond_7

    .line 195
    .line 196
    invoke-static {v5, v7, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 201
    .line 202
    .line 203
    goto :goto_7

    .line 204
    :cond_7
    iget-object v6, v5, Lcom/sgscq/vpn/SettingsActivity;->A:Landroid/widget/TextView;

    .line 205
    .line 206
    if-eqz v6, :cond_8

    .line 207
    .line 208
    const-string v8, "\u6b63\u5728\u6821\u9a8c\u6296\u97f3\u5173\u6ce8\u72b6\u6001..."

    .line 209
    .line 210
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    .line 212
    .line 213
    :cond_8
    iget-object v6, v5, Lcom/sgscq/vpn/SettingsActivity;->z:Lcom/sgscq/vpn/h;

    .line 214
    .line 215
    new-instance v8, Lcom/sgscq/vpn/p6;

    .line 216
    .line 217
    invoke-direct {v8, v5, p2}, Lcom/sgscq/vpn/p6;-><init>(Lcom/sgscq/vpn/SettingsActivity;I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    invoke-static {p1}, Lcom/sgscq/vpn/h;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    if-eqz p1, :cond_9

    .line 228
    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v9

    .line 233
    invoke-virtual {v9, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    if-eqz v4, :cond_9

    .line 238
    .line 239
    move v4, v2

    .line 240
    goto :goto_6

    .line 241
    :cond_9
    move v4, v3

    .line 242
    :goto_6
    if-nez v4, :cond_a

    .line 243
    .line 244
    invoke-virtual {v8, v7}, Lcom/sgscq/vpn/p6;->a(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    goto :goto_7

    .line 248
    :cond_a
    new-instance v4, Lcom/sgscq/vpn/d1;

    .line 249
    .line 250
    invoke-direct {v4}, Lcom/sgscq/vpn/d1;-><init>()V

    .line 251
    .line 252
    .line 253
    iput-object p1, v4, Lcom/sgscq/vpn/d1;->a:Ljava/lang/String;

    .line 254
    .line 255
    iput-boolean v2, v4, Lcom/sgscq/vpn/d1;->b:Z

    .line 256
    .line 257
    iput-boolean v3, v4, Lcom/sgscq/vpn/d1;->c:Z

    .line 258
    .line 259
    iput-wide v0, v4, Lcom/sgscq/vpn/d1;->d:J

    .line 260
    .line 261
    iput-wide v0, v4, Lcom/sgscq/vpn/d1;->e:J

    .line 262
    .line 263
    invoke-virtual {v6, v4}, Lcom/sgscq/vpn/h;->n(Lcom/sgscq/vpn/d1;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    iput-object p1, v4, Lcom/sgscq/vpn/d1;->g:Ljava/lang/String;

    .line 268
    .line 269
    invoke-virtual {v6, v4}, Lcom/sgscq/vpn/h;->t(Lcom/sgscq/vpn/d1;)V

    .line 270
    .line 271
    .line 272
    new-instance p1, Lcom/sgscq/vpn/b1;

    .line 273
    .line 274
    invoke-direct {p1, v6, v2}, Lcom/sgscq/vpn/b1;-><init>(Lcom/sgscq/vpn/h;I)V

    .line 275
    .line 276
    .line 277
    new-instance v0, Ljava/lang/Thread;

    .line 278
    .line 279
    new-instance v1, Lcom/sgscq/vpn/c;

    .line 280
    .line 281
    invoke-direct {v1, p1, v8, v5, p2}, Lcom/sgscq/vpn/c;-><init>(Ljava/lang/Object;Lcom/sgscq/vpn/p6;Landroid/app/Activity;I)V

    .line 282
    .line 283
    .line 284
    const-string p1, "DouyinAuth"

    .line 285
    .line 286
    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 290
    .line 291
    .line 292
    :goto_7
    return-void

    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
