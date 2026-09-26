.class public final Ld/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/j0;


# instance fields
.field public final a:Lc/i;

.field public final b:La/j;

.field public final c:Lc/k;

.field public final d:Ld/d;

.field public final e:Ljava/util/List;


# direct methods
.method public constructor <init>(Lc/i;La/b;Lc/k;Ld/d;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/u;->a:Lc/i;

    iput-object p2, p0, Ld/u;->b:La/j;

    iput-object p3, p0, Ld/u;->c:Lc/k;

    iput-object p4, p0, Ld/u;->d:Ld/d;

    iput-object p5, p0, Ld/u;->e:Ljava/util/List;

    return-void
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)V
    .locals 1

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/lang/reflect/Member;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    :cond_0
    sget-object v0, Lc/w;->a:Lc/w;

    .line 16
    .line 17
    invoke-virtual {v0, p0, p1}, Lc/w;->a(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    const/4 p0, 0x1

    .line 25
    invoke-static {p1, p0}, Lf/c;->d(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    new-instance p1, La/r;

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p0, " is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type, adjust the access filter or increase the visibility of the element and its declaring type."

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-direct {p1, p0}, La/r;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method


# virtual methods
.method public final a(La/o;Lcom/google/gson/reflect/TypeToken;)La/i0;
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return-object p1

    .line 15
    :cond_0
    iget-object v1, p0, Ld/u;->e:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->W(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    sget-object v1, Lf/c;->a:Lcom/sgscq/vpn/cloud/m0;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/cloud/m0;->w1(Ljava/lang/Class;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    new-instance v1, Ld/t;

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-virtual {p0, p1, p2, v0, v2}, Ld/u;->c(La/o;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;Z)Ljava/util/LinkedHashMap;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {v1, v0, p1}, Ld/t;-><init>(Ljava/lang/Class;Ljava/util/LinkedHashMap;)V

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_1
    iget-object v1, p0, Ld/u;->a:Lc/i;

    .line 40
    .line 41
    invoke-virtual {v1, p2}, Lc/i;->b(Lcom/google/gson/reflect/TypeToken;)Lc/t;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v2, Ld/s;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-virtual {p0, p1, p2, v0, v3}, Ld/u;->c(La/o;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;Z)Ljava/util/LinkedHashMap;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {v2, v1, p1}, Ld/s;-><init>(Lc/t;Ljava/util/LinkedHashMap;)V

    .line 53
    .line 54
    .line 55
    return-object v2
.end method

.method public final c(La/o;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;Z)Ljava/util/LinkedHashMap;
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v14, p1

    .line 4
    .line 5
    new-instance v15, Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    return-object v15

    .line 17
    :cond_0
    move-object/from16 v16, p2

    .line 18
    .line 19
    move-object/from16 v13, p3

    .line 20
    .line 21
    :goto_0
    const-class v1, Ljava/lang/Object;

    .line 22
    .line 23
    if-eq v13, v1, :cond_14

    .line 24
    .line 25
    invoke-virtual {v13}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 26
    .line 27
    .line 28
    move-result-object v12

    .line 29
    move-object/from16 v11, p3

    .line 30
    .line 31
    if-eq v13, v11, :cond_1

    .line 32
    .line 33
    array-length v1, v12

    .line 34
    if-lez v1, :cond_1

    .line 35
    .line 36
    iget-object v1, v0, Ld/u;->e:Ljava/util/List;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->W(Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    const/16 v17, 0x0

    .line 42
    .line 43
    array-length v10, v12

    .line 44
    const/4 v1, 0x0

    .line 45
    move v9, v1

    .line 46
    :goto_1
    if-ge v9, v10, :cond_13

    .line 47
    .line 48
    aget-object v8, v12, v9

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    invoke-virtual {v0, v8, v2}, Ld/u;->d(Ljava/lang/reflect/Field;Z)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-virtual {v0, v8, v1}, Ld/u;->d(Ljava/lang/reflect/Field;Z)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-nez v3, :cond_2

    .line 60
    .line 61
    if-nez v4, :cond_2

    .line 62
    .line 63
    move/from16 v25, v9

    .line 64
    .line 65
    move/from16 v26, v10

    .line 66
    .line 67
    move-object/from16 v30, v12

    .line 68
    .line 69
    move-object/from16 p2, v13

    .line 70
    .line 71
    goto/16 :goto_e

    .line 72
    .line 73
    :cond_2
    const-class v5, Lb/b;

    .line 74
    .line 75
    const/16 v18, 0x0

    .line 76
    .line 77
    if-eqz p4, :cond_6

    .line 78
    .line 79
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_3

    .line 88
    .line 89
    move v4, v1

    .line 90
    goto :goto_3

    .line 91
    :cond_3
    sget-object v6, Lf/c;->a:Lcom/sgscq/vpn/cloud/m0;

    .line 92
    .line 93
    invoke-virtual {v6, v13, v8}, Lcom/sgscq/vpn/cloud/m0;->V0(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-static {v6}, Lf/c;->e(Ljava/lang/reflect/AccessibleObject;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    if-eqz v7, :cond_5

    .line 105
    .line 106
    invoke-virtual {v8, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    if-eqz v7, :cond_4

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_4
    invoke-static {v6, v1}, Lf/c;->d(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    new-instance v2, La/r;

    .line 118
    .line 119
    const-string v3, "@SerializedName on "

    .line 120
    .line 121
    const-string v4, " is not supported"

    .line 122
    .line 123
    invoke-static {v3, v1, v4}, Lcom/sgscq/vpn/handler/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-direct {v2, v1}, La/r;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw v2

    .line 131
    :cond_5
    :goto_2
    move/from16 v19, v4

    .line 132
    .line 133
    move-object/from16 v20, v6

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_6
    :goto_3
    move/from16 v19, v4

    .line 137
    .line 138
    move-object/from16 v20, v18

    .line 139
    .line 140
    :goto_4
    if-nez v20, :cond_7

    .line 141
    .line 142
    invoke-static {v8}, Lf/c;->e(Ljava/lang/reflect/AccessibleObject;)V

    .line 143
    .line 144
    .line 145
    :cond_7
    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    new-instance v7, Ljava/util/HashMap;

    .line 154
    .line 155
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-static {v4, v13, v6, v7}, Lcom/sgscq/vpn/cloud/m0;->z2(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    .line 159
    .line 160
    .line 161
    move-result-object v21

    .line 162
    invoke-virtual {v8, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    check-cast v4, Lb/b;

    .line 167
    .line 168
    if-nez v4, :cond_8

    .line 169
    .line 170
    iget-object v2, v0, Ld/u;->b:La/j;

    .line 171
    .line 172
    invoke-interface {v2, v8}, La/j;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    goto :goto_5

    .line 181
    :cond_8
    invoke-interface {v4}, Lb/b;->value()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    invoke-interface {v4}, Lb/b;->alternate()[Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    array-length v6, v4

    .line 190
    if-nez v6, :cond_9

    .line 191
    .line 192
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    :goto_5
    move-object v7, v2

    .line 197
    goto :goto_6

    .line 198
    :cond_9
    new-instance v6, Ljava/util/ArrayList;

    .line 199
    .line 200
    array-length v7, v4

    .line 201
    add-int/2addr v7, v2

    .line 202
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    invoke-static {v6, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-object v7, v6

    .line 212
    :goto_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    move v5, v1

    .line 217
    move-object/from16 v4, v18

    .line 218
    .line 219
    :goto_7
    if-ge v5, v6, :cond_11

    .line 220
    .line 221
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    check-cast v2, Ljava/lang/String;

    .line 226
    .line 227
    if-eqz v5, :cond_a

    .line 228
    .line 229
    move/from16 v22, v1

    .line 230
    .line 231
    goto :goto_8

    .line 232
    :cond_a
    move/from16 v22, v3

    .line 233
    .line 234
    :goto_8
    invoke-static/range {v21 .. v21}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    move-object/from16 p2, v2

    .line 243
    .line 244
    instance-of v2, v1, Ljava/lang/Class;

    .line 245
    .line 246
    if-eqz v2, :cond_b

    .line 247
    .line 248
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    if-eqz v1, :cond_b

    .line 253
    .line 254
    const/4 v1, 0x1

    .line 255
    goto :goto_9

    .line 256
    :cond_b
    const/4 v1, 0x0

    .line 257
    :goto_9
    move/from16 v23, v1

    .line 258
    .line 259
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    if-eqz v2, :cond_c

    .line 268
    .line 269
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    if-eqz v1, :cond_c

    .line 274
    .line 275
    const/4 v1, 0x1

    .line 276
    goto :goto_a

    .line 277
    :cond_c
    const/4 v1, 0x0

    .line 278
    :goto_a
    move/from16 v24, v1

    .line 279
    .line 280
    const-class v1, Lb/a;

    .line 281
    .line 282
    invoke-virtual {v8, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    check-cast v1, Lb/a;

    .line 287
    .line 288
    if-eqz v1, :cond_d

    .line 289
    .line 290
    iget-object v2, v0, Ld/u;->d:Ld/d;

    .line 291
    .line 292
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    iget-object v2, v0, Ld/u;->a:Lc/i;

    .line 296
    .line 297
    invoke-static {v2, v14, v3, v1}, Ld/d;->b(Lc/i;La/o;Lcom/google/gson/reflect/TypeToken;Lb/a;)La/i0;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    goto :goto_b

    .line 302
    :cond_d
    move-object/from16 v1, v18

    .line 303
    .line 304
    :goto_b
    if-eqz v1, :cond_e

    .line 305
    .line 306
    const/4 v2, 0x1

    .line 307
    goto :goto_c

    .line 308
    :cond_e
    const/4 v2, 0x0

    .line 309
    :goto_c
    move/from16 v25, v2

    .line 310
    .line 311
    if-nez v1, :cond_f

    .line 312
    .line 313
    invoke-virtual {v14, v3}, La/o;->f(Lcom/google/gson/reflect/TypeToken;)La/i0;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    :cond_f
    move-object/from16 v26, v1

    .line 318
    .line 319
    new-instance v2, Ld/q;

    .line 320
    .line 321
    const/16 v27, 0x0

    .line 322
    .line 323
    move-object v1, v2

    .line 324
    move-object/from16 v28, p2

    .line 325
    .line 326
    move-object/from16 v29, v2

    .line 327
    .line 328
    move-object/from16 v2, v28

    .line 329
    .line 330
    move-object/from16 v30, v3

    .line 331
    .line 332
    move-object v3, v8

    .line 333
    move-object/from16 v31, v4

    .line 334
    .line 335
    move/from16 v4, v22

    .line 336
    .line 337
    move/from16 v32, v5

    .line 338
    .line 339
    move/from16 v5, v19

    .line 340
    .line 341
    move/from16 v33, v6

    .line 342
    .line 343
    move/from16 v6, v17

    .line 344
    .line 345
    move-object/from16 v34, v7

    .line 346
    .line 347
    move-object/from16 v7, v20

    .line 348
    .line 349
    move-object/from16 v35, v8

    .line 350
    .line 351
    move/from16 v8, v25

    .line 352
    .line 353
    move/from16 v25, v9

    .line 354
    .line 355
    move-object/from16 v9, v26

    .line 356
    .line 357
    move/from16 v26, v10

    .line 358
    .line 359
    move-object/from16 v10, p1

    .line 360
    .line 361
    move-object/from16 v11, v30

    .line 362
    .line 363
    move-object/from16 v30, v12

    .line 364
    .line 365
    move/from16 v12, v23

    .line 366
    .line 367
    move-object/from16 p2, v13

    .line 368
    .line 369
    move/from16 v13, v24

    .line 370
    .line 371
    invoke-direct/range {v1 .. v13}, Ld/q;-><init>(Ljava/lang/String;Ljava/lang/reflect/Field;ZZZLjava/lang/reflect/Method;ZLa/i0;La/o;Lcom/google/gson/reflect/TypeToken;ZZ)V

    .line 372
    .line 373
    .line 374
    move-object/from16 v1, v29

    .line 375
    .line 376
    invoke-interface {v15, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    move-object v4, v1

    .line 381
    check-cast v4, Ld/q;

    .line 382
    .line 383
    move-object/from16 v2, v31

    .line 384
    .line 385
    if-nez v2, :cond_10

    .line 386
    .line 387
    goto :goto_d

    .line 388
    :cond_10
    move-object v4, v2

    .line 389
    :goto_d
    add-int/lit8 v5, v32, 0x1

    .line 390
    .line 391
    move-object/from16 v13, p2

    .line 392
    .line 393
    move-object/from16 v11, p3

    .line 394
    .line 395
    move/from16 v3, v22

    .line 396
    .line 397
    move/from16 v9, v25

    .line 398
    .line 399
    move/from16 v10, v26

    .line 400
    .line 401
    move/from16 v1, v27

    .line 402
    .line 403
    move-object/from16 v12, v30

    .line 404
    .line 405
    move/from16 v6, v33

    .line 406
    .line 407
    move-object/from16 v7, v34

    .line 408
    .line 409
    move-object/from16 v8, v35

    .line 410
    .line 411
    goto/16 :goto_7

    .line 412
    .line 413
    :cond_11
    move-object v2, v4

    .line 414
    move-object/from16 v35, v8

    .line 415
    .line 416
    move/from16 v25, v9

    .line 417
    .line 418
    move/from16 v26, v10

    .line 419
    .line 420
    move-object/from16 v30, v12

    .line 421
    .line 422
    move-object/from16 p2, v13

    .line 423
    .line 424
    if-nez v2, :cond_12

    .line 425
    .line 426
    :goto_e
    add-int/lit8 v9, v25, 0x1

    .line 427
    .line 428
    move-object/from16 v13, p2

    .line 429
    .line 430
    move-object/from16 v11, p3

    .line 431
    .line 432
    move/from16 v10, v26

    .line 433
    .line 434
    move-object/from16 v12, v30

    .line 435
    .line 436
    goto/16 :goto_1

    .line 437
    .line 438
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 439
    .line 440
    new-instance v3, Ljava/lang/StringBuilder;

    .line 441
    .line 442
    const-string v4, "Class "

    .line 443
    .line 444
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v4

    .line 451
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    const-string v4, " declares multiple JSON fields named \'"

    .line 455
    .line 456
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    iget-object v4, v2, Ld/q;->a:Ljava/lang/String;

    .line 460
    .line 461
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    const-string v4, "\'; conflict is caused by fields "

    .line 465
    .line 466
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    iget-object v2, v2, Ld/q;->b:Ljava/lang/reflect/Field;

    .line 470
    .line 471
    invoke-static {v2}, Lf/c;->c(Ljava/lang/reflect/Field;)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    const-string v2, " and "

    .line 479
    .line 480
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-static/range {v35 .. v35}, Lf/c;->c(Ljava/lang/reflect/Field;)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v2

    .line 494
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    throw v1

    .line 498
    :cond_13
    move-object/from16 p2, v13

    .line 499
    .line 500
    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 505
    .line 506
    .line 507
    move-result-object v2

    .line 508
    new-instance v3, Ljava/util/HashMap;

    .line 509
    .line 510
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 511
    .line 512
    .line 513
    move-object/from16 v4, p2

    .line 514
    .line 515
    invoke-static {v1, v4, v2, v3}, Lcom/sgscq/vpn/cloud/m0;->z2(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    invoke-static {v1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 520
    .line 521
    .line 522
    move-result-object v16

    .line 523
    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 524
    .line 525
    .line 526
    move-result-object v13

    .line 527
    goto/16 :goto_0

    .line 528
    .line 529
    :cond_14
    return-object v15
.end method

.method public final d(Ljava/lang/reflect/Field;Z)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Ld/u;->c:Lc/k;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lc/k;->c(Ljava/lang/Class;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1, p2}, Lc/k;->b(Z)V

    .line 19
    .line 20
    .line 21
    move v0, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v3

    .line 24
    :goto_0
    if-nez v0, :cond_7

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    and-int/lit16 v0, v0, 0x88

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Lc/k;->c(Ljava/lang/Class;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    :goto_1
    move p1, v3

    .line 53
    goto :goto_4

    .line 54
    :cond_3
    if-eqz p2, :cond_4

    .line 55
    .line 56
    iget-object p1, v1, Lc/k;->a:Ljava/util/List;

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_4
    iget-object p1, v1, Lc/k;->b:Ljava/util/List;

    .line 60
    .line 61
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-nez p2, :cond_6

    .line 66
    .line 67
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-nez p2, :cond_5

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1}, Lc/a;->v(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    const/4 p1, 0x0

    .line 86
    throw p1

    .line 87
    :cond_6
    :goto_3
    move p1, v2

    .line 88
    :goto_4
    if-nez p1, :cond_7

    .line 89
    .line 90
    move v2, v3

    .line 91
    :cond_7
    return v2
.end method
