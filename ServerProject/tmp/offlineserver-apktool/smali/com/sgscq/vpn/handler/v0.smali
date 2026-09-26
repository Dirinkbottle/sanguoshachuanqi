.class public final Lcom/sgscq/vpn/handler/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/sgscq/vpn/handler/k0;

.field public final b:Lm/e;


# direct methods
.method public constructor <init>(Lcom/sgscq/vpn/handler/k0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/handler/v0;->a:Lcom/sgscq/vpn/handler/k0;

    iget-object p1, p1, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lm/e;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1}, Lm/e;-><init>(ILandroid/content/Context;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/sgscq/vpn/handler/v0;->b:Lm/e;

    return-void
.end method

.method public static A(ILjava/util/Map;)I
    .locals 4

    .line 1
    const-string v0, "player_level"

    const-string v1, "user_level"

    const-string v2, "level"

    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_1

    return v3

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return p0
.end method

.method public static a(Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "general_id"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "general_skin"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "user_general_skin"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "head"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "avatar"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static b(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    const-string v0, "init"

    move-object v1, p0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-nez v1, :cond_0

    return-void

    :cond_0
    check-cast v0, Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "info"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_2

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/util/Map;

    if-eqz v5, :cond_1

    new-instance v5, Ljava/util/LinkedHashMap;

    check-cast v4, Ljava/util/Map;

    invoke-direct {v5, v4}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/Map;

    const-string v6, "Player"

    move-object v5, p1

    move-object v7, p3

    move/from16 v8, p5

    move-object/from16 v9, p7

    invoke-static/range {v4 .. v9}, Lcom/sgscq/vpn/handler/v0;->q(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/Map;

    const-string v7, "\u5bf9\u624b"

    move-object v6, p2

    move-object v8, p4

    move/from16 v9, p6

    move-object/from16 v10, p8

    invoke-static/range {v5 .. v10}, Lcom/sgscq/vpn/handler/v0;->q(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "skipRounds"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static d(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 42

    .line 1
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/v0;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v9

    .line 5
    invoke-static {v9}, Lcom/sgscq/vpn/handler/v0;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v10

    .line 9
    invoke-static {}, Lcom/sgscq/vpn/handler/v0;->x()Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    .line 12
    move-result-object v11

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    move-object/from16 v23, v0

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    new-instance v6, Ljava/util/ArrayList;

    .line 37
    .line 38
    move-object/from16 v25, v6

    .line 39
    .line 40
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v0, "hpCur"

    .line 44
    .line 45
    const/16 v1, 0x3e8

    .line 46
    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const-string v2, "hpMax"

    .line 52
    .line 53
    const-string v4, "name"

    .line 54
    .line 55
    const-string v5, "Player"

    .line 56
    .line 57
    move-object v1, v3

    .line 58
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v7, "id"

    .line 63
    .line 64
    const-string v8, "112001"

    .line 65
    .line 66
    invoke-static {v7, v8, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->i1(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v12

    .line 81
    const-string v0, "hpCur"

    .line 82
    .line 83
    const/16 v1, 0x320

    .line 84
    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v37

    .line 89
    const-string v2, "hpMax"

    .line 90
    .line 91
    const-string v4, "name"

    .line 92
    .line 93
    move-object/from16 v1, v37

    .line 94
    .line 95
    move-object/from16 v3, v37

    .line 96
    .line 97
    move-object v5, v10

    .line 98
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v7, v12, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    new-instance v0, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .line 113
    .line 114
    const/4 v5, 0x1

    .line 115
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    move-object/from16 v27, v4

    .line 120
    .line 121
    move-object/from16 v17, v4

    .line 122
    .line 123
    move-object v15, v4

    .line 124
    const-string v30, "from"

    .line 125
    .line 126
    const/4 v1, 0x0

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    move-object/from16 v19, v1

    .line 132
    .line 133
    move-object/from16 v29, v1

    .line 134
    .line 135
    move-object/from16 v21, v1

    .line 136
    .line 137
    filled-new-array {v1}, [Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 142
    .line 143
    .line 144
    move-result-object v31

    .line 145
    const-string v32, "to"

    .line 146
    .line 147
    filled-new-array {v4}, [Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 152
    .line 153
    .line 154
    move-result-object v33

    .line 155
    const-string v34, "skill"

    .line 156
    .line 157
    const-string v35, "attack"

    .line 158
    .line 159
    const-string v36, "hurt"

    .line 160
    .line 161
    const-string v38, "hp"

    .line 162
    .line 163
    const-string v40, "dead"

    .line 164
    .line 165
    move-object/from16 v39, v1

    .line 166
    .line 167
    move-object/from16 v41, v4

    .line 168
    .line 169
    filled-new-array/range {v30 .. v41}, [Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    const-string v3, "round"

    .line 174
    .line 175
    invoke-static {v3, v4, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    const-string v12, "roundMax"

    .line 183
    .line 184
    const/16 v2, 0xf

    .line 185
    .line 186
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object v13

    .line 190
    const-string v14, "cards_size0"

    .line 191
    .line 192
    const-string v16, "cards_size1"

    .line 193
    .line 194
    const-string v18, "backups_size0"

    .line 195
    .line 196
    const-string v20, "backups_size1"

    .line 197
    .line 198
    const-string v22, "info"

    .line 199
    .line 200
    const-string v24, "cards"

    .line 201
    .line 202
    const-string v26, "roundCur"

    .line 203
    .line 204
    const-string v28, "skipRounds"

    .line 205
    .line 206
    filled-new-array/range {v12 .. v29}, [Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    const-string v3, "first"

    .line 211
    .line 212
    invoke-static {v3, v1, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    const-string v2, "rounds"

    .line 217
    .line 218
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    const-string v2, "init"

    .line 223
    .line 224
    invoke-static {v2, v1, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 225
    .line 226
    .line 227
    move-result-object v12

    .line 228
    const-string v1, "Player"

    .line 229
    .line 230
    const-string v3, "100001"

    .line 231
    .line 232
    const/4 v13, 0x1

    .line 233
    const/4 v14, 0x1

    .line 234
    const-string v15, "112001"

    .line 235
    .line 236
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    check-cast v0, Ljava/util/Map;

    .line 241
    .line 242
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v16

    .line 250
    move-object v0, v12

    .line 251
    move-object v2, v10

    .line 252
    move-object v4, v9

    .line 253
    move v7, v5

    .line 254
    move v5, v13

    .line 255
    move v6, v14

    .line 256
    move v14, v7

    .line 257
    move-object v7, v15

    .line 258
    move-object v15, v8

    .line 259
    move-object/from16 v8, v16

    .line 260
    .line 261
    invoke-static/range {v0 .. v8}, Lcom/sgscq/vpn/handler/v0;->b(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    const-string v0, "fight_info"

    .line 265
    .line 266
    invoke-interface {v11, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 270
    .line 271
    const-string v18, "fight_type"

    .line 272
    .line 273
    const/4 v1, 0x6

    .line 274
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 275
    .line 276
    .line 277
    move-result-object v19

    .line 278
    const-string v20, "fight_calculate_info"

    .line 279
    .line 280
    const/4 v1, 0x3

    .line 281
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    const-string v12, "rounds"

    .line 286
    .line 287
    const-string v2, "residue_team_num"

    .line 288
    .line 289
    const-string v16, "residue_team_percent"

    .line 290
    .line 291
    const/16 v3, 0x64

    .line 292
    .line 293
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    move-object v13, v1

    .line 298
    move v4, v14

    .line 299
    move-object v14, v2

    .line 300
    move-object v2, v15

    .line 301
    move-object/from16 v15, v17

    .line 302
    .line 303
    move-object/from16 v17, v3

    .line 304
    .line 305
    filled-new-array/range {v12 .. v17}, [Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    const-string v5, "star_level"

    .line 310
    .line 311
    invoke-static {v5, v1, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 312
    .line 313
    .line 314
    move-result-object v21

    .line 315
    const-string v22, "player_info"

    .line 316
    .line 317
    const-string v1, "100001"

    .line 318
    .line 319
    const-string v3, "Player"

    .line 320
    .line 321
    invoke-static {v4, v1, v3, v2}, Lcom/sgscq/vpn/cloud/m0;->F2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-static {v4, v9, v10, v2}, Lcom/sgscq/vpn/cloud/m0;->F2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    invoke-static {v1, v2}, Lcom/sgscq/vpn/cloud/m0;->T1(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    .line 330
    .line 331
    .line 332
    move-result-object v23

    .line 333
    const-string v24, "drop_info"

    .line 334
    .line 335
    new-instance v25, Ljava/util/LinkedHashMap;

    .line 336
    .line 337
    invoke-direct/range {v25 .. v25}, Ljava/util/LinkedHashMap;-><init>()V

    .line 338
    .line 339
    .line 340
    const-string v26, "add_list"

    .line 341
    .line 342
    new-instance v27, Ljava/util/ArrayList;

    .line 343
    .line 344
    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .line 346
    .line 347
    const-string v28, "show_general_info"

    .line 348
    .line 349
    new-instance v29, Ljava/util/ArrayList;

    .line 350
    .line 351
    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .line 353
    .line 354
    filled-new-array/range {v18 .. v29}, [Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    const-string v2, "success"

    .line 359
    .line 360
    invoke-static {v2, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    const-string v1, "fight_result"

    .line 365
    .line 366
    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    return-object v11
.end method

.method public static e(Ljava/util/Map;Lcom/sgscq/vpn/v5;Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    .line 11
    .line 12
    const-string v4, "TeamGeneral"

    .line 13
    .line 14
    invoke-static {v4, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    new-instance v4, Lc/n;

    .line 22
    .line 23
    const/4 v5, 0x5

    .line 24
    invoke-direct {v4, v5}, Lc/n;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 28
    .line 29
    .line 30
    const-string v4, "General"

    .line 31
    .line 32
    invoke-static {v4, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    new-instance v5, Ljava/util/LinkedHashSet;

    .line 37
    .line 38
    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v14, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    const-string v7, "general_id"

    .line 55
    .line 56
    const-string v15, "user_nickname"

    .line 57
    .line 58
    const-string v12, "112001"

    .line 59
    .line 60
    const-string v8, "\u73a9\u5bb6"

    .line 61
    .line 62
    if-eqz v6, :cond_8

    .line 63
    .line 64
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    check-cast v6, Ljava/util/Map;

    .line 69
    .line 70
    invoke-static {v6}, Lcom/sgscq/vpn/handler/v0;->y(Ljava/util/Map;)I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    if-lez v9, :cond_0

    .line 75
    .line 76
    const v10, 0x7fffffff

    .line 77
    .line 78
    .line 79
    if-ne v9, v10, :cond_1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    const-string v9, "pk_id"

    .line 83
    .line 84
    const-string v10, ""

    .line 85
    .line 86
    const-string v11, "general_pk_id"

    .line 87
    .line 88
    invoke-static {v6, v9, v10, v11}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v13

    .line 96
    if-nez v13, :cond_6

    .line 97
    .line 98
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v13

    .line 102
    if-nez v13, :cond_2

    .line 103
    .line 104
    goto/16 :goto_3

    .line 105
    .line 106
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v13

    .line 110
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v16

    .line 114
    if-eqz v16, :cond_4

    .line 115
    .line 116
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v16

    .line 120
    move-object/from16 v17, v3

    .line 121
    .line 122
    move-object/from16 v3, v16

    .line 123
    .line 124
    check-cast v3, Ljava/util/Map;

    .line 125
    .line 126
    invoke-static {v3, v11, v10, v9, v6}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v16

    .line 130
    if-eqz v16, :cond_3

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_3
    move-object/from16 v3, v17

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    move-object/from16 v17, v3

    .line 137
    .line 138
    const/4 v3, 0x0

    .line 139
    :goto_2
    if-eqz v3, :cond_7

    .line 140
    .line 141
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 142
    .line 143
    const-string v9, "story_guest"

    .line 144
    .line 145
    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    invoke-virtual {v6, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    if-eqz v6, :cond_5

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_5
    const-string v6, "id"

    .line 157
    .line 158
    invoke-static {v3, v6, v12, v7}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    const-string v7, "general_name"

    .line 163
    .line 164
    invoke-interface {v0, v15, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    invoke-interface {v3, v7, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 177
    .line 178
    .line 179
    move-result v8

    .line 180
    new-instance v9, Lcom/sgscq/vpn/handler/e;

    .line 181
    .line 182
    const/4 v10, 0x0

    .line 183
    invoke-direct {v9, v6, v10, v8}, Lcom/sgscq/vpn/handler/e;-><init>(Ljava/lang/String;II)V

    .line 184
    .line 185
    .line 186
    iput-object v3, v9, Lcom/sgscq/vpn/handler/e;->d:Ljava/util/Map;

    .line 187
    .line 188
    iput-object v0, v9, Lcom/sgscq/vpn/handler/e;->e:Ljava/util/Map;

    .line 189
    .line 190
    iput-object v2, v9, Lcom/sgscq/vpn/handler/e;->f:Lcom/sgscq/vpn/w1;

    .line 191
    .line 192
    iput-object v7, v9, Lcom/sgscq/vpn/handler/e;->g:Ljava/lang/String;

    .line 193
    .line 194
    const-wide v19, 0x4072c00000000000L    # 300.0

    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    const-wide/high16 v21, 0x4059000000000000L    # 100.0

    .line 200
    .line 201
    const-wide/high16 v23, 0x4059000000000000L    # 100.0

    .line 202
    .line 203
    move-object/from16 v18, v9

    .line 204
    .line 205
    invoke-virtual/range {v18 .. v24}, Lcom/sgscq/vpn/handler/e;->a(DDD)V

    .line 206
    .line 207
    .line 208
    invoke-static {v9}, Lcom/sgscq/vpn/handler/f;->a(Lcom/sgscq/vpn/handler/e;)Lcom/sgscq/vpn/battle/BattleUnit;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_6
    :goto_3
    move-object/from16 v17, v3

    .line 217
    .line 218
    :cond_7
    :goto_4
    move-object/from16 v3, v17

    .line 219
    .line 220
    goto/16 :goto_0

    .line 221
    .line 222
    :cond_8
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    if-eqz v3, :cond_9

    .line 227
    .line 228
    new-instance v3, Lcom/sgscq/vpn/handler/e;

    .line 229
    .line 230
    const/4 v4, 0x0

    .line 231
    invoke-direct {v3, v12, v4, v4}, Lcom/sgscq/vpn/handler/e;-><init>(Ljava/lang/String;II)V

    .line 232
    .line 233
    .line 234
    iput-object v2, v3, Lcom/sgscq/vpn/handler/e;->f:Lcom/sgscq/vpn/w1;

    .line 235
    .line 236
    invoke-interface {v0, v15, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    iput-object v4, v3, Lcom/sgscq/vpn/handler/e;->g:Ljava/lang/String;

    .line 245
    .line 246
    const-wide v17, 0x4072c00000000000L    # 300.0

    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    const-wide/high16 v19, 0x4059000000000000L    # 100.0

    .line 252
    .line 253
    const-wide/high16 v21, 0x4059000000000000L    # 100.0

    .line 254
    .line 255
    move-object/from16 v16, v3

    .line 256
    .line 257
    invoke-virtual/range {v16 .. v22}, Lcom/sgscq/vpn/handler/e;->a(DDD)V

    .line 258
    .line 259
    .line 260
    invoke-static {v3}, Lcom/sgscq/vpn/handler/f;->a(Lcom/sgscq/vpn/handler/e;)Lcom/sgscq/vpn/battle/BattleUnit;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    :cond_9
    new-instance v8, Ljava/util/ArrayList;

    .line 268
    .line 269
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .line 271
    .line 272
    invoke-virtual/range {p1 .. p1}, Lcom/sgscq/vpn/v5;->f()Ljava/util/List;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    const/4 v5, 0x1

    .line 285
    iget-object v13, v1, Lcom/sgscq/vpn/v5;->b:Ljava/lang/String;

    .line 286
    .line 287
    if-eqz v4, :cond_a

    .line 288
    .line 289
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    check-cast v4, Ljava/util/Map;

    .line 294
    .line 295
    invoke-interface {v4, v7, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v6

    .line 299
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v6

    .line 303
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 304
    .line 305
    .line 306
    move-result v9

    .line 307
    new-instance v10, Lcom/sgscq/vpn/handler/e;

    .line 308
    .line 309
    invoke-direct {v10, v6, v5, v9}, Lcom/sgscq/vpn/handler/e;-><init>(Ljava/lang/String;II)V

    .line 310
    .line 311
    .line 312
    iput-object v4, v10, Lcom/sgscq/vpn/handler/e;->d:Ljava/util/Map;

    .line 313
    .line 314
    iput-object v2, v10, Lcom/sgscq/vpn/handler/e;->f:Lcom/sgscq/vpn/w1;

    .line 315
    .line 316
    iput-object v13, v10, Lcom/sgscq/vpn/handler/e;->g:Ljava/lang/String;

    .line 317
    .line 318
    const-wide v17, 0x4072c00000000000L    # 300.0

    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    const-wide/high16 v19, 0x4059000000000000L    # 100.0

    .line 324
    .line 325
    const-wide/high16 v21, 0x4059000000000000L    # 100.0

    .line 326
    .line 327
    move-object/from16 v16, v10

    .line 328
    .line 329
    invoke-virtual/range {v16 .. v22}, Lcom/sgscq/vpn/handler/e;->a(DDD)V

    .line 330
    .line 331
    .line 332
    invoke-static {v10}, Lcom/sgscq/vpn/handler/f;->a(Lcom/sgscq/vpn/handler/e;)Lcom/sgscq/vpn/battle/BattleUnit;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    goto :goto_5

    .line 340
    :cond_a
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 341
    .line 342
    .line 343
    move-result v3

    .line 344
    iget-object v4, v1, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 345
    .line 346
    if-eqz v3, :cond_b

    .line 347
    .line 348
    invoke-static {v4}, Lcom/sgscq/vpn/handler/v0;->d(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    return-object v0

    .line 353
    :cond_b
    invoke-static {}, Lo/h;->a()Lo/h;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    new-instance v10, Lcom/sgscq/vpn/battle/BattleScenario;

    .line 358
    .line 359
    const/4 v9, 0x0

    .line 360
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 361
    .line 362
    .line 363
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/w1;->B(Ljava/util/Map;)I

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    int-to-double v6, v2

    .line 368
    invoke-virtual/range {p1 .. p1}, Lcom/sgscq/vpn/v5;->k()I

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    move-object v5, v12

    .line 377
    move-object/from16 v16, v13

    .line 378
    .line 379
    int-to-double v12, v2

    .line 380
    move-wide/from16 v17, v6

    .line 381
    .line 382
    move-object v6, v10

    .line 383
    move-object v7, v14

    .line 384
    move-object v2, v10

    .line 385
    move-wide/from16 v10, v17

    .line 386
    .line 387
    move-object/from16 v26, v16

    .line 388
    .line 389
    move-object/from16 v16, v5

    .line 390
    .line 391
    move-object/from16 v5, v26

    .line 392
    .line 393
    invoke-direct/range {v6 .. v13}, Lcom/sgscq/vpn/battle/BattleScenario;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;DD)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v3, v2}, Lo/h;->b(Lcom/sgscq/vpn/battle/BattleScenario;)Lcom/sgscq/vpn/battle/BattleResult;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    const/4 v6, 0x0

    .line 405
    :cond_c
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 406
    .line 407
    .line 408
    move-result v7

    .line 409
    if-eqz v7, :cond_d

    .line 410
    .line 411
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v7

    .line 415
    check-cast v7, Lcom/sgscq/vpn/battle/BattleUnit;

    .line 416
    .line 417
    invoke-virtual {v7}, Lcom/sgscq/vpn/battle/BattleUnit;->isAlive()Z

    .line 418
    .line 419
    .line 420
    move-result v7

    .line 421
    if-eqz v7, :cond_c

    .line 422
    .line 423
    add-int/lit8 v6, v6, 0x1

    .line 424
    .line 425
    goto :goto_6

    .line 426
    :cond_d
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 427
    .line 428
    .line 429
    move-result v3

    .line 430
    const/4 v7, 0x1

    .line 431
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    .line 432
    .line 433
    .line 434
    move-result v3

    .line 435
    const-string v7, "Player"

    .line 436
    .line 437
    invoke-interface {v0, v15, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v7

    .line 441
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v7

    .line 445
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    .line 446
    .line 447
    .line 448
    move-result v8

    .line 449
    if-eqz v8, :cond_e

    .line 450
    .line 451
    move-object/from16 v12, v16

    .line 452
    .line 453
    goto :goto_7

    .line 454
    :cond_e
    const/4 v8, 0x0

    .line 455
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v8

    .line 459
    check-cast v8, Lcom/sgscq/vpn/battle/BattleUnit;

    .line 460
    .line 461
    invoke-virtual {v8}, Lcom/sgscq/vpn/battle/BattleUnit;->getId()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v12

    .line 465
    :goto_7
    invoke-virtual {v2}, Lcom/sgscq/vpn/battle/BattleResult;->getFightInfo()Ljava/util/Map;

    .line 466
    .line 467
    .line 468
    move-result-object v8

    .line 469
    if-nez v8, :cond_f

    .line 470
    .line 471
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 472
    .line 473
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 474
    .line 475
    .line 476
    goto :goto_8

    .line 477
    :cond_f
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 478
    .line 479
    invoke-direct {v9, v8}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 480
    .line 481
    .line 482
    move-object v8, v9

    .line 483
    :goto_8
    iget-object v9, v1, Lcom/sgscq/vpn/v5;->b:Ljava/lang/String;

    .line 484
    .line 485
    iget-object v10, v1, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 486
    .line 487
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/v0;->p(Ljava/util/Map;)I

    .line 488
    .line 489
    .line 490
    move-result v22

    .line 491
    iget v11, v1, Lcom/sgscq/vpn/v5;->c:I

    .line 492
    .line 493
    iget-object v13, v1, Lcom/sgscq/vpn/v5;->q:Ljava/lang/String;

    .line 494
    .line 495
    move-object/from16 v17, v8

    .line 496
    .line 497
    move-object/from16 v18, v7

    .line 498
    .line 499
    move-object/from16 v19, v9

    .line 500
    .line 501
    move-object/from16 v20, p2

    .line 502
    .line 503
    move-object/from16 v21, v10

    .line 504
    .line 505
    move/from16 v23, v11

    .line 506
    .line 507
    move-object/from16 v24, v12

    .line 508
    .line 509
    move-object/from16 v25, v13

    .line 510
    .line 511
    invoke-static/range {v17 .. v25}, Lcom/sgscq/vpn/handler/v0;->b(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    invoke-static {}, Lcom/sgscq/vpn/handler/v0;->x()Ljava/util/LinkedHashMap;

    .line 515
    .line 516
    .line 517
    move-result-object v9

    .line 518
    const-string v10, "fight_info"

    .line 519
    .line 520
    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v2}, Lcom/sgscq/vpn/battle/BattleResult;->isSuccess()Z

    .line 524
    .line 525
    .line 526
    move-result v8

    .line 527
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 528
    .line 529
    .line 530
    move-result-object v8

    .line 531
    const-string v13, "fight_type"

    .line 532
    .line 533
    const/4 v10, 0x6

    .line 534
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 535
    .line 536
    .line 537
    move-result-object v14

    .line 538
    const-string v15, "fight_calculate_info"

    .line 539
    .line 540
    invoke-virtual {v2}, Lcom/sgscq/vpn/battle/BattleResult;->isSuccess()Z

    .line 541
    .line 542
    .line 543
    move-result v10

    .line 544
    invoke-virtual {v2}, Lcom/sgscq/vpn/battle/BattleResult;->getRoundCount()I

    .line 545
    .line 546
    .line 547
    move-result v2

    .line 548
    invoke-static {v10, v6, v3}, Lcom/sgscq/vpn/battle/BattleStarCalculator;->calculate(ZII)I

    .line 549
    .line 550
    .line 551
    move-result v10

    .line 552
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 553
    .line 554
    .line 555
    move-result-object v10

    .line 556
    const-string v16, "rounds"

    .line 557
    .line 558
    const/4 v11, 0x1

    .line 559
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    .line 560
    .line 561
    .line 562
    move-result v2

    .line 563
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 564
    .line 565
    .line 566
    move-result-object v17

    .line 567
    const-string v18, "residue_team_num"

    .line 568
    .line 569
    const/4 v2, 0x0

    .line 570
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 571
    .line 572
    .line 573
    move-result v2

    .line 574
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 575
    .line 576
    .line 577
    move-result-object v19

    .line 578
    const-string v20, "residue_team_percent"

    .line 579
    .line 580
    invoke-static {v6, v3}, Lcom/sgscq/vpn/battle/BattleStarCalculator;->ceilPercent(II)I

    .line 581
    .line 582
    .line 583
    move-result v2

    .line 584
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 585
    .line 586
    .line 587
    move-result-object v21

    .line 588
    filled-new-array/range {v16 .. v21}, [Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    const-string v3, "star_level"

    .line 593
    .line 594
    invoke-static {v3, v10, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 595
    .line 596
    .line 597
    move-result-object v16

    .line 598
    const-string v17, "player_info"

    .line 599
    .line 600
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/v0;->p(Ljava/util/Map;)I

    .line 601
    .line 602
    .line 603
    move-result v0

    .line 604
    move-object/from16 v2, p2

    .line 605
    .line 606
    invoke-static {v0, v2, v7, v12}, Lcom/sgscq/vpn/cloud/m0;->F2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    iget v2, v1, Lcom/sgscq/vpn/v5;->c:I

    .line 611
    .line 612
    iget-object v1, v1, Lcom/sgscq/vpn/v5;->q:Ljava/lang/String;

    .line 613
    .line 614
    invoke-static {v2, v4, v5, v1}, Lcom/sgscq/vpn/cloud/m0;->F2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 615
    .line 616
    .line 617
    move-result-object v1

    .line 618
    invoke-static {v0, v1}, Lcom/sgscq/vpn/cloud/m0;->T1(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    .line 619
    .line 620
    .line 621
    move-result-object v18

    .line 622
    const-string v19, "drop_info"

    .line 623
    .line 624
    new-instance v20, Ljava/util/LinkedHashMap;

    .line 625
    .line 626
    invoke-direct/range {v20 .. v20}, Ljava/util/LinkedHashMap;-><init>()V

    .line 627
    .line 628
    .line 629
    const-string v21, "add_list"

    .line 630
    .line 631
    new-instance v22, Ljava/util/ArrayList;

    .line 632
    .line 633
    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 634
    .line 635
    .line 636
    const-string v23, "show_general_info"

    .line 637
    .line 638
    new-instance v24, Ljava/util/ArrayList;

    .line 639
    .line 640
    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 641
    .line 642
    .line 643
    filled-new-array/range {v13 .. v24}, [Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    const-string v1, "success"

    .line 648
    .line 649
    invoke-static {v1, v8, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    const-string v1, "fight_result"

    .line 654
    .line 655
    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    return-object v9
.end method

.method public static f(Ljava/util/LinkedHashMap;)Ljava/util/Map;
    .locals 1

    .line 1
    const-string v0, "delta_data"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Map;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_0
    return-object p0
.end method

.method public static g(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 3

    .line 1
    invoke-static {}, Lcom/sgscq/vpn/handler/v0;->x()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "relationship.userMakeFriendsInfo"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "user_make_friends"

    goto :goto_0

    :cond_0
    const-string v1, "relationship.userFriendsInfo"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "friends"

    goto :goto_0

    :cond_1
    const-string v1, "relationship.userEnemysInfo"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "enemys"

    goto :goto_0

    :cond_2
    const-string p0, "search_user"

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    const-string v1, "return_info"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static h(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/Map;

    .line 16
    .line 17
    const-string v1, "id"

    .line 18
    .line 19
    const-string v2, ""

    .line 20
    .line 21
    const-string v3, "user_id"

    .line 22
    .line 23
    invoke-static {v0, v1, v2, v3, p0}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public static j(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "relationship.userMakeFriendsInfo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "relationship.userFriendsInfo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "relationship.userEnemysInfo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "relationship.searchUser"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static l(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashSet;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v1, "cmn_modules"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "200001"

    return-object p0
.end method

.method public static n(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 10

    .line 1
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "code"

    const-string v3, "result"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v5, "msg"

    const-string v7, "error_code"

    move-object v2, v0

    move-object v4, v9

    move-object v6, p0

    move-object v8, v0

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ret"

    invoke-static {v2, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "msg"

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "success"

    invoke-static {v1, v9, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    const-string v1, "return_info"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static o()Ljava/util/LinkedHashMap;
    .locals 4

    .line 1
    invoke-static {}, Lcom/sgscq/vpn/handler/v0;->x()Ljava/util/LinkedHashMap;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "success"

    invoke-static {v3, v1, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "return_info"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static p(Ljava/util/Map;)I
    .locals 2

    .line 1
    const-string v0, "user_level"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Number;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method public static q(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object p1, p2

    :cond_1
    const-string p2, "userName"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "name"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "nickname"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "player_name"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "user_id"

    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "user_level"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "level"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "general_id"

    invoke-interface {p0, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "general_skin"

    invoke-interface {p0, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "user_general_skin"

    invoke-interface {p0, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "teamLeader"

    invoke-interface {p0, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "team_leader"

    invoke-interface {p0, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "head"

    invoke-interface {p0, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "avatar"

    invoke-interface {p0, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static r(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "200001"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p0, "GuestA"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string v0, "200002"

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const-string p0, "GuestB"

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    const-string v0, "300001"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    const-string p0, "FoeA"

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_2
    const-string v0, "Guest"

    .line 35
    .line 36
    invoke-static {v0, p0}, Lc/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public static s(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashSet;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/sgscq/vpn/handler/v0;->t(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/util/Map;

    .line 25
    .line 26
    const-string v1, "id"

    .line 27
    .line 28
    const-string v2, ""

    .line 29
    .line 30
    const-string v3, "user_id"

    .line 31
    .line 32
    invoke-static {p1, v1, v2, v3}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-object v0
.end method

.method public static t(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Ljava/util/List;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Ljava/util/List;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {p1, p0}, Lc/a;->o(Ljava/util/Map;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static u(Ljava/lang/String;Ljava/util/List;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "id"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "user_id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static v(Lcom/sgscq/vpn/v5;IZ)Ljava/util/LinkedHashMap;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/v5;->m(I)Ljava/util/LinkedHashMap;

    move-result-object p1

    const-string v0, "id"

    iget-object v1, p0, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "user_id"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "name"

    iget-object v1, p0, Lcom/sgscq/vpn/v5;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "user_name"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p0, p0, Lcom/sgscq/vpn/v5;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "level"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "user_level"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "isInvited"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "type"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public static w(Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/LinkedHashMap;)V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "result"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lcom/sgscq/vpn/handler/v0;->f(Ljava/util/LinkedHashMap;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Lcom/sgscq/vpn/handler/v0;->l(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/sgscq/vpn/handler/y0;->c(Ljava/util/List;Ljava/util/Map;)Lcom/sgscq/vpn/handler/j;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sgscq/vpn/handler/j;->b(Ljava/util/Map;)V

    invoke-virtual {p0, v0, v1}, Lcom/sgscq/vpn/handler/j;->a(Ljava/util/Map;Ljava/util/AbstractCollection;)V

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "delta_data"

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "cmn_modules"

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public static x()Ljava/util/LinkedHashMap;
    .locals 9

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "code"

    const-string v3, "result"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "msg"

    const-string v6, "success"

    const-string v7, "error_code"

    move-object v2, v0

    move-object v8, v0

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ret"

    invoke-static {v2, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public static y(Ljava/util/Map;)I
    .locals 5

    .line 1
    const v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    const-string v1, "team_position"

    .line 8
    .line 9
    const-string v2, "general_position"

    .line 10
    .line 11
    const-string v3, "position"

    .line 12
    .line 13
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_0
    const/4 v4, 0x3

    .line 20
    if-ge v3, v4, :cond_2

    .line 21
    .line 22
    aget-object v4, v1, v3

    .line 23
    .line 24
    invoke-static {p0, v4, v2}, Lc/a;->e(Ljava/util/Map;Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-lez v4, :cond_1

    .line 29
    .line 30
    return v4

    .line 31
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return v0
.end method

.method public static z(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/util/LinkedHashMap;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p1

    const-string v0, "user_id"

    const-string v2, "name"

    const-string v4, "user_name"

    const-string v6, "level"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "user_level"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "user_vip_level"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "general_id"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v13

    invoke-static {v13}, Lcom/sgscq/vpn/p5;->j1(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "isInvited"

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const-string v16, "type"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    filled-new-array/range {v0 .. v17}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "id"

    move-object/from16 v2, p0

    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/LinkedHashSet;)Ljava/util/LinkedHashMap;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/handler/v0;->a:Lcom/sgscq/vpn/handler/k0;

    iget-object v1, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->a()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4, p3}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    move-result-wide v6

    const-string v3, "user_gold"

    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->c()I

    move-result v4

    invoke-virtual {v0, v4, v3, p3}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v3

    const-string v4, "user_energy"

    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->b()I

    move-result v5

    invoke-virtual {v0, v5, v4, p3}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v4

    const-string v5, "user_power"

    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->d()I

    move-result v8

    invoke-virtual {v0, v8, v5, p3}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v5

    move-object v8, p1

    move-object v9, p3

    invoke-virtual/range {v1 .. v9}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/String;

    invoke-interface {p4, p3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    iget-object p4, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    invoke-virtual {p4, p2, p1, p3}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    return-object p1
.end method

.method public final i(Ljava/lang/String;Ljava/util/Map;)[B
    .locals 41

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    const-string v3, "relationship."

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v3, 0x0

    .line 20
    :goto_0
    const/4 v4, 0x0

    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    return-object v4

    .line 24
    :cond_1
    iget-object v3, v1, Lcom/sgscq/vpn/handler/v0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 25
    .line 26
    invoke-virtual {v3, v0}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v10

    .line 30
    iget-object v11, v3, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 31
    .line 32
    invoke-virtual {v11, v10}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-nez v4, :cond_2

    .line 37
    .line 38
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 39
    .line 40
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 41
    .line 42
    .line 43
    :cond_2
    move-object v12, v4

    .line 44
    const-string v4, "relationship.debugRescueFight"

    .line 45
    .line 46
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    const-string v13, "cmn"

    .line 51
    .line 52
    if-eqz v4, :cond_3

    .line 53
    .line 54
    invoke-static {}, Lcom/sgscq/vpn/cloud/m0;->Z2()Ljava/util/LinkedHashMap;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/sgscq/vpn/handler/v0;->f(Ljava/util/LinkedHashMap;)Ljava/util/Map;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v0}, Lcom/sgscq/vpn/handler/v0;->l(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashSet;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v1, v10, v2, v12, v4}, Lcom/sgscq/vpn/handler/v0;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/LinkedHashSet;)Ljava/util/LinkedHashMap;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-interface {v0, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v3, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    return-object v0

    .line 82
    :cond_3
    const-string v4, "search_user"

    .line 83
    .line 84
    const-string v5, "relationship.delUserRelationship"

    .line 85
    .line 86
    const-string v6, "relationship.requestFriend"

    .line 87
    .line 88
    const-string v7, "friends"

    .line 89
    .line 90
    const-string v8, "search_word"

    .line 91
    .line 92
    const-string v9, "relationship.fight"

    .line 93
    .line 94
    const-string v14, "relationship_friends"

    .line 95
    .line 96
    const-string v15, ""

    .line 97
    .line 98
    move-object/from16 v16, v3

    .line 99
    .line 100
    const-string v3, "enemys"

    .line 101
    .line 102
    move-object/from16 v17, v11

    .line 103
    .line 104
    const-string v11, "relationship.searchUser"

    .line 105
    .line 106
    move-object/from16 v18, v13

    .line 107
    .line 108
    const-string v13, "relationship.userEnemysInfo"

    .line 109
    .line 110
    move-object/from16 v19, v5

    .line 111
    .line 112
    const-string v5, "user_make_friends"

    .line 113
    .line 114
    move-object/from16 v20, v6

    .line 115
    .line 116
    const-string v6, "relationship.userFriendsInfo"

    .line 117
    .line 118
    move-object/from16 v21, v9

    .line 119
    .line 120
    const-string v9, "relationship.userMakeFriendsInfo"

    .line 121
    .line 122
    move-object/from16 v22, v4

    .line 123
    .line 124
    const-string v4, "type"

    .line 125
    .line 126
    move-object/from16 v23, v4

    .line 127
    .line 128
    const-string v4, "relationship.replyRequest"

    .line 129
    .line 130
    move-object/from16 v24, v4

    .line 131
    .line 132
    const-string v4, "player_id"

    .line 133
    .line 134
    move-object/from16 v25, v4

    .line 135
    .line 136
    const-string v4, "1"

    .line 137
    .line 138
    move-object/from16 v26, v4

    .line 139
    .line 140
    const-string v4, "other_id"

    .line 141
    .line 142
    move-object/from16 v27, v4

    .line 143
    .line 144
    const-string v4, "return_info"

    .line 145
    .line 146
    iget-object v0, v1, Lcom/sgscq/vpn/handler/v0;->b:Lm/e;

    .line 147
    .line 148
    if-eqz v0, :cond_11

    .line 149
    .line 150
    invoke-virtual {v0, v10}, Lm/e;->w(Ljava/lang/String;)Z

    .line 151
    .line 152
    .line 153
    move-result v28

    .line 154
    if-nez v28, :cond_5

    .line 155
    .line 156
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/v0;->j(Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_4

    .line 161
    .line 162
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/v0;->g(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    goto/16 :goto_5

    .line 167
    .line 168
    :cond_4
    const-string v0, "\u53ea\u6709\u5f53\u524d\u4e91\u7aef\u89d2\u8272\u53ef\u4ee5\u4f7f\u7528\u597d\u53cb\u548c\u5207\u78cb\u529f\u80fd"

    .line 169
    .line 170
    invoke-static {v0}, Lcom/sgscq/vpn/handler/v0;->n(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    goto/16 :goto_5

    .line 175
    .line 176
    :cond_5
    :try_start_0
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v9

    .line 180
    if-eqz v9, :cond_6

    .line 181
    .line 182
    invoke-static {}, Lcom/sgscq/vpn/handler/v0;->x()Ljava/util/LinkedHashMap;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {v0, v10}, Lm/e;->A(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    const/4 v6, 0x0

    .line 191
    new-array v6, v6, [Ljava/lang/Object;

    .line 192
    .line 193
    invoke-static {v5, v0, v6}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    move-object/from16 v40, v3

    .line 198
    .line 199
    move-object v3, v0

    .line 200
    move-object/from16 v0, v40

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_6
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    if-eqz v5, :cond_7

    .line 208
    .line 209
    invoke-virtual {v0, v10}, Lm/e;->l(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    new-instance v3, Ljava/util/ArrayList;

    .line 214
    .line 215
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 216
    .line 217
    .line 218
    invoke-interface {v12, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    invoke-static {}, Lcom/sgscq/vpn/handler/v0;->x()Ljava/util/LinkedHashMap;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    const/4 v5, 0x0

    .line 226
    new-array v5, v5, [Ljava/lang/Object;

    .line 227
    .line 228
    invoke-static {v7, v0, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    :goto_1
    move-object/from16 v40, v3

    .line 233
    .line 234
    move-object v3, v0

    .line 235
    move-object/from16 v0, v40

    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_7
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v5

    .line 242
    if-eqz v5, :cond_8

    .line 243
    .line 244
    invoke-static {}, Lcom/sgscq/vpn/handler/v0;->x()Ljava/util/LinkedHashMap;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    new-instance v5, Ljava/util/ArrayList;

    .line 249
    .line 250
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .line 252
    .line 253
    const/4 v6, 0x0

    .line 254
    new-array v6, v6, [Ljava/lang/Object;

    .line 255
    .line 256
    invoke-static {v3, v5, v6}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    :goto_2
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    goto/16 :goto_5

    .line 264
    .line 265
    :cond_8
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    if-eqz v3, :cond_9

    .line 270
    .line 271
    invoke-static {}, Lcom/sgscq/vpn/handler/v0;->x()Ljava/util/LinkedHashMap;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    move-object v5, v0

    .line 276
    move-object/from16 v0, p2

    .line 277
    .line 278
    invoke-interface {v0, v8, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    check-cast v0, Ljava/lang/String;

    .line 283
    .line 284
    invoke-virtual {v5, v10, v0}, Lm/e;->G(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    const/4 v5, 0x0

    .line 289
    new-array v5, v5, [Ljava/lang/Object;

    .line 290
    .line 291
    move-object/from16 v6, v22

    .line 292
    .line 293
    invoke-static {v6, v0, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    goto :goto_1

    .line 298
    :cond_9
    move-object v5, v0

    .line 299
    move-object/from16 v3, v21

    .line 300
    .line 301
    move-object/from16 v0, p2

    .line 302
    .line 303
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    if-eqz v3, :cond_a

    .line 308
    .line 309
    move-object/from16 v3, v27

    .line 310
    .line 311
    invoke-interface {v0, v3, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    check-cast v3, Ljava/lang/String;

    .line 316
    .line 317
    move-object/from16 v4, v25

    .line 318
    .line 319
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    check-cast v0, Ljava/lang/String;

    .line 324
    .line 325
    invoke-virtual {v5, v10, v0}, Lm/e;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/sgscq/vpn/v5;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-static {v12, v0, v10}, Lcom/sgscq/vpn/handler/v0;->e(Ljava/util/Map;Lcom/sgscq/vpn/v5;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    goto/16 :goto_5

    .line 334
    .line 335
    :cond_a
    move-object/from16 v6, v20

    .line 336
    .line 337
    move-object/from16 v4, v25

    .line 338
    .line 339
    move-object/from16 v3, v27

    .line 340
    .line 341
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v6

    .line 345
    if-eqz v6, :cond_b

    .line 346
    .line 347
    invoke-interface {v0, v3, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    check-cast v0, Ljava/lang/String;

    .line 352
    .line 353
    invoke-virtual {v5, v10}, Lm/e;->E(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    iget-object v3, v5, Lm/e;->b:Ljava/lang/Object;

    .line 357
    .line 358
    check-cast v3, Lcom/sgscq/vpn/cloud/z;

    .line 359
    .line 360
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 361
    .line 362
    .line 363
    const-string v4, "target_id"

    .line 364
    .line 365
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/z;->w(Ljava/lang/String;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 370
    .line 371
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 372
    .line 373
    .line 374
    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    sget-object v0, Lcom/sgscq/vpn/cloud/z;->c:La/o;

    .line 378
    .line 379
    invoke-virtual {v0, v5}, La/o;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    const-string v4, "/social/friend-requests"

    .line 384
    .line 385
    invoke-virtual {v3, v4, v0}, Lcom/sgscq/vpn/cloud/z;->Z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    goto :goto_3

    .line 389
    :cond_b
    move-object/from16 v6, v24

    .line 390
    .line 391
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v6

    .line 395
    if-eqz v6, :cond_d

    .line 396
    .line 397
    invoke-interface {v0, v3, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    check-cast v3, Ljava/lang/String;

    .line 402
    .line 403
    move-object/from16 v4, v23

    .line 404
    .line 405
    move-object/from16 v6, v26

    .line 406
    .line 407
    invoke-interface {v0, v4, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    invoke-static {v14, v12}, Lcom/sgscq/vpn/handler/v0;->t(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 416
    .line 417
    .line 418
    move-result-object v4

    .line 419
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 420
    .line 421
    .line 422
    move-result v4

    .line 423
    invoke-virtual {v5, v10, v3, v0}, Lm/e;->C(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 424
    .line 425
    .line 426
    invoke-static {}, Lcom/sgscq/vpn/handler/v0;->o()Ljava/util/LinkedHashMap;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    if-eqz v0, :cond_c

    .line 431
    .line 432
    invoke-virtual {v5, v10}, Lm/e;->l(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    new-instance v5, Ljava/util/ArrayList;

    .line 437
    .line 438
    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 439
    .line 440
    .line 441
    invoke-interface {v12, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 445
    .line 446
    .line 447
    move-result v0

    .line 448
    if-le v0, v4, :cond_c

    .line 449
    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/handler/v0;->k()Ljava/util/ArrayList;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    invoke-static {v0, v12, v3}, Lcom/sgscq/vpn/handler/v0;->w(Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 455
    .line 456
    .line 457
    :cond_c
    move-object v0, v3

    .line 458
    goto :goto_5

    .line 459
    :cond_d
    move-object/from16 v6, v19

    .line 460
    .line 461
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v6

    .line 465
    if-eqz v6, :cond_e

    .line 466
    .line 467
    invoke-interface {v0, v4, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v4

    .line 471
    check-cast v4, Ljava/lang/String;

    .line 472
    .line 473
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    check-cast v0, Ljava/lang/String;

    .line 478
    .line 479
    invoke-virtual {v5, v10, v0}, Lm/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    invoke-static {v14, v12}, Lcom/sgscq/vpn/handler/v0;->t(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 483
    .line 484
    .line 485
    move-result-object v3

    .line 486
    invoke-static {v0, v3}, Lcom/sgscq/vpn/handler/v0;->u(Ljava/lang/String;Ljava/util/List;)V

    .line 487
    .line 488
    .line 489
    :cond_e
    :goto_3
    invoke-static {}, Lcom/sgscq/vpn/handler/v0;->o()Ljava/util/LinkedHashMap;

    .line 490
    .line 491
    .line 492
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    goto :goto_5

    .line 494
    :catch_0
    move-exception v0

    .line 495
    const-string v3, "[CloudSocial] "

    .line 496
    .line 497
    const-string v4, " failed: "

    .line 498
    .line 499
    invoke-static {v3, v2, v4}, La/b0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    move-result-object v3

    .line 503
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v4

    .line 507
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v3

    .line 514
    const-string v4, "SGSCQ_SRV"

    .line 515
    .line 516
    invoke-static {v4, v3}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/v0;->j(Ljava/lang/String;)Z

    .line 520
    .line 521
    .line 522
    move-result v3

    .line 523
    if-eqz v3, :cond_f

    .line 524
    .line 525
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/v0;->g(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    goto :goto_5

    .line 530
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v2

    .line 534
    if-nez v2, :cond_10

    .line 535
    .line 536
    const-string v0, "\u4e91\u7aef\u597d\u53cb\u529f\u80fd\u6682\u65f6\u4e0d\u53ef\u7528"

    .line 537
    .line 538
    goto :goto_4

    .line 539
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    :goto_4
    invoke-static {v0}, Lcom/sgscq/vpn/handler/v0;->n(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    :goto_5
    invoke-static {v0}, Lcom/sgscq/vpn/handler/v0;->f(Ljava/util/LinkedHashMap;)Ljava/util/Map;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    invoke-static {v0}, Lcom/sgscq/vpn/handler/v0;->l(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashSet;

    .line 552
    .line 553
    .line 554
    move-result-object v3

    .line 555
    invoke-virtual {v1, v10, v2, v12, v3}, Lcom/sgscq/vpn/handler/v0;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/LinkedHashSet;)Ljava/util/LinkedHashMap;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    move-object/from16 v3, v18

    .line 560
    .line 561
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-object/from16 v2, v17

    .line 565
    .line 566
    invoke-virtual {v2, v10, v12}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 567
    .line 568
    .line 569
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    move-object/from16 v2, v16

    .line 574
    .line 575
    invoke-virtual {v2, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    return-object v0

    .line 580
    :cond_11
    move-object/from16 v1, v16

    .line 581
    .line 582
    move-object/from16 v29, v17

    .line 583
    .line 584
    move-object/from16 v30, v18

    .line 585
    .line 586
    move-object/from16 v32, v19

    .line 587
    .line 588
    move-object/from16 v33, v20

    .line 589
    .line 590
    move-object/from16 v34, v21

    .line 591
    .line 592
    move-object/from16 v31, v22

    .line 593
    .line 594
    move-object/from16 v35, v23

    .line 595
    .line 596
    move-object/from16 v36, v24

    .line 597
    .line 598
    move-object/from16 v37, v25

    .line 599
    .line 600
    move-object/from16 v38, v26

    .line 601
    .line 602
    move-object/from16 v39, v27

    .line 603
    .line 604
    iget-object v0, v1, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 605
    .line 606
    if-nez v0, :cond_12

    .line 607
    .line 608
    const/4 v0, 0x0

    .line 609
    goto :goto_6

    .line 610
    :cond_12
    invoke-static {v0}, Lcom/sgscq/vpn/p7;->h(Landroid/content/Context;)Lcom/sgscq/vpn/p7;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    invoke-virtual {v0}, Lcom/sgscq/vpn/p7;->i()V

    .line 615
    .line 616
    .line 617
    :goto_6
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 618
    .line 619
    .line 620
    move-result v9

    .line 621
    move-object/from16 v16, v1

    .line 622
    .line 623
    const-string v1, "GuestA"

    .line 624
    .line 625
    move-object/from16 v17, v8

    .line 626
    .line 627
    const-string v8, "200001"

    .line 628
    .line 629
    move-object/from16 v18, v11

    .line 630
    .line 631
    const-string v11, "relationship_invited"

    .line 632
    .line 633
    move-object/from16 v19, v3

    .line 634
    .line 635
    const-string v3, "user_id"

    .line 636
    .line 637
    move-object/from16 v20, v13

    .line 638
    .line 639
    const-string v13, "id"

    .line 640
    .line 641
    if-eqz v9, :cond_1d

    .line 642
    .line 643
    invoke-static {}, Lcom/sgscq/vpn/handler/v0;->x()Ljava/util/LinkedHashMap;

    .line 644
    .line 645
    .line 646
    move-result-object v2

    .line 647
    if-nez v0, :cond_17

    .line 648
    .line 649
    new-instance v0, Ljava/util/ArrayList;

    .line 650
    .line 651
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 652
    .line 653
    .line 654
    invoke-static {v11, v12}, Lcom/sgscq/vpn/handler/v0;->t(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 655
    .line 656
    .line 657
    move-result-object v6

    .line 658
    invoke-static {v12}, Lcom/sgscq/vpn/handler/v0;->p(Ljava/util/Map;)I

    .line 659
    .line 660
    .line 661
    move-result v7

    .line 662
    invoke-static {v8, v6}, Lcom/sgscq/vpn/handler/v0;->h(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 663
    .line 664
    .line 665
    move-result-object v9

    .line 666
    if-eqz v9, :cond_13

    .line 667
    .line 668
    const/4 v9, 0x1

    .line 669
    goto :goto_7

    .line 670
    :cond_13
    const/4 v9, 0x0

    .line 671
    :goto_7
    const/4 v11, 0x0

    .line 672
    invoke-static {v8, v1, v7, v9, v11}, Lcom/sgscq/vpn/handler/v0;->z(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/util/LinkedHashMap;

    .line 673
    .line 674
    .line 675
    move-result-object v1

    .line 676
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    .line 678
    .line 679
    const-string v1, "200002"

    .line 680
    .line 681
    invoke-static {v1, v6}, Lcom/sgscq/vpn/handler/v0;->h(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 682
    .line 683
    .line 684
    move-result-object v8

    .line 685
    if-eqz v8, :cond_14

    .line 686
    .line 687
    const/4 v8, 0x1

    .line 688
    goto :goto_8

    .line 689
    :cond_14
    move v8, v11

    .line 690
    :goto_8
    const-string v9, "GuestB"

    .line 691
    .line 692
    invoke-static {v1, v9, v7, v8, v11}, Lcom/sgscq/vpn/handler/v0;->z(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/util/LinkedHashMap;

    .line 693
    .line 694
    .line 695
    move-result-object v1

    .line 696
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    .line 698
    .line 699
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 700
    .line 701
    .line 702
    move-result-object v1

    .line 703
    :cond_15
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 704
    .line 705
    .line 706
    move-result v6

    .line 707
    if-eqz v6, :cond_16

    .line 708
    .line 709
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    move-result-object v6

    .line 713
    check-cast v6, Ljava/util/Map;

    .line 714
    .line 715
    invoke-static {v6, v13, v15, v3}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v8

    .line 719
    invoke-static {v8, v0}, Lcom/sgscq/vpn/handler/v0;->h(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 720
    .line 721
    .line 722
    move-result-object v9

    .line 723
    if-nez v9, :cond_15

    .line 724
    .line 725
    invoke-static {v8}, Lcom/sgscq/vpn/handler/v0;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v9

    .line 729
    invoke-static {v7, v6}, Lcom/sgscq/vpn/handler/v0;->A(ILjava/util/Map;)I

    .line 730
    .line 731
    .line 732
    move-result v6

    .line 733
    const/4 v11, 0x1

    .line 734
    const/4 v14, 0x0

    .line 735
    invoke-static {v8, v9, v6, v11, v14}, Lcom/sgscq/vpn/handler/v0;->z(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/util/LinkedHashMap;

    .line 736
    .line 737
    .line 738
    move-result-object v6

    .line 739
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    .line 741
    .line 742
    goto :goto_9

    .line 743
    :cond_16
    invoke-static {v0}, Lcom/sgscq/vpn/handler/v0;->a(Ljava/util/ArrayList;)V

    .line 744
    .line 745
    .line 746
    goto/16 :goto_c

    .line 747
    .line 748
    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    .line 749
    .line 750
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 751
    .line 752
    .line 753
    invoke-static {v14, v12}, Lcom/sgscq/vpn/handler/v0;->s(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashSet;

    .line 754
    .line 755
    .line 756
    move-result-object v3

    .line 757
    invoke-static {v11, v12}, Lcom/sgscq/vpn/handler/v0;->s(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashSet;

    .line 758
    .line 759
    .line 760
    move-result-object v6

    .line 761
    invoke-static {v12}, Lcom/sgscq/vpn/handler/v0;->p(Ljava/util/Map;)I

    .line 762
    .line 763
    .line 764
    move-result v7

    .line 765
    const-wide v8, 0x52454c4154494f4eL    # 2.1183853109339743E88

    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/sgscq/vpn/p7;->o(IJLjava/lang/String;)Ljava/util/List;

    .line 771
    .line 772
    .line 773
    move-result-object v7

    .line 774
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 775
    .line 776
    .line 777
    move-result-object v7

    .line 778
    :cond_18
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 779
    .line 780
    .line 781
    move-result v8

    .line 782
    if-eqz v8, :cond_19

    .line 783
    .line 784
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    move-result-object v8

    .line 788
    check-cast v8, Lcom/sgscq/vpn/v5;

    .line 789
    .line 790
    iget-object v9, v8, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 791
    .line 792
    invoke-interface {v3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 793
    .line 794
    .line 795
    move-result v9

    .line 796
    if-nez v9, :cond_18

    .line 797
    .line 798
    iget-object v9, v8, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 799
    .line 800
    invoke-virtual {v0, v9}, Lcom/sgscq/vpn/p7;->v(Ljava/lang/String;)I

    .line 801
    .line 802
    .line 803
    move-result v11

    .line 804
    invoke-interface {v6, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 805
    .line 806
    .line 807
    move-result v9

    .line 808
    invoke-static {v8, v11, v9}, Lcom/sgscq/vpn/handler/v0;->v(Lcom/sgscq/vpn/v5;IZ)Ljava/util/LinkedHashMap;

    .line 809
    .line 810
    .line 811
    move-result-object v8

    .line 812
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    .line 814
    .line 815
    goto :goto_a

    .line 816
    :cond_19
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 817
    .line 818
    .line 819
    move-result-object v6

    .line 820
    :cond_1a
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 821
    .line 822
    .line 823
    move-result v7

    .line 824
    if-eqz v7, :cond_1c

    .line 825
    .line 826
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 827
    .line 828
    .line 829
    move-result-object v7

    .line 830
    check-cast v7, Ljava/lang/String;

    .line 831
    .line 832
    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 833
    .line 834
    .line 835
    move-result v8

    .line 836
    if-nez v8, :cond_1a

    .line 837
    .line 838
    invoke-static {v7, v1}, Lcom/sgscq/vpn/handler/v0;->h(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 839
    .line 840
    .line 841
    move-result-object v8

    .line 842
    if-eqz v8, :cond_1b

    .line 843
    .line 844
    goto :goto_b

    .line 845
    :cond_1b
    invoke-virtual {v0, v7}, Lcom/sgscq/vpn/p7;->g(Ljava/lang/String;)Lcom/sgscq/vpn/v5;

    .line 846
    .line 847
    .line 848
    move-result-object v7

    .line 849
    if-eqz v7, :cond_1a

    .line 850
    .line 851
    iget-object v8, v7, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 852
    .line 853
    invoke-virtual {v0, v8}, Lcom/sgscq/vpn/p7;->v(Ljava/lang/String;)I

    .line 854
    .line 855
    .line 856
    move-result v8

    .line 857
    const/4 v9, 0x1

    .line 858
    invoke-static {v7, v8, v9}, Lcom/sgscq/vpn/handler/v0;->v(Lcom/sgscq/vpn/v5;IZ)Ljava/util/LinkedHashMap;

    .line 859
    .line 860
    .line 861
    move-result-object v7

    .line 862
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    .line 864
    .line 865
    goto :goto_b

    .line 866
    :cond_1c
    move-object v0, v1

    .line 867
    :goto_c
    const/4 v1, 0x0

    .line 868
    new-array v1, v1, [Ljava/lang/Object;

    .line 869
    .line 870
    invoke-static {v5, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 871
    .line 872
    .line 873
    move-result-object v0

    .line 874
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    .line 876
    .line 877
    goto/16 :goto_1a

    .line 878
    .line 879
    :cond_1d
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 880
    .line 881
    .line 882
    move-result v5

    .line 883
    if-eqz v5, :cond_25

    .line 884
    .line 885
    invoke-static {}, Lcom/sgscq/vpn/handler/v0;->x()Ljava/util/LinkedHashMap;

    .line 886
    .line 887
    .line 888
    move-result-object v2

    .line 889
    if-nez v0, :cond_20

    .line 890
    .line 891
    new-instance v0, Ljava/util/ArrayList;

    .line 892
    .line 893
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 894
    .line 895
    .line 896
    invoke-static {v12}, Lcom/sgscq/vpn/handler/v0;->p(Ljava/util/Map;)I

    .line 897
    .line 898
    .line 899
    move-result v5

    .line 900
    const/4 v6, 0x0

    .line 901
    invoke-static {v8, v1, v5, v6, v6}, Lcom/sgscq/vpn/handler/v0;->z(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/util/LinkedHashMap;

    .line 902
    .line 903
    .line 904
    move-result-object v1

    .line 905
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    .line 907
    .line 908
    invoke-static {v14, v12}, Lcom/sgscq/vpn/handler/v0;->t(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 909
    .line 910
    .line 911
    move-result-object v1

    .line 912
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 913
    .line 914
    .line 915
    move-result-object v1

    .line 916
    :cond_1e
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 917
    .line 918
    .line 919
    move-result v6

    .line 920
    if-eqz v6, :cond_1f

    .line 921
    .line 922
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 923
    .line 924
    .line 925
    move-result-object v6

    .line 926
    check-cast v6, Ljava/util/Map;

    .line 927
    .line 928
    invoke-static {v6, v13, v15, v3}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 929
    .line 930
    .line 931
    move-result-object v8

    .line 932
    invoke-static {v8, v0}, Lcom/sgscq/vpn/handler/v0;->h(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 933
    .line 934
    .line 935
    move-result-object v9

    .line 936
    if-nez v9, :cond_1e

    .line 937
    .line 938
    invoke-static {v8}, Lcom/sgscq/vpn/handler/v0;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 939
    .line 940
    .line 941
    move-result-object v9

    .line 942
    invoke-static {v5, v6}, Lcom/sgscq/vpn/handler/v0;->A(ILjava/util/Map;)I

    .line 943
    .line 944
    .line 945
    move-result v6

    .line 946
    const/4 v11, 0x0

    .line 947
    invoke-static {v8, v9, v6, v11, v11}, Lcom/sgscq/vpn/handler/v0;->z(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/util/LinkedHashMap;

    .line 948
    .line 949
    .line 950
    move-result-object v6

    .line 951
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    .line 953
    .line 954
    goto :goto_d

    .line 955
    :cond_1f
    invoke-static {v0}, Lcom/sgscq/vpn/handler/v0;->a(Ljava/util/ArrayList;)V

    .line 956
    .line 957
    .line 958
    const/4 v1, 0x0

    .line 959
    goto :goto_10

    .line 960
    :cond_20
    new-instance v1, Ljava/util/ArrayList;

    .line 961
    .line 962
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 963
    .line 964
    .line 965
    invoke-static {v14, v12}, Lcom/sgscq/vpn/handler/v0;->t(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 966
    .line 967
    .line 968
    move-result-object v5

    .line 969
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 970
    .line 971
    .line 972
    move-result-object v5

    .line 973
    :cond_21
    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 974
    .line 975
    .line 976
    move-result v6

    .line 977
    if-eqz v6, :cond_24

    .line 978
    .line 979
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 980
    .line 981
    .line 982
    move-result-object v6

    .line 983
    check-cast v6, Ljava/util/Map;

    .line 984
    .line 985
    invoke-static {v6, v13, v15, v3}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 986
    .line 987
    .line 988
    move-result-object v8

    .line 989
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 990
    .line 991
    .line 992
    move-result v9

    .line 993
    if-nez v9, :cond_21

    .line 994
    .line 995
    invoke-static {v8, v1}, Lcom/sgscq/vpn/handler/v0;->h(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 996
    .line 997
    .line 998
    move-result-object v9

    .line 999
    if-eqz v9, :cond_22

    .line 1000
    .line 1001
    goto :goto_e

    .line 1002
    :cond_22
    invoke-virtual {v0, v8}, Lcom/sgscq/vpn/p7;->g(Ljava/lang/String;)Lcom/sgscq/vpn/v5;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v9

    .line 1006
    if-eqz v9, :cond_23

    .line 1007
    .line 1008
    iget-object v6, v9, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 1009
    .line 1010
    invoke-virtual {v0, v6}, Lcom/sgscq/vpn/p7;->v(Ljava/lang/String;)I

    .line 1011
    .line 1012
    .line 1013
    move-result v6

    .line 1014
    const/4 v8, 0x0

    .line 1015
    invoke-static {v9, v6, v8}, Lcom/sgscq/vpn/handler/v0;->v(Lcom/sgscq/vpn/v5;IZ)Ljava/util/LinkedHashMap;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v6

    .line 1019
    goto :goto_f

    .line 1020
    :cond_23
    const/4 v9, 0x0

    .line 1021
    const-string v11, "name"

    .line 1022
    .line 1023
    invoke-static {v8}, Lcom/sgscq/vpn/handler/v0;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v14

    .line 1027
    invoke-interface {v6, v11, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v11

    .line 1031
    const-string v14, "user_name"

    .line 1032
    .line 1033
    invoke-interface {v6, v14, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v11

    .line 1037
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v11

    .line 1041
    invoke-static {v12}, Lcom/sgscq/vpn/handler/v0;->p(Ljava/util/Map;)I

    .line 1042
    .line 1043
    .line 1044
    move-result v14

    .line 1045
    invoke-static {v14, v6}, Lcom/sgscq/vpn/handler/v0;->A(ILjava/util/Map;)I

    .line 1046
    .line 1047
    .line 1048
    move-result v6

    .line 1049
    invoke-static {v8, v11, v6, v9, v9}, Lcom/sgscq/vpn/handler/v0;->z(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/util/LinkedHashMap;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v6

    .line 1053
    :goto_f
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1054
    .line 1055
    .line 1056
    goto :goto_e

    .line 1057
    :cond_24
    const/4 v0, 0x0

    .line 1058
    move-object/from16 v40, v1

    .line 1059
    .line 1060
    move v1, v0

    .line 1061
    move-object/from16 v0, v40

    .line 1062
    .line 1063
    :goto_10
    new-array v1, v1, [Ljava/lang/Object;

    .line 1064
    .line 1065
    invoke-static {v7, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v0

    .line 1069
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    .line 1071
    .line 1072
    goto/16 :goto_1a

    .line 1073
    .line 1074
    :cond_25
    move-object/from16 v1, v20

    .line 1075
    .line 1076
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1077
    .line 1078
    .line 1079
    move-result v1

    .line 1080
    const/4 v3, 0x2

    .line 1081
    if-eqz v1, :cond_26

    .line 1082
    .line 1083
    invoke-static {}, Lcom/sgscq/vpn/handler/v0;->x()Ljava/util/LinkedHashMap;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v2

    .line 1087
    new-instance v0, Ljava/util/ArrayList;

    .line 1088
    .line 1089
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1090
    .line 1091
    .line 1092
    const-string v1, "300001"

    .line 1093
    .line 1094
    const-string v5, "FoeA"

    .line 1095
    .line 1096
    const/4 v6, 0x1

    .line 1097
    const/4 v7, 0x0

    .line 1098
    invoke-static {v1, v5, v6, v7, v3}, Lcom/sgscq/vpn/handler/v0;->z(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/util/LinkedHashMap;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v1

    .line 1102
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1103
    .line 1104
    .line 1105
    new-array v1, v7, [Ljava/lang/Object;

    .line 1106
    .line 1107
    move-object/from16 v3, v19

    .line 1108
    .line 1109
    invoke-static {v3, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v0

    .line 1113
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    .line 1115
    .line 1116
    goto/16 :goto_1a

    .line 1117
    .line 1118
    :cond_26
    move-object/from16 v1, v18

    .line 1119
    .line 1120
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1121
    .line 1122
    .line 1123
    move-result v1

    .line 1124
    if-eqz v1, :cond_2a

    .line 1125
    .line 1126
    move-object/from16 v1, p2

    .line 1127
    .line 1128
    move-object/from16 v3, v17

    .line 1129
    .line 1130
    invoke-interface {v1, v3, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v0

    .line 1134
    check-cast v0, Ljava/lang/String;

    .line 1135
    .line 1136
    invoke-static {}, Lcom/sgscq/vpn/handler/v0;->x()Ljava/util/LinkedHashMap;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v2

    .line 1140
    new-instance v1, Ljava/util/ArrayList;

    .line 1141
    .line 1142
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1143
    .line 1144
    .line 1145
    if-nez v0, :cond_27

    .line 1146
    .line 1147
    goto :goto_11

    .line 1148
    :cond_27
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v15

    .line 1152
    :goto_11
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 1153
    .line 1154
    .line 1155
    move-result v0

    .line 1156
    const-string v3, "Player"

    .line 1157
    .line 1158
    const-string v5, "100001"

    .line 1159
    .line 1160
    if-nez v0, :cond_29

    .line 1161
    .line 1162
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v0

    .line 1166
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v6

    .line 1170
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1171
    .line 1172
    .line 1173
    move-result v0

    .line 1174
    if-nez v0, :cond_29

    .line 1175
    .line 1176
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1177
    .line 1178
    .line 1179
    move-result v0

    .line 1180
    if-eqz v0, :cond_28

    .line 1181
    .line 1182
    goto :goto_12

    .line 1183
    :cond_28
    const/4 v0, 0x0

    .line 1184
    goto :goto_13

    .line 1185
    :cond_29
    :goto_12
    const/4 v0, 0x1

    .line 1186
    const/4 v6, 0x0

    .line 1187
    invoke-static {v5, v3, v0, v6, v6}, Lcom/sgscq/vpn/handler/v0;->z(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/util/LinkedHashMap;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v0

    .line 1191
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1192
    .line 1193
    .line 1194
    move v0, v6

    .line 1195
    :goto_13
    new-array v0, v0, [Ljava/lang/Object;

    .line 1196
    .line 1197
    move-object/from16 v3, v31

    .line 1198
    .line 1199
    invoke-static {v3, v1, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v0

    .line 1203
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    .line 1205
    .line 1206
    goto/16 :goto_1a

    .line 1207
    .line 1208
    :cond_2a
    move-object/from16 v1, p2

    .line 1209
    .line 1210
    move-object/from16 v3, v34

    .line 1211
    .line 1212
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1213
    .line 1214
    .line 1215
    move-result v3

    .line 1216
    if-eqz v3, :cond_2e

    .line 1217
    .line 1218
    move-object/from16 v3, v39

    .line 1219
    .line 1220
    invoke-interface {v1, v3, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v2

    .line 1224
    check-cast v2, Ljava/lang/String;

    .line 1225
    .line 1226
    move-object/from16 v5, v37

    .line 1227
    .line 1228
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v1

    .line 1232
    check-cast v1, Ljava/lang/String;

    .line 1233
    .line 1234
    if-nez v0, :cond_2b

    .line 1235
    .line 1236
    const/4 v2, 0x0

    .line 1237
    goto :goto_14

    .line 1238
    :cond_2b
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/p7;->g(Ljava/lang/String;)Lcom/sgscq/vpn/v5;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v2

    .line 1242
    :goto_14
    if-nez v2, :cond_2c

    .line 1243
    .line 1244
    if-eqz v0, :cond_2c

    .line 1245
    .line 1246
    invoke-static {v12}, Lcom/sgscq/vpn/handler/v0;->p(Ljava/util/Map;)I

    .line 1247
    .line 1248
    .line 1249
    move-result v5

    .line 1250
    const/4 v6, 0x1

    .line 1251
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v3

    .line 1255
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 1256
    .line 1257
    .line 1258
    move-result v3

    .line 1259
    int-to-long v7, v3

    .line 1260
    move-object v4, v0

    .line 1261
    move-object v9, v10

    .line 1262
    invoke-virtual/range {v4 .. v9}, Lcom/sgscq/vpn/p7;->n(IIJLjava/lang/String;)Ljava/util/List;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v0

    .line 1266
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 1267
    .line 1268
    .line 1269
    move-result v3

    .line 1270
    if-nez v3, :cond_2c

    .line 1271
    .line 1272
    const/4 v2, 0x0

    .line 1273
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v0

    .line 1277
    move-object v2, v0

    .line 1278
    check-cast v2, Lcom/sgscq/vpn/v5;

    .line 1279
    .line 1280
    :cond_2c
    if-nez v2, :cond_2d

    .line 1281
    .line 1282
    invoke-static {v1}, Lcom/sgscq/vpn/handler/v0;->d(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v0

    .line 1286
    goto :goto_15

    .line 1287
    :cond_2d
    invoke-static {v12, v2, v10}, Lcom/sgscq/vpn/handler/v0;->e(Ljava/util/Map;Lcom/sgscq/vpn/v5;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v0

    .line 1291
    goto :goto_15

    .line 1292
    :cond_2e
    move-object/from16 v0, v33

    .line 1293
    .line 1294
    move-object/from16 v5, v37

    .line 1295
    .line 1296
    move-object/from16 v3, v39

    .line 1297
    .line 1298
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1299
    .line 1300
    .line 1301
    move-result v0

    .line 1302
    if-eqz v0, :cond_30

    .line 1303
    .line 1304
    invoke-interface {v1, v3, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v0

    .line 1308
    check-cast v0, Ljava/lang/String;

    .line 1309
    .line 1310
    invoke-static {v0}, Lcom/sgscq/vpn/handler/v0;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v0

    .line 1314
    invoke-static {v11, v12}, Lcom/sgscq/vpn/handler/v0;->t(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v1

    .line 1318
    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/v0;->h(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v2

    .line 1322
    if-nez v2, :cond_2f

    .line 1323
    .line 1324
    invoke-static {v0}, Lcom/sgscq/vpn/handler/v0;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v2

    .line 1328
    invoke-static {v12}, Lcom/sgscq/vpn/handler/v0;->p(Ljava/util/Map;)I

    .line 1329
    .line 1330
    .line 1331
    move-result v3

    .line 1332
    const/4 v4, 0x1

    .line 1333
    const/4 v5, 0x0

    .line 1334
    invoke-static {v0, v2, v3, v4, v5}, Lcom/sgscq/vpn/handler/v0;->z(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/util/LinkedHashMap;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v0

    .line 1338
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1339
    .line 1340
    .line 1341
    :cond_2f
    invoke-interface {v12, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    .line 1343
    .line 1344
    invoke-static {}, Lcom/sgscq/vpn/handler/v0;->o()Ljava/util/LinkedHashMap;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v0

    .line 1348
    :goto_15
    move-object v2, v0

    .line 1349
    goto/16 :goto_1a

    .line 1350
    .line 1351
    :cond_30
    move-object/from16 v0, v36

    .line 1352
    .line 1353
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1354
    .line 1355
    .line 1356
    move-result v6

    .line 1357
    if-eqz v6, :cond_3a

    .line 1358
    .line 1359
    invoke-static {v14, v12}, Lcom/sgscq/vpn/handler/v0;->t(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v4

    .line 1363
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 1364
    .line 1365
    .line 1366
    move-result v4

    .line 1367
    invoke-interface {v1, v3, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v3

    .line 1371
    check-cast v3, Ljava/lang/String;

    .line 1372
    .line 1373
    move-object/from16 v5, v35

    .line 1374
    .line 1375
    move-object/from16 v6, v38

    .line 1376
    .line 1377
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v7

    .line 1381
    check-cast v7, Ljava/lang/String;

    .line 1382
    .line 1383
    invoke-static {v3}, Lcom/sgscq/vpn/handler/v0;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v3

    .line 1387
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v7

    .line 1391
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1392
    .line 1393
    .line 1394
    move-result v7

    .line 1395
    if-eqz v7, :cond_37

    .line 1396
    .line 1397
    invoke-static {v14, v12}, Lcom/sgscq/vpn/handler/v0;->t(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v7

    .line 1401
    invoke-static {v3, v7}, Lcom/sgscq/vpn/handler/v0;->h(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v8

    .line 1405
    if-nez v8, :cond_35

    .line 1406
    .line 1407
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 1408
    .line 1409
    .line 1410
    move-result v8

    .line 1411
    invoke-static {v12}, Lcom/sgscq/vpn/cloud/m0;->n2(Ljava/util/Map;)I

    .line 1412
    .line 1413
    .line 1414
    move-result v9

    .line 1415
    const/16 v13, 0xf

    .line 1416
    .line 1417
    invoke-static {v13, v9}, Ljava/lang/Math;->min(II)I

    .line 1418
    .line 1419
    .line 1420
    move-result v13

    .line 1421
    const/4 v15, 0x0

    .line 1422
    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    .line 1423
    .line 1424
    .line 1425
    move-result v13

    .line 1426
    if-nez v13, :cond_31

    .line 1427
    .line 1428
    const/16 v13, 0x14

    .line 1429
    .line 1430
    goto :goto_16

    .line 1431
    :cond_31
    const/4 v15, 0x1

    .line 1432
    if-ne v13, v15, :cond_32

    .line 1433
    .line 1434
    const/16 v13, 0x1e

    .line 1435
    .line 1436
    goto :goto_16

    .line 1437
    :cond_32
    const/4 v15, 0x2

    .line 1438
    if-ne v13, v15, :cond_33

    .line 1439
    .line 1440
    const/16 v13, 0x28

    .line 1441
    .line 1442
    goto :goto_16

    .line 1443
    :cond_33
    mul-int/lit8 v13, v13, 0x5

    .line 1444
    .line 1445
    add-int/lit8 v13, v13, 0x28

    .line 1446
    .line 1447
    :goto_16
    const/4 v15, 0x0

    .line 1448
    invoke-static {v9, v15}, Lcom/sgscq/vpn/cloud/m0;->d3(ILandroid/content/Context;)Ljava/util/Map;

    .line 1449
    .line 1450
    .line 1451
    move-result-object v9

    .line 1452
    if-nez v9, :cond_34

    .line 1453
    .line 1454
    goto :goto_17

    .line 1455
    :cond_34
    const-string v15, "friend_limit"

    .line 1456
    .line 1457
    invoke-interface {v9, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1458
    .line 1459
    .line 1460
    move-result-object v9

    .line 1461
    invoke-static {v9, v13}, Lcom/sgscq/vpn/cloud/m0;->X1(Ljava/lang/Object;I)I

    .line 1462
    .line 1463
    .line 1464
    move-result v9

    .line 1465
    const/4 v13, 0x0

    .line 1466
    invoke-static {v13, v9}, Ljava/lang/Math;->max(II)I

    .line 1467
    .line 1468
    .line 1469
    move-result v13

    .line 1470
    :goto_17
    if-lt v8, v13, :cond_35

    .line 1471
    .line 1472
    const-string v3, "\u597d\u53cb\u6570\u91cf\u5df2\u8fbeVIP\u4e0a\u9650"

    .line 1473
    .line 1474
    invoke-static {v3}, Lcom/sgscq/vpn/handler/v0;->n(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v3

    .line 1478
    goto :goto_18

    .line 1479
    :cond_35
    invoke-static {v3, v7}, Lcom/sgscq/vpn/handler/v0;->h(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v8

    .line 1483
    if-nez v8, :cond_36

    .line 1484
    .line 1485
    invoke-static {v3}, Lcom/sgscq/vpn/handler/v0;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v8

    .line 1489
    invoke-static {v12}, Lcom/sgscq/vpn/handler/v0;->p(Ljava/util/Map;)I

    .line 1490
    .line 1491
    .line 1492
    move-result v9

    .line 1493
    const/4 v13, 0x0

    .line 1494
    invoke-static {v3, v8, v9, v13, v13}, Lcom/sgscq/vpn/handler/v0;->z(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/util/LinkedHashMap;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v8

    .line 1498
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1499
    .line 1500
    .line 1501
    :cond_36
    invoke-interface {v12, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    .line 1503
    .line 1504
    :cond_37
    invoke-static {v11, v12}, Lcom/sgscq/vpn/handler/v0;->t(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1505
    .line 1506
    .line 1507
    move-result-object v7

    .line 1508
    invoke-static {v3, v7}, Lcom/sgscq/vpn/handler/v0;->u(Ljava/lang/String;Ljava/util/List;)V

    .line 1509
    .line 1510
    .line 1511
    invoke-static {}, Lcom/sgscq/vpn/handler/v0;->o()Ljava/util/LinkedHashMap;

    .line 1512
    .line 1513
    .line 1514
    move-result-object v3

    .line 1515
    :goto_18
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1516
    .line 1517
    .line 1518
    move-result v0

    .line 1519
    if-eqz v0, :cond_38

    .line 1520
    .line 1521
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    .line 1523
    .line 1524
    move-result-object v0

    .line 1525
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1526
    .line 1527
    .line 1528
    move-result v0

    .line 1529
    if-eqz v0, :cond_38

    .line 1530
    .line 1531
    const/4 v0, 0x1

    .line 1532
    goto :goto_19

    .line 1533
    :cond_38
    const/4 v0, 0x0

    .line 1534
    :goto_19
    if-eqz v0, :cond_39

    .line 1535
    .line 1536
    invoke-static {v14, v12}, Lcom/sgscq/vpn/handler/v0;->t(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1537
    .line 1538
    .line 1539
    move-result-object v0

    .line 1540
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1541
    .line 1542
    .line 1543
    move-result v0

    .line 1544
    if-le v0, v4, :cond_39

    .line 1545
    .line 1546
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/handler/v0;->k()Ljava/util/ArrayList;

    .line 1547
    .line 1548
    .line 1549
    move-result-object v0

    .line 1550
    invoke-static {v0, v12, v3}, Lcom/sgscq/vpn/handler/v0;->w(Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/LinkedHashMap;)V

    .line 1551
    .line 1552
    .line 1553
    :cond_39
    move-object v2, v3

    .line 1554
    goto :goto_1a

    .line 1555
    :cond_3a
    move-object/from16 v0, v32

    .line 1556
    .line 1557
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1558
    .line 1559
    .line 1560
    move-result v0

    .line 1561
    if-eqz v0, :cond_3b

    .line 1562
    .line 1563
    invoke-interface {v1, v5, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    .line 1565
    .line 1566
    move-result-object v0

    .line 1567
    check-cast v0, Ljava/lang/String;

    .line 1568
    .line 1569
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    .line 1571
    .line 1572
    move-result-object v0

    .line 1573
    check-cast v0, Ljava/lang/String;

    .line 1574
    .line 1575
    invoke-static {v0}, Lcom/sgscq/vpn/handler/v0;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 1576
    .line 1577
    .line 1578
    move-result-object v0

    .line 1579
    invoke-static {v14, v12}, Lcom/sgscq/vpn/handler/v0;->t(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1580
    .line 1581
    .line 1582
    move-result-object v1

    .line 1583
    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/v0;->u(Ljava/lang/String;Ljava/util/List;)V

    .line 1584
    .line 1585
    .line 1586
    invoke-static {}, Lcom/sgscq/vpn/handler/v0;->o()Ljava/util/LinkedHashMap;

    .line 1587
    .line 1588
    .line 1589
    move-result-object v2

    .line 1590
    goto :goto_1a

    .line 1591
    :cond_3b
    invoke-static {}, Lcom/sgscq/vpn/handler/v0;->x()Ljava/util/LinkedHashMap;

    .line 1592
    .line 1593
    .line 1594
    move-result-object v2

    .line 1595
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1596
    .line 1597
    const/4 v1, 0x0

    .line 1598
    new-array v1, v1, [Ljava/lang/Object;

    .line 1599
    .line 1600
    const-string v3, "success"

    .line 1601
    .line 1602
    invoke-static {v3, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1603
    .line 1604
    .line 1605
    move-result-object v0

    .line 1606
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1607
    .line 1608
    .line 1609
    :goto_1a
    invoke-static {v2}, Lcom/sgscq/vpn/handler/v0;->f(Ljava/util/LinkedHashMap;)Ljava/util/Map;

    .line 1610
    .line 1611
    .line 1612
    move-result-object v0

    .line 1613
    invoke-static {v2}, Lcom/sgscq/vpn/handler/v0;->l(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashSet;

    .line 1614
    .line 1615
    .line 1616
    move-result-object v1

    .line 1617
    move-object/from16 v3, p0

    .line 1618
    .line 1619
    move-object/from16 v4, v16

    .line 1620
    .line 1621
    invoke-virtual {v3, v10, v0, v12, v1}, Lcom/sgscq/vpn/handler/v0;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/LinkedHashSet;)Ljava/util/LinkedHashMap;

    .line 1622
    .line 1623
    .line 1624
    move-result-object v0

    .line 1625
    move-object/from16 v1, v30

    .line 1626
    .line 1627
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1628
    .line 1629
    .line 1630
    move-object/from16 v1, v29

    .line 1631
    .line 1632
    invoke-virtual {v1, v10, v12}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 1633
    .line 1634
    .line 1635
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 1636
    .line 1637
    .line 1638
    move-result-object v0

    .line 1639
    invoke-virtual {v4, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 1640
    .line 1641
    .line 1642
    move-result-object v0

    .line 1643
    return-object v0
.end method

.method public final k()Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/sgscq/vpn/handler/v0;->a:Lcom/sgscq/vpn/handler/k0;

    iget-object v1, v1, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sgscq/vpn/w1;->V1()Lcom/sgscq/vpn/a7;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/sgscq/vpn/a7;->a()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/sgscq/vpn/a7;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    return-object v0
.end method
