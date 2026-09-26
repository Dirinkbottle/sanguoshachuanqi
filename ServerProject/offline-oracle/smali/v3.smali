.class public final synthetic Lcom/sgscq/vpn/v3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sgscq/vpn/PassportActivity;

.field public final synthetic c:Lcom/sgscq/vpn/k4;


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/PassportActivity;Lcom/sgscq/vpn/k4;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/sgscq/vpn/v3;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/v3;->b:Lcom/sgscq/vpn/PassportActivity;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/sgscq/vpn/v3;->c:Lcom/sgscq/vpn/k4;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget p1, p0, Lcom/sgscq/vpn/v3;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "\u53d6\u6d88"

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    iget-object v3, p0, Lcom/sgscq/vpn/v3;->c:Lcom/sgscq/vpn/k4;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/sgscq/vpn/v3;->b:Lcom/sgscq/vpn/PassportActivity;

    .line 10
    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    goto :goto_1

    .line 15
    :pswitch_0
    iget-object p1, v4, Lcom/sgscq/vpn/PassportActivity;->a:Lcom/sgscq/vpn/m4;

    .line 16
    .line 17
    iget-object v5, v3, Lcom/sgscq/vpn/k4;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, v5}, Lcom/sgscq/vpn/m4;->o(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/4 v5, 0x1

    .line 24
    xor-int/2addr p1, v5

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    const-string p1, "\u4e91\u5b58\u6863\u4e0d\u53ef\u6e05\u9664\u73a9\u5bb6\u6570\u636e"

    .line 28
    .line 29
    invoke-static {v4, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, v3, Lcom/sgscq/vpn/k4;->b:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    iget-object p1, v3, Lcom/sgscq/vpn/k4;->a:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/sgscq/vpn/m4;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 52
    .line 53
    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    const-string v6, "\u6e05\u9664\u73a9\u5bb6\u6570\u636e"

    .line 57
    .line 58
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    new-instance v6, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v7, "\u786e\u5b9a\u6e05\u9664\u300c"

    .line 65
    .line 66
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p1, "\u300d\u7684\u73a9\u5bb6\u5b58\u6863\u548c\u5f15\u5bfc\u8fdb\u5ea6\uff1f\n\n\u901a\u884c\u8bc1\u8bb0\u5f55\u4f1a\u4fdd\u7559\uff0c\u53ef\u4ee5\u91cd\u65b0\u5f00\u59cb\u6e38\u620f\u3002"

    .line 73
    .line 74
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    new-instance v2, Lcom/sgscq/vpn/w3;

    .line 86
    .line 87
    invoke-direct {v2, v4, v3, v5}, Lcom/sgscq/vpn/w3;-><init>(Lcom/sgscq/vpn/PassportActivity;Lcom/sgscq/vpn/k4;I)V

    .line 88
    .line 89
    .line 90
    const-string v3, "\u6e05\u9664"

    .line 91
    .line 92
    invoke-virtual {p1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 101
    .line 102
    .line 103
    :goto_0
    return-void

    .line 104
    :pswitch_1
    iget-object p1, v4, Lcom/sgscq/vpn/PassportActivity;->a:Lcom/sgscq/vpn/m4;

    .line 105
    .line 106
    iget-object v0, v3, Lcom/sgscq/vpn/k4;->a:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Lcom/sgscq/vpn/m4;->w(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string p1, "\u5df2\u5207\u6362\u5f53\u524d\u5b58\u6863"

    .line 112
    .line 113
    invoke-static {v4, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4}, Lcom/sgscq/vpn/PassportActivity;->f()V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :goto_1
    sget p1, Lcom/sgscq/vpn/PassportActivity;->q:I

    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    iget-object p1, v3, Lcom/sgscq/vpn/k4;->b:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-eqz p1, :cond_2

    .line 136
    .line 137
    iget-object p1, v3, Lcom/sgscq/vpn/k4;->a:Ljava/lang/String;

    .line 138
    .line 139
    invoke-static {p1}, Lcom/sgscq/vpn/m4;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    goto :goto_2

    .line 144
    :cond_2
    iget-object p1, v3, Lcom/sgscq/vpn/k4;->b:Ljava/lang/String;

    .line 145
    .line 146
    :goto_2
    new-instance v5, Landroid/app/AlertDialog$Builder;

    .line 147
    .line 148
    invoke-direct {v5, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 149
    .line 150
    .line 151
    const-string v6, "\u5220\u9664\u901a\u884c\u8bc1"

    .line 152
    .line 153
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    iget-boolean v6, v3, Lcom/sgscq/vpn/k4;->f:Z

    .line 158
    .line 159
    const-string v7, "\u786e\u5b9a\u5220\u9664\u300c"

    .line 160
    .line 161
    if-eqz v6, :cond_3

    .line 162
    .line 163
    new-instance v6, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string p1, "\u300d\u7684\u672c\u673a\u8bb0\u5f55\uff1f\n\n\u670d\u52a1\u5668\u4e91\u89d2\u8272\u4e0d\u4f1a\u88ab\u5220\u9664\uff0c\u53ef\u7531\u672c\u4eba\u91cd\u65b0\u4e0b\u8f7d\u3002"

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string p1, "\u300d\uff1f\n\n\u8be5\u901a\u884c\u8bc1\u7684\u73a9\u5bb6\u5b58\u6863\u548c\u5f15\u5bfc\u8fdb\u5ea6\u4e5f\u4f1a\u4e00\u5e76\u5220\u9664\uff0c\u6b64\u64cd\u4f5c\u4e0d\u53ef\u64a4\u9500\u3002"

    .line 183
    .line 184
    :goto_3
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {v5, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    new-instance v5, Lcom/sgscq/vpn/w3;

    .line 196
    .line 197
    invoke-direct {v5, v4, v3, v2}, Lcom/sgscq/vpn/w3;-><init>(Lcom/sgscq/vpn/PassportActivity;Lcom/sgscq/vpn/k4;I)V

    .line 198
    .line 199
    .line 200
    const-string v2, "\u5220\u9664"

    .line 201
    .line 202
    invoke-virtual {p1, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 211
    .line 212
    .line 213
    return-void

    .line 214
    nop

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
