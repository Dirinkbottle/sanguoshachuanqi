.class public final Lcom/sgscq/vpn/config/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/HashSet;

.field public static final c:Ljava/util/HashSet;

.field public static final d:Ljava/util/HashSet;

.field public static final e:Ljava/util/HashSet;


# instance fields
.field public final a:La/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "regular"

    const-string v2, "special"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sgscq/vpn/config/j;->b:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "equipment"

    const-string v2, "mount"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sgscq/vpn/config/j;->c:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "base"

    const-string v2, "evolution"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sgscq/vpn/config/j;->d:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "special_soul_30"

    const-string v2, "fate_equipment_box"

    const-string v3, "fate_equipment_whole"

    const-string v4, "fate_skill_gift"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sgscq/vpn/config/j;->e:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/o;

    invoke-direct {v0}, La/o;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/config/j;->a:La/o;

    return-void
.end method

.method public static a(Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPlannedRotation;Lm/e;Ljava/lang/String;IZLjava/lang/String;)Lcom/sgscq/vpn/cloud/q;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v4

    .line 13
    :cond_0
    iget-object v5, v0, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPlannedRotation;->startAt:Ljava/lang/String;

    .line 14
    .line 15
    const-string v6, ".start_at"

    .line 16
    .line 17
    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    invoke-static {v5, v6}, Lcom/sgscq/vpn/config/j;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    iget-object v6, v0, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPlannedRotation;->rounds:Ljava/util/List;

    .line 26
    .line 27
    if-eqz v6, :cond_1

    .line 28
    .line 29
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-nez v6, :cond_1

    .line 34
    .line 35
    const/4 v6, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v6, 0x0

    .line 38
    :goto_0
    const-string v9, ".rounds"

    .line 39
    .line 40
    invoke-virtual {v3, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    const-string v10, "must not be empty"

    .line 45
    .line 46
    invoke-static {v9, v10, v6}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    new-instance v6, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    new-instance v9, Ljava/util/HashSet;

    .line 55
    .line 56
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 57
    .line 58
    .line 59
    const/4 v10, 0x0

    .line 60
    :goto_1
    iget-object v11, v0, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPlannedRotation;->rounds:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result v11

    .line 66
    if-ge v10, v11, :cond_6

    .line 67
    .line 68
    iget-object v11, v0, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPlannedRotation;->rounds:Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v11

    .line 74
    check-cast v11, Ljava/util/List;

    .line 75
    .line 76
    new-instance v12, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v13, ".rounds["

    .line 85
    .line 86
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v13, "]"

    .line 93
    .line 94
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v12

    .line 101
    if-eqz v11, :cond_2

    .line 102
    .line 103
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 104
    .line 105
    .line 106
    move-result v13

    .line 107
    if-ne v13, v2, :cond_2

    .line 108
    .line 109
    const/4 v13, 0x1

    .line 110
    goto :goto_2

    .line 111
    :cond_2
    const/4 v13, 0x0

    .line 112
    :goto_2
    new-instance v14, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v15, "must contain exactly "

    .line 115
    .line 116
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v15, " general_ids"

    .line 123
    .line 124
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v14

    .line 131
    invoke-static {v12, v14, v13}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 132
    .line 133
    .line 134
    new-instance v13, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .line 138
    .line 139
    new-instance v14, Ljava/util/HashSet;

    .line 140
    .line 141
    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v11

    .line 148
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v15

    .line 152
    if-eqz v15, :cond_4

    .line 153
    .line 154
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v15

    .line 158
    check-cast v15, Ljava/lang/String;

    .line 159
    .line 160
    new-instance v7, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v8, ".general_id"

    .line 169
    .line 170
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    invoke-static {v15, v7}, Lcom/sgscq/vpn/config/j;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v14, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v7

    .line 184
    new-instance v8, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    const-string v0, "duplicate general_id "

    .line 187
    .line 188
    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-static {v12, v0, v7}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 199
    .line 200
    .line 201
    move-object/from16 v0, p1

    .line 202
    .line 203
    iget-object v7, v0, Lm/e;->d:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast v7, Ljava/util/Map;

    .line 206
    .line 207
    invoke-interface {v7, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    check-cast v7, Lcom/sgscq/vpn/config/c;

    .line 212
    .line 213
    if-eqz v7, :cond_3

    .line 214
    .line 215
    iget-boolean v8, v7, Lcom/sgscq/vpn/config/c;->d:Z

    .line 216
    .line 217
    if-eqz v8, :cond_3

    .line 218
    .line 219
    iget-object v7, v7, Lcom/sgscq/vpn/config/c;->c:Ljava/lang/String;

    .line 220
    .line 221
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v7

    .line 225
    if-eqz v7, :cond_3

    .line 226
    .line 227
    const/4 v7, 0x1

    .line 228
    goto :goto_4

    .line 229
    :cond_3
    const/4 v7, 0x0

    .line 230
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    const-string v0, "general_id must be enabled "

    .line 233
    .line 234
    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v0, ": "

    .line 241
    .line 242
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-static {v12, v0, v7}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-object/from16 v0, p0

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_4
    invoke-virtual {v9, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    const-string v7, "duplicate round order"

    .line 266
    .line 267
    invoke-static {v12, v7, v0}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 268
    .line 269
    .line 270
    if-eqz p4, :cond_5

    .line 271
    .line 272
    if-eqz v4, :cond_5

    .line 273
    .line 274
    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 279
    .line 280
    .line 281
    move-result v7

    .line 282
    if-eqz v7, :cond_5

    .line 283
    .line 284
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v7

    .line 288
    check-cast v7, Ljava/lang/String;

    .line 289
    .line 290
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v8

    .line 294
    const/4 v11, 0x1

    .line 295
    xor-int/2addr v8, v11

    .line 296
    new-instance v11, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    const-string v15, "general_id repeats previous round: "

    .line 299
    .line 300
    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v7

    .line 310
    invoke-static {v12, v7, v8}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 311
    .line 312
    .line 313
    goto :goto_5

    .line 314
    :cond_5
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    add-int/lit8 v10, v10, 0x1

    .line 318
    .line 319
    move-object/from16 v0, p0

    .line 320
    .line 321
    move-object v4, v14

    .line 322
    goto/16 :goto_1

    .line 323
    .line 324
    :cond_6
    new-instance v0, Lcom/sgscq/vpn/cloud/q;

    .line 325
    .line 326
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    .line 327
    .line 328
    .line 329
    move-result-wide v1

    .line 330
    const/4 v3, 0x1

    .line 331
    invoke-direct {v0, v3, v1, v2, v6}, Lcom/sgscq/vpn/cloud/q;-><init>(IJLjava/util/ArrayList;)V

    .line 332
    .line 333
    .line 334
    return-object v0
.end method

.method public static b(Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawRandomization;Ljava/lang/String;)Lcom/sgscq/vpn/config/f;
    .locals 3

    .line 1
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "missing object"

    invoke-static {p1, v1, v0}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawRandomization;->mode:Ljava/lang/String;

    const-string v1, "deterministic_shuffle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ".mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "must be deterministic_shuffle"

    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawRandomization;->seedNamespace:Ljava/lang/String;

    const-string v1, ".seed_namespace"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sgscq/vpn/config/j;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/sgscq/vpn/config/f;

    iget-object v0, p0, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawRandomization;->mode:Ljava/lang/String;

    iget-object v1, p0, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawRandomization;->seedNamespace:Ljava/lang/String;

    iget v2, p0, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawRandomization;->recentLookback:I

    iget-boolean p0, p0, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawRandomization;->avoidPreviousWeek:Z

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/sgscq/vpn/config/f;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object p1
.end method

.method public static c(Ljava/util/Map;Lcom/sgscq/vpn/config/h;Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    move v2, v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v2, v1

    .line 14
    :goto_0
    const-string v3, "must not be empty"

    .line 15
    .line 16
    invoke-static {p2, v3, v2}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v3, Ljava/util/HashSet;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_5

    .line 42
    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Ljava/util/Map$Entry;

    .line 48
    .line 49
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Ljava/lang/String;

    .line 54
    .line 55
    const-string v6, ".key"

    .line 56
    .line 57
    invoke-virtual {p2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-static {v5, v6}, Lcom/sgscq/vpn/config/j;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    check-cast v5, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPriceTier;

    .line 69
    .line 70
    if-eqz v5, :cond_1

    .line 71
    .line 72
    move v6, v0

    .line 73
    goto :goto_2

    .line 74
    :cond_1
    move v6, v1

    .line 75
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v8, "."

    .line 84
    .line 85
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    check-cast v9, Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    const-string v9, "missing object"

    .line 102
    .line 103
    invoke-static {v7, v9, v6}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 104
    .line 105
    .line 106
    iget v6, v5, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPriceTier;->qualityOrder:I

    .line 107
    .line 108
    if-lez v6, :cond_2

    .line 109
    .line 110
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-eqz v6, :cond_2

    .line 119
    .line 120
    move v6, v0

    .line 121
    goto :goto_3

    .line 122
    :cond_2
    move v6, v1

    .line 123
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    check-cast v9, Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v9, ".quality_order"

    .line 144
    .line 145
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    const-string v9, "must be positive and unique"

    .line 153
    .line 154
    invoke-static {v7, v9, v6}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 155
    .line 156
    .line 157
    iget v6, v5, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPriceTier;->boxPrice:I

    .line 158
    .line 159
    if-lez v6, :cond_3

    .line 160
    .line 161
    move v6, v0

    .line 162
    goto :goto_4

    .line 163
    :cond_3
    move v6, v1

    .line 164
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    check-cast v9, Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v9, ".box_price"

    .line 185
    .line 186
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    const-string v9, "must be positive"

    .line 194
    .line 195
    invoke-static {v7, v9, v6}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 196
    .line 197
    .line 198
    iget v6, v5, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPriceTier;->boxPrice:I

    .line 199
    .line 200
    int-to-long v6, v6

    .line 201
    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    iget v7, p1, Lcom/sgscq/vpn/config/h;->c:I

    .line 206
    .line 207
    int-to-long v9, v7

    .line 208
    invoke-static {v9, v10}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    invoke-virtual {v6, v7}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    iget v7, p1, Lcom/sgscq/vpn/config/h;->d:I

    .line 217
    .line 218
    int-to-long v9, v7

    .line 219
    invoke-static {v9, v10}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    invoke-virtual {v6, v7}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    const-wide/16 v9, 0x64

    .line 228
    .line 229
    invoke-static {v9, v10}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    sget-object v9, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 234
    .line 235
    invoke-virtual {v6, v7, v1, v9}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    invoke-virtual {v6}, Ljava/math/BigDecimal;->intValueExact()I

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    iget v7, v5, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPriceTier;->wholePrice:I

    .line 244
    .line 245
    if-ne v7, v6, :cond_4

    .line 246
    .line 247
    move v6, v0

    .line 248
    goto :goto_5

    .line 249
    :cond_4
    move v6, v1

    .line 250
    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v8

    .line 265
    check-cast v8, Ljava/lang/String;

    .line 266
    .line 267
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string v8, ".whole_price"

    .line 271
    .line 272
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v7

    .line 279
    const-string v8, "whole_price must match configured formula"

    .line 280
    .line 281
    invoke-static {v7, v8, v6}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 282
    .line 283
    .line 284
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    check-cast v4, Ljava/lang/String;

    .line 289
    .line 290
    new-instance v6, Lcom/sgscq/vpn/config/d;

    .line 291
    .line 292
    iget v7, v5, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPriceTier;->boxPrice:I

    .line 293
    .line 294
    iget v5, v5, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPriceTier;->wholePrice:I

    .line 295
    .line 296
    invoke-direct {v6, v7, v5}, Lcom/sgscq/vpn/config/d;-><init>(II)V

    .line 297
    .line 298
    .line 299
    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    goto/16 :goto_1

    .line 303
    .line 304
    :cond_5
    return-object v2
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lcom/sgscq/vpn/config/j;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssXXX"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setLenient(Z)V

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "invalid timestamp"

    invoke-static {p1, p0}, Lcom/sgscq/vpn/config/j;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/sgscq/vpn/config/j;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public static h(Ljava/lang/String;I)V
    .locals 1

    .line 1
    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "must be positive"

    invoke-static {p0, v0, p1}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "must not be empty"

    invoke-static {p1, v0, p0}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;)Lcom/sgscq/vpn/config/i;
    .locals 36

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "root"

    .line 10
    .line 11
    if-nez v0, :cond_38

    .line 12
    .line 13
    move-object/from16 v0, p0

    .line 14
    .line 15
    :try_start_0
    iget-object v2, v0, Lcom/sgscq/vpn/config/j;->a:La/o;

    .line 16
    .line 17
    const-class v3, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawConfig;

    .line 18
    .line 19
    move-object/from16 v4, p1

    .line 20
    .line 21
    invoke-virtual {v2, v4, v3}, La/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawConfig;
    :try_end_0
    .catch La/u; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v3, 0x0

    .line 32
    :goto_0
    const-string v4, "missing object"

    .line 33
    .line 34
    invoke-static {v1, v4, v3}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    iget v1, v2, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawConfig;->schemaVersion:I

    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    if-ne v1, v3, :cond_1

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 v1, 0x0

    .line 45
    :goto_1
    const-string v3, "schema_version"

    .line 46
    .line 47
    const-string v5, "must be 2"

    .line 48
    .line 49
    invoke-static {v3, v5, v1}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v2, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawConfig;->configId:Ljava/lang/String;

    .line 53
    .line 54
    const-string v3, "config_id"

    .line 55
    .line 56
    invoke-static {v1, v3}, Lcom/sgscq/vpn/config/j;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v2, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawConfig;->timezone:Ljava/lang/String;

    .line 60
    .line 61
    const-string v3, "timezone"

    .line 62
    .line 63
    invoke-static {v1, v3}, Lcom/sgscq/vpn/config/j;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    array-length v6, v5

    .line 71
    const/4 v7, 0x0

    .line 72
    :goto_2
    if-ge v7, v6, :cond_3

    .line 73
    .line 74
    aget-object v8, v5, v7

    .line 75
    .line 76
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    if-eqz v8, :cond_2

    .line 81
    .line 82
    const/4 v1, 0x1

    .line 83
    goto :goto_3

    .line 84
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    const/4 v1, 0x0

    .line 88
    :goto_3
    const-string v5, "unknown timezone"

    .line 89
    .line 90
    invoke-static {v3, v5, v1}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 91
    .line 92
    .line 93
    iget-object v1, v2, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawConfig;->currency:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawCurrency;

    .line 94
    .line 95
    if-eqz v1, :cond_4

    .line 96
    .line 97
    const/4 v1, 0x1

    .line 98
    goto :goto_4

    .line 99
    :cond_4
    const/4 v1, 0x0

    .line 100
    :goto_4
    const-string v3, "currency"

    .line 101
    .line 102
    invoke-static {v3, v4, v1}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 103
    .line 104
    .line 105
    iget-object v1, v2, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawConfig;->currency:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawCurrency;

    .line 106
    .line 107
    iget-object v1, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawCurrency;->type:Ljava/lang/String;

    .line 108
    .line 109
    const-string v3, "currency.type"

    .line 110
    .line 111
    invoke-static {v1, v3}, Lcom/sgscq/vpn/config/j;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v1, v2, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawConfig;->currency:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawCurrency;

    .line 115
    .line 116
    iget-object v1, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawCurrency;->name:Ljava/lang/String;

    .line 117
    .line 118
    const-string v3, "currency.name"

    .line 119
    .line 120
    invoke-static {v1, v3}, Lcom/sgscq/vpn/config/j;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object v1, v2, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawConfig;->pricing:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPricing;

    .line 124
    .line 125
    if-eqz v1, :cond_5

    .line 126
    .line 127
    const/4 v3, 0x1

    .line 128
    goto :goto_5

    .line 129
    :cond_5
    const/4 v3, 0x0

    .line 130
    :goto_5
    const-string v5, "pricing"

    .line 131
    .line 132
    invoke-static {v5, v4, v3}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 133
    .line 134
    .line 135
    iget-object v3, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPricing;->fateSkillGift:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawFateSkillGift;

    .line 136
    .line 137
    if-eqz v3, :cond_6

    .line 138
    .line 139
    const/4 v3, 0x1

    .line 140
    goto :goto_6

    .line 141
    :cond_6
    const/4 v3, 0x0

    .line 142
    :goto_6
    const-string v5, "pricing.fate_skill_gift"

    .line 143
    .line 144
    invoke-static {v5, v4, v3}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 145
    .line 146
    .line 147
    iget-object v3, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPricing;->fateSkillGift:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawFateSkillGift;

    .line 148
    .line 149
    iget v3, v3, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawFateSkillGift;->originalPrice:I

    .line 150
    .line 151
    if-lez v3, :cond_7

    .line 152
    .line 153
    const/4 v3, 0x1

    .line 154
    goto :goto_7

    .line 155
    :cond_7
    const/4 v3, 0x0

    .line 156
    :goto_7
    const-string v5, "pricing.fate_skill_gift.original_price"

    .line 157
    .line 158
    const-string v6, "must be positive"

    .line 159
    .line 160
    invoke-static {v5, v6, v3}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 161
    .line 162
    .line 163
    iget-object v3, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPricing;->wholeItemRule:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawWholeItemRule;

    .line 164
    .line 165
    if-eqz v3, :cond_8

    .line 166
    .line 167
    const/4 v3, 0x1

    .line 168
    goto :goto_8

    .line 169
    :cond_8
    const/4 v3, 0x0

    .line 170
    :goto_8
    const-string v5, "pricing.whole_item_rule"

    .line 171
    .line 172
    invoke-static {v5, v4, v3}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 173
    .line 174
    .line 175
    iget-object v3, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPricing;->wholeItemRule:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawWholeItemRule;

    .line 176
    .line 177
    iget v3, v3, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawWholeItemRule;->equivalentBoxCount:I

    .line 178
    .line 179
    if-lez v3, :cond_9

    .line 180
    .line 181
    const/4 v3, 0x1

    .line 182
    goto :goto_9

    .line 183
    :cond_9
    const/4 v3, 0x0

    .line 184
    :goto_9
    const-string v5, "pricing.whole_item_rule.equivalent_box_count"

    .line 185
    .line 186
    invoke-static {v5, v6, v3}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 187
    .line 188
    .line 189
    iget-object v3, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPricing;->wholeItemRule:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawWholeItemRule;

    .line 190
    .line 191
    iget v3, v3, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawWholeItemRule;->pricePercent:I

    .line 192
    .line 193
    const/16 v5, 0x64

    .line 194
    .line 195
    if-lez v3, :cond_a

    .line 196
    .line 197
    if-gt v3, v5, :cond_a

    .line 198
    .line 199
    const/4 v3, 0x1

    .line 200
    goto :goto_a

    .line 201
    :cond_a
    const/4 v3, 0x0

    .line 202
    :goto_a
    const-string v5, "pricing.whole_item_rule.price_percent"

    .line 203
    .line 204
    const-string v7, "must be within 1..100"

    .line 205
    .line 206
    invoke-static {v5, v7, v3}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 207
    .line 208
    .line 209
    iget-object v3, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPricing;->wholeItemRule:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawWholeItemRule;

    .line 210
    .line 211
    iget-object v3, v3, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawWholeItemRule;->rounding:Ljava/lang/String;

    .line 212
    .line 213
    const-string v5, "half_up"

    .line 214
    .line 215
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    const-string v7, "pricing.whole_item_rule.rounding"

    .line 220
    .line 221
    const-string v8, "must be half_up"

    .line 222
    .line 223
    invoke-static {v7, v8, v3}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 224
    .line 225
    .line 226
    new-instance v11, Lcom/sgscq/vpn/config/h;

    .line 227
    .line 228
    iget-object v3, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPricing;->wholeItemRule:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawWholeItemRule;

    .line 229
    .line 230
    iget v7, v3, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawWholeItemRule;->equivalentBoxCount:I

    .line 231
    .line 232
    iget v8, v3, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawWholeItemRule;->pricePercent:I

    .line 233
    .line 234
    iget-object v3, v3, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawWholeItemRule;->rounding:Ljava/lang/String;

    .line 235
    .line 236
    invoke-direct {v11, v7, v8, v3}, Lcom/sgscq/vpn/config/h;-><init>(IILjava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iget-object v3, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPricing;->equipmentTiers:Ljava/util/Map;

    .line 240
    .line 241
    const-string v7, "pricing.equipment_tiers"

    .line 242
    .line 243
    invoke-static {v3, v11, v7}, Lcom/sgscq/vpn/config/j;->c(Ljava/util/Map;Lcom/sgscq/vpn/config/h;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 244
    .line 245
    .line 246
    move-result-object v12

    .line 247
    iget-object v3, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPricing;->mountTiers:Ljava/util/Map;

    .line 248
    .line 249
    const-string v7, "pricing.mount_tiers"

    .line 250
    .line 251
    invoke-static {v3, v11, v7}, Lcom/sgscq/vpn/config/j;->c(Ljava/util/Map;Lcom/sgscq/vpn/config/h;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 252
    .line 253
    .line 254
    move-result-object v13

    .line 255
    iget-object v3, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPricing;->purchaseLimits:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPurchaseLimits;

    .line 256
    .line 257
    if-eqz v3, :cond_b

    .line 258
    .line 259
    const/4 v3, 0x1

    .line 260
    goto :goto_b

    .line 261
    :cond_b
    const/4 v3, 0x0

    .line 262
    :goto_b
    const-string v7, "pricing.purchase_limits"

    .line 263
    .line 264
    invoke-static {v7, v4, v3}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 265
    .line 266
    .line 267
    iget-object v3, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPricing;->purchaseLimits:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPurchaseLimits;

    .line 268
    .line 269
    iget v3, v3, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPurchaseLimits;->regularFateBoxPerRotation:I

    .line 270
    .line 271
    const-string v7, "pricing.purchase_limits.regular_fate_box_per_rotation"

    .line 272
    .line 273
    invoke-static {v7, v3}, Lcom/sgscq/vpn/config/j;->h(Ljava/lang/String;I)V

    .line 274
    .line 275
    .line 276
    iget-object v3, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPricing;->purchaseLimits:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPurchaseLimits;

    .line 277
    .line 278
    iget v3, v3, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPurchaseLimits;->regularFateSkillPerRotation:I

    .line 279
    .line 280
    const-string v7, "pricing.purchase_limits.regular_fate_skill_per_rotation"

    .line 281
    .line 282
    invoke-static {v7, v3}, Lcom/sgscq/vpn/config/j;->h(Ljava/lang/String;I)V

    .line 283
    .line 284
    .line 285
    iget-object v3, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPricing;->purchaseLimits:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPurchaseLimits;

    .line 286
    .line 287
    iget v3, v3, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPurchaseLimits;->specialSoulPerWindow:I

    .line 288
    .line 289
    const-string v7, "pricing.purchase_limits.special_soul_per_window"

    .line 290
    .line 291
    invoke-static {v7, v3}, Lcom/sgscq/vpn/config/j;->h(Ljava/lang/String;I)V

    .line 292
    .line 293
    .line 294
    iget-object v3, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPricing;->purchaseLimits:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPurchaseLimits;

    .line 295
    .line 296
    iget v3, v3, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPurchaseLimits;->specialFateBoxPerWindow:I

    .line 297
    .line 298
    const-string v7, "pricing.purchase_limits.special_fate_box_per_window"

    .line 299
    .line 300
    invoke-static {v7, v3}, Lcom/sgscq/vpn/config/j;->h(Ljava/lang/String;I)V

    .line 301
    .line 302
    .line 303
    iget-object v3, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPricing;->purchaseLimits:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPurchaseLimits;

    .line 304
    .line 305
    iget v3, v3, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPurchaseLimits;->specialWholeEquipmentPerWindow:I

    .line 306
    .line 307
    const-string v7, "pricing.purchase_limits.special_whole_equipment_per_window"

    .line 308
    .line 309
    invoke-static {v7, v3}, Lcom/sgscq/vpn/config/j;->h(Ljava/lang/String;I)V

    .line 310
    .line 311
    .line 312
    iget-object v3, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPricing;->purchaseLimits:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPurchaseLimits;

    .line 313
    .line 314
    iget v3, v3, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPurchaseLimits;->specialFateSkillPerWindow:I

    .line 315
    .line 316
    const-string v7, "pricing.purchase_limits.special_fate_skill_per_window"

    .line 317
    .line 318
    invoke-static {v7, v3}, Lcom/sgscq/vpn/config/j;->h(Ljava/lang/String;I)V

    .line 319
    .line 320
    .line 321
    new-instance v3, Lcom/sgscq/vpn/config/e;

    .line 322
    .line 323
    iget-object v7, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPricing;->purchaseLimits:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPurchaseLimits;

    .line 324
    .line 325
    iget v15, v7, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPurchaseLimits;->regularFateBoxPerRotation:I

    .line 326
    .line 327
    iget v8, v7, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPurchaseLimits;->regularFateSkillPerRotation:I

    .line 328
    .line 329
    iget v9, v7, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPurchaseLimits;->specialSoulPerWindow:I

    .line 330
    .line 331
    iget v10, v7, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPurchaseLimits;->specialFateBoxPerWindow:I

    .line 332
    .line 333
    iget v14, v7, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPurchaseLimits;->specialWholeEquipmentPerWindow:I

    .line 334
    .line 335
    iget v7, v7, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPurchaseLimits;->specialFateSkillPerWindow:I

    .line 336
    .line 337
    const/16 v21, 0x0

    .line 338
    .line 339
    move/from16 v19, v14

    .line 340
    .line 341
    move-object v14, v3

    .line 342
    move/from16 v16, v8

    .line 343
    .line 344
    move/from16 v17, v9

    .line 345
    .line 346
    move/from16 v18, v10

    .line 347
    .line 348
    move/from16 v20, v7

    .line 349
    .line 350
    invoke-direct/range {v14 .. v21}, Lcom/sgscq/vpn/config/e;-><init>(IIIIIII)V

    .line 351
    .line 352
    .line 353
    new-instance v7, Lcom/sgscq/vpn/t;

    .line 354
    .line 355
    new-instance v10, Lcom/sgscq/vpn/cloud/e0;

    .line 356
    .line 357
    iget-object v1, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPricing;->fateSkillGift:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawFateSkillGift;

    .line 358
    .line 359
    iget v1, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawFateSkillGift;->originalPrice:I

    .line 360
    .line 361
    invoke-direct {v10, v1}, Lcom/sgscq/vpn/cloud/e0;-><init>(I)V

    .line 362
    .line 363
    .line 364
    move-object v9, v7

    .line 365
    invoke-direct/range {v9 .. v14}, Lcom/sgscq/vpn/t;-><init>(Lcom/sgscq/vpn/cloud/e0;Lcom/sgscq/vpn/config/h;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Lcom/sgscq/vpn/config/e;)V

    .line 366
    .line 367
    .line 368
    iget-object v1, v2, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawConfig;->generalCatalog:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneralCatalog;

    .line 369
    .line 370
    if-eqz v1, :cond_c

    .line 371
    .line 372
    const/4 v3, 0x1

    .line 373
    goto :goto_c

    .line 374
    :cond_c
    const/4 v3, 0x0

    .line 375
    :goto_c
    const-string v8, "general_catalog"

    .line 376
    .line 377
    invoke-static {v8, v4, v3}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 378
    .line 379
    .line 380
    iget-object v3, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneralCatalog;->overrideMode:Ljava/lang/String;

    .line 381
    .line 382
    const-string v8, "replace_if_valid"

    .line 383
    .line 384
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    move-result v3

    .line 388
    const-string v8, "general_catalog.override_mode"

    .line 389
    .line 390
    const-string v9, "must be replace_if_valid"

    .line 391
    .line 392
    invoke-static {v8, v9, v3}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 393
    .line 394
    .line 395
    iget-object v3, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneralCatalog;->generals:Ljava/util/List;

    .line 396
    .line 397
    if-eqz v3, :cond_d

    .line 398
    .line 399
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 400
    .line 401
    .line 402
    move-result v3

    .line 403
    if-nez v3, :cond_d

    .line 404
    .line 405
    const/4 v3, 0x1

    .line 406
    goto :goto_d

    .line 407
    :cond_d
    const/4 v3, 0x0

    .line 408
    :goto_d
    const-string v8, "general_catalog.generals"

    .line 409
    .line 410
    const-string v9, "must not be empty"

    .line 411
    .line 412
    invoke-static {v8, v9, v3}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 413
    .line 414
    .line 415
    new-instance v3, Ljava/util/HashSet;

    .line 416
    .line 417
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 418
    .line 419
    .line 420
    new-instance v10, Ljava/util/HashSet;

    .line 421
    .line 422
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 423
    .line 424
    .line 425
    new-instance v11, Ljava/util/ArrayList;

    .line 426
    .line 427
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .line 429
    .line 430
    iget-object v12, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneralCatalog;->generals:Ljava/util/List;

    .line 431
    .line 432
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 433
    .line 434
    .line 435
    move-result-object v12

    .line 436
    :goto_e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 437
    .line 438
    .line 439
    move-result v13

    .line 440
    const-string v14, "must not be negative"

    .line 441
    .line 442
    const-string v15, "contains null"

    .line 443
    .line 444
    if-eqz v13, :cond_1f

    .line 445
    .line 446
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v13

    .line 450
    check-cast v13, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneral;

    .line 451
    .line 452
    if-eqz v13, :cond_e

    .line 453
    .line 454
    const/16 v16, 0x1

    .line 455
    .line 456
    goto :goto_f

    .line 457
    :cond_e
    const/16 v16, 0x0

    .line 458
    .line 459
    :goto_f
    move/from16 v0, v16

    .line 460
    .line 461
    invoke-static {v8, v15, v0}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 462
    .line 463
    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    .line 465
    .line 466
    move-object/from16 p1, v8

    .line 467
    .line 468
    const-string v8, "general "

    .line 469
    .line 470
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    iget-object v8, v13, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneral;->generalId:Ljava/lang/String;

    .line 474
    .line 475
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    iget-object v8, v13, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneral;->generalId:Ljava/lang/String;

    .line 483
    .line 484
    move-object/from16 v16, v12

    .line 485
    .line 486
    new-instance v12, Ljava/lang/StringBuilder;

    .line 487
    .line 488
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    move-object/from16 v17, v5

    .line 495
    .line 496
    const-string v5, ".general_id"

    .line 497
    .line 498
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v12

    .line 505
    invoke-static {v8, v12}, Lcom/sgscq/vpn/config/j;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    iget-object v8, v13, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneral;->generalId:Ljava/lang/String;

    .line 509
    .line 510
    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result v8

    .line 514
    const-string v12, "duplicate general_id"

    .line 515
    .line 516
    invoke-static {v0, v5, v12, v8}, Lc/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 517
    .line 518
    .line 519
    iget v8, v13, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneral;->order:I

    .line 520
    .line 521
    if-lez v8, :cond_f

    .line 522
    .line 523
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 524
    .line 525
    .line 526
    move-result-object v8

    .line 527
    invoke-virtual {v10, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    move-result v8

    .line 531
    if-eqz v8, :cond_f

    .line 532
    .line 533
    const/4 v8, 0x1

    .line 534
    goto :goto_10

    .line 535
    :cond_f
    const/4 v8, 0x0

    .line 536
    :goto_10
    const-string v12, ".order"

    .line 537
    .line 538
    move-object/from16 v18, v3

    .line 539
    .line 540
    const-string v3, "must be positive and unique"

    .line 541
    .line 542
    invoke-static {v0, v12, v3, v8}, Lc/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 543
    .line 544
    .line 545
    iget-object v3, v13, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneral;->generalName:Ljava/lang/String;

    .line 546
    .line 547
    new-instance v8, Ljava/lang/StringBuilder;

    .line 548
    .line 549
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    const-string v12, ".general_name"

    .line 556
    .line 557
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v8

    .line 564
    invoke-static {v3, v8}, Lcom/sgscq/vpn/config/j;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    sget-object v3, Lcom/sgscq/vpn/config/j;->b:Ljava/util/HashSet;

    .line 568
    .line 569
    iget-object v8, v13, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneral;->category:Ljava/lang/String;

    .line 570
    .line 571
    invoke-virtual {v3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    move-result v3

    .line 575
    const-string v8, ".category"

    .line 576
    .line 577
    move-object/from16 v19, v10

    .line 578
    .line 579
    const-string v10, "unsupported category"

    .line 580
    .line 581
    invoke-static {v0, v8, v10, v3}, Lc/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 582
    .line 583
    .line 584
    iget v3, v13, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneral;->minVip:I

    .line 585
    .line 586
    if-ltz v3, :cond_10

    .line 587
    .line 588
    const/4 v3, 0x1

    .line 589
    goto :goto_11

    .line 590
    :cond_10
    const/4 v3, 0x0

    .line 591
    :goto_11
    const-string v8, ".min_vip"

    .line 592
    .line 593
    invoke-static {v0, v8, v14, v3}, Lc/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 594
    .line 595
    .line 596
    iget-object v3, v13, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneral;->soul30Price:Ljava/lang/Integer;

    .line 597
    .line 598
    if-nez v3, :cond_11

    .line 599
    .line 600
    const/4 v3, 0x0

    .line 601
    goto :goto_12

    .line 602
    :cond_11
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 603
    .line 604
    .line 605
    move-result v3

    .line 606
    :goto_12
    move/from16 v27, v3

    .line 607
    .line 608
    iget-object v3, v13, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneral;->soulProduct:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawSoulProduct;

    .line 609
    .line 610
    if-eqz v3, :cond_13

    .line 611
    .line 612
    iget-object v8, v3, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawSoulProduct;->displayItemId:Ljava/lang/String;

    .line 613
    .line 614
    move-object/from16 v31, v2

    .line 615
    .line 616
    new-instance v2, Ljava/lang/StringBuilder;

    .line 617
    .line 618
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    move-object/from16 v32, v1

    .line 625
    .line 626
    const-string v1, ".soul_product.display_item_id"

    .line 627
    .line 628
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v1

    .line 635
    invoke-static {v8, v1}, Lcom/sgscq/vpn/config/j;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    const-string v1, "general_soul"

    .line 639
    .line 640
    iget-object v2, v3, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawSoulProduct;->rewardType:Ljava/lang/String;

    .line 641
    .line 642
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 643
    .line 644
    .line 645
    move-result v1

    .line 646
    const-string v2, ".soul_product.reward_type"

    .line 647
    .line 648
    const-string v8, "must be general_soul"

    .line 649
    .line 650
    invoke-static {v0, v2, v8, v1}, Lc/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 651
    .line 652
    .line 653
    iget-object v1, v13, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneral;->generalId:Ljava/lang/String;

    .line 654
    .line 655
    iget-object v2, v3, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawSoulProduct;->rewardId:Ljava/lang/String;

    .line 656
    .line 657
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 658
    .line 659
    .line 660
    move-result v1

    .line 661
    const-string v2, ".soul_product.reward_id"

    .line 662
    .line 663
    const-string v8, "reward_id must match general_id"

    .line 664
    .line 665
    invoke-static {v0, v2, v8, v1}, Lc/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 666
    .line 667
    .line 668
    iget v1, v3, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawSoulProduct;->rewardCount:I

    .line 669
    .line 670
    const/16 v2, 0x1e

    .line 671
    .line 672
    if-ne v1, v2, :cond_12

    .line 673
    .line 674
    const/4 v1, 0x1

    .line 675
    goto :goto_13

    .line 676
    :cond_12
    const/4 v1, 0x0

    .line 677
    :goto_13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 678
    .line 679
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 680
    .line 681
    .line 682
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    const-string v8, ".soul_product.reward_count"

    .line 686
    .line 687
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    const-string v8, "must be 30"

    .line 695
    .line 696
    invoke-static {v2, v8, v1}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 697
    .line 698
    .line 699
    new-instance v1, Lcom/sgscq/vpn/config/g;

    .line 700
    .line 701
    iget-object v2, v3, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawSoulProduct;->displayItemId:Ljava/lang/String;

    .line 702
    .line 703
    iget-object v8, v3, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawSoulProduct;->rewardId:Ljava/lang/String;

    .line 704
    .line 705
    iget v3, v3, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawSoulProduct;->rewardCount:I

    .line 706
    .line 707
    invoke-direct {v1, v3, v2, v8}, Lcom/sgscq/vpn/config/g;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    goto :goto_14

    .line 711
    :cond_13
    move-object/from16 v32, v1

    .line 712
    .line 713
    move-object/from16 v31, v2

    .line 714
    .line 715
    const/4 v1, 0x0

    .line 716
    :goto_14
    move-object/from16 v28, v1

    .line 717
    .line 718
    iget-object v1, v13, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneral;->category:Ljava/lang/String;

    .line 719
    .line 720
    const-string v2, "special"

    .line 721
    .line 722
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 723
    .line 724
    .line 725
    move-result v1

    .line 726
    const-string v3, ".soul_30_price"

    .line 727
    .line 728
    if-eqz v1, :cond_16

    .line 729
    .line 730
    iget-boolean v1, v13, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneral;->enabled:Z

    .line 731
    .line 732
    if-eqz v1, :cond_16

    .line 733
    .line 734
    if-lez v27, :cond_14

    .line 735
    .line 736
    const/4 v1, 0x1

    .line 737
    goto :goto_15

    .line 738
    :cond_14
    const/4 v1, 0x0

    .line 739
    :goto_15
    invoke-static {v0, v3, v6, v1}, Lc/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 740
    .line 741
    .line 742
    if-eqz v28, :cond_15

    .line 743
    .line 744
    const/4 v1, 0x1

    .line 745
    goto :goto_16

    .line 746
    :cond_15
    const/4 v1, 0x0

    .line 747
    :goto_16
    const-string v3, ".soul_product"

    .line 748
    .line 749
    invoke-static {v0, v3, v4, v1}, Lc/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 750
    .line 751
    .line 752
    goto :goto_18

    .line 753
    :cond_16
    if-ltz v27, :cond_17

    .line 754
    .line 755
    const/4 v1, 0x1

    .line 756
    goto :goto_17

    .line 757
    :cond_17
    const/4 v1, 0x0

    .line 758
    :goto_17
    invoke-static {v0, v3, v14, v1}, Lc/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 759
    .line 760
    .line 761
    :goto_18
    new-instance v1, Ljava/util/ArrayList;

    .line 762
    .line 763
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 764
    .line 765
    .line 766
    iget-object v3, v13, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneral;->fateEquipment:Ljava/util/List;

    .line 767
    .line 768
    const-string v8, ".fate_equipment"

    .line 769
    .line 770
    if-eqz v3, :cond_1a

    .line 771
    .line 772
    new-instance v3, Ljava/util/HashSet;

    .line 773
    .line 774
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 775
    .line 776
    .line 777
    iget-object v14, v13, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneral;->fateEquipment:Ljava/util/List;

    .line 778
    .line 779
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 780
    .line 781
    .line 782
    move-result-object v14

    .line 783
    :goto_19
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 784
    .line 785
    .line 786
    move-result v20

    .line 787
    if-eqz v20, :cond_1a

    .line 788
    .line 789
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    move-result-object v20

    .line 793
    move-object/from16 v21, v14

    .line 794
    .line 795
    move-object/from16 v14, v20

    .line 796
    .line 797
    check-cast v14, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawFateEquipment;

    .line 798
    .line 799
    if-eqz v14, :cond_18

    .line 800
    .line 801
    const/16 v20, 0x1

    .line 802
    .line 803
    goto :goto_1a

    .line 804
    :cond_18
    const/16 v20, 0x0

    .line 805
    .line 806
    :goto_1a
    move-object/from16 v33, v4

    .line 807
    .line 808
    move/from16 v4, v20

    .line 809
    .line 810
    invoke-static {v0, v8, v15, v4}, Lc/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 811
    .line 812
    .line 813
    iget-object v4, v14, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawFateEquipment;->equipmentId:Ljava/lang/String;

    .line 814
    .line 815
    move-object/from16 v34, v11

    .line 816
    .line 817
    new-instance v11, Ljava/lang/StringBuilder;

    .line 818
    .line 819
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 820
    .line 821
    .line 822
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    .line 824
    .line 825
    move-object/from16 v35, v6

    .line 826
    .line 827
    const-string v6, ".fate_equipment.equipment_id"

    .line 828
    .line 829
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    .line 831
    .line 832
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 833
    .line 834
    .line 835
    move-result-object v11

    .line 836
    invoke-static {v4, v11}, Lcom/sgscq/vpn/config/j;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    .line 838
    .line 839
    iget-object v4, v14, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawFateEquipment;->equipmentId:Ljava/lang/String;

    .line 840
    .line 841
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 842
    .line 843
    .line 844
    move-result v4

    .line 845
    const-string v11, "duplicate equipment_id"

    .line 846
    .line 847
    invoke-static {v0, v6, v11, v4}, Lc/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 848
    .line 849
    .line 850
    iget-object v4, v14, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawFateEquipment;->equipmentName:Ljava/lang/String;

    .line 851
    .line 852
    new-instance v6, Ljava/lang/StringBuilder;

    .line 853
    .line 854
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 855
    .line 856
    .line 857
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    .line 859
    .line 860
    const-string v11, ".fate_equipment.equipment_name"

    .line 861
    .line 862
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    .line 864
    .line 865
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 866
    .line 867
    .line 868
    move-result-object v6

    .line 869
    invoke-static {v4, v6}, Lcom/sgscq/vpn/config/j;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    .line 871
    .line 872
    sget-object v4, Lcom/sgscq/vpn/config/j;->c:Ljava/util/HashSet;

    .line 873
    .line 874
    iget-object v6, v14, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawFateEquipment;->category:Ljava/lang/String;

    .line 875
    .line 876
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 877
    .line 878
    .line 879
    move-result v4

    .line 880
    const-string v6, ".fate_equipment.category"

    .line 881
    .line 882
    invoke-static {v0, v6, v10, v4}, Lc/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 883
    .line 884
    .line 885
    iget-object v4, v14, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawFateEquipment;->priceTier:Ljava/lang/String;

    .line 886
    .line 887
    new-instance v6, Ljava/lang/StringBuilder;

    .line 888
    .line 889
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 890
    .line 891
    .line 892
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    .line 894
    .line 895
    const-string v11, ".fate_equipment.price_tier"

    .line 896
    .line 897
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    .line 899
    .line 900
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 901
    .line 902
    .line 903
    move-result-object v6

    .line 904
    invoke-static {v4, v6}, Lcom/sgscq/vpn/config/j;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    .line 906
    .line 907
    const-string v4, "mount"

    .line 908
    .line 909
    iget-object v6, v14, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawFateEquipment;->category:Ljava/lang/String;

    .line 910
    .line 911
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 912
    .line 913
    .line 914
    move-result v4

    .line 915
    if-eqz v4, :cond_19

    .line 916
    .line 917
    iget-object v4, v7, Lcom/sgscq/vpn/t;->d:Ljava/lang/Object;

    .line 918
    .line 919
    check-cast v4, Ljava/util/Map;

    .line 920
    .line 921
    goto :goto_1b

    .line 922
    :cond_19
    iget-object v4, v7, Lcom/sgscq/vpn/t;->c:Ljava/lang/Object;

    .line 923
    .line 924
    check-cast v4, Ljava/util/Map;

    .line 925
    .line 926
    :goto_1b
    iget-object v6, v14, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawFateEquipment;->priceTier:Ljava/lang/String;

    .line 927
    .line 928
    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 929
    .line 930
    .line 931
    move-result v4

    .line 932
    const-string v6, "unknown price_tier"

    .line 933
    .line 934
    invoke-static {v0, v11, v6, v4}, Lc/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 935
    .line 936
    .line 937
    iget-object v4, v14, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawFateEquipment;->displayBoxItemId:Ljava/lang/String;

    .line 938
    .line 939
    new-instance v6, Ljava/lang/StringBuilder;

    .line 940
    .line 941
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 942
    .line 943
    .line 944
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    .line 946
    .line 947
    const-string v11, ".fate_equipment.display_box_item_id"

    .line 948
    .line 949
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    .line 951
    .line 952
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 953
    .line 954
    .line 955
    move-result-object v6

    .line 956
    invoke-static {v4, v6}, Lcom/sgscq/vpn/config/j;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    .line 958
    .line 959
    new-instance v4, Lcom/sgscq/vpn/config/b;

    .line 960
    .line 961
    iget-object v6, v14, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawFateEquipment;->equipmentId:Ljava/lang/String;

    .line 962
    .line 963
    iget-object v11, v14, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawFateEquipment;->equipmentName:Ljava/lang/String;

    .line 964
    .line 965
    move-object/from16 v20, v3

    .line 966
    .line 967
    iget-object v3, v14, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawFateEquipment;->category:Ljava/lang/String;

    .line 968
    .line 969
    iget-object v14, v14, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawFateEquipment;->priceTier:Ljava/lang/String;

    .line 970
    .line 971
    invoke-direct {v4, v6, v11, v3, v14}, Lcom/sgscq/vpn/config/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    .line 973
    .line 974
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    .line 976
    .line 977
    move-object/from16 v3, v20

    .line 978
    .line 979
    move-object/from16 v14, v21

    .line 980
    .line 981
    move-object/from16 v4, v33

    .line 982
    .line 983
    move-object/from16 v11, v34

    .line 984
    .line 985
    move-object/from16 v6, v35

    .line 986
    .line 987
    goto/16 :goto_19

    .line 988
    .line 989
    :cond_1a
    move-object/from16 v33, v4

    .line 990
    .line 991
    move-object/from16 v35, v6

    .line 992
    .line 993
    move-object/from16 v34, v11

    .line 994
    .line 995
    iget-object v3, v13, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneral;->category:Ljava/lang/String;

    .line 996
    .line 997
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 998
    .line 999
    .line 1000
    move-result v2

    .line 1001
    if-eqz v2, :cond_1b

    .line 1002
    .line 1003
    iget-boolean v2, v13, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneral;->enabled:Z

    .line 1004
    .line 1005
    if-eqz v2, :cond_1b

    .line 1006
    .line 1007
    iget-boolean v2, v13, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneral;->fateGiftsEnabled:Z

    .line 1008
    .line 1009
    if-eqz v2, :cond_1b

    .line 1010
    .line 1011
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1012
    .line 1013
    .line 1014
    move-result v2

    .line 1015
    xor-int/lit8 v2, v2, 0x1

    .line 1016
    .line 1017
    invoke-static {v0, v8, v9, v2}, Lc/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1018
    .line 1019
    .line 1020
    :cond_1b
    new-instance v2, Ljava/util/ArrayList;

    .line 1021
    .line 1022
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1023
    .line 1024
    .line 1025
    iget-object v3, v13, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneral;->surrenderSoulRewards:Ljava/util/List;

    .line 1026
    .line 1027
    if-eqz v3, :cond_1e

    .line 1028
    .line 1029
    new-instance v3, Ljava/util/HashSet;

    .line 1030
    .line 1031
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1032
    .line 1033
    .line 1034
    const/4 v4, 0x0

    .line 1035
    :goto_1c
    iget-object v6, v13, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneral;->surrenderSoulRewards:Ljava/util/List;

    .line 1036
    .line 1037
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 1038
    .line 1039
    .line 1040
    move-result v6

    .line 1041
    if-ge v4, v6, :cond_1e

    .line 1042
    .line 1043
    iget-object v6, v13, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneral;->surrenderSoulRewards:Ljava/util/List;

    .line 1044
    .line 1045
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v6

    .line 1049
    check-cast v6, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawSurrenderSoulReward;

    .line 1050
    .line 1051
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1052
    .line 1053
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1054
    .line 1055
    .line 1056
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    .line 1058
    .line 1059
    const-string v10, ".surrender_soul_rewards["

    .line 1060
    .line 1061
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    .line 1063
    .line 1064
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1065
    .line 1066
    .line 1067
    const-string v10, "]"

    .line 1068
    .line 1069
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    .line 1071
    .line 1072
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v8

    .line 1076
    if-eqz v6, :cond_1c

    .line 1077
    .line 1078
    const/4 v10, 0x1

    .line 1079
    goto :goto_1d

    .line 1080
    :cond_1c
    const/4 v10, 0x0

    .line 1081
    :goto_1d
    invoke-static {v8, v15, v10}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1082
    .line 1083
    .line 1084
    sget-object v10, Lcom/sgscq/vpn/config/j;->d:Ljava/util/HashSet;

    .line 1085
    .line 1086
    iget-object v11, v6, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawSurrenderSoulReward;->stage:Ljava/lang/String;

    .line 1087
    .line 1088
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 1089
    .line 1090
    .line 1091
    move-result v10

    .line 1092
    const-string v11, ".stage"

    .line 1093
    .line 1094
    const-string v14, "must be base or evolution"

    .line 1095
    .line 1096
    invoke-static {v8, v11, v14, v10}, Lc/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1097
    .line 1098
    .line 1099
    iget-object v10, v6, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawSurrenderSoulReward;->stage:Ljava/lang/String;

    .line 1100
    .line 1101
    invoke-virtual {v3, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1102
    .line 1103
    .line 1104
    move-result v10

    .line 1105
    const-string v14, "duplicate stage"

    .line 1106
    .line 1107
    invoke-static {v8, v11, v14, v10}, Lc/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1108
    .line 1109
    .line 1110
    iget-object v10, v6, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawSurrenderSoulReward;->generalId:Ljava/lang/String;

    .line 1111
    .line 1112
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1113
    .line 1114
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1115
    .line 1116
    .line 1117
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    .line 1119
    .line 1120
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v11

    .line 1127
    invoke-static {v10, v11}, Lcom/sgscq/vpn/config/j;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    .line 1129
    .line 1130
    iget-object v10, v6, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawSurrenderSoulReward;->generalName:Ljava/lang/String;

    .line 1131
    .line 1132
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1133
    .line 1134
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    .line 1139
    .line 1140
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    .line 1142
    .line 1143
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v11

    .line 1147
    invoke-static {v10, v11}, Lcom/sgscq/vpn/config/j;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    .line 1149
    .line 1150
    iget v10, v6, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawSurrenderSoulReward;->count:I

    .line 1151
    .line 1152
    if-lez v10, :cond_1d

    .line 1153
    .line 1154
    const/4 v10, 0x1

    .line 1155
    goto :goto_1e

    .line 1156
    :cond_1d
    const/4 v10, 0x0

    .line 1157
    :goto_1e
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1158
    .line 1159
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1160
    .line 1161
    .line 1162
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1163
    .line 1164
    .line 1165
    const-string v8, ".count"

    .line 1166
    .line 1167
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v8

    .line 1174
    move-object/from16 v11, v35

    .line 1175
    .line 1176
    invoke-static {v8, v11, v10}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1177
    .line 1178
    .line 1179
    new-instance v8, Lcom/sgscq/vpn/config/g;

    .line 1180
    .line 1181
    iget-object v10, v6, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawSurrenderSoulReward;->stage:Ljava/lang/String;

    .line 1182
    .line 1183
    iget-object v14, v6, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawSurrenderSoulReward;->generalName:Ljava/lang/String;

    .line 1184
    .line 1185
    iget v6, v6, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawSurrenderSoulReward;->count:I

    .line 1186
    .line 1187
    invoke-direct {v8, v6, v10, v14}, Lcom/sgscq/vpn/config/g;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1188
    .line 1189
    .line 1190
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1191
    .line 1192
    .line 1193
    add-int/lit8 v4, v4, 0x1

    .line 1194
    .line 1195
    goto/16 :goto_1c

    .line 1196
    .line 1197
    :cond_1e
    move-object/from16 v11, v35

    .line 1198
    .line 1199
    new-instance v0, Lcom/sgscq/vpn/config/c;

    .line 1200
    .line 1201
    iget-object v3, v13, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneral;->generalId:Ljava/lang/String;

    .line 1202
    .line 1203
    iget-object v4, v13, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneral;->generalName:Ljava/lang/String;

    .line 1204
    .line 1205
    iget-object v5, v13, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneral;->category:Ljava/lang/String;

    .line 1206
    .line 1207
    iget-boolean v6, v13, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneral;->enabled:Z

    .line 1208
    .line 1209
    iget v8, v13, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneral;->minVip:I

    .line 1210
    .line 1211
    iget-boolean v10, v13, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneral;->fateGiftsEnabled:Z

    .line 1212
    .line 1213
    move-object/from16 v20, v0

    .line 1214
    .line 1215
    move-object/from16 v21, v3

    .line 1216
    .line 1217
    move-object/from16 v22, v4

    .line 1218
    .line 1219
    move-object/from16 v23, v5

    .line 1220
    .line 1221
    move/from16 v24, v6

    .line 1222
    .line 1223
    move/from16 v25, v8

    .line 1224
    .line 1225
    move/from16 v26, v10

    .line 1226
    .line 1227
    move-object/from16 v29, v1

    .line 1228
    .line 1229
    move-object/from16 v30, v2

    .line 1230
    .line 1231
    invoke-direct/range {v20 .. v30}, Lcom/sgscq/vpn/config/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZILcom/sgscq/vpn/config/g;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1232
    .line 1233
    .line 1234
    move-object/from16 v1, v34

    .line 1235
    .line 1236
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    .line 1238
    .line 1239
    move-object/from16 v0, p0

    .line 1240
    .line 1241
    move-object/from16 v8, p1

    .line 1242
    .line 1243
    move-object v6, v11

    .line 1244
    move-object/from16 v12, v16

    .line 1245
    .line 1246
    move-object/from16 v5, v17

    .line 1247
    .line 1248
    move-object/from16 v3, v18

    .line 1249
    .line 1250
    move-object/from16 v10, v19

    .line 1251
    .line 1252
    move-object/from16 v2, v31

    .line 1253
    .line 1254
    move-object/from16 v4, v33

    .line 1255
    .line 1256
    move-object v11, v1

    .line 1257
    move-object/from16 v1, v32

    .line 1258
    .line 1259
    goto/16 :goto_e

    .line 1260
    .line 1261
    :cond_1f
    move-object/from16 v32, v1

    .line 1262
    .line 1263
    move-object/from16 v31, v2

    .line 1264
    .line 1265
    move-object/from16 v33, v4

    .line 1266
    .line 1267
    move-object/from16 v17, v5

    .line 1268
    .line 1269
    move-object v1, v11

    .line 1270
    move-object v11, v6

    .line 1271
    new-instance v0, Lm/e;

    .line 1272
    .line 1273
    move-object/from16 v2, v32

    .line 1274
    .line 1275
    iget-object v2, v2, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawGeneralCatalog;->overrideMode:Ljava/lang/String;

    .line 1276
    .line 1277
    invoke-direct {v0, v2, v1}, Lm/e;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1278
    .line 1279
    .line 1280
    move-object/from16 v2, v31

    .line 1281
    .line 1282
    iget-object v1, v2, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawConfig;->regularSchedule:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawRegularSchedule;

    .line 1283
    .line 1284
    if-eqz v1, :cond_20

    .line 1285
    .line 1286
    const/4 v3, 0x1

    .line 1287
    goto :goto_1f

    .line 1288
    :cond_20
    const/4 v3, 0x0

    .line 1289
    :goto_1f
    const-string v4, "regular_schedule"

    .line 1290
    .line 1291
    move-object/from16 v5, v33

    .line 1292
    .line 1293
    invoke-static {v4, v5, v3}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1294
    .line 1295
    .line 1296
    iget-wide v3, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawRegularSchedule;->intervalSeconds:J

    .line 1297
    .line 1298
    const-wide/16 v12, 0x0

    .line 1299
    .line 1300
    cmp-long v3, v3, v12

    .line 1301
    .line 1302
    if-lez v3, :cond_21

    .line 1303
    .line 1304
    const/4 v3, 0x1

    .line 1305
    goto :goto_20

    .line 1306
    :cond_21
    const/4 v3, 0x0

    .line 1307
    :goto_20
    const-string v4, "regular_schedule.interval_seconds"

    .line 1308
    .line 1309
    invoke-static {v4, v11, v3}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1310
    .line 1311
    .line 1312
    iget-object v3, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawRegularSchedule;->randomization:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawRandomization;

    .line 1313
    .line 1314
    const-string v4, "regular_schedule.randomization"

    .line 1315
    .line 1316
    invoke-static {v3, v4}, Lcom/sgscq/vpn/config/j;->b(Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawRandomization;Ljava/lang/String;)Lcom/sgscq/vpn/config/f;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v3

    .line 1320
    iget v3, v3, Lcom/sgscq/vpn/config/f;->d:I

    .line 1321
    .line 1322
    if-ltz v3, :cond_22

    .line 1323
    .line 1324
    const/4 v3, 0x1

    .line 1325
    goto :goto_21

    .line 1326
    :cond_22
    const/4 v3, 0x0

    .line 1327
    :goto_21
    const-string v4, "regular_schedule.randomization.recent_lookback"

    .line 1328
    .line 1329
    invoke-static {v4, v14, v3}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1330
    .line 1331
    .line 1332
    new-instance v3, Ljava/util/ArrayList;

    .line 1333
    .line 1334
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1335
    .line 1336
    .line 1337
    iget-object v4, v0, Lm/e;->b:Ljava/lang/Object;

    .line 1338
    .line 1339
    check-cast v4, Ljava/util/List;

    .line 1340
    .line 1341
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v4

    .line 1345
    :cond_23
    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1346
    .line 1347
    .line 1348
    move-result v6

    .line 1349
    if-eqz v6, :cond_24

    .line 1350
    .line 1351
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v6

    .line 1355
    check-cast v6, Lcom/sgscq/vpn/config/c;

    .line 1356
    .line 1357
    iget-boolean v8, v6, Lcom/sgscq/vpn/config/c;->d:Z

    .line 1358
    .line 1359
    if-eqz v8, :cond_23

    .line 1360
    .line 1361
    iget-object v8, v6, Lcom/sgscq/vpn/config/c;->c:Ljava/lang/String;

    .line 1362
    .line 1363
    const-string v10, "regular"

    .line 1364
    .line 1365
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1366
    .line 1367
    .line 1368
    move-result v8

    .line 1369
    if-eqz v8, :cond_23

    .line 1370
    .line 1371
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1372
    .line 1373
    .line 1374
    goto :goto_22

    .line 1375
    :cond_24
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v3

    .line 1379
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1380
    .line 1381
    .line 1382
    move-result v23

    .line 1383
    iget-object v3, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawRegularSchedule;->plannedRotation:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPlannedRotation;

    .line 1384
    .line 1385
    const-string v22, "regular"

    .line 1386
    .line 1387
    const/16 v24, 0x0

    .line 1388
    .line 1389
    const-string v25, "regular_schedule.planned_rotation"

    .line 1390
    .line 1391
    move-object/from16 v20, v3

    .line 1392
    .line 1393
    move-object/from16 v21, v0

    .line 1394
    .line 1395
    invoke-static/range {v20 .. v25}, Lcom/sgscq/vpn/config/j;->a(Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPlannedRotation;Lm/e;Ljava/lang/String;IZLjava/lang/String;)Lcom/sgscq/vpn/cloud/q;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v3

    .line 1399
    if-eqz v3, :cond_26

    .line 1400
    .line 1401
    const-wide/16 v18, 0x3e8

    .line 1402
    .line 1403
    iget-wide v3, v3, Lcom/sgscq/vpn/cloud/q;->a:J

    .line 1404
    .line 1405
    div-long v3, v3, v18

    .line 1406
    .line 1407
    move-object/from16 p1, v7

    .line 1408
    .line 1409
    iget-wide v6, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawRegularSchedule;->intervalSeconds:J

    .line 1410
    .line 1411
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->floorMod(JJ)J

    .line 1412
    .line 1413
    .line 1414
    move-result-wide v3

    .line 1415
    cmp-long v1, v3, v12

    .line 1416
    .line 1417
    if-nez v1, :cond_25

    .line 1418
    .line 1419
    const/4 v1, 0x1

    .line 1420
    goto :goto_23

    .line 1421
    :cond_25
    const/4 v1, 0x0

    .line 1422
    :goto_23
    const-string v3, "regular_schedule.planned_rotation.start_at"

    .line 1423
    .line 1424
    const-string v4, "must align with interval_seconds"

    .line 1425
    .line 1426
    invoke-static {v3, v4, v1}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1427
    .line 1428
    .line 1429
    goto :goto_24

    .line 1430
    :cond_26
    move-object/from16 p1, v7

    .line 1431
    .line 1432
    :goto_24
    iget-object v1, v2, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawConfig;->specialSchedule:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawSpecialSchedule;

    .line 1433
    .line 1434
    iget-object v3, v2, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawConfig;->timezone:Ljava/lang/String;

    .line 1435
    .line 1436
    if-eqz v1, :cond_27

    .line 1437
    .line 1438
    const/4 v4, 0x1

    .line 1439
    goto :goto_25

    .line 1440
    :cond_27
    const/4 v4, 0x0

    .line 1441
    :goto_25
    const-string v6, "special_schedule"

    .line 1442
    .line 1443
    invoke-static {v6, v5, v4}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1444
    .line 1445
    .line 1446
    iget-object v4, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawSpecialSchedule;->daysOfWeek:Ljava/util/List;

    .line 1447
    .line 1448
    if-eqz v4, :cond_28

    .line 1449
    .line 1450
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 1451
    .line 1452
    .line 1453
    move-result v4

    .line 1454
    if-nez v4, :cond_28

    .line 1455
    .line 1456
    const/4 v4, 0x1

    .line 1457
    goto :goto_26

    .line 1458
    :cond_28
    const/4 v4, 0x0

    .line 1459
    :goto_26
    const-string v5, "special_schedule.days_of_week"

    .line 1460
    .line 1461
    invoke-static {v5, v9, v4}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1462
    .line 1463
    .line 1464
    new-instance v4, Ljava/util/HashSet;

    .line 1465
    .line 1466
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1467
    .line 1468
    .line 1469
    iget-object v6, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawSpecialSchedule;->daysOfWeek:Ljava/util/List;

    .line 1470
    .line 1471
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1472
    .line 1473
    .line 1474
    move-result-object v6

    .line 1475
    :goto_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1476
    .line 1477
    .line 1478
    move-result v7

    .line 1479
    const/4 v8, 0x7

    .line 1480
    if-eqz v7, :cond_2a

    .line 1481
    .line 1482
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v7

    .line 1486
    check-cast v7, Ljava/lang/Integer;

    .line 1487
    .line 1488
    if-eqz v7, :cond_29

    .line 1489
    .line 1490
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 1491
    .line 1492
    .line 1493
    move-result v10

    .line 1494
    const/4 v12, 0x1

    .line 1495
    if-lt v10, v12, :cond_29

    .line 1496
    .line 1497
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 1498
    .line 1499
    .line 1500
    move-result v10

    .line 1501
    if-gt v10, v8, :cond_29

    .line 1502
    .line 1503
    const/4 v8, 0x1

    .line 1504
    goto :goto_28

    .line 1505
    :cond_29
    const/4 v8, 0x0

    .line 1506
    :goto_28
    const-string v10, "days_of_week must be within 1..7"

    .line 1507
    .line 1508
    invoke-static {v5, v10, v8}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1509
    .line 1510
    .line 1511
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1512
    .line 1513
    .line 1514
    move-result v7

    .line 1515
    const-string v8, "duplicate day"

    .line 1516
    .line 1517
    invoke-static {v5, v8, v7}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1518
    .line 1519
    .line 1520
    goto :goto_27

    .line 1521
    :cond_2a
    iget v4, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawSpecialSchedule;->selectionsPerWeek:I

    .line 1522
    .line 1523
    iget-object v5, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawSpecialSchedule;->daysOfWeek:Ljava/util/List;

    .line 1524
    .line 1525
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1526
    .line 1527
    .line 1528
    move-result v5

    .line 1529
    if-ne v4, v5, :cond_2b

    .line 1530
    .line 1531
    const/4 v4, 0x1

    .line 1532
    goto :goto_29

    .line 1533
    :cond_2b
    const/4 v4, 0x0

    .line 1534
    :goto_29
    const-string v5, "special_schedule.selections_per_week"

    .line 1535
    .line 1536
    const-string v6, "must equal days_of_week count"

    .line 1537
    .line 1538
    invoke-static {v5, v6, v4}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1539
    .line 1540
    .line 1541
    iget-wide v4, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawSpecialSchedule;->windowSeconds:J

    .line 1542
    .line 1543
    const-wide/16 v6, 0x0

    .line 1544
    .line 1545
    cmp-long v4, v4, v6

    .line 1546
    .line 1547
    if-lez v4, :cond_2c

    .line 1548
    .line 1549
    const/4 v4, 0x1

    .line 1550
    goto :goto_2a

    .line 1551
    :cond_2c
    const/4 v4, 0x0

    .line 1552
    :goto_2a
    const-string v5, "special_schedule.window_seconds"

    .line 1553
    .line 1554
    invoke-static {v5, v11, v4}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1555
    .line 1556
    .line 1557
    iget-object v4, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawSpecialSchedule;->windowStart:Ljava/lang/String;

    .line 1558
    .line 1559
    if-eqz v4, :cond_2d

    .line 1560
    .line 1561
    const-string v5, "(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d"

    .line 1562
    .line 1563
    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 1564
    .line 1565
    .line 1566
    move-result v4

    .line 1567
    if-eqz v4, :cond_2d

    .line 1568
    .line 1569
    const/4 v4, 0x1

    .line 1570
    goto :goto_2b

    .line 1571
    :cond_2d
    const/4 v4, 0x0

    .line 1572
    :goto_2b
    const-string v5, "special_schedule.window_start"

    .line 1573
    .line 1574
    const-string v6, "must be HH:mm:ss"

    .line 1575
    .line 1576
    invoke-static {v5, v6, v4}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1577
    .line 1578
    .line 1579
    iget-object v4, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawSpecialSchedule;->randomization:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawRandomization;

    .line 1580
    .line 1581
    const-string v5, "special_schedule.randomization"

    .line 1582
    .line 1583
    invoke-static {v4, v5}, Lcom/sgscq/vpn/config/j;->b(Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawRandomization;Ljava/lang/String;)Lcom/sgscq/vpn/config/f;

    .line 1584
    .line 1585
    .line 1586
    move-result-object v4

    .line 1587
    iget-object v5, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawSpecialSchedule;->plannedRotation:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPlannedRotation;

    .line 1588
    .line 1589
    const-string v22, "special"

    .line 1590
    .line 1591
    iget v6, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawSpecialSchedule;->selectionsPerWeek:I

    .line 1592
    .line 1593
    iget-boolean v4, v4, Lcom/sgscq/vpn/config/f;->a:Z

    .line 1594
    .line 1595
    const-string v25, "special_schedule.planned_rotation"

    .line 1596
    .line 1597
    move-object/from16 v20, v5

    .line 1598
    .line 1599
    move-object/from16 v21, v0

    .line 1600
    .line 1601
    move/from16 v23, v6

    .line 1602
    .line 1603
    move/from16 v24, v4

    .line 1604
    .line 1605
    invoke-static/range {v20 .. v25}, Lcom/sgscq/vpn/config/j;->a(Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPlannedRotation;Lm/e;Ljava/lang/String;IZLjava/lang/String;)Lcom/sgscq/vpn/cloud/q;

    .line 1606
    .line 1607
    .line 1608
    move-result-object v4

    .line 1609
    if-eqz v4, :cond_2f

    .line 1610
    .line 1611
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 1612
    .line 1613
    .line 1614
    move-result-object v3

    .line 1615
    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 1616
    .line 1617
    .line 1618
    move-result-object v3

    .line 1619
    iget-wide v4, v4, Lcom/sgscq/vpn/cloud/q;->a:J

    .line 1620
    .line 1621
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1622
    .line 1623
    .line 1624
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    .line 1625
    .line 1626
    .line 1627
    move-result v4

    .line 1628
    const/4 v5, 0x2

    .line 1629
    if-ne v4, v5, :cond_2e

    .line 1630
    .line 1631
    const/16 v4, 0xb

    .line 1632
    .line 1633
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    .line 1634
    .line 1635
    .line 1636
    move-result v4

    .line 1637
    if-nez v4, :cond_2e

    .line 1638
    .line 1639
    const/16 v4, 0xc

    .line 1640
    .line 1641
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    .line 1642
    .line 1643
    .line 1644
    move-result v4

    .line 1645
    if-nez v4, :cond_2e

    .line 1646
    .line 1647
    const/16 v4, 0xd

    .line 1648
    .line 1649
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    .line 1650
    .line 1651
    .line 1652
    move-result v3

    .line 1653
    if-nez v3, :cond_2e

    .line 1654
    .line 1655
    const/4 v3, 0x1

    .line 1656
    goto :goto_2c

    .line 1657
    :cond_2e
    const/4 v3, 0x0

    .line 1658
    :goto_2c
    const-string v4, "special_schedule.planned_rotation.start_at"

    .line 1659
    .line 1660
    const-string v5, "must be Monday 00:00:00 in configured timezone"

    .line 1661
    .line 1662
    invoke-static {v4, v5, v3}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1663
    .line 1664
    .line 1665
    :cond_2f
    iget-object v1, v1, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawSpecialSchedule;->daysOfWeek:Ljava/util/List;

    .line 1666
    .line 1667
    invoke-static {v1}, Lcom/sgscq/vpn/config/i;->a(Ljava/util/List;)Ljava/util/List;

    .line 1668
    .line 1669
    .line 1670
    iget-object v1, v2, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawConfig;->discountCampaigns:Ljava/util/List;

    .line 1671
    .line 1672
    new-instance v3, Ljava/util/ArrayList;

    .line 1673
    .line 1674
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1675
    .line 1676
    .line 1677
    if-nez v1, :cond_30

    .line 1678
    .line 1679
    goto/16 :goto_34

    .line 1680
    .line 1681
    :cond_30
    new-instance v4, Ljava/util/HashSet;

    .line 1682
    .line 1683
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1684
    .line 1685
    .line 1686
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1687
    .line 1688
    .line 1689
    move-result-object v1

    .line 1690
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1691
    .line 1692
    .line 1693
    move-result v5

    .line 1694
    if-eqz v5, :cond_37

    .line 1695
    .line 1696
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1697
    .line 1698
    .line 1699
    move-result-object v5

    .line 1700
    check-cast v5, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawDiscountCampaign;

    .line 1701
    .line 1702
    if-eqz v5, :cond_31

    .line 1703
    .line 1704
    const/4 v6, 0x1

    .line 1705
    goto :goto_2e

    .line 1706
    :cond_31
    const/4 v6, 0x0

    .line 1707
    :goto_2e
    const-string v7, "discount_campaigns"

    .line 1708
    .line 1709
    invoke-static {v7, v15, v6}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1710
    .line 1711
    .line 1712
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1713
    .line 1714
    const-string v7, "discount_campaign "

    .line 1715
    .line 1716
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1717
    .line 1718
    .line 1719
    iget-object v7, v5, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawDiscountCampaign;->campaignId:Ljava/lang/String;

    .line 1720
    .line 1721
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1722
    .line 1723
    .line 1724
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1725
    .line 1726
    .line 1727
    move-result-object v6

    .line 1728
    iget-object v7, v5, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawDiscountCampaign;->campaignId:Ljava/lang/String;

    .line 1729
    .line 1730
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1731
    .line 1732
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1733
    .line 1734
    .line 1735
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1736
    .line 1737
    .line 1738
    const-string v10, ".campaign_id"

    .line 1739
    .line 1740
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1741
    .line 1742
    .line 1743
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1744
    .line 1745
    .line 1746
    move-result-object v8

    .line 1747
    invoke-static {v7, v8}, Lcom/sgscq/vpn/config/j;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    .line 1749
    .line 1750
    iget-object v7, v5, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawDiscountCampaign;->campaignId:Ljava/lang/String;

    .line 1751
    .line 1752
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1753
    .line 1754
    .line 1755
    move-result v7

    .line 1756
    const-string v8, "duplicate campaign_id"

    .line 1757
    .line 1758
    invoke-static {v6, v10, v8, v7}, Lc/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1759
    .line 1760
    .line 1761
    iget-object v7, v5, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawDiscountCampaign;->startAt:Ljava/lang/String;

    .line 1762
    .line 1763
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1764
    .line 1765
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1766
    .line 1767
    .line 1768
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1769
    .line 1770
    .line 1771
    const-string v10, ".start_at"

    .line 1772
    .line 1773
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1774
    .line 1775
    .line 1776
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1777
    .line 1778
    .line 1779
    move-result-object v8

    .line 1780
    invoke-static {v7, v8}, Lcom/sgscq/vpn/config/j;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    .line 1781
    .line 1782
    .line 1783
    move-result-object v7

    .line 1784
    iget-object v8, v5, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawDiscountCampaign;->endAt:Ljava/lang/String;

    .line 1785
    .line 1786
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1787
    .line 1788
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1789
    .line 1790
    .line 1791
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1792
    .line 1793
    .line 1794
    const-string v11, ".end_at"

    .line 1795
    .line 1796
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1797
    .line 1798
    .line 1799
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1800
    .line 1801
    .line 1802
    move-result-object v10

    .line 1803
    invoke-static {v8, v10}, Lcom/sgscq/vpn/config/j;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    .line 1804
    .line 1805
    .line 1806
    move-result-object v8

    .line 1807
    invoke-virtual {v8, v7}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 1808
    .line 1809
    .line 1810
    move-result v7

    .line 1811
    const-string v8, "end_at must be after start_at"

    .line 1812
    .line 1813
    invoke-static {v6, v11, v8, v7}, Lc/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1814
    .line 1815
    .line 1816
    iget v7, v5, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawDiscountCampaign;->discountPercent:I

    .line 1817
    .line 1818
    const/4 v8, 0x1

    .line 1819
    const/16 v10, 0x64

    .line 1820
    .line 1821
    if-lt v7, v8, :cond_32

    .line 1822
    .line 1823
    if-gt v7, v10, :cond_32

    .line 1824
    .line 1825
    move v7, v8

    .line 1826
    goto :goto_2f

    .line 1827
    :cond_32
    const/4 v7, 0x0

    .line 1828
    :goto_2f
    const-string v10, ".discount_percent"

    .line 1829
    .line 1830
    const-string v11, "discount_percent must be within 1..100"

    .line 1831
    .line 1832
    invoke-static {v6, v10, v11, v7}, Lc/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1833
    .line 1834
    .line 1835
    const-string v7, "floor"

    .line 1836
    .line 1837
    iget-object v10, v5, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawDiscountCampaign;->priceRounding:Ljava/lang/String;

    .line 1838
    .line 1839
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1840
    .line 1841
    .line 1842
    move-result v7

    .line 1843
    if-nez v7, :cond_34

    .line 1844
    .line 1845
    iget-object v7, v5, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawDiscountCampaign;->priceRounding:Ljava/lang/String;

    .line 1846
    .line 1847
    move-object/from16 v10, v17

    .line 1848
    .line 1849
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1850
    .line 1851
    .line 1852
    move-result v7

    .line 1853
    if-eqz v7, :cond_33

    .line 1854
    .line 1855
    goto :goto_30

    .line 1856
    :cond_33
    const/4 v7, 0x0

    .line 1857
    goto :goto_31

    .line 1858
    :cond_34
    move-object/from16 v10, v17

    .line 1859
    .line 1860
    :goto_30
    move v7, v8

    .line 1861
    :goto_31
    const-string v11, ".price_rounding"

    .line 1862
    .line 1863
    const-string v12, "unsupported rounding"

    .line 1864
    .line 1865
    invoke-static {v6, v11, v12, v7}, Lc/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1866
    .line 1867
    .line 1868
    const-string v7, "restore_original_price"

    .line 1869
    .line 1870
    iget-object v11, v5, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawDiscountCampaign;->afterEnd:Ljava/lang/String;

    .line 1871
    .line 1872
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1873
    .line 1874
    .line 1875
    move-result v7

    .line 1876
    const-string v11, ".after_end"

    .line 1877
    .line 1878
    const-string v12, "must be restore_original_price"

    .line 1879
    .line 1880
    invoke-static {v6, v11, v12, v7}, Lc/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1881
    .line 1882
    .line 1883
    iget-object v7, v5, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawDiscountCampaign;->scopes:Ljava/util/List;

    .line 1884
    .line 1885
    if-eqz v7, :cond_35

    .line 1886
    .line 1887
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 1888
    .line 1889
    .line 1890
    move-result v7

    .line 1891
    if-nez v7, :cond_35

    .line 1892
    .line 1893
    goto :goto_32

    .line 1894
    :cond_35
    const/4 v8, 0x0

    .line 1895
    :goto_32
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1896
    .line 1897
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1898
    .line 1899
    .line 1900
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1901
    .line 1902
    .line 1903
    const-string v11, ".scopes"

    .line 1904
    .line 1905
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1906
    .line 1907
    .line 1908
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1909
    .line 1910
    .line 1911
    move-result-object v7

    .line 1912
    invoke-static {v7, v9, v8}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1913
    .line 1914
    .line 1915
    new-instance v7, Ljava/util/HashSet;

    .line 1916
    .line 1917
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1918
    .line 1919
    .line 1920
    iget-object v8, v5, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawDiscountCampaign;->scopes:Ljava/util/List;

    .line 1921
    .line 1922
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1923
    .line 1924
    .line 1925
    move-result-object v8

    .line 1926
    :goto_33
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1927
    .line 1928
    .line 1929
    move-result v12

    .line 1930
    if-eqz v12, :cond_36

    .line 1931
    .line 1932
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1933
    .line 1934
    .line 1935
    move-result-object v12

    .line 1936
    check-cast v12, Ljava/lang/String;

    .line 1937
    .line 1938
    sget-object v13, Lcom/sgscq/vpn/config/j;->e:Ljava/util/HashSet;

    .line 1939
    .line 1940
    invoke-virtual {v13, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 1941
    .line 1942
    .line 1943
    move-result v13

    .line 1944
    new-instance v14, Ljava/lang/StringBuilder;

    .line 1945
    .line 1946
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1947
    .line 1948
    .line 1949
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1950
    .line 1951
    .line 1952
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1953
    .line 1954
    .line 1955
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1956
    .line 1957
    .line 1958
    move-result-object v14

    .line 1959
    move-object/from16 v16, v1

    .line 1960
    .line 1961
    const-string v1, "unsupported scope"

    .line 1962
    .line 1963
    invoke-static {v14, v1, v13}, Lcom/sgscq/vpn/config/j;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1964
    .line 1965
    .line 1966
    invoke-virtual {v7, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1967
    .line 1968
    .line 1969
    move-result v1

    .line 1970
    const-string v12, "duplicate scope"

    .line 1971
    .line 1972
    invoke-static {v6, v11, v12, v1}, Lc/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1973
    .line 1974
    .line 1975
    move-object/from16 v1, v16

    .line 1976
    .line 1977
    goto :goto_33

    .line 1978
    :cond_36
    move-object/from16 v16, v1

    .line 1979
    .line 1980
    new-instance v1, Lcom/sgscq/vpn/config/a;

    .line 1981
    .line 1982
    iget-boolean v6, v5, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawDiscountCampaign;->enabled:Z

    .line 1983
    .line 1984
    iget-object v7, v5, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawDiscountCampaign;->startAt:Ljava/lang/String;

    .line 1985
    .line 1986
    iget-object v8, v5, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawDiscountCampaign;->endAt:Ljava/lang/String;

    .line 1987
    .line 1988
    iget v11, v5, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawDiscountCampaign;->discountPercent:I

    .line 1989
    .line 1990
    iget-object v12, v5, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawDiscountCampaign;->priceRounding:Ljava/lang/String;

    .line 1991
    .line 1992
    iget-object v5, v5, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawDiscountCampaign;->scopes:Ljava/util/List;

    .line 1993
    .line 1994
    move-object/from16 v17, v1

    .line 1995
    .line 1996
    move/from16 v18, v6

    .line 1997
    .line 1998
    move-object/from16 v19, v7

    .line 1999
    .line 2000
    move-object/from16 v20, v8

    .line 2001
    .line 2002
    move/from16 v21, v11

    .line 2003
    .line 2004
    move-object/from16 v22, v12

    .line 2005
    .line 2006
    move-object/from16 v23, v5

    .line 2007
    .line 2008
    invoke-direct/range {v17 .. v23}, Lcom/sgscq/vpn/config/a;-><init>(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    .line 2009
    .line 2010
    .line 2011
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2012
    .line 2013
    .line 2014
    move-object/from16 v17, v10

    .line 2015
    .line 2016
    move-object/from16 v1, v16

    .line 2017
    .line 2018
    goto/16 :goto_2d

    .line 2019
    .line 2020
    :cond_37
    :goto_34
    new-instance v1, Lcom/sgscq/vpn/config/i;

    .line 2021
    .line 2022
    iget v4, v2, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawConfig;->schemaVersion:I

    .line 2023
    .line 2024
    iget-object v5, v2, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawConfig;->configId:Ljava/lang/String;

    .line 2025
    .line 2026
    iget-object v2, v2, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawConfig;->currency:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawCurrency;

    .line 2027
    .line 2028
    iget-object v2, v2, Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawCurrency;->type:Ljava/lang/String;

    .line 2029
    .line 2030
    move-object/from16 v22, v1

    .line 2031
    .line 2032
    move/from16 v23, v4

    .line 2033
    .line 2034
    move-object/from16 v24, v5

    .line 2035
    .line 2036
    move-object/from16 v25, v0

    .line 2037
    .line 2038
    move-object/from16 v26, p1

    .line 2039
    .line 2040
    move-object/from16 v27, v3

    .line 2041
    .line 2042
    invoke-direct/range {v22 .. v27}, Lcom/sgscq/vpn/config/i;-><init>(ILjava/lang/String;Lm/e;Lcom/sgscq/vpn/t;Ljava/util/ArrayList;)V

    .line 2043
    .line 2044
    .line 2045
    return-object v1

    .line 2046
    :catch_0
    const-string v0, "invalid JSON"

    .line 2047
    .line 2048
    invoke-static {v1, v0}, Lcom/sgscq/vpn/config/j;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    .line 2049
    .line 2050
    .line 2051
    move-result-object v0

    .line 2052
    throw v0

    .line 2053
    :cond_38
    const-string v0, "empty JSON"

    .line 2054
    .line 2055
    invoke-static {v1, v0}, Lcom/sgscq/vpn/config/j;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    .line 2056
    .line 2057
    .line 2058
    move-result-object v0

    .line 2059
    throw v0
.end method
