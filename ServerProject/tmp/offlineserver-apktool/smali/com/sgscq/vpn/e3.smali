.class public final synthetic Lcom/sgscq/vpn/e3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sgscq/vpn/b7;
.implements Lcom/sgscq/vpn/p;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sgscq/vpn/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/MainActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/sgscq/vpn/e3;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/e3;->b:Lcom/sgscq/vpn/MainActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/sgscq/vpn/n;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/sgscq/vpn/e3;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/sgscq/vpn/e3;->b:Lcom/sgscq/vpn/MainActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto/16 :goto_2

    .line 9
    .line 10
    :pswitch_0
    sget v0, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 11
    .line 12
    const-string v0, "sgscq_player_v5"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    new-instance v4, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_1

    .line 41
    .line 42
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v6}, Lcom/sgscq/vpn/y5;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-nez v7, :cond_0

    .line 57
    .line 58
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 63
    .line 64
    .line 65
    new-instance v5, Lh/b;

    .line 66
    .line 67
    new-instance v6, Ljava/io/OutputStreamWriter;

    .line 68
    .line 69
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 70
    .line 71
    invoke-direct {v6, p1, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {v5, v6}, Lh/b;-><init>(Ljava/io/Writer;)V

    .line 75
    .line 76
    .line 77
    const-string p1, "  "

    .line 78
    .line 79
    iput-object p1, v5, Lh/b;->d:Ljava/lang/String;

    .line 80
    .line 81
    const-string p1, ": "

    .line 82
    .line 83
    iput-object p1, v5, Lh/b;->e:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v5}, Lh/b;->e()V

    .line 86
    .line 87
    .line 88
    const-string p1, "exported_at"

    .line 89
    .line 90
    invoke-virtual {v5, p1}, Lh/b;->i(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 94
    .line 95
    .line 96
    move-result-wide v6

    .line 97
    invoke-virtual {v5, v6, v7}, Lh/b;->o(J)V

    .line 98
    .line 99
    .line 100
    const-string p1, "preference_name"

    .line 101
    .line 102
    invoke-virtual {v5, p1}, Lh/b;->i(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5, v0}, Lh/b;->r(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string p1, "players"

    .line 109
    .line 110
    invoke-virtual {v5, p1}, Lh/b;->i(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Lh/b;->e()V

    .line 114
    .line 115
    .line 116
    new-instance p1, La/o;

    .line 117
    .line 118
    invoke-direct {p1}, La/o;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_5

    .line 130
    .line 131
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    check-cast v4, Ljava/lang/String;

    .line 136
    .line 137
    invoke-static {v4}, Lcom/sgscq/vpn/y5;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_3

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_3
    invoke-static {v1, v3, v4}, Lcom/sgscq/vpn/y5;->l(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    if-eqz v6, :cond_2

    .line 153
    .line 154
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    if-eqz v7, :cond_4

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_4
    invoke-virtual {v5, v4}, Lh/b;->i(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const-class v4, Ljava/util/Map;

    .line 165
    .line 166
    invoke-virtual {p1, v6, v4, v5}, La/o;->k(Ljava/lang/Object;Ljava/lang/Class;Lh/b;)V

    .line 167
    .line 168
    .line 169
    add-int/lit8 v2, v2, 0x1

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_5
    invoke-virtual {v5}, Lh/b;->h()V

    .line 173
    .line 174
    .line 175
    const-string p1, "player_count"

    .line 176
    .line 177
    invoke-virtual {v5, p1}, Lh/b;->i(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    int-to-long v0, v2

    .line 181
    invoke-virtual {v5, v0, v1}, Lh/b;->o(J)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5}, Lh/b;->h()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5}, Lh/b;->flush()V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :goto_2
    sget v0, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    invoke-static {v1}, Lcom/sgscq/vpn/n0;->t(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    if-eqz v1, :cond_6

    .line 205
    .line 206
    const-string v0, ""

    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    const-string v2, "\u5d29\u6e83\u8bb0\u5f55 "

    .line 212
    .line 213
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v2, " \u6761\uff08\u65b0\u2192\u65e7\uff09\n"

    .line 224
    .line 225
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    if-eqz v2, :cond_7

    .line 237
    .line 238
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    check-cast v2, Ljava/lang/String;

    .line 243
    .line 244
    const/16 v3, 0xa

    .line 245
    .line 246
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    const v1, 0x12000

    .line 258
    .line 259
    .line 260
    invoke-static {v0, v1}, Lcom/sgscq/vpn/n0;->i(Ljava/lang/String;I)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    :goto_4
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 265
    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 271
    .line 272
    .line 273
    return-void

    .line 274
    nop

    .line 275
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Z)V
    .locals 2

    .line 1
    sget p1, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/sgscq/vpn/e3;->b:Lcom/sgscq/vpn/MainActivity;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/sgscq/vpn/f3;

    .line 9
    .line 10
    const/16 v1, 0xe

    .line 11
    .line 12
    invoke-direct {v0, p1, v1}, Lcom/sgscq/vpn/f3;-><init>(Lcom/sgscq/vpn/MainActivity;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final c(I)V
    .locals 4

    .line 1
    sget v0, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/sgscq/vpn/e3;->b:Lcom/sgscq/vpn/MainActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x5

    .line 9
    if-ne p1, v1, :cond_3

    .line 10
    .line 11
    sget-object p1, Lo/j;->j:Lo/j;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    move p1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget p1, p1, Lo/j;->g:I

    .line 19
    .line 20
    :goto_0
    const/4 v3, 0x0

    .line 21
    if-ne p1, v1, :cond_1

    .line 22
    .line 23
    sget-object p1, Lo/j;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    invoke-virtual {p1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v2, v3

    .line 33
    :goto_1
    if-nez v2, :cond_2

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    new-instance p1, Lcom/sgscq/vpn/f3;

    .line 37
    .line 38
    const/16 v1, 0x8

    .line 39
    .line 40
    invoke-direct {p1, v0, v1}, Lcom/sgscq/vpn/f3;-><init>(Lcom/sgscq/vpn/MainActivity;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    :cond_3
    :goto_2
    return-void
.end method
