.class public final synthetic Lcom/sgscq/vpn/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/sgscq/vpn/u0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/u0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/sgscq/vpn/u0;->c:Ljava/lang/Object;

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
    .locals 5

    .line 1
    iget v0, p0, Lcom/sgscq/vpn/u0;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/sgscq/vpn/u0;->c:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/sgscq/vpn/u0;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :pswitch_0
    check-cast v3, Lcom/sgscq/vpn/SettingsActivity;

    .line 14
    .line 15
    check-cast v2, Ljava/util/List;

    .line 16
    .line 17
    sget p2, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    check-cast p1, Landroid/app/AlertDialog;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-ltz p1, :cond_1

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-lt p1, p2, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v1, p1

    .line 42
    :cond_1
    :goto_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lcom/sgscq/vpn/cloud/w;

    .line 47
    .line 48
    iget p1, p1, Lcom/sgscq/vpn/cloud/w;->a:I

    .line 49
    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v0, "\u6b63\u5728\u4e0b\u8f7d\u5386\u53f2\u8282\u70b9 r"

    .line 53
    .line 54
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, "..."

    .line 61
    .line 62
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {v3, p2}, Lcom/sgscq/vpn/SettingsActivity;->H(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance p2, Ljava/lang/Thread;

    .line 73
    .line 74
    new-instance v0, Lcom/sgscq/vpn/c6;

    .line 75
    .line 76
    const/4 v1, 0x1

    .line 77
    invoke-direct {v0, v3, p1, v1}, Lcom/sgscq/vpn/c6;-><init>(Lcom/sgscq/vpn/SettingsActivity;II)V

    .line 78
    .line 79
    .line 80
    const-string p1, "sgscq-cloud-revision"

    .line 81
    .line 82
    invoke-direct {p2, v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :pswitch_1
    check-cast v3, Lcom/sgscq/vpn/MainActivity;

    .line 90
    .line 91
    check-cast v2, Lcom/sgscq/vpn/n3;

    .line 92
    .line 93
    sget p1, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    iget-object p1, v2, Lcom/sgscq/vpn/n3;->a:Ljava/lang/String;

    .line 99
    .line 100
    const-string p2, "package:"

    .line 101
    .line 102
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 103
    .line 104
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 105
    .line 106
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 126
    .line 127
    .line 128
    const/high16 p1, 0x10000000

    .line 129
    .line 130
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :catch_0
    const-string p1, "\u65e0\u6cd5\u6253\u5f00\u7cfb\u7edf\u8bbe\u7f6e"

    .line 138
    .line 139
    invoke-virtual {v3, p1}, Lcom/sgscq/vpn/MainActivity;->e(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :goto_1
    return-void

    .line 143
    :pswitch_2
    check-cast v3, Lcom/sgscq/vpn/w0;

    .line 144
    .line 145
    check-cast v2, Ljava/util/List;

    .line 146
    .line 147
    sget-object v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f:[F

    .line 148
    .line 149
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    check-cast p2, Ljava/lang/String;

    .line 154
    .line 155
    invoke-interface {v3, p2}, Lcom/sgscq/vpn/w0;->a(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :goto_2
    check-cast v3, Lcom/sgscq/vpn/a7;

    .line 163
    .line 164
    check-cast v2, Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 170
    .line 171
    .line 172
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 173
    .line 174
    iget-object p2, v3, Lcom/sgscq/vpn/a7;->a:Ljava/lang/Object;

    .line 175
    .line 176
    move-object v0, p2

    .line 177
    check-cast v0, Landroid/content/Context;

    .line 178
    .line 179
    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 180
    .line 181
    .line 182
    const-string v0, "\u6b63\u5728\u4e0b\u8f7d\u66f4\u65b0..."

    .line 183
    .line 184
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 185
    .line 186
    .line 187
    const-string v0, "\u51c6\u5907\u8fde\u63a5..."

    .line 188
    .line 189
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 207
    .line 208
    sget v4, Lcom/sgscq/vpn/p5;->y:I

    .line 209
    .line 210
    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    .line 215
    .line 216
    :try_start_1
    check-cast p2, Landroid/content/Context;

    .line 217
    .line 218
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    const-string v0, "alertTitle"

    .line 223
    .line 224
    const-string v1, "id"

    .line 225
    .line 226
    const-string v4, "android"

    .line 227
    .line 228
    invoke-virtual {p2, v0, v1, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    move-result p2

    .line 232
    if-lez p2, :cond_2

    .line 233
    .line 234
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 235
    .line 236
    .line 237
    move-result-object p2

    .line 238
    check-cast p2, Landroid/widget/TextView;

    .line 239
    .line 240
    if-eqz p2, :cond_2

    .line 241
    .line 242
    sget v0, Lcom/sgscq/vpn/p5;->F:I

    .line 243
    .line 244
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 245
    .line 246
    .line 247
    :catch_1
    :cond_2
    new-instance p2, Ljava/lang/Thread;

    .line 248
    .line 249
    new-instance v0, Lcom/sgscq/vpn/c;

    .line 250
    .line 251
    const/16 v1, 0x8

    .line 252
    .line 253
    invoke-direct {v0, v3, v2, p1, v1}, Lcom/sgscq/vpn/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 254
    .line 255
    .line 256
    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 260
    .line 261
    .line 262
    return-void

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
