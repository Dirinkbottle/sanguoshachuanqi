.class public final Lcom/sgscq/vpn/handler/l1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:[I

.field public static final g:[I

.field public static final h:[Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/LinkedHashMap;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    const/16 v0, 0x14

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/sgscq/vpn/handler/l1;->f:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sgscq/vpn/handler/l1;->g:[I

    const-string v1, "12:00:00"

    const-string v2, "12:00:00"

    const-string v3, "13:36:00"

    const-string v4, "12:00:00"

    const-string v5, "12:00:00"

    const-string v6, "12:48:00"

    const-string v7, "12:00:00"

    const-string v8, "12:00:00"

    const-string v9, "12:24:00"

    const-string v10, "12:00:00"

    const-string v11, "13:30:00"

    const-string v12, "13:42:00"

    const-string v13, "12:00:00"

    const-string v14, "13:30:00"

    const-string v15, "13:36:00"

    const-string v16, "14:30:00"

    const-string v17, "12:00:00"

    const-string v18, "12:03:00"

    const-string v19, "17:00:00"

    const-string v20, "18:00:00"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/handler/l1;->h:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x40
        0x20
        0x20
        0x20
        0x10
        0x10
        0x10
        0x8
        0x8
        0x8
        0x4
        0x4
        0x4
        0x2
        0x2
        0x2
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x2
        0x3
        0x4
        0x4
        0x5
        0x6
        0x6
        0x7
        0x7
        0x7
        0x8
        0x8
        0x8
        0x8
        0x9
        0x9
        0x9
        0x9
    .end array-data
.end method

.method public constructor <init>(Lcom/sgscq/vpn/p7;Ljava/lang/String;I)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/sgscq/vpn/handler/l1;->c:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/sgscq/vpn/handler/l1;->d:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/sgscq/vpn/handler/l1;->e:Ljava/util/ArrayList;

    .line 24
    .line 25
    const-string v0, "1.0.1.14067+23|world-war"

    .line 26
    .line 27
    iput-object v0, p0, Lcom/sgscq/vpn/handler/l1;->a:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v2, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    const/16 v5, 0x80

    .line 42
    .line 43
    const-string v3, "|world-war-level"

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v3}, Lcom/sgscq/vpn/handler/l1;->h(Ljava/lang/String;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v6

    .line 53
    move-object v3, p1

    .line 54
    move v4, p3

    .line 55
    move-object v8, p2

    .line 56
    invoke-virtual/range {v3 .. v8}, Lcom/sgscq/vpn/p7;->n(IIJLjava/lang/String;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-static {v2, v1, p3}, Lcom/sgscq/vpn/handler/l1;->a(Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Ljava/util/List;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    const/16 v3, 0x80

    .line 68
    .line 69
    if-ge p3, v3, :cond_0

    .line 70
    .line 71
    const-string p3, "|world-war-fighting"

    .line 72
    .line 73
    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    invoke-static {p3}, Lcom/sgscq/vpn/handler/l1;->h(Ljava/lang/String;)J

    .line 78
    .line 79
    .line 80
    move-result-wide v4

    .line 81
    const p3, 0x3d090

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p3, v4, v5, p2}, Lcom/sgscq/vpn/p7;->m(IJLjava/lang/String;)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {v2, v1, p1}, Lcom/sgscq/vpn/handler/l1;->a(Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Ljava/util/List;)V

    .line 89
    .line 90
    .line 91
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-lt p1, v3, :cond_2

    .line 96
    .line 97
    new-instance p1, Ljava/util/ArrayList;

    .line 98
    .line 99
    const/4 p2, 0x0

    .line 100
    invoke-virtual {v2, p2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 105
    .line 106
    .line 107
    new-instance p2, Lcom/sgscq/vpn/handler/i1;

    .line 108
    .line 109
    invoke-direct {p2, p0}, Lcom/sgscq/vpn/handler/i1;-><init>(Lcom/sgscq/vpn/handler/l1;)V

    .line 110
    .line 111
    .line 112
    invoke-static {p2}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 117
    .line 118
    .line 119
    iput-object p1, p0, Lcom/sgscq/vpn/handler/l1;->b:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    if-eqz p2, :cond_1

    .line 130
    .line 131
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    check-cast p2, Lcom/sgscq/vpn/v5;

    .line 136
    .line 137
    iget-object p3, p0, Lcom/sgscq/vpn/handler/l1;->c:Ljava/util/LinkedHashMap;

    .line 138
    .line 139
    iget-object v0, p2, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 140
    .line 141
    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_1
    iget-object p1, p0, Lcom/sgscq/vpn/handler/l1;->b:Ljava/util/ArrayList;

    .line 146
    .line 147
    const-string p2, "opening"

    .line 148
    .line 149
    const/4 p3, 0x1

    .line 150
    invoke-virtual {p0, p3, p2, p1}, Lcom/sgscq/vpn/handler/l1;->d(ILjava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p0, p3, p1}, Lcom/sgscq/vpn/handler/l1;->f(ILjava/util/ArrayList;)Lcom/sgscq/vpn/handler/k1;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    const/4 p2, 0x2

    .line 159
    const-string p3, "survival"

    .line 160
    .line 161
    iget-object v0, p1, Lcom/sgscq/vpn/handler/k1;->b:Ljava/util/List;

    .line 162
    .line 163
    invoke-virtual {p0, p2, p3, v0}, Lcom/sgscq/vpn/handler/l1;->d(ILjava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {p0, p2, v0}, Lcom/sgscq/vpn/handler/l1;->f(ILjava/util/ArrayList;)Lcom/sgscq/vpn/handler/k1;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    const/4 v0, 0x3

    .line 172
    const-string v1, "upper"

    .line 173
    .line 174
    iget-object p1, p1, Lcom/sgscq/vpn/handler/k1;->a:Ljava/util/List;

    .line 175
    .line 176
    invoke-virtual {p0, v0, v1, p1}, Lcom/sgscq/vpn/handler/l1;->d(ILjava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p0, v0, p1}, Lcom/sgscq/vpn/handler/l1;->f(ILjava/util/ArrayList;)Lcom/sgscq/vpn/handler/k1;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    iget-object p2, p2, Lcom/sgscq/vpn/handler/k1;->a:Ljava/util/List;

    .line 185
    .line 186
    const/4 v0, 0x4

    .line 187
    invoke-virtual {p0, v0, p3, p2}, Lcom/sgscq/vpn/handler/l1;->d(ILjava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    const-string v2, "upper-drop"

    .line 192
    .line 193
    iget-object v3, p1, Lcom/sgscq/vpn/handler/k1;->b:Ljava/util/List;

    .line 194
    .line 195
    invoke-virtual {p0, v0, v2, v3}, Lcom/sgscq/vpn/handler/l1;->d(ILjava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    invoke-static {p2, v3}, Lcom/sgscq/vpn/handler/l1;->c(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    invoke-virtual {p0, v0, p2}, Lcom/sgscq/vpn/handler/l1;->f(ILjava/util/ArrayList;)Lcom/sgscq/vpn/handler/k1;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    iget-object p2, p2, Lcom/sgscq/vpn/handler/k1;->a:Ljava/util/List;

    .line 208
    .line 209
    const/4 v0, 0x5

    .line 210
    invoke-virtual {p0, v0, p3, p2}, Lcom/sgscq/vpn/handler/l1;->d(ILjava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    invoke-virtual {p0, v0, p2}, Lcom/sgscq/vpn/handler/l1;->f(ILjava/util/ArrayList;)Lcom/sgscq/vpn/handler/k1;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    iget-object p1, p1, Lcom/sgscq/vpn/handler/k1;->a:Ljava/util/List;

    .line 219
    .line 220
    const/4 v0, 0x6

    .line 221
    invoke-virtual {p0, v0, v1, p1}, Lcom/sgscq/vpn/handler/l1;->d(ILjava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {p0, v0, p1}, Lcom/sgscq/vpn/handler/l1;->f(ILjava/util/ArrayList;)Lcom/sgscq/vpn/handler/k1;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    iget-object p2, p2, Lcom/sgscq/vpn/handler/k1;->a:Ljava/util/List;

    .line 230
    .line 231
    const/4 v0, 0x7

    .line 232
    invoke-virtual {p0, v0, p3, p2}, Lcom/sgscq/vpn/handler/l1;->d(ILjava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 233
    .line 234
    .line 235
    move-result-object p2

    .line 236
    iget-object v3, p1, Lcom/sgscq/vpn/handler/k1;->b:Ljava/util/List;

    .line 237
    .line 238
    invoke-virtual {p0, v0, v2, v3}, Lcom/sgscq/vpn/handler/l1;->d(ILjava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-static {p2, v3}, Lcom/sgscq/vpn/handler/l1;->c(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    invoke-virtual {p0, v0, p2}, Lcom/sgscq/vpn/handler/l1;->f(ILjava/util/ArrayList;)Lcom/sgscq/vpn/handler/k1;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    iget-object p2, p2, Lcom/sgscq/vpn/handler/k1;->a:Ljava/util/List;

    .line 251
    .line 252
    const/16 v0, 0x8

    .line 253
    .line 254
    invoke-virtual {p0, v0, p3, p2}, Lcom/sgscq/vpn/handler/l1;->d(ILjava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    invoke-virtual {p0, v0, p2}, Lcom/sgscq/vpn/handler/l1;->f(ILjava/util/ArrayList;)Lcom/sgscq/vpn/handler/k1;

    .line 259
    .line 260
    .line 261
    move-result-object p2

    .line 262
    iget-object p1, p1, Lcom/sgscq/vpn/handler/k1;->a:Ljava/util/List;

    .line 263
    .line 264
    const/16 v0, 0x9

    .line 265
    .line 266
    invoke-virtual {p0, v0, v1, p1}, Lcom/sgscq/vpn/handler/l1;->d(ILjava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    invoke-virtual {p0, v0, p1}, Lcom/sgscq/vpn/handler/l1;->f(ILjava/util/ArrayList;)Lcom/sgscq/vpn/handler/k1;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    iget-object p2, p2, Lcom/sgscq/vpn/handler/k1;->a:Ljava/util/List;

    .line 275
    .line 276
    const/16 v0, 0xa

    .line 277
    .line 278
    invoke-virtual {p0, v0, p3, p2}, Lcom/sgscq/vpn/handler/l1;->d(ILjava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 279
    .line 280
    .line 281
    move-result-object p2

    .line 282
    iget-object v3, p1, Lcom/sgscq/vpn/handler/k1;->b:Ljava/util/List;

    .line 283
    .line 284
    invoke-virtual {p0, v0, v2, v3}, Lcom/sgscq/vpn/handler/l1;->d(ILjava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    invoke-static {p2, v3}, Lcom/sgscq/vpn/handler/l1;->c(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    .line 289
    .line 290
    .line 291
    move-result-object p2

    .line 292
    invoke-virtual {p0, v0, p2}, Lcom/sgscq/vpn/handler/l1;->f(ILjava/util/ArrayList;)Lcom/sgscq/vpn/handler/k1;

    .line 293
    .line 294
    .line 295
    move-result-object p2

    .line 296
    iget-object p2, p2, Lcom/sgscq/vpn/handler/k1;->a:Ljava/util/List;

    .line 297
    .line 298
    const/16 v0, 0xb

    .line 299
    .line 300
    invoke-virtual {p0, v0, p3, p2}, Lcom/sgscq/vpn/handler/l1;->d(ILjava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 301
    .line 302
    .line 303
    move-result-object p2

    .line 304
    invoke-virtual {p0, v0, p2}, Lcom/sgscq/vpn/handler/l1;->f(ILjava/util/ArrayList;)Lcom/sgscq/vpn/handler/k1;

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    iget-object p1, p1, Lcom/sgscq/vpn/handler/k1;->a:Ljava/util/List;

    .line 309
    .line 310
    const/16 v0, 0xc

    .line 311
    .line 312
    invoke-virtual {p0, v0, v1, p1}, Lcom/sgscq/vpn/handler/l1;->d(ILjava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    invoke-virtual {p0, v0, p1}, Lcom/sgscq/vpn/handler/l1;->f(ILjava/util/ArrayList;)Lcom/sgscq/vpn/handler/k1;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    iget-object p2, p2, Lcom/sgscq/vpn/handler/k1;->a:Ljava/util/List;

    .line 321
    .line 322
    const/16 v0, 0xd

    .line 323
    .line 324
    invoke-virtual {p0, v0, p3, p2}, Lcom/sgscq/vpn/handler/l1;->d(ILjava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 325
    .line 326
    .line 327
    move-result-object p2

    .line 328
    iget-object v3, p1, Lcom/sgscq/vpn/handler/k1;->b:Ljava/util/List;

    .line 329
    .line 330
    invoke-virtual {p0, v0, v2, v3}, Lcom/sgscq/vpn/handler/l1;->d(ILjava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    invoke-static {p2, v3}, Lcom/sgscq/vpn/handler/l1;->c(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    .line 335
    .line 336
    .line 337
    move-result-object p2

    .line 338
    invoke-virtual {p0, v0, p2}, Lcom/sgscq/vpn/handler/l1;->f(ILjava/util/ArrayList;)Lcom/sgscq/vpn/handler/k1;

    .line 339
    .line 340
    .line 341
    move-result-object p2

    .line 342
    iget-object p2, p2, Lcom/sgscq/vpn/handler/k1;->a:Ljava/util/List;

    .line 343
    .line 344
    const/16 v0, 0xe

    .line 345
    .line 346
    invoke-virtual {p0, v0, p3, p2}, Lcom/sgscq/vpn/handler/l1;->d(ILjava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 347
    .line 348
    .line 349
    move-result-object p2

    .line 350
    invoke-virtual {p0, v0, p2}, Lcom/sgscq/vpn/handler/l1;->f(ILjava/util/ArrayList;)Lcom/sgscq/vpn/handler/k1;

    .line 351
    .line 352
    .line 353
    move-result-object p2

    .line 354
    iget-object p1, p1, Lcom/sgscq/vpn/handler/k1;->a:Ljava/util/List;

    .line 355
    .line 356
    const/16 v0, 0xf

    .line 357
    .line 358
    invoke-virtual {p0, v0, v1, p1}, Lcom/sgscq/vpn/handler/l1;->d(ILjava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    invoke-virtual {p0, v0, p1}, Lcom/sgscq/vpn/handler/l1;->f(ILjava/util/ArrayList;)Lcom/sgscq/vpn/handler/k1;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    iget-object p2, p2, Lcom/sgscq/vpn/handler/k1;->a:Ljava/util/List;

    .line 367
    .line 368
    const/16 v0, 0x10

    .line 369
    .line 370
    invoke-virtual {p0, v0, p3, p2}, Lcom/sgscq/vpn/handler/l1;->d(ILjava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 371
    .line 372
    .line 373
    move-result-object p2

    .line 374
    iget-object p3, p1, Lcom/sgscq/vpn/handler/k1;->b:Ljava/util/List;

    .line 375
    .line 376
    invoke-virtual {p0, v0, v2, p3}, Lcom/sgscq/vpn/handler/l1;->d(ILjava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 377
    .line 378
    .line 379
    move-result-object p3

    .line 380
    invoke-static {p2, p3}, Lcom/sgscq/vpn/handler/l1;->c(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    .line 381
    .line 382
    .line 383
    move-result-object p2

    .line 384
    invoke-virtual {p0, v0, p2}, Lcom/sgscq/vpn/handler/l1;->f(ILjava/util/ArrayList;)Lcom/sgscq/vpn/handler/k1;

    .line 385
    .line 386
    .line 387
    move-result-object p2

    .line 388
    const-string p3, "survival-final"

    .line 389
    .line 390
    iget-object p2, p2, Lcom/sgscq/vpn/handler/k1;->a:Ljava/util/List;

    .line 391
    .line 392
    const/16 v0, 0x11

    .line 393
    .line 394
    invoke-virtual {p0, v0, p3, p2}, Lcom/sgscq/vpn/handler/l1;->d(ILjava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 395
    .line 396
    .line 397
    move-result-object p2

    .line 398
    invoke-virtual {p0, v0, p2}, Lcom/sgscq/vpn/handler/l1;->f(ILjava/util/ArrayList;)Lcom/sgscq/vpn/handler/k1;

    .line 399
    .line 400
    .line 401
    move-result-object p2

    .line 402
    const-string p3, "upper-final"

    .line 403
    .line 404
    iget-object p1, p1, Lcom/sgscq/vpn/handler/k1;->a:Ljava/util/List;

    .line 405
    .line 406
    const/16 v0, 0x12

    .line 407
    .line 408
    invoke-virtual {p0, v0, p3, p1}, Lcom/sgscq/vpn/handler/l1;->d(ILjava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 409
    .line 410
    .line 411
    move-result-object p1

    .line 412
    invoke-virtual {p0, v0, p1}, Lcom/sgscq/vpn/handler/l1;->f(ILjava/util/ArrayList;)Lcom/sgscq/vpn/handler/k1;

    .line 413
    .line 414
    .line 415
    move-result-object p1

    .line 416
    iget-object p3, p1, Lcom/sgscq/vpn/handler/k1;->a:Ljava/util/List;

    .line 417
    .line 418
    iget-object p2, p2, Lcom/sgscq/vpn/handler/k1;->a:Ljava/util/List;

    .line 419
    .line 420
    invoke-static {p3, p2}, Lcom/sgscq/vpn/handler/l1;->c(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    .line 421
    .line 422
    .line 423
    move-result-object p2

    .line 424
    const/16 p3, 0x13

    .line 425
    .line 426
    invoke-virtual {p0, p3, p2}, Lcom/sgscq/vpn/handler/l1;->f(ILjava/util/ArrayList;)Lcom/sgscq/vpn/handler/k1;

    .line 427
    .line 428
    .line 429
    move-result-object p2

    .line 430
    iget-object p1, p1, Lcom/sgscq/vpn/handler/k1;->b:Ljava/util/List;

    .line 431
    .line 432
    iget-object p2, p2, Lcom/sgscq/vpn/handler/k1;->b:Ljava/util/List;

    .line 433
    .line 434
    invoke-static {p1, p2}, Lcom/sgscq/vpn/handler/l1;->c(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    .line 435
    .line 436
    .line 437
    move-result-object p1

    .line 438
    const/16 p2, 0x14

    .line 439
    .line 440
    invoke-virtual {p0, p2, p1}, Lcom/sgscq/vpn/handler/l1;->f(ILjava/util/ArrayList;)Lcom/sgscq/vpn/handler/k1;

    .line 441
    .line 442
    .line 443
    return-void

    .line 444
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 445
    .line 446
    const-string p2, "World War requires 128 robot participants"

    .line 447
    .line 448
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    throw p1

    .line 452
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 453
    .line 454
    const-string p2, "robot roster is required"

    .line 455
    .line 456
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    throw p1
.end method

.method public static a(Ljava/util/ArrayList;Ljava/util/LinkedHashSet;Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/sgscq/vpn/v5;

    .line 16
    .line 17
    iget-object v1, v0, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method public static b(Lcom/sgscq/vpn/v5;)Ljava/util/LinkedHashMap;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v15, v0, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "user_id"

    .line 6
    .line 7
    const-string v2, "uid"

    .line 8
    .line 9
    const-string v4, "nickname"

    .line 10
    .line 11
    iget-object v7, v0, Lcom/sgscq/vpn/v5;->b:Ljava/lang/String;

    .line 12
    .line 13
    const-string v6, "nick"

    .line 14
    .line 15
    const-string v8, "server_id"

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v9

    .line 22
    const-string v10, "level"

    .line 23
    .line 24
    iget v3, v0, Lcom/sgscq/vpn/v5;->c:I

    .line 25
    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v11

    .line 30
    const-string v12, "user_level"

    .line 31
    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v13

    .line 36
    const-string v14, "fightPoint"

    .line 37
    .line 38
    iget v0, v0, Lcom/sgscq/vpn/v5;->d:I

    .line 39
    .line 40
    move-object/from16 v16, v13

    .line 41
    .line 42
    move-object/from16 v17, v14

    .line 43
    .line 44
    int-to-double v13, v0

    .line 45
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 46
    .line 47
    .line 48
    move-result-object v18

    .line 49
    move-object v0, v1

    .line 50
    move-object v1, v15

    .line 51
    move-object v3, v15

    .line 52
    move-object v5, v7

    .line 53
    move-object/from16 v13, v16

    .line 54
    .line 55
    move-object/from16 v14, v17

    .line 56
    .line 57
    move-object/from16 v19, v15

    .line 58
    .line 59
    move-object/from16 v15, v18

    .line 60
    .line 61
    filled-new-array/range {v0 .. v15}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v1, "player_id"

    .line 66
    .line 67
    move-object/from16 v2, v19

    .line 68
    .line 69
    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    return-object v0
.end method

.method public static c(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sgscq/vpn/v5;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sgscq/vpn/v5;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "World War bracket groups must be balanced"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(ILjava/util/List;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sgscq/vpn/v5;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, v2}, Lcom/sgscq/vpn/handler/l1;->g(ILcom/sgscq/vpn/v5;)Ljava/util/LinkedHashMap;

    move-result-object v2

    const-string v3, "rank"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static g(ILcom/sgscq/vpn/v5;)Ljava/util/LinkedHashMap;
    .locals 24

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget-object v15, v0, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 4
    .line 5
    move-object v2, v15

    .line 6
    const-string v1, "player_id"

    .line 7
    .line 8
    const-string v3, "nick"

    .line 9
    .line 10
    iget-object v6, v0, Lcom/sgscq/vpn/v5;->b:Ljava/lang/String;

    .line 11
    .line 12
    move-object v4, v6

    .line 13
    const-string v5, "nickname"

    .line 14
    .line 15
    const-string v7, "server_id"

    .line 16
    .line 17
    const/4 v8, 0x1

    .line 18
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v8

    .line 22
    const-string v9, "level"

    .line 23
    .line 24
    iget v0, v0, Lcom/sgscq/vpn/v5;->c:I

    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v10

    .line 30
    const-string v11, "user_level"

    .line 31
    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v12

    .line 36
    const-string v13, "session"

    .line 37
    .line 38
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v14

    .line 42
    const-string v0, "point"

    .line 43
    .line 44
    move-object/from16 v23, v15

    .line 45
    .line 46
    move-object v15, v0

    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v16

    .line 52
    move-object/from16 v18, v16

    .line 53
    .line 54
    const-string v17, "support_sum"

    .line 55
    .line 56
    const-string v19, "can_support"

    .line 57
    .line 58
    sget-object v20, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 59
    .line 60
    move-object/from16 v22, v20

    .line 61
    .line 62
    const-string v21, "can_overview"

    .line 63
    .line 64
    filled-new-array/range {v1 .. v22}, [Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v1, "uid"

    .line 69
    .line 70
    move-object/from16 v2, v23

    .line 71
    .line 72
    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    return-object v0
.end method

.method public static h(Ljava/lang/String;)J
    .locals 5

    .line 1
    const-wide v0, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-long v3, v3

    xor-long/2addr v0, v3

    const-wide v3, 0x100000001b3L

    mul-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x21

    ushr-long v2, v0, p0

    xor-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final d(ILjava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p3, Lcom/sgscq/vpn/handler/j1;

    invoke-direct {p3, p0, p1, p2}, Lcom/sgscq/vpn/handler/j1;-><init>(Lcom/sgscq/vpn/handler/l1;ILjava/lang/String;)V

    invoke-static {p3}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public final f(ILjava/util/ArrayList;)Lcom/sgscq/vpn/handler/k1;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    sget-object v3, Lcom/sgscq/vpn/handler/l1;->f:[I

    .line 8
    .line 9
    add-int/lit8 v4, v1, -0x1

    .line 10
    .line 11
    aget v3, v3, v4

    .line 12
    .line 13
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    mul-int/lit8 v5, v3, 0x2

    .line 18
    .line 19
    if-ne v4, v5, :cond_8

    .line 20
    .line 21
    new-instance v4, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v5, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v6, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    const/4 v8, 0x0

    .line 37
    :goto_0
    if-ge v8, v3, :cond_7

    .line 38
    .line 39
    mul-int/lit8 v9, v8, 0x2

    .line 40
    .line 41
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v10

    .line 45
    check-cast v10, Lcom/sgscq/vpn/v5;

    .line 46
    .line 47
    const/4 v11, 0x1

    .line 48
    add-int/2addr v9, v11

    .line 49
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    check-cast v9, Lcom/sgscq/vpn/v5;

    .line 54
    .line 55
    add-int/lit8 v8, v8, 0x1

    .line 56
    .line 57
    iget v12, v10, Lcom/sgscq/vpn/v5;->d:I

    .line 58
    .line 59
    iget v13, v9, Lcom/sgscq/vpn/v5;->d:I

    .line 60
    .line 61
    if-lt v12, v13, :cond_0

    .line 62
    .line 63
    move-object v12, v10

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    move-object v12, v9

    .line 66
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    iget-object v14, v0, Lcom/sgscq/vpn/handler/l1;->a:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v14, "|winner|"

    .line 77
    .line 78
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v14, "|"

    .line 85
    .line 86
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v15, v10, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v14, v9, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v13

    .line 112
    invoke-static {v13}, Lcom/sgscq/vpn/handler/l1;->h(Ljava/lang/String;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v13

    .line 116
    const/16 v15, 0x64

    .line 117
    .line 118
    move/from16 v16, v8

    .line 119
    .line 120
    int-to-long v7, v15

    .line 121
    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->floorMod(JJ)J

    .line 122
    .line 123
    .line 124
    move-result-wide v7

    .line 125
    long-to-int v7, v7

    .line 126
    const/16 v8, 0xf

    .line 127
    .line 128
    if-ge v7, v8, :cond_1

    .line 129
    .line 130
    move v7, v11

    .line 131
    goto :goto_2

    .line 132
    :cond_1
    const/4 v7, 0x0

    .line 133
    :goto_2
    if-eqz v7, :cond_2

    .line 134
    .line 135
    if-ne v12, v9, :cond_3

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_2
    if-ne v12, v10, :cond_3

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_3
    const/4 v11, 0x0

    .line 142
    :goto_3
    new-instance v7, Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .line 146
    .line 147
    move/from16 v8, v16

    .line 148
    .line 149
    invoke-static {v8, v10}, Lcom/sgscq/vpn/handler/l1;->g(ILcom/sgscq/vpn/v5;)Ljava/util/LinkedHashMap;

    .line 150
    .line 151
    .line 152
    move-result-object v12

    .line 153
    invoke-static {v8, v9}, Lcom/sgscq/vpn/handler/l1;->g(ILcom/sgscq/vpn/v5;)Ljava/util/LinkedHashMap;

    .line 154
    .line 155
    .line 156
    move-result-object v13

    .line 157
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 158
    .line 159
    const-string v15, "win"

    .line 160
    .line 161
    if-eqz v11, :cond_4

    .line 162
    .line 163
    invoke-interface {v12, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_4
    invoke-interface {v13, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    :goto_4
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    if-eqz v11, :cond_5

    .line 180
    .line 181
    move-object v7, v10

    .line 182
    goto :goto_5

    .line 183
    :cond_5
    move-object v7, v9

    .line 184
    :goto_5
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    if-eqz v11, :cond_6

    .line 188
    .line 189
    move-object v10, v9

    .line 190
    :cond_6
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :cond_7
    iget-object v1, v0, Lcom/sgscq/vpn/handler/l1;->d:Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    new-instance v1, Lcom/sgscq/vpn/handler/k1;

    .line 201
    .line 202
    invoke-direct {v1, v5, v6}, Lcom/sgscq/vpn/handler/k1;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 203
    .line 204
    .line 205
    iget-object v2, v0, Lcom/sgscq/vpn/handler/l1;->e:Ljava/util/ArrayList;

    .line 206
    .line 207
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    return-object v1

    .line 211
    :cond_8
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 212
    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    const-string v6, "World War round "

    .line 216
    .line 217
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v1, " requires "

    .line 224
    .line 225
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v1, " participants but received "

    .line 232
    .line 233
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    throw v3
.end method
