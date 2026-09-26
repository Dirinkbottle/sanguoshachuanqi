.class public final Lcom/sgscq/vpn/cloud/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/sgscq/vpn/cloud/z;

.field public final b:Lm/e;

.field public final c:Lcom/sgscq/vpn/cloud/b0;

.field public final d:J

.field public final e:Lcom/sgscq/vpn/d3;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sgscq/vpn/d3;

    invoke-direct {v0}, Lcom/sgscq/vpn/d3;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/cloud/f0;->e:Lcom/sgscq/vpn/d3;

    new-instance v0, Lcom/sgscq/vpn/cloud/z;

    invoke-direct {v0, p1}, Lcom/sgscq/vpn/cloud/z;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sgscq/vpn/cloud/f0;->a:Lcom/sgscq/vpn/cloud/z;

    new-instance v0, Lm/e;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Lm/e;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/sgscq/vpn/cloud/f0;->b:Lm/e;

    new-instance v0, Lcom/sgscq/vpn/cloud/b0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/sgscq/vpn/cloud/b0;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/sgscq/vpn/cloud/f0;->c:Lcom/sgscq/vpn/cloud/b0;

    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sgscq/vpn/cloud/f0;->d:J

    return-void
.end method

.method public static d(J)Ljava/util/LinkedHashMap;
    .locals 3

    .line 1
    const-string v0, "user_id"

    .line 2
    .line 3
    const-string v1, "0"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lc/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "channel"

    .line 15
    .line 16
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "vip_level"

    .line 25
    .line 26
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const-string v1, "nickname"

    .line 30
    .line 31
    const-string v2, "\u7cfb\u7edf"

    .line 32
    .line 33
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    const-string v1, "message"

    .line 37
    .line 38
    const-string v2, "\u7231\u53d1\u7535\u5e10\u53f7\u5df2\u5728\u5176\u4ed6\u8bbe\u5907\u767b\u5f55\uff0c\u5f53\u524d\u4e91\u529f\u80fd\u5df2\u4e0b\u7ebf\u3002"

    .line 39
    .line 40
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    const-string v1, "time"

    .line 44
    .line 45
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    return-object v0
.end method

