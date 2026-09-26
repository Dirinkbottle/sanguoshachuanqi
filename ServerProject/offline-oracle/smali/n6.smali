.class public final synthetic Lcom/sgscq/vpn/n6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sgscq/vpn/SettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/SettingsActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/sgscq/vpn/n6;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/n6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 1
    iget p1, p0, Lcom/sgscq/vpn/n6;->a:I

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto/16 :goto_0

    .line 9
    .line 10
    :pswitch_0
    iget-object p1, p0, Lcom/sgscq/vpn/n6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 11
    .line 12
    sget v1, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lq/o;->a(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    sget-object v1, Lq/o;->a:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v2, Lq/o;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-static {}, Lq/i;->h()V

    .line 28
    .line 29
    .line 30
    sget-object v2, Lq/o;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/sgscq/vpn/cloud/b0;->c()V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/sgscq/vpn/config/f;->a()Lcom/sgscq/vpn/config/f;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    sput-object v2, Lq/o;->b:Lcom/sgscq/vpn/config/f;

    .line 40
    .line 41
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    iput-boolean v0, p1, Lcom/sgscq/vpn/SettingsActivity;->M:Z

    .line 43
    .line 44
    iget-object v1, p1, Lcom/sgscq/vpn/SettingsActivity;->E:Landroid/widget/Switch;

    .line 45
    .line 46
    invoke-virtual {v1, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p1, Lcom/sgscq/vpn/SettingsActivity;->F:Landroid/widget/RadioButton;

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p1, Lcom/sgscq/vpn/SettingsActivity;->I:Landroid/widget/EditText;

    .line 55
    .line 56
    const-string v1, ""

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p1, Lcom/sgscq/vpn/SettingsActivity;->J:Landroid/widget/EditText;

    .line 62
    .line 63
    const-string v1, ""

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    iput-boolean p2, p1, Lcom/sgscq/vpn/SettingsActivity;->M:Z

    .line 69
    .line 70
    const-string v0, "\u5df2\u6062\u590d\u9ed8\u8ba4\u8fde\u63a5"

    .line 71
    .line 72
    sget v1, Lcom/sgscq/vpn/p5;->G:I

    .line 73
    .line 74
    invoke-virtual {p1, v0, v1}, Lcom/sgscq/vpn/SettingsActivity;->L(Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    const-string v0, "\u5df2\u6062\u590d\u9ed8\u8ba4\u8fde\u63a5"

    .line 78
    .line 79
    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 88
    .line 89
    const-string p2, "\u4ee3\u7406\u914d\u7f6e\u5c1a\u672a\u521d\u59cb\u5316"

    .line 90
    .line 91
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p1

    .line 95
    :catchall_0
    move-exception p1

    .line 96
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    throw p1

    .line 98
    :pswitch_1
    iget-object p1, p0, Lcom/sgscq/vpn/n6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 99
    .line 100
    sget v1, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    invoke-static {p1}, Lq/e;->a(Landroid/content/Context;)V

    .line 106
    .line 107
    .line 108
    sget-object v1, Lq/e;->a:Ljava/lang/Object;

    .line 109
    .line 110
    monitor-enter v1

    .line 111
    :try_start_2
    sget-object v2, Lq/e;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 112
    .line 113
    if-eqz v2, :cond_1

    .line 114
    .line 115
    sget-object v2, Lq/e;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/sgscq/vpn/cloud/b0;->c()V

    .line 118
    .line 119
    .line 120
    const-string v2, "114.114.114.114"

    .line 121
    .line 122
    invoke-static {v2}, Lc/i;->d(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    new-instance v4, Lc/i;

    .line 127
    .line 128
    invoke-direct {v4, p2, v2, v3}, Lc/i;-><init>(ZLjava/lang/String;Ljava/net/InetAddress;)V

    .line 129
    .line 130
    .line 131
    sput-object v4, Lq/e;->b:Lc/i;

    .line 132
    .line 133
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 134
    iput-boolean v0, p1, Lcom/sgscq/vpn/SettingsActivity;->R:Z

    .line 135
    .line 136
    iget-object v0, p1, Lcom/sgscq/vpn/SettingsActivity;->N:Landroid/widget/Switch;

    .line 137
    .line 138
    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p1, Lcom/sgscq/vpn/SettingsActivity;->O:Landroid/widget/AutoCompleteTextView;

    .line 142
    .line 143
    const-string v1, "114.114.114.114"

    .line 144
    .line 145
    invoke-virtual {v0, v1, p2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 146
    .line 147
    .line 148
    iput-boolean p2, p1, Lcom/sgscq/vpn/SettingsActivity;->R:Z

    .line 149
    .line 150
    const-string v0, "\u5df2\u6062\u590d\u9ed8\u8ba4\uff0c\u5f53\u524d\u4f7f\u7528\u7cfb\u7edf DNS"

    .line 151
    .line 152
    sget v1, Lcom/sgscq/vpn/p5;->G:I

    .line 153
    .line 154
    invoke-virtual {p1, v0, v1}, Lcom/sgscq/vpn/SettingsActivity;->J(Ljava/lang/String;I)V

    .line 155
    .line 156
    .line 157
    const-string v0, "APP DNS \u5df2\u6062\u590d\u9ed8\u8ba4"

    .line 158
    .line 159
    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :cond_1
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 168
    .line 169
    const-string p2, "DNS \u914d\u7f6e\u5c1a\u672a\u521d\u59cb\u5316"

    .line 170
    .line 171
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p1

    .line 175
    :catchall_1
    move-exception p1

    .line 176
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 177
    throw p1

    .line 178
    :goto_0
    sget p1, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 179
    .line 180
    const-string p1, "\u6b63\u5728\u5220\u9664\u672c\u4eba\u4e91\u5b58\u6863..."

    .line 181
    .line 182
    iget-object p2, p0, Lcom/sgscq/vpn/n6;->b:Lcom/sgscq/vpn/SettingsActivity;

    .line 183
    .line 184
    invoke-virtual {p2, p1}, Lcom/sgscq/vpn/SettingsActivity;->H(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    new-instance p1, Ljava/lang/Thread;

    .line 188
    .line 189
    new-instance v0, Lcom/sgscq/vpn/f6;

    .line 190
    .line 191
    const/4 v1, 0x4

    .line 192
    invoke-direct {v0, p2, v1}, Lcom/sgscq/vpn/f6;-><init>(Lcom/sgscq/vpn/SettingsActivity;I)V

    .line 193
    .line 194
    .line 195
    const-string p2, "sgscq-cloud-delete"

    .line 196
    .line 197
    invoke-direct {p1, v0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    nop

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
