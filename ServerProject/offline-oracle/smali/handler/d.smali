.class public final Lcom/sgscq/vpn/handler/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/reflect/Type;


# instance fields
.field public final a:Lcom/sgscq/vpn/handler/k0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sgscq/vpn/handler/AuthHandler$1;

    invoke-direct {v0}, Lcom/sgscq/vpn/handler/AuthHandler$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/handler/d;->b:Ljava/lang/reflect/Type;

    return-void
.end method

.method public constructor <init>(Lcom/sgscq/vpn/handler/k0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/handler/d;->a:Lcom/sgscq/vpn/handler/k0;

    return-void
.end method

.method public static a(Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 6

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
    const/4 v3, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-ge v3, v4, :cond_3

    .line 19
    .line 20
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Ljava/util/Map;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-nez v5, :cond_0

    .line 31
    .line 32
    invoke-static {v4, v0, v1, v2}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0, v3, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    if-eq v4, p1, :cond_2

    .line 43
    .line 44
    invoke-interface {v4, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    :goto_1
    return-void

    .line 55
    :cond_3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public static b(Ljava/util/Map;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v5, p2

    .line 6
    .line 7
    move/from16 v2, p3

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const-string v6, "Item"

    .line 18
    .line 19
    const-string v7, "item_id"

    .line 20
    .line 21
    const-string v8, "id"

    .line 22
    .line 23
    const-string v9, ""

    .line 24
    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Ljava/util/Map;

    .line 32
    .line 33
    invoke-static {v4, v8, v9, v7, v5}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    if-eqz v9, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-static {v6, v0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_3

    .line 53
    .line 54
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Ljava/util/Map;

    .line 59
    .line 60
    invoke-static {v4, v8, v9, v7, v5}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    if-eqz v10, :cond_2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const/4 v4, 0x0

    .line 68
    :goto_0
    const/4 v3, 0x1

    .line 69
    if-eqz v4, :cond_4

    .line 70
    .line 71
    const-string v0, "num"

    .line 72
    .line 73
    const-string v6, "0"

    .line 74
    .line 75
    invoke-interface {v4, v0, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    const-string v9, "item_num"

    .line 80
    .line 81
    invoke-interface {v4, v9, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    const/4 v10, 0x0

    .line 90
    invoke-static {v6, v10}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    add-int/2addr v2, v6

    .line 103
    invoke-interface {v4, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    invoke-interface {v4, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-interface {v4, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    const-string v0, "item_type"

    .line 124
    .line 125
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    const-string v0, "type"

    .line 133
    .line 134
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    const-string v0, "is_new"

    .line 142
    .line 143
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 144
    .line 145
    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    invoke-static {v1, v4}, Lcom/sgscq/vpn/handler/d;->a(Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_4
    invoke-static {v6, v0}, Lcom/sgscq/vpn/w1;->e2(Ljava/lang/String;Ljava/util/Map;)I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    const-string v4, "id"

    .line 161
    .line 162
    const-string v6, "item_id"

    .line 163
    .line 164
    const-string v7, "num"

    .line 165
    .line 166
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 167
    .line 168
    .line 169
    move-result v8

    .line 170
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    const-string v9, "item_num"

    .line 175
    .line 176
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v10

    .line 184
    const-string v11, "item_type"

    .line 185
    .line 186
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object v12

    .line 190
    const-string v13, "type"

    .line 191
    .line 192
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v14

    .line 196
    const-string v15, "is_new"

    .line 197
    .line 198
    sget-object v16, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 199
    .line 200
    move-object v2, v4

    .line 201
    move-object/from16 v3, p2

    .line 202
    .line 203
    move-object v4, v6

    .line 204
    move-object/from16 v5, p2

    .line 205
    .line 206
    move-object v6, v7

    .line 207
    move-object v7, v8

    .line 208
    move-object v8, v9

    .line 209
    move-object v9, v10

    .line 210
    move-object v10, v11

    .line 211
    move-object v11, v12

    .line 212
    move-object v12, v13

    .line 213
    move-object v13, v14

    .line 214
    move-object v14, v15

    .line 215
    move-object/from16 v15, v16

    .line 216
    .line 217
    filled-new-array/range {v2 .. v15}, [Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    const-string v3, "pk_id"

    .line 222
    .line 223
    invoke-static {v3, v0, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-static {v1, v0}, Lcom/sgscq/vpn/handler/d;->a(Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 228
    .line 229
    .line 230
    return-void
.end method

.method public static h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
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

.method public static j(Lcom/sgscq/vpn/w1;Ljava/util/Map;)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/sgscq/vpn/w1;->V1()Lcom/sgscq/vpn/a7;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sgscq/vpn/cloud/m0;->u2(Ljava/util/Map;Lcom/sgscq/vpn/a7;)Lcom/sgscq/vpn/handler/a0;

    move-result-object p0

    iget-boolean p0, p0, Lcom/sgscq/vpn/handler/a0;->a:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[Auth] soul repair skipped: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SGSCQ_SRV"

    invoke-static {p1, p0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static k(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    instance-of v0, p0, Ljava/util/Map;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    check-cast p0, Ljava/util/Map;

    .line 7
    .line 8
    const-string v0, "advanced_level"

    .line 9
    .line 10
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_3

    .line 15
    .line 16
    const-string v3, "magic_advanced_level_bonus"

    .line 17
    .line 18
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    instance-of v4, v3, Ljava/lang/Number;

    .line 23
    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    check-cast v3, Ljava/lang/Number;

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    if-nez v3, :cond_1

    .line 34
    .line 35
    :catch_0
    move v3, v1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    :try_start_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    instance-of v4, v2, Ljava/lang/Number;

    .line 50
    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    check-cast v2, Ljava/lang/Number;

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    :try_start_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    goto :goto_1

    .line 69
    :catch_1
    move v2, v1

    .line 70
    :goto_1
    if-eq v2, v3, :cond_3

    .line 71
    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    const/4 v1, 0x1

    .line 80
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/sgscq/vpn/handler/d;->k(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    or-int/2addr v1, v0

    .line 108
    goto :goto_2

    .line 109
    :cond_4
    return v1

    .line 110
    :cond_5
    instance-of v0, p0, Ljava/util/List;

    .line 111
    .line 112
    if-eqz v0, :cond_6

    .line 113
    .line 114
    check-cast p0, Ljava/util/List;

    .line 115
    .line 116
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_6

    .line 125
    .line 126
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {v0}, Lcom/sgscq/vpn/handler/d;->k(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    or-int/2addr v1, v0

    .line 135
    goto :goto_3

    .line 136
    :cond_6
    return v1
.end method


# virtual methods
.method public final c(Ljava/lang/String;Ljava/util/Map;)[B
    .locals 41

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v3

    .line 11
    :cond_0
    const-string v3, "account.index"

    .line 12
    .line 13
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const-string v4, "0"

    .line 18
    .line 19
    const-string v5, "pk_id"

    .line 20
    .line 21
    const-string v6, "Atlas"

    .line 22
    .line 23
    const-string v7, "General"

    .line 24
    .line 25
    const-string v8, "{}"

    .line 26
    .line 27
    const-string v9, "general_id"

    .line 28
    .line 29
    const-string v10, "add"

    .line 30
    .line 31
    const-string v11, "1"

    .line 32
    .line 33
    const-string v12, "uid"

    .line 34
    .line 35
    const-string v13, "result"

    .line 36
    .line 37
    const-string v14, "ret"

    .line 38
    .line 39
    const-string v15, ""

    .line 40
    .line 41
    move-object/from16 v16, v13

    .line 42
    .line 43
    const-string v13, "}"

    .line 44
    .line 45
    if-eqz v3, :cond_22

    .line 46
    .line 47
    iget-object v3, v1, Lcom/sgscq/vpn/handler/d;->a:Lcom/sgscq/vpn/handler/k0;

    .line 48
    .line 49
    iget-object v1, v3, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 50
    .line 51
    invoke-virtual {v3, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-object/from16 p1, v3

    .line 59
    .line 60
    const-string v3, "\"}"

    .line 61
    .line 62
    move-object/from16 v17, v14

    .line 63
    .line 64
    const-string v14, "name"

    .line 65
    .line 66
    move-object/from16 v18, v13

    .line 67
    .line 68
    const-string v13, "tok_"

    .line 69
    .line 70
    move-object/from16 v19, v5

    .line 71
    .line 72
    const-string v5, "token"

    .line 73
    .line 74
    move-object/from16 v20, v4

    .line 75
    .line 76
    const-string v4, "account_uid"

    .line 77
    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    :cond_1
    const-string v0, "extra"

    .line 87
    .line 88
    if-nez v2, :cond_2

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v21

    .line 95
    check-cast v21, Ljava/lang/String;

    .line 96
    .line 97
    if-eqz v21, :cond_3

    .line 98
    .line 99
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v21

    .line 103
    if-nez v21, :cond_3

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v21

    .line 110
    check-cast v21, Ljava/lang/String;

    .line 111
    .line 112
    if-eqz v21, :cond_5

    .line 113
    .line 114
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    .line 115
    .line 116
    .line 117
    move-result v21

    .line 118
    if-nez v21, :cond_5

    .line 119
    .line 120
    :cond_4
    :goto_0
    move-object/from16 v21, v4

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_5
    move-object/from16 v21, v4

    .line 124
    .line 125
    const-string v4, "user_id"

    .line 126
    .line 127
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    check-cast v4, Ljava/lang/String;

    .line 132
    .line 133
    if-eqz v4, :cond_6

    .line 134
    .line 135
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-nez v4, :cond_6

    .line 140
    .line 141
    :goto_1
    move-object/from16 v22, v5

    .line 142
    .line 143
    move-object/from16 v23, v6

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_6
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    check-cast v4, Ljava/lang/String;

    .line 151
    .line 152
    if-eqz v4, :cond_7

    .line 153
    .line 154
    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v22

    .line 158
    if-eqz v22, :cond_7

    .line 159
    .line 160
    move-object/from16 v22, v5

    .line 161
    .line 162
    const/16 v5, 0x5f

    .line 163
    .line 164
    move-object/from16 v23, v6

    .line 165
    .line 166
    const/4 v6, 0x4

    .line 167
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->indexOf(II)I

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    if-le v5, v6, :cond_8

    .line 172
    .line 173
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-nez v4, :cond_8

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_7
    move-object/from16 v22, v5

    .line 185
    .line 186
    move-object/from16 v23, v6

    .line 187
    .line 188
    :cond_8
    :try_start_0
    const-string v4, "data"

    .line 189
    .line 190
    invoke-interface {v2, v4, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    check-cast v2, Ljava/lang/String;

    .line 195
    .line 196
    new-instance v4, Lorg/json/JSONObject;

    .line 197
    .line 198
    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-eqz v2, :cond_9

    .line 206
    .line 207
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v0, v12, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    goto :goto_2

    .line 216
    :cond_9
    invoke-virtual {v4, v12, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    :goto_2
    if-eqz v0, :cond_a

    .line 221
    .line 222
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .line 224
    .line 225
    :catch_0
    :cond_a
    :goto_3
    new-instance v0, Lcom/sgscq/vpn/m4;

    .line 226
    .line 227
    iget-object v2, v1, Lcom/sgscq/vpn/h5;->c:Landroid/content/Context;

    .line 228
    .line 229
    invoke-direct {v0, v2}, Lcom/sgscq/vpn/m4;-><init>(Landroid/content/Context;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Lcom/sgscq/vpn/m4;->v()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 237
    .line 238
    .line 239
    move-result-wide v5

    .line 240
    const-string v0, "_"

    .line 241
    .line 242
    invoke-static {v13, v4, v0}, La/b0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    const-wide/32 v12, 0x186a0

    .line 247
    .line 248
    .line 249
    rem-long v12, v5, v12

    .line 250
    .line 251
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v8

    .line 258
    iget-object v0, v1, Lcom/sgscq/vpn/h5;->d:Landroid/content/SharedPreferences;

    .line 259
    .line 260
    const-string v12, "player_name"

    .line 261
    .line 262
    const-string v13, "\u73a9\u5bb6"

    .line 263
    .line 264
    invoke-interface {v0, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v12

    .line 268
    new-instance v13, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .line 272
    .line 273
    const-string v37, "\u5355\u673a\u670d\u52a1\u5668"

    .line 274
    .line 275
    const-string v24, "server_title"

    .line 276
    .line 277
    const-string v26, "server_url"

    .line 278
    .line 279
    const-string v27, "cqzx.sanguosha.com/sanguosha_account"

    .line 280
    .line 281
    const-string v28, "server_status"

    .line 282
    .line 283
    const/16 v25, 0x1

    .line 284
    .line 285
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v33

    .line 289
    const-string v30, "server_recommend"

    .line 290
    .line 291
    const-string v32, "serverId"

    .line 292
    .line 293
    const-string v34, "server_name"

    .line 294
    .line 295
    const-string v36, "serverName"

    .line 296
    .line 297
    move-object/from16 v25, v37

    .line 298
    .line 299
    move-object/from16 v29, v33

    .line 300
    .line 301
    move-object/from16 v31, v33

    .line 302
    .line 303
    move-object/from16 v35, v37

    .line 304
    .line 305
    move-wide/from16 v38, v5

    .line 306
    .line 307
    filled-new-array/range {v24 .. v37}, [Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v5

    .line 311
    const-string v6, "server_id"

    .line 312
    .line 313
    invoke-static {v6, v11, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    invoke-static {v5}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v5

    .line 321
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    :try_start_1
    const-string v5, "custom_servers"

    .line 325
    .line 326
    const-string v6, "[]"

    .line 327
    .line 328
    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    new-instance v5, Lorg/json/JSONArray;

    .line 333
    .line 334
    invoke-direct {v5, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    const/4 v0, 0x0

    .line 338
    :goto_4
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    .line 339
    .line 340
    .line 341
    move-result v6

    .line 342
    if-ge v0, v6, :cond_b

    .line 343
    .line 344
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 345
    .line 346
    .line 347
    move-result-object v6

    .line 348
    add-int/lit8 v11, v0, 0x64

    .line 349
    .line 350
    move-object/from16 p2, v5

    .line 351
    .line 352
    const-string v5, ",{\"server_id\":\""

    .line 353
    .line 354
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    const-string v5, "\",\"server_title\":\""

    .line 361
    .line 362
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v5

    .line 369
    invoke-static {v5}, Lcom/sgscq/vpn/p5;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v5

    .line 373
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    const-string v5, "\",\"server_url\":\""

    .line 377
    .line 378
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    const-string v5, "host"

    .line 382
    .line 383
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v5

    .line 387
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    const-string v5, ":"

    .line 391
    .line 392
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    const-string v5, "port"

    .line 396
    .line 397
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 398
    .line 399
    .line 400
    move-result v5

    .line 401
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    const-string v5, "\",\"server_status\":1,\"server_recommend\":0"

    .line 405
    .line 406
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    const-string v5, ",\"serverId\":"

    .line 410
    .line 411
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    const-string v5, ",\"server_name\":\""

    .line 418
    .line 419
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v5

    .line 426
    invoke-static {v5}, Lcom/sgscq/vpn/p5;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v5

    .line 430
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    const-string v5, "\",\"serverName\":\""

    .line 434
    .line 435
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v5

    .line 442
    invoke-static {v5}, Lcom/sgscq/vpn/p5;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v5

    .line 446
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 450
    .line 451
    .line 452
    add-int/lit8 v0, v0, 0x1

    .line 453
    .line 454
    move-object/from16 v5, p2

    .line 455
    .line 456
    goto :goto_4

    .line 457
    :catch_1
    move-exception v0

    .line 458
    new-instance v5, Ljava/lang/StringBuilder;

    .line 459
    .line 460
    const-string v6, "Custom servers: "

    .line 461
    .line 462
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    const-string v6, "SGSCQ_SRV"

    .line 466
    .line 467
    invoke-static {v0, v5, v6}, Lc/a;->u(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    :cond_b
    const/4 v0, 0x1

    .line 471
    invoke-static {v0, v0, v4, v12}, Lcom/sgscq/vpn/h5;->x(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    const-string v5, "["

    .line 476
    .line 477
    const-string v6, "]"

    .line 478
    .line 479
    invoke-static {v5, v0, v6}, Lcom/sgscq/vpn/handler/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    invoke-virtual {v1, v4}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    invoke-static {}, Lcom/sgscq/vpn/w1;->Z0()Lcom/sgscq/vpn/w1;

    .line 488
    .line 489
    .line 490
    move-result-object v11

    .line 491
    if-nez v1, :cond_c

    .line 492
    .line 493
    new-instance v7, Ljava/util/HashSet;

    .line 494
    .line 495
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 496
    .line 497
    .line 498
    move-object/from16 v24, v8

    .line 499
    .line 500
    goto :goto_7

    .line 501
    :cond_c
    new-instance v12, Ljava/util/HashSet;

    .line 502
    .line 503
    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 504
    .line 505
    .line 506
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v7

    .line 510
    instance-of v14, v7, Ljava/util/Map;

    .line 511
    .line 512
    if-eqz v14, :cond_10

    .line 513
    .line 514
    check-cast v7, Ljava/util/Map;

    .line 515
    .line 516
    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v7

    .line 520
    instance-of v14, v7, Ljava/util/List;

    .line 521
    .line 522
    if-eqz v14, :cond_10

    .line 523
    .line 524
    check-cast v7, Ljava/util/List;

    .line 525
    .line 526
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 527
    .line 528
    .line 529
    move-result-object v7

    .line 530
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 531
    .line 532
    .line 533
    move-result v14

    .line 534
    if-eqz v14, :cond_10

    .line 535
    .line 536
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v14

    .line 540
    move-object/from16 p2, v7

    .line 541
    .line 542
    instance-of v7, v14, Ljava/util/Map;

    .line 543
    .line 544
    if-nez v7, :cond_d

    .line 545
    .line 546
    move-object/from16 v7, p2

    .line 547
    .line 548
    goto :goto_5

    .line 549
    :cond_d
    check-cast v14, Ljava/util/Map;

    .line 550
    .line 551
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 552
    .line 553
    move-object/from16 v24, v8

    .line 554
    .line 555
    const-string v8, "story_guest"

    .line 556
    .line 557
    invoke-interface {v14, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v8

    .line 561
    invoke-virtual {v7, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    move-result v7

    .line 565
    if-eqz v7, :cond_e

    .line 566
    .line 567
    goto :goto_6

    .line 568
    :cond_e
    invoke-interface {v14, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v7

    .line 572
    if-eqz v7, :cond_f

    .line 573
    .line 574
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v8

    .line 578
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 579
    .line 580
    .line 581
    move-result v8

    .line 582
    if-nez v8, :cond_f

    .line 583
    .line 584
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v7

    .line 588
    invoke-virtual {v12, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    :cond_f
    :goto_6
    move-object/from16 v7, p2

    .line 592
    .line 593
    move-object/from16 v8, v24

    .line 594
    .line 595
    goto :goto_5

    .line 596
    :cond_10
    move-object/from16 v24, v8

    .line 597
    .line 598
    move-object v7, v12

    .line 599
    :goto_7
    new-instance v8, Ljava/util/HashSet;

    .line 600
    .line 601
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 602
    .line 603
    .line 604
    if-nez v1, :cond_11

    .line 605
    .line 606
    move-object/from16 v25, v0

    .line 607
    .line 608
    move-object/from16 v27, v5

    .line 609
    .line 610
    move-object/from16 v26, v13

    .line 611
    .line 612
    goto/16 :goto_b

    .line 613
    .line 614
    :cond_11
    invoke-static {v2}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 615
    .line 616
    .line 617
    move-result-object v2

    .line 618
    invoke-virtual {v2}, Lcom/sgscq/vpn/w1;->V1()Lcom/sgscq/vpn/a7;

    .line 619
    .line 620
    .line 621
    move-result-object v2

    .line 622
    const-string v12, "surrender_progress"

    .line 623
    .line 624
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v12

    .line 628
    instance-of v14, v12, Ljava/util/Map;

    .line 629
    .line 630
    if-eqz v14, :cond_16

    .line 631
    .line 632
    check-cast v12, Ljava/util/Map;

    .line 633
    .line 634
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 635
    .line 636
    .line 637
    move-result-object v14

    .line 638
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 639
    .line 640
    .line 641
    move-result-object v14

    .line 642
    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 643
    .line 644
    .line 645
    move-result v25

    .line 646
    if-eqz v25, :cond_16

    .line 647
    .line 648
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object v25

    .line 652
    move-object/from16 p2, v14

    .line 653
    .line 654
    move-object/from16 v14, v25

    .line 655
    .line 656
    check-cast v14, Ljava/lang/String;

    .line 657
    .line 658
    if-nez v14, :cond_12

    .line 659
    .line 660
    move-object/from16 v14, p2

    .line 661
    .line 662
    goto :goto_8

    .line 663
    :cond_12
    move-object/from16 v25, v0

    .line 664
    .line 665
    const-string v0, "claimed_"

    .line 666
    .line 667
    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 668
    .line 669
    .line 670
    move-result v26

    .line 671
    if-eqz v26, :cond_13

    .line 672
    .line 673
    move-object/from16 v26, v13

    .line 674
    .line 675
    const/16 v13, 0x8

    .line 676
    .line 677
    move-object/from16 v27, v5

    .line 678
    .line 679
    invoke-virtual {v14, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v5

    .line 683
    invoke-static {v5, v12}, Lcom/sgscq/vpn/h5;->V0(Ljava/lang/String;Ljava/util/Map;)Z

    .line 684
    .line 685
    .line 686
    move-result v5

    .line 687
    if-nez v5, :cond_14

    .line 688
    .line 689
    invoke-virtual {v14, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v0

    .line 693
    invoke-static {v0}, Lcom/sgscq/vpn/h5;->I0(Ljava/lang/Object;)Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/h5;->T0(Ljava/util/Map;Lcom/sgscq/vpn/a7;Ljava/lang/String;)Z

    .line 698
    .line 699
    .line 700
    move-result v5

    .line 701
    if-eqz v5, :cond_15

    .line 702
    .line 703
    goto :goto_9

    .line 704
    :cond_13
    move-object/from16 v27, v5

    .line 705
    .line 706
    move-object/from16 v26, v13

    .line 707
    .line 708
    :cond_14
    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 709
    .line 710
    .line 711
    move-result v0

    .line 712
    if-nez v0, :cond_15

    .line 713
    .line 714
    invoke-static {v14, v12}, Lcom/sgscq/vpn/h5;->V0(Ljava/lang/String;Ljava/util/Map;)Z

    .line 715
    .line 716
    .line 717
    move-result v0

    .line 718
    if-nez v0, :cond_15

    .line 719
    .line 720
    invoke-static {v14}, Lcom/sgscq/vpn/h5;->I0(Ljava/lang/Object;)Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v0

    .line 724
    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/h5;->T0(Ljava/util/Map;Lcom/sgscq/vpn/a7;Ljava/lang/String;)Z

    .line 725
    .line 726
    .line 727
    move-result v5

    .line 728
    if-eqz v5, :cond_15

    .line 729
    .line 730
    :goto_9
    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 731
    .line 732
    .line 733
    :cond_15
    move-object/from16 v14, p2

    .line 734
    .line 735
    move-object/from16 v0, v25

    .line 736
    .line 737
    move-object/from16 v13, v26

    .line 738
    .line 739
    move-object/from16 v5, v27

    .line 740
    .line 741
    goto :goto_8

    .line 742
    :cond_16
    move-object/from16 v25, v0

    .line 743
    .line 744
    move-object/from16 v27, v5

    .line 745
    .line 746
    move-object/from16 v26, v13

    .line 747
    .line 748
    move-object/from16 v5, v23

    .line 749
    .line 750
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    instance-of v5, v0, Ljava/util/Map;

    .line 755
    .line 756
    if-eqz v5, :cond_19

    .line 757
    .line 758
    check-cast v0, Ljava/util/Map;

    .line 759
    .line 760
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    move-result-object v0

    .line 764
    instance-of v5, v0, Ljava/util/List;

    .line 765
    .line 766
    if-eqz v5, :cond_19

    .line 767
    .line 768
    check-cast v0, Ljava/util/List;

    .line 769
    .line 770
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 771
    .line 772
    .line 773
    move-result-object v0

    .line 774
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 775
    .line 776
    .line 777
    move-result v5

    .line 778
    if-eqz v5, :cond_19

    .line 779
    .line 780
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 781
    .line 782
    .line 783
    move-result-object v5

    .line 784
    instance-of v10, v5, Ljava/util/Map;

    .line 785
    .line 786
    if-nez v10, :cond_17

    .line 787
    .line 788
    goto :goto_a

    .line 789
    :cond_17
    check-cast v5, Ljava/util/Map;

    .line 790
    .line 791
    const-string v10, "type"

    .line 792
    .line 793
    const/4 v12, 0x0

    .line 794
    move-object/from16 v13, v20

    .line 795
    .line 796
    invoke-static {v5, v10, v13, v12}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 797
    .line 798
    .line 799
    move-result v10

    .line 800
    const-string v14, "atlas_status"

    .line 801
    .line 802
    invoke-static {v5, v14, v13, v12}, Lc/a;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)I

    .line 803
    .line 804
    .line 805
    move-result v12

    .line 806
    move-object/from16 p2, v0

    .line 807
    .line 808
    move-object/from16 v14, v19

    .line 809
    .line 810
    invoke-interface {v5, v14, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    invoke-interface {v5, v9, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    invoke-static {v0}, Lcom/sgscq/vpn/h5;->I0(Ljava/lang/Object;)Ljava/lang/String;

    .line 819
    .line 820
    .line 821
    move-result-object v0

    .line 822
    const/4 v5, 0x1

    .line 823
    if-ne v10, v5, :cond_18

    .line 824
    .line 825
    const/4 v5, 0x2

    .line 826
    if-ne v12, v5, :cond_18

    .line 827
    .line 828
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 829
    .line 830
    .line 831
    move-result v5

    .line 832
    if-nez v5, :cond_18

    .line 833
    .line 834
    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/h5;->T0(Ljava/util/Map;Lcom/sgscq/vpn/a7;Ljava/lang/String;)Z

    .line 835
    .line 836
    .line 837
    move-result v5

    .line 838
    if-eqz v5, :cond_18

    .line 839
    .line 840
    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 841
    .line 842
    .line 843
    :cond_18
    move-object/from16 v0, p2

    .line 844
    .line 845
    move-object/from16 v20, v13

    .line 846
    .line 847
    move-object/from16 v19, v14

    .line 848
    .line 849
    goto :goto_a

    .line 850
    :cond_19
    :goto_b
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 851
    .line 852
    .line 853
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 854
    .line 855
    .line 856
    move-result-wide v0

    .line 857
    invoke-virtual {v11, v0, v1}, Lcom/sgscq/vpn/w1;->g1(J)Ljava/util/List;

    .line 858
    .line 859
    .line 860
    move-result-object v2

    .line 861
    new-instance v5, Ljava/util/ArrayList;

    .line 862
    .line 863
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 864
    .line 865
    .line 866
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 867
    .line 868
    .line 869
    move-result-object v2

    .line 870
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 871
    .line 872
    .line 873
    move-result v10

    .line 874
    if-eqz v10, :cond_1c

    .line 875
    .line 876
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 877
    .line 878
    .line 879
    move-result-object v10

    .line 880
    check-cast v10, Ljava/util/Map;

    .line 881
    .line 882
    invoke-interface {v10, v9, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    .line 884
    .line 885
    move-result-object v12

    .line 886
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object v12

    .line 890
    invoke-interface {v7, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 891
    .line 892
    .line 893
    move-result v13

    .line 894
    if-nez v13, :cond_1a

    .line 895
    .line 896
    goto :goto_c

    .line 897
    :cond_1a
    invoke-virtual {v8, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 898
    .line 899
    .line 900
    move-result v12

    .line 901
    if-eqz v12, :cond_1b

    .line 902
    .line 903
    goto :goto_c

    .line 904
    :cond_1b
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    .line 906
    .line 907
    goto :goto_c

    .line 908
    :cond_1c
    invoke-virtual {v11, v0, v1, v8}, Lcom/sgscq/vpn/w1;->f1(JLjava/util/Set;)Ljava/util/Map;

    .line 909
    .line 910
    .line 911
    move-result-object v2

    .line 912
    if-eqz v2, :cond_1d

    .line 913
    .line 914
    invoke-interface {v2, v9, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    .line 916
    .line 917
    move-result-object v8

    .line 918
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 919
    .line 920
    .line 921
    move-result-object v8

    .line 922
    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 923
    .line 924
    .line 925
    move-result v7

    .line 926
    if-nez v7, :cond_1d

    .line 927
    .line 928
    const/4 v2, 0x0

    .line 929
    :cond_1d
    const-wide/16 v7, 0x3e8

    .line 930
    .line 931
    mul-long/2addr v7, v0

    .line 932
    invoke-virtual {v11, v7, v8}, Lcom/sgscq/vpn/w1;->r0(J)I

    .line 933
    .line 934
    .line 935
    move-result v7

    .line 936
    int-to-long v7, v7

    .line 937
    const-wide/16 v10, 0x0

    .line 938
    .line 939
    cmp-long v10, v7, v10

    .line 940
    .line 941
    if-gtz v10, :cond_1e

    .line 942
    .line 943
    goto :goto_d

    .line 944
    :cond_1e
    add-long/2addr v0, v7

    .line 945
    :goto_d
    new-instance v7, Ljava/lang/StringBuilder;

    .line 946
    .line 947
    const-string v8, "{\"limited_generals\":["

    .line 948
    .line 949
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 950
    .line 951
    .line 952
    const/4 v8, 0x0

    .line 953
    :goto_e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 954
    .line 955
    .line 956
    move-result v10

    .line 957
    const-string v11, "fighting"

    .line 958
    .line 959
    const-string v12, "\",\"fighting\":\""

    .line 960
    .line 961
    const-string v13, "general_name"

    .line 962
    .line 963
    const-string v14, "\",\"general_name\":\""

    .line 964
    .line 965
    if-ge v8, v10, :cond_20

    .line 966
    .line 967
    if-lez v8, :cond_1f

    .line 968
    .line 969
    const-string v10, ","

    .line 970
    .line 971
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    .line 973
    .line 974
    :cond_1f
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 975
    .line 976
    .line 977
    move-result-object v10

    .line 978
    check-cast v10, Ljava/util/Map;

    .line 979
    .line 980
    const-string v15, "{\"general_id\":\""

    .line 981
    .line 982
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    .line 984
    .line 985
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    .line 987
    .line 988
    move-result-object v15

    .line 989
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 990
    .line 991
    .line 992
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    .line 994
    .line 995
    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    .line 997
    .line 998
    move-result-object v13

    .line 999
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v13

    .line 1003
    invoke-static {v13}, Lcom/sgscq/vpn/p5;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v13

    .line 1007
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    .line 1012
    .line 1013
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v11

    .line 1017
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1018
    .line 1019
    .line 1020
    const-string v11, "\",\"star\":"

    .line 1021
    .line 1022
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    .line 1024
    .line 1025
    const-string v11, "star"

    .line 1026
    .line 1027
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v10

    .line 1031
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1032
    .line 1033
    .line 1034
    move-object/from16 v10, v18

    .line 1035
    .line 1036
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    .line 1038
    .line 1039
    add-int/lit8 v8, v8, 0x1

    .line 1040
    .line 1041
    goto :goto_e

    .line 1042
    :cond_20
    move-object/from16 v10, v18

    .line 1043
    .line 1044
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    .line 1046
    .line 1047
    if-eqz v2, :cond_21

    .line 1048
    .line 1049
    const-string v8, ",\"current_limited\":{\"general_id\":\""

    .line 1050
    .line 1051
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    .line 1053
    .line 1054
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v8

    .line 1058
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1059
    .line 1060
    .line 1061
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    .line 1063
    .line 1064
    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v8

    .line 1068
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v8

    .line 1072
    invoke-static {v8}, Lcom/sgscq/vpn/p5;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v8

    .line 1076
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    .line 1078
    .line 1079
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    .line 1081
    .line 1082
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v2

    .line 1086
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    .line 1091
    .line 1092
    :cond_21
    const-string v2, ",\"limited_next_refresh\":"

    .line 1093
    .line 1094
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    .line 1096
    .line 1097
    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1098
    .line 1099
    .line 1100
    const-string v0, ",\"limited_interval\":43200,\"limited_total\":"

    .line 1101
    .line 1102
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    .line 1104
    .line 1105
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1106
    .line 1107
    .line 1108
    move-result v0

    .line 1109
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1110
    .line 1111
    .line 1112
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    .line 1114
    .line 1115
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v0

    .line 1119
    new-instance v1, Lcom/sgscq/vpn/y1;

    .line 1120
    .line 1121
    invoke-direct {v1}, Lcom/sgscq/vpn/y1;-><init>()V

    .line 1122
    .line 1123
    .line 1124
    const-string v2, "error_code"

    .line 1125
    .line 1126
    const/4 v3, 0x0

    .line 1127
    invoke-virtual {v1, v2, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 1128
    .line 1129
    .line 1130
    move-object/from16 v2, v17

    .line 1131
    .line 1132
    invoke-virtual {v1, v2, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 1133
    .line 1134
    .line 1135
    const-string v2, "code"

    .line 1136
    .line 1137
    invoke-virtual {v1, v2, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 1138
    .line 1139
    .line 1140
    const/4 v2, 0x1

    .line 1141
    move-object/from16 v3, v16

    .line 1142
    .line 1143
    invoke-virtual {v1, v3, v2}, Lcom/sgscq/vpn/y1;->g(Ljava/lang/String;Z)V

    .line 1144
    .line 1145
    .line 1146
    const-string v2, "msg"

    .line 1147
    .line 1148
    const-string v3, "success"

    .line 1149
    .line 1150
    invoke-virtual {v1, v2, v3}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    .line 1152
    .line 1153
    const-string v2, "account_info"

    .line 1154
    .line 1155
    invoke-virtual {v1, v2}, Lcom/sgscq/vpn/y1;->h(Ljava/lang/String;)Lcom/sgscq/vpn/y1;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v2

    .line 1159
    move-object/from16 v3, v21

    .line 1160
    .line 1161
    invoke-virtual {v2, v3, v4}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    .line 1163
    .line 1164
    invoke-virtual {v2}, Lcom/sgscq/vpn/y1;->b()Ljava/lang/String;

    .line 1165
    .line 1166
    .line 1167
    const-string v2, "addrServer"

    .line 1168
    .line 1169
    const-string v3, "cqzx.sanguosha.com/sanguosha_account"

    .line 1170
    .line 1171
    invoke-virtual {v1, v2, v3}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    .line 1173
    .line 1174
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1175
    .line 1176
    move-object/from16 v3, v27

    .line 1177
    .line 1178
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1179
    .line 1180
    .line 1181
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v3

    .line 1185
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    .line 1187
    .line 1188
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    .line 1190
    .line 1191
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v2

    .line 1195
    const-string v3, "server_list"

    .line 1196
    .line 1197
    invoke-virtual {v1, v3, v2}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    .line 1199
    .line 1200
    const-string v2, "server_logined_list"

    .line 1201
    .line 1202
    move-object/from16 v3, v25

    .line 1203
    .line 1204
    invoke-virtual {v1, v2, v3}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    .line 1206
    .line 1207
    const-string v2, "serverListLogined"

    .line 1208
    .line 1209
    invoke-virtual {v1, v2, v3}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    .line 1211
    .line 1212
    const-string v2, "loginedServerLists"

    .line 1213
    .line 1214
    invoke-virtual {v1, v2, v3}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    .line 1216
    .line 1217
    const-string v2, "server_params"

    .line 1218
    .line 1219
    invoke-virtual {v1, v2}, Lcom/sgscq/vpn/y1;->h(Ljava/lang/String;)Lcom/sgscq/vpn/y1;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v3

    .line 1223
    move-object/from16 v4, v24

    .line 1224
    .line 1225
    invoke-virtual {v3, v2, v4}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    .line 1227
    .line 1228
    invoke-virtual {v3}, Lcom/sgscq/vpn/y1;->b()Ljava/lang/String;

    .line 1229
    .line 1230
    .line 1231
    move-object/from16 v2, v22

    .line 1232
    .line 1233
    invoke-virtual {v1, v2, v4}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    .line 1235
    .line 1236
    const-string v2, "cfg_version"

    .line 1237
    .line 1238
    const-string v3, "ctv201611241300trunk1300_1482732868"

    .line 1239
    .line 1240
    invoke-virtual {v1, v2, v3}, Lcom/sgscq/vpn/y1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    .line 1242
    .line 1243
    const-string v2, "lastServer"

    .line 1244
    .line 1245
    const/4 v3, 0x1

    .line 1246
    invoke-virtual {v1, v2, v3}, Lcom/sgscq/vpn/y1;->e(Ljava/lang/String;I)V

    .line 1247
    .line 1248
    .line 1249
    const-wide/32 v2, 0x1e13380

    .line 1250
    .line 1251
    .line 1252
    sub-long v5, v38, v2

    .line 1253
    .line 1254
    const-string v2, "openTime"

    .line 1255
    .line 1256
    invoke-virtual {v1, v5, v6, v2}, Lcom/sgscq/vpn/y1;->d(JLjava/lang/String;)V

    .line 1257
    .line 1258
    .line 1259
    const-string v2, "serverTime"

    .line 1260
    .line 1261
    move-wide/from16 v3, v38

    .line 1262
    .line 1263
    invoke-virtual {v1, v3, v4, v2}, Lcom/sgscq/vpn/y1;->d(JLjava/lang/String;)V

    .line 1264
    .line 1265
    .line 1266
    const-string v2, "limited_general_info"

    .line 1267
    .line 1268
    invoke-virtual {v1, v2, v0}, Lcom/sgscq/vpn/y1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    .line 1270
    .line 1271
    invoke-virtual {v1}, Lcom/sgscq/vpn/y1;->b()Ljava/lang/String;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v0

    .line 1275
    move-object/from16 v1, p1

    .line 1276
    .line 1277
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 1278
    .line 1279
    .line 1280
    move-result-object v0

    .line 1281
    return-object v0

    .line 1282
    :cond_22
    move-object v1, v14

    .line 1283
    move-object/from16 v3, v16

    .line 1284
    .line 1285
    move-object v14, v5

    .line 1286
    move-object v5, v6

    .line 1287
    move-object/from16 v40, v13

    .line 1288
    .line 1289
    move-object v13, v4

    .line 1290
    move-object/from16 v4, v40

    .line 1291
    .line 1292
    const-string v6, "account.chgAccountInfo"

    .line 1293
    .line 1294
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1295
    .line 1296
    .line 1297
    move-result v6

    .line 1298
    move-object/from16 v16, v8

    .line 1299
    .line 1300
    const-string v8, "cmn"

    .line 1301
    .line 1302
    move-object/from16 v17, v12

    .line 1303
    .line 1304
    const-string v12, "user_info"

    .line 1305
    .line 1306
    move-object/from16 v23, v5

    .line 1307
    .line 1308
    const-string v5, "user_power"

    .line 1309
    .line 1310
    move-object/from16 v19, v14

    .line 1311
    .line 1312
    const-string v14, "user_energy"

    .line 1313
    .line 1314
    move-object/from16 v18, v7

    .line 1315
    .line 1316
    const-string v7, "user_gold"

    .line 1317
    .line 1318
    if-eqz v6, :cond_27

    .line 1319
    .line 1320
    move-object/from16 v6, p0

    .line 1321
    .line 1322
    iget-object v0, v6, Lcom/sgscq/vpn/handler/d;->a:Lcom/sgscq/vpn/handler/k0;

    .line 1323
    .line 1324
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v4

    .line 1328
    iget-object v9, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 1329
    .line 1330
    invoke-virtual {v9, v4}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v9

    .line 1334
    if-nez v9, :cond_23

    .line 1335
    .line 1336
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 1337
    .line 1338
    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1339
    .line 1340
    .line 1341
    :cond_23
    const-string v10, "mobile_num"

    .line 1342
    .line 1343
    invoke-static {v10, v2}, Lcom/sgscq/vpn/handler/d;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1344
    .line 1345
    .line 1346
    move-result-object v11

    .line 1347
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 1348
    .line 1349
    .line 1350
    move-result v13

    .line 1351
    const-string v15, "mobile"

    .line 1352
    .line 1353
    if-eqz v13, :cond_24

    .line 1354
    .line 1355
    invoke-static {v15, v2}, Lcom/sgscq/vpn/handler/d;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1356
    .line 1357
    .line 1358
    move-result-object v11

    .line 1359
    :cond_24
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 1360
    .line 1361
    .line 1362
    move-result v13

    .line 1363
    if-eqz v13, :cond_25

    .line 1364
    .line 1365
    const-string v11, "phone"

    .line 1366
    .line 1367
    invoke-static {v11, v2}, Lcom/sgscq/vpn/handler/d;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v11

    .line 1371
    :cond_25
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 1372
    .line 1373
    .line 1374
    move-result v2

    .line 1375
    if-nez v2, :cond_26

    .line 1376
    .line 1377
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    .line 1379
    .line 1380
    invoke-interface {v9, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    .line 1382
    .line 1383
    const-string v2, "is_mobile"

    .line 1384
    .line 1385
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1386
    .line 1387
    invoke-interface {v9, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1388
    .line 1389
    .line 1390
    const/4 v2, 0x1

    .line 1391
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1392
    .line 1393
    .line 1394
    move-result-object v2

    .line 1395
    const-string v10, "mobile_bind"

    .line 1396
    .line 1397
    invoke-interface {v9, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    .line 1399
    .line 1400
    :cond_26
    const/4 v2, 0x0

    .line 1401
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v10

    .line 1405
    const-string v15, "code"

    .line 1406
    .line 1407
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1408
    .line 1409
    .line 1410
    move-result-object v16

    .line 1411
    const-string v17, "result"

    .line 1412
    .line 1413
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1414
    .line 1415
    const-string v19, "msg"

    .line 1416
    .line 1417
    const-string v20, "success"

    .line 1418
    .line 1419
    const-string v21, "error_code"

    .line 1420
    .line 1421
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1422
    .line 1423
    .line 1424
    move-result-object v22

    .line 1425
    const-string v23, "return_info"

    .line 1426
    .line 1427
    new-array v2, v2, [Ljava/lang/Object;

    .line 1428
    .line 1429
    invoke-static {v3, v11, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1430
    .line 1431
    .line 1432
    move-result-object v24

    .line 1433
    const-string v25, "cmn_modules"

    .line 1434
    .line 1435
    const-string v26, "Player"

    .line 1436
    .line 1437
    move-object/from16 v18, v11

    .line 1438
    .line 1439
    filled-new-array/range {v15 .. v26}, [Ljava/lang/Object;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v2

    .line 1443
    invoke-static {v1, v10, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1444
    .line 1445
    .line 1446
    move-result-object v1

    .line 1447
    iget-object v2, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 1448
    .line 1449
    invoke-virtual {v2, v4, v9}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 1450
    .line 1451
    .line 1452
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 1453
    .line 1454
    .line 1455
    move-result-wide v2

    .line 1456
    long-to-int v2, v2

    .line 1457
    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 1458
    .line 1459
    .line 1460
    move-result v3

    .line 1461
    int-to-long v10, v3

    .line 1462
    invoke-virtual {v0, v10, v11, v9}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 1463
    .line 1464
    .line 1465
    move-result-wide v20

    .line 1466
    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 1467
    .line 1468
    .line 1469
    move-result v3

    .line 1470
    invoke-virtual {v0, v3, v7, v9}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1471
    .line 1472
    .line 1473
    move-result v17

    .line 1474
    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 1475
    .line 1476
    .line 1477
    move-result v3

    .line 1478
    invoke-virtual {v0, v3, v14, v9}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1479
    .line 1480
    .line 1481
    move-result v18

    .line 1482
    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 1483
    .line 1484
    .line 1485
    move-result v3

    .line 1486
    invoke-virtual {v0, v3, v5, v9}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1487
    .line 1488
    .line 1489
    move-result v19

    .line 1490
    iget-object v15, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 1491
    .line 1492
    move/from16 v16, v2

    .line 1493
    .line 1494
    move-object/from16 v22, v4

    .line 1495
    .line 1496
    move-object/from16 v23, v9

    .line 1497
    .line 1498
    invoke-virtual/range {v15 .. v23}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 1499
    .line 1500
    .line 1501
    move-result-object v2

    .line 1502
    iget-object v3, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 1503
    .line 1504
    const/4 v4, 0x0

    .line 1505
    new-array v4, v4, [Ljava/lang/String;

    .line 1506
    .line 1507
    invoke-virtual {v3, v9, v2, v4}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 1508
    .line 1509
    .line 1510
    move-result-object v3

    .line 1511
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 1512
    .line 1513
    .line 1514
    move-result-object v2

    .line 1515
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1516
    .line 1517
    .line 1518
    move-result-object v2

    .line 1519
    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    .line 1521
    .line 1522
    invoke-static {v3}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v2

    .line 1526
    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1527
    .line 1528
    .line 1529
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 1530
    .line 1531
    .line 1532
    move-result-object v1

    .line 1533
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 1534
    .line 1535
    .line 1536
    move-result-object v0

    .line 1537
    return-object v0

    .line 1538
    :cond_27
    move-object/from16 v6, p0

    .line 1539
    .line 1540
    move-object/from16 v20, v8

    .line 1541
    .line 1542
    const-string v8, "account.bindWithBf"

    .line 1543
    .line 1544
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1545
    .line 1546
    .line 1547
    move-result v8

    .line 1548
    move-object/from16 v21, v12

    .line 1549
    .line 1550
    const-string v12, "account.bindWithEasysdk"

    .line 1551
    .line 1552
    move-object/from16 v22, v1

    .line 1553
    .line 1554
    const-string v1, "account.bindWithFacebook"

    .line 1555
    .line 1556
    if-nez v8, :cond_47

    .line 1557
    .line 1558
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1559
    .line 1560
    .line 1561
    move-result v8

    .line 1562
    if-nez v8, :cond_47

    .line 1563
    .line 1564
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1565
    .line 1566
    .line 1567
    move-result v8

    .line 1568
    if-eqz v8, :cond_28

    .line 1569
    .line 1570
    goto/16 :goto_1e

    .line 1571
    .line 1572
    :cond_28
    const-string v1, "user.login"

    .line 1573
    .line 1574
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1575
    .line 1576
    .line 1577
    move-result v1

    .line 1578
    if-nez v1, :cond_46

    .line 1579
    .line 1580
    const-string v1, "user.testLogin"

    .line 1581
    .line 1582
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1583
    .line 1584
    .line 1585
    move-result v1

    .line 1586
    if-nez v1, :cond_46

    .line 1587
    .line 1588
    const-string v1, "login"

    .line 1589
    .line 1590
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1591
    .line 1592
    .line 1593
    move-result v1

    .line 1594
    if-eqz v1, :cond_29

    .line 1595
    .line 1596
    goto/16 :goto_1d

    .line 1597
    .line 1598
    :cond_29
    const-string v1, "user.getPushData"

    .line 1599
    .line 1600
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1601
    .line 1602
    .line 1603
    move-result v1

    .line 1604
    const-string v3, ",\"cmn\":"

    .line 1605
    .line 1606
    if-eqz v1, :cond_32

    .line 1607
    .line 1608
    iget-object v0, v6, Lcom/sgscq/vpn/handler/d;->a:Lcom/sgscq/vpn/handler/k0;

    .line 1609
    .line 1610
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 1611
    .line 1612
    .line 1613
    move-result-object v0

    .line 1614
    iget-object v1, v6, Lcom/sgscq/vpn/handler/d;->a:Lcom/sgscq/vpn/handler/k0;

    .line 1615
    .line 1616
    iget-object v1, v1, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 1617
    .line 1618
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v1

    .line 1622
    if-eqz v1, :cond_2a

    .line 1623
    .line 1624
    invoke-static {v1}, Lcom/sgscq/vpn/handler/c;->P(Ljava/util/Map;)Z

    .line 1625
    .line 1626
    .line 1627
    move-result v2

    .line 1628
    if-eqz v2, :cond_2a

    .line 1629
    .line 1630
    const/4 v2, 0x1

    .line 1631
    goto :goto_f

    .line 1632
    :cond_2a
    const/4 v2, 0x0

    .line 1633
    :goto_f
    invoke-static {v1}, Lcom/sgscq/vpn/handler/m;->m(Ljava/util/Map;)Lcom/sgscq/vpn/handler/j;

    .line 1634
    .line 1635
    .line 1636
    move-result-object v8

    .line 1637
    iget-boolean v9, v8, Lcom/sgscq/vpn/handler/j;->b:Z

    .line 1638
    .line 1639
    or-int/2addr v2, v9

    .line 1640
    if-eqz v2, :cond_2b

    .line 1641
    .line 1642
    iget-object v2, v6, Lcom/sgscq/vpn/handler/d;->a:Lcom/sgscq/vpn/handler/k0;

    .line 1643
    .line 1644
    iget-object v2, v2, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 1645
    .line 1646
    invoke-virtual {v2, v0, v1}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 1647
    .line 1648
    .line 1649
    :cond_2b
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 1650
    .line 1651
    .line 1652
    move-result-wide v9

    .line 1653
    long-to-int v2, v9

    .line 1654
    iget-object v9, v6, Lcom/sgscq/vpn/handler/d;->a:Lcom/sgscq/vpn/handler/k0;

    .line 1655
    .line 1656
    invoke-virtual {v9}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 1657
    .line 1658
    .line 1659
    move-result v10

    .line 1660
    int-to-long v10, v10

    .line 1661
    invoke-virtual {v9, v10, v11, v1}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 1662
    .line 1663
    .line 1664
    move-result-wide v20

    .line 1665
    iget-object v9, v6, Lcom/sgscq/vpn/handler/d;->a:Lcom/sgscq/vpn/handler/k0;

    .line 1666
    .line 1667
    invoke-virtual {v9}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 1668
    .line 1669
    .line 1670
    move-result v10

    .line 1671
    invoke-virtual {v9, v10, v7, v1}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1672
    .line 1673
    .line 1674
    move-result v17

    .line 1675
    iget-object v7, v6, Lcom/sgscq/vpn/handler/d;->a:Lcom/sgscq/vpn/handler/k0;

    .line 1676
    .line 1677
    invoke-virtual {v7}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 1678
    .line 1679
    .line 1680
    move-result v9

    .line 1681
    invoke-virtual {v7, v9, v14, v1}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1682
    .line 1683
    .line 1684
    move-result v18

    .line 1685
    iget-object v7, v6, Lcom/sgscq/vpn/handler/d;->a:Lcom/sgscq/vpn/handler/k0;

    .line 1686
    .line 1687
    invoke-virtual {v7}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 1688
    .line 1689
    .line 1690
    move-result v9

    .line 1691
    invoke-virtual {v7, v9, v5, v1}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 1692
    .line 1693
    .line 1694
    move-result v19

    .line 1695
    iget-object v5, v6, Lcom/sgscq/vpn/handler/d;->a:Lcom/sgscq/vpn/handler/k0;

    .line 1696
    .line 1697
    iget-object v15, v5, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 1698
    .line 1699
    move/from16 v16, v2

    .line 1700
    .line 1701
    move-object/from16 v22, v0

    .line 1702
    .line 1703
    move-object/from16 v23, v1

    .line 1704
    .line 1705
    invoke-virtual/range {v15 .. v23}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 1706
    .line 1707
    .line 1708
    move-result-object v0

    .line 1709
    iget-boolean v2, v8, Lcom/sgscq/vpn/handler/j;->b:Z

    .line 1710
    .line 1711
    if-eqz v2, :cond_2c

    .line 1712
    .line 1713
    iget-object v2, v6, Lcom/sgscq/vpn/handler/d;->a:Lcom/sgscq/vpn/handler/k0;

    .line 1714
    .line 1715
    iget-object v2, v2, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 1716
    .line 1717
    iget-object v5, v8, Lcom/sgscq/vpn/handler/j;->d:Ljava/lang/Object;

    .line 1718
    .line 1719
    check-cast v5, Ljava/util/Set;

    .line 1720
    .line 1721
    const/4 v7, 0x0

    .line 1722
    new-array v7, v7, [Ljava/lang/String;

    .line 1723
    .line 1724
    invoke-interface {v5, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1725
    .line 1726
    .line 1727
    move-result-object v5

    .line 1728
    check-cast v5, [Ljava/lang/String;

    .line 1729
    .line 1730
    invoke-virtual {v2, v1, v0, v5}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 1731
    .line 1732
    .line 1733
    move-result-object v0

    .line 1734
    goto :goto_10

    .line 1735
    :cond_2c
    const/4 v2, 0x0

    .line 1736
    iget-object v5, v6, Lcom/sgscq/vpn/handler/d;->a:Lcom/sgscq/vpn/handler/k0;

    .line 1737
    .line 1738
    iget-object v5, v5, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 1739
    .line 1740
    new-array v2, v2, [Ljava/lang/String;

    .line 1741
    .line 1742
    invoke-virtual {v5, v1, v0, v2}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 1743
    .line 1744
    .line 1745
    move-result-object v0

    .line 1746
    :goto_10
    iget-object v2, v6, Lcom/sgscq/vpn/handler/d;->a:Lcom/sgscq/vpn/handler/k0;

    .line 1747
    .line 1748
    iget-object v2, v2, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 1749
    .line 1750
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1751
    .line 1752
    .line 1753
    invoke-static {v1}, Lcom/sgscq/vpn/h5;->v(Ljava/util/Map;)Ljava/lang/String;

    .line 1754
    .line 1755
    .line 1756
    move-result-object v2

    .line 1757
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 1758
    .line 1759
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1760
    .line 1761
    .line 1762
    new-instance v7, La/o;

    .line 1763
    .line 1764
    invoke-direct {v7}, La/o;-><init>()V

    .line 1765
    .line 1766
    .line 1767
    sget-object v8, Lcom/sgscq/vpn/handler/d;->b:Ljava/lang/reflect/Type;

    .line 1768
    .line 1769
    invoke-virtual {v7, v2, v8}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 1770
    .line 1771
    .line 1772
    move-result-object v2

    .line 1773
    const-string v7, "pushData"

    .line 1774
    .line 1775
    invoke-interface {v5, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    .line 1777
    .line 1778
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    .line 1779
    .line 1780
    .line 1781
    move-result-wide v9

    .line 1782
    invoke-static {v9, v10, v1}, Lcom/sgscq/vpn/handler/c;->e(JLjava/util/Map;)Ljava/util/ArrayList;

    .line 1783
    .line 1784
    .line 1785
    move-result-object v2

    .line 1786
    const-string v9, "activity_list"

    .line 1787
    .line 1788
    invoke-interface {v5, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1789
    .line 1790
    .line 1791
    invoke-virtual {v5, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1792
    .line 1793
    .line 1794
    move-result-object v10

    .line 1795
    instance-of v11, v10, Ljava/util/Map;

    .line 1796
    .line 1797
    if-eqz v11, :cond_2d

    .line 1798
    .line 1799
    new-instance v11, Ljava/util/LinkedHashMap;

    .line 1800
    .line 1801
    check-cast v10, Ljava/util/Map;

    .line 1802
    .line 1803
    invoke-direct {v11, v10}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 1804
    .line 1805
    .line 1806
    goto :goto_11

    .line 1807
    :cond_2d
    new-instance v11, Ljava/util/LinkedHashMap;

    .line 1808
    .line 1809
    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1810
    .line 1811
    .line 1812
    :goto_11
    const-string v10, "party"

    .line 1813
    .line 1814
    invoke-interface {v11, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1815
    .line 1816
    .line 1817
    invoke-interface {v5, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1818
    .line 1819
    .line 1820
    invoke-virtual {v5, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1821
    .line 1822
    .line 1823
    move-result-object v2

    .line 1824
    instance-of v11, v2, Ljava/util/Map;

    .line 1825
    .line 1826
    if-eqz v11, :cond_2e

    .line 1827
    .line 1828
    check-cast v2, Ljava/util/Map;

    .line 1829
    .line 1830
    goto :goto_12

    .line 1831
    :cond_2e
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 1832
    .line 1833
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1834
    .line 1835
    .line 1836
    :goto_12
    new-instance v11, La/o;

    .line 1837
    .line 1838
    invoke-direct {v11}, La/o;-><init>()V

    .line 1839
    .line 1840
    .line 1841
    invoke-virtual {v11, v0, v8}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 1842
    .line 1843
    .line 1844
    move-result-object v0

    .line 1845
    check-cast v0, Ljava/util/Map;

    .line 1846
    .line 1847
    if-nez v0, :cond_2f

    .line 1848
    .line 1849
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 1850
    .line 1851
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1852
    .line 1853
    .line 1854
    :cond_2f
    const-string v8, "push"

    .line 1855
    .line 1856
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1857
    .line 1858
    .line 1859
    move-result-object v11

    .line 1860
    instance-of v12, v11, Ljava/util/Map;

    .line 1861
    .line 1862
    if-eqz v12, :cond_30

    .line 1863
    .line 1864
    new-instance v12, Ljava/util/LinkedHashMap;

    .line 1865
    .line 1866
    check-cast v11, Ljava/util/Map;

    .line 1867
    .line 1868
    invoke-direct {v12, v11}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 1869
    .line 1870
    .line 1871
    goto :goto_13

    .line 1872
    :cond_30
    new-instance v12, Ljava/util/LinkedHashMap;

    .line 1873
    .line 1874
    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1875
    .line 1876
    .line 1877
    :goto_13
    new-instance v11, Ljava/util/ArrayList;

    .line 1878
    .line 1879
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    .line 1880
    .line 1881
    .line 1882
    move-result-wide v14

    .line 1883
    invoke-static {v14, v15, v1}, Lcom/sgscq/vpn/handler/c;->e(JLjava/util/Map;)Ljava/util/ArrayList;

    .line 1884
    .line 1885
    .line 1886
    move-result-object v14

    .line 1887
    invoke-direct {v11, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1888
    .line 1889
    .line 1890
    invoke-interface {v12, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1891
    .line 1892
    .line 1893
    if-nez v2, :cond_31

    .line 1894
    .line 1895
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    .line 1896
    .line 1897
    .line 1898
    move-result-wide v10

    .line 1899
    sget-boolean v2, Lcom/sgscq/vpn/c7;->i:Z

    .line 1900
    .line 1901
    invoke-static {v1, v10, v11, v2}, Lcom/sgscq/vpn/handler/c;->g(Ljava/util/Map;JZ)Ljava/util/LinkedHashMap;

    .line 1902
    .line 1903
    .line 1904
    move-result-object v2

    .line 1905
    :cond_31
    const-string v10, "gamble"

    .line 1906
    .line 1907
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1908
    .line 1909
    .line 1910
    move-result-object v11

    .line 1911
    invoke-interface {v12, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1912
    .line 1913
    .line 1914
    const-string v10, "timing_power"

    .line 1915
    .line 1916
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1917
    .line 1918
    .line 1919
    move-result-object v2

    .line 1920
    invoke-interface {v12, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1921
    .line 1922
    .line 1923
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 1924
    .line 1925
    .line 1926
    move-result-wide v10

    .line 1927
    invoke-static {v10, v11, v13, v1}, Lcom/sgscq/vpn/cloud/m0;->O(JLjava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 1928
    .line 1929
    .line 1930
    move-result-object v2

    .line 1931
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1932
    .line 1933
    .line 1934
    move-result v2

    .line 1935
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1936
    .line 1937
    .line 1938
    move-result-object v2

    .line 1939
    const/4 v10, 0x0

    .line 1940
    new-array v10, v10, [Ljava/lang/Object;

    .line 1941
    .line 1942
    const-string v11, "num"

    .line 1943
    .line 1944
    invoke-static {v11, v2, v10}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1945
    .line 1946
    .line 1947
    move-result-object v2

    .line 1948
    const-string v10, "training"

    .line 1949
    .line 1950
    invoke-interface {v12, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1951
    .line 1952
    .line 1953
    invoke-interface {v0, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1954
    .line 1955
    .line 1956
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 1957
    .line 1958
    .line 1959
    move-result-object v0

    .line 1960
    invoke-virtual {v5, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1961
    .line 1962
    .line 1963
    move-result-object v2

    .line 1964
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 1965
    .line 1966
    .line 1967
    move-result-object v2

    .line 1968
    invoke-virtual {v5, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1969
    .line 1970
    .line 1971
    move-result-object v5

    .line 1972
    invoke-static {v5}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 1973
    .line 1974
    .line 1975
    move-result-object v5

    .line 1976
    iget-object v7, v6, Lcom/sgscq/vpn/handler/d;->a:Lcom/sgscq/vpn/handler/k0;

    .line 1977
    .line 1978
    iget-object v7, v7, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 1979
    .line 1980
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1981
    .line 1982
    .line 1983
    invoke-static {v1}, Lcom/sgscq/vpn/h5;->k0(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 1984
    .line 1985
    .line 1986
    move-result-object v1

    .line 1987
    invoke-static {v1}, Lcom/sgscq/vpn/h5;->w(Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    .line 1988
    .line 1989
    .line 1990
    move-result-object v1

    .line 1991
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 1992
    .line 1993
    .line 1994
    move-result-object v1

    .line 1995
    const-string v7, "{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"isAdult\":true,\"isShowBanShu\":true,\"is_use_keywords\":true,\"activity_list\":"

    .line 1996
    .line 1997
    const-string v8, ",\"pushData\":"

    .line 1998
    .line 1999
    const-string v9, ",\"push_info\":"

    .line 2000
    .line 2001
    invoke-static {v7, v5, v8, v2, v9}, Lc/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2002
    .line 2003
    .line 2004
    move-result-object v2

    .line 2005
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2006
    .line 2007
    .line 2008
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2009
    .line 2010
    .line 2011
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2012
    .line 2013
    .line 2014
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2015
    .line 2016
    .line 2017
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2018
    .line 2019
    .line 2020
    move-result-object v0

    .line 2021
    iget-object v1, v6, Lcom/sgscq/vpn/handler/d;->a:Lcom/sgscq/vpn/handler/k0;

    .line 2022
    .line 2023
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 2024
    .line 2025
    .line 2026
    move-result-object v0

    .line 2027
    return-object v0

    .line 2028
    :cond_32
    const-string v1, "user.chooseTeam"

    .line 2029
    .line 2030
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2031
    .line 2032
    .line 2033
    move-result v1

    .line 2034
    const-string v8, "\",\"user_info\":"

    .line 2035
    .line 2036
    if-eqz v1, :cond_3e

    .line 2037
    .line 2038
    iget-object v0, v6, Lcom/sgscq/vpn/handler/d;->a:Lcom/sgscq/vpn/handler/k0;

    .line 2039
    .line 2040
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 2041
    .line 2042
    .line 2043
    move-result-object v1

    .line 2044
    invoke-interface {v2, v9, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2045
    .line 2046
    .line 2047
    move-result-object v3

    .line 2048
    check-cast v3, Ljava/lang/String;

    .line 2049
    .line 2050
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 2051
    .line 2052
    .line 2053
    move-result v12

    .line 2054
    if-eqz v12, :cond_33

    .line 2055
    .line 2056
    const-string v1, "{\"error_code\":-1,\"ret\":-1,\"code\":-1,\"result\":false,\"msg\":\"\u7f3a\u5c11\u6b66\u5c06\u7f16\u53f7\"}"

    .line 2057
    .line 2058
    goto/16 :goto_1c

    .line 2059
    .line 2060
    :cond_33
    iget-object v12, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 2061
    .line 2062
    invoke-virtual {v12, v1}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 2063
    .line 2064
    .line 2065
    move-result-object v12

    .line 2066
    if-nez v12, :cond_34

    .line 2067
    .line 2068
    const-string v1, "{\"error_code\":-1,\"ret\":-1,\"code\":-1,\"result\":false,\"msg\":\"\u73a9\u5bb6\u6570\u636e\u4e0d\u5b58\u5728\"}"

    .line 2069
    .line 2070
    goto/16 :goto_1c

    .line 2071
    .line 2072
    :cond_34
    iget-object v13, v0, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 2073
    .line 2074
    invoke-static {v13}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 2075
    .line 2076
    .line 2077
    move-result-object v13

    .line 2078
    invoke-virtual {v13, v3}, Lcom/sgscq/vpn/w1;->R0(Ljava/lang/String;)Ljava/lang/String;

    .line 2079
    .line 2080
    .line 2081
    const-string v6, "first_choose_general"

    .line 2082
    .line 2083
    invoke-interface {v12, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2084
    .line 2085
    .line 2086
    move-object/from16 v17, v8

    .line 2087
    .line 2088
    invoke-virtual {v13, v3}, Lcom/sgscq/vpn/w1;->Y1(Ljava/lang/String;)Ljava/util/HashMap;

    .line 2089
    .line 2090
    .line 2091
    move-result-object v8

    .line 2092
    move-object/from16 v33, v4

    .line 2093
    .line 2094
    const-string v4, "general_status"

    .line 2095
    .line 2096
    invoke-virtual {v8, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2097
    .line 2098
    .line 2099
    const-string v4, "status"

    .line 2100
    .line 2101
    invoke-virtual {v8, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2102
    .line 2103
    .line 2104
    invoke-virtual {v13, v3}, Lcom/sgscq/vpn/w1;->Z1(Ljava/lang/String;)Ljava/util/HashMap;

    .line 2105
    .line 2106
    .line 2107
    move-result-object v4

    .line 2108
    new-instance v11, Ljava/util/ArrayList;

    .line 2109
    .line 2110
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2111
    .line 2112
    .line 2113
    move-object/from16 p1, v6

    .line 2114
    .line 2115
    new-instance v6, Ljava/util/ArrayList;

    .line 2116
    .line 2117
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2118
    .line 2119
    .line 2120
    move-object/from16 v24, v5

    .line 2121
    .line 2122
    new-instance v5, Ljava/util/ArrayList;

    .line 2123
    .line 2124
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2125
    .line 2126
    .line 2127
    move-object/from16 v25, v14

    .line 2128
    .line 2129
    const-string v14, "upd"

    .line 2130
    .line 2131
    filled-new-array {v10, v6, v14, v5}, [Ljava/lang/Object;

    .line 2132
    .line 2133
    .line 2134
    move-result-object v5

    .line 2135
    const-string v6, "del"

    .line 2136
    .line 2137
    invoke-static {v6, v11, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 2138
    .line 2139
    .line 2140
    move-result-object v5

    .line 2141
    move-object/from16 v11, v18

    .line 2142
    .line 2143
    invoke-interface {v12, v11, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2144
    .line 2145
    .line 2146
    move-result-object v5

    .line 2147
    check-cast v5, Ljava/util/Map;

    .line 2148
    .line 2149
    move-object/from16 v18, v7

    .line 2150
    .line 2151
    new-instance v7, Ljava/util/ArrayList;

    .line 2152
    .line 2153
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2154
    .line 2155
    .line 2156
    invoke-interface {v5, v10, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2157
    .line 2158
    .line 2159
    move-result-object v7

    .line 2160
    check-cast v7, Ljava/util/List;

    .line 2161
    .line 2162
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2163
    .line 2164
    .line 2165
    move-result-object v20

    .line 2166
    :goto_14
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    .line 2167
    .line 2168
    .line 2169
    move-result v21

    .line 2170
    if-eqz v21, :cond_36

    .line 2171
    .line 2172
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2173
    .line 2174
    .line 2175
    move-result-object v21

    .line 2176
    move-object/from16 v22, v1

    .line 2177
    .line 2178
    move-object/from16 v1, v21

    .line 2179
    .line 2180
    check-cast v1, Ljava/util/Map;

    .line 2181
    .line 2182
    move-object/from16 v2, v19

    .line 2183
    .line 2184
    invoke-static {v1, v2, v15, v3}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2185
    .line 2186
    .line 2187
    move-result v1

    .line 2188
    if-eqz v1, :cond_35

    .line 2189
    .line 2190
    const/4 v1, 0x1

    .line 2191
    goto :goto_15

    .line 2192
    :cond_35
    move-object/from16 v19, v2

    .line 2193
    .line 2194
    move-object/from16 v1, v22

    .line 2195
    .line 2196
    move-object/from16 v2, p2

    .line 2197
    .line 2198
    goto :goto_14

    .line 2199
    :cond_36
    move-object/from16 v22, v1

    .line 2200
    .line 2201
    move-object/from16 v2, v19

    .line 2202
    .line 2203
    const/4 v1, 0x0

    .line 2204
    :goto_15
    if-nez v1, :cond_37

    .line 2205
    .line 2206
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2207
    .line 2208
    .line 2209
    invoke-interface {v5, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2210
    .line 2211
    .line 2212
    invoke-interface {v12, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2213
    .line 2214
    .line 2215
    :cond_37
    new-instance v1, Ljava/util/ArrayList;

    .line 2216
    .line 2217
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2218
    .line 2219
    .line 2220
    new-instance v5, Ljava/util/ArrayList;

    .line 2221
    .line 2222
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2223
    .line 2224
    .line 2225
    new-instance v7, Ljava/util/ArrayList;

    .line 2226
    .line 2227
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2228
    .line 2229
    .line 2230
    filled-new-array {v10, v5, v14, v7}, [Ljava/lang/Object;

    .line 2231
    .line 2232
    .line 2233
    move-result-object v5

    .line 2234
    invoke-static {v6, v1, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 2235
    .line 2236
    .line 2237
    move-result-object v1

    .line 2238
    const-string v5, "Skill"

    .line 2239
    .line 2240
    invoke-interface {v12, v5, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2241
    .line 2242
    .line 2243
    move-result-object v1

    .line 2244
    check-cast v1, Ljava/util/Map;

    .line 2245
    .line 2246
    new-instance v7, Ljava/util/ArrayList;

    .line 2247
    .line 2248
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2249
    .line 2250
    .line 2251
    invoke-interface {v1, v10, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2252
    .line 2253
    .line 2254
    move-result-object v7

    .line 2255
    check-cast v7, Ljava/util/List;

    .line 2256
    .line 2257
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2258
    .line 2259
    .line 2260
    move-result-object v19

    .line 2261
    :goto_16
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    .line 2262
    .line 2263
    .line 2264
    move-result v20

    .line 2265
    if-eqz v20, :cond_39

    .line 2266
    .line 2267
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2268
    .line 2269
    .line 2270
    move-result-object v20

    .line 2271
    move-object/from16 v21, v11

    .line 2272
    .line 2273
    move-object/from16 v11, v20

    .line 2274
    .line 2275
    check-cast v11, Ljava/util/Map;

    .line 2276
    .line 2277
    invoke-static {v11, v2, v15, v3}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2278
    .line 2279
    .line 2280
    move-result v11

    .line 2281
    if-eqz v11, :cond_38

    .line 2282
    .line 2283
    const/4 v11, 0x1

    .line 2284
    goto :goto_17

    .line 2285
    :cond_38
    move-object/from16 v11, v21

    .line 2286
    .line 2287
    goto :goto_16

    .line 2288
    :cond_39
    move-object/from16 v21, v11

    .line 2289
    .line 2290
    const/4 v11, 0x0

    .line 2291
    :goto_17
    if-nez v11, :cond_3a

    .line 2292
    .line 2293
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2294
    .line 2295
    .line 2296
    invoke-interface {v1, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2297
    .line 2298
    .line 2299
    invoke-interface {v12, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2300
    .line 2301
    .line 2302
    :cond_3a
    new-instance v1, Ljava/util/ArrayList;

    .line 2303
    .line 2304
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2305
    .line 2306
    .line 2307
    invoke-static {v9, v3, v1, v12}, Lcom/sgscq/vpn/w1;->b2(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 2308
    .line 2309
    .line 2310
    const-string v7, "skill_id"

    .line 2311
    .line 2312
    invoke-virtual {v13, v3}, Lcom/sgscq/vpn/w1;->T0(Ljava/lang/String;)Ljava/lang/String;

    .line 2313
    .line 2314
    .line 2315
    move-result-object v9

    .line 2316
    invoke-static {v7, v9, v1, v12}, Lcom/sgscq/vpn/w1;->b2(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 2317
    .line 2318
    .line 2319
    const/4 v7, 0x1

    .line 2320
    invoke-virtual {v13, v3, v7}, Lcom/sgscq/vpn/w1;->a2(Ljava/lang/String;I)Ljava/util/HashMap;

    .line 2321
    .line 2322
    .line 2323
    move-result-object v7

    .line 2324
    new-instance v9, Ljava/util/ArrayList;

    .line 2325
    .line 2326
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2327
    .line 2328
    .line 2329
    new-instance v11, Ljava/util/ArrayList;

    .line 2330
    .line 2331
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2332
    .line 2333
    .line 2334
    move-object/from16 v19, v13

    .line 2335
    .line 2336
    new-instance v13, Ljava/util/ArrayList;

    .line 2337
    .line 2338
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2339
    .line 2340
    .line 2341
    filled-new-array {v10, v11, v14, v13}, [Ljava/lang/Object;

    .line 2342
    .line 2343
    .line 2344
    move-result-object v11

    .line 2345
    invoke-static {v6, v9, v11}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 2346
    .line 2347
    .line 2348
    move-result-object v9

    .line 2349
    const-string v11, "TeamGeneral"

    .line 2350
    .line 2351
    invoke-interface {v12, v11, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2352
    .line 2353
    .line 2354
    move-result-object v9

    .line 2355
    check-cast v9, Ljava/util/Map;

    .line 2356
    .line 2357
    new-instance v13, Ljava/util/ArrayList;

    .line 2358
    .line 2359
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2360
    .line 2361
    .line 2362
    invoke-interface {v9, v10, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2363
    .line 2364
    .line 2365
    move-result-object v13

    .line 2366
    check-cast v13, Ljava/util/List;

    .line 2367
    .line 2368
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2369
    .line 2370
    .line 2371
    move-result-object v20

    .line 2372
    :goto_18
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    .line 2373
    .line 2374
    .line 2375
    move-result v26

    .line 2376
    if-eqz v26, :cond_3c

    .line 2377
    .line 2378
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2379
    .line 2380
    .line 2381
    move-result-object v26

    .line 2382
    move-object/from16 v34, v1

    .line 2383
    .line 2384
    move-object/from16 v1, v26

    .line 2385
    .line 2386
    check-cast v1, Ljava/util/Map;

    .line 2387
    .line 2388
    invoke-static {v1, v2, v15, v3}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2389
    .line 2390
    .line 2391
    move-result v1

    .line 2392
    if-eqz v1, :cond_3b

    .line 2393
    .line 2394
    const/4 v1, 0x1

    .line 2395
    goto :goto_19

    .line 2396
    :cond_3b
    move-object/from16 v1, v34

    .line 2397
    .line 2398
    goto :goto_18

    .line 2399
    :cond_3c
    move-object/from16 v34, v1

    .line 2400
    .line 2401
    const/4 v1, 0x0

    .line 2402
    :goto_19
    if-nez v1, :cond_3d

    .line 2403
    .line 2404
    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2405
    .line 2406
    .line 2407
    invoke-interface {v9, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2408
    .line 2409
    .line 2410
    invoke-interface {v12, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2411
    .line 2412
    .line 2413
    :cond_3d
    iget-object v1, v0, Lcom/sgscq/vpn/handler/k0;->c:Landroid/content/SharedPreferences;

    .line 2414
    .line 2415
    move-object/from16 v2, p2

    .line 2416
    .line 2417
    move-object/from16 v7, v22

    .line 2418
    .line 2419
    invoke-static {v7, v12, v2, v1}, Lcom/sgscq/vpn/cloud/m0;->Y1(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Landroid/content/SharedPreferences;)Z

    .line 2420
    .line 2421
    .line 2422
    iget-object v1, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 2423
    .line 2424
    invoke-virtual {v1, v7, v12}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 2425
    .line 2426
    .line 2427
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 2428
    .line 2429
    .line 2430
    move-result-wide v1

    .line 2431
    long-to-int v1, v1

    .line 2432
    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 2433
    .line 2434
    .line 2435
    move-result v2

    .line 2436
    move-object v13, v5

    .line 2437
    move-object v9, v6

    .line 2438
    int-to-long v5, v2

    .line 2439
    invoke-virtual {v0, v5, v6, v12}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 2440
    .line 2441
    .line 2442
    move-result-wide v29

    .line 2443
    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 2444
    .line 2445
    .line 2446
    move-result v2

    .line 2447
    move-object/from16 v5, v18

    .line 2448
    .line 2449
    invoke-virtual {v0, v2, v5, v12}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 2450
    .line 2451
    .line 2452
    move-result v26

    .line 2453
    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 2454
    .line 2455
    .line 2456
    move-result v2

    .line 2457
    move-object/from16 v6, v25

    .line 2458
    .line 2459
    invoke-virtual {v0, v2, v6, v12}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 2460
    .line 2461
    .line 2462
    move-result v27

    .line 2463
    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 2464
    .line 2465
    .line 2466
    move-result v2

    .line 2467
    move-object/from16 v5, v24

    .line 2468
    .line 2469
    invoke-virtual {v0, v2, v5, v12}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 2470
    .line 2471
    .line 2472
    move-result v28

    .line 2473
    iget-object v2, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 2474
    .line 2475
    move-object/from16 v24, v2

    .line 2476
    .line 2477
    move/from16 v25, v1

    .line 2478
    .line 2479
    move-object/from16 v31, v7

    .line 2480
    .line 2481
    move-object/from16 v32, v12

    .line 2482
    .line 2483
    invoke-virtual/range {v24 .. v32}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 2484
    .line 2485
    .line 2486
    move-result-object v1

    .line 2487
    move-object/from16 v2, p1

    .line 2488
    .line 2489
    :try_start_2
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2490
    .line 2491
    .line 2492
    :catch_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2493
    .line 2494
    const-string v5, "{\"del\":[],\"add\":["

    .line 2495
    .line 2496
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2497
    .line 2498
    .line 2499
    iget-object v6, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 2500
    .line 2501
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2502
    .line 2503
    .line 2504
    :try_start_3
    new-instance v6, Lorg/json/JSONObject;

    .line 2505
    .line 2506
    invoke-direct {v6, v8}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 2507
    .line 2508
    .line 2509
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 2510
    .line 2511
    .line 2512
    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 2513
    goto :goto_1a

    .line 2514
    :catch_3
    move-object/from16 v6, v16

    .line 2515
    .line 2516
    :goto_1a
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2517
    .line 2518
    .line 2519
    const-string v6, "],\"upd\":[]}"

    .line 2520
    .line 2521
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2522
    .line 2523
    .line 2524
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2525
    .line 2526
    .line 2527
    move-result-object v2

    .line 2528
    new-instance v15, Ljava/lang/StringBuilder;

    .line 2529
    .line 2530
    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2531
    .line 2532
    .line 2533
    iget-object v5, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 2534
    .line 2535
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2536
    .line 2537
    .line 2538
    :try_start_4
    new-instance v5, Lorg/json/JSONObject;

    .line 2539
    .line 2540
    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 2541
    .line 2542
    .line 2543
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 2544
    .line 2545
    .line 2546
    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 2547
    goto :goto_1b

    .line 2548
    :catch_4
    move-object/from16 v5, v16

    .line 2549
    .line 2550
    :goto_1b
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2551
    .line 2552
    .line 2553
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2554
    .line 2555
    .line 2556
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2557
    .line 2558
    .line 2559
    move-result-object v5

    .line 2560
    iget-object v6, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 2561
    .line 2562
    new-instance v15, Ljava/util/HashMap;

    .line 2563
    .line 2564
    invoke-direct {v15, v12}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2565
    .line 2566
    .line 2567
    move-object/from16 p1, v13

    .line 2568
    .line 2569
    new-instance v13, Ljava/util/ArrayList;

    .line 2570
    .line 2571
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2572
    .line 2573
    .line 2574
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2575
    .line 2576
    .line 2577
    new-instance v8, Ljava/util/ArrayList;

    .line 2578
    .line 2579
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2580
    .line 2581
    .line 2582
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2583
    .line 2584
    .line 2585
    new-instance v4, Ljava/util/ArrayList;

    .line 2586
    .line 2587
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2588
    .line 2589
    .line 2590
    move-object/from16 p2, v5

    .line 2591
    .line 2592
    new-instance v5, Ljava/util/ArrayList;

    .line 2593
    .line 2594
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2595
    .line 2596
    .line 2597
    filled-new-array {v10, v5, v14, v13}, [Ljava/lang/Object;

    .line 2598
    .line 2599
    .line 2600
    move-result-object v5

    .line 2601
    move-object/from16 v13, v21

    .line 2602
    .line 2603
    invoke-static {v9, v4, v5, v15, v13}, Lc/a;->m(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 2604
    .line 2605
    .line 2606
    move-result-object v4

    .line 2607
    new-instance v5, Ljava/util/ArrayList;

    .line 2608
    .line 2609
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2610
    .line 2611
    .line 2612
    filled-new-array {v10, v5, v14, v8}, [Ljava/lang/Object;

    .line 2613
    .line 2614
    .line 2615
    move-result-object v5

    .line 2616
    invoke-static {v9, v4, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 2617
    .line 2618
    .line 2619
    move-result-object v4

    .line 2620
    move-object/from16 v5, p1

    .line 2621
    .line 2622
    invoke-virtual {v15, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2623
    .line 2624
    .line 2625
    new-instance v4, Ljava/util/ArrayList;

    .line 2626
    .line 2627
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2628
    .line 2629
    .line 2630
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2631
    .line 2632
    .line 2633
    invoke-static {v12}, Lcom/sgscq/vpn/h5;->h0(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 2634
    .line 2635
    .line 2636
    move-result-object v6

    .line 2637
    new-instance v8, Ljava/util/ArrayList;

    .line 2638
    .line 2639
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2640
    .line 2641
    .line 2642
    filled-new-array {v10, v6, v14, v8}, [Ljava/lang/Object;

    .line 2643
    .line 2644
    .line 2645
    move-result-object v6

    .line 2646
    invoke-static {v9, v4, v6, v15, v11}, Lc/a;->m(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 2647
    .line 2648
    .line 2649
    move-result-object v4

    .line 2650
    new-instance v6, Ljava/util/ArrayList;

    .line 2651
    .line 2652
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2653
    .line 2654
    .line 2655
    move-object/from16 v8, v34

    .line 2656
    .line 2657
    filled-new-array {v10, v6, v14, v8}, [Ljava/lang/Object;

    .line 2658
    .line 2659
    .line 2660
    move-result-object v6

    .line 2661
    invoke-static {v9, v4, v6}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 2662
    .line 2663
    .line 2664
    move-result-object v4

    .line 2665
    move-object/from16 v6, v23

    .line 2666
    .line 2667
    invoke-virtual {v15, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2668
    .line 2669
    .line 2670
    iget-object v4, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 2671
    .line 2672
    filled-new-array {v13, v5, v11, v6}, [Ljava/lang/String;

    .line 2673
    .line 2674
    .line 2675
    move-result-object v5

    .line 2676
    invoke-virtual {v4, v15, v1, v5}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 2677
    .line 2678
    .line 2679
    move-result-object v4

    .line 2680
    iget-object v5, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 2681
    .line 2682
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2683
    .line 2684
    .line 2685
    const-string v5, "Equipment"

    .line 2686
    .line 2687
    invoke-static {v5, v12}, Lcom/sgscq/vpn/h5;->B0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 2688
    .line 2689
    .line 2690
    move-result-object v5

    .line 2691
    iget-object v8, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 2692
    .line 2693
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2694
    .line 2695
    .line 2696
    const-string v8, "Item"

    .line 2697
    .line 2698
    invoke-static {v8, v12}, Lcom/sgscq/vpn/h5;->B0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 2699
    .line 2700
    .line 2701
    move-result-object v8

    .line 2702
    iget-object v9, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 2703
    .line 2704
    invoke-virtual {v9, v12}, Lcom/sgscq/vpn/h5;->j0(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 2705
    .line 2706
    .line 2707
    move-result-object v9

    .line 2708
    invoke-static {v9}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 2709
    .line 2710
    .line 2711
    move-result-object v9

    .line 2712
    iget-object v10, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 2713
    .line 2714
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2715
    .line 2716
    .line 2717
    invoke-static {v6, v12}, Lcom/sgscq/vpn/h5;->B0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 2718
    .line 2719
    .line 2720
    move-result-object v6

    .line 2721
    iget-object v10, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 2722
    .line 2723
    invoke-virtual {v10}, Lcom/sgscq/vpn/h5;->D()Ljava/lang/String;

    .line 2724
    .line 2725
    .line 2726
    move-result-object v10

    .line 2727
    const-string v11, "first_gold_wine"

    .line 2728
    .line 2729
    invoke-interface {v12, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 2730
    .line 2731
    .line 2732
    move-result v11

    .line 2733
    new-instance v12, Ljava/lang/StringBuilder;

    .line 2734
    .line 2735
    const-string v13, "{\"toast\":[],\"list\":[],\"gold_info\":{\"free_end_time\":0,\"free_times\":1,\"price\":100},\"silver_info\":{\"free_end_time\":0,\"free_times\":1,\"price\":50},\"copper_info\":{\"free_end_time\":0,\"free_times\":1,\"price\":20},\"need_times\":5,\"first_time_consume_gold\":"

    .line 2736
    .line 2737
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2738
    .line 2739
    .line 2740
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2741
    .line 2742
    .line 2743
    const-string v11, ",\"multi_price\":900,\"show_general_list\":"

    .line 2744
    .line 2745
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2746
    .line 2747
    .line 2748
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2749
    .line 2750
    .line 2751
    move-object/from16 v10, v33

    .line 2752
    .line 2753
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2754
    .line 2755
    .line 2756
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2757
    .line 2758
    .line 2759
    move-result-object v11

    .line 2760
    invoke-virtual/range {v19 .. v19}, Lcom/sgscq/vpn/w1;->W0()I

    .line 2761
    .line 2762
    .line 2763
    move-result v12

    .line 2764
    new-instance v13, Ljava/lang/StringBuilder;

    .line 2765
    .line 2766
    const-string v14, "{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"isAdult\":true,\"isShowBanShu\":true,\"is_use_keywords\":true,\"isShowAmt\":true,\"isShowCDKey\":true,\"isShowGem\":true,\"isShowMagic\":true,\"maxTeamNum\":"

    .line 2767
    .line 2768
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2769
    .line 2770
    .line 2771
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2772
    .line 2773
    .line 2774
    const-string v12, ",\"isShowUnionWar\":true,\"rechargeRate\":\"1.0\",\"wine_info\":"

    .line 2775
    .line 2776
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2777
    .line 2778
    .line 2779
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2780
    .line 2781
    .line 2782
    const-string v11, ",\"first_choose_general\":\""

    .line 2783
    .line 2784
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2785
    .line 2786
    .line 2787
    const-string v11, "\",\"first_wine_general\":\"0\",\"user_id\":\""

    .line 2788
    .line 2789
    const-string v12, "\",\"account_uid\":\""

    .line 2790
    .line 2791
    invoke-static {v13, v3, v11, v7, v12}, Lc/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2792
    .line 2793
    .line 2794
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2795
    .line 2796
    .line 2797
    move-object/from16 v7, v17

    .line 2798
    .line 2799
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2800
    .line 2801
    .line 2802
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 2803
    .line 2804
    .line 2805
    move-result-object v1

    .line 2806
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2807
    .line 2808
    .line 2809
    const-string v1, ",\"general_info\":"

    .line 2810
    .line 2811
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2812
    .line 2813
    .line 2814
    const-string v1, ",\"General\":"

    .line 2815
    .line 2816
    const-string v3, ",\"skill_info\":"

    .line 2817
    .line 2818
    invoke-static {v13, v2, v1, v2, v3}, Lc/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2819
    .line 2820
    .line 2821
    const-string v1, ",\"Skill\":"

    .line 2822
    .line 2823
    const-string v2, ",\"equipment_info\":"

    .line 2824
    .line 2825
    move-object/from16 v3, p2

    .line 2826
    .line 2827
    invoke-static {v13, v3, v1, v3, v2}, Lc/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2828
    .line 2829
    .line 2830
    const-string v1, ",\"Equipment\":"

    .line 2831
    .line 2832
    const-string v2, ",\"item_info\":"

    .line 2833
    .line 2834
    invoke-static {v13, v5, v1, v5, v2}, Lc/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2835
    .line 2836
    .line 2837
    const-string v1, ",\"Item\":"

    .line 2838
    .line 2839
    const-string v2, ",\"team_info\":"

    .line 2840
    .line 2841
    invoke-static {v13, v8, v1, v8, v2}, Lc/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2842
    .line 2843
    .line 2844
    const-string v1, ",\"TeamGeneral\":"

    .line 2845
    .line 2846
    const-string v2, ",\"atlas_info\":"

    .line 2847
    .line 2848
    invoke-static {v13, v9, v1, v9, v2}, Lc/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2849
    .line 2850
    .line 2851
    const-string v1, ",\"Atlas\":"

    .line 2852
    .line 2853
    const-string v2, ",\"GeneralSouls\":[],\"cmn\":"

    .line 2854
    .line 2855
    invoke-static {v13, v6, v1, v6, v2}, Lc/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2856
    .line 2857
    .line 2858
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2859
    .line 2860
    .line 2861
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2862
    .line 2863
    .line 2864
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2865
    .line 2866
    .line 2867
    move-result-object v1

    .line 2868
    :goto_1c
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 2869
    .line 2870
    .line 2871
    move-result-object v0

    .line 2872
    return-object v0

    .line 2873
    :cond_3e
    move-object v10, v4

    .line 2874
    move-object v1, v5

    .line 2875
    move-object v5, v7

    .line 2876
    move-object v7, v8

    .line 2877
    move-object v6, v14

    .line 2878
    const-string v4, "user.chgNickname"

    .line 2879
    .line 2880
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2881
    .line 2882
    .line 2883
    move-result v4

    .line 2884
    if-eqz v4, :cond_3f

    .line 2885
    .line 2886
    move-object/from16 v4, p0

    .line 2887
    .line 2888
    invoke-virtual {v4, v2}, Lcom/sgscq/vpn/handler/d;->d(Ljava/util/Map;)[B

    .line 2889
    .line 2890
    .line 2891
    move-result-object v0

    .line 2892
    return-object v0

    .line 2893
    :cond_3f
    move-object/from16 v4, p0

    .line 2894
    .line 2895
    const-string v8, "user.chgSign"

    .line 2896
    .line 2897
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2898
    .line 2899
    .line 2900
    move-result v8

    .line 2901
    const-string v9, "{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\"}"

    .line 2902
    .line 2903
    if-eqz v8, :cond_41

    .line 2904
    .line 2905
    iget-object v0, v4, Lcom/sgscq/vpn/handler/d;->a:Lcom/sgscq/vpn/handler/k0;

    .line 2906
    .line 2907
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 2908
    .line 2909
    .line 2910
    move-result-object v8

    .line 2911
    const-string v11, "user_sign"

    .line 2912
    .line 2913
    invoke-interface {v2, v11, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2914
    .line 2915
    .line 2916
    move-result-object v12

    .line 2917
    check-cast v12, Ljava/lang/String;

    .line 2918
    .line 2919
    const-string v13, "sign"

    .line 2920
    .line 2921
    invoke-interface {v2, v13, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2922
    .line 2923
    .line 2924
    move-result-object v2

    .line 2925
    check-cast v2, Ljava/lang/String;

    .line 2926
    .line 2927
    iget-object v12, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 2928
    .line 2929
    invoke-virtual {v12, v8}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 2930
    .line 2931
    .line 2932
    move-result-object v12

    .line 2933
    if-eqz v12, :cond_40

    .line 2934
    .line 2935
    invoke-interface {v12, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2936
    .line 2937
    .line 2938
    iget-object v9, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 2939
    .line 2940
    invoke-virtual {v9, v8, v12}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 2941
    .line 2942
    .line 2943
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 2944
    .line 2945
    .line 2946
    move-result-wide v13

    .line 2947
    long-to-int v9, v13

    .line 2948
    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 2949
    .line 2950
    .line 2951
    move-result v11

    .line 2952
    int-to-long v13, v11

    .line 2953
    invoke-virtual {v0, v13, v14, v12}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 2954
    .line 2955
    .line 2956
    move-result-wide v21

    .line 2957
    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 2958
    .line 2959
    .line 2960
    move-result v11

    .line 2961
    invoke-virtual {v0, v11, v5, v12}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 2962
    .line 2963
    .line 2964
    move-result v18

    .line 2965
    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 2966
    .line 2967
    .line 2968
    move-result v5

    .line 2969
    invoke-virtual {v0, v5, v6, v12}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 2970
    .line 2971
    .line 2972
    move-result v19

    .line 2973
    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 2974
    .line 2975
    .line 2976
    move-result v5

    .line 2977
    invoke-virtual {v0, v5, v1, v12}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 2978
    .line 2979
    .line 2980
    move-result v20

    .line 2981
    iget-object v1, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 2982
    .line 2983
    move-object/from16 v16, v1

    .line 2984
    .line 2985
    move/from16 v17, v9

    .line 2986
    .line 2987
    move-object/from16 v23, v8

    .line 2988
    .line 2989
    move-object/from16 v24, v12

    .line 2990
    .line 2991
    invoke-virtual/range {v16 .. v24}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 2992
    .line 2993
    .line 2994
    move-result-object v1

    .line 2995
    iget-object v5, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 2996
    .line 2997
    const/4 v6, 0x0

    .line 2998
    new-array v6, v6, [Ljava/lang/String;

    .line 2999
    .line 3000
    invoke-virtual {v5, v12, v1, v6}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 3001
    .line 3002
    .line 3003
    move-result-object v5

    .line 3004
    new-instance v6, Ljava/lang/StringBuilder;

    .line 3005
    .line 3006
    const-string v8, "{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"user_sign\":\""

    .line 3007
    .line 3008
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3009
    .line 3010
    .line 3011
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 3012
    .line 3013
    .line 3014
    move-result-object v8

    .line 3015
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3016
    .line 3017
    .line 3018
    const-string v8, "\",\"sign\":\""

    .line 3019
    .line 3020
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3021
    .line 3022
    .line 3023
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 3024
    .line 3025
    .line 3026
    move-result-object v2

    .line 3027
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3028
    .line 3029
    .line 3030
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3031
    .line 3032
    .line 3033
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 3034
    .line 3035
    .line 3036
    move-result-object v1

    .line 3037
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3038
    .line 3039
    .line 3040
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3041
    .line 3042
    .line 3043
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3044
    .line 3045
    .line 3046
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3047
    .line 3048
    .line 3049
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3050
    .line 3051
    .line 3052
    move-result-object v9

    .line 3053
    :cond_40
    invoke-virtual {v0, v9}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 3054
    .line 3055
    .line 3056
    move-result-object v0

    .line 3057
    return-object v0

    .line 3058
    :cond_41
    const-string v8, "user.chgGeneralskin"

    .line 3059
    .line 3060
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3061
    .line 3062
    .line 3063
    move-result v8

    .line 3064
    if-eqz v8, :cond_43

    .line 3065
    .line 3066
    iget-object v0, v4, Lcom/sgscq/vpn/handler/d;->a:Lcom/sgscq/vpn/handler/k0;

    .line 3067
    .line 3068
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 3069
    .line 3070
    .line 3071
    move-result-object v8

    .line 3072
    const-string v11, "general_skin"

    .line 3073
    .line 3074
    invoke-interface {v2, v11, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3075
    .line 3076
    .line 3077
    move-result-object v2

    .line 3078
    check-cast v2, Ljava/lang/String;

    .line 3079
    .line 3080
    iget-object v12, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 3081
    .line 3082
    invoke-virtual {v12, v8}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 3083
    .line 3084
    .line 3085
    move-result-object v12

    .line 3086
    if-eqz v12, :cond_42

    .line 3087
    .line 3088
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 3089
    .line 3090
    .line 3091
    move-result v13

    .line 3092
    if-nez v13, :cond_42

    .line 3093
    .line 3094
    invoke-interface {v12, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3095
    .line 3096
    .line 3097
    iget-object v9, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 3098
    .line 3099
    invoke-virtual {v9, v8, v12}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 3100
    .line 3101
    .line 3102
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 3103
    .line 3104
    .line 3105
    move-result-wide v13

    .line 3106
    long-to-int v9, v13

    .line 3107
    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 3108
    .line 3109
    .line 3110
    move-result v11

    .line 3111
    int-to-long v13, v11

    .line 3112
    invoke-virtual {v0, v13, v14, v12}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 3113
    .line 3114
    .line 3115
    move-result-wide v21

    .line 3116
    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 3117
    .line 3118
    .line 3119
    move-result v11

    .line 3120
    invoke-virtual {v0, v11, v5, v12}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 3121
    .line 3122
    .line 3123
    move-result v18

    .line 3124
    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 3125
    .line 3126
    .line 3127
    move-result v5

    .line 3128
    invoke-virtual {v0, v5, v6, v12}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 3129
    .line 3130
    .line 3131
    move-result v19

    .line 3132
    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 3133
    .line 3134
    .line 3135
    move-result v5

    .line 3136
    invoke-virtual {v0, v5, v1, v12}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 3137
    .line 3138
    .line 3139
    move-result v20

    .line 3140
    iget-object v1, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 3141
    .line 3142
    move-object/from16 v16, v1

    .line 3143
    .line 3144
    move/from16 v17, v9

    .line 3145
    .line 3146
    move-object/from16 v23, v8

    .line 3147
    .line 3148
    move-object/from16 v24, v12

    .line 3149
    .line 3150
    invoke-virtual/range {v16 .. v24}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 3151
    .line 3152
    .line 3153
    move-result-object v1

    .line 3154
    iget-object v5, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 3155
    .line 3156
    const/4 v6, 0x0

    .line 3157
    new-array v6, v6, [Ljava/lang/String;

    .line 3158
    .line 3159
    invoke-virtual {v5, v12, v1, v6}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 3160
    .line 3161
    .line 3162
    move-result-object v5

    .line 3163
    new-instance v6, Ljava/lang/StringBuilder;

    .line 3164
    .line 3165
    const-string v8, "{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"general_skin\":\""

    .line 3166
    .line 3167
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3168
    .line 3169
    .line 3170
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 3171
    .line 3172
    .line 3173
    move-result-object v8

    .line 3174
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3175
    .line 3176
    .line 3177
    const-string v8, "\",\"user_general_skin\":\""

    .line 3178
    .line 3179
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3180
    .line 3181
    .line 3182
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 3183
    .line 3184
    .line 3185
    move-result-object v2

    .line 3186
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3187
    .line 3188
    .line 3189
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3190
    .line 3191
    .line 3192
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 3193
    .line 3194
    .line 3195
    move-result-object v1

    .line 3196
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3197
    .line 3198
    .line 3199
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3200
    .line 3201
    .line 3202
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3203
    .line 3204
    .line 3205
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3206
    .line 3207
    .line 3208
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3209
    .line 3210
    .line 3211
    move-result-object v9

    .line 3212
    :cond_42
    invoke-virtual {v0, v9}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 3213
    .line 3214
    .line 3215
    move-result-object v0

    .line 3216
    return-object v0

    .line 3217
    :cond_43
    const-string v1, "user.leaveMsg"

    .line 3218
    .line 3219
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3220
    .line 3221
    .line 3222
    move-result v1

    .line 3223
    if-eqz v1, :cond_44

    .line 3224
    .line 3225
    invoke-virtual {v4, v2}, Lcom/sgscq/vpn/handler/d;->e(Ljava/util/Map;)[B

    .line 3226
    .line 3227
    .line 3228
    move-result-object v0

    .line 3229
    return-object v0

    .line 3230
    :cond_44
    const-string v1, "user.save"

    .line 3231
    .line 3232
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3233
    .line 3234
    .line 3235
    move-result v0

    .line 3236
    if-eqz v0, :cond_45

    .line 3237
    .line 3238
    invoke-virtual {v4, v2}, Lcom/sgscq/vpn/handler/d;->g(Ljava/util/Map;)[B

    .line 3239
    .line 3240
    .line 3241
    move-result-object v0

    .line 3242
    return-object v0

    .line 3243
    :cond_45
    const/4 v0, 0x0

    .line 3244
    return-object v0

    .line 3245
    :cond_46
    :goto_1d
    move-object v4, v6

    .line 3246
    invoke-virtual {v4, v2}, Lcom/sgscq/vpn/handler/d;->f(Ljava/util/Map;)[B

    .line 3247
    .line 3248
    .line 3249
    move-result-object v0

    .line 3250
    return-object v0

    .line 3251
    :cond_47
    :goto_1e
    move-object v4, v6

    .line 3252
    iget-object v5, v4, Lcom/sgscq/vpn/handler/d;->a:Lcom/sgscq/vpn/handler/k0;

    .line 3253
    .line 3254
    invoke-virtual {v5, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 3255
    .line 3256
    .line 3257
    move-result-object v6

    .line 3258
    iget-object v7, v5, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 3259
    .line 3260
    invoke-virtual {v7, v6}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 3261
    .line 3262
    .line 3263
    move-result-object v7

    .line 3264
    if-nez v7, :cond_48

    .line 3265
    .line 3266
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 3267
    .line 3268
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3269
    .line 3270
    .line 3271
    :cond_48
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3272
    .line 3273
    .line 3274
    move-result v1

    .line 3275
    const-string v8, "easy"

    .line 3276
    .line 3277
    if-eqz v1, :cond_49

    .line 3278
    .line 3279
    const-string v0, "facebook"

    .line 3280
    .line 3281
    :goto_1f
    move-object/from16 v1, v17

    .line 3282
    .line 3283
    goto :goto_20

    .line 3284
    :cond_49
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3285
    .line 3286
    .line 3287
    move-result v0

    .line 3288
    if-eqz v0, :cond_4a

    .line 3289
    .line 3290
    move-object v0, v8

    .line 3291
    goto :goto_1f

    .line 3292
    :cond_4a
    const-string v0, "bf"

    .line 3293
    .line 3294
    goto :goto_1f

    .line 3295
    :goto_20
    invoke-static {v1, v2}, Lcom/sgscq/vpn/handler/d;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 3296
    .line 3297
    .line 3298
    move-result-object v1

    .line 3299
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3300
    .line 3301
    .line 3302
    move-result v8

    .line 3303
    if-eqz v8, :cond_4b

    .line 3304
    .line 3305
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 3306
    .line 3307
    .line 3308
    move-result v8

    .line 3309
    if-eqz v8, :cond_4b

    .line 3310
    .line 3311
    const-string v1, "easy_uid"

    .line 3312
    .line 3313
    invoke-static {v1, v2}, Lcom/sgscq/vpn/handler/d;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 3314
    .line 3315
    .line 3316
    move-result-object v1

    .line 3317
    :cond_4b
    const-string v8, "sessionId"

    .line 3318
    .line 3319
    invoke-static {v8, v2}, Lcom/sgscq/vpn/handler/d;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 3320
    .line 3321
    .line 3322
    move-result-object v8

    .line 3323
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 3324
    .line 3325
    .line 3326
    move-result v9

    .line 3327
    if-eqz v9, :cond_4c

    .line 3328
    .line 3329
    const-string v8, "session_id"

    .line 3330
    .line 3331
    invoke-static {v8, v2}, Lcom/sgscq/vpn/handler/d;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 3332
    .line 3333
    .line 3334
    move-result-object v8

    .line 3335
    :cond_4c
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 3336
    .line 3337
    .line 3338
    move-result v9

    .line 3339
    if-eqz v9, :cond_4d

    .line 3340
    .line 3341
    const-string v8, "session"

    .line 3342
    .line 3343
    invoke-static {v8, v2}, Lcom/sgscq/vpn/handler/d;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 3344
    .line 3345
    .line 3346
    move-result-object v8

    .line 3347
    :cond_4d
    const-string v2, "bind_provider"

    .line 3348
    .line 3349
    invoke-interface {v7, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3350
    .line 3351
    .line 3352
    const-string v2, "_uid"

    .line 3353
    .line 3354
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 3355
    .line 3356
    .line 3357
    move-result-object v2

    .line 3358
    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3359
    .line 3360
    .line 3361
    const-string v1, "_session"

    .line 3362
    .line 3363
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 3364
    .line 3365
    .line 3366
    move-result-object v1

    .line 3367
    invoke-interface {v7, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3368
    .line 3369
    .line 3370
    const-string v1, "_bind"

    .line 3371
    .line 3372
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 3373
    .line 3374
    .line 3375
    move-result-object v1

    .line 3376
    const/4 v2, 0x1

    .line 3377
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3378
    .line 3379
    .line 3380
    move-result-object v8

    .line 3381
    invoke-interface {v7, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3382
    .line 3383
    .line 3384
    const-string v1, "account_bind"

    .line 3385
    .line 3386
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3387
    .line 3388
    .line 3389
    move-result-object v2

    .line 3390
    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3391
    .line 3392
    .line 3393
    const/4 v1, 0x0

    .line 3394
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3395
    .line 3396
    .line 3397
    move-result-object v2

    .line 3398
    const-string v8, "code"

    .line 3399
    .line 3400
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3401
    .line 3402
    .line 3403
    move-result-object v9

    .line 3404
    const-string v10, "result"

    .line 3405
    .line 3406
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 3407
    .line 3408
    const-string v12, "msg"

    .line 3409
    .line 3410
    const-string v13, "success"

    .line 3411
    .line 3412
    const-string v14, "error_code"

    .line 3413
    .line 3414
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3415
    .line 3416
    .line 3417
    move-result-object v15

    .line 3418
    const-string v16, "return_info"

    .line 3419
    .line 3420
    const-string v1, "provider"

    .line 3421
    .line 3422
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 3423
    .line 3424
    .line 3425
    move-result-object v0

    .line 3426
    invoke-static {v3, v11, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 3427
    .line 3428
    .line 3429
    move-result-object v17

    .line 3430
    const-string v18, "cmn_modules"

    .line 3431
    .line 3432
    const-string v19, "Player"

    .line 3433
    .line 3434
    filled-new-array/range {v8 .. v19}, [Ljava/lang/Object;

    .line 3435
    .line 3436
    .line 3437
    move-result-object v0

    .line 3438
    move-object/from16 v1, v22

    .line 3439
    .line 3440
    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 3441
    .line 3442
    .line 3443
    move-result-object v0

    .line 3444
    iget-object v1, v5, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 3445
    .line 3446
    invoke-virtual {v1, v6, v7}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 3447
    .line 3448
    .line 3449
    invoke-virtual {v4, v6, v7}, Lcom/sgscq/vpn/handler/d;->i(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 3450
    .line 3451
    .line 3452
    move-result-object v1

    .line 3453
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 3454
    .line 3455
    .line 3456
    move-result-object v2

    .line 3457
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 3458
    .line 3459
    .line 3460
    move-result-object v2

    .line 3461
    move-object/from16 v3, v21

    .line 3462
    .line 3463
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3464
    .line 3465
    .line 3466
    iget-object v2, v5, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 3467
    .line 3468
    const/4 v3, 0x0

    .line 3469
    new-array v3, v3, [Ljava/lang/String;

    .line 3470
    .line 3471
    invoke-virtual {v2, v7, v1, v3}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 3472
    .line 3473
    .line 3474
    move-result-object v1

    .line 3475
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 3476
    .line 3477
    .line 3478
    move-result-object v1

    .line 3479
    move-object/from16 v2, v20

    .line 3480
    .line 3481
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3482
    .line 3483
    .line 3484
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 3485
    .line 3486
    .line 3487
    move-result-object v0

    .line 3488
    invoke-virtual {v5, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 3489
    .line 3490
    .line 3491
    move-result-object v0

    .line 3492
    return-object v0
.end method

.method public final d(Ljava/util/Map;)[B
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/sgscq/vpn/handler/d;->a:Lcom/sgscq/vpn/handler/k0;

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v10

    .line 11
    const-string v3, "nickname"

    .line 12
    .line 13
    const-string v12, ""

    .line 14
    .line 15
    invoke-interface {v1, v3, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    move-object v13, v3

    .line 20
    check-cast v13, Ljava/lang/String;

    .line 21
    .line 22
    iget-object v14, v2, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 23
    .line 24
    invoke-virtual {v14, v10}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v15

    .line 28
    if-eqz v15, :cond_5

    .line 29
    .line 30
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_5

    .line 35
    .line 36
    const-string v3, "user_nickname"

    .line 37
    .line 38
    invoke-interface {v15, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    iget-object v3, v2, Lcom/sgscq/vpn/handler/k0;->c:Landroid/content/SharedPreferences;

    .line 42
    .line 43
    invoke-static {v10, v15, v1, v3}, Lcom/sgscq/vpn/cloud/m0;->Y1(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Landroid/content/SharedPreferences;)Z

    .line 44
    .line 45
    .line 46
    invoke-virtual {v14, v10, v15}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    long-to-int v4, v3

    .line 54
    invoke-virtual {v2}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    int-to-long v5, v1

    .line 59
    invoke-virtual {v2, v5, v6, v15}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v8

    .line 63
    const-string v1, "user_gold"

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-virtual {v2, v3, v1, v15}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    const-string v1, "user_energy"

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-virtual {v2, v3, v1, v15}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    const-string v1, "user_power"

    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    invoke-virtual {v2, v3, v1, v15}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    iget-object v3, v2, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 94
    .line 95
    move-object v11, v15

    .line 96
    invoke-virtual/range {v3 .. v11}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const-string v3, "first_wine_general"

    .line 101
    .line 102
    const-string v4, "0"

    .line 103
    .line 104
    invoke-interface {v15, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    const-string v4, "}"

    .line 117
    .line 118
    const-string v5, ",\"cmn\":"

    .line 119
    .line 120
    const-string v6, "\",\"nickname\":\""

    .line 121
    .line 122
    const-string v7, "{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"user_nickname\":\""

    .line 123
    .line 124
    if-nez v3, :cond_0

    .line 125
    .line 126
    const/4 v3, 0x0

    .line 127
    new-array v3, v3, [Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v14, v15, v1, v3}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    new-instance v8, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-static {v13}, Lcom/sgscq/vpn/p5;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-static {v13}, Lcom/sgscq/vpn/p5;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v6, "\",\"user_info\":"

    .line 156
    .line 157
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v2, v1}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    return-object v1

    .line 185
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    .line 186
    .line 187
    invoke-direct {v3, v15}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 188
    .line 189
    .line 190
    new-instance v8, Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .line 194
    .line 195
    new-instance v9, Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .line 199
    .line 200
    new-instance v10, Ljava/util/ArrayList;

    .line 201
    .line 202
    const-string v11, "General"

    .line 203
    .line 204
    invoke-static {v11, v15}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 209
    .line 210
    .line 211
    const-string v0, "add"

    .line 212
    .line 213
    move-object/from16 v16, v2

    .line 214
    .line 215
    const-string v2, "upd"

    .line 216
    .line 217
    filled-new-array {v0, v9, v2, v10}, [Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v9

    .line 221
    const-string v10, "del"

    .line 222
    .line 223
    invoke-static {v10, v8, v9, v3, v11}, Lc/a;->m(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 224
    .line 225
    .line 226
    move-result-object v8

    .line 227
    new-instance v9, Ljava/util/ArrayList;

    .line 228
    .line 229
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .line 231
    .line 232
    move-object/from16 p1, v4

    .line 233
    .line 234
    new-instance v4, Ljava/util/ArrayList;

    .line 235
    .line 236
    move-object/from16 v17, v5

    .line 237
    .line 238
    const-string v5, "Skill"

    .line 239
    .line 240
    move-object/from16 v18, v6

    .line 241
    .line 242
    invoke-static {v5, v15}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 247
    .line 248
    .line 249
    filled-new-array {v0, v9, v2, v4}, [Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    invoke-static {v10, v8, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    new-instance v4, Ljava/util/ArrayList;

    .line 261
    .line 262
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    .line 267
    .line 268
    invoke-static {v15}, Lcom/sgscq/vpn/h5;->h0(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    new-instance v8, Ljava/util/ArrayList;

    .line 273
    .line 274
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .line 276
    .line 277
    filled-new-array {v0, v6, v2, v8}, [Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    const-string v8, "TeamGeneral"

    .line 282
    .line 283
    invoke-static {v10, v4, v6, v3, v8}, Lc/a;->m(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    const-string v6, "Item"

    .line 288
    .line 289
    invoke-static {v6, v15}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 290
    .line 291
    .line 292
    move-result-object v9

    .line 293
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 294
    .line 295
    .line 296
    move-result-object v9

    .line 297
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 298
    .line 299
    .line 300
    move-result v19

    .line 301
    if-eqz v19, :cond_2

    .line 302
    .line 303
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v19

    .line 307
    move-object/from16 v20, v9

    .line 308
    .line 309
    move-object/from16 v9, v19

    .line 310
    .line 311
    check-cast v9, Ljava/util/Map;

    .line 312
    .line 313
    move-object/from16 v19, v13

    .line 314
    .line 315
    const-string v13, "id"

    .line 316
    .line 317
    move-object/from16 v21, v7

    .line 318
    .line 319
    const-string v7, "item_id"

    .line 320
    .line 321
    move-object/from16 v22, v15

    .line 322
    .line 323
    const-string v15, "720001"

    .line 324
    .line 325
    invoke-static {v9, v13, v12, v7, v15}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 326
    .line 327
    .line 328
    move-result v7

    .line 329
    if-eqz v7, :cond_1

    .line 330
    .line 331
    goto :goto_1

    .line 332
    :cond_1
    move-object/from16 v13, v19

    .line 333
    .line 334
    move-object/from16 v9, v20

    .line 335
    .line 336
    move-object/from16 v7, v21

    .line 337
    .line 338
    move-object/from16 v15, v22

    .line 339
    .line 340
    goto :goto_0

    .line 341
    :cond_2
    move-object/from16 v21, v7

    .line 342
    .line 343
    move-object/from16 v19, v13

    .line 344
    .line 345
    move-object/from16 v22, v15

    .line 346
    .line 347
    const/4 v9, 0x0

    .line 348
    :goto_1
    if-eqz v9, :cond_3

    .line 349
    .line 350
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    .line 354
    .line 355
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .line 357
    .line 358
    new-instance v9, Ljava/util/ArrayList;

    .line 359
    .line 360
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .line 362
    .line 363
    filled-new-array {v0, v9, v2, v4}, [Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-static {v10, v7, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    filled-new-array {v11, v5, v8, v6}, [Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-virtual {v14, v3, v1, v0}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    .line 384
    .line 385
    invoke-static {v11, v3}, Lcom/sgscq/vpn/h5;->z0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 390
    .line 391
    .line 392
    invoke-static {v5, v3}, Lcom/sgscq/vpn/h5;->z0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v4

    .line 396
    move-object/from16 v5, v22

    .line 397
    .line 398
    invoke-virtual {v14, v5}, Lcom/sgscq/vpn/h5;->j0(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 399
    .line 400
    .line 401
    move-result-object v7

    .line 402
    invoke-static {v7}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v7

    .line 406
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 407
    .line 408
    .line 409
    invoke-static {v6, v3}, Lcom/sgscq/vpn/h5;->z0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v3

    .line 413
    const-string v6, "user_map_step"

    .line 414
    .line 415
    invoke-interface {v5, v6, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v6

    .line 419
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v6

    .line 423
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 424
    .line 425
    .line 426
    invoke-static {v6}, Lcom/sgscq/vpn/h5;->H0(Ljava/lang/String;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v6

    .line 430
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 431
    .line 432
    .line 433
    move-result v8

    .line 434
    if-eqz v8, :cond_4

    .line 435
    .line 436
    invoke-virtual {v14}, Lcom/sgscq/vpn/h5;->Z()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v6

    .line 440
    :cond_4
    const-string v8, "105"

    .line 441
    .line 442
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 443
    .line 444
    .line 445
    move-result v8

    .line 446
    invoke-virtual {v14, v6, v5, v8}, Lcom/sgscq/vpn/h5;->o(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v5

    .line 450
    new-instance v6, Ljava/lang/StringBuilder;

    .line 451
    .line 452
    move-object/from16 v8, v21

    .line 453
    .line 454
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    invoke-static/range {v19 .. v19}, Lcom/sgscq/vpn/p5;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v8

    .line 461
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    move-object/from16 v8, v18

    .line 465
    .line 466
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-static/range {v19 .. v19}, Lcom/sgscq/vpn/p5;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v8

    .line 473
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    const-string v8, "\",\"map_info\":"

    .line 477
    .line 478
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    const-string v5, ",\"user_info\":"

    .line 485
    .line 486
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    const-string v1, ",\"general_info\":"

    .line 497
    .line 498
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    const-string v1, ",\"General\":"

    .line 505
    .line 506
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    const-string v1, ",\"skill_info\":"

    .line 510
    .line 511
    const-string v5, ",\"Skill\":"

    .line 512
    .line 513
    invoke-static {v6, v2, v1, v4, v5}, Lc/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    const-string v1, ",\"team_info\":"

    .line 517
    .line 518
    const-string v2, ",\"TeamGeneral\":"

    .line 519
    .line 520
    invoke-static {v6, v4, v1, v7, v2}, Lc/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    const-string v1, ",\"item_info\":"

    .line 524
    .line 525
    const-string v2, ",\"Item\":"

    .line 526
    .line 527
    invoke-static {v6, v7, v1, v3, v2}, Lc/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    move-object/from16 v1, v17

    .line 534
    .line 535
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    move-object/from16 v0, p1

    .line 542
    .line 543
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    goto :goto_2

    .line 551
    :cond_5
    move-object/from16 v16, v2

    .line 552
    .line 553
    const-string v0, "{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\"}"

    .line 554
    .line 555
    :goto_2
    move-object/from16 v1, v16

    .line 556
    .line 557
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    return-object v0
.end method

.method public final e(Ljava/util/Map;)[B
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/sgscq/vpn/handler/d;->a:Lcom/sgscq/vpn/handler/k0;

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iget-object v4, v2, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 12
    .line 13
    invoke-virtual {v4, v3}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    if-nez v5, :cond_0

    .line 18
    .line 19
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    :cond_0
    const-string v6, "message"

    .line 25
    .line 26
    invoke-static {v6, v1}, Lcom/sgscq/vpn/handler/d;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-eqz v7, :cond_1

    .line 35
    .line 36
    const-string v6, "content"

    .line 37
    .line 38
    invoke-static {v6, v1}, Lcom/sgscq/vpn/handler/d;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-eqz v7, :cond_2

    .line 47
    .line 48
    const-string v6, "msg"

    .line 49
    .line 50
    invoke-static {v6, v1}, Lcom/sgscq/vpn/handler/d;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    :cond_2
    const-string v1, "last_leave_msg"

    .line 55
    .line 56
    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    const-string v1, "0"

    .line 60
    .line 61
    const-string v6, "leave_msg_count"

    .line 62
    .line 63
    invoke-interface {v5, v6, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const/4 v7, 0x0

    .line 72
    invoke-static {v1, v7}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    add-int/lit8 v1, v1, 0x1

    .line 77
    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 86
    .line 87
    .line 88
    move-result-wide v8

    .line 89
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v6, "leave_msg_time"

    .line 94
    .line 95
    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const-string v8, "code"

    .line 103
    .line 104
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    const-string v10, "result"

    .line 109
    .line 110
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 111
    .line 112
    const-string v12, "msg"

    .line 113
    .line 114
    const-string v13, "success"

    .line 115
    .line 116
    const-string v14, "error_code"

    .line 117
    .line 118
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v15

    .line 122
    const-string v16, "return_info"

    .line 123
    .line 124
    const-string v6, "result"

    .line 125
    .line 126
    move-object/from16 v20, v2

    .line 127
    .line 128
    new-array v2, v7, [Ljava/lang/Object;

    .line 129
    .line 130
    invoke-static {v6, v11, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 131
    .line 132
    .line 133
    move-result-object v17

    .line 134
    const-string v18, "cmn_modules"

    .line 135
    .line 136
    const-string v19, "Player"

    .line 137
    .line 138
    filled-new-array/range {v8 .. v19}, [Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    const-string v6, "ret"

    .line 143
    .line 144
    invoke-static {v6, v1, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v4, v3, v5}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v3, v5}, Lcom/sgscq/vpn/handler/d;->i(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-static {v3}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    const-string v6, "user_info"

    .line 164
    .line 165
    invoke-interface {v1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    new-array v3, v7, [Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v4, v5, v2, v3}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    const-string v3, "cmn"

    .line 179
    .line 180
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    move-object/from16 v2, v20

    .line 188
    .line 189
    invoke-virtual {v2, v1}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    return-object v1
.end method

.method public final f(Ljava/util/Map;)[B
    .locals 54

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/sgscq/vpn/handler/d;->a:Lcom/sgscq/vpn/handler/k0;

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, v1, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v10

    .line 17
    const-string v11, "pk_id"

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x1

    .line 21
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v12

    .line 25
    const-string v13, "item_num"

    .line 26
    .line 27
    const-string v14, "num"

    .line 28
    .line 29
    const-string v15, "upd"

    .line 30
    .line 31
    const-string v9, ""

    .line 32
    .line 33
    const-string v8, "add"

    .line 34
    .line 35
    const-string v7, "status"

    .line 36
    .line 37
    const-string v5, "Item"

    .line 38
    .line 39
    if-eqz v10, :cond_10

    .line 40
    .line 41
    invoke-static {v10}, Lcom/sgscq/vpn/handler/m;->f(Ljava/util/Map;)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-nez v6, :cond_2

    .line 46
    .line 47
    const-string v6, "EvolutionInfo"

    .line 48
    .line 49
    invoke-static {v6, v10}, Lcom/sgscq/vpn/handler/m;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v16

    .line 61
    if-eqz v16, :cond_1

    .line 62
    .line 63
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v16

    .line 67
    move-object/from16 v0, v16

    .line 68
    .line 69
    check-cast v0, Ljava/util/Map;

    .line 70
    .line 71
    invoke-static {v4, v7, v0}, Lcom/sgscq/vpn/handler/m;->g(ILjava/lang/String;Ljava/util/Map;)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const/4 v4, 0x1

    .line 76
    if-ne v0, v4, :cond_0

    .line 77
    .line 78
    const/4 v0, 0x1

    .line 79
    goto :goto_1

    .line 80
    :cond_0
    const/4 v4, 0x0

    .line 81
    move-object/from16 v0, p0

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    const/4 v0, 0x0

    .line 85
    :goto_1
    if-nez v0, :cond_2

    .line 86
    .line 87
    move-object/from16 v19, v2

    .line 88
    .line 89
    move-object/from16 v20, v3

    .line 90
    .line 91
    move-object/from16 v17, v7

    .line 92
    .line 93
    move-object/from16 v21, v11

    .line 94
    .line 95
    move-object/from16 v22, v13

    .line 96
    .line 97
    goto/16 :goto_b

    .line 98
    .line 99
    :cond_2
    const-string v0, "GeneralSoul"

    .line 100
    .line 101
    const-string v4, "EquipmentPiece"

    .line 102
    .line 103
    const-string v6, "SkillPiece"

    .line 104
    .line 105
    filled-new-array {v5, v6, v0, v4}, [Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const/4 v4, 0x0

    .line 110
    const/4 v6, 0x0

    .line 111
    move/from16 p1, v6

    .line 112
    .line 113
    :goto_2
    const/4 v6, 0x4

    .line 114
    if-ge v4, v6, :cond_f

    .line 115
    .line 116
    aget-object v6, v0, v4

    .line 117
    .line 118
    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    move-object/from16 v16, v0

    .line 123
    .line 124
    instance-of v0, v6, Ljava/util/Map;

    .line 125
    .line 126
    if-nez v0, :cond_3

    .line 127
    .line 128
    move-object/from16 v17, v7

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_3
    check-cast v6, Ljava/util/Map;

    .line 132
    .line 133
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    move-object/from16 v17, v7

    .line 138
    .line 139
    instance-of v7, v0, Ljava/util/List;

    .line 140
    .line 141
    if-nez v7, :cond_4

    .line 142
    .line 143
    :goto_3
    move/from16 v0, p1

    .line 144
    .line 145
    move-object/from16 v19, v2

    .line 146
    .line 147
    move-object/from16 v20, v3

    .line 148
    .line 149
    move-object/from16 v21, v11

    .line 150
    .line 151
    move-object/from16 v22, v13

    .line 152
    .line 153
    goto/16 :goto_a

    .line 154
    .line 155
    :cond_4
    check-cast v0, Ljava/util/List;

    .line 156
    .line 157
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    move/from16 v7, p1

    .line 162
    .line 163
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v18

    .line 167
    if-eqz v18, :cond_e

    .line 168
    .line 169
    move/from16 p1, v7

    .line 170
    .line 171
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    move-object/from16 v18, v0

    .line 176
    .line 177
    instance-of v0, v7, Ljava/util/Map;

    .line 178
    .line 179
    if-nez v0, :cond_5

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_5
    check-cast v7, Ljava/util/Map;

    .line 183
    .line 184
    invoke-interface {v7, v11, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 193
    .line 194
    .line 195
    move-result v19

    .line 196
    if-eqz v19, :cond_6

    .line 197
    .line 198
    :goto_5
    move-object/from16 v19, v2

    .line 199
    .line 200
    move-object/from16 v20, v3

    .line 201
    .line 202
    move-object/from16 v21, v11

    .line 203
    .line 204
    goto :goto_6

    .line 205
    :cond_6
    move-object/from16 v19, v2

    .line 206
    .line 207
    invoke-static {v7}, Lcom/sgscq/vpn/handler/m;->h(Ljava/util/Map;)I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    move-object/from16 v20, v3

    .line 212
    .line 213
    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    invoke-static {v0, v3, v2}, Lcom/sgscq/vpn/handler/m;->e(Ljava/lang/String;Ljava/lang/Object;I)Ljava/util/Map;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    move-object/from16 v21, v11

    .line 222
    .line 223
    const-string v11, "update_list"

    .line 224
    .line 225
    if-nez v3, :cond_7

    .line 226
    .line 227
    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-static {v0, v3, v2}, Lcom/sgscq/vpn/handler/m;->e(Ljava/lang/String;Ljava/lang/Object;I)Ljava/util/Map;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    :cond_7
    if-nez v3, :cond_8

    .line 236
    .line 237
    :goto_6
    move/from16 v7, p1

    .line 238
    .line 239
    move-object/from16 v0, v18

    .line 240
    .line 241
    move-object/from16 v2, v19

    .line 242
    .line 243
    move-object/from16 v3, v20

    .line 244
    .line 245
    move-object/from16 v11, v21

    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_8
    invoke-static {v3}, Lcom/sgscq/vpn/handler/m;->h(Ljava/util/Map;)I

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    invoke-interface {v7, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    invoke-interface {v7, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    const-string v3, "general_soul_num"

    .line 267
    .line 268
    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v22

    .line 272
    if-eqz v22, :cond_9

    .line 273
    .line 274
    move-object/from16 v22, v13

    .line 275
    .line 276
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 277
    .line 278
    .line 279
    move-result-object v13

    .line 280
    invoke-interface {v7, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    goto :goto_7

    .line 284
    :cond_9
    move-object/from16 v22, v13

    .line 285
    .line 286
    :goto_7
    const-string v3, "equipment_piece_num"

    .line 287
    .line 288
    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v13

    .line 292
    if-eqz v13, :cond_a

    .line 293
    .line 294
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 295
    .line 296
    .line 297
    move-result-object v13

    .line 298
    invoke-interface {v7, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    :cond_a
    const-string v3, "skill_piece_num"

    .line 302
    .line 303
    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v13

    .line 307
    if-eqz v13, :cond_b

    .line 308
    .line 309
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    invoke-interface {v7, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    :cond_b
    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    instance-of v3, v2, Ljava/util/List;

    .line 321
    .line 322
    const/4 v7, 0x3

    .line 323
    if-nez v3, :cond_c

    .line 324
    .line 325
    goto :goto_8

    .line 326
    :cond_c
    check-cast v2, Ljava/util/List;

    .line 327
    .line 328
    new-instance v3, Lcom/sgscq/vpn/r2;

    .line 329
    .line 330
    invoke-direct {v3, v0, v7}, Lcom/sgscq/vpn/r2;-><init>(Ljava/lang/String;I)V

    .line 331
    .line 332
    .line 333
    invoke-interface {v2, v3}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 334
    .line 335
    .line 336
    :goto_8
    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    instance-of v3, v2, Ljava/util/List;

    .line 341
    .line 342
    if-nez v3, :cond_d

    .line 343
    .line 344
    goto :goto_9

    .line 345
    :cond_d
    check-cast v2, Ljava/util/List;

    .line 346
    .line 347
    new-instance v3, Lcom/sgscq/vpn/r2;

    .line 348
    .line 349
    invoke-direct {v3, v0, v7}, Lcom/sgscq/vpn/r2;-><init>(Ljava/lang/String;I)V

    .line 350
    .line 351
    .line 352
    invoke-interface {v2, v3}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 353
    .line 354
    .line 355
    :goto_9
    const/4 v7, 0x1

    .line 356
    move-object/from16 v0, v18

    .line 357
    .line 358
    move-object/from16 v2, v19

    .line 359
    .line 360
    move-object/from16 v3, v20

    .line 361
    .line 362
    move-object/from16 v11, v21

    .line 363
    .line 364
    move-object/from16 v13, v22

    .line 365
    .line 366
    goto/16 :goto_4

    .line 367
    .line 368
    :cond_e
    move-object/from16 v19, v2

    .line 369
    .line 370
    move-object/from16 v20, v3

    .line 371
    .line 372
    move/from16 p1, v7

    .line 373
    .line 374
    move-object/from16 v21, v11

    .line 375
    .line 376
    move-object/from16 v22, v13

    .line 377
    .line 378
    move/from16 v0, p1

    .line 379
    .line 380
    :goto_a
    add-int/lit8 v4, v4, 0x1

    .line 381
    .line 382
    move/from16 p1, v0

    .line 383
    .line 384
    move-object/from16 v0, v16

    .line 385
    .line 386
    move-object/from16 v7, v17

    .line 387
    .line 388
    move-object/from16 v2, v19

    .line 389
    .line 390
    move-object/from16 v3, v20

    .line 391
    .line 392
    move-object/from16 v11, v21

    .line 393
    .line 394
    move-object/from16 v13, v22

    .line 395
    .line 396
    goto/16 :goto_2

    .line 397
    .line 398
    :cond_f
    move-object/from16 v19, v2

    .line 399
    .line 400
    move-object/from16 v20, v3

    .line 401
    .line 402
    move-object/from16 v17, v7

    .line 403
    .line 404
    move-object/from16 v21, v11

    .line 405
    .line 406
    move-object/from16 v22, v13

    .line 407
    .line 408
    move/from16 v6, p1

    .line 409
    .line 410
    goto :goto_c

    .line 411
    :cond_10
    move-object/from16 v19, v2

    .line 412
    .line 413
    move-object/from16 v20, v3

    .line 414
    .line 415
    move-object/from16 v17, v7

    .line 416
    .line 417
    move-object/from16 v21, v11

    .line 418
    .line 419
    move-object/from16 v22, v13

    .line 420
    .line 421
    sget-object v0, Lcom/sgscq/vpn/handler/m;->a:[Ljava/lang/String;

    .line 422
    .line 423
    :goto_b
    const/4 v6, 0x0

    .line 424
    :goto_c
    const-string v0, "Skill"

    .line 425
    .line 426
    const-string v2, "General"

    .line 427
    .line 428
    const-string v3, "BuddyGeneral"

    .line 429
    .line 430
    const-string v11, "TeamGeneral"

    .line 431
    .line 432
    if-nez v10, :cond_11

    .line 433
    .line 434
    const/4 v4, 0x0

    .line 435
    goto :goto_e

    .line 436
    :cond_11
    filled-new-array {v0, v2, v11, v3}, [Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v4

    .line 440
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 441
    .line 442
    .line 443
    move-result-object v4

    .line 444
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 445
    .line 446
    .line 447
    move-result-object v4

    .line 448
    const/4 v7, 0x0

    .line 449
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 450
    .line 451
    .line 452
    move-result v13

    .line 453
    if-eqz v13, :cond_12

    .line 454
    .line 455
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v13

    .line 459
    check-cast v13, Ljava/lang/String;

    .line 460
    .line 461
    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v13

    .line 465
    invoke-static {v13}, Lcom/sgscq/vpn/handler/d;->k(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move-result v13

    .line 469
    or-int/2addr v7, v13

    .line 470
    goto :goto_d

    .line 471
    :cond_12
    move v4, v7

    .line 472
    :goto_e
    or-int/2addr v4, v6

    .line 473
    iget-object v13, v1, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 474
    .line 475
    const-string v7, "0"

    .line 476
    .line 477
    if-nez v10, :cond_13

    .line 478
    .line 479
    move-object/from16 v16, v1

    .line 480
    .line 481
    move-object/from16 p1, v3

    .line 482
    .line 483
    move-object/from16 v18, v11

    .line 484
    .line 485
    goto :goto_f

    .line 486
    :cond_13
    invoke-static {v13}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 487
    .line 488
    .line 489
    move-result-object v6

    .line 490
    move-object/from16 v16, v1

    .line 491
    .line 492
    const-string v1, "EliteMap_Unlock_Level"

    .line 493
    .line 494
    move-object/from16 p1, v3

    .line 495
    .line 496
    const/16 v3, 0x9

    .line 497
    .line 498
    invoke-virtual {v6, v1, v3}, Lcom/sgscq/vpn/w1;->U0(Ljava/lang/String;I)I

    .line 499
    .line 500
    .line 501
    move-result v1

    .line 502
    const-string v3, "user_level"

    .line 503
    .line 504
    invoke-interface {v10, v3, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v3

    .line 508
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v3

    .line 512
    move-object/from16 v18, v11

    .line 513
    .line 514
    const/4 v11, 0x1

    .line 515
    invoke-static {v3, v11}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 516
    .line 517
    .line 518
    move-result v3

    .line 519
    if-ge v3, v1, :cond_14

    .line 520
    .line 521
    :goto_f
    const/4 v1, 0x0

    .line 522
    move-object/from16 v23, v2

    .line 523
    .line 524
    goto :goto_13

    .line 525
    :cond_14
    const-string v1, "user_elite_map_step"

    .line 526
    .line 527
    invoke-interface {v10, v1, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v3

    .line 531
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v3

    .line 535
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v3

    .line 539
    :try_start_0
    invoke-virtual {v6}, Lcom/sgscq/vpn/w1;->g0()Ljava/util/ArrayList;

    .line 540
    .line 541
    .line 542
    move-result-object v11

    .line 543
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 544
    .line 545
    .line 546
    move-result v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    if-nez v23, :cond_15

    .line 548
    .line 549
    move-object/from16 v23, v2

    .line 550
    .line 551
    const/4 v2, 0x0

    .line 552
    :try_start_1
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v2

    .line 556
    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 557
    .line 558
    goto :goto_10

    .line 559
    :catchall_0
    :cond_15
    move-object/from16 v23, v2

    .line 560
    .line 561
    :catchall_1
    const-string v2, "10501"

    .line 562
    .line 563
    :goto_10
    :try_start_2
    invoke-virtual {v6, v2, v2}, Lcom/sgscq/vpn/w1;->m0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 564
    .line 565
    .line 566
    move-result-object v6

    .line 567
    if-eqz v6, :cond_16

    .line 568
    .line 569
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 570
    .line 571
    .line 572
    move-result v11

    .line 573
    if-nez v11, :cond_16

    .line 574
    .line 575
    const/4 v11, 0x0

    .line 576
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v6

    .line 580
    check-cast v6, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 581
    .line 582
    goto :goto_11

    .line 583
    :catchall_2
    :cond_16
    const-string v6, "1050100101"

    .line 584
    .line 585
    :goto_11
    const-string v11, "105"

    .line 586
    .line 587
    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 588
    .line 589
    .line 590
    move-result v24

    .line 591
    if-nez v24, :cond_17

    .line 592
    .line 593
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 594
    .line 595
    .line 596
    move-result v3

    .line 597
    if-nez v3, :cond_17

    .line 598
    .line 599
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    const/4 v1, 0x1

    .line 603
    goto :goto_12

    .line 604
    :cond_17
    const/4 v1, 0x0

    .line 605
    :goto_12
    const-string v2, "user_elite_position_step"

    .line 606
    .line 607
    invoke-interface {v10, v2, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v3

    .line 611
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v3

    .line 615
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v3

    .line 619
    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 620
    .line 621
    .line 622
    move-result v3

    .line 623
    if-nez v3, :cond_18

    .line 624
    .line 625
    invoke-interface {v10, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    const/4 v1, 0x1

    .line 629
    :cond_18
    :goto_13
    or-int/2addr v1, v4

    .line 630
    invoke-static {v13}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 631
    .line 632
    .line 633
    move-result-object v2

    .line 634
    invoke-static {v2, v10}, Lcom/sgscq/vpn/handler/d;->j(Lcom/sgscq/vpn/w1;Ljava/util/Map;)Z

    .line 635
    .line 636
    .line 637
    move-result v3

    .line 638
    or-int/2addr v1, v3

    .line 639
    const-string v3, "position"

    .line 640
    .line 641
    const-string v11, "Equipment"

    .line 642
    .line 643
    const-string v6, "general_id"

    .line 644
    .line 645
    const-string v4, "general_pk_id"

    .line 646
    .line 647
    move-object/from16 v24, v2

    .line 648
    .line 649
    const-string v2, "null"

    .line 650
    .line 651
    move/from16 v25, v1

    .line 652
    .line 653
    const-string v1, "1"

    .line 654
    .line 655
    move-object/from16 v26, v12

    .line 656
    .line 657
    const-string v12, "id"

    .line 658
    .line 659
    if-nez v10, :cond_19

    .line 660
    .line 661
    move-object/from16 v27, v4

    .line 662
    .line 663
    :goto_14
    move-object/from16 v28, v6

    .line 664
    .line 665
    goto :goto_15

    .line 666
    :cond_19
    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v5

    .line 670
    move-object/from16 v27, v4

    .line 671
    .line 672
    instance-of v4, v5, Ljava/util/Map;

    .line 673
    .line 674
    if-nez v4, :cond_1a

    .line 675
    .line 676
    goto :goto_14

    .line 677
    :cond_1a
    check-cast v5, Ljava/util/Map;

    .line 678
    .line 679
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    move-result-object v4

    .line 683
    move-object/from16 v28, v6

    .line 684
    .line 685
    instance-of v6, v4, Ljava/util/List;

    .line 686
    .line 687
    if-nez v6, :cond_1b

    .line 688
    .line 689
    :goto_15
    const/4 v4, 0x0

    .line 690
    move-object/from16 v50, v0

    .line 691
    .line 692
    move-object/from16 v38, v2

    .line 693
    .line 694
    move-object/from16 v52, v3

    .line 695
    .line 696
    move-object v0, v7

    .line 697
    move-object v7, v10

    .line 698
    move-object v9, v11

    .line 699
    move-object/from16 v32, v12

    .line 700
    .line 701
    move-object/from16 v29, v13

    .line 702
    .line 703
    move-object/from16 v45, v17

    .line 704
    .line 705
    move-object/from16 v11, v27

    .line 706
    .line 707
    move-object/from16 v12, v28

    .line 708
    .line 709
    move-object/from16 v28, v1

    .line 710
    .line 711
    move-object/from16 v1, v21

    .line 712
    .line 713
    goto/16 :goto_30

    .line 714
    .line 715
    :cond_1b
    invoke-static {v13}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 716
    .line 717
    .line 718
    move-result-object v6

    .line 719
    check-cast v4, Ljava/util/List;

    .line 720
    .line 721
    move-object/from16 v29, v13

    .line 722
    .line 723
    new-instance v13, Ljava/util/ArrayList;

    .line 724
    .line 725
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 726
    .line 727
    .line 728
    move-object/from16 v30, v11

    .line 729
    .line 730
    new-instance v11, Ljava/util/ArrayList;

    .line 731
    .line 732
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 733
    .line 734
    .line 735
    move-object/from16 v31, v3

    .line 736
    .line 737
    const-string v3, "del"

    .line 738
    .line 739
    move-object/from16 v32, v8

    .line 740
    .line 741
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    .line 743
    .line 744
    move-result-object v8

    .line 745
    move-object/from16 v33, v3

    .line 746
    .line 747
    instance-of v3, v8, Ljava/util/List;

    .line 748
    .line 749
    if-eqz v3, :cond_1c

    .line 750
    .line 751
    check-cast v8, Ljava/util/List;

    .line 752
    .line 753
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 754
    .line 755
    .line 756
    :cond_1c
    new-instance v3, Ljava/util/ArrayList;

    .line 757
    .line 758
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 759
    .line 760
    .line 761
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    move-result-object v8

    .line 765
    move-object/from16 v34, v5

    .line 766
    .line 767
    instance-of v5, v8, Ljava/util/List;

    .line 768
    .line 769
    if-eqz v5, :cond_1e

    .line 770
    .line 771
    check-cast v8, Ljava/util/List;

    .line 772
    .line 773
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 774
    .line 775
    .line 776
    move-result-object v5

    .line 777
    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 778
    .line 779
    .line 780
    move-result v8

    .line 781
    if-eqz v8, :cond_1e

    .line 782
    .line 783
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 784
    .line 785
    .line 786
    move-result-object v8

    .line 787
    move-object/from16 v35, v5

    .line 788
    .line 789
    instance-of v5, v8, Ljava/util/Map;

    .line 790
    .line 791
    if-eqz v5, :cond_1d

    .line 792
    .line 793
    check-cast v8, Ljava/util/Map;

    .line 794
    .line 795
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    .line 797
    .line 798
    :cond_1d
    move-object/from16 v5, v35

    .line 799
    .line 800
    goto :goto_16

    .line 801
    :cond_1e
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 802
    .line 803
    .line 804
    move-result-object v35

    .line 805
    const/4 v4, 0x0

    .line 806
    move/from16 v36, v4

    .line 807
    .line 808
    :goto_17
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    .line 809
    .line 810
    .line 811
    move-result v4

    .line 812
    if-eqz v4, :cond_41

    .line 813
    .line 814
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    move-result-object v4

    .line 818
    move-object v8, v4

    .line 819
    check-cast v8, Ljava/util/Map;

    .line 820
    .line 821
    if-nez v8, :cond_1f

    .line 822
    .line 823
    move-object/from16 v37, v14

    .line 824
    .line 825
    move-object/from16 v4, v21

    .line 826
    .line 827
    move-object/from16 v14, v22

    .line 828
    .line 829
    move-object/from16 v22, v9

    .line 830
    .line 831
    goto/16 :goto_19

    .line 832
    .line 833
    :cond_1f
    invoke-interface {v8, v12, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    .line 835
    .line 836
    move-result-object v4

    .line 837
    const-string v5, "item_id"

    .line 838
    .line 839
    invoke-interface {v8, v5, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    .line 841
    .line 842
    move-result-object v4

    .line 843
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 844
    .line 845
    .line 846
    move-result-object v4

    .line 847
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 848
    .line 849
    .line 850
    move-result-object v5

    .line 851
    invoke-interface {v8, v14, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    .line 853
    .line 854
    move-result-object v4

    .line 855
    move-object/from16 v37, v14

    .line 856
    .line 857
    move-object/from16 v14, v22

    .line 858
    .line 859
    invoke-interface {v8, v14, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    .line 861
    .line 862
    move-result-object v4

    .line 863
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object v4

    .line 867
    move-object/from16 v22, v9

    .line 868
    .line 869
    const/4 v9, 0x1

    .line 870
    invoke-static {v4, v9}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    .line 871
    .line 872
    .line 873
    move-result v4

    .line 874
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    .line 875
    .line 876
    .line 877
    move-result v9

    .line 878
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 879
    .line 880
    .line 881
    move-result v4

    .line 882
    if-nez v4, :cond_40

    .line 883
    .line 884
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 885
    .line 886
    .line 887
    move-result v4

    .line 888
    if-nez v4, :cond_40

    .line 889
    .line 890
    const-string v4, "600045"

    .line 891
    .line 892
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 893
    .line 894
    .line 895
    move-result v4

    .line 896
    if-eqz v4, :cond_20

    .line 897
    .line 898
    goto/16 :goto_2c

    .line 899
    .line 900
    :cond_20
    const-string v4, "361001"

    .line 901
    .line 902
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 903
    .line 904
    .line 905
    move-result v4

    .line 906
    if-eqz v4, :cond_21

    .line 907
    .line 908
    const-string v4, "791487"

    .line 909
    .line 910
    goto :goto_18

    .line 911
    :cond_21
    const-string v4, "362001"

    .line 912
    .line 913
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 914
    .line 915
    .line 916
    move-result v4

    .line 917
    if-eqz v4, :cond_22

    .line 918
    .line 919
    const-string v4, "791488"

    .line 920
    .line 921
    goto :goto_18

    .line 922
    :cond_22
    const-string v4, "363001"

    .line 923
    .line 924
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 925
    .line 926
    .line 927
    move-result v4

    .line 928
    if-eqz v4, :cond_23

    .line 929
    .line 930
    const-string v4, "791489"

    .line 931
    .line 932
    goto :goto_18

    .line 933
    :cond_23
    const/4 v4, 0x0

    .line 934
    :goto_18
    if-eqz v4, :cond_24

    .line 935
    .line 936
    invoke-static {v10, v13, v4, v9}, Lcom/sgscq/vpn/handler/d;->b(Ljava/util/Map;Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 937
    .line 938
    .line 939
    move-object/from16 v4, v21

    .line 940
    .line 941
    invoke-interface {v8, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    .line 943
    .line 944
    move-result-object v5

    .line 945
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    .line 947
    .line 948
    const/16 v36, 0x1

    .line 949
    .line 950
    :goto_19
    move-object/from16 v38, v2

    .line 951
    .line 952
    move-object/from16 v39, v3

    .line 953
    .line 954
    move-object/from16 v21, v14

    .line 955
    .line 956
    goto :goto_1a

    .line 957
    :cond_24
    move-object/from16 v4, v21

    .line 958
    .line 959
    move-object/from16 v21, v14

    .line 960
    .line 961
    const-string v14, "600034"

    .line 962
    .line 963
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 964
    .line 965
    .line 966
    move-result v14

    .line 967
    if-eqz v14, :cond_27

    .line 968
    .line 969
    const/4 v14, 0x1

    .line 970
    invoke-static {v14, v9}, Ljava/lang/Math;->max(II)I

    .line 971
    .line 972
    .line 973
    move-result v9

    .line 974
    div-int/lit8 v14, v9, 0x32

    .line 975
    .line 976
    rem-int/lit8 v9, v9, 0x32

    .line 977
    .line 978
    move-object/from16 v38, v2

    .line 979
    .line 980
    move-object/from16 v39, v3

    .line 981
    .line 982
    int-to-double v2, v9

    .line 983
    const-wide/high16 v40, 0x4024000000000000L    # 10.0

    .line 984
    .line 985
    div-double v2, v2, v40

    .line 986
    .line 987
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 988
    .line 989
    .line 990
    move-result-wide v2

    .line 991
    double-to-int v2, v2

    .line 992
    if-lez v14, :cond_25

    .line 993
    .line 994
    const-string v3, "791460"

    .line 995
    .line 996
    invoke-static {v10, v13, v3, v14}, Lcom/sgscq/vpn/handler/d;->b(Ljava/util/Map;Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 997
    .line 998
    .line 999
    :cond_25
    if-lez v2, :cond_26

    .line 1000
    .line 1001
    const-string v3, "791458"

    .line 1002
    .line 1003
    invoke-static {v10, v13, v3, v2}, Lcom/sgscq/vpn/handler/d;->b(Ljava/util/Map;Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 1004
    .line 1005
    .line 1006
    :cond_26
    invoke-interface {v8, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v2

    .line 1010
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1011
    .line 1012
    .line 1013
    const/16 v36, 0x1

    .line 1014
    .line 1015
    :goto_1a
    move-object/from16 v50, v0

    .line 1016
    .line 1017
    move-object v2, v6

    .line 1018
    move-object v0, v7

    .line 1019
    move-object v7, v10

    .line 1020
    move-object v5, v11

    .line 1021
    move-object v3, v13

    .line 1022
    move-object/from16 v45, v17

    .line 1023
    .line 1024
    move-object/from16 v6, v26

    .line 1025
    .line 1026
    move-object/from16 v11, v27

    .line 1027
    .line 1028
    move-object/from16 v9, v30

    .line 1029
    .line 1030
    move-object/from16 v52, v31

    .line 1031
    .line 1032
    move-object/from16 v10, v32

    .line 1033
    .line 1034
    move-object/from16 v8, v33

    .line 1035
    .line 1036
    move-object/from16 v43, v34

    .line 1037
    .line 1038
    move-object/from16 v32, v12

    .line 1039
    .line 1040
    move-object/from16 v12, v28

    .line 1041
    .line 1042
    move-object/from16 v28, v1

    .line 1043
    .line 1044
    move-object v1, v4

    .line 1045
    goto/16 :goto_2e

    .line 1046
    .line 1047
    :cond_27
    move-object/from16 v38, v2

    .line 1048
    .line 1049
    move-object/from16 v39, v3

    .line 1050
    .line 1051
    const-string v2, "type"

    .line 1052
    .line 1053
    const-string v3, "item_type"

    .line 1054
    .line 1055
    const/4 v14, 0x0

    .line 1056
    invoke-static {v8, v2, v7, v3, v14}, Lc/a;->g(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 1057
    .line 1058
    .line 1059
    move-result v2

    .line 1060
    const/16 v3, 0x14

    .line 1061
    .line 1062
    if-ne v2, v3, :cond_28

    .line 1063
    .line 1064
    invoke-static {v9, v5, v10}, Lcom/sgscq/vpn/w1;->k(ILjava/lang/String;Ljava/util/Map;)V

    .line 1065
    .line 1066
    .line 1067
    goto :goto_1e

    .line 1068
    :cond_28
    const/16 v3, 0xf

    .line 1069
    .line 1070
    const-string v14, "2\\d{5}"

    .line 1071
    .line 1072
    if-ne v2, v3, :cond_29

    .line 1073
    .line 1074
    goto :goto_1c

    .line 1075
    :cond_29
    const-string v3, "9\\d{6}"

    .line 1076
    .line 1077
    invoke-virtual {v5, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 1078
    .line 1079
    .line 1080
    move-result v3

    .line 1081
    if-nez v3, :cond_2a

    .line 1082
    .line 1083
    goto :goto_1b

    .line 1084
    :cond_2a
    const/4 v3, 0x1

    .line 1085
    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v3

    .line 1089
    if-eqz v6, :cond_2c

    .line 1090
    .line 1091
    invoke-virtual {v6, v3}, Lcom/sgscq/vpn/w1;->z0(Ljava/lang/String;)Ljava/util/Map;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v40

    .line 1095
    if-nez v40, :cond_2c

    .line 1096
    .line 1097
    invoke-virtual {v3, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 1098
    .line 1099
    .line 1100
    move-result v3

    .line 1101
    if-eqz v3, :cond_2b

    .line 1102
    .line 1103
    goto :goto_1c

    .line 1104
    :cond_2b
    :goto_1b
    const/4 v3, 0x0

    .line 1105
    goto :goto_1d

    .line 1106
    :cond_2c
    :goto_1c
    const/4 v3, 0x1

    .line 1107
    :goto_1d
    if-eqz v3, :cond_2d

    .line 1108
    .line 1109
    invoke-static {v9, v5, v10}, Lcom/sgscq/vpn/cloud/m0;->c1(ILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 1110
    .line 1111
    .line 1112
    :goto_1e
    move-object/from16 v50, v0

    .line 1113
    .line 1114
    move-object/from16 v42, v4

    .line 1115
    .line 1116
    move-object v2, v6

    .line 1117
    move-object v0, v7

    .line 1118
    move-object/from16 v47, v8

    .line 1119
    .line 1120
    move-object v7, v10

    .line 1121
    move-object/from16 v40, v13

    .line 1122
    .line 1123
    move-object/from16 v45, v17

    .line 1124
    .line 1125
    move-object/from16 v6, v26

    .line 1126
    .line 1127
    move-object/from16 v9, v30

    .line 1128
    .line 1129
    move-object/from16 v52, v31

    .line 1130
    .line 1131
    move-object/from16 v10, v32

    .line 1132
    .line 1133
    move-object/from16 v8, v33

    .line 1134
    .line 1135
    move-object/from16 v43, v34

    .line 1136
    .line 1137
    move-object/from16 v32, v12

    .line 1138
    .line 1139
    move-object/from16 v12, v28

    .line 1140
    .line 1141
    move-object/from16 v28, v1

    .line 1142
    .line 1143
    move-object/from16 v53, v27

    .line 1144
    .line 1145
    move-object/from16 v27, v11

    .line 1146
    .line 1147
    move-object/from16 v11, v53

    .line 1148
    .line 1149
    goto/16 :goto_2a

    .line 1150
    .line 1151
    :cond_2d
    const-string v3, "get_time"

    .line 1152
    .line 1153
    move-object/from16 v40, v13

    .line 1154
    .line 1155
    const-string v13, "level"

    .line 1156
    .line 1157
    if-eqz v6, :cond_2f

    .line 1158
    .line 1159
    invoke-virtual {v6, v5}, Lcom/sgscq/vpn/w1;->z0(Ljava/lang/String;)Ljava/util/Map;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v41

    .line 1163
    if-nez v41, :cond_2e

    .line 1164
    .line 1165
    goto :goto_1f

    .line 1166
    :cond_2e
    move-object/from16 v42, v4

    .line 1167
    .line 1168
    move-object v2, v6

    .line 1169
    move-object/from16 v47, v8

    .line 1170
    .line 1171
    move-object/from16 v45, v17

    .line 1172
    .line 1173
    move-object/from16 v8, v31

    .line 1174
    .line 1175
    move-object/from16 v14, v33

    .line 1176
    .line 1177
    move-object/from16 v43, v34

    .line 1178
    .line 1179
    goto/16 :goto_28

    .line 1180
    .line 1181
    :cond_2f
    :goto_1f
    move-object/from16 v41, v4

    .line 1182
    .line 1183
    const/16 v4, 0x12

    .line 1184
    .line 1185
    if-eq v2, v4, :cond_3d

    .line 1186
    .line 1187
    invoke-virtual {v5, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 1188
    .line 1189
    .line 1190
    move-result v4

    .line 1191
    if-eqz v4, :cond_30

    .line 1192
    .line 1193
    goto/16 :goto_27

    .line 1194
    .line 1195
    :cond_30
    if-eqz v6, :cond_31

    .line 1196
    .line 1197
    invoke-virtual {v6, v5}, Lcom/sgscq/vpn/w1;->k1(Ljava/lang/String;)Ljava/util/Map;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v4

    .line 1201
    if-nez v4, :cond_32

    .line 1202
    .line 1203
    :cond_31
    const-string v4, "3\\d{5}"

    .line 1204
    .line 1205
    invoke-virtual {v5, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 1206
    .line 1207
    .line 1208
    move-result v4

    .line 1209
    if-eqz v4, :cond_34

    .line 1210
    .line 1211
    :cond_32
    const/4 v2, 0x0

    .line 1212
    :goto_20
    if-ge v2, v9, :cond_33

    .line 1213
    .line 1214
    invoke-static {v0, v10}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v14

    .line 1218
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 1219
    .line 1220
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1221
    .line 1222
    .line 1223
    move-object/from16 v42, v41

    .line 1224
    .line 1225
    move-object/from16 v41, v4

    .line 1226
    .line 1227
    move-object/from16 v53, v27

    .line 1228
    .line 1229
    move-object/from16 v27, v11

    .line 1230
    .line 1231
    move-object/from16 v11, v53

    .line 1232
    .line 1233
    move-object v4, v0

    .line 1234
    move-object/from16 v43, v34

    .line 1235
    .line 1236
    move-object/from16 v34, v5

    .line 1237
    .line 1238
    move-object v5, v10

    .line 1239
    move-object/from16 v44, v28

    .line 1240
    .line 1241
    move/from16 v28, v2

    .line 1242
    .line 1243
    move-object v2, v6

    .line 1244
    move-object/from16 v6, v41

    .line 1245
    .line 1246
    move-object/from16 v45, v17

    .line 1247
    .line 1248
    move-object/from16 v17, v0

    .line 1249
    .line 1250
    move-object v0, v7

    .line 1251
    move-object/from16 v7, v42

    .line 1252
    .line 1253
    move-object/from16 v47, v8

    .line 1254
    .line 1255
    move-object/from16 v46, v10

    .line 1256
    .line 1257
    move-object/from16 v10, v32

    .line 1258
    .line 1259
    move-object v8, v12

    .line 1260
    move-object/from16 v32, v12

    .line 1261
    .line 1262
    move v12, v9

    .line 1263
    move-object/from16 v9, v34

    .line 1264
    .line 1265
    invoke-static/range {v4 .. v9}, Lc/a;->x(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    .line 1267
    .line 1268
    const-string v4, "skill_id"

    .line 1269
    .line 1270
    const/4 v5, 0x0

    .line 1271
    invoke-static {v6, v4, v9, v5, v11}, Lcom/sgscq/vpn/handler/l;->b(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1272
    .line 1273
    .line 1274
    invoke-interface {v6, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    .line 1276
    .line 1277
    const-string v5, "skill_level"

    .line 1278
    .line 1279
    invoke-interface {v6, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    .line 1281
    .line 1282
    move-object/from16 v8, v31

    .line 1283
    .line 1284
    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    .line 1286
    .line 1287
    const-string v5, "pos"

    .line 1288
    .line 1289
    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    .line 1291
    .line 1292
    const-string v5, "skill_position"

    .line 1293
    .line 1294
    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    .line 1296
    .line 1297
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 1298
    .line 1299
    .line 1300
    move-result-wide v48

    .line 1301
    invoke-static/range {v48 .. v49}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v5

    .line 1305
    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    .line 1307
    .line 1308
    const-string v5, "is_natural"

    .line 1309
    .line 1310
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1311
    .line 1312
    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1313
    .line 1314
    .line 1315
    const-string v5, "exp"

    .line 1316
    .line 1317
    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    .line 1319
    .line 1320
    const-string v5, "advanced_level"

    .line 1321
    .line 1322
    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    .line 1324
    .line 1325
    invoke-virtual {v2, v9, v6}, Lcom/sgscq/vpn/w1;->S(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1326
    .line 1327
    .line 1328
    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1329
    .line 1330
    .line 1331
    new-instance v5, Ljava/util/ArrayList;

    .line 1332
    .line 1333
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1334
    .line 1335
    .line 1336
    new-instance v6, Ljava/util/ArrayList;

    .line 1337
    .line 1338
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1339
    .line 1340
    .line 1341
    filled-new-array {v15, v6, v10, v14}, [Ljava/lang/Object;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v6

    .line 1345
    move-object/from16 v14, v33

    .line 1346
    .line 1347
    invoke-static {v14, v5, v6}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v5

    .line 1351
    move-object/from16 v6, v17

    .line 1352
    .line 1353
    move-object/from16 v7, v46

    .line 1354
    .line 1355
    invoke-interface {v7, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    .line 1357
    .line 1358
    const/4 v5, 0x0

    .line 1359
    invoke-static {v4, v9, v5, v7}, Lcom/sgscq/vpn/w1;->b2(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 1360
    .line 1361
    .line 1362
    add-int/lit8 v4, v28, 0x1

    .line 1363
    .line 1364
    move-object v5, v9

    .line 1365
    move v9, v12

    .line 1366
    move-object/from16 v12, v32

    .line 1367
    .line 1368
    move-object/from16 v41, v42

    .line 1369
    .line 1370
    move-object/from16 v34, v43

    .line 1371
    .line 1372
    move-object/from16 v28, v44

    .line 1373
    .line 1374
    move-object/from16 v17, v45

    .line 1375
    .line 1376
    move-object/from16 v8, v47

    .line 1377
    .line 1378
    move-object/from16 v32, v10

    .line 1379
    .line 1380
    move-object v10, v7

    .line 1381
    move-object v7, v0

    .line 1382
    move-object v0, v6

    .line 1383
    move-object v6, v2

    .line 1384
    move v2, v4

    .line 1385
    move-object/from16 v53, v27

    .line 1386
    .line 1387
    move-object/from16 v27, v11

    .line 1388
    .line 1389
    move-object/from16 v11, v53

    .line 1390
    .line 1391
    goto/16 :goto_20

    .line 1392
    .line 1393
    :cond_33
    move-object v2, v6

    .line 1394
    move-object/from16 v47, v8

    .line 1395
    .line 1396
    move-object/from16 v45, v17

    .line 1397
    .line 1398
    move-object/from16 v43, v34

    .line 1399
    .line 1400
    move-object/from16 v42, v41

    .line 1401
    .line 1402
    move-object v6, v0

    .line 1403
    move-object v0, v7

    .line 1404
    move-object v7, v10

    .line 1405
    move-object/from16 v10, v32

    .line 1406
    .line 1407
    move-object/from16 v32, v12

    .line 1408
    .line 1409
    move-object/from16 v53, v27

    .line 1410
    .line 1411
    move-object/from16 v27, v11

    .line 1412
    .line 1413
    move-object/from16 v11, v53

    .line 1414
    .line 1415
    move-object/from16 v50, v6

    .line 1416
    .line 1417
    move-object/from16 v6, v26

    .line 1418
    .line 1419
    move-object/from16 v12, v28

    .line 1420
    .line 1421
    move-object/from16 v9, v30

    .line 1422
    .line 1423
    move-object/from16 v52, v31

    .line 1424
    .line 1425
    move-object/from16 v8, v33

    .line 1426
    .line 1427
    move-object/from16 v28, v1

    .line 1428
    .line 1429
    goto/16 :goto_2a

    .line 1430
    .line 1431
    :cond_34
    move v3, v2

    .line 1432
    move-object v2, v6

    .line 1433
    move-object/from16 v47, v8

    .line 1434
    .line 1435
    move-object/from16 v45, v17

    .line 1436
    .line 1437
    move-object/from16 v44, v28

    .line 1438
    .line 1439
    move-object/from16 v8, v31

    .line 1440
    .line 1441
    move-object/from16 v14, v33

    .line 1442
    .line 1443
    move-object/from16 v43, v34

    .line 1444
    .line 1445
    move-object/from16 v42, v41

    .line 1446
    .line 1447
    move-object v6, v0

    .line 1448
    move-object v0, v7

    .line 1449
    move-object v7, v10

    .line 1450
    move-object/from16 v10, v32

    .line 1451
    .line 1452
    move-object/from16 v32, v12

    .line 1453
    .line 1454
    move v12, v9

    .line 1455
    move-object v9, v5

    .line 1456
    move-object/from16 v53, v27

    .line 1457
    .line 1458
    move-object/from16 v27, v11

    .line 1459
    .line 1460
    move-object/from16 v11, v53

    .line 1461
    .line 1462
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v4

    .line 1466
    const-string v5, "100000"

    .line 1467
    .line 1468
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1469
    .line 1470
    .line 1471
    move-result v4

    .line 1472
    if-eqz v4, :cond_35

    .line 1473
    .line 1474
    goto :goto_22

    .line 1475
    :cond_35
    const/16 v4, 0x1f

    .line 1476
    .line 1477
    if-eq v3, v4, :cond_39

    .line 1478
    .line 1479
    if-eqz v2, :cond_36

    .line 1480
    .line 1481
    invoke-virtual {v2, v9}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v3

    .line 1485
    if-nez v3, :cond_39

    .line 1486
    .line 1487
    :cond_36
    const-string v3, "1\\d{5}"

    .line 1488
    .line 1489
    invoke-virtual {v9, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 1490
    .line 1491
    .line 1492
    move-result v3

    .line 1493
    if-nez v3, :cond_37

    .line 1494
    .line 1495
    const/4 v3, 0x0

    .line 1496
    goto :goto_21

    .line 1497
    :cond_37
    const-string v3, "164"

    .line 1498
    .line 1499
    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1500
    .line 1501
    .line 1502
    move-result v3

    .line 1503
    xor-int/lit8 v3, v3, 0x1

    .line 1504
    .line 1505
    :goto_21
    if-eqz v3, :cond_38

    .line 1506
    .line 1507
    goto :goto_23

    .line 1508
    :cond_38
    :goto_22
    const/4 v3, 0x0

    .line 1509
    goto :goto_24

    .line 1510
    :cond_39
    :goto_23
    const/4 v3, 0x1

    .line 1511
    :goto_24
    if-eqz v3, :cond_3c

    .line 1512
    .line 1513
    const/4 v3, 0x0

    .line 1514
    :goto_25
    if-ge v3, v12, :cond_3b

    .line 1515
    .line 1516
    invoke-virtual {v2, v9, v7}, Lcom/sgscq/vpn/w1;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 1517
    .line 1518
    .line 1519
    move-result-object v4

    .line 1520
    if-eqz v4, :cond_3a

    .line 1521
    .line 1522
    const/4 v4, 0x0

    .line 1523
    move-object/from16 v5, v44

    .line 1524
    .line 1525
    invoke-static {v5, v9, v4, v7}, Lcom/sgscq/vpn/w1;->b2(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 1526
    .line 1527
    .line 1528
    goto :goto_26

    .line 1529
    :cond_3a
    move-object/from16 v5, v44

    .line 1530
    .line 1531
    :goto_26
    add-int/lit8 v3, v3, 0x1

    .line 1532
    .line 1533
    move-object/from16 v44, v5

    .line 1534
    .line 1535
    goto :goto_25

    .line 1536
    :cond_3b
    move-object/from16 v28, v1

    .line 1537
    .line 1538
    move-object/from16 v50, v6

    .line 1539
    .line 1540
    move-object/from16 v52, v8

    .line 1541
    .line 1542
    move-object v5, v9

    .line 1543
    move-object v8, v14

    .line 1544
    move-object/from16 v6, v26

    .line 1545
    .line 1546
    move-object/from16 v9, v30

    .line 1547
    .line 1548
    move-object/from16 v12, v44

    .line 1549
    .line 1550
    goto/16 :goto_2a

    .line 1551
    .line 1552
    :cond_3c
    move-object/from16 v5, v44

    .line 1553
    .line 1554
    const/4 v3, 0x0

    .line 1555
    move-object/from16 v28, v1

    .line 1556
    .line 1557
    move-object v12, v5

    .line 1558
    move-object/from16 v50, v6

    .line 1559
    .line 1560
    move-object/from16 v52, v8

    .line 1561
    .line 1562
    move-object v5, v9

    .line 1563
    move-object v8, v14

    .line 1564
    move-object/from16 v6, v26

    .line 1565
    .line 1566
    move-object/from16 v9, v30

    .line 1567
    .line 1568
    goto/16 :goto_2b

    .line 1569
    .line 1570
    :cond_3d
    :goto_27
    move-object v2, v6

    .line 1571
    move-object/from16 v47, v8

    .line 1572
    .line 1573
    move-object/from16 v45, v17

    .line 1574
    .line 1575
    move-object/from16 v8, v31

    .line 1576
    .line 1577
    move-object/from16 v14, v33

    .line 1578
    .line 1579
    move-object/from16 v43, v34

    .line 1580
    .line 1581
    move-object/from16 v42, v41

    .line 1582
    .line 1583
    :goto_28
    move-object v6, v0

    .line 1584
    move-object v0, v7

    .line 1585
    move-object v7, v10

    .line 1586
    move-object/from16 v10, v32

    .line 1587
    .line 1588
    move-object/from16 v32, v12

    .line 1589
    .line 1590
    move v12, v9

    .line 1591
    move-object v9, v5

    .line 1592
    move-object/from16 v5, v28

    .line 1593
    .line 1594
    move-object/from16 v53, v27

    .line 1595
    .line 1596
    move-object/from16 v27, v11

    .line 1597
    .line 1598
    move-object/from16 v11, v53

    .line 1599
    .line 1600
    const/4 v4, 0x0

    .line 1601
    :goto_29
    move-object/from16 v28, v1

    .line 1602
    .line 1603
    if-ge v4, v12, :cond_3e

    .line 1604
    .line 1605
    move/from16 v17, v12

    .line 1606
    .line 1607
    move-object/from16 v12, v30

    .line 1608
    .line 1609
    invoke-static {v12, v7}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1610
    .line 1611
    .line 1612
    move-result-object v1

    .line 1613
    move-object/from16 v33, v14

    .line 1614
    .line 1615
    new-instance v14, Ljava/util/LinkedHashMap;

    .line 1616
    .line 1617
    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1618
    .line 1619
    .line 1620
    move/from16 v30, v4

    .line 1621
    .line 1622
    move-object v4, v12

    .line 1623
    move-object/from16 v31, v12

    .line 1624
    .line 1625
    move-object v12, v5

    .line 1626
    move-object v5, v7

    .line 1627
    move-object/from16 v50, v6

    .line 1628
    .line 1629
    move-object v6, v14

    .line 1630
    move-object/from16 v51, v7

    .line 1631
    .line 1632
    move-object/from16 v7, v42

    .line 1633
    .line 1634
    move-object/from16 v52, v8

    .line 1635
    .line 1636
    move-object/from16 v8, v32

    .line 1637
    .line 1638
    move-object/from16 v34, v9

    .line 1639
    .line 1640
    invoke-static/range {v4 .. v9}, Lc/a;->x(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    .line 1642
    .line 1643
    const-string v4, "equipment_id"

    .line 1644
    .line 1645
    move-object/from16 v5, v34

    .line 1646
    .line 1647
    invoke-interface {v14, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1648
    .line 1649
    .line 1650
    const-string v6, "equip_id"

    .line 1651
    .line 1652
    invoke-interface {v14, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1653
    .line 1654
    .line 1655
    move-object/from16 v6, v26

    .line 1656
    .line 1657
    invoke-interface {v14, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1658
    .line 1659
    .line 1660
    const-string v7, "equipment_level"

    .line 1661
    .line 1662
    invoke-interface {v14, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1663
    .line 1664
    .line 1665
    const/4 v7, 0x0

    .line 1666
    invoke-interface {v14, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1667
    .line 1668
    .line 1669
    invoke-interface {v14, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    .line 1671
    .line 1672
    const-string v8, "user_general_id"

    .line 1673
    .line 1674
    invoke-interface {v14, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1675
    .line 1676
    .line 1677
    const-string v7, "is_wear"

    .line 1678
    .line 1679
    invoke-interface {v14, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1680
    .line 1681
    .line 1682
    const-string v7, "wear"

    .line 1683
    .line 1684
    invoke-interface {v14, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    .line 1686
    .line 1687
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 1688
    .line 1689
    .line 1690
    move-result-wide v7

    .line 1691
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1692
    .line 1693
    .line 1694
    move-result-object v7

    .line 1695
    invoke-interface {v14, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1696
    .line 1697
    .line 1698
    const-string v7, "is_new"

    .line 1699
    .line 1700
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1701
    .line 1702
    invoke-interface {v14, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1703
    .line 1704
    .line 1705
    invoke-virtual {v2, v5, v14}, Lcom/sgscq/vpn/w1;->R(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1706
    .line 1707
    .line 1708
    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1709
    .line 1710
    .line 1711
    new-instance v7, Ljava/util/ArrayList;

    .line 1712
    .line 1713
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1714
    .line 1715
    .line 1716
    new-instance v8, Ljava/util/ArrayList;

    .line 1717
    .line 1718
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1719
    .line 1720
    .line 1721
    filled-new-array {v15, v8, v10, v1}, [Ljava/lang/Object;

    .line 1722
    .line 1723
    .line 1724
    move-result-object v1

    .line 1725
    move-object/from16 v8, v33

    .line 1726
    .line 1727
    invoke-static {v8, v7, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1728
    .line 1729
    .line 1730
    move-result-object v1

    .line 1731
    move-object/from16 v9, v31

    .line 1732
    .line 1733
    move-object/from16 v7, v51

    .line 1734
    .line 1735
    invoke-interface {v7, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1736
    .line 1737
    .line 1738
    const/4 v1, 0x0

    .line 1739
    invoke-static {v4, v5, v1, v7}, Lcom/sgscq/vpn/w1;->b2(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 1740
    .line 1741
    .line 1742
    add-int/lit8 v4, v30, 0x1

    .line 1743
    .line 1744
    move-object v14, v8

    .line 1745
    move-object/from16 v30, v9

    .line 1746
    .line 1747
    move-object/from16 v1, v28

    .line 1748
    .line 1749
    move-object/from16 v6, v50

    .line 1750
    .line 1751
    move-object/from16 v8, v52

    .line 1752
    .line 1753
    move-object v9, v5

    .line 1754
    move-object v5, v12

    .line 1755
    move/from16 v12, v17

    .line 1756
    .line 1757
    goto/16 :goto_29

    .line 1758
    .line 1759
    :cond_3e
    move-object v12, v5

    .line 1760
    move-object/from16 v50, v6

    .line 1761
    .line 1762
    move-object/from16 v52, v8

    .line 1763
    .line 1764
    move-object v5, v9

    .line 1765
    move-object v8, v14

    .line 1766
    move-object/from16 v6, v26

    .line 1767
    .line 1768
    move-object/from16 v9, v30

    .line 1769
    .line 1770
    :goto_2a
    const/4 v3, 0x1

    .line 1771
    :goto_2b
    if-eqz v3, :cond_3f

    .line 1772
    .line 1773
    move-object/from16 v1, v42

    .line 1774
    .line 1775
    move-object/from16 v4, v47

    .line 1776
    .line 1777
    invoke-interface {v4, v1, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1778
    .line 1779
    .line 1780
    move-result-object v3

    .line 1781
    move-object/from16 v5, v27

    .line 1782
    .line 1783
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1784
    .line 1785
    .line 1786
    const/4 v3, 0x1

    .line 1787
    move/from16 v36, v3

    .line 1788
    .line 1789
    move-object/from16 v3, v40

    .line 1790
    .line 1791
    goto :goto_2e

    .line 1792
    :cond_3f
    move-object/from16 v5, v27

    .line 1793
    .line 1794
    move-object/from16 v1, v42

    .line 1795
    .line 1796
    move-object/from16 v4, v47

    .line 1797
    .line 1798
    goto :goto_2d

    .line 1799
    :cond_40
    :goto_2c
    move-object/from16 v50, v0

    .line 1800
    .line 1801
    move-object/from16 v38, v2

    .line 1802
    .line 1803
    move-object/from16 v39, v3

    .line 1804
    .line 1805
    move-object v2, v6

    .line 1806
    move-object v0, v7

    .line 1807
    move-object v4, v8

    .line 1808
    move-object v7, v10

    .line 1809
    move-object v5, v11

    .line 1810
    move-object/from16 v40, v13

    .line 1811
    .line 1812
    move-object/from16 v45, v17

    .line 1813
    .line 1814
    move-object/from16 v6, v26

    .line 1815
    .line 1816
    move-object/from16 v11, v27

    .line 1817
    .line 1818
    move-object/from16 v9, v30

    .line 1819
    .line 1820
    move-object/from16 v52, v31

    .line 1821
    .line 1822
    move-object/from16 v10, v32

    .line 1823
    .line 1824
    move-object/from16 v8, v33

    .line 1825
    .line 1826
    move-object/from16 v43, v34

    .line 1827
    .line 1828
    move-object/from16 v32, v12

    .line 1829
    .line 1830
    move-object/from16 v12, v28

    .line 1831
    .line 1832
    move-object/from16 v28, v1

    .line 1833
    .line 1834
    move-object/from16 v1, v21

    .line 1835
    .line 1836
    move-object/from16 v21, v14

    .line 1837
    .line 1838
    :goto_2d
    move-object/from16 v3, v40

    .line 1839
    .line 1840
    invoke-static {v3, v4}, Lcom/sgscq/vpn/handler/d;->a(Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 1841
    .line 1842
    .line 1843
    :goto_2e
    move-object v13, v3

    .line 1844
    move-object/from16 v26, v6

    .line 1845
    .line 1846
    move-object/from16 v33, v8

    .line 1847
    .line 1848
    move-object/from16 v30, v9

    .line 1849
    .line 1850
    move-object/from16 v27, v11

    .line 1851
    .line 1852
    move-object/from16 v9, v22

    .line 1853
    .line 1854
    move-object/from16 v14, v37

    .line 1855
    .line 1856
    move-object/from16 v3, v39

    .line 1857
    .line 1858
    move-object/from16 v34, v43

    .line 1859
    .line 1860
    move-object/from16 v17, v45

    .line 1861
    .line 1862
    move-object/from16 v31, v52

    .line 1863
    .line 1864
    move-object v6, v2

    .line 1865
    move-object v11, v5

    .line 1866
    move-object/from16 v22, v21

    .line 1867
    .line 1868
    move-object/from16 v2, v38

    .line 1869
    .line 1870
    move-object/from16 v21, v1

    .line 1871
    .line 1872
    move-object/from16 v1, v28

    .line 1873
    .line 1874
    move-object/from16 v28, v12

    .line 1875
    .line 1876
    move-object/from16 v12, v32

    .line 1877
    .line 1878
    move-object/from16 v32, v10

    .line 1879
    .line 1880
    move-object v10, v7

    .line 1881
    move-object v7, v0

    .line 1882
    move-object/from16 v0, v50

    .line 1883
    .line 1884
    goto/16 :goto_17

    .line 1885
    .line 1886
    :cond_41
    move-object/from16 v50, v0

    .line 1887
    .line 1888
    move-object/from16 v38, v2

    .line 1889
    .line 1890
    move-object/from16 v39, v3

    .line 1891
    .line 1892
    move-object v0, v7

    .line 1893
    move-object v7, v10

    .line 1894
    move-object v5, v11

    .line 1895
    move-object v3, v13

    .line 1896
    move-object/from16 v45, v17

    .line 1897
    .line 1898
    move-object/from16 v11, v27

    .line 1899
    .line 1900
    move-object/from16 v9, v30

    .line 1901
    .line 1902
    move-object/from16 v52, v31

    .line 1903
    .line 1904
    move-object/from16 v10, v32

    .line 1905
    .line 1906
    move-object/from16 v8, v33

    .line 1907
    .line 1908
    move-object/from16 v43, v34

    .line 1909
    .line 1910
    move-object/from16 v32, v12

    .line 1911
    .line 1912
    move-object/from16 v12, v28

    .line 1913
    .line 1914
    move-object/from16 v28, v1

    .line 1915
    .line 1916
    move-object/from16 v1, v21

    .line 1917
    .line 1918
    if-nez v36, :cond_42

    .line 1919
    .line 1920
    const/4 v4, 0x0

    .line 1921
    goto :goto_30

    .line 1922
    :cond_42
    move-object/from16 v2, v43

    .line 1923
    .line 1924
    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1925
    .line 1926
    .line 1927
    new-instance v3, Ljava/util/ArrayList;

    .line 1928
    .line 1929
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1930
    .line 1931
    .line 1932
    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1933
    .line 1934
    .line 1935
    move-result-object v4

    .line 1936
    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1937
    .line 1938
    .line 1939
    move-result v6

    .line 1940
    if-eqz v6, :cond_44

    .line 1941
    .line 1942
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1943
    .line 1944
    .line 1945
    move-result-object v6

    .line 1946
    check-cast v6, Ljava/util/Map;

    .line 1947
    .line 1948
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1949
    .line 1950
    .line 1951
    move-result-object v10

    .line 1952
    if-eqz v10, :cond_43

    .line 1953
    .line 1954
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1955
    .line 1956
    .line 1957
    move-result v10

    .line 1958
    if-eqz v10, :cond_43

    .line 1959
    .line 1960
    goto :goto_2f

    .line 1961
    :cond_43
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1962
    .line 1963
    .line 1964
    goto :goto_2f

    .line 1965
    :cond_44
    invoke-interface {v2, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1966
    .line 1967
    .line 1968
    invoke-interface {v2, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1969
    .line 1970
    .line 1971
    const/4 v4, 0x1

    .line 1972
    :goto_30
    or-int v2, v25, v4

    .line 1973
    .line 1974
    move-object/from16 v3, v24

    .line 1975
    .line 1976
    invoke-virtual {v3, v7}, Lcom/sgscq/vpn/w1;->D(Ljava/util/Map;)I

    .line 1977
    .line 1978
    .line 1979
    move-result v4

    .line 1980
    const-string v5, "SGSCQ_SRV"

    .line 1981
    .line 1982
    if-lez v4, :cond_45

    .line 1983
    .line 1984
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1985
    .line 1986
    const-string v6, "[Auth] removed non-surrenderable generals count="

    .line 1987
    .line 1988
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1989
    .line 1990
    .line 1991
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1992
    .line 1993
    .line 1994
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1995
    .line 1996
    .line 1997
    move-result-object v2

    .line 1998
    invoke-static {v5, v2}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    .line 2000
    .line 2001
    const/4 v2, 0x1

    .line 2002
    :cond_45
    if-nez v7, :cond_46

    .line 2003
    .line 2004
    move-object/from16 v4, v23

    .line 2005
    .line 2006
    goto :goto_31

    .line 2007
    :cond_46
    move-object/from16 v4, v23

    .line 2008
    .line 2009
    invoke-static {v4, v7}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 2010
    .line 2011
    .line 2012
    move-result-object v6

    .line 2013
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 2014
    .line 2015
    .line 2016
    move-result v8

    .line 2017
    const/4 v10, 0x2

    .line 2018
    if-ge v8, v10, :cond_47

    .line 2019
    .line 2020
    :goto_31
    move-object/from16 v22, v0

    .line 2021
    .line 2022
    move/from16 v21, v2

    .line 2023
    .line 2024
    move-object/from16 v44, v12

    .line 2025
    .line 2026
    goto/16 :goto_3a

    .line 2027
    .line 2028
    :cond_47
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 2029
    .line 2030
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2031
    .line 2032
    .line 2033
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2034
    .line 2035
    .line 2036
    move-result-object v6

    .line 2037
    :goto_32
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 2038
    .line 2039
    .line 2040
    move-result v10

    .line 2041
    if-eqz v10, :cond_4b

    .line 2042
    .line 2043
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2044
    .line 2045
    .line 2046
    move-result-object v10

    .line 2047
    check-cast v10, Ljava/util/Map;

    .line 2048
    .line 2049
    move-object/from16 v13, v32

    .line 2050
    .line 2051
    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2052
    .line 2053
    .line 2054
    move-result-object v14

    .line 2055
    invoke-interface {v10, v12, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2056
    .line 2057
    .line 2058
    move-result-object v14

    .line 2059
    invoke-static {v14}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    .line 2060
    .line 2061
    .line 2062
    move-result-object v14

    .line 2063
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 2064
    .line 2065
    .line 2066
    move-result v15

    .line 2067
    if-nez v15, :cond_4a

    .line 2068
    .line 2069
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2070
    .line 2071
    .line 2072
    move-result v15

    .line 2073
    if-nez v15, :cond_4a

    .line 2074
    .line 2075
    move-object/from16 v15, v38

    .line 2076
    .line 2077
    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 2078
    .line 2079
    .line 2080
    move-result v17

    .line 2081
    if-eqz v17, :cond_48

    .line 2082
    .line 2083
    move/from16 v21, v2

    .line 2084
    .line 2085
    goto :goto_34

    .line 2086
    :cond_48
    invoke-virtual {v8, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2087
    .line 2088
    .line 2089
    move-result-object v17

    .line 2090
    check-cast v17, Ljava/util/List;

    .line 2091
    .line 2092
    move/from16 v21, v2

    .line 2093
    .line 2094
    if-nez v17, :cond_49

    .line 2095
    .line 2096
    new-instance v2, Ljava/util/ArrayList;

    .line 2097
    .line 2098
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2099
    .line 2100
    .line 2101
    invoke-interface {v8, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2102
    .line 2103
    .line 2104
    goto :goto_33

    .line 2105
    :cond_49
    move-object/from16 v2, v17

    .line 2106
    .line 2107
    :goto_33
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2108
    .line 2109
    .line 2110
    goto :goto_34

    .line 2111
    :cond_4a
    move/from16 v21, v2

    .line 2112
    .line 2113
    move-object/from16 v15, v38

    .line 2114
    .line 2115
    :goto_34
    move-object/from16 v32, v13

    .line 2116
    .line 2117
    move-object/from16 v38, v15

    .line 2118
    .line 2119
    move/from16 v2, v21

    .line 2120
    .line 2121
    goto :goto_32

    .line 2122
    :cond_4b
    move/from16 v21, v2

    .line 2123
    .line 2124
    new-instance v2, Ljava/util/HashMap;

    .line 2125
    .line 2126
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2127
    .line 2128
    .line 2129
    new-instance v6, Ljava/util/HashSet;

    .line 2130
    .line 2131
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 2132
    .line 2133
    .line 2134
    const/4 v10, 0x0

    .line 2135
    invoke-static {v10}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 2136
    .line 2137
    .line 2138
    move-result-object v10

    .line 2139
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 2140
    .line 2141
    .line 2142
    move-result-object v8

    .line 2143
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 2144
    .line 2145
    .line 2146
    move-result-object v8

    .line 2147
    :goto_35
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 2148
    .line 2149
    .line 2150
    move-result v13

    .line 2151
    if-eqz v13, :cond_53

    .line 2152
    .line 2153
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2154
    .line 2155
    .line 2156
    move-result-object v13

    .line 2157
    check-cast v13, Ljava/util/Map$Entry;

    .line 2158
    .line 2159
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 2160
    .line 2161
    .line 2162
    move-result-object v14

    .line 2163
    check-cast v14, Ljava/util/List;

    .line 2164
    .line 2165
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 2166
    .line 2167
    .line 2168
    move-result v15

    .line 2169
    move-object/from16 v17, v8

    .line 2170
    .line 2171
    const/4 v8, 0x1

    .line 2172
    if-gt v15, v8, :cond_4c

    .line 2173
    .line 2174
    move-object/from16 v8, v17

    .line 2175
    .line 2176
    goto :goto_35

    .line 2177
    :cond_4c
    const/4 v8, 0x0

    .line 2178
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2179
    .line 2180
    .line 2181
    move-result-object v8

    .line 2182
    check-cast v8, Ljava/util/Map;

    .line 2183
    .line 2184
    invoke-static {v7, v8}, Lcom/sgscq/vpn/w1;->Q(Ljava/util/Map;Ljava/util/Map;)D

    .line 2185
    .line 2186
    .line 2187
    move-result-wide v22

    .line 2188
    const/4 v15, 0x1

    .line 2189
    move-object/from16 v44, v12

    .line 2190
    .line 2191
    :goto_36
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 2192
    .line 2193
    .line 2194
    move-result v12

    .line 2195
    if-ge v15, v12, :cond_4e

    .line 2196
    .line 2197
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2198
    .line 2199
    .line 2200
    move-result-object v12

    .line 2201
    check-cast v12, Ljava/util/Map;

    .line 2202
    .line 2203
    invoke-static {v7, v12}, Lcom/sgscq/vpn/w1;->Q(Ljava/util/Map;Ljava/util/Map;)D

    .line 2204
    .line 2205
    .line 2206
    move-result-wide v24

    .line 2207
    cmpl-double v26, v24, v22

    .line 2208
    .line 2209
    if-lez v26, :cond_4d

    .line 2210
    .line 2211
    move-object v8, v12

    .line 2212
    move-wide/from16 v22, v24

    .line 2213
    .line 2214
    :cond_4d
    add-int/lit8 v15, v15, 0x1

    .line 2215
    .line 2216
    goto :goto_36

    .line 2217
    :cond_4e
    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2218
    .line 2219
    .line 2220
    move-result-object v12

    .line 2221
    invoke-interface {v8, v1, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2222
    .line 2223
    .line 2224
    move-result-object v12

    .line 2225
    invoke-static {v12}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    .line 2226
    .line 2227
    .line 2228
    move-result-object v12

    .line 2229
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 2230
    .line 2231
    .line 2232
    move-result v15

    .line 2233
    if-nez v15, :cond_4f

    .line 2234
    .line 2235
    invoke-interface {v8, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2236
    .line 2237
    .line 2238
    invoke-interface {v8, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2239
    .line 2240
    .line 2241
    const-string v15, "general_naturalskill_id"

    .line 2242
    .line 2243
    invoke-interface {v8, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2244
    .line 2245
    .line 2246
    const-string v15, "general_status"

    .line 2247
    .line 2248
    move-object/from16 v22, v0

    .line 2249
    .line 2250
    move-object/from16 v0, v28

    .line 2251
    .line 2252
    invoke-interface {v8, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2253
    .line 2254
    .line 2255
    move-object/from16 v15, v45

    .line 2256
    .line 2257
    invoke-interface {v8, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2258
    .line 2259
    .line 2260
    invoke-virtual {v10, v12, v8}, Lcom/sgscq/vpn/w1;->t2(Ljava/lang/String;Ljava/util/Map;)Z

    .line 2261
    .line 2262
    .line 2263
    goto :goto_37

    .line 2264
    :cond_4f
    move-object/from16 v22, v0

    .line 2265
    .line 2266
    move-object/from16 v0, v28

    .line 2267
    .line 2268
    move-object/from16 v15, v45

    .line 2269
    .line 2270
    :goto_37
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2271
    .line 2272
    .line 2273
    move-result-object v14

    .line 2274
    :goto_38
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 2275
    .line 2276
    .line 2277
    move-result v23

    .line 2278
    if-eqz v23, :cond_52

    .line 2279
    .line 2280
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2281
    .line 2282
    .line 2283
    move-result-object v23

    .line 2284
    move-object/from16 v28, v0

    .line 2285
    .line 2286
    move-object/from16 v0, v23

    .line 2287
    .line 2288
    check-cast v0, Ljava/util/Map;

    .line 2289
    .line 2290
    move-object/from16 v23, v8

    .line 2291
    .line 2292
    if-ne v0, v8, :cond_50

    .line 2293
    .line 2294
    goto :goto_39

    .line 2295
    :cond_50
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2296
    .line 2297
    .line 2298
    move-result-object v8

    .line 2299
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2300
    .line 2301
    .line 2302
    move-result-object v0

    .line 2303
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    .line 2304
    .line 2305
    .line 2306
    move-result-object v0

    .line 2307
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 2308
    .line 2309
    .line 2310
    move-result v8

    .line 2311
    if-eqz v8, :cond_51

    .line 2312
    .line 2313
    goto :goto_39

    .line 2314
    :cond_51
    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2315
    .line 2316
    .line 2317
    invoke-virtual {v2, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2318
    .line 2319
    .line 2320
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2321
    .line 2322
    .line 2323
    move-result-object v0

    .line 2324
    check-cast v0, Ljava/lang/String;

    .line 2325
    .line 2326
    const/16 v8, 0x12

    .line 2327
    .line 2328
    invoke-static {v8, v0, v7}, Lcom/sgscq/vpn/w1;->k(ILjava/lang/String;Ljava/util/Map;)V

    .line 2329
    .line 2330
    .line 2331
    :goto_39
    move-object/from16 v8, v23

    .line 2332
    .line 2333
    move-object/from16 v0, v28

    .line 2334
    .line 2335
    goto :goto_38

    .line 2336
    :cond_52
    move-object/from16 v28, v0

    .line 2337
    .line 2338
    move-object/from16 v45, v15

    .line 2339
    .line 2340
    move-object/from16 v8, v17

    .line 2341
    .line 2342
    move-object/from16 v0, v22

    .line 2343
    .line 2344
    move-object/from16 v12, v44

    .line 2345
    .line 2346
    goto/16 :goto_35

    .line 2347
    .line 2348
    :cond_53
    move-object/from16 v22, v0

    .line 2349
    .line 2350
    move-object/from16 v44, v12

    .line 2351
    .line 2352
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    .line 2353
    .line 2354
    .line 2355
    move-result v0

    .line 2356
    if-eqz v0, :cond_54

    .line 2357
    .line 2358
    :goto_3a
    const/4 v0, 0x0

    .line 2359
    move-object/from16 v8, v50

    .line 2360
    .line 2361
    goto/16 :goto_40

    .line 2362
    .line 2363
    :cond_54
    invoke-static {v4, v7}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 2364
    .line 2365
    .line 2366
    move-result-object v0

    .line 2367
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2368
    .line 2369
    .line 2370
    move-result-object v0

    .line 2371
    :cond_55
    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2372
    .line 2373
    .line 2374
    move-result v8

    .line 2375
    if-eqz v8, :cond_56

    .line 2376
    .line 2377
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2378
    .line 2379
    .line 2380
    move-result-object v8

    .line 2381
    check-cast v8, Ljava/util/Map;

    .line 2382
    .line 2383
    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2384
    .line 2385
    .line 2386
    move-result-object v8

    .line 2387
    invoke-static {v8}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    .line 2388
    .line 2389
    .line 2390
    move-result-object v8

    .line 2391
    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 2392
    .line 2393
    .line 2394
    move-result v8

    .line 2395
    if-eqz v8, :cond_55

    .line 2396
    .line 2397
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 2398
    .line 2399
    .line 2400
    goto :goto_3b

    .line 2401
    :cond_56
    move-object/from16 v8, v50

    .line 2402
    .line 2403
    invoke-static {v8, v7}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 2404
    .line 2405
    .line 2406
    move-result-object v0

    .line 2407
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2408
    .line 2409
    .line 2410
    move-result-object v0

    .line 2411
    :cond_57
    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2412
    .line 2413
    .line 2414
    move-result v10

    .line 2415
    if-eqz v10, :cond_59

    .line 2416
    .line 2417
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2418
    .line 2419
    .line 2420
    move-result-object v10

    .line 2421
    check-cast v10, Ljava/util/Map;

    .line 2422
    .line 2423
    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2424
    .line 2425
    .line 2426
    move-result-object v12

    .line 2427
    invoke-static {v12}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    .line 2428
    .line 2429
    .line 2430
    move-result-object v12

    .line 2431
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2432
    .line 2433
    .line 2434
    move-result-object v10

    .line 2435
    invoke-static {v10}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    .line 2436
    .line 2437
    .line 2438
    move-result-object v10

    .line 2439
    invoke-virtual {v6, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 2440
    .line 2441
    .line 2442
    move-result v12

    .line 2443
    if-nez v12, :cond_58

    .line 2444
    .line 2445
    invoke-virtual {v6, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 2446
    .line 2447
    .line 2448
    move-result v10

    .line 2449
    if-eqz v10, :cond_57

    .line 2450
    .line 2451
    :cond_58
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 2452
    .line 2453
    .line 2454
    goto :goto_3c

    .line 2455
    :cond_59
    move-object/from16 v10, v18

    .line 2456
    .line 2457
    invoke-static {v7, v10, v6}, Lcom/sgscq/vpn/w1;->u2(Ljava/util/Map;Ljava/lang/String;Ljava/util/HashSet;)V

    .line 2458
    .line 2459
    .line 2460
    move-object/from16 v0, p1

    .line 2461
    .line 2462
    invoke-static {v7, v0, v6}, Lcom/sgscq/vpn/w1;->u2(Ljava/util/Map;Ljava/lang/String;Ljava/util/HashSet;)V

    .line 2463
    .line 2464
    .line 2465
    invoke-static {v9, v7}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 2466
    .line 2467
    .line 2468
    move-result-object v0

    .line 2469
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2470
    .line 2471
    .line 2472
    move-result-object v0

    .line 2473
    :cond_5a
    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2474
    .line 2475
    .line 2476
    move-result v9

    .line 2477
    if-eqz v9, :cond_5b

    .line 2478
    .line 2479
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2480
    .line 2481
    .line 2482
    move-result-object v9

    .line 2483
    check-cast v9, Ljava/util/Map;

    .line 2484
    .line 2485
    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2486
    .line 2487
    .line 2488
    move-result-object v12

    .line 2489
    invoke-static {v12}, Lcom/sgscq/vpn/w1;->C2(Ljava/lang/Object;)Ljava/lang/String;

    .line 2490
    .line 2491
    .line 2492
    move-result-object v12

    .line 2493
    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2494
    .line 2495
    .line 2496
    move-result-object v12

    .line 2497
    check-cast v12, Ljava/lang/String;

    .line 2498
    .line 2499
    if-eqz v12, :cond_5a

    .line 2500
    .line 2501
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 2502
    .line 2503
    .line 2504
    move-result v13

    .line 2505
    if-nez v13, :cond_5a

    .line 2506
    .line 2507
    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2508
    .line 2509
    .line 2510
    goto :goto_3d

    .line 2511
    :cond_5b
    invoke-static {v10, v7}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 2512
    .line 2513
    .line 2514
    move-result-object v0

    .line 2515
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 2516
    .line 2517
    .line 2518
    move-result v2

    .line 2519
    if-eqz v2, :cond_5c

    .line 2520
    .line 2521
    goto :goto_3f

    .line 2522
    :cond_5c
    const/4 v2, 0x0

    .line 2523
    :goto_3e
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 2524
    .line 2525
    .line 2526
    move-result v9

    .line 2527
    if-ge v2, v9, :cond_5e

    .line 2528
    .line 2529
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2530
    .line 2531
    .line 2532
    move-result-object v9

    .line 2533
    check-cast v9, Ljava/util/Map;

    .line 2534
    .line 2535
    add-int/lit8 v2, v2, 0x1

    .line 2536
    .line 2537
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 2538
    .line 2539
    .line 2540
    move-result-object v10

    .line 2541
    move-object/from16 v12, v52

    .line 2542
    .line 2543
    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2544
    .line 2545
    .line 2546
    move-result-object v13

    .line 2547
    const-string v14, "general_position"

    .line 2548
    .line 2549
    invoke-interface {v9, v14, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2550
    .line 2551
    .line 2552
    move-result-object v13

    .line 2553
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2554
    .line 2555
    .line 2556
    move-result-object v13

    .line 2557
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2558
    .line 2559
    .line 2560
    move-result v13

    .line 2561
    if-nez v13, :cond_5d

    .line 2562
    .line 2563
    invoke-interface {v9, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2564
    .line 2565
    .line 2566
    invoke-interface {v9, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2567
    .line 2568
    .line 2569
    :cond_5d
    move-object/from16 v52, v12

    .line 2570
    .line 2571
    goto :goto_3e

    .line 2572
    :cond_5e
    :goto_3f
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    .line 2573
    .line 2574
    .line 2575
    move-result v0

    .line 2576
    :goto_40
    if-lez v0, :cond_5f

    .line 2577
    .line 2578
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2579
    .line 2580
    const-string v6, "[Auth] removed duplicate generals count="

    .line 2581
    .line 2582
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2583
    .line 2584
    .line 2585
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2586
    .line 2587
    .line 2588
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2589
    .line 2590
    .line 2591
    move-result-object v0

    .line 2592
    invoke-static {v5, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2593
    .line 2594
    .line 2595
    const/4 v2, 0x1

    .line 2596
    goto :goto_41

    .line 2597
    :cond_5f
    move/from16 v2, v21

    .line 2598
    .line 2599
    :goto_41
    invoke-static {v3, v7}, Lcom/sgscq/vpn/handler/d;->j(Lcom/sgscq/vpn/w1;Ljava/util/Map;)Z

    .line 2600
    .line 2601
    .line 2602
    move-result v0

    .line 2603
    or-int/2addr v0, v2

    .line 2604
    if-eqz v0, :cond_60

    .line 2605
    .line 2606
    move-object/from16 v0, v19

    .line 2607
    .line 2608
    move-object/from16 v2, v20

    .line 2609
    .line 2610
    invoke-virtual {v2, v0, v7}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 2611
    .line 2612
    .line 2613
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2614
    .line 2615
    const-string v6, "[Auth] cleaned login data uid="

    .line 2616
    .line 2617
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2618
    .line 2619
    .line 2620
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2621
    .line 2622
    .line 2623
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2624
    .line 2625
    .line 2626
    move-result-object v3

    .line 2627
    invoke-static {v5, v3}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2628
    .line 2629
    .line 2630
    goto :goto_42

    .line 2631
    :cond_60
    move-object/from16 v0, v19

    .line 2632
    .line 2633
    move-object/from16 v2, v20

    .line 2634
    .line 2635
    :goto_42
    invoke-static/range {v29 .. v29}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 2636
    .line 2637
    .line 2638
    move-result-object v3

    .line 2639
    if-nez v7, :cond_61

    .line 2640
    .line 2641
    const-string v1, "[BattleSkillAudit] Login scan complete generals=0 missingGenerals=0 missingSkills=0"

    .line 2642
    .line 2643
    goto/16 :goto_47

    .line 2644
    .line 2645
    :cond_61
    invoke-static {v8, v7}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 2646
    .line 2647
    .line 2648
    move-result-object v6

    .line 2649
    invoke-static {v4, v7}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 2650
    .line 2651
    .line 2652
    move-result-object v4

    .line 2653
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2654
    .line 2655
    .line 2656
    move-result-object v4

    .line 2657
    const/4 v7, 0x0

    .line 2658
    const/4 v8, 0x0

    .line 2659
    const/4 v9, 0x0

    .line 2660
    :goto_43
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 2661
    .line 2662
    .line 2663
    move-result v10

    .line 2664
    if-eqz v10, :cond_69

    .line 2665
    .line 2666
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2667
    .line 2668
    .line 2669
    move-result-object v10

    .line 2670
    check-cast v10, Ljava/util/Map;

    .line 2671
    .line 2672
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2673
    .line 2674
    const-string v13, "story_guest"

    .line 2675
    .line 2676
    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2677
    .line 2678
    .line 2679
    move-result-object v13

    .line 2680
    invoke-virtual {v12, v13}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 2681
    .line 2682
    .line 2683
    move-result v12

    .line 2684
    if-eqz v12, :cond_63

    .line 2685
    .line 2686
    :cond_62
    move-object/from16 v21, v1

    .line 2687
    .line 2688
    move-object/from16 p1, v4

    .line 2689
    .line 2690
    move-object/from16 v13, v22

    .line 2691
    .line 2692
    :goto_44
    move-object/from16 v1, v44

    .line 2693
    .line 2694
    goto/16 :goto_46

    .line 2695
    .line 2696
    :cond_63
    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2697
    .line 2698
    .line 2699
    move-result-object v12

    .line 2700
    invoke-static {v12}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 2701
    .line 2702
    .line 2703
    move-result-object v12

    .line 2704
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 2705
    .line 2706
    .line 2707
    move-result v13

    .line 2708
    if-eqz v13, :cond_64

    .line 2709
    .line 2710
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2711
    .line 2712
    .line 2713
    move-result-object v12

    .line 2714
    invoke-static {v12}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 2715
    .line 2716
    .line 2717
    move-result-object v12

    .line 2718
    :cond_64
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 2719
    .line 2720
    .line 2721
    move-result v13

    .line 2722
    if-nez v13, :cond_62

    .line 2723
    .line 2724
    move-object/from16 v13, v22

    .line 2725
    .line 2726
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2727
    .line 2728
    .line 2729
    move-result v14

    .line 2730
    if-eqz v14, :cond_65

    .line 2731
    .line 2732
    move-object/from16 v21, v1

    .line 2733
    .line 2734
    move-object/from16 p1, v4

    .line 2735
    .line 2736
    goto :goto_44

    .line 2737
    :cond_65
    add-int/lit8 v7, v7, 0x1

    .line 2738
    .line 2739
    new-instance v14, Ljava/util/ArrayList;

    .line 2740
    .line 2741
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2742
    .line 2743
    .line 2744
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2745
    .line 2746
    .line 2747
    move-result-object v15

    .line 2748
    :goto_45
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 2749
    .line 2750
    .line 2751
    move-result v17

    .line 2752
    if-eqz v17, :cond_67

    .line 2753
    .line 2754
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2755
    .line 2756
    .line 2757
    move-result-object v17

    .line 2758
    move-object/from16 v21, v1

    .line 2759
    .line 2760
    move-object/from16 v1, v17

    .line 2761
    .line 2762
    check-cast v1, Ljava/util/Map;

    .line 2763
    .line 2764
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2765
    .line 2766
    .line 2767
    move-result-object v17

    .line 2768
    move-object/from16 p1, v4

    .line 2769
    .line 2770
    invoke-static/range {v17 .. v17}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 2771
    .line 2772
    .line 2773
    move-result-object v4

    .line 2774
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2775
    .line 2776
    .line 2777
    move-result v4

    .line 2778
    if-eqz v4, :cond_66

    .line 2779
    .line 2780
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2781
    .line 2782
    .line 2783
    :cond_66
    move-object/from16 v4, p1

    .line 2784
    .line 2785
    move-object/from16 v1, v21

    .line 2786
    .line 2787
    goto :goto_45

    .line 2788
    :cond_67
    move-object/from16 v21, v1

    .line 2789
    .line 2790
    move-object/from16 p1, v4

    .line 2791
    .line 2792
    move-object/from16 v1, v44

    .line 2793
    .line 2794
    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2795
    .line 2796
    .line 2797
    move-result-object v4

    .line 2798
    invoke-static {v4}, Lcom/sgscq/vpn/handler/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 2799
    .line 2800
    .line 2801
    move-result-object v4

    .line 2802
    invoke-static {v3, v12, v4, v14, v10}, Lcom/sgscq/vpn/handler/f;->d(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)I

    .line 2803
    .line 2804
    .line 2805
    move-result v4

    .line 2806
    if-lez v4, :cond_68

    .line 2807
    .line 2808
    add-int/lit8 v8, v8, 0x1

    .line 2809
    .line 2810
    add-int/2addr v9, v4

    .line 2811
    :cond_68
    :goto_46
    move-object/from16 v4, p1

    .line 2812
    .line 2813
    move-object/from16 v44, v1

    .line 2814
    .line 2815
    move-object/from16 v22, v13

    .line 2816
    .line 2817
    move-object/from16 v1, v21

    .line 2818
    .line 2819
    goto/16 :goto_43

    .line 2820
    .line 2821
    :cond_69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2822
    .line 2823
    const-string v3, "[BattleSkillAudit] Login scan complete generals="

    .line 2824
    .line 2825
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2826
    .line 2827
    .line 2828
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2829
    .line 2830
    .line 2831
    const-string v3, " missingGenerals="

    .line 2832
    .line 2833
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2834
    .line 2835
    .line 2836
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2837
    .line 2838
    .line 2839
    const-string v3, " missingSkills="

    .line 2840
    .line 2841
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2842
    .line 2843
    .line 2844
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2845
    .line 2846
    .line 2847
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2848
    .line 2849
    .line 2850
    move-result-object v1

    .line 2851
    :goto_47
    invoke-static {v5, v1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2852
    .line 2853
    .line 2854
    invoke-virtual {v2, v0}, Lcom/sgscq/vpn/h5;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 2855
    .line 2856
    .line 2857
    move-result-object v0

    .line 2858
    move-object/from16 v1, v16

    .line 2859
    .line 2860
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 2861
    .line 2862
    .line 2863
    move-result-object v0

    .line 2864
    return-object v0
.end method

.method public final g(Ljava/util/Map;)[B
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/handler/d;->a:Lcom/sgscq/vpn/handler/k0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v8

    .line 7
    iget-object v10, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 8
    .line 9
    invoke-virtual {v10, v8}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v11

    .line 13
    if-eqz v11, :cond_7

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v1, "user_nickname"

    .line 19
    .line 20
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_1
    const-string v1, "user_sign"

    .line 38
    .line 39
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/lang/String;

    .line 44
    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :cond_2
    const-string v1, "headIcon"

    .line 51
    .line 52
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/lang/String;

    .line 57
    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-interface {v11, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_0
    const-string v1, "freshman_step"

    .line 76
    .line 77
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    iget-object v2, v0, Lcom/sgscq/vpn/handler/k0;->c:Landroid/content/SharedPreferences;

    .line 82
    .line 83
    if-nez v1, :cond_4

    .line 84
    .line 85
    const-string v1, "server_step"

    .line 86
    .line 87
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-nez v1, :cond_4

    .line 92
    .line 93
    const-string v1, "guide_step"

    .line 94
    .line 95
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_4

    .line 100
    .line 101
    const-string v1, "step"

    .line 102
    .line 103
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_5

    .line 108
    .line 109
    :cond_4
    invoke-static {v8, v11, p1, v2}, Lcom/sgscq/vpn/cloud/m0;->Y1(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Landroid/content/SharedPreferences;)Z

    .line 110
    .line 111
    .line 112
    :cond_5
    const-string v1, "guide_completed"

    .line 113
    .line 114
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Ljava/lang/String;

    .line 119
    .line 120
    if-eqz p1, :cond_6

    .line 121
    .line 122
    const-string v3, "true"

    .line 123
    .line 124
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-interface {v11, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    const-string v2, "guide_"

    .line 140
    .line 141
    const-string v4, "_guide_completed"

    .line 142
    .line 143
    invoke-static {v2, v8, v4}, Lcom/sgscq/vpn/handler/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 156
    .line 157
    .line 158
    :cond_6
    invoke-virtual {v10, v8, v11}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 159
    .line 160
    .line 161
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 162
    .line 163
    .line 164
    move-result-wide v1

    .line 165
    long-to-int v2, v1

    .line 166
    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    int-to-long v3, p1

    .line 171
    invoke-virtual {v0, v3, v4, v11}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 172
    .line 173
    .line 174
    move-result-wide v6

    .line 175
    const-string p1, "user_gold"

    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    invoke-virtual {v0, v1, p1, v11}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    const-string p1, "user_energy"

    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    invoke-virtual {v0, v1, p1, v11}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    const-string p1, "user_power"

    .line 196
    .line 197
    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    invoke-virtual {v0, v1, p1, v11}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    iget-object v1, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 206
    .line 207
    move-object v9, v11

    .line 208
    invoke-virtual/range {v1 .. v9}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    const/4 v1, 0x0

    .line 213
    new-array v1, v1, [Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {v10, v11, p1, v1}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    const-string v2, "General"

    .line 223
    .line 224
    invoke-static {v2, v11}, Lcom/sgscq/vpn/h5;->z0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    const-string v3, "Skill"

    .line 232
    .line 233
    invoke-static {v3, v11}, Lcom/sgscq/vpn/h5;->z0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    const-string v4, "Equipment"

    .line 241
    .line 242
    invoke-static {v4, v11}, Lcom/sgscq/vpn/h5;->z0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    const-string v5, "Item"

    .line 250
    .line 251
    invoke-static {v5, v11}, Lcom/sgscq/vpn/h5;->z0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    invoke-virtual {v10, v11}, Lcom/sgscq/vpn/h5;->j0(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    invoke-static {v6}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    .line 265
    .line 266
    const-string v7, "Atlas"

    .line 267
    .line 268
    invoke-static {v7, v11}, Lcom/sgscq/vpn/h5;->z0(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v7

    .line 272
    iget-object v8, v0, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 273
    .line 274
    invoke-static {v8}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 275
    .line 276
    .line 277
    move-result-object v8

    .line 278
    invoke-virtual {v8}, Lcom/sgscq/vpn/w1;->W0()I

    .line 279
    .line 280
    .line 281
    move-result v8

    .line 282
    new-instance v9, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    const-string v10, "{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\",\"isAdult\":true,\"isShowBanShu\":true,\"is_use_keywords\":true,\"isShowAmt\":true,\"isShowCDKey\":true,\"isShowGem\":true,\"isShowMagic\":true,\"maxTeamNum\":"

    .line 285
    .line 286
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    const-string v8, ",\"isShowUnionWar\":true,\"rechargeRate\":\"1.0\",\"user_info\":"

    .line 293
    .line 294
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string p1, ",\"general_info\":"

    .line 305
    .line 306
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    const-string p1, ",\"General\":"

    .line 313
    .line 314
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    const-string p1, ",\"skill_info\":"

    .line 318
    .line 319
    const-string v8, ",\"Skill\":"

    .line 320
    .line 321
    invoke-static {v9, v2, p1, v3, v8}, Lc/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    const-string p1, ",\"equipment_info\":"

    .line 325
    .line 326
    const-string v2, ",\"Equipment\":"

    .line 327
    .line 328
    invoke-static {v9, v3, p1, v4, v2}, Lc/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    const-string p1, ",\"item_info\":"

    .line 332
    .line 333
    const-string v2, ",\"Item\":"

    .line 334
    .line 335
    invoke-static {v9, v4, p1, v5, v2}, Lc/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    const-string p1, ",\"team_info\":"

    .line 339
    .line 340
    const-string v2, ",\"TeamGeneral\":"

    .line 341
    .line 342
    invoke-static {v9, v5, p1, v6, v2}, Lc/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    const-string p1, ",\"atlas_info\":"

    .line 346
    .line 347
    const-string v2, ",\"Atlas\":"

    .line 348
    .line 349
    invoke-static {v9, v6, p1, v7, v2}, Lc/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    const-string p1, ",\"cmn\":"

    .line 356
    .line 357
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    const-string p1, "}"

    .line 364
    .line 365
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    goto :goto_1

    .line 373
    :cond_7
    const-string p1, "{\"error_code\":0,\"ret\":0,\"code\":0,\"result\":true,\"msg\":\"success\"}"

    .line 374
    .line 375
    :goto_1
    invoke-virtual {v0, p1}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    return-object p1
.end method

.method public final i(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 11

    .line 1
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v0

    long-to-int v3, v0

    iget-object v0, p0, Lcom/sgscq/vpn/handler/d;->a:Lcom/sgscq/vpn/handler/k0;

    iget-object v2, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->a()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, p2}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    move-result-wide v7

    const-string v1, "user_gold"

    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->c()I

    move-result v4

    invoke-virtual {v0, v4, v1, p2}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v4

    const-string v1, "user_energy"

    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->b()I

    move-result v5

    invoke-virtual {v0, v5, v1, p2}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v5

    const-string v1, "user_power"

    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->d()I

    move-result v6

    invoke-virtual {v0, v6, v1, p2}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v6

    move-object v9, p1

    move-object v10, p2

    invoke-virtual/range {v2 .. v10}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
