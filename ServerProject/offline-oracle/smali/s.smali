.class public final synthetic Lcom/sgscq/vpn/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/sgscq/vpn/s;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/s;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget p1, p0, Lcom/sgscq/vpn/s;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/sgscq/vpn/s;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto/16 :goto_5

    .line 9
    .line 10
    :pswitch_0
    check-cast v0, Lcom/sgscq/vpn/t;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Lcom/sgscq/vpn/y5;->k(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :cond_0
    invoke-static {p2}, Lcom/sgscq/vpn/y5;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-nez p2, :cond_a

    .line 32
    .line 33
    iget-object p2, v0, Lcom/sgscq/vpn/t;->e:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p2, Lcom/sgscq/vpn/u4;

    .line 36
    .line 37
    if-nez p2, :cond_1

    .line 38
    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sgscq/vpn/t;->c(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast p2, Lcom/sgscq/vpn/h7;

    .line 46
    .line 47
    iget-object p2, p2, Lcom/sgscq/vpn/h7;->a:Lcom/sgscq/vpn/p7;

    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    goto/16 :goto_4

    .line 59
    .line 60
    :cond_2
    iget-boolean v1, p2, Lcom/sgscq/vpn/p7;->p:Z

    .line 61
    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    iget-object v1, p2, Lcom/sgscq/vpn/p7;->q:Ljava/util/concurrent/Future;

    .line 66
    .line 67
    if-nez v1, :cond_4

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const-string v2, "sgscq-robot-roster"

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_5

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    invoke-virtual {p2}, Lcom/sgscq/vpn/p7;->e()V

    .line 88
    .line 89
    .line 90
    :goto_0
    iget-object v1, p2, Lcom/sgscq/vpn/p7;->a:Ljava/lang/Object;

    .line 91
    .line 92
    monitor-enter v1

    .line 93
    if-eqz v0, :cond_9

    .line 94
    .line 95
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_6

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_6
    iget-object v2, p2, Lcom/sgscq/vpn/p7;->m:Ljava/util/LinkedHashMap;

    .line 103
    .line 104
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    iget-object v2, p2, Lcom/sgscq/vpn/p7;->l:Ljava/util/LinkedHashMap;

    .line 108
    .line 109
    invoke-static {p1, v0}, Lcom/sgscq/vpn/v5;->j(Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/v5;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    const-string v2, "ladder_rank"

    .line 117
    .line 118
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    iget-object v3, p2, Lcom/sgscq/vpn/p7;->n:Ljava/util/LinkedHashMap;

    .line 123
    .line 124
    const/16 v4, 0x3e9

    .line 125
    .line 126
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v3, p1, v4}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    check-cast v3, Ljava/lang/Integer;

    .line 135
    .line 136
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    invoke-static {v2, v3}, Lcom/sgscq/vpn/p7;->j(Ljava/lang/Object;I)I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    iget-object v3, p2, Lcom/sgscq/vpn/p7;->n:Ljava/util/LinkedHashMap;

    .line 145
    .line 146
    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    check-cast v3, Ljava/lang/Integer;

    .line 151
    .line 152
    if-nez v3, :cond_7

    .line 153
    .line 154
    const/4 v3, 0x1

    .line 155
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    invoke-virtual {p2, p1, v3}, Lcom/sgscq/vpn/p7;->q(Ljava/lang/String;I)I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    goto :goto_1

    .line 164
    :cond_7
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    :goto_1
    invoke-virtual {p2, p1, v3}, Lcom/sgscq/vpn/p7;->A(Ljava/lang/String;I)V

    .line 169
    .line 170
    .line 171
    const/high16 v4, -0x80000000

    .line 172
    .line 173
    if-eq v3, v2, :cond_8

    .line 174
    .line 175
    invoke-static {v3, v0}, Lcom/sgscq/vpn/p7;->d(ILjava/util/Map;)V

    .line 176
    .line 177
    .line 178
    iget-object v2, p2, Lcom/sgscq/vpn/p7;->m:Ljava/util/LinkedHashMap;

    .line 179
    .line 180
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    iget-object v2, p2, Lcom/sgscq/vpn/p7;->l:Ljava/util/LinkedHashMap;

    .line 184
    .line 185
    invoke-static {p1, v0}, Lcom/sgscq/vpn/v5;->j(Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/v5;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_8
    move v3, v4

    .line 194
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    if-eq v3, v4, :cond_a

    .line 196
    .line 197
    iget-object p2, p2, Lcom/sgscq/vpn/p7;->b:Lcom/sgscq/vpn/t;

    .line 198
    .line 199
    invoke-virtual {p2, p1, v3}, Lcom/sgscq/vpn/t;->e(Ljava/lang/String;I)V

    .line 200
    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_9
    :goto_3
    :try_start_1
    invoke-virtual {p2, p1}, Lcom/sgscq/vpn/p7;->x(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    monitor-exit v1

    .line 207
    goto :goto_4

    .line 208
    :catchall_0
    move-exception p1

    .line 209
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    throw p1

    .line 211
    :cond_a
    :goto_4
    return-void

    .line 212
    :goto_5
    check-cast v0, Lcom/sgscq/vpn/h5;

    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    invoke-static {p2}, Lcom/sgscq/vpn/y5;->k(Ljava/lang/String;)Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-nez p1, :cond_b

    .line 222
    .line 223
    goto :goto_6

    .line 224
    :cond_b
    invoke-static {p2}, Lcom/sgscq/vpn/y5;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 229
    .line 230
    .line 231
    move-result p2

    .line 232
    if-eqz p2, :cond_c

    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_c
    iget-object p2, v0, Lcom/sgscq/vpn/h5;->b:Lcom/sgscq/vpn/z4;

    .line 236
    .line 237
    invoke-virtual {p2, p1}, Lcom/sgscq/vpn/z4;->e(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    :goto_6
    return-void

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
