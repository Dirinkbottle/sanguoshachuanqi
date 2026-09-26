.class public abstract Lp/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:La/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    sget-object v1, Lc/k;->c:Lc/k;

    .line 2
    .line 3
    sget-object v7, La/a0;->a:La/y;

    .line 4
    .line 5
    sget-object v2, La/i;->a:La/b;

    .line 6
    .line 7
    new-instance v0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v3, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v4, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v6, 0x1

    .line 23
    sget-object v9, La/g0;->a:La/c0;

    .line 24
    .line 25
    sget-object v10, La/g0;->b:La/d0;

    .line 26
    .line 27
    new-instance v5, Ljava/util/LinkedList;

    .line 28
    .line 29
    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 30
    .line 31
    .line 32
    const/4 v8, 0x1

    .line 33
    new-instance v11, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v12

    .line 39
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v13

    .line 43
    add-int/2addr v13, v12

    .line 44
    add-int/lit8 v13, v13, 0x3

    .line 45
    .line 46
    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 50
    .line 51
    .line 52
    invoke-static {v11}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    new-instance v12, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v12}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 64
    .line 65
    .line 66
    sget-boolean v12, Lg/e;->a:Z

    .line 67
    .line 68
    new-instance v12, La/o;

    .line 69
    .line 70
    new-instance v13, Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-direct {v13, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    .line 79
    .line 80
    new-instance v0, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 83
    .line 84
    .line 85
    new-instance v14, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {v14, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    .line 89
    .line 90
    move-object v0, v12

    .line 91
    move-object v3, v13

    .line 92
    move v4, v8

    .line 93
    move v5, v6

    .line 94
    move-object v8, v11

    .line 95
    move-object v11, v14

    .line 96
    invoke-direct/range {v0 .. v11}, La/o;-><init>(Lc/k;La/b;Ljava/util/Map;ZZZLa/y;Ljava/util/List;La/c0;La/d0;Ljava/util/List;)V

    .line 97
    .line 98
    .line 99
    sput-object v12, Lp/c;->a:La/o;

    .line 100
    .line 101
    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 11

    .line 1
    const-string v0, "Base64URL is invalid"

    .line 2
    .line 3
    if-eqz p0, :cond_9

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_9

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    rem-int/lit8 v1, v1, 0x4

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-eq v1, v2, :cond_9

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    mul-int/lit8 v1, v1, 0x6

    .line 25
    .line 26
    const/16 v3, 0x8

    .line 27
    .line 28
    div-int/2addr v1, v3

    .line 29
    new-array v4, v1, [B

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    move v6, v5

    .line 33
    move v7, v6

    .line 34
    move v8, v7

    .line 35
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v9

    .line 39
    if-ge v5, v9, :cond_7

    .line 40
    .line 41
    shl-int/lit8 v7, v7, 0x6

    .line 42
    .line 43
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    const/16 v10, 0x41

    .line 48
    .line 49
    if-lt v9, v10, :cond_0

    .line 50
    .line 51
    const/16 v10, 0x5a

    .line 52
    .line 53
    if-gt v9, v10, :cond_0

    .line 54
    .line 55
    add-int/lit8 v9, v9, -0x41

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_0
    const/16 v10, 0x61

    .line 59
    .line 60
    if-lt v9, v10, :cond_1

    .line 61
    .line 62
    const/16 v10, 0x7a

    .line 63
    .line 64
    if-gt v9, v10, :cond_1

    .line 65
    .line 66
    add-int/lit8 v9, v9, -0x61

    .line 67
    .line 68
    add-int/lit8 v9, v9, 0x1a

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    const/16 v10, 0x30

    .line 72
    .line 73
    if-lt v9, v10, :cond_2

    .line 74
    .line 75
    const/16 v10, 0x39

    .line 76
    .line 77
    if-gt v9, v10, :cond_2

    .line 78
    .line 79
    add-int/lit8 v9, v9, -0x30

    .line 80
    .line 81
    add-int/lit8 v9, v9, 0x34

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    const/16 v10, 0x2d

    .line 85
    .line 86
    if-ne v9, v10, :cond_3

    .line 87
    .line 88
    const/16 v9, 0x3e

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    const/16 v10, 0x5f

    .line 92
    .line 93
    if-ne v9, v10, :cond_6

    .line 94
    .line 95
    const/16 v9, 0x3f

    .line 96
    .line 97
    :goto_1
    or-int/2addr v7, v9

    .line 98
    add-int/lit8 v8, v8, 0x6

    .line 99
    .line 100
    if-lt v8, v3, :cond_5

    .line 101
    .line 102
    add-int/lit8 v8, v8, -0x8

    .line 103
    .line 104
    if-ge v6, v1, :cond_4

    .line 105
    .line 106
    add-int/lit8 v9, v6, 0x1

    .line 107
    .line 108
    shr-int v10, v7, v8

    .line 109
    .line 110
    int-to-byte v10, v10

    .line 111
    aput-byte v10, v4, v6

    .line 112
    .line 113
    move v6, v9

    .line 114
    :cond_4
    shl-int v9, v2, v8

    .line 115
    .line 116
    sub-int/2addr v9, v2

    .line 117
    and-int/2addr v7, v9

    .line 118
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 122
    .line 123
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p0

    .line 127
    :cond_7
    if-ne v6, v1, :cond_8

    .line 128
    .line 129
    if-nez v7, :cond_8

    .line 130
    .line 131
    return-object v4

    .line 132
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 133
    .line 134
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p0

    .line 138
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 139
    .line 140
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p0
.end method

.method public static b(Ljava/lang/String;[B)La/t;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, La/w;->r(Ljava/lang/String;)La/q;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    instance-of v0, p1, La/t;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, La/q;->f()La/t;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    check-cast p1, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    throw p1

    .line 45
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    throw v0
.end method

.method public static c(La/q;Ljava/lang/String;Lcom/sgscq/vpn/f2;Ljava/util/HashSet;)Lp/a;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz v0, :cond_b

    .line 4
    .line 5
    instance-of v2, v0, La/s;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    instance-of v2, v0, La/t;

    .line 12
    .line 13
    if-eqz v2, :cond_a

    .line 14
    .line 15
    invoke-virtual {p0}, La/q;->f()La/t;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v2, "slot_id"

    .line 20
    .line 21
    const-string v3, "stream"

    .line 22
    .line 23
    const-string v4, "general_id"

    .line 24
    .line 25
    const-string v5, "start_at"

    .line 26
    .line 27
    const-string v6, "end_at"

    .line 28
    .line 29
    const-string v7, "round_no"

    .line 30
    .line 31
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x0

    .line 36
    move v4, v3

    .line 37
    :goto_0
    const/4 v5, 0x6

    .line 38
    if-ge v4, v5, :cond_2

    .line 39
    .line 40
    aget-object v5, v2, v4

    .line 41
    .line 42
    invoke-virtual {v0, v5}, La/t;->o(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_1

    .line 47
    .line 48
    add-int/lit8 v4, v4, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    const-string v1, "slot fields are invalid"

    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0

    .line 59
    :cond_2
    const-string v2, "slot_id"

    .line 60
    .line 61
    invoke-static {v0, v2}, Lp/c;->g(La/t;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    const-string v2, "stream"

    .line 66
    .line 67
    invoke-static {v0, v2}, Lp/c;->g(La/t;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    const-string v2, "general_id"

    .line 72
    .line 73
    invoke-static {v0, v2}, Lp/c;->g(La/t;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    const-string v2, "start_at"

    .line 78
    .line 79
    invoke-static {v0, v2}, Lp/c;->f(La/t;Ljava/lang/String;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v9

    .line 83
    const-string v2, "end_at"

    .line 84
    .line 85
    invoke-static {v0, v2}, Lp/c;->f(La/t;Ljava/lang/String;)J

    .line 86
    .line 87
    .line 88
    move-result-wide v11

    .line 89
    const-string v2, "round_no"

    .line 90
    .line 91
    invoke-static {v0, v2}, Lp/c;->e(La/t;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v13

    .line 95
    move-object v2, p1

    .line 96
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_9

    .line 101
    .line 102
    cmp-long v2, v9, v11

    .line 103
    .line 104
    if-gez v2, :cond_9

    .line 105
    .line 106
    const/4 v2, 0x1

    .line 107
    if-lt v13, v2, :cond_9

    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-nez v4, :cond_9

    .line 114
    .line 115
    move-object/from16 v4, p3

    .line 116
    .line 117
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_9

    .line 122
    .line 123
    move-object/from16 v4, p2

    .line 124
    .line 125
    iget-object v4, v4, Lcom/sgscq/vpn/f2;->b:Landroid/content/Context;

    .line 126
    .line 127
    sget-object v8, Lp/l;->o:Ljava/lang/Object;

    .line 128
    .line 129
    if-eqz v7, :cond_4

    .line 130
    .line 131
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 132
    .line 133
    .line 134
    move-result v8

    .line 135
    if-eqz v8, :cond_3

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_3
    :try_start_0
    invoke-static {v4}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v4, v7}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 143
    .line 144
    .line 145
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    if-eqz v4, :cond_4

    .line 147
    .line 148
    move v3, v2

    .line 149
    :catch_0
    :cond_4
    :goto_1
    if-eqz v3, :cond_8

    .line 150
    .line 151
    new-instance v2, Lp/a;

    .line 152
    .line 153
    const-string v3, "general_name"

    .line 154
    .line 155
    invoke-virtual {v0, v3}, La/t;->m(Ljava/lang/String;)La/q;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    if-eqz v0, :cond_7

    .line 160
    .line 161
    instance-of v3, v0, La/x;

    .line 162
    .line 163
    if-eqz v3, :cond_7

    .line 164
    .line 165
    invoke-virtual {v0}, La/q;->g()La/x;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    iget-object v3, v3, La/x;->a:Ljava/io/Serializable;

    .line 170
    .line 171
    instance-of v3, v3, Ljava/lang/String;

    .line 172
    .line 173
    if-nez v3, :cond_5

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_5
    invoke-virtual {v0}, La/q;->i()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    if-nez v3, :cond_7

    .line 189
    .line 190
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    if-eqz v3, :cond_6

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_6
    move-object v8, v0

    .line 198
    goto :goto_3

    .line 199
    :cond_7
    :goto_2
    move-object v8, v1

    .line 200
    :goto_3
    move-object v4, v2

    .line 201
    invoke-direct/range {v4 .. v13}, Lp/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)V

    .line 202
    .line 203
    .line 204
    return-object v2

    .line 205
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 206
    .line 207
    const-string v1, "general id is invalid"

    .line 208
    .line 209
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw v0

    .line 213
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 214
    .line 215
    const-string v1, "slot identity is invalid"

    .line 216
    .line 217
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw v0

    .line 221
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 222
    .line 223
    const-string v1, "slot is invalid"

    .line 224
    .line 225
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw v0

    .line 229
    :cond_b
    :goto_4
    return-object v1
.end method

.method public static d(La/t;Ljava/lang/String;IJLcom/sgscq/vpn/f2;Ljava/util/HashSet;)Lm/e;
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, La/t;->m(Ljava/lang/String;)La/q;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_10

    .line 6
    .line 7
    instance-of v0, p0, La/t;

    .line 8
    .line 9
    if-eqz v0, :cond_10

    .line 10
    .line 11
    invoke-virtual {p0}, La/q;->f()La/t;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 v0, 0x2

    .line 16
    iget-object v1, p0, La/t;->a:Lc/s;

    .line 17
    .line 18
    if-ne p2, v0, :cond_9

    .line 19
    .line 20
    iget p2, v1, Lc/s;->d:I

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    if-ne p2, v1, :cond_8

    .line 24
    .line 25
    const-string p2, "slots"

    .line 26
    .line 27
    invoke-virtual {p0, p2}, La/t;->o(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_8

    .line 32
    .line 33
    invoke-virtual {p0, p2}, La/t;->m(Ljava/lang/String;)La/q;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    instance-of v1, v1, La/p;

    .line 41
    .line 42
    if-eqz v1, :cond_8

    .line 43
    .line 44
    invoke-virtual {p0, p2}, La/t;->n(Ljava/lang/String;)La/p;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    iget-object p2, p0, La/p;->a:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-lt p2, v0, :cond_7

    .line 55
    .line 56
    iget-object p2, p0, La/p;->a:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const/16 v1, 0x10

    .line 63
    .line 64
    if-gt v0, v1, :cond_7

    .line 65
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, La/p;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    const/4 p2, 0x0

    .line 80
    move-object v1, p2

    .line 81
    move-object v2, v1

    .line 82
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_6

    .line 87
    .line 88
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, La/q;

    .line 93
    .line 94
    invoke-static {v3, p1, p5, p6}, Lp/c;->c(La/q;Ljava/lang/String;Lcom/sgscq/vpn/f2;Ljava/util/HashSet;)Lp/a;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    iget-wide v4, v3, Lp/a;->f:J

    .line 99
    .line 100
    cmp-long v4, v4, p3

    .line 101
    .line 102
    if-lez v4, :cond_5

    .line 103
    .line 104
    iget-wide v4, v3, Lp/a;->e:J

    .line 105
    .line 106
    if-eqz v2, :cond_1

    .line 107
    .line 108
    iget-wide v6, v2, Lp/a;->f:J

    .line 109
    .line 110
    cmp-long v2, v4, v6

    .line 111
    .line 112
    if-ltz v2, :cond_0

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 116
    .line 117
    const-string p2, " batch slot order is invalid"

    .line 118
    .line 119
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p0

    .line 127
    :cond_1
    :goto_1
    invoke-virtual {v3, p3, p4}, Lp/a;->a(J)Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-eqz v2, :cond_3

    .line 132
    .line 133
    if-nez p2, :cond_2

    .line 134
    .line 135
    move-object p2, v3

    .line 136
    goto :goto_2

    .line 137
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 138
    .line 139
    const-string p2, " batch current slot is invalid"

    .line 140
    .line 141
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p0

    .line 149
    :cond_3
    if-nez v1, :cond_4

    .line 150
    .line 151
    cmp-long v2, v4, p3

    .line 152
    .line 153
    if-lez v2, :cond_4

    .line 154
    .line 155
    move-object v1, v3

    .line 156
    :cond_4
    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-object v2, v3

    .line 160
    goto :goto_0

    .line 161
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 162
    .line 163
    const-string p2, " batch contains expired slot"

    .line 164
    .line 165
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p0

    .line 173
    :cond_6
    new-instance p0, Lm/e;

    .line 174
    .line 175
    invoke-direct {p0, p2, v1, v0}, Lm/e;-><init>(Lp/a;Lp/a;Ljava/util/ArrayList;)V

    .line 176
    .line 177
    .line 178
    return-object p0

    .line 179
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 180
    .line 181
    const-string p2, " batch slot count is invalid"

    .line 182
    .line 183
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p0

    .line 191
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 192
    .line 193
    const-string p2, " batch slot fields are invalid"

    .line 194
    .line 195
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    throw p0

    .line 203
    :cond_9
    iget p2, v1, Lc/s;->d:I

    .line 204
    .line 205
    if-ne p2, v0, :cond_f

    .line 206
    .line 207
    const-string p2, "current"

    .line 208
    .line 209
    invoke-virtual {p0, p2}, La/t;->o(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_f

    .line 214
    .line 215
    const-string v0, "next"

    .line 216
    .line 217
    invoke-virtual {p0, v0}, La/t;->o(Ljava/lang/String;)Z

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-eqz v2, :cond_f

    .line 222
    .line 223
    invoke-virtual {p0, p2}, La/t;->m(Ljava/lang/String;)La/q;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    invoke-static {p2, p1, p5, p6}, Lp/c;->c(La/q;Ljava/lang/String;Lcom/sgscq/vpn/f2;Ljava/util/HashSet;)Lp/a;

    .line 228
    .line 229
    .line 230
    move-result-object p2

    .line 231
    invoke-virtual {p0, v0}, La/t;->m(Ljava/lang/String;)La/q;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    invoke-static {p0, p1, p5, p6}, Lp/c;->c(La/q;Ljava/lang/String;Lcom/sgscq/vpn/f2;Ljava/util/HashSet;)Lp/a;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    if-eqz p2, :cond_b

    .line 240
    .line 241
    invoke-virtual {p2, p3, p4}, Lp/a;->a(J)Z

    .line 242
    .line 243
    .line 244
    move-result p5

    .line 245
    if-eqz p5, :cond_a

    .line 246
    .line 247
    goto :goto_3

    .line 248
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 249
    .line 250
    const-string p2, " current slot is invalid"

    .line 251
    .line 252
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw p0

    .line 260
    :cond_b
    :goto_3
    if-eqz p0, :cond_e

    .line 261
    .line 262
    if-nez p2, :cond_c

    .line 263
    .line 264
    goto :goto_4

    .line 265
    :cond_c
    iget-wide p3, p2, Lp/a;->f:J

    .line 266
    .line 267
    :goto_4
    iget-wide p5, p0, Lp/a;->e:J

    .line 268
    .line 269
    cmp-long p3, p5, p3

    .line 270
    .line 271
    if-ltz p3, :cond_d

    .line 272
    .line 273
    goto :goto_5

    .line 274
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 275
    .line 276
    const-string p2, " next slot is invalid"

    .line 277
    .line 278
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    throw p0

    .line 286
    :cond_e
    :goto_5
    new-instance p1, Lm/e;

    .line 287
    .line 288
    invoke-direct {p1, p2, p0}, Lm/e;-><init>(Lp/a;Lp/a;)V

    .line 289
    .line 290
    .line 291
    return-object p1

    .line 292
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 293
    .line 294
    new-instance p2, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    const-string p1, " slot fields are invalid: "

    .line 303
    .line 304
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1}, Lc/s;->keySet()Ljava/util/Set;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    throw p0

    .line 322
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 323
    .line 324
    const-string p2, " slot fields are invalid"

    .line 325
    .line 326
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    throw p0
.end method

.method public static e(La/t;Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {p0, p1}, Lp/c;->f(La/t;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    long-to-int p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, " is invalid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(La/t;Ljava/lang/String;)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, La/t;->m(Ljava/lang/String;)La/q;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, " is invalid"

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    instance-of v1, p0, La/x;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, La/q;->g()La/x;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v1, v1, La/x;->a:Ljava/io/Serializable;

    .line 18
    .line 19
    instance-of v1, v1, Ljava/lang/Number;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    :try_start_0
    invoke-virtual {p0}, La/q;->i()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string v1, "."

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    const-string v1, "e"

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_0

    .line 42
    .line 43
    const-string v1, "E"

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_0

    .line 50
    .line 51
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 52
    .line 53
    .line 54
    move-result-wide p0

    .line 55
    return-wide p0

    .line 56
    :cond_0
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 57
    .line 58
    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    .line 59
    .line 60
    .line 61
    throw p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :catch_0
    move-exception p0

    .line 63
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {v1, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    throw v1

    .line 73
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0
.end method

.method public static g(La/t;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, La/t;->m(Ljava/lang/String;)La/q;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    instance-of v0, p0, La/x;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, La/q;->g()La/x;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, La/x;->a:Ljava/io/Serializable;

    .line 16
    .line 17
    instance-of v0, v0, Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, La/q;->i()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string v0, " is invalid"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public static h(La/q;)La/q;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, La/t;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    new-instance v0, La/t;

    .line 9
    .line 10
    invoke-direct {v0}, La/t;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/util/TreeMap;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, La/q;->f()La/t;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    iget-object p0, p0, La/t;->a:Lc/s;

    .line 23
    .line 24
    invoke-virtual {p0}, Lc/s;->entrySet()Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lc/p;

    .line 29
    .line 30
    invoke-virtual {p0}, Lc/p;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    :goto_0
    move-object v2, p0

    .line 35
    check-cast v2, Lc/q;

    .line 36
    .line 37
    invoke-virtual {v2}, Lc/q;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    move-object v2, p0

    .line 44
    check-cast v2, Lc/o;

    .line 45
    .line 46
    invoke-virtual {v2}, Lc/o;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/util/Map$Entry;

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Ljava/lang/String;

    .line 57
    .line 58
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, La/q;

    .line 63
    .line 64
    invoke-virtual {v1, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Ljava/util/Map$Entry;

    .line 87
    .line 88
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Ljava/lang/String;

    .line 93
    .line 94
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, La/q;

    .line 99
    .line 100
    invoke-static {v1}, Lp/c;->h(La/q;)La/q;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v2, v1}, La/t;->j(Ljava/lang/String;La/q;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_1
    return-object v0

    .line 109
    :cond_2
    instance-of v0, p0, La/p;

    .line 110
    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    new-instance v0, La/p;

    .line 114
    .line 115
    invoke-direct {v0}, La/p;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, La/q;->e()La/p;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {p0}, La/p;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_4

    .line 131
    .line 132
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, La/q;

    .line 137
    .line 138
    invoke-static {v1}, Lp/c;->h(La/q;)La/q;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    if-nez v1, :cond_3

    .line 143
    .line 144
    sget-object v1, La/s;->a:La/s;

    .line 145
    .line 146
    :cond_3
    iget-object v2, v0, La/p;->a:Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_4
    return-object v0

    .line 153
    :cond_5
    invoke-virtual {p0}, La/q;->a()La/q;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0
.end method
