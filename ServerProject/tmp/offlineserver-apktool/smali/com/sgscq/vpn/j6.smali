.class public final synthetic Lcom/sgscq/vpn/j6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/sgscq/vpn/j6;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/j6;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .line 1
    iget p1, p0, Lcom/sgscq/vpn/j6;->a:I

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
    goto/16 :goto_2

    .line 9
    .line 10
    :pswitch_0
    iget-object p1, p0, Lcom/sgscq/vpn/j6;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Lcom/sgscq/vpn/SettingsActivity;

    .line 13
    .line 14
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lcom/sgscq/vpn/SettingsActivity;->r(Z)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    iget-object p1, p0, Lcom/sgscq/vpn/j6;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Lcom/sgscq/vpn/SettingsActivity;

    .line 23
    .line 24
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lcom/sgscq/vpn/SettingsActivity;->r(Z)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_2
    iget-object p1, p0, Lcom/sgscq/vpn/j6;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p1, Lcom/sgscq/vpn/SettingsActivity;

    .line 33
    .line 34
    iget v0, p1, Lcom/sgscq/vpn/SettingsActivity;->X:I

    .line 35
    .line 36
    invoke-virtual {p1, v0, p2}, Lcom/sgscq/vpn/SettingsActivity;->E(IZ)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_3
    iget-object p1, p0, Lcom/sgscq/vpn/j6;->b:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Lcom/sgscq/vpn/SettingsActivity;

    .line 43
    .line 44
    iget-boolean v2, p1, Lcom/sgscq/vpn/SettingsActivity;->R:Z

    .line 45
    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    if-eqz p2, :cond_1

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/sgscq/vpn/SettingsActivity;->D()Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-nez p2, :cond_2

    .line 56
    .line 57
    iput-boolean v0, p1, Lcom/sgscq/vpn/SettingsActivity;->R:Z

    .line 58
    .line 59
    iget-object p2, p1, Lcom/sgscq/vpn/SettingsActivity;->N:Landroid/widget/Switch;

    .line 60
    .line 61
    invoke-virtual {p2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 62
    .line 63
    .line 64
    iput-boolean v1, p1, Lcom/sgscq/vpn/SettingsActivity;->R:Z

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-static {p1}, Lq/e;->a(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    sget-object v2, Lq/e;->a:Ljava/lang/Object;

    .line 71
    .line 72
    monitor-enter v2

    .line 73
    :try_start_0
    sget-object p2, Lq/e;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 74
    .line 75
    if-eqz p2, :cond_3

    .line 76
    .line 77
    sget-object p2, Lq/e;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/sgscq/vpn/cloud/b0;->o()V

    .line 80
    .line 81
    .line 82
    sget-object p2, Lq/e;->b:Lc/i;

    .line 83
    .line 84
    iget-object p2, p2, Lc/i;->c:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p2, Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {p2}, Lc/i;->d(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    new-instance v0, Lc/i;

    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-direct {v0, v1, v3, p2}, Lc/i;-><init>(ZLjava/lang/String;Ljava/net/InetAddress;)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lq/e;->b:Lc/i;

    .line 102
    .line 103
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    const-string p2, "\u5df2\u5173\u95ed\uff0c\u5f53\u524d\u4f7f\u7528\u7cfb\u7edf DNS"

    .line 105
    .line 106
    sget v0, Lcom/sgscq/vpn/p5;->G:I

    .line 107
    .line 108
    invoke-virtual {p1, p2, v0}, Lcom/sgscq/vpn/SettingsActivity;->J(Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    :cond_2
    :goto_0
    return-void

    .line 112
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 113
    .line 114
    const-string p2, "DNS \u914d\u7f6e\u5c1a\u672a\u521d\u59cb\u5316"

    .line 115
    .line 116
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p1

    .line 120
    :catchall_0
    move-exception p1

    .line 121
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    throw p1

    .line 123
    :pswitch_4
    iget-object p1, p0, Lcom/sgscq/vpn/j6;->b:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast p1, Lcom/sgscq/vpn/SettingsActivity;

    .line 126
    .line 127
    iget-boolean v2, p1, Lcom/sgscq/vpn/SettingsActivity;->M:Z

    .line 128
    .line 129
    if-eqz v2, :cond_4

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_4
    if-eqz p2, :cond_5

    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/sgscq/vpn/SettingsActivity;->F()Z

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    if-nez p2, :cond_6

    .line 139
    .line 140
    iput-boolean v0, p1, Lcom/sgscq/vpn/SettingsActivity;->M:Z

    .line 141
    .line 142
    iget-object p2, p1, Lcom/sgscq/vpn/SettingsActivity;->E:Landroid/widget/Switch;

    .line 143
    .line 144
    invoke-virtual {p2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 145
    .line 146
    .line 147
    iput-boolean v1, p1, Lcom/sgscq/vpn/SettingsActivity;->M:Z

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_5
    invoke-static {p1}, Lq/o;->a(Landroid/content/Context;)V

    .line 151
    .line 152
    .line 153
    sget-object v0, Lq/o;->a:Ljava/lang/Object;

    .line 154
    .line 155
    monitor-enter v0

    .line 156
    :try_start_2
    sget-object p2, Lq/o;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 157
    .line 158
    if-eqz p2, :cond_7

    .line 159
    .line 160
    invoke-static {}, Lq/i;->h()V

    .line 161
    .line 162
    .line 163
    sget-object p2, Lq/o;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 164
    .line 165
    invoke-virtual {p2}, Lcom/sgscq/vpn/cloud/b0;->o()V

    .line 166
    .line 167
    .line 168
    invoke-static {}, Lcom/sgscq/vpn/config/f;->a()Lcom/sgscq/vpn/config/f;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    sput-object p2, Lq/o;->b:Lcom/sgscq/vpn/config/f;

    .line 173
    .line 174
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 175
    const-string p2, "\u5df2\u5173\u95ed\uff0c\u5f53\u524d\u4f7f\u7528\u9ed8\u8ba4\u8fde\u63a5"

    .line 176
    .line 177
    sget v0, Lcom/sgscq/vpn/p5;->G:I

    .line 178
    .line 179
    invoke-virtual {p1, p2, v0}, Lcom/sgscq/vpn/SettingsActivity;->L(Ljava/lang/String;I)V

    .line 180
    .line 181
    .line 182
    :cond_6
    :goto_1
    return-void

    .line 183
    :cond_7
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 184
    .line 185
    const-string p2, "\u4ee3\u7406\u914d\u7f6e\u5c1a\u672a\u521d\u59cb\u5316"

    .line 186
    .line 187
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p1

    .line 191
    :catchall_1
    move-exception p1

    .line 192
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 193
    throw p1

    .line 194
    :goto_2
    iget-object p1, p0, Lcom/sgscq/vpn/j6;->b:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast p1, Lcom/sgscq/vpn/v0;

    .line 197
    .line 198
    sget-object v0, Lcom/sgscq/vpn/DebugSparringConfigActivity;->f:[F

    .line 199
    .line 200
    iget-object p1, p1, Lcom/sgscq/vpn/v0;->a:Lcom/sgscq/vpn/DebugSparringConfig$Slot;

    .line 201
    .line 202
    iput-boolean p2, p1, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->extreme:Z

    .line 203
    .line 204
    return-void

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
