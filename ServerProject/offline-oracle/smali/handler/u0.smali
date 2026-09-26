.class public final Lcom/sgscq/vpn/handler/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:[I

.field public static final c:[I

.field public static final d:[I

.field public static final e:[I

.field public static final f:[I


# instance fields
.field public final a:Lcom/sgscq/vpn/handler/e0;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    const/16 v1, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/handler/u0;->b:[I

    const/16 v0, 0x14

    const/16 v1, 0x2bc

    const/16 v2, 0x96

    const/16 v3, 0x50

    const/16 v4, 0x32

    filled-new-array {v1, v2, v3, v4, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/handler/u0;->c:[I

    const/16 v0, 0xfa

    const/16 v1, 0x1c2

    const/16 v3, 0x64

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/handler/u0;->d:[I

    const/16 v0, 0xc8

    filled-new-array {v3, v0, v1, v2, v3}, [I

    move-result-object v2

    sput-object v2, Lcom/sgscq/vpn/handler/u0;->e:[I

    filled-new-array {v4, v3, v0, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/handler/u0;->f:[I

    return-void
.end method

.method public constructor <init>(Lcom/sgscq/vpn/handler/k0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/handler/u0;->a:Lcom/sgscq/vpn/handler/e0;

    return-void
.end method

.method public static a(ILjava/util/Map;)Ljava/util/Map;
    .locals 19

    .line 1
    move-object/from16 v6, p1

    .line 2
    .line 3
    const-string v7, "Item"

    .line 4
    .line 5
    invoke-static {v7, v6}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v8

    .line 9
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const-string v11, "600095"

    .line 18
    .line 19
    const-string v15, "add"

    .line 20
    .line 21
    const-string v14, "upd"

    .line 22
    .line 23
    const-string v13, "del"

    .line 24
    .line 25
    const-string v10, "item_id"

    .line 26
    .line 27
    const-string v4, "id"

    .line 28
    .line 29
    const/4 v12, 0x1

    .line 30
    const-string v9, "item_num"

    .line 31
    .line 32
    const-string v5, "num"

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/util/Map;

    .line 42
    .line 43
    const-string v2, ""

    .line 44
    .line 45
    invoke-static {v1, v4, v2, v10, v11}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {v1, v9, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v1, v5, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0, v3}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    add-int v0, v0, p0

    .line 69
    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-interface {v1, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    new-array v2, v12, [Ljava/util/Map;

    .line 90
    .line 91
    aput-object v1, v2, v3

    .line 92
    .line 93
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    filled-new-array {v14, v2, v15, v8}, [Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-static {v13, v0, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    return-object v1

    .line 109
    :cond_1
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 110
    .line 111
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v16, "pk_id"

    .line 115
    .line 116
    move-object v0, v7

    .line 117
    move-object/from16 v1, p1

    .line 118
    .line 119
    move-object/from16 v17, v2

    .line 120
    .line 121
    move/from16 v18, v3

    .line 122
    .line 123
    move-object/from16 v3, v16

    .line 124
    .line 125
    move-object/from16 v16, v5

    .line 126
    .line 127
    move-object v5, v11

    .line 128
    invoke-static/range {v0 .. v5}, Lc/a;->x(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    move-object v0, v9

    .line 132
    move-object/from16 v9, v17

    .line 133
    .line 134
    move v1, v12

    .line 135
    move/from16 v12, p0

    .line 136
    .line 137
    move-object v2, v13

    .line 138
    move-object/from16 v13, v16

    .line 139
    .line 140
    move-object v3, v14

    .line 141
    move/from16 v14, p0

    .line 142
    .line 143
    move-object v4, v15

    .line 144
    move-object v15, v0

    .line 145
    invoke-static/range {v9 .. v15}, Lc/a;->z(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string v0, "item_type"

    .line 149
    .line 150
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    invoke-interface {v9, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    const-string v0, "type"

    .line 158
    .line 159
    const-string v5, "1"

    .line 160
    .line 161
    invoke-interface {v9, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    const-string v0, "is_new"

    .line 165
    .line 166
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 167
    .line 168
    invoke-interface {v9, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    new-instance v0, Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .line 178
    .line 179
    new-array v1, v1, [Ljava/util/Map;

    .line 180
    .line 181
    aput-object v9, v1, v18

    .line 182
    .line 183
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    filled-new-array {v3, v1, v4, v8}, [Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-static {v2, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    return-object v9
.end method

.method public static b(Ljava/util/Map;)Z
    .locals 3

    .line 1
    const-string v0, "pulse_value"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    move-result v1

    if-gtz v1, :cond_0

    return v2

    :cond_0
    invoke-static {v1, p0}, Lcom/sgscq/vpn/handler/u0;->a(ILjava/util/Map;)Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public static d(Ljava/util/Map;)I
    .locals 5

    .line 1
    const-string v0, "top_level"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-static {v1, v2}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0, v2}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v3, 0x0

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    const-string v0, "meridian_level"

    .line 24
    .line 25
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0, v2}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/16 v4, 0x8

    .line 34
    .line 35
    if-lt v0, v4, :cond_0

    .line 36
    .line 37
    const-string v0, "point_level"

    .line 38
    .line 39
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0, v3}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    const/16 v0, 0x1e

    .line 48
    .line 49
    if-lt p0, v0, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move v2, v3

    .line 53
    :goto_0
    if-eqz v2, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 57
    .line 58
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    :goto_1
    return v1
.end method

.method public static e(Ljava/util/LinkedHashMap;Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    .line 1
    const-string v0, "delta_data"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    move-object p1, p0

    check-cast p1, Ljava/util/Map;

    :cond_0
    return-object p1
.end method

.method public static f(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 9

    .line 1
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Ljava/util/Map;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "add"

    .line 9
    .line 10
    const-string v4, "upd"

    .line 11
    .line 12
    const-string v5, "del"

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    filled-new-array {v4, v0, v3, v1}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v5, p1, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-array v0, v2, [Ljava/lang/Object;

    .line 40
    .line 41
    invoke-static {p0, p1, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_0
    check-cast v0, Ljava/util/Map;

    .line 47
    .line 48
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    instance-of v1, v1, Ljava/util/List;

    .line 53
    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    new-instance v1, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    check-cast v6, Ljava/util/List;

    .line 63
    .line 64
    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    instance-of v6, v6, Ljava/util/List;

    .line 78
    .line 79
    if-eqz v6, :cond_2

    .line 80
    .line 81
    new-instance v6, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Ljava/util/List;

    .line 88
    .line 89
    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .line 97
    .line 98
    :goto_1
    invoke-static {p0, p1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    new-instance v7, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .line 106
    .line 107
    new-instance v8, Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .line 111
    .line 112
    filled-new-array {v4, v8, v3, v0}, [Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {v5, v7, v0, p1, p0}, Lc/a;->n(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    filled-new-array {v4, v6, v3, p1}, [Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {v5, v1, p1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    new-array v0, v2, [Ljava/lang/Object;

    .line 129
    .line 130
    invoke-static {p0, p1, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    return-object p0
.end method

.method public static g(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 9

    .line 1
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "code"

    const-string v3, "result"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v5, "msg"

    const-string v7, "error_code"

    move-object v2, v0

    move-object v6, p0

    move-object v8, v0

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "ret"

    invoke-static {v1, v0, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/util/Map;)Z
    .locals 4

    .line 1
    const-string v0, "top_level"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-lt v0, v3, :cond_0

    const-string v0, "meridian_level"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    move-result v0

    if-lt v0, v3, :cond_0

    const-string v0, "point_level"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    move-result p0

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public static j(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "pulse.getList"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pulse.practicePulse"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pulse.pulseCollect"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "meridian.light"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "meridian.multiLight"

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

.method public static k(Ljava/util/Map;)I
    .locals 6

    .line 1
    const-string v0, "Item"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/util/Map;

    .line 23
    .line 24
    const-string v2, "id"

    .line 25
    .line 26
    const-string v3, ""

    .line 27
    .line 28
    const-string v4, "item_id"

    .line 29
    .line 30
    const-string v5, "600095"

    .line 31
    .line 32
    invoke-static {v0, v2, v3, v4, v5}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    const-string p0, "item_num"

    .line 39
    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v0, p0, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string v2, "num"

    .line 49
    .line 50
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {p0, v1}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    return p0

    .line 59
    :cond_1
    return v1
.end method

.method public static l(Ljava/util/Map;)I
    .locals 13

    .line 1
    const-string v0, "top_level"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    move-result v1

    const-string v3, "meridian_level"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    move-result v4

    const-string v5, "point_level"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v6, 0x0

    invoke-static {p0, v6}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    move-result p0

    move v9, v2

    move v10, v9

    move v7, v6

    move v8, v7

    :goto_0
    add-int/lit8 v11, v6, 0x1

    const/16 v12, 0x788

    if-ge v6, v12, :cond_3

    if-ne v9, v1, :cond_0

    if-ne v10, v4, :cond_0

    if-ne v7, p0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Lcom/sgscq/vpn/handler/u0;->n(Ljava/util/Map;)I

    move-result v6

    add-int/2addr v8, v6

    const/16 v6, 0x1e

    if-ge v7, v6, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const/16 v6, 0x8

    if-ge v10, v6, :cond_2

    add-int/lit8 v10, v10, 0x1

    move v7, v2

    goto :goto_1

    :cond_2
    if-ge v9, v6, :cond_3

    add-int/lit8 v9, v9, 0x1

    move v7, v2

    move v10, v7

    :goto_1
    move v6, v11

    goto :goto_0

    :cond_3
    :goto_2
    return v8
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 7

    .line 1
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "Skill"

    .line 7
    .line 8
    const-string v3, "pk_id"

    .line 9
    .line 10
    const-string v4, "general_pk_id"

    .line 11
    .line 12
    move-object v1, p2

    .line 13
    move-object v2, v6

    .line 14
    move-object v5, p0

    .line 15
    invoke-static/range {v0 .. v5}, Lc/a;->x(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string p0, "skill_id"

    .line 19
    .line 20
    invoke-interface {v6, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    const-string p0, "id"

    .line 24
    .line 25
    invoke-interface {v6, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    const-string p0, "skill_code"

    .line 29
    .line 30
    invoke-interface {v6, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    const-string p0, "card_type"

    .line 34
    .line 35
    const-string p1, "4"

    .line 36
    .line 37
    invoke-interface {v6, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    const-string p0, "level"

    .line 41
    .line 42
    const-string p1, "1"

    .line 43
    .line 44
    invoke-interface {v6, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    const-string p0, "skill_level"

    .line 48
    .line 49
    invoke-interface {v6, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    const-string p0, "position"

    .line 53
    .line 54
    const-string p1, "0"

    .line 55
    .line 56
    invoke-interface {v6, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    const-string p0, "pos"

    .line 60
    .line 61
    invoke-interface {v6, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    const-string p0, "skill_position"

    .line 65
    .line 66
    invoke-interface {v6, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 70
    .line 71
    .line 72
    move-result-wide v0

    .line 73
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const-string p2, "get_time"

    .line 78
    .line 79
    invoke-interface {v6, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    const-string p0, "is_natural"

    .line 83
    .line 84
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 85
    .line 86
    invoke-interface {v6, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    const-string p0, "exp"

    .line 90
    .line 91
    invoke-interface {v6, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    const-string p0, "extra_level"

    .line 95
    .line 96
    invoke-interface {v6, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    const-string p0, "advanced_level"

    .line 100
    .line 101
    invoke-interface {v6, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    return-object v6
.end method

.method public static n(Ljava/util/Map;)I
    .locals 4

    .line 1
    const-string v0, "top_level"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    move-result v0

    const-string v2, "meridian_level"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    move-result v2

    const-string v3, "point_level"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    move-result p0

    const/16 v3, 0x1e

    if-lt p0, v3, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    add-int/2addr p0, v1

    :goto_0
    :try_start_0
    invoke-static {}, Lcom/sgscq/vpn/w1;->Z0()Lcom/sgscq/vpn/w1;

    move-result-object v3

    invoke-virtual {v3, v0, v2, p0}, Lcom/sgscq/vpn/w1;->i1(III)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_1

    return v0

    :catch_0
    :cond_1
    add-int/2addr p0, v1

    div-int/lit8 p0, p0, 0x2

    const/4 v0, 0x4

    if-gt p0, v0, :cond_2

    add-int/lit8 p0, p0, 0x2

    goto :goto_1

    :cond_2
    mul-int/lit8 p0, p0, 0x2

    :goto_1
    return p0
.end method

.method public static o(Ljava/util/LinkedHashMap;Ljava/util/Map;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/u0;->t(Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    const-string v2, "pulse_count"

    .line 9
    .line 10
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const/4 v4, 0x5

    .line 15
    invoke-static {v3, v4}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const-string v5, "pulse_value"

    .line 20
    .line 21
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    const/4 v7, 0x0

    .line 26
    invoke-static {v6, v7}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/u0;->k(Ljava/util/Map;)I

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    const-string v9, "pulse_slot"

    .line 35
    .line 36
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    const/4 v10, 0x1

    .line 41
    invoke-static {v9, v10}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    const/16 v11, 0x14

    .line 54
    .line 55
    const/16 v12, 0x26

    .line 56
    .line 57
    const/16 v13, 0x8

    .line 58
    .line 59
    const/16 v14, 0x41

    .line 60
    .line 61
    const/16 v15, 0x6a

    .line 62
    .line 63
    filled-new-array {v13, v11, v12, v14, v15}, [I

    .line 64
    .line 65
    .line 66
    move-result-object v11

    .line 67
    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    .line 68
    .line 69
    .line 70
    move-result v12

    .line 71
    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    sub-int/2addr v12, v10

    .line 76
    aget v11, v11, v12

    .line 77
    .line 78
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v11

    .line 82
    const/16 v12, 0xa0

    .line 83
    .line 84
    const/16 v13, 0x32

    .line 85
    .line 86
    const/16 v14, 0x50

    .line 87
    .line 88
    filled-new-array {v7, v13, v13, v14, v12}, [I

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    sub-int/2addr v4, v10

    .line 101
    aget v4, v7, v4

    .line 102
    .line 103
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    const-string v9, "pulse_gold"

    .line 112
    .line 113
    const-string v10, "pulse_num"

    .line 114
    .line 115
    filled-new-array {v9, v4, v10, v7}, [Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    const-string v7, "pulse_base"

    .line 120
    .line 121
    invoke-static {v7, v11, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    const-string v9, "pulse_total"

    .line 130
    .line 131
    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    const-string v2, "pulse_list"

    .line 149
    .line 150
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    const-string v12, "pulse_value"

    .line 158
    .line 159
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v13

    .line 163
    const-string v14, "pulse_count"

    .line 164
    .line 165
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v15

    .line 169
    const-string v16, "pulse_list"

    .line 170
    .line 171
    move-object/from16 v17, v4

    .line 172
    .line 173
    filled-new-array/range {v12 .. v17}, [Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-static {v9, v2, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    const-string v3, "pulse_info"

    .line 182
    .line 183
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    new-instance v2, Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string v3, "meridian_list"

    .line 192
    .line 193
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    new-instance v2, Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .line 200
    .line 201
    const-string v3, "meridian_point_list"

    .line 202
    .line 203
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    const-string v2, "MeridianTop"

    .line 207
    .line 208
    invoke-static {v2, v1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    const-string v2, "meridian_top_list"

    .line 213
    .line 214
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    return-void
.end method

.method public static p(Lcom/sgscq/vpn/w1;Ljava/util/Map;)V
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v1, "top_level"

    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v1, v2}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const-string v3, "meridian_level"

    .line 18
    .line 19
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static {v3, v2}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const-string v4, "point_level"

    .line 28
    .line 29
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-static {v4, v5}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const/4 v6, 0x4

    .line 39
    new-array v7, v6, [D

    .line 40
    .line 41
    new-array v8, v6, [D

    .line 42
    .line 43
    move v9, v2

    .line 44
    :goto_0
    if-gt v9, v1, :cond_17

    .line 45
    .line 46
    if-ne v9, v1, :cond_1

    .line 47
    .line 48
    move v10, v3

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/16 v10, 0x8

    .line 51
    .line 52
    :goto_1
    move v11, v2

    .line 53
    :goto_2
    if-gt v11, v10, :cond_16

    .line 54
    .line 55
    if-ne v9, v1, :cond_2

    .line 56
    .line 57
    if-ne v11, v3, :cond_2

    .line 58
    .line 59
    move v13, v4

    .line 60
    goto :goto_3

    .line 61
    :cond_2
    const/16 v13, 0x1e

    .line 62
    .line 63
    :goto_3
    move v14, v2

    .line 64
    :goto_4
    const-wide/16 v16, 0x0

    .line 65
    .line 66
    if-gt v14, v13, :cond_9

    .line 67
    .line 68
    invoke-static {}, Lcom/sgscq/vpn/w1;->Z0()Lcom/sgscq/vpn/w1;

    .line 69
    .line 70
    .line 71
    move-result-object v15

    .line 72
    invoke-virtual {v15}, Lcom/sgscq/vpn/w1;->T1()V

    .line 73
    .line 74
    .line 75
    iget-object v15, v15, Lcom/sgscq/vpn/w1;->L:Ljava/util/HashMap;

    .line 76
    .line 77
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v12

    .line 81
    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    check-cast v12, Ljava/util/Map;

    .line 86
    .line 87
    if-nez v12, :cond_3

    .line 88
    .line 89
    goto :goto_5

    .line 90
    :cond_3
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v15

    .line 94
    invoke-interface {v12, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v12

    .line 98
    check-cast v12, Ljava/util/Map;

    .line 99
    .line 100
    if-nez v12, :cond_4

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_4
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v15

    .line 107
    invoke-interface {v12, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v12

    .line 111
    instance-of v15, v12, Ljava/util/Map;

    .line 112
    .line 113
    if-eqz v15, :cond_5

    .line 114
    .line 115
    move-object v15, v12

    .line 116
    check-cast v15, Ljava/util/Map;

    .line 117
    .line 118
    goto :goto_6

    .line 119
    :cond_5
    :goto_5
    const/4 v15, 0x0

    .line 120
    :goto_6
    if-nez v15, :cond_6

    .line 121
    .line 122
    goto :goto_9

    .line 123
    :cond_6
    const-string v12, "buff_type"

    .line 124
    .line 125
    const-string v6, "0"

    .line 126
    .line 127
    invoke-interface {v15, v12, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v12

    .line 131
    invoke-static {v12, v5}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    .line 132
    .line 133
    .line 134
    move-result v12

    .line 135
    const-string v5, "buff_value"

    .line 136
    .line 137
    invoke-interface {v15, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    if-nez v5, :cond_7

    .line 142
    .line 143
    goto :goto_7

    .line 144
    :cond_7
    :try_start_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 149
    .line 150
    .line 151
    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    goto :goto_8

    .line 153
    :catch_0
    :goto_7
    move-wide/from16 v5, v16

    .line 154
    .line 155
    :goto_8
    if-lt v12, v2, :cond_8

    .line 156
    .line 157
    const/4 v15, 0x4

    .line 158
    if-gt v12, v15, :cond_8

    .line 159
    .line 160
    cmpl-double v15, v5, v16

    .line 161
    .line 162
    if-eqz v15, :cond_8

    .line 163
    .line 164
    add-int/lit8 v12, v12, -0x1

    .line 165
    .line 166
    aget-wide v15, v7, v12

    .line 167
    .line 168
    add-double/2addr v15, v5

    .line 169
    aput-wide v15, v7, v12

    .line 170
    .line 171
    :cond_8
    :goto_9
    add-int/lit8 v14, v14, 0x1

    .line 172
    .line 173
    const/4 v5, 0x0

    .line 174
    const/4 v6, 0x4

    .line 175
    goto :goto_4

    .line 176
    :cond_9
    const/16 v5, 0x1e

    .line 177
    .line 178
    if-ge v13, v5, :cond_a

    .line 179
    .line 180
    goto/16 :goto_12

    .line 181
    .line 182
    :cond_a
    if-ne v9, v1, :cond_13

    .line 183
    .line 184
    if-eq v11, v3, :cond_b

    .line 185
    .line 186
    goto/16 :goto_12

    .line 187
    .line 188
    :cond_b
    invoke-static {}, Lcom/sgscq/vpn/w1;->Z0()Lcom/sgscq/vpn/w1;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    invoke-virtual {v5}, Lcom/sgscq/vpn/w1;->S1()V

    .line 193
    .line 194
    .line 195
    iget-object v5, v5, Lcom/sgscq/vpn/w1;->S:Ljava/util/HashMap;

    .line 196
    .line 197
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    instance-of v6, v5, Ljava/util/Map;

    .line 206
    .line 207
    if-nez v6, :cond_c

    .line 208
    .line 209
    goto :goto_a

    .line 210
    :cond_c
    check-cast v5, Ljava/util/Map;

    .line 211
    .line 212
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    instance-of v6, v5, Ljava/util/Map;

    .line 221
    .line 222
    if-eqz v6, :cond_d

    .line 223
    .line 224
    move-object v15, v5

    .line 225
    check-cast v15, Ljava/util/Map;

    .line 226
    .line 227
    goto :goto_b

    .line 228
    :cond_d
    :goto_a
    const/4 v15, 0x0

    .line 229
    :goto_b
    if-nez v15, :cond_e

    .line 230
    .line 231
    goto/16 :goto_12

    .line 232
    .line 233
    :cond_e
    const-string v5, "buff"

    .line 234
    .line 235
    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    instance-of v6, v5, Ljava/util/Map;

    .line 240
    .line 241
    if-nez v6, :cond_f

    .line 242
    .line 243
    goto/16 :goto_12

    .line 244
    .line 245
    :cond_f
    check-cast v5, Ljava/util/Map;

    .line 246
    .line 247
    const-string v6, "1"

    .line 248
    .line 249
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    const-string v12, "2"

    .line 254
    .line 255
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    instance-of v12, v6, Ljava/util/Map;

    .line 260
    .line 261
    if-eqz v12, :cond_11

    .line 262
    .line 263
    move v12, v2

    .line 264
    :goto_c
    const/4 v13, 0x4

    .line 265
    if-gt v12, v13, :cond_11

    .line 266
    .line 267
    add-int/lit8 v13, v12, -0x1

    .line 268
    .line 269
    aget-wide v14, v7, v13

    .line 270
    .line 271
    move-object v2, v6

    .line 272
    check-cast v2, Ljava/util/Map;

    .line 273
    .line 274
    move/from16 v18, v1

    .line 275
    .line 276
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    if-nez v1, :cond_10

    .line 285
    .line 286
    goto :goto_d

    .line 287
    :cond_10
    :try_start_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 292
    .line 293
    .line 294
    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 295
    goto :goto_e

    .line 296
    :catch_1
    :goto_d
    move-wide/from16 v1, v16

    .line 297
    .line 298
    :goto_e
    add-double/2addr v1, v14

    .line 299
    aput-wide v1, v7, v13

    .line 300
    .line 301
    add-int/lit8 v12, v12, 0x1

    .line 302
    .line 303
    move/from16 v1, v18

    .line 304
    .line 305
    const/4 v2, 0x1

    .line 306
    goto :goto_c

    .line 307
    :cond_11
    move/from16 v18, v1

    .line 308
    .line 309
    instance-of v1, v5, Ljava/util/Map;

    .line 310
    .line 311
    if-eqz v1, :cond_14

    .line 312
    .line 313
    const/4 v1, 0x1

    .line 314
    const/4 v2, 0x4

    .line 315
    :goto_f
    if-gt v1, v2, :cond_15

    .line 316
    .line 317
    add-int/lit8 v6, v1, -0x1

    .line 318
    .line 319
    aget-wide v12, v8, v6

    .line 320
    .line 321
    move-object v14, v5

    .line 322
    check-cast v14, Ljava/util/Map;

    .line 323
    .line 324
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v15

    .line 328
    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v14

    .line 332
    if-nez v14, :cond_12

    .line 333
    .line 334
    goto :goto_10

    .line 335
    :cond_12
    :try_start_2
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v14

    .line 339
    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 340
    .line 341
    .line 342
    move-result-wide v14
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 343
    goto :goto_11

    .line 344
    :catch_2
    :goto_10
    move-wide/from16 v14, v16

    .line 345
    .line 346
    :goto_11
    add-double/2addr v14, v12

    .line 347
    aput-wide v14, v8, v6

    .line 348
    .line 349
    add-int/lit8 v1, v1, 0x1

    .line 350
    .line 351
    goto :goto_f

    .line 352
    :cond_13
    :goto_12
    move/from16 v18, v1

    .line 353
    .line 354
    :cond_14
    const/4 v2, 0x4

    .line 355
    :cond_15
    add-int/lit8 v11, v11, 0x1

    .line 356
    .line 357
    move v6, v2

    .line 358
    move/from16 v1, v18

    .line 359
    .line 360
    const/4 v2, 0x1

    .line 361
    const/4 v5, 0x0

    .line 362
    goto/16 :goto_2

    .line 363
    .line 364
    :cond_16
    move/from16 v18, v1

    .line 365
    .line 366
    move v2, v6

    .line 367
    add-int/lit8 v9, v9, 0x1

    .line 368
    .line 369
    const/4 v2, 0x1

    .line 370
    const/4 v5, 0x0

    .line 371
    goto/16 :goto_0

    .line 372
    .line 373
    :cond_17
    move v1, v5

    .line 374
    aget-wide v2, v7, v1

    .line 375
    .line 376
    aget-wide v4, v8, v1

    .line 377
    .line 378
    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    .line 379
    .line 380
    div-double/2addr v4, v9

    .line 381
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 382
    .line 383
    add-double/2addr v4, v11

    .line 384
    mul-double/2addr v4, v2

    .line 385
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    .line 386
    .line 387
    .line 388
    move-result-wide v1

    .line 389
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    const-string v2, "gong"

    .line 394
    .line 395
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    const/4 v1, 0x1

    .line 399
    aget-wide v2, v7, v1

    .line 400
    .line 401
    aget-wide v4, v8, v1

    .line 402
    .line 403
    div-double/2addr v4, v9

    .line 404
    add-double/2addr v4, v11

    .line 405
    mul-double/2addr v4, v2

    .line 406
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    .line 407
    .line 408
    .line 409
    move-result-wide v1

    .line 410
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    const-string v2, "fang"

    .line 415
    .line 416
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    const/4 v1, 0x2

    .line 420
    aget-wide v2, v7, v1

    .line 421
    .line 422
    aget-wide v4, v8, v1

    .line 423
    .line 424
    div-double/2addr v4, v9

    .line 425
    add-double/2addr v4, v11

    .line 426
    mul-double/2addr v4, v2

    .line 427
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    .line 428
    .line 429
    .line 430
    move-result-wide v1

    .line 431
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    const-string v2, "xue"

    .line 436
    .line 437
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    const/4 v1, 0x3

    .line 441
    aget-wide v2, v7, v1

    .line 442
    .line 443
    aget-wide v4, v8, v1

    .line 444
    .line 445
    div-double/2addr v4, v9

    .line 446
    add-double/2addr v4, v11

    .line 447
    mul-double/2addr v4, v2

    .line 448
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    .line 449
    .line 450
    .line 451
    move-result-wide v1

    .line 452
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    const-string v2, "zhi"

    .line 457
    .line 458
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    return-void
.end method

.method public static q(Ljava/util/Map;)Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pulse_day"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v3, :cond_0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v4

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "pulse_slot"

    if-nez v2, :cond_1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "pulse_count"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v4

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static r(Ljava/lang/Object;I)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static s()Ljava/util/LinkedHashMap;
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

.method public static t(Ljava/util/Map;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "MeridianTop"

    invoke-static {v1, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-static {v3}, Lcom/sgscq/vpn/handler/u0;->l(Ljava/util/Map;)I

    move-result v4

    const-string v5, "item_num"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, -0x1

    invoke-static {v6, v7}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    move-result v6

    if-eq v6, v4, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    const-string v4, "upd"

    const-string v5, "add"

    filled-new-array {v4, v0, v5, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "del"

    invoke-static {v3, v2, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v9, p3

    .line 3
    .line 4
    iget-object v1, v0, Lcom/sgscq/vpn/handler/u0;->a:Lcom/sgscq/vpn/handler/e0;

    .line 5
    .line 6
    move-object v10, v1

    .line 7
    check-cast v10, Lcom/sgscq/vpn/handler/k0;

    .line 8
    .line 9
    invoke-virtual {v10}, Lcom/sgscq/vpn/handler/k0;->k()Lcom/sgscq/vpn/handler/d1;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    long-to-int v2, v2

    .line 18
    invoke-virtual {v10}, Lcom/sgscq/vpn/handler/k0;->a()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    int-to-long v3, v3

    .line 23
    invoke-virtual {v10, v3, v4, v9}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v6

    .line 27
    invoke-virtual {v10}, Lcom/sgscq/vpn/handler/k0;->c()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const-string v4, "user_gold"

    .line 32
    .line 33
    invoke-virtual {v10, v3, v4, v9}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    int-to-long v3, v3

    .line 38
    invoke-virtual {v10}, Lcom/sgscq/vpn/handler/k0;->b()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    const-string v8, "user_energy"

    .line 43
    .line 44
    invoke-virtual {v10, v5, v8, v9}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    int-to-long v11, v5

    .line 49
    invoke-virtual {v10}, Lcom/sgscq/vpn/handler/k0;->d()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    const-string v8, "user_power"

    .line 54
    .line 55
    invoke-virtual {v10, v5, v8, v9}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    int-to-long v13, v5

    .line 60
    iget-object v1, v1, Lcom/sgscq/vpn/handler/d1;->b:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, Lcom/sgscq/vpn/handler/k0;

    .line 63
    .line 64
    iget-object v1, v1, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 65
    .line 66
    long-to-int v3, v3

    .line 67
    long-to-int v4, v11

    .line 68
    long-to-int v5, v13

    .line 69
    move-object/from16 v8, p1

    .line 70
    .line 71
    move-object/from16 v9, p3

    .line 72
    .line 73
    invoke-virtual/range {v1 .. v9}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v10}, Lcom/sgscq/vpn/handler/k0;->k()Lcom/sgscq/vpn/handler/d1;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    const-string v3, "Item"

    .line 82
    .line 83
    const-string v4, "MeridianTop"

    .line 84
    .line 85
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    iget-object v2, v2, Lcom/sgscq/vpn/handler/d1;->b:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v2, Lcom/sgscq/vpn/handler/k0;

    .line 92
    .line 93
    iget-object v2, v2, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 94
    .line 95
    move-object/from16 v4, p2

    .line 96
    .line 97
    invoke-virtual {v2, v4, v1, v3}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    return-object v1
.end method

.method public final h(Ljava/lang/String;Ljava/util/Map;)[B
    .locals 41

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
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/u0;->j(Ljava/lang/String;)Z

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
    iget-object v3, v0, Lcom/sgscq/vpn/handler/u0;->a:Lcom/sgscq/vpn/handler/e0;

    .line 16
    .line 17
    move-object v5, v3

    .line 18
    check-cast v5, Lcom/sgscq/vpn/handler/k0;

    .line 19
    .line 20
    invoke-virtual {v5, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-virtual {v5}, Lcom/sgscq/vpn/handler/k0;->k()Lcom/sgscq/vpn/handler/d1;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    iget-object v7, v7, Lcom/sgscq/vpn/handler/d1;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v7, Lcom/sgscq/vpn/handler/k0;

    .line 31
    .line 32
    iget-object v7, v7, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 33
    .line 34
    invoke-virtual {v7, v6}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    if-nez v7, :cond_1

    .line 39
    .line 40
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 41
    .line 42
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    :cond_1
    const-string v8, "pulse.practicePulse"

    .line 46
    .line 47
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    const/4 v9, 0x3

    .line 52
    const/4 v10, 0x0

    .line 53
    const/4 v11, 0x1

    .line 54
    const-string v12, "pulse_value"

    .line 55
    .line 56
    const-string v14, "pk_id"

    .line 57
    .line 58
    const-string v15, "cmn"

    .line 59
    .line 60
    if-eqz v8, :cond_e

    .line 61
    .line 62
    if-nez v3, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    check-cast v3, Lcom/sgscq/vpn/handler/k0;

    .line 66
    .line 67
    iget-object v4, v3, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 68
    .line 69
    :goto_0
    invoke-static {v4}, Lcom/sgscq/vpn/p5;->A(Landroid/content/Context;)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    const/4 v2, 0x5

    .line 74
    if-lt v1, v2, :cond_3

    .line 75
    .line 76
    sget-object v1, Lcom/sgscq/vpn/handler/u0;->f:[I

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    if-lt v1, v9, :cond_4

    .line 80
    .line 81
    sget-object v1, Lcom/sgscq/vpn/handler/u0;->e:[I

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    if-lt v1, v11, :cond_5

    .line 85
    .line 86
    sget-object v1, Lcom/sgscq/vpn/handler/u0;->d:[I

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_5
    sget-object v1, Lcom/sgscq/vpn/handler/u0;->c:[I

    .line 90
    .line 91
    :goto_1
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    const/16 v4, 0x3e8

    .line 96
    .line 97
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    const/16 v4, 0x3e7

    .line 102
    .line 103
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    move v4, v10

    .line 112
    move v8, v4

    .line 113
    :goto_2
    array-length v9, v1

    .line 114
    sget-object v13, Lcom/sgscq/vpn/handler/u0;->b:[I

    .line 115
    .line 116
    if-ge v4, v9, :cond_7

    .line 117
    .line 118
    aget v9, v1, v4

    .line 119
    .line 120
    add-int/2addr v8, v9

    .line 121
    if-ge v3, v8, :cond_6

    .line 122
    .line 123
    aget v1, v13, v4

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_7
    const/4 v1, 0x4

    .line 130
    aget v1, v13, v1

    .line 131
    .line 132
    :goto_3
    invoke-static {v7}, Lcom/sgscq/vpn/handler/u0;->q(Ljava/util/Map;)Z

    .line 133
    .line 134
    .line 135
    const-string v3, "pulse_count"

    .line 136
    .line 137
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-static {v4, v2}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    const-string v8, "pulse_slot"

    .line 146
    .line 147
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    invoke-static {v9, v11}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    .line 160
    .line 161
    .line 162
    move-result v9

    .line 163
    if-gtz v4, :cond_8

    .line 164
    .line 165
    const-string v1, "\u7ec3\u8109\u6b21\u6570\u4e0d\u8db3"

    .line 166
    .line 167
    move-object/from16 v16, v15

    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_8
    const/16 v11, 0xa0

    .line 171
    .line 172
    const/16 v13, 0x32

    .line 173
    .line 174
    move-object/from16 v16, v15

    .line 175
    .line 176
    const/16 v15, 0x50

    .line 177
    .line 178
    filled-new-array {v10, v13, v13, v15, v11}, [I

    .line 179
    .line 180
    .line 181
    move-result-object v11

    .line 182
    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    .line 183
    .line 184
    .line 185
    move-result v13

    .line 186
    const/4 v15, 0x1

    .line 187
    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    .line 188
    .line 189
    .line 190
    move-result v13

    .line 191
    sub-int/2addr v13, v15

    .line 192
    aget v11, v11, v13

    .line 193
    .line 194
    const-string v13, "user_gold"

    .line 195
    .line 196
    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v15

    .line 200
    invoke-static {v15, v10}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    .line 201
    .line 202
    .line 203
    move-result v10

    .line 204
    if-ge v10, v11, :cond_9

    .line 205
    .line 206
    const-string v1, "\u5143\u5b9d\u4e0d\u8db3"

    .line 207
    .line 208
    :goto_4
    invoke-static {v1}, Lcom/sgscq/vpn/handler/u0;->g(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-static {v1, v7}, Lcom/sgscq/vpn/handler/u0;->o(Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    .line 213
    .line 214
    .line 215
    move-object/from16 v18, v5

    .line 216
    .line 217
    move-object/from16 v17, v6

    .line 218
    .line 219
    goto/16 :goto_7

    .line 220
    .line 221
    :cond_9
    const/4 v15, 0x1

    .line 222
    if-ne v9, v15, :cond_a

    .line 223
    .line 224
    const/16 v1, 0x8

    .line 225
    .line 226
    move-object/from16 v18, v5

    .line 227
    .line 228
    move-object/from16 v17, v6

    .line 229
    .line 230
    goto :goto_5

    .line 231
    :cond_a
    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    .line 232
    .line 233
    .line 234
    move-result v15

    .line 235
    const/16 v2, 0x26

    .line 236
    .line 237
    const/16 v1, 0x41

    .line 238
    .line 239
    const/16 v0, 0x6a

    .line 240
    .line 241
    move-object/from16 v17, v6

    .line 242
    .line 243
    const/16 v6, 0x8

    .line 244
    .line 245
    move-object/from16 v18, v5

    .line 246
    .line 247
    const/16 v5, 0x14

    .line 248
    .line 249
    filled-new-array {v6, v5, v2, v1, v0}, [I

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    const/4 v2, 0x5

    .line 254
    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    const/4 v5, 0x1

    .line 259
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    sub-int/2addr v1, v5

    .line 264
    aget v0, v0, v1

    .line 265
    .line 266
    mul-int v1, v0, v15

    .line 267
    .line 268
    :goto_5
    if-lt v9, v2, :cond_b

    .line 269
    .line 270
    const/4 v0, 0x1

    .line 271
    goto :goto_6

    .line 272
    :cond_b
    add-int/lit8 v0, v9, 0x1

    .line 273
    .line 274
    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    if-lt v9, v2, :cond_c

    .line 282
    .line 283
    add-int/lit8 v4, v4, -0x1

    .line 284
    .line 285
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-interface {v7, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    :cond_c
    if-lez v11, :cond_d

    .line 293
    .line 294
    sub-int v0, v10, v11

    .line 295
    .line 296
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-interface {v7, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    :cond_d
    invoke-static {v7}, Lcom/sgscq/vpn/handler/u0;->b(Ljava/util/Map;)Z

    .line 304
    .line 305
    .line 306
    invoke-static {v1, v7}, Lcom/sgscq/vpn/handler/u0;->a(ILjava/util/Map;)Ljava/util/Map;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    const/4 v2, 0x0

    .line 311
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    invoke-interface {v7, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    invoke-static {v7}, Lcom/sgscq/vpn/handler/u0;->t(Ljava/util/Map;)V

    .line 319
    .line 320
    .line 321
    invoke-static {}, Lcom/sgscq/vpn/handler/u0;->s()Ljava/util/LinkedHashMap;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    invoke-static {v2, v7}, Lcom/sgscq/vpn/handler/u0;->o(Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    .line 326
    .line 327
    .line 328
    const-string v3, "pulse_multiple"

    .line 329
    .line 330
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    const-string v3, "consume_gold"

    .line 338
    .line 339
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    invoke-interface {v7, v13, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    invoke-interface {v2, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    invoke-interface {v2, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    const-string v1, "pulse_item_pk"

    .line 369
    .line 370
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-object v1, v2

    .line 374
    :goto_7
    invoke-virtual/range {v18 .. v18}, Lcom/sgscq/vpn/handler/k0;->k()Lcom/sgscq/vpn/handler/d1;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    move-object/from16 v3, v17

    .line 379
    .line 380
    goto/16 :goto_9

    .line 381
    .line 382
    :cond_e
    move-object/from16 v18, v5

    .line 383
    .line 384
    move-object v3, v6

    .line 385
    move-object/from16 v16, v15

    .line 386
    .line 387
    const-string v0, "pulse.pulseCollect"

    .line 388
    .line 389
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    const-string v5, "delta_data"

    .line 394
    .line 395
    const-string v6, "Item"

    .line 396
    .line 397
    const-string v15, "item_id"

    .line 398
    .line 399
    const-string v13, "id"

    .line 400
    .line 401
    if-eqz v0, :cond_12

    .line 402
    .line 403
    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    const/4 v1, 0x0

    .line 408
    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    if-lez v0, :cond_f

    .line 413
    .line 414
    invoke-static {v0, v7}, Lcom/sgscq/vpn/handler/u0;->a(ILjava/util/Map;)Ljava/util/Map;

    .line 415
    .line 416
    .line 417
    move-result-object v4

    .line 418
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    invoke-interface {v7, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    :cond_f
    invoke-static {}, Lcom/sgscq/vpn/handler/u0;->s()Ljava/util/LinkedHashMap;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    invoke-static {v1, v7}, Lcom/sgscq/vpn/handler/u0;->o(Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    .line 430
    .line 431
    .line 432
    if-nez v4, :cond_10

    .line 433
    .line 434
    new-instance v0, Ljava/util/ArrayList;

    .line 435
    .line 436
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .line 438
    .line 439
    goto :goto_8

    .line 440
    :cond_10
    const/4 v2, 0x1

    .line 441
    new-array v8, v2, [Ljava/util/Map;

    .line 442
    .line 443
    const-string v9, "item_type"

    .line 444
    .line 445
    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v9

    .line 449
    invoke-static {v9, v2}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    .line 450
    .line 451
    .line 452
    move-result v2

    .line 453
    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v9

    .line 457
    const-string v19, "id"

    .line 458
    .line 459
    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v20

    .line 463
    const-string v21, "item_id"

    .line 464
    .line 465
    invoke-interface {v4, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v22

    .line 469
    const-string v23, "num"

    .line 470
    .line 471
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 472
    .line 473
    .line 474
    move-result-object v24

    .line 475
    const-string v25, "item_num"

    .line 476
    .line 477
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 478
    .line 479
    .line 480
    move-result-object v26

    .line 481
    const-string v27, "item_type"

    .line 482
    .line 483
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 484
    .line 485
    .line 486
    move-result-object v28

    .line 487
    const-string v29, "type"

    .line 488
    .line 489
    invoke-static {v2}, Lcom/sgscq/vpn/y2;->s(I)I

    .line 490
    .line 491
    .line 492
    move-result v0

    .line 493
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 494
    .line 495
    .line 496
    move-result-object v30

    .line 497
    filled-new-array/range {v19 .. v30}, [Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    invoke-static {v14, v9, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    const/4 v2, 0x0

    .line 506
    aput-object v0, v8, v2

    .line 507
    .line 508
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    :goto_8
    const-string v2, "add_list"

    .line 513
    .line 514
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    const-string v2, "reward_list"

    .line 518
    .line 519
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    if-eqz v4, :cond_11

    .line 523
    .line 524
    invoke-static {v6, v7}, Lcom/sgscq/vpn/handler/u0;->f(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    :cond_11
    invoke-virtual/range {v18 .. v18}, Lcom/sgscq/vpn/handler/k0;->k()Lcom/sgscq/vpn/handler/d1;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    :goto_9
    invoke-virtual {v0, v3, v7}, Lcom/sgscq/vpn/handler/d1;->T0(Ljava/lang/String;Ljava/util/Map;)V

    .line 536
    .line 537
    .line 538
    invoke-static {v1, v7}, Lcom/sgscq/vpn/handler/u0;->e(Ljava/util/LinkedHashMap;Ljava/util/Map;)Ljava/util/Map;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    move-object/from16 v4, p0

    .line 543
    .line 544
    invoke-virtual {v4, v3, v0, v7}, Lcom/sgscq/vpn/handler/u0;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    move-object/from16 v12, v16

    .line 549
    .line 550
    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    goto :goto_c

    .line 554
    :cond_12
    move-object/from16 v4, p0

    .line 555
    .line 556
    move-object/from16 v12, v16

    .line 557
    .line 558
    const-string v0, "meridian.light"

    .line 559
    .line 560
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    move-result v0

    .line 564
    const-string v8, "meridian.multiLight"

    .line 565
    .line 566
    if-nez v0, :cond_17

    .line 567
    .line 568
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 569
    .line 570
    .line 571
    move-result v0

    .line 572
    if-eqz v0, :cond_13

    .line 573
    .line 574
    goto :goto_d

    .line 575
    :cond_13
    invoke-static {v7}, Lcom/sgscq/vpn/handler/u0;->b(Ljava/util/Map;)Z

    .line 576
    .line 577
    .line 578
    move-result v0

    .line 579
    invoke-static {v7}, Lcom/sgscq/vpn/handler/u0;->q(Ljava/util/Map;)Z

    .line 580
    .line 581
    .line 582
    move-result v1

    .line 583
    if-nez v0, :cond_15

    .line 584
    .line 585
    if-eqz v1, :cond_14

    .line 586
    .line 587
    goto :goto_a

    .line 588
    :cond_14
    const/4 v0, 0x0

    .line 589
    goto :goto_b

    .line 590
    :cond_15
    :goto_a
    const/4 v0, 0x1

    .line 591
    :goto_b
    invoke-static {v7}, Lcom/sgscq/vpn/handler/u0;->q(Ljava/util/Map;)Z

    .line 592
    .line 593
    .line 594
    invoke-static {v7}, Lcom/sgscq/vpn/handler/u0;->b(Ljava/util/Map;)Z

    .line 595
    .line 596
    .line 597
    invoke-static {}, Lcom/sgscq/vpn/handler/u0;->s()Ljava/util/LinkedHashMap;

    .line 598
    .line 599
    .line 600
    move-result-object v1

    .line 601
    invoke-static {v1, v7}, Lcom/sgscq/vpn/handler/u0;->o(Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v4, v3, v7, v7}, Lcom/sgscq/vpn/handler/u0;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 605
    .line 606
    .line 607
    move-result-object v2

    .line 608
    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    if-eqz v0, :cond_16

    .line 612
    .line 613
    invoke-virtual/range {v18 .. v18}, Lcom/sgscq/vpn/handler/k0;->k()Lcom/sgscq/vpn/handler/d1;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    invoke-virtual {v0, v3, v7}, Lcom/sgscq/vpn/handler/d1;->T0(Ljava/lang/String;Ljava/util/Map;)V

    .line 618
    .line 619
    .line 620
    :cond_16
    :goto_c
    move-object v3, v4

    .line 621
    goto/16 :goto_2e

    .line 622
    .line 623
    :cond_17
    :goto_d
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 624
    .line 625
    .line 626
    move-result v0

    .line 627
    const-string v1, "user_general_id"

    .line 628
    .line 629
    const-string v11, "general_pk_id"

    .line 630
    .line 631
    filled-new-array {v1, v11, v14}, [Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v8

    .line 635
    const-string v10, ""

    .line 636
    .line 637
    if-nez v2, :cond_18

    .line 638
    .line 639
    move-object/from16 p1, v11

    .line 640
    .line 641
    goto :goto_f

    .line 642
    :cond_18
    const/16 v16, 0x0

    .line 643
    .line 644
    move-object/from16 p1, v11

    .line 645
    .line 646
    move/from16 v11, v16

    .line 647
    .line 648
    :goto_e
    if-ge v11, v9, :cond_1a

    .line 649
    .line 650
    aget-object v9, v8, v11

    .line 651
    .line 652
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v9

    .line 656
    check-cast v9, Ljava/lang/String;

    .line 657
    .line 658
    if-eqz v9, :cond_19

    .line 659
    .line 660
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v16

    .line 664
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    .line 665
    .line 666
    .line 667
    move-result v16

    .line 668
    if-nez v16, :cond_19

    .line 669
    .line 670
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v2

    .line 674
    goto :goto_10

    .line 675
    :cond_19
    add-int/lit8 v11, v11, 0x1

    .line 676
    .line 677
    const/4 v9, 0x3

    .line 678
    goto :goto_e

    .line 679
    :cond_1a
    :goto_f
    move-object v2, v10

    .line 680
    :goto_10
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 681
    .line 682
    .line 683
    move-result v8

    .line 684
    if-eqz v8, :cond_1b

    .line 685
    .line 686
    const-string v0, "\u7f3a\u5c11\u73a9\u5bb6\u6b66\u5c06\u7f16\u53f7"

    .line 687
    .line 688
    move-object/from16 v20, v3

    .line 689
    .line 690
    move-object/from16 v35, v12

    .line 691
    .line 692
    goto/16 :goto_26

    .line 693
    .line 694
    :cond_1b
    invoke-static {v7}, Lcom/sgscq/vpn/handler/u0;->k(Ljava/util/Map;)I

    .line 695
    .line 696
    .line 697
    move-result v16

    .line 698
    const-string v11, "MeridianTop"

    .line 699
    .line 700
    invoke-static {v11, v7}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 701
    .line 702
    .line 703
    move-result-object v8

    .line 704
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 705
    .line 706
    .line 707
    move-result-object v8

    .line 708
    :cond_1c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 709
    .line 710
    .line 711
    move-result v9

    .line 712
    if-eqz v9, :cond_1d

    .line 713
    .line 714
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    move-result-object v9

    .line 718
    check-cast v9, Ljava/util/Map;

    .line 719
    .line 720
    invoke-static {v9, v1, v10, v2}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 721
    .line 722
    .line 723
    move-result v9

    .line 724
    if-eqz v9, :cond_1c

    .line 725
    .line 726
    const/4 v8, 0x1

    .line 727
    goto :goto_11

    .line 728
    :cond_1d
    const/4 v8, 0x0

    .line 729
    :goto_11
    move/from16 v17, v8

    .line 730
    .line 731
    invoke-static {v11, v7}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 732
    .line 733
    .line 734
    move-result-object v9

    .line 735
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 736
    .line 737
    .line 738
    move-result-object v8

    .line 739
    :goto_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 740
    .line 741
    .line 742
    move-result v19

    .line 743
    const-string v4, "0"

    .line 744
    .line 745
    move-object/from16 v20, v3

    .line 746
    .line 747
    const-string v3, "1"

    .line 748
    .line 749
    move-object/from16 v21, v5

    .line 750
    .line 751
    const-string v5, "point_level"

    .line 752
    .line 753
    move-object/from16 v22, v15

    .line 754
    .line 755
    const-string v15, "meridian_level"

    .line 756
    .line 757
    move-object/from16 v23, v6

    .line 758
    .line 759
    const-string v6, "top_level"

    .line 760
    .line 761
    move/from16 v24, v0

    .line 762
    .line 763
    const-string v0, "del"

    .line 764
    .line 765
    move-object/from16 p2, v0

    .line 766
    .line 767
    const-string v0, "upd"

    .line 768
    .line 769
    move-object/from16 v25, v0

    .line 770
    .line 771
    const-string v0, "add"

    .line 772
    .line 773
    move-object/from16 v26, v0

    .line 774
    .line 775
    const-string v0, "item_num"

    .line 776
    .line 777
    if-eqz v19, :cond_1f

    .line 778
    .line 779
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 780
    .line 781
    .line 782
    move-result-object v19

    .line 783
    move-object/from16 v27, v8

    .line 784
    .line 785
    move-object/from16 v8, v19

    .line 786
    .line 787
    check-cast v8, Ljava/util/Map;

    .line 788
    .line 789
    invoke-static {v8, v1, v10, v2}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 790
    .line 791
    .line 792
    move-result v19

    .line 793
    if-eqz v19, :cond_1e

    .line 794
    .line 795
    move-object/from16 v33, p1

    .line 796
    .line 797
    move-object/from16 v32, v10

    .line 798
    .line 799
    move-object/from16 v35, v12

    .line 800
    .line 801
    move-object v1, v13

    .line 802
    move-object/from16 v12, v25

    .line 803
    .line 804
    move-object/from16 v13, v26

    .line 805
    .line 806
    move-object/from16 v10, p2

    .line 807
    .line 808
    goto/16 :goto_13

    .line 809
    .line 810
    :cond_1e
    move-object/from16 v4, p0

    .line 811
    .line 812
    move-object/from16 v3, v20

    .line 813
    .line 814
    move-object/from16 v5, v21

    .line 815
    .line 816
    move-object/from16 v15, v22

    .line 817
    .line 818
    move-object/from16 v6, v23

    .line 819
    .line 820
    move/from16 v0, v24

    .line 821
    .line 822
    move-object/from16 v8, v27

    .line 823
    .line 824
    goto :goto_12

    .line 825
    :cond_1f
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 826
    .line 827
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 828
    .line 829
    .line 830
    move-object/from16 v19, v8

    .line 831
    .line 832
    move-object v8, v11

    .line 833
    move-object/from16 v31, v9

    .line 834
    .line 835
    move-object v9, v7

    .line 836
    move-object/from16 v32, v10

    .line 837
    .line 838
    move-object/from16 v10, v19

    .line 839
    .line 840
    move-object/from16 v33, p1

    .line 841
    .line 842
    move-object/from16 v34, v11

    .line 843
    .line 844
    move-object v11, v14

    .line 845
    move-object/from16 v35, v12

    .line 846
    .line 847
    move-object v12, v1

    .line 848
    move-object v1, v13

    .line 849
    move-object v13, v2

    .line 850
    invoke-static/range {v8 .. v13}, Lc/a;->x(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    .line 852
    .line 853
    move-object/from16 v8, v19

    .line 854
    .line 855
    invoke-interface {v8, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    .line 857
    .line 858
    invoke-interface {v8, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    const/4 v9, 0x0

    .line 862
    invoke-static {v8, v5, v4, v9, v0}, Lcom/sgscq/vpn/handler/l;->b(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 863
    .line 864
    .line 865
    move-object/from16 v10, v31

    .line 866
    .line 867
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 868
    .line 869
    .line 870
    new-instance v11, Ljava/util/ArrayList;

    .line 871
    .line 872
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 873
    .line 874
    .line 875
    const/4 v12, 0x1

    .line 876
    new-array v12, v12, [Ljava/util/Map;

    .line 877
    .line 878
    aput-object v8, v12, v9

    .line 879
    .line 880
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 881
    .line 882
    .line 883
    move-result-object v9

    .line 884
    move-object/from16 v12, v25

    .line 885
    .line 886
    move-object/from16 v13, v26

    .line 887
    .line 888
    filled-new-array {v12, v9, v13, v10}, [Ljava/lang/Object;

    .line 889
    .line 890
    .line 891
    move-result-object v9

    .line 892
    move-object/from16 v10, p2

    .line 893
    .line 894
    invoke-static {v10, v11, v9}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 895
    .line 896
    .line 897
    move-result-object v9

    .line 898
    move-object/from16 v11, v34

    .line 899
    .line 900
    invoke-interface {v7, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    .line 902
    .line 903
    :goto_13
    if-eqz v24, :cond_20

    .line 904
    .line 905
    const v9, 0x7fffffff

    .line 906
    .line 907
    .line 908
    goto :goto_14

    .line 909
    :cond_20
    const/4 v9, 0x1

    .line 910
    :goto_14
    move-object/from16 p1, v0

    .line 911
    .line 912
    new-instance v0, Ljava/util/ArrayList;

    .line 913
    .line 914
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 915
    .line 916
    .line 917
    invoke-static {v8}, Lcom/sgscq/vpn/handler/u0;->d(Ljava/util/Map;)I

    .line 918
    .line 919
    .line 920
    move-result v19

    .line 921
    const/16 v24, 0x0

    .line 922
    .line 923
    move-object/from16 v34, v11

    .line 924
    .line 925
    move/from16 v40, v24

    .line 926
    .line 927
    move-object/from16 v24, v1

    .line 928
    .line 929
    move/from16 v1, v40

    .line 930
    .line 931
    :goto_15
    const-string v11, "Skill"

    .line 932
    .line 933
    move-object/from16 p2, v0

    .line 934
    .line 935
    const-string v0, "\u6b66\u5c06\u7b49\u7ea7\u4e0d\u8db3"

    .line 936
    .line 937
    const-string v25, "\u8109\u529b\u4e0d\u8db3"

    .line 938
    .line 939
    move-object/from16 v26, v0

    .line 940
    .line 941
    const-string v0, "skill_id"

    .line 942
    .line 943
    move-object/from16 v27, v10

    .line 944
    .line 945
    const-string v10, "General"

    .line 946
    .line 947
    if-ge v1, v9, :cond_34

    .line 948
    .line 949
    invoke-static {v8}, Lcom/sgscq/vpn/handler/u0;->i(Ljava/util/Map;)Z

    .line 950
    .line 951
    .line 952
    move-result v28

    .line 953
    if-nez v28, :cond_34

    .line 954
    .line 955
    move/from16 v28, v9

    .line 956
    .line 957
    invoke-static {v8}, Lcom/sgscq/vpn/handler/u0;->n(Ljava/util/Map;)I

    .line 958
    .line 959
    .line 960
    move-result v9

    .line 961
    move-object/from16 v29, v12

    .line 962
    .line 963
    sub-int v12, v16, v1

    .line 964
    .line 965
    if-ge v12, v9, :cond_21

    .line 966
    .line 967
    move/from16 v39, v1

    .line 968
    .line 969
    move-object v6, v13

    .line 970
    move-object/from16 v3, v25

    .line 971
    .line 972
    move-object/from16 v4, v27

    .line 973
    .line 974
    move-object/from16 v5, v29

    .line 975
    .line 976
    move-object/from16 v12, v32

    .line 977
    .line 978
    move-object/from16 v1, p2

    .line 979
    .line 980
    move-object v13, v0

    .line 981
    move-object v0, v11

    .line 982
    goto/16 :goto_25

    .line 983
    .line 984
    :cond_21
    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    .line 986
    .line 987
    move-result-object v12

    .line 988
    move-object/from16 v30, v13

    .line 989
    .line 990
    const/4 v13, 0x0

    .line 991
    invoke-static {v12, v13}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    .line 992
    .line 993
    .line 994
    move-result v12

    .line 995
    invoke-interface {v8, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    .line 997
    .line 998
    move-result-object v13

    .line 999
    move-object/from16 v31, v11

    .line 1000
    .line 1001
    const/4 v11, 0x1

    .line 1002
    invoke-static {v13, v11}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    .line 1003
    .line 1004
    .line 1005
    move-result v13

    .line 1006
    move-object/from16 v36, v0

    .line 1007
    .line 1008
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v0

    .line 1012
    invoke-static {v0, v11}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    .line 1013
    .line 1014
    .line 1015
    move-result v0

    .line 1016
    const/16 v11, 0x1e

    .line 1017
    .line 1018
    if-lt v12, v11, :cond_22

    .line 1019
    .line 1020
    const/16 v37, 0x1

    .line 1021
    .line 1022
    const/16 v38, 0x1

    .line 1023
    .line 1024
    goto :goto_16

    .line 1025
    :cond_22
    add-int/lit8 v38, v12, 0x1

    .line 1026
    .line 1027
    const/16 v37, 0x1

    .line 1028
    .line 1029
    :goto_16
    move/from16 v39, v1

    .line 1030
    .line 1031
    move/from16 v1, v37

    .line 1032
    .line 1033
    move/from16 v37, v9

    .line 1034
    .line 1035
    move/from16 v9, v38

    .line 1036
    .line 1037
    if-ne v9, v1, :cond_23

    .line 1038
    .line 1039
    if-lt v12, v11, :cond_23

    .line 1040
    .line 1041
    const/16 v1, 0x8

    .line 1042
    .line 1043
    if-lt v13, v1, :cond_23

    .line 1044
    .line 1045
    add-int/lit8 v0, v0, 0x1

    .line 1046
    .line 1047
    goto :goto_17

    .line 1048
    :cond_23
    const/4 v0, 0x0

    .line 1049
    :goto_17
    if-lez v0, :cond_27

    .line 1050
    .line 1051
    invoke-static {v10, v7}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v1

    .line 1055
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v1

    .line 1059
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1060
    .line 1061
    .line 1062
    move-result v9

    .line 1063
    const-string v11, "general_level"

    .line 1064
    .line 1065
    if-eqz v9, :cond_25

    .line 1066
    .line 1067
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v9

    .line 1071
    check-cast v9, Ljava/util/Map;

    .line 1072
    .line 1073
    move-object/from16 v12, v32

    .line 1074
    .line 1075
    invoke-static {v9, v14, v12, v2}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1076
    .line 1077
    .line 1078
    move-result v13

    .line 1079
    if-eqz v13, :cond_24

    .line 1080
    .line 1081
    const-string v1, "level"

    .line 1082
    .line 1083
    invoke-interface {v9, v1, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v1

    .line 1087
    invoke-interface {v9, v11, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v1

    .line 1091
    const/4 v9, 0x1

    .line 1092
    invoke-static {v1, v9}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    .line 1093
    .line 1094
    .line 1095
    move-result v1

    .line 1096
    goto :goto_19

    .line 1097
    :cond_24
    move-object/from16 v32, v12

    .line 1098
    .line 1099
    goto :goto_18

    .line 1100
    :cond_25
    move-object/from16 v12, v32

    .line 1101
    .line 1102
    const/4 v1, 0x0

    .line 1103
    :goto_19
    :try_start_0
    invoke-static {}, Lcom/sgscq/vpn/w1;->Z0()Lcom/sgscq/vpn/w1;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v9

    .line 1107
    invoke-virtual {v9, v0}, Lcom/sgscq/vpn/w1;->j1(I)Ljava/util/Map;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v0

    .line 1111
    if-eqz v0, :cond_26

    .line 1112
    .line 1113
    invoke-interface {v0, v11, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v0

    .line 1117
    const/4 v9, 0x0

    .line 1118
    invoke-static {v0, v9}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    .line 1119
    .line 1120
    .line 1121
    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1122
    goto :goto_1a

    .line 1123
    :catch_0
    :cond_26
    const/4 v0, 0x0

    .line 1124
    :goto_1a
    if-ge v1, v0, :cond_28

    .line 1125
    .line 1126
    move-object/from16 v1, p2

    .line 1127
    .line 1128
    move-object/from16 v3, v26

    .line 1129
    .line 1130
    move-object/from16 v4, v27

    .line 1131
    .line 1132
    move-object/from16 v5, v29

    .line 1133
    .line 1134
    move-object/from16 v6, v30

    .line 1135
    .line 1136
    move-object/from16 v0, v31

    .line 1137
    .line 1138
    move-object/from16 v13, v36

    .line 1139
    .line 1140
    goto/16 :goto_25

    .line 1141
    .line 1142
    :cond_27
    move-object/from16 v12, v32

    .line 1143
    .line 1144
    :cond_28
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v0

    .line 1148
    const/4 v1, 0x1

    .line 1149
    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    .line 1150
    .line 1151
    .line 1152
    move-result v0

    .line 1153
    invoke-interface {v8, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v9

    .line 1157
    invoke-static {v9, v1}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    .line 1158
    .line 1159
    .line 1160
    move-result v1

    .line 1161
    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v9

    .line 1165
    const/4 v11, 0x0

    .line 1166
    invoke-static {v9, v11}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    .line 1167
    .line 1168
    .line 1169
    move-result v9

    .line 1170
    const/16 v11, 0x1e

    .line 1171
    .line 1172
    if-ge v9, v11, :cond_29

    .line 1173
    .line 1174
    add-int/lit8 v9, v9, 0x1

    .line 1175
    .line 1176
    goto :goto_1b

    .line 1177
    :cond_29
    const/16 v11, 0x8

    .line 1178
    .line 1179
    if-ge v1, v11, :cond_2a

    .line 1180
    .line 1181
    add-int/lit8 v1, v1, 0x1

    .line 1182
    .line 1183
    const/4 v9, 0x1

    .line 1184
    goto :goto_1b

    .line 1185
    :cond_2a
    if-ge v0, v11, :cond_2b

    .line 1186
    .line 1187
    add-int/lit8 v0, v0, 0x1

    .line 1188
    .line 1189
    const/4 v9, 0x1

    .line 1190
    const/4 v1, 0x1

    .line 1191
    :cond_2b
    :goto_1b
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v0

    .line 1195
    invoke-interface {v8, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    .line 1197
    .line 1198
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v0

    .line 1202
    invoke-interface {v8, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    .line 1204
    .line 1205
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v0

    .line 1209
    invoke-interface {v8, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    .line 1211
    .line 1212
    add-int v1, v39, v37

    .line 1213
    .line 1214
    invoke-static {v8}, Lcom/sgscq/vpn/handler/u0;->d(Ljava/util/Map;)I

    .line 1215
    .line 1216
    .line 1217
    move-result v0

    .line 1218
    move/from16 v9, v19

    .line 1219
    .line 1220
    :goto_1c
    if-ge v9, v0, :cond_33

    .line 1221
    .line 1222
    add-int/lit8 v9, v9, 0x1

    .line 1223
    .line 1224
    :try_start_1
    invoke-static {}, Lcom/sgscq/vpn/w1;->Z0()Lcom/sgscq/vpn/w1;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v11

    .line 1228
    invoke-virtual {v11, v9}, Lcom/sgscq/vpn/w1;->j1(I)Ljava/util/Map;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v11
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1232
    if-eqz v11, :cond_2c

    .line 1233
    .line 1234
    move-object/from16 v13, v36

    .line 1235
    .line 1236
    :try_start_2
    invoke-interface {v11, v13, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v11

    .line 1240
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v11
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1244
    goto :goto_1d

    .line 1245
    :catch_1
    :cond_2c
    move-object/from16 v13, v36

    .line 1246
    .line 1247
    :catch_2
    move-object v11, v12

    .line 1248
    :goto_1d
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 1249
    .line 1250
    .line 1251
    move-result v19

    .line 1252
    if-eqz v19, :cond_2d

    .line 1253
    .line 1254
    const/4 v11, 0x0

    .line 1255
    new-array v11, v11, [Ljava/lang/Object;

    .line 1256
    .line 1257
    invoke-static {v13, v12, v11}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v11

    .line 1261
    move/from16 v26, v0

    .line 1262
    .line 1263
    goto :goto_20

    .line 1264
    :cond_2d
    invoke-static {v10, v7}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v19

    .line 1268
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v19

    .line 1272
    :goto_1e
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    .line 1273
    .line 1274
    .line 1275
    move-result v25

    .line 1276
    if-eqz v25, :cond_2f

    .line 1277
    .line 1278
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v25

    .line 1282
    move/from16 v26, v0

    .line 1283
    .line 1284
    move-object/from16 v0, v25

    .line 1285
    .line 1286
    check-cast v0, Ljava/util/Map;

    .line 1287
    .line 1288
    invoke-static {v0, v14, v12, v2}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1289
    .line 1290
    .line 1291
    move-result v25

    .line 1292
    if-eqz v25, :cond_2e

    .line 1293
    .line 1294
    goto :goto_1f

    .line 1295
    :cond_2e
    move/from16 v0, v26

    .line 1296
    .line 1297
    goto :goto_1e

    .line 1298
    :cond_2f
    move/from16 v26, v0

    .line 1299
    .line 1300
    const/4 v0, 0x0

    .line 1301
    :goto_1f
    if-nez v0, :cond_30

    .line 1302
    .line 1303
    const/4 v0, 0x0

    .line 1304
    new-array v0, v0, [Ljava/lang/Object;

    .line 1305
    .line 1306
    invoke-static {v13, v12, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v11

    .line 1310
    :goto_20
    move/from16 v19, v1

    .line 1311
    .line 1312
    move-object/from16 v32, v3

    .line 1313
    .line 1314
    move-object/from16 v0, v31

    .line 1315
    .line 1316
    move-object/from16 v31, v4

    .line 1317
    .line 1318
    move-object/from16 v4, v33

    .line 1319
    .line 1320
    goto :goto_22

    .line 1321
    :cond_30
    move/from16 v19, v1

    .line 1322
    .line 1323
    move-object/from16 v0, v31

    .line 1324
    .line 1325
    invoke-static {v0, v7}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v1

    .line 1329
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v25

    .line 1333
    :goto_21
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    .line 1334
    .line 1335
    .line 1336
    move-result v31

    .line 1337
    if-eqz v31, :cond_32

    .line 1338
    .line 1339
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1340
    .line 1341
    .line 1342
    move-result-object v31

    .line 1343
    move-object/from16 v32, v3

    .line 1344
    .line 1345
    move-object/from16 v3, v31

    .line 1346
    .line 1347
    check-cast v3, Ljava/util/Map;

    .line 1348
    .line 1349
    move-object/from16 v31, v4

    .line 1350
    .line 1351
    move-object/from16 v4, v33

    .line 1352
    .line 1353
    invoke-static {v3, v4, v12, v2}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1354
    .line 1355
    .line 1356
    move-result v33

    .line 1357
    if-eqz v33, :cond_31

    .line 1358
    .line 1359
    invoke-static {v3, v13, v12, v11}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1360
    .line 1361
    .line 1362
    move-result v33

    .line 1363
    if-eqz v33, :cond_31

    .line 1364
    .line 1365
    move-object v11, v3

    .line 1366
    :goto_22
    move-object/from16 v1, p2

    .line 1367
    .line 1368
    move-object/from16 v33, v4

    .line 1369
    .line 1370
    move-object/from16 v36, v5

    .line 1371
    .line 1372
    move-object/from16 v4, v27

    .line 1373
    .line 1374
    move-object/from16 v5, v29

    .line 1375
    .line 1376
    move-object/from16 v29, v6

    .line 1377
    .line 1378
    move-object/from16 v6, v30

    .line 1379
    .line 1380
    goto :goto_23

    .line 1381
    :cond_31
    move-object/from16 v33, v4

    .line 1382
    .line 1383
    move-object/from16 v4, v31

    .line 1384
    .line 1385
    move-object/from16 v3, v32

    .line 1386
    .line 1387
    goto :goto_21

    .line 1388
    :cond_32
    move-object/from16 v32, v3

    .line 1389
    .line 1390
    move-object/from16 v31, v4

    .line 1391
    .line 1392
    move-object/from16 v4, v33

    .line 1393
    .line 1394
    invoke-static {v2, v11, v7}, Lcom/sgscq/vpn/handler/u0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v11

    .line 1398
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1399
    .line 1400
    .line 1401
    new-instance v3, Ljava/util/ArrayList;

    .line 1402
    .line 1403
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1404
    .line 1405
    .line 1406
    new-instance v4, Ljava/util/ArrayList;

    .line 1407
    .line 1408
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1409
    .line 1410
    .line 1411
    move-object/from16 v36, v5

    .line 1412
    .line 1413
    move-object/from16 v5, v29

    .line 1414
    .line 1415
    move-object/from16 v29, v6

    .line 1416
    .line 1417
    move-object/from16 v6, v30

    .line 1418
    .line 1419
    filled-new-array {v5, v4, v6, v1}, [Ljava/lang/Object;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v1

    .line 1423
    move-object/from16 v4, v27

    .line 1424
    .line 1425
    invoke-static {v4, v3, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1426
    .line 1427
    .line 1428
    move-result-object v1

    .line 1429
    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    .line 1431
    .line 1432
    move-object/from16 v1, p2

    .line 1433
    .line 1434
    :goto_23
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1435
    .line 1436
    .line 1437
    move-object/from16 p2, v1

    .line 1438
    .line 1439
    move-object/from16 v27, v4

    .line 1440
    .line 1441
    move-object/from16 v30, v6

    .line 1442
    .line 1443
    move/from16 v1, v19

    .line 1444
    .line 1445
    move-object/from16 v6, v29

    .line 1446
    .line 1447
    move-object/from16 v4, v31

    .line 1448
    .line 1449
    move-object/from16 v3, v32

    .line 1450
    .line 1451
    move-object/from16 v31, v0

    .line 1452
    .line 1453
    move-object/from16 v29, v5

    .line 1454
    .line 1455
    move/from16 v0, v26

    .line 1456
    .line 1457
    move-object/from16 v5, v36

    .line 1458
    .line 1459
    move-object/from16 v36, v13

    .line 1460
    .line 1461
    goto/16 :goto_1c

    .line 1462
    .line 1463
    :cond_33
    move/from16 v19, v1

    .line 1464
    .line 1465
    move-object/from16 v32, v3

    .line 1466
    .line 1467
    move-object/from16 v31, v4

    .line 1468
    .line 1469
    move-object/from16 v36, v5

    .line 1470
    .line 1471
    move-object/from16 v4, v27

    .line 1472
    .line 1473
    move-object/from16 v5, v29

    .line 1474
    .line 1475
    move-object/from16 v1, p2

    .line 1476
    .line 1477
    move-object/from16 v29, v6

    .line 1478
    .line 1479
    move-object/from16 v6, v30

    .line 1480
    .line 1481
    :try_start_3
    invoke-static {}, Lcom/sgscq/vpn/w1;->Z0()Lcom/sgscq/vpn/w1;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1485
    goto :goto_24

    .line 1486
    :catch_3
    const/4 v0, 0x0

    .line 1487
    :goto_24
    invoke-static {v0, v8}, Lcom/sgscq/vpn/handler/u0;->p(Lcom/sgscq/vpn/w1;Ljava/util/Map;)V

    .line 1488
    .line 1489
    .line 1490
    move-object v0, v1

    .line 1491
    move-object v10, v4

    .line 1492
    move-object v13, v6

    .line 1493
    move/from16 v1, v19

    .line 1494
    .line 1495
    move-object/from16 v6, v29

    .line 1496
    .line 1497
    move-object/from16 v4, v31

    .line 1498
    .line 1499
    move-object/from16 v3, v32

    .line 1500
    .line 1501
    move/from16 v19, v9

    .line 1502
    .line 1503
    move-object/from16 v32, v12

    .line 1504
    .line 1505
    move/from16 v9, v28

    .line 1506
    .line 1507
    move-object v12, v5

    .line 1508
    move-object/from16 v5, v36

    .line 1509
    .line 1510
    goto/16 :goto_15

    .line 1511
    .line 1512
    :cond_34
    move/from16 v39, v1

    .line 1513
    .line 1514
    move-object v5, v12

    .line 1515
    move-object v6, v13

    .line 1516
    move-object/from16 v4, v27

    .line 1517
    .line 1518
    move-object/from16 v12, v32

    .line 1519
    .line 1520
    move-object/from16 v1, p2

    .line 1521
    .line 1522
    move-object v13, v0

    .line 1523
    move-object v0, v11

    .line 1524
    const/4 v3, 0x0

    .line 1525
    :goto_25
    if-gtz v39, :cond_38

    .line 1526
    .line 1527
    if-nez v17, :cond_35

    .line 1528
    .line 1529
    move-object/from16 v9, v34

    .line 1530
    .line 1531
    invoke-static {v9, v7}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1532
    .line 1533
    .line 1534
    move-result-object v0

    .line 1535
    invoke-interface {v0, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1536
    .line 1537
    .line 1538
    move-result v1

    .line 1539
    if-eqz v1, :cond_35

    .line 1540
    .line 1541
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 1542
    .line 1543
    .line 1544
    move-result v0

    .line 1545
    if-eqz v0, :cond_35

    .line 1546
    .line 1547
    invoke-interface {v7, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    .line 1549
    .line 1550
    :cond_35
    if-eqz v3, :cond_36

    .line 1551
    .line 1552
    move-object/from16 v0, v26

    .line 1553
    .line 1554
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1555
    .line 1556
    .line 1557
    move-result v0

    .line 1558
    if-eqz v0, :cond_36

    .line 1559
    .line 1560
    const-string v0, "\u6b66\u5c06\u7b49\u7ea7\u4e0d\u8db3\uff0c\u65e0\u6cd5\u70b9\u4eae\u4e0b\u4e00\u5c42\u7ecf\u8109"

    .line 1561
    .line 1562
    :goto_26
    invoke-static {v0}, Lcom/sgscq/vpn/handler/u0;->g(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v0

    .line 1566
    goto :goto_27

    .line 1567
    :cond_36
    invoke-static {v8}, Lcom/sgscq/vpn/handler/u0;->i(Ljava/util/Map;)Z

    .line 1568
    .line 1569
    .line 1570
    move-result v0

    .line 1571
    if-eqz v0, :cond_37

    .line 1572
    .line 1573
    const-string v25, "\u7ecf\u8109\u5df2\u6ee1"

    .line 1574
    .line 1575
    :cond_37
    invoke-static/range {v25 .. v25}, Lcom/sgscq/vpn/handler/u0;->g(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 1576
    .line 1577
    .line 1578
    move-result-object v0

    .line 1579
    :goto_27
    move-object v1, v0

    .line 1580
    goto/16 :goto_2d

    .line 1581
    .line 1582
    :cond_38
    move-object/from16 v3, v23

    .line 1583
    .line 1584
    move-object/from16 v9, v34

    .line 1585
    .line 1586
    invoke-static {v3, v7}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1587
    .line 1588
    .line 1589
    move-result-object v11

    .line 1590
    new-instance v15, Ljava/util/ArrayList;

    .line 1591
    .line 1592
    invoke-direct {v15, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1593
    .line 1594
    .line 1595
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1596
    .line 1597
    .line 1598
    move-result-object v15

    .line 1599
    :goto_28
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 1600
    .line 1601
    .line 1602
    move-result v16

    .line 1603
    if-eqz v16, :cond_3c

    .line 1604
    .line 1605
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1606
    .line 1607
    .line 1608
    move-result-object v16

    .line 1609
    move-object/from16 p2, v15

    .line 1610
    .line 1611
    move-object/from16 v15, v16

    .line 1612
    .line 1613
    check-cast v15, Ljava/util/Map;

    .line 1614
    .line 1615
    move-object/from16 v16, v10

    .line 1616
    .line 1617
    const-string v10, "600095"

    .line 1618
    .line 1619
    move-object/from16 v31, v0

    .line 1620
    .line 1621
    move-object/from16 v36, v13

    .line 1622
    .line 1623
    move-object/from16 v0, v22

    .line 1624
    .line 1625
    move-object/from16 v13, v24

    .line 1626
    .line 1627
    invoke-static {v15, v13, v12, v0, v10}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1628
    .line 1629
    .line 1630
    move-result v10

    .line 1631
    if-nez v10, :cond_39

    .line 1632
    .line 1633
    move-object/from16 v15, p2

    .line 1634
    .line 1635
    move-object/from16 v22, v0

    .line 1636
    .line 1637
    move-object/from16 v24, v13

    .line 1638
    .line 1639
    move-object/from16 v10, v16

    .line 1640
    .line 1641
    move-object/from16 v0, v31

    .line 1642
    .line 1643
    move-object/from16 v13, v36

    .line 1644
    .line 1645
    goto :goto_28

    .line 1646
    :cond_39
    const/4 v0, 0x0

    .line 1647
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1648
    .line 1649
    .line 1650
    move-result-object v0

    .line 1651
    move-object/from16 v10, p1

    .line 1652
    .line 1653
    invoke-interface {v15, v10, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    .line 1655
    .line 1656
    move-result-object v0

    .line 1657
    const-string v13, "num"

    .line 1658
    .line 1659
    invoke-interface {v15, v13, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1660
    .line 1661
    .line 1662
    move-result-object v0

    .line 1663
    move-object/from16 p2, v1

    .line 1664
    .line 1665
    const/4 v1, 0x0

    .line 1666
    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/u0;->r(Ljava/lang/Object;I)I

    .line 1667
    .line 1668
    .line 1669
    move-result v0

    .line 1670
    sub-int v0, v0, v39

    .line 1671
    .line 1672
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 1673
    .line 1674
    .line 1675
    move-result v0

    .line 1676
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1677
    .line 1678
    .line 1679
    move-result-object v1

    .line 1680
    invoke-interface {v15, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1681
    .line 1682
    .line 1683
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1684
    .line 1685
    .line 1686
    move-result-object v1

    .line 1687
    invoke-interface {v15, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1688
    .line 1689
    .line 1690
    new-instance v1, Ljava/util/ArrayList;

    .line 1691
    .line 1692
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1693
    .line 1694
    .line 1695
    new-instance v13, Ljava/util/ArrayList;

    .line 1696
    .line 1697
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1698
    .line 1699
    .line 1700
    if-gtz v0, :cond_3b

    .line 1701
    .line 1702
    invoke-interface {v15, v14, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1703
    .line 1704
    .line 1705
    move-result-object v0

    .line 1706
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1707
    .line 1708
    .line 1709
    move-result-object v0

    .line 1710
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1711
    .line 1712
    .line 1713
    move-result v17

    .line 1714
    if-nez v17, :cond_3a

    .line 1715
    .line 1716
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1717
    .line 1718
    .line 1719
    :cond_3a
    invoke-interface {v11, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1720
    .line 1721
    .line 1722
    goto :goto_29

    .line 1723
    :cond_3b
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1724
    .line 1725
    .line 1726
    :goto_29
    filled-new-array {v5, v13, v6, v11}, [Ljava/lang/Object;

    .line 1727
    .line 1728
    .line 1729
    move-result-object v0

    .line 1730
    invoke-static {v4, v1, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1731
    .line 1732
    .line 1733
    move-result-object v0

    .line 1734
    invoke-interface {v7, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1735
    .line 1736
    .line 1737
    goto :goto_2a

    .line 1738
    :cond_3c
    move-object/from16 v31, v0

    .line 1739
    .line 1740
    move-object/from16 p2, v1

    .line 1741
    .line 1742
    move-object/from16 v16, v10

    .line 1743
    .line 1744
    move-object/from16 v36, v13

    .line 1745
    .line 1746
    move-object/from16 v10, p1

    .line 1747
    .line 1748
    :goto_2a
    invoke-static {v8}, Lcom/sgscq/vpn/handler/u0;->l(Ljava/util/Map;)I

    .line 1749
    .line 1750
    .line 1751
    move-result v0

    .line 1752
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1753
    .line 1754
    .line 1755
    move-result-object v0

    .line 1756
    invoke-interface {v8, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1757
    .line 1758
    .line 1759
    new-instance v0, Ljava/util/ArrayList;

    .line 1760
    .line 1761
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1762
    .line 1763
    .line 1764
    const/4 v1, 0x1

    .line 1765
    new-array v1, v1, [Ljava/util/Map;

    .line 1766
    .line 1767
    const/4 v11, 0x0

    .line 1768
    aput-object v8, v1, v11

    .line 1769
    .line 1770
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1771
    .line 1772
    .line 1773
    move-result-object v1

    .line 1774
    invoke-static {v9, v7}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1775
    .line 1776
    .line 1777
    move-result-object v11

    .line 1778
    filled-new-array {v5, v1, v6, v11}, [Ljava/lang/Object;

    .line 1779
    .line 1780
    .line 1781
    move-result-object v1

    .line 1782
    invoke-static {v4, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1783
    .line 1784
    .line 1785
    move-result-object v0

    .line 1786
    invoke-interface {v7, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1787
    .line 1788
    .line 1789
    :try_start_4
    invoke-static {}, Lcom/sgscq/vpn/w1;->Z0()Lcom/sgscq/vpn/w1;

    .line 1790
    .line 1791
    .line 1792
    move-result-object v0

    .line 1793
    invoke-virtual {v0, v2, v7}, Lcom/sgscq/vpn/w1;->F2(Ljava/lang/String;Ljava/util/Map;)Z
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1794
    .line 1795
    .line 1796
    :catch_4
    invoke-static {}, Lcom/sgscq/vpn/handler/u0;->s()Ljava/util/LinkedHashMap;

    .line 1797
    .line 1798
    .line 1799
    move-result-object v0

    .line 1800
    const-string v1, "meridian_info"

    .line 1801
    .line 1802
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1803
    .line 1804
    .line 1805
    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1806
    .line 1807
    .line 1808
    move-result-object v1

    .line 1809
    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1810
    .line 1811
    .line 1812
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1813
    .line 1814
    .line 1815
    move-result v1

    .line 1816
    if-nez v1, :cond_3e

    .line 1817
    .line 1818
    new-instance v1, Ljava/util/ArrayList;

    .line 1819
    .line 1820
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1821
    .line 1822
    .line 1823
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1824
    .line 1825
    .line 1826
    move-result-object v8

    .line 1827
    :goto_2b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1828
    .line 1829
    .line 1830
    move-result v10

    .line 1831
    if-eqz v10, :cond_3d

    .line 1832
    .line 1833
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1834
    .line 1835
    .line 1836
    move-result-object v10

    .line 1837
    check-cast v10, Ljava/util/Map;

    .line 1838
    .line 1839
    move-object/from16 v11, v36

    .line 1840
    .line 1841
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1842
    .line 1843
    .line 1844
    move-result-object v10

    .line 1845
    const/4 v13, 0x0

    .line 1846
    new-array v13, v13, [Ljava/lang/Object;

    .line 1847
    .line 1848
    invoke-static {v11, v10, v13}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1849
    .line 1850
    .line 1851
    move-result-object v10

    .line 1852
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1853
    .line 1854
    .line 1855
    goto :goto_2b

    .line 1856
    :cond_3d
    const-string v8, "meridian_skill_list"

    .line 1857
    .line 1858
    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1859
    .line 1860
    .line 1861
    :cond_3e
    invoke-static {v3, v7}, Lcom/sgscq/vpn/handler/u0;->f(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1862
    .line 1863
    .line 1864
    move-result-object v1

    .line 1865
    invoke-static {v9, v7}, Lcom/sgscq/vpn/handler/u0;->f(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1866
    .line 1867
    .line 1868
    move-result-object v3

    .line 1869
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 1870
    .line 1871
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1872
    .line 1873
    .line 1874
    invoke-interface {v8, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1875
    .line 1876
    .line 1877
    invoke-interface {v8, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1878
    .line 1879
    .line 1880
    move-object/from16 v1, v31

    .line 1881
    .line 1882
    invoke-static {v1, v7}, Lcom/sgscq/vpn/handler/u0;->f(Ljava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 1883
    .line 1884
    .line 1885
    move-result-object v1

    .line 1886
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 1887
    .line 1888
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1889
    .line 1890
    .line 1891
    invoke-interface {v3, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1892
    .line 1893
    .line 1894
    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1895
    .line 1896
    .line 1897
    new-instance v1, Ljava/util/ArrayList;

    .line 1898
    .line 1899
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1900
    .line 1901
    .line 1902
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 1903
    .line 1904
    .line 1905
    move-result v8

    .line 1906
    if-nez v8, :cond_40

    .line 1907
    .line 1908
    move-object/from16 v8, v16

    .line 1909
    .line 1910
    invoke-static {v8, v7}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1911
    .line 1912
    .line 1913
    move-result-object v9

    .line 1914
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1915
    .line 1916
    .line 1917
    move-result-object v9

    .line 1918
    :cond_3f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 1919
    .line 1920
    .line 1921
    move-result v10

    .line 1922
    if-eqz v10, :cond_41

    .line 1923
    .line 1924
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1925
    .line 1926
    .line 1927
    move-result-object v10

    .line 1928
    check-cast v10, Ljava/util/Map;

    .line 1929
    .line 1930
    invoke-static {v10, v14, v12, v2}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1931
    .line 1932
    .line 1933
    move-result v11

    .line 1934
    if-eqz v11, :cond_3f

    .line 1935
    .line 1936
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1937
    .line 1938
    .line 1939
    goto :goto_2c

    .line 1940
    :cond_40
    move-object/from16 v8, v16

    .line 1941
    .line 1942
    :cond_41
    :goto_2c
    new-instance v2, Ljava/util/ArrayList;

    .line 1943
    .line 1944
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1945
    .line 1946
    .line 1947
    new-instance v9, Ljava/util/ArrayList;

    .line 1948
    .line 1949
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1950
    .line 1951
    .line 1952
    filled-new-array {v5, v1, v6, v9}, [Ljava/lang/Object;

    .line 1953
    .line 1954
    .line 1955
    move-result-object v1

    .line 1956
    invoke-static {v4, v2, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1957
    .line 1958
    .line 1959
    move-result-object v1

    .line 1960
    new-instance v2, Ljava/util/ArrayList;

    .line 1961
    .line 1962
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1963
    .line 1964
    .line 1965
    const-string v9, "TeamGeneral"

    .line 1966
    .line 1967
    invoke-static {v9, v7}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 1968
    .line 1969
    .line 1970
    move-result-object v10

    .line 1971
    invoke-static {v10, v7}, Lcom/sgscq/vpn/p5;->c0(Ljava/util/List;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 1972
    .line 1973
    .line 1974
    move-result-object v10

    .line 1975
    new-instance v11, Ljava/util/ArrayList;

    .line 1976
    .line 1977
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1978
    .line 1979
    .line 1980
    filled-new-array {v5, v10, v6, v11}, [Ljava/lang/Object;

    .line 1981
    .line 1982
    .line 1983
    move-result-object v5

    .line 1984
    invoke-static {v4, v2, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1985
    .line 1986
    .line 1987
    move-result-object v2

    .line 1988
    filled-new-array {v9, v2}, [Ljava/lang/Object;

    .line 1989
    .line 1990
    .line 1991
    move-result-object v2

    .line 1992
    invoke-static {v8, v1, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 1993
    .line 1994
    .line 1995
    move-result-object v1

    .line 1996
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 1997
    .line 1998
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1999
    .line 2000
    .line 2001
    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2002
    .line 2003
    .line 2004
    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2005
    .line 2006
    .line 2007
    move-object/from16 v1, v21

    .line 2008
    .line 2009
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2010
    .line 2011
    .line 2012
    goto/16 :goto_27

    .line 2013
    .line 2014
    :goto_2d
    invoke-virtual/range {v18 .. v18}, Lcom/sgscq/vpn/handler/k0;->k()Lcom/sgscq/vpn/handler/d1;

    .line 2015
    .line 2016
    .line 2017
    move-result-object v0

    .line 2018
    move-object/from16 v2, v20

    .line 2019
    .line 2020
    invoke-virtual {v0, v2, v7}, Lcom/sgscq/vpn/handler/d1;->T0(Ljava/lang/String;Ljava/util/Map;)V

    .line 2021
    .line 2022
    .line 2023
    invoke-static {v1, v7}, Lcom/sgscq/vpn/handler/u0;->e(Ljava/util/LinkedHashMap;Ljava/util/Map;)Ljava/util/Map;

    .line 2024
    .line 2025
    .line 2026
    move-result-object v0

    .line 2027
    move-object/from16 v3, p0

    .line 2028
    .line 2029
    invoke-virtual {v3, v2, v0, v7}, Lcom/sgscq/vpn/handler/u0;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 2030
    .line 2031
    .line 2032
    move-result-object v0

    .line 2033
    move-object/from16 v2, v35

    .line 2034
    .line 2035
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2036
    .line 2037
    .line 2038
    :goto_2e
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 2039
    .line 2040
    .line 2041
    move-result-object v0

    .line 2042
    move-object/from16 v1, v18

    .line 2043
    .line 2044
    invoke-virtual {v1, v0}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    .line 2045
    .line 2046
    .line 2047
    move-result-object v0

    .line 2048
    return-object v0
.end method
