.class public final Lcom/sgscq/vpn/handler/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:[I

.field public static final d:[I

.field public static final e:[I


# instance fields
.field public final a:Lcom/sgscq/vpn/handler/k0;

.field public volatile b:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xd

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/sgscq/vpn/handler/x;->c:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sgscq/vpn/handler/x;->d:[I

    const/16 v0, 0x36

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sgscq/vpn/handler/x;->e:[I

    return-void

    :array_0
    .array-data 4
        0x7e
        0xb4
        0xe1
        0x11a
        0x143
        0x1e7
        0x28d
        0x30a
        0x3b8
        0x403
        0x45a
        0x4c6
        0x567
    .end array-data

    :array_1
    .array-data 4
        0xb
        0x11
        0x16
        0x1c
        0x1f
        0x2f
        0x3f
        0x4b
        0x5b
        0x62
        0x6b
        0x75
        0x84
    .end array-data

    :array_2
    .array-data 4
        0x50
        0x73
        0x90
        0xb5
        0xd5
        0x141
        0x1af
        0x201
        0x273
        0x2a5
        0x2de
        0x326
        0x390
        0x428
        0x510
        0x624
        0x74d
        0x93e
        0xb44
        0xd88
        0xf60
        0x1292
        0x163e
        0x1bf2
        0x229d
        0x2576
        0x2a4c
        0x2f92
        0x333c
        0x3a5e
        0x3e61
        0x45a3
        0x4e22
        0x54fd
        0x6001
        0x6c99
        0x76ea
        0x86af
        0x986f
        0xa75b
        0xbcfe
        0xd500
        0xe907
        0x105a2
        0x11fcc
        0x13c93
        0x15c3c
        0x17f0e
        0x1a55d
        0x1ba6e
        0x1d08d
        0x1e7c7
        0x2002b
        0x219c7
    .end array-data
.end method

.method public constructor <init>(Lcom/sgscq/vpn/handler/k0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/handler/x;->a:Lcom/sgscq/vpn/handler/k0;

    return-void
.end method

.method public static A(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_b

    .line 3
    .line 4
    if-eqz p0, :cond_b

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_4

    .line 13
    .line 14
    :cond_0
    const-string v1, "dungeon_times_day"

    .line 15
    .line 16
    const-string v2, ""

    .line 17
    .line 18
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    return v0

    .line 33
    :cond_1
    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    const/4 v1, 0x1

    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    return v1

    .line 44
    :cond_2
    const-string p0, "dungeon_times"

    .line 45
    .line 46
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v2}, Lcom/sgscq/vpn/handler/x;->w(Ljava/lang/Object;)Ljava/util/Map;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    if-eqz v3, :cond_9

    .line 55
    .line 56
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    const-string v4, "dungeon_fight_counts"

    .line 64
    .line 65
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-static {v5}, Lcom/sgscq/vpn/handler/x;->w(Ljava/lang/Object;)Ljava/util/Map;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    move v7, v0

    .line 82
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-eqz v8, :cond_8

    .line 87
    .line 88
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    check-cast v8, Ljava/util/Map$Entry;

    .line 93
    .line 94
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    check-cast v8, Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v8}, Lcom/sgscq/vpn/handler/x;->p(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    if-nez v9, :cond_4

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    invoke-static {v8, v3}, Lcom/sgscq/vpn/handler/x;->y(Ljava/lang/String;Ljava/util/Map;)I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    invoke-static {v8, v5}, Lcom/sgscq/vpn/handler/x;->y(Ljava/lang/String;Ljava/util/Map;)I

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    if-gt v9, v10, :cond_5

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_5
    if-eqz v5, :cond_7

    .line 119
    .line 120
    if-nez v8, :cond_6

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_6
    invoke-static {v8}, Lcom/sgscq/vpn/handler/x;->t(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    :cond_7
    :goto_1
    move v7, v1

    .line 139
    goto :goto_0

    .line 140
    :cond_8
    if-eqz v7, :cond_9

    .line 141
    .line 142
    invoke-static {v5}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    :cond_9
    :goto_2
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    new-instance v4, Lcom/sgscq/vpn/d5;

    .line 154
    .line 155
    const/4 v5, 0x3

    .line 156
    invoke-direct {v4, v5}, Lcom/sgscq/vpn/d5;-><init>(I)V

    .line 157
    .line 158
    .line 159
    invoke-interface {v0, v4}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 160
    .line 161
    .line 162
    instance-of v0, v2, Ljava/util/Map;

    .line 163
    .line 164
    if-eqz v0, :cond_a

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_a
    invoke-static {v3}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    :goto_3
    invoke-interface {p1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    const-string p0, "dungeon_times_extra"

    .line 175
    .line 176
    invoke-static {p0, p1}, Lcom/sgscq/vpn/handler/x;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 177
    .line 178
    .line 179
    const-string p0, "elite_dungeon_times_extra"

    .line 180
    .line 181
    invoke-static {p0, p1}, Lcom/sgscq/vpn/handler/x;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 182
    .line 183
    .line 184
    return v1

    .line 185
    :cond_b
    :goto_4
    return v0
.end method

.method public static B(ILjava/lang/String;Ljava/util/HashMap;)I
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/sgscq/vpn/handler/x;->o(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "hidden"

    .line 11
    .line 12
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    instance-of v0, p2, Ljava/lang/Boolean;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    check-cast p2, Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    goto :goto_2

    .line 27
    :cond_1
    instance-of v0, p2, Ljava/lang/Number;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    check-cast p2, Ljava/lang/Number;

    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_3

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "true"

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_4

    .line 51
    .line 52
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    const-string v0, "1"

    .line 57
    .line 58
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_3

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    :goto_0
    const/4 p2, 0x0

    .line 66
    goto :goto_2

    .line 67
    :cond_4
    :goto_1
    const/4 p2, 0x1

    .line 68
    :goto_2
    if-eqz p2, :cond_5

    .line 69
    .line 70
    const/4 p0, 0x3

    .line 71
    return p0

    .line 72
    :cond_5
    if-lez p0, :cond_6

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_6
    invoke-static {p1}, Lcom/sgscq/vpn/handler/x;->o(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_7

    .line 80
    .line 81
    const/16 p0, 0xa

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_7
    const/4 p0, 0x5

    .line 85
    :goto_3
    return p0
.end method

.method public static C(II)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    if-lez p0, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    mul-int/2addr p0, p1

    int-to-double p0, p0

    const-wide/high16 v1, 0x4014000000000000L    # 5.0

    div-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static D(I)D
    .locals 7

    .line 1
    const/16 v0, 0x18

    const-wide v1, 0x4098fa0a3d70a3d7L    # 1598.51

    if-gt p0, v0, :cond_0

    add-int/lit8 p0, p0, -0x14

    int-to-double v3, p0

    const-wide v5, 0x3ff23d70a3d70a3dL    # 1.14

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    :goto_0
    mul-double/2addr v3, v1

    return-wide v3

    :cond_0
    const-wide v3, 0x3ff347ae147ae148L    # 1.205

    const/16 v0, 0x27

    if-gt p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x14

    int-to-double v5, p0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    goto :goto_0

    :cond_1
    const-wide/high16 v5, 0x4033000000000000L    # 19.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v3, v1

    sub-int/2addr p0, v0

    int-to-double v0, p0

    const-wide v5, 0x3ff2666666666666L    # 1.15

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v3

    return-wide v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5

    .line 1
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-nez v1, :cond_1

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/sgscq/vpn/handler/x;->w(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Lcom/sgscq/vpn/d5;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lcom/sgscq/vpn/d5;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public static h(Lcom/sgscq/vpn/w1;Ljava/lang/String;)I
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/x;->t(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x5

    .line 13
    const/4 v6, 0x7

    .line 14
    const-string v7, "105"

    .line 15
    .line 16
    if-lt v2, v6, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    :try_start_0
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_1

    .line 34
    :catch_0
    :cond_1
    :goto_0
    const/4 v1, -0x1

    .line 35
    :goto_1
    const/4 v2, 0x1

    .line 36
    const/4 v11, 0x0

    .line 37
    const/4 v12, 0x4

    .line 38
    const/16 v13, 0x8

    .line 39
    .line 40
    const/16 v14, 0x36

    .line 41
    .line 42
    if-lt v1, v2, :cond_e

    .line 43
    .line 44
    if-le v1, v14, :cond_2

    .line 45
    .line 46
    goto/16 :goto_8

    .line 47
    .line 48
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/x;->t(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v15

    .line 52
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-lt v4, v13, :cond_4

    .line 57
    .line 58
    invoke-virtual {v15, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_3

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    :try_start_1
    invoke-virtual {v15, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    goto :goto_3

    .line 74
    :catch_1
    :cond_4
    :goto_2
    const/4 v4, -0x1

    .line 75
    :goto_3
    const/16 v7, 0x17

    .line 76
    .line 77
    if-gt v1, v12, :cond_5

    .line 78
    .line 79
    move v15, v12

    .line 80
    goto :goto_4

    .line 81
    :cond_5
    const/16 v15, 0xe

    .line 82
    .line 83
    if-gt v1, v15, :cond_6

    .line 84
    .line 85
    move v15, v5

    .line 86
    goto :goto_4

    .line 87
    :cond_6
    if-gt v1, v7, :cond_7

    .line 88
    .line 89
    const/4 v15, 0x6

    .line 90
    goto :goto_4

    .line 91
    :cond_7
    move v15, v6

    .line 92
    :goto_4
    add-int/lit8 v5, v15, 0x1

    .line 93
    .line 94
    if-lt v4, v2, :cond_e

    .line 95
    .line 96
    if-le v4, v5, :cond_8

    .line 97
    .line 98
    goto/16 :goto_8

    .line 99
    .line 100
    :cond_8
    const/16 v5, 0xd

    .line 101
    .line 102
    if-gt v1, v7, :cond_a

    .line 103
    .line 104
    if-gt v1, v5, :cond_9

    .line 105
    .line 106
    new-instance v5, Ll/c;

    .line 107
    .line 108
    sget-object v16, Lcom/sgscq/vpn/handler/x;->c:[I

    .line 109
    .line 110
    add-int/lit8 v17, v1, -0x1

    .line 111
    .line 112
    aget v3, v16, v17

    .line 113
    .line 114
    sget-object v16, Lcom/sgscq/vpn/handler/x;->d:[I

    .line 115
    .line 116
    aget v6, v16, v17

    .line 117
    .line 118
    invoke-direct {v5, v3, v6, v11}, Ll/c;-><init>(III)V

    .line 119
    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_9
    add-int/lit8 v3, v1, -0xd

    .line 123
    .line 124
    int-to-double v5, v3

    .line 125
    const-wide/high16 v16, 0x4026000000000000L    # 11.0

    .line 126
    .line 127
    div-double v5, v5, v16

    .line 128
    .line 129
    const-wide v12, 0x4036de4f98575e97L    # 22.86840202458424

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 135
    .line 136
    .line 137
    move-result-wide v12

    .line 138
    const-wide v18, 0x40959c0000000000L    # 1383.0

    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    mul-double v12, v12, v18

    .line 144
    .line 145
    const-wide v2, 0x40397e0f83e0f83eL    # 25.492424242424242

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 151
    .line 152
    .line 153
    move-result-wide v2

    .line 154
    const-wide v5, 0x4060800000000000L    # 132.0

    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    mul-double/2addr v2, v5

    .line 160
    new-instance v5, Ll/c;

    .line 161
    .line 162
    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    .line 163
    .line 164
    .line 165
    move-result-wide v12

    .line 166
    long-to-int v6, v12

    .line 167
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    .line 168
    .line 169
    .line 170
    move-result-wide v2

    .line 171
    long-to-int v2, v2

    .line 172
    invoke-direct {v5, v6, v2, v11}, Ll/c;-><init>(III)V

    .line 173
    .line 174
    .line 175
    goto :goto_5

    .line 176
    :cond_a
    const/16 v2, 0x25

    .line 177
    .line 178
    if-le v1, v2, :cond_b

    .line 179
    .line 180
    add-int/lit8 v2, v1, -0x25

    .line 181
    .line 182
    int-to-double v2, v2

    .line 183
    const-wide/high16 v5, 0x3ff4000000000000L    # 1.25

    .line 184
    .line 185
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 186
    .line 187
    .line 188
    move-result-wide v2

    .line 189
    new-instance v5, Ll/c;

    .line 190
    .line 191
    const-wide v12, 0x40e9608000000000L    # 51972.0

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    mul-double/2addr v12, v2

    .line 197
    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    .line 198
    .line 199
    .line 200
    move-result-wide v12

    .line 201
    long-to-int v6, v12

    .line 202
    const-wide v12, 0x40b55f0000000000L    # 5471.0

    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    mul-double/2addr v2, v12

    .line 208
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    .line 209
    .line 210
    .line 211
    move-result-wide v2

    .line 212
    long-to-int v2, v2

    .line 213
    invoke-direct {v5, v6, v2, v11}, Ll/c;-><init>(III)V

    .line 214
    .line 215
    .line 216
    :goto_5
    move v7, v11

    .line 217
    move/from16 v20, v15

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_b
    add-int/lit8 v2, v1, -0x18

    .line 221
    .line 222
    new-instance v3, Ll/c;

    .line 223
    .line 224
    const/16 v6, 0x7b8b

    .line 225
    .line 226
    int-to-long v12, v6

    .line 227
    rsub-int/lit8 v6, v2, 0xd

    .line 228
    .line 229
    move/from16 v20, v15

    .line 230
    .line 231
    int-to-long v14, v6

    .line 232
    mul-long/2addr v12, v14

    .line 233
    const v6, 0xcb04

    .line 234
    .line 235
    .line 236
    int-to-long v10, v6

    .line 237
    int-to-long v7, v2

    .line 238
    mul-long/2addr v10, v7

    .line 239
    add-long/2addr v10, v12

    .line 240
    int-to-long v12, v5

    .line 241
    const-wide/16 v21, 0x2

    .line 242
    .line 243
    div-long v23, v12, v21

    .line 244
    .line 245
    add-long v10, v23, v10

    .line 246
    .line 247
    div-long/2addr v10, v12

    .line 248
    long-to-int v2, v10

    .line 249
    const/16 v5, 0xd25

    .line 250
    .line 251
    int-to-long v9, v5

    .line 252
    mul-long/2addr v9, v14

    .line 253
    const/16 v5, 0x155f

    .line 254
    .line 255
    int-to-long v14, v5

    .line 256
    mul-long/2addr v14, v7

    .line 257
    add-long/2addr v14, v9

    .line 258
    add-long v14, v14, v23

    .line 259
    .line 260
    div-long/2addr v14, v12

    .line 261
    long-to-int v5, v14

    .line 262
    const/4 v7, 0x0

    .line 263
    invoke-direct {v3, v2, v5, v7}, Ll/c;-><init>(III)V

    .line 264
    .line 265
    .line 266
    move-object v5, v3

    .line 267
    :goto_6
    iget v2, v5, Ll/c;->a:I

    .line 268
    .line 269
    move/from16 v10, v20

    .line 270
    .line 271
    if-gt v4, v10, :cond_c

    .line 272
    .line 273
    const/4 v3, 0x1

    .line 274
    sub-int/2addr v4, v3

    .line 275
    iget v1, v5, Ll/c;->b:I

    .line 276
    .line 277
    mul-int/2addr v4, v1

    .line 278
    add-int/2addr v4, v2

    .line 279
    goto :goto_9

    .line 280
    :cond_c
    const/16 v3, 0x17

    .line 281
    .line 282
    if-gt v1, v3, :cond_d

    .line 283
    .line 284
    const-wide v3, 0x3fe22d0e56041893L    # 0.568

    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    goto :goto_7

    .line 290
    :cond_d
    const-wide v3, 0x3fe4c49ba5e353f8L    # 0.649

    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    :goto_7
    int-to-double v1, v2

    .line 296
    mul-double/2addr v1, v3

    .line 297
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 298
    .line 299
    .line 300
    move-result-wide v1

    .line 301
    double-to-int v4, v1

    .line 302
    goto :goto_9

    .line 303
    :cond_e
    :goto_8
    move v7, v11

    .line 304
    const/4 v4, -0x1

    .line 305
    :goto_9
    if-ltz v4, :cond_f

    .line 306
    .line 307
    return v4

    .line 308
    :cond_f
    if-nez v0, :cond_10

    .line 309
    .line 310
    const/4 v1, 0x0

    .line 311
    goto :goto_a

    .line 312
    :cond_10
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/x;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/w1;->x0(Ljava/lang/String;)Ljava/util/HashMap;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    :goto_a
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/x;->r(Ljava/lang/String;)I

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    const/4 v3, 0x1

    .line 325
    if-lt v2, v3, :cond_42

    .line 326
    .line 327
    const/16 v3, 0x36

    .line 328
    .line 329
    if-le v2, v3, :cond_11

    .line 330
    .line 331
    goto/16 :goto_1f

    .line 332
    .line 333
    :cond_11
    if-nez v1, :cond_12

    .line 334
    .line 335
    goto :goto_b

    .line 336
    :cond_12
    const-string v2, "boss_tier"

    .line 337
    .line 338
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    instance-of v3, v2, Ljava/lang/Number;

    .line 343
    .line 344
    if-eqz v3, :cond_13

    .line 345
    .line 346
    check-cast v2, Ljava/lang/Number;

    .line 347
    .line 348
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 349
    .line 350
    .line 351
    move-result v2

    .line 352
    goto :goto_c

    .line 353
    :cond_13
    instance-of v3, v2, Ljava/lang/String;

    .line 354
    .line 355
    if-eqz v3, :cond_14

    .line 356
    .line 357
    :try_start_2
    check-cast v2, Ljava/lang/String;

    .line 358
    .line 359
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 363
    goto :goto_c

    .line 364
    :catch_2
    :cond_14
    :goto_b
    move v2, v7

    .line 365
    :goto_c
    const/16 v4, 0x12

    .line 366
    .line 367
    const/16 v5, 0x18

    .line 368
    .line 369
    if-gtz v2, :cond_2a

    .line 370
    .line 371
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/x;->r(Ljava/lang/String;)I

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/x;->s(Ljava/lang/String;)I

    .line 376
    .line 377
    .line 378
    move-result v3

    .line 379
    const/4 v6, 0x1

    .line 380
    if-lt v2, v6, :cond_20

    .line 381
    .line 382
    const/16 v6, 0x36

    .line 383
    .line 384
    if-gt v2, v6, :cond_20

    .line 385
    .line 386
    if-gtz v3, :cond_15

    .line 387
    .line 388
    goto :goto_11

    .line 389
    :cond_15
    if-eqz v0, :cond_17

    .line 390
    .line 391
    add-int/lit16 v6, v2, 0x1f4

    .line 392
    .line 393
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v6

    .line 397
    invoke-virtual {v0, v6}, Lcom/sgscq/vpn/w1;->n0(Ljava/lang/String;)Ljava/util/List;

    .line 398
    .line 399
    .line 400
    move-result-object v6

    .line 401
    if-nez v6, :cond_16

    .line 402
    .line 403
    goto :goto_d

    .line 404
    :cond_16
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 405
    .line 406
    .line 407
    move-result v6

    .line 408
    goto :goto_e

    .line 409
    :cond_17
    :goto_d
    move v6, v7

    .line 410
    :goto_e
    if-gtz v6, :cond_1d

    .line 411
    .line 412
    const/4 v8, 0x1

    .line 413
    if-lt v2, v8, :cond_1c

    .line 414
    .line 415
    const/16 v6, 0x36

    .line 416
    .line 417
    if-le v2, v6, :cond_18

    .line 418
    .line 419
    goto :goto_f

    .line 420
    :cond_18
    const/16 v6, 0x11

    .line 421
    .line 422
    if-gt v2, v6, :cond_19

    .line 423
    .line 424
    new-array v6, v6, [I

    .line 425
    .line 426
    fill-array-data v6, :array_0

    .line 427
    .line 428
    .line 429
    add-int/lit8 v8, v2, -0x1

    .line 430
    .line 431
    aget v6, v6, v8

    .line 432
    .line 433
    goto :goto_10

    .line 434
    :cond_19
    const/16 v6, 0x15

    .line 435
    .line 436
    if-gt v2, v6, :cond_1a

    .line 437
    .line 438
    move v6, v4

    .line 439
    goto :goto_10

    .line 440
    :cond_1a
    if-gt v2, v5, :cond_1b

    .line 441
    .line 442
    const/16 v6, 0x13

    .line 443
    .line 444
    goto :goto_10

    .line 445
    :cond_1b
    const/16 v6, 0x14

    .line 446
    .line 447
    goto :goto_10

    .line 448
    :cond_1c
    :goto_f
    move v6, v7

    .line 449
    :cond_1d
    :goto_10
    if-eq v3, v6, :cond_1e

    .line 450
    .line 451
    goto :goto_11

    .line 452
    :cond_1e
    if-gt v2, v5, :cond_1f

    .line 453
    .line 454
    const/4 v2, 0x6

    .line 455
    goto :goto_12

    .line 456
    :cond_1f
    const/4 v2, 0x7

    .line 457
    goto :goto_12

    .line 458
    :cond_20
    :goto_11
    move v2, v7

    .line 459
    :goto_12
    if-lez v2, :cond_21

    .line 460
    .line 461
    goto/16 :goto_14

    .line 462
    .line 463
    :cond_21
    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/x;->q(Lcom/sgscq/vpn/w1;Ljava/util/HashMap;)Ljava/lang/Boolean;

    .line 464
    .line 465
    .line 466
    move-result-object v2

    .line 467
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 468
    .line 469
    invoke-virtual {v3, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result v2

    .line 473
    if-nez v2, :cond_22

    .line 474
    .line 475
    move v2, v7

    .line 476
    goto :goto_14

    .line 477
    :cond_22
    if-nez v0, :cond_23

    .line 478
    .line 479
    goto :goto_13

    .line 480
    :cond_23
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/x;->r(Ljava/lang/String;)I

    .line 481
    .line 482
    .line 483
    move-result v2

    .line 484
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/x;->s(Ljava/lang/String;)I

    .line 485
    .line 486
    .line 487
    move-result v3

    .line 488
    const/4 v6, 0x1

    .line 489
    if-lt v2, v6, :cond_29

    .line 490
    .line 491
    const/16 v6, 0x36

    .line 492
    .line 493
    if-gt v2, v6, :cond_29

    .line 494
    .line 495
    if-gtz v3, :cond_24

    .line 496
    .line 497
    goto :goto_13

    .line 498
    :cond_24
    add-int/lit16 v2, v2, 0x1f4

    .line 499
    .line 500
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v2

    .line 504
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/w1;->n0(Ljava/lang/String;)Ljava/util/List;

    .line 505
    .line 506
    .line 507
    move-result-object v2

    .line 508
    if-eqz v2, :cond_29

    .line 509
    .line 510
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 511
    .line 512
    .line 513
    move-result v3

    .line 514
    if-eqz v3, :cond_25

    .line 515
    .line 516
    goto :goto_13

    .line 517
    :cond_25
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/x;->t(Ljava/lang/String;)Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v3

    .line 521
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 522
    .line 523
    .line 524
    move-result-object v2

    .line 525
    move v6, v7

    .line 526
    :cond_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 527
    .line 528
    .line 529
    move-result v8

    .line 530
    if-eqz v8, :cond_28

    .line 531
    .line 532
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v8

    .line 536
    check-cast v8, Ljava/lang/String;

    .line 537
    .line 538
    invoke-virtual {v0, v8}, Lcom/sgscq/vpn/w1;->x0(Ljava/lang/String;)Ljava/util/HashMap;

    .line 539
    .line 540
    .line 541
    move-result-object v9

    .line 542
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 543
    .line 544
    invoke-static {v0, v9}, Lcom/sgscq/vpn/handler/x;->q(Lcom/sgscq/vpn/w1;Ljava/util/HashMap;)Ljava/lang/Boolean;

    .line 545
    .line 546
    .line 547
    move-result-object v9

    .line 548
    invoke-virtual {v10, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 549
    .line 550
    .line 551
    move-result v9

    .line 552
    if-eqz v9, :cond_27

    .line 553
    .line 554
    add-int/lit8 v6, v6, 0x1

    .line 555
    .line 556
    :cond_27
    invoke-static {v8}, Lcom/sgscq/vpn/handler/x;->t(Ljava/lang/String;)Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v8

    .line 560
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    move-result v8

    .line 564
    if-eqz v8, :cond_26

    .line 565
    .line 566
    :cond_28
    const/4 v2, 0x1

    .line 567
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 568
    .line 569
    .line 570
    move-result v3

    .line 571
    move v2, v3

    .line 572
    goto :goto_14

    .line 573
    :cond_29
    :goto_13
    const/4 v2, 0x1

    .line 574
    :cond_2a
    :goto_14
    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/x;->q(Lcom/sgscq/vpn/w1;Ljava/util/HashMap;)Ljava/lang/Boolean;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    if-gtz v2, :cond_2c

    .line 579
    .line 580
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 581
    .line 582
    invoke-virtual {v3, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 583
    .line 584
    .line 585
    move-result v3

    .line 586
    if-eqz v3, :cond_2b

    .line 587
    .line 588
    goto :goto_15

    .line 589
    :cond_2b
    move v3, v7

    .line 590
    goto :goto_16

    .line 591
    :cond_2c
    :goto_15
    const/4 v3, 0x1

    .line 592
    :goto_16
    if-eqz v3, :cond_2d

    .line 593
    .line 594
    if-gtz v2, :cond_2d

    .line 595
    .line 596
    const/4 v2, 0x1

    .line 597
    :cond_2d
    if-nez v3, :cond_3a

    .line 598
    .line 599
    if-nez v0, :cond_3a

    .line 600
    .line 601
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/x;->s(Ljava/lang/String;)I

    .line 602
    .line 603
    .line 604
    move-result v0

    .line 605
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/x;->r(Ljava/lang/String;)I

    .line 606
    .line 607
    .line 608
    move-result v2

    .line 609
    if-lez v0, :cond_37

    .line 610
    .line 611
    if-lt v2, v4, :cond_37

    .line 612
    .line 613
    const/16 v3, 0x36

    .line 614
    .line 615
    if-le v2, v3, :cond_2e

    .line 616
    .line 617
    goto :goto_18

    .line 618
    :cond_2e
    const/16 v6, 0x10

    .line 619
    .line 620
    const/16 v8, 0xc

    .line 621
    .line 622
    if-gt v2, v5, :cond_2f

    .line 623
    .line 624
    const/4 v3, 0x4

    .line 625
    if-eq v0, v3, :cond_36

    .line 626
    .line 627
    const/16 v2, 0x8

    .line 628
    .line 629
    if-eq v0, v2, :cond_35

    .line 630
    .line 631
    if-eq v0, v8, :cond_34

    .line 632
    .line 633
    if-eq v0, v4, :cond_30

    .line 634
    .line 635
    const/16 v2, 0xf

    .line 636
    .line 637
    if-eq v0, v2, :cond_31

    .line 638
    .line 639
    if-eq v0, v6, :cond_33

    .line 640
    .line 641
    goto :goto_18

    .line 642
    :cond_2f
    const/16 v4, 0x27

    .line 643
    .line 644
    if-gt v2, v4, :cond_32

    .line 645
    .line 646
    const/4 v2, 0x4

    .line 647
    if-eq v0, v2, :cond_36

    .line 648
    .line 649
    const/16 v2, 0x8

    .line 650
    .line 651
    if-eq v0, v2, :cond_35

    .line 652
    .line 653
    if-eq v0, v8, :cond_34

    .line 654
    .line 655
    if-eq v0, v6, :cond_31

    .line 656
    .line 657
    packed-switch v0, :pswitch_data_0

    .line 658
    .line 659
    .line 660
    goto :goto_18

    .line 661
    :cond_30
    :pswitch_0
    const/4 v4, 0x6

    .line 662
    goto :goto_19

    .line 663
    :cond_31
    const/4 v2, 0x4

    .line 664
    goto :goto_17

    .line 665
    :cond_32
    const/4 v2, 0x4

    .line 666
    if-eq v0, v2, :cond_36

    .line 667
    .line 668
    const/16 v3, 0x8

    .line 669
    .line 670
    if-eq v0, v3, :cond_35

    .line 671
    .line 672
    if-eq v0, v8, :cond_34

    .line 673
    .line 674
    packed-switch v0, :pswitch_data_1

    .line 675
    .line 676
    .line 677
    goto :goto_18

    .line 678
    :pswitch_1
    const/4 v4, 0x7

    .line 679
    goto :goto_19

    .line 680
    :cond_33
    :pswitch_2
    const/4 v4, 0x5

    .line 681
    goto :goto_19

    .line 682
    :goto_17
    :pswitch_3
    move v4, v2

    .line 683
    goto :goto_19

    .line 684
    :cond_34
    const/4 v4, 0x3

    .line 685
    goto :goto_19

    .line 686
    :cond_35
    const/4 v4, 0x2

    .line 687
    goto :goto_19

    .line 688
    :cond_36
    const/4 v4, 0x1

    .line 689
    goto :goto_19

    .line 690
    :cond_37
    :goto_18
    move v4, v7

    .line 691
    :goto_19
    if-gtz v4, :cond_39

    .line 692
    .line 693
    if-eqz v1, :cond_38

    .line 694
    .line 695
    const-string v0, "type"

    .line 696
    .line 697
    const-string v2, ""

    .line 698
    .line 699
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    const-string v1, "boss"

    .line 708
    .line 709
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 710
    .line 711
    .line 712
    move-result v0

    .line 713
    if-eqz v0, :cond_38

    .line 714
    .line 715
    goto :goto_1a

    .line 716
    :cond_38
    move v0, v7

    .line 717
    goto :goto_1b

    .line 718
    :cond_39
    :goto_1a
    const/4 v0, 0x1

    .line 719
    :goto_1b
    move v3, v0

    .line 720
    move v2, v4

    .line 721
    :cond_3a
    if-eqz v3, :cond_3b

    .line 722
    .line 723
    if-gtz v2, :cond_3b

    .line 724
    .line 725
    const/4 v3, -0x1

    .line 726
    goto/16 :goto_20

    .line 727
    .line 728
    :cond_3b
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/x;->r(Ljava/lang/String;)I

    .line 729
    .line 730
    .line 731
    move-result v0

    .line 732
    const/4 v1, 0x1

    .line 733
    if-lt v0, v1, :cond_42

    .line 734
    .line 735
    const/16 v1, 0x36

    .line 736
    .line 737
    if-le v0, v1, :cond_3c

    .line 738
    .line 739
    goto :goto_1f

    .line 740
    :cond_3c
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/x;->s(Ljava/lang/String;)I

    .line 741
    .line 742
    .line 743
    move-result v1

    .line 744
    if-gtz v1, :cond_3d

    .line 745
    .line 746
    goto :goto_1f

    .line 747
    :cond_3d
    invoke-static {v0}, Lcom/sgscq/vpn/handler/x;->D(I)D

    .line 748
    .line 749
    .line 750
    move-result-wide v8

    .line 751
    if-nez v3, :cond_3e

    .line 752
    .line 753
    int-to-double v1, v1

    .line 754
    add-double/2addr v8, v1

    .line 755
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 756
    .line 757
    sub-double/2addr v8, v1

    .line 758
    goto :goto_1d

    .line 759
    :cond_3e
    if-gt v0, v5, :cond_3f

    .line 760
    .line 761
    const/4 v1, 0x6

    .line 762
    new-array v1, v1, [D

    .line 763
    .line 764
    fill-array-data v1, :array_1

    .line 765
    .line 766
    .line 767
    goto :goto_1c

    .line 768
    :cond_3f
    const/4 v1, 0x7

    .line 769
    new-array v1, v1, [D

    .line 770
    .line 771
    fill-array-data v1, :array_2

    .line 772
    .line 773
    .line 774
    :goto_1c
    if-lez v2, :cond_42

    .line 775
    .line 776
    array-length v3, v1

    .line 777
    if-le v2, v3, :cond_40

    .line 778
    .line 779
    goto :goto_1f

    .line 780
    :cond_40
    const/4 v3, 0x1

    .line 781
    sub-int/2addr v2, v3

    .line 782
    aget-wide v2, v1, v2

    .line 783
    .line 784
    mul-double/2addr v8, v2

    .line 785
    :goto_1d
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    .line 786
    .line 787
    .line 788
    move-result-wide v1

    .line 789
    long-to-int v1, v1

    .line 790
    if-gt v0, v5, :cond_41

    .line 791
    .line 792
    const-wide v2, 0x4000189374bc6a7fL    # 2.012

    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    goto :goto_1e

    .line 798
    :cond_41
    const-wide v2, 0x40012b020c49ba5eL    # 2.146

    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    :goto_1e
    invoke-static {v0}, Lcom/sgscq/vpn/handler/x;->D(I)D

    .line 804
    .line 805
    .line 806
    move-result-wide v4

    .line 807
    mul-double/2addr v4, v2

    .line 808
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    .line 809
    .line 810
    .line 811
    move-result-wide v2

    .line 812
    long-to-int v2, v2

    .line 813
    sget-object v3, Lcom/sgscq/vpn/handler/x;->e:[I

    .line 814
    .line 815
    const/4 v4, -0x1

    .line 816
    add-int/2addr v0, v4

    .line 817
    aget v0, v3, v0

    .line 818
    .line 819
    int-to-long v3, v1

    .line 820
    int-to-long v0, v0

    .line 821
    mul-long/2addr v3, v0

    .line 822
    int-to-long v0, v2

    .line 823
    const-wide/16 v5, 0x2

    .line 824
    .line 825
    div-long v5, v0, v5

    .line 826
    .line 827
    add-long/2addr v5, v3

    .line 828
    div-long/2addr v5, v0

    .line 829
    long-to-int v3, v5

    .line 830
    goto :goto_20

    .line 831
    :cond_42
    :goto_1f
    const/4 v4, -0x1

    .line 832
    move v3, v4

    .line 833
    :goto_20
    if-ltz v3, :cond_43

    .line 834
    .line 835
    move v11, v3

    .line 836
    goto :goto_21

    .line 837
    :cond_43
    move v11, v7

    .line 838
    :goto_21
    return v11

    .line 839
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    :array_0
    .array-data 4
        0x6
        0x7
        0x9
        0xa
        0xa
        0xc
        0xc
        0xd
        0xe
        0xf
        0xf
        0xf
        0x10
        0x10
        0x10
        0x11
        0x11
    .end array-data

    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    :array_1
    .array-data 8
        0x3ff578d4fdf3b646L    # 1.342
        0x3ff79db22d0e5604L    # 1.476
        0x3ff9c28f5c28f5c3L    # 1.61
        0x3ffbe76c8b439581L    # 1.744
        0x3ffe0c49ba5e353fL    # 1.878
        0x4000189374bc6a7fL    # 2.012
    .end array-data

    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    :array_2
    .array-data 8
        0x3ff578d4fdf3b646L    # 1.342
        0x3ff79db22d0e5604L    # 1.476
        0x3ff9c28f5c28f5c3L    # 1.61
        0x3ffbe76c8b439581L    # 1.744
        0x3ffe0c49ba5e353fL    # 1.878
        0x4000189374bc6a7fL    # 2.012
        0x40012b020c49ba5eL    # 2.146
    .end array-data
.end method

.method public static k(Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    .line 1
    const-string v0, "dungeon_times"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Map;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public static n(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lcom/sgscq/vpn/handler/x;->A(Ljava/lang/String;Ljava/util/Map;)Z

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz p0, :cond_3

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const-string v2, "dungeon_fight_counts"

    .line 20
    .line 21
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v3}, Lcom/sgscq/vpn/handler/x;->w(Ljava/lang/Object;)Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {p0}, Lcom/sgscq/vpn/handler/x;->t(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-static {v4, v3}, Lcom/sgscq/vpn/handler/x;->y(Ljava/lang/String;Ljava/util/Map;)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    add-int/2addr v5, v1

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    if-nez v4, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-static {v4}, Lcom/sgscq/vpn/handler/x;->t(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_0
    invoke-static {v3}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :cond_3
    :goto_1
    invoke-static {p0}, Lcom/sgscq/vpn/handler/x;->o(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_4

    .line 70
    .line 71
    const-string v2, "elite_dungeon_times_extra"

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    const-string v2, "dungeon_times_extra"

    .line 75
    .line 76
    :goto_2
    invoke-static {p0}, Lcom/sgscq/vpn/handler/x;->t(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    instance-of v5, v4, Ljava/util/Map;

    .line 85
    .line 86
    if-eqz v5, :cond_6

    .line 87
    .line 88
    check-cast v4, Ljava/util/Map;

    .line 89
    .line 90
    invoke-static {v3, v4}, Lcom/sgscq/vpn/handler/x;->x(Ljava/lang/String;Ljava/util/Map;)I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-gtz v5, :cond_5

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_5
    sub-int/2addr v5, v1

    .line 98
    invoke-static {v5, v3, v4}, Lcom/sgscq/vpn/handler/x;->z(ILjava/lang/String;Ljava/util/Map;)V

    .line 99
    .line 100
    .line 101
    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_6
    invoke-static {v0, v2, p1}, Lcom/sgscq/vpn/handler/x;->v(ILjava/lang/String;Ljava/util/Map;)I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-gtz v3, :cond_7

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_7
    sub-int/2addr v3, v1

    .line 113
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    :goto_3
    move v0, v1

    .line 121
    :goto_4
    if-eqz v0, :cond_8

    .line 122
    .line 123
    return-void

    .line 124
    :cond_8
    invoke-static {p1}, Lcom/sgscq/vpn/handler/x;->k(Ljava/util/Map;)Ljava/util/Map;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {p0, v0}, Lcom/sgscq/vpn/handler/x;->x(Ljava/lang/String;Ljava/util/Map;)I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    add-int/2addr v2, v1

    .line 133
    invoke-static {v2, p0, v0}, Lcom/sgscq/vpn/handler/x;->z(ILjava/lang/String;Ljava/util/Map;)V

    .line 134
    .line 135
    .line 136
    const-string p0, "dungeon_times"

    .line 137
    .line 138
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method public static o(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    const-string v0, "105"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static p(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/handler/x;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const-string v0, "105"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    return v3

    :cond_1
    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x1f5

    if-lt p0, v0, :cond_2

    const/16 v0, 0x22a

    if-gt p0, v0, :cond_2

    move v1, v3

    :catch_0
    :cond_2
    return v1
.end method

.method public static q(Lcom/sgscq/vpn/w1;Ljava/util/HashMap;)Ljava/lang/Boolean;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, -0x1

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto/16 :goto_3

    .line 6
    .line 7
    :cond_0
    const-string v2, "enemy_grades"

    .line 8
    .line 9
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    instance-of v3, v2, Ljava/util/List;

    .line 14
    .line 15
    if-eqz v3, :cond_3

    .line 16
    .line 17
    check-cast v2, Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-le v3, v0, :cond_3

    .line 24
    .line 25
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    instance-of v3, v2, Ljava/lang/Number;

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    check-cast v2, Ljava/lang/Number;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    instance-of v3, v2, Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    :try_start_0
    check-cast v2, Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    :cond_2
    move v2, v1

    .line 52
    :goto_0
    if-lez v2, :cond_3

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    const-string v2, "second_enemy_grade"

    .line 56
    .line 57
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    instance-of v3, v2, Ljava/lang/Number;

    .line 62
    .line 63
    if-eqz v3, :cond_4

    .line 64
    .line 65
    check-cast v2, Ljava/lang/Number;

    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    goto :goto_1

    .line 72
    :cond_4
    instance-of v3, v2, Ljava/lang/String;

    .line 73
    .line 74
    if-eqz v3, :cond_5

    .line 75
    .line 76
    :try_start_1
    check-cast v2, Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    goto :goto_1

    .line 83
    :catch_1
    :cond_5
    move v2, v1

    .line 84
    :goto_1
    if-lez v2, :cond_6

    .line 85
    .line 86
    :goto_2
    move v1, v2

    .line 87
    goto :goto_3

    .line 88
    :cond_6
    const-string v2, "enemies"

    .line 89
    .line 90
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    instance-of v2, p1, Ljava/util/List;

    .line 95
    .line 96
    if-eqz v2, :cond_a

    .line 97
    .line 98
    check-cast p1, Ljava/util/List;

    .line 99
    .line 100
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-le v2, v0, :cond_a

    .line 105
    .line 106
    if-nez p0, :cond_7

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    if-nez p0, :cond_8

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_8
    const-string p1, "grade"

    .line 125
    .line 126
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    instance-of p1, p0, Ljava/lang/Number;

    .line 131
    .line 132
    if-eqz p1, :cond_9

    .line 133
    .line 134
    check-cast p0, Ljava/lang/Number;

    .line 135
    .line 136
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    goto :goto_3

    .line 141
    :cond_9
    instance-of p1, p0, Ljava/lang/String;

    .line 142
    .line 143
    if-eqz p1, :cond_a

    .line 144
    .line 145
    :try_start_2
    check-cast p0, Ljava/lang/String;

    .line 146
    .line 147
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 151
    :catch_2
    :cond_a
    :goto_3
    if-gtz v1, :cond_b

    .line 152
    .line 153
    const/4 p0, 0x0

    .line 154
    return-object p0

    .line 155
    :cond_b
    const/4 p0, 0x4

    .line 156
    if-eq v1, p0, :cond_c

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_c
    const/4 v0, 0x0

    .line 160
    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    return-object p0
.end method

.method public static r(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/handler/x;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    const-string v0, "105"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit16 p0, p0, -0x1f4

    return p0

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method public static s(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/handler/x;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x6

    if-lt v0, v2, :cond_1

    const-string v0, "105"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method public static t(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "105"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x6

    if-lt v0, v2, :cond_2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static u(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "105\\d{5}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "01"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static v(ILjava/lang/String;Ljava/util/Map;)I
    .locals 0

    .line 1
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_1

    :try_start_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return p0
.end method

.method public static w(Ljava/lang/Object;)Ljava/util/Map;
    .locals 4

    .line 1
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Map;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/String;

    :try_start_0
    invoke-static {p0}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    return-object v0

    :catch_0
    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "\"([^\"]+)\"\\s*:\\s*(-?\\d+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    :catch_1
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p0
.end method

.method public static x(Ljava/lang/String;Ljava/util/Map;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    invoke-static {p0}, Lcom/sgscq/vpn/handler/x;->t(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :cond_1
    if-nez v1, :cond_2

    .line 20
    .line 21
    if-eqz p0, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x6

    .line 28
    if-ne v2, v3, :cond_2

    .line 29
    .line 30
    const-string v1, "01"

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :cond_2
    instance-of p0, v1, Ljava/lang/Number;

    .line 41
    .line 42
    if-eqz p0, :cond_3

    .line 43
    .line 44
    check-cast v1, Ljava/lang/Number;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0

    .line 51
    :cond_3
    instance-of p0, v1, Ljava/lang/String;

    .line 52
    .line 53
    if-eqz p0, :cond_4

    .line 54
    .line 55
    :try_start_0
    check-cast v1, Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return p0

    .line 62
    :catch_0
    :cond_4
    return v0
.end method

.method public static y(Ljava/lang/String;Ljava/util/Map;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/sgscq/vpn/handler/x;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_1
    instance-of p0, v1, Ljava/lang/Number;

    if-eqz p0, :cond_2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_2
    instance-of p0, v1, Ljava/lang/String;

    if-eqz p0, :cond_3

    :try_start_0
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_3
    :goto_0
    return v0
.end method

.method public static z(ILjava/lang/String;Ljava/util/Map;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/sgscq/vpn/handler/x;->t(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x6

    .line 15
    if-ne v1, v2, :cond_1

    .line 16
    .line 17
    const-string v1, "01"

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/sgscq/vpn/handler/x;->a:Lcom/sgscq/vpn/handler/k0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, v0, Lcom/sgscq/vpn/w1;->C:Ljava/util/HashMap;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/sgscq/vpn/w1;->J1()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, v0, Lcom/sgscq/vpn/w1;->C:Ljava/util/HashMap;

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    const-string v1, ""

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "\\d{6}"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    const-string v2, "01"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :cond_2
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/handler/x;->m(Ljava/lang/String;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return-object p1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const-string v1, "[DungeonService] getAfterPlotDialogs "

    .line 54
    .line 55
    const-string v2, ": "

    .line 56
    .line 57
    invoke-static {v1, p1, v2}, La/b0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-string v0, "SGSCQ_SRV"

    .line 73
    .line 74
    invoke-static {v0, p1}, Lcom/sgscq/vpn/z2;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    return-object p1
.end method

.method public final c(Ljava/lang/String;Ljava/util/Map;)I
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/sgscq/vpn/handler/x;->i(Ljava/lang/String;Ljava/util/Map;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1, p2}, Lcom/sgscq/vpn/handler/x;->A(Ljava/lang/String;Ljava/util/Map;)Z

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Lcom/sgscq/vpn/handler/x;->k(Ljava/util/Map;)Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {p1, v1}, Lcom/sgscq/vpn/handler/x;->x(Ljava/lang/String;Ljava/util/Map;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sub-int/2addr v0, v1

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {p1}, Lcom/sgscq/vpn/handler/x;->o(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const-string v3, "elite_dungeon_times_extra"

    .line 31
    .line 32
    const-string v4, "dungeon_times_extra"

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    move-object v2, v3

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-object v2, v4

    .line 39
    :goto_0
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    instance-of v5, v2, Ljava/util/Map;

    .line 44
    .line 45
    if-eqz v5, :cond_1

    .line 46
    .line 47
    check-cast v2, Ljava/util/Map;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/sgscq/vpn/handler/x;->t(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1, v2}, Lcom/sgscq/vpn/handler/x;->x(Ljava/lang/String;Ljava/util/Map;)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    invoke-static {p1}, Lcom/sgscq/vpn/handler/x;->o(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move-object v3, v4

    .line 66
    :goto_1
    invoke-static {v1, v3, p2}, Lcom/sgscq/vpn/handler/x;->v(ILjava/lang/String;Ljava/util/Map;)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    :goto_2
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    add-int/2addr v0, p1

    .line 75
    return v0
.end method

.method public final d(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/sgscq/vpn/handler/x;->a:Lcom/sgscq/vpn/handler/k0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, v0, Lcom/sgscq/vpn/w1;->C:Ljava/util/HashMap;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/sgscq/vpn/w1;->J1()V

    .line 14
    .line 15
    .line 16
    :cond_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    const-string v1, ""

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "\\d{6}"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    const-string v2, "01"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_2
    :goto_0
    iget-object v0, v0, Lcom/sgscq/vpn/w1;->C:Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    const/4 v1, 0x0

    .line 49
    :goto_1
    invoke-virtual {p0, v1}, Lcom/sgscq/vpn/handler/x;->m(Ljava/lang/String;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    return-object p1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const-string v1, "[DungeonService] getBeforePlotDialogs "

    .line 56
    .line 57
    const-string v2, ": "

    .line 58
    .line 59
    invoke-static {v1, p1, v2}, La/b0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string v0, "SGSCQ_SRV"

    .line 75
    .line 76
    invoke-static {v0, p1}, Lcom/sgscq/vpn/z2;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1
.end method

.method public final e(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/handler/x;->f(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0x64

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "dungeon_coin"

    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/handler/x;->v(ILjava/lang/String;Ljava/util/Map;)I

    move-result v1

    :goto_0
    iget-object v0, p0, Lcom/sgscq/vpn/handler/x;->a:Lcom/sgscq/vpn/handler/k0;

    iget-object v0, v0, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v0

    invoke-static {p1}, Lcom/sgscq/vpn/handler/x;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "coin"

    invoke-virtual {v0, p1, v1, v2}, Lcom/sgscq/vpn/w1;->w0(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final f(Ljava/lang/String;)Ljava/util/Map;
    .locals 5

    .line 1
    const-string v0, "SGSCQ_SRV"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/sgscq/vpn/handler/x;->b:Ljava/util/HashMap;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/sgscq/vpn/handler/x;->b:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    :try_start_0
    iget-object v2, p0, Lcom/sgscq/vpn/handler/x;->a:Lcom/sgscq/vpn/handler/k0;

    .line 24
    .line 25
    iget-object v2, v2, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v2}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v3, v2, Lcom/sgscq/vpn/w1;->y:Ljava/util/HashMap;

    .line 32
    .line 33
    if-nez v3, :cond_2

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/sgscq/vpn/w1;->K1()V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object v2, v2, Lcom/sgscq/vpn/w1;->y:Ljava/util/HashMap;

    .line 39
    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v2

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v4, "[DungeonService] Failed to build dungeon config cache: "

    .line 50
    .line 51
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v2, v3, v0}, Lc/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_0
    iput-object v1, p0, Lcom/sgscq/vpn/handler/x;->b:Ljava/util/HashMap;

    .line 58
    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v3, "[DungeonService] Cached "

    .line 62
    .line 63
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v3, " dungeon configs"

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-static {v0, v2}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    :goto_1
    check-cast p1, Ljava/util/Map;

    .line 90
    .line 91
    return-object p1
.end method

.method public final g(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/handler/x;->a:Lcom/sgscq/vpn/handler/k0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1}, Lcom/sgscq/vpn/handler/x;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/w1;->x0(Ljava/lang/String;)Ljava/util/HashMap;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const-string v3, "drops"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x0

    .line 30
    :goto_0
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/w1;->u0(Ljava/lang/String;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/handler/x;->f(Ljava/lang/String;)Ljava/util/Map;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    :cond_2
    const-string v0, "dungeon_drop"

    .line 49
    .line 50
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    instance-of v0, p1, Ljava/util/List;

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    check-cast p1, Ljava/util/List;

    .line 59
    .line 60
    return-object p1

    .line 61
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    return-object p1
.end method

.method public final i(Ljava/lang/String;Ljava/util/Map;)I
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/handler/x;->f(Ljava/lang/String;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x63

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v2, "dungeon_times"

    .line 12
    .line 13
    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/handler/x;->v(ILjava/lang/String;Ljava/util/Map;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    :goto_0
    iget-object v2, p0, Lcom/sgscq/vpn/handler/x;->a:Lcom/sgscq/vpn/handler/k0;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v2}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {p1}, Lcom/sgscq/vpn/handler/x;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-string v4, "times"

    .line 30
    .line 31
    invoke-virtual {v2, v3, v0, v4}, Lcom/sgscq/vpn/w1;->w0(Ljava/lang/String;ILjava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {p1}, Lcom/sgscq/vpn/handler/x;->o(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    const-string p1, "user_vip_level"

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-static {v2, p1, p2}, Lcom/sgscq/vpn/handler/x;->v(ILjava/lang/String;Ljava/util/Map;)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    const-string v2, "vip_level"

    .line 49
    .line 50
    invoke-static {p1, v2, p2}, Lcom/sgscq/vpn/handler/x;->v(ILjava/lang/String;Ljava/util/Map;)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    const/16 p2, 0xc

    .line 55
    .line 56
    if-lt p1, p2, :cond_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const/16 v1, 0x32

    .line 60
    .line 61
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    return p1

    .line 66
    :cond_2
    return v0
.end method

.method public final j(Ljava/lang/String;)I
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/handler/x;->f(Ljava/lang/String;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0xa

    .line 6
    .line 7
    const/4 v2, 0x5

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-static {p1}, Lcom/sgscq/vpn/handler/x;->o(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    move v1, v2

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-static {p1}, Lcom/sgscq/vpn/handler/x;->o(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    move v1, v2

    .line 27
    :goto_0
    const-string v2, "dungeon_cost_power"

    .line 28
    .line 29
    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/handler/x;->v(ILjava/lang/String;Ljava/util/Map;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    :goto_1
    iget-object v0, p0, Lcom/sgscq/vpn/handler/x;->a:Lcom/sgscq/vpn/handler/k0;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {p1}, Lcom/sgscq/vpn/handler/x;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, v2}, Lcom/sgscq/vpn/w1;->x0(Ljava/lang/String;)Ljava/util/HashMap;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const-string v4, "power"

    .line 50
    .line 51
    invoke-virtual {v0, v2, v1, v4}, Lcom/sgscq/vpn/w1;->w0(Ljava/lang/String;ILjava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-static {v0, p1, v3}, Lcom/sgscq/vpn/handler/x;->B(ILjava/lang/String;Ljava/util/HashMap;)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    return p1
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/handler/x;->a:Lcom/sgscq/vpn/handler/k0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v0, "dungeon_stars"

    .line 18
    .line 19
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    instance-of v0, p1, Ljava/util/Map;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    check-cast p1, Ljava/util/Map;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    :try_start_0
    check-cast p1, Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 37
    .line 38
    .line 39
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    :cond_2
    new-instance p1, Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-static {p2, p1}, Lcom/sgscq/vpn/handler/x;->x(Ljava/lang/String;Ljava/util/Map;)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    return p1
.end method

.method public final m(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sgscq/vpn/handler/x;->a:Lcom/sgscq/vpn/handler/k0;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Lcom/sgscq/vpn/w1;->t0(Ljava/lang/String;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-object v0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const-string v1, "[DungeonService] Failed to get dialogs for "

    .line 32
    .line 33
    const-string v2, ": "

    .line 34
    .line 35
    invoke-static {v1, p1, v2}, La/b0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v0, "SGSCQ_SRV"

    .line 51
    .line 52
    invoke-static {v0, p1}, Lcom/sgscq/vpn/z2;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1

    .line 60
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1
.end method
