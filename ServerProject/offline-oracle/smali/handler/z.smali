.class public final Lcom/sgscq/vpn/handler/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/sgscq/vpn/handler/k0;


# direct methods
.method public constructor <init>(Lcom/sgscq/vpn/handler/k0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/handler/z;->a:Lcom/sgscq/vpn/handler/k0;

    return-void
.end method

.method public static a(Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 5

    .line 1
    const-string v0, "pk_id"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Ljava/util/Map;

    .line 28
    .line 29
    invoke-static {v4, v0, v1, v2}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static b(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 26

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const-string v4, "evolution_id"

    .line 6
    .line 7
    invoke-static {v4, v7}, Lcom/sgscq/vpn/handler/z;->r(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0, v6}, Lcom/sgscq/vpn/handler/z;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v8

    .line 15
    const/high16 v0, -0x80000000

    .line 16
    .line 17
    const-string v15, "status"

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez v8, :cond_0

    .line 21
    .line 22
    move v14, v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {v8, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v2, v1}, Lcom/sgscq/vpn/handler/z;->u(Ljava/lang/Object;I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    move v14, v2

    .line 33
    :goto_0
    const-string v13, "evolution_level"

    .line 34
    .line 35
    if-nez v8, :cond_1

    .line 36
    .line 37
    move v12, v0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v2, v1}, Lcom/sgscq/vpn/handler/z;->u(Ljava/lang/Object;I)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    move v12, v2

    .line 48
    :goto_1
    const-string v11, "sub_level"

    .line 49
    .line 50
    if-nez v8, :cond_2

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/z;->u(Ljava/lang/Object;I)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    :goto_2
    move v10, v0

    .line 62
    invoke-static {v4, v7}, Lcom/sgscq/vpn/handler/z;->r(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    invoke-static {v9, v6}, Lcom/sgscq/vpn/handler/z;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v5, "surrender_status"

    .line 71
    .line 72
    const/4 v3, 0x1

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    move-object v9, v0

    .line 76
    move/from16 v24, v3

    .line 77
    .line 78
    move-object/from16 v25, v5

    .line 79
    .line 80
    move v3, v10

    .line 81
    move-object v0, v11

    .line 82
    move v1, v12

    .line 83
    move-object v4, v13

    .line 84
    move v5, v14

    .line 85
    move-object v2, v15

    .line 86
    goto/16 :goto_4

    .line 87
    .line 88
    :cond_3
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 89
    .line 90
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v0, "EvolutionInfo"

    .line 94
    .line 95
    const-string v16, "pk_id"

    .line 96
    .line 97
    move-object/from16 v1, p0

    .line 98
    .line 99
    move-object/from16 v23, v2

    .line 100
    .line 101
    move/from16 v24, v3

    .line 102
    .line 103
    move-object/from16 v3, v16

    .line 104
    .line 105
    move-object/from16 v25, v5

    .line 106
    .line 107
    move-object v5, v9

    .line 108
    invoke-static/range {v0 .. v5}, Lc/a;->x(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v0, "general_id"

    .line 112
    .line 113
    invoke-static {v0, v7}, Lcom/sgscq/vpn/handler/z;->r(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_4

    .line 122
    .line 123
    move-object/from16 v18, v9

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_4
    move-object/from16 v18, v1

    .line 127
    .line 128
    :goto_3
    move-object/from16 v16, v23

    .line 129
    .line 130
    move-object/from16 v17, v0

    .line 131
    .line 132
    move/from16 v19, v24

    .line 133
    .line 134
    move-object/from16 v20, v13

    .line 135
    .line 136
    move/from16 v21, v24

    .line 137
    .line 138
    move-object/from16 v22, v11

    .line 139
    .line 140
    invoke-static/range {v16 .. v22}, Lc/a;->z(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const-string v0, "fate_ids"

    .line 144
    .line 145
    const-string v1, "[]"

    .line 146
    .line 147
    const/4 v2, 0x0

    .line 148
    move-object/from16 v9, v23

    .line 149
    .line 150
    move v3, v10

    .line 151
    move-object v10, v0

    .line 152
    move-object v0, v11

    .line 153
    move-object v11, v1

    .line 154
    move v1, v12

    .line 155
    move/from16 v12, v24

    .line 156
    .line 157
    move-object v4, v13

    .line 158
    move-object v13, v15

    .line 159
    move v5, v14

    .line 160
    move v14, v2

    .line 161
    move-object v2, v15

    .line 162
    move-object/from16 v15, v25

    .line 163
    .line 164
    invoke-static/range {v9 .. v15}, Lc/a;->z(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/z;->f(Ljava/util/Map;)Ljava/util/List;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    :goto_4
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    invoke-interface {v9, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    move/from16 v10, v24

    .line 186
    .line 187
    invoke-static {v7, v10}, Lcom/sgscq/vpn/handler/z;->u(Ljava/lang/Object;I)I

    .line 188
    .line 189
    .line 190
    move-result v7

    .line 191
    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    .line 192
    .line 193
    .line 194
    move-result v7

    .line 195
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    invoke-interface {v9, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    invoke-static {v7, v10}, Lcom/sgscq/vpn/handler/z;->u(Ljava/lang/Object;I)I

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    .line 211
    .line 212
    .line 213
    move-result v7

    .line 214
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    invoke-interface {v9, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-object/from16 v7, v25

    .line 222
    .line 223
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v11

    .line 227
    const/4 v12, 0x0

    .line 228
    invoke-static {v11, v12}, Lcom/sgscq/vpn/handler/z;->u(Ljava/lang/Object;I)I

    .line 229
    .line 230
    .line 231
    move-result v11

    .line 232
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    .line 234
    .line 235
    move-result-object v11

    .line 236
    invoke-interface {v9, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    invoke-static {}, Lcom/sgscq/vpn/handler/z;->v()Ljava/util/LinkedHashMap;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    if-eqz v8, :cond_6

    .line 244
    .line 245
    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-static {v2, v12}, Lcom/sgscq/vpn/handler/z;->u(Ljava/lang/Object;I)I

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    if-ne v5, v2, :cond_6

    .line 254
    .line 255
    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-static {v2, v12}, Lcom/sgscq/vpn/handler/z;->u(Ljava/lang/Object;I)I

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    if-ne v1, v2, :cond_6

    .line 264
    .line 265
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-static {v0, v12}, Lcom/sgscq/vpn/handler/z;->u(Ljava/lang/Object;I)I

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    if-eq v3, v0, :cond_5

    .line 274
    .line 275
    goto :goto_5

    .line 276
    :cond_5
    move v3, v12

    .line 277
    goto :goto_6

    .line 278
    :cond_6
    :goto_5
    move v3, v10

    .line 279
    :goto_6
    if-eqz v3, :cond_7

    .line 280
    .line 281
    invoke-static {v6, v9}, Lcom/sgscq/vpn/handler/z;->x(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    const-string v1, "delta_data"

    .line 286
    .line 287
    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    :cond_7
    return-object v7
.end method

.method public static c(IILjava/util/Map;)Ljava/util/ArrayList;
    .locals 1

    .line 1
    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p2, p0, Ljava/util/List;

    if-eqz p2, :cond_1

    check-cast p0, Ljava/util/List;

    if-ltz p1, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of p2, p0, Ljava/util/Map;

    if-eqz p2, :cond_2

    check-cast p0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_3

    return-object v0

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1}, Lcom/sgscq/vpn/handler/z;->d(Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-object p1
.end method

.method public static d(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sgscq/vpn/handler/z;->d(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    instance-of v0, p0, Ljava/util/Map;

    if-nez v0, :cond_2

    return-void

    :cond_2
    check-cast p0, Ljava/util/Map;

    const-string v0, "value"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sgscq/vpn/handler/z;->d(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_3
    const-string v0, "buff_type"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public static e(Ljava/util/ArrayList;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 14

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_b

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/sgscq/vpn/handler/y;

    .line 21
    .line 22
    iget v2, v1, Lcom/sgscq/vpn/handler/y;->c:I

    .line 23
    .line 24
    const/16 v3, 0x8

    .line 25
    .line 26
    const/4 v4, 0x6

    .line 27
    if-ne v2, v4, :cond_1

    .line 28
    .line 29
    const-string v2, "GeneralSoul"

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v5, 0x5

    .line 33
    if-ne v2, v5, :cond_2

    .line 34
    .line 35
    const-string v2, "Item"

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    if-ne v2, v3, :cond_3

    .line 39
    .line 40
    const-string v2, "EquipmentPiece"

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    const-string v2, ""

    .line 44
    .line 45
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_4

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    invoke-static {p1, v1}, Lcom/sgscq/vpn/handler/z;->n(Ljava/util/Map;Lcom/sgscq/vpn/handler/y;)Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    new-instance v6, Lcom/sgscq/vpn/battle/c;

    .line 57
    .line 58
    const/4 v7, 0x2

    .line 59
    invoke-direct {v6, v1, v7}, Lcom/sgscq/vpn/battle/c;-><init>(Ljava/lang/Object;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    iget v6, v1, Lcom/sgscq/vpn/handler/y;->b:I

    .line 70
    .line 71
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-eqz v7, :cond_0

    .line 76
    .line 77
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    check-cast v7, Ljava/util/Map;

    .line 82
    .line 83
    if-gtz v6, :cond_5

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    iget v8, v1, Lcom/sgscq/vpn/handler/y;->c:I

    .line 87
    .line 88
    invoke-static {v8, v7}, Lcom/sgscq/vpn/handler/z;->t(ILjava/util/Map;)I

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    if-gtz v9, :cond_6

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_6
    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    sub-int v10, v9, v10

    .line 100
    .line 101
    sub-int/2addr v9, v10

    .line 102
    sub-int/2addr v6, v9

    .line 103
    const-string v9, "num"

    .line 104
    .line 105
    const-string v11, "item_num"

    .line 106
    .line 107
    invoke-static {v10, v7, v9, v10, v11}, Lc/a;->t(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    if-ne v8, v4, :cond_7

    .line 111
    .line 112
    const-string v9, "general_soul_num"

    .line 113
    .line 114
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v11

    .line 118
    invoke-interface {v7, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    :cond_7
    if-ne v8, v3, :cond_8

    .line 122
    .line 123
    const-string v3, "equipment_piece_num"

    .line 124
    .line 125
    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    if-eqz v8, :cond_8

    .line 130
    .line 131
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    :cond_8
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    check-cast v3, Ljava/util/Map;

    .line 143
    .line 144
    const-string v8, "upd"

    .line 145
    .line 146
    const-string v9, "del"

    .line 147
    .line 148
    if-nez v3, :cond_9

    .line 149
    .line 150
    new-instance v3, Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .line 154
    .line 155
    new-instance v11, Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .line 159
    .line 160
    new-instance v12, Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .line 164
    .line 165
    const-string v13, "add"

    .line 166
    .line 167
    filled-new-array {v8, v11, v13, v12}, [Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v11

    .line 171
    invoke-static {v9, v3, v11}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    :cond_9
    if-gtz v10, :cond_a

    .line 179
    .line 180
    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    check-cast v3, Ljava/util/List;

    .line 185
    .line 186
    const-string v8, "pk_id"

    .line 187
    .line 188
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    invoke-static {v2, p1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-interface {v3, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_a
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    check-cast v3, Ljava/util/List;

    .line 212
    .line 213
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    :goto_3
    const/16 v3, 0x8

    .line 217
    .line 218
    goto/16 :goto_2

    .line 219
    .line 220
    :cond_b
    return-object v0
.end method

.method public static f(Ljava/util/Map;)Ljava/util/List;
    .locals 6

    .line 1
    const-string v0, "EvolutionInfo"

    invoke-static {v0, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/Map;

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "add"

    const-string v5, "upd"

    filled-new-array {v5, v3, v4, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "del"

    invoke-static {v4, v2, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static g(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 13

    .line 1
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "code"

    const-string v3, "result"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v5, "msg"

    const-string v7, "error_code"

    const-string v9, "return_info"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "result"

    invoke-static {v6, v4, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v10

    const-string v11, "cmn_modules"

    const-string v12, "EvolutionInfo"

    move-object v2, v0

    move-object v6, p0

    move-object v8, v0

    filled-new-array/range {v1 .. v12}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "ret"

    invoke-static {v1, v0, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/sgscq/vpn/handler/z;->f(Ljava/util/Map;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/util/Map;

    .line 27
    .line 28
    const-string v1, "evolution_id"

    .line 29
    .line 30
    invoke-static {v0, v1, p0}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 38
    return-object p0
.end method

.method public static varargs i(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static k(Ljava/util/Map;Lcom/sgscq/vpn/handler/y;)Z
    .locals 4

    .line 1
    invoke-static {p0, p1}, Lcom/sgscq/vpn/handler/z;->n(Ljava/util/Map;Lcom/sgscq/vpn/handler/y;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/util/Map;

    .line 22
    .line 23
    iget v3, p1, Lcom/sgscq/vpn/handler/y;->c:I

    .line 24
    .line 25
    invoke-static {v3, v2}, Lcom/sgscq/vpn/handler/z;->t(ILjava/util/Map;)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    add-int/2addr v1, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget p0, p1, Lcom/sgscq/vpn/handler/y;->b:I

    .line 32
    .line 33
    if-lt v1, p0, :cond_1

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    :cond_1
    return v0
.end method

.method public static l(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "evolution.open"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "evolution.changeFate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "evolution.active"

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

.method public static m(Ljava/util/LinkedHashMap;)Z
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "result"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "delta_data"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static n(Ljava/util/Map;Lcom/sgscq/vpn/handler/y;)Ljava/util/ArrayList;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p1, Lcom/sgscq/vpn/handler/y;->c:I

    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    const/4 v3, 0x6

    .line 11
    if-ne v1, v3, :cond_0

    .line 12
    .line 13
    const-string v1, "GeneralSoul"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v4, 0x5

    .line 17
    if-ne v1, v4, :cond_1

    .line 18
    .line 19
    const-string v1, "Item"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    if-ne v1, v2, :cond_2

    .line 23
    .line 24
    const-string v1, "EquipmentPiece"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const-string v1, ""

    .line 28
    .line 29
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_3

    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_3
    invoke-static {v1, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_b

    .line 49
    .line 50
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Ljava/util/Map;

    .line 55
    .line 56
    const-string v4, "item_id"

    .line 57
    .line 58
    const-string v5, "pk_id"

    .line 59
    .line 60
    iget v6, p1, Lcom/sgscq/vpn/handler/y;->c:I

    .line 61
    .line 62
    const-string v7, "id"

    .line 63
    .line 64
    if-ne v6, v3, :cond_5

    .line 65
    .line 66
    const-string v8, "general_id"

    .line 67
    .line 68
    filled-new-array {v8, v5, v7}, [Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    invoke-static {v1, v7}, Lcom/sgscq/vpn/handler/z;->i(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    goto :goto_2

    .line 77
    :cond_5
    if-ne v6, v2, :cond_6

    .line 78
    .line 79
    const-string v8, "equipment_id"

    .line 80
    .line 81
    const-string v9, "equip_id"

    .line 82
    .line 83
    filled-new-array {v8, v9, v7, v5, v4}, [Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    invoke-static {v1, v7}, Lcom/sgscq/vpn/handler/z;->i(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    goto :goto_2

    .line 92
    :cond_6
    filled-new-array {v4, v7, v5}, [Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-static {v1, v7}, Lcom/sgscq/vpn/handler/z;->i(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    :goto_2
    iget-object v8, p1, Lcom/sgscq/vpn/handler/y;->a:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-eqz v7, :cond_7

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_7
    if-eq v6, v2, :cond_8

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_8
    const-string v6, "9"

    .line 113
    .line 114
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    invoke-static {v1, v5, v6}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-nez v5, :cond_a

    .line 123
    .line 124
    invoke-static {v1, v4, v6}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-nez v4, :cond_a

    .line 129
    .line 130
    const-string v4, "piece_id"

    .line 131
    .line 132
    invoke-static {v1, v4, v6}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-eqz v4, :cond_9

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_9
    :goto_3
    const/4 v4, 0x0

    .line 140
    goto :goto_5

    .line 141
    :cond_a
    :goto_4
    const/4 v4, 0x1

    .line 142
    :goto_5
    if-eqz v4, :cond_4

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_b
    return-object v0
.end method

.method public static o(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V
    .locals 3

    .line 1
    const-string v0, "delta_data"

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_0
    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cmn_modules"

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sgscq/vpn/handler/z;->q(Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static p(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;Ljava/util/Map;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_8

    .line 10
    .line 11
    :cond_0
    const-string v1, "delta_data"

    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    instance-of v2, v2, Ljava/util/Map;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ljava/util/Map;

    .line 28
    .line 29
    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v4, "General"

    .line 44
    .line 45
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    instance-of v6, v5, Ljava/util/Map;

    .line 50
    .line 51
    const-string v7, "upd"

    .line 52
    .line 53
    if-eqz v6, :cond_3

    .line 54
    .line 55
    check-cast v5, Ljava/util/Map;

    .line 56
    .line 57
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    instance-of v6, v5, Ljava/util/List;

    .line 62
    .line 63
    if-eqz v6, :cond_3

    .line 64
    .line 65
    check-cast v5, Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_3

    .line 76
    .line 77
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    instance-of v8, v6, Ljava/util/Map;

    .line 82
    .line 83
    if-eqz v8, :cond_2

    .line 84
    .line 85
    check-cast v6, Ljava/util/Map;

    .line 86
    .line 87
    invoke-static {v3, v6}, Lcom/sgscq/vpn/handler/z;->a(Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-eqz v6, :cond_4

    .line 100
    .line 101
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    check-cast v6, Ljava/util/Map;

    .line 106
    .line 107
    invoke-static {v3, v6}, Lcom/sgscq/vpn/handler/z;->a(Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .line 115
    .line 116
    new-instance v6, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v8, "add"

    .line 122
    .line 123
    filled-new-array {v7, v3, v8, v6}, [Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    const-string v9, "del"

    .line 128
    .line 129
    invoke-static {v9, v5, v6}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    const-string v5, "cmn_modules"

    .line 137
    .line 138
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    invoke-static {v6}, Lcom/sgscq/vpn/handler/z;->q(Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 150
    .line 151
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v10

    .line 162
    const-string v11, ""

    .line 163
    .line 164
    const-string v12, "general_pk_id"

    .line 165
    .line 166
    const-string v13, "pk_id"

    .line 167
    .line 168
    if-eqz v10, :cond_6

    .line 169
    .line 170
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    check-cast v10, Ljava/util/Map;

    .line 175
    .line 176
    invoke-static {v10, v12, v11, v13}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v10

    .line 180
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 181
    .line 182
    .line 183
    move-result v11

    .line 184
    if-nez v11, :cond_5

    .line 185
    .line 186
    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_6
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    const-string v10, "TeamGeneral"

    .line 195
    .line 196
    if-eqz v3, :cond_7

    .line 197
    .line 198
    goto :goto_5

    .line 199
    :cond_7
    move-object/from16 v3, p2

    .line 200
    .line 201
    invoke-static {v10, v3}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 206
    .line 207
    .line 208
    move-result-object v14

    .line 209
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 210
    .line 211
    .line 212
    move-result v15

    .line 213
    if-eqz v15, :cond_9

    .line 214
    .line 215
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v15

    .line 219
    check-cast v15, Ljava/util/Map;

    .line 220
    .line 221
    move-object/from16 p0, v14

    .line 222
    .line 223
    invoke-interface {v15, v13, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v14

    .line 227
    invoke-interface {v15, v12, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v14

    .line 231
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v14

    .line 235
    invoke-interface {v4, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v14

    .line 239
    if-nez v14, :cond_8

    .line 240
    .line 241
    move-object/from16 v14, p0

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .line 248
    .line 249
    new-instance v11, Ljava/util/ArrayList;

    .line 250
    .line 251
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .line 253
    .line 254
    new-instance v12, Ljava/util/ArrayList;

    .line 255
    .line 256
    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 257
    .line 258
    .line 259
    filled-new-array {v7, v11, v8, v12}, [Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    invoke-static {v9, v4, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    const/4 v3, 0x1

    .line 271
    goto :goto_6

    .line 272
    :cond_9
    :goto_5
    const/4 v3, 0x0

    .line 273
    :goto_6
    if-eqz v3, :cond_a

    .line 274
    .line 275
    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    :cond_a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .line 285
    .line 286
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    if-eqz v3, :cond_b

    .line 295
    .line 296
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    check-cast v3, Ljava/lang/CharSequence;

    .line 301
    .line 302
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    if-eqz v3, :cond_b

    .line 310
    .line 311
    const-string v3, ","

    .line 312
    .line 313
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    goto :goto_7

    .line 317
    :cond_b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    :goto_8
    return-void
.end method

.method public static q(Ljava/lang/Object;)Ljava/util/LinkedHashSet;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    if-eqz p0, :cond_1

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

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static r(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static s(Ljava/lang/Object;)Ljava/util/List;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, La/o;

    invoke-direct {v0}, La/o;-><init>()V

    if-nez p0, :cond_0

    const-string p0, "[]"

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/sgscq/vpn/handler/EvolutionHandler$1;

    invoke-direct {v1}, Lcom/sgscq/vpn/handler/EvolutionHandler$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p0

    :catch_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static t(ILjava/util/Map;)I
    .locals 5

    .line 1
    const-string v0, "num"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "item_num"

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    const-string v2, "equipment_piece_num"

    if-nez v0, :cond_2

    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    const-string v0, "general_soul_num"

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_2
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/sgscq/vpn/handler/z;->u(Ljava/lang/Object;I)I

    move-result v0

    const/16 v4, 0x8

    if-ne p0, v4, :cond_3

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/sgscq/vpn/handler/z;->u(Ljava/lang/Object;I)I

    move-result p0

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/sgscq/vpn/handler/z;->u(Ljava/lang/Object;I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_3
    return v0
.end method

.method public static u(Ljava/lang/Object;I)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static v()Ljava/util/LinkedHashMap;
    .locals 14

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v1, "code"

    const-string v3, "result"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "msg"

    const-string v6, "success"

    const-string v7, "error_code"

    const-string v9, "return_info"

    const-string v2, "result"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v4, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v10

    const-string v11, "cmn_modules"

    const-string v12, "EvolutionInfo"

    move-object v2, v13

    move-object v8, v13

    filled-new-array/range {v1 .. v12}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ret"

    invoke-static {v1, v13, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public static w(Lcom/sgscq/vpn/w1;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "General"

    .line 5
    .line 6
    invoke-static {v0, p2}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/util/Map;

    .line 25
    .line 26
    const-string v2, "general_pk_id"

    .line 27
    .line 28
    const-string v3, ""

    .line 29
    .line 30
    const-string v4, "pk_id"

    .line 31
    .line 32
    invoke-static {v1, v2, v3, v4}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p0, v2, p2}, Lcom/sgscq/vpn/w1;->F2(Ljava/lang/String;Ljava/util/Map;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    invoke-static {p1, v1}, Lcom/sgscq/vpn/handler/z;->a(Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    return-void
.end method

.method public static x(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lcom/sgscq/vpn/handler/z;->f(Ljava/util/Map;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v2, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v3, "upd"

    .line 24
    .line 25
    const-string v4, "add"

    .line 26
    .line 27
    filled-new-array {v3, v2, v4, p1}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v2, "del"

    .line 32
    .line 33
    const-string v5, "EvolutionInfo"

    .line 34
    .line 35
    invoke-static {v2, v1, p1, p0, v5}, Lc/a;->n(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    filled-new-array {v3, v0, v4, p1}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {v2, p0, p1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const/4 p1, 0x0

    .line 53
    new-array p1, p1, [Ljava/lang/Object;

    .line 54
    .line 55
    invoke-static {v5, p0, p1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method


# virtual methods
.method public final j(Ljava/lang/String;Ljava/util/Map;)[B
    .locals 30

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/z;->l(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    return-object v3

    .line 13
    :cond_0
    move-object/from16 v2, p0

    .line 14
    .line 15
    iget-object v3, v2, Lcom/sgscq/vpn/handler/z;->a:Lcom/sgscq/vpn/handler/k0;

    .line 16
    .line 17
    invoke-virtual {v3, v1}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v13

    .line 21
    iget-object v14, v3, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 22
    .line 23
    invoke-virtual {v14, v13}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    if-nez v4, :cond_1

    .line 28
    .line 29
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    :cond_1
    move-object v15, v4

    .line 35
    const-string v4, "evolution.open"

    .line 36
    .line 37
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    const-string v5, "General"

    .line 42
    .line 43
    const-string v6, "general_id"

    .line 44
    .line 45
    iget-object v7, v3, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 46
    .line 47
    const-string v8, "\u89c9\u9192\u6750\u6599\u4e0d\u8db3"

    .line 48
    .line 49
    const-string v9, "evolution_info"

    .line 50
    .line 51
    const-string v10, "status"

    .line 52
    .line 53
    const-string v11, "delta_data"

    .line 54
    .line 55
    const-string v12, "evolution_id"

    .line 56
    .line 57
    if-eqz v4, :cond_21

    .line 58
    .line 59
    invoke-static {v12, v1}, Lcom/sgscq/vpn/handler/z;->r(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 64
    .line 65
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v2, "evolutions.json"

    .line 69
    .line 70
    invoke-static {v7, v2}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->t1(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v16

    .line 86
    if-eqz v16, :cond_3

    .line 87
    .line 88
    move-object/from16 v16, v8

    .line 89
    .line 90
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    move-object/from16 p1, v2

    .line 95
    .line 96
    instance-of v2, v8, Ljava/util/Map;

    .line 97
    .line 98
    if-nez v2, :cond_2

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_2
    check-cast v8, Ljava/util/Map;

    .line 102
    .line 103
    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-interface {v4, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    :goto_1
    move-object/from16 v2, p1

    .line 115
    .line 116
    move-object/from16 v8, v16

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_3
    move-object/from16 v16, v8

    .line 120
    .line 121
    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Ljava/util/Map;

    .line 126
    .line 127
    if-nez v2, :cond_4

    .line 128
    .line 129
    invoke-static {v6, v1}, Lcom/sgscq/vpn/handler/z;->r(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    goto :goto_2

    .line 134
    :cond_4
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    if-eqz v8, :cond_5

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_5
    const/4 v8, 0x2

    .line 150
    invoke-static {v8}, Lcom/sgscq/vpn/handler/t0;->C(I)Ljava/util/LinkedHashSet;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    invoke-static {v8}, Lcom/sgscq/vpn/handler/t0;->o(Ljava/util/LinkedHashSet;)Ljava/util/LinkedHashSet;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    invoke-interface {v8, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-eqz v4, :cond_6

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_6
    invoke-static {v0, v15}, Lcom/sgscq/vpn/handler/z;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    if-eqz v4, :cond_7

    .line 170
    .line 171
    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    const/4 v8, 0x0

    .line 176
    invoke-static {v4, v8}, Lcom/sgscq/vpn/handler/z;->u(Ljava/lang/Object;I)I

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    const/4 v8, 0x1

    .line 181
    if-ne v4, v8, :cond_7

    .line 182
    .line 183
    :goto_3
    const/4 v4, 0x1

    .line 184
    goto :goto_4

    .line 185
    :cond_7
    const/4 v4, 0x0

    .line 186
    :goto_4
    if-nez v4, :cond_8

    .line 187
    .line 188
    const-string v0, "\u8be5\u6b66\u5c06\u89c9\u9192\u6682\u672a\u5f00\u653e"

    .line 189
    .line 190
    invoke-static {v0}, Lcom/sgscq/vpn/handler/z;->g(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    move-object/from16 v18, v14

    .line 195
    .line 196
    goto/16 :goto_7

    .line 197
    .line 198
    :cond_8
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 199
    .line 200
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 201
    .line 202
    .line 203
    const-string v8, "evolution_opens.json"

    .line 204
    .line 205
    invoke-static {v7, v8}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    invoke-static {v8}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 214
    .line 215
    .line 216
    move-result-object v8

    .line 217
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 218
    .line 219
    .line 220
    move-result-object v8

    .line 221
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 222
    .line 223
    .line 224
    move-result v17

    .line 225
    if-eqz v17, :cond_a

    .line 226
    .line 227
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v17

    .line 231
    check-cast v17, Ljava/util/Map$Entry;

    .line 232
    .line 233
    move-object/from16 p1, v8

    .line 234
    .line 235
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v8

    .line 239
    instance-of v8, v8, Ljava/util/List;

    .line 240
    .line 241
    if-eqz v8, :cond_9

    .line 242
    .line 243
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v8

    .line 247
    check-cast v8, Ljava/lang/String;

    .line 248
    .line 249
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v17

    .line 253
    move-object/from16 v18, v14

    .line 254
    .line 255
    move-object/from16 v14, v17

    .line 256
    .line 257
    check-cast v14, Ljava/util/List;

    .line 258
    .line 259
    invoke-interface {v4, v8, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    goto :goto_6

    .line 263
    :cond_9
    move-object/from16 v18, v14

    .line 264
    .line 265
    :goto_6
    move-object/from16 v8, p1

    .line 266
    .line 267
    move-object/from16 v14, v18

    .line 268
    .line 269
    goto :goto_5

    .line 270
    :cond_a
    move-object/from16 v18, v14

    .line 271
    .line 272
    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    check-cast v0, Ljava/util/List;

    .line 277
    .line 278
    if-eqz v2, :cond_20

    .line 279
    .line 280
    if-eqz v0, :cond_20

    .line 281
    .line 282
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 283
    .line 284
    .line 285
    move-result v4

    .line 286
    if-eqz v4, :cond_b

    .line 287
    .line 288
    goto/16 :goto_e

    .line 289
    .line 290
    :cond_b
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    invoke-static {v4, v15}, Lcom/sgscq/vpn/handler/z;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 299
    .line 300
    .line 301
    move-result-object v8

    .line 302
    if-eqz v8, :cond_c

    .line 303
    .line 304
    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v8

    .line 308
    const/4 v10, 0x0

    .line 309
    invoke-static {v8, v10}, Lcom/sgscq/vpn/handler/z;->u(Ljava/lang/Object;I)I

    .line 310
    .line 311
    .line 312
    move-result v8

    .line 313
    const/4 v10, 0x1

    .line 314
    if-ne v8, v10, :cond_c

    .line 315
    .line 316
    invoke-static {v15, v1}, Lcom/sgscq/vpn/handler/z;->b(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    :goto_7
    move-object/from16 v19, v3

    .line 321
    .line 322
    move-object/from16 v22, v7

    .line 323
    .line 324
    move-object/from16 v21, v11

    .line 325
    .line 326
    move-object/from16 v17, v13

    .line 327
    .line 328
    goto/16 :goto_10

    .line 329
    .line 330
    :cond_c
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v8

    .line 334
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v8

    .line 338
    new-instance v10, Ljava/util/ArrayList;

    .line 339
    .line 340
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .line 342
    .line 343
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 348
    .line 349
    .line 350
    move-result v14

    .line 351
    if-eqz v14, :cond_1e

    .line 352
    .line 353
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v14

    .line 357
    check-cast v14, Ljava/util/Map;

    .line 358
    .line 359
    move-object/from16 p1, v0

    .line 360
    .line 361
    const-string v0, "type"

    .line 362
    .line 363
    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    move-object/from16 v17, v13

    .line 368
    .line 369
    const/4 v13, 0x0

    .line 370
    invoke-static {v0, v13}, Lcom/sgscq/vpn/handler/z;->u(Ljava/lang/Object;I)I

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    const-string v13, "object_id"

    .line 375
    .line 376
    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v13

    .line 380
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v13

    .line 384
    move-object/from16 v19, v3

    .line 385
    .line 386
    const-string v3, "condition"

    .line 387
    .line 388
    invoke-interface {v14, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    const/4 v14, 0x0

    .line 393
    invoke-static {v3, v14}, Lcom/sgscq/vpn/handler/z;->u(Ljava/lang/Object;I)I

    .line 394
    .line 395
    .line 396
    move-result v3

    .line 397
    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    .line 398
    .line 399
    .line 400
    move-result v3

    .line 401
    const/4 v14, 0x1

    .line 402
    if-ne v0, v14, :cond_13

    .line 403
    .line 404
    invoke-static {v5, v15}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 405
    .line 406
    .line 407
    move-result-object v14

    .line 408
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 409
    .line 410
    .line 411
    move-result-object v14

    .line 412
    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 413
    .line 414
    .line 415
    move-result v20

    .line 416
    if-eqz v20, :cond_12

    .line 417
    .line 418
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v20

    .line 422
    move-object/from16 v21, v14

    .line 423
    .line 424
    move-object/from16 v14, v20

    .line 425
    .line 426
    check-cast v14, Ljava/util/Map;

    .line 427
    .line 428
    invoke-static {v14, v6, v8}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 429
    .line 430
    .line 431
    move-result v20

    .line 432
    if-nez v20, :cond_d

    .line 433
    .line 434
    move-object/from16 v14, v21

    .line 435
    .line 436
    goto :goto_9

    .line 437
    :cond_d
    move-object/from16 v20, v5

    .line 438
    .line 439
    const-string v5, "breach_level"

    .line 440
    .line 441
    invoke-interface {v14, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v5

    .line 445
    if-nez v5, :cond_e

    .line 446
    .line 447
    const-string v5, "general_breach_level"

    .line 448
    .line 449
    invoke-interface {v14, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v5

    .line 453
    :cond_e
    if-nez v5, :cond_f

    .line 454
    .line 455
    const-string v5, "break_level"

    .line 456
    .line 457
    invoke-interface {v14, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v5

    .line 461
    :cond_f
    if-nez v5, :cond_10

    .line 462
    .line 463
    const-string v5, "insight_level"

    .line 464
    .line 465
    invoke-interface {v14, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v5

    .line 469
    :cond_10
    if-nez v5, :cond_11

    .line 470
    .line 471
    const-string v5, "breachLevel"

    .line 472
    .line 473
    invoke-interface {v14, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v5

    .line 477
    :cond_11
    const/4 v14, 0x0

    .line 478
    invoke-static {v5, v14}, Lcom/sgscq/vpn/handler/z;->u(Ljava/lang/Object;I)I

    .line 479
    .line 480
    .line 481
    move-result v5

    .line 482
    add-int/lit8 v5, v5, -0x1

    .line 483
    .line 484
    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    .line 485
    .line 486
    .line 487
    move-result v5

    .line 488
    goto :goto_a

    .line 489
    :cond_12
    move-object/from16 v20, v5

    .line 490
    .line 491
    const/4 v5, 0x0

    .line 492
    :goto_a
    if-ge v5, v3, :cond_14

    .line 493
    .line 494
    const-string v8, "\u6b66\u5c06\u7a81\u7834\u7b49\u7ea7\u4e0d\u8db3"

    .line 495
    .line 496
    move-object/from16 v22, v7

    .line 497
    .line 498
    move-object/from16 v21, v11

    .line 499
    .line 500
    goto/16 :goto_f

    .line 501
    .line 502
    :cond_13
    move-object/from16 v20, v5

    .line 503
    .line 504
    :cond_14
    const/4 v5, 0x2

    .line 505
    if-ne v0, v5, :cond_18

    .line 506
    .line 507
    const-string v5, "MagicalEqu"

    .line 508
    .line 509
    invoke-static {v5, v15}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 510
    .line 511
    .line 512
    move-result-object v5

    .line 513
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 514
    .line 515
    .line 516
    move-result-object v5

    .line 517
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 518
    .line 519
    .line 520
    move-result v14

    .line 521
    if-eqz v14, :cond_17

    .line 522
    .line 523
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v14

    .line 527
    check-cast v14, Ljava/util/Map;

    .line 528
    .line 529
    invoke-static {v14, v6, v8}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 530
    .line 531
    .line 532
    move-result v21

    .line 533
    if-nez v21, :cond_15

    .line 534
    .line 535
    goto :goto_b

    .line 536
    :cond_15
    move-object/from16 v21, v5

    .line 537
    .line 538
    const-string v5, "is_open"

    .line 539
    .line 540
    invoke-interface {v14, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v5

    .line 544
    move-object/from16 v22, v7

    .line 545
    .line 546
    const/4 v7, 0x0

    .line 547
    invoke-static {v5, v7}, Lcom/sgscq/vpn/handler/z;->u(Ljava/lang/Object;I)I

    .line 548
    .line 549
    .line 550
    move-result v5

    .line 551
    const/4 v7, 0x1

    .line 552
    if-eq v5, v7, :cond_16

    .line 553
    .line 554
    move-object/from16 v5, v21

    .line 555
    .line 556
    move-object/from16 v7, v22

    .line 557
    .line 558
    goto :goto_b

    .line 559
    :cond_16
    const-string v5, "magic_level"

    .line 560
    .line 561
    invoke-interface {v14, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v5

    .line 565
    const/4 v7, 0x0

    .line 566
    invoke-static {v5, v7}, Lcom/sgscq/vpn/handler/z;->u(Ljava/lang/Object;I)I

    .line 567
    .line 568
    .line 569
    move-result v5

    .line 570
    mul-int/lit8 v5, v5, 0x64

    .line 571
    .line 572
    move-object/from16 v21, v11

    .line 573
    .line 574
    const-string v11, "magic_sub_level"

    .line 575
    .line 576
    invoke-interface {v14, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v11

    .line 580
    invoke-static {v11, v7}, Lcom/sgscq/vpn/handler/z;->u(Ljava/lang/Object;I)I

    .line 581
    .line 582
    .line 583
    move-result v7

    .line 584
    add-int/2addr v7, v5

    .line 585
    goto :goto_c

    .line 586
    :cond_17
    move-object/from16 v22, v7

    .line 587
    .line 588
    move-object/from16 v21, v11

    .line 589
    .line 590
    const/4 v7, 0x0

    .line 591
    :goto_c
    if-ge v7, v3, :cond_19

    .line 592
    .line 593
    const-string v8, "\u795e\u5175\u953b\u9020\u8fdb\u5ea6\u4e0d\u8db3"

    .line 594
    .line 595
    goto/16 :goto_f

    .line 596
    .line 597
    :cond_18
    move-object/from16 v22, v7

    .line 598
    .line 599
    move-object/from16 v21, v11

    .line 600
    .line 601
    :cond_19
    const/4 v5, 0x3

    .line 602
    if-eq v0, v5, :cond_1a

    .line 603
    .line 604
    const/4 v7, 0x4

    .line 605
    if-ne v0, v7, :cond_1d

    .line 606
    .line 607
    :cond_1a
    new-instance v7, Lcom/sgscq/vpn/handler/y;

    .line 608
    .line 609
    if-ne v0, v5, :cond_1b

    .line 610
    .line 611
    const/4 v0, 0x6

    .line 612
    goto :goto_d

    .line 613
    :cond_1b
    const/4 v0, 0x5

    .line 614
    :goto_d
    invoke-direct {v7, v13, v3, v0}, Lcom/sgscq/vpn/handler/y;-><init>(Ljava/lang/String;II)V

    .line 615
    .line 616
    .line 617
    invoke-static {v15, v7}, Lcom/sgscq/vpn/handler/z;->k(Ljava/util/Map;Lcom/sgscq/vpn/handler/y;)Z

    .line 618
    .line 619
    .line 620
    move-result v0

    .line 621
    if-nez v0, :cond_1c

    .line 622
    .line 623
    move-object/from16 v8, v16

    .line 624
    .line 625
    goto :goto_f

    .line 626
    :cond_1c
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    .line 628
    .line 629
    :cond_1d
    move-object/from16 v0, p1

    .line 630
    .line 631
    move-object/from16 v13, v17

    .line 632
    .line 633
    move-object/from16 v3, v19

    .line 634
    .line 635
    move-object/from16 v5, v20

    .line 636
    .line 637
    move-object/from16 v11, v21

    .line 638
    .line 639
    move-object/from16 v7, v22

    .line 640
    .line 641
    goto/16 :goto_8

    .line 642
    .line 643
    :cond_1e
    move-object/from16 v19, v3

    .line 644
    .line 645
    move-object/from16 v22, v7

    .line 646
    .line 647
    move-object/from16 v21, v11

    .line 648
    .line 649
    move-object/from16 v17, v13

    .line 650
    .line 651
    invoke-static {v10, v15}, Lcom/sgscq/vpn/handler/z;->e(Ljava/util/ArrayList;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 656
    .line 657
    invoke-direct {v3, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 658
    .line 659
    .line 660
    invoke-interface {v3, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    invoke-interface {v3, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    .line 665
    .line 666
    invoke-static {v15, v3}, Lcom/sgscq/vpn/handler/z;->b(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 667
    .line 668
    .line 669
    move-result-object v3

    .line 670
    invoke-static {v3, v0}, Lcom/sgscq/vpn/handler/z;->o(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V

    .line 671
    .line 672
    .line 673
    invoke-static {v4, v15}, Lcom/sgscq/vpn/handler/z;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    if-eqz v0, :cond_1f

    .line 678
    .line 679
    const-string v4, "resource_id"

    .line 680
    .line 681
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    move-result-object v5

    .line 685
    if-eqz v5, :cond_1f

    .line 686
    .line 687
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-result-object v2

    .line 691
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    .line 693
    .line 694
    invoke-interface {v3, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    :cond_1f
    move-object v0, v3

    .line 698
    goto :goto_10

    .line 699
    :cond_20
    :goto_e
    move-object/from16 v19, v3

    .line 700
    .line 701
    move-object/from16 v22, v7

    .line 702
    .line 703
    move-object/from16 v21, v11

    .line 704
    .line 705
    move-object/from16 v17, v13

    .line 706
    .line 707
    const-string v8, "\u89c9\u9192\u914d\u7f6e\u4e0d\u5b58\u5728"

    .line 708
    .line 709
    :goto_f
    invoke-static {v8}, Lcom/sgscq/vpn/handler/z;->g(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    :goto_10
    move-object/from16 v8, v21

    .line 714
    .line 715
    goto/16 :goto_18

    .line 716
    .line 717
    :cond_21
    move-object/from16 v19, v3

    .line 718
    .line 719
    move-object/from16 v20, v5

    .line 720
    .line 721
    move-object/from16 v22, v7

    .line 722
    .line 723
    move-object/from16 v16, v8

    .line 724
    .line 725
    move-object/from16 v21, v11

    .line 726
    .line 727
    move-object/from16 v17, v13

    .line 728
    .line 729
    move-object/from16 v18, v14

    .line 730
    .line 731
    const-string v2, "evolution.changeFate"

    .line 732
    .line 733
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 734
    .line 735
    .line 736
    move-result v0

    .line 737
    const-string v2, "now"

    .line 738
    .line 739
    const-string v3, "left"

    .line 740
    .line 741
    const-string v4, "fate_ids"

    .line 742
    .line 743
    const-string v5, ""

    .line 744
    .line 745
    const-string v7, "\u8bf7\u5148\u5f00\u542f\u89c9\u9192"

    .line 746
    .line 747
    if-eqz v0, :cond_2b

    .line 748
    .line 749
    invoke-static {v12, v1}, Lcom/sgscq/vpn/handler/z;->r(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    invoke-static {v0, v15}, Lcom/sgscq/vpn/handler/z;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 754
    .line 755
    .line 756
    move-result-object v0

    .line 757
    if-eqz v0, :cond_23

    .line 758
    .line 759
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    .line 761
    .line 762
    move-result-object v6

    .line 763
    const/4 v8, 0x0

    .line 764
    invoke-static {v6, v8}, Lcom/sgscq/vpn/handler/z;->u(Ljava/lang/Object;I)I

    .line 765
    .line 766
    .line 767
    move-result v6

    .line 768
    const/4 v8, 0x1

    .line 769
    if-eq v6, v8, :cond_22

    .line 770
    .line 771
    goto :goto_11

    .line 772
    :cond_22
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    .line 774
    .line 775
    move-result-object v6

    .line 776
    invoke-static {v6}, Lcom/sgscq/vpn/handler/z;->s(Ljava/lang/Object;)Ljava/util/List;

    .line 777
    .line 778
    .line 779
    move-result-object v6

    .line 780
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 781
    .line 782
    .line 783
    move-result v7

    .line 784
    if-eqz v7, :cond_24

    .line 785
    .line 786
    const-string v7, "\u6682\u65e0\u53ef\u9009\u7f18\u5206"

    .line 787
    .line 788
    :cond_23
    :goto_11
    move-object/from16 v8, v21

    .line 789
    .line 790
    goto/16 :goto_17

    .line 791
    .line 792
    :cond_24
    invoke-static {v4, v1}, Lcom/sgscq/vpn/handler/z;->r(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object v7

    .line 796
    :try_start_0
    new-instance v8, La/o;

    .line 797
    .line 798
    invoke-direct {v8}, La/o;-><init>()V

    .line 799
    .line 800
    .line 801
    new-instance v10, Lcom/sgscq/vpn/handler/EvolutionHandler$2;

    .line 802
    .line 803
    invoke-direct {v10}, Lcom/sgscq/vpn/handler/EvolutionHandler$2;-><init>()V

    .line 804
    .line 805
    .line 806
    invoke-virtual {v10}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 807
    .line 808
    .line 809
    move-result-object v10

    .line 810
    invoke-virtual {v8, v7, v10}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 811
    .line 812
    .line 813
    move-result-object v7

    .line 814
    check-cast v7, Ljava/util/Map;

    .line 815
    .line 816
    if-nez v7, :cond_25

    .line 817
    .line 818
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 819
    .line 820
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    .line 822
    .line 823
    goto :goto_12

    .line 824
    :catch_0
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 825
    .line 826
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 827
    .line 828
    .line 829
    :cond_25
    :goto_12
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 830
    .line 831
    .line 832
    move-result-object v8

    .line 833
    const/4 v10, 0x0

    .line 834
    :goto_13
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 835
    .line 836
    .line 837
    move-result v11

    .line 838
    if-eqz v11, :cond_29

    .line 839
    .line 840
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 841
    .line 842
    .line 843
    move-result-object v11

    .line 844
    check-cast v11, Ljava/util/Map;

    .line 845
    .line 846
    invoke-interface {v11, v3, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object v13

    .line 850
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 851
    .line 852
    .line 853
    move-result-object v13

    .line 854
    invoke-interface {v7, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 855
    .line 856
    .line 857
    move-result v14

    .line 858
    if-nez v14, :cond_26

    .line 859
    .line 860
    move-object/from16 v16, v7

    .line 861
    .line 862
    goto :goto_15

    .line 863
    :cond_26
    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    .line 865
    .line 866
    move-result-object v13

    .line 867
    const/4 v14, 0x0

    .line 868
    invoke-static {v13, v14}, Lcom/sgscq/vpn/handler/z;->u(Ljava/lang/Object;I)I

    .line 869
    .line 870
    .line 871
    move-result v13

    .line 872
    const/4 v14, 0x1

    .line 873
    if-ne v13, v14, :cond_27

    .line 874
    .line 875
    const/4 v13, 0x1

    .line 876
    goto :goto_14

    .line 877
    :cond_27
    const/4 v13, 0x0

    .line 878
    :goto_14
    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    .line 880
    .line 881
    move-result-object v14

    .line 882
    move-object/from16 v16, v7

    .line 883
    .line 884
    const/4 v7, 0x0

    .line 885
    invoke-static {v14, v7}, Lcom/sgscq/vpn/handler/z;->u(Ljava/lang/Object;I)I

    .line 886
    .line 887
    .line 888
    move-result v7

    .line 889
    if-eq v7, v13, :cond_28

    .line 890
    .line 891
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 892
    .line 893
    .line 894
    move-result-object v7

    .line 895
    invoke-interface {v11, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    .line 897
    .line 898
    const/4 v10, 0x1

    .line 899
    :cond_28
    :goto_15
    move-object/from16 v7, v16

    .line 900
    .line 901
    goto :goto_13

    .line 902
    :cond_29
    invoke-static {v6}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object v2

    .line 906
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    .line 908
    .line 909
    invoke-static {}, Lcom/sgscq/vpn/handler/z;->v()Ljava/util/LinkedHashMap;

    .line 910
    .line 911
    .line 912
    move-result-object v2

    .line 913
    invoke-interface {v2, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    .line 915
    .line 916
    if-eqz v10, :cond_2a

    .line 917
    .line 918
    invoke-static {v15, v0}, Lcom/sgscq/vpn/handler/z;->x(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 919
    .line 920
    .line 921
    move-result-object v0

    .line 922
    move-object/from16 v8, v21

    .line 923
    .line 924
    invoke-interface {v2, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    .line 926
    .line 927
    new-instance v0, Ljava/util/ArrayList;

    .line 928
    .line 929
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 930
    .line 931
    .line 932
    const/4 v3, 0x0

    .line 933
    invoke-static {v3}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 934
    .line 935
    .line 936
    move-result-object v3

    .line 937
    invoke-static {v3, v0, v15}, Lcom/sgscq/vpn/handler/z;->w(Lcom/sgscq/vpn/w1;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 938
    .line 939
    .line 940
    invoke-static {v0, v2, v15}, Lcom/sgscq/vpn/handler/z;->p(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    .line 941
    .line 942
    .line 943
    goto :goto_16

    .line 944
    :cond_2a
    move-object/from16 v8, v21

    .line 945
    .line 946
    :goto_16
    move-object v0, v2

    .line 947
    goto :goto_18

    .line 948
    :goto_17
    invoke-static {v7}, Lcom/sgscq/vpn/handler/z;->g(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 949
    .line 950
    .line 951
    move-result-object v0

    .line 952
    :goto_18
    move-object v4, v8

    .line 953
    move-object/from16 v21, v12

    .line 954
    .line 955
    goto/16 :goto_2a

    .line 956
    .line 957
    :cond_2b
    move-object/from16 v8, v21

    .line 958
    .line 959
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 960
    .line 961
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 962
    .line 963
    .line 964
    const-string v11, "evolution_buffs.json"

    .line 965
    .line 966
    move-object/from16 v13, v22

    .line 967
    .line 968
    invoke-static {v13, v11}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 969
    .line 970
    .line 971
    move-result-object v11

    .line 972
    invoke-static {v11}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 973
    .line 974
    .line 975
    move-result-object v11

    .line 976
    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 977
    .line 978
    .line 979
    move-result-object v11

    .line 980
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 981
    .line 982
    .line 983
    move-result-object v11

    .line 984
    :goto_19
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 985
    .line 986
    .line 987
    move-result v14

    .line 988
    if-eqz v14, :cond_2d

    .line 989
    .line 990
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 991
    .line 992
    .line 993
    move-result-object v14

    .line 994
    check-cast v14, Ljava/util/Map$Entry;

    .line 995
    .line 996
    move-object/from16 p1, v7

    .line 997
    .line 998
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 999
    .line 1000
    .line 1001
    move-result-object v7

    .line 1002
    instance-of v7, v7, Ljava/util/Map;

    .line 1003
    .line 1004
    if-eqz v7, :cond_2c

    .line 1005
    .line 1006
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v7

    .line 1010
    check-cast v7, Ljava/lang/String;

    .line 1011
    .line 1012
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v14

    .line 1016
    check-cast v14, Ljava/util/Map;

    .line 1017
    .line 1018
    invoke-interface {v0, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    .line 1020
    .line 1021
    :cond_2c
    move-object/from16 v7, p1

    .line 1022
    .line 1023
    goto :goto_19

    .line 1024
    :cond_2d
    move-object/from16 p1, v7

    .line 1025
    .line 1026
    invoke-static {v12, v1}, Lcom/sgscq/vpn/handler/z;->r(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v7

    .line 1030
    invoke-virtual {v0, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v0

    .line 1034
    check-cast v0, Ljava/util/Map;

    .line 1035
    .line 1036
    invoke-static {v13}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v7

    .line 1040
    invoke-static {v12, v1}, Lcom/sgscq/vpn/handler/z;->r(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v11

    .line 1044
    invoke-static {v11, v15}, Lcom/sgscq/vpn/handler/z;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v11

    .line 1048
    if-eqz v11, :cond_49

    .line 1049
    .line 1050
    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v14

    .line 1054
    move-object/from16 v22, v13

    .line 1055
    .line 1056
    const/4 v13, 0x0

    .line 1057
    invoke-static {v14, v13}, Lcom/sgscq/vpn/handler/z;->u(Ljava/lang/Object;I)I

    .line 1058
    .line 1059
    .line 1060
    move-result v13

    .line 1061
    const/4 v14, 0x1

    .line 1062
    if-eq v13, v14, :cond_2e

    .line 1063
    .line 1064
    move-object v4, v8

    .line 1065
    move-object/from16 v21, v12

    .line 1066
    .line 1067
    goto/16 :goto_28

    .line 1068
    .line 1069
    :cond_2e
    const-string v13, "evolution_level"

    .line 1070
    .line 1071
    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v1

    .line 1075
    invoke-static {v1, v14}, Lcom/sgscq/vpn/handler/z;->u(Ljava/lang/Object;I)I

    .line 1076
    .line 1077
    .line 1078
    move-result v1

    .line 1079
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    .line 1080
    .line 1081
    .line 1082
    move-result v1

    .line 1083
    move-object/from16 v21, v12

    .line 1084
    .line 1085
    const-string v12, "sub_level"

    .line 1086
    .line 1087
    move-object/from16 v23, v9

    .line 1088
    .line 1089
    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v9

    .line 1093
    invoke-static {v9, v14}, Lcom/sgscq/vpn/handler/z;->u(Ljava/lang/Object;I)I

    .line 1094
    .line 1095
    .line 1096
    move-result v9

    .line 1097
    invoke-static {v14, v9}, Ljava/lang/Math;->max(II)I

    .line 1098
    .line 1099
    .line 1100
    move-result v9

    .line 1101
    const/4 v14, 0x7

    .line 1102
    move-object/from16 v24, v8

    .line 1103
    .line 1104
    const/4 v8, 0x5

    .line 1105
    if-lt v1, v8, :cond_2f

    .line 1106
    .line 1107
    if-lt v9, v14, :cond_2f

    .line 1108
    .line 1109
    const/4 v1, 0x0

    .line 1110
    const/4 v8, 0x1

    .line 1111
    goto :goto_1a

    .line 1112
    :cond_2f
    const/4 v8, 0x1

    .line 1113
    if-lt v9, v14, :cond_30

    .line 1114
    .line 1115
    add-int/2addr v1, v8

    .line 1116
    filled-new-array {v1, v8}, [I

    .line 1117
    .line 1118
    .line 1119
    move-result-object v1

    .line 1120
    goto :goto_1a

    .line 1121
    :cond_30
    add-int/2addr v9, v8

    .line 1122
    filled-new-array {v1, v9}, [I

    .line 1123
    .line 1124
    .line 1125
    move-result-object v1

    .line 1126
    :goto_1a
    if-nez v1, :cond_31

    .line 1127
    .line 1128
    const-string v0, "\u8fdb\u5316\u5df2\u8fbe\u5230\u6700\u9ad8\u7b49\u7ea7"

    .line 1129
    .line 1130
    move-object v7, v0

    .line 1131
    goto/16 :goto_21

    .line 1132
    .line 1133
    :cond_31
    const/4 v9, 0x0

    .line 1134
    aget v9, v1, v9

    .line 1135
    .line 1136
    aget v8, v1, v8

    .line 1137
    .line 1138
    invoke-static {v9, v8, v0}, Lcom/sgscq/vpn/handler/z;->c(IILjava/util/Map;)Ljava/util/ArrayList;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v8

    .line 1142
    if-nez v8, :cond_32

    .line 1143
    .line 1144
    const/4 v8, 0x0

    .line 1145
    move-object/from16 v27, v2

    .line 1146
    .line 1147
    move-object/from16 v28, v3

    .line 1148
    .line 1149
    move-object/from16 v29, v4

    .line 1150
    .line 1151
    move-object/from16 v26, v7

    .line 1152
    .line 1153
    goto/16 :goto_1f

    .line 1154
    .line 1155
    :cond_32
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v8

    .line 1159
    :goto_1b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1160
    .line 1161
    .line 1162
    move-result v9

    .line 1163
    if-eqz v9, :cond_39

    .line 1164
    .line 1165
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v9

    .line 1169
    check-cast v9, Ljava/util/Map;

    .line 1170
    .line 1171
    const-string v14, "item_list"

    .line 1172
    .line 1173
    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v9

    .line 1177
    instance-of v14, v9, Ljava/util/List;

    .line 1178
    .line 1179
    if-nez v14, :cond_33

    .line 1180
    .line 1181
    goto :goto_1b

    .line 1182
    :cond_33
    check-cast v9, Ljava/util/List;

    .line 1183
    .line 1184
    new-instance v14, Ljava/util/LinkedHashMap;

    .line 1185
    .line 1186
    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1187
    .line 1188
    .line 1189
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v9

    .line 1193
    :goto_1c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 1194
    .line 1195
    .line 1196
    move-result v25

    .line 1197
    if-eqz v25, :cond_37

    .line 1198
    .line 1199
    move-object/from16 p1, v8

    .line 1200
    .line 1201
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v8

    .line 1205
    move-object/from16 v25, v9

    .line 1206
    .line 1207
    instance-of v9, v8, Ljava/util/List;

    .line 1208
    .line 1209
    if-nez v9, :cond_34

    .line 1210
    .line 1211
    move-object/from16 v26, v7

    .line 1212
    .line 1213
    goto :goto_1d

    .line 1214
    :cond_34
    check-cast v8, Ljava/util/List;

    .line 1215
    .line 1216
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 1217
    .line 1218
    .line 1219
    move-result v9

    .line 1220
    move-object/from16 v26, v7

    .line 1221
    .line 1222
    const/4 v7, 0x3

    .line 1223
    if-ge v9, v7, :cond_35

    .line 1224
    .line 1225
    :goto_1d
    move-object/from16 v8, p1

    .line 1226
    .line 1227
    move-object/from16 v9, v25

    .line 1228
    .line 1229
    move-object/from16 v7, v26

    .line 1230
    .line 1231
    goto :goto_1c

    .line 1232
    :cond_35
    const/4 v7, 0x0

    .line 1233
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v9

    .line 1237
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v9

    .line 1241
    move-object/from16 v27, v2

    .line 1242
    .line 1243
    const/4 v2, 0x1

    .line 1244
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v2

    .line 1248
    invoke-static {v2, v7}, Lcom/sgscq/vpn/handler/z;->u(Ljava/lang/Object;I)I

    .line 1249
    .line 1250
    .line 1251
    move-result v2

    .line 1252
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    .line 1253
    .line 1254
    .line 1255
    move-result v2

    .line 1256
    move-object/from16 v28, v3

    .line 1257
    .line 1258
    const/4 v3, 0x2

    .line 1259
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v3

    .line 1263
    invoke-static {v3, v7}, Lcom/sgscq/vpn/handler/z;->u(Ljava/lang/Object;I)I

    .line 1264
    .line 1265
    .line 1266
    move-result v3

    .line 1267
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1268
    .line 1269
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1270
    .line 1271
    .line 1272
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1273
    .line 1274
    .line 1275
    const-string v8, ":"

    .line 1276
    .line 1277
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    .line 1279
    .line 1280
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    .line 1282
    .line 1283
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v7

    .line 1287
    invoke-virtual {v14, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v8

    .line 1291
    check-cast v8, Lcom/sgscq/vpn/handler/y;

    .line 1292
    .line 1293
    move-object/from16 v29, v4

    .line 1294
    .line 1295
    new-instance v4, Lcom/sgscq/vpn/handler/y;

    .line 1296
    .line 1297
    if-nez v8, :cond_36

    .line 1298
    .line 1299
    const/4 v8, 0x0

    .line 1300
    goto :goto_1e

    .line 1301
    :cond_36
    iget v8, v8, Lcom/sgscq/vpn/handler/y;->b:I

    .line 1302
    .line 1303
    :goto_1e
    add-int/2addr v2, v8

    .line 1304
    invoke-direct {v4, v9, v2, v3}, Lcom/sgscq/vpn/handler/y;-><init>(Ljava/lang/String;II)V

    .line 1305
    .line 1306
    .line 1307
    invoke-interface {v14, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    .line 1309
    .line 1310
    move-object/from16 v8, p1

    .line 1311
    .line 1312
    move-object/from16 v9, v25

    .line 1313
    .line 1314
    move-object/from16 v7, v26

    .line 1315
    .line 1316
    move-object/from16 v2, v27

    .line 1317
    .line 1318
    move-object/from16 v3, v28

    .line 1319
    .line 1320
    move-object/from16 v4, v29

    .line 1321
    .line 1322
    goto/16 :goto_1c

    .line 1323
    .line 1324
    :cond_37
    move-object/from16 v27, v2

    .line 1325
    .line 1326
    move-object/from16 v28, v3

    .line 1327
    .line 1328
    move-object/from16 v29, v4

    .line 1329
    .line 1330
    move-object/from16 v26, v7

    .line 1331
    .line 1332
    move-object/from16 p1, v8

    .line 1333
    .line 1334
    new-instance v8, Ljava/util/ArrayList;

    .line 1335
    .line 1336
    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v2

    .line 1340
    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1341
    .line 1342
    .line 1343
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1344
    .line 1345
    .line 1346
    move-result v2

    .line 1347
    if-nez v2, :cond_38

    .line 1348
    .line 1349
    goto :goto_1f

    .line 1350
    :cond_38
    move-object/from16 v8, p1

    .line 1351
    .line 1352
    move-object/from16 v7, v26

    .line 1353
    .line 1354
    move-object/from16 v2, v27

    .line 1355
    .line 1356
    move-object/from16 v3, v28

    .line 1357
    .line 1358
    move-object/from16 v4, v29

    .line 1359
    .line 1360
    goto/16 :goto_1b

    .line 1361
    .line 1362
    :cond_39
    move-object/from16 v27, v2

    .line 1363
    .line 1364
    move-object/from16 v28, v3

    .line 1365
    .line 1366
    move-object/from16 v29, v4

    .line 1367
    .line 1368
    move-object/from16 v26, v7

    .line 1369
    .line 1370
    new-instance v8, Ljava/util/ArrayList;

    .line 1371
    .line 1372
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1373
    .line 1374
    .line 1375
    :goto_1f
    if-nez v8, :cond_3a

    .line 1376
    .line 1377
    const-string v8, "\u89c9\u9192\u8282\u70b9\u914d\u7f6e\u4e0d\u5b58\u5728"

    .line 1378
    .line 1379
    goto :goto_20

    .line 1380
    :cond_3a
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v2

    .line 1384
    :cond_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1385
    .line 1386
    .line 1387
    move-result v3

    .line 1388
    if-eqz v3, :cond_3c

    .line 1389
    .line 1390
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v3

    .line 1394
    check-cast v3, Lcom/sgscq/vpn/handler/y;

    .line 1395
    .line 1396
    invoke-static {v15, v3}, Lcom/sgscq/vpn/handler/z;->k(Ljava/util/Map;Lcom/sgscq/vpn/handler/y;)Z

    .line 1397
    .line 1398
    .line 1399
    move-result v3

    .line 1400
    if-nez v3, :cond_3b

    .line 1401
    .line 1402
    move-object/from16 v8, v16

    .line 1403
    .line 1404
    :goto_20
    move-object v7, v8

    .line 1405
    :goto_21
    move-object/from16 v4, v24

    .line 1406
    .line 1407
    goto/16 :goto_29

    .line 1408
    .line 1409
    :cond_3c
    invoke-static {v8, v15}, Lcom/sgscq/vpn/handler/z;->e(Ljava/util/ArrayList;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v2

    .line 1413
    const/4 v3, 0x0

    .line 1414
    aget v4, v1, v3

    .line 1415
    .line 1416
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v4

    .line 1420
    invoke-interface {v11, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    .line 1422
    .line 1423
    const/4 v4, 0x1

    .line 1424
    aget v7, v1, v4

    .line 1425
    .line 1426
    invoke-static {v7, v11, v12, v4, v10}, Lc/a;->t(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 1427
    .line 1428
    .line 1429
    aget v3, v1, v3

    .line 1430
    .line 1431
    aget v1, v1, v4

    .line 1432
    .line 1433
    invoke-static {v3, v1, v0}, Lcom/sgscq/vpn/handler/z;->c(IILjava/util/Map;)Ljava/util/ArrayList;

    .line 1434
    .line 1435
    .line 1436
    move-result-object v0

    .line 1437
    new-instance v1, Ljava/util/ArrayList;

    .line 1438
    .line 1439
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1440
    .line 1441
    .line 1442
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v0

    .line 1446
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1447
    .line 1448
    .line 1449
    move-result v3

    .line 1450
    if-eqz v3, :cond_48

    .line 1451
    .line 1452
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v3

    .line 1456
    check-cast v3, Ljava/util/Map;

    .line 1457
    .line 1458
    const-string v4, "buff_type"

    .line 1459
    .line 1460
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    .line 1462
    .line 1463
    move-result-object v4

    .line 1464
    const/4 v7, 0x0

    .line 1465
    invoke-static {v4, v7}, Lcom/sgscq/vpn/handler/z;->u(Ljava/lang/Object;I)I

    .line 1466
    .line 1467
    .line 1468
    move-result v4

    .line 1469
    const/4 v7, 0x5

    .line 1470
    if-ne v4, v7, :cond_40

    .line 1471
    .line 1472
    invoke-interface {v11, v6, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v3

    .line 1476
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1477
    .line 1478
    .line 1479
    move-result-object v3

    .line 1480
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 1481
    .line 1482
    .line 1483
    move-result v4

    .line 1484
    move-object/from16 v7, v20

    .line 1485
    .line 1486
    if-eqz v4, :cond_3d

    .line 1487
    .line 1488
    goto/16 :goto_26

    .line 1489
    .line 1490
    :cond_3d
    invoke-static {v7, v15}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v4

    .line 1494
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v4

    .line 1498
    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1499
    .line 1500
    .line 1501
    move-result v8

    .line 1502
    if-eqz v8, :cond_47

    .line 1503
    .line 1504
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1505
    .line 1506
    .line 1507
    move-result-object v8

    .line 1508
    check-cast v8, Ljava/util/Map;

    .line 1509
    .line 1510
    invoke-static {v8, v6, v5, v3}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1511
    .line 1512
    .line 1513
    move-result v9

    .line 1514
    if-nez v9, :cond_3e

    .line 1515
    .line 1516
    goto :goto_23

    .line 1517
    :cond_3e
    const-string v9, "evolution_image_status"

    .line 1518
    .line 1519
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    .line 1521
    .line 1522
    move-result-object v10

    .line 1523
    const/4 v12, 0x0

    .line 1524
    invoke-static {v10, v12}, Lcom/sgscq/vpn/handler/z;->u(Ljava/lang/Object;I)I

    .line 1525
    .line 1526
    .line 1527
    move-result v10

    .line 1528
    const/4 v12, 0x1

    .line 1529
    if-ne v10, v12, :cond_3f

    .line 1530
    .line 1531
    goto :goto_23

    .line 1532
    :cond_3f
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1533
    .line 1534
    .line 1535
    move-result-object v10

    .line 1536
    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1537
    .line 1538
    .line 1539
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1540
    .line 1541
    .line 1542
    goto :goto_23

    .line 1543
    :cond_40
    move-object/from16 v7, v20

    .line 1544
    .line 1545
    const/4 v8, 0x6

    .line 1546
    const/4 v9, 0x1

    .line 1547
    if-ne v4, v8, :cond_41

    .line 1548
    .line 1549
    const-string v3, "surrender_status"

    .line 1550
    .line 1551
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1552
    .line 1553
    .line 1554
    move-result-object v4

    .line 1555
    invoke-interface {v11, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1556
    .line 1557
    .line 1558
    goto/16 :goto_26

    .line 1559
    .line 1560
    :cond_41
    const/16 v8, 0xa

    .line 1561
    .line 1562
    if-ne v4, v8, :cond_47

    .line 1563
    .line 1564
    const-string v4, "buff_effect"

    .line 1565
    .line 1566
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    .line 1568
    .line 1569
    move-result-object v3

    .line 1570
    instance-of v4, v3, Ljava/util/List;

    .line 1571
    .line 1572
    if-nez v4, :cond_42

    .line 1573
    .line 1574
    :goto_24
    goto/16 :goto_26

    .line 1575
    .line 1576
    :cond_42
    check-cast v3, Ljava/util/List;

    .line 1577
    .line 1578
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1579
    .line 1580
    .line 1581
    move-result v4

    .line 1582
    const/4 v8, 0x2

    .line 1583
    if-ge v4, v8, :cond_43

    .line 1584
    .line 1585
    goto :goto_24

    .line 1586
    :cond_43
    const/4 v4, 0x0

    .line 1587
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1588
    .line 1589
    .line 1590
    move-result-object v4

    .line 1591
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1592
    .line 1593
    .line 1594
    move-result-object v4

    .line 1595
    const/4 v8, 0x1

    .line 1596
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1597
    .line 1598
    .line 1599
    move-result-object v3

    .line 1600
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1601
    .line 1602
    .line 1603
    move-result-object v3

    .line 1604
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 1605
    .line 1606
    .line 1607
    move-result v8

    .line 1608
    if-nez v8, :cond_47

    .line 1609
    .line 1610
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 1611
    .line 1612
    .line 1613
    move-result v8

    .line 1614
    if-eqz v8, :cond_44

    .line 1615
    .line 1616
    goto :goto_24

    .line 1617
    :cond_44
    move-object/from16 v8, v29

    .line 1618
    .line 1619
    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    .line 1621
    .line 1622
    move-result-object v9

    .line 1623
    invoke-static {v9}, Lcom/sgscq/vpn/handler/z;->s(Ljava/lang/Object;)Ljava/util/List;

    .line 1624
    .line 1625
    .line 1626
    move-result-object v9

    .line 1627
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1628
    .line 1629
    .line 1630
    move-result-object v10

    .line 1631
    :goto_25
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 1632
    .line 1633
    .line 1634
    move-result v12

    .line 1635
    const-string v13, "right"

    .line 1636
    .line 1637
    if-eqz v12, :cond_46

    .line 1638
    .line 1639
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1640
    .line 1641
    .line 1642
    move-result-object v12

    .line 1643
    check-cast v12, Ljava/util/Map;

    .line 1644
    .line 1645
    move-object/from16 v14, v28

    .line 1646
    .line 1647
    invoke-static {v12, v14, v4}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1648
    .line 1649
    .line 1650
    move-result v16

    .line 1651
    if-eqz v16, :cond_45

    .line 1652
    .line 1653
    invoke-static {v12, v13, v3}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1654
    .line 1655
    .line 1656
    move-result v12

    .line 1657
    if-eqz v12, :cond_45

    .line 1658
    .line 1659
    move-object/from16 v12, v27

    .line 1660
    .line 1661
    goto :goto_27

    .line 1662
    :cond_45
    move-object/from16 v28, v14

    .line 1663
    .line 1664
    goto :goto_25

    .line 1665
    :cond_46
    move-object/from16 v14, v28

    .line 1666
    .line 1667
    const/4 v10, 0x0

    .line 1668
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1669
    .line 1670
    .line 1671
    move-result-object v10

    .line 1672
    move-object/from16 v12, v27

    .line 1673
    .line 1674
    filled-new-array {v13, v3, v12, v10}, [Ljava/lang/Object;

    .line 1675
    .line 1676
    .line 1677
    move-result-object v3

    .line 1678
    invoke-static {v14, v4, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1679
    .line 1680
    .line 1681
    move-result-object v3

    .line 1682
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1683
    .line 1684
    .line 1685
    invoke-static {v9}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 1686
    .line 1687
    .line 1688
    move-result-object v3

    .line 1689
    invoke-interface {v11, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1690
    .line 1691
    .line 1692
    goto :goto_27

    .line 1693
    :cond_47
    :goto_26
    move-object/from16 v12, v27

    .line 1694
    .line 1695
    move-object/from16 v14, v28

    .line 1696
    .line 1697
    move-object/from16 v8, v29

    .line 1698
    .line 1699
    :goto_27
    move-object/from16 v20, v7

    .line 1700
    .line 1701
    move-object/from16 v29, v8

    .line 1702
    .line 1703
    move-object/from16 v27, v12

    .line 1704
    .line 1705
    move-object/from16 v28, v14

    .line 1706
    .line 1707
    goto/16 :goto_22

    .line 1708
    .line 1709
    :cond_48
    move-object/from16 v3, v26

    .line 1710
    .line 1711
    invoke-static {v3, v1, v15}, Lcom/sgscq/vpn/handler/z;->w(Lcom/sgscq/vpn/w1;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 1712
    .line 1713
    .line 1714
    invoke-static {}, Lcom/sgscq/vpn/handler/z;->v()Ljava/util/LinkedHashMap;

    .line 1715
    .line 1716
    .line 1717
    move-result-object v0

    .line 1718
    invoke-static {v15, v11}, Lcom/sgscq/vpn/handler/z;->x(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1719
    .line 1720
    .line 1721
    move-result-object v3

    .line 1722
    move-object/from16 v4, v24

    .line 1723
    .line 1724
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    .line 1726
    .line 1727
    move-object/from16 v3, v23

    .line 1728
    .line 1729
    invoke-interface {v0, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1730
    .line 1731
    .line 1732
    invoke-static {v1, v0, v15}, Lcom/sgscq/vpn/handler/z;->p(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    .line 1733
    .line 1734
    .line 1735
    invoke-static {v0, v2}, Lcom/sgscq/vpn/handler/z;->o(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V

    .line 1736
    .line 1737
    .line 1738
    goto :goto_2a

    .line 1739
    :cond_49
    move-object v4, v8

    .line 1740
    move-object/from16 v21, v12

    .line 1741
    .line 1742
    move-object/from16 v22, v13

    .line 1743
    .line 1744
    :goto_28
    move-object/from16 v7, p1

    .line 1745
    .line 1746
    :goto_29
    invoke-static {v7}, Lcom/sgscq/vpn/handler/z;->g(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1747
    .line 1748
    .line 1749
    move-result-object v0

    .line 1750
    :goto_2a
    invoke-static {v0}, Lcom/sgscq/vpn/handler/z;->m(Ljava/util/LinkedHashMap;)Z

    .line 1751
    .line 1752
    .line 1753
    move-result v1

    .line 1754
    const-string v2, "cmn_modules"

    .line 1755
    .line 1756
    if-eqz v1, :cond_51

    .line 1757
    .line 1758
    move-object/from16 v1, p2

    .line 1759
    .line 1760
    move-object/from16 v3, v21

    .line 1761
    .line 1762
    invoke-static {v3, v1}, Lcom/sgscq/vpn/handler/z;->r(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1763
    .line 1764
    .line 1765
    move-result-object v1

    .line 1766
    invoke-static {v1, v15}, Lcom/sgscq/vpn/handler/z;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 1767
    .line 1768
    .line 1769
    move-result-object v1

    .line 1770
    if-eqz v1, :cond_4a

    .line 1771
    .line 1772
    new-instance v1, Ljava/util/ArrayList;

    .line 1773
    .line 1774
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1775
    .line 1776
    .line 1777
    invoke-static/range {v22 .. v22}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 1778
    .line 1779
    .line 1780
    move-result-object v3

    .line 1781
    invoke-static {v3, v1, v15}, Lcom/sgscq/vpn/handler/z;->w(Lcom/sgscq/vpn/w1;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 1782
    .line 1783
    .line 1784
    invoke-static {v1, v0, v15}, Lcom/sgscq/vpn/handler/z;->p(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    .line 1785
    .line 1786
    .line 1787
    :cond_4a
    new-instance v1, Ljava/util/ArrayList;

    .line 1788
    .line 1789
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1790
    .line 1791
    .line 1792
    :try_start_1
    invoke-static/range {v22 .. v22}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 1793
    .line 1794
    .line 1795
    move-result-object v3

    .line 1796
    invoke-virtual {v3}, Lcom/sgscq/vpn/w1;->V1()Lcom/sgscq/vpn/a7;

    .line 1797
    .line 1798
    .line 1799
    move-result-object v3

    .line 1800
    if-nez v3, :cond_4b

    .line 1801
    .line 1802
    goto :goto_2c

    .line 1803
    :cond_4b
    invoke-virtual {v3}, Lcom/sgscq/vpn/a7;->a()Ljava/util/Set;

    .line 1804
    .line 1805
    .line 1806
    move-result-object v5

    .line 1807
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1808
    .line 1809
    .line 1810
    move-result-object v5

    .line 1811
    :cond_4c
    :goto_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1812
    .line 1813
    .line 1814
    move-result v6

    .line 1815
    if-eqz v6, :cond_4d

    .line 1816
    .line 1817
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1818
    .line 1819
    .line 1820
    move-result-object v6

    .line 1821
    check-cast v6, Ljava/lang/String;

    .line 1822
    .line 1823
    invoke-virtual {v3, v6}, Lcom/sgscq/vpn/a7;->b(Ljava/lang/String;)Ljava/util/Map;

    .line 1824
    .line 1825
    .line 1826
    move-result-object v6

    .line 1827
    if-eqz v6, :cond_4c

    .line 1828
    .line 1829
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1830
    .line 1831
    .line 1832
    goto :goto_2b

    .line 1833
    :catch_1
    :cond_4d
    :goto_2c
    invoke-static {v1, v15}, Lcom/sgscq/vpn/handler/y0;->c(Ljava/util/List;Ljava/util/Map;)Lcom/sgscq/vpn/handler/j;

    .line 1834
    .line 1835
    .line 1836
    move-result-object v1

    .line 1837
    invoke-virtual {v1}, Lcom/sgscq/vpn/handler/j;->c()Z

    .line 1838
    .line 1839
    .line 1840
    move-result v3

    .line 1841
    if-nez v3, :cond_4e

    .line 1842
    .line 1843
    goto :goto_2f

    .line 1844
    :cond_4e
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1845
    .line 1846
    .line 1847
    move-result-object v3

    .line 1848
    instance-of v3, v3, Ljava/util/Map;

    .line 1849
    .line 1850
    if-eqz v3, :cond_4f

    .line 1851
    .line 1852
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 1853
    .line 1854
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1855
    .line 1856
    .line 1857
    move-result-object v5

    .line 1858
    check-cast v5, Ljava/util/Map;

    .line 1859
    .line 1860
    invoke-direct {v3, v5}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 1861
    .line 1862
    .line 1863
    goto :goto_2d

    .line 1864
    :cond_4f
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 1865
    .line 1866
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1867
    .line 1868
    .line 1869
    :goto_2d
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1870
    .line 1871
    .line 1872
    move-result-object v5

    .line 1873
    invoke-static {v5}, Lcom/sgscq/vpn/handler/z;->q(Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 1874
    .line 1875
    .line 1876
    move-result-object v5

    .line 1877
    invoke-virtual {v1, v3, v5}, Lcom/sgscq/vpn/handler/j;->a(Ljava/util/Map;Ljava/util/AbstractCollection;)V

    .line 1878
    .line 1879
    .line 1880
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/handler/j;->b(Ljava/util/Map;)V

    .line 1881
    .line 1882
    .line 1883
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1884
    .line 1885
    .line 1886
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1887
    .line 1888
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1889
    .line 1890
    .line 1891
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1892
    .line 1893
    .line 1894
    move-result-object v3

    .line 1895
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1896
    .line 1897
    .line 1898
    move-result v5

    .line 1899
    if-eqz v5, :cond_50

    .line 1900
    .line 1901
    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1902
    .line 1903
    .line 1904
    move-result-object v5

    .line 1905
    check-cast v5, Ljava/lang/CharSequence;

    .line 1906
    .line 1907
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1908
    .line 1909
    .line 1910
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1911
    .line 1912
    .line 1913
    move-result v5

    .line 1914
    if-eqz v5, :cond_50

    .line 1915
    .line 1916
    const-string v5, ","

    .line 1917
    .line 1918
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1919
    .line 1920
    .line 1921
    goto :goto_2e

    .line 1922
    :cond_50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1923
    .line 1924
    .line 1925
    move-result-object v1

    .line 1926
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1927
    .line 1928
    .line 1929
    :cond_51
    :goto_2f
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1930
    .line 1931
    .line 1932
    move-result-object v1

    .line 1933
    instance-of v1, v1, Ljava/util/Map;

    .line 1934
    .line 1935
    if-eqz v1, :cond_52

    .line 1936
    .line 1937
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1938
    .line 1939
    .line 1940
    move-result-object v1

    .line 1941
    check-cast v1, Ljava/util/Map;

    .line 1942
    .line 1943
    goto :goto_30

    .line 1944
    :cond_52
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 1945
    .line 1946
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1947
    .line 1948
    .line 1949
    :goto_30
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1950
    .line 1951
    .line 1952
    move-result-object v2

    .line 1953
    invoke-static {v2}, Lcom/sgscq/vpn/handler/z;->q(Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 1954
    .line 1955
    .line 1956
    move-result-object v2

    .line 1957
    const-string v3, "Player"

    .line 1958
    .line 1959
    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1960
    .line 1961
    .line 1962
    const/4 v3, 0x0

    .line 1963
    new-array v4, v3, [Ljava/lang/String;

    .line 1964
    .line 1965
    invoke-interface {v2, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1966
    .line 1967
    .line 1968
    move-result-object v2

    .line 1969
    check-cast v2, [Ljava/lang/String;

    .line 1970
    .line 1971
    move-object/from16 v13, v19

    .line 1972
    .line 1973
    iget-object v4, v13, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 1974
    .line 1975
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 1976
    .line 1977
    .line 1978
    move-result-wide v5

    .line 1979
    long-to-int v5, v5

    .line 1980
    invoke-virtual {v13}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 1981
    .line 1982
    .line 1983
    move-result v6

    .line 1984
    int-to-long v6, v6

    .line 1985
    invoke-virtual {v13, v6, v7, v15}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 1986
    .line 1987
    .line 1988
    move-result-wide v9

    .line 1989
    const-string v6, "user_gold"

    .line 1990
    .line 1991
    invoke-virtual {v13}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 1992
    .line 1993
    .line 1994
    move-result v7

    .line 1995
    invoke-virtual {v13, v7, v6, v15}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1996
    .line 1997
    .line 1998
    move-result v6

    .line 1999
    const-string v7, "user_energy"

    .line 2000
    .line 2001
    invoke-virtual {v13}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 2002
    .line 2003
    .line 2004
    move-result v8

    .line 2005
    invoke-virtual {v13, v8, v7, v15}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 2006
    .line 2007
    .line 2008
    move-result v7

    .line 2009
    const-string v8, "user_power"

    .line 2010
    .line 2011
    invoke-virtual {v13}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 2012
    .line 2013
    .line 2014
    move-result v11

    .line 2015
    invoke-virtual {v13, v11, v8, v15}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 2016
    .line 2017
    .line 2018
    move-result v8

    .line 2019
    move-object/from16 v11, v17

    .line 2020
    .line 2021
    move-object v12, v15

    .line 2022
    invoke-virtual/range {v4 .. v12}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 2023
    .line 2024
    .line 2025
    move-result-object v4

    .line 2026
    move-object/from16 v5, v18

    .line 2027
    .line 2028
    invoke-virtual {v5, v1, v4, v2}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 2029
    .line 2030
    .line 2031
    move-result-object v1

    .line 2032
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 2033
    .line 2034
    .line 2035
    move-result-object v1

    .line 2036
    array-length v4, v2

    .line 2037
    :goto_31
    if-ge v3, v4, :cond_54

    .line 2038
    .line 2039
    aget-object v6, v2, v3

    .line 2040
    .line 2041
    const-string v7, "TeamGeneral"

    .line 2042
    .line 2043
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2044
    .line 2045
    .line 2046
    move-result v6

    .line 2047
    if-eqz v6, :cond_53

    .line 2048
    .line 2049
    invoke-virtual {v5, v15}, Lcom/sgscq/vpn/h5;->j0(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 2050
    .line 2051
    .line 2052
    move-result-object v2

    .line 2053
    const-string v3, "team_info"

    .line 2054
    .line 2055
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2056
    .line 2057
    .line 2058
    goto :goto_32

    .line 2059
    :cond_53
    add-int/lit8 v3, v3, 0x1

    .line 2060
    .line 2061
    goto :goto_31

    .line 2062
    :cond_54
    :goto_32
    const-string v2, "cmn"

    .line 2063
    .line 2064
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2065
    .line 2066
    .line 2067
    invoke-static {v0}, Lcom/sgscq/vpn/handler/z;->m(Ljava/util/LinkedHashMap;)Z

    .line 2068
    .line 2069
    .line 2070
    move-result v1

    .line 2071
    if-eqz v1, :cond_55

    .line 2072
    .line 2073
    move-object/from16 v1, v17

    .line 2074
    .line 2075
    invoke-virtual {v5, v1, v15}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 2076
    .line 2077
    .line 2078
    :cond_55
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 2079
    .line 2080
    .line 2081
    move-result-object v0

    .line 2082
    invoke-virtual {v13, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 2083
    .line 2084
    .line 2085
    move-result-object v0

    .line 2086
    return-object v0
.end method