.method public static e(Lcom/sgscq/vpn/cloud/g;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/sgscq/vpn/cloud/g;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sgscq/vpn/cloud/h;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v3, v1, Lcom/sgscq/vpn/cloud/h;->b:Ljava/lang/String;

    const-string v4, "user_id"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v1, Lcom/sgscq/vpn/cloud/h;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "channel"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v1, Lcom/sgscq/vpn/cloud/h;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "vip_level"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "nickname"

    iget-object v4, v1, Lcom/sgscq/vpn/cloud/h;->e:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "message"

    iget-object v4, v1, Lcom/sgscq/vpn/cloud/h;->f:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v3, v1, Lcom/sgscq/vpn/cloud/h;->g:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "time"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/sgscq/vpn/battle/a;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p1}, Lcom/sgscq/vpn/cloud/f0;->b(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/sgscq/vpn/battle/a;

    .line 12
    .line 13
    new-instance v4, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v4, v2, v3}, Lcom/sgscq/vpn/battle/a;-><init>(Ljava/util/ArrayList;Lcom/sgscq/vpn/cloud/g;I)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    iget-object v0, v1, Lcom/sgscq/vpn/cloud/f0;->b:Lm/e;

    .line 23
    .line 24
    invoke-virtual {v0}, Lm/e;->y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v4, v1, Lcom/sgscq/vpn/cloud/f0;->a:Lcom/sgscq/vpn/cloud/z;

    .line 29
    .line 30
    iget-object v5, v1, Lcom/sgscq/vpn/cloud/f0;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 31
    .line 32
    iget-object v6, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v5, v6}, Lcom/sgscq/vpn/cloud/b0;->b(Ljava/lang/String;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    iget-wide v7, v1, Lcom/sgscq/vpn/cloud/f0;->d:J

    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    new-instance v9, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v10, "/chat/messages?after_id="

    .line 46
    .line 47
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-wide/16 v10, 0x0

    .line 51
    .line 52
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 53
    .line 54
    .line 55
    move-result-wide v5

    .line 56
    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v5, "&since_ms="

    .line 60
    .line 61
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 65
    .line 66
    .line 67
    move-result-wide v5

    .line 68
    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v5, "&limit=20&wait_seconds=2&poll_seconds=2"

    .line 72
    .line 73
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    const-string v5, "GET"

    .line 81
    .line 82
    const/4 v7, 0x0

    .line 83
    const-string v8, "application/json"

    .line 84
    .line 85
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    invoke-virtual/range {v4 .. v9}, Lcom/sgscq/vpn/cloud/z;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v4}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-static {v4}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    const-string v5, "messages"

    .line 102
    .line 103
    invoke-virtual {v4, v5}, La/t;->o(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_1

    .line 108
    .line 109
    invoke-virtual {v4, v5}, La/t;->m(Ljava/lang/String;)La/q;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    instance-of v6, v6, La/p;

    .line 117
    .line 118
    if-eqz v6, :cond_1

    .line 119
    .line 120
    invoke-virtual {v4, v5}, La/t;->n(Ljava/lang/String;)La/p;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    goto :goto_0

    .line 125
    :cond_1
    move-object v5, v2

    .line 126
    :goto_0
    new-instance v13, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .line 130
    .line 131
    if-eqz v5, :cond_3

    .line 132
    .line 133
    invoke-virtual {v5}, La/p;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    if-eqz v6, :cond_3

    .line 142
    .line 143
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    check-cast v6, La/q;

    .line 148
    .line 149
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    instance-of v7, v6, La/t;

    .line 153
    .line 154
    if-nez v7, :cond_2

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_2
    invoke-virtual {v6}, La/q;->f()La/t;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-static {v6}, Lcom/sgscq/vpn/cloud/z;->y(La/t;)Lcom/sgscq/vpn/cloud/h;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_3
    const-string v5, "guild_state"

    .line 170
    .line 171
    invoke-virtual {v4, v5}, La/t;->m(Ljava/lang/String;)La/q;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    if-eqz v5, :cond_4

    .line 176
    .line 177
    instance-of v6, v5, La/t;

    .line 178
    .line 179
    if-eqz v6, :cond_4

    .line 180
    .line 181
    invoke-virtual {v5}, La/q;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    invoke-static {v5}, Lcom/sgscq/vpn/cloud/z;->E(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/g;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    goto :goto_2

    .line 190
    :cond_4
    move-object v5, v2

    .line 191
    :goto_2
    new-instance v6, Lcom/sgscq/vpn/cloud/g;

    .line 192
    .line 193
    const-string v7, "next_cursor"

    .line 194
    .line 195
    invoke-static {v4, v7, v10, v11}, Lcom/sgscq/vpn/cloud/z;->u(La/t;Ljava/lang/String;J)J

    .line 196
    .line 197
    .line 198
    move-result-wide v7

    .line 199
    const-string v9, "pending_reward_count"

    .line 200
    .line 201
    invoke-static {v4, v9, v3}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    .line 202
    .line 203
    .line 204
    move-result v17

    .line 205
    move-object v12, v6

    .line 206
    move-wide v14, v7

    .line 207
    move-object/from16 v16, v5

    .line 208
    .line 209
    invoke-direct/range {v12 .. v17}, Lcom/sgscq/vpn/cloud/g;-><init>(Ljava/util/List;JLcom/sgscq/vpn/cloud/g;I)V

    .line 210
    .line 211
    .line 212
    iget-object v4, v1, Lcom/sgscq/vpn/cloud/f0;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 213
    .line 214
    iget-object v9, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 215
    .line 216
    monitor-enter v4

    .line 217
    :try_start_0
    invoke-static {v9}, Lcom/sgscq/vpn/cloud/b0;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v9

    .line 221
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 222
    .line 223
    .line 224
    move-result v12

    .line 225
    if-nez v12, :cond_6

    .line 226
    .line 227
    invoke-virtual {v4, v9}, Lcom/sgscq/vpn/cloud/b0;->b(Ljava/lang/String;)J

    .line 228
    .line 229
    .line 230
    move-result-wide v12

    .line 231
    cmp-long v12, v7, v12

    .line 232
    .line 233
    if-gtz v12, :cond_5

    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_5
    iget-object v12, v4, Lcom/sgscq/vpn/cloud/b0;->b:Landroid/content/SharedPreferences;

    .line 237
    .line 238
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 239
    .line 240
    .line 241
    move-result-object v12

    .line 242
    new-instance v13, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-static {v9}, Lcom/sgscq/vpn/cloud/b0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v9

    .line 251
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v9, "chat_cursor"

    .line 255
    .line 256
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v9

    .line 263
    invoke-interface {v12, v9, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 264
    .line 265
    .line 266
    move-result-object v7

    .line 267
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 268
    .line 269
    .line 270
    :cond_6
    :goto_3
    monitor-exit v4

    .line 271
    invoke-static {v6}, Lcom/sgscq/vpn/cloud/f0;->e(Lcom/sgscq/vpn/cloud/g;)Ljava/util/ArrayList;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    iget-object v7, v1, Lcom/sgscq/vpn/cloud/f0;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 276
    .line 277
    iget-object v8, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual {v7, v8}, Lcom/sgscq/vpn/cloud/b0;->e(Ljava/lang/String;)J

    .line 280
    .line 281
    .line 282
    move-result-wide v7

    .line 283
    if-nez v5, :cond_7

    .line 284
    .line 285
    move v9, v3

    .line 286
    goto :goto_4

    .line 287
    :cond_7
    iget v9, v5, Lcom/sgscq/vpn/cloud/g;->a:I

    .line 288
    .line 289
    :goto_4
    if-nez v5, :cond_8

    .line 290
    .line 291
    goto :goto_5

    .line 292
    :cond_8
    iget-wide v10, v5, Lcom/sgscq/vpn/cloud/g;->b:J

    .line 293
    .line 294
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 295
    .line 296
    .line 297
    move-result-wide v12

    .line 298
    const-wide/16 v14, 0x3e8

    .line 299
    .line 300
    div-long/2addr v12, v14

    .line 301
    if-lez v9, :cond_a

    .line 302
    .line 303
    cmp-long v7, v10, v7

    .line 304
    .line 305
    if-gtz v7, :cond_9

    .line 306
    .line 307
    goto :goto_6

    .line 308
    :cond_9
    const-string v2, "user_id"

    .line 309
    .line 310
    const-string v7, "0"

    .line 311
    .line 312
    invoke-static {v2, v7}, Lc/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    const/4 v7, 0x2

    .line 317
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 318
    .line 319
    .line 320
    move-result-object v7

    .line 321
    const-string v8, "channel"

    .line 322
    .line 323
    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    const-string v7, "vip_level"

    .line 331
    .line 332
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    const-string v3, "nickname"

    .line 336
    .line 337
    const-string v7, "\u7cfb\u7edf"

    .line 338
    .line 339
    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    const-string v7, "\u6709"

    .line 345
    .line 346
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    const-string v7, "\u6761\u5165\u4f1a\u7533\u8bf7\u5f85\u5904\u7406\uff0c\u8bf7\u8fdb\u5165\u516c\u4f1a\u7684\u5165\u4f1a\u7533\u8bf7\u9875\u9762\u5904\u7406\u3002"

    .line 353
    .line 354
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    const-string v7, "message"

    .line 362
    .line 363
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    const-string v3, "time"

    .line 367
    .line 368
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 369
    .line 370
    .line 371
    move-result-object v7

    .line 372
    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    :cond_a
    :goto_6
    if-eqz v2, :cond_d

    .line 376
    .line 377
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    iget-object v2, v1, Lcom/sgscq/vpn/cloud/f0;->c:Lcom/sgscq/vpn/cloud/b0;

    .line 381
    .line 382
    iget-object v0, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 383
    .line 384
    iget-wide v7, v5, Lcom/sgscq/vpn/cloud/g;->b:J

    .line 385
    .line 386
    monitor-enter v2

    .line 387
    :try_start_1
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/b0;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 392
    .line 393
    .line 394
    move-result v3

    .line 395
    if-nez v3, :cond_c

    .line 396
    .line 397
    invoke-virtual {v2, v0}, Lcom/sgscq/vpn/cloud/b0;->e(Ljava/lang/String;)J

    .line 398
    .line 399
    .line 400
    move-result-wide v9

    .line 401
    cmp-long v3, v7, v9

    .line 402
    .line 403
    if-gtz v3, :cond_b

    .line 404
    .line 405
    goto :goto_7

    .line 406
    :cond_b
    iget-object v3, v2, Lcom/sgscq/vpn/cloud/b0;->b:Landroid/content/SharedPreferences;

    .line 407
    .line 408
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    new-instance v9, Ljava/lang/StringBuilder;

    .line 413
    .line 414
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    .line 416
    .line 417
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/b0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    const-string v0, "guild_application_cursor"

    .line 425
    .line 426
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-interface {v3, v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    .line 439
    .line 440
    :cond_c
    :goto_7
    monitor-exit v2

    .line 441
    goto :goto_8

    .line 442
    :catchall_0
    move-exception v0

    .line 443
    monitor-exit v2

    .line 444
    throw v0

    .line 445
    :cond_d
    :goto_8
    new-instance v0, Lcom/sgscq/vpn/battle/a;

    .line 446
    .line 447
    iget v2, v6, Lcom/sgscq/vpn/cloud/g;->a:I

    .line 448
    .line 449
    invoke-direct {v0, v4, v5, v2}, Lcom/sgscq/vpn/battle/a;-><init>(Ljava/util/ArrayList;Lcom/sgscq/vpn/cloud/g;I)V

    .line 450
    .line 451
    .line 452
    return-object v0

    .line 453
    :catchall_1
    move-exception v0

    .line 454
    monitor-exit v4

    .line 455
    throw v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/f0;->b:Lm/e;

    invoke-virtual {v0}, Lm/e;->y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sgscq/vpn/cloud/f0;->c:Lcom/sgscq/vpn/cloud/b0;

    iget-object v2, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sgscq/vpn/cloud/b0;->f(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/d0;

    move-result-object v1

    iget-object v0, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Lcom/sgscq/vpn/cloud/d0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sgscq/vpn/battle/d;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    move-object/from16 v9, p3

    .line 8
    .line 9
    invoke-virtual {v1, v8}, Lcom/sgscq/vpn/cloud/f0;->b(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v10, 0x0

    .line 14
    if-eqz v2, :cond_3

    .line 15
    .line 16
    iget-object v11, v1, Lcom/sgscq/vpn/cloud/f0;->e:Lcom/sgscq/vpn/d3;

    .line 17
    .line 18
    monitor-enter v11

    .line 19
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    const-wide/32 v12, 0xf4240

    .line 24
    .line 25
    .line 26
    div-long v4, v2, v12

    .line 27
    .line 28
    iget-object v2, v1, Lcom/sgscq/vpn/cloud/f0;->e:Lcom/sgscq/vpn/d3;

    .line 29
    .line 30
    move-object/from16 v3, p2

    .line 31
    .line 32
    move/from16 v6, p1

    .line 33
    .line 34
    move-object/from16 v7, p3

    .line 35
    .line 36
    invoke-virtual/range {v2 .. v7}, Lcom/sgscq/vpn/d3;->b(Ljava/lang/String;JILjava/lang/String;)Ljava/util/LinkedHashMap;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    new-instance v0, Lcom/sgscq/vpn/battle/d;

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    invoke-direct {v0, v2, v3}, Lcom/sgscq/vpn/battle/d;-><init>(Ljava/util/Map;Z)V

    .line 46
    .line 47
    .line 48
    monitor-exit v11

    .line 49
    return-object v0

    .line 50
    :cond_0
    iget-object v2, v1, Lcom/sgscq/vpn/cloud/f0;->a:Lcom/sgscq/vpn/cloud/z;

    .line 51
    .line 52
    move-object/from16 v3, p4

    .line 53
    .line 54
    invoke-virtual {v2, v9, v0, v3}, Lcom/sgscq/vpn/cloud/z;->Y(Ljava/lang/String;ILjava/lang/String;)Lcom/sgscq/vpn/cloud/h;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    new-instance v3, Lcom/sgscq/vpn/cloud/g;

    .line 59
    .line 60
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v15

    .line 64
    iget-wide v4, v2, Lcom/sgscq/vpn/cloud/h;->a:J

    .line 65
    .line 66
    const/16 v18, 0x0

    .line 67
    .line 68
    const/16 v19, 0x0

    .line 69
    .line 70
    move-object v14, v3

    .line 71
    move-wide/from16 v16, v4

    .line 72
    .line 73
    invoke-direct/range {v14 .. v19}, Lcom/sgscq/vpn/cloud/g;-><init>(Ljava/util/List;JLcom/sgscq/vpn/cloud/g;I)V

    .line 74
    .line 75
    .line 76
    invoke-static {v3}, Lcom/sgscq/vpn/cloud/f0;->e(Lcom/sgscq/vpn/cloud/g;)Ljava/util/ArrayList;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_1

    .line 85
    .line 86
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 87
    .line 88
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Ljava/util/Map;

    .line 97
    .line 98
    :goto_0
    iget-object v3, v1, Lcom/sgscq/vpn/cloud/f0;->e:Lcom/sgscq/vpn/d3;

    .line 99
    .line 100
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 101
    .line 102
    .line 103
    move-result-wide v4

    .line 104
    div-long/2addr v4, v12

    .line 105
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    const-string v6, ""

    .line 109
    .line 110
    if-nez v8, :cond_2

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    move-object v6, v8

    .line 114
    :goto_1
    iput-object v6, v3, Lcom/sgscq/vpn/d3;->d:Ljava/lang/Object;

    .line 115
    .line 116
    iput v0, v3, Lcom/sgscq/vpn/d3;->a:I

    .line 117
    .line 118
    iput-object v9, v3, Lcom/sgscq/vpn/d3;->e:Ljava/lang/Object;

    .line 119
    .line 120
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 121
    .line 122
    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 123
    .line 124
    .line 125
    iput-object v0, v3, Lcom/sgscq/vpn/d3;->c:Ljava/lang/Object;

    .line 126
    .line 127
    iput-wide v4, v3, Lcom/sgscq/vpn/d3;->b:J

    .line 128
    .line 129
    new-instance v0, Lcom/sgscq/vpn/battle/d;

    .line 130
    .line 131
    invoke-direct {v0, v2, v10}, Lcom/sgscq/vpn/battle/d;-><init>(Ljava/util/Map;Z)V

    .line 132
    .line 133
    .line 134
    monitor-exit v11

    .line 135
    return-object v0

    .line 136
    :catchall_0
    move-exception v0

    .line 137
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    throw v0

    .line 139
    :cond_3
    new-instance v0, Lcom/sgscq/vpn/cloud/a0;

    .line 140
    .line 141
    const-string v2, "cloud_character_required"

    .line 142
    .line 143
    const-string v3, "\u53ea\u6709\u5f53\u524d\u4e91\u7aef\u89d2\u8272\u53ef\u4ee5\u4f7f\u7528\u8de8\u670d\u804a\u5929"

    .line 144
    .line 145
    const/16 v4, 0x193

    .line 146
    .line 147
    invoke-direct {v0, v4, v10, v2, v3}, Lcom/sgscq/vpn/cloud/a0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw v0
.end method
