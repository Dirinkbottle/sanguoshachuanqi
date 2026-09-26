.class public abstract Lcom/sgscq/vpn/handler/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;

.field public static final b:Ljava/util/Map;

.field public static final c:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    .line 1
    const-string v0, "9331026"

    .line 2
    .line 3
    const-string v1, "9341019"

    .line 4
    .line 5
    const-string v2, "9351004"

    .line 6
    .line 7
    const-string v3, "9351005"

    .line 8
    .line 9
    const-string v4, "9351015"

    .line 10
    .line 11
    const-string v5, "9351016"

    .line 12
    .line 13
    const-string v6, "9351017"

    .line 14
    .line 15
    const-string v7, "9351022"

    .line 16
    .line 17
    const-string v8, "9351023"

    .line 18
    .line 19
    const-string v9, "9351024"

    .line 20
    .line 21
    const-string v10, "9351027"

    .line 22
    .line 23
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/sgscq/vpn/handler/j0;->a:Ljava/util/List;

    .line 36
    .line 37
    const-string v0, "9331026"

    .line 38
    .line 39
    const-string v1, "331026"

    .line 40
    .line 41
    const-string v2, "9341019"

    .line 42
    .line 43
    const-string v3, "341019"

    .line 44
    .line 45
    invoke-static {v0, v1, v2, v3}, Lc/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "9351004"

    .line 50
    .line 51
    const-string v2, "351004"

    .line 52
    .line 53
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    const-string v1, "9351005"

    .line 57
    .line 58
    const-string v2, "351005"

    .line 59
    .line 60
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    const-string v1, "9351015"

    .line 64
    .line 65
    const-string v2, "351015"

    .line 66
    .line 67
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    const-string v1, "9351016"

    .line 71
    .line 72
    const-string v2, "351016"

    .line 73
    .line 74
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    const-string v1, "9351017"

    .line 78
    .line 79
    const-string v2, "351017"

    .line 80
    .line 81
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    const-string v1, "9351022"

    .line 85
    .line 86
    const-string v2, "351022"

    .line 87
    .line 88
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    const-string v1, "9351023"

    .line 92
    .line 93
    const-string v2, "351023"

    .line 94
    .line 95
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    const-string v1, "9351024"

    .line 99
    .line 100
    const-string v2, "351024"

    .line 101
    .line 102
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    const-string v1, "9351027"

    .line 106
    .line 107
    const-string v2, "351027"

    .line 108
    .line 109
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    sput-object v0, Lcom/sgscq/vpn/handler/j0;->b:Ljava/util/Map;

    .line 117
    .line 118
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 119
    .line 120
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v1, "792321"

    .line 124
    .line 125
    const-string v2, "792248"

    .line 126
    .line 127
    const-string v3, "792218"

    .line 128
    .line 129
    const-string v4, "792143"

    .line 130
    .line 131
    const-string v5, "792325"

    .line 132
    .line 133
    const-string v6, "792246"

    .line 134
    .line 135
    const-string v7, "792141"

    .line 136
    .line 137
    const-string v8, "792220"

    .line 138
    .line 139
    const-string v9, "792247"

    .line 140
    .line 141
    const-string v10, "792182"

    .line 142
    .line 143
    const-string v11, "792179"

    .line 144
    .line 145
    const-string v12, "792219"

    .line 146
    .line 147
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    const-string v2, "792326"

    .line 152
    .line 153
    const-string v3, "792327"

    .line 154
    .line 155
    const-string v4, "792322"

    .line 156
    .line 157
    const-string v5, "792251"

    .line 158
    .line 159
    const-string v6, "792140"

    .line 160
    .line 161
    filled-new-array {v4, v2, v3, v5, v6}, [Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    const-string v3, "792178"

    .line 166
    .line 167
    const-string v4, "792216"

    .line 168
    .line 169
    const-string v5, "792250"

    .line 170
    .line 171
    const-string v6, "792252"

    .line 172
    .line 173
    const-string v7, "792142"

    .line 174
    .line 175
    const-string v8, "792147"

    .line 176
    .line 177
    const-string v9, "792221"

    .line 178
    .line 179
    const-string v10, "792300"

    .line 180
    .line 181
    const-string v11, "792185"

    .line 182
    .line 183
    const-string v12, "792249"

    .line 184
    .line 185
    const-string v13, "792187"

    .line 186
    .line 187
    const-string v14, "792148"

    .line 188
    .line 189
    const-string v15, "792298"

    .line 190
    .line 191
    const-string v16, "792186"

    .line 192
    .line 193
    const-string v17, "792181"

    .line 194
    .line 195
    const-string v18, "792146"

    .line 196
    .line 197
    const-string v19, "792313"

    .line 198
    .line 199
    const-string v20, "792309"

    .line 200
    .line 201
    const-string v21, "792191"

    .line 202
    .line 203
    const-string v22, "792188"

    .line 204
    .line 205
    const-string v23, "792192"

    .line 206
    .line 207
    const-string v24, "792302"

    .line 208
    .line 209
    filled-new-array/range {v3 .. v24}, [Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    const/4 v4, 0x0

    .line 214
    move v5, v4

    .line 215
    :goto_0
    const/16 v6, 0xc

    .line 216
    .line 217
    if-ge v5, v6, :cond_0

    .line 218
    .line 219
    aget-object v6, v1, v5

    .line 220
    .line 221
    const/16 v7, 0xd2

    .line 222
    .line 223
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    add-int/lit8 v5, v5, 0x1

    .line 231
    .line 232
    goto :goto_0

    .line 233
    :cond_0
    move v1, v4

    .line 234
    :goto_1
    const/4 v5, 0x5

    .line 235
    if-ge v1, v5, :cond_1

    .line 236
    .line 237
    aget-object v5, v2, v1

    .line 238
    .line 239
    const/16 v6, 0xc8

    .line 240
    .line 241
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    add-int/lit8 v1, v1, 0x1

    .line 249
    .line 250
    goto :goto_1

    .line 251
    :cond_1
    :goto_2
    const/16 v1, 0x16

    .line 252
    .line 253
    if-ge v4, v1, :cond_2

    .line 254
    .line 255
    aget-object v1, v3, v4

    .line 256
    .line 257
    const/16 v2, 0xbe

    .line 258
    .line 259
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    add-int/lit8 v4, v4, 0x1

    .line 267
    .line 268
    goto :goto_2

    .line 269
    :cond_2
    const/16 v1, 0xb4

    .line 270
    .line 271
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    const-string v3, "792253"

    .line 276
    .line 277
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    const-string v2, "792144"

    .line 281
    .line 282
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    sput-object v0, Lcom/sgscq/vpn/handler/j0;->c:Ljava/util/Map;

    .line 294
    .line 295
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 15

    .line 1
    const-string v0, "sgscq-guild-shop:"

    .line 2
    .line 3
    const-string v1, ":"

    .line 4
    .line 5
    invoke-static {v0, p0, v1}, Lcom/sgscq/vpn/handler/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    sget-object v1, Lcom/sgscq/vpn/handler/j0;->a:Ljava/util/List;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcom/sgscq/vpn/handler/i0;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-direct {v1, v2, p0}, Lcom/sgscq/vpn/handler/i0;-><init>(I[B)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Ljava/util/ArrayList;

    .line 32
    .line 33
    sget-object v3, Lcom/sgscq/vpn/handler/j0;->c:Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 40
    .line 41
    .line 42
    new-instance v4, Lcom/sgscq/vpn/handler/i0;

    .line 43
    .line 44
    const/4 v5, 0x1

    .line 45
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v14

    .line 49
    invoke-direct {v4, v5, p0}, Lcom/sgscq/vpn/handler/i0;-><init>(I[B)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 53
    .line 54
    .line 55
    new-instance v4, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    const/4 v5, 0x2

    .line 61
    invoke-virtual {v0, v2, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    const-string v5, "item_id"

    .line 74
    .line 75
    if-eqz v2, :cond_0

    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Ljava/lang/String;

    .line 82
    .line 83
    const-string v6, "item_num"

    .line 84
    .line 85
    const-string v8, "donate"

    .line 86
    .line 87
    const/16 v7, 0x61a8

    .line 88
    .line 89
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    const-string v10, "exchange_num"

    .line 94
    .line 95
    const-string v12, "kind"

    .line 96
    .line 97
    const-string v13, "skill"

    .line 98
    .line 99
    move-object v7, v14

    .line 100
    move-object v11, v14

    .line 101
    filled-new-array/range {v6 .. v13}, [Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-static {v5, v2, v6}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_0
    const/4 v0, 0x3

    .line 114
    const/4 v2, 0x0

    .line 115
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_1

    .line 128
    .line 129
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    check-cast v2, Ljava/lang/String;

    .line 134
    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v7, "quantity:"

    .line 138
    .line 139
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-static {v6, p0}, Lcom/sgscq/vpn/handler/j0;->d(Ljava/lang/String;[B)[B

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    const/4 v7, 0x0

    .line 154
    aget-byte v6, v6, v7

    .line 155
    .line 156
    and-int/lit16 v6, v6, 0xff

    .line 157
    .line 158
    rem-int/2addr v6, v0

    .line 159
    add-int/lit8 v6, v6, 0x1

    .line 160
    .line 161
    const-string v7, "item_num"

    .line 162
    .line 163
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    const-string v9, "donate"

    .line 168
    .line 169
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v10

    .line 173
    check-cast v10, Ljava/lang/Integer;

    .line 174
    .line 175
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 176
    .line 177
    .line 178
    move-result v10

    .line 179
    mul-int/2addr v10, v6

    .line 180
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v10

    .line 184
    const-string v11, "exchange_num"

    .line 185
    .line 186
    const-string v12, "kind"

    .line 187
    .line 188
    const-string v13, "soul"

    .line 189
    .line 190
    move-object v6, v7

    .line 191
    move-object v7, v8

    .line 192
    move-object v8, v9

    .line 193
    move-object v9, v10

    .line 194
    move-object v10, v11

    .line 195
    move-object v11, v14

    .line 196
    filled-new-array/range {v6 .. v13}, [Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    invoke-static {v5, v2, v6}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_1
    const-string v6, "item_num"

    .line 209
    .line 210
    const-string v8, "donate"

    .line 211
    .line 212
    const/16 p0, 0x78

    .line 213
    .line 214
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v9

    .line 218
    const-string v10, "exchange_num"

    .line 219
    .line 220
    const/16 p0, 0x1e

    .line 221
    .line 222
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v11

    .line 226
    const-string v12, "kind"

    .line 227
    .line 228
    const-string v13, "combo"

    .line 229
    .line 230
    move-object v7, v14

    .line 231
    filled-new-array/range {v6 .. v13}, [Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    const-string v0, "791684"

    .line 236
    .line 237
    invoke-static {v5, v0, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    return-object v4
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "GMT+08:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c([B[B)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_2

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    if-eq v1, v2, :cond_1

    if-ge v1, v2, :cond_0

    const/4 p0, -0x1

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    array-length p0, p0

    array-length p1, p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;[B)[B
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    sget-object p1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SHA-256 unavailable"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static e(Ljava/lang/String;Ljava/util/Map;)I
    .locals 1

    .line 1
    const-string v0, "union_goods_exchange_day"

    .line 2
    .line 3
    invoke-static {p1, v0, p0}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    const-string p0, "union_goods_exchange_mask"

    .line 12
    .line 13
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lcom/sgscq/vpn/handler/j0;->g(Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public static f(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 23

    .line 1
    invoke-static {}, Lcom/sgscq/vpn/handler/j0;->b()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/j0;->e(Ljava/lang/String;Ljava/util/Map;)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v6, "can_exchange"

    const/16 v16, 0x2

    const/16 v17, 0x1

    const/4 v5, 0x6

    const/4 v7, 0x5

    const-string v18, "exchanged_num"

    const-string v19, "num"

    const/16 v8, 0x10

    const-string v9, "pk_id"

    const-string v10, "kind"

    const/16 v20, 0x7

    const-string v11, "item_id"

    const-string v12, "donate"

    const-string v13, "exchange_num"

    const-string v14, "item_num"

    if-ge v4, v5, :cond_3

    invoke-static {v0}, Lcom/sgscq/vpn/handler/j0;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-ne v4, v7, :cond_0

    shr-int/lit8 v21, v1, 0x5

    and-int/lit8 v21, v21, 0x1f

    :goto_1
    move/from16 v22, v21

    goto :goto_2

    :cond_0
    shl-int v21, v17, v4

    and-int v21, v1, v21

    if-nez v21, :cond_1

    move/from16 v21, v3

    goto :goto_1

    :cond_1
    move/from16 v21, v17

    goto :goto_1

    :goto_2
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/sgscq/vpn/handler/j0;->g(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/sgscq/vpn/handler/j0;->g(Ljava/lang/Object;)I

    move-result v21

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v11, v8, v3

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v8, v17

    aput-object v14, v8, v16

    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const/16 v16, 0x3

    aput-object v11, v8, v16

    const/4 v11, 0x4

    aput-object v19, v8, v11

    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const/4 v14, 0x5

    aput-object v11, v8, v14

    const/4 v11, 0x6

    aput-object v10, v8, v11

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v8, v20

    const/16 v5, 0x8

    aput-object v12, v8, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v10, 0x9

    aput-object v5, v8, v10

    const/16 v5, 0xa

    aput-object v13, v8, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v10, 0xb

    aput-object v5, v8, v10

    const/16 v5, 0xc

    aput-object v18, v8, v5

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v10, 0xd

    aput-object v5, v8, v10

    const/16 v5, 0xe

    aput-object v6, v8, v5

    move/from16 v5, v22

    if-ge v5, v7, :cond_2

    goto :goto_3

    :cond_2
    move/from16 v17, v3

    :goto_3
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v6, 0xf

    aput-object v5, v8, v6

    invoke-static {v9, v15, v8}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    invoke-static {v0}, Lcom/sgscq/vpn/handler/j0;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    shr-int/2addr v1, v4

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/sgscq/vpn/handler/j0;->g(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/sgscq/vpn/handler/j0;->g(Ljava/lang/Object;)I

    move-result v5

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v11, v8, v3

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v8, v17

    aput-object v14, v8, v16

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const/4 v15, 0x3

    aput-object v11, v8, v15

    const/4 v11, 0x4

    aput-object v19, v8, v11

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v11, 0x5

    aput-object v0, v8, v11

    const/4 v0, 0x6

    aput-object v10, v8, v0

    const-string v0, "combo_all"

    aput-object v0, v8, v20

    const/16 v0, 0x8

    aput-object v12, v8, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v5, 0x9

    aput-object v0, v8, v5

    const/16 v0, 0xa

    aput-object v13, v8, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v5, 0xb

    aput-object v0, v8, v5

    const/16 v0, 0xc

    aput-object v18, v8, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v5, 0xd

    aput-object v0, v8, v5

    const/16 v0, 0xe

    aput-object v6, v8, v0

    if-ge v1, v4, :cond_4

    move/from16 v3, v17

    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0xf

    aput-object v0, v8, v1

    invoke-static {v9, v7, v8}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method public static g(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
