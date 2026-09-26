.class public final synthetic Lcom/sgscq/vpn/a4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sgscq/vpn/PassportActivity;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/PassportActivity;Ljava/util/List;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/sgscq/vpn/a4;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/a4;->b:Lcom/sgscq/vpn/PassportActivity;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/sgscq/vpn/a4;->c:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/sgscq/vpn/a4;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/sgscq/vpn/a4;->c:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/sgscq/vpn/a4;->b:Lcom/sgscq/vpn/PassportActivity;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :pswitch_0
    sget v0, Lcom/sgscq/vpn/PassportActivity;->q:I

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    new-array v0, v0, [Ljava/lang/String;

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    new-array v4, v4, [Z

    .line 29
    .line 30
    new-instance v5, Ljava/text/SimpleDateFormat;

    .line 31
    .line 32
    const-string v6, "yyyy-MM-dd HH:mm:ss"

    .line 33
    .line 34
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 39
    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    move v7, v6

    .line 43
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-ge v7, v8, :cond_2

    .line 48
    .line 49
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    check-cast v8, Lcom/sgscq/vpn/cloud/t0;

    .line 54
    .line 55
    iget-object v9, v8, Lcom/sgscq/vpn/cloud/t0;->a:Lcom/sgscq/vpn/cloud/s0;

    .line 56
    .line 57
    new-instance v10, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    iget-object v11, v9, Lcom/sgscq/vpn/cloud/s0;->b:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v11, " | Lv"

    .line 68
    .line 69
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget v11, v9, Lcom/sgscq/vpn/cloud/s0;->e:I

    .line 73
    .line 74
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v11, " | \u6218\u529b "

    .line 78
    .line 79
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 83
    .line 84
    .line 85
    move-result-object v11

    .line 86
    iget-wide v12, v9, Lcom/sgscq/vpn/cloud/s0;->f:D

    .line 87
    .line 88
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 89
    .line 90
    .line 91
    move-result-object v12

    .line 92
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v12

    .line 96
    const-string v13, "%,.0f"

    .line 97
    .line 98
    invoke-static {v11, v13, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v11, " | "

    .line 106
    .line 107
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v12, "cloud"

    .line 111
    .line 112
    iget-object v13, v9, Lcom/sgscq/vpn/cloud/s0;->c:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v12

    .line 118
    if-eqz v12, :cond_0

    .line 119
    .line 120
    const-string v12, "\u7ebf\u4e0a\u4e91\u5b58\u6863"

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_0
    const-string v12, "local_cloud"

    .line 124
    .line 125
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v12

    .line 129
    if-eqz v12, :cond_1

    .line 130
    .line 131
    const-string v12, "\u672c\u5730\u4e91\u5b58\u6863"

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_1
    const-string v12, "\u672c\u5730\u5b58\u6863"

    .line 135
    .line 136
    :goto_1
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    new-instance v11, Ljava/util/Date;

    .line 143
    .line 144
    iget-wide v12, v9, Lcom/sgscq/vpn/cloud/s0;->d:J

    .line 145
    .line 146
    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    aput-object v9, v0, v7

    .line 161
    .line 162
    iget-boolean v8, v8, Lcom/sgscq/vpn/cloud/t0;->b:Z

    .line 163
    .line 164
    aput-boolean v8, v4, v7

    .line 165
    .line 166
    add-int/lit8 v7, v7, 0x1

    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_2
    new-array v3, v3, [Landroid/app/AlertDialog;

    .line 170
    .line 171
    new-instance v5, Landroid/app/AlertDialog$Builder;

    .line 172
    .line 173
    invoke-direct {v5, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 174
    .line 175
    .line 176
    const-string v7, "\u9009\u62e9\u8981\u5bfc\u5165\u7684\u5b58\u6863\uff08\u9ed8\u8ba4\u5168\u9009\uff09"

    .line 177
    .line 178
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    new-instance v7, Lcom/sgscq/vpn/h4;

    .line 183
    .line 184
    invoke-direct {v7, v1, v3}, Lcom/sgscq/vpn/h4;-><init>(Ljava/util/List;[Landroid/app/AlertDialog;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5, v0, v4, v7}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    const-string v4, "\u5bfc\u5165\u6240\u9009"

    .line 192
    .line 193
    const/4 v5, 0x0

    .line 194
    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    const-string v4, "\u53d6\u6d88"

    .line 199
    .line 200
    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    aput-object v0, v3, v6

    .line 209
    .line 210
    new-instance v3, Lcom/sgscq/vpn/i4;

    .line 211
    .line 212
    invoke-direct {v3, v2, v0, v1}, Lcom/sgscq/vpn/i4;-><init>(Lcom/sgscq/vpn/PassportActivity;Landroid/app/AlertDialog;Ljava/util/List;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 219
    .line 220
    .line 221
    return-void

    .line 222
    :goto_2
    sget v0, Lcom/sgscq/vpn/PassportActivity;->q:I

    .line 223
    .line 224
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    :try_start_0
    iget-object v0, v2, Lcom/sgscq/vpn/PassportActivity;->k:Lcom/sgscq/vpn/cloud/u0;

    .line 228
    .line 229
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/cloud/u0;->c(Ljava/util/List;)I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    new-instance v1, Lcom/sgscq/vpn/b4;

    .line 234
    .line 235
    invoke-direct {v1, v2, v0, v3}, Lcom/sgscq/vpn/b4;-><init>(Lcom/sgscq/vpn/PassportActivity;II)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .line 240
    .line 241
    goto :goto_3

    .line 242
    :catch_0
    move-exception v0

    .line 243
    invoke-virtual {v2, v0}, Lcom/sgscq/vpn/PassportActivity;->h(Ljava/lang/Exception;)V

    .line 244
    .line 245
    .line 246
    :goto_3
    return-void

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
