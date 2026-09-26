.class public final Lcom/sgscq/vpn/handler/z0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:[I

.field public static final c:[I


# instance fields
.field public final a:Lcom/sgscq/vpn/handler/k0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/sgscq/vpn/handler/z0;->b:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sgscq/vpn/handler/z0;->c:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x1f4
        0x1388
        0x2710
        0x4e20
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xa
        0x1e
        0x3c
        0x64
        0x77
    .end array-data
.end method

.method public constructor <init>(Lcom/sgscq/vpn/handler/k0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/handler/z0;->a:Lcom/sgscq/vpn/handler/k0;

    return-void
.end method

.method public static varargs A([Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-object v3, p0, v1

    aget-object v2, p0, v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static B(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static C()Ljava/util/LinkedHashMap;
    .locals 9

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ret"

    const-string v3, "code"

    const-string v5, "result"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v7, "msg"

    const-string v8, "success"

    move-object v2, v0

    move-object v4, v0

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "error_code"

    invoke-static {v2, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    instance-of v0, p0, Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p0, Ljava/util/Map;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sgscq/vpn/handler/z0;->p(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/util/Map;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    check-cast p0, Ljava/util/Map;

    const-string v0, "skill_position"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "pos"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "position"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/handler/z0;->p(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p0

    :cond_1
    return-object p1
.end method

.method public static d(Ljava/util/Map;)V
    .locals 3

    .line 1
    const-string v0, "major_pk_id"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "position"

    const-string v2, "0"

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lieutenant_skill_id"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "skill_type_lieutenant"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ls_type"

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ls_value"

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static e(Ljava/util/Map;Ljava/util/ArrayList;Lm/f;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

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
    if-eqz v0, :cond_6

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
    invoke-static {v0}, Lcom/sgscq/vpn/handler/z0;->r(Ljava/util/Map;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "General"

    .line 22
    .line 23
    invoke-static {v1, v0, p0}, Lcom/sgscq/vpn/handler/z0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "Equipment"

    .line 28
    .line 29
    invoke-static {v2, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Ljava/util/Map;

    .line 48
    .line 49
    invoke-static {v3}, Lcom/sgscq/vpn/handler/z0;->w(Ljava/util/Map;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const-string v4, "pk_id"

    .line 61
    .line 62
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-static {v4}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-static {v3}, Lcom/sgscq/vpn/handler/z0;->i(Ljava/util/Map;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    const-string v6, "0"

    .line 75
    .line 76
    if-eqz v1, :cond_5

    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-eqz v7, :cond_2

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    const-string v7, "equipment_"

    .line 86
    .line 87
    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    const-string v9, "equipment_id_"

    .line 92
    .line 93
    invoke-virtual {v9, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    const-string v11, ""

    .line 98
    .line 99
    invoke-interface {v1, v10, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    invoke-interface {v1, v8, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    invoke-static {v8}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    if-eqz v8, :cond_3

    .line 116
    .line 117
    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v9, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    const-string v7, "equip_id_"

    .line 132
    .line 133
    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    :cond_3
    const-string v7, "3"

    .line 141
    .line 142
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    if-eqz v5, :cond_5

    .line 147
    .line 148
    const-string v5, "mount_id"

    .line 149
    .line 150
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    invoke-static {v7}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    if-eqz v7, :cond_4

    .line 163
    .line 164
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    :cond_4
    const-string v5, "horse_id"

    .line 168
    .line 169
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    invoke-static {v7}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v7

    .line 181
    if-eqz v7, :cond_5

    .line 182
    .line 183
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    :cond_5
    :goto_1
    const-string v5, "general_pk_id"

    .line 187
    .line 188
    const/4 v7, 0x0

    .line 189
    invoke-interface {v3, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    const-string v5, "general_id"

    .line 193
    .line 194
    invoke-interface {v3, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    const-string v5, "user_general_id"

    .line 198
    .line 199
    invoke-interface {v3, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    const-string v5, "is_wear"

    .line 203
    .line 204
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    const-string v5, "wear"

    .line 208
    .line 209
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    iget-object v3, p2, Lm/f;->b:Ljava/io/Serializable;

    .line 213
    .line 214
    check-cast v3, Ljava/util/Set;

    .line 215
    .line 216
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    iget-object v3, p2, Lm/f;->d:Ljava/io/Serializable;

    .line 220
    .line 221
    check-cast v3, Ljava/util/Set;

    .line 222
    .line 223
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :cond_6
    return-void
.end method

.method public static f(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-static {v3}, Lcom/sgscq/vpn/handler/z0;->v(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string v4, "pk_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "general_pk_id"

    invoke-virtual {v3, v6, v4}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "team_position"

    invoke-virtual {v3, v6, v5}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "position"

    invoke-virtual {v3, v6, v5}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "general_position"

    invoke-virtual {v3, v6, v5}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "0"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "null"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static g(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 13

    .line 1
    const-string v0, "TeamGeneral"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/sgscq/vpn/handler/z0;->f(Ljava/util/List;)Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0, p0}, Lcom/sgscq/vpn/p5;->c0(Ljava/util/List;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_7

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/util/Map;

    .line 30
    .line 31
    invoke-static {v2}, Lcom/sgscq/vpn/handler/z0;->r(Ljava/util/Map;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    new-instance v4, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v5, "Equipment"

    .line 41
    .line 42
    invoke-static {v5, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_1

    .line 55
    .line 56
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    check-cast v6, Ljava/util/Map;

    .line 61
    .line 62
    invoke-static {v6}, Lcom/sgscq/vpn/handler/z0;->w(Ljava/util/Map;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-eqz v7, :cond_0

    .line 71
    .line 72
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    new-instance v5, Ln/b;

    .line 77
    .line 78
    const/16 v6, 0xf

    .line 79
    .line 80
    invoke-direct {v5, v6}, Ln/b;-><init>(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 84
    .line 85
    .line 86
    new-instance v5, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    const-string v7, "pk_id"

    .line 100
    .line 101
    if-eqz v6, :cond_3

    .line 102
    .line 103
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    check-cast v6, Ljava/util/Map;

    .line 108
    .line 109
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-static {v6}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-nez v7, :cond_2

    .line 122
    .line 123
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_3
    const-string v4, "equipments_list"

    .line 128
    .line 129
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    new-instance v4, Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v5, "General"

    .line 138
    .line 139
    invoke-static {v5, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    if-eqz v6, :cond_6

    .line 152
    .line 153
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    check-cast v6, Ljava/util/Map;

    .line 158
    .line 159
    const-string v8, "major_pk_id"

    .line 160
    .line 161
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v8

    .line 165
    invoke-static {v8}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    if-nez v8, :cond_4

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_4
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    invoke-static {v8}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v8

    .line 184
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 185
    .line 186
    .line 187
    move-result v9

    .line 188
    if-eqz v9, :cond_5

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_5
    const-string v9, "1"

    .line 192
    .line 193
    const-string v10, "position"

    .line 194
    .line 195
    invoke-interface {v6, v10, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v9

    .line 199
    invoke-static {v9}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v9

    .line 203
    const-string v11, ""

    .line 204
    .line 205
    const-string v12, "lieutenant_skill_id"

    .line 206
    .line 207
    invoke-interface {v6, v12, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    invoke-static {v6}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    filled-new-array {v10, v9, v12, v6}, [Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    const-string v9, "general_pk_id"

    .line 220
    .line 221
    invoke-static {v9, v8, v6}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_6
    new-instance v3, Ln/b;

    .line 230
    .line 231
    const/16 v5, 0x10

    .line 232
    .line 233
    invoke-direct {v3, v5}, Ln/b;-><init>(I)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 237
    .line 238
    .line 239
    const-string v3, "assist_general_list"

    .line 240
    .line 241
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    goto/16 :goto_0

    .line 245
    .line 246
    :cond_7
    return-object v0
.end method

.method public static h(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    const-string v0, "most_team_info"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    instance-of v3, v1, Ljava/util/List;

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    check-cast v1, Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    instance-of v4, v3, Ljava/util/Map;

    .line 33
    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    check-cast v3, Ljava/util/Map;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    add-int/lit8 v4, v4, 0x1

    .line 43
    .line 44
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    const-string v5, "team_id"

    .line 49
    .line 50
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-static {v3}, Lcom/sgscq/vpn/handler/z0;->j(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    const-string v6, "snapshot_version"

    .line 63
    .line 64
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {v3}, Lcom/sgscq/vpn/handler/z0;->y(Ljava/lang/Object;)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-static {v3, v4, v5}, Lcom/sgscq/vpn/handler/z0;->s(ILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_2

    .line 85
    .line 86
    invoke-static {p0}, Lcom/sgscq/vpn/handler/z0;->g(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const/4 v3, 0x2

    .line 91
    const-string v4, "1"

    .line 92
    .line 93
    invoke-static {v3, v4, v1}, Lcom/sgscq/vpn/handler/z0;->s(ILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    :cond_2
    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    return-object v2
.end method

.method public static i(Ljava/util/Map;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "pos"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "equipment_type"

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "equipment_pos"

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/handler/z0;->p(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    const-string v0, "id"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "equipment_id"

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x31

    if-lt p0, v0, :cond_1

    const/16 v0, 0x34

    if-gt p0, v0, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static j(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    const-string v0, "team"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/List;

    if-nez v2, :cond_0

    const-string v2, "data"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    instance-of p0, v1, Ljava/util/List;

    if-nez p0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_2

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Lcom/sgscq/vpn/handler/z0;->v(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/sgscq/vpn/handler/z0;->p(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0, p2}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    const-string v0, "pk_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    :cond_2
    return-object v1
.end method

.method public static l(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1, p2}, Lcom/sgscq/vpn/handler/z0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static n(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static o(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "team.getMostTeamInfo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "team.addTeamInfo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "team.saveTeamInfo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "team.loadTeamInfo"

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

.method public static p(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static q(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object p0
.end method

.method public static r(Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "pk_id"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "general_pk_id"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static s(ILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;
    .locals 4

    .line 1
    invoke-static {p2}, Lcom/sgscq/vpn/handler/z0;->f(Ljava/util/List;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string v0, "team_id"

    .line 6
    .line 7
    const-string v1, "id"

    .line 8
    .line 9
    invoke-static {v0, p1, v1, p1}, Lc/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-array v0, v0, [Ljava/lang/Object;

    .line 19
    .line 20
    const-string v2, "team"

    .line 21
    .line 22
    invoke-static {v2, p2, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v3, "data"

    .line 27
    .line 28
    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string p2, "Ability"

    .line 35
    .line 36
    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    const-string p2, "Fighting"

    .line 40
    .line 41
    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    if-lez p0, :cond_0

    .line 45
    .line 46
    const-string p2, "snapshot_version"

    .line 47
    .line 48
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    :cond_0
    return-object p1
.end method

.method public static t(Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "upd"

    const-string v3, "add"

    filled-new-array {v2, p0, v3, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "del"

    invoke-static {v1, v0, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static u(ILjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v1}, Lcom/sgscq/vpn/handler/z0;->j(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sgscq/vpn/p5;->L0(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v3, "team"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v3, "data"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static v(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const-string p0, "pk_id"

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "general_pk_id"

    invoke-virtual {v0, v3, v1}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v4, v2

    :cond_0
    const-string v5, "position"

    invoke-virtual {v0, v5, v1}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v6, "general_position"

    invoke-virtual {v0, v6, v1}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "team_position"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string p0, "skill_list"

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string p0, "equipments_list"

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string p0, "assist_general_list"

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method public static w(Ljava/util/Map;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "general_id"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "user_general_id"

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "general_pk_id"

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/handler/z0;->p(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, p0

    :cond_0
    return-object v1
.end method

.method public static x(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p2, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return-object p1

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "null"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p0

    :cond_3
    :goto_0
    return-object p1
.end method

.method public static y(Ljava/lang/Object;)I
    .locals 1

    .line 1
    if-nez p0, :cond_0

    const-string p0, "0"

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static z(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/sgscq/vpn/handler/z0;->q(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sgscq/vpn/handler/z0;->p(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final varargs c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/handler/z0;->a:Lcom/sgscq/vpn/handler/k0;

    iget-object v1, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->a()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4, p2}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    move-result-wide v6

    const-string v3, "user_gold"

    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->c()I

    move-result v4

    invoke-virtual {v0, v4, v3, p2}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v3

    const-string v4, "user_energy"

    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->b()I

    move-result v5

    invoke-virtual {v0, v5, v4, p2}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v4

    const-string v5, "user_power"

    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->d()I

    move-result v8

    invoke-virtual {v0, v8, v5, p2}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v5

    move-object v8, p1

    move-object v9, p2

    invoke-virtual/range {v1 .. v9}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object p2, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    invoke-virtual {p2, p3, p1, p4}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    return-object p1
.end method

.method public final m(Ljava/lang/String;Ljava/util/Map;)[B
    .locals 49

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/z0;->o(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    return-object v4

    .line 15
    :cond_0
    iget-object v3, v0, Lcom/sgscq/vpn/handler/z0;->a:Lcom/sgscq/vpn/handler/k0;

    .line 16
    .line 17
    invoke-virtual {v3, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget-object v5, v3, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 22
    .line 23
    invoke-virtual {v5, v4}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    if-nez v6, :cond_1

    .line 28
    .line 29
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v7, v3, Lcom/sgscq/vpn/handler/k0;->c:Landroid/content/SharedPreferences;

    .line 35
    .line 36
    invoke-static {v4, v6, v2, v7}, Lcom/sgscq/vpn/cloud/m0;->Y1(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Landroid/content/SharedPreferences;)Z

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, v6}, Lcom/sgscq/vpn/h5;->g0(Ljava/util/Map;)I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    const-string v8, "team.addTeamInfo"

    .line 44
    .line 45
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    const-string v9, "id"

    .line 50
    .line 51
    const-string v10, "most_team_info"

    .line 52
    .line 53
    const-string v11, "team_id"

    .line 54
    .line 55
    const-string v12, "cmn"

    .line 56
    .line 57
    const-string v13, "team_info"

    .line 58
    .line 59
    const-string v14, "cmn_modules"

    .line 60
    .line 61
    const-string v15, "TeamGeneral"

    .line 62
    .line 63
    if-eqz v8, :cond_c

    .line 64
    .line 65
    invoke-static {v6}, Lcom/sgscq/vpn/handler/z0;->h(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    move-object/from16 v16, v3

    .line 74
    .line 75
    const/4 v3, 0x1

    .line 76
    add-int/2addr v8, v3

    .line 77
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    invoke-static {v9, v8, v2}, Lcom/sgscq/vpn/handler/z0;->x(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    invoke-static {v11, v8, v2}, Lcom/sgscq/vpn/handler/z0;->x(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-static {v2}, Lcom/sgscq/vpn/handler/z0;->y(Ljava/lang/Object;)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    const/4 v3, 0x5

    .line 98
    if-le v2, v3, :cond_2

    .line 99
    .line 100
    const-string v1, "\u9635\u5bb9\u672a\u914d\u7f6e"

    .line 101
    .line 102
    move-object v14, v1

    .line 103
    move-object/from16 v17, v5

    .line 104
    .line 105
    move-object/from16 v18, v12

    .line 106
    .line 107
    goto :goto_7

    .line 108
    :cond_2
    const-string v3, "user_gold"

    .line 109
    .line 110
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-static {v8}, Lcom/sgscq/vpn/handler/z0;->y(Ljava/lang/Object;)I

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 119
    .line 120
    .line 121
    move-result v9

    .line 122
    if-le v2, v9, :cond_3

    .line 123
    .line 124
    const/4 v9, 0x1

    .line 125
    goto :goto_0

    .line 126
    :cond_3
    const/4 v9, 0x0

    .line 127
    :goto_0
    move-object/from16 v17, v5

    .line 128
    .line 129
    const/4 v5, 0x6

    .line 130
    move-object/from16 v18, v12

    .line 131
    .line 132
    const/4 v12, 0x1

    .line 133
    if-lt v2, v12, :cond_5

    .line 134
    .line 135
    if-lt v2, v5, :cond_4

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_4
    sget-object v19, Lcom/sgscq/vpn/handler/z0;->b:[I

    .line 139
    .line 140
    aget v19, v19, v2

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_5
    :goto_1
    const/16 v19, 0x0

    .line 144
    .line 145
    :goto_2
    move/from16 v0, v19

    .line 146
    .line 147
    if-lt v2, v12, :cond_7

    .line 148
    .line 149
    if-lt v2, v5, :cond_6

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_6
    sget-object v5, Lcom/sgscq/vpn/handler/z0;->c:[I

    .line 153
    .line 154
    aget v5, v5, v2

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_7
    :goto_3
    const/4 v5, 0x0

    .line 158
    :goto_4
    if-eqz v9, :cond_8

    .line 159
    .line 160
    const-string v12, "user_level"

    .line 161
    .line 162
    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v12

    .line 166
    invoke-static {v12}, Lcom/sgscq/vpn/handler/z0;->y(Ljava/lang/Object;)I

    .line 167
    .line 168
    .line 169
    move-result v12

    .line 170
    if-ge v12, v5, :cond_8

    .line 171
    .line 172
    const-string v0, "\u7b49\u7ea7\u4e0d\u8db3"

    .line 173
    .line 174
    :goto_5
    move-object v1, v0

    .line 175
    goto :goto_6

    .line 176
    :cond_8
    if-eqz v9, :cond_9

    .line 177
    .line 178
    if-ge v8, v0, :cond_9

    .line 179
    .line 180
    const-string v0, "\u5143\u5b9d\u4e0d\u8db3"

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :goto_6
    move-object v14, v1

    .line 184
    :goto_7
    const/4 v0, -0x1

    .line 185
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    const-string v7, "ret"

    .line 190
    .line 191
    const-string v9, "code"

    .line 192
    .line 193
    const-string v11, "result"

    .line 194
    .line 195
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 196
    .line 197
    const-string v13, "msg"

    .line 198
    .line 199
    move-object v8, v0

    .line 200
    move-object v10, v0

    .line 201
    filled-new-array/range {v7 .. v14}, [Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    const-string v2, "error_code"

    .line 206
    .line 207
    invoke-static {v2, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    move-object/from16 v19, v4

    .line 212
    .line 213
    goto :goto_9

    .line 214
    :cond_9
    :goto_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 215
    .line 216
    .line 217
    move-result v5

    .line 218
    if-ge v5, v2, :cond_a

    .line 219
    .line 220
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    add-int/lit8 v5, v5, 0x1

    .line 225
    .line 226
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    new-instance v12, Ljava/util/ArrayList;

    .line 231
    .line 232
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .line 234
    .line 235
    move-object/from16 v19, v4

    .line 236
    .line 237
    const/4 v4, 0x0

    .line 238
    invoke-static {v4, v5, v12}, Lcom/sgscq/vpn/handler/z0;->s(ILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-object/from16 v4, v19

    .line 246
    .line 247
    goto :goto_8

    .line 248
    :cond_a
    move-object/from16 v19, v4

    .line 249
    .line 250
    invoke-interface {v6, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    if-eqz v9, :cond_b

    .line 254
    .line 255
    sub-int/2addr v8, v0

    .line 256
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-interface {v6, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    :cond_b
    invoke-static {}, Lcom/sgscq/vpn/handler/z0;->C()Ljava/util/LinkedHashMap;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-interface {v0, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    invoke-static {v7, v1}, Lcom/sgscq/vpn/handler/z0;->u(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    const-string v1, "Player,TeamGeneral"

    .line 282
    .line 283
    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    :goto_9
    const-string v1, "Player"

    .line 287
    .line 288
    filled-new-array {v1, v15}, [Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    move-object/from16 v3, p0

    .line 293
    .line 294
    move-object/from16 v4, v19

    .line 295
    .line 296
    invoke-virtual {v3, v4, v6, v6, v1}, Lcom/sgscq/vpn/handler/z0;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    move-object/from16 v5, v18

    .line 301
    .line 302
    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    goto/16 :goto_b

    .line 306
    .line 307
    :cond_c
    move-object/from16 v16, v3

    .line 308
    .line 309
    move-object/from16 v17, v5

    .line 310
    .line 311
    move-object v5, v12

    .line 312
    move-object v3, v0

    .line 313
    const-string v0, "team.saveTeamInfo"

    .line 314
    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    const/4 v8, 0x2

    .line 320
    const-string v12, "1"

    .line 321
    .line 322
    if-eqz v0, :cond_e

    .line 323
    .line 324
    invoke-static {v6}, Lcom/sgscq/vpn/handler/z0;->h(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-static {v11, v12, v2}, Lcom/sgscq/vpn/handler/z0;->x(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    invoke-static {v1}, Lcom/sgscq/vpn/handler/z0;->y(Ljava/lang/Object;)I

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    const/4 v2, 0x1

    .line 337
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    :goto_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 342
    .line 343
    .line 344
    move-result v9

    .line 345
    if-ge v9, v1, :cond_d

    .line 346
    .line 347
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 348
    .line 349
    .line 350
    move-result v9

    .line 351
    add-int/2addr v9, v2

    .line 352
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    new-instance v9, Ljava/util/ArrayList;

    .line 357
    .line 358
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .line 360
    .line 361
    const/4 v12, 0x0

    .line 362
    invoke-static {v12, v2, v9}, Lcom/sgscq/vpn/handler/z0;->s(ILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    const/4 v2, 0x1

    .line 370
    goto :goto_a

    .line 371
    :cond_d
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    invoke-static {v6}, Lcom/sgscq/vpn/handler/z0;->g(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 376
    .line 377
    .line 378
    move-result-object v9

    .line 379
    invoke-static {v8, v2, v9}, Lcom/sgscq/vpn/handler/z0;->s(ILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    add-int/lit8 v8, v1, -0x1

    .line 384
    .line 385
    invoke-virtual {v0, v8, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    invoke-interface {v6, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    invoke-static {v7, v0}, Lcom/sgscq/vpn/handler/z0;->u(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    invoke-static {}, Lcom/sgscq/vpn/handler/z0;->C()Ljava/util/LinkedHashMap;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    invoke-interface {v2, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    invoke-interface {v2, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    invoke-interface {v2, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    invoke-interface {v2, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    filled-new-array {v15}, [Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    invoke-virtual {v3, v4, v6, v6, v0}, Lcom/sgscq/vpn/handler/z0;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-object v0, v2

    .line 431
    :goto_b
    move-object v5, v4

    .line 432
    goto/16 :goto_40

    .line 433
    .line 434
    :cond_e
    const-string v0, "team.loadTeamInfo"

    .line 435
    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    if-eqz v0, :cond_59

    .line 441
    .line 442
    invoke-static {v6}, Lcom/sgscq/vpn/handler/z0;->h(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-static {v11, v12, v2}, Lcom/sgscq/vpn/handler/z0;->x(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    invoke-static {v1}, Lcom/sgscq/vpn/handler/z0;->y(Ljava/lang/Object;)I

    .line 451
    .line 452
    .line 453
    move-result v1

    .line 454
    const/4 v2, 0x1

    .line 455
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 456
    .line 457
    .line 458
    move-result v1

    .line 459
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 460
    .line 461
    .line 462
    move-result v2

    .line 463
    if-gt v1, v2, :cond_f

    .line 464
    .line 465
    add-int/lit8 v2, v1, -0x1

    .line 466
    .line 467
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    check-cast v2, Ljava/util/Map;

    .line 472
    .line 473
    goto :goto_c

    .line 474
    :cond_f
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    new-instance v8, Ljava/util/ArrayList;

    .line 479
    .line 480
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .line 482
    .line 483
    const/4 v10, 0x0

    .line 484
    invoke-static {v10, v2, v8}, Lcom/sgscq/vpn/handler/z0;->s(ILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    :goto_c
    invoke-static {v2}, Lcom/sgscq/vpn/handler/z0;->j(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 489
    .line 490
    .line 491
    move-result-object v8

    .line 492
    invoke-static {v15, v6}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 493
    .line 494
    .line 495
    move-result-object v10

    .line 496
    invoke-static {v10}, Lcom/sgscq/vpn/handler/z0;->f(Ljava/util/List;)Ljava/util/ArrayList;

    .line 497
    .line 498
    .line 499
    move-result-object v10

    .line 500
    move-object/from16 v18, v5

    .line 501
    .line 502
    new-instance v5, Ljava/util/ArrayList;

    .line 503
    .line 504
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .line 506
    .line 507
    new-instance v3, Ljava/util/ArrayList;

    .line 508
    .line 509
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 510
    .line 511
    .line 512
    move-object/from16 v19, v4

    .line 513
    .line 514
    invoke-static {v8}, Lcom/sgscq/vpn/handler/z0;->f(Ljava/util/List;)Ljava/util/ArrayList;

    .line 515
    .line 516
    .line 517
    move-result-object v4

    .line 518
    move-object/from16 v20, v14

    .line 519
    .line 520
    const-string v14, "upd"

    .line 521
    .line 522
    move-object/from16 v21, v13

    .line 523
    .line 524
    const-string v13, "add"

    .line 525
    .line 526
    filled-new-array {v14, v3, v13, v4}, [Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    const-string v4, "del"

    .line 531
    .line 532
    invoke-static {v4, v5, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 533
    .line 534
    .line 535
    move-result-object v3

    .line 536
    invoke-interface {v6, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    new-instance v3, Lm/f;

    .line 540
    .line 541
    invoke-direct {v3}, Lm/f;-><init>()V

    .line 542
    .line 543
    .line 544
    const-string v5, "snapshot_version"

    .line 545
    .line 546
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v2

    .line 550
    invoke-static {v2}, Lcom/sgscq/vpn/handler/z0;->y(Ljava/lang/Object;)I

    .line 551
    .line 552
    .line 553
    move-result v2

    .line 554
    const/4 v5, 0x2

    .line 555
    if-lt v2, v5, :cond_10

    .line 556
    .line 557
    const/4 v2, 0x1

    .line 558
    goto :goto_d

    .line 559
    :cond_10
    const/4 v2, 0x0

    .line 560
    :goto_d
    const-string v5, "skill_list"

    .line 561
    .line 562
    if-nez v2, :cond_12

    .line 563
    .line 564
    invoke-static {v5, v8}, Lcom/sgscq/vpn/handler/z0;->n(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 565
    .line 566
    .line 567
    move-result v22

    .line 568
    if-eqz v22, :cond_11

    .line 569
    .line 570
    goto :goto_e

    .line 571
    :cond_11
    const/16 v22, 0x0

    .line 572
    .line 573
    goto :goto_f

    .line 574
    :cond_12
    :goto_e
    const/16 v22, 0x1

    .line 575
    .line 576
    :goto_f
    move-object/from16 p1, v4

    .line 577
    .line 578
    const-string v4, "equipments_list"

    .line 579
    .line 580
    if-nez v2, :cond_14

    .line 581
    .line 582
    invoke-static {v4, v8}, Lcom/sgscq/vpn/handler/z0;->n(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 583
    .line 584
    .line 585
    move-result v23

    .line 586
    if-eqz v23, :cond_13

    .line 587
    .line 588
    goto :goto_10

    .line 589
    :cond_13
    const/16 v23, 0x0

    .line 590
    .line 591
    goto :goto_11

    .line 592
    :cond_14
    :goto_10
    const/16 v23, 0x1

    .line 593
    .line 594
    :goto_11
    move-object/from16 p2, v13

    .line 595
    .line 596
    const-string v13, "assist_general_list"

    .line 597
    .line 598
    if-nez v2, :cond_16

    .line 599
    .line 600
    invoke-static {v13, v8}, Lcom/sgscq/vpn/handler/z0;->n(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 601
    .line 602
    .line 603
    move-result v2

    .line 604
    if-eqz v2, :cond_15

    .line 605
    .line 606
    goto :goto_12

    .line 607
    :cond_15
    const/4 v2, 0x0

    .line 608
    goto :goto_13

    .line 609
    :cond_16
    :goto_12
    const/4 v2, 0x1

    .line 610
    :goto_13
    move-object/from16 v24, v14

    .line 611
    .line 612
    new-instance v14, Ljava/util/LinkedHashSet;

    .line 613
    .line 614
    invoke-direct {v14}, Ljava/util/LinkedHashSet;-><init>()V

    .line 615
    .line 616
    .line 617
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 618
    .line 619
    .line 620
    move-result-object v25

    .line 621
    :goto_14
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    .line 622
    .line 623
    .line 624
    move-result v26

    .line 625
    if-eqz v26, :cond_17

    .line 626
    .line 627
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v26

    .line 631
    check-cast v26, Ljava/util/Map;

    .line 632
    .line 633
    move-object/from16 v27, v11

    .line 634
    .line 635
    invoke-static/range {v26 .. v26}, Lcom/sgscq/vpn/handler/z0;->r(Ljava/util/Map;)Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v11

    .line 639
    invoke-interface {v14, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 640
    .line 641
    .line 642
    move-object/from16 v11, v27

    .line 643
    .line 644
    goto :goto_14

    .line 645
    :cond_17
    move-object/from16 v27, v11

    .line 646
    .line 647
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 648
    .line 649
    .line 650
    move-result-object v11

    .line 651
    :goto_15
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 652
    .line 653
    .line 654
    move-result v25

    .line 655
    move/from16 v26, v1

    .line 656
    .line 657
    const-string v1, "ls_value"

    .line 658
    .line 659
    move-object/from16 v28, v0

    .line 660
    .line 661
    const-string v0, "ls_type"

    .line 662
    .line 663
    move/from16 v29, v7

    .line 664
    .line 665
    const-string v7, "skill_type_lieutenant"

    .line 666
    .line 667
    move-object/from16 v30, v9

    .line 668
    .line 669
    const-string v9, "lieutenant_skill_id"

    .line 670
    .line 671
    move-object/from16 v31, v15

    .line 672
    .line 673
    const-string v15, "0"

    .line 674
    .line 675
    move-object/from16 v32, v13

    .line 676
    .line 677
    const-string v13, ""

    .line 678
    .line 679
    move-object/from16 v33, v4

    .line 680
    .line 681
    iget-object v4, v3, Lm/f;->b:Ljava/io/Serializable;

    .line 682
    .line 683
    move-object/from16 v34, v5

    .line 684
    .line 685
    const-string v5, "General"

    .line 686
    .line 687
    move/from16 v35, v2

    .line 688
    .line 689
    const-string v2, "major_pk_id"

    .line 690
    .line 691
    if-eqz v25, :cond_1a

    .line 692
    .line 693
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    move-result-object v25

    .line 697
    move-object/from16 v36, v11

    .line 698
    .line 699
    move-object/from16 v11, v25

    .line 700
    .line 701
    check-cast v11, Ljava/lang/String;

    .line 702
    .line 703
    move-object/from16 v25, v10

    .line 704
    .line 705
    invoke-static {v5, v11, v6}, Lcom/sgscq/vpn/handler/z0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 706
    .line 707
    .line 708
    move-result-object v10

    .line 709
    if-eqz v10, :cond_19

    .line 710
    .line 711
    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v2

    .line 715
    invoke-static {v2}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v2

    .line 719
    invoke-static {v2}, Lcom/sgscq/vpn/handler/z0;->p(Ljava/lang/String;)Z

    .line 720
    .line 721
    .line 722
    move-result v37

    .line 723
    if-eqz v37, :cond_19

    .line 724
    .line 725
    invoke-static {v10}, Lcom/sgscq/vpn/handler/z0;->d(Ljava/util/Map;)V

    .line 726
    .line 727
    .line 728
    check-cast v4, Ljava/util/Set;

    .line 729
    .line 730
    invoke-interface {v4, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 731
    .line 732
    .line 733
    invoke-static {v5, v2, v6}, Lcom/sgscq/vpn/handler/z0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 734
    .line 735
    .line 736
    move-result-object v5

    .line 737
    if-nez v5, :cond_18

    .line 738
    .line 739
    goto :goto_16

    .line 740
    :cond_18
    invoke-interface {v5, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    invoke-interface {v5, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    invoke-interface {v5, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    invoke-interface {v5, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    .line 751
    .line 752
    :goto_16
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 753
    .line 754
    .line 755
    :cond_19
    move-object/from16 v10, v25

    .line 756
    .line 757
    move/from16 v1, v26

    .line 758
    .line 759
    move-object/from16 v0, v28

    .line 760
    .line 761
    move/from16 v7, v29

    .line 762
    .line 763
    move-object/from16 v9, v30

    .line 764
    .line 765
    move-object/from16 v15, v31

    .line 766
    .line 767
    move-object/from16 v13, v32

    .line 768
    .line 769
    move-object/from16 v4, v33

    .line 770
    .line 771
    move-object/from16 v5, v34

    .line 772
    .line 773
    move/from16 v2, v35

    .line 774
    .line 775
    move-object/from16 v11, v36

    .line 776
    .line 777
    goto :goto_15

    .line 778
    :cond_1a
    move-object/from16 v25, v10

    .line 779
    .line 780
    const-string v10, "BuddyGeneral"

    .line 781
    .line 782
    invoke-static {v10, v6}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 783
    .line 784
    .line 785
    move-result-object v11

    .line 786
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 787
    .line 788
    .line 789
    move-result-object v11

    .line 790
    :goto_17
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 791
    .line 792
    .line 793
    move-result v36

    .line 794
    move-object/from16 v37, v10

    .line 795
    .line 796
    const-string v10, "general_pk_id"

    .line 797
    .line 798
    move-object/from16 v38, v1

    .line 799
    .line 800
    const-string v1, "pk_id"

    .line 801
    .line 802
    if-eqz v36, :cond_23

    .line 803
    .line 804
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 805
    .line 806
    .line 807
    move-result-object v36

    .line 808
    move-object/from16 v39, v11

    .line 809
    .line 810
    move-object/from16 v11, v36

    .line 811
    .line 812
    check-cast v11, Ljava/util/Map;

    .line 813
    .line 814
    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    move-result-object v36

    .line 818
    move-object/from16 v40, v0

    .line 819
    .line 820
    invoke-static/range {v36 .. v36}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    .line 821
    .line 822
    .line 823
    move-result-object v0

    .line 824
    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    .line 826
    .line 827
    move-result-object v36

    .line 828
    move-object/from16 v41, v7

    .line 829
    .line 830
    invoke-static/range {v36 .. v36}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object v7

    .line 834
    move-object/from16 v36, v9

    .line 835
    .line 836
    const-string v9, "suspended_general_pk_id"

    .line 837
    .line 838
    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v42

    .line 842
    move-object/from16 v43, v2

    .line 843
    .line 844
    invoke-static/range {v42 .. v42}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    .line 845
    .line 846
    .line 847
    move-result-object v2

    .line 848
    invoke-static {v0}, Lcom/sgscq/vpn/handler/z0;->p(Ljava/lang/String;)Z

    .line 849
    .line 850
    .line 851
    move-result v42

    .line 852
    if-eqz v42, :cond_1d

    .line 853
    .line 854
    invoke-interface {v14, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 855
    .line 856
    .line 857
    move-result v2

    .line 858
    if-eqz v2, :cond_1b

    .line 859
    .line 860
    invoke-interface {v11, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    .line 862
    .line 863
    invoke-interface {v11, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    .line 865
    .line 866
    goto :goto_19

    .line 867
    :cond_1b
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 868
    .line 869
    .line 870
    move-result v1

    .line 871
    if-nez v1, :cond_1c

    .line 872
    .line 873
    invoke-interface {v11, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    .line 875
    .line 876
    const/4 v0, 0x1

    .line 877
    iput-boolean v0, v3, Lm/f;->a:Z

    .line 878
    .line 879
    :cond_1c
    invoke-interface {v11, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    .line 881
    .line 882
    move-result-object v0

    .line 883
    if-eqz v0, :cond_22

    .line 884
    .line 885
    goto :goto_1a

    .line 886
    :cond_1d
    invoke-static {v2}, Lcom/sgscq/vpn/handler/z0;->p(Ljava/lang/String;)Z

    .line 887
    .line 888
    .line 889
    move-result v0

    .line 890
    if-eqz v0, :cond_1e

    .line 891
    .line 892
    move-object v0, v2

    .line 893
    goto :goto_18

    .line 894
    :cond_1e
    move-object v0, v7

    .line 895
    :goto_18
    invoke-static {v0}, Lcom/sgscq/vpn/handler/z0;->p(Ljava/lang/String;)Z

    .line 896
    .line 897
    .line 898
    move-result v42

    .line 899
    if-nez v42, :cond_1f

    .line 900
    .line 901
    goto :goto_1b

    .line 902
    :cond_1f
    invoke-interface {v14, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 903
    .line 904
    .line 905
    move-result v42

    .line 906
    if-eqz v42, :cond_21

    .line 907
    .line 908
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 909
    .line 910
    .line 911
    move-result v1

    .line 912
    if-nez v1, :cond_20

    .line 913
    .line 914
    invoke-interface {v11, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    .line 916
    .line 917
    const/4 v0, 0x1

    .line 918
    iput-boolean v0, v3, Lm/f;->a:Z

    .line 919
    .line 920
    :cond_20
    invoke-static {v7}, Lcom/sgscq/vpn/handler/z0;->p(Ljava/lang/String;)Z

    .line 921
    .line 922
    .line 923
    move-result v0

    .line 924
    if-eqz v0, :cond_22

    .line 925
    .line 926
    :goto_19
    invoke-interface {v11, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    .line 928
    .line 929
    goto :goto_1a

    .line 930
    :cond_21
    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    .line 932
    .line 933
    invoke-interface {v11, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    .line 935
    .line 936
    invoke-interface {v11, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    .line 938
    .line 939
    :goto_1a
    const/4 v0, 0x1

    .line 940
    iput-boolean v0, v3, Lm/f;->a:Z

    .line 941
    .line 942
    :cond_22
    :goto_1b
    move-object/from16 v9, v36

    .line 943
    .line 944
    move-object/from16 v10, v37

    .line 945
    .line 946
    move-object/from16 v1, v38

    .line 947
    .line 948
    move-object/from16 v11, v39

    .line 949
    .line 950
    move-object/from16 v0, v40

    .line 951
    .line 952
    move-object/from16 v7, v41

    .line 953
    .line 954
    move-object/from16 v2, v43

    .line 955
    .line 956
    goto/16 :goto_17

    .line 957
    .line 958
    :cond_23
    move-object/from16 v40, v0

    .line 959
    .line 960
    move-object/from16 v43, v2

    .line 961
    .line 962
    move-object/from16 v41, v7

    .line 963
    .line 964
    move-object/from16 v36, v9

    .line 965
    .line 966
    iget-object v0, v3, Lm/f;->c:Ljava/lang/Object;

    .line 967
    .line 968
    const-string v2, "Skill"

    .line 969
    .line 970
    const-string v7, "pos"

    .line 971
    .line 972
    const-string v9, "position"

    .line 973
    .line 974
    if-eqz v22, :cond_2b

    .line 975
    .line 976
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 977
    .line 978
    .line 979
    move-result-object v11

    .line 980
    :goto_1c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 981
    .line 982
    .line 983
    move-result v14

    .line 984
    if-eqz v14, :cond_2b

    .line 985
    .line 986
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 987
    .line 988
    .line 989
    move-result-object v14

    .line 990
    check-cast v14, Ljava/util/Map;

    .line 991
    .line 992
    invoke-static {v14}, Lcom/sgscq/vpn/handler/z0;->r(Ljava/util/Map;)Ljava/lang/String;

    .line 993
    .line 994
    .line 995
    move-result-object v14

    .line 996
    move-object/from16 v39, v11

    .line 997
    .line 998
    invoke-static {v5, v14, v6}, Lcom/sgscq/vpn/handler/z0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 999
    .line 1000
    .line 1001
    move-result-object v11

    .line 1002
    invoke-static {v2, v6}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v42

    .line 1006
    invoke-interface/range {v42 .. v42}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v42

    .line 1010
    :goto_1d
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    .line 1011
    .line 1012
    .line 1013
    move-result v44

    .line 1014
    if-eqz v44, :cond_2a

    .line 1015
    .line 1016
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v44

    .line 1020
    move-object/from16 v45, v2

    .line 1021
    .line 1022
    move-object/from16 v2, v44

    .line 1023
    .line 1024
    check-cast v2, Ljava/util/Map;

    .line 1025
    .line 1026
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v44

    .line 1030
    move-object/from16 v46, v13

    .line 1031
    .line 1032
    invoke-static/range {v44 .. v44}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v13

    .line 1036
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1037
    .line 1038
    .line 1039
    move-result v13

    .line 1040
    if-nez v13, :cond_24

    .line 1041
    .line 1042
    move-object/from16 v2, v45

    .line 1043
    .line 1044
    move-object/from16 v13, v46

    .line 1045
    .line 1046
    goto :goto_1d

    .line 1047
    :cond_24
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v13

    .line 1051
    invoke-static {v13}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v13

    .line 1055
    if-eqz v11, :cond_25

    .line 1056
    .line 1057
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v44

    .line 1061
    move-object/from16 v47, v1

    .line 1062
    .line 1063
    invoke-static/range {v44 .. v44}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v1

    .line 1067
    move-object/from16 v44, v5

    .line 1068
    .line 1069
    const-string v5, "general_naturalskill_id"

    .line 1070
    .line 1071
    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v5

    .line 1075
    invoke-static {v5}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v5

    .line 1079
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1080
    .line 1081
    .line 1082
    move-result v1

    .line 1083
    if-eqz v1, :cond_26

    .line 1084
    .line 1085
    goto :goto_1e

    .line 1086
    :cond_25
    move-object/from16 v47, v1

    .line 1087
    .line 1088
    move-object/from16 v44, v5

    .line 1089
    .line 1090
    :cond_26
    const-string v1, "is_natural"

    .line 1091
    .line 1092
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v1

    .line 1096
    invoke-static {v1}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v1

    .line 1100
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1101
    .line 1102
    .line 1103
    move-result v5

    .line 1104
    if-nez v5, :cond_28

    .line 1105
    .line 1106
    const-string v5, "true"

    .line 1107
    .line 1108
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1109
    .line 1110
    .line 1111
    move-result v1

    .line 1112
    if-eqz v1, :cond_27

    .line 1113
    .line 1114
    goto :goto_1e

    .line 1115
    :cond_27
    const/4 v1, 0x0

    .line 1116
    goto :goto_1f

    .line 1117
    :cond_28
    :goto_1e
    const/4 v1, 0x1

    .line 1118
    :goto_1f
    if-eqz v1, :cond_29

    .line 1119
    .line 1120
    goto :goto_20

    .line 1121
    :cond_29
    const/4 v1, 0x0

    .line 1122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v1

    .line 1126
    invoke-interface {v2, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    .line 1128
    .line 1129
    invoke-interface {v2, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    .line 1131
    .line 1132
    invoke-interface {v2, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    .line 1134
    .line 1135
    const-string v1, "skill_position"

    .line 1136
    .line 1137
    invoke-interface {v2, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    .line 1139
    .line 1140
    move-object v1, v0

    .line 1141
    check-cast v1, Ljava/util/Set;

    .line 1142
    .line 1143
    invoke-interface {v1, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1144
    .line 1145
    .line 1146
    move-object v1, v4

    .line 1147
    check-cast v1, Ljava/util/Set;

    .line 1148
    .line 1149
    invoke-interface {v1, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1150
    .line 1151
    .line 1152
    :goto_20
    move-object/from16 v5, v44

    .line 1153
    .line 1154
    move-object/from16 v2, v45

    .line 1155
    .line 1156
    move-object/from16 v13, v46

    .line 1157
    .line 1158
    move-object/from16 v1, v47

    .line 1159
    .line 1160
    goto/16 :goto_1d

    .line 1161
    .line 1162
    :cond_2a
    move-object/from16 v11, v39

    .line 1163
    .line 1164
    goto/16 :goto_1c

    .line 1165
    .line 1166
    :cond_2b
    move-object/from16 v47, v1

    .line 1167
    .line 1168
    move-object/from16 v45, v2

    .line 1169
    .line 1170
    move-object/from16 v44, v5

    .line 1171
    .line 1172
    move-object/from16 v46, v13

    .line 1173
    .line 1174
    if-eqz v23, :cond_2c

    .line 1175
    .line 1176
    move-object/from16 v1, v25

    .line 1177
    .line 1178
    invoke-static {v6, v1, v3}, Lcom/sgscq/vpn/handler/z0;->e(Ljava/util/Map;Ljava/util/ArrayList;Lm/f;)V

    .line 1179
    .line 1180
    .line 1181
    invoke-static {v6, v8, v3}, Lcom/sgscq/vpn/handler/z0;->e(Ljava/util/Map;Ljava/util/ArrayList;Lm/f;)V

    .line 1182
    .line 1183
    .line 1184
    :cond_2c
    if-eqz v35, :cond_31

    .line 1185
    .line 1186
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v1

    .line 1190
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1191
    .line 1192
    .line 1193
    move-result v2

    .line 1194
    if-eqz v2, :cond_31

    .line 1195
    .line 1196
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v2

    .line 1200
    check-cast v2, Ljava/util/Map;

    .line 1201
    .line 1202
    invoke-static {v2}, Lcom/sgscq/vpn/handler/z0;->r(Ljava/util/Map;)Ljava/lang/String;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v2

    .line 1206
    move-object/from16 v5, v44

    .line 1207
    .line 1208
    invoke-static {v5, v6}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v11

    .line 1212
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v11

    .line 1216
    const/4 v13, 0x0

    .line 1217
    :goto_22
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 1218
    .line 1219
    .line 1220
    move-result v14

    .line 1221
    if-eqz v14, :cond_2e

    .line 1222
    .line 1223
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v14

    .line 1227
    check-cast v14, Ljava/util/Map;

    .line 1228
    .line 1229
    move-object/from16 v25, v1

    .line 1230
    .line 1231
    move-object/from16 v1, v43

    .line 1232
    .line 1233
    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v39

    .line 1237
    invoke-static/range {v39 .. v39}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v1

    .line 1241
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1242
    .line 1243
    .line 1244
    move-result v1

    .line 1245
    if-nez v1, :cond_2d

    .line 1246
    .line 1247
    goto :goto_23

    .line 1248
    :cond_2d
    move-object/from16 v1, v47

    .line 1249
    .line 1250
    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v13

    .line 1254
    invoke-static {v13}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v13

    .line 1258
    invoke-static {v14}, Lcom/sgscq/vpn/handler/z0;->d(Ljava/util/Map;)V

    .line 1259
    .line 1260
    .line 1261
    move-object v14, v4

    .line 1262
    check-cast v14, Ljava/util/Set;

    .line 1263
    .line 1264
    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1265
    .line 1266
    .line 1267
    const/4 v13, 0x1

    .line 1268
    :goto_23
    move-object/from16 v1, v25

    .line 1269
    .line 1270
    goto :goto_22

    .line 1271
    :cond_2e
    move-object/from16 v25, v1

    .line 1272
    .line 1273
    move-object/from16 v1, v47

    .line 1274
    .line 1275
    if-eqz v13, :cond_30

    .line 1276
    .line 1277
    invoke-static {v5, v2, v6}, Lcom/sgscq/vpn/handler/z0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v11

    .line 1281
    if-nez v11, :cond_2f

    .line 1282
    .line 1283
    move-object/from16 v13, v36

    .line 1284
    .line 1285
    move-object/from16 v14, v46

    .line 1286
    .line 1287
    move-object/from16 v36, v0

    .line 1288
    .line 1289
    move-object/from16 v0, v38

    .line 1290
    .line 1291
    goto :goto_24

    .line 1292
    :cond_2f
    move-object/from16 v13, v36

    .line 1293
    .line 1294
    move-object/from16 v14, v46

    .line 1295
    .line 1296
    invoke-interface {v11, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    .line 1298
    .line 1299
    move-object/from16 v36, v0

    .line 1300
    .line 1301
    move-object/from16 v0, v41

    .line 1302
    .line 1303
    invoke-interface {v11, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    .line 1305
    .line 1306
    move-object/from16 v0, v40

    .line 1307
    .line 1308
    invoke-interface {v11, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    .line 1310
    .line 1311
    move-object/from16 v0, v38

    .line 1312
    .line 1313
    invoke-interface {v11, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    .line 1315
    .line 1316
    :goto_24
    move-object v11, v4

    .line 1317
    check-cast v11, Ljava/util/Set;

    .line 1318
    .line 1319
    invoke-interface {v11, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1320
    .line 1321
    .line 1322
    goto :goto_25

    .line 1323
    :cond_30
    move-object/from16 v13, v36

    .line 1324
    .line 1325
    move-object/from16 v14, v46

    .line 1326
    .line 1327
    move-object/from16 v36, v0

    .line 1328
    .line 1329
    move-object/from16 v0, v38

    .line 1330
    .line 1331
    :goto_25
    move-object/from16 v38, v0

    .line 1332
    .line 1333
    move-object/from16 v47, v1

    .line 1334
    .line 1335
    move-object/from16 v44, v5

    .line 1336
    .line 1337
    move-object/from16 v46, v14

    .line 1338
    .line 1339
    move-object/from16 v1, v25

    .line 1340
    .line 1341
    move-object/from16 v0, v36

    .line 1342
    .line 1343
    move-object/from16 v36, v13

    .line 1344
    .line 1345
    goto/16 :goto_21

    .line 1346
    .line 1347
    :cond_31
    move-object/from16 v13, v36

    .line 1348
    .line 1349
    move-object/from16 v5, v44

    .line 1350
    .line 1351
    move-object/from16 v14, v46

    .line 1352
    .line 1353
    move-object/from16 v1, v47

    .line 1354
    .line 1355
    move-object/from16 v36, v0

    .line 1356
    .line 1357
    if-eqz v22, :cond_35

    .line 1358
    .line 1359
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v0

    .line 1363
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1364
    .line 1365
    .line 1366
    move-result v2

    .line 1367
    if-eqz v2, :cond_35

    .line 1368
    .line 1369
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v2

    .line 1373
    check-cast v2, Ljava/util/Map;

    .line 1374
    .line 1375
    invoke-static {v2}, Lcom/sgscq/vpn/handler/z0;->r(Ljava/util/Map;)Ljava/lang/String;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v11

    .line 1379
    move-object/from16 v22, v0

    .line 1380
    .line 1381
    move-object/from16 v0, v34

    .line 1382
    .line 1383
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v2

    .line 1387
    invoke-static {v2}, Lcom/sgscq/vpn/handler/z0;->q(Ljava/lang/Object;)Ljava/util/List;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v2

    .line 1391
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1392
    .line 1393
    .line 1394
    move-result-object v2

    .line 1395
    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1396
    .line 1397
    .line 1398
    move-result v25

    .line 1399
    move-object/from16 v34, v0

    .line 1400
    .line 1401
    if-eqz v25, :cond_34

    .line 1402
    .line 1403
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v0

    .line 1407
    move-object/from16 v25, v2

    .line 1408
    .line 1409
    const-string v2, "skill_pk_id"

    .line 1410
    .line 1411
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v2

    .line 1415
    invoke-static {v0, v2}, Lcom/sgscq/vpn/handler/z0;->a(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v2

    .line 1419
    move-object/from16 v46, v14

    .line 1420
    .line 1421
    move-object/from16 v44, v15

    .line 1422
    .line 1423
    move-object/from16 v14, v45

    .line 1424
    .line 1425
    invoke-static {v14, v2, v6}, Lcom/sgscq/vpn/handler/z0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 1426
    .line 1427
    .line 1428
    move-result-object v15

    .line 1429
    if-eqz v15, :cond_33

    .line 1430
    .line 1431
    invoke-static {v5, v11, v6}, Lcom/sgscq/vpn/handler/z0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v38

    .line 1435
    if-nez v38, :cond_32

    .line 1436
    .line 1437
    goto :goto_28

    .line 1438
    :cond_32
    move-object/from16 v45, v14

    .line 1439
    .line 1440
    const-string v14, "2"

    .line 1441
    .line 1442
    invoke-interface {v15, v7, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v14

    .line 1446
    invoke-interface {v15, v9, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v14

    .line 1450
    invoke-static {v14}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v14

    .line 1454
    invoke-static {v0, v14}, Lcom/sgscq/vpn/handler/z0;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v43

    .line 1458
    const-string v38, "user_general_id"

    .line 1459
    .line 1460
    const-string v40, "new_skill_id"

    .line 1461
    .line 1462
    const-string v42, "skill_pos"

    .line 1463
    .line 1464
    move-object/from16 v39, v11

    .line 1465
    .line 1466
    move-object/from16 v41, v2

    .line 1467
    .line 1468
    filled-new-array/range {v38 .. v43}, [Ljava/lang/String;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v0

    .line 1472
    invoke-static {v0}, Lcom/sgscq/vpn/handler/z0;->A([Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v0

    .line 1476
    invoke-static {v6, v0}, Lcom/sgscq/vpn/cloud/m0;->s(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1477
    .line 1478
    .line 1479
    move-result-object v0

    .line 1480
    invoke-virtual {v3, v0}, Lm/f;->f(Ljava/util/LinkedHashMap;)V

    .line 1481
    .line 1482
    .line 1483
    goto :goto_29

    .line 1484
    :cond_33
    :goto_28
    move-object/from16 v45, v14

    .line 1485
    .line 1486
    :goto_29
    move-object/from16 v2, v25

    .line 1487
    .line 1488
    move-object/from16 v0, v34

    .line 1489
    .line 1490
    move-object/from16 v15, v44

    .line 1491
    .line 1492
    move-object/from16 v14, v46

    .line 1493
    .line 1494
    goto :goto_27

    .line 1495
    :cond_34
    move-object/from16 v0, v22

    .line 1496
    .line 1497
    goto/16 :goto_26

    .line 1498
    .line 1499
    :cond_35
    move-object/from16 v46, v14

    .line 1500
    .line 1501
    move-object/from16 v44, v15

    .line 1502
    .line 1503
    const-string v0, "Equipment"

    .line 1504
    .line 1505
    if-eqz v23, :cond_39

    .line 1506
    .line 1507
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1508
    .line 1509
    .line 1510
    move-result-object v2

    .line 1511
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1512
    .line 1513
    .line 1514
    move-result v7

    .line 1515
    if-eqz v7, :cond_39

    .line 1516
    .line 1517
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1518
    .line 1519
    .line 1520
    move-result-object v7

    .line 1521
    check-cast v7, Ljava/util/Map;

    .line 1522
    .line 1523
    invoke-static {v7}, Lcom/sgscq/vpn/handler/z0;->r(Ljava/util/Map;)Ljava/lang/String;

    .line 1524
    .line 1525
    .line 1526
    move-result-object v9

    .line 1527
    move-object/from16 v11, v33

    .line 1528
    .line 1529
    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    .line 1531
    .line 1532
    move-result-object v7

    .line 1533
    invoke-static {v7}, Lcom/sgscq/vpn/handler/z0;->q(Ljava/lang/Object;)Ljava/util/List;

    .line 1534
    .line 1535
    .line 1536
    move-result-object v7

    .line 1537
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v7

    .line 1541
    :goto_2b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1542
    .line 1543
    .line 1544
    move-result v14

    .line 1545
    if-eqz v14, :cond_38

    .line 1546
    .line 1547
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v14

    .line 1551
    const-string v15, "equipment_pk_id"

    .line 1552
    .line 1553
    move-object/from16 v22, v2

    .line 1554
    .line 1555
    const-string v2, "equipment_id"

    .line 1556
    .line 1557
    filled-new-array {v1, v15, v2}, [Ljava/lang/String;

    .line 1558
    .line 1559
    .line 1560
    move-result-object v2

    .line 1561
    invoke-static {v14, v2}, Lcom/sgscq/vpn/handler/z0;->a(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    .line 1562
    .line 1563
    .line 1564
    move-result-object v2

    .line 1565
    invoke-static {v0, v2, v6}, Lcom/sgscq/vpn/handler/z0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 1566
    .line 1567
    .line 1568
    move-result-object v14

    .line 1569
    if-eqz v14, :cond_37

    .line 1570
    .line 1571
    invoke-static {v5, v9, v6}, Lcom/sgscq/vpn/handler/z0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 1572
    .line 1573
    .line 1574
    move-result-object v14

    .line 1575
    if-nez v14, :cond_36

    .line 1576
    .line 1577
    goto :goto_2c

    .line 1578
    :cond_36
    const-string v14, "user_general_id"

    .line 1579
    .line 1580
    const-string v15, "new_equipment_id"

    .line 1581
    .line 1582
    filled-new-array {v14, v9, v15, v2}, [Ljava/lang/String;

    .line 1583
    .line 1584
    .line 1585
    move-result-object v2

    .line 1586
    invoke-static {v2}, Lcom/sgscq/vpn/handler/z0;->A([Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1587
    .line 1588
    .line 1589
    move-result-object v2

    .line 1590
    invoke-static {v6, v2}, Lcom/sgscq/vpn/cloud/m0;->q(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1591
    .line 1592
    .line 1593
    move-result-object v2

    .line 1594
    invoke-virtual {v3, v2}, Lm/f;->f(Ljava/util/LinkedHashMap;)V

    .line 1595
    .line 1596
    .line 1597
    :cond_37
    :goto_2c
    move-object/from16 v2, v22

    .line 1598
    .line 1599
    goto :goto_2b

    .line 1600
    :cond_38
    move-object/from16 v33, v11

    .line 1601
    .line 1602
    goto :goto_2a

    .line 1603
    :cond_39
    const-string v2, "skill_id"

    .line 1604
    .line 1605
    if-eqz v35, :cond_41

    .line 1606
    .line 1607
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1608
    .line 1609
    .line 1610
    move-result-object v7

    .line 1611
    :goto_2d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1612
    .line 1613
    .line 1614
    move-result v9

    .line 1615
    if-eqz v9, :cond_41

    .line 1616
    .line 1617
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1618
    .line 1619
    .line 1620
    move-result-object v9

    .line 1621
    check-cast v9, Ljava/util/Map;

    .line 1622
    .line 1623
    invoke-static {v9}, Lcom/sgscq/vpn/handler/z0;->r(Ljava/util/Map;)Ljava/lang/String;

    .line 1624
    .line 1625
    .line 1626
    move-result-object v11

    .line 1627
    move-object/from16 v14, v32

    .line 1628
    .line 1629
    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    .line 1631
    .line 1632
    move-result-object v9

    .line 1633
    invoke-static {v9}, Lcom/sgscq/vpn/handler/z0;->q(Ljava/lang/Object;)Ljava/util/List;

    .line 1634
    .line 1635
    .line 1636
    move-result-object v9

    .line 1637
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1638
    .line 1639
    .line 1640
    move-result-object v9

    .line 1641
    :goto_2e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 1642
    .line 1643
    .line 1644
    move-result v15

    .line 1645
    if-eqz v15, :cond_40

    .line 1646
    .line 1647
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1648
    .line 1649
    .line 1650
    move-result-object v15

    .line 1651
    move-object/from16 v22, v7

    .line 1652
    .line 1653
    const-string v7, "lieutenant_pk_id"

    .line 1654
    .line 1655
    filled-new-array {v10, v1, v7}, [Ljava/lang/String;

    .line 1656
    .line 1657
    .line 1658
    move-result-object v7

    .line 1659
    invoke-static {v15, v7}, Lcom/sgscq/vpn/handler/z0;->a(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    .line 1660
    .line 1661
    .line 1662
    move-result-object v7

    .line 1663
    invoke-static {v5, v11, v6}, Lcom/sgscq/vpn/handler/z0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 1664
    .line 1665
    .line 1666
    move-result-object v23

    .line 1667
    if-eqz v23, :cond_3f

    .line 1668
    .line 1669
    invoke-static {v5, v7, v6}, Lcom/sgscq/vpn/handler/z0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 1670
    .line 1671
    .line 1672
    move-result-object v23

    .line 1673
    if-nez v23, :cond_3a

    .line 1674
    .line 1675
    goto :goto_32

    .line 1676
    :cond_3a
    invoke-static {v15, v12}, Lcom/sgscq/vpn/handler/z0;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 1677
    .line 1678
    .line 1679
    move-result-object v43

    .line 1680
    filled-new-array {v13, v2}, [Ljava/lang/String;

    .line 1681
    .line 1682
    .line 1683
    move-result-object v23

    .line 1684
    move-object/from16 v47, v1

    .line 1685
    .line 1686
    instance-of v1, v15, Ljava/util/Map;

    .line 1687
    .line 1688
    if-nez v1, :cond_3b

    .line 1689
    .line 1690
    move-object/from16 v25, v9

    .line 1691
    .line 1692
    goto :goto_30

    .line 1693
    :cond_3b
    check-cast v15, Ljava/util/Map;

    .line 1694
    .line 1695
    const/4 v1, 0x0

    .line 1696
    move-object/from16 v25, v9

    .line 1697
    .line 1698
    :goto_2f
    const/4 v9, 0x2

    .line 1699
    if-ge v1, v9, :cond_3d

    .line 1700
    .line 1701
    aget-object v9, v23, v1

    .line 1702
    .line 1703
    invoke-interface {v15, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1704
    .line 1705
    .line 1706
    move-result-object v9

    .line 1707
    invoke-static {v9}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    .line 1708
    .line 1709
    .line 1710
    move-result-object v9

    .line 1711
    invoke-static {v9}, Lcom/sgscq/vpn/handler/z0;->p(Ljava/lang/String;)Z

    .line 1712
    .line 1713
    .line 1714
    move-result v32

    .line 1715
    if-eqz v32, :cond_3c

    .line 1716
    .line 1717
    goto :goto_31

    .line 1718
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    .line 1719
    .line 1720
    goto :goto_2f

    .line 1721
    :cond_3d
    :goto_30
    move-object/from16 v9, v46

    .line 1722
    .line 1723
    :goto_31
    const-string v38, "major_user_general_id"

    .line 1724
    .line 1725
    const-string v40, "lieutenant_user_general_id"

    .line 1726
    .line 1727
    const-string v42, "position"

    .line 1728
    .line 1729
    move-object/from16 v39, v11

    .line 1730
    .line 1731
    move-object/from16 v41, v7

    .line 1732
    .line 1733
    filled-new-array/range {v38 .. v43}, [Ljava/lang/String;

    .line 1734
    .line 1735
    .line 1736
    move-result-object v1

    .line 1737
    invoke-static {v1}, Lcom/sgscq/vpn/handler/z0;->A([Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1738
    .line 1739
    .line 1740
    move-result-object v1

    .line 1741
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 1742
    .line 1743
    .line 1744
    move-result v7

    .line 1745
    if-nez v7, :cond_3e

    .line 1746
    .line 1747
    invoke-interface {v1, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1748
    .line 1749
    .line 1750
    :cond_3e
    invoke-static {v6, v1}, Lcom/sgscq/vpn/cloud/m0;->r(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1751
    .line 1752
    .line 1753
    move-result-object v1

    .line 1754
    invoke-virtual {v3, v1}, Lm/f;->f(Ljava/util/LinkedHashMap;)V

    .line 1755
    .line 1756
    .line 1757
    goto :goto_33

    .line 1758
    :cond_3f
    :goto_32
    move-object/from16 v47, v1

    .line 1759
    .line 1760
    move-object/from16 v25, v9

    .line 1761
    .line 1762
    :goto_33
    move-object/from16 v7, v22

    .line 1763
    .line 1764
    move-object/from16 v9, v25

    .line 1765
    .line 1766
    move-object/from16 v1, v47

    .line 1767
    .line 1768
    goto :goto_2e

    .line 1769
    :cond_40
    move-object/from16 v32, v14

    .line 1770
    .line 1771
    goto/16 :goto_2d

    .line 1772
    .line 1773
    :cond_41
    iget-boolean v1, v3, Lm/f;->a:Z

    .line 1774
    .line 1775
    if-eqz v1, :cond_43

    .line 1776
    .line 1777
    move-object/from16 v1, v31

    .line 1778
    .line 1779
    invoke-static {v1, v6}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1780
    .line 1781
    .line 1782
    move-result-object v7

    .line 1783
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1784
    .line 1785
    .line 1786
    move-result-object v7

    .line 1787
    :cond_42
    :goto_34
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1788
    .line 1789
    .line 1790
    move-result v9

    .line 1791
    if-eqz v9, :cond_44

    .line 1792
    .line 1793
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1794
    .line 1795
    .line 1796
    move-result-object v9

    .line 1797
    check-cast v9, Ljava/util/Map;

    .line 1798
    .line 1799
    invoke-static {v9}, Lcom/sgscq/vpn/handler/z0;->r(Ljava/util/Map;)Ljava/lang/String;

    .line 1800
    .line 1801
    .line 1802
    move-result-object v9

    .line 1803
    invoke-static {v9}, Lcom/sgscq/vpn/handler/z0;->p(Ljava/lang/String;)Z

    .line 1804
    .line 1805
    .line 1806
    move-result v11

    .line 1807
    if-eqz v11, :cond_42

    .line 1808
    .line 1809
    move-object v11, v4

    .line 1810
    check-cast v11, Ljava/util/Set;

    .line 1811
    .line 1812
    invoke-interface {v11, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1813
    .line 1814
    .line 1815
    goto :goto_34

    .line 1816
    :cond_43
    move-object/from16 v1, v31

    .line 1817
    .line 1818
    :cond_44
    check-cast v4, Ljava/util/Set;

    .line 1819
    .line 1820
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1821
    .line 1822
    .line 1823
    move-result-object v7

    .line 1824
    :goto_35
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1825
    .line 1826
    .line 1827
    move-result v9

    .line 1828
    if-eqz v9, :cond_4f

    .line 1829
    .line 1830
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1831
    .line 1832
    .line 1833
    move-result-object v9

    .line 1834
    check-cast v9, Ljava/lang/String;

    .line 1835
    .line 1836
    invoke-static {v5, v9, v6}, Lcom/sgscq/vpn/handler/z0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 1837
    .line 1838
    .line 1839
    move-result-object v11

    .line 1840
    if-nez v11, :cond_45

    .line 1841
    .line 1842
    move-object/from16 v22, v2

    .line 1843
    .line 1844
    move-object/from16 v23, v7

    .line 1845
    .line 1846
    move-object/from16 v2, v30

    .line 1847
    .line 1848
    move-object/from16 v13, v45

    .line 1849
    .line 1850
    goto/16 :goto_39

    .line 1851
    .line 1852
    :cond_45
    new-instance v12, Ljava/util/ArrayList;

    .line 1853
    .line 1854
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1855
    .line 1856
    .line 1857
    move-object/from16 v13, v45

    .line 1858
    .line 1859
    invoke-static {v13, v6}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1860
    .line 1861
    .line 1862
    move-result-object v14

    .line 1863
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1864
    .line 1865
    .line 1866
    move-result-object v14

    .line 1867
    :goto_36
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 1868
    .line 1869
    .line 1870
    move-result v15

    .line 1871
    if-eqz v15, :cond_49

    .line 1872
    .line 1873
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1874
    .line 1875
    .line 1876
    move-result-object v15

    .line 1877
    check-cast v15, Ljava/util/Map;

    .line 1878
    .line 1879
    invoke-interface {v15, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1880
    .line 1881
    .line 1882
    move-result-object v22

    .line 1883
    move-object/from16 v23, v7

    .line 1884
    .line 1885
    invoke-static/range {v22 .. v22}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    .line 1886
    .line 1887
    .line 1888
    move-result-object v7

    .line 1889
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1890
    .line 1891
    .line 1892
    move-result v7

    .line 1893
    if-eqz v7, :cond_48

    .line 1894
    .line 1895
    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1896
    .line 1897
    .line 1898
    move-result-object v7

    .line 1899
    invoke-static {v7}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    .line 1900
    .line 1901
    .line 1902
    move-result-object v7

    .line 1903
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 1904
    .line 1905
    .line 1906
    move-result v22

    .line 1907
    if-eqz v22, :cond_46

    .line 1908
    .line 1909
    move-object/from16 v22, v2

    .line 1910
    .line 1911
    move-object/from16 v2, v30

    .line 1912
    .line 1913
    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1914
    .line 1915
    .line 1916
    move-result-object v7

    .line 1917
    invoke-static {v7}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    .line 1918
    .line 1919
    .line 1920
    move-result-object v7

    .line 1921
    goto :goto_37

    .line 1922
    :cond_46
    move-object/from16 v22, v2

    .line 1923
    .line 1924
    move-object/from16 v2, v30

    .line 1925
    .line 1926
    :goto_37
    invoke-static {v7}, Lcom/sgscq/vpn/handler/f;->c(Ljava/lang/String;)Z

    .line 1927
    .line 1928
    .line 1929
    move-result v7

    .line 1930
    if-eqz v7, :cond_47

    .line 1931
    .line 1932
    goto :goto_38

    .line 1933
    :cond_47
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 1934
    .line 1935
    invoke-direct {v7, v15}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 1936
    .line 1937
    .line 1938
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1939
    .line 1940
    .line 1941
    goto :goto_38

    .line 1942
    :cond_48
    move-object/from16 v22, v2

    .line 1943
    .line 1944
    move-object/from16 v2, v30

    .line 1945
    .line 1946
    :goto_38
    move-object/from16 v30, v2

    .line 1947
    .line 1948
    move-object/from16 v2, v22

    .line 1949
    .line 1950
    move-object/from16 v7, v23

    .line 1951
    .line 1952
    goto :goto_36

    .line 1953
    :cond_49
    move-object/from16 v22, v2

    .line 1954
    .line 1955
    move-object/from16 v23, v7

    .line 1956
    .line 1957
    move-object/from16 v2, v30

    .line 1958
    .line 1959
    new-instance v7, Ln/b;

    .line 1960
    .line 1961
    const/16 v14, 0xe

    .line 1962
    .line 1963
    invoke-direct {v7, v14}, Ln/b;-><init>(I)V

    .line 1964
    .line 1965
    .line 1966
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 1967
    .line 1968
    .line 1969
    const-string v7, "gSkill"

    .line 1970
    .line 1971
    invoke-interface {v11, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1972
    .line 1973
    .line 1974
    const-string v7, "general_skills"

    .line 1975
    .line 1976
    invoke-interface {v11, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1977
    .line 1978
    .line 1979
    :goto_39
    invoke-static {v5, v9, v6}, Lcom/sgscq/vpn/handler/z0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 1980
    .line 1981
    .line 1982
    move-result-object v7

    .line 1983
    if-nez v7, :cond_4b

    .line 1984
    .line 1985
    :cond_4a
    move-object/from16 v32, v1

    .line 1986
    .line 1987
    move-object/from16 v30, v2

    .line 1988
    .line 1989
    move-object/from16 v25, v10

    .line 1990
    .line 1991
    move-object/from16 v1, v44

    .line 1992
    .line 1993
    goto/16 :goto_3c

    .line 1994
    .line 1995
    :cond_4b
    invoke-static {v1, v6}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1996
    .line 1997
    .line 1998
    move-result-object v11

    .line 1999
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2000
    .line 2001
    .line 2002
    move-result-object v11

    .line 2003
    :goto_3a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 2004
    .line 2005
    .line 2006
    move-result v12

    .line 2007
    if-eqz v12, :cond_4a

    .line 2008
    .line 2009
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2010
    .line 2011
    .line 2012
    move-result-object v12

    .line 2013
    check-cast v12, Ljava/util/Map;

    .line 2014
    .line 2015
    invoke-static {v12}, Lcom/sgscq/vpn/handler/z0;->r(Ljava/util/Map;)Ljava/lang/String;

    .line 2016
    .line 2017
    .line 2018
    move-result-object v14

    .line 2019
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2020
    .line 2021
    .line 2022
    move-result v14

    .line 2023
    if-nez v14, :cond_4c

    .line 2024
    .line 2025
    goto :goto_3a

    .line 2026
    :cond_4c
    const/4 v14, 0x1

    .line 2027
    :goto_3b
    const/4 v15, 0x4

    .line 2028
    if-gt v14, v15, :cond_4e

    .line 2029
    .line 2030
    const-string v15, "equipment_"

    .line 2031
    .line 2032
    move-object/from16 v30, v2

    .line 2033
    .line 2034
    invoke-static {v15, v14}, La/b0;->a(Ljava/lang/String;I)Ljava/lang/String;

    .line 2035
    .line 2036
    .line 2037
    move-result-object v2

    .line 2038
    move-object/from16 v25, v10

    .line 2039
    .line 2040
    new-instance v10, Ljava/lang/StringBuilder;

    .line 2041
    .line 2042
    move-object/from16 v31, v11

    .line 2043
    .line 2044
    const-string v11, "equipment_id_"

    .line 2045
    .line 2046
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2047
    .line 2048
    .line 2049
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2050
    .line 2051
    .line 2052
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2053
    .line 2054
    .line 2055
    move-result-object v10

    .line 2056
    move-object/from16 v32, v1

    .line 2057
    .line 2058
    move-object/from16 v1, v44

    .line 2059
    .line 2060
    invoke-interface {v7, v10, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2061
    .line 2062
    .line 2063
    move-result-object v10

    .line 2064
    invoke-interface {v7, v2, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2065
    .line 2066
    .line 2067
    move-result-object v2

    .line 2068
    invoke-static {v2}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    .line 2069
    .line 2070
    .line 2071
    move-result-object v2

    .line 2072
    invoke-static {v2}, Lcom/sgscq/vpn/handler/z0;->p(Ljava/lang/String;)Z

    .line 2073
    .line 2074
    .line 2075
    move-result v10

    .line 2076
    if-nez v10, :cond_4d

    .line 2077
    .line 2078
    move-object v2, v1

    .line 2079
    :cond_4d
    new-instance v10, Ljava/lang/StringBuilder;

    .line 2080
    .line 2081
    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2082
    .line 2083
    .line 2084
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2085
    .line 2086
    .line 2087
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2088
    .line 2089
    .line 2090
    move-result-object v10

    .line 2091
    invoke-interface {v12, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2092
    .line 2093
    .line 2094
    new-instance v10, Ljava/lang/StringBuilder;

    .line 2095
    .line 2096
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2097
    .line 2098
    .line 2099
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2100
    .line 2101
    .line 2102
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2103
    .line 2104
    .line 2105
    move-result-object v10

    .line 2106
    invoke-interface {v12, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2107
    .line 2108
    .line 2109
    new-instance v10, Ljava/lang/StringBuilder;

    .line 2110
    .line 2111
    const-string v11, "equip_id_"

    .line 2112
    .line 2113
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2114
    .line 2115
    .line 2116
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2117
    .line 2118
    .line 2119
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2120
    .line 2121
    .line 2122
    move-result-object v10

    .line 2123
    invoke-interface {v12, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2124
    .line 2125
    .line 2126
    add-int/lit8 v14, v14, 0x1

    .line 2127
    .line 2128
    move-object/from16 v44, v1

    .line 2129
    .line 2130
    move-object/from16 v10, v25

    .line 2131
    .line 2132
    move-object/from16 v2, v30

    .line 2133
    .line 2134
    move-object/from16 v11, v31

    .line 2135
    .line 2136
    move-object/from16 v1, v32

    .line 2137
    .line 2138
    goto :goto_3b

    .line 2139
    :cond_4e
    move-object/from16 v32, v1

    .line 2140
    .line 2141
    move-object/from16 v30, v2

    .line 2142
    .line 2143
    move-object/from16 v25, v10

    .line 2144
    .line 2145
    move-object/from16 v31, v11

    .line 2146
    .line 2147
    move-object/from16 v1, v44

    .line 2148
    .line 2149
    const-string v2, "horse_id"

    .line 2150
    .line 2151
    invoke-interface {v7, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2152
    .line 2153
    .line 2154
    move-result-object v10

    .line 2155
    const-string v11, "mount_id"

    .line 2156
    .line 2157
    invoke-interface {v7, v11, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2158
    .line 2159
    .line 2160
    move-result-object v10

    .line 2161
    invoke-static {v10}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    .line 2162
    .line 2163
    .line 2164
    move-result-object v10

    .line 2165
    invoke-interface {v12, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2166
    .line 2167
    .line 2168
    invoke-interface {v7, v11, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2169
    .line 2170
    .line 2171
    move-result-object v10

    .line 2172
    invoke-interface {v7, v2, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2173
    .line 2174
    .line 2175
    move-result-object v10

    .line 2176
    invoke-static {v10}, Lcom/sgscq/vpn/handler/z0;->B(Ljava/lang/Object;)Ljava/lang/String;

    .line 2177
    .line 2178
    .line 2179
    move-result-object v10

    .line 2180
    invoke-interface {v12, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2181
    .line 2182
    .line 2183
    move-object/from16 v10, v25

    .line 2184
    .line 2185
    move-object/from16 v2, v30

    .line 2186
    .line 2187
    move-object/from16 v11, v31

    .line 2188
    .line 2189
    move-object/from16 v1, v32

    .line 2190
    .line 2191
    goto/16 :goto_3a

    .line 2192
    .line 2193
    :goto_3c
    const/4 v2, 0x0

    .line 2194
    invoke-static {v2}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 2195
    .line 2196
    .line 2197
    move-result-object v2

    .line 2198
    invoke-virtual {v2, v9, v6}, Lcom/sgscq/vpn/w1;->F2(Ljava/lang/String;Ljava/util/Map;)Z

    .line 2199
    .line 2200
    .line 2201
    move-object/from16 v44, v1

    .line 2202
    .line 2203
    move-object/from16 v45, v13

    .line 2204
    .line 2205
    move-object/from16 v2, v22

    .line 2206
    .line 2207
    move-object/from16 v7, v23

    .line 2208
    .line 2209
    move-object/from16 v10, v25

    .line 2210
    .line 2211
    move-object/from16 v1, v32

    .line 2212
    .line 2213
    goto/16 :goto_35

    .line 2214
    .line 2215
    :cond_4f
    move-object/from16 v32, v1

    .line 2216
    .line 2217
    move-object/from16 v7, v28

    .line 2218
    .line 2219
    move/from16 v2, v29

    .line 2220
    .line 2221
    move-object/from16 v13, v45

    .line 2222
    .line 2223
    invoke-static {v2, v7}, Lcom/sgscq/vpn/handler/z0;->u(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2224
    .line 2225
    .line 2226
    move-result-object v1

    .line 2227
    invoke-static {v2, v8}, Lcom/sgscq/vpn/p5;->L0(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2228
    .line 2229
    .line 2230
    move-result-object v2

    .line 2231
    invoke-static {}, Lcom/sgscq/vpn/handler/z0;->C()Ljava/util/LinkedHashMap;

    .line 2232
    .line 2233
    .line 2234
    move-result-object v7

    .line 2235
    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 2236
    .line 2237
    .line 2238
    move-result-object v8

    .line 2239
    move-object/from16 v9, v27

    .line 2240
    .line 2241
    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2242
    .line 2243
    .line 2244
    move-object/from16 v8, v21

    .line 2245
    .line 2246
    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2247
    .line 2248
    .line 2249
    const-string v1, "team"

    .line 2250
    .line 2251
    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2252
    .line 2253
    .line 2254
    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 2255
    .line 2256
    .line 2257
    move-result-object v8

    .line 2258
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 2259
    .line 2260
    .line 2261
    move-result-object v1

    .line 2262
    invoke-static {v9, v8, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 2263
    .line 2264
    .line 2265
    move-result-object v1

    .line 2266
    const/4 v2, 0x0

    .line 2267
    new-array v2, v2, [Ljava/lang/Object;

    .line 2268
    .line 2269
    const-string v8, "this_team_info"

    .line 2270
    .line 2271
    invoke-static {v8, v1, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 2272
    .line 2273
    .line 2274
    move-result-object v1

    .line 2275
    const-string v2, "return_info"

    .line 2276
    .line 2277
    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2278
    .line 2279
    .line 2280
    new-instance v1, Ljava/util/ArrayList;

    .line 2281
    .line 2282
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2283
    .line 2284
    .line 2285
    const-string v2, "changed_general_pk_ids"

    .line 2286
    .line 2287
    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2288
    .line 2289
    .line 2290
    new-instance v1, Ljava/util/ArrayList;

    .line 2291
    .line 2292
    move-object/from16 v8, v36

    .line 2293
    .line 2294
    check-cast v8, Ljava/util/Set;

    .line 2295
    .line 2296
    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2297
    .line 2298
    .line 2299
    const-string v9, "changed_skill_ids"

    .line 2300
    .line 2301
    invoke-interface {v7, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2302
    .line 2303
    .line 2304
    new-instance v1, Ljava/util/ArrayList;

    .line 2305
    .line 2306
    iget-object v10, v3, Lm/f;->d:Ljava/io/Serializable;

    .line 2307
    .line 2308
    check-cast v10, Ljava/util/Set;

    .line 2309
    .line 2310
    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2311
    .line 2312
    .line 2313
    const-string v11, "changed_equipment_pk_ids"

    .line 2314
    .line 2315
    invoke-interface {v7, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2316
    .line 2317
    .line 2318
    iget-boolean v1, v3, Lm/f;->a:Z

    .line 2319
    .line 2320
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2321
    .line 2322
    .line 2323
    move-result-object v1

    .line 2324
    const-string v12, "buddy_changed"

    .line 2325
    .line 2326
    invoke-interface {v7, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2327
    .line 2328
    .line 2329
    new-instance v1, Ljava/util/ArrayList;

    .line 2330
    .line 2331
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2332
    .line 2333
    .line 2334
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    .line 2335
    .line 2336
    .line 2337
    move-result v4

    .line 2338
    if-nez v4, :cond_50

    .line 2339
    .line 2340
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2341
    .line 2342
    .line 2343
    :cond_50
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    .line 2344
    .line 2345
    .line 2346
    move-result v4

    .line 2347
    if-nez v4, :cond_51

    .line 2348
    .line 2349
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2350
    .line 2351
    .line 2352
    :cond_51
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    .line 2353
    .line 2354
    .line 2355
    move-result v4

    .line 2356
    if-nez v4, :cond_52

    .line 2357
    .line 2358
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2359
    .line 2360
    .line 2361
    :cond_52
    move-object/from16 v4, v32

    .line 2362
    .line 2363
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2364
    .line 2365
    .line 2366
    iget-boolean v3, v3, Lm/f;->a:Z

    .line 2367
    .line 2368
    if-eqz v3, :cond_53

    .line 2369
    .line 2370
    move-object/from16 v3, v37

    .line 2371
    .line 2372
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2373
    .line 2374
    .line 2375
    goto :goto_3d

    .line 2376
    :cond_53
    move-object/from16 v3, v37

    .line 2377
    .line 2378
    :goto_3d
    new-instance v8, Ljava/lang/StringBuilder;

    .line 2379
    .line 2380
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2381
    .line 2382
    .line 2383
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2384
    .line 2385
    .line 2386
    move-result-object v1

    .line 2387
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2388
    .line 2389
    .line 2390
    move-result v10

    .line 2391
    const-string v14, ","

    .line 2392
    .line 2393
    if-eqz v10, :cond_54

    .line 2394
    .line 2395
    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2396
    .line 2397
    .line 2398
    move-result-object v10

    .line 2399
    check-cast v10, Ljava/lang/CharSequence;

    .line 2400
    .line 2401
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2402
    .line 2403
    .line 2404
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2405
    .line 2406
    .line 2407
    move-result v10

    .line 2408
    if-eqz v10, :cond_54

    .line 2409
    .line 2410
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2411
    .line 2412
    .line 2413
    goto :goto_3e

    .line 2414
    :cond_54
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2415
    .line 2416
    .line 2417
    move-result-object v1

    .line 2418
    move-object/from16 v15, v20

    .line 2419
    .line 2420
    invoke-interface {v7, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2421
    .line 2422
    .line 2423
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 2424
    .line 2425
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2426
    .line 2427
    .line 2428
    invoke-virtual {v7, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2429
    .line 2430
    .line 2431
    move-result-object v2

    .line 2432
    invoke-static {v2}, Lcom/sgscq/vpn/handler/z0;->z(Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 2433
    .line 2434
    .line 2435
    move-result-object v2

    .line 2436
    invoke-virtual {v7, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2437
    .line 2438
    .line 2439
    move-result-object v8

    .line 2440
    invoke-static {v8}, Lcom/sgscq/vpn/handler/z0;->z(Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 2441
    .line 2442
    .line 2443
    move-result-object v8

    .line 2444
    invoke-virtual {v7, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2445
    .line 2446
    .line 2447
    move-result-object v9

    .line 2448
    invoke-static {v9}, Lcom/sgscq/vpn/handler/z0;->z(Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 2449
    .line 2450
    .line 2451
    move-result-object v9

    .line 2452
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2453
    .line 2454
    .line 2455
    move-result v10

    .line 2456
    if-nez v10, :cond_55

    .line 2457
    .line 2458
    invoke-static {v5, v2, v6}, Lcom/sgscq/vpn/handler/z0;->l(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 2459
    .line 2460
    .line 2461
    move-result-object v2

    .line 2462
    invoke-static {v2}, Lcom/sgscq/vpn/handler/z0;->t(Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    .line 2463
    .line 2464
    .line 2465
    move-result-object v2

    .line 2466
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2467
    .line 2468
    .line 2469
    :cond_55
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2470
    .line 2471
    .line 2472
    move-result v2

    .line 2473
    if-nez v2, :cond_56

    .line 2474
    .line 2475
    invoke-static {v13, v8, v6}, Lcom/sgscq/vpn/handler/z0;->l(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 2476
    .line 2477
    .line 2478
    move-result-object v2

    .line 2479
    invoke-static {v2}, Lcom/sgscq/vpn/handler/z0;->t(Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    .line 2480
    .line 2481
    .line 2482
    move-result-object v2

    .line 2483
    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2484
    .line 2485
    .line 2486
    :cond_56
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2487
    .line 2488
    .line 2489
    move-result v2

    .line 2490
    if-nez v2, :cond_57

    .line 2491
    .line 2492
    invoke-static {v0, v9, v6}, Lcom/sgscq/vpn/handler/z0;->l(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 2493
    .line 2494
    .line 2495
    move-result-object v2

    .line 2496
    invoke-static {v2}, Lcom/sgscq/vpn/handler/z0;->t(Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    .line 2497
    .line 2498
    .line 2499
    move-result-object v2

    .line 2500
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2501
    .line 2502
    .line 2503
    :cond_57
    new-instance v0, Ljava/util/ArrayList;

    .line 2504
    .line 2505
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2506
    .line 2507
    .line 2508
    invoke-static {v4, v6}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 2509
    .line 2510
    .line 2511
    move-result-object v2

    .line 2512
    invoke-static {v2, v6}, Lcom/sgscq/vpn/p5;->c0(Ljava/util/List;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 2513
    .line 2514
    .line 2515
    move-result-object v2

    .line 2516
    new-instance v5, Ljava/util/ArrayList;

    .line 2517
    .line 2518
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2519
    .line 2520
    .line 2521
    move-object/from16 v9, p2

    .line 2522
    .line 2523
    move-object/from16 v8, v24

    .line 2524
    .line 2525
    filled-new-array {v8, v2, v9, v5}, [Ljava/lang/Object;

    .line 2526
    .line 2527
    .line 2528
    move-result-object v2

    .line 2529
    move-object/from16 v5, p1

    .line 2530
    .line 2531
    invoke-static {v5, v0, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 2532
    .line 2533
    .line 2534
    move-result-object v0

    .line 2535
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2536
    .line 2537
    .line 2538
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2539
    .line 2540
    invoke-virtual {v7, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2541
    .line 2542
    .line 2543
    move-result-object v2

    .line 2544
    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 2545
    .line 2546
    .line 2547
    move-result v0

    .line 2548
    if-eqz v0, :cond_58

    .line 2549
    .line 2550
    new-instance v0, Ljava/util/ArrayList;

    .line 2551
    .line 2552
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2553
    .line 2554
    .line 2555
    new-instance v2, Ljava/util/ArrayList;

    .line 2556
    .line 2557
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2558
    .line 2559
    .line 2560
    new-instance v4, Ljava/util/ArrayList;

    .line 2561
    .line 2562
    invoke-static {v3, v6}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 2563
    .line 2564
    .line 2565
    move-result-object v10

    .line 2566
    invoke-direct {v4, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2567
    .line 2568
    .line 2569
    filled-new-array {v8, v2, v9, v4}, [Ljava/lang/Object;

    .line 2570
    .line 2571
    .line 2572
    move-result-object v2

    .line 2573
    invoke-static {v5, v0, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 2574
    .line 2575
    .line 2576
    move-result-object v0

    .line 2577
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2578
    .line 2579
    .line 2580
    :cond_58
    invoke-virtual {v7, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2581
    .line 2582
    .line 2583
    move-result-object v0

    .line 2584
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2585
    .line 2586
    .line 2587
    move-result-object v0

    .line 2588
    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 2589
    .line 2590
    .line 2591
    move-result-object v0

    .line 2592
    move-object/from16 v3, p0

    .line 2593
    .line 2594
    move-object/from16 v5, v19

    .line 2595
    .line 2596
    invoke-virtual {v3, v5, v6, v1, v0}, Lcom/sgscq/vpn/handler/z0;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 2597
    .line 2598
    .line 2599
    move-result-object v0

    .line 2600
    move-object v1, v0

    .line 2601
    move-object v0, v7

    .line 2602
    move-object/from16 v2, v18

    .line 2603
    .line 2604
    goto :goto_3f

    .line 2605
    :cond_59
    move-object/from16 v18, v5

    .line 2606
    .line 2607
    move v2, v7

    .line 2608
    move-object v8, v13

    .line 2609
    move-object v5, v4

    .line 2610
    move-object v4, v15

    .line 2611
    move-object v15, v14

    .line 2612
    invoke-static {v6}, Lcom/sgscq/vpn/handler/z0;->h(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 2613
    .line 2614
    .line 2615
    move-result-object v0

    .line 2616
    invoke-interface {v6, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2617
    .line 2618
    .line 2619
    invoke-static {}, Lcom/sgscq/vpn/handler/z0;->C()Ljava/util/LinkedHashMap;

    .line 2620
    .line 2621
    .line 2622
    move-result-object v1

    .line 2623
    invoke-static {v2, v0}, Lcom/sgscq/vpn/handler/z0;->u(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2624
    .line 2625
    .line 2626
    move-result-object v0

    .line 2627
    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2628
    .line 2629
    .line 2630
    invoke-interface {v1, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2631
    .line 2632
    .line 2633
    filled-new-array {v4}, [Ljava/lang/String;

    .line 2634
    .line 2635
    .line 2636
    move-result-object v0

    .line 2637
    invoke-virtual {v3, v5, v6, v6, v0}, Lcom/sgscq/vpn/handler/z0;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 2638
    .line 2639
    .line 2640
    move-result-object v0

    .line 2641
    move-object/from16 v2, v18

    .line 2642
    .line 2643
    move-object/from16 v48, v1

    .line 2644
    .line 2645
    move-object v1, v0

    .line 2646
    move-object/from16 v0, v48

    .line 2647
    .line 2648
    :goto_3f
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2649
    .line 2650
    .line 2651
    :goto_40
    move-object/from16 v1, v17

    .line 2652
    .line 2653
    invoke-virtual {v1, v5, v6}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    .line 2654
    .line 2655
    .line 2656
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 2657
    .line 2658
    .line 2659
    move-result-object v0

    .line 2660
    move-object/from16 v1, v16

    .line 2661
    .line 2662
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 2663
    .line 2664
    .line 2665
    move-result-object v0

    .line 2666
    return-object v0
.end method
